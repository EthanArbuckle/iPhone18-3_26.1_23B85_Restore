ot::MeshCoP::DatasetManager::RequestInfo *ot::MeshCoP::DatasetManager::RequestInfo::RequestInfo(ot::MeshCoP::DatasetManager::RequestInfo *this)
{
  ot::MeshCoP::DatasetManager::RequestInfo::RequestInfo(this);
  return this;
}

{
  ot::MeshCoP::Dataset::Dataset(this);
  return this;
}

void ot::MeshCoP::PendingDatasetManager::ApplyActiveDataset(ot::MeshCoP::PendingDatasetManager *this, ot::MeshCoP::Dataset *a2)
{
  v8 = this;
  v7 = a2;
  if (!ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(a2, &v6) && !ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(v7, &v6))
  {
    v4 = v7;
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Leader>(this);
    DelayTimerMinimal = ot::MeshCoP::Leader::GetDelayTimerMinimal(v2);
    if (!ot::MeshCoP::Dataset::Write<ot::MeshCoP::DelayTimerTlv>(v4, DelayTimerMinimal))
    {
      ot::MeshCoP::DatasetManager::Save(this, v7);
      IgnoreError();
      ot::MeshCoP::PendingDatasetManager::StartDelayTimer(this, v7);
    }
  }
}

uint64_t ot::MeshCoP::DatasetManager::Save(ot::MeshCoP::DatasetManager *this, const ot::MeshCoP::Dataset *a2)
{
  return ot::MeshCoP::DatasetManager::Save(this, a2, 0);
}

{
  return ot::MeshCoP::DatasetManager::Save(this, a2);
}

void ot::MeshCoP::DatasetManager::SendSetOrReplaceResponse(ot::InstanceLocator *a1, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, unsigned __int8 a4)
{
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  v13 = ot::Coap::CoapBase::NewPriorityResponseMessage(v4, a2);
  if (v13)
  {
    v14 = ot::Tlv::Append<ot::MeshCoP::StateTlv>(v13, a4);
    if (!v14)
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
      v14 = ot::Coap::CoapBase::SendMessage(v5, v13, a3);
      if (!v14)
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("DatasetManager", "sent dataset set/replace response", v6, v7, v8, v9, v10, v11, a1);
      }
    }
  }

  else
  {
    v14 = 3;
  }

  if (v14)
  {
    if (v13)
    {
      ot::Message::Free(v13);
    }
  }
}

void ot::MeshCoP::ActiveDatasetManager::HandleTmf<(ot::Uri)13>(ot::MeshCoP::DatasetManager *a1, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  if (!ot::MeshCoP::DatasetManager::HandleSetOrReplace(a1, 0, a2, a3))
  {
    ot::MeshCoP::DatasetManager::ApplyConfiguration(a1);
    IgnoreError();
  }
}

void ot::MeshCoP::ActiveDatasetManager::HandleTmf<(ot::Uri)12>(ot::MeshCoP::DatasetManager *a1, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  if (!ot::MeshCoP::DatasetManager::HandleSetOrReplace(a1, 1, a2, a3))
  {
    ot::MeshCoP::DatasetManager::ApplyConfiguration(a1);
    IgnoreError();
  }
}

void ot::MeshCoP::PendingDatasetManager::HandleTmf<(ot::Uri)28>(ot::MeshCoP::PendingDatasetManager *a1, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  if (!ot::MeshCoP::DatasetManager::HandleSetOrReplace(a1, 0, a2, a3))
  {
    ot::MeshCoP::PendingDatasetManager::StartDelayTimer(a1);
  }
}

void ot::ClearAllBytes<ot::MeshCoP::DatasetManager::RequestInfo>(void *a1)
{
  bzero(a1, 0x108uLL);
}

{
  ot::ClearAllBytes<ot::MeshCoP::DatasetManager::RequestInfo>(a1);
}

uint64_t ot::Tlv::ReadValueAs<ot::MeshCoP::CommissionerSessionIdTlv>(uint64_t a1, const unsigned __int8 *a2)
{
  return ot::BigEndian::Read<unsigned short>((a1 + 2), a2);
}

{
  return ot::Tlv::ReadValueAs<ot::MeshCoP::CommissionerSessionIdTlv>(a1, a2);
}

ot::MeshCoP::DatasetUpdater *ot::MeshCoP::DatasetUpdater::DatasetUpdater(ot::MeshCoP::DatasetUpdater *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 0;
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 1);
  return this;
}

{
  ot::MeshCoP::DatasetUpdater::DatasetUpdater(this, a2);
  return this;
}

uint64_t ot::MeshCoP::DatasetUpdater::RequestUpdate(ot::Message **a1, const ot::MeshCoP::Dataset::Info *a2, uint64_t a3, uint64_t a4)
{
  ot::MeshCoP::Dataset::Dataset(v9);
  ot::MeshCoP::Dataset::SetFrom(v9, a2);
  return ot::MeshCoP::DatasetUpdater::RequestUpdate(a1, v9, a3, a4);
}

uint64_t ot::MeshCoP::DatasetUpdater::RequestUpdate(ot::Message **a1, ot::MeshCoP::Dataset *a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v17 = 0;
  ot::MeshCoP::Dataset::Dataset(v23);
  appended = 13;
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
  if (!ot::Mle::Mle::IsDisabled(v4))
  {
    active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
    if (!ot::MeshCoP::DatasetManager::Read(active, v23) && !ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(v23, &v16))
    {
      appended = 7;
      if (!ot::MeshCoP::Dataset::ValidateTlvs(v21) && !ot::MeshCoP::Dataset::ContainsTlv(v21, 0xEu) && !ot::MeshCoP::Dataset::ContainsTlv(v21, 0x33u))
      {
        if (ot::MeshCoP::DatasetUpdater::IsUpdateOngoing(a1))
        {
          appended = 5;
        }

        else if (ot::MeshCoP::Dataset::IsSubsetOf(v21, v23))
        {
          appended = 24;
        }

        else
        {
          ot::MeshCoP::Timestamp::AdvanceRandomTicks(&v16);
          appended = ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(v21, &v16);
          if (!appended)
          {
            v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
            v15 = *ot::MeshCoP::DatasetManager::GetTimestamp(v6);
            if (!ot::MeshCoP::Timestamp::IsValid(&v15))
            {
              ot::Clearable<ot::MeshCoP::Timestamp>::Clear(&v15);
            }

            ot::MeshCoP::Timestamp::AdvanceRandomTicks(&v15);
            appended = ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(v21, &v15);
            if (!appended && (ot::MeshCoP::Dataset::ContainsTlv(v21, 0x34u) || (appended = ot::MeshCoP::Dataset::Write<ot::MeshCoP::DelayTimerTlv>(v21, 0x7530u)) == 0))
            {
              appended = ot::MeshCoP::Dataset::WriteTlvsFrom(v23, v21);
              if (!appended)
              {
                v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(a1);
                v17 = ot::MessagePool::Allocate(v7, 6);
                if (v17)
                {
                  v13 = v17;
                  ot::MeshCoP::Dataset::GetBytes(v21);
                  v12 = v8;
                  Length = ot::MeshCoP::Dataset::GetLength(v21);
                  appended = ot::Message::AppendBytes(v13, v12, Length);
                  if (!appended)
                  {
                    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
                    ot::MeshCoP::DatasetManager::SaveLocal(v10, v23);
                    ot::CallbackBase<void (*)(otError,void *)>::Set(a1 + 1, v20, v19);
                    *a1 = v17;
                  }
                }

                else
                {
                  appended = 3;
                }
              }
            }
          }
        }
      }
    }
  }

  if (appended && v17)
  {
    ot::Message::Free(v17);
  }

  return appended;
}

BOOL ot::MeshCoP::DatasetUpdater::IsUpdateOngoing(ot::MeshCoP::DatasetUpdater *this)
{
  return *this != 0;
}

{
  return ot::MeshCoP::DatasetUpdater::IsUpdateOngoing(this);
}

void *ot::Clearable<ot::MeshCoP::Timestamp>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::MeshCoP::Timestamp>(a1);
}

{
  return ot::Clearable<ot::MeshCoP::Timestamp>::Clear(a1);
}

void ot::MeshCoP::DatasetUpdater::CancelUpdate(ot::Message **this)
{
  if (ot::MeshCoP::DatasetUpdater::IsUpdateOngoing(this))
  {
    if (*this)
    {
      ot::Message::Free(*this);
    }

    *this = 0;
  }
}

void *ot::MeshCoP::DatasetUpdater::Finish(ot::MeshCoP::DatasetUpdater *a1, unsigned int a2)
{
  v5 = a1;
  v4 = a2;
  result = ot::MeshCoP::DatasetUpdater::IsUpdateOngoing(a1);
  if (result)
  {
    if (*a1)
    {
      ot::Message::Free(*a1);
    }

    *a1 = 0;
    return ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&>(a1 + 1, &v4);
  }

  return result;
}

uint64_t ot::MeshCoP::DatasetUpdater::HandleNotifierEvents(ot::MeshCoP::DatasetUpdater *a1, uint64_t a2)
{
  v4 = a2;
  if (ot::Events::Contains(&v4, 0x10000000))
  {
    ot::MeshCoP::DatasetUpdater::HandleDatasetChanged(a1, 0);
  }

  result = ot::Events::Contains(&v4, 0x20000000);
  if (result)
  {
    return ot::MeshCoP::DatasetUpdater::HandleDatasetChanged(a1, 1);
  }

  return result;
}

uint64_t ot::MeshCoP::DatasetUpdater::HandleDatasetChanged(ot::MeshCoP::DatasetUpdater *a1, char a2)
{
  v11 = a1;
  v10 = a2;
  ot::MeshCoP::Dataset::Dataset(v13);
  ot::MeshCoP::Dataset::Dataset(v12);
  result = ot::MeshCoP::DatasetUpdater::IsUpdateOngoing(a1);
  if (result)
  {
    ot::OffsetRange::InitFromMessageFullLength(v7, *a1);
    result = ot::MeshCoP::Dataset::SetFrom(v13, *a1, v7);
    if (!result)
    {
      if (v10)
      {
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
        result = ot::MeshCoP::DatasetManager::Read(v4, v12);
        if (result)
        {
          return result;
        }
      }

      else
      {
        active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
        result = ot::MeshCoP::DatasetManager::Read(active, v12);
        if (result)
        {
          return result;
        }
      }

      result = ot::MeshCoP::Dataset::IsSubsetOf(v13, v12);
      if (result)
      {
        if (!v10)
        {
          return ot::MeshCoP::DatasetUpdater::Finish(a1, 0);
        }
      }

      else
      {
        result = ot::MeshCoP::Dataset::ReadTimestamp(v12, v10, &v9);
        if (!result)
        {
          result = ot::MeshCoP::Dataset::ReadTimestamp(v13, v10, &v8);
          if (!result)
          {
            result = ot::MeshCoP::Timestamp::operator>=(&v9, &v8, v5);
            if (result)
            {
              return ot::MeshCoP::DatasetUpdater::Finish(a1, 0x18u);
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL ot::MeshCoP::Timestamp::operator>=(ot::MeshCoP::Timestamp *a1, const ot::MeshCoP::Timestamp *a2, const ot::MeshCoP::Timestamp *a3)
{
  return ot::MeshCoP::Timestamp::Compare(a1, a2, a3) >= 0;
}

{
  return ot::MeshCoP::Timestamp::operator>=(a1, a2, a3);
}

void *ot::ClearAllBytes<ot::MeshCoP::Timestamp>(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::MeshCoP::Timestamp>(result);
}

ot::EnergyScanClient *ot::EnergyScanClient::EnergyScanClient(ot::EnergyScanClient *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this);
  return this;
}

{
  ot::EnergyScanClient::EnergyScanClient(this, a2);
  return this;
}

uint64_t ot::EnergyScanClient::SendQuery(ot::EnergyScanClient *this, unsigned int a2, unsigned __int8 a3, unsigned __int16 a4, unsigned __int16 a5, const ot::Ip6::Address *a6, void (*a7)(unsigned int, const unsigned __int8 *, unsigned __int8, void *), uint64_t a8)
{
  v33 = this;
  v32 = a2;
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v27 = a7;
  v26 = a8;
  inited = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v24, Instance);
  v23 = 0;
  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(this);
  if (ot::MeshCoP::Commissioner::IsActive(v9))
  {
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
    v23 = ot::Coap::CoapBase::NewPriorityMessage(v10);
    if (v23)
    {
      inited = ot::Coap::Message::InitAsPost(v23, v28, 0x14u);
      if (!inited)
      {
        inited = ot::Coap::Message::SetPayloadMarker(v23);
        if (!inited)
        {
          v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(this);
          SessionId = ot::MeshCoP::Commissioner::GetSessionId(v11);
          inited = ot::Tlv::Append<ot::MeshCoP::CommissionerSessionIdTlv>(v23, SessionId);
          if (!inited)
          {
            inited = ot::MeshCoP::ChannelMaskTlv::AppendTo(v23, v32);
            if (!inited)
            {
              inited = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)54,unsigned char>>(v23, v31);
              if (!inited)
              {
                inited = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)55,unsigned short>>(v23, v30);
                if (!inited)
                {
                  inited = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)56,unsigned short>>(v23, v29);
                  if (!inited)
                  {
                    ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(v24, v28);
                    v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
                    inited = ot::Coap::CoapBase::SendMessage(v13, v23, v24);
                    if (!inited)
                    {
                      v14 = ot::UriToString<(ot::Uri)20>();
                      ot::Logger::LogAtLevel<(ot::LogLevel)4>("EnergyScanClnt", "Sent %s", v15, v16, v17, v18, v19, v20, v14);
                      ot::CallbackBase<void (*)(unsigned int,unsigned char const*,unsigned char,void *)>::Set(this, v27, v26);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      inited = 3;
    }
  }

  else
  {
    inited = 13;
  }

  if (inited && v23)
  {
    ot::Message::Free(v23);
  }

  return inited;
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)56,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 56, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)56,unsigned short>>(a1, a2);
}

void *ot::CallbackBase<void (*)(unsigned int,unsigned char const*,unsigned char,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(unsigned int,unsigned char const*,unsigned char,void *)>::Set(result, a2, a3);
}

void ot::EnergyScanClient::HandleTmf<(ot::Uri)19>(ot::InstanceLocator *a1, ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = 0;
  if (ot::Coap::Message::IsConfirmablePostRequest(a2))
  {
    v3 = ot::UriToString<(ot::Uri)19>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("EnergyScanClnt", "Received %s", v4, v5, v6, v7, v8, v9, v3);
    if (!ot::MeshCoP::ChannelMaskTlv::FindIn(v26, &v24, v10) && !ot::Tlv::FindTlv(v26, 0x39, 0x42u, v28, v11, v12))
    {
      EnergyList = ot::MeshCoP::EnergyListTlv::GetEnergyList(v28);
      EnergyListLength = ot::MeshCoP::EnergyListTlv::GetEnergyListLength(v28);
      ot::Callback<void (*)(unsigned int,unsigned char const*,unsigned char,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<unsigned int &,unsigned char const*,unsigned char>(a1, &v24, &EnergyList, &EnergyListLength);
      v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
      if (!ot::Coap::CoapBase::SendEmptyAck(v13, v26, v25))
      {
        v14 = ot::UriToString<(ot::Uri)19>();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("EnergyScanClnt", "Sent %s ack", v15, v16, v17, v18, v19, v20, v14);
      }
    }
  }
}

void *ot::Callback<void (*)(unsigned int,unsigned char const*,unsigned char,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<unsigned int &,unsigned char const*,unsigned char>(void *result, unsigned int *a2, void *a3, unsigned __int8 *a4)
{
  if (*result)
  {
    return ot::Callback<void (*)(unsigned int,unsigned char const*,unsigned char,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned int &,unsigned char const*,unsigned char>(result, a2, a3, a4);
  }

  return result;
}

{
  return ot::Callback<void (*)(unsigned int,unsigned char const*,unsigned char,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<unsigned int &,unsigned char const*,unsigned char>(result, a2, a3, a4);
}

uint64_t ot::MeshCoP::EnergyListTlv::GetEnergyList(ot::MeshCoP::EnergyListTlv *this)
{
  return this + 2;
}

{
  return ot::MeshCoP::EnergyListTlv::GetEnergyList(this);
}

uint64_t ot::MeshCoP::EnergyListTlv::GetEnergyListLength(ot::MeshCoP::EnergyListTlv *this)
{
  Length = ot::Tlv::GetLength(this);
  return ot::Min<unsigned char>(0x40u, Length);
}

{
  return ot::MeshCoP::EnergyListTlv::GetEnergyListLength(this);
}

uint64_t ot::Callback<void (*)(unsigned int,unsigned char const*,unsigned char,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned int &,unsigned char const*,unsigned char>(uint64_t a1, unsigned int *a2, void *a3, unsigned __int8 *a4)
{
  return (*a1)(*a2, *a3, *a4, *(a1 + 8));
}

{
  return ot::Callback<void (*)(unsigned int,unsigned char const*,unsigned char,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned int &,unsigned char const*,unsigned char>(a1, a2, a3, a4);
}

ot::MeshCoP::Joiner *ot::MeshCoP::Joiner::Joiner(ot::MeshCoP::Joiner *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 24) = 0;
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 4);
  *(this + 38) = 0;
  *(this + 10) = 0;
  ot::TimerMilliIn<ot::MeshCoP::Joiner,&ot::MeshCoP::Joiner::HandleTimer>::TimerMilliIn((this + 88), a2);
  *(this + 112) = 0;
  *(this + 113) = 0;
  ot::MeshCoP::Joiner::SetIdFromIeeeEui64(this);
  ot::MeshCoP::JoinerDiscerner::Clear(this + 8);
  ot::ClearAllBytes<ot::MeshCoP::Joiner::JoinerRouter [2]>(this + 48);
  return this;
}

{
  ot::MeshCoP::Joiner::Joiner(this, a2);
  return this;
}

unsigned __int8 *ot::MeshCoP::Joiner::HandleTimer(ot::MeshCoP::Joiner *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = this;
  v18 = 0;
  v16 = *(this + 24);
  if (!*(this + 24))
  {
    goto LABEL_15;
  }

  if (v16 != 1)
  {
    if (v16 != 2)
    {
      switch(v16)
      {
        case 3:
          ot::Logger::LogAtLevel<(ot::LogLevel)2>("Joiner", "Timeout occurs while waiting for joiner finalize response", a3, a4, a5, a6, a7, a8, v13);
          v18 = 28;
          break;
        case 4:
          ot::Logger::LogAtLevel<(ot::LogLevel)2>("Joiner", "Timeout occurs while waiting for joiner entrust", a3, a4, a5, a6, a7, a8, v13);
          v18 = 28;
          break;
        case 5:
          ot::Mac::ExtAddress::GenerateRandom(v20);
          v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
          ot::Mac::Mac::SetExtAddress(v11, v20);
          v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
          ot::Mle::Mle::UpdateLinkLocalAddress(v12);
          v18 = 0;
          break;
      }

      return ot::MeshCoP::Joiner::Finish(this, v18);
    }

LABEL_15:
    __assert_rtn("HandleTimer", "joiner.cpp", 682, "false");
  }

  if (!*(this + 113))
  {
    __assert_rtn("HandleTimer", "joiner.cpp", 647, "false");
  }

  --*(this + 113);
  v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::DiscoverScanner>(this);
  ot::Mac::ChannelMask::ChannelMask(v17, 0);
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  PanId = ot::Mac::Mac::GetPanId(v8);
  result = ot::Mle::DiscoverScanner::Discover(v14, v17, PanId, 1, 1, (this + 114), ot::MeshCoP::Joiner::HandleDiscoverResult, this);
  v18 = result;
  if (result)
  {
    return ot::MeshCoP::Joiner::Finish(this, v18);
  }

  return result;
}

ot::TimerMilli *ot::TimerMilliIn<ot::MeshCoP::Joiner,&ot::MeshCoP::Joiner::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::MeshCoP::Joiner,&ot::MeshCoP::Joiner::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::MeshCoP::Joiner,&ot::MeshCoP::Joiner::HandleTimer>::HandleTimer);
  return a1;
}

void ot::MeshCoP::Joiner::SetIdFromIeeeEui64(ot::MeshCoP::Joiner *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::GetIeeeEui64(v1, v4);
  ot::MeshCoP::ComputeJoinerId(v4, this, v2);
}

uint64_t ot::MeshCoP::JoinerDiscerner::Clear(uint64_t this)
{
  *(this + 8) = 0;
  return this;
}

{
  return ot::MeshCoP::JoinerDiscerner::Clear(this);
}

uint64_t ot::ClearAllBytes<ot::MeshCoP::Joiner::JoinerRouter [2]>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::MeshCoP::Joiner::JoinerRouter [2]>(result);
}

uint64_t ot::MeshCoP::Joiner::GetDiscerner(ot::MeshCoP::Joiner *this)
{
  if (ot::MeshCoP::JoinerDiscerner::IsEmpty((this + 8)))
  {
    return 0;
  }

  else
  {
    return this + 8;
  }
}

BOOL ot::MeshCoP::JoinerDiscerner::IsEmpty(ot::MeshCoP::JoinerDiscerner *this)
{
  return *(this + 8) == 0;
}

{
  return ot::MeshCoP::JoinerDiscerner::IsEmpty(this);
}

uint64_t ot::MeshCoP::Joiner::SetDiscerner(ot::MeshCoP::Joiner *this, const ot::MeshCoP::JoinerDiscerner *a2)
{
  v4 = 0;
  if (ot::MeshCoP::JoinerDiscerner::IsValid(a2))
  {
    if (*(this + 24))
    {
      return 13;
    }

    else
    {
      *(this + 8) = *a2;
      ot::MeshCoP::JoinerDiscerner::GenerateJoinerId((this + 8), this);
    }
  }

  else
  {
    return 7;
  }

  return v4;
}

uint64_t ot::MeshCoP::Joiner::ClearDiscerner(ot::MeshCoP::Joiner *this)
{
  v3 = 0;
  if (*(this + 24))
  {
    return 13;
  }

  else if (!ot::MeshCoP::JoinerDiscerner::IsEmpty((this + 8)))
  {
    ot::MeshCoP::JoinerDiscerner::Clear(this + 8);
    ot::MeshCoP::Joiner::SetIdFromIeeeEui64(this);
  }

  return v3;
}

void ot::MeshCoP::Joiner::SetState(ot::InstanceLocator *a1, unsigned __int8 a2)
{
  v13 = a1;
  v12 = a2;
  v11 = *(a1 + 24);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
  if (!ot::Notifier::Update<ot::MeshCoP::Joiner::State>(v2, a1 + 24, &v12, 0x8000000))
  {
    v9 = ot::MeshCoP::Joiner::StateToString(v11);
    ot::MeshCoP::Joiner::StateToString(v12);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Joiner", "JoinerState: %s -> %s", v3, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t ot::Notifier::Update<ot::MeshCoP::Joiner::State>(void *a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v5 = 0;
  if (*a2 == *a3)
  {
    ot::Notifier::SignalIfFirst(a1, a4);
    return 24;
  }

  else
  {
    *a2 = *a3;
    ot::Notifier::Signal(a1, a4);
  }

  return v5;
}

{
  return ot::Notifier::Update<ot::MeshCoP::Joiner::State>(a1, a2, a3, a4);
}

uint64_t ot::MeshCoP::Joiner::Start(uint64_t a1, ot *a2, ot *a3, ot *a4, ot *a5, ot *a6, char *a7, uint64_t a8, uint64_t a9)
{
  v42 = a1;
  v41 = a2;
  v40 = a3;
  v39 = a4;
  v38 = a5;
  v37 = a6;
  v36 = a7;
  v35 = a8;
  v34 = a9;
  v33 = 0;
  ot::MeshCoP::Joiner::SetIdFromIeeeEui64(a1);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Joiner", "Joiner starting", v9, v10, v11, v12, v13, v14, v25);
  if (!v40 || (ot::IsValidUtf8String(v40, v15) & 1) != 0)
  {
    if (!v39 || (ot::IsValidUtf8String(v39, v15) & 1) != 0)
    {
      if (!v37 || (ot::IsValidUtf8String(v37, v15) & 1) != 0)
      {
        if (*(a1 + 24))
        {
          v33 = 5;
        }

        else
        {
          v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
          if ((ot::ThreadNetif::IsUp(v16) & 1) != 0 && (v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1), !ot::Mle::Mle::GetRole(v17)))
          {
            v33 = ot::MeshCoP::JoinerPskd::SetFrom(v44, v41);
            if (!v33)
            {
              *(a1 + 113) = *(a1 + 112);
              ot::Mac::ExtAddress::GenerateRandom(v43);
              v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
              ot::Mac::Mac::SetExtAddress(v18, v43);
              v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
              ot::Mle::Mle::UpdateLinkLocalAddress(v19);
              v20 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
              v33 = ot::Coap::CoapSecure::Start(v20, 1000);
              if (!v33)
              {
                v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
                ot::Coap::CoapSecure::SetPsk(v21, v44);
                v32 = a1 + 48;
                v31 = a1 + 48;
                v30 = a1 + 76;
                while (v31 != v30)
                {
                  v29 = v31;
                  *(v31 + 13) = 0;
                  v31 += 14;
                }

                v33 = ot::MeshCoP::Joiner::PrepareJoinerFinalizeMessage(a1, v40, v39, v38, v37, v36);
                if (!v33)
                {
                  if (ot::MeshCoP::JoinerDiscerner::IsEmpty((a1 + 8)))
                  {
                    ot::MeshCoP::SteeringData::CalculateHashBitIndexes(a1, (a1 + 114));
                  }

                  else
                  {
                    ot::MeshCoP::SteeringData::CalculateHashBitIndexes((a1 + 8), (a1 + 114));
                  }

                  v26 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::DiscoverScanner>(a1);
                  ot::Mac::ChannelMask::ChannelMask(v28, 0);
                  v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
                  PanId = ot::Mac::Mac::GetPanId(v22);
                  v33 = ot::Mle::DiscoverScanner::Discover(v26, v28, PanId, 1, 1, (a1 + 114), ot::MeshCoP::Joiner::HandleDiscoverResult, a1);
                  if (!v33)
                  {
                    ot::CallbackBase<void (*)(otError,void *)>::Set((a1 + 32), v35, v34);
                    ot::MeshCoP::Joiner::SetState(a1, 1u);
                  }
                }
              }
            }
          }

          else
          {
            v33 = 13;
          }
        }
      }

      else
      {
        v33 = 7;
      }
    }

    else
    {
      v33 = 7;
    }
  }

  else
  {
    v33 = 7;
  }

  if (v33)
  {
    ot::MeshCoP::Joiner::FreeJoinerFinalizeMessage(a1);
  }

  ot::Logger::LogOnError("Joiner", v33, "start joiner");
  return v33;
}

uint64_t ot::MeshCoP::Joiner::PrepareJoinerFinalizeMessage(ot::Message **this, ot *a2, ot *a3, ot *a4, ot *a5, ot *a6)
{
  v25 = this;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v19 = 0;
  ot::MeshCoP::VendorStackVersionTlv::VendorStackVersionTlv(v18);
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
  this[10] = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v6, 0x16u);
  if (this[10])
  {
    v16 = this[10];
    Length = ot::Message::GetLength(v16);
    ot::Message::SetOffset(v16, Length);
    v19 = ot::Tlv::Append<ot::MeshCoP::StateTlv>(this[10], 1u);
    if (!v19)
    {
      v19 = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)33,(unsigned char)32>>(this[10], v23, v7, v8, v9);
      if (!v19)
      {
        v19 = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)34,(unsigned char)32>>(this[10], v22, v7, v8, v9);
        if (!v19)
        {
          v19 = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)35,(unsigned char)16>>(this[10], v21, v7, v8, v9);
          if (!v19)
          {
            ot::MeshCoP::VendorStackVersionTlv::Init(v18);
            ot::MeshCoP::VendorStackVersionTlv::SetOui(v18, 0x18B430u, v14);
            ot::MeshCoP::VendorStackVersionTlv::SetMajor(v18, 0);
            ot::MeshCoP::VendorStackVersionTlv::SetMinor(v18, 1);
            ot::MeshCoP::VendorStackVersionTlv::SetRevision(v18, 0);
            v19 = ot::Tlv::AppendTo(v18, this[10]);
            if (!v19 && (!v20 || (v19 = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)36,(unsigned char)64>>(this[10], v20, v7, v8, v9)) == 0))
            {
              if (v24)
              {
                v19 = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)32,(unsigned char)64>>(this[10], v24, v7, v8, v9);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v19 = 3;
  }

  if (v19)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("Joiner", "prepare joiner finalize message %d", v7, v8, v9, v10, v11, v12, v19);
    ot::MeshCoP::Joiner::FreeJoinerFinalizeMessage(this);
  }

  return v19;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::DiscoverScanner>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Mle::DiscoverScanner>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::DiscoverScanner>(a1);
}

void ot::MeshCoP::Joiner::FreeJoinerFinalizeMessage(ot::Message **this)
{
  if (!*(this + 24))
  {
    if (this[10])
    {
      ot::Message::Free(this[10]);
      this[10] = 0;
    }
  }
}

unsigned __int8 *ot::MeshCoP::Joiner::Stop(ot::MeshCoP::Joiner *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Joiner", "Joiner stopped", a3, a4, a5, a6, a7, a8, this);
  ot::CallbackBase<void (*)(otError,void *)>::Clear((v9 + 32));
  return ot::MeshCoP::Joiner::Finish(v9, 0xBu);
}

unsigned __int8 *ot::MeshCoP::Joiner::Finish(unsigned __int8 *result, unsigned int a2)
{
  v8 = result;
  v7 = a2;
  v5 = result;
  v6 = result[24];
  if (result[24])
  {
    if (v6 != 1)
    {
      if ((v6 - 2) > 3)
      {
        goto LABEL_8;
      }

      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(result);
      ot::Coap::CoapSecure::Disconnect(v2);
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(v5);
      ot::Ip6::Filter::RemoveUnsecurePort(v3, 1000);
      IgnoreError();
      ot::TimerMilli::Stop((v5 + 88));
    }

    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(v5);
    ot::Coap::CoapSecure::Stop(v4);
LABEL_8:
    ot::MeshCoP::Joiner::SetState(v5, 0);
    ot::MeshCoP::Joiner::FreeJoinerFinalizeMessage(v5);
    return ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&>(v5 + 4, &v7);
  }

  return result;
}

uint64_t ot::MeshCoP::Joiner::CalculatePriority(ot::MeshCoP::Joiner *this, char a2, char a3)
{
  v7 = a2;
  if (a2 == 127)
  {
    v7 = -127;
  }

  v5 = ot::Clamp<signed char>(v7, -127, -1);
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  return (v5 + v3);
}

uint64_t ot::Clamp<signed char>(char a1, char a2, char a3)
{
  v4 = ot::Max<signed char>(a1, a2);
  return ot::Min<signed char>(v4, a3);
}

{
  return ot::Clamp<signed char>(a1, a2, a3);
}

unsigned __int8 *ot::MeshCoP::Joiner::HandleDiscoverResult(unsigned __int8 *result, uint64_t a2)
{
  v4 = result;
  v6 = 0;
  if (result[24] == 1)
  {
    if (a2 && *(a2 + 52))
    {
      return ot::MeshCoP::Joiner::SaveDiscoveredJoinerRouter(result, a2);
    }

    else
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(result);
      ot::Mac::Mac::SetExtAddress(v2, v4);
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v4);
      ot::Mle::Mle::UpdateLinkLocalAddress(v3);
      *(v4 + 38) = 0;
      for (i = v4 + 48; i < v4 + 76; i += 14)
      {
        if (*(i + 13))
        {
          v6 = 1;
          break;
        }
      }

      if ((v6 & 1) == 0 && *(v4 + 113))
      {
        *(v4 + 6) = 0;
        *(v4 + 7) = 0;
        *(v4 + 8) = 0;
        *(v4 + 18) = 0;
        ot::TimerMilli::Stop((v4 + 88));
        return ot::TimerMilli::Start((v4 + 88), 0x64u);
      }

      else
      {
        return ot::MeshCoP::Joiner::TryNextJoinerRouter(v4, 0);
      }
    }
  }

  return result;
}

void *ot::MeshCoP::Joiner::SaveDiscoveredJoinerRouter(ot::MeshCoP::Joiner *a1, uint64_t a2)
{
  v18 = ot::GetArrayEnd<ot::MeshCoP::Joiner::JoinerRouter,(unsigned short)2>(a1 + 48);
  v2 = ot::AsCoreType<otSteeringData>(a2 + 33);
  v19 = ot::MeshCoP::SteeringData::PermitsAllJoiners(v2);
  v3 = ot::AsCoreType<otExtAddress>(a2);
  ot::Mac::ExtAddress::ToString(v3, v22);
  v15 = ot::String<(unsigned short)17>::AsCString(v22);
  v11 = *(a2 + 50);
  v12 = *(a2 + 52);
  v13 = *(a2 + 54);
  v14 = *(a2 + 55);
  ot::ToYesNo((v19 & 1));
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Joiner", "Joiner discover network: %s, pan:0x%04x, port:%d, chan:%d, rssi:%d, allow-any:%s", v4, v5, v6, v7, v8, v9, v15);
  result = ot::MeshCoP::Joiner::CalculatePriority(a1, *(a2 + 55), v19 & 1);
  v20 = result;
    ;
  }

  if (i < v18)
  {
    memmove(i + 14, i, v18 - 14 - i);
    result = ot::AsCoreType<otExtAddress>(a2);
    *i = *result;
    *(i + 4) = *(a2 + 50);
    *(i + 5) = *(a2 + 52);
    *(i + 12) = *(a2 + 54);
    *(i + 13) = v20;
  }

  return result;
}

unsigned __int8 *ot::MeshCoP::Joiner::TryNextJoinerRouter(unsigned __int16 *a1, unsigned int a2)
{
  while (1)
  {
    v3 = a1[38];
    if (v3 >= ot::GetArrayLength<ot::MeshCoP::Joiner::JoinerRouter,(unsigned short)2>())
    {
      break;
    }

    v5 = &a1[7 * a1[38] + 24];
    if (!*(v5 + 13))
    {
      break;
    }

    result = ot::MeshCoP::Joiner::Connect(a1, v5);
    if (!result)
    {
      ++a1[38];
      return result;
    }

    if (!a2)
    {
      a2 = result;
    }

    ++a1[38];
  }

  if (!a2)
  {
    a2 = 23;
  }

  return ot::MeshCoP::Joiner::Finish(a1, a2);
}

uint64_t ot::GetArrayEnd<ot::MeshCoP::Joiner::JoinerRouter,(unsigned short)2>(uint64_t a1)
{
  return a1 + 28;
}

{
  return ot::GetArrayEnd<ot::MeshCoP::Joiner::JoinerRouter,(unsigned short)2>(a1);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otSteeringData>(uint64_t a1)
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

uint64_t ot::MeshCoP::SteeringData::PermitsAllJoiners(ot::MeshCoP::SteeringData *this)
{
  DoesAllMatch = 0;
  if (*this)
  {
    DoesAllMatch = ot::MeshCoP::SteeringData::DoesAllMatch(this, 0xFFu);
  }

  return DoesAllMatch & 1;
}

{
  return ot::MeshCoP::SteeringData::PermitsAllJoiners(this);
}

uint64_t ot::GetArrayLength<ot::MeshCoP::Joiner::JoinerRouter,(unsigned short)2>()
{
  return 2;
}

{
  return ot::GetArrayLength<ot::MeshCoP::Joiner::JoinerRouter,(unsigned short)2>();
}

uint64_t ot::MeshCoP::Joiner::Connect(ot::InstanceLocator *a1, __int16 *a2)
{
  v21 = a1;
  v20 = a2;
  v19 = 23;
  ot::Ip6::SockAddr::SockAddr(v18, a2[5]);
  ot::Mac::ExtAddress::ToString(v20, v22);
  v2 = ot::String<(unsigned short)17>::AsCString(v22);
  v15 = *(v20 + 4);
  v16 = *(v20 + 12);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Joiner", "Joiner connecting to %s, pan:0x%04x, chan:%d", v3, v4, v5, v6, v7, v8, v2);
  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
  ot::Mac::Mac::SetPanId(v9, *(v20 + 4));
  v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
  v19 = ot::Mac::Mac::SetPanChannel(v10, *(v20 + 12));
  if (!v19)
  {
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(a1);
    v19 = ot::Ip6::Filter::AddUnsecurePort(v11, 1000);
    if (!v19)
    {
      Address = ot::Ip6::SockAddr::GetAddress(v18);
      ot::Ip6::Address::SetToLinkLocalAddress(Address, v20);
      v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
      v19 = ot::Coap::CoapSecure::Connect(v13, v18, ot::MeshCoP::Joiner::HandleSecureCoapClientConnect, a1);
      if (!v19)
      {
        ot::MeshCoP::Joiner::SetState(a1, 2u);
      }
    }
  }

  ot::Logger::LogOnError("Joiner", v19, "start secure joiner connection");
  return v19;
}

ot::Ip6::SockAddr *ot::Ip6::SockAddr::SockAddr(ot::Ip6::SockAddr *this, __int16 a2)
{
  ot::Ip6::SockAddr::SockAddr(this, a2);
  return this;
}

{
  *(this + 8) = a2;
  Address = ot::Ip6::SockAddr::GetAddress(this);
  ot::Clearable<ot::Ip6::Address>::Clear(Address);
  return this;
}

uint64_t ot::Ip6::SockAddr::GetAddress(ot::Ip6::SockAddr *this)
{
  return ot::AsCoreType<otIp6Address>(this);
}

{
  return ot::AsCoreType<otIp6Address>(this);
}

{
  return ot::Ip6::SockAddr::GetAddress(this);
}

{
  return ot::Ip6::SockAddr::GetAddress(this);
}

ot::MeshCoP::Joiner *ot::MeshCoP::Joiner::HandleSecureCoapClientConnect(ot::MeshCoP::Joiner *this, char a2)
{
  v2 = this;
  if (*(this + 24) == 2)
  {
    if (a2)
    {
      ot::MeshCoP::Joiner::SetState(this, 3u);
      ot::MeshCoP::Joiner::SendJoinerFinalize(v2);
      return ot::TimerMilli::Start((v2 + 88), 0xFA0u);
    }

    else
    {
      return ot::MeshCoP::Joiner::TryNextJoinerRouter(this, 8);
    }
  }

  return this;
}

void ot::MeshCoP::Joiner::SendJoinerFinalize(ot::MeshCoP::Joiner *this)
{
  if (!*(this + 10))
  {
    __assert_rtn("SendJoinerFinalize", "joiner.cpp", 522, "mFinalizeMessage != nullptr");
  }

  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
  if (!ot::Coap::CoapSecure::SendMessage(v1, *(this + 10), ot::MeshCoP::Joiner::HandleJoinerFinalizeResponse, this))
  {
    *(this + 10) = 0;
    v2 = ot::UriToString<(ot::Uri)22>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Joiner", "Sent %s", v3, v4, v5, v6, v7, v8, v2);
  }
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)33,(unsigned char)32>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0x21, 0x20u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)33,(unsigned char)32>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)34,(unsigned char)32>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0x22, 0x20u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)34,(unsigned char)32>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)35,(unsigned char)16>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0x23, 0x10u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)35,(unsigned char)16>>(a1, a2, a3, a4, a5);
}

uint64_t ot::MeshCoP::VendorStackVersionTlv::Init(ot::MeshCoP::VendorStackVersionTlv *this)
{
  ot::MeshCoP::Tlv::SetType(this, 37);
  return ot::Tlv::SetLength(this, 6);
}

{
  return ot::MeshCoP::VendorStackVersionTlv::Init(this);
}

uint64_t ot::MeshCoP::VendorStackVersionTlv::SetOui(ot::MeshCoP::VendorStackVersionTlv *this, unsigned int a2, unsigned __int8 *a3)
{
  return ot::BigEndian::WriteUint24(a2, this + 2, a3);
}

{
  return ot::MeshCoP::VendorStackVersionTlv::SetOui(this, a2, a3);
}

uint64_t ot::MeshCoP::VendorStackVersionTlv::SetMajor(uint64_t this, char a2)
{
  *(this + 7) = *(this + 7) & 0xF0 | a2 & 0xF;
  return this;
}

{
  return ot::MeshCoP::VendorStackVersionTlv::SetMajor(this, a2);
}

uint64_t ot::MeshCoP::VendorStackVersionTlv::SetMinor(uint64_t this, char a2)
{
  *(this + 7) = *(this + 7) & 0xF | (16 * a2);
  return this;
}

{
  return ot::MeshCoP::VendorStackVersionTlv::SetMinor(this, a2);
}

uint64_t ot::MeshCoP::VendorStackVersionTlv::SetRevision(ot::MeshCoP::VendorStackVersionTlv *this, char a2)
{
  v2 = ot::BigEndian::HostSwap16(*(this + 5));
  result = ot::BigEndian::HostSwap16((v2 & 0xFF0F | a2 & 0xF0u));
  *(this + 5) = result;
  return result;
}

{
  return ot::MeshCoP::VendorStackVersionTlv::SetRevision(this, a2);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)36,(unsigned char)64>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0x24, 0x40u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)36,(unsigned char)64>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)32,(unsigned char)64>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0x20, 0x40u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)32,(unsigned char)64>>(a1, a2, a3, a4, a5);
}

void ot::MeshCoP::Joiner::HandleJoinerFinalizeResponse(_BYTE *a1, uint64_t a2, uint64_t a3, int a4)
{
  ot::AsCoapMessagePtr();
  v6 = v4;
  v5 = ot::AsCoreType<otMessageInfo>(a3);
  ot::MeshCoP::Joiner::HandleJoinerFinalizeResponse(a1, v6, v5, a4);
}

void ot::MeshCoP::Joiner::HandleJoinerFinalizeResponse(_BYTE *a1, ot::Coap::Message *a2, uint64_t a3, int a4)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = 0;
  if (a1[24] == 3 && !v15)
  {
    if (!v17)
    {
      __assert_rtn("HandleJoinerFinalizeResponse", "joiner.cpp", 553, "aMessage != nullptr");
    }

    if (ot::Coap::Message::IsAck(v17) && ot::Coap::Message::GetCode(v17) == 68 && !ot::Tlv::Find<ot::MeshCoP::StateTlv>(v17, &v14))
    {
      ot::MeshCoP::Joiner::SetState(a1, 4u);
      ot::TimerMilli::Start((a1 + 88), 0xFA0u);
      v4 = ot::UriToString<(ot::Uri)22>();
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("Joiner", "Received %s %d", v5, v6, v7, v8, v9, v10, v4);
    }
  }

  v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
  ot::Coap::CoapSecure::Disconnect(v11);
  v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(a1);
  ot::Ip6::Filter::RemoveUnsecurePort(v12, 1000);
  IgnoreError();
}

BOOL ot::Coap::Message::IsAck(ot::Coap::Message *this)
{
  return ot::Coap::Message::GetType(this) == 2;
}

{
  return ot::Coap::Message::IsAck(this);
}

void ot::MeshCoP::Joiner::HandleTmf<(ot::Uri)21>(_BYTE *a1, ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  *&v23[2] = 0;
  if (a1[24] == 4 && ot::Coap::Message::IsConfirmablePostRequest(v25))
  {
    v3 = ot::UriToString<(ot::Uri)21>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Joiner", "Received %s", v4, v5, v6, v7, v8, v9, v3);
    ot::Clearable<ot::MeshCoP::Dataset::Info>::Clear(v27);
    ot::MeshCoP::Dataset::Info::Update<(ot::MeshCoP::Dataset::Component)2>(v27);
    *&v23[2] = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(v25, v10);
    if (!*&v23[2])
    {
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
      *v23 = ot::Mac::Mac::GetPanChannel(v11);
      ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)8>(v27, v23);
      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
      PanId = ot::Mac::Mac::GetPanId(v12);
      ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)7>(v27, &PanId);
      active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
      ot::MeshCoP::DatasetManager::SaveLocal(active, v27);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("Joiner", "Joiner successful!", v14, v15, v16, v17, v18, v19, v20);
      ot::MeshCoP::Joiner::SendJoinerEntrustResponse(a1, v25, v24);
      ot::TimerMilli::Start((a1 + 88), 0x64u);
    }
  }

  else
  {
    *&v23[2] = 2;
  }

  ot::Logger::LogOnError("Joiner", *&v23[2], "process joiner entrust");
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::FindTlv(a1, 5, a2, 0x10);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(a1, a2);
}

void ot::MeshCoP::Dataset::Info::Update<(ot::MeshCoP::Dataset::Component)2>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)2>(Components);
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)2>(a1);
  ot::AsNonConst<ot::NetworkKey>();
}

{
  ot::MeshCoP::Dataset::Info::Update<(ot::MeshCoP::Dataset::Component)2>(a1);
}

void ot::MeshCoP::Joiner::SendJoinerEntrustResponse(ot::MeshCoP::Joiner *this, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = 0;
  v15 = 0;
  memcpy(__dst, a3, sizeof(__dst));
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v15 = ot::Coap::CoapBase::NewPriorityResponseMessage(v3, v18);
  if (v15)
  {
    ot::Message::SetSubType(v15, 4);
    SockAddr = ot::Ip6::MessageInfo::GetSockAddr(__dst);
    ot::Clearable<ot::Ip6::Address>::Clear(SockAddr);
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
    v16 = ot::Coap::CoapBase::SendMessage(v5, v15, __dst);
    if (!v16)
    {
      ot::MeshCoP::Joiner::SetState(this, 5u);
      v6 = ot::UriToString<(ot::Uri)21>();
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("Joiner", "Sent %s response", v7, v8, v9, v10, v11, v12, v6);
    }
  }

  else
  {
    v16 = 3;
  }

  if (v16)
  {
    if (v15)
    {
      ot::Message::Free(v15);
    }
  }
}

uint64_t ot::MeshCoP::VendorStackVersionTlv::VendorStackVersionTlv(uint64_t this)
{
  *(this + 5) = 0;
  *(this + 7) = 0;
  return this;
}

uint64_t ot::BigEndian::WriteUint24(uint64_t this, _BYTE *a2, unsigned __int8 *a3)
{
  *a2 = BYTE2(this);
  a2[1] = BYTE1(this);
  a2[2] = this;
  return this;
}

{
  return ot::BigEndian::WriteUint24(this, a2, a3);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Joiner>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::Joiner>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Joiner>(a1);
}

uint64_t ot::Max<signed char>(char a1, char a2)
{
  if (a1 >= a2)
  {
    return a1;
  }

  else
  {
    return a2;
  }
}

{
  return ot::Max<signed char>(a1, a2);
}

uint64_t ot::Min<signed char>(char a1, char a2)
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
  return ot::Min<signed char>(a1, a2);
}

ot::MeshCoP::JoinerRouter *ot::MeshCoP::JoinerRouter::JoinerRouter(ot::MeshCoP::JoinerRouter *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Ip6::Udp::SocketIn<ot::MeshCoP::JoinerRouter,&ot::MeshCoP::JoinerRouter::HandleUdpReceive>::SocketIn((this + 8), a2, this);
  ot::TimerMilliIn<ot::MeshCoP::JoinerRouter,&ot::MeshCoP::JoinerRouter::HandleTimer>::TimerMilliIn((this + 80), a2);
  ot::Coap::MessageQueue::MessageQueue((this + 104));
  result = this;
  *(this + 56) = 0;
  *(this + 114) &= ~1u;
  return result;
}

{
  ot::MeshCoP::JoinerRouter::JoinerRouter(this, a2);
  return this;
}

void ot::MeshCoP::JoinerRouter::HandleUdpReceive(ot::MeshCoP::JoinerRouter *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v45 = this;
  v44 = a2;
  v43 = a3;
  BorderAgentRloc = 0;
  v41 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v40, Instance);
  v38 = 0;
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("JoinerRouter", "JoinerRouter::HandleUdpReceive", v4, v5, v6, v7, v8, v9, v32);
  v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
  BorderAgentRloc = ot::NetworkData::Leader::FindBorderAgentRloc(v10, &v38);
  if (!BorderAgentRloc)
  {
    v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
    v41 = ot::Coap::CoapBase::NewPriorityNonConfirmablePostMessage(v17, 0x1Du);
    if (v41)
    {
      v35 = v41;
      PeerPort = ot::Ip6::MessageInfo::GetPeerPort(v43);
      BorderAgentRloc = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(v35, PeerPort);
      if (!BorderAgentRloc)
      {
        v34 = v41;
        PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v43);
        Iid = ot::Ip6::Address::GetIid(PeerAddr);
        BorderAgentRloc = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)19,ot::Ip6::InterfaceIdentifier>>(v34, Iid);
        if (!BorderAgentRloc)
        {
          v33 = v41;
          v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
          Rloc16 = ot::Mle::Mle::GetRloc16(v21);
          BorderAgentRloc = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)20,unsigned short>>(v33, Rloc16);
          if (!BorderAgentRloc)
          {
            ot::OffsetRange::InitFromMessageOffsetToEnd(v37, v44);
            ot::MeshCoP::ExtendedTlv::SetType(v39, 17);
            Length = ot::OffsetRange::GetLength(v37);
            ot::ExtendedTlv::SetLength(v39, Length);
            BorderAgentRloc = ot::Message::Append<ot::MeshCoP::ExtendedTlv>(v41, v39);
            if (!BorderAgentRloc)
            {
              BorderAgentRloc = ot::Message::AppendBytesFromMessage(v41, v44, v37);
              if (!BorderAgentRloc)
              {
                ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(v40, v38);
                v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
                BorderAgentRloc = ot::Coap::CoapBase::SendMessage(v24, v41, v40);
                if (!BorderAgentRloc)
                {
                  v25 = ot::UriToString<(ot::Uri)29>();
                  ot::Logger::LogAtLevel<(ot::LogLevel)4>("JoinerRouter", "Sent %s", v26, v27, v28, v29, v30, v31, v25);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      BorderAgentRloc = 3;
    }
  }

  if (BorderAgentRloc && v41)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("JoinerRouter", "process UDP message: %d", v11, v12, v13, v14, v15, v16, BorderAgentRloc);
    if (v41)
    {
      ot::Message::Free(v41);
    }
  }
}

ot::InstanceLocator *ot::Ip6::Udp::SocketIn<ot::MeshCoP::JoinerRouter,&ot::MeshCoP::JoinerRouter::HandleUdpReceive>::SocketIn(ot::InstanceLocator *a1, ot::Instance *a2, uint64_t a3)
{
  ot::Ip6::Udp::SocketIn<ot::MeshCoP::JoinerRouter,&ot::MeshCoP::JoinerRouter::HandleUdpReceive>::SocketIn(a1, a2, a3);
  return a1;
}

{
  ot::Ip6::Udp::Socket::Socket(a1, a2, ot::Ip6::Udp::SocketIn<ot::MeshCoP::JoinerRouter,&ot::MeshCoP::JoinerRouter::HandleUdpReceive>::HandleUdpReceive, a3);
  return a1;
}

ot::TimerMilli *ot::TimerMilliIn<ot::MeshCoP::JoinerRouter,&ot::MeshCoP::JoinerRouter::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::MeshCoP::JoinerRouter,&ot::MeshCoP::JoinerRouter::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::MeshCoP::JoinerRouter,&ot::MeshCoP::JoinerRouter::HandleTimer>::HandleTimer);
  return a1;
}

void ot::MeshCoP::JoinerRouter::HandleNotifierEvents(ot::MeshCoP::JoinerRouter *a1, uint64_t a2)
{
  v3 = a2;
  if (ot::Events::Contains(&v3, 512))
  {
    ot::MeshCoP::JoinerRouter::Start(a1);
  }
}

void ot::MeshCoP::JoinerRouter::Start(ot::MeshCoP::JoinerRouter *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsFullThreadDevice(v1))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    if (ot::NetworkData::Leader::IsJoiningAllowed(v2))
    {
      JoinerUdpPort = ot::MeshCoP::JoinerRouter::GetJoinerUdpPort(this);
      if (!ot::Ip6::Udp::SocketHandle::IsBound((this + 8)))
      {
        ot::Ip6::Udp::Socket::Open((this + 8));
        IgnoreError();
        ot::Ip6::Udp::Socket::Bind((this + 8), JoinerUdpPort, 1);
        IgnoreError();
        v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(this);
        ot::Ip6::Filter::AddUnsecurePort(v9, JoinerUdpPort);
        IgnoreError();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("JoinerRouter", "Joiner Router: start", v10, v11, v12, v13, v14, v15, v17);
      }
    }

    else
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("JoinerRouter", "Joiner Router: stop", v3, v4, v5, v6, v7, v8, v17);
      if (ot::Ip6::Udp::SocketHandle::IsBound((this + 8)))
      {
        v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(this);
        SockName = ot::Ip6::Udp::SocketHandle::GetSockName((this + 8));
        ot::Ip6::Filter::RemoveUnsecurePort(v18, *(SockName + 16));
        IgnoreError();
        ot::Ip6::Udp::Socket::Close((this + 8));
        IgnoreError();
      }
    }
  }
}

uint64_t ot::MeshCoP::JoinerRouter::GetJoinerUdpPort(ot::MeshCoP::JoinerRouter *this)
{
  v4 = this;
  v3 = 0;
  if (*(this + 114))
  {
    return *(this + 56);
  }

  else
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    if (ot::NetworkData::Leader::FindJoinerUdpPort(v1, &v3))
    {
      return 1000;
    }
  }

  return v3;
}

uint64_t ot::Ip6::Udp::SocketHandle::GetSockName(ot::Ip6::Udp::SocketHandle *this)
{
  return ot::AsCoreType<otSockAddr>(this);
}

{
  return ot::AsCoreType<otSockAddr>(this);
}

{
  return ot::Ip6::Udp::SocketHandle::GetSockName(this);
}

{
  return ot::Ip6::Udp::SocketHandle::GetSockName(this);
}

void ot::MeshCoP::JoinerRouter::SetJoinerUdpPort(ot::MeshCoP::JoinerRouter *this, __int16 a2)
{
  *(this + 56) = a2;
  *(this + 114) = *(this + 114) & 0xFE | 1;
  ot::MeshCoP::JoinerRouter::Start(this);
}

void ot::MeshCoP::JoinerRouter::HandleTmf<(ot::Uri)30>(uint64_t a1, ot::Tlv *a2, uint64_t a3)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  TlvValueOffsetRange = 0;
  v24 = 0;
  v21 = 0;
  ot::Message::Settings::Settings(v20, 0, 3);
  ot::Ip6::MessageInfo::MessageInfo(v19);
  if (ot::Coap::Message::IsNonConfirmablePostRequest(v27))
  {
    v9 = ot::UriToString<(ot::Uri)30>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("JoinerRouter", "Received %s", v10, v11, v12, v13, v14, v15, v9);
    TlvValueOffsetRange = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(v27, &v24);
    if (!TlvValueOffsetRange)
    {
      TlvValueOffsetRange = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)19,ot::Ip6::InterfaceIdentifier>>(v27, v23);
      if (!TlvValueOffsetRange)
      {
        TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(v27, 0x11, &v22, v4);
        if (!TlvValueOffsetRange)
        {
          v21 = ot::Ip6::Udp::Socket::NewMessage((a1 + 8), 0, v20);
          if (v21)
          {
            TlvValueOffsetRange = ot::Message::AppendBytesFromMessage(v21, v27, &v22);
            if (!TlvValueOffsetRange)
            {
              PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v19);
              ot::Ip6::Address::SetToLinkLocalAddress(PeerAddr, v23);
              ot::Ip6::MessageInfo::SetPeerPort(v19, v24);
              TlvValueOffsetRange = ot::Ip6::Udp::Socket::SendTo((a1 + 8), v21, v19);
              if (!TlvValueOffsetRange && !ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)21,ot::Mac::Key>>(v27, v29))
              {
                ot::Logger::LogAtLevel<(ot::LogLevel)4>("JoinerRouter", "Received kek", v3, v4, v5, v6, v7, v8, v17);
                ot::MeshCoP::JoinerRouter::DelaySendingJoinerEntrust(a1, v19, v29);
              }
            }
          }

          else
          {
            TlvValueOffsetRange = 3;
          }
        }
      }
    }
  }

  else
  {
    TlvValueOffsetRange = 2;
  }

  if (TlvValueOffsetRange && v21)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("JoinerRouter", "process UDP message %d", v3, v4, v5, v6, v7, v8, TlvValueOffsetRange);
    if (v21)
    {
      ot::Message::Free(v21);
    }
  }
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)21,ot::Mac::Key>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::FindTlv(a1, 0x15, a2, 0x10);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)21,ot::Mac::Key>>(a1, a2);
}

void ot::MeshCoP::JoinerRouter::DelaySendingJoinerEntrust(ot::MeshCoP::JoinerRouter *this, const ot::Ip6::MessageInfo *a2, const ot::Mac::Key *a3)
{
  v12 = this;
  __src = a2;
  v10 = a3;
  v9 = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(this);
  v8 = ot::MessagePool::Allocate(v3, 6);
  ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata::JoinerEntrustMetadata(__dst);
  if (v8)
  {
    memcpy(__dst, __src, 0x26uLL);
    v4 = ot::Ip6::MessageInfo::SetPeerPort(__dst, 61631);
    Now = ot::TimerMilli::GetNow(v4);
    v7 = ot::Time::operator+(&Now, 50);
    v14 = v7;
    v15 = *v10;
    v9 = ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata::AppendTo(__dst, v8);
    if (!v9)
    {
      ot::MessageQueue::Enqueue((this + 104), v8);
      if (!ot::Timer::IsRunning((this + 80)))
      {
        ot::TimerMilli::FireAt((this + 80), v14);
      }
    }
  }

  else
  {
    v9 = 3;
  }

  if (v9 && v8)
  {
    ot::Message::Free(v8);
  }

  ot::Logger::LogOnError("JoinerRouter", v9, "schedule joiner entrust");
}

ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata *ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata::JoinerEntrustMetadata(ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata *this)
{
  ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata::JoinerEntrustMetadata(this);
  return this;
}

{
  ot::Ip6::MessageInfo::MessageInfo(this);
  return this;
}

uint64_t ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata::AppendTo(ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata *this, ot::Message *a2)
{
  return ot::Message::Append<ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata>(a2, this);
}

{
  return ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata::AppendTo(this, a2);
}

uint64_t ot::MeshCoP::JoinerRouter::SendDelayedJoinerEntrust(ot::MeshCoP::JoinerRouter *this)
{
  v7 = this;
  ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata::JoinerEntrustMetadata(v8);
  result = ot::MessageQueue::GetHead((this + 104));
  v6 = result;
  if (result)
  {
    result = ot::Timer::IsRunning((this + 80));
    if ((result & 1) == 0)
    {
      ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata::ReadFrom(v8, v6);
      Now = ot::TimerMilli::GetNow(v2);
      if (ot::Time::operator<(&Now, &v9))
      {
        return ot::TimerMilli::FireAt((this + 80), v9);
      }

      else
      {
        ot::MessageQueue::DequeueAndFree((this + 104), v6);
        v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
        ot::KeyManager::SetKek(v3, &v10);
        result = ot::MeshCoP::JoinerRouter::SendJoinerEntrust(this, v8);
        if (result)
        {
          return ot::TimerMilli::Start((this + 80), 0);
        }
      }
    }
  }

  return result;
}

void ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata::ReadFrom(ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata *this, const ot::Message *a2)
{
  Length = ot::Message::GetLength(a2);
  if (Length < 0x3CuLL)
  {
    __assert_rtn("ReadFrom", "joiner_router.cpp", 376, "length >= sizeof(*this)");
  }

  ot::Message::Read<ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata>(a2, Length - 60, this);
  IgnoreError();
}

uint64_t ot::MeshCoP::JoinerRouter::SendJoinerEntrust(ot::MeshCoP::JoinerRouter *this, const ot::Ip6::MessageInfo *a2)
{
  v13 = ot::MeshCoP::JoinerRouter::PrepareJoinerEntrustMessage(this);
  if (v13)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
    ot::Coap::CoapBase::AbortTransaction(v2, ot::MeshCoP::JoinerRouter::HandleJoinerEntrustResponse, this);
    IgnoreError();
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
    v14 = ot::Coap::CoapBase::SendMessage(v3, v13, a2, ot::MeshCoP::JoinerRouter::HandleJoinerEntrustResponse, this);
    if (!v14)
    {
      v11 = ot::UriToString<(ot::Uri)21>();
      ot::Message::GetLength(v13);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("JoinerRouter", "Sent %s (len= %d)", v4, v5, v6, v7, v8, v9, v11);
    }
  }

  else
  {
    v14 = 3;
  }

  if (v14 && v13)
  {
    ot::Message::Free(v13);
  }

  return v14;
}

ot::Buffer *ot::MeshCoP::JoinerRouter::PrepareJoinerEntrustMessage(ot::MeshCoP::JoinerRouter *this)
{
  ot::MeshCoP::Dataset::Dataset(v11);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v9 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v1, 0x15u);
  if (v9)
  {
    ot::Message::SetSubType(v9, 4);
    active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
    v10 = ot::MeshCoP::DatasetManager::Read(active, v11);
    if (!v10)
    {
      for (i = &ot::MeshCoP::JoinerRouter::PrepareJoinerEntrustMessage(void)::kTlvTypes; i != &unk_10044B1F9; ++i)
      {
        ot::MeshCoP::Dataset::FindTlv(v11, *i);
        if (!v3)
        {
          v10 = 13;
          goto LABEL_11;
        }

        v10 = ot::Tlv::AppendTo(v3, v9);
        if (v10)
        {
          goto LABEL_11;
        }
      }

      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
      CurrentKeySequence = ot::KeyManager::GetCurrentKeySequence(v4);
      v10 = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)6,unsigned int>>(v9, CurrentKeySequence);
    }
  }

  else
  {
    v10 = 3;
  }

LABEL_11:
  if (v10 && v9)
  {
    ot::Message::Free(v9);
    return 0;
  }

  return v9;
}

void ot::MeshCoP::JoinerRouter::HandleJoinerEntrustResponse(ot::MeshCoP::JoinerRouter *a1, uint64_t a2, uint64_t a3, int a4)
{
  ot::AsCoapMessagePtr();
  v6 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  ot::MeshCoP::JoinerRouter::HandleJoinerEntrustResponse(a1, v6, v5, a4);
}

void ot::MeshCoP::JoinerRouter::HandleJoinerEntrustResponse(ot::MeshCoP::JoinerRouter *a1, ot::Message *a2, uint64_t a3, int a4)
{
  ot::MeshCoP::JoinerRouter::SendDelayedJoinerEntrust(a1);
  if (!a4 && a2 && ot::Coap::Message::GetCode(a2) == 68)
  {
    v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
    AverageRss = ot::Message::GetAverageRss(a2);
    ot::Mac::Mac::UpdateJoinerRssiHistogram(v12, AverageRss);
    v5 = ot::UriToString<(ot::Uri)21>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("JoinerRouter", "Receive %s response", v6, v7, v8, v9, v10, v11, v5);
  }
}

uint64_t ot::Message::Read<ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x3Cu);
}

{
  return ot::Message::Read<ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata>(a1, a2, a3);
}

uint64_t ot::Message::Append<ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0x3Cu);
}

{
  return ot::Message::Append<ot::MeshCoP::JoinerRouter::JoinerEntrustMetadata>(a1, a2);
}

uint64_t ot::Ip6::Udp::SocketIn<ot::MeshCoP::JoinerRouter,&ot::MeshCoP::JoinerRouter::HandleUdpReceive>::HandleUdpReceive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = ot::AsCoreType<otMessage>(a2);
  v3 = ot::AsCoreType<otMessageInfo>(a3);
  return (ot::MeshCoP::JoinerRouter::HandleUdpReceive)(a1, v5, v3);
}

uint64_t ot::MeshCoP::JoinerPskd::SetFrom(ot::MeshCoP::JoinerPskd *this, ot *a2)
{
  v5 = 0;
  if (ot::MeshCoP::JoinerPskd::IsPskdValid(a2, a2))
  {
    ot::Clearable<ot::MeshCoP::JoinerPskd>::Clear(this);
    v2 = ot::StringLength(a2, 0x21);
    memcpy(this, a2, v2);
  }

  else
  {
    return 7;
  }

  return v5;
}

uint64_t ot::MeshCoP::JoinerPskd::IsPskdValid(ot::MeshCoP::JoinerPskd *this, const char *a2)
{
  v6 = 0;
  v5 = ot::StringLength(this, 0x21);
  if (v5 >= 6u && v5 <= 0x20u)
  {
    for (i = 0; i < v5; ++i)
    {
      v3 = *(this + i);
      if (!ot::IsDigit(v3) && !ot::IsUppercase(v3) || v3 == 73 || v3 == 79 || v3 == 81 || v3 == 90)
      {
        return v6 & 1;
      }
    }

    v6 = 1;
  }

  return v6 & 1;
}

void *ot::Clearable<ot::MeshCoP::JoinerPskd>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::MeshCoP::JoinerPskd>(a1);
}

{
  return ot::Clearable<ot::MeshCoP::JoinerPskd>::Clear(a1);
}

uint64_t ot::MeshCoP::JoinerPskd::operator==(uint64_t a1, uint64_t a2)
{
  v4 = 1;
  for (i = 0; i < 0x21; ++i)
  {
    if (*(a1 + i) != *(a2 + i))
    {
      v4 = 0;
      return v4 & 1;
    }

    if (!*(a1 + i))
    {
      return v4 & 1;
    }
  }

  return v4 & 1;
}

_BYTE *ot::MeshCoP::JoinerDiscerner::GenerateJoinerId(ot::MeshCoP::JoinerDiscerner *this, ot::Mac::ExtAddress *a2)
{
  ot::Mac::ExtAddress::GenerateRandom(a2);
  ot::MeshCoP::JoinerDiscerner::CopyTo(this, a2);
  return ot::Mac::ExtAddress::SetLocal(a2, 1);
}

BOOL ot::MeshCoP::JoinerDiscerner::CopyTo(ot::MeshCoP::JoinerDiscerner *this, ot::Mac::ExtAddress *a2)
{
  v5 = a2 + 7;
  v4 = *(this + 8);
  v3 = *this;
  result = ot::MeshCoP::JoinerDiscerner::IsValid(this);
  if (!result)
  {
    __assert_rtn("CopyTo", "meshcop.cpp", 138, "IsValid()");
  }

  while (v4 >= 8u)
  {
    *v5 = v3;
    v3 >>= 8;
    --v5;
    v4 -= 8;
  }

  if (v4)
  {
    *v5 &= ~((1 << v4) - 1);
    *v5 |= v3 & ((1 << v4) - 1);
  }

  return result;
}

BOOL ot::MeshCoP::JoinerDiscerner::Matches(ot::MeshCoP::JoinerDiscerner *this, const ot::Mac::ExtAddress *a2)
{
  if (!ot::MeshCoP::JoinerDiscerner::IsValid(this))
  {
    __assert_rtn("Matches", "meshcop.cpp", 120, "IsValid()");
  }

  Mask = ot::MeshCoP::JoinerDiscerner::GetMask(this);
  return (ot::BigEndian::ReadUint64(a2, v2) & Mask) == (*this & Mask);
}

uint64_t ot::MeshCoP::JoinerDiscerner::GetMask(ot::MeshCoP::JoinerDiscerner *this)
{
  return (1 << *(this + 8)) - 1;
}

{
  return ot::MeshCoP::JoinerDiscerner::GetMask(this);
}

BOOL ot::MeshCoP::JoinerDiscerner::operator==(unsigned __int8 *a1, uint64_t a2)
{
  Mask = ot::MeshCoP::JoinerDiscerner::GetMask(a1);
  v4 = 0;
  if (ot::MeshCoP::JoinerDiscerner::IsValid(a1))
  {
    v4 = 0;
    if (a1[8] == *(a2 + 8))
    {
      return (*a1 & Mask) == (*a2 & Mask);
    }
  }

  return v4;
}

ot::StringWriter *ot::MeshCoP::JoinerDiscerner::ToString@<X0>(ot::MeshCoP::JoinerDiscerner *this@<X0>, ot::StringWriter *a2@<X8>)
{
  ot::String<(unsigned short)45>::String(a2);
  if (*(this + 8) > 0x10uLL)
  {
    if (*(this + 8) > 0x20uLL)
    {
      v5 = ot::ToUlong(HIDWORD(*this));
      v3 = ot::ToUlong(*this);
      ot::StringWriter::Append(a2, "0x%lx-%08lx", v5, v3);
    }

    else
    {
      v2 = ot::ToUlong(*this);
      ot::StringWriter::Append(a2, "0x%08lx", v2);
    }
  }

  else
  {
    ot::StringWriter::Append(a2, "0x%04x", *this);
  }

  return ot::StringWriter::Append(a2, "/len:%d", *(this + 8));
}

void *ot::MeshCoP::SteeringData::Init(ot::MeshCoP::SteeringData *this, unsigned __int8 a2)
{
  if (a2 > 0x10u)
  {
    __assert_rtn("Init", "meshcop.cpp", 194, "aLength <= kMaxLength");
  }

  *this = a2;
  return ot::ClearAllBytes<unsigned char [16]>((this + 1));
}

void *ot::ClearAllBytes<unsigned char [16]>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

{
  return ot::ClearAllBytes<unsigned char [16]>(result);
}

void *ot::MeshCoP::SteeringData::SetToPermitAllJoiners(ot::MeshCoP::SteeringData *this)
{
  result = ot::MeshCoP::SteeringData::Init(this, 1u);
  *(this + 1) = -1;
  return result;
}

uint64_t ot::MeshCoP::SteeringData::UpdateBloomFilter(ot::MeshCoP::SteeringData *this, const ot::Mac::ExtAddress *a2)
{
  v6 = this;
  v5 = a2;
  ot::MeshCoP::SteeringData::CalculateHashBitIndexes(a2, v4);
  return ot::MeshCoP::SteeringData::UpdateBloomFilter(this, v4);
}

uint64_t ot::MeshCoP::SteeringData::CalculateHashBitIndexes(unsigned __int8 *a1, _WORD *a2)
{
  v10 = a1;
  v9 = a2;
  ot::Crc16::Crc16(v8, 4129);
  ot::Crc16::Crc16(v7, 32773);
  v6 = v10;
  v5 = v10 + 8;
  while (v6 != v5)
  {
    v4 = *v6;
    ot::Crc16::Update(v8, *v6);
    ot::Crc16::Update(v7, v4);
    ++v6;
  }

  v2 = ot::Crc16::Get(v8);
  *v9 = v2;
  result = ot::Crc16::Get(v7);
  v9[1] = result;
  return result;
}

uint64_t ot::MeshCoP::SteeringData::UpdateBloomFilter(ot::MeshCoP::SteeringData *a1, unsigned __int16 *a2)
{
  v8 = 0;
  if (*a1)
  {
    v8 = *a1 <= 0x10u;
  }

  if (!v8)
  {
    __assert_rtn("UpdateBloomFilter", "meshcop.cpp", 223, "(mLength > 0) && (mLength <= kMaxLength)");
  }

  v5 = *a2;
  NumBits = ot::MeshCoP::SteeringData::GetNumBits(a1);
  ot::MeshCoP::SteeringData::SetBit(a1, v5 % NumBits);
  v6 = a2[1];
  v3 = ot::MeshCoP::SteeringData::GetNumBits(a1);
  return ot::MeshCoP::SteeringData::SetBit(a1, v6 % v3);
}

uint64_t ot::MeshCoP::SteeringData::UpdateBloomFilter(ot::MeshCoP::SteeringData *this, const ot::MeshCoP::JoinerDiscerner *a2)
{
  v6 = this;
  v5 = a2;
  ot::MeshCoP::SteeringData::CalculateHashBitIndexes(a2, v4);
  return ot::MeshCoP::SteeringData::UpdateBloomFilter(this, v4);
}

uint64_t ot::MeshCoP::SteeringData::CalculateHashBitIndexes(ot::MeshCoP::JoinerDiscerner *a1, _WORD *a2)
{
  ot::Clearable<ot::Mac::ExtAddress>::Clear(&v5);
  ot::MeshCoP::JoinerDiscerner::CopyTo(a1, &v5);
  return ot::MeshCoP::SteeringData::CalculateHashBitIndexes(&v5, a2);
}

uint64_t ot::MeshCoP::SteeringData::SetBit(ot::MeshCoP::SteeringData *this, unsigned __int8 a2)
{
  v5 = ot::MeshCoP::SteeringData::BitFlag(this, a2);
  v2 = ot::MeshCoP::SteeringData::BitIndex(this, a2);
  result = v5;
  *(this + v2 + 1) |= v5;
  return result;
}

{
  return ot::MeshCoP::SteeringData::SetBit(this, a2);
}

uint64_t ot::MeshCoP::SteeringData::GetNumBits(ot::MeshCoP::SteeringData *this)
{
  return (8 * *this);
}

{
  return ot::MeshCoP::SteeringData::GetNumBits(this);
}

BOOL ot::MeshCoP::SteeringData::Contains(ot::MeshCoP::SteeringData *this, const ot::Mac::ExtAddress *a2)
{
  v6 = this;
  v5 = a2;
  ot::MeshCoP::SteeringData::CalculateHashBitIndexes(a2, v4);
  return ot::MeshCoP::SteeringData::Contains(this, v4);
}

BOOL ot::MeshCoP::SteeringData::Contains(ot::MeshCoP::SteeringData *a1, unsigned __int16 *a2)
{
  v8 = 0;
  if (*a1)
  {
    v6 = *a2;
    NumBits = ot::MeshCoP::SteeringData::GetNumBits(a1);
    v8 = 0;
    if (ot::MeshCoP::SteeringData::GetBit(a1, v6 % NumBits))
    {
      v5 = a2[1];
      v3 = ot::MeshCoP::SteeringData::GetNumBits(a1);
      return ot::MeshCoP::SteeringData::GetBit(a1, v5 % v3);
    }
  }

  return v8;
}

BOOL ot::MeshCoP::SteeringData::Contains(ot::MeshCoP::SteeringData *this, const ot::MeshCoP::JoinerDiscerner *a2)
{
  v6 = this;
  v5 = a2;
  ot::MeshCoP::SteeringData::CalculateHashBitIndexes(a2, v4);
  return ot::MeshCoP::SteeringData::Contains(this, v4);
}

BOOL ot::MeshCoP::SteeringData::GetBit(ot::MeshCoP::SteeringData *this, unsigned __int8 a2)
{
  v4 = *(this + ot::MeshCoP::SteeringData::BitIndex(this, a2) + 1);
  return (v4 & ot::MeshCoP::SteeringData::BitFlag(this, a2)) != 0;
}

{
  return ot::MeshCoP::SteeringData::GetBit(this, a2);
}

uint64_t ot::Crc16::Get(ot::Crc16 *this)
{
  return *(this + 1);
}

{
  return ot::Crc16::Get(this);
}

uint64_t ot::MeshCoP::SteeringData::DoesAllMatch(ot::MeshCoP::SteeringData *this, unsigned __int8 a2)
{
  v4 = 1;
  for (i = 0; i < *this; ++i)
  {
    if (*(this + i + 1) != a2)
    {
      v4 = 0;
      return v4 & 1;
    }
  }

  return v4 & 1;
}

void ot::MeshCoP::ComputeJoinerId(ot::MeshCoP *this, const ot::Mac::ExtAddress *a2, ot::Mac::ExtAddress *a3)
{
  v7 = this;
  v6 = a2;
  ot::Crypto::Sha256::Sha256(v5);
  ot::Crypto::Sha256::Start(v5);
  ot::Crypto::Sha256::Update<ot::Mac::ExtAddress>(v5, v7);
  ot::Crypto::Sha256::Finish(v5, v8);
  v4 = v6;
  ot::Crypto::Sha256::Hash::GetBytes(v8);
  *v4 = *v3;
  ot::Mac::ExtAddress::SetLocal(v6, 1);
  ot::Crypto::Sha256::~Sha256(v5);
}

uint64_t ot::Crypto::Sha256::Update<ot::Mac::ExtAddress>(ot::Crypto::Sha256 *a1, uint64_t a2)
{
  return ot::Crypto::Sha256::Update(a1, a2, 8u);
}

{
  return ot::Crypto::Sha256::Update<ot::Mac::ExtAddress>(a1, a2);
}

uint64_t ot::MeshCoP::GeneratePskc(ot::MeshCoP *this, ot::MeshCoP::NetworkName *a2, const ot::MeshCoP::NetworkName *a3, const ot::MeshCoP::ExtendedPanId *a4, ot::Pskc *a5)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = 0;
  strcpy(&__n_5, "Thread");
  if (ot::IsValidUtf8String(this, a2))
  {
    __n_1 = ot::StringLength(v15, 0x100);
    ot::MeshCoP::NetworkName::GetAsCString(v14);
    __n = ot::StringLength(v5, 0x11);
    if (__n_1 >= 6u && __n_1 <= 0xFFu && __n <= 0x10u)
    {
      ot::ClearAllBytes<unsigned char [30]>(&v16);
      v16 = __n_5;
      v17 = WORD2(__n_5);
      v18 = *v13;
      ot::MeshCoP::NetworkName::GetAsCString(v14);
      memcpy(&v19, v6, __n);
      return j__otPlatCryptoPbkdf2GenerateKey(v15, __n_1, &v16, __n + 14, 0x4000u, 0x10u, v12);
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
}

void *ot::ClearAllBytes<unsigned char [30]>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  *(result + 22) = 0;
  return result;
}

{
  return ot::ClearAllBytes<unsigned char [30]>(result);
}

uint64_t ot::MeshCoP::SteeringData::BitFlag(ot::MeshCoP::SteeringData *this, unsigned __int8 a2)
{
  return (1 << (a2 % 8));
}

{
  return ot::MeshCoP::SteeringData::BitFlag(this, a2);
}

uint64_t ot::MeshCoP::SteeringData::BitIndex(ot::MeshCoP::SteeringData *this, unsigned __int8 a2)
{
  return (*this - 1 - a2 / 8);
}

{
  return ot::MeshCoP::SteeringData::BitIndex(this, a2);
}

void *ot::ClearAllBytes<ot::MeshCoP::JoinerPskd>(void *a1)
{
  return memset(a1, 0, 0x21uLL);
}

{
  return ot::ClearAllBytes<ot::MeshCoP::JoinerPskd>(a1);
}

ot::MeshCoP::Leader *ot::MeshCoP::Leader::Leader(ot::MeshCoP::Leader *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  v2 = ot::TimerMilliIn<ot::MeshCoP::Leader,&ot::MeshCoP::Leader::HandleTimer>::TimerMilliIn((this + 8), a2);
  *(this + 8) = 30000;
  Uint16 = ot::Random::NonCrypto::GetUint16(v2);
  result = this;
  *(this + 51) = Uint16;
  return result;
}

{
  ot::MeshCoP::Leader::Leader(this, a2);
  return this;
}

void ot::MeshCoP::Leader::HandleTimer(ot::MeshCoP::Leader *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsLeader(v1))
  {
    ot::MeshCoP::Leader::ResignCommissioner(this);
  }
}

ot::TimerMilli *ot::TimerMilliIn<ot::MeshCoP::Leader,&ot::MeshCoP::Leader::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::MeshCoP::Leader,&ot::MeshCoP::Leader::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::MeshCoP::Leader,&ot::MeshCoP::Leader::HandleTimer>::HandleTimer);
  return a1;
}

void ot::MeshCoP::Leader::HandleTmf<(ot::Uri)24>(uint64_t a1, ot::Tlv *a2, ot::Ip6::MessageInfo *a3)
{
  memset(__b, 0, sizeof(__b));
  v24 = -1;
  v3 = ot::UriToString<(ot::Uri)24>();
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshCoPLeader", "Received %s", v4, v5, v6, v7, v8, v9, v3);
  v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
  if (ot::Mle::Mle::IsLeader(v10))
  {
    v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(a3);
    if (ot::Mle::Mle::IsRoutingLocator(v22, PeerAddr) && !ot::Tlv::Find<ot::StringTlvInfo<(unsigned char)10,(unsigned char)64>>(a2, __b, v12, v13, v14))
    {
      if (ot::Timer::IsRunning((a1 + 8)))
      {
        if (!ot::StringMatch((a1 + 36), __b, 0))
        {
          goto LABEL_9;
        }

        ot::MeshCoP::Leader::ResignCommissioner(a1);
      }

      v15 = ot::Ip6::MessageInfo::GetPeerAddr(a3);
      Iid = ot::Ip6::Address::GetIid(v15);
      Locator = ot::Ip6::InterfaceIdentifier::GetLocator(Iid);
      v18 = *(a1 + 102) + 1;
      *(a1 + 102) = v18;
      ot::MeshCoP::Leader::CommissioningData::Init(v28, Locator, v18);
      v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
      Length = ot::MeshCoP::Leader::CommissioningData::GetLength(v28);
      if (!ot::NetworkData::Leader::SetCommissioningData(v21, v28, Length))
      {
        ot::StringCopy<(unsigned short)65>((a1 + 36), __b, 0);
        IgnoreError();
        v24 = 1;
        v20 = ot::Time::SecToMsec(0x32);
        ot::TimerMilli::Start((a1 + 8), v20);
      }
    }
  }

LABEL_9:
  ot::MeshCoP::Leader::SendPetitionResponse(a1, a2, a3, v24);
}

uint64_t ot::Tlv::Find<ot::StringTlvInfo<(unsigned char)10,(unsigned char)64>>(ot::Tlv *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  return ot::Tlv::FindStringTlv(a1, 0xA, 0x40u, a2, a5);
}

{
  return ot::Tlv::Find<ot::StringTlvInfo<(unsigned char)10,(unsigned char)64>>(a1, a2, a3, a4, a5);
}

void ot::MeshCoP::Leader::ResignCommissioner(ot::MeshCoP::Leader *this)
{
  ot::TimerMilli::Stop((this + 8));
  ot::MeshCoP::Leader::SetEmptyCommissionerData(this);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshCoPLeader", "commissioner inactive", v1, v2, v3, v4, v5, v6, this);
}

void ot::MeshCoP::Leader::CommissioningData::Init(ot::MeshCoP::Leader::CommissioningData *this, unsigned __int16 a2, unsigned __int16 a3)
{
  ot::MeshCoP::BorderAgentLocatorTlv::Init(this);
  ot::MeshCoP::BorderAgentLocatorTlv::SetBorderAgentLocator(this, a2);
  ot::MeshCoP::CommissionerSessionIdTlv::Init((this + 4));
  ot::MeshCoP::CommissionerSessionIdTlv::SetCommissionerSessionId((this + 4), a3);
  ot::MeshCoP::SteeringDataTlv::Init((this + 8));
  ot::Tlv::SetLength(this + 8, 1);
  ot::MeshCoP::SteeringDataTlv::Clear((this + 8));
}

void ot::MeshCoP::Leader::SendPetitionResponse(unsigned __int16 *a1, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, unsigned __int8 a4)
{
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  v17 = ot::Coap::CoapBase::NewPriorityResponseMessage(v4, a2);
  if (v17)
  {
    v18 = ot::Tlv::Append<ot::MeshCoP::StateTlv>(v17, a4);
    if (!v18 && (!ot::Timer::IsRunning((a1 + 4)) || (v18 = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)10,(unsigned char)64>>(v17, (a1 + 18), v5, v6, v7)) == 0) && (a4 != 1 || (v18 = ot::Tlv::Append<ot::MeshCoP::CommissionerSessionIdTlv>(v17, a1[51])) == 0))
    {
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
      v18 = ot::Coap::CoapBase::SendMessage(v8, v17, a3);
      if (!v18)
      {
        v9 = ot::UriToString<(ot::Uri)24>();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshCoPLeader", "Sent %s response", v10, v11, v12, v13, v14, v15, v9);
      }
    }
  }

  else
  {
    v18 = 3;
  }

  if (v18 && v17)
  {
    ot::Message::Free(v17);
  }

  ot::Logger::LogOnError("MeshCoPLeader", v18, "send petition response");
}

void ot::MeshCoP::Leader::HandleTmf<(ot::Uri)23>(_WORD *a1, const ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = 0;
  *v20 = 0;
  v3 = ot::UriToString<(ot::Uri)23>();
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshCoPLeader", "Received %s", v4, v5, v6, v7, v8, v9, v3);
  v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
  if (ot::Mle::Mle::IsLeader(v10) && !ot::Tlv::Find<ot::MeshCoP::StateTlv>(v23, &v21) && !ot::Tlv::Find<ot::MeshCoP::CommissionerSessionIdTlv>(v23, v20))
  {
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
    ot::NetworkData::Leader::FindInCommissioningData<ot::MeshCoP::BorderAgentLocatorTlv>(v11);
    v19 = v12;
    if (v12 && *v20 == a1[51])
    {
      if (v21 == 1)
      {
        PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v22);
        Iid = ot::Ip6::Address::GetIid(PeerAddr);
        Locator = ot::Ip6::InterfaceIdentifier::GetLocator(Iid);
        if (ot::MeshCoP::BorderAgentLocatorTlv::GetBorderAgentLocator(v19) != Locator)
        {
          ot::MeshCoP::BorderAgentLocatorTlv::SetBorderAgentLocator(v19, Locator);
          v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
          ot::NetworkData::Leader::IncrementVersion(v15);
        }

        v16 = ot::Time::SecToMsec(0x32);
        ot::TimerMilli::Start((a1 + 4), v16);
        ot::MeshCoP::Leader::SendKeepAliveResponse(a1, v23, v22, 1u);
      }

      else
      {
        ot::MeshCoP::Leader::ResignCommissioner(a1);
        ot::MeshCoP::Leader::SendKeepAliveResponse(a1, v23, v22, 0xFFu);
      }
    }

    else
    {
      ot::MeshCoP::Leader::SendKeepAliveResponse(a1, v23, v22, 0xFFu);
    }
  }
}

void ot::NetworkData::Leader::FindInCommissioningData<ot::MeshCoP::BorderAgentLocatorTlv>(ot::NetworkData::Leader *a1)
{
  ot::NetworkData::Leader::FindCommissioningDataSubTlv(a1, 9u);
  ot::As<ot::MeshCoP::BorderAgentLocatorTlv>();
}

{
  ot::NetworkData::Leader::FindInCommissioningData<ot::MeshCoP::BorderAgentLocatorTlv>(a1);
}

uint64_t ot::MeshCoP::BorderAgentLocatorTlv::GetBorderAgentLocator(ot::MeshCoP::BorderAgentLocatorTlv *this)
{
  return ot::BigEndian::HostSwap16(*(this + 1));
}

{
  return ot::MeshCoP::BorderAgentLocatorTlv::GetBorderAgentLocator(this);
}

uint64_t ot::MeshCoP::BorderAgentLocatorTlv::SetBorderAgentLocator(ot::MeshCoP::BorderAgentLocatorTlv *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::MeshCoP::BorderAgentLocatorTlv::SetBorderAgentLocator(this, a2);
}

void ot::MeshCoP::Leader::SendKeepAliveResponse(ot::InstanceLocator *a1, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, unsigned __int8 a4)
{
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  v14 = ot::Coap::CoapBase::NewPriorityResponseMessage(v4, a2);
  if (v14)
  {
    v15 = ot::Tlv::Append<ot::MeshCoP::StateTlv>(v14, a4);
    if (!v15)
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
      v15 = ot::Coap::CoapBase::SendMessage(v5, v14, a3);
      if (!v15)
      {
        v6 = ot::UriToString<(ot::Uri)23>();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshCoPLeader", "Sent %s response", v7, v8, v9, v10, v11, v12, v6);
      }
    }
  }

  else
  {
    v15 = 3;
  }

  if (v15 && v14)
  {
    ot::Message::Free(v14);
  }

  ot::Logger::LogOnError("MeshCoPLeader", v15, "send keep alive response");
}

void ot::MeshCoP::Leader::SendDatasetChanged(ot::MeshCoP::Leader *this, __n128 *a2)
{
  v17 = this;
  v16 = a2;
  v15 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v14, Instance);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v13 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v3, 0x12u);
  if (v13)
  {
    ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(v14, v16);
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
    v15 = ot::Coap::CoapBase::SendMessage(v4, v13, v14);
    if (!v15)
    {
      v5 = ot::UriToString<(ot::Uri)18>();
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshCoPLeader", "Sent %s", v6, v7, v8, v9, v10, v11, v5);
    }
  }

  else
  {
    v15 = 3;
  }

  if (v15 && v13)
  {
    ot::Message::Free(v13);
  }

  ot::Logger::LogOnError("MeshCoPLeader", v15, "send dataset changed");
}

uint64_t ot::MeshCoP::Leader::SetDelayTimerMinimal(ot::MeshCoP::Leader *this, unsigned int a2)
{
  v3 = 0;
  if (a2 && a2 < 0x7530)
  {
    *(this + 8) = a2;
  }

  else
  {
    return 7;
  }

  return v3;
}

void ot::MeshCoP::Leader::SetEmptyCommissionerData(ot::MeshCoP::Leader *this)
{
  v5 = this;
  ot::MeshCoP::CommissionerSessionIdTlv::Init(v4);
  v1 = *(this + 51) + 1;
  *(this + 51) = v1;
  ot::MeshCoP::CommissionerSessionIdTlv::SetCommissionerSessionId(v4, v1);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
  ot::NetworkData::Leader::SetCommissioningData(v2, v4, 4u);
  IgnoreError();
}

uint64_t ot::MeshCoP::CommissionerSessionIdTlv::Init(ot::MeshCoP::CommissionerSessionIdTlv *this)
{
  ot::MeshCoP::Tlv::SetType(this, 11);
  return ot::Tlv::SetLength(this, 2);
}

{
  return ot::MeshCoP::CommissionerSessionIdTlv::Init(this);
}

uint64_t ot::MeshCoP::CommissionerSessionIdTlv::SetCommissionerSessionId(ot::MeshCoP::CommissionerSessionIdTlv *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::MeshCoP::CommissionerSessionIdTlv::SetCommissionerSessionId(this, a2);
}

uint64_t ot::MeshCoP::BorderAgentLocatorTlv::Init(ot::MeshCoP::BorderAgentLocatorTlv *this)
{
  ot::MeshCoP::Tlv::SetType(this, 9);
  return ot::Tlv::SetLength(this, 2);
}

{
  return ot::MeshCoP::BorderAgentLocatorTlv::Init(this);
}

void ot::MeshCoP::SteeringDataTlv::Init(ot::MeshCoP::SteeringDataTlv *this)
{
  ot::MeshCoP::Tlv::SetType(this, 8);
  ot::Tlv::SetLength(this, 16);
  ot::MeshCoP::SteeringDataTlv::Clear(this);
}

{
  ot::MeshCoP::SteeringDataTlv::Init(this);
}

void ot::MeshCoP::SteeringDataTlv::Clear(ot::MeshCoP::SteeringDataTlv *this)
{
  SteeringDataLength = ot::MeshCoP::SteeringDataTlv::GetSteeringDataLength(this);
  bzero(this + 2, SteeringDataLength);
}

{
  ot::MeshCoP::SteeringDataTlv::Clear(this);
}

uint64_t ot::MeshCoP::SteeringDataTlv::GetSteeringDataLength(ot::MeshCoP::SteeringDataTlv *this)
{
  if (ot::Tlv::GetLength(this) > 0x10uLL)
  {
    return 16;
  }

  else
  {
    return ot::Tlv::GetLength(this);
  }
}

{
  return ot::MeshCoP::SteeringDataTlv::GetSteeringDataLength(this);
}

void ot::As<ot::MeshCoP::BorderAgentLocatorTlv>()
{
  ;
}

{
  ot::As<ot::MeshCoP::BorderAgentLocatorTlv>();
}

void ot::NetworkData::Leader::FindCommissioningDataSubTlv(ot::NetworkData::Leader *this, unsigned __int8 a2)
{
  ot::AsConst<ot::NetworkData::Leader>();
  ot::NetworkData::Leader::FindCommissioningDataSubTlv(v2, a2);
  ot::AsNonConst<ot::MeshCoP::Tlv>();
}

{
  ot::NetworkData::Leader::FindCommissioningDataSubTlv(this, a2);
}

void ot::AsConst<ot::NetworkData::Leader>()
{
  ;
}

{
  ot::AsConst<ot::NetworkData::Leader>();
}

uint64_t ot::MeshCoP::NetworkNameTlv::GetNetworkName(ot::MeshCoP::NetworkNameTlv *this)
{
  Length = ot::Tlv::GetLength(this);
  if (Length > 0x10uLL)
  {
    Length = 16;
  }

  ot::MeshCoP::NameData::NameData(&v4, this + 2, Length);
  return v4;
}

void *ot::MeshCoP::SteeringDataTlv::CopyTo(ot::MeshCoP::SteeringDataTlv *this, ot::MeshCoP::SteeringData *a2)
{
  SteeringDataLength = ot::MeshCoP::SteeringDataTlv::GetSteeringDataLength(this);
  ot::MeshCoP::SteeringData::Init(a2, SteeringDataLength);
  __dst = ot::MeshCoP::SteeringData::GetData(a2);
  v3 = ot::MeshCoP::SteeringDataTlv::GetSteeringDataLength(this);
  return memcpy(__dst, this + 2, v3);
}

BOOL ot::MeshCoP::SecurityPolicyTlv::IsValid(ot::MeshCoP::SecurityPolicyTlv *this)
{
  v3 = 0;
  if (ot::Tlv::GetLength(this) >= 2uLL)
  {
    return ot::MeshCoP::SecurityPolicyTlv::GetFlagsLength(this) >= 1;
  }

  return v3;
}

uint64_t ot::MeshCoP::SecurityPolicyTlv::GetFlagsLength(ot::MeshCoP::SecurityPolicyTlv *this)
{
  return (ot::Tlv::GetLength(this) - 2);
}

{
  return ot::MeshCoP::SecurityPolicyTlv::GetFlagsLength(this);
}

uint64_t ot::MeshCoP::SecurityPolicyTlv::GetSecurityPolicy(ot::MeshCoP::SecurityPolicyTlv *this)
{
  ot::SecurityPolicy::SecurityPolicy(&v5);
  FlagsLength = ot::MeshCoP::SecurityPolicyTlv::GetFlagsLength(this);
  v4 = ot::Min<unsigned char>(2u, FlagsLength);
  LOWORD(v5) = ot::MeshCoP::SecurityPolicyTlv::GetRotationTime(this);
  ot::SecurityPolicy::SetFlags(&v5, this + 4, v4);
  return v5;
}

ot::SecurityPolicy *ot::SecurityPolicy::SecurityPolicy(ot::SecurityPolicy *this)
{
  ot::SecurityPolicy::SecurityPolicy(this);
  return this;
}

{
  ot::SecurityPolicy::SetToDefault(this);
  return this;
}

uint64_t ot::MeshCoP::SecurityPolicyTlv::GetRotationTime(ot::MeshCoP::SecurityPolicyTlv *this)
{
  return ot::BigEndian::HostSwap16(*(this + 1));
}

{
  return ot::MeshCoP::SecurityPolicyTlv::GetRotationTime(this);
}

uint64_t ot::MeshCoP::SecurityPolicyTlv::SetRotationTime(ot::MeshCoP::SecurityPolicyTlv *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::MeshCoP::SecurityPolicyTlv::SetRotationTime(this, a2);
}

const char *ot::MeshCoP::StateTlv::StateToString(unsigned __int8 a1)
{
  if (a1 == 255)
  {
    return "Reject";
  }

  else
  {
    return ot::MeshCoP::StateTlv::StateToString(ot::MeshCoP::StateTlv::State)::kStateStrings[a1];
  }
}

uint64_t ot::MeshCoP::DelayTimerTlv::CalculateRemainingDelay(uint64_t a1, const unsigned __int8 *a2)
{
  v9 = a2;
  v8 = a1;
  v2 = ot::Tlv::ReadValueAs<ot::MeshCoP::DelayTimerTlv>(a1, a2);
  v3 = ot::Min<unsigned int>(v2, 0xF731400u);
  v7 = v3;
  Now = ot::TimerMilli::GetNow(v3);
  v6 = ot::Time::operator-(&Now, &v9);
  if (v7 > v6)
  {
    v7 -= v6;
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t ot::MeshCoP::WakeupChannelTlv::IsValid(ot::MeshCoP::WakeupChannelTlv *this)
{
  v3 = 0;
  if (ot::Tlv::GetLength(this) == 3 && *(this + 2) < 0x20uLL && ((1 << *(this + 2)) & 1) != 0 && ot::MeshCoP::WakeupChannelTlv::GetChannel(this) >= 11 && ot::MeshCoP::WakeupChannelTlv::GetChannel(this) <= 25)
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t ot::MeshCoP::WakeupChannelTlv::SetChannel(ot::MeshCoP::WakeupChannelTlv *this, unsigned __int16 a2)
{
  ot::MeshCoP::WakeupChannelTlv::SetChannelPage(this, 0);
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 3) = result;
  return result;
}

uint64_t ot::MeshCoP::WakeupChannelTlv::SetChannelPage(uint64_t this, char a2)
{
  *(this + 2) = a2;
  return this;
}

{
  return ot::MeshCoP::WakeupChannelTlv::SetChannelPage(this, a2);
}

BOOL ot::MeshCoP::ChannelMaskTlv::IsValid(ot::MeshCoP::ChannelMaskTlv *this)
{
  v3 = this;
  v2 = 0;
  return ot::MeshCoP::ChannelMaskTlv::ReadChannelMask(this, &v2) == 0;
}

uint64_t ot::MeshCoP::ChannelMaskTlv::ReadChannelMask(ot::MeshCoP::ChannelMaskTlv *this, unsigned int *a2)
{
  v8 = this;
  v7 = a2;
  ot::Clearable<ot::MeshCoP::ChannelMaskTlv::EntriesData>::Clear(v5);
  v5[0] = (this + 2);
  Length = ot::Tlv::GetLength(this);
  ot::OffsetRange::Init(&v6, 0, Length);
  return ot::MeshCoP::ChannelMaskTlv::EntriesData::Parse(v5, v7);
}

void *ot::Clearable<ot::MeshCoP::ChannelMaskTlv::EntriesData>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::MeshCoP::ChannelMaskTlv::EntriesData>(a1);
}

{
  return ot::Clearable<ot::MeshCoP::ChannelMaskTlv::EntriesData>::Clear(a1);
}

uint64_t ot::MeshCoP::ChannelMaskTlv::EntriesData::Parse(ot::Message **this, unsigned int *a2)
{
  v17 = this;
  v16 = a2;
  v15 = 6;
  *a2 = 0;
  if (!ot::OffsetRange::IsEmpty((this + 2)))
  {
    while (!ot::OffsetRange::IsEmpty((this + 2)))
    {
      if (!ot::OffsetRange::Contains((this + 2), 2u))
      {
        return v15;
      }

      if (this[1])
      {
        v10 = this[1];
        Offset = ot::OffsetRange::GetOffset((this + 2));
        ot::Message::ReadBytes(v10, Offset, v14, 2u);
        v13 = v14;
        MaskLength = ot::MeshCoP::ChannelMaskTlv::Entry::GetMaskLength(v14);
      }

      else
      {
        v9 = *this;
        v13 = (v9 + ot::OffsetRange::GetOffset((this + 2)));
        MaskLength = ot::MeshCoP::ChannelMaskTlv::Entry::GetMaskLength(v13);
      }

      v12 = MaskLength + 2;
      if (!ot::OffsetRange::Contains((this + 2), (MaskLength + 2)))
      {
        return v15;
      }

      ChannelPage = ot::MeshCoP::ChannelMaskTlv::Entry::GetChannelPage(v13);
      if (ot::Radio::SupportsChannelPage(ChannelPage))
      {
        if (ot::MeshCoP::ChannelMaskTlv::Entry::GetMaskLength(v13) != 4)
        {
          return v15;
        }

        if (this[1])
        {
          ot::Message::Read<ot::MeshCoP::ChannelMaskTlv::Entry>(this[1], (this + 2), v14);
          IgnoreError();
        }

        Mask = ot::MeshCoP::ChannelMaskTlv::Entry::GetMask(v13);
        v5 = ot::MeshCoP::ChannelMaskTlv::Entry::GetChannelPage(v13);
        v6 = ot::Radio::ChannelMaskForPage(v5);
        *v16 |= Mask & v6;
      }

      ot::OffsetRange::AdvanceOffset(this + 8, v12);
    }

    return 0;
  }

  return v15;
}

uint64_t ot::MeshCoP::ChannelMaskTlv::FindIn(ot::MeshCoP::ChannelMaskTlv *this, const ot::Message *a2, unsigned int *a3)
{
  v10 = this;
  v9 = a2;
  TlvValueOffsetRange = 0;
  ot::Clearable<ot::MeshCoP::ChannelMaskTlv::EntriesData>::Clear(v6);
  v6[1] = v10;
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(v10, 0x35, &v5, v3);
  if (!TlvValueOffsetRange)
  {
    v7 = v5;
    return ot::MeshCoP::ChannelMaskTlv::EntriesData::Parse(v6, v9);
  }

  return TlvValueOffsetRange;
}

uint64_t ot::MeshCoP::ChannelMaskTlv::Entry::GetMaskLength(ot::MeshCoP::ChannelMaskTlv::Entry *this)
{
  return *(this + 1);
}

{
  return ot::MeshCoP::ChannelMaskTlv::Entry::GetMaskLength(this);
}

uint64_t ot::MeshCoP::ChannelMaskTlv::Entry::GetChannelPage(ot::MeshCoP::ChannelMaskTlv::Entry *this)
{
  return *this;
}

{
  return ot::MeshCoP::ChannelMaskTlv::Entry::GetChannelPage(this);
}

uint64_t ot::Message::Read<ot::MeshCoP::ChannelMaskTlv::Entry>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 6u);
}

{
  return ot::Message::Read<ot::MeshCoP::ChannelMaskTlv::Entry>(a1, a2, a3);
}

uint64_t ot::MeshCoP::ChannelMaskTlv::Entry::GetMask(ot::MeshCoP::ChannelMaskTlv::Entry *this)
{
  v1 = ot::BigEndian::HostSwap32(*(this + 2));
  return ot::Reverse32(v1);
}

{
  return ot::MeshCoP::ChannelMaskTlv::Entry::GetMask(this);
}

uint64_t ot::Radio::ChannelMaskForPage(ot::Radio *this)
{
  v2 = 0;
  if (!this)
  {
    return 134215680;
  }

  return v2;
}

{
  return ot::Radio::ChannelMaskForPage(this);
}

uint64_t ot::MeshCoP::ChannelMaskTlv::PrepareValue(uint64_t result, int a2)
{
  v7 = result;
  v5 = result;
  *(result + 6) = 0;
  for (i = &ot::Radio::kSupportedChannelPages; i != "AddrResolver"; ++i)
  {
    v3 = *i;
    result = ot::Radio::ChannelMaskForPage(*i);
    v2 = result & a2;
    if ((result & a2) != 0)
    {
      ot::MeshCoP::ChannelMaskTlv::Entry::SetChannelPage(v5, v3);
      ot::MeshCoP::ChannelMaskTlv::Entry::SetMaskLength(v5, 4);
      result = ot::MeshCoP::ChannelMaskTlv::Entry::SetMask(v5, v2);
      *(v7 + 6) += 6;
      v5 = (v5 + 6);
    }
  }

  return result;
}

_BYTE *ot::MeshCoP::ChannelMaskTlv::Entry::SetChannelPage(_BYTE *this, char a2)
{
  *this = a2;
  return this;
}

{
  return ot::MeshCoP::ChannelMaskTlv::Entry::SetChannelPage(this, a2);
}

uint64_t ot::MeshCoP::ChannelMaskTlv::Entry::SetMaskLength(uint64_t this, char a2)
{
  *(this + 1) = a2;
  return this;
}

{
  return ot::MeshCoP::ChannelMaskTlv::Entry::SetMaskLength(this, a2);
}

uint64_t ot::MeshCoP::ChannelMaskTlv::Entry::SetMask(ot::MeshCoP::ChannelMaskTlv::Entry *this, unsigned int a2)
{
  v2 = ot::Reverse32(a2);
  result = ot::BigEndian::HostSwap32(v2);
  *(this + 2) = result;
  return result;
}

{
  return ot::MeshCoP::ChannelMaskTlv::Entry::SetMask(this, a2);
}

uint64_t ot::MeshCoP::ChannelMaskTlv::AppendTo(ot::MeshCoP::ChannelMaskTlv *this, ot::Message *a2)
{
  v5 = this;
  v4 = a2;
  ot::MeshCoP::ChannelMaskTlv::PrepareValue(v3, a2);
  return ot::Tlv::Append<ot::MeshCoP::ChannelMaskTlv>(v5, v3, v3[6]);
}

uint64_t ot::Tlv::Append<ot::MeshCoP::ChannelMaskTlv>(ot::Tlv *a1, void *a2, unsigned __int8 a3)
{
  return ot::Tlv::AppendTlv(a1, 0x35, a2, a3);
}

{
  return ot::Tlv::Append<ot::MeshCoP::ChannelMaskTlv>(a1, a2, a3);
}

uint64_t ot::Reverse32(ot *this)
{
  v1 = ((((((((((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0xCCCCCCCC) >> 2) | (4 * ((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0x33333333))) & 0xF0F0F0F0) >> 4) | (16 * (((((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0xCCCCCCCC) >> 2) | (4 * ((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0x33333333))) & 0xF0F0F0F))) & 0xFF00FF00) >> 8) | ((((((((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0xCCCCCCCC) >> 2) | (4 * ((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0x33333333))) & 0xF0F0F0F0) >> 4) | (16 * (((((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0xCCCCCCCC) >> 2) | (4 * ((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55))) & 0x33))) & 0xF))) << 8));
  return ((((((((((((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0xCCCCCCCC) >> 2) | (4 * ((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0x33333333))) & 0xF0F0F0F0) >> 4) | (16 * (((((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0xCCCCCCCC) >> 2) | (4 * ((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0x33333333))) & 0xF0F0F0F))) & 0xFF00FF00) >> 8) | (((((((((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0xCCCCCCCC) >> 2) | (4 * ((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0x33333333))) & 0xF0F0F0F0) >> 4) | (16 * (((((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0xCCCCCCCC) >> 2) | (4 * ((((this & 0xAAAAAAAA) >> 1) | (2 * (this & 0x55555555))) & 0x33333333))) & 0xF0F0F0F))) & 0xFF00FF) << 8)) & 0xFFFF0000) >> 16) | (v1 << 16);
}

{
  return ot::Reverse32(this);
}

void *ot::ClearAllBytes<ot::MeshCoP::ChannelMaskTlv::EntriesData>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::MeshCoP::ChannelMaskTlv::EntriesData>(result);
}

uint64_t ot::Ip6::Matter::Header::ParseFrom(ot::Ip6::Matter::Header *this, const ot::Message *a2, unsigned __int16 a3)
{
  *(this + 42) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  v7 = ot::Message::Read<unsigned char>(a2, a3, this);
  if (!v7)
  {
    v9 = a3 + 1;
    v7 = ot::Message::Read<unsigned short>(a2, v9, this + 2);
    if (!v7)
    {
      v10 = v9 + 2;
      v7 = ot::Message::Read<unsigned char>(a2, v10, this + 4);
      if (!v7)
      {
        v11 = v10 + 1;
        v7 = ot::Message::Read<unsigned int>(a2, v11, this + 8);
        if (!v7)
        {
          v12 = v11 + 4;
          if ((*this & 4) != 0)
          {
            *(this + 38) = 1;
            v7 = ot::Message::Read<unsigned long long>(a2, v12, this + 16);
            if (v7)
            {
              goto LABEL_19;
            }

            v12 += 8;
          }

          if (*this)
          {
            *(this + 39) = 1;
            v7 = ot::Message::Read<unsigned long long>(a2, v12, this + 24);
            if (v7)
            {
              goto LABEL_19;
            }

            v12 += 8;
          }

          else if ((*this & 2) != 0)
          {
            *(this + 40) = 1;
            v7 = ot::Message::Read<unsigned short>(a2, v12, this + 32);
            if (v7)
            {
              goto LABEL_19;
            }

            v12 += 2;
          }

          if (!*(this + 1) && (*(this + 4) & 3) == 0)
          {
            *(this + 41) = 1;
            v7 = ot::Message::Read<unsigned char>(a2, v12, this + 34);
            if (!v7)
            {
              v13 = v12 + 1;
              v7 = ot::Message::Read<unsigned char>(a2, v13, this + 35);
              if (!v7)
              {
                v7 = ot::Message::Read<unsigned short>(a2, v13 + 1, this + 36);
              }
            }
          }
        }
      }
    }
  }

LABEL_19:
  if (v7)
  {
    *(this + 42) = 1;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(4) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        v3 = ot::ErrorToString(v7);
        __os_log_helper_16_2_1_8_32(v16, v3);
        _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "Matter header can not be parsed (MsgType:kTypeIp6), error=%s", v16, 0xCu);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v15, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v15, 0x16u);
    }
  }

  return v7;
}

uint64_t ot::Message::Read<unsigned int>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 4u);
}

{
  return ot::Message::Read<unsigned int>(a1, a2, a3);
}

uint64_t ot::Message::Read<unsigned long long>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 8u);
}

{
  return ot::Message::Read<unsigned long long>(a1, a2, a3);
}

uint64_t ot::Ip6::Matter::Header::ParseFrom(ot::Ip6::Matter::Header *this, ot::FrameData *a2)
{
  *(this + 42) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  v6 = ot::FrameData::Read<unsigned char>(a2, this);
  if (!v6)
  {
    v6 = ot::FrameData::Read<unsigned short>(a2, this + 2);
    if (!v6)
    {
      v6 = ot::FrameData::Read<unsigned char>(a2, this + 4);
      if (!v6)
      {
        v6 = ot::FrameData::Read<unsigned int>(a2, this + 8);
        if (!v6)
        {
          if ((*this & 4) == 0 || (*(this + 38) = 1, (v6 = ot::FrameData::Read<unsigned long long>(a2, this + 16)) == 0))
          {
            if (*this)
            {
              *(this + 38) = 1;
              v6 = ot::FrameData::Read<unsigned long long>(a2, this + 24);
              if (v6)
              {
                goto LABEL_17;
              }
            }

            else if ((*this & 2) != 0)
            {
              *(this + 40) = 1;
              v6 = ot::FrameData::Read<unsigned short>(a2, this + 32);
              if (v6)
              {
                goto LABEL_17;
              }
            }

            if (!*(this + 1) && (*(this + 4) & 3) == 0)
            {
              *(this + 41) = 1;
              v6 = ot::FrameData::Read<unsigned char>(a2, this + 34);
              if (!v6)
              {
                v6 = ot::FrameData::Read<unsigned char>(a2, this + 35);
                if (!v6)
                {
                  v6 = ot::FrameData::Read<unsigned short>(a2, this + 36);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_17:
  if (v6)
  {
    *(this + 42) = 1;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(4) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        v2 = ot::ErrorToString(v6);
        __os_log_helper_16_2_1_8_32(v9, v2);
        _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "Matter header can not be parsed (MsgType:kType6lowpan), error=%s", v9, 0xCu);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v8, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v8, 0x16u);
    }
  }

  return v6;
}

uint64_t ot::FrameData::Read<unsigned int>(ot::FrameData *a1, void *a2)
{
  return ot::FrameData::ReadBytes(a1, a2, 4u);
}

{
  return ot::FrameData::Read<unsigned int>(a1, a2);
}

uint64_t ot::FrameData::Read<unsigned long long>(ot::FrameData *a1, void *a2)
{
  return ot::FrameData::ReadBytes(a1, a2, 8u);
}

{
  return ot::FrameData::Read<unsigned long long>(a1, a2);
}

const char *ot::Ip6::Matter::Header::GetProtocolOpcodeAsString(ot::Ip6::Matter::Header *this)
{
  switch(*(this + 35))
  {
    case 0:
      v2 = ", MsgCounterSyncReq";
      break;
    case 1:
      v2 = ", MsgCounterSyncRsp";
      break;
    case 0x10:
      v2 = ", MRP StandaloneAck";
      break;
    case 0x20:
      v2 = ", PBKDFParamRequest";
      break;
    case 0x21:
      v2 = ", PBKDFParamResponse";
      break;
    case 0x22:
      v2 = ", PASE Pake1";
      break;
    case 0x23:
      v2 = ", PASE Pake2";
      break;
    case 0x24:
      v2 = ", PASE Pake3";
      break;
    case 0x30:
      v2 = ", CASE Sigma1";
      break;
    case 0x31:
      v2 = ", CASE Sigma2";
      break;
    case 0x32:
      v2 = ", CASE Sigma3";
      break;
    case 0x33:
      v2 = ", CASE Sigma2_Resume";
      break;
    case 0x40:
      v2 = ", StatusReport";
      break;
    case 0x50:
      v2 = ", ICD Check-In Msg";
      break;
    default:
      v2 = ", Unknown Protocol Opcode";
      break;
  }

  return v2;
}

ot::PanIdQueryClient *ot::PanIdQueryClient::PanIdQueryClient(ot::PanIdQueryClient *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this);
  return this;
}

{
  ot::PanIdQueryClient::PanIdQueryClient(this, a2);
  return this;
}

uint64_t ot::PanIdQueryClient::SendQuery(ot::PanIdQueryClient *this, unsigned __int16 a2, unsigned int a3, const ot::Ip6::Address *a4, void (*a5)(unsigned __int16, unsigned int, void *), uint64_t a6)
{
  v29 = this;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  inited = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v22, Instance);
  v21 = 0;
  v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(this);
  if (ot::MeshCoP::Commissioner::IsActive(v7))
  {
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
    v21 = ot::Coap::CoapBase::NewPriorityMessage(v8);
    if (v21)
    {
      inited = ot::Coap::Message::InitAsPost(v21, v26, 0x1Bu);
      if (!inited)
      {
        inited = ot::Coap::Message::SetPayloadMarker(v21);
        if (!inited)
        {
          v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(this);
          SessionId = ot::MeshCoP::Commissioner::GetSessionId(v9);
          inited = ot::Tlv::Append<ot::MeshCoP::CommissionerSessionIdTlv>(v21, SessionId);
          if (!inited)
          {
            inited = ot::MeshCoP::ChannelMaskTlv::AppendTo(v21, v27);
            if (!inited)
            {
              inited = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(v21, v28);
              if (!inited)
              {
                ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(v22, v26);
                v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
                inited = ot::Coap::CoapBase::SendMessage(v11, v21, v22);
                if (!inited)
                {
                  v12 = ot::UriToString<(ot::Uri)27>();
                  ot::Logger::LogAtLevel<(ot::LogLevel)4>("PanIdQueryClnt", "Sent %s", v13, v14, v15, v16, v17, v18, v12);
                  ot::CallbackBase<void (*)(unsigned short,unsigned int,void *)>::Set(this, v25, v24);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      inited = 3;
    }
  }

  else
  {
    inited = 13;
  }

  if (inited && v21)
  {
    ot::Message::Free(v21);
  }

  return inited;
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 1, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(a1, a2);
}

void *ot::CallbackBase<void (*)(unsigned short,unsigned int,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(unsigned short,unsigned int,void *)>::Set(result, a2, a3);
}

void ot::PanIdQueryClient::HandleTmf<(ot::Uri)25>(ot::InstanceLocator *a1, ot::MeshCoP::ChannelMaskTlv *a2, ot::Ip6::MessageInfo *a3)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = 0;
  v20 = 0;
  if (ot::Coap::Message::IsConfirmablePostRequest(a2))
  {
    v3 = ot::UriToString<(ot::Uri)25>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("PanIdQueryClnt", "Received %s", v4, v5, v6, v7, v8, v9, v3);
    if (!ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(v23, &v21) && !ot::MeshCoP::ChannelMaskTlv::FindIn(v23, &v20, v10))
    {
      ot::Callback<void (*)(unsigned short,unsigned int,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<unsigned short &,unsigned int &>(a1, &v21, &v20);
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
      if (!ot::Coap::CoapBase::SendEmptyAck(v11, v23, v22))
      {
        v12 = ot::UriToString<(ot::Uri)25>();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("PanIdQueryClnt", "Sent %s response", v13, v14, v15, v16, v17, v18, v12);
      }
    }
  }
}

void *ot::Callback<void (*)(unsigned short,unsigned int,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<unsigned short &,unsigned int &>(void *result, unsigned __int16 *a2, unsigned int *a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(unsigned short,unsigned int,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned short &,unsigned int &>(result, a2, a3);
  }

  return result;
}

{
  return ot::Callback<void (*)(unsigned short,unsigned int,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<unsigned short &,unsigned int &>(result, a2, a3);
}

uint64_t ot::Callback<void (*)(unsigned short,unsigned int,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned short &,unsigned int &>(uint64_t a1, unsigned __int16 *a2, unsigned int *a3)
{
  return (*a1)(*a2, *a3, *(a1 + 8));
}

{
  return ot::Callback<void (*)(unsigned short,unsigned int,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned short &,unsigned int &>(a1, a2, a3);
}

BOOL ot::MeshCoP::Timestamp::ConvertTo(ot::MeshCoP::Timestamp *a1, uint64_t a2)
{
  *a2 = ot::MeshCoP::Timestamp::GetSeconds(a1);
  *(a2 + 8) = ot::MeshCoP::Timestamp::GetTicks(a1);
  result = ot::MeshCoP::Timestamp::GetAuthoritative(a1);
  *(a2 + 10) = result;
  return result;
}

uint64_t ot::MeshCoP::Timestamp::GetTicks(ot::MeshCoP::Timestamp *this)
{
  return (ot::MeshCoP::Timestamp::GetTicksAndAuthFlag(this) >> 1);
}

{
  return ot::MeshCoP::Timestamp::GetTicks(this);
}

BOOL ot::MeshCoP::Timestamp::GetAuthoritative(ot::MeshCoP::Timestamp *this)
{
  return (ot::MeshCoP::Timestamp::GetTicksAndAuthFlag(this) & 1) != 0;
}

{
  return ot::MeshCoP::Timestamp::GetAuthoritative(this);
}

uint64_t ot::MeshCoP::Timestamp::SetFrom(ot::MeshCoP::Timestamp *a1, uint64_t a2)
{
  ot::MeshCoP::Timestamp::SetSeconds(a1, *a2);
  ot::MeshCoP::Timestamp::SetTicks(a1, *(a2 + 8));
  return ot::MeshCoP::Timestamp::SetAuthoritative(a1, *(a2 + 10) & 1);
}

uint64_t ot::MeshCoP::Timestamp::SetSeconds(ot::MeshCoP::Timestamp *this, uint64_t a2)
{
  v4 = a2;
  *this = ot::BigEndian::HostSwap16(WORD2(a2));
  result = ot::BigEndian::HostSwap32(v4);
  *(this + 2) = result;
  return result;
}

uint64_t ot::MeshCoP::Timestamp::SetToInvalid(uint64_t this)
{
  *this = -1;
  *(this + 2) = -1;
  *(this + 6) = -1;
  return this;
}

BOOL ot::MeshCoP::Timestamp::IsValid(ot::MeshCoP::Timestamp *this)
{
  v2 = 1;
  if (*this == 0xFFFF)
  {
    v2 = 1;
    if (*(this + 2) == -1)
    {
      return *(this + 3) != 0xFFFF;
    }
  }

  return v2;
}

uint64_t ot::MeshCoP::Timestamp::SetToOrphanAnnounce(ot::MeshCoP::Timestamp *this)
{
  *this = 0;
  *(this + 2) = 0;
  return ot::MeshCoP::Timestamp::SetTicksAndAuthFlag(this, 1u);
}

uint64_t ot::MeshCoP::Timestamp::SetTicksAndAuthFlag(ot::MeshCoP::Timestamp *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 3) = result;
  return result;
}

{
  return ot::MeshCoP::Timestamp::SetTicksAndAuthFlag(this, a2);
}

BOOL ot::MeshCoP::Timestamp::IsOrphanAnnounce(ot::MeshCoP::Timestamp *this)
{
  v2 = 0;
  if (!*this)
  {
    v2 = 0;
    if (!*(this + 2))
    {
      return ot::MeshCoP::Timestamp::GetTicksAndAuthFlag(this) == 1;
    }
  }

  return v2;
}

uint64_t ot::MeshCoP::Timestamp::GetTicksAndAuthFlag(ot::MeshCoP::Timestamp *this)
{
  return ot::BigEndian::HostSwap16(*(this + 3));
}

{
  return ot::MeshCoP::Timestamp::GetTicksAndAuthFlag(this);
}

uint64_t ot::MeshCoP::Timestamp::Compare(ot::MeshCoP::Timestamp *this, const ot::MeshCoP::Timestamp *a2, const ot::MeshCoP::Timestamp *a3)
{
  IsValid = ot::MeshCoP::Timestamp::IsValid(this);
  v3 = ot::MeshCoP::Timestamp::IsValid(a2);
  v12 = ot::ThreeWayCompare<BOOL>(IsValid, v3);
  if (!v12)
  {
    Seconds = ot::MeshCoP::Timestamp::GetSeconds(this);
    v4 = ot::MeshCoP::Timestamp::GetSeconds(a2);
    v12 = ot::ThreeWayCompare<unsigned long long>(Seconds, v4);
    if (!v12)
    {
      Ticks = ot::MeshCoP::Timestamp::GetTicks(this);
      v5 = ot::MeshCoP::Timestamp::GetTicks(a2);
      v12 = ot::ThreeWayCompare<unsigned short>(Ticks, v5);
      if (!v12)
      {
        Authoritative = ot::MeshCoP::Timestamp::GetAuthoritative(this);
        v6 = ot::MeshCoP::Timestamp::GetAuthoritative(a2);
        return ot::ThreeWayCompare<BOOL>(Authoritative, v6);
      }
    }
  }

  return v12;
}

uint64_t ot::ThreeWayCompare<BOOL>(char a1, char a2)
{
  if ((a1 & 1) == (a2 & 1))
  {
    return 0;
  }

  else if (a1)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

{
  return ot::ThreeWayCompare<BOOL>(a1, a2);
}

uint64_t ot::ThreeWayCompare<unsigned long long>(unint64_t a1, unint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  else if (a1 > a2)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

{
  return ot::ThreeWayCompare<unsigned long long>(a1, a2);
}

uint64_t ot::MeshCoP::Timestamp::AdvanceRandomTicks(ot::MeshCoP::Timestamp *this)
{
  Ticks = ot::MeshCoP::Timestamp::GetTicks(this);
  v5 = Ticks + ot::Random::NonCrypto::GetUint32InRange(1, 0x8000u);
  if (v5 >= 0x8000u)
  {
    v5 += 0x8000;
    Seconds = ot::MeshCoP::Timestamp::GetSeconds(this);
    ot::MeshCoP::Timestamp::SetSeconds(this, Seconds + 1);
  }

  return ot::MeshCoP::Timestamp::SetTicks(this, v5);
}

unsigned __int16 *ot::Checksum::AddUint8(unsigned __int16 *this, unsigned __int8 a2)
{
  if (this[1])
  {
    v2 = a2;
  }

  else
  {
    v2 = a2 << 8;
  }

  v3 = *this + v2;
  if (v3 < *this)
  {
    ++v3;
  }

  *this = v3;
  *(this + 2) = (*(this + 2) ^ 1) & 1;
  return this;
}

unsigned __int16 *ot::Checksum::AddUint16(ot::Checksum *this, __int16 a2)
{
  v4 = a2;
  ot::Checksum::AddUint8(this, HIBYTE(a2));
  return ot::Checksum::AddUint8(this, v4);
}

unsigned __int16 *ot::Checksum::AddData(unsigned __int16 *this, const unsigned __int8 *a2, unsigned __int16 a3)
{
  v3 = this;
  for (i = 0; i < a3; ++i)
  {
    this = ot::Checksum::AddUint8(v3, a2[i]);
  }

  return this;
}

uint64_t ot::Checksum::WriteToMessage(ot::Checksum *this, unsigned __int16 a2, ot::Message *a3)
{
  v6 = this;
  v5 = a2;
  *&v4[2] = a3;
  *v4 = ot::Checksum::GetValue(this);
  if (*v4 != 0xFFFF)
  {
    *v4 = ~*v4;
  }

  *v4 = ot::BigEndian::HostSwap16(*v4);
  return ot::Message::Write<unsigned short>(*&v4[2], v5, v4);
}

uint64_t ot::Checksum::GetValue(ot::Checksum *this)
{
  return *this;
}

{
  return ot::Checksum::GetValue(this);
}

uint64_t ot::Message::Write<unsigned short>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::WriteBytes(a1, a2, a3, 2u);
}

{
  return ot::Message::Write<unsigned short>(a1, a2, a3);
}

uint64_t ot::Checksum::Calculate(ot::Checksum *this, const ot::Ip6::Address *a2, const ot::Ip6::Address *a3, unsigned __int8 a4, const ot::Message *a5)
{
  v20 = this;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  Length = ot::Message::GetLength(a5);
  v14 = Length - ot::Message::GetOffset(v16);
  ot::Ip6::Address::GetBytes(v19);
  ot::Checksum::AddData(this, v5, 0x10u);
  ot::Ip6::Address::GetBytes(v18);
  ot::Checksum::AddData(this, v6, 0x10u);
  ot::Checksum::AddUint16(this, v14);
  ot::Checksum::AddUint16(this, v17);
  v13 = v16;
  Offset = ot::Message::GetOffset(v16);
  ot::Message::GetFirstChunk(v13, Offset, &v14, v15);
  while (1)
  {
    result = ot::Data<(ot::DataLengthType)1>::GetLength(v15);
    if (result <= 0)
    {
      break;
    }

    Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(v15);
    v9 = ot::Data<(ot::DataLengthType)1>::GetLength(v15);
    ot::Checksum::AddData(this, Bytes, v9);
    ot::Message::GetNextChunk(v16, &v14, v15);
  }

  return result;
}

uint64_t ot::Checksum::Calculate(ot::Checksum *this, const ot::Ip4::Address *a2, const ot::Ip4::Address *a3, unsigned __int8 a4, const ot::Message *a5)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  Length = ot::Message::GetLength(a5);
  v13 = Length - ot::Message::GetOffset(v15);
  if (v16 != 1)
  {
    ot::Ip4::Address::GetBytes(v18);
    ot::Checksum::AddData(this, v5, 4u);
    ot::Ip4::Address::GetBytes(v17);
    ot::Checksum::AddData(this, v6, 4u);
    ot::Checksum::AddUint16(this, v16);
    ot::Checksum::AddUint16(this, v13);
  }

  Offset = ot::Message::GetOffset(v15);
  ot::Message::GetFirstChunk(v15, Offset, &v13, v14);
  while (1)
  {
    result = ot::Data<(ot::DataLengthType)1>::GetLength(v14);
    if (result <= 0)
    {
      break;
    }

    Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(v14);
    v9 = ot::Data<(ot::DataLengthType)1>::GetLength(v14);
    ot::Checksum::AddData(this, Bytes, v9);
    ot::Message::GetNextChunk(v15, &v13, v14);
  }

  return result;
}

void ot::Ip4::Address::GetBytes(ot::Ip4::Address *this)
{
  ;
}

{
  ot::Ip4::Address::GetBytes(this);
}

uint64_t ot::Checksum::VerifyMessageChecksum(ot::Checksum *this, const ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v22 = this;
  v21 = a2;
  v20 = a3;
  v19 = 0;
  ot::Checksum::Checksum(v18);
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v21);
  SockAddr = ot::Ip6::MessageInfo::GetSockAddr(v21);
  ot::Checksum::Calculate(v18, PeerAddr, SockAddr, v20, v22);
  if (ot::Checksum::GetValue(v18) != 0xFFFF)
  {
    v9 = ot::Ip6::Ip6::IpProtoToString(v20, v4, v5, v6, v7, v8);
    ot::Logger::LogAtLevel<(ot::LogLevel)3>("Ip6", "Bad %s checksum", v10, v11, v12, v13, v14, v15, v9);
    return 2;
  }

  return v19;
}

ot::Checksum *ot::Checksum::UpdateMessageChecksum(ot::Checksum *this, ot::Message *a2, const ot::Ip6::Address *a3, const ot::Ip6::Address *a4)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = 0;
  result = ot::Checksum::Checksum(v9);
  switch(v11)
  {
    case 6u:
      v10 = 16;
LABEL_8:
      v7 = v14;
      Offset = ot::Message::GetOffset(v14);
      v8 = 0;
      ot::Message::Write<unsigned short>(v7, Offset + v10, &v8);
      ot::Checksum::Calculate(v9, v13, v12, v11, v14);
      v6 = ot::Message::GetOffset(v14);
      return ot::Checksum::WriteToMessage(v9, v6 + v10, v14);
    case 0x11u:
      v10 = 6;
      goto LABEL_8;
    case 0x3Au:
      v10 = 2;
      goto LABEL_8;
  }

  return result;
}

ot::Checksum *ot::Checksum::UpdateMessageChecksum(ot::Checksum *this, ot::Message *a2, const ot::Ip4::Address *a3, const ot::Ip4::Address *a4)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = 0;
  result = ot::Checksum::Checksum(v9);
  switch(v11)
  {
    case 1u:
      v10 = 2;
      goto LABEL_8;
    case 6u:
      v10 = 16;
LABEL_8:
      v7 = v14;
      Offset = ot::Message::GetOffset(v14);
      v8 = 0;
      ot::Message::Write<unsigned short>(v7, Offset + v10, &v8);
      ot::Checksum::Calculate(v9, v13, v12, v11, v14);
      v6 = ot::Message::GetOffset(v14);
      return ot::Checksum::WriteToMessage(v9, v6 + v10, v14);
    case 0x11u:
      v10 = 6;
      goto LABEL_8;
  }

  return result;
}

uint64_t ot::Checksum::UpdateIp4HeaderChecksum(ot::Checksum *this, ot::Ip4::Header *a2)
{
  v6 = this;
  ot::Checksum::Checksum(v5);
  ot::Ip4::Header::SetChecksum(v6, 0);
  ot::Checksum::AddData(v5, v6, 0x14u);
  v4 = v6;
  Value = ot::Checksum::GetValue(v5);
  return ot::Ip4::Header::SetChecksum(v4, ~Value);
}

uint64_t ot::Ip4::Header::SetChecksum(ot::Ip4::Header *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 5) = result;
  return result;
}

{
  return ot::Ip4::Header::SetChecksum(this, a2);
}

uint64_t ot::Checksum::Checksum(uint64_t this)
{
  *this = 0;
  *(this + 2) = 0;
  return this;
}

ot::Dhcp6::Client *ot::Dhcp6::Client::Client(ot::Dhcp6::Client *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Ip6::Udp::SocketIn<ot::Dhcp6::Client,&ot::Dhcp6::Client::HandleUdpReceive>::SocketIn((this + 8), a2, this);
  ot::TrickleTimer::TrickleTimer((this + 80), a2, ot::Dhcp6::Client::HandleTrickleTimer);
  ot::Time::Time((this + 148), 0);
  *(this + 43) = 0;
  ot::ClearAllBytes<ot::Dhcp6::Client::IdentityAssociation [4]>(this + 152);
  return this;
}

{
  ot::Dhcp6::Client::Client(this, a2);
  return this;
}

void ot::Dhcp6::Client::HandleUdpReceive(ot::Dhcp6::Client *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  Offset = ot::Message::GetOffset(a2);
  if (!ot::Message::Read<ot::Dhcp6::Header>(a2, Offset, v7))
  {
    ot::Message::MoveOffset(v9, 4);
    if (ot::Dhcp6::Header::GetType(v7) == 7)
    {
      TransactionId = ot::Dhcp6::Header::GetTransactionId(v7);
      if (ot::Equatable<ot::Dhcp6::TransactionId>::operator==(TransactionId, this + 144))
      {
        ot::Dhcp6::Client::ProcessReply(this, v9);
      }
    }
  }
}

ot::InstanceLocator *ot::Ip6::Udp::SocketIn<ot::Dhcp6::Client,&ot::Dhcp6::Client::HandleUdpReceive>::SocketIn(ot::InstanceLocator *a1, ot::Instance *a2, uint64_t a3)
{
  ot::Ip6::Udp::SocketIn<ot::Dhcp6::Client,&ot::Dhcp6::Client::HandleUdpReceive>::SocketIn(a1, a2, a3);
  return a1;
}

{
  ot::Ip6::Udp::Socket::Socket(a1, a2, ot::Ip6::Udp::SocketIn<ot::Dhcp6::Client,&ot::Dhcp6::Client::HandleUdpReceive>::HandleUdpReceive, a3);
  return a1;
}

void *ot::ClearAllBytes<ot::Dhcp6::Client::IdentityAssociation [4]>(void *a1)
{
  return memset(a1, 0, 0xC0uLL);
}

{
  return ot::ClearAllBytes<ot::Dhcp6::Client::IdentityAssociation [4]>(a1);
}

BOOL ot::Ip6::Netif::UnicastAddress::HasPrefix(ot::Ip6::Netif::UnicastAddress *this, const ot::Ip6::Prefix *a2)
{
  v5 = *(this + 16);
  v6 = 0;
  if (v5 == ot::Ip6::Prefix::GetLength(a2))
  {
    Address = ot::Ip6::Netif::UnicastAddress::GetAddress(this);
    return ot::Ip6::Address::MatchesPrefix(Address, a2);
  }

  return v6;
}

{
  return ot::Ip6::Netif::UnicastAddress::HasPrefix(this, a2);
}

void ot::Dhcp6::Client::UpdateAddresses(ot::Dhcp6::Client *this)
{
  v27 = this;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v19 = (this + 152);
  v18 = (this + 344);
  while (v19 != v18)
  {
    if (*(v19 + 42) && *(v19 + 9))
    {
      v26 = 0;
      v24 = 0;
      while (1)
      {
        v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
        if (ot::NetworkData::NetworkData::GetNextOnMeshPrefix(v1, &v24, &v20))
        {
          break;
        }

        if ((v22 & 0x10) != 0)
        {
          Prefix = ot::NetworkData::OnMeshPrefixConfig::GetPrefix(&v20);
          if (ot::Dhcp6::Client::MatchNetifAddressWithPrefix(v19, Prefix, v3))
          {
            v26 = 1;
            break;
          }
        }
      }

      if ((v26 & 1) == 0)
      {
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
        ot::Ip6::Netif::RemoveUnicastAddress(v4, v19);
        *(v19 + 42) = 0;
      }
    }

    v19 = (v19 + 48);
  }

  v24 = 0;
  while (1)
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    if (ot::NetworkData::NetworkData::GetNextOnMeshPrefix(v5, &v24, &v20))
    {
      break;
    }

    v17 = 0;
    if ((v22 & 0x10) != 0)
    {
      v25 = 1;
      v26 = 0;
      for (i = (this + 152); i != (this + 344); i = (i + 48))
      {
        if (*(i + 42))
        {
          v12 = ot::NetworkData::OnMeshPrefixConfig::GetPrefix(&v20);
          if (ot::Dhcp6::Client::MatchNetifAddressWithPrefix(i, v12, v13))
          {
            v26 = 1;
            v17 = i;
            break;
          }
        }

        else if (!v17)
        {
          v17 = i;
        }
      }

      if (v26)
      {
LABEL_31:
        *(v17 + 20) = v23;
      }

      else
      {
        if (v17)
        {
          *v17 = v20;
          *(v17 + 16) = v21;
          *(v17 + 42) = 1;
          *(v17 + 9) = 0;
          goto LABEL_31;
        }

        ot::Logger::LogAtLevel<(ot::LogLevel)2>("Dhcp6Client", "Insufficient memory for new DHCP prefix", v6, v7, v8, v9, v10, v11, v14);
      }
    }
  }

  if (v25)
  {
    ot::Dhcp6::Client::Start(this);
  }

  else
  {
    ot::Dhcp6::Client::Stop(this);
  }
}

uint64_t ot::Dhcp6::Client::Start(ot::Dhcp6::Client *this)
{
  result = ot::Ip6::Udp::SocketHandle::IsBound((this + 8));
  if ((result & 1) == 0)
  {
    ot::Ip6::Udp::Socket::Open((this + 8));
    IgnoreError();
    ot::Ip6::Udp::Socket::Bind((this + 8), 546, 1);
    IgnoreError();
    return ot::Dhcp6::Client::ProcessNextIdentityAssociation(this);
  }

  return result;
}

void ot::Dhcp6::Client::Stop(ot::Dhcp6::Client *this)
{
  ot::TrickleTimer::Stop((this + 80));
  ot::Ip6::Udp::Socket::Close((this + 8));
  IgnoreError();
}

uint64_t ot::Dhcp6::Client::ProcessNextIdentityAssociation(ot::Dhcp6::Client *this)
{
  v6 = 0;
  if (!*(this + 43) || *(*(this + 43) + 42) != 2)
  {
    ot::TrickleTimer::Stop((this + 80));
    for (i = this + 152; i != this + 344; i += 48)
    {
      if (i[42] == 1)
      {
        ot::Dhcp6::TransactionId::GenerateRandom((this + 144));
        IgnoreError();
        *(this + 43) = i;
        v3 = ot::Time::SecToMsec(1);
        v1 = ot::Time::SecToMsec(0x78);
        ot::TrickleTimer::Start(this + 80, 0, v3, v1, 0xFFFF);
        ot::TrickleTimer::IndicateInconsistent(this + 80);
        v6 = 1;
        return v6 & 1;
      }
    }
  }

  return v6 & 1;
}

uint64_t ot::TrickleTimer::Stop(ot::TrickleTimer *this)
{
  return ot::TimerMilli::Stop(this);
}

{
  return ot::TrickleTimer::Stop(this);
}

uint64_t ot::Dhcp6::TransactionId::GenerateRandom(ot::Dhcp6::TransactionId *this)
{
  return ot::Random::Crypto::Fill<ot::Dhcp6::TransactionId>(this);
}

{
  return ot::Dhcp6::TransactionId::GenerateRandom(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Dhcp6::Client>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Dhcp6::Client>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Dhcp6::Client>(a1);
}

void ot::Dhcp6::Client::HandleTrickleTimer(ot::Dhcp6::Client *this)
{
  IsBound = ot::Ip6::Udp::SocketHandle::IsBound((this + 8));
  if (!IsBound)
  {
    __assert_rtn("HandleTrickleTimer", "dhcp6_client.cpp", 225, "mSocket.IsBound()");
  }

  if (!*(this + 43))
  {
    ot::TrickleTimer::Stop((this + 80));
    return;
  }

  v2 = *(*(this + 43) + 42);
  switch(v2)
  {
    case 1:
      *(this + 37) = ot::TimerMilli::GetNow(IsBound);
      *(*(this + 43) + 42) = 2;
      goto LABEL_10;
    case 2:
LABEL_10:
      ot::Dhcp6::Client::Solicit(this, *(*(this + 43) + 40));
      return;
    case 3:
      *(this + 43) = 0;
      if ((ot::Dhcp6::Client::ProcessNextIdentityAssociation(this) & 1) == 0)
      {
        ot::Dhcp6::Client::Stop(this);
        ot::TrickleTimer::Stop((this + 80));
      }

      break;
  }
}

void ot::Dhcp6::Client::Solicit(ot::Dhcp6::Client *this, unsigned __int16 a2)
{
  v20 = this;
  v19 = a2;
  appended = 0;
  v17 = 0;
  ot::Ip6::MessageInfo::MessageInfo(v15);
  v17 = ot::Ip6::Udp::Socket::NewMessage((this + 8));
  if (v17)
  {
    appended = ot::Dhcp6::Client::AppendHeader(this, v17);
    if (!appended)
    {
      appended = ot::Dhcp6::Client::AppendElapsedTime(this, v17);
      if (!appended)
      {
        appended = ot::Dhcp6::Client::AppendClientIdentifier(this, v17);
        if (!appended)
        {
          appended = ot::Dhcp6::Client::AppendIaNa(this, v17, v19);
          if (!appended)
          {
            appended = ot::Dhcp6::Client::AppendIaAddress(this, v17, v19);
            if (!appended)
            {
              appended = ot::Dhcp6::Client::AppendRapidCommit(this, v17);
              if (!appended)
              {
                PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v15);
                v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
                MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v2);
                ot::Ip6::Address::SetToRoutingLocator(PeerAddr, MeshLocalPrefix, v19);
                v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
                MeshLocalRloc = ot::Mle::Mle::GetMeshLocalRloc(v4);
                ot::Ip6::MessageInfo::SetSockAddr(v15, MeshLocalRloc);
                v16 = 547;
                appended = ot::Ip6::Udp::Socket::SendTo((this + 8), v17, v15);
                if (!appended)
                {
                  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Dhcp6Client", "solicit", v6, v7, v8, v9, v10, v11, v12);
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    appended = 3;
  }

  if (appended)
  {
    if (v17)
    {
      ot::Message::Free(v17);
    }

    ot::Logger::LogOnError("Dhcp6Client", appended, "send DHCPv6 Solicit");
  }
}

uint64_t ot::Dhcp6::Client::AppendHeader(ot::Dhcp6::Client *this, ot::Message *a2)
{
  v6 = this;
  v5 = a2;
  ot::Clearable<ot::Dhcp6::Header>::Clear(&v4);
  ot::Dhcp6::Header::SetType(&v4, 1);
  ot::Dhcp6::Header::SetTransactionId(&v4, this + 144);
  return ot::Message::Append<ot::Dhcp6::Header>(v5, &v4);
}

uint64_t ot::Dhcp6::Client::AppendElapsedTime(ot::Dhcp6::Client *this, ot::Message *a2)
{
  v10 = this;
  v9 = a2;
  v2 = ot::Dhcp6::ElapsedTime::Init(v8);
  Now = ot::TimerMilli::GetNow(v2);
  v3 = ot::Time::operator-(&Now, this + 37);
  v4 = ot::Time::MsecToSec(v3);
  ot::Dhcp6::ElapsedTime::SetElapsedTime(v8, v4);
  return ot::Message::Append<ot::Dhcp6::ElapsedTime>(v9, v8);
}

uint64_t ot::Dhcp6::Client::AppendClientIdentifier(ot::Dhcp6::Client *this, ot::Message *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::GetIeeeEui64(v2, v5);
  ot::Dhcp6::ClientIdentifier::Init(v6);
  ot::Dhcp6::ClientIdentifier::SetDuidType(v6, 3u);
  ot::Dhcp6::ClientIdentifier::SetDuidHardwareType(v6, 0x1Bu);
  ot::Dhcp6::ClientIdentifier::SetDuidLinkLayerAddress(v6, v5);
  return ot::Message::Append<ot::Dhcp6::ClientIdentifier>(a2, v6);
}

uint64_t ot::Dhcp6::Client::AppendIaNa(ot::Dhcp6::Client *this, ot::Message *a2, unsigned __int16 a3)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (*(this + 43))
  {
    for (i = this + 152; i != this + 344; i += 48)
    {
      if (i[42] && i[42] != 3 && *(i + 20) == v9)
      {
        ++v7;
      }
    }

    v6 = 28 * v7 + 12;
    ot::Dhcp6::IaNa::Init(v5);
    ot::Dhcp6::Option::SetLength(v5, v6);
    ot::Dhcp6::IaNa::SetIaid(v5, 0);
    ot::Dhcp6::IaNa::SetT1(v5, 0);
    ot::Dhcp6::IaNa::SetT2(v5, 0);
    return ot::Message::Append<ot::Dhcp6::IaNa>(v10, v5);
  }

  else
  {
    return 2;
  }
}

uint64_t ot::Dhcp6::Client::AppendIaAddress(ot::Dhcp6::Client *this, ot::Message *a2, unsigned __int16 a3)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  if (*(this + 43))
  {
    ot::Dhcp6::IaAddress::Init(v7);
    for (i = (this + 152); i != (this + 344); i = (i + 48))
    {
      if ((*(i + 42) == 1 || *(i + 42) == 2) && *(i + 20) == v9)
      {
        Address = ot::Ip6::Netif::UnicastAddress::GetAddress(i);
        ot::Dhcp6::IaAddress::SetAddress(v7, Address);
        ot::Dhcp6::IaAddress::SetPreferredLifetime(v7, 0);
        ot::Dhcp6::IaAddress::SetValidLifetime(v7, 0);
        v8 = ot::Message::Append<ot::Dhcp6::IaAddress>(v10, v7);
        if (v8)
        {
          break;
        }
      }
    }
  }

  else
  {
    return 2;
  }

  return v8;
}

uint64_t ot::Dhcp6::Client::AppendRapidCommit(ot::Dhcp6::Client *this, ot::Message *a2)
{
  v5 = this;
  v4 = a2;
  ot::Dhcp6::RapidCommit::Init(v3);
  return ot::Message::Append<ot::Dhcp6::RapidCommit>(v4, v3);
}

_DWORD *ot::Clearable<ot::Dhcp6::Header>::Clear(_DWORD *a1)
{
  return ot::ClearAllBytes<ot::Dhcp6::Header>(a1);
}

{
  return ot::Clearable<ot::Dhcp6::Header>::Clear(a1);
}

_BYTE *ot::Dhcp6::Header::SetType(_BYTE *result, char a2)
{
  *result = a2;
  return result;
}

{
  return ot::Dhcp6::Header::SetType(result, a2);
}

uint64_t ot::Dhcp6::Header::SetTransactionId(uint64_t result, uint64_t a2)
{
  *(result + 1) = *a2;
  *(result + 3) = *(a2 + 2);
  return result;
}

{
  return ot::Dhcp6::Header::SetTransactionId(result, a2);
}

uint64_t ot::Message::Append<ot::Dhcp6::Header>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 4u);
}

{
  return ot::Message::Append<ot::Dhcp6::Header>(a1, a2);
}

uint64_t ot::Dhcp6::ElapsedTime::Init(ot::Dhcp6::ElapsedTime *this)
{
  ot::Dhcp6::Option::SetCode(this, 8u);
  return ot::Dhcp6::Option::SetLength(this, 2u);
}

{
  return ot::Dhcp6::ElapsedTime::Init(this);
}

uint64_t ot::Dhcp6::ElapsedTime::SetElapsedTime(ot::Dhcp6::ElapsedTime *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 2) = result;
  return result;
}

{
  return ot::Dhcp6::ElapsedTime::SetElapsedTime(this, a2);
}

uint64_t ot::Message::Append<ot::Dhcp6::ElapsedTime>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 6u);
}

{
  return ot::Message::Append<ot::Dhcp6::ElapsedTime>(a1, a2);
}

uint64_t ot::Dhcp6::ClientIdentifier::Init(ot::Dhcp6::ClientIdentifier *this)
{
  ot::Dhcp6::Option::SetCode(this, 1u);
  return ot::Dhcp6::Option::SetLength(this, 0xCu);
}

{
  return ot::Dhcp6::ClientIdentifier::Init(this);
}

uint64_t ot::Dhcp6::ClientIdentifier::SetDuidType(uint64_t a1, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(a1 + 4) = result;
  return result;
}

{
  return ot::Dhcp6::ClientIdentifier::SetDuidType(a1, a2);
}

uint64_t ot::Dhcp6::ClientIdentifier::SetDuidHardwareType(ot::Dhcp6::ClientIdentifier *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 3) = result;
  return result;
}

{
  return ot::Dhcp6::ClientIdentifier::SetDuidHardwareType(this, a2);
}

uint64_t ot::Dhcp6::ClientIdentifier::SetDuidLinkLayerAddress(uint64_t this, const ot::Mac::ExtAddress *a2)
{
  *(this + 8) = *a2;
  return this;
}

{
  return ot::Dhcp6::ClientIdentifier::SetDuidLinkLayerAddress(this, a2);
}

uint64_t ot::Message::Append<ot::Dhcp6::ClientIdentifier>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0x10u);
}

{
  return ot::Message::Append<ot::Dhcp6::ClientIdentifier>(a1, a2);
}

uint64_t ot::Dhcp6::IaNa::Init(ot::Dhcp6::IaNa *this)
{
  ot::Dhcp6::Option::SetCode(this, 3u);
  return ot::Dhcp6::Option::SetLength(this, 0xCu);
}

{
  return ot::Dhcp6::IaNa::Init(this);
}

uint64_t ot::Dhcp6::Option::SetLength(ot::Dhcp6::Option *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::Dhcp6::Option::SetLength(this, a2);
}

uint64_t ot::Dhcp6::IaNa::SetIaid(ot::Dhcp6::IaNa *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::Dhcp6::IaNa::SetIaid(this, a2);
}

uint64_t ot::Dhcp6::IaNa::SetT1(ot::Dhcp6::IaNa *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2);
  *(this + 2) = result;
  return result;
}

{
  return ot::Dhcp6::IaNa::SetT1(this, a2);
}

uint64_t ot::Dhcp6::IaNa::SetT2(ot::Dhcp6::IaNa *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2);
  *(this + 3) = result;
  return result;
}

{
  return ot::Dhcp6::IaNa::SetT2(this, a2);
}

uint64_t ot::Message::Append<ot::Dhcp6::IaNa>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0x10u);
}

{
  return ot::Message::Append<ot::Dhcp6::IaNa>(a1, a2);
}

uint64_t ot::Dhcp6::IaAddress::Init(ot::Dhcp6::IaAddress *this)
{
  ot::Dhcp6::Option::SetCode(this, 5u);
  return ot::Dhcp6::Option::SetLength(this, 0x18u);
}

{
  return ot::Dhcp6::IaAddress::Init(this);
}

__n128 ot::Dhcp6::IaAddress::SetAddress(ot::Dhcp6::IaAddress *this, __n128 *a2)
{
  result = *a2;
  *(this + 4) = *a2;
  return result;
}

uint64_t ot::Dhcp6::IaAddress::SetPreferredLifetime(ot::Dhcp6::IaAddress *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2);
  *(this + 5) = result;
  return result;
}

{
  return ot::Dhcp6::IaAddress::SetPreferredLifetime(this, a2);
}

uint64_t ot::Dhcp6::IaAddress::SetValidLifetime(ot::Dhcp6::IaAddress *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2);
  *(this + 6) = result;
  return result;
}

{
  return ot::Dhcp6::IaAddress::SetValidLifetime(this, a2);
}

uint64_t ot::Message::Append<ot::Dhcp6::IaAddress>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0x1Cu);
}

{
  return ot::Message::Append<ot::Dhcp6::IaAddress>(a1, a2);
}

uint64_t ot::Dhcp6::RapidCommit::Init(ot::Dhcp6::RapidCommit *this)
{
  ot::Dhcp6::Option::SetCode(this, 0xEu);
  return ot::Dhcp6::Option::SetLength(this, 0);
}

{
  return ot::Dhcp6::RapidCommit::Init(this);
}

uint64_t ot::Message::Append<ot::Dhcp6::RapidCommit>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 4u);
}

{
  return ot::Message::Append<ot::Dhcp6::RapidCommit>(a1, a2);
}

uint64_t ot::Message::Read<ot::Dhcp6::Header>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 4u);
}

{
  return ot::Message::Read<ot::Dhcp6::Header>(a1, a2, a3);
}

uint64_t ot::Dhcp6::Header::GetType(ot::Dhcp6::Header *this)
{
  return *this;
}

{
  return ot::Dhcp6::Header::GetType(this);
}

uint64_t ot::Dhcp6::Header::GetTransactionId(ot::Dhcp6::Header *this)
{
  return this + 1;
}

{
  return ot::Dhcp6::Header::GetTransactionId(this);
}

BOOL ot::Equatable<ot::Dhcp6::TransactionId>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 3uLL) == 0;
}

{
  return ot::Equatable<ot::Dhcp6::TransactionId>::operator==(a1, a2);
}

void ot::Dhcp6::Client::ProcessReply(ot::Dhcp6::Client *this, ot::Message *a2)
{
  Offset = ot::Message::GetOffset(a2);
  Length = ot::Message::GetLength(a2);
  v8 = Length - ot::Message::GetOffset(a2);
  Option = ot::Dhcp6::Client::FindOption(this, a2, Offset, v8, 0xDu);
  if (Option <= 0 || !ot::Dhcp6::Client::ProcessStatusCode(this, a2, Option))
  {
    v3 = ot::Dhcp6::Client::FindOption(this, a2, Offset, v8, 2u);
    if (v3 > 0 && !ot::Dhcp6::Client::ProcessServerIdentifier(this, a2, v3))
    {
      v4 = ot::Dhcp6::Client::FindOption(this, a2, Offset, v8, 1u);
      if (v4 > 0 && !ot::Dhcp6::Client::ProcessClientIdentifier(this, a2, v4) && ot::Dhcp6::Client::FindOption(this, a2, Offset, v8, 0xEu) > 0)
      {
        v5 = ot::Dhcp6::Client::FindOption(this, a2, Offset, v8, 3u);
        if (v5 > 0 && !ot::Dhcp6::Client::ProcessIaNa(this, a2, v5))
        {
          ot::Dhcp6::Client::HandleTrickleTimer(this);
        }
      }
    }
  }
}

uint64_t ot::Dhcp6::Client::FindOption(uint64_t a1, ot::Message *a2, unsigned __int16 a3, __int16 a4, unsigned __int16 a5)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = a3;
  v10 = a3 + a4;
  v9 = 0;
  while (v11 <= v10 && !ot::Message::Read<ot::Dhcp6::Option>(v15, v11, v8))
  {
    Code = ot::Dhcp6::Option::GetCode(v8);
    if (Code == v12)
    {
      return v11;
    }

    Length = ot::Dhcp6::Option::GetLength(v8);
    v11 += Length + 4;
  }

  return v9;
}

uint64_t ot::Dhcp6::Client::ProcessStatusCode(ot::Dhcp6::Client *this, ot::Message *a2, unsigned __int16 a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  v5 = 0;
  v5 = ot::Message::Read<ot::Dhcp6::StatusCode>(a2, a3, v4);
  if (!v5 && (ot::Dhcp6::Option::GetLength(v4) < 2uLL || ot::Dhcp6::StatusCode::GetStatusCode(v4)))
  {
    return 6;
  }

  return v5;
}

uint64_t ot::Dhcp6::Client::ProcessServerIdentifier(ot::Dhcp6::Client *this, ot::Message *a2, unsigned __int16 a3)
{
  v4 = 0;
  if (!ot::Message::Read<ot::Dhcp6::ServerIdentifier>(a2, a3, v5) && (ot::Dhcp6::ServerIdentifier::GetDuidType(v5) != 1 || ot::Dhcp6::ServerIdentifier::GetDuidHardwareType(v5) != 1) && (ot::Dhcp6::Option::GetLength(v5) != 12 || ot::Dhcp6::ServerIdentifier::GetDuidType(v5) != 3 || ot::Dhcp6::ServerIdentifier::GetDuidHardwareType(v5) != 27))
  {
    return 6;
  }

  return v4;
}

uint64_t ot::Dhcp6::Client::ProcessClientIdentifier(ot::Dhcp6::Client *this, ot::Message *a2, unsigned __int16 a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::GetIeeeEui64(v3, v9);
  v6 = ot::Message::Read<ot::Dhcp6::ClientIdentifier>(a2, a3, v10);
  if (!v6)
  {
    if (ot::Dhcp6::Option::GetLength(v10) != 12)
    {
      return 6;
    }

    if (ot::Dhcp6::ClientIdentifier::GetDuidType(v10) != 3)
    {
      return 6;
    }

    if (ot::Dhcp6::ClientIdentifier::GetDuidHardwareType(v10) != 27)
    {
      return 6;
    }

    DuidLinkLayerAddress = ot::Dhcp6::ClientIdentifier::GetDuidLinkLayerAddress(v10);
    if (!ot::Equatable<ot::Mac::ExtAddress>::operator==(DuidLinkLayerAddress, v9))
    {
      return 6;
    }
  }

  return v6;
}

uint64_t ot::Dhcp6::Client::ProcessIaNa(ot::Dhcp6::Client *this, ot::Message *a2, unsigned __int16 a3)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = 0;
  v11 = ot::Message::Read<ot::Dhcp6::IaNa>(a2, a3, v10);
  if (!v11)
  {
    v12 += 16;
    v8 = ot::Dhcp6::Option::GetLength(v10) - 12;
    Length = ot::Message::GetLength(v13);
    if (v8 <= Length - v12)
    {
      Option = ot::Dhcp6::Client::FindOption(this, v13, v12, v8, 0xDu);
      if (Option <= 0 || (v11 = ot::Dhcp6::Client::ProcessStatusCode(this, v13, Option)) == 0)
      {
        while (v8)
        {
          v5 = ot::Dhcp6::Client::FindOption(this, v13, v12, v8, 5u);
          v9 = v5;
          if (!v5)
          {
            break;
          }

          v11 = ot::Dhcp6::Client::ProcessIaAddress(this, v13, v5);
          if (v11)
          {
            break;
          }

          v8 -= v9 - v12 + 28;
          v12 = v9 + 28;
        }
      }
    }

    else
    {
      return 6;
    }
  }

  return v11;
}

uint64_t ot::Message::Read<ot::Dhcp6::Option>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 4u);
}

{
  return ot::Message::Read<ot::Dhcp6::Option>(a1, a2, a3);
}

uint64_t ot::Dhcp6::Option::GetCode(ot::Dhcp6::Option *this)
{
  return ot::BigEndian::HostSwap16(*this);
}

{
  return ot::Dhcp6::Option::GetCode(this);
}

uint64_t ot::Dhcp6::Option::GetLength(ot::Dhcp6::Option *this)
{
  return ot::BigEndian::HostSwap16(*(this + 1));
}

{
  return ot::Dhcp6::Option::GetLength(this);
}

uint64_t ot::Message::Read<ot::Dhcp6::ServerIdentifier>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x10u);
}

{
  return ot::Message::Read<ot::Dhcp6::ServerIdentifier>(a1, a2, a3);
}

uint64_t ot::Dhcp6::ServerIdentifier::GetDuidType(ot::Dhcp6::ServerIdentifier *this)
{
  return ot::BigEndian::HostSwap16(*(this + 2));
}

{
  return ot::Dhcp6::ServerIdentifier::GetDuidType(this);
}

uint64_t ot::Dhcp6::ServerIdentifier::GetDuidHardwareType(ot::Dhcp6::ServerIdentifier *this)
{
  return ot::BigEndian::HostSwap16(*(this + 3));
}

{
  return ot::Dhcp6::ServerIdentifier::GetDuidHardwareType(this);
}

uint64_t ot::Message::Read<ot::Dhcp6::ClientIdentifier>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x10u);
}

{
  return ot::Message::Read<ot::Dhcp6::ClientIdentifier>(a1, a2, a3);
}

uint64_t ot::Dhcp6::ClientIdentifier::GetDuidType(ot::Dhcp6::ClientIdentifier *this)
{
  return ot::BigEndian::HostSwap16(*(this + 2));
}

{
  return ot::Dhcp6::ClientIdentifier::GetDuidType(this);
}

uint64_t ot::Dhcp6::ClientIdentifier::GetDuidHardwareType(ot::Dhcp6::ClientIdentifier *this)
{
  return ot::BigEndian::HostSwap16(*(this + 3));
}

{
  return ot::Dhcp6::ClientIdentifier::GetDuidHardwareType(this);
}

uint64_t ot::Dhcp6::ClientIdentifier::GetDuidLinkLayerAddress(ot::Dhcp6::ClientIdentifier *this)
{
  return this + 8;
}

{
  return ot::Dhcp6::ClientIdentifier::GetDuidLinkLayerAddress(this);
}

uint64_t ot::Message::Read<ot::Dhcp6::IaNa>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x10u);
}

{
  return ot::Message::Read<ot::Dhcp6::IaNa>(a1, a2, a3);
}

uint64_t ot::Dhcp6::Client::ProcessIaAddress(ot::Dhcp6::Client *this, ot::Message *a2, unsigned __int16 a3)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  v10 = ot::Message::Read<ot::Dhcp6::IaAddress>(a2, a3, v9);
  if (!v10)
  {
    if (ot::Dhcp6::Option::GetLength(v9) == 24)
    {
      for (i = (this + 152); i != (this + 344); i = (i + 48))
      {
        if (*(i + 42))
        {
          if (!*(i + 9))
          {
            Address = ot::Ip6::Netif::UnicastAddress::GetAddress(i);
            v3 = ot::Dhcp6::IaAddress::GetAddress(v9);
            if (ot::Ip6::Address::PrefixMatch(Address, v3) >= *(i + 16))
            {
              *i = *ot::Dhcp6::IaAddress::GetAddress(v9);
              *(i + 8) = ot::Dhcp6::IaAddress::GetPreferredLifetime(v9);
              *(i + 9) = ot::Dhcp6::IaAddress::GetValidLifetime(v9);
              *(i + 17) = 2;
              *(i + 9) = *(i + 9) & 0xFFFE | (ot::Dhcp6::IaAddress::GetPreferredLifetime(v9) != 0);
              *(i + 9) = *(i + 9) & 0xFFFD | (2 * (ot::Dhcp6::IaAddress::GetValidLifetime(v9) != 0));
              *(i + 42) = 3;
              v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
              ot::Ip6::Netif::AddUnicastAddress(v4, i);
              return 0;
            }
          }
        }
      }

      return 23;
    }

    else
    {
      return 6;
    }
  }

  return v10;
}

uint64_t ot::Message::Read<ot::Dhcp6::StatusCode>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 6u);
}

{
  return ot::Message::Read<ot::Dhcp6::StatusCode>(a1, a2, a3);
}

uint64_t ot::Dhcp6::StatusCode::GetStatusCode(ot::Dhcp6::StatusCode *this)
{
  return ot::BigEndian::HostSwap16(*(this + 2));
}

{
  return ot::Dhcp6::StatusCode::GetStatusCode(this);
}

uint64_t ot::Message::Read<ot::Dhcp6::IaAddress>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x1Cu);
}

{
  return ot::Message::Read<ot::Dhcp6::IaAddress>(a1, a2, a3);
}

uint64_t ot::Dhcp6::IaAddress::GetAddress(ot::Dhcp6::IaAddress *this)
{
  return this + 4;
}

{
  return ot::Dhcp6::IaAddress::GetAddress(this);
}

uint64_t ot::Dhcp6::IaAddress::GetPreferredLifetime(ot::Dhcp6::IaAddress *this)
{
  return ot::BigEndian::HostSwap32(*(this + 5));
}

{
  return ot::Dhcp6::IaAddress::GetPreferredLifetime(this);
}

uint64_t ot::Dhcp6::IaAddress::GetValidLifetime(ot::Dhcp6::IaAddress *this)
{
  return ot::BigEndian::HostSwap32(*(this + 6));
}

{
  return ot::Dhcp6::IaAddress::GetValidLifetime(this);
}

uint64_t ot::Random::Crypto::Fill<ot::Dhcp6::TransactionId>(ot::Random::Crypto *a1)
{
  return ot::Random::Crypto::FillBuffer(a1, 3);
}

{
  return ot::Random::Crypto::Fill<ot::Dhcp6::TransactionId>(a1);
}

uint64_t ot::Dhcp6::Option::SetCode(_WORD *a1, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *a1 = result;
  return result;
}

{
  return ot::Dhcp6::Option::SetCode(a1, a2);
}

uint64_t ot::Ip6::Udp::SocketIn<ot::Dhcp6::Client,&ot::Dhcp6::Client::HandleUdpReceive>::HandleUdpReceive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = ot::AsCoreType<otMessage>(a2);
  v3 = ot::AsCoreType<otMessageInfo>(a3);
  return (ot::Dhcp6::Client::HandleUdpReceive)(a1, v5, v3);
}

uint64_t ot::Instance::Get<ot::Dhcp6::Client>(uint64_t a1)
{
  return a1 + 86320;
}

{
  return ot::Instance::Get<ot::Dhcp6::Client>(a1);
}

_DWORD *ot::ClearAllBytes<ot::Dhcp6::Header>(_DWORD *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Dhcp6::Header>(result);
}

ot::Dhcp6::Server *ot::Dhcp6::Server::Server(ot::Dhcp6::Server *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Ip6::Udp::SocketIn<ot::Dhcp6::Server,&ot::Dhcp6::Server::HandleUdpReceive>::SocketIn((this + 8), a2, this);
  *(this + 304) = 0;
  *(this + 305) = 0;
  ot::ClearAllBytes<ot::Dhcp6::Server::PrefixAgent [4]>(this + 80);
  return this;
}

{
  ot::Dhcp6::Server::Server(this, a2);
  return this;
}

uint64_t ot::Dhcp6::Server::HandleUdpReceive(ot::Dhcp6::Server *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  Offset = ot::Message::GetOffset(a2);
  result = ot::Message::Read<ot::Dhcp6::Header>(a2, Offset, v10);
  if (!result)
  {
    ot::Message::MoveOffset(v12, 4);
    result = ot::Dhcp6::Header::GetType(v10);
    if (result == 1)
    {
      v6 = v12;
      PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v11);
      TransactionId = ot::Dhcp6::Header::GetTransactionId(v10);
      return ot::Dhcp6::Server::ProcessSolicit(this, v6, PeerAddr, TransactionId);
    }
  }

  return result;
}

ot::InstanceLocator *ot::Ip6::Udp::SocketIn<ot::Dhcp6::Server,&ot::Dhcp6::Server::HandleUdpReceive>::SocketIn(ot::InstanceLocator *a1, ot::Instance *a2, uint64_t a3)
{
  ot::Ip6::Udp::SocketIn<ot::Dhcp6::Server,&ot::Dhcp6::Server::HandleUdpReceive>::SocketIn(a1, a2, a3);
  return a1;
}

{
  ot::Ip6::Udp::Socket::Socket(a1, a2, ot::Ip6::Udp::SocketIn<ot::Dhcp6::Server,&ot::Dhcp6::Server::HandleUdpReceive>::HandleUdpReceive, a3);
  return a1;
}

void *ot::ClearAllBytes<ot::Dhcp6::Server::PrefixAgent [4]>(void *a1)
{
  return memset(a1, 0, 0xE0uLL);
}

{
  return ot::ClearAllBytes<ot::Dhcp6::Server::PrefixAgent [4]>(a1);
}

uint64_t ot::Dhcp6::Server::UpdateService(ot::Dhcp6::Server *this)
{
  v21 = this;
  *&v20[4] = 0;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  *v20 = ot::Mle::Mle::GetRloc16(v1);
  v19 = 0;
  for (i = (this + 80); i != (this + 304); i = (i + 56))
  {
    v14 = 0;
    if (ot::Dhcp6::Server::PrefixAgent::IsValid(i))
    {
      v19 = 0;
      while (1)
      {
        v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
        if (ot::NetworkData::NetworkData::GetNextOnMeshPrefix(v2, &v19, *v20, v17))
        {
          break;
        }

        if ((v18 & 0x10) != 0 || (v18 & 0x20) != 0)
        {
          v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
          PrefixAsAddress = ot::Dhcp6::Server::PrefixAgent::GetPrefixAsAddress(i);
          *&v20[2] = ot::NetworkData::Leader::GetContext(v12, PrefixAsAddress, v16);
          if (!*&v20[2])
          {
            ContextId = ot::Dhcp6::Server::PrefixAgent::GetContextId(i);
            if (ContextId == v16[17])
            {
              v14 = 1;
              break;
            }
          }
        }
      }

      if ((v14 & 1) == 0)
      {
        v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
        ot::Dhcp6::Server::PrefixAgent::GetAloc(i);
        ot::Ip6::Netif::RemoveUnicastAddress(v11, v5);
        ot::Dhcp6::Server::PrefixAgent::Clear(i);
        --*(this + 304);
      }
    }
  }

  v19 = 0;
  while (1)
  {
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    if (ot::NetworkData::NetworkData::GetNextOnMeshPrefix(v6, &v19, *v20, v17))
    {
      break;
    }

    if ((v18 & 0x10) != 0 || (v18 & 0x20) != 0)
    {
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
      v7 = ot::AsCoreType<otIp6Address>(v17);
      *&v20[2] = ot::NetworkData::Leader::GetContext(v10, v7, v16);
      if (!*&v20[2])
      {
        Prefix = ot::NetworkData::OnMeshPrefixConfig::GetPrefix(v17);
        ot::Dhcp6::Server::AddPrefixAgent(this, Prefix, v16);
      }
    }
  }

  if (*(this + 304))
  {
    ot::Dhcp6::Server::Start(this);
  }

  else
  {
    ot::Dhcp6::Server::Stop(this);
  }

  return *&v20[2];
}

uint64_t ot::Dhcp6::Server::PrefixAgent::IsValid(ot::Dhcp6::Server::PrefixAgent *this)
{
  return (*(this + 9) >> 1) & 1;
}

{
  return ot::Dhcp6::Server::PrefixAgent::IsValid(this);
}

uint64_t ot::Dhcp6::Server::PrefixAgent::GetPrefixAsAddress(ot::Dhcp6::Server::PrefixAgent *this)
{
  return this + 32;
}

{
  return ot::Dhcp6::Server::PrefixAgent::GetPrefixAsAddress(this);
}

uint64_t ot::Dhcp6::Server::PrefixAgent::GetContextId(ot::Dhcp6::Server::PrefixAgent *this)
{
  return *(this + 15);
}

{
  return ot::Dhcp6::Server::PrefixAgent::GetContextId(this);
}

void ot::Dhcp6::Server::PrefixAgent::GetAloc(ot::Dhcp6::Server::PrefixAgent *this)
{
  ;
}

{
  ot::Dhcp6::Server::PrefixAgent::GetAloc(this);
}

uint64_t ot::Dhcp6::Server::PrefixAgent::Clear(uint64_t this)
{
  *(this + 18) &= ~2u;
  return this;
}

{
  return ot::Dhcp6::Server::PrefixAgent::Clear(this);
}

void ot::Dhcp6::Server::AddPrefixAgent(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v11 = 0;
  v10 = (a1 + 80);
  v9 = (a1 + 304);
  while (v10 != v9)
  {
    if (ot::Dhcp6::Server::PrefixAgent::IsValid(v10))
    {
      Prefix = ot::Dhcp6::Server::PrefixAgent::GetPrefix(v10);
      if (ot::Ip6::Prefix::operator==(Prefix, a2))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = v10;
    }

    v10 = (v10 + 56);
  }

  if (!v11)
  {
    ot::Logger::LogOnError("Dhcp6Server", 3, "add DHCPv6 prefix agent");
    return;
  }

  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
  MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v4);
  ot::Dhcp6::Server::PrefixAgent::Set(v11, a2, MeshLocalPrefix, *(a3 + 17));
  v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
  ot::Dhcp6::Server::PrefixAgent::GetAloc(v11);
  ot::Ip6::Netif::AddUnicastAddress(v7, v6);
  ++a1[304];
LABEL_10:
  ot::Logger::LogOnError("Dhcp6Server", 0, "add DHCPv6 prefix agent");
}

void ot::Dhcp6::Server::Start(ot::Dhcp6::Server *this)
{
  if (!ot::Ip6::Udp::Socket::IsOpen((this + 8)))
  {
    ot::Ip6::Udp::Socket::Open((this + 8));
    IgnoreError();
    ot::Ip6::Udp::Socket::Bind((this + 8), 547, 1);
    IgnoreError();
  }
}

uint64_t ot::Dhcp6::Server::PrefixAgent::GetPrefix(ot::Dhcp6::Server::PrefixAgent *this)
{
  return this + 32;
}

{
  return this + 32;
}

{
  return ot::Dhcp6::Server::PrefixAgent::GetPrefix(this);
}

{
  return ot::Dhcp6::Server::PrefixAgent::GetPrefix(this);
}

uint64_t ot::Dhcp6::Server::PrefixAgent::Set(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  *(a1 + 32) = *a2;
  *(a1 + 48) = *(a2 + 16);
  ot::Ip6::Netif::UnicastAddress::InitAsThreadOrigin(a1);
  Address = ot::Ip6::Netif::UnicastAddress::GetAddress(a1);
  result = ot::Ip6::Address::SetToAnycastLocator(Address, a3, a4 - 1024);
  *(a1 + 18) = *(a1 + 18) & 0xFEFF | 0x100;
  return result;
}

{
  return ot::Dhcp6::Server::PrefixAgent::Set(a1, a2, a3, a4);
}

uint64_t ot::Dhcp6::Server::ProcessSolicit(ot::Dhcp6::Server *this, ot::Message *a2, const ot::Ip6::Address *a3, const ot::Dhcp6::TransactionId *a4)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  Offset = ot::Message::GetOffset(a2);
  Length = ot::Message::GetLength(v13);
  v8 = Length - ot::Message::GetOffset(v13);
  result = ot::Dhcp6::Server::FindOption(this, v13, Offset, v8, 1u);
  if (result > 0)
  {
    result = ot::Dhcp6::Server::ProcessClientIdentifier(this, v13, result, v15);
    if (!result)
    {
      result = ot::Dhcp6::Server::FindOption(this, v13, Offset, v8, 2u);
      if (!result)
      {
        result = ot::Dhcp6::Server::FindOption(this, v13, Offset, v8, 0xEu);
        if (result > 0)
        {
          Option = ot::Dhcp6::Server::FindOption(this, v13, Offset, v8, 8u);
          if (Option <= 0 || (result = ot::Dhcp6::Server::ProcessElapsedTime(this, v13, Option), !result))
          {
            result = ot::Dhcp6::Server::FindOption(this, v13, Offset, v8, 3u);
            if (result > 0)
            {
              result = ot::Dhcp6::Server::ProcessIaNa(this, v13, result, v10);
              if (!result)
              {
                return ot::Dhcp6::Server::SendReply(this, v12, v11, v15, v10);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ot::Dhcp6::Server::FindOption(uint64_t a1, ot::Message *a2, unsigned __int16 a3, __int16 a4, unsigned __int16 a5)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v10 = a3 + a4;
  v9 = 0;
  while (v13 <= v10 && !ot::Message::Read<ot::Dhcp6::Option>(v14, v13, v8))
  {
    Code = ot::Dhcp6::Option::GetCode(v8);
    if (Code == v11)
    {
      return v13;
    }

    Length = ot::Dhcp6::Option::GetLength(v8);
    v13 += Length + 4;
  }

  return v9;
}

uint64_t ot::Dhcp6::Server::ProcessClientIdentifier(ot::Dhcp6::Server *this, ot::Message *a2, unsigned __int16 a3, ot::Dhcp6::ClientIdentifier *a4)
{
  v5 = ot::Message::Read<ot::Dhcp6::ClientIdentifier>(a2, a3, a4);
  if (!v5 && (ot::Dhcp6::Option::GetLength(a4) != 12 || ot::Dhcp6::ClientIdentifier::GetDuidType(a4) != 3 || ot::Dhcp6::ClientIdentifier::GetDuidHardwareType(a4) != 27))
  {
    return 6;
  }

  return v5;
}

uint64_t ot::Dhcp6::Server::ProcessElapsedTime(ot::Dhcp6::Server *this, ot::Message *a2, unsigned __int16 a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  v5 = 0;
  v5 = ot::Message::Read<ot::Dhcp6::ElapsedTime>(a2, a3, v4);
  if (!v5 && ot::Dhcp6::Option::GetLength(v4) != 2)
  {
    return 6;
  }

  return v5;
}

uint64_t ot::Dhcp6::Server::ProcessIaNa(ot::Dhcp6::Server *this, ot::Message *a2, unsigned __int16 a3, ot::Dhcp6::IaNa *a4)
{
  v9 = ot::Message::Read<ot::Dhcp6::IaNa>(a2, a3, a4);
  if (!v9)
  {
    v12 = a3 + 16;
    v7 = ot::Dhcp6::Option::GetLength(a4) - 12;
    if (v7 <= (ot::Message::GetLength(a2) - v12))
    {
      *(this + 305) = 0;
      while (v7)
      {
        Option = ot::Dhcp6::Server::FindOption(this, a2, v12, v7, 5u);
        v8 = Option;
        if (Option <= 0)
        {
          break;
        }

        v9 = ot::Dhcp6::Server::ProcessIaAddress(this, a2, Option);
        if (v9)
        {
          break;
        }

        v7 -= v8 - v12 + 28;
        v12 = v8 + 28;
      }
    }

    else
    {
      return 6;
    }
  }

  return v9;
}

uint64_t ot::Dhcp6::Server::SendReply(ot::Dhcp6::Server *this, __n128 *a2, const ot::Dhcp6::TransactionId *a3, ot::Dhcp6::ClientIdentifier *a4, ot::Dhcp6::IaNa *a5)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = a5;
  appended = 0;
  ot::Ip6::MessageInfo::MessageInfo(v8);
  v7 = ot::Ip6::Udp::Socket::NewMessage((this + 8));
  if (v7)
  {
    appended = ot::Dhcp6::Server::AppendHeader(this, v7, v12);
    if (!appended)
    {
      appended = ot::Dhcp6::Server::AppendServerIdentifier(this, v7);
      if (!appended)
      {
        appended = ot::Dhcp6::Server::AppendClientIdentifier(this, v7, v11);
        if (!appended)
        {
          appended = ot::Dhcp6::Server::AppendIaNa(this, v7, v10);
          if (!appended)
          {
            appended = ot::Dhcp6::Server::AppendStatusCode(this, v7, 0);
            if (!appended)
            {
              appended = ot::Dhcp6::Server::AppendIaAddress(this, v7, v11);
              if (!appended)
              {
                appended = ot::Dhcp6::Server::AppendRapidCommit(this, v7);
                if (!appended)
                {
                  ot::Ip6::MessageInfo::SetPeerAddr(v8, v13);
                  ot::Ip6::MessageInfo::SetPeerPort(v8, 546);
                  appended = ot::Ip6::Udp::Socket::SendTo((this + 8), v7, v8);
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    appended = 3;
  }

  if (appended && v7)
  {
    ot::Message::Free(v7);
  }

  return appended;
}

uint64_t ot::Message::Read<ot::Dhcp6::ElapsedTime>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 6u);
}

{
  return ot::Message::Read<ot::Dhcp6::ElapsedTime>(a1, a2, a3);
}

uint64_t ot::Dhcp6::Server::ProcessIaAddress(ot::Dhcp6::Server *this, ot::Message *a2, unsigned __int16 a3)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v8 = ot::Message::Read<ot::Dhcp6::IaAddress>(a2, a3, v7);
  if (!v8)
  {
    if (ot::Dhcp6::Option::GetLength(v7) == 24)
    {
      for (i = 0; i < ot::GetArrayLength<ot::Dhcp6::Server::PrefixAgent,(unsigned short)4>(); ++i)
      {
        if (ot::Dhcp6::Server::PrefixAgent::IsValid((this + 56 * i + 80)))
        {
          Address = ot::Dhcp6::IaAddress::GetAddress(v7);
          if (ot::Dhcp6::Server::PrefixAgent::IsPrefixMatch((this + 56 * i + 80), Address))
          {
            *(this + 305) |= 1 << i;
            return v8;
          }
        }
      }
    }

    else
    {
      return 6;
    }
  }

  return v8;
}

uint64_t ot::GetArrayLength<ot::Dhcp6::Server::PrefixAgent,(unsigned short)4>()
{
  return 4;
}

{
  return ot::GetArrayLength<ot::Dhcp6::Server::PrefixAgent,(unsigned short)4>();
}

BOOL ot::Dhcp6::Server::PrefixAgent::IsPrefixMatch(ot::Dhcp6::Server::PrefixAgent *this, const ot::Ip6::Address *a2)
{
  Prefix = ot::Dhcp6::Server::PrefixAgent::GetPrefix(this);
  return ot::Ip6::Address::MatchesPrefix(a2, Prefix);
}

{
  return ot::Dhcp6::Server::PrefixAgent::IsPrefixMatch(this, a2);
}

uint64_t ot::Dhcp6::Server::AppendHeader(ot::Dhcp6::Server *this, ot::Message *a2, const ot::Dhcp6::TransactionId *a3)
{
  v7 = this;
  v6 = a2;
  v5 = a3;
  ot::Clearable<ot::Dhcp6::Header>::Clear(&v4);
  ot::Dhcp6::Header::SetType(&v4, 7);
  ot::Dhcp6::Header::SetTransactionId(&v4, v5);
  return ot::Message::Append<ot::Dhcp6::Header>(v6, &v4);
}

uint64_t ot::Dhcp6::Server::AppendServerIdentifier(ot::Dhcp6::Server *this, ot::Message *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::GetIeeeEui64(v2, v5);
  ot::Dhcp6::ServerIdentifier::Init(v6);
  ot::Dhcp6::ServerIdentifier::SetDuidType(v6, 3u);
  ot::Dhcp6::ServerIdentifier::SetDuidHardwareType(v6, 0x1Bu);
  ot::Dhcp6::ServerIdentifier::SetDuidLinkLayerAddress(v6, v5);
  return ot::Message::Append<ot::Dhcp6::ServerIdentifier>(a2, v6);
}

uint64_t ot::Dhcp6::Server::AppendIaNa(ot::Dhcp6::Server *this, ot::Message *a2, ot::Dhcp6::IaNa *a3)
{
  v6 = 0;
  if (*(this + 305))
  {
    for (i = 0; i < ot::GetArrayLength<ot::Dhcp6::Server::PrefixAgent,(unsigned short)4>(); ++i)
    {
      if ((*(this + 305) & (1 << i)) != 0)
      {
        v6 += 28;
      }
    }
  }

  else
  {
    v6 = 28 * *(this + 304);
  }

  ot::Dhcp6::Option::SetLength(a3, v6 + 18);
  ot::Dhcp6::IaNa::SetT1(a3, 0xFFFFFFFF);
  ot::Dhcp6::IaNa::SetT2(a3, 0xFFFFFFFF);
  return ot::Message::Append<ot::Dhcp6::IaNa>(a2, a3);
}

uint64_t ot::Dhcp6::Server::AppendStatusCode(uint64_t a1, ot::Message *a2, unsigned __int16 a3)
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  ot::Dhcp6::StatusCode::Init(v4);
  ot::Dhcp6::StatusCode::SetStatusCode(v4, v5);
  return ot::Message::Append<ot::Dhcp6::StatusCode>(v6, v4);
}

uint64_t ot::Dhcp6::Server::AppendIaAddress(ot::Dhcp6::Server *this, ot::Message *a2, ot::Dhcp6::ClientIdentifier *a3)
{
  v10 = 0;
  if (*(this + 305))
  {
    for (i = 0; i < ot::GetArrayLength<ot::Dhcp6::Server::PrefixAgent,(unsigned short)4>(); ++i)
    {
      if ((*(this + 305) & (1 << i)) != 0)
      {
        PrefixAsAddress = ot::Dhcp6::Server::PrefixAgent::GetPrefixAsAddress((this + 56 * i + 80));
        v10 = ot::Dhcp6::Server::AddIaAddress(this, a2, PrefixAsAddress, a3);
        if (v10)
        {
          break;
        }
      }
    }
  }

  else
  {
    v8 = (this + 80);
    v7 = (this + 304);
    while (v8 != v7)
    {
      if (ot::Dhcp6::Server::PrefixAgent::IsValid(v8))
      {
        v4 = ot::Dhcp6::Server::PrefixAgent::GetPrefixAsAddress(v8);
        v10 = ot::Dhcp6::Server::AddIaAddress(this, a2, v4, a3);
        if (v10)
        {
          break;
        }
      }

      v8 = (v8 + 56);
    }
  }

  return v10;
}

uint64_t ot::Dhcp6::Server::AppendRapidCommit(ot::Dhcp6::Server *this, ot::Message *a2)
{
  v5 = this;
  v4 = a2;
  ot::Dhcp6::RapidCommit::Init(v3);
  return ot::Message::Append<ot::Dhcp6::RapidCommit>(v4, v3);
}

uint64_t ot::Dhcp6::ServerIdentifier::Init(ot::Dhcp6::ServerIdentifier *this)
{
  ot::Dhcp6::Option::SetCode(this, 2u);
  return ot::Dhcp6::Option::SetLength(this, 0xCu);
}

{
  return ot::Dhcp6::ServerIdentifier::Init(this);
}

uint64_t ot::Dhcp6::ServerIdentifier::SetDuidType(uint64_t a1, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(a1 + 4) = result;
  return result;
}

{
  return ot::Dhcp6::ServerIdentifier::SetDuidType(a1, a2);
}

uint64_t ot::Dhcp6::ServerIdentifier::SetDuidHardwareType(ot::Dhcp6::ServerIdentifier *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 3) = result;
  return result;
}

{
  return ot::Dhcp6::ServerIdentifier::SetDuidHardwareType(this, a2);
}

uint64_t ot::Dhcp6::ServerIdentifier::SetDuidLinkLayerAddress(uint64_t this, const ot::Mac::ExtAddress *a2)
{
  *(this + 8) = *a2;
  return this;
}

{
  return ot::Dhcp6::ServerIdentifier::SetDuidLinkLayerAddress(this, a2);
}

uint64_t ot::Message::Append<ot::Dhcp6::ServerIdentifier>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0x10u);
}

{
  return ot::Message::Append<ot::Dhcp6::ServerIdentifier>(a1, a2);
}

uint64_t ot::Dhcp6::StatusCode::Init(ot::Dhcp6::StatusCode *this)
{
  ot::Dhcp6::Option::SetCode(this, 0xDu);
  return ot::Dhcp6::Option::SetLength(this, 2u);
}

{
  return ot::Dhcp6::StatusCode::Init(this);
}

uint64_t ot::Dhcp6::StatusCode::SetStatusCode(uint64_t a1, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(a1 + 4) = result;
  return result;
}

{
  return ot::Dhcp6::StatusCode::SetStatusCode(a1, a2);
}

uint64_t ot::Message::Append<ot::Dhcp6::StatusCode>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 6u);
}

{
  return ot::Message::Append<ot::Dhcp6::StatusCode>(a1, a2);
}

uint64_t ot::Dhcp6::Server::AddIaAddress(ot::Dhcp6::Server *this, ot::Message *a2, const ot::Ip6::Address *a3, ot::Dhcp6::ClientIdentifier *a4)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = 0;
  ot::Dhcp6::IaAddress::Init(v9);
  Address = ot::Dhcp6::IaAddress::GetAddress(v9);
  ot::Ip6::Address::SetPrefix(Address, v12, 0x40u);
  v5 = ot::Dhcp6::IaAddress::GetAddress(v9);
  Iid = ot::Ip6::Address::GetIid(v5);
  DuidLinkLayerAddress = ot::Dhcp6::ClientIdentifier::GetDuidLinkLayerAddress(v11);
  ot::Ip6::InterfaceIdentifier::SetFromExtAddress(Iid, DuidLinkLayerAddress);
  ot::Dhcp6::IaAddress::SetPreferredLifetime(v9, 0xFFFFFFFF);
  ot::Dhcp6::IaAddress::SetValidLifetime(v9, 0xFFFFFFFF);
  return ot::Message::Append<ot::Dhcp6::IaAddress>(v13, v9);
}

void *ot::Ip6::Address::SetPrefix(ot::Ip6::Address *this, unsigned __int8 *a2, unsigned __int8 a3)
{
  return ot::Ip6::Address::CopyBits(this, a2, a3);
}

{
  return ot::Ip6::Address::SetPrefix(this, a2, a3);
}

uint64_t ot::Ip6::Address::SetToAnycastLocator(ot::Ip6::Address *a1, void *a2, unsigned __int16 a3)
{
  return ot::Ip6::Address::SetToLocator(a1, a2, a3);
}

{
  return ot::Ip6::Address::SetToAnycastLocator(a1, a2, a3);
}

uint64_t ot::Ip6::Udp::SocketIn<ot::Dhcp6::Server,&ot::Dhcp6::Server::HandleUdpReceive>::HandleUdpReceive(ot::Dhcp6::Server *a1, uint64_t a2, uint64_t a3)
{
  v5 = ot::AsCoreType<otMessage>(a2);
  v3 = ot::AsCoreType<otMessageInfo>(a3);
  return ot::Dhcp6::Server::HandleUdpReceive(a1, v5, v3);
}

uint64_t ot::LinkMetrics::Metrics::ConvertToTypeIds(ot::LinkMetrics::Metrics *this, unsigned __int8 *a2)
{
  v6 = 0;
  if (*this)
  {
    v6 = 1;
    *a2 = 64;
  }

  if ((*this & 2) != 0)
  {
    v2 = v6++;
    a2[v2] = 9;
  }

  if ((*this & 4) != 0)
  {
    v3 = v6++;
    a2[v3] = 10;
  }

  if ((*this & 8) != 0)
  {
    v4 = v6++;
    a2[v4] = 11;
  }

  return v6;
}

uint64_t ot::LinkMetrics::SeriesFlags::ConvertToMask(ot::LinkMetrics::SeriesFlags *this)
{
  if ((*this & 2) != 0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  v5 = ((*this & 1) != 0) | v1;
  if ((*this & 4) != 0)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  v6 = v5 | v2;
  if ((*this & 8) != 0)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  return (v6 | v3);
}

_BYTE *ot::LinkMetrics::SeriesFlags::SetFrom(_BYTE *this, char a2)
{
  *this = *this & 0xFE | ((a2 & 1) != 0);
  *this = *this & 0xFD | (2 * ((a2 & 2) != 0));
  *this = *this & 0xFB | (4 * ((a2 & 4) != 0));
  *this = *this & 0xF7 | (8 * ((a2 & 8) != 0));
  return this;
}

_WORD *ot::LinkMetrics::SeriesInfo::Init(ot::LinkMetrics::SeriesInfo *this, char a2, char a3, const ot::LinkMetrics::Metrics *a4)
{
  *(this + 8) = a2;
  ot::LinkMetrics::SeriesFlags::SetFrom(this + 9, a3);
  *(this + 10) = *a4;
  ot::Clearable<ot::RssAverager>::Clear(this + 6);
  result = ot::Clearable<ot::LqiAverager>::Clear(this + 7);
  *(this + 4) = 0;
  return result;
}

_WORD *ot::Clearable<ot::LqiAverager>::Clear(_WORD *a1)
{
  return ot::ClearAllBytes<ot::LqiAverager>(a1);
}

{
  return ot::Clearable<ot::LqiAverager>::Clear(a1);
}

void ot::LinkMetrics::SeriesInfo::AggregateLinkMetrics(ot::LinkMetrics::SeriesInfo *this, char a2, unsigned __int8 a3, char a4)
{
  if (ot::LinkMetrics::SeriesInfo::IsFrameTypeMatch(this, a2))
  {
    ++*(this + 4);
    ot::LqiAverager::Add((this + 14), a3);
    ot::RssAverager::Add((this + 12), a4);
    IgnoreError();
  }
}

uint64_t ot::LinkMetrics::SeriesInfo::IsFrameTypeMatch(ot::LinkMetrics::SeriesInfo *this, char a2)
{
  IsMacDataFlagSet = 0;
  if (a2)
  {
    switch(a2)
    {
      case 1:
        IsMacDataFlagSet = ot::LinkMetrics::SeriesFlags::IsMacDataFlagSet((this + 9));
        break;
      case 2:
        IsMacDataFlagSet = ot::LinkMetrics::SeriesFlags::IsMacAckFlagSet((this + 9));
        break;
      case 3:
        IsMacDataFlagSet = ot::LinkMetrics::SeriesFlags::IsMacDataRequestFlagSet((this + 9));
        break;
    }
  }

  else if ((ot::LinkMetrics::SeriesFlags::IsMacDataFlagSet((this + 9)) & 1) == 0)
  {
    IsMacDataFlagSet = ot::LinkMetrics::SeriesFlags::IsLinkProbeFlagSet((this + 9));
  }

  return IsMacDataFlagSet & 1;
}

uint64_t ot::LinkMetrics::SeriesFlags::IsMacDataFlagSet(ot::LinkMetrics::SeriesFlags *this)
{
  return (*this >> 1) & 1;
}

{
  return ot::LinkMetrics::SeriesFlags::IsMacDataFlagSet(this);
}

uint64_t ot::LinkMetrics::SeriesFlags::IsLinkProbeFlagSet(ot::LinkMetrics::SeriesFlags *this)
{
  return *this & 1;
}

{
  return ot::LinkMetrics::SeriesFlags::IsLinkProbeFlagSet(this);
}

uint64_t ot::LinkMetrics::SeriesFlags::IsMacDataRequestFlagSet(ot::LinkMetrics::SeriesFlags *this)
{
  return (*this >> 2) & 1;
}

{
  return ot::LinkMetrics::SeriesFlags::IsMacDataRequestFlagSet(this);
}

uint64_t ot::LinkMetrics::SeriesFlags::IsMacAckFlagSet(ot::LinkMetrics::SeriesFlags *this)
{
  return (*this >> 3) & 1;
}

{
  return ot::LinkMetrics::SeriesFlags::IsMacAckFlagSet(this);
}

_WORD *ot::ClearAllBytes<ot::LqiAverager>(_WORD *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::LqiAverager>(result);
}

uint64_t ot::Dns::Header::ResponseCodeToError(char a1)
{
  v2 = 1;
  switch(a1)
  {
    case 0:
      v2 = 0;
      break;
    case 1:
    case 10:
    case 20:
    case 22:
      v2 = 6;
      break;
    case 2:
      v2 = 1;
      break;
    case 3:
    case 8:
      v2 = 23;
      break;
    case 4:
    case 11:
      v2 = 12;
      break;
    case 5:
    case 9:
      v2 = 8;
      break;
    case 6:
    case 7:
      v2 = 29;
      break;
    case 21:
      v2 = 27;
      break;
    default:
      return v2;
  }

  return v2;
}

uint64_t ot::Dns::Name::Matches(ot::Dns::Name **this, char *a2, char *a3, char **a4)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = 0;
  if (!ot::Dns::Name::IsEmpty(this))
  {
    if (ot::Dns::Name::IsFromCString(this))
    {
      v9 = *this;
      if (!v13 || (v10 = ot::Dns::Name::CompareAndSkipLabels(&v9, v13, 0x2E), (v10 & 1) != 0))
      {
        v10 = ot::Dns::Name::CompareAndSkipLabels(&v9, v12, 0x2E);
        if (v10)
        {
          v10 = ot::Dns::Name::CompareAndSkipLabels(&v9, v11, 0);
        }
      }
    }

    else
    {
      v8 = *(this + 8);
      if ((!v13 || !ot::Dns::Name::CompareLabel(this[1], &v8, v13, v4)) && !ot::Dns::Name::CompareMultipleLabels(this[1], &v8, v12, v4) && !ot::Dns::Name::CompareName(this[1], &v8, v11, v5))
      {
        v10 = 1;
      }
    }
  }

  return v10 & 1;
}

BOOL ot::Dns::Name::IsEmpty(ot::Dns::Name *this)
{
  v2 = 0;
  if (!*this)
  {
    return *(this + 1) == 0;
  }

  return v2;
}

{
  return ot::Dns::Name::IsEmpty(this);
}

BOOL ot::Dns::Name::IsFromCString(ot::Dns::Name *this)
{
  return *this != 0;
}

{
  return ot::Dns::Name::IsFromCString(this);
}

uint64_t ot::Dns::Name::CompareAndSkipLabels(char **this, const char **a2, const char *a3)
{
  v6 = a3;
  v5 = 0;
  v4 = ot::StringLength(a2, 0xFF);
  if (v4 < 0xFFu && ot::StringStartsWith(*this, a2, 1))
  {
    *this += v4;
    if (**this == v6)
    {
      ++*this;
      v5 = 1;
    }
  }

  return v5 & 1;
}

uint64_t ot::Dns::Name::CompareLabel(ot::Dns::Name *this, const ot::Message *a2, char *a3, const char *a4)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  NextLabel = 0;
  ot::Dns::Name::LabelIterator::LabelIterator(v5, this, *a2);
  NextLabel = ot::Dns::Name::LabelIterator::GetNextLabel(v5);
  if (!NextLabel)
  {
    if (ot::Dns::Name::LabelIterator::CompareLabel(v5, &v8, 1))
    {
      *v9 = v6;
    }

    else
    {
      return 23;
    }
  }

  return NextLabel;
}

uint64_t ot::Dns::Name::CompareMultipleLabels(ot::Dns::Name *this, const ot::Message *a2, char *a3, const char *a4)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  NextLabel = 0;
  ot::Dns::Name::LabelIterator::LabelIterator(v5, this, *a2);
  while (1)
  {
    NextLabel = ot::Dns::Name::LabelIterator::GetNextLabel(v5);
    if (NextLabel)
    {
      break;
    }

    if (!ot::Dns::Name::LabelIterator::CompareLabel(v5, &v8, 0))
    {
      return 23;
    }

    if (!*v8)
    {
      *v9 = v6;
      return NextLabel;
    }
  }

  return NextLabel;
}

uint64_t ot::Dns::Name::CompareName(ot::Dns::Name *this, const ot::Message *a2, char *a3, const char *a4)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  NextLabel = 0;
  ot::Dns::Name::LabelIterator::LabelIterator(v6, this, *a2);
  v5 = 1;
  if (*v9 == 46 && (++v9, *v9))
  {
    return 7;
  }

  else
  {
    while (1)
    {
      NextLabel = ot::Dns::Name::LabelIterator::GetNextLabel(v6);
      if (NextLabel)
      {
        break;
      }

      if ((v5 & 1) != 0 && !ot::Dns::Name::LabelIterator::CompareLabel(v6, &v9, 0))
      {
        v5 = 0;
      }
    }

    if (NextLabel == 23)
    {
      if ((v5 & 1) != 0 && !*v9)
      {
        NextLabel = 0;
      }

      *v10 = v7;
    }
  }

  return NextLabel;
}

uint64_t ot::Dns::Name::AppendTo(ot::Dns::Name *this, ot::Message *a2)
{
  v12 = this;
  v11 = a2;
  NextLabel = 0;
  if (ot::Dns::Name::IsEmpty(this))
  {
    return ot::Dns::Name::AppendTerminator(v11, v2);
  }

  else if (ot::Dns::Name::IsFromCString(this))
  {
    AsCString = ot::Dns::Name::GetAsCString(this);
    return ot::Dns::Name::AppendName(AsCString, v11, v4, v5);
  }

  else
  {
    ot::Dns::Name::LabelIterator::LabelIterator(v9, *(this + 1), *(this + 8));
    while (1)
    {
      NextLabel = ot::Dns::Name::LabelIterator::GetNextLabel(v9);
      if (NextLabel)
      {
        break;
      }

      NextLabel = ot::Dns::Name::LabelIterator::AppendLabel(v9, v11);
      if (NextLabel)
      {
        return NextLabel;
      }
    }

    if (NextLabel == 23)
    {
      return ot::Dns::Name::AppendTerminator(v11, v6);
    }
  }

  return NextLabel;
}

uint64_t ot::Dns::Name::AppendTerminator(ot::Dns::Name *this, ot::Message *a2)
{
  v4 = this;
  v3 = 0;
  return ot::Message::Append<unsigned char>(this, &v3);
}

uint64_t ot::Dns::Name::AppendName(ot::Dns::Name *this, ot::Message *a2, ot::Message *a3, ot::Message *a4)
{
  appended = ot::Dns::Name::AppendMultipleLabels(this, a2, a3, a4);
  if (!appended)
  {
    return ot::Dns::Name::AppendTerminator(a2, v4);
  }

  return appended;
}

uint64_t ot::Dns::Name::GetAsCString(ot::Dns::Name *this)
{
  return *this;
}

{
  return ot::Dns::Name::GetAsCString(this);
}

uint64_t ot::Dns::Name::LabelIterator::GetNextLabel(ot::Dns::Name::LabelIterator *this)
{
  v9 = this;
  v8 = 0;
  while (1)
  {
    v7 = 0;
    v6 = 0;
    v8 = ot::Message::Read<unsigned char>(*this, *(this + 6), &v7);
    if (v8)
    {
      break;
    }

    v6 = v7 & 0xC0;
    if ((v7 & 0xC0) == 0)
    {
      if (v7)
      {
        *(this + 4) = *(this + 6) + 1;
        *(this + 10) = v7;
        *(this + 6) = *(this + 4) + v7;
      }

      else
      {
        if (!ot::Dns::Name::LabelIterator::IsEndOffsetSet(this))
        {
          *(this + 7) = *(this + 6) + 1;
        }

        return 23;
      }

      return v8;
    }

    if (v6 != 192)
    {
      return 6;
    }

    v5 = 0;
    v8 = ot::Message::Read<unsigned short>(*this, *(this + 6), &v5);
    if (v8)
    {
      return v8;
    }

    if (!ot::Dns::Name::LabelIterator::IsEndOffsetSet(this))
    {
      *(this + 7) = *(this + 6) + 2;
    }

    Offset = ot::Message::GetOffset(*this);
    v4 = Offset + (ot::BigEndian::HostSwap16(v5) & 0x3FFF);
    if (v4 >= *(this + 8))
    {
      return 6;
    }

    *(this + 6) = v4;
    *(this + 8) = v4;
  }

  return v8;
}

uint64_t ot::Dns::Name::LabelIterator::AppendLabel(ot::Dns::Name::LabelIterator *this, ot::Message *a2)
{
  if (*(this + 10) && *(this + 10) <= 0x3Fu)
  {
    v4 = ot::Message::Append<unsigned char>(a2, this + 10);
    if (!v4)
    {
      return ot::Message::AppendBytesFromMessage(a2, *this, *(this + 4), *(this + 10));
    }
  }

  else
  {
    return 7;
  }

  return v4;
}

uint64_t ot::Dns::Name::AppendLabel(ot::Dns::Name *this, const char *a2, ot::Message *a3, ot::Message *a4)
{
  v8 = this;
  v7 = a2;
  if (a2 && v7 <= 0x3Fu)
  {
    v5 = ot::Message::Append<unsigned char>(a3, &v7);
    if (!v5)
    {
      return ot::Message::AppendBytes(a3, v8, v7);
    }
  }

  else
  {
    return 7;
  }

  return v5;
}

uint64_t ot::Dns::Name::AppendMultipleLabels(ot::Dns::Name *this, ot::Message *a2, ot::Message *a3, ot::Message *a4)
{
  v9 = 0;
  if (!this)
  {
    return HIDWORD(v9);
  }

  while (1)
  {
    v8 = *(this + WORD1(v9));
    if (v8 && v8 != 46)
    {
      goto LABEL_17;
    }

    if (BYTE2(v9) == v9)
    {
      break;
    }

    if (WORD1(v9) + 1 >= 255)
    {
      HIDWORD(v9) = 7;
      return HIDWORD(v9);
    }

    HIDWORD(v9) = ot::Dns::Name::AppendLabel((this + v9), (BYTE2(v9) - v9), a2, a4);
    if (HIDWORD(v9))
    {
      return HIDWORD(v9);
    }

    LOWORD(v9) = WORD1(v9) + 1;
LABEL_17:
    ++WORD1(v9);
    if (!v8)
    {
      return HIDWORD(v9);
    }
  }

  v7 = 1;
  if (v8)
  {
    v6 = 0;
    if (!WORD1(v9))
    {
      v6 = *(this + 1) == 0;
    }

    v7 = v6;
  }

  if (v7)
  {
    v4 = 0;
  }

  else
  {
    v4 = 7;
  }

  HIDWORD(v9) = v4;
  return HIDWORD(v9);
}

uint64_t ot::Dns::Name::AppendPointerLabel(ot::Dns::Name *this, ot::Message *a2, ot::Message *a3)
{
  v7 = this;
  v6 = a2;
  v5 = 0;
  v4 = 0;
  if (this >= 0xC000u)
  {
    __assert_rtn("AppendPointerLabel", "dns_types.cpp", 307, "aOffset < kPointerLabelTypeUint16");
  }

  v4 = ot::BigEndian::HostSwap16((v7 | 0xC000u));
  return ot::Message::Append<unsigned short>(v6, &v4);
}

uint64_t ot::Dns::Name::ParseName(ot::Dns::Name *this, const ot::Message *a2, unsigned __int16 *a3)
{
  v8 = this;
  v7 = a2;
  NextLabel = 0;
  ot::Dns::Name::LabelIterator::LabelIterator(v4, this, *a2);
  do
  {
    NextLabel = ot::Dns::Name::LabelIterator::GetNextLabel(v4);
  }

  while (!NextLabel);
  if (NextLabel == 23)
  {
    *v7 = v5;
    return 0;
  }

  return NextLabel;
}

uint64_t ot::Dns::Name::ReadLabel(ot::Dns::Name *this, const ot::Message *a2, char *a3, char *a4, unsigned __int8 *a5)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  NextLabel = 0;
  ot::Dns::Name::LabelIterator::LabelIterator(v6, this, *a2);
  NextLabel = ot::Dns::Name::LabelIterator::GetNextLabel(v6);
  if (!NextLabel)
  {
    NextLabel = ot::Dns::Name::LabelIterator::ReadLabel(v6, v9, v8, 1);
    if (!NextLabel)
    {
      *v10 = v6[6];
    }
  }

  return NextLabel;
}

uint64_t ot::Dns::Name::LabelIterator::ReadLabel(ot::Dns::Name::LabelIterator *this, char *a2, unsigned __int8 *a3, char a4)
{
  if (*(this + 10) < *a3)
  {
    v6 = ot::Message::Read(*this, *(this + 4), a2, *(this + 10));
    if (!v6)
    {
      a2[*(this + 10)] = 0;
      *a3 = *(this + 10);
      if ((a4 & 1) == 0)
      {
        if (ot::StringFind(a2, 0x2E))
        {
          return 6;
        }
      }
    }
  }

  else
  {
    return 3;
  }

  return v6;
}

uint64_t ot::Dns::Name::ReadName(ot::Dns::Name *this, const ot::Message *a2, char *a3, char *a4)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  NextLabel = 0;
  ot::Dns::Name::LabelIterator::LabelIterator(v9, this, *a2);
  v8 = 1;
  v7 = 0;
  while (1)
  {
    NextLabel = ot::Dns::Name::LabelIterator::GetNextLabel(v9);
    if (NextLabel)
    {
      break;
    }

    if ((v8 & 1) == 0)
    {
      v4 = v13++;
      *v4 = 46;
      --v12;
    }

    v7 = ot::Min<unsigned short>(0x40u, v12);
    NextLabel = ot::Dns::Name::LabelIterator::ReadLabel(v9, v13, &v7, v8 & 1);
    if (NextLabel)
    {
      return NextLabel;
    }

    v13 += v7;
    v12 -= v7;
    v8 = 0;
  }

  if (NextLabel == 23)
  {
    v5 = v13++;
    *v5 = 46;
    if (--v12)
    {
      *v13 = 0;
      *v14 = v10;
      return 0;
    }

    else
    {
      return 3;
    }
  }

  return NextLabel;
}

BOOL ot::Dns::Name::LabelIterator::CompareLabel(ot::Dns::Name::LabelIterator *this, const char **a2, char a3)
{
  v5 = 0;
  if (ot::StringLength(*a2, *(this + 10)) == *(this + 10))
  {
    v5 = ot::Message::CompareBytes(*this, *(this + 4), *a2, *(this + 10), ot::Dns::Name::LabelIterator::CaseInsensitiveMatch);
    if (v5)
    {
      *a2 += *(this + 10);
      v5 = **a2 == 0;
      if ((a3 & 1) == 0 && **a2 == 46)
      {
        v5 = 1;
        ++*a2;
      }
    }
  }

  return v5;
}

uint64_t ot::Dns::Name::CompareName(ot::Dns::Name *this, const ot::Message *a2, const ot::Message *a3, const ot::Message *a4)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  NextLabel = 0;
  ot::Dns::Name::LabelIterator::LabelIterator(v7, this, *a2);
  ot::Dns::Name::LabelIterator::LabelIterator(v6, v11, v10);
  v5 = 1;
  while (1)
  {
    NextLabel = ot::Dns::Name::LabelIterator::GetNextLabel(v7);
    if (NextLabel)
    {
      break;
    }

    if ((v5 & 1) != 0 && (ot::Dns::Name::LabelIterator::GetNextLabel(v6) || !ot::Dns::Name::LabelIterator::CompareLabel(v7, v6)))
    {
      v5 = 0;
    }
  }

  if (NextLabel == 23)
  {
    if ((v5 & 1) != 0 && ot::Dns::Name::LabelIterator::GetNextLabel(v6) == 23)
    {
      NextLabel = 0;
    }

    *v12 = v8;
  }

  return NextLabel;
}

BOOL ot::Dns::Name::LabelIterator::CompareLabel(ot::Dns::Name::LabelIterator *this, const ot::Dns::Name::LabelIterator *a2)
{
  v3 = 0;
  if (*(this + 10) == *(a2 + 10))
  {
    return ot::Message::CompareBytes(*this, *(this + 4), *a2, *(a2 + 4), *(this + 10), ot::Dns::Name::LabelIterator::CaseInsensitiveMatch);
  }

  return v3;
}

uint64_t ot::Dns::Name::CompareName(ot::Dns::Name *this, const ot::Message *a2, const ot::Message **a3, const ot::Dns::Name *a4)
{
  if (ot::Dns::Name::IsFromCString(a3))
  {
    return ot::Dns::Name::CompareName(this, a2, *a3, v4);
  }

  else if (ot::Dns::Name::IsFromMessage(a3))
  {
    return ot::Dns::Name::CompareName(this, a2, a3[1], *(a3 + 8));
  }

  else
  {
    return ot::Dns::Name::ParseName(this, a2, v5);
  }
}

BOOL ot::Dns::Name::IsFromMessage(ot::Dns::Name *this)
{
  return *(this + 1) != 0;
}

{
  return ot::Dns::Name::IsFromMessage(this);
}

BOOL ot::Dns::Name::LabelIterator::IsEndOffsetSet(ot::Dns::Name::LabelIterator *this)
{
  return *(this + 7) != 0;
}

{
  return ot::Dns::Name::LabelIterator::IsEndOffsetSet(this);
}

uint64_t ot::Dns::Name::ExtractLabels(ot::Dns::Name *this, ot *a2, ot::Dns::Name *a3, char *a4)
{
  v10 = a4;
  __len_2 = 6;
  __len = ot::StringLength(this, 0xFF);
  v6 = ot::StringLength(a2, 0xFF);
  if (__len < 0xFFu && v6 < 0xFFu && __len > v6)
  {
    v5 = this + __len - v6;
    if (ot::StringMatch(v5, a2, 1) && *(v5 - 1) == 46)
    {
      __lena = __len - (v6 + 1);
      if (__lena < v10)
      {
        if (a3 != this)
        {
          memmove(a3, this, __lena);
        }

        *(a3 + __lena) = 0;
        return 0;
      }

      else
      {
        return 3;
      }
    }
  }

  return __len_2;
}

BOOL ot::Dns::Name::IsSubDomainOf(ot::Dns::Name *this, ot *a2, const char *a3)
{
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = ot::StringLength(this, 0xFE);
  v4 = ot::StringLength(a2, 0xFE);
  if (v5 && *(this + v5 - 1) == 46)
  {
    v7 = 1;
    --v5;
  }

  if (v4 && *(a2 + v4 - 1) == 46)
  {
    v6 = 1;
    --v4;
  }

  if (v5 >= v4)
  {
    v11 = this + v5 - v4;
    if (v5 <= v4 || *(v11 - 1) == 46)
    {
      if ((v7 & 1) == (v6 & 1))
      {
        return ot::StringMatch(v11, a2, 1);
      }

      else if (v7)
      {
        return ot::StringStartsWith(v11, a2, 1);
      }

      else
      {
        return ot::StringStartsWith(a2, v11, 1);
      }
    }
  }

  return v8;
}

BOOL ot::Dns::Name::IsSameDomain(ot::Dns::Name *this, ot::Dns::Name *a2, const char *a3)
{
  v5 = 0;
  if (ot::Dns::Name::IsSubDomainOf(this, a2, a3))
  {
    return ot::Dns::Name::IsSubDomainOf(a2, this, v3);
  }

  return v5;
}

uint64_t ot::Dns::ResourceRecord::ParseRecords(ot::Dns::ResourceRecord *this, const ot::Message *a2, unsigned __int16 *a3)
{
  v9 = this;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  while (v7)
  {
    v6 = ot::Dns::Name::ParseName(v9, v8, a3);
    if (v6)
    {
      break;
    }

    v6 = ot::Dns::ResourceRecord::ReadFrom(v5, v9, *v8);
    if (v6)
    {
      break;
    }

    Size = ot::Dns::ResourceRecord::GetSize(v5);
    *v8 += Size;
    --v7;
  }

  return v6;
}

uint64_t ot::Dns::ResourceRecord::ReadFrom(ot::Dns::ResourceRecord *this, const ot::Message *a2, unsigned __int16 a3)
{
  v5 = ot::Message::Read<ot::Dns::ResourceRecord>(a2, a3, this);
  if (!v5)
  {
    return ot::Dns::ResourceRecord::CheckRecord(this, a2, a3);
  }

  return v5;
}

uint64_t ot::Dns::ResourceRecord::GetSize(ot::Dns::ResourceRecord *this)
{
  return ot::Dns::ResourceRecord::GetLength(this) + 10;
}

{
  return ot::Dns::ResourceRecord::GetSize(this);
}

uint64_t ot::Dns::ResourceRecord::FindRecord(ot::Dns::ResourceRecord *this, const ot::Message *a2, unsigned __int16 *a3, unsigned __int16 *a4, const ot::Dns::Name *a5)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = 0;
  while (*v11)
  {
    v8 = 1;
    v9 = ot::Dns::Name::CompareName(v13, v12, v10, a4);
    if (v9)
    {
      if (v9 != 23)
      {
        return v9;
      }

      v8 = 0;
    }

    v9 = ot::Dns::ResourceRecord::ReadFrom(v7, v13, *v12);
    if (v9)
    {
      return v9;
    }

    --*v11;
    if (v8)
    {
      return v9;
    }

    Size = ot::Dns::ResourceRecord::GetSize(v7);
    *v12 += Size;
  }

  return 23;
}

uint64_t ot::Dns::ResourceRecord::FindRecord(ot::Dns::ResourceRecord *this, const ot::Message *a2, unsigned __int16 *a3, __int16 a4, const ot::Dns::Name *a5, const ot::Dns::Name *a6, uint64_t a7, ot::Dns::ResourceRecord *a8, unsigned __int16 a9)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  *&v14[1] = a5;
  v14[0] = a6;
  *&v13[1] = a7;
  v13[0] = a8;
  Record = 0;
  v11 = *a2;
  while (v16)
  {
    Record = ot::Dns::ResourceRecord::FindRecord(v18, &v11, &v16, *&v14[1], a5);
    if (Record)
    {
      return Record;
    }

    v10 = v11;
    Record = ot::Dns::ResourceRecord::ReadRecord(v18, &v11, v14[0], *&v13[1], v13[0]);
    if (Record != 23)
    {
      if (Record)
      {
        return Record;
      }

      if (!v15)
      {
        *v17 = v11;
        return Record;
      }

      --v15;
      v11 = v10 + ot::Dns::ResourceRecord::GetSize(*&v13[1]);
    }
  }

  return 23;
}

uint64_t ot::Dns::ResourceRecord::ReadRecord(ot::Dns::ResourceRecord *this, const ot::Message *a2, unsigned __int16 *a3, void *a4, ot::Dns::ResourceRecord *a5)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v10 = 0;
  v10 = ot::Dns::ResourceRecord::ReadFrom(v9, this, *a2);
  if (!v10)
  {
    if ((v13 == 255 || (Type = ot::Dns::ResourceRecord::GetType(v9), Type == v13)) && (v6 = ot::Dns::ResourceRecord::GetSize(v9), v6 >= v11))
    {
      ot::Message::Read(v15, *v14, v12, v11);
      IgnoreError();
      *v14 += v11;
    }

    else
    {
      Size = ot::Dns::ResourceRecord::GetSize(v9);
      *v14 += Size;
      return 23;
    }
  }

  return v10;
}

uint64_t ot::Dns::ResourceRecord::GetType(ot::Dns::ResourceRecord *this)
{
  return ot::BigEndian::HostSwap16(*this);
}

{
  return ot::Dns::ResourceRecord::GetType(this);
}

uint64_t ot::Dns::ResourceRecord::ReadName(ot::Dns::ResourceRecord *this, const ot::Message *a2, const ot::Message *a3, unsigned __int16 a4, char *a5, unsigned __int16 a6, char a7)
{
  Name = ot::Dns::Name::ReadName(a2, a3, a5, a6);
  if (!Name)
  {
    v8 = *a3;
    if (v8 <= a4 + ot::Dns::ResourceRecord::GetSize(this))
    {
      if (a7)
      {
        *a3 = a4;
        return ot::Dns::ResourceRecord::SkipRecord(this, a2, a3);
      }
    }

    else
    {
      return 6;
    }
  }

  return Name;
}

uint64_t ot::Dns::ResourceRecord::SkipRecord(ot::Dns::ResourceRecord *this, const ot::Message *a2, unsigned __int16 *a3)
{
  v5 = ot::Dns::ResourceRecord::CheckRecord(this, a2, *a3);
  if (!v5)
  {
    *a3 += ot::Dns::ResourceRecord::GetSize(this);
  }

  return v5;
}

uint64_t ot::Dns::ResourceRecord::CheckRecord(ot::Dns::ResourceRecord *this, const ot::Message *a2, unsigned __int16 a3)
{
  v4 = a3 + ot::Dns::ResourceRecord::GetSize(this);
  if (v4 > ot::Message::GetLength(a2))
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

uint64_t ot::Message::Read<ot::Dns::ResourceRecord>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0xAu);
}

{
  return ot::Message::Read<ot::Dns::ResourceRecord>(a1, a2, a3);
}

uint64_t ot::Dns::TxtEntry::Iterator::Init(ot::Dns::TxtEntry::Iterator *this, const unsigned __int8 *a2, __int16 a3)
{
  ot::Dns::TxtEntry::Iterator::SetTxtData(this, a2);
  ot::Dns::TxtEntry::Iterator::SetTxtDataLength(this, a3);
  return ot::Dns::TxtEntry::Iterator::SetTxtDataPosition(this, 0);
}

void *ot::Dns::TxtEntry::Iterator::SetTxtData(void *this, const unsigned __int8 *a2)
{
  *this = a2;
  return this;
}

{
  return ot::Dns::TxtEntry::Iterator::SetTxtData(this, a2);
}

uint64_t ot::Dns::TxtEntry::Iterator::SetTxtDataLength(uint64_t this, __int16 a2)
{
  *(this + 8) = a2;
  return this;
}

{
  return ot::Dns::TxtEntry::Iterator::SetTxtDataLength(this, a2);
}

uint64_t ot::Dns::TxtEntry::Iterator::SetTxtDataPosition(uint64_t this, __int16 a2)
{
  *(this + 10) = a2;
  return this;
}

{
  return ot::Dns::TxtEntry::Iterator::SetTxtDataPosition(this, a2);
}

uint64_t ot::Dns::TxtEntry::Iterator::GetNextEntry(ot::Dns::TxtEntry::Iterator *a1, uint64_t a2)
{
  v12 = 0;
  KeyBuffer = ot::Dns::TxtEntry::Iterator::GetKeyBuffer(a1);
  if (ot::Dns::TxtEntry::Iterator::GetTxtData(a1))
  {
    *a2 = KeyBuffer;
    do
    {
      TxtData = ot::Dns::TxtEntry::Iterator::GetTxtData(a1);
      v7 = (TxtData + ot::Dns::TxtEntry::Iterator::GetTxtDataPosition(a1));
      if (v7 >= ot::Dns::TxtEntry::Iterator::GetTxtDataEnd(a1))
      {
        return 23;
      }

      v11 = *v7;
      v8 = v7 + 1;
      if (&v8[v11] > ot::Dns::TxtEntry::Iterator::GetTxtDataEnd(a1))
      {
        return 6;
      }

      ot::Dns::TxtEntry::Iterator::IncreaseTxtDataPosition(a1, v11 + 1);
    }

    while (!v11 || *v8 == 61);
    for (i = 0; ; ++i)
    {
      if (i >= v11)
      {
        *(KeyBuffer + i) = 0;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        return v12;
      }

      if (v8[i] == 61)
      {
        v2 = i;
        v10 = i + 1;
        *(KeyBuffer + v2) = 0;
        *(a2 + 8) = &v8[v10];
        *(a2 + 16) = v11 - v10;
        return v12;
      }

      if (i >= 0x40uLL)
      {
        break;
      }

      *(KeyBuffer + i) = v8[i];
    }

    *a2 = 0;
    *(a2 + 8) = v8;
    *(a2 + 16) = v11;
  }

  else
  {
    return 6;
  }

  return v12;
}

uint64_t ot::Dns::TxtEntry::Iterator::GetKeyBuffer(ot::Dns::TxtEntry::Iterator *this)
{
  return this + 12;
}

{
  return ot::Dns::TxtEntry::Iterator::GetKeyBuffer(this);
}

uint64_t ot::Dns::TxtEntry::Iterator::GetTxtData(ot::Dns::TxtEntry::Iterator *this)
{
  return *this;
}

{
  return ot::Dns::TxtEntry::Iterator::GetTxtData(this);
}

uint64_t ot::Dns::TxtEntry::Iterator::GetTxtDataPosition(ot::Dns::TxtEntry::Iterator *this)
{
  return *(this + 5);
}

{
  return ot::Dns::TxtEntry::Iterator::GetTxtDataPosition(this);
}

uint64_t ot::Dns::TxtEntry::Iterator::GetTxtDataEnd(ot::Dns::TxtEntry::Iterator *this)
{
  TxtData = ot::Dns::TxtEntry::Iterator::GetTxtData(this);
  return TxtData + ot::Dns::TxtEntry::Iterator::GetTxtDataLength(this);
}

{
  return ot::Dns::TxtEntry::Iterator::GetTxtDataEnd(this);
}

uint64_t ot::Dns::TxtEntry::Iterator::IncreaseTxtDataPosition(uint64_t this, __int16 a2)
{
  *(this + 10) += a2;
  return this;
}

{
  return ot::Dns::TxtEntry::Iterator::IncreaseTxtDataPosition(this, a2);
}

uint64_t ot::Dns::TxtEntry::AppendTo(ot::Dns::TxtEntry *this, ot::Message *a2)
{
  v4[4] = this;
  v4[3] = a2;
  ot::Appender::Appender(v4, a2);
  return ot::Dns::TxtEntry::AppendTo(this, v4);
}

uint64_t ot::Dns::TxtEntry::AppendTo(ot::Dns::TxtEntry *this, ot::Message **a2)
{
  v11 = this;
  v10 = a2;
  appended = 0;
  v8 = 0;
  v7 = 61;
  if (*this)
  {
    v8 = ot::StringLength(*this, 0x100);
    if (v8)
    {
      if (*(this + 1))
      {
        if ((*(this + 8) + v8 + 1) > 0xFF)
        {
          return 7;
        }

        else
        {
          v5 = v8 + *(this + 8) + 1;
          v2 = ot::Appender::Append<unsigned char>(v10, &v5);
          appended = v2;
          if (!v2)
          {
            appended = ot::Appender::AppendBytes(v10, *this, v8);
            if (!appended)
            {
              appended = ot::Appender::Append<char>(v10, &v7);
              if (!appended)
              {
                return ot::Appender::AppendBytes(v10, *(this + 1), *(this + 8));
              }
            }
          }
        }
      }

      else
      {
        v6 = v8;
        appended = ot::Appender::Append<unsigned char>(v10, &v6);
        if (!appended)
        {
          return ot::Appender::AppendBytes(v10, *this, v8);
        }
      }
    }

    else
    {
      return 7;
    }
  }

  else if (*(this + 1) && *(this + 8))
  {
    return ot::Appender::AppendBytes(v10, *(this + 1), *(this + 8));
  }

  return appended;
}

uint64_t ot::Appender::Append<unsigned char>(ot::Message **a1, void *a2)
{
  return ot::Appender::AppendBytes(a1, a2, 1u);
}

{
  return ot::Appender::Append<unsigned char>(a1, a2);
}

uint64_t ot::Appender::Append<char>(ot::Message **a1, void *a2)
{
  return ot::Appender::AppendBytes(a1, a2, 1u);
}

{
  return ot::Appender::Append<char>(a1, a2);
}

uint64_t ot::Dns::TxtEntry::AppendEntries(ot::Dns::TxtEntry *this, const ot::Dns::TxtEntry *a2, ot::Message *a3, ot::Message *a4)
{
  v9 = this;
  v8 = a2;
  v7 = a3;
  ot::Appender::Appender(v6, a3);
  return ot::Dns::TxtEntry::AppendEntries(v9, v8, v6, v4);
}

uint64_t ot::Dns::TxtEntry::AppendEntries(ot::Dns::TxtEntry *this, const ot::Dns::TxtEntry *a2, ot::Appender *a3, ot::Appender *a4)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  memset(&v5[1], 0, 6);
  while (*&v5[1] < v7)
  {
    *&v5[3] = ot::Dns::TxtEntry::AppendTo((v8 + 24 * *&v5[1]), v6);
    if (*&v5[3])
    {
      return *&v5[3];
    }

    *&v5[1] = (*&v5[1] + 1);
  }

  if (!ot::Appender::GetAppendedLength(v6))
  {
    v5[0] = 0;
    *&v5[3] = ot::Appender::Append<unsigned char>(v6, v5);
  }

  return *&v5[3];
}

uint64_t ot::Dns::TxtEntry::AppendEntries(ot::Dns::TxtEntry *a1, unsigned __int16 a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  appended = 0;
  ot::MutableData<(ot::DataLengthType)1>::GetBytes(a3);
  v7 = v3;
  Length = ot::Data<(ot::DataLengthType)1>::GetLength(v10);
  ot::Appender::Appender(v8, v7, Length);
  appended = ot::Dns::TxtEntry::AppendEntries(v12, v11, v8, v5);
  if (!appended)
  {
    ot::Appender::GetAsData(v8, v10);
  }

  return appended;
}

void ot::MutableData<(ot::DataLengthType)1>::GetBytes(uint64_t a1)
{
  ot::Data<(ot::DataLengthType)1>::GetBytes(a1);
  ot::AsNonConst<unsigned char>();
}

{
  ot::MutableData<(ot::DataLengthType)1>::GetBytes(a1);
}

BOOL ot::Dns::AaaaRecord::IsValid(ot::Dns::AaaaRecord *this)
{
  v3 = 0;
  if (ot::Dns::ResourceRecord::GetType(this) == 28)
  {
    return ot::Dns::ResourceRecord::GetSize(this) == 26;
  }

  return v3;
}

BOOL ot::Dns::SigRecord::IsValid(ot::Dns::SigRecord *this)
{
  v3 = 0;
  if (ot::Dns::ResourceRecord::GetType(this) == 24)
  {
    return ot::Dns::ResourceRecord::GetLength(this) >= 0x12uLL;
  }

  return v3;
}

uint64_t ot::Dns::ResourceRecord::GetLength(ot::Dns::ResourceRecord *this)
{
  return ot::BigEndian::HostSwap16(*(this + 4));
}

{
  return ot::Dns::ResourceRecord::GetLength(this);
}

uint64_t ot::Dns::LeaseOption::InitAsShortVariant(ot::Dns::LeaseOption *this, unsigned int a2)
{
  ot::Dns::Option::SetOptionCode(this, 2u);
  ot::Dns::Option::SetOptionLength(this, 4u);
  return ot::Dns::LeaseOption::SetLeaseInterval(this, a2);
}

uint64_t ot::Dns::Option::SetOptionCode(ot::Dns::Option *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *this = result;
  return result;
}

{
  return ot::Dns::Option::SetOptionCode(this, a2);
}

uint64_t ot::Dns::Option::SetOptionLength(ot::Dns::Option *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::Dns::Option::SetOptionLength(this, a2);
}

uint64_t ot::Dns::LeaseOption::SetLeaseInterval(ot::Dns::LeaseOption *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::Dns::LeaseOption::SetLeaseInterval(this, a2);
}

uint64_t ot::Dns::LeaseOption::InitAsLongVariant(ot::Dns::LeaseOption *this, unsigned int a2, unsigned int a3)
{
  ot::Dns::Option::SetOptionCode(this, 2u);
  ot::Dns::Option::SetOptionLength(this, 8u);
  ot::Dns::LeaseOption::SetLeaseInterval(this, a2);
  return ot::Dns::LeaseOption::SetKeyLeaseInterval(this, a3);
}

uint64_t ot::Dns::LeaseOption::SetKeyLeaseInterval(ot::Dns::LeaseOption *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2);
  *(this + 2) = result;
  return result;
}

{
  return ot::Dns::LeaseOption::SetKeyLeaseInterval(this, a2);
}

BOOL ot::Dns::LeaseOption::IsValid(ot::Dns::LeaseOption *this)
{
  v4 = 0;
  if (ot::Dns::Option::GetOptionLength(this) == 4 || ot::Dns::Option::GetOptionLength(this) >= 8)
  {
    LeaseInterval = ot::Dns::LeaseOption::GetLeaseInterval(this);
    return LeaseInterval <= ot::Dns::LeaseOption::GetKeyLeaseInterval(this);
  }

  return v4;
}

uint64_t ot::Dns::Option::GetOptionLength(ot::Dns::Option *this)
{
  return ot::BigEndian::HostSwap16(*(this + 1));
}

{
  return ot::Dns::Option::GetOptionLength(this);
}

uint64_t ot::Dns::LeaseOption::GetLeaseInterval(ot::Dns::LeaseOption *this)
{
  return ot::BigEndian::HostSwap32(*(this + 1));
}

{
  return ot::Dns::LeaseOption::GetLeaseInterval(this);
}

uint64_t ot::Dns::LeaseOption::GetKeyLeaseInterval(ot::Dns::LeaseOption *this)
{
  if (ot::Dns::LeaseOption::IsShortVariant(this))
  {
    return ot::Dns::LeaseOption::GetLeaseInterval(this);
  }

  else
  {
    return ot::BigEndian::HostSwap32(*(this + 2));
  }
}

{
  return ot::Dns::LeaseOption::GetKeyLeaseInterval(this);
}

uint64_t ot::Dns::LeaseOption::ReadFrom(ot::Dns::LeaseOption *this, const ot::Message *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v11 = a3;
  if (a3 + a4 <= ot::Message::GetLength(a2))
  {
    v8 = v11 + a4;
    while (1)
    {
      if (v11 >= v8)
      {
        return 23;
      }

      v9 = ot::Message::Read(a2, v11, this, 4u);
      if (v9)
      {
        return v9;
      }

      if (v11 + ot::Dns::Option::GetSize(this) > v8)
      {
        return 6;
      }

      Size = ot::Dns::Option::GetSize(this);
      if (ot::Dns::Option::GetOptionCode(this) == 2)
      {
        break;
      }

      v11 += Size;
    }

    if (ot::Dns::Option::GetOptionLength(this) >= 4)
    {
      v4 = ot::Min<unsigned short>(Size, 0xCu);
      ot::Message::Read(a2, v11, this, v4);
      IgnoreError();
      if (!ot::Dns::LeaseOption::IsValid(this))
      {
        return 6;
      }
    }

    else
    {
      return 6;
    }
  }

  else
  {
    return 6;
  }

  return v9;
}

uint64_t ot::Dns::Option::GetSize(ot::Dns::Option *this)
{
  return ot::Dns::Option::GetOptionLength(this) + 4;
}

{
  return ot::Dns::Option::GetSize(this);
}

uint64_t ot::Dns::Option::GetOptionCode(ot::Dns::Option *this)
{
  return ot::BigEndian::HostSwap16(*this);
}

{
  return ot::Dns::Option::GetOptionCode(this);
}

uint64_t ot::Dns::PtrRecord::ReadPtrName(ot::Dns::PtrRecord *this, const ot::Message *a2, const ot::Message *a3, char *a4, char a5, char *a6, unsigned __int16 a7)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v11 = *a3 - 10;
  Name = ot::Dns::Name::ParseName(a2, a3, a3);
  if (!Name)
  {
    v9 = *v17;
    if (v9 <= v11 + ot::Dns::ResourceRecord::GetSize(this))
    {
      *v17 = v11 + 10;
      Name = ot::Dns::Name::ReadLabel(v18, v17, v16, &v15, v7);
      if (!Name && (!a6 || (Name = ot::Dns::Name::ReadName(v18, v17, a6, a7)) == 0))
      {
        *v17 = v11;
        return ot::Dns::ResourceRecord::SkipRecord(this, v18, v17);
      }
    }

    else
    {
      return 6;
    }
  }

  return Name;
}

uint64_t ot::Dns::TxtRecord::ReadTxtData(ot::Dns::TxtRecord *this, const ot::Message *a2, unsigned __int16 *a3, char *a4, unsigned __int16 *a5)
{
  v8 = *a3;
  Length = ot::Dns::ResourceRecord::GetLength(this);
  v6 = ot::Min<unsigned short>(Length, *a5);
  v12 = ot::Message::Read(a2, v8, a4, v6);
  if (!v12)
  {
    *a3 += ot::Dns::ResourceRecord::GetLength(this);
    if (ot::Dns::ResourceRecord::GetLength(this) <= *a5)
    {
      *a5 = ot::Dns::ResourceRecord::GetLength(this);
      if (!ot::Dns::TxtRecord::VerifyTxtData(a4, *a5, 1))
      {
        return 6;
      }
    }

    else
    {
      return 3;
    }
  }

  return v12;
}

BOOL ot::Dns::TxtRecord::VerifyTxtData(ot::Dns::TxtRecord *this, const unsigned __int8 *a2, char a3)
{
  v6 = 0;
  v5 = 0;
  if ((a3 & 1) != 0 || a2)
  {
    for (i = 0; i < a2; ++i)
    {
      if (v5)
      {
        --v5;
      }

      else
      {
        v5 = *(this + i);
      }
    }

    return v5 == 0;
  }

  return v6;
}

unsigned __int8 *ot::Dns::NsecRecord::TypeBitMap::AddType(unsigned __int8 *this, unsigned __int16 a2)
{
  v2 = this;
  if (*this == a2 >> 8)
  {
    v3 = a2 / 8;
    this[v3 + 2] |= 128 >> (a2 % 8);
    this = ot::Max<unsigned char>(this[1], v3 + 1);
    v2[1] = this;
  }

  return this;
}

BOOL ot::Dns::NsecRecord::TypeBitMap::ContainsType(ot::Dns::NsecRecord::TypeBitMap *this, unsigned __int16 a2)
{
  v4 = 0;
  v3 = a2 / 8;
  if (*this == a2 >> 8 && v3 < *(this + 1))
  {
    return (*(this + v3 + 2) & (128 >> (a2 % 8))) != 0;
  }

  return v4;
}

uint64_t ot::Dns::Name::LabelIterator::LabelIterator(uint64_t this, const ot::Message *a2, __int16 a3)
{
  *this = a2;
  *(this + 12) = a3;
  *(this + 14) = 0;
  *(this + 16) = a3;
  return this;
}

uint64_t ot::Dns::TxtEntry::Iterator::GetTxtDataLength(ot::Dns::TxtEntry::Iterator *this)
{
  return *(this + 4);
}

{
  return ot::Dns::TxtEntry::Iterator::GetTxtDataLength(this);
}

BOOL ot::Dns::LeaseOption::IsShortVariant(ot::Dns::LeaseOption *this)
{
  return ot::Dns::Option::GetOptionLength(this) == 4;
}

{
  return ot::Dns::LeaseOption::IsShortVariant(this);
}

ot::Ip6::Icmp *ot::Ip6::Icmp::Icmp(ot::Ip6::Icmp *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::OwnedPtr<ot::Message>::OwnedPtr(this);
  result = this;
  *(this + 4) = 1;
  *(this + 3) = 3;
  return result;
}

{
  ot::Ip6::Icmp::Icmp(this, a2);
  return this;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Ip6>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Ip6::Ip6>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Ip6>(a1);
}

uint64_t ot::LinkedList<ot::Ip6::Icmp::Handler>::Add(uint64_t *a1, uint64_t a2)
{
  v4 = 0;
  if (ot::LinkedList<ot::Ip6::Icmp::Handler>::Contains(a1, a2))
  {
    return 24;
  }

  else
  {
    ot::LinkedList<ot::Ip6::Icmp::Handler>::Push(a1, a2);
  }

  return v4;
}

{
  return ot::LinkedList<ot::Ip6::Icmp::Handler>::Add(a1, a2);
}

uint64_t ot::Ip6::Icmp::SendEchoRequest(ot::Ip6::Icmp *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3, unsigned __int16 a4)
{
  v21 = this;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = 0;
  ot::Ip6::MessageInfo::MessageInfo(v16);
  memcpy(v16, v19, sizeof(v16));
  ot::Clearable<ot::Ip6::Icmp::Header>::Clear(&v15);
  ot::Ip6::Icmp::Header::SetType(&v15, 128);
  ot::Ip6::Icmp::Header::SetId(&v15, v18);
  v4 = *(this + 4);
  *(this + 4) = v4 + 1;
  ot::Ip6::Icmp::Header::SetSequence(&v15, v4);
  v17 = ot::Message::Prepend<ot::Ip6::Icmp::Header>(v20, &v15);
  if (!v17)
  {
    ot::Message::SetOffset(v20, 0);
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Ip6>(this);
    v17 = ot::Ip6::Ip6::SendDatagram(v5, v20, v16, 0x3Au);
    if (!v17)
    {
      Sequence = ot::Ip6::Icmp::Header::GetSequence(&v15);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("Icmp6", "Sent echo request: (seq = %d)", v7, v8, v9, v10, v11, v12, Sequence);
    }
  }

  return v17;
}

void *ot::Clearable<ot::Ip6::Icmp::Header>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Ip6::Icmp::Header>(a1);
}

{
  return ot::Clearable<ot::Ip6::Icmp::Header>::Clear(a1);
}

_BYTE *ot::Ip6::Icmp::Header::SetType(_BYTE *result, char a2)
{
  *result = a2;
  return result;
}

{
  return ot::Ip6::Icmp::Header::SetType(result, a2);
}

uint64_t ot::Ip6::Icmp::Header::SetId(ot::Ip6::Icmp::Header *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 2) = result;
  return result;
}

{
  return ot::Ip6::Icmp::Header::SetId(this, a2);
}

uint64_t ot::Ip6::Icmp::Header::SetSequence(ot::Ip6::Icmp::Header *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 3) = result;
  return result;
}

{
  return ot::Ip6::Icmp::Header::SetSequence(this, a2);
}

uint64_t ot::Message::Prepend<ot::Ip6::Icmp::Header>(ot::Message *a1, char *a2)
{
  return ot::Message::PrependBytes(a1, a2, 8u);
}

{
  return ot::Message::Prepend<ot::Ip6::Icmp::Header>(a1, a2);
}

uint64_t ot::Ip6::Icmp::Header::GetSequence(ot::Ip6::Icmp::Header *this)
{
  return ot::BigEndian::HostSwap16(*(this + 3));
}

{
  return ot::Ip6::Icmp::Header::GetSequence(this);
}

uint64_t ot::Ip6::Icmp::SendError(ot::InstanceLocator *a1, char a2, char a3, ot::Ip6::MessageInfo *a4, const ot::Message *a5)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = a5;
  v8 = 0;
  v8 = ot::Ip6::Headers::ParseFrom(v7, a5);
  if (!v8)
  {
    return ot::Ip6::Icmp::SendError(a1, v12, v11, v10, v7, v10);
  }

  return v8;
}

uint64_t ot::Ip6::Icmp::SendError(ot::InstanceLocator *a1, char a2, char a3, ot::Ip6::MessageInfo *a4, ot::Ip6::Headers *a5, uint64_t a6)
{
  v32 = a1;
  v31 = a2;
  v30 = a3;
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v26 = 0;
  ot::Ip6::MessageInfo::MessageInfo(__dst);
  v24 = 0;
  ot::Message::Settings::Settings(v22, 1, 3);
  if (ot::Ip6::Headers::GetIpProto(v28) != 58 || (IcmpHeader = ot::Ip6::Headers::GetIcmpHeader(v28), !ot::Ip6::Icmp::Header::IsError(IcmpHeader)))
  {
    memcpy(__dst, v29, sizeof(__dst));
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Ip6>(a1);
    v24 = ot::Ip6::Ip6::NewMessage(v7, 0, v22);
    if (v24)
    {
      ot::Clearable<ot::Ip6::Icmp::Header>::Clear(&v23);
      ot::Ip6::Icmp::Header::SetType(&v23, v31);
      ot::Ip6::Icmp::Header::SetCode(&v23, v30);
      v26 = ot::Message::Append<ot::Ip6::Icmp::Header>(v24, &v23);
      if (!v26)
      {
        v20 = v24;
        ot::Ip6::Headers::GetIp6Header(v28);
        v26 = ot::Message::Append<ot::Ip6::Header>(v20, v8);
        if (!v26)
        {
          v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Ip6>(a1);
          v26 = ot::Ip6::Ip6::SendDatagram(v9, v24, __dst, 0x3Au);
          if (!v26)
          {
            v19 = v31;
            PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v29);
            ot::Ip6::Address::ToString(PeerAddr, v34);
            ot::String<(unsigned short)40>::AsCString(v34);
            SockAddr = ot::Ip6::MessageInfo::GetSockAddr(v29);
            ot::Ip6::Address::ToString(SockAddr, v33);
            ot::String<(unsigned short)40>::AsCString(v33);
            ot::Logger::LogAtLevel<(ot::LogLevel)3>("Icmp6", "Sent ICMPv6 Error, type: %u, code: %u, for ICMPv6 from peer: [%s] to peer [%s]", v12, v13, v14, v15, v16, v17, v19);
          }
        }
      }
    }

    else
    {
      v26 = 3;
    }
  }

  if (v26 && v24)
  {
    ot::Message::Free(v24);
  }

  return v26;
}

BOOL ot::Ip6::Icmp::Header::IsError(ot::Ip6::Icmp::Header *this)
{
  return *this < 0x80u;
}

{
  return ot::Ip6::Icmp::Header::IsError(this);
}

uint64_t ot::Ip6::Icmp::Header::SetCode(uint64_t result, char a2)
{
  *(result + 1) = a2;
  return result;
}

{
  return ot::Ip6::Icmp::Header::SetCode(result, a2);
}

uint64_t ot::Message::Append<ot::Ip6::Icmp::Header>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 8u);
}

{
  return ot::Message::Append<ot::Ip6::Icmp::Header>(a1, a2);
}

uint64_t ot::Message::Append<ot::Ip6::Header>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0x28u);
}

{
  return ot::Message::Append<ot::Ip6::Header>(a1, a2);
}

uint64_t ot::Ip6::Icmp::HandleMessage(ot::Ip6::Icmp *this, ot::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = 0;
  Offset = ot::Message::GetOffset(a2);
  v11 = ot::Message::Read<ot::Ip6::Icmp::Header>(a2, Offset, v10);
  if (!v11)
  {
    v11 = ot::Checksum::VerifyMessageChecksum(v13, v12, 0x3A);
    if (!v11 && (ot::Ip6::Icmp::Header::GetType(v10) != 128 || (v11 = ot::Ip6::Icmp::HandleEchoRequest(this, v13, v12)) == 0))
    {
      ot::Message::MoveOffset(v13, 8);
      v9[1] = this;
      v9[0] = ot::LinkedList<ot::Ip6::Icmp::Handler>::begin(this);
      v8 = ot::LinkedList<ot::Ip6::Icmp::Handler>::end();
      while (ot::ItemPtrIterator<ot::Ip6::Icmp::Handler,ot::LinkedList<ot::Ip6::Icmp::Handler>::Iterator>::operator!=(v9, &v8))
      {
        v7 = ot::ItemPtrIterator<ot::Ip6::Icmp::Handler,ot::LinkedList<ot::Ip6::Icmp::Handler>::Iterator>::operator*(v9);
        ot::Ip6::Icmp::Handler::HandleReceiveMessage(v7, v13, v12, v10);
        ot::ItemPtrIterator<ot::Ip6::Icmp::Handler,ot::LinkedList<ot::Ip6::Icmp::Handler>::Iterator>::operator++(v9);
      }
    }
  }

  return v11;
}

uint64_t ot::Message::Read<ot::Ip6::Icmp::Header>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 8u);
}

{
  return ot::Message::Read<ot::Ip6::Icmp::Header>(a1, a2, a3);
}

uint64_t ot::Ip6::Icmp::HandleEchoRequest(ot::Ip6::Icmp *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v44 = this;
  v43 = a2;
  v42 = a3;
  appended = 0;
  v39 = 0;
  ot::Ip6::MessageInfo::MessageInfo(v38);
  SockAddr = ot::Ip6::MessageInfo::GetSockAddr(v42);
  if (ot::Ip6::Icmp::ShouldHandleEchoRequest(this, SockAddr))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Icmp6", "Received Echo Request", v4, v5, v6, v7, v8, v9, v31);
    ot::Clearable<ot::Ip6::Icmp::Header>::Clear(&v40);
    ot::Ip6::Icmp::Header::SetType(&v40, 129);
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Ip6>(this);
    v39 = ot::Ip6::Ip6::NewMessage(v10, 0);
    if (v39)
    {
      v37 = ot::Message::GetOffset(v43) + 4;
      appended = ot::Message::AppendBytes(v39, &v40, 4u);
      if (!appended)
      {
        v35 = v39;
        v34 = v43;
        Length = ot::Message::GetLength(v43);
        appended = ot::Message::AppendBytesFromMessage(v35, v34, v37, Length - v37);
        if (!appended)
        {
          PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v42);
          ot::Ip6::MessageInfo::SetPeerAddr(v38, PeerAddr);
          v19 = ot::Ip6::MessageInfo::GetSockAddr(v42);
          if (!ot::Ip6::Address::IsMulticast(v19))
          {
            v20 = ot::Ip6::MessageInfo::GetSockAddr(v42);
            ot::Ip6::MessageInfo::SetSockAddr(v38, v20);
          }

          v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Ip6>(this);
          appended = ot::Ip6::Ip6::SendDatagram(v21, v39, v38, 0x3Au);
          if (!appended)
          {
            v33 = v39;
            Offset = ot::Message::GetOffset(v39);
            ot::Message::Read<ot::Ip6::Icmp::Header>(v33, Offset, &v40);
            IgnoreError();
            Sequence = ot::Ip6::Icmp::Header::GetSequence(&v40);
            ot::Logger::LogAtLevel<(ot::LogLevel)4>("Icmp6", "Sent Echo Reply (seq = %d)", v24, v25, v26, v27, v28, v29, Sequence);
          }
        }
      }
    }

    else
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("Icmp6", "Failed to allocate a new message", v11, v12, v13, v14, v15, v16, v32);
    }
  }

  if (appended && v39)
  {
    ot::Message::Free(v39);
  }

  return appended;
}

uint64_t ot::LinkedList<ot::Ip6::Icmp::Handler>::begin(uint64_t a1)
{
  Head = ot::LinkedList<ot::Ip6::Icmp::Handler>::GetHead(a1);
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v3, Head);
  return v3;
}

{
  return ot::LinkedList<ot::Ip6::Icmp::Handler>::begin(a1);
}

uint64_t ot::LinkedList<ot::Ip6::Icmp::Handler>::end()
{
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v1, 0);
  return v1;
}

{
  return ot::LinkedList<ot::Ip6::Icmp::Handler>::end();
}

BOOL ot::ItemPtrIterator<ot::Ip6::Icmp::Handler,ot::LinkedList<ot::Ip6::Icmp::Handler>::Iterator>::operator!=(void *a1, void *a2)
{
  return *a1 != *a2;
}

{
  return ot::ItemPtrIterator<ot::Ip6::Icmp::Handler,ot::LinkedList<ot::Ip6::Icmp::Handler>::Iterator>::operator!=(a1, a2);
}

uint64_t ot::ItemPtrIterator<ot::Ip6::Icmp::Handler,ot::LinkedList<ot::Ip6::Icmp::Handler>::Iterator>::operator*(uint64_t a1)
{
  return *a1;
}

{
  return ot::ItemPtrIterator<ot::Ip6::Icmp::Handler,ot::LinkedList<ot::Ip6::Icmp::Handler>::Iterator>::operator*(a1);
}

uint64_t ot::Ip6::Icmp::Handler::HandleReceiveMessage(ot::Ip6::Icmp::Handler *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3, const ot::Ip6::Icmp::Header *a4)
{
  return (*this)(*(this + 1), a2, a3, a4);
}

{
  return ot::Ip6::Icmp::Handler::HandleReceiveMessage(this, a2, a3, a4);
}

uint64_t ot::ItemPtrIterator<ot::Ip6::Icmp::Handler,ot::LinkedList<ot::Ip6::Icmp::Handler>::Iterator>::operator++(uint64_t *a1)
{
  return ot::LinkedList<ot::Ip6::Icmp::Handler>::Iterator::Advance(a1);
}

{
  return ot::ItemPtrIterator<ot::Ip6::Icmp::Handler,ot::LinkedList<ot::Ip6::Icmp::Handler>::Iterator>::operator++(a1);
}

BOOL ot::Ip6::Icmp::ShouldHandleEchoRequest(ot::Ip6::Icmp *this, const ot::Ip6::Address *a2)
{
  IsMulticast = 0;
  v4 = *(this + 3);
  if (v4)
  {
    switch(v4)
    {
      case 1:
        IsMulticast = !ot::Ip6::Address::IsMulticast(a2);
        break;
      case 2:
        IsMulticast = ot::Ip6::Address::IsMulticast(a2);
        break;
      case 3:
        IsMulticast = 1;
        break;
      case 4:
        Iid = ot::Ip6::Address::GetIid(a2);
        IsMulticast = ot::Ip6::InterfaceIdentifier::IsLocator(Iid);
        break;
    }
  }

  else
  {
    return 0;
  }

  return IsMulticast;
}

BOOL ot::LinkedList<ot::Ip6::Icmp::Handler>::Contains(uint64_t *a1, uint64_t a2)
{
  v3[2] = a1;
  v3[1] = a2;
  v3[0] = 0;
  return ot::LinkedList<ot::Ip6::Icmp::Handler>::Find(a1, a2, v3) == 0;
}

{
  return ot::LinkedList<ot::Ip6::Icmp::Handler>::Contains(a1, a2);
}

uint64_t ot::LinkedList<ot::Ip6::Icmp::Handler>::Push(uint64_t *a1, uint64_t a2)
{
  result = ot::LinkedListEntry<ot::Ip6::Icmp::Handler>::SetNext(a2, *a1);
  *a1 = a2;
  return result;
}

{
  return ot::LinkedList<ot::Ip6::Icmp::Handler>::Push(a1, a2);
}

uint64_t ot::LinkedList<ot::Ip6::Icmp::Handler>::Find(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = 23;
  *a3 = 0;
  for (i = *a1; i; i = ot::LinkedListEntry<ot::Ip6::Icmp::Handler>::GetNext(i))
  {
    if (i == a2)
    {
      return 0;
    }

    *a3 = i;
  }

  return v5;
}

{
  return ot::LinkedList<ot::Ip6::Icmp::Handler>::Find(a1, a2, a3);
}

uint64_t ot::LinkedListEntry<ot::Ip6::Icmp::Handler>::GetNext(uint64_t a1)
{
  return *(a1 + 16);
}

{
  return *(a1 + 16);
}

{
  return ot::LinkedListEntry<ot::Ip6::Icmp::Handler>::GetNext(a1);
}

{
  return ot::LinkedListEntry<ot::Ip6::Icmp::Handler>::GetNext(a1);
}

uint64_t ot::LinkedListEntry<ot::Ip6::Icmp::Handler>::SetNext(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  return result;
}

{
  return ot::LinkedListEntry<ot::Ip6::Icmp::Handler>::SetNext(result, a2);
}

void *ot::ClearAllBytes<ot::Ip6::Icmp::Header>(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Ip6::Icmp::Header>(result);
}

uint64_t ot::LinkedList<ot::Ip6::Icmp::Handler>::GetHead(uint64_t a1)
{
  return *a1;
}

{
  return ot::LinkedList<ot::Ip6::Icmp::Handler>::GetHead(a1);
}

uint64_t ot::LinkedList<ot::Ip6::Icmp::Handler>::Iterator::Advance(uint64_t *a1)
{
  result = ot::LinkedListEntry<ot::Ip6::Icmp::Handler>::GetNext(*a1);
  *a1 = result;
  return result;
}

{
  return ot::LinkedList<ot::Ip6::Icmp::Handler>::Iterator::Advance(a1);
}

ot::Ip6::Ip6 *ot::Ip6::Ip6::Ip6(ot::Ip6::Ip6 *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 0;
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 1);
  *(this + 3) = 0;
  *(this + 4) = 0;
  ot::PriorityQueue::PriorityQueue((this + 40));
  ot::TaskletIn<ot::Ip6::Ip6,&ot::Ip6::Ip6::HandleSendQueue>::TaskletIn((this + 72), a2);
  ot::Ip6::Icmp::Icmp((this + 88), a2);
  ot::Ip6::Udp::Udp((this + 104), a2);
  ot::Ip6::Mpl::Mpl((this + 136), a2);
  return this;
}

{
  ot::Ip6::Ip6::Ip6(this, a2);
  return this;
}

void ot::Ip6::Ip6::HandleSendQueue(ot::Ip6::Ip6 *this)
{
  v5 = this;
  v4 = 0;
  while (1)
  {
    ot::PriorityQueue::GetHead((this + 40));
    v4 = v1;
    if (!v1)
    {
      break;
    }

    ot::PriorityQueue::Dequeue((this + 40), v4);
    ot::OwnedPtr<ot::Message>::OwnedPtr(&v3, v4);
    ot::Ip6::Ip6::HandleDatagram(this, &v3, 0);
    IgnoreError();
    ot::OwnedPtr<ot::Message>::~OwnedPtr(&v3);
  }
}

ot::PriorityQueue *ot::PriorityQueue::PriorityQueue(ot::PriorityQueue *this)
{
  ot::PriorityQueue::PriorityQueue(this);
  return this;
}

{
  ot::Clearable<ot::PriorityQueue>::Clear(this);
  return this;
}

ot::InstanceLocator *ot::TaskletIn<ot::Ip6::Ip6,&ot::Ip6::Ip6::HandleSendQueue>::TaskletIn(ot::InstanceLocator *a1, ot::Instance *a2)
{
  ot::TaskletIn<ot::Ip6::Ip6,&ot::Ip6::Ip6::HandleSendQueue>::TaskletIn(a1, a2);
  return a1;
}

{
  ot::Tasklet::Tasklet(a1, a2, ot::TaskletIn<ot::Ip6::Ip6,&ot::Ip6::Ip6::HandleSendQueue>::HandleTasklet);
  return a1;
}

ot::Message *ot::Ip6::Ip6::NewMessageFromData(ot::Ip6::Ip6 *this, char *a2, unsigned __int16 a3, const ot::Message::Settings *a4)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = 0;
  v8 = *a4;
  if (a2)
  {
    if (v11 >= 0x28uLL && ot::Ip6::Header::IsValid(v12) && ot::Ip6::Header::GetPayloadLength(v12) + 40 == v11)
    {
      Dscp = ot::Ip6::Header::GetDscp(v12);
      HIBYTE(v8) = ot::Ip6::Ip6::DscpToPriority(Dscp);
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(this);
      v9 = ot::MessagePool::Allocate(v5, 0, 0, &v8);
      if (v9)
      {
        if (ot::Message::AppendBytes(v9, v12, v11))
        {
          ot::Message::Free(v9);
          return 0;
        }
      }
    }
  }

  return v9;
}

uint64_t ot::Ip6::Ip6::DscpToPriority(ot::Ip6::Ip6 *this)
{
  v2 = this & 0x38;
  if ((this & 0x38) == 0)
  {
    return 1;
  }

  switch(v2)
  {
    case 8:
    case 16:
      return 0;
    case 24:
      return 1;
    case 32:
    case 40:
    case 48:
    case 56:
      return 2;
    default:
      return 1;
  }
}

uint64_t ot::Ip6::Header::GetDscp(ot::Ip6::Header *this)
{
  return (ot::BigEndian::HostSwap16(*this) & 0xFC0) >> 6;
}

{
  return ot::Ip6::Header::GetDscp(this);
}

uint64_t ot::Ip6::Ip6::PriorityToDscp(char a1)
{
  v2 = 0;
  if (a1)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 32;
      }

      if (a1 != 3)
      {
        return v2;
      }
    }

    return 0;
  }

  else
  {
    return 8;
  }
}

uint64_t ot::Ip6::Ip6::SetLargeScopeMulticastReceiveDatagramCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t ot::Ip6::Ip6::AddMplOption(ot::Ip6::Ip6 *this, ot::Message *a2, ot::Ip6::Header *a3)
{
  v20 = this;
  v19 = a2;
  v18 = a3;
  v17 = 0;
  NextHeader = ot::Ip6::Header::GetNextHeader(a3);
  ot::Ip6::ExtensionHeader::SetNextHeader(v16, NextHeader);
  ot::Ip6::ExtensionHeader::SetLength(v16, 0);
  Source = ot::Ip6::Header::GetSource(v18);
  ot::Ip6::Mpl::InitOption((this + 136), v15, Source);
  Size = ot::Ip6::Option::GetSize(v15);
  if (ot::Ip6::PadOption::InitToPadHeaderWithSize(v14, Size + 2) || (v12 = v19, v6 = ot::Ip6::Option::GetSize(v14), (v17 = ot::Message::PrependBytes(v12, v14, v6)) == 0))
  {
    v11 = v19;
    v7 = ot::Ip6::Option::GetSize(v15);
    v17 = ot::Message::PrependBytes(v11, v15, v7);
    if (!v17)
    {
      v17 = ot::Message::Prepend<ot::Ip6::HopByHopHeader>(v19, v16);
      if (!v17)
      {
        v10 = v18;
        PayloadLength = ot::Ip6::Header::GetPayloadLength(v18);
        ot::Ip6::Header::SetPayloadLength(v10, PayloadLength + 8);
        ot::Ip6::Header::SetNextHeader(v18, 0);
      }
    }
  }

  return v17;
}

_BYTE *ot::Ip6::ExtensionHeader::SetNextHeader(_BYTE *this, char a2)
{
  *this = a2;
  return this;
}

{
  return ot::Ip6::ExtensionHeader::SetNextHeader(this, a2);
}

uint64_t ot::Ip6::ExtensionHeader::SetLength(uint64_t this, char a2)
{
  *(this + 1) = a2;
  return this;
}

{
  return ot::Ip6::ExtensionHeader::SetLength(this, a2);
}

uint64_t ot::Message::Prepend<ot::Ip6::HopByHopHeader>(ot::Message *a1, char *a2)
{
  return ot::Message::PrependBytes(a1, a2, 2u);
}

{
  return ot::Message::Prepend<ot::Ip6::HopByHopHeader>(a1, a2);
}

uint64_t ot::Ip6::Header::SetPayloadLength(ot::Ip6::Header *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 2) = result;
  return result;
}

{
  return ot::Ip6::Header::SetPayloadLength(this, a2);
}

uint64_t ot::Ip6::Header::SetNextHeader(uint64_t this, char a2)
{
  *(this + 6) = a2;
  return this;
}

{
  return ot::Ip6::Header::SetNextHeader(this, a2);
}

uint64_t ot::Ip6::Ip6::PrepareMulticastToLargerThanRealmLocal(ot::Ip6::Ip6 *this, ot::Message *a2, const ot::Ip6::Header *a3)
{
  v24 = this;
  v23 = a2;
  v22 = a3;
  v21 = 0;
  Destination = ot::Ip6::Header::GetDestination(a3);
  if (ot::Ip6::Address::IsMulticastLargerThanRealmLocal(Destination))
  {
    v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    v4 = ot::Ip6::Header::GetDestination(v22);
    if (ot::ChildTable::HasSleepyChildWithAddress(v16, v4))
    {
      v18 = ot::Message::Clone(v23);
      if (v18)
      {
        ot::Ip6::Ip6::EnqueueDatagram(this, v18);
      }

      else
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)2>("Ip6", "Failed to clone mcast message for indirect tx to sleepy children", v5, v6, v7, v8, v9, v10, v15);
      }
    }
  }

  ot::Ip6::Header::InitVersionTrafficClassFlow(v20);
  ot::Ip6::Header::SetHopLimit(v20, 64);
  PayloadLength = ot::Ip6::Header::GetPayloadLength(v22);
  ot::Ip6::Header::SetPayloadLength(v20, PayloadLength + 40);
  v12 = ot::Ip6::Header::GetDestination(v20);
  ot::Ip6::Address::SetToRealmLocalAllMplForwarders(v12);
  ot::Ip6::Header::SetNextHeader(v20, 41);
  v13 = ot::Ip6::Header::GetDestination(v20);
  v19 = ot::Ip6::Ip6::SelectSourceAddress(this, v13);
  if (v19)
  {
    ot::Ip6::Header::SetSource(v20, v19);
    v21 = ot::Ip6::Ip6::AddMplOption(this, v23, v20);
    if (!v21)
    {
      return ot::Message::Prepend<ot::Ip6::Header>(v23, v20);
    }
  }

  else
  {
    return 20;
  }

  return v21;
}

ot::Message *ot::Message::Clone(ot::Message *this)
{
  Length = ot::Message::GetLength(this);
  return ot::Message::Clone(this, Length);
}

{
  return ot::Message::Clone(this);
}

uint64_t ot::Ip6::Header::InitVersionTrafficClassFlow(ot::Ip6::Header *this)
{
  return ot::Ip6::Header::SetVerionTrafficClassFlow(this, 0x60000000u);
}

{
  return ot::Ip6::Header::InitVersionTrafficClassFlow(this);
}

uint64_t ot::Ip6::Header::SetHopLimit(uint64_t this, char a2)
{
  *(this + 7) = a2;
  return this;
}

{
  return ot::Ip6::Header::SetHopLimit(this, a2);
}

uint64_t ot::Ip6::Ip6::SelectSourceAddress(ot::Ip6::Ip6 *this, const ot::Ip6::Address *a2)
{
  v30 = this;
  v29 = a2;
  Scope = ot::Ip6::Address::GetScope(a2);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  IsRoutingLocator = ot::Mle::Mle::IsRoutingLocator(v2, v29);
  v26 = 0;
  v25 = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  ot::Ip6::Netif::GetUnicastAddresses(v3);
  v24[1] = v4;
  v24[0] = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::begin(v4);
  v23 = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::end();
  while (ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator!=(v24, &v23))
  {
    v22 = ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator*(v24);
    v21 = 0;
    v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    Address = ot::Ip6::Netif::UnicastAddress::GetAddress(v22);
    if (!ot::Mle::Mle::IsAnycastLocator(v17, Address))
    {
      v16 = v29;
      v6 = ot::Ip6::Netif::UnicastAddress::GetAddress(v22);
      v20 = ot::Ip6::Address::PrefixMatch(v16, v6);
      if (v20 < *(v22 + 16))
      {
        v19 = Scope;
      }

      else
      {
        v20 = *(v22 + 16);
        v19 = ot::Ip6::Netif::UnicastAddress::GetScope(v22);
      }

      v7 = ot::Ip6::Netif::UnicastAddress::GetAddress(v22);
      if (ot::Equatable<ot::Ip6::Address>::operator==(v7, v29))
      {
        v26 = v22;
        break;
      }

      if (v26)
      {
        v15 = ot::Ip6::Netif::UnicastAddress::GetScope(v22);
        if (v15 < ot::Ip6::Netif::UnicastAddress::GetScope(v26))
        {
          v21 = ot::Ip6::Netif::UnicastAddress::GetScope(v22) >= v19;
        }

        else
        {
          v14 = ot::Ip6::Netif::UnicastAddress::GetScope(v22);
          v8 = ot::Ip6::Netif::UnicastAddress::GetScope(v26);
          if (v14 <= v8)
          {
            if ((*(v22 + 9) & 1) == (*(v26 + 9) & 1))
            {
              if (v20 <= v25)
              {
                if (v20 == v25)
                {
                  v13 = IsRoutingLocator;
                  v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
                  v9 = ot::Ip6::Netif::UnicastAddress::GetAddress(v22);
                  if (v13 == ot::Mle::Mle::IsRoutingLocator(v12, v9))
                  {
                    v21 = 1;
                  }
                }
              }

              else
              {
                v21 = 1;
              }
            }

            else
            {
              v21 = *(v22 + 9) & 1;
            }
          }

          else
          {
            v21 = ot::Ip6::Netif::UnicastAddress::GetScope(v26) < v19;
          }
        }
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        v26 = v22;
        v25 = v20;
        if (v20 >= *(v22 + 16))
        {
          Scope = ot::Ip6::Netif::UnicastAddress::GetScope(v26);
        }
      }
    }

    ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator++(v24);
  }

  if (v26)
  {
    return ot::Ip6::Netif::UnicastAddress::GetAddress(v26);
  }

  else
  {
    return 0;
  }
}

__n128 ot::Ip6::Header::SetSource(ot::Ip6::Header *this, __n128 *a2)
{
  result = *a2;
  *(this + 8) = *a2;
  return result;
}

uint64_t ot::Message::Prepend<ot::Ip6::Header>(ot::Message *a1, char *a2)
{
  return ot::Message::PrependBytes(a1, a2, 0x28u);
}

{
  return ot::Message::Prepend<ot::Ip6::Header>(a1, a2);
}

uint64_t ot::Ip6::Ip6::InsertMplOption(ot::Ip6::Ip6 *this, ot::Message *a2, ot::Ip6::Header *a3)
{
  v29 = this;
  v28 = a2;
  v27 = a3;
  inserted = 0;
  Destination = ot::Ip6::Header::GetDestination(a3);
  if (ot::Ip6::Address::IsMulticast(Destination))
  {
    v4 = ot::Ip6::Header::GetDestination(v27);
    if (ot::Ip6::Address::GetScope(v4) >= 3)
    {
      v5 = ot::Ip6::Header::GetDestination(v27);
      if (!ot::Ip6::Address::IsRealmLocalMulticast(v5))
      {
        v12 = ot::Ip6::Header::GetDestination(v27);
        if (ot::Ip6::Address::IsMulticastLargerThanRealmLocal(v12))
        {
          if (ot::Ip6::Header::GetHopLimit(v27) <= 1)
          {
            return 2;
          }

          *v21 = ot::Ip6::Header::GetHopLimit(v27) - 1;
          ot::Message::Write<int>(v28, 7u, v21);
        }

        return ot::Ip6::Ip6::PrepareMulticastToLargerThanRealmLocal(this, v28, v27);
      }

      ot::Message::RemoveHeader(v28, 0x28u);
      if (ot::Ip6::Header::GetNextHeader(v27))
      {
        inserted = ot::Ip6::Ip6::AddMplOption(this, v28, v27);
        if (inserted)
        {
          return inserted;
        }
      }

      else
      {
        Size = 0;
        inserted = ot::Message::Read<ot::Ip6::HopByHopHeader>(v28, 0, v25);
        if (inserted)
        {
          return inserted;
        }

        Size = ot::Ip6::ExtensionHeader::GetSize(v25);
        if (Size > ot::Ip6::Header::GetPayloadLength(v27))
        {
          return 6;
        }

        Length = ot::Ip6::ExtensionHeader::GetLength(v25);
        ot::Ip6::ExtensionHeader::SetLength(v25, Length + 1);
        ot::Message::Write<ot::Ip6::HopByHopHeader>(v28, 0, v25);
        inserted = ot::Message::InsertHeader(v28, Size, 8u);
        if (inserted)
        {
          return inserted;
        }

        Source = ot::Ip6::Header::GetSource(v27);
        ot::Ip6::Mpl::InitOption((this + 136), v23, Source);
        v19 = v28;
        v18 = Size;
        v8 = ot::Ip6::Option::GetSize(v23);
        ot::Message::WriteBytes(v19, v18, v23, v8);
        v9 = ot::Ip6::Option::GetSize(v23);
        if (!ot::Ip6::PadOption::InitToPadHeaderWithSize(v22, v9))
        {
          v17 = v28;
          v15 = Size;
          v16 = v15 + ot::Ip6::Option::GetSize(v23);
          v10 = ot::Ip6::Option::GetSize(v22);
          ot::Message::WriteBytes(v17, v16, v22, v10);
        }

        v14 = v27;
        PayloadLength = ot::Ip6::Header::GetPayloadLength(v27);
        ot::Ip6::Header::SetPayloadLength(v14, PayloadLength + 8);
      }

      return ot::Message::Prepend<ot::Ip6::Header>(v28, v27);
    }
  }

  return inserted;
}

uint64_t ot::Message::Read<ot::Ip6::HopByHopHeader>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 2u);
}

{
  return ot::Message::Read<ot::Ip6::HopByHopHeader>(a1, a2, a3);
}

uint64_t ot::Ip6::ExtensionHeader::GetSize(ot::Ip6::ExtensionHeader *this)
{
  return (8 * (*(this + 1) + 1));
}

{
  return ot::Ip6::ExtensionHeader::GetSize(this);
}

uint64_t ot::Ip6::ExtensionHeader::GetLength(ot::Ip6::ExtensionHeader *this)
{
  return *(this + 1);
}

{
  return ot::Ip6::ExtensionHeader::GetLength(this);
}

uint64_t ot::Message::Write<ot::Ip6::HopByHopHeader>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::WriteBytes(a1, a2, a3, 2u);
}

{
  return ot::Message::Write<ot::Ip6::HopByHopHeader>(a1, a2, a3);
}

uint64_t ot::Ip6::Header::GetHopLimit(ot::Ip6::Header *this)
{
  return *(this + 7);
}

{
  return ot::Ip6::Header::GetHopLimit(this);
}

uint64_t ot::Message::Write<int>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::WriteBytes(a1, a2, a3, 4u);
}

{
  return ot::Message::Write<int>(a1, a2, a3);
}

uint64_t ot::Ip6::Ip6::RemoveMplOption(ot::Ip6::Ip6 *this, ot::Message *a2)
{
  v25 = this;
  v24 = a2;
  HopByHopHeader = 0;
  v22 = 0;
  ot::OffsetRange::InitFromMessageFullLength(&v18, a2);
  ot::Message::Read<ot::Ip6::Header>(v24, &v18, v21);
  IgnoreError();
  ot::OffsetRange::AdvanceOffset(&v18, 0x28u);
  if (!ot::Ip6::Header::GetNextHeader(v21))
  {
    HopByHopHeader = ot::Ip6::Ip6::ReadHopByHopHeader(this, v24, &v18, v20);
    if (!HopByHopHeader)
    {
      while (!ot::OffsetRange::IsEmpty(&v18))
      {
        HopByHopHeader = ot::Ip6::Option::ParseFrom(v19, v24, &v18);
        if (HopByHopHeader)
        {
          return HopByHopHeader;
        }

        if (!ot::Ip6::Option::IsPadding(v19))
        {
          if (ot::Ip6::Option::GetType(v19) == 109)
          {
            if (v22)
            {
              return 6;
            }

            v17 = v18;
            Size = ot::Ip6::Option::GetSize(v19);
            ot::OffsetRange::ShrinkLength(&v17, Size);
            if (ot::Ip6::Option::GetSize(v19) > 6uLL)
            {
              return 6;
            }

            if (ot::OffsetRange::GetOffset(&v17) != 42 || ot::Ip6::ExtensionHeader::GetLength(v20))
            {
              v14 = ot::OffsetRange::GetOffset(&v17) + 8;
              if (v14 == ot::OffsetRange::GetEndOffset(&v18))
              {
                v22 = 1;
              }
            }

            else
            {
              v22 = 2;
            }
          }

          else if (v22)
          {
            v22 = 3;
          }
        }

        v3 = ot::Ip6::Option::GetSize(v19);
        ot::OffsetRange::AdvanceOffset(&v18, v3);
      }

      if (v22)
      {
        if (v22 != 2 && v22 != 1)
        {
          if (v22 == 3)
          {
            Length = ot::OffsetRange::GetLength(&v17);
            ot::Ip6::PadOption::InitForPadSize(v16, Length);
            v12 = v24;
            Offset = ot::OffsetRange::GetOffset(&v17);
            v9 = ot::Ip6::Option::GetSize(v16);
            ot::Message::WriteBytes(v12, Offset, v16, v9);
          }
        }

        else
        {
          v13 = v24;
          EndOffset = ot::OffsetRange::GetEndOffset(&v18);
          ot::Message::RemoveHeader(v13, EndOffset - 8, 8u);
          if (v22 == 2)
          {
            NextHeader = ot::Ip6::ExtensionHeader::GetNextHeader(v20);
            ot::Ip6::Header::SetNextHeader(v21, NextHeader);
          }

          else
          {
            v6 = ot::Ip6::ExtensionHeader::GetLength(v20);
            ot::Ip6::ExtensionHeader::SetLength(v20, v6 - 1);
            ot::Message::Write<ot::Ip6::HopByHopHeader>(v24, 0x28u, v20);
          }

          PayloadLength = ot::Ip6::Header::GetPayloadLength(v21);
          ot::Ip6::Header::SetPayloadLength(v21, PayloadLength - 8);
          ot::Message::Write<ot::Ip6::Header>(v24, 0, v21);
        }
      }
    }
  }

  return HopByHopHeader;
}

uint64_t ot::Message::Read<ot::Ip6::Header>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x28u);
}

{
  return ot::Message::Read<ot::Ip6::Header>(a1, a2, a3);
}

uint64_t ot::Ip6::Ip6::ReadHopByHopHeader(uint64_t a1, ot::Message *a2, const ot::OffsetRange *a3, char *a4)
{
  v7 = ot::Message::Read<ot::Ip6::HopByHopHeader>(a2, a3, a4);
  if (!v7)
  {
    Size = ot::Ip6::ExtensionHeader::GetSize(a4);
    if (ot::OffsetRange::Contains(a3, Size))
    {
      v5 = ot::Ip6::ExtensionHeader::GetSize(a4);
      ot::OffsetRange::ShrinkLength(a3, v5);
      ot::OffsetRange::AdvanceOffset(a3, 2u);
    }

    else
    {
      return 6;
    }
  }

  return v7;
}

BOOL ot::Ip6::Option::IsPadding(ot::Ip6::Option *this)
{
  v2 = 1;
  if (*this)
  {
    return *this == 1;
  }

  return v2;
}

{
  return ot::Ip6::Option::IsPadding(this);
}

uint64_t ot::Ip6::Option::GetType(ot::Ip6::Option *this)
{
  return *this;
}

{
  return ot::Ip6::Option::GetType(this);
}

uint64_t ot::Ip6::ExtensionHeader::GetNextHeader(ot::Ip6::ExtensionHeader *this)
{
  return *this;
}

{
  return ot::Ip6::ExtensionHeader::GetNextHeader(this);
}

uint64_t ot::Message::Write<ot::Ip6::Header>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::WriteBytes(a1, a2, a3, 0x28u);
}

{
  return ot::Message::Write<ot::Ip6::Header>(a1, a2, a3);
}

uint64_t ot::Ip6::Ip6::SendDatagram(ot::Ip6::Ip6 *this, ot::Message *a2, ot::Ip6::MessageInfo *a3, unsigned __int8 a4)
{
  v34 = this;
  v33 = a2;
  v32 = a3;
  v31 = a4;
  v30 = 0;
  Length = ot::Message::GetLength(a2);
  if (v31 == 17 && (v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this), SockAddr = ot::Ip6::MessageInfo::GetSockAddr(v32), PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v32), PeerPort = ot::Ip6::MessageInfo::GetPeerPort(v32), ot::Tmf::Agent::IsTmfMessage(v24, SockAddr, PeerAddr, PeerPort)))
  {
    Priority = ot::Message::GetPriority(v33);
    v28 = ot::Tmf::Agent::PriorityToDscp(Priority);
  }

  else
  {
    v6 = ot::Message::GetPriority(v33);
    v28 = ot::Ip6::Ip6::PriorityToDscp(v6);
  }

  ot::Ip6::Header::InitVersionTrafficClassFlow(v29);
  ot::Ip6::Header::SetDscp(v29, v28);
  Ecn = ot::Ip6::MessageInfo::GetEcn(v32);
  ot::Ip6::Header::SetEcn(v29, Ecn);
  ot::Ip6::Header::SetPayloadLength(v29, Length);
  ot::Ip6::Header::SetNextHeader(v29, v31);
  if (ot::Ip6::MessageInfo::GetHopLimit(v32) || (ot::Ip6::MessageInfo::ShouldAllowZeroHopLimit(v32) & 1) != 0)
  {
    HopLimit = ot::Ip6::MessageInfo::GetHopLimit(v32);
    ot::Ip6::Header::SetHopLimit(v29, HopLimit);
  }

  else
  {
    ot::Ip6::Header::SetHopLimit(v29, 64);
  }

  v9 = ot::Ip6::MessageInfo::GetSockAddr(v32);
  if (ot::Ip6::Address::IsUnspecified(v9) || (v10 = ot::Ip6::MessageInfo::GetSockAddr(v32), ot::Ip6::Address::IsMulticast(v10)))
  {
    v11 = ot::Ip6::MessageInfo::GetPeerAddr(v32);
    v26 = ot::Ip6::Ip6::SelectSourceAddress(this, v11);
    if (!v26)
    {
      return 20;
    }

    ot::Ip6::Header::SetSource(v29, v26);
  }

  else
  {
    v12 = ot::Ip6::MessageInfo::GetSockAddr(v32);
    ot::Ip6::Header::SetSource(v29, v12);
  }

  v13 = ot::Ip6::MessageInfo::GetPeerAddr(v32);
  ot::Ip6::Header::SetDestination(v29, v13);
  v14 = ot::Ip6::MessageInfo::GetPeerAddr(v32);
  if (!ot::Ip6::Address::IsRealmLocalMulticast(v14) || (v30 = ot::Ip6::Ip6::AddMplOption(this, v33, v29)) == 0)
  {
    v30 = ot::Message::Prepend<ot::Ip6::Header>(v33, v29);
    if (!v30)
    {
      v21 = v33;
      Source = ot::Ip6::Header::GetSource(v29);
      Destination = ot::Ip6::Header::GetDestination(v29);
      ot::Checksum::UpdateMessageChecksum(v21, Source, Destination, v31);
      v16 = ot::Ip6::MessageInfo::GetPeerAddr(v32);
      if (!ot::Ip6::Address::IsMulticastLargerThanRealmLocal(v16) || (v30 = ot::Ip6::Ip6::PrepareMulticastToLargerThanRealmLocal(this, v33, v29)) == 0)
      {
        v19 = v33;
        MulticastLoop = ot::Ip6::MessageInfo::GetMulticastLoop(v32);
        ot::Message::SetMulticastLoop(v19, MulticastLoop);
        if (ot::Message::GetLength(v33) <= 1280)
        {
          ot::Ip6::Ip6::EnqueueDatagram(this, v33);
        }

        else
        {
          return ot::Ip6::Ip6::FragmentDatagram(this, v33);
        }
      }
    }
  }

  return v30;
}

uint64_t ot::Ip6::Header::SetDscp(ot::Ip6::Header *this, unsigned __int8 a2)
{
  v2 = ot::BigEndian::HostSwap16(*this);
  result = ot::BigEndian::HostSwap16((v2 & 0xF03F | (a2 << 6) & 0xFC0u));
  *this = result;
  return result;
}

{
  return ot::Ip6::Header::SetDscp(this, a2);
}

uint64_t ot::Ip6::Header::SetEcn(uint64_t result, char a2)
{
  *(result + 1) = *(result + 1) & 0xCF | (16 * a2) & 0x30;
  return result;
}

{
  return ot::Ip6::Header::SetEcn(result, a2);
}

uint64_t ot::Ip6::MessageInfo::GetEcn(ot::Ip6::MessageInfo *this)
{
  return *(this + 37) & 3;
}

{
  return ot::Ip6::MessageInfo::GetEcn(this);
}

uint64_t ot::Ip6::MessageInfo::ShouldAllowZeroHopLimit(ot::Ip6::MessageInfo *this)
{
  return (*(this + 37) >> 3) & 1;
}

{
  return ot::Ip6::MessageInfo::ShouldAllowZeroHopLimit(this);
}

__n128 ot::Ip6::Header::SetDestination(ot::Ip6::Header *this, __n128 *a2)
{
  result = *a2;
  *(this + 24) = *a2;
  return result;
}

uint64_t ot::Ip6::Ip6::HandleDatagram(ot::InstanceLocator *a1, uint64_t a2, char a3)
{
  v109 = a1;
  v108 = a2;
  v107 = a3;
  v106 = 0;
  NextHeader = 0;
  v100 = 0;
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v3 = ot::Ptr<ot::Message>::operator*(a2);
  v106 = ot::Ip6::Header::ParseFrom(v105, v3);
  if (!v106)
  {
    Destination = ot::Ip6::Header::GetDestination(v105);
    if (ot::Ip6::Address::IsMulticast(Destination))
    {
      v5 = ot::Ptr<ot::Message>::operator->(a2);
      v103 = !ot::Message::IsOriginThreadNetif (v5);
      v6 = ot::Ptr<ot::Message>::operator->(a2);
      if (ot::Message::IsOriginThreadNetif (v6))
      {
        v7 = ot::Ip6::Header::GetDestination(v105);
        if (ot::Ip6::Address::IsMulticastLargerThanRealmLocal(v7))
        {
          v85 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(a1);
          v8 = ot::Ip6::Header::GetDestination(v105);
          if (ot::ChildTable::HasSleepyChildWithAddress(v85, v8))
          {
            v103 = 1;
          }
        }
      }

      v102 = 1;
      v9 = ot::Ip6::Header::GetDestination(v105);
      if (ot::Ip6::Address::IsMulticastLargerThanRealmLocal(v9))
      {
        v10 = ot::Ip6::Header::GetDestination(v105);
        ot::Ip6::Address::ToString(v10, v110);
        v84 = ot::String<(unsigned short)40>::AsCString(v110);
        v11 = ot::Ip6::Header::GetDestination(v105);
        ot::Ip6::Address::IsMulticastLargerThanRealmLocal(v11);
        v83 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
        v12 = ot::Ip6::Header::GetDestination(v105);
        ot::Ip6::Netif::IsMulticastSubscribed(v83, v12);
        ot::Logger::LogAtLevel<(ot::LogLevel)2>("Ip6", "Ip6::HandleDatagram destn=%s forwardHost=%d forwardThread=%d isLargeScope=%d multicastSubscribed=%d receive=%d", v13, v14, v15, v16, v17, v18, v84);
        if (!*(a1 + 3))
        {
          return 4;
        }

        v19 = ot::Ptr<ot::Message>::operator->(a2);
        v100 = ot::Message::Clone(v19);
        if (!v100)
        {
          v20 = ot::Ptr<ot::Message>::operator->(a2);
          Length = ot::Message::GetLength(v20);
          otLogWarnPlat("No buff to clone msg (len: %d) to pass to host", v22, v23, v24, v25, v26, v27, v28, Length);
          return 3;
        }

        (*(a1 + 3))(v100, *(a1 + 4));
        ot::Message::Free(v100);
      }

      v29 = ot::Ptr<ot::Message>::operator->(a2);
      if (ot::Message::IsOriginThreadNetif (v29) || (v30 = ot::Ptr<ot::Message>::operator->(a2), (ot::Message::GetMulticastLoop(v30) & 1) != 0))
      {
        v82 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
        v31 = ot::Ip6::Header::GetDestination(v105);
        if (ot::Ip6::Netif::IsMulticastSubscribed(v82, v31))
        {
          v104 = 1;
        }
      }
    }

    else
    {
      v81 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
      v32 = ot::Ip6::Header::GetDestination(v105);
      if (ot::Ip6::Netif::HasUnicastAddress(v81, v32))
      {
        v104 = 1;
      }

      else
      {
        v33 = ot::Ptr<ot::Message>::operator->(a2);
        if (!ot::Message::IsOriginThreadNetif (v33) || (v34 = ot::Ip6::Header::GetDestination(v105), !ot::Ip6::Address::IsLinkLocalUnicast(v34)))
        {
          v35 = ot::Ip6::Header::GetDestination(v105);
          if (ot::Ip6::Address::IsLinkLocalUnicast(v35))
          {
            v103 = 1;
          }

          else
          {
            v36 = ot::Ip6::Header::GetDestination(v105);
            if (ot::Ip6::Ip6::IsOnLink(a1, v36))
            {
              v37 = ot::Ptr<ot::Message>::operator->(a2);
              LOBYTE(v80) = 1;
              if (ot::Message::IsLoopbackToHostAllowed(v37))
              {
                v79 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Manager>(a1);
                v38 = ot::Ip6::Header::GetDestination(v105);
                v80 = !ot::BackboneRouter::Manager::ShouldForwardDuaToBackbone(v79, v38);
              }

              v103 = v80;
            }

            else
            {
              Source = ot::Ip6::Header::GetSource(v105);
              v39 = ot::Ip6::Header::GetDestination(v105);
              if (ot::Ip6::Ip6::RouteLookup(a1, Source, v39))
              {
                v40 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
                if (ot::Mle::Mle::IsMinimalEndDevice(v40))
                {
                  ot::Logger::LogAtLevel<(ot::LogLevel)5>("Ip6", "%s MTD forwards packet to parent", v41, v42, v43, v44, v45, v46, "HandleDatagram");
                  v103 = 1;
                }
              }

              else
              {
                v103 = 1;
              }
            }
          }

          v102 = (v103 ^ 1) & 1;
        }
      }
    }

    v47 = ot::Ptr<ot::Message>::operator->(a2);
    ot::Message::SetOffset(v47, 0x28u);
    NextHeader = ot::Ip6::Header::GetNextHeader(v105);
    v106 = ot::Ip6::Ip6::HandleExtensionHeaders(a1, a2, v105, &NextHeader, &v104);
    if (!v106)
    {
      if ((v104 & 1) == 0 || NextHeader != 41)
      {
        goto LABEL_42;
      }

      ot::OwnedPtr<ot::Message>::OwnedPtr(&v99);
      v48 = ot::Ptr<ot::Message>::operator->(a2);
      MulticastLoop = ot::Message::GetMulticastLoop(v48);
      v106 = ot::Ip6::Ip6::TakeOrCopyMessagePtr(&v99, a2, (v103 & 1) != 0);
      if (v106)
      {
        v96 = 4;
      }

      else
      {
        v49 = ot::Ptr<ot::Message>::operator->(&v99);
        ot::Message::SetMulticastLoop(v49, MulticastLoop & 1);
        v76 = ot::Ptr<ot::Message>::operator->(&v99);
        v50 = ot::Ptr<ot::Message>::operator->(&v99);
        Offset = ot::Message::GetOffset(v50);
        ot::Message::RemoveHeader(v76, Offset);
        v77 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
        v52 = ot::Ptr<ot::Message>::operator*(&v99);
        ot::MeshForwarder::LogMessage(v77, 0, v52);
        ot::OwnedPtr<ot::Message>::PassOwnership();
        ot::OwnedPtr<ot::Message>::OwnedPtr(&v97, v53);
        ot::Ip6::Ip6::HandleDatagram(a1, &v97, v107 & 1);
        IgnoreError();
        ot::OwnedPtr<ot::Message>::~OwnedPtr(&v97);
        v104 = 0;
        v102 = 0;
        v96 = 0;
      }

      ot::OwnedPtr<ot::Message>::~OwnedPtr(&v99);
      if (!v96)
      {
LABEL_42:
        if ((v102 & 1) != 0 || (v104) && (v107 & 1) == 0)
        {
          v75 = 1;
          if ((v104 & 1) == 0)
          {
            v75 = v103;
          }

          v106 = ot::Ip6::Ip6::PassToHost(a1, a2, v105, NextHeader, (v102 ^ 1) & 1, v104 & 1, (v75 & 1) != 0);
        }

        if (v104)
        {
          v106 = ot::Ip6::Ip6::Receive(a1, v105, a2, NextHeader, (v103 & 1) != 0);
        }

        if (v103)
        {
          v54 = ot::Ptr<ot::Message>::operator->(a2);
          if (ot::Message::IsOriginThreadNetif (v54))
          {
            v55 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
            if (!ot::Mle::Mle::IsRouterOrLeader(v55))
            {
              return v106;
            }

            HopLimit = ot::Ip6::Header::GetHopLimit(v105);
            ot::Ip6::Header::SetHopLimit(v105, HopLimit - 1);
          }

          if (ot::Ip6::Header::GetHopLimit(v105) > 0)
          {
            v74 = ot::Ptr<ot::Message>::operator->(a2);
            v95 = ot::Ip6::Header::GetHopLimit(v105);
            ot::Message::Write<unsigned char>(v74, 7u, &v95);
            if (NextHeader != 58)
            {
              goto LABEL_62;
            }

            v94 = 0;
            v73 = ot::Ptr<ot::Message>::operator->(a2);
            v57 = ot::Ptr<ot::Message>::operator->(a2);
            v58 = ot::Message::GetOffset(v57);
            v106 = ot::Message::Read<unsigned char>(v73, v58, &v94);
            if (!v106)
            {
              v106 = 2;
              v93 = &kForwardIcmpTypes;
              v92 = &kForwardIcmpTypes;
              v91 = &ot::Ip6::Headers::DecompressFrom(ot::Message const&,unsigned short,ot::Mac::Addresses const&)::kReadLength;
              while (v92 != v91)
              {
                v90 = *v92;
                if (v94 == v90)
                {
                  v106 = 0;
                  break;
                }

                ++v92;
              }

              if (!v106)
              {
LABEL_62:
                v59 = ot::Ptr<ot::Message>::operator->(a2);
                if (ot::Message::IsOriginHostUntrusted(v59) && NextHeader == 17)
                {
                  *v89 = 0;
                  v72 = ot::Ptr<ot::Message>::operator->(a2);
                  v60 = ot::Ptr<ot::Message>::operator->(a2);
                  v61 = ot::Message::GetOffset(v60);
                  v106 = ot::Message::Read<unsigned short>(v72, v61 + 2, v89);
                  if (v106)
                  {
                    return v106;
                  }

                  *v89 = ot::BigEndian::HostSwap16(*v89);
                  if (*v89 == 61631)
                  {
                    ot::Logger::LogAtLevel<(ot::LogLevel)3>("Ip6", "Dropping TMF message from untrusted origin", v62, v63, v64, v65, v66, v67, v70);
                    return 2;
                  }
                }

                v71 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
                ot::OwnedPtr<ot::Message>::PassOwnership();
                ot::OwnedPtr<ot::Message>::OwnedPtr(&v88, v68);
                ot::MeshForwarder::SendMessage(v71, &v88);
                ot::OwnedPtr<ot::Message>::~OwnedPtr(&v88);
              }
            }
          }

          else
          {
            return 2;
          }
        }
      }
    }
  }

  return v106;
}