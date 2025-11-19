uint64_t ot::Mle::Mle::InitNeighbor(ot::Mle::Mle *this, ot::Neighbor *a2, ot::Ip6::MessageInfo **a3)
{
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(a3[1]);
  Iid = ot::Ip6::Address::GetIid(PeerAddr);
  ot::Neighbor::GetExtAddress(a2);
  ot::Ip6::InterfaceIdentifier::ConvertToExtAddress(Iid, v4);
  LinkInfo = ot::Neighbor::GetLinkInfo(a2);
  ot::LinkQualityInfo::Clear(LinkInfo);
  v10 = ot::Neighbor::GetLinkInfo(a2);
  AverageRss = ot::Message::GetAverageRss(*a3);
  ot::LinkQualityInfo::AddRss(v10, AverageRss);
  v7 = ot::Neighbor::ResetLinkFailures(a2);
  Now = ot::TimerMilli::GetNow(v7);
  return ot::Neighbor::SetLastHeard(a2, Now);
}

void ot::Mle::Mle::HandleNotifierEvents(_BYTE *a1, uint64_t a2)
{
  v28 = a2;
  v27 = a1;
  if (!ot::Mle::Mle::IsDisabled(a1))
  {
    if (ot::Events::Contains(&v28, 4) && ot::Mle::Mle::IsChild(a1) && !ot::Mle::Mle::IsFullThreadDevice(a1) && a1[136] == 1)
    {
      a1[136] = 0;
      ot::Mle::Mle::ScheduleChildUpdateRequest(a1);
    }

    if (ot::Events::ContainsAny(&v28, 3))
    {
      v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
      Address = ot::Ip6::Netif::UnicastAddress::GetAddress((a1 + 1024));
      if (!ot::Ip6::Netif::HasUnicastAddress(v24, Address))
      {
        v3 = ot::Ip6::Netif::UnicastAddress::GetAddress((a1 + 1024));
        Iid = ot::Ip6::Address::GetIid(v3);
        ot::Ip6::InterfaceIdentifier::GenerateRandom(Iid);
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
        ot::Ip6::Netif::AddUnicastAddress(v5, (a1 + 1024));
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
        ot::Notifier::Signal(v6, 16);
      }

      if (ot::Mle::Mle::IsChild(a1) && !ot::Mle::Mle::IsFullThreadDevice(a1))
      {
        ot::Mle::Mle::ScheduleChildUpdateRequest(a1);
      }
    }

    if (ot::Events::ContainsAny(&v28, 12288) && ot::Mle::Mle::IsChild(a1) && !ot::Mle::Mle::IsFullThreadDevice(a1))
    {
      if (!ot::Mle::Mle::IsRxOnWhenIdle(a1) || (Parent = ot::Mle::Mle::GetParent(a1), !ot::Neighbor::IsThreadVersion1p1(Parent)))
      {
        ot::Mle::Mle::ScheduleChildUpdateRequest(a1);
      }
    }

    if (ot::Events::Contains(&v28, 512))
    {
      if (ot::Mle::Mle::IsFullThreadDevice(a1))
      {
        v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
        ot::Mle::MleRouter::HandleNetworkDataUpdateRouter(v8);
      }

      else if (ot::Mle::Mle::IsChild(a1) && !ot::Events::Contains(&v28, 4))
      {
        ot::Mle::Mle::ScheduleChildUpdateRequest(a1);
      }

      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1);
      ot::BackboneRouter::Leader::Update(v9);
      ot::Mle::Mle::UpdateServiceAlocs(a1);
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Dhcp6::Server>(a1);
      ot::Dhcp6::Server::UpdateService(v10);
      IgnoreError();
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Dhcp6::Client>(a1);
      ot::Dhcp6::Client::UpdateAddresses(v11);
    }

    if (ot::Events::ContainsAny(&v28, 260) && (ot::Events::Contains(&v28, 256) || ot::Mle::Mle::IsAttached(a1)))
    {
      ot::Mle::Mle::Store(a1);
      IgnoreError();
    }

    if (ot::Events::Contains(&v28, 0x100000))
    {
      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
      ot::Mle::MleRouter::HandleSecurityPolicyChanged(v12);
    }

    if (ot::Events::Contains(&v28, 0x400000))
    {
      v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
      v26 = *ot::Mac::Mac::GetSupportedChannelMask(v13);
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
      PanChannel = ot::Mac::Mac::GetPanChannel(v14);
      if (!ot::Mac::ChannelMask::ContainsChannel(&v26, PanChannel))
      {
        if (a1[130])
        {
          v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
          v23 = ot::Mac::Mac::GetPanChannel(v16);
          ot::Mac::ChannelMask::ToString(&v26, v29);
          ot::String<(unsigned short)45>::AsCString(v29);
          ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Channel %u is not in the supported channel mask %s, detach the network gracefully!", v17, v18, v19, v20, v21, v22, v23);
          ot::Mle::Mle::DetachGracefully(a1, 0, 0);
          IgnoreError();
        }
      }
    }
  }
}

uint64_t ot::Mle::Mle::UpdateServiceAlocs(ot::Mle::Mle *this)
{
  v16 = this;
  v15 = 0;
  result = ot::Mle::Mle::IsDisabled(this);
  if ((result & 1) == 0)
  {
    for (i = (this + 688); i != (this + 784); i = (i + 32))
    {
      v13 = 0;
      if (ot::Mle::Mle::ServiceAloc::IsInUse(i))
      {
        v15 = 0;
        while (1)
        {
          v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
          Rloc16 = ot::Mle::Mle::GetRloc16(this);
          if (ot::NetworkData::NetworkData::GetNextService(v9, &v15, Rloc16, v17))
          {
            break;
          }

          v8 = v17[0];
          Aloc16 = ot::Mle::Mle::ServiceAloc::GetAloc16(i);
          if (v8 == ot::Mle::ServiceIdFromAloc(Aloc16))
          {
            v13 = 1;
            break;
          }
        }

        if ((v13 & 1) == 0)
        {
          v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
          ot::Ip6::Netif::RemoveUnicastAddress(v4, i);
          ot::Mle::Mle::ServiceAloc::MarkAsNotInUse(i);
        }
      }
    }

    v15 = 0;
    while (1)
    {
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
      v5 = ot::Mle::Mle::GetRloc16(this);
      result = ot::NetworkData::NetworkData::GetNextService(v7, &v15, v5, v17);
      if (result)
      {
        break;
      }

      v12 = ot::Mle::ServiceAlocFromId(v17[0]);
      if (!ot::Mle::Mle::FindInServiceAlocs(this, v12))
      {
        result = ot::Mle::Mle::FindInServiceAlocs(this, 0xFFFEu);
        v11 = result;
        if (!result)
        {
          return result;
        }

        ot::Mle::Mle::ServiceAloc::SetAloc16(result, v12);
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
        ot::Ip6::Netif::AddUnicastAddress(v6, v11);
      }
    }
  }

  return result;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Dhcp6::Server>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Dhcp6::Server>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Dhcp6::Server>(a1);
}

uint64_t ot::Mle::Mle::DetachGracefully(ot::Mle::Mle *this, void (*a2)(void *), uint64_t a3)
{
  v8 = 0;
  v7 = 1000;
  if (ot::Mle::Mle::IsDetachingGracefully(this))
  {
    return 5;
  }

  else
  {
    if (ot::CallbackBase<void (*)(void *)>::IsSet(this + 101))
    {
      __assert_rtn("DetachGracefully", "mle.cpp", 6227, "!mDetachGracefullyCallback.IsSet()");
    }

    ot::CallbackBase<void (*)(void *)>::Set(this + 101, a2, a3);
    v5 = *(this + 130);
    if (v5 <= 1)
    {
      v7 = 0;
    }

    else if (v5 == 2)
    {
      ot::Mle::Mle::SendChildUpdateRequest(this, 2);
      IgnoreError();
    }

    else if (v5 == 3)
    {
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      ot::Mle::MleRouter::SendAddressRelease(v3);
    }

    ot::TimerMilli::Start((this + 960), v7);
  }

  return v8;
}

ot::Mle::Mle::ServiceAloc *ot::Mle::Mle::FindInServiceAlocs(ot::Mle::Mle *this, unsigned __int16 a2)
{
  v5 = 0;
  v4 = (this + 688);
  v3 = (this + 784);
  while (v4 != v3)
  {
    if (ot::Mle::Mle::ServiceAloc::GetAloc16(v4) == a2)
    {
      return v4;
    }

    v4 = (v4 + 32);
  }

  return v5;
}

uint64_t ot::Mle::Mle::ServiceAloc::GetAloc16(ot::Mle::Mle::ServiceAloc *this)
{
  Address = ot::Ip6::Netif::UnicastAddress::GetAddress(this);
  Iid = ot::Ip6::Address::GetIid(Address);
  return ot::Ip6::InterfaceIdentifier::GetLocator(Iid);
}

{
  return ot::Mle::Mle::ServiceAloc::GetAloc16(this);
}

BOOL ot::Mle::Mle::ServiceAloc::IsInUse(ot::Mle::Mle::ServiceAloc *this)
{
  return ot::Mle::Mle::ServiceAloc::GetAloc16(this) != 65534;
}

{
  return ot::Mle::Mle::ServiceAloc::IsInUse(this);
}

uint64_t ot::Mle::ServiceIdFromAloc(ot::Mle *this)
{
  return (this - 16);
}

{
  return ot::Mle::ServiceIdFromAloc(this);
}

uint64_t ot::Mle::Mle::ServiceAloc::MarkAsNotInUse(ot::Mle::Mle::ServiceAloc *this)
{
  return ot::Mle::Mle::ServiceAloc::SetAloc16(this, 0xFFFEu);
}

{
  return ot::Mle::Mle::ServiceAloc::MarkAsNotInUse(this);
}

uint64_t ot::Mle::Mle::ServiceAloc::SetAloc16(ot::Mle::Mle::ServiceAloc *this, unsigned __int16 a2)
{
  Address = ot::Ip6::Netif::UnicastAddress::GetAddress(this);
  Iid = ot::Ip6::Address::GetIid(Address);
  return ot::Ip6::InterfaceIdentifier::SetLocator(Iid, a2);
}

{
  return ot::Mle::Mle::ServiceAloc::SetAloc16(this, a2);
}

uint64_t ot::Mle::Mle::DetermineParentRequestType(uint64_t a1, _BYTE *a2, int *a3)
{
  v5 = 0;
  if (*(a1 + 132) != 3)
  {
    __assert_rtn("DetermineParentRequestType", "mle.cpp", 2438, "mAttachState == kAttachStateParentRequest");
  }

  *a2 = 1;
  if (*(a1 + 148) > 1u || *(a1 + 134) == 4)
  {
    if (*(a1 + 138) > 2u)
    {
      return 23;
    }

    if (*(a1 + 138) <= 1u)
    {
      *a2 = 0;
    }
  }

  else
  {
    if (*(a1 + 138) > 2u)
    {
      return 23;
    }

    if (*(a1 + 134) != 1 && *(a1 + 138) <= 1u)
    {
      *a2 = 0;
    }
  }

  if (a3)
  {
    if (*a2)
    {
      v3 = 1250;
    }

    else
    {
      v3 = 750;
    }

    *a3 = v3;
  }

  return v5;
}

uint64_t ot::Mle::Mle::HasAcceptableParentCandidate(ot::Mle::Mle *this)
{
  v6 = this;
  v5 = 0;
  v4 = 0;
  if (!ot::Neighbor::IsStateParentResponse((this + 368)))
  {
    return v5 & 1;
  }

  v2 = *(this + 132);
  if (v2 != 3)
  {
    if (v2 != 4 || ot::Mle::Mle::HasMoreChannelsToAnnounce(this))
    {
      return v5 & 1;
    }

    goto LABEL_12;
  }

  if (ot::Mle::Mle::DetermineParentRequestType(this, &v4, 0))
  {
    __assert_rtn("HasAcceptableParentCandidate", "mle.cpp", 2516, "false");
  }

  if (v4 || ot::Router::GetTwoWayLinkQuality((this + 368)) == 3)
  {
LABEL_12:
    if (!ot::Mle::Mle::IsChild(this) || (*(this + 129) & 8) != 0 || *(this + 134) == 2)
    {
      v5 = 1;
    }
  }

  return v5 & 1;
}

BOOL ot::Neighbor::IsStateParentResponse(ot::Neighbor *this)
{
  return (*(this + 30) & 0xF) == 3;
}

{
  return ot::Neighbor::IsStateParentResponse(this);
}

BOOL ot::Mle::Mle::HasMoreChannelsToAnnounce(ot::Mle::Mle *this)
{
  v3 = this;
  v2 = *(this + 141);
  return ot::Mle::Mle::GetNextAnnounceChannel(this, &v2) == 0;
}

uint64_t ot::Mle::Mle::SendChildIdRequest(ot::Mle::Mle *this)
{
  v20 = this;
  *&v19[1] = 0;
  v19[0] = 3;
  v18 = 0;
  ot::Neighbor::GetExtAddress((this + 192));
  v16 = v1;
  ot::Neighbor::GetExtAddress((this + 368));
  if (ot::Equatable<ot::Mac::ExtAddress>::operator==(v16, v2))
  {
    if (ot::Mle::Mle::IsChild(this))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Already attached to candidate parent", v3, v4, v5, v6, v7, v8, v14);
      *&v19[1] = 24;
      goto LABEL_23;
    }

    ot::Neighbor::SetState(this + 192, 0);
  }

  v18 = ot::Mle::Mle::NewMleMessage(this, 11);
  if (v18)
  {
    *&v19[1] = ot::Mle::Mle::TxMessage::AppendResponseTlv(v18, (this + 513));
    if (!*&v19[1])
    {
      *&v19[1] = ot::Mle::Mle::TxMessage::AppendLinkAndMleFrameCounterTlvs(v18);
      if (!*&v19[1])
      {
        *&v19[1] = ot::Mle::Mle::TxMessage::AppendModeTlv(v18, *(this + 131));
        if (!*&v19[1])
        {
          *&v19[1] = ot::Mle::Mle::TxMessage::AppendTimeoutTlv(v18, *(this + 39));
          if (!*&v19[1])
          {
            *&v19[1] = ot::Mle::Mle::TxMessage::AppendVersionTlv(v18);
            if (!*&v19[1])
            {
              v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SupervisionListener>(this);
              Interval = ot::SupervisionListener::GetInterval(v9);
              *&v19[1] = ot::Mle::Mle::TxMessage::AppendSupervisionIntervalTlv(v18, Interval);
              if (!*&v19[1])
              {
                if (!ot::Mle::Mle::IsFullThreadDevice(this))
                {
                  *&v19[1] = ot::Mle::Mle::TxMessage::AppendAddressRegistrationTlv(v18, *(this + 136));
                  if (*&v19[1])
                  {
                    goto LABEL_23;
                  }

                  *v19 = (v19[0] - 1);
                }

                *&v19[1] = ot::Mle::Mle::TxMessage::AppendTlvRequestTlv(v18, ot::Mle::Mle::SendChildIdRequest(void)::kTlvs, v19[0]);
                if (!*&v19[1])
                {
                  *&v19[1] = ot::Mle::Mle::TxMessage::AppendActiveAndPendingTimestampTlvs(v18);
                  if (!*&v19[1])
                  {
                    ot::Neighbor::SetState(this + 368, 7);
                    ot::Neighbor::GetExtAddress((this + 368));
                    ot::Ip6::Address::SetToLinkLocalAddress(&v17, v11);
                    *&v19[1] = ot::Mle::Mle::TxMessage::SendTo(v18, &v17);
                    if (!*&v19[1])
                    {
                      if (*(this + 136) == 1)
                      {
                        v12 = 3;
                      }

                      else
                      {
                        v12 = 2;
                      }

                      ot::Mle::Mle::Log(0, v12, &v17);
                    }
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
    *&v19[1] = 3;
  }

LABEL_23:
  if (*&v19[1] && v18)
  {
    ot::Message::Free(v18);
  }

  return *&v19[1];
}

void ot::Mle::Mle::ProcessAnnounce(ot::Mle::Mle *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(this + 142);
  v13 = *(this + 76);
  if (*(this + 132) != 1)
  {
    __assert_rtn("ProcessAnnounce", "mle.cpp", 5388, "mAttachState == kAttachStateProcessAnnounce");
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Processing Announce - channel %d, panid 0x%02x", a3, a4, a5, a6, a7, a8, v14);
  ot::Mle::Mle::Stop(this, 0);
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  *(this + 142) = ot::Mac::Mac::GetPanChannel(v8);
  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  *(this + 76) = ot::Mac::Mac::GetPanId(v9);
  *(this + 21) = 0;
  v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ot::Mac::Mac::SetPanChannel(v10, v14);
  IgnoreError();
  v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ot::Mac::Mac::SetPanId(v11, v13);
  ot::Mle::Mle::Start(this, 1);
  IgnoreError();
}

void ot::Mle::Mle::SendParentRequest(uint64_t a1, char a2)
{
  v8 = a1;
  v7 = a2;
  appended = 0;
  v5 = 0;
  v4 = 0;
  ot::Mle::TxChallenge::GenerateRandom((a1 + 360));
  if (v7)
  {
    if (v7 == 1)
    {
      v4 = -64;
      ot::Ip6::Address::SetToLinkLocalAllRoutersMulticast(&v3);
    }
  }

  else
  {
    v4 = 0x80;
    ot::Ip6::Address::SetToLinkLocalAllRoutersMulticast(&v3);
  }

  v5 = ot::Mle::Mle::NewMleMessage(a1, 9);
  if (v5)
  {
    appended = ot::Mle::Mle::TxMessage::AppendModeTlv(v5, *(a1 + 131));
    if (!appended)
    {
      appended = ot::Mle::Mle::TxMessage::AppendChallengeTlv(v5, (a1 + 360));
      if (!appended)
      {
        appended = ot::Mle::Mle::TxMessage::AppendScanMaskTlv(v5, v4);
        if (!appended)
        {
          appended = ot::Mle::Mle::TxMessage::AppendVersionTlv(v5);
          if (!appended)
          {
            ot::Ip6::Address::SetToLinkLocalAllRoutersMulticast(&v3);
            appended = ot::Mle::Mle::TxMessage::SendTo(v5, &v3);
            if (!appended)
            {
              if (v7)
              {
                if (v7 == 1)
                {
                  ot::Mle::Mle::Log(0, 14, &v3);
                }
              }

              else
              {
                ot::Mle::Mle::Log(0, 13, &v3);
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
    if (v5)
    {
      ot::Message::Free(v5);
    }
  }
}

uint64_t ot::Mle::Mle::PrepareAnnounceState(ot::Mle::Mle *this)
{
  v8 = this;
  v7 = 0;
  ot::Mac::ChannelMask::ChannelMask(&v6);
  if (!ot::Mle::Mle::IsChild(this) && !*(this + 133))
  {
    active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
    if (ot::MeshCoP::ActiveDatasetManager::IsPartiallyComplete(active) || !ot::Mle::Mle::IsFullThreadDevice(this))
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
      if (ot::MeshCoP::DatasetManager::GetChannelMask(v2, &v6))
      {
        v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        v6 = *ot::Mac::Mac::GetSupportedChannelMask(v3);
      }

      *(this + 75) = 0x578 / (ot::Mac::ChannelMask::GetNumberOfChannels(&v6) + 1);
      *(this + 75) = ot::Max<unsigned short>(*(this + 75), 0x50u);
      v7 = 1;
    }
  }

  return v7 & 1;
}

uint64_t ot::Mle::Mle::GetNextAnnounceChannel(ot::Mle::Mle *this, unsigned __int8 *a2)
{
  v8 = this;
  v7 = a2;
  ot::Mac::ChannelMask::ChannelMask(&v6);
  active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
  if (ot::MeshCoP::DatasetManager::GetChannelMask(active, &v6))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    v6 = *ot::Mac::Mac::GetSupportedChannelMask(v3);
  }

  return ot::Mac::ChannelMask::GetNextChannel(&v6, v7);
}

void ot::Mle::Mle::SendAnnounce(ot::Mle::Mle *a1, unsigned __int8 a2, char a3)
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  ot::Ip6::Address::SetToLinkLocalAllNodesMulticast(&v4);
  ot::Mle::Mle::SendAnnounce(a1, v6, &v4, v5);
}

uint64_t ot::Mle::Mle::Reattach(ot::Mle::Mle *this)
{
  v31 = 0;
  if (*(this + 133) == 2)
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
    if (ot::MeshCoP::DatasetManager::Restore(v1))
    {
      *(this + 133) = 0;
    }

    else
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
      ot::MeshCoP::DatasetManager::ApplyConfiguration(v2);
      IgnoreError();
      *(this + 133) = 3;
      ot::Mle::Mle::SetAttachState(this, 2u);
      v31 = ot::Random::NonCrypto::GetUint32InRange(0, 0x32u) + 1;
    }
  }

  else if (*(this + 133) == 3)
  {
    *(this + 133) = 0;
    active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
    ot::MeshCoP::DatasetManager::Restore(active);
    IgnoreError();
  }

  if (!*(this + 133))
  {
    v29 = *(this + 134);
    if (*(this + 134))
    {
      switch(v29)
      {
        case 1:
          goto LABEL_22;
        case 2:
          return v31;
        case 3:
LABEL_22:
          ot::Mle::Mle::Attach(this, 0);
          return v31;
      }

      if (v29 != 4)
      {
        return v31;
      }
    }

    if (ot::Mle::Mle::IsChild(this))
    {
      if (!ot::Mle::Mle::IsRxOnWhenIdle(this))
      {
        v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
        ot::DataPollSender::SetAttachMode(v19, 0);
        v20 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
        ot::MeshForwarder::SetRxOnWhenIdle(v20, 0, v21, v22, v23, v24, v25, v26);
      }
    }

    else if (*(this + 76) == 0xFFFF)
    {
      if (!ot::Mle::Mle::IsFullThreadDevice(this) || (v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this), ot::Mle::MleRouter::BecomeLeader(v18, 0)))
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Device becomes detached - fail to become a leader", v12, v13, v14, v15, v16, v17, v28);
        ot::Mle::Mle::BecomeDetached(this);
        IgnoreError();
      }
    }

    else
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ot::Mac::Mac::SetPanChannel(v4, *(this + 142));
      IgnoreError();
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ot::Mac::Mac::SetPanId(v5, *(this + 76));
      *(this + 76) = -1;
      ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Device becomes detached - different PAN ID", v6, v7, v8, v9, v10, v11, v28);
      ot::Mle::Mle::BecomeDetached(this);
      IgnoreError();
    }
  }

  return v31;
}

void ot::Mle::Mle::DelayedResponseMetadata::ReadFrom(ot::Mle::Mle::DelayedResponseMetadata *this, const ot::Message *a2)
{
  Length = ot::Message::GetLength(a2);
  if (Length < 0x14uLL)
  {
    __assert_rtn("ReadFrom", "mle.cpp", 6299, "length >= sizeof(*this)");
  }

  ot::Message::Read<ot::Mle::Mle::DelayedResponseMetadata>(a2, Length - 20, this);
  IgnoreError();
}

void ot::Mle::Mle::SendDelayedResponse(ot::InstanceLocator *a1, ot::Message *a2, ot::Mle::Mle::DelayedResponseMetadata *a3)
{
  ot::Mle::Mle::DelayedResponseMetadata::RemoveFrom(a3, a2);
  if (ot::Message::GetSubType(a2) != 11 || (appended = ot::Mle::Mle::TxMessage::AppendActiveAndPendingTimestampTlvs(a2)) == 0)
  {
    appended = ot::Mle::Mle::TxMessage::SendTo(a2, a3);
    if (!appended)
    {
      ot::Mle::Mle::Log(0, 11, a3);
      if (!ot::Mle::Mle::IsRxOnWhenIdle(a1))
      {
        v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(a1);
        ot::DataPollSender::SendFastPolls(v3, 8u);
      }
    }
  }

  if (appended)
  {
    ot::Message::Free(a2);
  }
}

uint64_t ot::Mle::Mle::TxMessage::AppendActiveAndPendingTimestampTlvs(ot::Mle::Mle::TxMessage *this)
{
  appended = ot::Mle::Mle::TxMessage::AppendActiveTimestampTlv(this);
  if (!appended)
  {
    return ot::Mle::Mle::TxMessage::AppendPendingTimestampTlv(this);
  }

  return appended;
}

uint64_t ot::Mle::Mle::TxMessage::SendTo(ot::Mle::Mle::TxMessage *this, __n128 *a2)
{
  v19 = this;
  v18 = a2;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  ot::Ip6::MessageInfo::MessageInfo(v14);
  ot::Ip6::MessageInfo::SetPeerAddr(v14, v18);
  v2 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
  Address = ot::Ip6::Netif::UnicastAddress::GetAddress((v2 + 992));
  ot::Ip6::MessageInfo::SetSockAddr(v14, Address);
  ot::Ip6::MessageInfo::SetPeerPort(v14, 19788);
  ot::Ip6::MessageInfo::SetHopLimit(v14, 255);
  ot::Message::Read<unsigned char>(this, v16, &v15);
  IgnoreError();
  ++v16;
  if (v15)
  {
    goto LABEL_4;
  }

  ot::Message::Read<ot::Mle::Mle::SecurityHeader>(this, v16, v13);
  IgnoreError();
  v4 = ot::GetProvider<ot::Message>::Get<ot::KeyManager>(this);
  MleFrameCounter = ot::KeyManager::GetMleFrameCounter(v4);
  ot::Mle::Mle::SecurityHeader::SetFrameCounter(v13, MleFrameCounter);
  v6 = ot::GetProvider<ot::Message>::Get<ot::KeyManager>(this);
  CurrentKeySequence = ot::KeyManager::GetCurrentKeySequence(v6);
  ot::Mle::Mle::SecurityHeader::SetKeyId(v13, CurrentKeySequence);
  ot::Message::Write<ot::Mle::Mle::SecurityHeader>(this, v16, v13);
  v16 += 10;
  v8 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
  v17 = ot::Mle::Mle::ProcessMessageSecurity(v8, 0, this, v14, v16, v13);
  if (!v17)
  {
    v9 = ot::GetProvider<ot::Message>::Get<ot::KeyManager>(this);
    ot::KeyManager::IncrementMleFrameCounter(v9);
LABEL_4:
    v10 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
    return ot::Ip6::Udp::Socket::SendTo((v10 + 544), this, v14);
  }

  return v17;
}

BOOL ot::Mle::Mle::RemoveDelayedMessage(uint64_t a1, unsigned __int8 a2, char a3, const void *a4)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = (a1 + 352);
  v13[0] = ot::MessageQueue::begin((a1 + 352));
  v13[1] = v4;
  v12[0] = ot::MessageQueue::end(v14);
  v12[1] = v5;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v13, v12);
    if (!result)
    {
      break;
    }

    v11 = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(v13);
    ot::Mle::Mle::DelayedResponseMetadata::ReadFrom(v10, v11);
    SubType = ot::Message::GetSubType(v11);
    if (SubType == v17 && (!v15 || ot::Equatable<ot::Ip6::Address>::operator==(v10, v15)))
    {
      ot::MessageQueue::DequeueAndFree((a1 + 352), v11);
      ot::Mle::Mle::Log(3, v16, v10);
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v13, v8);
  }

  return result;
}

ot::Buffer *ot::Mle::Mle::NewMleMessage(uint64_t a1, char a2)
{
  v12 = a1;
  v11 = a2;
  v10 = 0;
  v9 = 0;
  ot::Message::Settings::Settings(v8, 0, 3);
  v7 = 0;
  v6 = 0;
  v9 = ot::Ip6::Udp::Socket::NewMessage((a1 + 544), 0, v8);
  if (v9)
  {
    v6 = 0;
    v7 = 6;
    switch(v11)
    {
      case 7:
        v7 = 11;
        break;
      case 8:
        v7 = 9;
        break;
      case 11:
        v7 = 10;
        break;
      case 13:
        v7 = 8;
        break;
      case 15:
        v7 = 1;
        break;
      case 16:
        v7 = 2;
        v6 = -1;
        break;
      case 17:
        v7 = 3;
        v6 = -1;
        break;
    }

    ot::Message::SetSubType(v9, v7);
    v10 = ot::Message::Append<unsigned char>(v9, &v6);
    if (!v10)
    {
      if (v6 || (ot::Mle::Mle::SecurityHeader::InitSecurityControl(v5), (v10 = ot::Message::Append<ot::Mle::Mle::SecurityHeader>(v9, v5)) == 0))
      {
        v4 = v11;
        v10 = ot::Message::Append<unsigned char>(v9, &v4);
      }
    }
  }

  else
  {
    v10 = 3;
  }

  if (v10 && v9)
  {
    ot::Message::Free(v9);
    return 0;
  }

  return v9;
}

uint64_t ot::Mle::Mle::TxMessage::AppendModeTlv(uint64_t a1, char a2)
{
  v5 = a2;
  v2 = ot::Mle::DeviceMode::Get(&v5);
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)1,unsigned char>>(a1, v2);
}

void ot::Mle::Mle::RequestShorterChildIdRequest(ot::Mle::Mle *this)
{
  if (*(this + 132) == 5)
  {
    *(this + 136) = 1;
    ot::Mle::Mle::SendChildIdRequest(this);
    IgnoreError();
  }
}

void ot::Mle::Mle::HandleChildIdRequestTxDone(ot::Mle::Mle *this, ot::Message *a2)
{
  if ((ot::Message::GetTxSuccess(a2) & 1) != 0 && !ot::Mle::Mle::IsRxOnWhenIdle(this))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
    ot::DataPollSender::SetAttachMode(v2, 1);
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
    ot::MeshForwarder::SetRxOnWhenIdle(v3, 0, v4, v5, v6, v7, v8, v9);
  }

  if (ot::Message::IsLinkSecurityEnabled(a2))
  {
    ot::Mle::Mle::RequestShorterChildIdRequest(this);
  }
}

uint64_t ot::Mle::Mle::TxMessage::AppendResponseTlv(ot::Mle::Mle::TxMessage *this, const ot::Mle::RxChallenge *a2)
{
  ot::Mle::RxChallenge::GetBytes(a2);
  v5 = v2;
  Length = ot::Mle::RxChallenge::GetLength(a2);
  return ot::Tlv::Append<ot::TlvInfo<(unsigned char)4>>(this, v5, Length);
}

uint64_t ot::Mle::Mle::TxMessage::AppendLinkAndMleFrameCounterTlvs(ot::Mle::Mle::TxMessage *this)
{
  appended = ot::Mle::Mle::TxMessage::AppendLinkFrameCounterTlv(this);
  if (!appended)
  {
    return ot::Mle::Mle::TxMessage::AppendMleFrameCounterTlv(this);
  }

  return appended;
}

uint64_t ot::Mle::Mle::TxMessage::AppendAddressRegistrationTlv(ot::Message *a1, char a2)
{
  v58 = a1;
  v57 = a2;
  appended = 0;
  v52 = 0;
  Length = ot::Message::GetLength(a1);
  ot::Mle::Tlv::SetType(v55, 19);
  appended = ot::Message::Append<ot::Mle::Tlv>(a1, v55);
  if (!appended)
  {
    v2 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(a1);
    MeshLocalEid = ot::Mle::Mle::GetMeshLocalEid(v2);
    appended = ot::Mle::Mle::TxMessage::AppendCompressedAddressEntry(a1, 0, MeshLocalEid);
    if (!appended && v57 != 1)
    {
      ++v52;
      v40 = ot::GetProvider<ot::Message>::Get<ot::ThreadNetif>(a1);
      v4 = ot::GetProvider<ot::Message>::Get<ot::DuaManager>(a1);
      DomainUnicastAddress = ot::DuaManager::GetDomainUnicastAddress(v4);
      if (ot::Ip6::Netif::HasUnicastAddress(v40, DomainUnicastAddress))
      {
        v39 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(a1);
        v6 = ot::GetProvider<ot::Message>::Get<ot::DuaManager>(a1);
        v7 = ot::DuaManager::GetDomainUnicastAddress(v6);
        if (!ot::NetworkData::Leader::GetContext(v39, v7, v53))
        {
          v38 = v54;
          v8 = ot::GetProvider<ot::Message>::Get<ot::DuaManager>(a1);
          v9 = ot::DuaManager::GetDomainUnicastAddress(v8);
          appended = ot::Mle::Mle::TxMessage::AppendCompressedAddressEntry(a1, v38, v9);
          if (appended)
          {
            goto LABEL_31;
          }

          ++v52;
        }
      }

      v10 = ot::GetProvider<ot::Message>::Get<ot::ThreadNetif>(a1);
      ot::Ip6::Netif::GetUnicastAddresses(v10);
      v50[1] = v11;
      v50[0] = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::begin(v11);
      v49 = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::end();
      while (ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator!=(v50, &v49))
      {
        v48 = ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator*(v50);
        Address = ot::Ip6::Netif::UnicastAddress::GetAddress(v48);
        if (!ot::Ip6::Address::IsLinkLocalUnicast(Address))
        {
          v37 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(a1);
          v13 = ot::Ip6::Netif::UnicastAddress::GetAddress(v48);
          if (!ot::Mle::Mle::IsRoutingLocator(v37, v13))
          {
            v36 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(a1);
            v14 = ot::Ip6::Netif::UnicastAddress::GetAddress(v48);
            if (!ot::Mle::Mle::IsAnycastLocator(v36, v14))
            {
              v35 = ot::Ip6::Netif::UnicastAddress::GetAddress(v48);
              v15 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(a1);
              v16 = ot::Mle::Mle::GetMeshLocalEid(v15);
              if (!ot::Equatable<ot::Ip6::Address>::operator==(v35, v16))
              {
                v34 = ot::Ip6::Netif::UnicastAddress::GetAddress(v48);
                v17 = ot::GetProvider<ot::Message>::Get<ot::DuaManager>(a1);
                v18 = ot::DuaManager::GetDomainUnicastAddress(v17);
                if (!ot::Equatable<ot::Ip6::Address>::operator==(v34, v18))
                {
                  v33 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(a1);
                  v19 = ot::Ip6::Netif::UnicastAddress::GetAddress(v48);
                  if (ot::NetworkData::Leader::GetContext(v33, v19, v53))
                  {
                    v21 = ot::Ip6::Netif::UnicastAddress::GetAddress(v48);
                    appended = ot::Mle::Mle::TxMessage::AppendAddressEntry(a1, v21);
                    if (appended)
                    {
                      goto LABEL_31;
                    }
                  }

                  else
                  {
                    v32 = v54;
                    v20 = ot::Ip6::Netif::UnicastAddress::GetAddress(v48);
                    appended = ot::Mle::Mle::TxMessage::AppendCompressedAddressEntry(a1, v32, v20);
                    if (appended)
                    {
                      goto LABEL_31;
                    }
                  }

                  if (++v52 >= 0x10u)
                  {
                    goto LABEL_31;
                  }
                }
              }
            }
          }
        }

        ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator++(v50);
      }

      v22 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(a1);
      if (!ot::Mle::Mle::IsRxOnWhenIdle(v22) || (v23 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(a1), Parent = ot::Mle::Mle::GetParent(v23), !ot::Neighbor::IsThreadVersion1p1(Parent)))
      {
        v25 = ot::GetProvider<ot::Message>::Get<ot::ThreadNetif>(a1);
        v59 = ot::Ip6::Netif::IterateExternalMulticastAddresses(v25, 0);
        v60 = v26;
        v45 = v59;
        v46 = v26;
        v47 = &v45;
        ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::begin(&v45, v44);
        ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::end(v47, v43);
        while (ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator!=(v44, v43))
        {
          v42 = ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator*(v44);
          v27 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(a1);
          if (!ot::Mle::Mle::IsRxOnWhenIdle(v27) || (v28 = ot::Ip6::Netif::MulticastAddress::GetAddress(v42), ot::Ip6::Address::IsMulticastLargerThanRealmLocal(v28)))
          {
            v29 = ot::Ip6::Netif::MulticastAddress::GetAddress(v42);
            appended = ot::Mle::Mle::TxMessage::AppendAddressEntry(a1, v29);
            if (appended)
            {
              break;
            }

            if (++v52 >= 0x10u)
            {
              break;
            }
          }

          ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator++(v44);
        }
      }
    }
  }

LABEL_31:
  if (!appended)
  {
    v30 = ot::Message::GetLength(a1);
    ot::Tlv::SetLength(v55, v30 - Length - 2);
    ot::Message::Write<ot::Mle::Tlv>(a1, Length, v55);
  }

  return appended;
}

uint64_t ot::Mle::Mle::SendDataRequestAfterDelay(ot::Mle::Mle *this, const ot::Ip6::Address *a2, unsigned __int16 a3)
{
  if ((*(this + 129) & 2) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return ot::Mle::Mle::SendDataRequest(this, a2, ot::Mle::Mle::SendDataRequestAfterDelay(ot::Ip6::Address const&,unsigned short)::kTlvs, v3, a3, 0);
}

uint64_t ot::Mle::Mle::SendDataRequest(ot::Mle::Mle *a1, const ot::Ip6::Address *a2, unsigned __int8 *a3, unsigned __int8 a4, unsigned __int16 a5, uint64_t a6)
{
  ot::Mle::Mle::RemoveDelayedDataRequestMessage(a1, a2);
  v10 = ot::Mle::Mle::NewMleMessage(a1, 7);
  if (v10)
  {
    appended = ot::Mle::Mle::TxMessage::AppendTlvRequestTlv(v10, a3, a4);
    if (!appended)
    {
      if (!a6 || (v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Initiator>(a1), (appended = ot::LinkMetrics::Initiator::AppendLinkMetricsQueryTlv(v6, v10, a6)) == 0))
      {
        if (a5)
        {
          appended = ot::Mle::Mle::TxMessage::SendAfterDelay(v10, a2, a5);
          if (!appended)
          {
            ot::Mle::Mle::Log(2, 7, a2);
          }
        }

        else
        {
          appended = ot::Mle::Mle::TxMessage::AppendActiveAndPendingTimestampTlvs(v10);
          if (!appended)
          {
            appended = ot::Mle::Mle::TxMessage::SendTo(v10, a2);
            if (!appended)
            {
              ot::Mle::Mle::Log(0, 7, a2);
              if (!ot::Mle::Mle::IsRxOnWhenIdle(a1))
              {
                v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(a1);
                ot::DataPollSender::SendFastPolls(v7, 8u);
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

  if (appended && v10)
  {
    ot::Message::Free(v10);
  }

  if (ot::Mle::Mle::IsChild(a1) && !ot::Mle::Mle::IsRxOnWhenIdle(a1))
  {
    *(a1 + 135) = 1;
    if (!*(a1 + 137))
    {
      ot::Mle::Mle::ScheduleMessageTransmissionTimer(a1);
    }
  }

  return appended;
}

uint64_t ot::Mle::Mle::TxMessage::SendAfterDelay(ot::Mle::Mle::TxMessage *this, const ot::Ip6::Address *a2, unsigned __int16 a3)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = 0;
  Now = ot::TimerMilli::GetNow(this);
  v8 = ot::Time::operator+(&Now, v12);
  v10 = v8;
  v9 = *v13;
  v11 = ot::Mle::Mle::DelayedResponseMetadata::AppendTo(&v9, this);
  if (!v11)
  {
    v3 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
    ot::MessageQueue::Enqueue((v3 + 352), this);
    v4 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
    ot::TimerMilli::FireAtIfEarlier((v4 + 912), v10);
  }

  return v11;
}

BOOL ot::Notifier::IsPending(ot::Notifier *this)
{
  return !ot::Events::IsEmpty(this);
}

{
  return ot::Notifier::IsPending(this);
}

uint64_t ot::Mle::Mle::SendChildUpdateRequest(uint64_t a1, char a2)
{
  v38 = a1;
  v37 = a2;
  appended = 0;
  v34 = 0;
  v33 = 0;
  if (!ot::Neighbor::IsStateValidOrRestoring((a1 + 192)))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "No valid parent when sending Child Update Request requestMode=%d", v2, v3, v4, v5, v6, v7, v37);
    ot::Mle::Mle::BecomeDetached(a1);
    IgnoreError();
    goto LABEL_36;
  }

  if (v37 != 2)
  {
    *(a1 + 137) = 2;
    ot::Mle::Mle::ScheduleMessageTransmissionTimer(a1);
  }

  v34 = ot::Mle::Mle::NewMleMessage(a1, 13);
  if (!v34)
  {
    appended = 3;
    goto LABEL_36;
  }

  appended = ot::Mle::Mle::TxMessage::AppendModeTlv(v34, *(a1 + 131));
  if (appended)
  {
    goto LABEL_36;
  }

  if (v37 == 1 || ot::Mle::Mle::IsDetached(a1))
  {
    ot::Mle::TxChallenge::GenerateRandom((a1 + 360));
    appended = ot::Mle::Mle::TxMessage::AppendChallengeTlv(v34, (a1 + 360));
    if (appended)
    {
      goto LABEL_36;
    }
  }

  v31 = *(a1 + 130);
  if (!*(a1 + 130))
  {
LABEL_29:
    __assert_rtn("SendChildUpdateRequest", "mle.cpp", 3315, "false");
  }

  switch(v31)
  {
    case 1:
      v33 = 1;
      break;
    case 2:
      appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v34);
      if (appended)
      {
        goto LABEL_36;
      }

      appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v34);
      if (appended)
      {
        goto LABEL_36;
      }

      v8 = v37 == 2 ? ot::Mle::Mle::TxMessage::AppendTimeoutTlv(v34, 0) : ot::Mle::Mle::TxMessage::AppendTimeoutTlv(v34, *(a1 + 156));
      appended = v8;
      if (v8)
      {
        goto LABEL_36;
      }

      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SupervisionListener>(a1);
      Interval = ot::SupervisionListener::GetInterval(v9);
      appended = ot::Mle::Mle::TxMessage::AppendSupervisionIntervalTlv(v34, Interval);
      if (appended)
      {
        goto LABEL_36;
      }

      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
      if (ot::Mac::Mac::IsCslEnabled(v11))
      {
        appended = ot::Mle::Mle::TxMessage::AppendCslChannelTlv(v34);
        if (appended)
        {
          goto LABEL_36;
        }

        appended = ot::Mle::Mle::TxMessage::AppendCslTimeoutTlv(v34);
        if (appended)
        {
          goto LABEL_36;
        }
      }

      break;
    case 4:
    case 3:
      goto LABEL_29;
  }

  if (ot::Mle::Mle::IsFullThreadDevice(a1) || (appended = ot::Mle::Mle::TxMessage::AppendAddressRegistrationTlv(v34, v33)) == 0)
  {
    ot::Neighbor::GetExtAddress((a1 + 192));
    ot::Ip6::Address::SetToLinkLocalAddress(&v35, v12);
    appended = ot::Mle::Mle::TxMessage::SendTo(v34, &v35);
    if (!appended)
    {
      ot::Mle::Mle::Log(0, 5, &v35);
      if (ot::Mle::Mle::IsRxOnWhenIdle(a1))
      {
        v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
        ot::MeshForwarder::SetRxOnWhenIdle(v22, 1, v23, v24, v25, v26, v27, v28);
      }

      else
      {
        v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
        ot::MeshForwarder::SetRxOnWhenIdle(v13, 0, v14, v15, v16, v17, v18, v19);
        v30 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(a1);
        v20 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
        IsCslEnabled = ot::Mac::Mac::IsCslEnabled(v20);
        ot::DataPollSender::SetAttachMode(v30, !IsCslEnabled);
      }
    }
  }

LABEL_36:
  if (appended && v34)
  {
    ot::Message::Free(v34);
  }

  return appended;
}

uint64_t ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(ot::Mle::Mle::TxMessage *this)
{
  v1 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
  Rloc16 = ot::Mle::Mle::GetRloc16(v1);
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(this, Rloc16);
}

uint64_t ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(ot::Mle::Mle::TxMessage *this)
{
  v11 = this;
  v7 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
  v1 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(this);
  Version = ot::NetworkData::Leader::GetVersion(v1, 0);
  ot::Mle::LeaderData::SetDataVersion(v7 + 184, Version);
  v8 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
  v3 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(this);
  v4 = ot::NetworkData::Leader::GetVersion(v3, 1);
  ot::Mle::LeaderData::SetStableDataVersion(v8 + 184, v4);
  ot::Mle::LeaderDataTlv::Init(v10);
  v5 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
  ot::Mle::LeaderDataTlv::Set(v10, (v5 + 184));
  return ot::Tlv::AppendTo(v10, this);
}

uint64_t ot::Mle::Mle::TxMessage::AppendCslChannelTlv(ot::Mle::Mle::TxMessage *this)
{
  v6 = this;
  v1 = ot::GetProvider<ot::Message>::Get<ot::Mac::Mac>(this);
  CslChannel = ot::Mac::Mac::GetCslChannel(v1);
  ot::Mle::ChannelTlvValue::ChannelTlvValue(v5, CslChannel);
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)80,ot::Mle::ChannelTlvValue>>(this, v5);
}

uint64_t ot::Mle::Mle::TxMessage::AppendCslTimeoutTlv(ot::Mle::Mle::TxMessage *this)
{
  v1 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
  CslTimeout = ot::Mle::Mle::GetCslTimeout(v1);
  if (!CslTimeout)
  {
    v2 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
    CslTimeout = ot::Mle::Mle::GetTimeout(v2);
  }

  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)85,unsigned int>>(this, CslTimeout);
}

uint64_t ot::Mle::Mle::SendChildUpdateResponse(ot::Mle::Mle *this, const ot::Mle::Mle::TlvList *a2, const ot::Mle::RxChallenge *a3, __n128 *a4)
{
  v13 = 0;
  v14 = ot::Mle::Mle::NewMleMessage(this, 14);
  if (v14)
  {
    appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v14);
    if (!appended)
    {
      appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v14);
      if (!appended)
      {
        ot::Array<unsigned char,(unsigned short)32,unsigned char>::begin();
        v12 = v4;
        v11 = ot::Array<unsigned char,(unsigned short)32,unsigned char>::end(a2);
        while (v12 != v11)
        {
          v9 = *v12;
          switch(v9)
          {
            case 2:
              appended = ot::Mle::Mle::TxMessage::AppendTimeoutTlv(v14, *(this + 39));
              if (appended)
              {
                goto LABEL_39;
              }

              break;
            case 4:
              appended = ot::Mle::Mle::TxMessage::AppendResponseTlv(v14, a3);
              if (appended)
              {
                goto LABEL_39;
              }

              break;
            case 5:
              appended = ot::Mle::Mle::TxMessage::AppendLinkFrameCounterTlv(v14);
              if (appended)
              {
                goto LABEL_39;
              }

              break;
            case 8:
              appended = ot::Mle::Mle::TxMessage::AppendMleFrameCounterTlv(v14);
              if (appended)
              {
                goto LABEL_39;
              }

              break;
            case 17:
              appended = ot::Mle::Mle::TxMessage::AppendStatusTlv(v14, 1u);
              if (appended)
              {
                goto LABEL_39;
              }

              break;
            case 19:
              if (!ot::Mle::Mle::IsFullThreadDevice(this))
              {
                appended = ot::Mle::Mle::TxMessage::AppendAddressRegistrationTlv(v14, 1);
                if (appended)
                {
                  goto LABEL_39;
                }

                v13 = 1;
              }

              break;
            case 27:
              v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SupervisionListener>(this);
              Interval = ot::SupervisionListener::GetInterval(v5);
              appended = ot::Mle::Mle::TxMessage::AppendSupervisionIntervalTlv(v14, Interval);
              if (appended)
              {
                goto LABEL_39;
              }

              break;
            case 85:
              v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
              if (ot::Mac::Mac::IsCslEnabled(v7))
              {
                appended = ot::Mle::Mle::TxMessage::AppendCslTimeoutTlv(v14);
                if (appended)
                {
                  goto LABEL_39;
                }
              }

              break;
          }

          ++v12;
        }

        appended = ot::Mle::Mle::TxMessage::SendTo(v14, a4);
        if (!appended)
        {
          ot::Mle::Mle::Log(0, 6, a4);
          if ((v13 & 1) != 0 && ot::Mle::Mle::HasUnregisteredAddress(this))
          {
            ot::Mle::Mle::SendChildUpdateRequest(this);
            IgnoreError();
          }
        }
      }
    }
  }

  else
  {
    appended = 3;
  }

LABEL_39:
  if (appended && v14)
  {
    ot::Message::Free(v14);
  }

  return appended;
}

void ot::Array<unsigned char,(unsigned short)32,unsigned char>::begin()
{
  ;
}

{
  ot::Array<unsigned char,(unsigned short)32,unsigned char>::begin();
}

uint64_t ot::Array<unsigned char,(unsigned short)32,unsigned char>::end(uint64_t a1)
{
  return a1 + *(a1 + 32);
}

{
  return ot::Array<unsigned char,(unsigned short)32,unsigned char>::end(a1);
}

uint64_t ot::Mle::Mle::TxMessage::AppendLinkFrameCounterTlv(ot::Mle::Mle::TxMessage *this)
{
  v1 = ot::GetProvider<ot::Message>::Get<ot::KeyManager>(this);
  MaximumMacFrameCounter = ot::KeyManager::GetMaximumMacFrameCounter(v1);
  ot::Message::GetSubType(this);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Mle::TxMessage::AppendLinkFrameCounterTlv frameCounterTlv=%u, mleMsgSubType=%d", v2, v3, v4, v5, v6, v7, MaximumMacFrameCounter);
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)5,unsigned int>>(this, MaximumMacFrameCounter);
}

uint64_t ot::Mle::Mle::TxMessage::AppendMleFrameCounterTlv(ot::Mle::Mle::TxMessage *this)
{
  v1 = ot::GetProvider<ot::Message>::Get<ot::KeyManager>(this);
  MleFrameCounter = ot::KeyManager::GetMleFrameCounter(v1);
  ot::Message::GetSubType(this);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Mle::TxMessage::AppendMleFrameCounterTlv mleFrameCounterTlv:%u mleMsgSubType=%d", v2, v3, v4, v5, v6, v7, MleFrameCounter);
  v8 = ot::GetProvider<ot::Message>::Get<ot::KeyManager>(this);
  v9 = ot::KeyManager::GetMleFrameCounter(v8);
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)8,unsigned int>>(this, v9);
}

void ot::Mle::Mle::SendAnnounce(ot::Mle::Mle *a1, unsigned __int8 a2, __n128 *a3, char a4)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  appended = 0;
  v20 = 0;
  if (ot::Mle::Mle::IsRouterOrLeader(a1) && !ot::Mle::Mle::IsRxOnWhenIdle(a1))
  {
    appended = 13;
    goto LABEL_17;
  }

  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
  SupportedChannelMask = ot::Mac::Mac::GetSupportedChannelMask(v4);
  if (!ot::Mac::ChannelMask::ContainsChannel(SupportedChannelMask, v25))
  {
    appended = 7;
    goto LABEL_17;
  }

  v20 = ot::Mle::Mle::NewMleMessage(a1, 15);
  if (!v20)
  {
    appended = 3;
    goto LABEL_17;
  }

  ot::Message::SetLinkSecurityEnabled(v20, 1);
  ot::Message::SetChannel(v20, v25);
  v17 = v20;
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
  PanChannel = ot::Mac::Mac::GetPanChannel(v6);
  ot::Mle::ChannelTlvValue::ChannelTlvValue(v19, PanChannel);
  appended = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)20,ot::Mle::ChannelTlvValue>>(v17, v19);
  if (!appended)
  {
    if (v23)
    {
      if (v23 == 1)
      {
        ot::MeshCoP::Timestamp::SetToOrphanAnnounce(v21);
        appended = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(v20, v21);
        if (appended)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      appended = ot::Mle::Mle::TxMessage::AppendActiveTimestampTlv(v20);
      if (appended)
      {
        goto LABEL_17;
      }
    }

    v16 = v20;
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
    PanId = ot::Mac::Mac::GetPanId(v8);
    appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)21,unsigned short>>(v16, PanId);
    if (!appended)
    {
      appended = ot::Mle::Mle::TxMessage::SendTo(v20, v24);
      if (!appended)
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Send Announce on channel %d", v10, v11, v12, v13, v14, v15, v25);
      }
    }
  }

LABEL_17:
  if (appended)
  {
    if (v20)
    {
      ot::Message::Free(v20);
    }
  }
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)20,ot::Mle::ChannelTlvValue>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 0x14, a2, 3);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)20,ot::Mle::ChannelTlvValue>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 0x16, a2, 8);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(a1, a2);
}

uint64_t ot::Mle::Mle::TxMessage::AppendActiveTimestampTlv(ot::Mle::Mle::TxMessage *this)
{
  v5 = 0;
  active = ot::GetProvider<ot::Message>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
  Timestamp = ot::MeshCoP::DatasetManager::GetTimestamp(active);
  if (ot::MeshCoP::Timestamp::IsValid(Timestamp))
  {
    return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(this, Timestamp);
  }

  return v5;
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)21,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 21, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)21,unsigned short>>(a1, a2);
}

uint64_t ot::Mle::Mle::SendLinkMetricsManagementResponse(uint64_t a1, __n128 *a2, char a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = ot::Mle::Mle::NewMleMessage(a1, 19);
  if (v7)
  {
    ot::Mle::Tlv::SetType(v6, 88);
    ot::Tlv::SetType(v5, 5);
    ot::Tlv::SetLength(v5, 1);
    Size = ot::Tlv::GetSize(v5);
    ot::Tlv::SetLength(v6, Size);
    v8 = ot::Message::Append<ot::Mle::Tlv>(v7, v6);
    if (!v8)
    {
      v8 = ot::Message::Append<ot::Tlv>(v7, v5);
      if (!v8)
      {
        v8 = ot::Message::Append<ot::LinkMetrics::Status>(v7, &v9);
        if (!v8)
        {
          v8 = ot::Mle::Mle::TxMessage::SendTo(v7, v10);
        }
      }
    }
  }

  else
  {
    v8 = 3;
  }

  if (v8 && v7)
  {
    ot::Message::Free(v7);
  }

  return v8;
}

uint64_t ot::Message::Append<ot::LinkMetrics::Status>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 1u);
}

{
  return ot::Message::Append<ot::LinkMetrics::Status>(a1, a2);
}

uint64_t ot::Mle::Mle::SendLinkProbe(ot::Mle::Mle *this, __n128 *a2, char a3, char *a4, unsigned __int8 a5)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = a5;
  appended = 0;
  v7 = ot::Mle::Mle::NewMleMessage(this, 20);
  if (v7)
  {
    ot::Mle::Tlv::SetType(v6, 90);
    ot::Tlv::SetLength(v6, v9 + 1);
    appended = ot::Message::Append<ot::Mle::Tlv>(v7, v6);
    if (!appended)
    {
      appended = ot::Message::Append<unsigned char>(v7, &v11);
      if (!appended)
      {
        appended = ot::Message::AppendBytes(v7, v10, v9);
        if (!appended)
        {
          appended = ot::Mle::Mle::TxMessage::SendTo(v7, v12);
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

uint64_t ot::Mle::Mle::ProcessMessageSecurity(ot::InstanceLocator *a1, char a2, ot::Message *a3, ot::Ip6::MessageInfo *a4, unsigned __int16 a5, ot::Mle::Mle::SecurityHeader *a6)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = 0;
  ot::Crypto::AesCcm::AesCcm(v32);
  v20 = (ot::Message::GetLength(v27) - v25);
  SockAddr = ot::Ip6::MessageInfo::GetSockAddr(v26);
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v26);
  if (v28 && v28 == 1)
  {
    SockAddr = ot::Ip6::MessageInfo::GetPeerAddr(v26);
    PeerAddr = ot::Ip6::MessageInfo::GetSockAddr(v26);
    if (v25 + 5 > ot::Message::GetLength(v27))
    {
      v23 = 6;
      goto LABEL_16;
    }

    LOWORD(v20) = v20 - 4;
  }

  Iid = ot::Ip6::Address::GetIid(SockAddr);
  ot::Ip6::InterfaceIdentifier::ConvertToExtAddress(Iid, v30);
  FrameCounter = ot::Mle::Mle::SecurityHeader::GetFrameCounter(v24);
  ot::Crypto::AesCcm::GenerateNonce(v30, FrameCounter, 5, v31, v8);
  KeyId = ot::Mle::Mle::SecurityHeader::GetKeyId(v24);
  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(a1);
  if (KeyId == ot::KeyManager::GetCurrentKeySequence(v9))
  {
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(a1);
    CurrentMleKey = ot::KeyManager::GetCurrentMleKey(v10);
  }

  else
  {
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(a1);
    CurrentMleKey = ot::KeyManager::GetTemporaryMleKey(v11, KeyId);
  }

  ot::Crypto::AesCcm::SetKey(v32, CurrentMleKey);
  ot::Crypto::AesCcm::Init(v32, 0x2Au, v20, 4u, v31, 0xDu);
  ot::Crypto::AesCcm::Header<ot::Ip6::Address>(v32, SockAddr);
  ot::Crypto::AesCcm::Header<ot::Ip6::Address>(v32, PeerAddr);
  ot::Crypto::AesCcm::Header<ot::Mle::Mle::SecurityHeader>(v32, v24);
  ot::Crypto::AesCcm::Payload(v32, v27, v25, v20, v28);
  ot::Crypto::AesCcm::Finalize(v32, v22);
  if (v28)
  {
    v15 = v27;
    Length = ot::Message::GetLength(v27);
    if (ot::Message::Compare<unsigned char [4]>(v15, Length - 4, v22))
    {
      ot::Message::RemoveFooter(v27, 4u);
    }

    else
    {
      v23 = 8;
    }
  }

  else
  {
    v23 = ot::Message::Append<unsigned char [4]>(v27, v22);
  }

LABEL_16:
  v14 = v23;
  ot::Crypto::AesCcm::~AesCcm(v32);
  return v14;
}

uint64_t ot::Mle::Mle::SecurityHeader::GetFrameCounter(ot::Mle::Mle::SecurityHeader *this)
{
  return ot::LittleEndian::HostSwap32(*(this + 1));
}

{
  return ot::Mle::Mle::SecurityHeader::GetFrameCounter(this);
}

uint64_t ot::Mle::Mle::SecurityHeader::GetKeyId(ot::Mle::Mle::SecurityHeader *this)
{
  return ot::BigEndian::HostSwap32(*(this + 5));
}

{
  return ot::Mle::Mle::SecurityHeader::GetKeyId(this);
}

uint64_t ot::KeyManager::GetCurrentMleKey(ot::KeyManager *this)
{
  return this + 20;
}

{
  return ot::KeyManager::GetCurrentMleKey(this);
}

ot::Crypto::AesEcb *ot::Crypto::AesCcm::Header<ot::Ip6::Address>(ot::Crypto::AesEcb *a1, _BYTE *a2)
{
  return ot::Crypto::AesCcm::Header(a1, a2, 0x10u);
}

{
  return ot::Crypto::AesCcm::Header<ot::Ip6::Address>(a1, a2);
}

ot::Crypto::AesEcb *ot::Crypto::AesCcm::Header<ot::Mle::Mle::SecurityHeader>(ot::Crypto::AesEcb *a1, _BYTE *a2)
{
  return ot::Crypto::AesCcm::Header(a1, a2, 0xAu);
}

{
  return ot::Crypto::AesCcm::Header<ot::Mle::Mle::SecurityHeader>(a1, a2);
}

uint64_t ot::Message::Append<unsigned char [4]>(ot::Message *a1, const void *a2)
{
  return ot::Message::AppendBytes(a1, a2, 4u);
}

{
  return ot::Message::Append<unsigned char [4]>(a1, a2);
}

BOOL ot::Message::Compare<unsigned char [4]>(ot::Message *a1, unsigned __int16 a2, const unsigned __int8 *a3)
{
  return ot::Message::CompareBytes(a1, a2, a3, 4u, 0);
}

{
  return ot::Message::Compare<unsigned char [4]>(a1, a2, a3);
}

uint64_t ot::Message::Read<ot::Mle::Mle::SecurityHeader>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0xAu);
}

{
  return ot::Message::Read<ot::Mle::Mle::SecurityHeader>(a1, a2, a3);
}

BOOL ot::Mle::Mle::SecurityHeader::IsSecurityControlValid(ot::Mle::Mle::SecurityHeader *this)
{
  return *this == 21;
}

{
  return ot::Mle::Mle::SecurityHeader::IsSecurityControlValid(this);
}

uint64_t ot::Neighbor::GetMleFrameCounter(ot::Neighbor *this)
{
  return *(this + 4);
}

{
  return ot::Neighbor::GetMleFrameCounter(this);
}

void ot::Mle::Mle::HandleAdvertisement(ot::Mle::Mle *this, ot::Neighbor **a2)
{
  v32 = this;
  v31 = a2;
  LeaderDataTlv = 0;
  v29 = 0;
  if (!ot::Mle::Mle::IsFullThreadDevice(this))
  {
    goto LABEL_28;
  }

  ot::InstanceLocator::GetInstance(this);
  if (!otPlatVendorGetThreadJoinSession() && ot::Mle::Mle::isThreadStateMachineEnabled(this))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "ThreadConnection: Received Advertisements in Sleepy Router/Full Router Role", v2, v3, v4, v5, v6, v7, v20);
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
    ot::Notifier::Signal(v8, 0x400000000);
  }

  if (!ot::Mle::Mle::IsSleepyRouter(this))
  {
LABEL_28:
    if (!ot::Mle::Mle::IsAttached(this))
    {
      goto LABEL_25;
    }

    LeaderDataTlv = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(*v31, &v29);
    if (LeaderDataTlv)
    {
      goto LABEL_25;
    }

    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v31[1]);
    ot::Mle::Mle::Log(1, 0, PeerAddr, v29);
    LeaderDataTlv = ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(*v31, v28, v10, v11, v12, v13);
    if (LeaderDataTlv)
    {
      goto LABEL_25;
    }

    if (ot::Mle::Mle::IsFullThreadDevice(this))
    {
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      LeaderDataTlv = ot::Mle::MleRouter::HandleAdvertisement(v14, v31, v29, v28);
      if (LeaderDataTlv)
      {
        goto LABEL_25;
      }
    }

    if (ot::Mle::Mle::IsChild(this))
    {
      if (v31[3] != (this + 192))
      {
LABEL_25:
        ot::Mle::Mle::LogProcessError(0, LeaderDataTlv);
        return;
      }

      Rloc16 = ot::Neighbor::GetRloc16((this + 192));
      if (Rloc16 != v29)
      {
        ot::Mle::Mle::BecomeDetached(this);
        IgnoreError();
        goto LABEL_25;
      }

      PartitionId = ot::Mle::LeaderData::GetPartitionId(v28);
      if (PartitionId != ot::Mle::LeaderData::GetPartitionId((this + 184)) || (LeaderRouterId = ot::Mle::LeaderData::GetLeaderRouterId(v28), LeaderId = ot::Mle::Mle::GetLeaderId(this), v17 = LeaderRouterId, LeaderRouterId != LeaderId))
      {
        ot::Mle::Mle::SetLeaderData(this, v28);
        v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
        v21 = v31;
        RouterId = ot::Neighbor::GetRouterId((this + 192));
        v17 = ot::Mle::MleRouter::ReadAndProcessRouteTlvOnFed(v22, v21, RouterId);
        LeaderDataTlv = v17;
        if (v17)
        {
          goto LABEL_25;
        }

        *(this + 129) = *(this + 129) & 0xFE | 1;
      }

      Now = ot::TimerMilli::GetNow(v17);
      ot::Neighbor::SetLastHeard(this + 192, Now);
    }

    else if (!ot::Mle::Mle::RxInfo::IsNeighborStateValid(v31))
    {
      goto LABEL_25;
    }

    if ((*(this + 129) & 1) != 0 || ot::Mle::Mle::IsNetworkDataNewer(this, v28))
    {
      Uint16InRange = ot::Random::NonCrypto::GetUint16InRange(0, 0x3E8u);
      v19 = ot::Ip6::MessageInfo::GetPeerAddr(v31[1]);
      ot::Mle::Mle::SendDataRequestAfterDelay(this, v19, Uint16InRange);
      IgnoreError();
    }

    *(v31 + 32) = 2;
    goto LABEL_25;
  }
}

void ot::Mle::Mle::HandleDataResponse(ot::Mle::Mle *this, ot::Neighbor **a2)
{
  v33 = this;
  v32 = a2;
  LeaderDataTlv = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
  ot::Mle::Mle::Log(1, 8, PeerAddr);
  if (ot::Mle::Mle::RxInfo::IsNeighborStateValid(v32))
  {
    if (!ot::Tlv::FindTlvValueOffsetRange(*v32, 0x59, &v26, v3))
    {
      v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Initiator>(this);
      v23 = *v32;
      v4 = ot::Ip6::MessageInfo::GetPeerAddr(v32[1]);
      ot::LinkMetrics::Initiator::HandleReport(v24, v23, &v26, v4);
    }

    v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    v21 = v32;
    RouterId = ot::Neighbor::GetRouterId((this + 192));
    LeaderDataTlv = ot::Mle::MleRouter::ReadAndProcessRouteTlvOnFed(v22, v21, RouterId);
    if (!LeaderDataTlv)
    {
      LeaderDataTlv = ot::Mle::Mle::HandleLeaderData(this, v32, v6, v7, v8, v9);
      if (!*(this + 135) && !ot::Mle::Mle::IsRxOnWhenIdle(this))
      {
        v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
        ot::DataPollSender::StopFastPolls(v10);
      }

      if (!LeaderDataTlv)
      {
        *(v32 + 32) = 2;
        LeaderDataTlv = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(*v32, &v28);
        if (!LeaderDataTlv)
        {
          v29 = ot::Mle::RouterIdFromRloc16(v28);
          v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
          ot::RouterTable::FindRouterById((v11 + 30904), v29);
          v30 = v16;
          if (v16)
          {
            LeaderDataTlv = ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(*v32, v27, v12, v13, v14, v15);
            if (!LeaderDataTlv)
            {
              v19 = v30;
              DataVersion = ot::Mle::LeaderData::GetDataVersion(v27, 0);
              ot::Neighbor::SetLeaderFullDataVersion(v19, DataVersion);
              v20 = v30;
              v18 = ot::Mle::LeaderData::GetDataVersion(v27, 1);
              ot::Neighbor::SetLeaderStableDataVersion(v20, v18);
            }
          }
        }
      }
    }
  }

  else
  {
    LeaderDataTlv = 2;
  }

  ot::Mle::Mle::LogProcessError(8, LeaderDataTlv);
}

void ot::Mle::Mle::HandleParentResponse(ot::Mle::Mle *this, ot::Ip6::MessageInfo **a2)
{
  v213 = this;
  v212 = a2;
  v194 = this;
  VersionTlv = 0;
  AverageRss = ot::Message::GetAverageRss(*a2);
  v209 = 0;
  v208 = 0;
  v206 = 0;
  v205 = 0;
  v204 = 0;
  v202 = 0;
  v201 = 0;
  if (!ot::Mle::Mle::isThreadCertEnabled(v194))
  {
    v193 = &ot::Mle::kLogModuleName;
    ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "%s: Cert Flag disabled", v2, v3, v4, v5, v6, v7, "HandleParentResponse");
    v8 = ot::Mle::Mle::AttachStateToString(*(v194 + 132));
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Parent response received in mAttachState:%s", v9, v10, v11, v12, v13, v14, v8);
    if (*(v194 + 132) != 3 && *(v194 + 132) != 4)
    {
      VersionTlv = 13;
      goto LABEL_55;
    }
  }

  VersionTlv = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(*v212, &v208);
  if (!VersionTlv)
  {
    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v212[1]);
    ot::Mle::Mle::Log(1, 15, PeerAddr, v208);
    VersionTlv = ot::Mle::Mle::RxMessage::ReadVersionTlv(*v212, &v209);
    if (!VersionTlv)
    {
      VersionTlv = ot::Mle::Mle::RxMessage::ReadAndMatchResponseTlvWith(*v212, v194 + 360);
      if (!VersionTlv)
      {
        v16 = ot::Ip6::MessageInfo::GetPeerAddr(v212[1]);
        Iid = ot::Ip6::Address::GetIid(v16);
        ot::Ip6::InterfaceIdentifier::ConvertToExtAddress(Iid, v217);
        if (ot::Mle::Mle::IsChild(v194))
        {
          ot::Neighbor::GetExtAddress((v194 + 192));
          if (ot::Equatable<ot::Mac::ExtAddress>::operator==(v22, v217))
          {
            *(v194 + 129) = *(v194 + 129) & 0xF7 | 8;
          }
        }

        VersionTlv = ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(*v212, &v207, v18, v19, v20, v21);
        if (!VersionTlv)
        {
          VersionTlv = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)16,unsigned char>>(*v212, &v206);
          if (!VersionTlv)
          {
            v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v194);
            v24 = ot::Mac::Mac::ComputeLinkMargin(v23, AverageRss);
            v205 = ot::Min<unsigned char>(v24, v206);
            v204 = ot::LinkQualityForLinkMargin(v205);
            VersionTlv = ot::Tlv::FindTlv<ot::Mle::ConnectivityTlv>(*v212, v203, v25, v26, v27, v28);
            if (!VersionTlv)
            {
              PartitionId = ot::Mle::LeaderData::GetPartitionId(&v207);
              v185 = AverageRss;
              v186 = v204;
              v182 = v203;
              ParentPriority = ot::Mle::ConnectivityTlv::GetParentPriority(v203);
              LinkQuality1 = ot::Mle::ConnectivityTlv::GetLinkQuality1(v203);
              LinkQuality2 = ot::Mle::ConnectivityTlv::GetLinkQuality2(v203);
              LinkQuality3 = ot::Mle::ConnectivityTlv::GetLinkQuality3(v203);
              v29 = ot::Ip6::MessageInfo::GetPeerAddr(v212[1]);
              v183 = v216;
              ot::Ip6::Address::ToString(v29, v216);
              v191 = &v131;
              v132 = v185;
              v133 = v186;
              v134 = ParentPriority;
              v135 = LinkQuality1;
              v136 = LinkQuality2;
              v137 = LinkQuality3;
              v138 = ot::String<(unsigned short)40>::AsCString(v216);
              v139 = v208;
              ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Partition ID: %u, RSSI: %d, Link quality: %u, Priority: %d, LQI1: %u, LQI2: %u, LQI3: %u (%s,0x%04x)", v30, v31, v32, v33, v34, v35, PartitionId);
              CslClockAccuracyTlv = ot::Mle::Mle::RxMessage::ReadCslClockAccuracyTlv(*v212, v200, v36, v37, v38, v39);
              if (CslClockAccuracyTlv)
              {
                if (CslClockAccuracyTlv != 23)
                {
                  ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Parent Response parse error: Could not read CSL accuracy TLV", v40, v41, v42, v43, v44, v45, v131);
                  VersionTlv = 6;
                  goto LABEL_55;
                }

                ot::Mac::CslAccuracy::Init(v200);
              }

              v46 = v194;
              *(v212 + 32) = 1;
              if (ot::Mle::Mle::IsFullThreadDevice(v46) && !ot::Mle::Mle::IsDetached(v194))
              {
                v163 = &v207;
                v160 = ot::Mle::LeaderData::GetPartitionId(&v207);
                v47 = ot::Mle::LeaderData::GetPartitionId((v194 + 184));
                v199 = v160 == v47;
                v164 = v203;
                IdSequence = ot::Mle::ConnectivityTlv::GetIdSequence(v203);
                v48 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(v194);
                RouterIdSequence = ot::RouterTable::GetRouterIdSequence(v48);
                v198 = IdSequence == RouterIdSequence;
                v162 = ot::Mle::ConnectivityTlv::GetIdSequence(v164);
                v50 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(v194);
                v51 = ot::RouterTable::GetRouterIdSequence(v50);
                v197 = ot::SerialNumber::IsGreater<unsigned char>(v162, v51);
                v165 = v199;
                v166 = v198;
                v167 = v197;
                v168 = *(v194 + 134);
                v169 = v199;
                v170 = v198;
                v171 = v197;
                v172 = *(v194 + 134);
                v173 = ot::Mle::LeaderData::GetPartitionId((v194 + 184));
                v52 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(v194);
                v174 = ot::RouterTable::GetRouterIdSequence(v52);
                Weighting = ot::Mle::LeaderData::GetWeighting((v194 + 184));
                v53 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v194);
                IsSingleton = ot::Mle::MleRouter::IsSingleton(v53);
                v177 = ot::Mle::LeaderData::GetPartitionId(v163);
                v178 = ot::Mle::ConnectivityTlv::GetIdSequence(v164);
                v179 = ot::Mle::LeaderData::GetWeighting(v163);
                ActiveRouters = ot::Mle::ConnectivityTlv::GetActiveRouters(v164);
                v180 = &v131;
                v132 = v166;
                v133 = v167;
                v134 = v168;
                v135 = v169;
                v136 = v170;
                v137 = v171;
                v138 = v172;
                v139 = v173;
                v140 = v174;
                v141 = Weighting;
                v142 = IsSingleton;
                v143 = v177;
                v144 = v178;
                v145 = v179;
                v146 = ActiveRouters;
                ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Parent Response isPartIdSame=%d, isIdSeqSame=%d, isIdSeqGreater=%d,mAttachMode=%d cur:[partId:%u, idSeq:%u wt:%u, isSingleton:%d] other:[partId:%u, idSeq:%u wt:%u acRtrs:%u] ", v135, v168, v168, v132, v165, v55, v165);
                v181 = *(v194 + 134);
                switch(v181)
                {
                  case 0:
                    goto LABEL_27;
                  case 1:
                    if (!v199 || !v197)
                    {
                      goto LABEL_55;
                    }

                    break;
                  case 2:
                    if (v199)
                    {
                      goto LABEL_55;
                    }

                    v159 = ot::Mle::ConnectivityTlv::IsSingleton(v203);
                    v56 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v194);
                    v57 = ot::Mle::MleRouter::IsSingleton(v56);
                    if (ot::Mle::MleRouter::ComparePartitions(v159, &v207, v57, (v194 + 184), v58) <= 0)
                    {
                      goto LABEL_55;
                    }

                    break;
                  case 3:
                    if (!v199 || !v198 && !v197)
                    {
                      goto LABEL_55;
                    }

                    break;
                  case 4:
LABEL_27:
                    if (v199 && !v197)
                    {
                      goto LABEL_55;
                    }

                    break;
                }
              }

              if (!ot::Neighbor::IsStateParentResponse((v194 + 368)))
              {
                goto LABEL_47;
              }

              ot::Neighbor::GetExtAddress((v194 + 368));
              if (!ot::Unequatable<ot::Mac::ExtAddress>::operator!=(v59, v217))
              {
                goto LABEL_47;
              }

              v196 = 0;
              if (ot::Mle::Mle::IsFullThreadDevice(v194))
              {
                v60 = ot::Mle::ConnectivityTlv::IsSingleton(v203);
                v196 = ot::Mle::MleRouter::ComparePartitions(v60, &v207, (*(v194 + 540) & 1), (v194 + 532), v61);
              }

              if ((v196 & 0x80000000) == 0 && (v196 || ot::Mle::Mle::IsBetterParent(v194, v208, v205, v203, v209, v200)))
              {
LABEL_47:
                VersionTlv = ot::Mle::Mle::RxMessage::ReadFrameCounterTlvs(*v212, &v202, &v201);
                if (!VersionTlv)
                {
                  v62 = ot::Ip6::MessageInfo::GetPeerAddr(v212[1]);
                  v158 = v215;
                  ot::Ip6::Address::ToString(v62, v215);
                  v132 = ot::String<(unsigned short)40>::AsCString(v158);
                  v133 = v202;
                  v134 = v201;
                  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s Rx from %s linkFrameCounter=%d mleFrameCounter=%d", v63, v64, v65, v66, v67, v68, "HandleParentResponse");
                  VersionTlv = ot::Mle::Mle::RxMessage::ReadChallengeTlv(*v212, (v194 + 513), v69, v70);
                  if (!VersionTlv)
                  {
                    ot::Mle::Mle::InitNeighbor(v194, (v194 + 368), v212);
                    ot::Neighbor::SetRloc16(v194 + 368, v208);
                    LinkFrameCounters = ot::Neighbor::GetLinkFrameCounters((v194 + 368));
                    ot::Mac::LinkFrameCounters::SetAll(LinkFrameCounters, v202);
                    ot::Neighbor::SetLinkAckFrameCounter(v194 + 368, v202);
                    ot::Neighbor::SetMleFrameCounter(v194 + 368, v201);
                    ot::Neighbor::SetVersion(v194 + 368, v209);
                    v147 = v194 + 368;
                    ot::Mle::DeviceMode::DeviceMode(&v195, 11);
                    ot::Neighbor::SetDeviceMode(v147, v195);
                    v148 = v194 + 368;
                    v72 = ot::LinkQualityForLinkMargin(v206);
                    ot::Router::SetLinkQualityOut(v148, v72);
                    ot::Neighbor::SetState(v194 + 368, 3);
                    ot::Neighbor::SetKeySequence(v194 + 368, *(v212 + 5));
                    v149 = (v194 + 368);
                    v151 = v203;
                    LeaderCost = ot::Mle::ConnectivityTlv::GetLeaderCost(v203);
                    ot::Parent::SetLeaderCost(v149, LeaderCost);
                    v150 = v200;
                    ClockAccuracy = ot::Mac::CslAccuracy::GetClockAccuracy(v200);
                    v157 = &ot::Mle::kLogModuleName;
                    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "ClockAccuracy Info-HandleParentResponse: Accuracy - %d", v75, v76, v77, v78, v79, v80, ClockAccuracy);
                    Uncertainty = ot::Mac::CslAccuracy::GetUncertainty(v150);
                    ot::Logger::LogAtLevel<(ot::LogLevel)4>(v157, "ClockUncertainity Info-HandleParentResponse: Uncertainity - %d", v82, v83, v84, v85, v86, v87, Uncertainty);
                    ot::Parent::SetCslAccuracy(v194 + 368, v150);
                    v88 = ot::Mle::ConnectivityTlv::GetParentPriority(v151);
                    v89 = v151;
                    *(v194 + 522) = v88;
                    v90 = ot::Mle::ConnectivityTlv::GetLinkQuality3(v89);
                    v91 = v151;
                    *(v194 + 523) = v90;
                    v92 = ot::Mle::ConnectivityTlv::GetLinkQuality2(v91);
                    v93 = v151;
                    *(v194 + 524) = v92;
                    v94 = ot::Mle::ConnectivityTlv::GetLinkQuality1(v93);
                    v95 = v151;
                    *(v194 + 525) = v94;
                    SedBufferSize = ot::Mle::ConnectivityTlv::GetSedBufferSize(v95);
                    v97 = v151;
                    *(v194 + 263) = SedBufferSize;
                    SedDatagramCount = ot::Mle::ConnectivityTlv::GetSedDatagramCount(v97);
                    v99 = v194;
                    v100 = SedDatagramCount;
                    v101 = v151;
                    *(v194 + 528) = v100;
                    *(v99 + 532) = v207;
                    v102 = ot::Mle::ConnectivityTlv::IsSingleton(v101);
                    v103 = v194;
                    *(v194 + 540) = v102;
                    *(v103 + 529) = v205;
                    v104 = ot::Ip6::MessageInfo::GetPeerAddr(v212[1]);
                    v152 = v214;
                    ot::Ip6::Address::ToString(v104, v214);
                    v153 = ot::String<(unsigned short)40>::AsCString(v152);
                    Rloc16 = ot::Neighbor::GetRloc16((v194 + 368));
                    v155 = v202;
                    v156 = v201;
                    v105 = ot::Mle::Mle::AttachStateToString(*(v194 + 132));
                    v132 = Rloc16;
                    v133 = v155;
                    v134 = v156;
                    v135 = v105;
                    v136 = v204;
                    ot::Logger::LogAtLevel<(ot::LogLevel)4>(v157, "Added new parent candidate: %s (0x%x) ,linkFc:%u, mleFc:%u, mAttachState:%s, linkQuality:%d", v106, v107, v108, v109, v110, v111, v153);
                    if (!ot::Mle::Mle::isThreadCertEnabled(v194))
                    {
                      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "%s: Cert Flag disabled", v112, v113, v114, v115, v116, v117, "HandleParentResponse");
                      if (v204 == 3 && (*(v194 + 132) == 3 || *(v194 + 132) == 4))
                      {
                        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Found new parent candidate with linkQuality: %d, stopping the attach timer", v118, v119, v120, v121, v122, v123, v204);
                        ot::TimerMilli::Stop((v194 + 888));
                        ot::TimerMilli::Start((v194 + 888), 0);
                      }

                      else
                      {
                        v124 = ot::Mle::Mle::AttachStateToString(*(v194 + 132));
                        v132 = v204;
                        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Not handling parent response in mAttachState:%s, linkQuality:%d ", v125, v126, v127, v128, v129, v130, v124);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_55:
  ot::Mle::Mle::LogProcessError(15, VersionTlv);
}

void ot::Mle::Mle::HandleChildIdResponse(ot::Mle::Mle *this, ot::Neighbor **a2)
{
  v50 = this;
  v49 = a2;
  LeaderDataTlv = 0;
  v46 = 0;
  v45 = 0;
  LeaderDataTlv = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(*a2, &v46);
  if (!LeaderDataTlv)
  {
    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v49[1]);
    ot::Mle::Mle::Log(1, 4, PeerAddr, v46);
    if (!ot::Mle::Mle::RxInfo::IsNeighborStateValid(v49))
    {
      LeaderDataTlv = 8;
      goto LABEL_29;
    }

    if (*(this + 132) == 5)
    {
      LeaderDataTlv = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)10,unsigned short>>(*v49, &v45);
      if (!LeaderDataTlv)
      {
        if (!ot::Mle::RouterIdMatch(v46, v45))
        {
          LeaderDataTlv = 37;
          goto LABEL_29;
        }

        LeaderDataTlv = ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(*v49, v47, v3, v4, v5, v6);
        if (!LeaderDataTlv && ot::Mle::Mle::RxMessage::ContainsTlv(*v49, 0xCu, v7, v8))
        {
          v42 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(*v49, v44);
          if (v42)
          {
            if (v42 != 23)
            {
              LeaderDataTlv = 6;
              goto LABEL_29;
            }
          }

          else
          {
            LeaderDataTlv = ot::Mle::Mle::RxMessage::ReadAndSaveActiveDataset(*v49, v44);
            if (LeaderDataTlv == 23)
            {
              v41 = 0;
            }

            else
            {
              v41 = LeaderDataTlv;
            }

            LeaderDataTlv = v41;
            if (v41)
            {
              goto LABEL_29;
            }
          }

          if (*(this + 133) == 3)
          {
            v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
            ot::MeshCoP::DatasetManager::Clear(v9);
          }

          v40 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)23,ot::MeshCoP::Timestamp>>(*v49, v44);
          if (v40)
          {
            if (v40 != 23)
            {
              LeaderDataTlv = 6;
              goto LABEL_29;
            }

            v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
            ot::MeshCoP::DatasetManager::Clear(v10);
          }

          else
          {
            ot::Mle::Mle::RxMessage::ReadAndSavePendingDataset(*v49, v44);
            IgnoreError();
          }

          ot::Mle::Mle::SetStateDetached(this);
          ot::Mle::Mle::SetLeaderData(this, v47);
          v39 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
          v38 = v49;
          v11 = ot::Mle::RouterIdFromRloc16(v46);
          LeaderDataTlv = ot::Mle::MleRouter::ReadAndProcessRouteTlvOnFed(v39, v38, v11);
          if (!LeaderDataTlv)
          {
            ot::Mle::Mle::ParentCandidate::CopyTo((this + 368), (this + 192));
            ot::Mle::Mle::ParentCandidate::Clear((this + 368));
            CslAccuracy = ot::Parent::GetCslAccuracy((this + 192));
            ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "ClockAccuracy Info-ChildIdResponse: Accuracy - %d", v13, v14, v15, v16, v17, v18, *CslAccuracy);
            v37 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
            v19 = ot::Parent::GetCslAccuracy((this + 192));
            ot::Mac::Mac::SetCslParentAccuracy(v37, v19);
            ot::Neighbor::SetRloc16(this + 192, v46);
            ot::Mle::Mle::RxMessage::ReadAndSetNetworkDataTlv(*v49, v47, v20, v21);
            IgnoreError();
            ot::Mle::Mle::SetStateChild(this, v45);
            if (ot::Mle::Mle::IsRxOnWhenIdle(this))
            {
              v30 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
              ot::MeshForwarder::SetRxOnWhenIdle(v30, 1, v31, v32, v33, v34, v35, v36);
            }

            else
            {
              v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
              ot::DataPollSender::SetAttachMode(v22, 0);
              v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
              ot::MeshForwarder::SetRxOnWhenIdle(v23, 0, v24, v25, v26, v27, v28, v29);
            }

            *(v49 + 32) = 2;
          }
        }
      }
    }
  }

LABEL_29:
  ot::Mle::Mle::LogProcessError(4, LeaderDataTlv);
}

void ot::Mle::Mle::HandleAnnounce(ot::Mle::Mle *this, ot::Ip6::MessageInfo **a2)
{
  v30 = this;
  v29 = a2;
  v28 = 0;
  Channel = 0;
  v24 = 0;
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
  ot::Mle::Mle::Log(1, 1, PeerAddr);
  v28 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)20,ot::Mle::ChannelTlvValue>>(*v29, v27);
  if (!v28)
  {
    Channel = ot::Mle::ChannelTlvValue::GetChannel(v27);
    v28 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(*v29, v26);
    if (!v28)
    {
      v28 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)21,unsigned short>>(*v29, &v24);
      if (!v28)
      {
        *(v29 + 32) = 2;
        IsOrphanAnnounce = ot::MeshCoP::Timestamp::IsOrphanAnnounce(v26);
        active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
        Timestamp = ot::MeshCoP::DatasetManager::GetTimestamp(active);
        v22 = ot::MeshCoP::Timestamp::Compare(v26, Timestamp, v5);
        v19 = Channel;
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        v20 = 0;
        if (v19 == ot::Mac::Mac::GetPanChannel(v6))
        {
          v18 = v24;
          v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
          v20 = v18 == ot::Mac::Mac::GetPanId(v7);
        }

        if (IsOrphanAnnounce || v22 < 0)
        {
          if (!IsOrphanAnnounce || !v20)
          {
            ot::Mle::Mle::SendAnnounce(this, Channel);
            v17 = Channel;
            v8 = ot::Ip6::MessageInfo::GetPeerAddr(*(v29 + 1));
            ot::Mle::Mle::SendAnnounce(this, v17, v8, 0);
          }
        }

        else if (v22 <= 0)
        {
          v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AnnounceSender>(this);
          ot::AnnounceSender::UpdateOnReceivedAnnounce(v15);
        }

        else if (!ot::Mle::Mle::IsDetached(this) || !v20)
        {
          if (*(this + 132) != 1 || (v16 = *(this + 21), v16 < ot::MeshCoP::Timestamp::GetSeconds(v26)))
          {
            *(this + 21) = ot::MeshCoP::Timestamp::GetSeconds(v26);
            *(this + 142) = Channel;
            *(this + 76) = v24;
            ot::Mle::Mle::SetAttachState(this, 1u);
            ot::TimerMilli::Start((this + 888), 0xFAu);
            ot::Mle::Mle::ResetAttachCounter(this);
            ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Delay processing Announce - channel %d, panid 0x%02x", v9, v10, v11, v12, v13, v14, Channel);
          }
        }
      }
    }
  }

  ot::Mle::Mle::LogProcessError(1, v28);
}

void ot::Mle::Mle::HandleChildUpdateRequest(ot::Mle::Mle *this, ot::Mle::Mle::RxInfo *a2)
{
  v26 = this;
  v25 = a2;
  updated = 0;
  v23 = 0;
  ot::Mle::RxChallenge::RxChallenge(v29);
  ot::Mle::Mle::TlvList::TlvList(v28);
  ot::Mle::Mle::TlvList::TlvList(v27);
  updated = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(*v25, &v23);
  if (!updated)
  {
    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(*(v25 + 1));
    ot::Mle::Mle::Log(1, 5, PeerAddr, v23);
    ChallengeTlv = ot::Mle::Mle::RxMessage::ReadChallengeTlv(*v25, v29, v3, v4);
    if (ChallengeTlv)
    {
      if (ChallengeTlv != 23)
      {
        updated = 6;
        goto LABEL_24;
      }

      ot::Mle::RxChallenge::Clear(v29);
    }

    else
    {
      ot::Mle::Mle::TlvList::Add(v27, 4);
      ot::Mle::Mle::TlvList::Add(v27, 8);
      ot::Mle::Mle::TlvList::Add(v27, 5);
    }

    if (*(v25 + 3) != this + 192)
    {
      ot::Mle::Mle::TlvList::Add(v27, 17);
      goto LABEL_19;
    }

    v22 = 0;
    v18 = ot::Tlv::Find<ot::Mle::StatusTlv>(*v25, &v22);
    if (v18)
    {
      if (v18 != 23)
      {
        updated = 6;
        goto LABEL_24;
      }
    }

    else if (v22 == 1)
    {
      goto LABEL_12;
    }

    Rloc16 = ot::Neighbor::GetRloc16((this + 192));
    if (Rloc16 == v23)
    {
      updated = ot::Mle::Mle::HandleLeaderData(this, v25, v6, v7, v8, v9);
      if (updated)
      {
        goto LABEL_24;
      }

      if (!ot::Mle::Mle::RxMessage::ReadCslClockAccuracyTlv(*v25, v21, v10, v11, v12, v13))
      {
        ot::Mle::Mle::TlvList::Add(v27, 85);
      }

LABEL_19:
      TlvRequestTlv = ot::Mle::Mle::RxMessage::ReadTlvRequestTlv(*v25, v28, v14, v15);
      if (TlvRequestTlv)
      {
        if (TlvRequestTlv != 23)
        {
          updated = 6;
          goto LABEL_24;
        }
      }

      else
      {
        ot::Mle::Mle::TlvList::AddElementsFrom(v27, v28);
      }

      *(v25 + 32) = 2;
      ot::Mle::Mle::ProcessKeySequence(this, v25);
      v16 = ot::Ip6::MessageInfo::GetPeerAddr(*(v25 + 1));
      updated = ot::Mle::Mle::SendChildUpdateResponse(this, v27, v29, v16);
      goto LABEL_24;
    }

LABEL_12:
    ot::Mle::Mle::BecomeDetached(this);
    IgnoreError();
  }

LABEL_24:
  ot::Mle::Mle::LogProcessError(5, updated);
}

void ot::Mle::Mle::HandleChildUpdateResponse(ot::Mle::Mle *this, ot::Mle::Mle::RxMessage **a2)
{
  v61 = this;
  v60 = a2;
  ModeTlv = 0;
  v58 = 0;
  ot::Mle::RxChallenge::RxChallenge(v63);
  v56 = 0;
  v55 = 0;
  v54 = 0;
  *v53 = 0;
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v60[1]);
  ot::Mle::Mle::Log(1, 6, PeerAddr);
  ResponseTlv = ot::Mle::Mle::RxMessage::ReadResponseTlv(*v60, v63, v3, v4);
  if (ResponseTlv)
  {
    if (ResponseTlv != 23)
    {
      ModeTlv = 6;
      goto LABEL_48;
    }

    ot::Mle::RxChallenge::Clear(v63);
  }

  v49 = *(this + 130);
  if (v49 == 1)
  {
    if (!ot::Mle::RxChallenge::operator==(v63, this + 360))
    {
      ModeTlv = 8;
      goto LABEL_48;
    }
  }

  else
  {
    if (v49 != 2)
    {
      __assert_rtn("HandleChildUpdateResponse", "mle.cpp", 5094, "false");
    }

    if (v60[3] != (this + 192) || !ot::Neighbor::IsStateValid((this + 192)))
    {
      ModeTlv = 8;
      goto LABEL_48;
    }
  }

  if (ot::Tlv::Find<ot::Mle::StatusTlv>(*v60, &v58))
  {
    ModeTlv = ot::Mle::Mle::RxMessage::ReadModeTlv(*v60, &v57);
    if (!ModeTlv)
    {
      if (ot::Equatable<ot::Mle::DeviceMode>::operator==(&v57, this + 131))
      {
        v48 = *(this + 130);
        if (v48 == 1)
        {
          ModeTlv = ot::Mle::Mle::RxMessage::ReadFrameCounterTlvs(*v60, &v56, &v55);
          if (ModeTlv)
          {
            goto LABEL_48;
          }

          v5 = ot::Ip6::MessageInfo::GetPeerAddr(v60[1]);
          ot::Ip6::Address::ToString(v5, v62);
          ot::String<(unsigned short)40>::AsCString(v62);
          ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s Rx from %s linkFrameCounter=%d mleFrameCounter=%d", v6, v7, v8, v9, v10, v11, "HandleChildUpdateResponse");
          LinkFrameCounters = ot::Neighbor::GetLinkFrameCounters((this + 192));
          ot::Mac::LinkFrameCounters::SetAll(LinkFrameCounters, v56);
          ot::Neighbor::SetLinkAckFrameCounter(this + 192, v56);
          ot::Neighbor::SetMleFrameCounter(this + 192, v55);
          ot::Neighbor::SetState(this + 192, 7);
          Rloc16 = ot::Mle::Mle::GetRloc16(this);
          ot::Mle::Mle::SetStateChild(this, Rloc16);
          *(this + 129) = *(this + 129) & 0xFE | 1;
          if (ot::Mle::Mle::IsFullThreadDevice(this))
          {
            *(this + 129) = *(this + 129) & 0xFD | 2;
          }
        }

        else if (v48 != 2)
        {
          __assert_rtn("HandleChildUpdateResponse", "mle.cpp", 5196, "false");
        }

        ModeTlv = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(*v60, &v54);
        if (!ModeTlv)
        {
          if (ot::Mle::Mle::HasMatchingRouterIdWith(this, v54))
          {
            ModeTlv = ot::Mle::Mle::HandleLeaderData(this, v60, v14, v15, v16, v17);
            if (!ModeTlv)
            {
              v47 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned int>>(*v60, v53);
              if (v47)
              {
                if (v47 != 23)
                {
                  ModeTlv = 6;
                  goto LABEL_48;
                }
              }

              else if (*v53 || !ot::Mle::Mle::IsDetachingGracefully(this))
              {
                *(this + 39) = *v53;
              }

              else
              {
                ot::Mle::Mle::Stop(this);
              }

              CslClockAccuracyTlv = ot::Mle::Mle::RxMessage::ReadCslClockAccuracyTlv(*v60, v52, v18, v19, v20, v21);
              if (CslClockAccuracyTlv)
              {
                if (CslClockAccuracyTlv != 23)
                {
                  ModeTlv = 6;
                  goto LABEL_48;
                }
              }

              else
              {
                v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
                ot::Mac::Mac::SetCslParentAccuracy(v22, v52);
                ClockAccuracy = ot::Mac::CslAccuracy::GetClockAccuracy(v52);
                ot::Mac::CslAccuracy::GetUncertainty(v52);
                ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "ClockAccuracy Info-ChildUpdateResponse: Accuracy - %d, Uncertainty - %d", v23, v24, v25, v26, v27, v28, ClockAccuracy);
              }

              if (ot::Mle::Mle::IsRxOnWhenIdle(this))
              {
                v37 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
                ot::MeshForwarder::SetRxOnWhenIdle(v37, 1, v38, v39, v40, v41, v42, v43);
              }

              else
              {
                v29 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
                ot::DataPollSender::SetAttachMode(v29, 0);
                v30 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
                ot::MeshForwarder::SetRxOnWhenIdle(v30, 0, v31, v32, v33, v34, v35, v36);
              }

              if (ot::Mle::RxChallenge::IsEmpty(v63))
              {
                v44 = 2;
              }

              else
              {
                v44 = 1;
              }

              *(v60 + 32) = v44;
            }
          }

          else
          {
            ot::Mle::Mle::BecomeDetached(this);
            IgnoreError();
          }
        }
      }

      else
      {
        ModeTlv = 2;
      }
    }
  }

  else
  {
    ot::Mle::Mle::BecomeDetached(this);
    IgnoreError();
  }

LABEL_48:
  if (!ModeTlv && *(this + 137) == 2)
  {
    *(this + 139) = 0;
    *(this + 137) = 0;
    ot::Mle::Mle::ScheduleMessageTransmissionTimer(this);
  }

  ot::Mle::Mle::LogProcessError(6, ModeTlv);
}

void ot::Mle::Mle::HandleLinkMetricsManagementRequest(ot::Mle::Mle *this, ot::Ip6::MessageInfo **a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
  ot::Mle::Mle::Log(1, 28, PeerAddr);
  if (ot::Mle::Mle::RxInfo::IsNeighborStateValid(v8))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Subject>(this);
    v7 = ot::LinkMetrics::Subject::HandleManagementRequest(v3, *v8, *(v8 + 3), &v6);
    if (!v7)
    {
      v4 = ot::Ip6::MessageInfo::GetPeerAddr(*(v8 + 1));
      v7 = ot::Mle::Mle::SendLinkMetricsManagementResponse(this, v4, v6);
      *(v8 + 32) = 2;
    }
  }

  else
  {
    v7 = 13;
  }

  ot::Mle::Mle::LogProcessError(28, v7);
}

void ot::Mle::Mle::HandleLinkMetricsManagementResponse(ot::Mle::Mle *this, ot::Ip6::MessageInfo **a2)
{
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
  ot::Mle::Mle::Log(1, 29, PeerAddr);
  if (ot::Mle::Mle::RxInfo::IsNeighborStateValid(a2))
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Initiator>(this);
    v4 = *a2;
    v3 = ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
    v7 = ot::LinkMetrics::Initiator::HandleManagementResponse(v5, v4, v3);
    *(a2 + 32) = 2;
    ot::Mle::Mle::LogProcessError(29, v7);
  }

  else
  {
    ot::Mle::Mle::LogProcessError(29, 13);
  }
}

void ot::Mle::Mle::HandleLinkProbe(ot::Mle::Mle *this, ot::Neighbor **a2)
{
  v13 = this;
  v12 = a2;
  v11 = 0;
  v10 = 0;
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
  ot::Mle::Mle::Log(1, 30, PeerAddr);
  if (ot::Mle::Mle::RxInfo::IsNeighborStateValid(v12))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Subject>(this);
    v11 = ot::LinkMetrics::Subject::HandleLinkProbe(v3, *v12, &v10, v4);
    if (!v11)
    {
      if (v12[3])
      {
        v8 = v12[3];
        v6 = v10;
        AverageLqi = ot::Message::GetAverageLqi(*v12);
        AverageRss = ot::Message::GetAverageRss(*v12);
        ot::Neighbor::AggregateLinkMetrics(v8, v6, 0, AverageLqi, AverageRss);
      }

      *(v12 + 32) = 2;
    }
  }

  else
  {
    v11 = 13;
  }

  ot::Mle::Mle::LogProcessError(30, v11);
}

void ot::Mle::Mle::ProcessKeySequence(ot::Mle::Mle *this, ot::Mle::Mle::RxInfo *a2)
{
  v40 = 0;
  v38 = *(a2 + 5);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
  if (v38 > ot::KeyManager::GetCurrentKeySequence(v2))
  {
    v36 = *(a2 + 5);
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
    v41 = v36 - ot::KeyManager::GetCurrentKeySequence(v3) == 1;
    v37 = *(a2 + 32);
    if (*(a2 + 32))
    {
      if (v37 == 1)
      {
        v40 = 0;
        v35 = *(a2 + 5);
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
        ot::KeyManager::GetCurrentKeySequence(v4);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s Authoritative MLE msg with keySeq:%u, mCurrSeq:%u received, update keysequence", v5, v6, v7, v8, v9, v10, "ProcessKeySequence");
      }

      else if (v37 == 2)
      {
        if (!ot::Mle::Mle::RxInfo::IsNeighborStateValid(a2))
        {
          return;
        }

        if (!v41)
        {
          Rloc16 = ot::Neighbor::GetRloc16(*(a2 + 3));
          ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Large key seq jump in peer class msg from 0x%04x ", v12, v13, v14, v15, v16, v17, Rloc16);
          ot::Mle::Mle::ReestablishLinkWithNeighbor(this, *(a2 + 3));
          return;
        }

        v34 = *(a2 + 5);
        v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
        ot::KeyManager::GetCurrentKeySequence(v18);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s Peer MLE msg with keySeq:%u mCurrSeq:%u received, update keysequence", v19, v20, v21, v22, v23, v24, "ProcessKeySequence");
        v40 = 1;
      }

      if (v41)
      {
        v40 |= 2u;
      }

      v32 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
      ot::KeyManager::SetCurrentKeySequence(v32, *(a2 + 5), v40);
    }

    else
    {
      v33 = *(a2 + 5);
      v25 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
      ot::KeyManager::GetCurrentKeySequence(v25);
      ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "%s Unknown MLE msg with keySeq:%u, mCurrSeq:%u received", v26, v27, v28, v29, v30, v31, "ProcessKeySequence");
    }
  }
}

BOOL ot::Mle::Mle::RxInfo::IsNeighborStateValid(ot::Neighbor **this)
{
  v2 = 0;
  if (this[3])
  {
    return ot::Neighbor::IsStateValid(this[3]);
  }

  return v2;
}

{
  return ot::Mle::Mle::RxInfo::IsNeighborStateValid(this);
}

void ot::Mle::Mle::ReestablishLinkWithNeighbor(ot::Mle::Mle *this, ot::Neighbor *a2)
{
  if (ot::Mle::Mle::IsAttached(this) && ot::Neighbor::IsStateValid(a2))
  {
    if (ot::Mle::Mle::IsChild(this) && a2 == (this + 192))
    {
      ot::Mle::Mle::SendChildUpdateRequest(this, 1);
      IgnoreError();
    }

    else if (ot::Mle::Mle::IsFullThreadDevice(this))
    {
      Rloc16 = ot::Neighbor::GetRloc16(a2);
      if (ot::Mle::IsRouterRloc16(Rloc16))
      {
        v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
        ot::Mle::MleRouter::SendLinkRequest(v3, a2);
        IgnoreError();
      }

      else
      {
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
        if (ot::ChildTable::Contains(v4, a2))
        {
          ot::Neighbor::SetState(a2, 6);
          v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
          ot::Mle::MleRouter::SendChildUpdateRequest(v5, a2);
          IgnoreError();
        }
      }
    }
  }
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(a1, a2);
}

void ot::Mle::Mle::Log(char a1, char a2, ot::Ip6::Address *a3, unsigned __int16 a4)
{
  ot::String<(unsigned short)17>::String(v16);
  if (a4 != 65534)
  {
    ot::StringWriter::Append(v16, ",0x%04x", a4);
  }

  v10 = ot::Mle::Mle::MessageActionToString(a1);
  ot::Mle::Mle::MessageTypeToString(a2);
  ot::Mle::Mle::MessageTypeActionToSuffixString(a2, a1);
  ot::Ip6::Address::ToString(a3, v15);
  ot::String<(unsigned short)40>::AsCString(v15);
  ot::String<(unsigned short)17>::AsCString(v16);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s %s%s (%s%s)", v4, v5, v6, v7, v8, v9, v10);
}

uint64_t ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(ot::Mle::Mle::RxMessage *this, ot::Mle::LeaderData *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  v10 = this;
  v9 = a2;
  v8 = 0;
  v8 = ot::Tlv::FindTlv<ot::Mle::LeaderDataTlv>(this, v7, a3, a4, a5, a6);
  if (!v8)
  {
    if (ot::Mle::LeaderDataTlv::IsValid(v7))
    {
      ot::Mle::LeaderDataTlv::Get(v7, v9);
    }

    else
    {
      return 6;
    }
  }

  return v8;
}

uint64_t ot::Neighbor::GetRouterId(ot::Neighbor *this)
{
  return *(this + 14) >> 10;
}

{
  return ot::Neighbor::GetRouterId(this);
}

BOOL ot::Mle::Mle::IsNetworkDataNewer(ot::Mle::Mle *this, const ot::Mle::LeaderData *a2)
{
  NetworkDataType = ot::Mle::Mle::GetNetworkDataType(this);
  DataVersion = ot::Mle::LeaderData::GetDataVersion(a2, NetworkDataType);
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
  v3 = ot::Mle::Mle::GetNetworkDataType(this);
  Version = ot::NetworkData::Leader::GetVersion(v8, v3);
  return ot::SerialNumber::IsGreater<unsigned char>(DataVersion, Version);
}

uint64_t ot::Mle::Mle::HandleLeaderData(ot::Mle::Mle *this, ot::Mle::Mle::RxMessage **a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  v36 = this;
  v35 = a2;
  LeaderDataTlv = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  LeaderDataTlv = ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(*a2, v33, a3, a4, a5, a6);
  if (!LeaderDataTlv)
  {
    PartitionId = ot::Mle::LeaderData::GetPartitionId(v33);
    if (PartitionId == ot::Mle::LeaderData::GetPartitionId((this + 184)) && (Weighting = ot::Mle::LeaderData::GetWeighting(v33), Weighting == ot::Mle::LeaderData::GetWeighting((this + 184))) && (LeaderRouterId = ot::Mle::LeaderData::GetLeaderRouterId(v33), LeaderRouterId == ot::Mle::Mle::GetLeaderId(this)))
    {
      if ((*(this + 129) & 1) == 0 && !ot::Mle::Mle::IsNetworkDataNewer(this, v33))
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (!ot::Mle::Mle::IsChild(this))
      {
        LeaderDataTlv = 2;
        goto LABEL_38;
      }

      ot::Mle::Mle::SetLeaderData(this, v33);
      *(this + 129) = *(this + 129) & 0xFE | 1;
    }

    v22 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(*v35, v32);
    if (v22)
    {
      if (v22 != 23)
      {
        LeaderDataTlv = 6;
        goto LABEL_38;
      }
    }

    else if (!ot::Mle::Mle::IsLeader(this))
    {
      active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
      Timestamp = ot::MeshCoP::DatasetManager::GetTimestamp(active);
      if (ot::MeshCoP::Timestamp::operator!=(v32, Timestamp, v8))
      {
        if (!ot::Mle::Mle::RxMessage::ContainsTlv(*v35, 0x18u, v9, v10))
        {
          v28 = 1;
          goto LABEL_38;
        }

        v30 = 1;
      }
    }

    v21 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)23,ot::MeshCoP::Timestamp>>(*v35, v31);
    if (v21)
    {
      if (v21 != 23)
      {
        LeaderDataTlv = 6;
        goto LABEL_38;
      }
    }

    else if (!ot::Mle::Mle::IsLeader(this))
    {
      v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
      v14 = ot::MeshCoP::DatasetManager::GetTimestamp(v13);
      if (ot::MeshCoP::Timestamp::operator!=(v31, v14, v15))
      {
        if (!ot::Mle::Mle::RxMessage::ContainsTlv(*v35, 0x19u, v11, v12))
        {
          v28 = 1;
          goto LABEL_38;
        }

        v29 = 1;
      }
    }

    v20 = ot::Mle::Mle::RxMessage::ReadAndSetNetworkDataTlv(*v35, v33, v11, v12);
    LeaderDataTlv = v20;
    if (v20)
    {
      if (v20 == 23)
      {
        v28 = 1;
      }
    }

    else
    {
      if (ot::Mle::Mle::IsLeader(this))
      {
        v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
        ot::NetworkData::Leader::IncrementVersionAndStableVersion(v16);
      }

      else
      {
        if (v30)
        {
          ot::Mle::Mle::RxMessage::ReadAndSaveActiveDataset(*v35, v32);
          IgnoreError();
        }

        if (v29)
        {
          ot::Mle::Mle::RxMessage::ReadAndSavePendingDataset(*v35, v31);
          IgnoreError();
        }
      }

      *(this + 129) &= ~1u;
    }
  }

LABEL_38:
  if (v28)
  {
    SockAddr = ot::Ip6::MessageInfo::GetSockAddr(v35[1]);
    if (ot::Ip6::Address::IsMulticast(SockAddr))
    {
      Uint16InRange = ot::Random::NonCrypto::GetUint16InRange(0, 0x3E8u);
    }

    else
    {
      Uint16InRange = 10;
    }

    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v35[1]);
    ot::Mle::Mle::SendDataRequestAfterDelay(this, PeerAddr, Uint16InRange);
    IgnoreError();
  }

  else if (!LeaderDataTlv)
  {
    *(this + 140) = 0;
    *(this + 135) = 0;
  }

  return LeaderDataTlv;
}

void ot::RouterTable::FindRouterById(ot::RouterTable *this, unsigned __int8 a2)
{
  ot::AsConst<ot::RouterTable>();
  ot::RouterTable::FindRouterById(v2, a2);
  ot::AsNonConst<ot::Router>();
}

{
  ot::RouterTable::FindRouterById(this, a2);
}

uint64_t ot::Neighbor::SetLeaderFullDataVersion(uint64_t this, char a2)
{
  *(this + 31) = a2;
  return this;
}

{
  return ot::Neighbor::SetLeaderFullDataVersion(this, a2);
}

uint64_t ot::Neighbor::SetLeaderStableDataVersion(uint64_t this, char a2)
{
  *(this + 32) = a2;
  return this;
}

{
  return ot::Neighbor::SetLeaderStableDataVersion(this, a2);
}

BOOL ot::SerialNumber::IsGreater<unsigned char>(char a1, char a2)
{
  return ot::SerialNumber::IsLess<unsigned char>(a2, a1);
}

{
  return ot::SerialNumber::IsGreater<unsigned char>(a1, a2);
}

BOOL ot::Mle::Mle::GetNetworkDataType(ot::Mle::Mle *this)
{
  return ot::Mle::DeviceMode::GetNetworkDataType((this + 131));
}

{
  return ot::Mle::Mle::GetNetworkDataType(this);
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::FindTlv(a1, 0x16, a2, 8);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(a1, a2);
}

BOOL ot::MeshCoP::Timestamp::operator!=(ot::MeshCoP::Timestamp *a1, const ot::MeshCoP::Timestamp *a2, const ot::MeshCoP::Timestamp *a3)
{
  return ot::MeshCoP::Timestamp::Compare(a1, a2, a3) != 0;
}

{
  return ot::MeshCoP::Timestamp::operator!=(a1, a2, a3);
}

BOOL ot::Mle::Mle::RxMessage::ContainsTlv(ot::Tlv *a1, unsigned __int8 a2, uint64_t a3, ot::OffsetRange *a4)
{
  *&v6[1] = a1;
  v6[0] = a2;
  return ot::Tlv::FindTlvValueOffsetRange(a1, a2, &v5, a4) == 0;
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)23,ot::MeshCoP::Timestamp>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::FindTlv(a1, 0x17, a2, 8);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)23,ot::MeshCoP::Timestamp>>(a1, a2);
}

uint64_t ot::Mle::Mle::RxMessage::ReadAndSetNetworkDataTlv(ot::Mle::Mle::RxMessage *this, const ot::Mle::LeaderData *a2, uint64_t a3, ot::OffsetRange *a4)
{
  v14 = this;
  v13 = a2;
  TlvValueOffsetRange = 0;
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(this, 0xC, &v11, a4);
  if (!TlvValueOffsetRange)
  {
    v9 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(this);
    DataVersion = ot::Mle::LeaderData::GetDataVersion(v13, 0);
    v8 = ot::Mle::LeaderData::GetDataVersion(v13, 1);
    v4 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(this);
    NetworkDataType = ot::Mle::Mle::GetNetworkDataType(v4);
    return ot::NetworkData::Leader::SetNetworkData(v9, DataVersion, v8, NetworkDataType, this, &v11);
  }

  return TlvValueOffsetRange;
}

BOOL ot::Mle::Mle::IsBetterParent(ot::Mle::Mle *this, unsigned __int16 a2, unsigned __int8 a3, const ot::Mle::ConnectivityTlv *a4, unsigned __int16 a5, const ot::Mac::CslAccuracy *a6)
{
  v44 = this;
  v43 = a2;
  v42 = a3;
  v41 = a4;
  v40 = a5;
  v39 = a6;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  *__str = 0;
  *&__str[3] = 0;
  *v34 = 0;
  *&v34[3] = 0;
  snprintf(__str, 7uLL, "0x%04x", a2);
  Rloc16 = ot::Neighbor::GetRloc16((this + 368));
  snprintf(v34, 7uLL, "0x%04x", Rloc16);
  v33 = ot::LinkQualityForLinkMargin(v42);
  TwoWayLinkQuality = ot::Router::GetTwoWayLinkQuality((this + 368));
  v38 = ot::ThreeWayCompare<ot::LinkQuality>(v33, TwoWayLinkQuality);
  if (!v38)
  {
    IsRouterRloc16 = ot::Mle::IsRouterRloc16(v43);
    v8 = ot::Neighbor::GetRloc16((this + 368));
    v9 = ot::Mle::IsRouterRloc16(v8);
    v38 = ot::ThreeWayCompare<BOOL>(IsRouterRloc16, v9);
    if (!v38)
    {
      ParentPriority = ot::Mle::ConnectivityTlv::GetParentPriority(v41);
      v38 = ot::ThreeWayCompare<signed char>(ParentPriority, *(this + 522));
      if (!v38)
      {
        LinkQuality3 = ot::Mle::ConnectivityTlv::GetLinkQuality3(v41);
        v38 = ot::ThreeWayCompare<unsigned char>(LinkQuality3, *(this + 523));
        if (!v38)
        {
          v30 = v40;
          Version = ot::Neighbor::GetVersion((this + 368));
          v38 = ot::ThreeWayCompare<unsigned short>(v30, Version);
          if (!v38)
          {
            SedBufferSize = ot::Mle::ConnectivityTlv::GetSedBufferSize(v41);
            v38 = ot::ThreeWayCompare<unsigned short>(SedBufferSize, *(this + 263));
            if (!v38)
            {
              SedDatagramCount = ot::Mle::ConnectivityTlv::GetSedDatagramCount(v41);
              v38 = ot::ThreeWayCompare<unsigned char>(SedDatagramCount, *(this + 528));
              if (!v38)
              {
                LinkQuality2 = ot::Mle::ConnectivityTlv::GetLinkQuality2(v41);
                v38 = ot::ThreeWayCompare<unsigned char>(LinkQuality2, *(this + 524));
                if (!v38)
                {
                  LinkQuality1 = ot::Mle::ConnectivityTlv::GetLinkQuality1(v41);
                  v38 = ot::ThreeWayCompare<unsigned char>(LinkQuality1, *(this + 525));
                  if (!v38)
                  {
                    if (ot::Mle::Mle::IsRxOnWhenIdle(this) || (v37 = ot::Mle::Mle::CalcParentCslMetric(this, v39), CslAccuracy = ot::Parent::GetCslAccuracy((this + 368)), v36 = ot::Mle::Mle::CalcParentCslMetric(this, CslAccuracy), (v38 = ot::ThreeWayCompare<unsigned long long>(v36, v37)) == 0))
                    {
                      v38 = ot::ThreeWayCompare<unsigned char>(v42, *(this + 529));
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v19 = v38;
  ot::Neighbor::GetRloc16((this + 368));
  ot::Mle::ConnectivityTlv::GetParentPriority(v41);
  v20 = *(this + 522);
  ot::Mle::ConnectivityTlv::GetLinkQuality3(v41);
  v21 = *(this + 523);
  v22 = ot::Mle::ConnectivityTlv::GetLinkQuality2(v41);
  v23 = *(this + 524);
  v24 = ot::Mle::ConnectivityTlv::GetLinkQuality1(v41);
  v25 = *(this + 525);
  v26 = v40;
  ot::Neighbor::GetVersion((this + 368));
  ot::Mle::ConnectivityTlv::GetSedBufferSize(v41);
  v27 = *(this + 263);
  ot::Mle::ConnectivityTlv::GetSedDatagramCount(v41);
  v28 = *(this + 528);
  v29 = *(this + 529);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "IsBetterParent rval:%d, rloc:[0x%x, 0x%x], pPrio:[%d %d], lq3:[%d %d], lq2:[%d %d], lq1:[%d %d], vers:[%d %d], sedBufSz:[%d %d], sedDgmCnt:[%d %d], lm:[%d %d] cslAcc:[%lld,%lld], Verdict Better Parent: %s", v26, v25, v24, v23, v22, v21, v19);
  return v38 > 0;
}

uint64_t ot::ThreeWayCompare<ot::LinkQuality>(unsigned __int8 a1, unsigned __int8 a2)
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
  return ot::ThreeWayCompare<ot::LinkQuality>(a1, a2);
}

uint64_t ot::ThreeWayCompare<signed char>(char a1, char a2)
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
  return ot::ThreeWayCompare<signed char>(a1, a2);
}

uint64_t ot::ThreeWayCompare<unsigned char>(unsigned __int8 a1, unsigned __int8 a2)
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
  return ot::ThreeWayCompare<unsigned char>(a1, a2);
}

uint64_t ot::Mle::ConnectivityTlv::GetLinkQuality3(ot::Mle::ConnectivityTlv *this)
{
  return *(this + 3);
}

{
  return ot::Mle::ConnectivityTlv::GetLinkQuality3(this);
}

uint64_t ot::Mle::ConnectivityTlv::GetSedBufferSize(ot::Mle::ConnectivityTlv *this)
{
  v3 = 1280;
  if (ot::Mle::ConnectivityTlv::IsSedBufferingIncluded(this))
  {
    return ot::BigEndian::HostSwap16(*(this + 9));
  }

  return v3;
}

{
  return ot::Mle::ConnectivityTlv::GetSedBufferSize(this);
}

uint64_t ot::Mle::ConnectivityTlv::GetSedDatagramCount(ot::Mle::ConnectivityTlv *this)
{
  v3 = 1;
  if (ot::Mle::ConnectivityTlv::IsSedBufferingIncluded(this))
  {
    return *(this + 11);
  }

  return v3;
}

{
  return ot::Mle::ConnectivityTlv::GetSedDatagramCount(this);
}

uint64_t ot::Mle::ConnectivityTlv::GetLinkQuality2(ot::Mle::ConnectivityTlv *this)
{
  return *(this + 4);
}

{
  return ot::Mle::ConnectivityTlv::GetLinkQuality2(this);
}

uint64_t ot::Mle::ConnectivityTlv::GetLinkQuality1(ot::Mle::ConnectivityTlv *this)
{
  return *(this + 5);
}

{
  return ot::Mle::ConnectivityTlv::GetLinkQuality1(this);
}

unint64_t ot::Mle::Mle::CalcParentCslMetric(ot::Mle::Mle *this, const ot::Mac::CslAccuracy *a2)
{
  v4 = 1000000 * ot::Mle::Mle::GetCslTimeout(this) / 0x26C0;
  v3 = 9920 * v4 * (v4 + 1) / 0xF4240 * ot::Mac::CslAccuracy::GetClockAccuracy(a2);
  return v3 + ot::Mac::CslAccuracy::GetUncertaintyInMicrosec(a2) * v4;
}

uint64_t ot::Parent::GetCslAccuracy(ot::Parent *this)
{
  return this + 143;
}

{
  return ot::Parent::GetCslAccuracy(this);
}

uint64_t ot::Mle::Mle::RxMessage::ReadVersionTlv(ot::Mle::Mle::RxMessage *this, char *a2)
{
  v3 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(this, a2);
  if (!v3 && *a2 < 2u)
  {
    return 6;
  }

  return v3;
}

uint64_t ot::Mle::Mle::RxMessage::ReadAndMatchResponseTlvWith(ot::Mle::Mle::RxMessage *a1, const void *a2)
{
  ot::Mle::RxChallenge::RxChallenge(v8);
  ResponseTlv = ot::Mle::Mle::RxMessage::ReadResponseTlv(a1, v8, v2, v3);
  if (!ResponseTlv && !ot::Mle::RxChallenge::operator==(v8, a2))
  {
    return 8;
  }

  return ResponseTlv;
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)16,unsigned char>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned char>(a1, 0x10u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)16,unsigned char>>(a1, a2);
}

uint64_t ot::Tlv::FindTlv<ot::Mle::ConnectivityTlv>(ot::Tlv *a1, char *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  return ot::Tlv::FindTlv(a1, 0xF, 0xCu, a2, a5, a6);
}

{
  return ot::Tlv::FindTlv<ot::Mle::ConnectivityTlv>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Mle::Mle::RxMessage::ReadCslClockAccuracyTlv(ot::Mle::Mle::RxMessage *this, ot::Mac::CslAccuracy *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  v14 = this;
  v13 = a2;
  v12 = 0;
  v12 = ot::Tlv::FindTlv<ot::Mle::CslClockAccuracyTlv>(this, v11, a3, a4, a5, a6);
  if (!v12)
  {
    if (ot::Mle::CslClockAccuracyTlv::IsValid(v11))
    {
      v9 = v13;
      CslClockAccuracy = ot::Mle::CslClockAccuracyTlv::GetCslClockAccuracy(v11);
      ot::Mac::CslAccuracy::SetClockAccuracy(v9, CslClockAccuracy);
      v10 = v13;
      CslUncertainty = ot::Mle::CslClockAccuracyTlv::GetCslUncertainty(v11);
      ot::Mac::CslAccuracy::SetUncertainty(v10, CslUncertainty);
    }

    else
    {
      return 6;
    }
  }

  return v12;
}

uint64_t ot::Mle::ConnectivityTlv::GetIdSequence(ot::Mle::ConnectivityTlv *this)
{
  return *(this + 7);
}

{
  return ot::Mle::ConnectivityTlv::GetIdSequence(this);
}

uint64_t ot::Mle::ConnectivityTlv::GetActiveRouters(ot::Mle::ConnectivityTlv *this)
{
  return *(this + 8);
}

{
  return ot::Mle::ConnectivityTlv::GetActiveRouters(this);
}

BOOL ot::Mle::ConnectivityTlv::IsSingleton(ot::Mle::ConnectivityTlv *this)
{
  return *(this + 8) <= 1u;
}

{
  return ot::Mle::ConnectivityTlv::IsSingleton(this);
}

uint64_t ot::Mle::Mle::RxMessage::ReadFrameCounterTlvs(ot::Mle::Mle::RxMessage *this, char *a2, char *a3)
{
  v6 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)5,unsigned int>>(this, a2);
  if (!v6)
  {
    v4 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)8,unsigned int>>(this, a3);
    if (v4)
    {
      if (v4 == 23)
      {
        *a3 = *a2;
      }

      else
      {
        return 6;
      }
    }
  }

  return v6;
}

uint64_t ot::Router::SetLinkQualityOut(uint64_t result, char a2)
{
  *(result + 141) = *(result + 141) & 0xFC | a2 & 3;
  return result;
}

{
  return ot::Router::SetLinkQualityOut(result, a2);
}

uint64_t ot::Parent::SetLeaderCost(uint64_t this, char a2)
{
  *(this + 142) = a2;
  return this;
}

{
  return ot::Parent::SetLeaderCost(this, a2);
}

uint64_t ot::Mle::ConnectivityTlv::GetLeaderCost(ot::Mle::ConnectivityTlv *this)
{
  return *(this + 6);
}

{
  return ot::Mle::ConnectivityTlv::GetLeaderCost(this);
}

uint64_t ot::Parent::SetCslAccuracy(uint64_t this, const ot::Mac::CslAccuracy *a2)
{
  *(this + 143) = *a2;
  return this;
}

{
  return ot::Parent::SetCslAccuracy(this, a2);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)10,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0xAu, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)10,unsigned short>>(a1, a2);
}

ot::Mle::RxChallenge *ot::Mle::RxChallenge::RxChallenge(ot::Mle::RxChallenge *this)
{
  ot::Mle::RxChallenge::RxChallenge(this);
  return this;
}

{
  ot::Mac::Address::Address(this);
  return this;
}

ot::Mle::Mle::TlvList *ot::Mle::Mle::TlvList::TlvList(ot::Mle::Mle::TlvList *this)
{
  ot::Mle::Mle::TlvList::TlvList(this);
  return this;
}

{
  ot::Array<unsigned char,(unsigned short)32,unsigned char>::Array(this);
  return this;
}

void ot::Mle::Mle::TlvList::Add(ot::Mle::Mle::TlvList *this, char a2)
{
  v10 = this;
  v9 = a2;
  if (!ot::Array<unsigned char,(unsigned short)32,unsigned char>::Contains(this, &v9))
  {
    if (ot::Array<unsigned char,(unsigned short)32,unsigned char>::PushBack(this, &v9))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Failed to include TLV %d", v2, v3, v4, v5, v6, v7, v9);
    }
  }
}

uint64_t ot::Mle::RxChallenge::Clear(ot::Mle::RxChallenge *this)
{
  return ot::Array<unsigned char,(unsigned short)8,unsigned char>::Clear(this);
}

{
  return ot::Mle::RxChallenge::Clear(this);
}

uint64_t ot::Tlv::Find<ot::Mle::StatusTlv>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned char>(a1, 0x11u, a2);
}

{
  return ot::Tlv::Find<ot::Mle::StatusTlv>(a1, a2);
}

uint64_t ot::Mle::Mle::RxMessage::ReadTlvRequestTlv(ot::Mle::Mle::RxMessage *this, ot::Mle::Mle::TlvList *a2, uint64_t a3, ot::OffsetRange *a4)
{
  v13 = this;
  v12 = a2;
  TlvValueOffsetRange = 0;
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(this, 0xD, &v10, a4);
  if (!TlvValueOffsetRange)
  {
    MaxSize = ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetMaxSize();
    ot::OffsetRange::ShrinkLength(&v10, MaxSize);
    ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetArrayBuffer();
    ot::Message::ReadBytes(this, &v10, v5);
    v8 = v12;
    Length = ot::OffsetRange::GetLength(&v10);
    ot::Array<unsigned char,(unsigned short)32,unsigned char>::SetLength(v8, Length);
  }

  return TlvValueOffsetRange;
}

void ot::Mle::Mle::TlvList::AddElementsFrom(ot::Mle::Mle::TlvList *this, const ot::Mle::Mle::TlvList *a2)
{
  ot::Array<unsigned char,(unsigned short)32,unsigned char>::begin();
  v5 = v2;
  v4 = ot::Array<unsigned char,(unsigned short)32,unsigned char>::end(a2);
  while (v5 != v4)
  {
    ot::Mle::Mle::TlvList::Add(this, *v5++);
  }
}

uint64_t ot::Mle::Mle::RxMessage::ReadModeTlv(ot::Mle::Mle::RxMessage *this, ot::Mle::DeviceMode *a2)
{
  v6 = this;
  v5 = a2;
  v4 = 0;
  v3 = 0;
  v4 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)1,unsigned char>>(this, &v3);
  if (!v4)
  {
    ot::Mle::DeviceMode::Set(v5, v3);
  }

  return v4;
}

BOOL ot::Equatable<ot::Mle::DeviceMode>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 1uLL) == 0;
}

{
  return ot::Equatable<ot::Mle::DeviceMode>::operator==(a1, a2);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned int>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned int>(a1, 2u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned int>>(a1, a2);
}

BOOL ot::Mle::Mle::IsDetachingGracefully(ot::Mle::Mle *this)
{
  return ot::Timer::IsRunning((this + 960));
}

{
  return ot::Mle::Mle::IsDetachingGracefully(this);
}

BOOL ot::Mle::RxChallenge::IsEmpty(ot::Mle::RxChallenge *this)
{
  return ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetLength(this) == 0;
}

{
  return ot::Mle::RxChallenge::IsEmpty(this);
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)20,ot::Mle::ChannelTlvValue>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::FindTlv(a1, 0x14, a2, 3);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)20,ot::Mle::ChannelTlvValue>>(a1, a2);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)21,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0x15u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)21,unsigned short>>(a1, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Subject>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::LinkMetrics::Subject>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Subject>(a1);
}

uint64_t ot::Mle::Mle::GetParentRloc16(ot::Mle::Mle *this)
{
  if (ot::Neighbor::IsStateValid((this + 192)))
  {
    return ot::Neighbor::GetRloc16((this + 192));
  }

  else
  {
    return -2;
  }
}

uint64_t ot::Mle::Mle::GetParentInfo(ot::Mle::Mle *this, ot::Router::Info *a2)
{
  v4 = 0;
  if (ot::Mle::Mle::IsChild(this))
  {
    ot::Router::Info::SetFrom(a2, (this + 192));
  }

  else
  {
    return 13;
  }

  return v4;
}

const char *ot::Mle::Mle::MessageTypeActionToSuffixString(char a1, char a2)
{
  v5 = "";
  switch(a1)
  {
    case 3:
      return " - short";
    case 6:
    case 5:
      return " as child";
    case 13:
      return " to routers";
    case 14:
      return " to routers and REEDs";
  }

  if (a1 != 21 && a1 != 20)
  {
    if (a1 == 22)
    {
      v3 = " from unknown child";
      if (a2 != 1)
      {
        return " to child";
      }

      return v3;
    }
  }

  else
  {
    v2 = " from child";
    if (a2 != 1)
    {
      return " to child";
    }

    return v2;
  }

  return v5;
}

void ot::Mle::Mle::LogError(char a1, char a2, int a3)
{
  if (a3)
  {
    if (a1 == 1 && (a3 == 2 || a3 == 4))
    {
      ot::Mle::Mle::MessageTypeToString(a2);
      ot::Mle::Mle::MessageTypeActionToSuffixString(a2, a1);
      ot::ErrorToString(a3);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Failed to %s %s%s: %s", v3, v4, v5, v6, v7, v8, "process");
    }

    else
    {
      v9 = "send";
      if (a1)
      {
        v9 = "process";
      }

      v16 = v9;
      ot::Mle::Mle::MessageTypeToString(a2);
      ot::Mle::Mle::MessageTypeActionToSuffixString(a2, a1);
      ot::ErrorToString(a3);
      ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Failed to %s %s%s: %s", v10, v11, v12, v13, v14, v15, v16);
    }
  }
}

uint64_t ot::Mle::Mle::SendLinkMetricsManagementRequest(ot::Mle::Mle *this, __n128 *a2, const ot::Tlv *a3)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  v6 = ot::Mle::Mle::NewMleMessage(this, 18);
  if (v6)
  {
    ot::Mle::Tlv::SetType(v5, 88);
    Size = ot::Tlv::GetSize(v8);
    ot::Tlv::SetLength(v5, Size);
    v7 = ot::Message::Append<ot::Mle::Tlv>(v6, v5);
    if (!v7)
    {
      v7 = ot::Tlv::AppendTo(v8, v6);
      if (!v7)
      {
        v7 = ot::Mle::Mle::TxMessage::SendTo(v6, v9);
      }
    }
  }

  else
  {
    v7 = 3;
  }

  if (v7 && v6)
  {
    ot::Message::Free(v6);
  }

  return v7;
}

uint64_t ot::Mac::CslAccuracy::GetUncertaintyInMicrosec(ot::Mac::CslAccuracy *this)
{
  return 10 * *(this + 1);
}

{
  return ot::Mac::CslAccuracy::GetUncertaintyInMicrosec(this);
}

uint64_t ot::Mle::Mle::AttachCslPeripheral(ot::Mle::Mle *this, const ot::Mac::ExtAddress *a2, unsigned int a3, unsigned __int8 a4, char a5, char a6, unsigned __int8 a7)
{
  v7 = ot::Mle::Mle::WorAttachStateToString(this, *(this + 128));
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, %s", v8, v9, v10, v11, v12, v13, v7);
  Instance = ot::InstanceLocator::GetInstance(this);
  DeviceRole = otThreadGetDeviceRole(Instance);
  if (DeviceRole == 4)
  {
    if (*(this + 128))
    {
      v69 = 13;
    }

    else
    {
      if ((a5 & 1) == 0)
      {
        *(this + 857) = 0;
        ot::Mle::Mle::AttachCslPeripheral(ot::Mac::ExtAddress const&,unsigned int,unsigned char,BOOL,unsigned char,unsigned char)::mNumRetries = a6;
      }

      if (++*(this + 857) <= ot::Mle::Mle::AttachCslPeripheral(ot::Mac::ExtAddress const&,unsigned int,unsigned char,BOOL,unsigned char,unsigned char)::mNumRetries)
      {
        *(this + 858) = *a2;
        *(this + 217) = a3;
        *(this + 872) = a4;
        *(this + 128) = 1;
        v29 = ot::Mle::Mle::WorAttachStateToString(this, *(this + 128));
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, %s", v30, v31, v32, v33, v34, v35, v29);
        ot::Mle::Mle::SetThreadCoexConfig(this, 0, *(this + 130), *(this + 132));
        if (!ot::Mle::Mle::IsRxOnWhenIdle(this))
        {
          v36 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
          ot::MeshForwarder::SetRxOnWhenIdle(v36, 0, v37, v38, v39, v40, v41, v42);
        }

        ot::WakeupTxScheduler::WakeUpPatternToInterval((this + 72), a4);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "In %s, aIntervalUs is %d, aDurationMs is %d, aWakeupPattern is %d", v43, v44, v45, v46, v47, v48, "AttachCslPeripheral");
        v69 = ot::WakeupTxScheduler::WakeUp((this + 72), a2, a3, a4, a7, v49, v50, v51);
      }

      else
      {
        *(this + 857) = 0;
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Wakeup retry exceeded %s", v15, v16, v17, v18, v19, v20, "AttachCslPeripheral");
        v69 = 1;
        v28 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
        ot::Notifier::Signal(v28, 0x2000000000);
      }
    }
  }

  else
  {
    v21 = otThreadDeviceRoleToString(DeviceRole);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Central has to be in Leader role to wakeup, current role = %s, %s", v22, v23, v24, v25, v26, v27, v21);
    v69 = 13;
  }

  if (v69 == 13)
  {
    v52 = ot::Mle::Mle::WorAttachStateToString(this, *(this + 128));
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, Attach called in invalid state, %s", v53, v54, v55, v56, v57, v58, v52);
    return 13;
  }

  else
  {
    if (v69)
    {
      *(this + 128) = 0;
      v59 = ot::Mle::Mle::WorAttachStateToString(this, *(this + 128));
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, %s", v60, v61, v62, v63, v64, v65, v59);
    }

    return v69;
  }
}

void ot::Mle::Mle::HandleCslWakeupTxInitiatedStartAttachTimer(ot::Mle::Mle *this)
{
  v1 = ot::Mle::Mle::WorAttachStateToString(this, *(this + 128));
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, %s", v2, v3, v4, v5, v6, v7, v1);
  *(this + 128) = 2;
  ConnectionWindowUs = ot::WakeupTxScheduler::GetConnectionWindowUs((this + 72));
  ot::TimerMicro::Start((this + 832), ConnectionWindowUs + 1000 * *(this + 217));
  v9 = ot::Mle::Mle::WorAttachStateToString(this, *(this + 128));
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, %s", v10, v11, v12, v13, v14, v15, v9);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s: Connection window open, mCslPeripheralAttachTimer.Start timer", v16, v17, v18, v19, v20, v21, "HandleCslWakeupTxInitiatedStartAttachTimer");
}

uint64_t ot::WakeupTxScheduler::GetConnectionWindowUs(ot::WakeupTxScheduler *this)
{
  return 12 * *(this + 9) * *(this + 49);
}

{
  return ot::WakeupTxScheduler::GetConnectionWindowUs(this);
}

uint64_t ot::WakeupTxScheduler::GetTxEndTime(ot::WakeupTxScheduler *this)
{
  return *(this + 3);
}

{
  return ot::WakeupTxScheduler::GetTxEndTime(this);
}

uint64_t ot::Mle::Mle::DetachCslPeripheral(ot::Mle::Mle *this)
{
  v24 = 0;
  CslPeripheral = ot::Mle::Mle::GetCslPeripheral(this);
  if (ot::Mle::Mle::IsCslPeripheralAttached(this))
  {
    if (CslPeripheral)
    {
      *(this + 128) = 4;
      v1 = ot::Mle::Mle::WorAttachStateToString(this, *(this + 128));
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, %s", v2, v3, v4, v5, v6, v7, v1);
      if (ot::IndirectSender::ChildInfo::GetIndirectMessageCount((CslPeripheral + 144)) <= 0)
      {
        *(this + 856) = *(this + 856) & 0xFE | 1;
        v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildSupervisor>(this);
        ot::ChildSupervisor::SendMessage(v14, CslPeripheral);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s: Sending DetachCslPeripheral", v15, v16, v17, v18, v19, v20, "DetachCslPeripheral");
      }

      else
      {
        ot::IndirectSender::ChildInfo::GetIndirectMessageCount((CslPeripheral + 144));
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s: Deferring DetachCslPeripheral as there are (%d) Indirect TX Messages in Q", v8, v9, v10, v11, v12, v13, "DetachCslPeripheral");
      }
    }

    else
    {
      return 13;
    }
  }

  else
  {
    return 13;
  }

  return v24;
}

void ot::Mle::Mle::HandleSentFrameToNeighbor(ot::Mle::Mle *this, ot::Neighbor *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 128) == 4)
  {
    if (*(this + 856))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s: Completing DetachCslPeripheral", a3, a4, a5, a6, a7, a8, "HandleSentFrameToNeighbor");
      *(this + 856) &= ~1u;
      v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      ot::Mle::MleRouter::RemoveNeighbor(v21, a2);
      ot::Mle::Mle::SetThreadCoexConfig(this, 0, *(this + 130), *(this + 132));
    }

    else if (ot::IndirectSender::ChildInfo::GetIndirectMessageCount((a2 + 144)) <= 0)
    {
      *(this + 856) = *(this + 856) & 0xFE | 1;
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildSupervisor>(this);
      ot::ChildSupervisor::SendMessage(v14, a2);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s: Sending DetachCslPeripheral", v15, v16, v17, v18, v19, v20, "HandleSentFrameToNeighbor");
    }

    else
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s: Deferring DetachCslPeripheral again", v8, v9, v10, v11, v12, v13, "HandleSentFrameToNeighbor");
    }
  }
}

uint64_t ot::Mle::Mle::WedWakeUpPattern(ot::Mle::Mle *this)
{
  v20 = 2;
  BTLoad = ot::Mle::Mle::getBTLoad(this);
  ot::Mle::Mle::LogCoExLoad(this);
  if (ot::Mle::Mle::getAudioTaskId(this) == 6)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: %s BT audio task is LEA 5ms(%d), set the wake up pattern as %d", v1, v2, v3, v4, v5, v6, "WedWakeUpPattern");
  }

  WiFiStateId = ot::Mle::Mle::getWiFiStateId(this);
  WiFiP2PStatus = ot::Mle::Mle::getWiFiP2PStatus(this);
  if (WiFiStateId <= 1u)
  {
LABEL_12:
    if (WiFiP2PStatus && WiFiStateId)
    {
      if (BTLoad >= 0x55u)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      v20 = v8;
    }

    else if (BTLoad < 0x7Eu)
    {
      if (BTLoad < 0x55u)
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }
    }

    else
    {
      v20 = 1;
    }

    goto LABEL_23;
  }

  if (WiFiStateId != 2)
  {
    if (WiFiStateId != 4 && WiFiStateId != 3)
    {
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  if (BTLoad >= 0x55u)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v20 = v7;
LABEL_23:
  if (ot::Mle::Mle::hasHIDConnected(this))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: %s, There is HID connected, just use Pattern 1(one per 15ms).", v9, v10, v11, v12, v13, v14, "WedWakeUpPattern");
    v20 = 1;
  }

  if (v20 == 3)
  {
    v20 = 2;
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: %s, set WED wakeup pattern %d", v9, v10, v11, v12, v13, v14, "WedWakeUpPattern");
  return v20;
}

uint64_t ot::Mle::Mle::getEcslPeriod(ot::Mle::Mle *this)
{
  ot::Mle::Mle::LogCoExLoad(this);
  if (ot::Mle::Mle::getAudioTaskId(this) > 0 || ot::Mle::Mle::hasHIDConnected(this) || ot::Mle::Mle::getWiFiStateId(this) == 2)
  {
    v9 = 375;
  }

  else
  {
    v9 = 250;
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s, eCSL Period= %d mSec", v1, v2, v3, v4, v5, v6, "getEcslPeriod");
  return v9;
}

BOOL ot::CallbackBase<void (*)(void *)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(void *)>::IsSet(a1);
}

BOOL ot::Array<unsigned char,(unsigned short)32,unsigned char>::Contains(uint64_t a1, unsigned __int8 *a2)
{
  return ot::Array<unsigned char,(unsigned short)32,unsigned char>::Find(a1, a2) != 0;
}

{
  return ot::Array<unsigned char,(unsigned short)32,unsigned char>::Contains(a1, a2);
}

uint64_t ot::Array<unsigned char,(unsigned short)32,unsigned char>::PushBack(uint64_t a1, char *a2)
{
  if (ot::Array<unsigned char,(unsigned short)32,unsigned char>::IsFull(a1))
  {
    return 3;
  }

  else
  {
    v2 = *a2;
    v3 = (*(a1 + 32))++;
    *(a1 + v3) = v2;
    return 0;
  }
}

{
  return ot::Array<unsigned char,(unsigned short)32,unsigned char>::PushBack(a1, a2);
}

uint64_t ot::Message::Read<ot::Mle::Mle::DelayedResponseMetadata>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x14u);
}

{
  return ot::Message::Read<ot::Mle::Mle::DelayedResponseMetadata>(a1, a2, a3);
}

_BYTE *ot::Mle::Mle::SecurityHeader::InitSecurityControl(_BYTE *this)
{
  *this = 21;
  return this;
}

{
  return ot::Mle::Mle::SecurityHeader::InitSecurityControl(this);
}

uint64_t ot::Message::Append<ot::Mle::Mle::SecurityHeader>(ot::Message *a1, const void *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0xAu);
}

{
  return ot::Message::Append<ot::Mle::Mle::SecurityHeader>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 0, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::Mle::StatusTlv>(uint64_t a1, unsigned __int8 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned char>(a1, 17, a2);
}

{
  return ot::Tlv::Append<ot::Mle::StatusTlv>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned int>>(ot::Tlv *a1, unsigned int a2)
{
  return ot::Tlv::AppendUintTlv<unsigned int>(a1, 2u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned int>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::TlvInfo<(unsigned char)3>>(ot::Tlv *a1, void *a2, unsigned __int8 a3)
{
  return ot::Tlv::AppendTlv(a1, 3, a2, a3);
}

{
  return ot::Tlv::Append<ot::TlvInfo<(unsigned char)3>>(a1, a2, a3);
}

uint64_t ot::Tlv::Append<ot::TlvInfo<(unsigned char)4>>(ot::Tlv *a1, void *a2, unsigned __int8 a3)
{
  return ot::Tlv::AppendTlv(a1, 4, a2, a3);
}

{
  return ot::Tlv::Append<ot::TlvInfo<(unsigned char)4>>(a1, a2, a3);
}

void ot::Mle::RxChallenge::GetBytes(ot::Mle::RxChallenge *this)
{
  ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetArrayBuffer();
}

{
  ot::Mle::RxChallenge::GetBytes(this);
}

uint64_t ot::Mle::RxChallenge::GetLength(ot::Mle::RxChallenge *this)
{
  return ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetLength(this);
}

{
  return ot::Mle::RxChallenge::GetLength(this);
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::KeyManager>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::KeyManager>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::KeyManager>(a1);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)5,unsigned int>>(ot::Tlv *a1, unsigned int a2)
{
  return ot::Tlv::AppendUintTlv<unsigned int>(a1, 5u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)5,unsigned int>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)8,unsigned int>>(ot::Tlv *a1, unsigned int a2)
{
  return ot::Tlv::AppendUintTlv<unsigned int>(a1, 8u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)8,unsigned int>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)10,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 10, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)10,unsigned short>>(a1, a2);
}

uint64_t ot::Mle::LeaderDataTlv::Init(ot::Mle::LeaderDataTlv *this)
{
  ot::Mle::Tlv::SetType(this, 11);
  return ot::Tlv::SetLength(this, 8);
}

{
  return ot::Mle::LeaderDataTlv::Init(this);
}

uint64_t ot::Mle::LeaderDataTlv::Set(ot::Mle::LeaderDataTlv *this, const ot::Mle::LeaderData *a2)
{
  PartitionId = ot::Mle::LeaderData::GetPartitionId(a2);
  *(this + 2) = ot::BigEndian::HostSwap32(PartitionId);
  *(this + 6) = ot::Mle::LeaderData::GetWeighting(a2);
  *(this + 7) = ot::Mle::LeaderData::GetDataVersion(a2, 0);
  *(this + 8) = ot::Mle::LeaderData::GetDataVersion(a2, 1);
  result = ot::Mle::LeaderData::GetLeaderRouterId(a2);
  *(this + 9) = result;
  return result;
}

{
  return ot::Mle::LeaderDataTlv::Set(this, a2);
}

uint64_t ot::Mle::Mle::TxMessage::AppendNetworkDataTlv(ot::Message *a1, char a2)
{
  v22 = a1;
  v21 = a2;
  v20 = 0;
  v19 = 0;
  if (*(ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(a1) + 129))
  {
    v20 = 13;
  }

  else
  {
    v19 = -2;
    v8 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(a1);
    ot::NetworkData::NetworkData::CopyNetworkData(v8, v21, v23, &v19);
    IgnoreError();
    v20 = ot::Tlv::Append<ot::TlvInfo<(unsigned char)12>>(a1, v23, v19);
  }

  if (v20)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "%s Network data TLV could not be sent as mRetrieveNewNetworkData is true", v2, v3, v4, v5, v6, v7, "AppendNetworkDataTlv");
  }

  else
  {
    v9 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(a1);
    ot::NetworkData::Leader::GetVersion(v9, 0);
    v10 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(a1);
    ot::NetworkData::Leader::GetVersion(v10, 1);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "%s Network data len =%d ,Type=%d, leaderDataFull:%d, leaderDataSubset:%d", v11, v12, v13, v14, v15, v16, "AppendNetworkDataTlv");
  }

  return v20;
}

uint64_t ot::Tlv::Append<ot::TlvInfo<(unsigned char)12>>(ot::Tlv *a1, void *a2, unsigned __int8 a3)
{
  return ot::Tlv::AppendTlv(a1, 0xC, a2, a3);
}

{
  return ot::Tlv::Append<ot::TlvInfo<(unsigned char)12>>(a1, a2, a3);
}

uint64_t ot::Tlv::Append<ot::TlvInfo<(unsigned char)13>>(ot::Tlv *a1, void *a2, unsigned __int8 a3)
{
  return ot::Tlv::AppendTlv(a1, 0xD, a2, a3);
}

{
  return ot::Tlv::Append<ot::TlvInfo<(unsigned char)13>>(a1, a2, a3);
}

uint64_t ot::Tlv::Append<ot::Mle::ScanMaskTlv>(uint64_t a1, unsigned __int8 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned char>(a1, 14, a2);
}

{
  return ot::Tlv::Append<ot::Mle::ScanMaskTlv>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)16,unsigned char>>(uint64_t a1, unsigned __int8 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned char>(a1, 16, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)16,unsigned char>>(a1, a2);
}

uint64_t ot::Mle::Mle::TxMessage::AppendCompressedAddressEntry(ot::Mle::Mle::TxMessage *this, unsigned __int8 a2, const ot::Ip6::Address *a3)
{
  v9 = this;
  v8 = a2;
  v7 = a3;
  v6[4] = 0;
  *v6 = ot::Mle::AddressRegistrationTlv::ControlByteFor(a2);
  *&v6[1] = ot::Message::Append<unsigned char>(this, v6);
  if (!*&v6[1])
  {
    Iid = ot::Ip6::Address::GetIid(v7);
    *&v6[1] = ot::Message::Append<ot::Ip6::InterfaceIdentifier>(this, Iid);
  }

  return *&v6[1];
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::ThreadNetif>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::ThreadNetif>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::ThreadNetif>(a1);
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::DuaManager>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::DuaManager>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::DuaManager>(a1);
}

uint64_t ot::Mle::Mle::TxMessage::AppendAddressEntry(ot::Mle::Mle::TxMessage *this, const ot::Ip6::Address *a2)
{
  v7 = this;
  v6 = a2;
  v5 = 0;
  v4 = 0;
  v5 = ot::Message::Append<unsigned char>(this, &v4);
  if (!v5)
  {
    return ot::Message::Append<ot::Ip6::Address>(this, v6);
  }

  return v5;
}

uint64_t ot::Ip6::Netif::IterateExternalMulticastAddresses(uint64_t a1, char a2)
{
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::Builder(&v3, a1, a2);
  return v3;
}

{
  return ot::Ip6::Netif::IterateExternalMulticastAddresses(a1, a2);
}

uint64_t ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::begin@<X0>(ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder *this@<X0>, uint64_t a2@<X8>)
{
  return ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Iterator(a2, *this, *(this + 8));
}

{
  return ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::begin(this, a2);
}

void *ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::end@<X0>(ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder *this@<X0>, void *a2@<X8>)
{
  return ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Iterator(a2, *this);
}

{
  return ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::end(this, a2);
}

BOOL ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator!=(void *a1, void *a2)
{
  return *a1 != *a2;
}

{
  return ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator!=(a1, a2);
}

uint64_t ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator*(uint64_t a1)
{
  return *a1;
}

{
  return ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator*(a1);
}

void ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator++(ot::Ip6::Netif::ExternalMulticastAddress **a1)
{
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Advance(a1);
}

{
  ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator++(a1);
}

uint64_t ot::Message::Write<ot::Mle::Tlv>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::WriteBytes(a1, a2, a3, 2u);
}

{
  return ot::Message::Write<ot::Mle::Tlv>(a1, a2, a3);
}

uint64_t ot::Mle::AddressRegistrationTlv::ControlByteFor(ot::Mle::AddressRegistrationTlv *this)
{
  return this & 0xF | 0x80u;
}

{
  return ot::Mle::AddressRegistrationTlv::ControlByteFor(this);
}

uint64_t ot::Message::Append<ot::Ip6::InterfaceIdentifier>(ot::Message *a1, const void *a2)
{
  return ot::Message::AppendBytes(a1, a2, 8u);
}

{
  return ot::Message::Append<ot::Ip6::InterfaceIdentifier>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)27,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 27, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)27,unsigned short>>(a1, a2);
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::MeshCoP::ActiveDatasetManager>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
}

uint64_t ot::Mle::Mle::TxMessage::AppendPendingTimestampTlv(ot::Mle::Mle::TxMessage *this)
{
  v5 = 0;
  v1 = ot::GetProvider<ot::Message>::Get<ot::MeshCoP::PendingDatasetManager>(this);
  Timestamp = ot::MeshCoP::DatasetManager::GetTimestamp(v1);
  if (ot::MeshCoP::Timestamp::IsValid(Timestamp))
  {
    return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)23,ot::MeshCoP::Timestamp>>(this, Timestamp);
  }

  return v5;
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::MeshCoP::PendingDatasetManager>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)23,ot::MeshCoP::Timestamp>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 0x17, a2, 8);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)23,ot::MeshCoP::Timestamp>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)80,ot::Mle::ChannelTlvValue>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 0x50, a2, 3);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)80,ot::Mle::ChannelTlvValue>>(a1, a2);
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::Mac::Mac>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::Mac::Mac>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::Mac::Mac>(a1);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)85,unsigned int>>(ot::Tlv *a1, unsigned int a2)
{
  return ot::Tlv::AppendUintTlv<unsigned int>(a1, 0x55u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)85,unsigned int>>(a1, a2);
}

uint64_t ot::Mle::Mle::TxMessage::AppendCslClockAccuracyTlv(ot::Mle::Mle::TxMessage *this)
{
  v8 = this;
  v1 = ot::GetProvider<ot::Message>::Get<ot::Radio>(this);
  CslUncertainty = ot::Radio::GetCslUncertainty(v1);
  ot::Mle::CslClockAccuracyTlv::Init(v7);
  v2 = ot::GetProvider<ot::Message>::Get<ot::Radio>(this);
  CslAccuracy = ot::Radio::GetCslAccuracy(v2);
  ot::Mle::CslClockAccuracyTlv::SetCslClockAccuracy(v7, CslAccuracy);
  ot::Message::GetInstance(this);
  if (otPlatRadioGetRcp2Vendor2Enabled())
  {
    ot::Mle::CslClockAccuracyTlv::SetCslUncertainty(v7, CslUncertainty);
  }

  else
  {
    ot::Mle::CslClockAccuracyTlv::SetCslUncertainty(v7, 10 * CslUncertainty);
  }

  return ot::Message::Append<ot::Mle::CslClockAccuracyTlv>(this, v7);
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::Radio>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::Radio>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::Radio>(a1);
}

uint64_t ot::Radio::GetCslUncertainty(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetCslUncertainty();
}

{
  return ot::Radio::GetCslUncertainty(this);
}

uint64_t ot::Mle::CslClockAccuracyTlv::Init(ot::Mle::CslClockAccuracyTlv *this)
{
  ot::Mle::Tlv::SetType(this, 86);
  return ot::Tlv::SetLength(this, 2);
}

{
  return ot::Mle::CslClockAccuracyTlv::Init(this);
}

uint64_t ot::Mle::CslClockAccuracyTlv::SetCslClockAccuracy(uint64_t this, char a2)
{
  *(this + 2) = a2;
  return this;
}

{
  return ot::Mle::CslClockAccuracyTlv::SetCslClockAccuracy(this, a2);
}

uint64_t ot::Radio::GetCslAccuracy(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetCslAccuracy();
}

{
  return ot::Radio::GetCslAccuracy(this);
}

uint64_t ot::Mle::CslClockAccuracyTlv::SetCslUncertainty(uint64_t this, char a2)
{
  *(this + 3) = a2;
  return this;
}

{
  return ot::Mle::CslClockAccuracyTlv::SetCslUncertainty(this, a2);
}

uint64_t ot::Message::Append<ot::Mle::CslClockAccuracyTlv>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 4u);
}

{
  return ot::Message::Append<ot::Mle::CslClockAccuracyTlv>(a1, a2);
}

uint64_t ot::Mle::Mle::SecurityHeader::SetFrameCounter(ot::Mle::Mle::SecurityHeader *this, unsigned int a2)
{
  result = ot::LittleEndian::HostSwap32(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::Mle::Mle::SecurityHeader::SetFrameCounter(this, a2);
}

uint64_t ot::Mle::Mle::SecurityHeader::SetKeyId(ot::Mle::Mle::SecurityHeader *this, unsigned int a2)
{
  v4 = a2;
  result = ot::BigEndian::HostSwap32(a2);
  *(this + 5) = result;
  *(this + 9) = (v4 & 0x7F) + 1;
  return result;
}

{
  return ot::Mle::Mle::SecurityHeader::SetKeyId(this, a2);
}

uint64_t ot::Message::Write<ot::Mle::Mle::SecurityHeader>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::WriteBytes(a1, a2, a3, 0xAu);
}

{
  return ot::Message::Write<ot::Mle::Mle::SecurityHeader>(a1, a2, a3);
}

uint64_t ot::Mle::Mle::DelayedResponseMetadata::AppendTo(ot::Mle::Mle::DelayedResponseMetadata *this, ot::Message *a2)
{
  return ot::Message::Append<ot::Mle::Mle::DelayedResponseMetadata>(a2, this);
}

{
  return ot::Mle::Mle::DelayedResponseMetadata::AppendTo(this, a2);
}

uint64_t ot::Mle::Mle::TxMessage::AppendConnectivityTlv(ot::Mle::Mle::TxMessage *this)
{
  v5 = this;
  ot::Mle::ConnectivityTlv::Init(v4);
  v1 = ot::GetProvider<ot::Message>::Get<ot::Mle::MleRouter>(this);
  ot::Mle::MleRouter::FillConnectivityTlv(v1, v4);
  return ot::Tlv::AppendTo(v4, this);
}

uint64_t ot::Mle::ConnectivityTlv::Init(ot::Mle::ConnectivityTlv *this)
{
  ot::Mle::Tlv::SetType(this, 15);
  return ot::Tlv::SetLength(this, 10);
}

{
  return ot::Mle::ConnectivityTlv::Init(this);
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::Mle::MleRouter>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::Mle::MleRouter>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::Mle::MleRouter>(a1);
}

uint64_t ot::Mle::Mle::TxMessage::AppendAddressRegistrationTlv(ot::Mle::Mle::TxMessage *this, ot::Child *a2)
{
  v15 = this;
  v14 = a2;
  appended = 0;
  Length = ot::Message::GetLength(this);
  ot::Mle::Tlv::SetType(v12, 19);
  appended = ot::Message::Append<ot::Mle::Tlv>(this, v12);
  if (!appended)
  {
    Ip6Addresses = ot::Child::GetIp6Addresses(v14);
    ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin();
    v8 = v2;
    v7 = ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(Ip6Addresses);
    while (v8 != v7)
    {
      if (ot::Ip6::Address::IsMulticast(v8) || (v3 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(this), ot::NetworkData::Leader::GetContext(v3, v8, v11)))
      {
        appended = ot::Mle::Mle::TxMessage::AppendAddressEntry(this, v8);
        if (appended)
        {
          return appended;
        }
      }

      else
      {
        appended = ot::Mle::Mle::TxMessage::AppendCompressedAddressEntry(this, v11[17], v8);
        if (appended)
        {
          return appended;
        }
      }

      v8 = (v8 + 16);
    }

    v4 = ot::Message::GetLength(this);
    ot::Tlv::SetLength(v12, v4 - Length - 2);
    ot::Message::Write<ot::Mle::Tlv>(this, Length, v12);
  }

  return appended;
}

uint64_t ot::Child::GetIp6Addresses(ot::Child *this)
{
  return this + 204;
}

{
  return this + 204;
}

{
  return ot::Child::GetIp6Addresses(this);
}

{
  return ot::Child::GetIp6Addresses(this);
}

void ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin()
{
  ;
}

{
  ;
}

{
  ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin();
}

{
  ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin();
}

uint64_t ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(uint64_t a1)
{
  return a1 + 16 * *(a1 + 240);
}

{
  return a1 + 16 * *(a1 + 240);
}

{
  return ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(a1);
}

{
  return ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(a1);
}

uint64_t ot::Mle::Mle::TxMessage::AppendRouteTlv(ot::Mle::Mle::TxMessage *this, ot::Neighbor *a2)
{
  ot::Mle::RouteTlv::Init(v6);
  v2 = ot::GetProvider<ot::Message>::Get<ot::RouterTable>(this);
  ot::RouterTable::FillRouteTlv(v2, v6, a2);
  return ot::Tlv::AppendTo(v6, this);
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::RouterTable>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::RouterTable>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::RouterTable>(a1);
}

uint64_t ot::Mle::Mle::TxMessage::AppendDatasetTlv(ot::Message *a1, char a2)
{
  v10 = 23;
  v9 = 0;
  ot::MeshCoP::Dataset::Dataset(v13);
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = ot::GetProvider<ot::Message>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
      v10 = ot::MeshCoP::DatasetManager::Read(v3, v13);
      v9 = 25;
    }
  }

  else
  {
    active = ot::GetProvider<ot::Message>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
    v10 = ot::MeshCoP::DatasetManager::Read(active, v13);
    v9 = 24;
  }

  if (v10)
  {
    return 0;
  }

  else
  {
    ot::MeshCoP::Dataset::RemoveTimestamp(v13, a2);
    ot::MeshCoP::Dataset::GetBytes(v13);
    v7 = v4;
    Length = ot::MeshCoP::Dataset::GetLength(v13);
    return ot::Tlv::AppendTlv(a1, v9, v7, Length);
  }
}

uint64_t ot::Mle::Mle::TxMessage::AppendSteeringDataTlv(ot::Mle::Mle::TxMessage *this)
{
  v6 = 0;
  v1 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(this);
  if (!ot::NetworkData::Leader::FindSteeringData(v1, v7))
  {
    Data = ot::MeshCoP::SteeringData::GetData(v7);
    Length = ot::MeshCoP::SteeringData::GetLength(v7);
    return ot::Tlv::Append<ot::MeshCoP::SteeringDataTlv>(this, Data, Length);
  }

  return v6;
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)1,unsigned char>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned char>(a1, 1u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)1,unsigned char>>(a1, a2);
}

uint64_t ot::Mle::Mle::RxMessage::ReadChallengeOrResponse(ot::Mle::Mle::RxMessage *this, unsigned __int8 a2, ot::Mle::RxChallenge *a3, ot::OffsetRange *a4)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  TlvValueOffsetRange = 0;
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(this, a2, &v6, a4);
  if (!TlvValueOffsetRange)
  {
    return ot::Mle::RxChallenge::ReadFrom(v8, this, &v6);
  }

  return TlvValueOffsetRange;
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)5,unsigned int>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned int>(a1, 5u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)5,unsigned int>>(a1, a2);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)8,unsigned int>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned int>(a1, 8u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)8,unsigned int>>(a1, a2);
}

uint64_t ot::Tlv::FindTlv<ot::Mle::LeaderDataTlv>(ot::Tlv *a1, char *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  return ot::Tlv::FindTlv(a1, 0xB, 0xAu, a2, a5, a6);
}

{
  return ot::Tlv::FindTlv<ot::Mle::LeaderDataTlv>(a1, a2, a3, a4, a5, a6);
}

BOOL ot::Mle::LeaderDataTlv::IsValid(ot::Mle::LeaderDataTlv *this)
{
  return ot::Tlv::GetLength(this) >= 8uLL;
}

{
  return ot::Mle::LeaderDataTlv::IsValid(this);
}

uint64_t ot::Mle::LeaderDataTlv::Get(ot::Mle::LeaderDataTlv *this, ot::Mle::LeaderData *a2)
{
  v2 = ot::BigEndian::HostSwap32(*(this + 2));
  ot::Mle::LeaderData::SetPartitionId(a2, v2);
  ot::Mle::LeaderData::SetWeighting(a2, *(this + 6));
  ot::Mle::LeaderData::SetDataVersion(a2, *(this + 7));
  ot::Mle::LeaderData::SetStableDataVersion(a2, *(this + 8));
  return ot::Mle::LeaderData::SetLeaderRouterId(a2, *(this + 9));
}

{
  return ot::Mle::LeaderDataTlv::Get(this, a2);
}

uint64_t ot::Mle::Mle::RxMessage::ReadAndSaveDataset(ot::Tlv *a1, char a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  *&v10[5] = a3;
  *&v10[1] = 0;
  if (a2)
  {
    v3 = 25;
  }

  else
  {
    v3 = 24;
  }

  v10[0] = v3;
  ot::MeshCoP::Dataset::Dataset(v13);
  *&v10[1] = ot::Tlv::FindTlvValueOffsetRange(a1, v10[0], &v9, v4);
  if (!*&v10[1])
  {
    *&v10[1] = ot::MeshCoP::Dataset::SetFrom(v13, a1, &v9);
    if (!*&v10[1])
    {
      *&v10[1] = ot::MeshCoP::Dataset::ValidateTlvs(v13);
      if (!*&v10[1])
      {
        *&v10[1] = ot::MeshCoP::Dataset::WriteTimestamp(v13, v11, *&v10[5]);
        if (!*&v10[1])
        {
          if (v11)
          {
            if (v11 == 1)
            {
              v6 = ot::GetProvider<ot::Message>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
              *&v10[1] = ot::MeshCoP::DatasetManager::Save(v6, v13);
            }
          }

          else
          {
            active = ot::GetProvider<ot::Message>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
            *&v10[1] = ot::MeshCoP::DatasetManager::Save(active, v13);
          }
        }
      }
    }
  }

  return *&v10[1];
}

uint64_t ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetMaxSize()
{
  return 32;
}

{
  return ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetMaxSize();
}

void ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetArrayBuffer()
{
  ;
}

{
  ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetArrayBuffer();
}

uint64_t ot::Array<unsigned char,(unsigned short)32,unsigned char>::SetLength(uint64_t result, char a2)
{
  *(result + 32) = a2;
  return result;
}

{
  return ot::Array<unsigned char,(unsigned short)32,unsigned char>::SetLength(result, a2);
}

uint64_t ot::Tlv::FindTlv<ot::Mle::CslClockAccuracyTlv>(ot::Tlv *a1, char *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  return ot::Tlv::FindTlv(a1, 0x56, 4u, a2, a5, a6);
}

{
  return ot::Tlv::FindTlv<ot::Mle::CslClockAccuracyTlv>(a1, a2, a3, a4, a5, a6);
}

BOOL ot::Mle::CslClockAccuracyTlv::IsValid(ot::Mle::CslClockAccuracyTlv *this)
{
  return ot::Tlv::GetLength(this) >= 2uLL;
}

{
  return ot::Mle::CslClockAccuracyTlv::IsValid(this);
}

_BYTE *ot::Mac::CslAccuracy::SetClockAccuracy(_BYTE *this, char a2)
{
  *this = a2;
  return this;
}

{
  return ot::Mac::CslAccuracy::SetClockAccuracy(this, a2);
}

uint64_t ot::Mle::CslClockAccuracyTlv::GetCslClockAccuracy(ot::Mle::CslClockAccuracyTlv *this)
{
  return *(this + 2);
}

{
  return ot::Mle::CslClockAccuracyTlv::GetCslClockAccuracy(this);
}

uint64_t ot::Mac::CslAccuracy::SetUncertainty(uint64_t this, char a2)
{
  *(this + 1) = a2;
  return this;
}

{
  return ot::Mac::CslAccuracy::SetUncertainty(this, a2);
}

uint64_t ot::Mle::CslClockAccuracyTlv::GetCslUncertainty(ot::Mle::CslClockAccuracyTlv *this)
{
  return *(this + 3);
}

{
  return ot::Mle::CslClockAccuracyTlv::GetCslUncertainty(this);
}

uint64_t ot::Mle::Mle::RxMessage::ReadRouteTlv(ot::Mle::Mle::RxMessage *this, ot::Mle::RouteTlv *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  v7 = ot::Tlv::FindTlv<ot::Mle::RouteTlv>(this, a2, a3, a4, a5, a6);
  if (!v7 && !ot::Mle::RouteTlv::IsValid(a2))
  {
    return 6;
  }

  return v7;
}

uint64_t ot::Tlv::FindTlv<ot::Mle::RouteTlv>(ot::Tlv *a1, char *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  return ot::Tlv::FindTlv(a1, 9, 0x4Au, a2, a5, a6);
}

{
  return ot::Tlv::FindTlv<ot::Mle::RouteTlv>(a1, a2, a3, a4, a5, a6);
}

void *ot::ClearAllBytes<ot::Mle::Mle::ParentCandidate>(void *a1)
{
  return memset(a1, 0, 0xB0uLL);
}

{
  return ot::ClearAllBytes<ot::Mle::Mle::ParentCandidate>(a1);
}

uint64_t ot::GetArrayLength<char const*,(unsigned short)11>()
{
  return 11;
}

{
  return ot::GetArrayLength<char const*,(unsigned short)11>();
}

uint64_t *std::chrono::duration<long long,std::ratio<1l,1000000l>>::duration[abi:dn200100]<long long,std::ratio<1l,1000l>,0>(uint64_t *a1, uint64_t a2)
{
  std::chrono::duration<long long,std::ratio<1l,1000000l>>::duration[abi:dn200100]<long long,std::ratio<1l,1000l>,0>(a1, a2);
  return a1;
}

{
  v5[2] = a1;
  v5[1] = a2;
  v5[0] = std::chrono::duration_cast[abi:dn200100]<std::chrono::duration<long long,std::ratio<1l,1000000l>>,long long,std::ratio<1l,1000l>,0>(a2);
  v2 = std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>::__get_np[abi:dn200100](v5);
  result = a1;
  *a1 = v2;
  return result;
}

uint64_t std::chrono::__duration_cast<std::chrono::duration<long long,std::ratio<1l,1000l>>,std::chrono::duration<long long,std::ratio<1l,1000000l>>,std::ratio<1000l,1l>,false,true>::operator()[abi:dn200100](uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[1] = a2;
  v3[0] = 1000 * std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>::__get_np[abi:dn200100](a2);
  std::chrono::duration<long long,std::ratio<1l,1000000l>>::duration[abi:dn200100]<long long,0>(&v4, v3);
  return v4;
}

void *ot::Clearable<ot::SettingsBase::ParentInfo>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::SettingsBase::ParentInfo>(a1);
}

{
  return ot::Clearable<ot::SettingsBase::ParentInfo>::Clear(a1);
}

void *ot::ClearAllBytes<ot::SettingsBase::ParentInfo>(void *result)
{
  *result = 0;
  result[1] = 0;
  *(result + 14) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::SettingsBase::ParentInfo>(result);
}

void *ot::Clearable<ot::SettingsBase::NetworkInfo>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::SettingsBase::NetworkInfo>(a1);
}

{
  return ot::Clearable<ot::SettingsBase::NetworkInfo>::Clear(a1);
}

void *ot::ClearAllBytes<ot::SettingsBase::NetworkInfo>(void *a1)
{
  return memset(a1, 0, 0x2FuLL);
}

{
  return ot::ClearAllBytes<ot::SettingsBase::NetworkInfo>(a1);
}

BOOL ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::IsDone(void *a1)
{
  return *a1 == 0;
}

{
  return ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::IsDone(a1);
}

ot::Mle::ChannelTlvValue *ot::Mle::ChannelTlvValue::ChannelTlvValue(ot::Mle::ChannelTlvValue *this, char a2, unsigned __int16 a3)
{
  ot::Mle::ChannelTlvValue::ChannelTlvValue(this, a2, a3);
  return this;
}

{
  *this = a2;
  v3 = ot::BigEndian::HostSwap16(a3);
  result = this;
  *(this + 1) = v3;
  return result;
}

uint64_t ot::Mle::Mle::RxInfo::RxInfo(uint64_t this, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  *this = a2;
  *(this + 8) = a3;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

BOOL ot::Mle::ConnectivityTlv::IsSedBufferingIncluded(ot::Mle::ConnectivityTlv *this)
{
  return ot::Tlv::GetLength(this) >= 0xAuLL;
}

{
  return ot::Mle::ConnectivityTlv::IsSedBufferingIncluded(this);
}

uint64_t ot::Array<unsigned char,(unsigned short)8,unsigned char>::Clear(uint64_t result)
{
  *(result + 8) = 0;
  return result;
}

{
  return ot::Array<unsigned char,(unsigned short)8,unsigned char>::Clear(result);
}

uint64_t ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetLength(uint64_t a1)
{
  return *(a1 + 8);
}

{
  return ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetLength(a1);
}

void ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetArrayBuffer()
{
  ;
}

{
  ;
}

{
  ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetArrayBuffer();
}

{
  ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetArrayBuffer();
}

uint64_t ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::Builder(uint64_t result, uint64_t a2, char a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

void *ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Iterator(void *a1, uint64_t a2)
{
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Iterator(a1, a2);
  return a1;
}

{
  ot::Ptr<ot::Message>::Ptr(a1);
  result = a1;
  a1[1] = a2;
  return result;
}

uint64_t ot::Message::Append<ot::Mle::Mle::DelayedResponseMetadata>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0x14u);
}

{
  return ot::Message::Append<ot::Mle::Mle::DelayedResponseMetadata>(a1, a2);
}

uint64_t ot::Ip6::Udp::SocketIn<ot::Mle::Mle,&ot::Mle::Mle::HandleUdpReceive>::HandleUdpReceive(ot::Mle::Mle *a1, uint64_t a2, uint64_t a3)
{
  v5 = ot::AsCoreType<otMessage>(a2);
  v3 = ot::AsCoreType<otMessageInfo>(a3);
  return ot::Mle::Mle::HandleUdpReceive(a1, v5, v3);
}

void *ot::ClearAllBytes<ot::Mle::LeaderData>(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Mle::LeaderData>(result);
}

void *ot::ClearAllBytes<ot::Ip6::Netif::MulticastAddress>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Ip6::Netif::MulticastAddress>(result);
}

void *ot::ClearAllBytes<ot::Ip6::NetworkPrefix>(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Ip6::NetworkPrefix>(result);
}

void *ot::CallbackBase<void (*)(void *)>::Clear(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::CallbackBase<void (*)(void *)>::Clear(result);
}

uint64_t ot::Instance::Get<ot::Dhcp6::Server>(uint64_t a1)
{
  return a1 + 86672;
}

{
  return ot::Instance::Get<ot::Dhcp6::Server>(a1);
}

uint64_t ot::Instance::Get<ot::LinkMetrics::Subject>(uint64_t a1)
{
  return a1 + 154784;
}

{
  return ot::Instance::Get<ot::LinkMetrics::Subject>(a1);
}

unsigned __int8 *ot::Array<unsigned char,(unsigned short)32,unsigned char>::Find(uint64_t a1, unsigned __int8 *a2)
{
  v7 = 0;
  ot::Array<unsigned char,(unsigned short)32,unsigned char>::begin();
  v5 = v2;
  v4 = ot::Array<unsigned char,(unsigned short)32,unsigned char>::end(a1);
  while (v5 != v4)
  {
    if (*v5 == *a2)
    {
      return v5;
    }

    ++v5;
  }

  return v7;
}

{
  return ot::Array<unsigned char,(unsigned short)32,unsigned char>::Find(a1, a2);
}

BOOL ot::Array<unsigned char,(unsigned short)32,unsigned char>::IsFull(uint64_t a1)
{
  v2 = *(a1 + 32);
  return v2 == ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetMaxSize();
}

{
  return ot::Array<unsigned char,(unsigned short)32,unsigned char>::IsFull(a1);
}

void ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Advance(ot::Ip6::Netif::ExternalMulticastAddress **this)
{
  ot::Ip6::Netif::ExternalMulticastAddress::GetNext(*this);
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::AdvanceFrom(this, v1);
}

{
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Advance(this);
}

ot::Mle::MleRouter *ot::Mle::MleRouter::MleRouter(ot::Mle::MleRouter *this, ot::Instance *a2)
{
  ot::Mle::Mle::Mle(this, a2);
  ot::TrickleTimer::TrickleTimer((this + 1136), a2, ot::Mle::MleRouter::HandleAdvertiseTrickleTimer);
  ot::ChildTable::ChildTable((this + 1200), a2);
  ot::RouterTable::RouterTable((this + 30904), a2);
  *(this + 35616) = 0;
  *(this + 17813) = 511;
  *(this + 35628) = 120;
  *(this + 35629) = 16;
  *(this + 35630) = 23;
  *(this + 35632) = *(this + 35632) & 0xFE | 1;
  *(this + 35632) &= ~2u;
  *(this + 35632) &= ~4u;
  ot::Utils::FifoHistogram<unsigned char,(short)24>::FifoHistogram((this + 35633));
  ot::Utils::FifoHistogram<unsigned char,(short)24>::FifoHistogram((this + 35657));
  *(this + 8923) = 0;
  *(this + 8924) = 0;
  *(this + 35700) = 0;
  *(this + 35701) = 0;
  ot::Mle::MleRouter::RouterRoleTransition::RouterRoleTransition((this + 35702));
  *(this + 35704) = 3;
  *(this + 35705) = 0;
  *(this + 35706) = -2;
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 4468);
  ot::TimerMicro::TimerMicro((this + 35760), a2, ot::Mle::MleRouter::HandleConnectedNeighbourTimer);
  v2 = ot::Mle::DeviceMode::Get((this + 131));
  ot::Mle::DeviceMode::Set(this + 131, v2 | 3);
  *(this + 35631) = 64;
  ot::Ip6::Netif::UnicastAddress::InitAsThreadOriginMeshLocal((this + 35712));
  ot::Mle::MleRouter::SetRouterId(this, 63);
  v3 = ot::Time::SecToMsec(0xE10);
  ot::TimerMilli::Start((this + 35760), v3);
  return this;
}

{
  ot::Mle::MleRouter::MleRouter(this, a2);
  return this;
}

void *ot::Utils::FifoHistogram<unsigned char,(short)24>::FifoHistogram(void *a1)
{
  ot::Utils::FifoHistogram<unsigned char,(short)24>::FifoHistogram(a1);
  return a1;
}

{
  ot::Utils::FifoHistogram<unsigned char,(short)24>::Clear(a1);
  return a1;
}

uint64_t ot::Mle::MleRouter::SetRouterId(uint64_t this, char a2)
{
  *(this + 35689) = a2;
  *(this + 35690) = *(this + 35689);
  return this;
}

uint64_t ot::Mle::MleRouter::HandlePartitionChange(ot::Mle::MleRouter *this)
{
  *(this + 8924) = ot::Mle::LeaderData::GetPartitionId((this + 184));
  *(this + 35700) = ot::RouterTable::GetRouterIdSequence((this + 30904));
  *(this + 35701) = ot::Mle::MleRouter::GetNetworkIdTimeout(this);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
  ot::AddressResolver::Clear(v1);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  ot::Coap::CoapBase::AbortTransaction(v2, ot::Mle::MleRouter::HandleAddressSolicitResponse, this);
  IgnoreError();
  return ot::RouterTable::Clear((this + 30904));
}

uint64_t ot::Mle::MleRouter::HandleAddressSolicitResponse(unsigned __int8 *a1, uint64_t a2, uint64_t a3, int a4)
{
  ot::AsCoapMessagePtr();
  v7 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  return ot::Mle::MleRouter::HandleAddressSolicitResponse(a1, v7, v5, a4);
}

uint64_t ot::Mle::MleRouter::IsRouterEligible(ot::Mle::MleRouter *this)
{
  v5 = 0;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
  SecurityPolicy = ot::KeyManager::GetSecurityPolicy(v1);
  if ((*(this + 35632) & 1) != 0 && ot::Mle::Mle::IsFullThreadDevice(this) && ((*(SecurityPolicy + 2) & 0x10) == 0 || (*(SecurityPolicy + 2) & 0x100) != 0) && ((*(SecurityPolicy + 2) & 4) != 0 || ((*(SecurityPolicy + 2) >> 9) & 7) + 3 <= 4))
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t ot::Mle::MleRouter::SetRouterEligible(ot::Mle::MleRouter *this, char a2)
{
  v6 = 0;
  if (ot::Mle::Mle::IsFullThreadDevice(this) || (a2 & 1) == 0)
  {
    if ((a2 & 1) != (*(this + 35632) & 1))
    {
      *(this + 35632) = *(this + 35632) & 0xFE | a2 & 1;
      v4 = *(this + 130);
      if (v4 > 1)
      {
        if (v4 == 2)
        {
          if (*(this + 35632))
          {
            ot::Mle::MleRouter::RouterRoleTransition::StartTimeout((this + 35702));
          }

          v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
          ot::Mac::Mac::SetBeaconEnabled(v2, *(this + 35632) & 1);
        }

        else if ((v4 == 4 || v4 == 3) && (*(this + 35632) & 1) == 0)
        {
          ot::Mle::Mle::BecomeDetached(this);
          IgnoreError();
        }
      }
    }
  }

  else
  {
    return 27;
  }

  return v6;
}

uint64_t ot::Mle::MleRouter::RouterRoleTransition::StartTimeout(ot::Mle::MleRouter::RouterRoleTransition *this)
{
  result = ot::Random::NonCrypto::GetUint8InRange(0, *(this + 1));
  *this = result + 1;
  return result;
}

uint64_t ot::Mle::MleRouter::HandleSecurityPolicyChanged(ot::Mle::MleRouter *this)
{
  result = ot::Mle::Mle::IsRouterOrLeader(this);
  if (result)
  {
    result = ot::Mle::MleRouter::IsRouterEligible(this);
    if ((result & 1) == 0)
    {
      result = ot::Mle::MleRouter::RouterRoleTransition::IsPending((this + 35702));
      if ((result & 1) == 0)
      {
        ot::Mle::MleRouter::RouterRoleTransition::StartTimeout((this + 35702));
        result = ot::Mle::Mle::IsLeader(this);
        if (result)
        {
          return ot::Mle::MleRouter::RouterRoleTransition::IncreaseTimeout(this + 35702, 10);
        }
      }
    }
  }

  return result;
}

_BYTE *ot::Mle::MleRouter::RouterRoleTransition::IncreaseTimeout(_BYTE *this, char a2)
{
  *this += a2;
  return this;
}

{
  return ot::Mle::MleRouter::RouterRoleTransition::IncreaseTimeout(this, a2);
}

uint64_t ot::Mle::MleRouter::BecomeRouter(uint64_t a1, unsigned __int8 a2)
{
  if (ot::Mle::Mle::IsDisabled(a1))
  {
    return 13;
  }

  else if (ot::Mle::Mle::IsRouter(a1))
  {
    return 0;
  }

  else if (ot::Mle::MleRouter::IsRouterEligible(a1))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Attempt to become router", v2, v3, v4, v5, v6, v7, v18);
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
    ot::MeshForwarder::SetRxOnWhenIdle(v8, 1, v9, v10, v11, v12, v13, v14);
    ot::Mle::MleRouter::RouterRoleTransition::StopTimeout((a1 + 35702));
    v20 = *(a1 + 130);
    if (v20 == 1)
    {
      v19 = 1;
      if ((*(a1 + 129) & 0x20) == 0)
      {
        v19 = ot::ChildTable::GetNumChildren((a1 + 1200), 1u) >= 6;
      }

      if (v19)
      {
        v15 = 6;
      }

      else
      {
        v15 = 3;
      }

      *(a1 + 143) = v15;
      v22 = ot::Mle::MleRouter::SendLinkRequest(a1, 0);
      if (!v22)
      {
        --*(a1 + 143);
        ot::Mle::Mle::ScheduleMessageTransmissionTimer(a1);
        v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(a1);
        ot::TimeTicker::RegisterReceiver(v16, 1);
      }
    }

    else
    {
      if (v20 != 2)
      {
        __assert_rtn("BecomeRouter", "mle_router.cpp", 320, "false");
      }

      return ot::Mle::MleRouter::SendAddressSolicit(a1, a2);
    }
  }

  else
  {
    return 27;
  }

  return v22;
}

_BYTE *ot::Mle::MleRouter::RouterRoleTransition::StopTimeout(_BYTE *this)
{
  *this = 0;
  return this;
}

{
  return ot::Mle::MleRouter::RouterRoleTransition::StopTimeout(this);
}

uint64_t ot::Mle::MleRouter::SendLinkRequest(ot::Mle::MleRouter *this, ot::Neighbor *a2)
{
  v12 = this;
  v11 = a2;
  appended = 0;
  v9 = 0;
  if (*(this + 35616))
  {
    goto LABEL_35;
  }

  ot::Clearable<ot::Ip6::Address>::Clear(&v8);
  v9 = ot::Mle::Mle::NewMleMessage(this, 0);
  if (!v9)
  {
    appended = 3;
    goto LABEL_35;
  }

  appended = ot::Mle::Mle::TxMessage::AppendVersionTlv(v9);
  if (appended)
  {
    goto LABEL_35;
  }

  v6 = *(this + 130);
  if (!*(this + 130))
  {
    __assert_rtn("SendLinkRequest", "mle_router.cpp", 726, "false");
  }

  if (v6 == 1)
  {
    appended = ot::Mle::Mle::TxMessage::AppendTlvRequestTlv<(unsigned char)2>(v9, ot::Mle::MleRouter::SendLinkRequest(ot::Neighbor *)::kDetachedTlvs);
    if (appended)
    {
      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (v6 == 2)
  {
    appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v9);
    if (appended)
    {
      goto LABEL_35;
    }

    appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v9);
    if (appended)
    {
      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (v6 != 4 && v6 != 3)
  {
    goto LABEL_25;
  }

  if (v11 && ot::Neighbor::IsStateValid(v11))
  {
    appended = ot::Mle::Mle::TxMessage::AppendTlvRequestTlv<(unsigned char)2>(v9, ot::Mle::MleRouter::SendLinkRequest(ot::Neighbor *)::kValidNeighborTlvs);
    if (appended)
    {
      goto LABEL_35;
    }
  }

  else
  {
    appended = ot::Mle::Mle::TxMessage::AppendTlvRequestTlv<(unsigned char)1>(v9, &ot::Mle::MleRouter::SendLinkRequest(ot::Neighbor *)::kRouterTlvs);
    if (appended)
    {
      goto LABEL_35;
    }
  }

  appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v9);
  if (!appended)
  {
    appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v9);
    if (!appended)
    {
LABEL_25:
      if (v11)
      {
        if (ot::Neighbor::IsStateValid(v11))
        {
          ot::Mle::TxChallenge::GenerateRandom(v13);
          appended = ot::Mle::Mle::TxMessage::AppendChallengeTlv(v9, v13);
          if (appended)
          {
            goto LABEL_35;
          }
        }

        else
        {
          ot::Neighbor::GenerateChallenge(v11);
          v5 = v9;
          Challenge = ot::Neighbor::GetChallenge(v11);
          appended = ot::Mle::Mle::TxMessage::AppendChallengeTlv(v5, Challenge);
          if (appended)
          {
            goto LABEL_35;
          }
        }

        ot::Neighbor::GetExtAddress(v11);
        ot::Ip6::Address::SetToLinkLocalAddress(&v8, v3);
      }

      else
      {
        ot::Mle::TxChallenge::GenerateRandom((this + 35617));
        *(this + 35616) = 2;
        appended = ot::Mle::Mle::TxMessage::AppendChallengeTlv(v9, (this + 35617));
        if (appended)
        {
          goto LABEL_35;
        }

        ot::Ip6::Address::SetToLinkLocalAllRoutersMulticast(&v8);
      }

      appended = ot::Mle::Mle::TxMessage::SendTo(v9, &v8);
      if (!appended)
      {
        ot::Mle::Mle::Log(0, 26, &v8);
      }
    }
  }

LABEL_35:
  if (appended && v9)
  {
    ot::Message::Free(v9);
  }

  return appended;
}

uint64_t ot::Mle::MleRouter::SendAddressSolicit(ot::InstanceLocator *a1, unsigned __int8 a2)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  Instance = ot::InstanceLocator::GetInstance(a1);
  ot::Tmf::MessageInfo::MessageInfo(v12, Instance);
  v11 = 0;
  if ((*(a1 + 35632) & 2) == 0)
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
    v11 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v3, 4u);
    if (v11)
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
      ExtAddress = ot::Mac::Mac::GetExtAddress(v4);
      v13 = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)1,ot::Mac::ExtAddress>>(v11, ExtAddress);
      if (!v13)
      {
        if (!ot::Mle::IsRouterIdValid(*(a1 + 35690)) || (v6 = ot::Mle::Rloc16FromRouterId(*(a1 + 35690)), (v13 = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v11, v6)) == 0))
        {
          v13 = ot::Tlv::Append<ot::ThreadStatusTlv>(v11, v14);
          if (!v13)
          {
            ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderRloc(v12);
            v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
            v13 = ot::Coap::CoapBase::SendMessage(v7, v11, v12, ot::Mle::MleRouter::HandleAddressSolicitResponse, a1);
            if (!v13)
            {
              *(a1 + 35632) = *(a1 + 35632) & 0xFD | 2;
              PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v12);
              ot::Mle::Mle::Log(0, 19, PeerAddr);
            }
          }
        }
      }
    }

    else
    {
      v13 = 3;
    }
  }

  if (v13 && v11)
  {
    ot::Message::Free(v11);
  }

  return v13;
}

uint64_t ot::Mle::MleRouter::BecomeLeader(ot::Mle::MleRouter *this, char a2)
{
  v30 = 0;
  active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
  if (ot::MeshCoP::ActiveDatasetManager::IsComplete(active))
  {
    if (ot::Mle::Mle::IsDisabled(this))
    {
      return 13;
    }

    else if (ot::Mle::Mle::IsLeader(this))
    {
      return 0;
    }

    else if (ot::Mle::MleRouter::IsRouterEligible(this))
    {
      if ((a2 & 1) != 0 && ot::Mle::Mle::IsAttached(this) && (v25 = *(this + 35631), ot::Mle::LeaderData::GetWeighting((this + 184)), ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Leader re-election [BecomeLeader] Weight[%d] LeaderWeight[%d]", v3, v4, v5, v6, v7, v8, v25), v24 = *(this + 35631), v24 <= ot::Mle::LeaderData::GetWeighting((this + 184))))
      {
        return 27;
      }

      else
      {
        v9 = ot::RouterTable::Clear((this + 30904));
        Uint32 = ot::Random::NonCrypto::GetUint32(v9);
        if (ot::Mle::Mle::IsSleepyRouter(this))
        {
          do
          {
            Uint8InRange = ot::Random::NonCrypto::GetUint8InRange(0, 0x3Fu);
          }

          while (Uint8InRange == *(this + 35690));
        }

        else
        {
          if (ot::Mle::IsRouterIdValid(*(this + 35690)))
          {
            v23 = *(this + 35690);
          }

          else
          {
            v23 = ot::Random::NonCrypto::GetUint8InRange(0, 0x3Fu);
          }

          Uint8InRange = v23;
        }

        v22 = *(this + 35690);
        ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "%s: leaderId[%d], mPreviousRouterId[%d]", v10, v11, v12, v13, v14, v15, "BecomeLeader");
        ot::Mle::Mle::SetLeaderData(this, Uint32, *(this + 35631), Uint8InRange);
        v29 = ot::RouterTable::Allocate((this + 30904), Uint8InRange);
        if (!v29)
        {
          __assert_rtn("BecomeLeader", "mle_router.cpp", 388, "router != nullptr");
        }

        ot::Mle::MleRouter::SetRouterId(this, Uint8InRange);
        v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        ExtAddress = ot::Mac::Mac::GetExtAddress(v16);
        ot::Neighbor::SetExtAddress(v29, ExtAddress);
        v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
        ot::NetworkData::Leader::Reset(v18);
        v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Leader>(this);
        ot::MeshCoP::Leader::SetEmptyCommissionerData(v19);
        v20 = ot::Mle::Rloc16FromRouterId(Uint8InRange);
        ot::Mle::MleRouter::SetStateLeader(this, v20, 0);
      }
    }

    else
    {
      return 27;
    }
  }

  else
  {
    return 13;
  }

  return v30;
}

uint64_t ot::Mle::MleRouter::StopLeader(ot::Mle::MleRouter *this)
{
  ot::Mle::MleRouter::StopAdvertiseTrickleTimer(this);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  return ot::Ip6::Netif::UnsubscribeAllRoutersMulticast(v1);
}

uint64_t ot::Mle::MleRouter::HandleDetachStart(ot::Mle::MleRouter *this)
{
  ot::RouterTable::ClearNeighbors((this + 30904));
  ot::Mle::MleRouter::StopLeader(this);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
  return ot::TimeTicker::UnregisterReceiver(v1, 1);
}

uint64_t ot::Mle::MleRouter::HandleChildStart(uint64_t a1, char a2)
{
  *(a1 + 35632) &= ~4u;
  ot::Mle::MleRouter::RouterRoleTransition::StartTimeout((a1 + 35702));
  ot::Mle::MleRouter::StopLeader(a1);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(a1);
  ot::TimeTicker::RegisterReceiver(v2, 1);
  if (*(a1 + 35632))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
    ot::Mac::Mac::SetBeaconEnabled(v3, 1);
  }

  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
  ot::Ip6::Netif::SubscribeAllRoutersMulticast(v4);
  if (ot::Mle::IsRouterIdValid(*(a1 + 35690)))
  {
    switch(a2)
    {
      case 0:
LABEL_16:
        if (ot::Mle::Mle::IsAnnounceAttach(a1) && ot::Mle::MleRouter::HasChildren(a1))
        {
          ot::Mle::MleRouter::RemoveChildren(a1);
        }

        goto LABEL_19;
      case 1:
        if (ot::Mle::MleRouter::HasChildren(a1))
        {
          ot::Mle::MleRouter::BecomeRouter(a1, 3u);
          IgnoreError();
        }

        break;
      case 2:
LABEL_19:
        if (ot::Mle::MleRouter::HasChildren(a1))
        {
          v6 = *(a1 + 35692);
          if (v6 != ot::Mle::LeaderData::GetPartitionId((a1 + 184)))
          {
            ot::Mle::MleRouter::BecomeRouter(a1, 4u);
            IgnoreError();
          }
        }

        break;
      case 3:
        ot::Mle::MleRouter::SendAddressRelease(a1);
        if (ot::Mle::MleRouter::HasChildren(a1))
        {
          ot::Mle::MleRouter::RemoveChildren(a1);
        }

        ot::Mle::MleRouter::SetRouterId(a1, 63);
        break;
      case 4:
        goto LABEL_16;
      default:
        break;
    }
  }

  result = ot::RouterTable::GetActiveRouterCount((a1 + 30904));
  if (result >= *(a1 + 35629))
  {
    if (!ot::Mle::IsRouterIdValid(*(a1 + 35690)))
    {
      return ot::Mle::MleRouter::SetRouterId(a1, 63);
    }

    result = ot::Mle::MleRouter::HasChildren(a1);
    if ((result & 1) == 0)
    {
      return ot::Mle::MleRouter::SetRouterId(a1, 63);
    }
  }

  return result;
}

void ot::Mle::MleRouter::SendAddressRelease(ot::Mle::MleRouter *this)
{
  v12 = this;
  v11 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v10, Instance);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v9 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v2, 3u);
  if (v9)
  {
    v3 = ot::Mle::Rloc16FromRouterId(*(this + 35689));
    v11 = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v9, v3);
    if (!v11)
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ExtAddress = ot::Mac::Mac::GetExtAddress(v4);
      v11 = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)1,ot::Mac::ExtAddress>>(v9, ExtAddress);
      if (!v11)
      {
        ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderRloc(v10);
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
        v11 = ot::Coap::CoapBase::SendMessage(v6, v9, v10);
        if (!v11)
        {
          PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v10);
          ot::Mle::Mle::Log(0, 16, PeerAddr);
        }
      }
    }
  }

  else
  {
    v11 = 3;
  }

  if (v11 && v9)
  {
    ot::Message::Free(v9);
  }

  ot::Mle::Mle::LogSendError(16, v11);
}

BOOL ot::Mle::MleRouter::RemoveChildren(ot::Mle::MleRouter *this)
{
  v13 = this;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v11 = ot::ChildTable::Iterate(v1, 1);
  v12 = &v11;
  v16 = ot::ChildTable::IteratorBuilder::begin(&v11);
  v17 = v2;
  v9 = v16;
  v10 = v2;
  v14 = ot::ChildTable::IteratorBuilder::end(v12);
  v15 = v3;
  v7 = v14;
  v8 = v3;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v9, &v7);
    if (!result)
    {
      break;
    }

    v6 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v9);
    ot::Mle::MleRouter::RemoveNeighbor(this, v6);
    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v9);
  }

  return result;
}

BOOL ot::Mle::Mle::IsAnnounceAttach(ot::Mle::Mle *this)
{
  return *(this + 76) != 0xFFFF;
}

{
  return ot::Mle::Mle::IsAnnounceAttach(this);
}

uint64_t ot::RouterTable::GetActiveRouterCount(ot::RouterTable *this)
{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::GetLength(this + 8);
}

{
  return ot::RouterTable::GetActiveRouterCount(this);
}

void ot::Mle::MleRouter::SetStateRouterOrLeader(uint64_t a1, char a2, unsigned __int16 a3, char a4)
{
  v40 = a1;
  v39 = a2;
  v38 = a3;
  v37 = a4;
  if (a2 == 4)
  {
    active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
    ot::MeshCoP::DatasetManager::Restore(active);
    IgnoreError();
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
    ot::MeshCoP::DatasetManager::Restore(v5);
    IgnoreError();
  }

  ot::Mle::Mle::SetRloc16(a1, v38);
  ot::Mle::Mle::SetRole(a1, v39);
  ot::Mle::Mle::SetAttachState(a1, 0);
  ot::Mle::Mle::ResetAttachCounter(a1);
  ot::TimerMilli::Stop((a1 + 888));
  ot::TimerMilli::Stop((a1 + 936));
  ot::Mle::MleRouter::StopAdvertiseTrickleTimer(a1);
  ot::Mle::MleRouter::ResetAdvertiseInterval(a1);
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
  ot::Ip6::Netif::SubscribeAllRoutersMulticast(v6);
  *(a1 + 35692) = ot::Mle::LeaderData::GetPartitionId((a1 + 184));
  v28 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
  IsRxOnWhenIdle = ot::Mle::Mle::IsRxOnWhenIdle(a1);
  ot::Mac::Mac::SetBeaconEnabled(v28, IsRxOnWhenIdle);
  if (v39 == 4)
  {
    Address = ot::Ip6::Netif::UnicastAddress::GetAddress((a1 + 35712));
    ot::Mle::Mle::GetLeaderAloc(a1, Address);
    v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
    ot::Ip6::Netif::AddUnicastAddress(v9, (a1 + 35712));
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(a1);
    ot::TimeTicker::RegisterReceiver(v10, 1);
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
    ot::NetworkData::Leader::Start(v11, v37);
    v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
    ot::MeshCoP::ActiveDatasetManager::StartLeader(v12);
    v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
    ot::MeshCoP::PendingDatasetManager::StartLeader(v13);
    v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(a1);
    ot::AddressResolver::Clear(v14);
  }

  v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(a1);
  v35 = ot::ChildTable::Iterate(v15, 1);
  v36 = &v35;
  v43 = ot::ChildTable::IteratorBuilder::begin(&v35);
  v44 = v16;
  v33 = v43;
  v34 = v16;
  v41 = ot::ChildTable::IteratorBuilder::end(v36);
  v42 = v17;
  v31 = v41;
  v32 = v17;
  while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v33, &v31))
  {
    v30 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v33);
    Rloc16 = ot::Neighbor::GetRloc16(v30);
    if (ot::Mle::RouterIdFromRloc16(Rloc16) != *(a1 + 35689))
    {
      ot::Mle::MleRouter::RemoveNeighbor(a1, v30);
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v33);
  }

  v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
  ot::Mac::Mac::UpdateCsl(v19, 0);
  PartitionId = ot::Mle::LeaderData::GetPartitionId((a1 + 184));
  v21 = ot::ToUlong(PartitionId);
  ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Partition ID 0x%lx", v22, v23, v24, v25, v26, v27, v21);
}

uint64_t ot::Mle::MleRouter::ResetAdvertiseInterval(ot::Mle::MleRouter *this)
{
  result = ot::Mle::Mle::IsRouterOrLeader(this);
  if (result)
  {
    if (!ot::TrickleTimer::IsRunning((this + 1136)))
    {
      v2 = ot::Mle::MleRouter::DetermineAdvertiseIntervalMax(this);
      ot::TrickleTimer::Start(this + 1136, 0, 0x3E8u, v2, 0xFFFF);
    }

    return ot::TrickleTimer::IndicateInconsistent(this + 1136);
  }

  return result;
}

void ot::Mle::MleRouter::RemoveNeighbor(ot::Mle::MleRouter *this, ot::Neighbor *a2)
{
  if (!ot::Neighbor::IsStateInvalid(a2))
  {
    if (a2 == (this + 192))
    {
      if (ot::Mle::Mle::IsChild(this))
      {
        ot::Mle::Mle::BecomeDetached(this);
        IgnoreError();
      }
    }

    else if (a2 == ot::Mle::Mle::GetParentCandidate(this))
    {
      ot::Mle::Mle::ClearParentCandidate(this);
    }

    else
    {
      Rloc16 = ot::Neighbor::GetRloc16(a2);
      if (ot::Mle::IsChildRloc16(Rloc16))
      {
        if (!ot::ChildTable::Contains((this + 1200), a2))
        {
          __assert_rtn("RemoveNeighbor", "mle_router.cpp", 3999, "mChildTable.Contains(aNeighbor)");
        }

        if (ot::Neighbor::IsStateValidOrRestoring(a2))
        {
          ot::NeighborTable::Signal((this + 344), 1u, a2);
        }

        v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::IndirectSender>(this);
        ot::IndirectSender::ClearAllMessagesForSleepyChild(v3, a2);
        if (ot::Neighbor::IsFullThreadDevice(a2))
        {
          v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
          v4 = ot::Neighbor::GetRloc16(a2);
          ot::AddressResolver::RemoveEntriesForRloc16(v23, v4);
        }

        ot::ChildTable::RemoveStoredChild((this + 1200), a2);
      }

      else if (ot::Neighbor::IsStateValid(a2))
      {
        if (!ot::RouterTable::Contains((this + 30904), a2))
        {
          __assert_rtn("RemoveNeighbor", "mle_router.cpp", 4017, "mRouterTable.Contains(aNeighbor)");
        }

        ot::NeighborTable::Signal((this + 344), 4u, a2);
        ot::RouterTable::RemoveRouterLink((this + 30904), a2);
      }
    }

    LinkInfo = ot::Neighbor::GetLinkInfo(a2);
    ot::LinkQualityInfo::Clear(LinkInfo);
    ot::Neighbor::SetState(a2, 0);
    ot::InstanceLocator::GetInstance(this);
    if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) != 0 && (ot::Mle::Mle::GetRole(this) == 4 || ot::Mle::Mle::GetRole(this) == 3))
    {
      Role = ot::Mle::Mle::GetRole(this);
      ot::Mle::Mle::SetThreadCoexConfig(this, 0, Role, *(this + 132));
    }

    ot::Neighbor::RemoveAllForwardTrackingSeriesInfo(a2);
    if (a2 == ot::Mle::Mle::GetCslPeripheral(this))
    {
      *(this + 128) = 0;
      v7 = ot::Mle::Mle::WorAttachStateToString(this, *(this + 128));
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, %s", v8, v9, v10, v11, v12, v13, v7);
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ot::Mac::Mac::UpdateCsl(v14, 0);
      ot::Mle::Mle::SetCslPeripheral(this, 0);
      ot::Neighbor::GetExtAddress(a2);
      ot::Mac::ExtAddress::ToString(v15, v26);
      v16 = ot::String<(unsigned short)17>::AsCString(v26);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "CSL peripheral %s detached", v17, v18, v19, v20, v21, v22, v16);
      ot::Mle::Mle::SetPeripheralDetachState(this, 0);
      ot::Mle::Mle::SetThreadCoexConfig(this, 0, *(this + 130), *(this + 132));
    }
  }
}

void ot::Mle::MleRouter::HandleAdvertiseTrickleTimer(ot::Mle::MleRouter *this)
{
  if (ot::Mle::MleRouter::IsRouterEligible(this))
  {
    ot::Mle::MleRouter::SendAdvertisement(this);
  }

  else
  {
    ot::TrickleTimer::Stop((this + 1136));
  }
}

void ot::Mle::MleRouter::SendAdvertisement(ot::Mle::MleRouter *this)
{
  v14 = this;
  appended = 0;
  v11 = 0;
  if (!ot::Mle::Mle::IsAttaching(this))
  {
    if (ot::Mle::Mle::IsSleepyRouter(this))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "ThreadConnection: Supress sending any advertisements", v1, v2, v3, v4, v5, v6, v8);
    }

    if (ot::Mle::Mle::IsRxOnWhenIdle(this) && (*(this + 35632) & 2) == 0)
    {
      v11 = ot::Mle::Mle::NewMleMessage(this, 4);
      if (v11)
      {
        appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v11);
        if (!appended)
        {
          appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v11);
          if (!appended)
          {
            ot::Message::SetSubType(v11, 12);
            v9 = *(this + 130);
            if (v9 <= 1)
            {
              __assert_rtn("SendAdvertisement", "mle_router.cpp", 669, "false");
            }

            if (v9 == 2 || v9 != 4 && v9 != 3 || (v7 = ot::Mle::Mle::TxMessage::AppendRouteTlv(v11, 0), (appended = v7) == 0))
            {
              ot::Ip6::Address::SetToLinkLocalAllNodesMulticast(&v12);
              appended = ot::Mle::Mle::TxMessage::SendTo(v11, &v12);
              if (!appended)
              {
                ot::Mle::Mle::Log(0, 0, &v12);
              }
            }
          }
        }
      }

      else
      {
        appended = 3;
      }
    }
  }

  if (appended && v11)
  {
    ot::Message::Free(v11);
  }

  ot::Mle::Mle::LogSendError(0, appended);
}

uint64_t ot::Mle::MleRouter::DetermineAdvertiseIntervalMax(ot::Mle::MleRouter *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
  NeighborCount = ot::RouterTable::GetNeighborCount(v1, 2u);
  return ot::Clamp<unsigned int>(4000 * (NeighborCount + 1), 0x2EE0u, 0x7D00u);
}

uint64_t ot::Mle::MleRouter::UpdateAdvertiseInterval(ot::Mle::MleRouter *this)
{
  result = ot::Mle::Mle::IsRouterOrLeader(this);
  if (result)
  {
    result = ot::TrickleTimer::IsRunning((this + 1136));
    if (result)
    {
      v2 = ot::Mle::MleRouter::DetermineAdvertiseIntervalMax(this);
      return ot::TrickleTimer::SetIntervalMax((this + 1136), v2);
    }
  }

  return result;
}

uint64_t ot::Mle::Mle::TxMessage::AppendTlvRequestTlv<(unsigned char)2>(ot::Mle::Mle::TxMessage *a1, unsigned __int8 *a2)
{
  return ot::Mle::Mle::TxMessage::AppendTlvRequestTlv(a1, a2, 2u);
}

{
  return ot::Mle::Mle::TxMessage::AppendTlvRequestTlv<(unsigned char)2>(a1, a2);
}

uint64_t ot::Mle::Mle::TxMessage::AppendTlvRequestTlv<(unsigned char)1>(ot::Mle::Mle::TxMessage *a1, unsigned __int8 *a2)
{
  return ot::Mle::Mle::TxMessage::AppendTlvRequestTlv(a1, a2, 1u);
}

{
  return ot::Mle::Mle::TxMessage::AppendTlvRequestTlv<(unsigned char)1>(a1, a2);
}

void ot::Neighbor::GenerateChallenge(ot::Neighbor *this)
{
  ot::Mle::TxChallenge::GenerateRandom((this + 12));
}

{
  ot::Neighbor::GenerateChallenge(this);
}

uint64_t ot::Neighbor::GetChallenge(ot::Neighbor *this)
{
  return this + 12;
}

{
  return ot::Neighbor::GetChallenge(this);
}

void ot::Mle::MleRouter::HandleLinkRequest(ot::Mle::MleRouter *this, ot::Neighbor **a2)
{
  v97 = this;
  v96 = a2;
  ChallengeTlv = 0;
  v94 = 0;
  ot::Mle::RxChallenge::RxChallenge(v103);
  v93 = 0;
  v91 = 0;
  ot::Mle::Mle::TlvList::TlvList(v102);
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v96[1]);
  ot::Mle::Mle::Log(1, 26, PeerAddr);
  if (!ot::Mle::Mle::IsRouterOrLeader(this))
  {
    ChallengeTlv = 13;
    goto LABEL_40;
  }

  if (ot::Mle::Mle::IsAttaching(this))
  {
    ChallengeTlv = 13;
    goto LABEL_40;
  }

  if (!ot::Mle::Mle::IsRxOnWhenIdle(this))
  {
    ChallengeTlv = 13;
    goto LABEL_40;
  }

  ChallengeTlv = ot::Mle::Mle::RxMessage::ReadChallengeTlv(*v96, v103, v3, v4);
  if (!ChallengeTlv)
  {
    ChallengeTlv = ot::Mle::Mle::RxMessage::ReadVersionTlv(*v96, &v93);
    if (!ChallengeTlv)
    {
      if (v93 < 2u)
      {
        ChallengeTlv = 6;
        ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Link request Parse error", v5, v6, v7, v8, v9, v10, v79);
        ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "version:%d less than Thread 1.1 version:%d", v11, v12, v13, v14, v15, v16, v93);
        goto LABEL_40;
      }

      LeaderDataTlv = ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(*v96, v92, v5, v6, v7, v8);
      if (LeaderDataTlv)
      {
        if (LeaderDataTlv != 23)
        {
          ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Link request Parse error ReadLeaderData failed", v17, v18, v19, v20, v21, v22, v79);
          ChallengeTlv = 6;
          goto LABEL_40;
        }
      }

      else
      {
        PartitionId = ot::Mle::LeaderData::GetPartitionId(v92);
        if (PartitionId != ot::Mle::LeaderData::GetPartitionId((this + 184)))
        {
          ChallengeTlv = 13;
          goto LABEL_40;
        }
      }

      v87 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(*v96, &v91);
      if (v87)
      {
        if (v87 != 23)
        {
          v65 = ot::ErrorToString(6);
          ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "HandleLinkRequest source address TLV unhandled case. Exit here error:%s", v66, v67, v68, v69, v70, v71, v65);
          ChallengeTlv = 6;
          goto LABEL_40;
        }

        if (!ot::Mle::Mle::RxInfo::IsNeighborStateValid(v96) || (Rloc16 = ot::Neighbor::GetRloc16(v96[3]), !ot::Mle::IsRouterRloc16(Rloc16)))
        {
          ChallengeTlv = 2;
          if (v96[3])
          {
            v82 = ot::ErrorToString(ChallengeTlv);
            ot::Neighbor::GetState(v96[3]);
            IsStateValid = ot::Neighbor::IsStateValid(v96[3]);
            ot::Neighbor::GetRloc16(v96[3]);
            ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "HandleLinkRequest source address TLV not found (router coming out of reset) error:%s nbr.state:%d isNbrStateValid:%d nbr.rloc16:0x%x", v52, v53, v54, v55, v56, v57, v82);
          }

          else
          {
            v58 = ot::ErrorToString(ChallengeTlv);
            ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "HandleLinkRequest source address TLV not found (router coming out of reset) error:%s aNeighbor NULL ", v59, v60, v61, v62, v63, v64, v58);
          }

          goto LABEL_40;
        }

        v94 = v96[3];
      }

      else if (ot::Mle::IsRouterRloc16(v91))
      {
        ot::RouterTable::FindRouterByRloc16((this + 30904), v91);
        v94 = v31;
        if (!v31)
        {
          ChallengeTlv = 6;
          ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Link request Parse error Neighbor src address is NULL:sourceAddress:%x", v25, v26, v27, v28, v29, v30, v91);
          goto LABEL_40;
        }

        if (ot::Neighbor::IsStateLinkRequest(v94))
        {
          ChallengeTlv = 24;
          goto LABEL_40;
        }

        if (ot::Neighbor::IsStateValid(v94))
        {
          v32 = ot::Ip6::MessageInfo::GetPeerAddr(v96[1]);
          Iid = ot::Ip6::Address::GetIid(v32);
          ot::Ip6::InterfaceIdentifier::ConvertToExtAddress(Iid, v101);
          State = ot::Neighbor::GetState(v94);
          ot::Neighbor::GetExtAddress(v94);
          ot::Mac::ExtAddress::ToString(v34, v100);
          ot::String<(unsigned short)17>::AsCString(v100);
          ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Current neighbor state: %u nbr.extAddr:%s", v35, v36, v37, v38, v39, v40, State);
          ot::Neighbor::GetExtAddress(v94);
          if (!ot::Equatable<ot::Mac::ExtAddress>::operator==(v41, v101))
          {
            ChallengeTlv = 6;
            v85 = ot::Neighbor::GetState(v94);
            ot::Neighbor::GetExtAddress(v94);
            ot::Mac::ExtAddress::ToString(v42, v99);
            ot::String<(unsigned short)17>::AsCString(v99);
            ot::Mac::ExtAddress::ToString(v101, v98);
            ot::String<(unsigned short)17>::AsCString(v98);
            ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Link request Parse error, nbr.state:%d nbr.extAddr(%s) != extAddr(%s)", v43, v44, v45, v46, v47, v48, v85);
            goto LABEL_40;
          }

          v83 = v94;
          DataVersion = ot::Mle::LeaderData::GetDataVersion(v92, 0);
          ot::Neighbor::SetLeaderFullDataVersion(v83, DataVersion);
          v84 = v94;
          v50 = ot::Mle::LeaderData::GetDataVersion(v92, 1);
          ot::Neighbor::SetLeaderStableDataVersion(v84, v50);
        }

        else
        {
          ot::Mle::Mle::InitNeighbor(this, v94, v96);
          ot::Neighbor::SetState(v94, 5);
        }
      }

      TlvRequestTlv = ot::Mle::Mle::RxMessage::ReadTlvRequestTlv(*v96, v102, v23, v24);
      if (TlvRequestTlv && TlvRequestTlv != 23)
      {
        v72 = ot::ErrorToString(6);
        ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "HandleLinkRequest Request TLV unhandled case. Exit here error:%s", v73, v74, v75, v76, v77, v78, v72);
        ChallengeTlv = 6;
      }

      else
      {
        *(v96 + 32) = 2;
        ot::Mle::Mle::ProcessKeySequence(this, v96);
        ChallengeTlv = ot::Mle::MleRouter::SendLinkAccept(this, v96, v94, v102, v103);
      }
    }
  }

LABEL_40:
  ot::Mle::Mle::LogProcessError(26, ChallengeTlv);
}

BOOL ot::Neighbor::IsStateLinkRequest(ot::Neighbor *this)
{
  return (*(this + 30) & 0xF) == 5;
}

{
  return ot::Neighbor::IsStateLinkRequest(this);
}

uint64_t ot::Mle::MleRouter::SendLinkAccept(ot::Mle::MleRouter *this, ot::Message **a2, ot::Neighbor *a3, const ot::Mle::Mle::TlvList *a4, const ot::Mle::RxChallenge *a5)
{
  IsStateValid = 1;
  if (a3)
  {
    IsStateValid = ot::Neighbor::IsStateValid(a3);
  }

  if (IsStateValid)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v31 = v5;
  v32 = ot::Mle::Mle::NewMleMessage(this, v5);
  if (!v32)
  {
    appended = 3;
    goto LABEL_44;
  }

  appended = ot::Mle::Mle::TxMessage::AppendVersionTlv(v32);
  if (!appended)
  {
    appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v32);
    if (!appended)
    {
      appended = ot::Mle::Mle::TxMessage::AppendResponseTlv(v32, a5);
      if (!appended)
      {
        appended = ot::Mle::Mle::TxMessage::AppendLinkAndMleFrameCounterTlvs(v32);
        if (!appended)
        {
          v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
          AverageRss = ot::Message::GetAverageRss(*a2);
          v30 = ot::Mac::Mac::ComputeLinkMargin(v24, AverageRss);
          appended = ot::Mle::Mle::TxMessage::AppendLinkMarginTlv(v32, v30);
          if (!appended)
          {
            if (!a3 || (v7 = ot::Neighbor::GetRloc16(a3), !ot::Mle::IsRouterRloc16(v7)) || (appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v32)) == 0)
            {
              ot::Array<unsigned char,(unsigned short)32,unsigned char>::begin();
              v29 = v8;
              v28 = ot::Array<unsigned char,(unsigned short)32,unsigned char>::end(a4);
              while (v29 != v28)
              {
                v23 = *v29;
                switch(v23)
                {
                  case 9:
                    appended = ot::Mle::Mle::TxMessage::AppendRouteTlv(v32, a3);
                    if (appended)
                    {
                      goto LABEL_44;
                    }

                    break;
                  case 10:
                    if (!a3)
                    {
                      appended = 2;
                      goto LABEL_44;
                    }

                    Rloc16 = ot::Neighbor::GetRloc16(a3);
                    appended = ot::Mle::Mle::TxMessage::AppendAddress16Tlv(v32, Rloc16);
                    if (appended)
                    {
                      goto LABEL_44;
                    }

                    break;
                  case 16:
                    break;
                  default:
                    appended = 2;
                    goto LABEL_44;
                }

                ++v29;
              }

              if (a3 && !ot::Neighbor::IsStateValid(a3))
              {
                ot::Neighbor::GenerateChallenge(a3);
                Challenge = ot::Neighbor::GetChallenge(a3);
                appended = ot::Mle::Mle::TxMessage::AppendChallengeTlv(v32, Challenge);
                if (appended)
                {
                  goto LABEL_44;
                }

                v11 = ot::Mle::Mle::TxMessage::AppendTlvRequestTlv<(unsigned char)1>(v32, &ot::Mle::MleRouter::SendLinkAccept(ot::Mle::Mle::RxInfo const&,ot::Neighbor *,ot::Mle::Mle::TlvList const&,ot::Mle::RxChallenge const&)::kRouterTlvs);
                appended = v11;
                if (v11)
                {
                  goto LABEL_44;
                }

                Now = ot::TimerMilli::GetNow(v11);
                ot::Neighbor::SetLastHeard(a3, Now);
                ot::Neighbor::SetState(a3, 5);
              }

              SockAddr = ot::Ip6::MessageInfo::GetSockAddr(a2[1]);
              if (ot::Ip6::Address::IsMulticast(SockAddr))
              {
                PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
                Uint16InRange = ot::Random::NonCrypto::GetUint16InRange(0, 0x3E8u);
                appended = ot::Mle::Mle::TxMessage::SendAfterDelay(v32, PeerAddr, Uint16InRange + 1);
                if (!appended)
                {
                  if (v31 == 1)
                  {
                    v14 = 23;
                  }

                  else
                  {
                    v14 = 24;
                  }

                  v21 = v14;
                  v15 = ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
                  ot::Mle::Mle::Log(2, v21, v15);
                }
              }

              else
              {
                v16 = ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
                appended = ot::Mle::Mle::TxMessage::SendTo(v32, v16);
                if (!appended)
                {
                  if (v31 == 1)
                  {
                    v17 = 23;
                  }

                  else
                  {
                    v17 = 24;
                  }

                  v20 = v17;
                  v18 = ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
                  ot::Mle::Mle::Log(0, v20, v18);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_44:
  if (appended && v32)
  {
    ot::Message::Free(v32);
  }

  return appended;
}

uint64_t ot::Mle::MleRouter::HandleLinkAccept(ot::Mle::MleRouter *this, ot::Mle::Mle::RxInfo *a2, char a3)
{
  v80 = this;
  v79 = a2;
  v78 = a3;
  ResponseTlv = 0;
  *&v76[6] = 0;
  v76[5] = 0;
  ot::Mle::RxChallenge::RxChallenge(v85);
  *v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  *v72 = 0;
  v70 = 0;
  v69 = 0;
  ResponseTlv = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(*v79, v76);
  if (!ResponseTlv)
  {
    if (v78)
    {
      v3 = 24;
    }

    else
    {
      v3 = 23;
    }

    v66 = v3;
    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(*(v79 + 1));
    ot::Mle::Mle::Log(1, v66, PeerAddr, *v76);
    if (!ot::Mle::IsRouterRloc16(*v76))
    {
      return 6;
    }

    v73 = ot::Mle::RouterIdFromRloc16(*v76);
    ot::RouterTable::FindRouterById((this + 30904), v73);
    *&v76[6] = v7;
    v65 = v7 ? ot::Neighbor::GetState(*&v76[6]) : 0;
    v76[5] = v65;
    ResponseTlv = ot::Mle::Mle::RxMessage::ReadResponseTlv(*v79, v85, v5, v6);
    if (!ResponseTlv)
    {
      if (v76[5])
      {
        if (v76[5] == 5)
        {
          Challenge = ot::Neighbor::GetChallenge(*&v76[6]);
          if (!ot::Mle::RxChallenge::operator==(v85, Challenge))
          {
            return 8;
          }
        }

        else if (v76[5] != 7)
        {
          return 8;
        }
      }

      else if (!*(this + 143) && !*(this + 35616) || !ot::Mle::RxChallenge::operator==(v85, this + 35617))
      {
        return 8;
      }

      if (*(v79 + 3))
      {
        Rloc16 = ot::Neighbor::GetRloc16(*(v79 + 3));
        if (Rloc16 != *v76)
        {
          ot::Mle::MleRouter::RemoveNeighbor(this, *(v79 + 3));
        }
      }

      ResponseTlv = ot::Mle::Mle::RxMessage::ReadVersionTlv(*v79, &v76[2]);
      if (!ResponseTlv)
      {
        ResponseTlv = ot::Mle::Mle::RxMessage::ReadFrameCounterTlvs(*v79, &v75, &v74);
        if (!ResponseTlv)
        {
          v10 = ot::Ip6::MessageInfo::GetPeerAddr(*(v79 + 1));
          ot::Ip6::Address::ToString(v10, v83);
          ot::String<(unsigned short)40>::AsCString(v83);
          ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s Rx from %s linkFrameCounter=%d mleFrameCounter=%d", v11, v12, v13, v14, v15, v16, "HandleLinkAccept");
          v64 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)16,unsigned char>>(*v79, &v70);
          if (v64)
          {
            if (v64 != 23)
            {
              return 6;
            }

            if (!ot::Mle::Mle::IsDetached(this))
            {
              return 23;
            }

            v70 = 0;
          }

          v63 = *(this + 130);
          if (!*(this + 130))
          {
            __assert_rtn("HandleLinkAccept", "mle_router.cpp", 1285, "false");
          }

          if (v63 != 1)
          {
            if (v63 == 2)
            {
              if (!*&v76[6])
              {
                return ResponseTlv;
              }
            }

            else if (v63 == 4 || v63 == 3)
            {
              if (!*&v76[6])
              {
                return ResponseTlv;
              }

              ResponseTlv = ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(*v79, &v71, v17, v18, v19, v20);
              if (ResponseTlv)
              {
                return ResponseTlv;
              }

              PartitionId = ot::Mle::LeaderData::GetPartitionId(&v71);
              if (PartitionId != ot::Mle::LeaderData::GetPartitionId((this + 184)))
              {
                return ResponseTlv;
              }

              if ((*(this + 129) & 1) != 0 || (DataVersion = ot::Mle::LeaderData::GetDataVersion(&v71, 0), v34 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this), Version = ot::NetworkData::Leader::GetVersion(v34, 0), ot::SerialNumber::IsGreater<unsigned char>(DataVersion, Version)))
              {
                v40 = ot::Ip6::MessageInfo::GetPeerAddr(*(v79 + 1));
                ot::Mle::Mle::SendDataRequest(this, v40);
                IgnoreError();
              }

              RouteTlv = ot::Mle::Mle::RxMessage::ReadRouteTlv(*v79, v84, v36, v37, v38, v39);
              if (RouteTlv)
              {
                if (RouteTlv != 23)
                {
                  return 6;
                }
              }

              else
              {
                if (!ot::Mle::RouteTlv::IsRouterIdSet(v84, v73))
                {
                  return 6;
                }

                if (ot::RouterTable::IsRouteTlvIdSequenceMoreRecent((this + 30904), v84))
                {
                  ResponseTlv = ot::Mle::MleRouter::ProcessRouteTlv(this, v84, v79);
                  if (ResponseTlv)
                  {
                    return ResponseTlv;
                  }

                  ot::RouterTable::FindRouterById((this + 30904), v73);
                  *&v76[6] = v41;
                  if (!v41)
                  {
                    __assert_rtn("HandleLinkAccept", "mle_router.cpp", 1265, "router != nullptr");
                  }
                }

                v69 = 1;
              }

              if (v73 != *(this + 35689))
              {
                NextHop = ot::Router::GetNextHop(*&v76[6]);
                if (!ot::Mle::IsRouterIdValid(NextHop))
                {
                  ot::Mle::MleRouter::ResetAdvertiseInterval(this);
                }
              }
            }

            goto LABEL_74;
          }

          ResponseTlv = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)10,unsigned short>>(*v79, v72);
          if (!ResponseTlv)
          {
            v21 = ot::Mle::Mle::GetRloc16(this);
            if (v21 != *v72)
            {
              return 2;
            }

            ResponseTlv = ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(*v79, &v71, v22, v23, v24, v25);
            if (!ResponseTlv)
            {
              ot::Mle::Mle::SetLeaderData(this, &v71);
              ot::RouterTable::Clear((this + 30904));
              ResponseTlv = ot::Mle::Mle::RxMessage::ReadRouteTlv(*v79, v84, v26, v27, v28, v29);
              if (!ResponseTlv)
              {
                ResponseTlv = ot::Mle::MleRouter::ProcessRouteTlv(this, v84, v79);
                if (!ResponseTlv)
                {
                  ot::RouterTable::FindRouterById((this + 30904), v73);
                  *&v76[6] = v30;
                  if (v30)
                  {
                    LeaderRloc16 = ot::Mle::Mle::GetLeaderRloc16(this);
                    if (LeaderRloc16 == ot::Mle::Mle::GetRloc16(this))
                    {
                      v31 = ot::Mle::Mle::GetRloc16(this);
                      ot::Mle::MleRouter::SetStateLeader(this, v31, 1);
                    }

                    else
                    {
                      v32 = ot::Mle::Mle::GetRloc16(this);
                      ot::Mle::MleRouter::SetStateRouter(this, v32);
                    }

                    *(this + 143) = 0;
                    *(this + 129) = *(this + 129) & 0xFE | 1;
                    v33 = ot::Ip6::MessageInfo::GetPeerAddr(*(v79 + 1));
                    ot::Mle::Mle::SendDataRequest(this, v33);
                    IgnoreError();
                    v69 = 1;
LABEL_74:
                    ot::Mle::Mle::InitNeighbor(this, *&v76[6], v79);
                    ot::Neighbor::SetRloc16(*&v76[6], *v76);
                    LinkFrameCounters = ot::Neighbor::GetLinkFrameCounters(*&v76[6]);
                    ot::Mac::LinkFrameCounters::SetAll(LinkFrameCounters, v75);
                    ot::Neighbor::SetLinkAckFrameCounter(*&v76[6], v75);
                    ot::Neighbor::SetMleFrameCounter(*&v76[6], v74);
                    ot::Neighbor::SetVersion(*&v76[6], *&v76[2]);
                    v54 = *&v76[6];
                    ot::Mle::DeviceMode::DeviceMode(&v68, 11);
                    ot::Neighbor::SetDeviceMode(v54, v68);
                    v55 = *&v76[6];
                    v44 = ot::LinkQualityForLinkMargin(v70);
                    ot::Router::SetLinkQualityOut(v55, v44);
                    ot::Neighbor::SetState(*&v76[6], 7);
                    ot::Neighbor::SetKeySequence(*&v76[6], *(v79 + 5));
                    v56 = *&v76[6];
                    v45 = ot::Mle::LeaderData::GetDataVersion(&v71, 0);
                    ot::Neighbor::SetLeaderFullDataVersion(v56, v45);
                    v57 = *&v76[6];
                    v46 = ot::Mle::LeaderData::GetDataVersion(&v71, 1);
                    ot::Neighbor::SetLeaderStableDataVersion(v57, v46);
                    v58 = *&v76[6];
                    RouterIdSequence = ot::Mle::RouteTlv::GetRouterIdSequence(v84);
                    ot::Neighbor::SetIdSeqNum(v58, RouterIdSequence);
                    ot::NeighborTable::Signal((this + 344), 3u, *&v76[6]);
                    if (v69)
                    {
                      ot::RouterTable::UpdateRoutes((this + 30904), v84, v73);
                    }

                    *(v79 + 32) = 1;
                    ot::Mle::Mle::ProcessKeySequence(this, v79);
                    if (v78)
                    {
                      ot::Mle::RxChallenge::RxChallenge(v82);
                      ot::Mle::Mle::TlvList::TlvList(v81);
                      ResponseTlv = ot::Mle::Mle::RxMessage::ReadChallengeTlv(*v79, v82, v48, v49);
                      if (!ResponseTlv)
                      {
                        TlvRequestTlv = ot::Mle::Mle::RxMessage::ReadTlvRequestTlv(*v79, v81, v50, v51);
                        if (TlvRequestTlv && TlvRequestTlv != 23)
                        {
                          return 6;
                        }

                        else
                        {
                          return ot::Mle::MleRouter::SendLinkAccept(this, v79, *&v76[6], v81, v82);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return ResponseTlv;
}

uint64_t ot::Mle::MleRouter::ProcessRouteTlv(ot::Mle::MleRouter *this, const ot::Mle::RouteTlv *a2, ot::Neighbor **a3)
{
  v16 = 0;
  Rloc16 = -2;
  if (a3[3])
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
    if (ot::RouterTable::Contains(v3, a3[3]))
    {
      Rloc16 = ot::Neighbor::GetRloc16(a3[3]);
    }
  }

  RouterIdSequence = ot::Mle::RouteTlv::GetRouterIdSequence(a2);
  RouterIdMask = ot::Mle::RouteTlv::GetRouterIdMask(a2);
  ot::RouterTable::UpdateRouterIdSet((this + 30904), RouterIdSequence, RouterIdMask);
  if (ot::Mle::Mle::IsRouter(this) && !ot::RouterTable::IsAllocated((this + 30904), *(this + 35689)))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Error while processing Route TLV - Router ID: %d", v5, v6, v7, v8, v9, v10, *(this + 35689));
    ot::Mle::Mle::BecomeDetached(this);
    IgnoreError();
    v16 = 4;
  }

  if (Rloc16 != 65534)
  {
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
    a3[3] = ot::NeighborTable::FindNeighbor(v11, Rloc16, 1);
  }

  return v16;
}

uint64_t ot::Router::GetNextHop(ot::Router *this)
{
  return *(this + 140);
}

{
  return ot::Router::GetNextHop(this);
}

uint64_t ot::Neighbor::SetIdSeqNum(uint64_t this, char a2)
{
  *(this + 33) = a2;
  return this;
}

{
  return ot::Neighbor::SetIdSeqNum(this, a2);
}

uint64_t ot::Mle::RouteTlv::GetRouterIdSequence(ot::Mle::RouteTlv *this)
{
  return *(this + 2);
}

{
  return ot::Mle::RouteTlv::GetRouterIdSequence(this);
}

BOOL ot::RouterTable::Contains(ot::RouterTable *this, const ot::Neighbor *a2)
{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsInArrayBuffer(this + 8, a2);
}

{
  return ot::RouterTable::Contains(this, a2);
}

uint64_t ot::Mle::RouteTlv::GetRouterIdMask(ot::Mle::RouteTlv *this)
{
  return this + 3;
}

{
  return ot::Mle::RouteTlv::GetRouterIdMask(this);
}

uint64_t ot::Mle::MleRouter::ReadAndProcessRouteTlvOnFed(ot::Mle::MleRouter *this, ot::Mle::Mle::RxMessage **a2, unsigned __int8 a3)
{
  v10 = 0;
  if (ot::Mle::Mle::IsFullThreadDevice(this))
  {
    RouteTlv = ot::Mle::Mle::RxMessage::ReadRouteTlv(*a2, v13, v3, v4, v5, v6);
    if (RouteTlv)
    {
      if (RouteTlv != 23)
      {
        return 6;
      }
    }

    else
    {
      v10 = ot::Mle::MleRouter::ProcessRouteTlv(this, v13, a2);
      if (!v10)
      {
        ot::RouterTable::UpdateRoutesOnFed(this + 30904, v13, a3);
        *(this + 129) &= ~2u;
      }
    }
  }

  return v10;
}

BOOL ot::Mle::MleRouter::IsSingleton(ot::Mle::MleRouter *this)
{
  v3 = 1;
  if (ot::Mle::Mle::IsAttached(this) && (ot::Mle::MleRouter::IsRouterEligible(this) & 1) != 0)
  {
    return ot::RouterTable::GetActiveRouterCount((this + 30904)) <= 1;
  }

  return v3;
}

uint64_t ot::Mle::MleRouter::ComparePartitions(ot::Mle::MleRouter *this, ot::Mle::LeaderData *a2, const ot::Mle::LeaderData *a3, ot::Mle::LeaderData *a4, const ot::Mle::LeaderData *a5)
{
  v20 = this;
  v18 = a3;
  Weighting = ot::Mle::LeaderData::GetWeighting(a2);
  v5 = ot::Mle::LeaderData::GetWeighting(a4);
  v16 = ot::ThreeWayCompare<unsigned char>(Weighting, v5);
  if (!v16)
  {
    v16 = ot::ThreeWayCompare<BOOL>((v20 ^ 1) & 1, (v18 ^ 1) & 1);
    if (!v16)
    {
      PartitionId = ot::Mle::LeaderData::GetPartitionId(a2);
      v6 = ot::Mle::LeaderData::GetPartitionId(a4);
      v16 = ot::ThreeWayCompare<unsigned int>(PartitionId, v6);
    }
  }

  ot::Mle::LeaderData::GetWeighting(a2);
  ot::Mle::LeaderData::GetWeighting(a4);
  ot::Mle::LeaderData::GetPartitionId(a2);
  ot::Mle::LeaderData::GetPartitionId(a4);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "MleRouter::ComparePartitions rval:%d, weighting:[%u %u], !singleton:[%d %d], partId:[%u %u]", v7, v8, v9, v10, v11, v12, v16);
  return v16;
}

uint64_t ot::ThreeWayCompare<unsigned int>(unsigned int a1, unsigned int a2)
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
  return ot::ThreeWayCompare<unsigned int>(a1, a2);
}

uint64_t ot::Mle::MleRouter::HandleAdvertisement(ot::Mle::MleRouter *this, ot::Neighbor **a2, unsigned __int16 a3, const ot::Mle::LeaderData *a4)
{
  v124 = this;
  v123 = a2;
  v122 = a3;
  v121 = a4;
  v113 = this;
  *&v120[1] = 0;
  v114 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  AverageRss = ot::Message::GetAverageRss(*v123);
  *v120 = ot::Mac::Mac::ComputeLinkMargin(v114, AverageRss);
  v119 = 0;
  v118 = 0;
  if (ot::Mle::Mle::IsCslPeripheralAttaching(v113) || ot::Mle::Mle::IsCslPeripheralAttached(v113))
  {
    *&v120[1] = 2;
  }

  else
  {
    RouteTlv = ot::Mle::Mle::RxMessage::ReadRouteTlv(*v123, v125, v5, v6, v7, v8);
    if (RouteTlv)
    {
      if (RouteTlv != 23)
      {
        *&v120[1] = 6;
        goto LABEL_61;
      }

      ot::Tlv::SetLength(v125, 0);
    }

    PartitionId = ot::Mle::LeaderData::GetPartitionId(v121);
    if (PartitionId == ot::Mle::LeaderData::GetPartitionId((v113 + 184)))
    {
      LeaderRouterId = ot::Mle::LeaderData::GetLeaderRouterId(v121);
      if (LeaderRouterId == ot::Mle::Mle::GetLeaderId(v113))
      {
        if (ot::Mle::IsRouterRloc16(v122) && ot::Mle::RouteTlv::IsValid(v125))
        {
          v118 = ot::Mle::RouterIdFromRloc16(v122);
          v90 = ot::Mle::Rloc16FromRouterId(v118);
          v87 = 0;
          DataVersion = ot::Mle::LeaderData::GetDataVersion(v121, 0);
          v88 = 1;
          v92 = ot::Mle::LeaderData::GetDataVersion(v121, 1);
          v93 = ot::Mle::LeaderData::GetDataVersion(v113 + 184, 0);
          v94 = ot::Mle::LeaderData::GetDataVersion(v113 + 184, 1);
          v89 = v125;
          RouterIdSequence = ot::Mle::RouteTlv::GetRouterIdSequence(v125);
          v67 = DataVersion;
          v68 = v92;
          v69 = v93;
          v70 = v94;
          v71 = RouterIdSequence;
          IsRouteTlvIdSequenceMoreRecent = ot::RouterTable::IsRouteTlvIdSequenceMoreRecent((v113 + 30904), v125);
          ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "MLE Advertisement received from router (0x%04x), aleaderDataVersion:[full:%d stable:%d] myLeaderDataVer:[full:%d, stable:%d] ,routeTlvIdSeqNum(%d), isRouteTlvIdSeqNumMoreRecent(%d)", v27, v28, v29, v30, v31, v32, v90);
          if (!ot::Mle::Mle::RxInfo::IsNeighborStateValid(v123) || !ot::RouterTable::IsRouteTlvIdSequenceMoreRecent((v113 + 30904), v125) || (*&v120[1] = ot::Mle::MleRouter::ProcessRouteTlv(v113, v125, v123)) == 0)
          {
            if (ot::Mle::Mle::IsChild(v113))
            {
              if (v123[3] == (v113 + 192))
              {
                v119 = (v113 + 192);
                if (ot::Neighbor::GetRloc16((v113 + 192)) != v122)
                {
                  Rloc16 = ot::Neighbor::GetRloc16((v113 + 192));
                  v67 = v122;
                  ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "RLOC16 of the parent mismatches parentRloc16:0x%x sourceAddr:0x%x", v34, v35, v36, v37, v38, v39, Rloc16);
                  ot::Mle::Mle::BecomeDetached(v113);
                  IgnoreError();
                  *&v120[1] = 16;
                  goto LABEL_61;
                }

                if (!ot::Mle::MleRouter::RouterRoleTransition::IsPending((v113 + 35702)) && ot::RouterTable::GetActiveRouterCount((v113 + 30904)) < *(v113 + 35629))
                {
                  ot::Mle::MleRouter::RouterRoleTransition::StartTimeout((v113 + 35702));
                }

                updated = ot::RouterTable::UpdateRoutesOnFed(v113 + 30904, v125, v118);
              }

              else
              {
                ot::RouterTable::FindRouterById((v113 + 30904), v118);
                v119 = v41;
                if (!v41)
                {
                  goto LABEL_61;
                }

                updated = ot::Neighbor::IsStateValid(v119);
                if ((updated & 1) == 0)
                {
                  updated = ot::Neighbor::IsStateLinkRequest(v119);
                  if ((updated & 1) == 0)
                  {
                    updated = ot::RouterTable::GetNeighborCount(v113 + 30904, 1u);
                    if (updated < *(v113 + 35704))
                    {
                      ot::Mle::Mle::InitNeighbor(v113, v119, v123);
                      ot::Neighbor::SetState(v119, 5);
                      ot::Mle::MleRouter::SendLinkRequest(v113, v119);
                      IgnoreError();
                      *&v120[1] = 4;
                      goto LABEL_61;
                    }
                  }
                }
              }

              v86 = v119;
              Now = ot::TimerMilli::GetNow(updated);
              ot::Neighbor::SetLastHeard(v119, Now);
              goto LABEL_61;
            }

            if (ot::Mle::Mle::IsRouter(v113) && (ot::Mle::MleRouter::ShouldDowngrade(v113, v118, v125) & 1) != 0)
            {
              ot::Mle::MleRouter::RouterRoleTransition::StartTimeout((v113 + 35702));
            }

            ot::RouterTable::FindRouterById((v113 + 30904), v118);
            v119 = v42;
            if (v42)
            {
              v83 = v119;
              v43 = ot::Mle::LeaderData::GetDataVersion(v121, 0);
              ot::Neighbor::SetLeaderFullDataVersion(v119, v43);
              v84 = v119;
              v44 = ot::Mle::LeaderData::GetDataVersion(v121, 1);
              ot::Neighbor::SetLeaderStableDataVersion(v119, v44);
              v85 = v119;
              v45 = ot::Mle::RouteTlv::GetRouterIdSequence(v125);
              ot::Neighbor::SetIdSeqNum(v119, v45);
              if (!ot::Neighbor::IsStateValid(v119) && ot::Mle::Mle::RxInfo::IsNeighborStateValid(v123))
              {
                v46 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(v113);
                if (ot::ChildTable::Contains(v46, v123[3]))
                {
                  v47 = ot::Mle::Rloc16FromRouterId(v118);
                  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Advertisement received from former child which is now a router (0x%04x),copy entries from child table to router table and update eid cache", v48, v49, v50, v51, v52, v53, v47);
                  memcpy(v119, v123[3], 0x8CuLL);
                  v79 = v119;
                  v54 = ot::Mle::Rloc16FromRouterId(v118);
                  ot::Neighbor::SetRloc16(v119, v54);
                  v80 = v119;
                  ot::Mle::DeviceMode::DeviceMode(&v116, 11);
                  ot::Neighbor::SetDeviceMode(v80, v116);
                  ot::NeighborTable::Signal((v113 + 344), 3u, v119);
                  v82 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(v113);
                  *v81 = ot::Neighbor::GetRloc16(v123[3]);
                  v55 = ot::Neighbor::GetRloc16(v119);
                  ot::AddressResolver::ReplaceEntriesForRloc16(v82, v81[0], v55);
                }
              }

              IsStateValid = ot::Neighbor::IsStateValid(v119);
              if (IsStateValid || (IsStateValid = ot::Neighbor::IsStateLinkRequest(v119)) || *(v113 + 35616) || v120[0] < 0xAu)
              {
                v78 = v119;
                v115 = ot::TimerMilli::GetNow(IsStateValid);
                ot::Neighbor::SetLastHeard(v78, v115);
                ot::RouterTable::UpdateRoutes((v113 + 30904), v125, v118);
              }

              else
              {
                ot::Mle::Mle::InitNeighbor(v113, v119, v123);
                ot::Neighbor::SetState(v119, 5);
                ot::Mle::MleRouter::SendLinkRequest(v113, v119);
                IgnoreError();
                v57 = ot::Mle::Rloc16FromRouterId(v118);
                ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Advertisement received from router (0x%04x) to which no link exists", v58, v59, v60, v61, v62, v63, v57);
                *&v120[1] = 4;
              }
            }
          }
        }
      }

      else if (ot::Mle::Mle::RxInfo::IsNeighborStateValid(v123) && !ot::Mle::Mle::IsChild(v113))
      {
        LeaderId = ot::Mle::Mle::GetLeaderId(v113);
        v67 = ot::Mle::LeaderData::GetLeaderRouterId(v121);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Leader ID mismatch leaderId=%d, leaderData.leaderRouterId=%d", v21, v22, v23, v24, v25, v26, LeaderId);
        ot::Mle::Mle::BecomeDetached(v113);
        IgnoreError();
        *&v120[1] = 2;
      }
    }

    else
    {
      v9 = ot::Mle::LeaderData::GetPartitionId(v121);
      v100 = ot::ToUlong(v9);
      v10 = ot::Mle::LeaderData::GetPartitionId((v113 + 184));
      v101 = ot::ToUlong(v10);
      v102 = v120[0];
      *&v99[1] = v125;
      IsValid = ot::Mle::RouteTlv::IsValid(v125);
      v104 = *(v113 + 35701);
      v105 = ot::Mle::LeaderData::GetPartitionId(v121);
      v106 = *(v113 + 8924);
      v107 = ot::Mle::RouteTlv::GetRouterIdSequence(v125);
      v108 = *(v113 + 35700);
      IsSingleton = ot::Mle::RouteTlv::IsSingleton(v125);
      v110 = &v66;
      v67 = v101;
      v68 = v120[0];
      v69 = 10;
      v70 = IsValid;
      v71 = v104;
      IsRouteTlvIdSequenceMoreRecent = v105;
      v73 = v106;
      v74 = v107;
      v75 = v108;
      v76 = IsSingleton;
      v77 = ot::Mle::MleRouter::IsSingleton(v113);
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Different partition (peer:%lu, local:%lu), linkMargin:%d, partitionMergeLinkMargin:%d, routeTlvIsValid:%d, mPrevPartIdTimeout:%d, leaderDataPartId:%d, prevPartId:%d, routerIdSeq:%d, prevPartRouterIdSeq:%d, routeTlvIsSingleton:%d isSingleTon:%d", v11, v12, v13, v14, v15, v16, v100);
      if (v120[0] >= 0xAu)
      {
        if (ot::Mle::RouteTlv::IsValid(v125) && *(v113 + 35701) && (v17 = ot::Mle::LeaderData::GetPartitionId(v121), v17 == *(v113 + 8924)) && (v18 = ot::Mle::RouteTlv::GetRouterIdSequence(v125), !ot::SerialNumber::IsGreater<unsigned char>(v18, *(v113 + 35700))))
        {
          *&v120[1] = 2;
        }

        else if (!ot::Mle::Mle::IsChild(v113) || v123[3] != (v113 + 192))
        {
          v99[0] = ot::Mle::RouteTlv::IsSingleton(v125);
          *v98 = v121;
          v19 = ot::Mle::MleRouter::IsSingleton(v113);
          if (ot::Mle::MleRouter::ComparePartitions(v99[0], *v98, v19, (v113 + 184), v20) > 0)
          {
            ot::Mle::Mle::Attach(v113, 2);
          }

          *&v120[1] = 2;
        }
      }

      else
      {
        *&v120[1] = 34;
      }
    }
  }

LABEL_61:
  if (v123[3])
  {
    v64 = ot::Neighbor::GetRloc16(v123[3]);
    if (v64 != v122)
    {
      ot::Mle::MleRouter::RemoveNeighbor(v113, v123[3]);
    }
  }

  return *&v120[1];
}

BOOL ot::Mle::RouteTlv::IsSingleton(ot::Mle::RouteTlv *this)
{
  v3 = 0;
  if (ot::Mle::RouteTlv::IsValid(this))
  {
    return ot::Mle::RouterIdSet::GetNumberOfAllocatedIds((this + 3)) <= 1;
  }

  return v3;
}

{
  return ot::Mle::RouteTlv::IsSingleton(this);
}

uint64_t ot::Mle::MleRouter::ShouldDowngrade(ot::Mle::MleRouter *this, unsigned __int8 a2, const ot::Mle::RouteTlv *a3)
{
  v13 = 0;
  ActiveRouterCount = ot::RouterTable::GetActiveRouterCount((this + 30904));
  if (ot::Mle::Mle::IsRouter(this) && ot::RouterTable::IsAllocated((this + 30904), a2) && !ot::Mle::MleRouter::RouterRoleTransition::IsPending((this + 35702)) && ActiveRouterCount > *(this + 35630))
  {
    v10 = 0;
    ot::RouterTable::begin((this + 30904));
    v9 = v3;
    v8 = ot::RouterTable::end((this + 30904));
    while (v9 != v8)
    {
      if (ot::Neighbor::IsStateValid(v9) && ot::Router::GetTwoWayLinkQuality(v9) >= 2 && ++v10 >= 7u)
      {
        break;
      }

      v9 = (v9 + 144);
    }

    if (v10 >= 7u)
    {
      v11 = ActiveRouterCount - *(this + 35630);
      NumChildren = ot::ChildTable::GetNumChildren(this + 600, 0);
      if (NumChildren < 3 * v11 && (ot::Mle::MleRouter::NeighborHasComparableConnectivity(this, a3, a2) & 1) != 0)
      {
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Notifier>(this);
        if (!ot::NetworkData::Notifier::IsEligibleForRouterRoleUpgradeAsBorderRouter(v5))
        {
          v13 = 1;
        }
      }
    }
  }

  return v13 & 1;
}

void ot::Mle::MleRouter::HandleParentRequest(ot::Mle::MleRouter *this, ot::Mle::Mle::RxInfo *a2)
{
  v161 = this;
  *&v160[7] = a2;
  v152 = this;
  *&v160[3] = 0;
  *&v160[1] = 0;
  v160[0] = 0;
  ot::Mle::RxChallenge::RxChallenge(v168);
  NewChild = 0;
  v157 = 0;
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(*(*&v160[7] + 8));
  ot::Mle::Mle::Log(1, 27, PeerAddr);
  if ((ot::Mle::MleRouter::IsRouterEligible(v152) & 1) == 0)
  {
    *&v160[3] = 13;
    v3 = ot::ErrorToString(13);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Parent Request dropped as not router eligible error:%s", v4, v5, v6, v7, v8, v9, v3);
    goto LABEL_69;
  }

  IsRxOnWhenIdle = ot::Mle::Mle::IsRxOnWhenIdle(v152);
  SockAddr = ot::Ip6::MessageInfo::GetSockAddr(*(*&v160[7] + 8));
  if (IsRxOnWhenIdle != ot::Ip6::Address::IsMulticast(SockAddr))
  {
    *&v160[3] = 13;
    goto LABEL_69;
  }

  if (ot::Mle::Mle::IsDetached(v152) || ot::Mle::Mle::IsAttaching(v152))
  {
    *&v160[3] = 2;
    IsDetached = ot::Mle::Mle::IsDetached(v152);
    IsAttaching = ot::Mle::Mle::IsAttaching(v152);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Parent Request dropped as isDetached(%d) isAttaching(%d)", v11, v12, v13, v14, v15, v16, IsDetached);
    goto LABEL_69;
  }

  if (ot::RouterTable::GetLeaderAge((v152 + 30904)) >= *(v152 + 35628))
  {
    *&v160[3] = 2;
    LeaderAge = ot::RouterTable::GetLeaderAge((v152 + 30904));
    IsAttaching = *(v152 + 35628);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Parent Request dropped as routerTable.leaderAge(%d) nwIdTimeout(%d)", v18, v19, v20, v21, v22, v23, LeaderAge);
    goto LABEL_69;
  }

  PathCostToLeader = ot::RouterTable::GetPathCostToLeader((v152 + 30904));
  if (PathCostToLeader >= 16)
  {
    v25 = ot::RouterTable::GetPathCostToLeader((v152 + 30904));
    ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Parent Request dropped here LinkCostToLeader:%d", v26, v27, v28, v29, v30, v31, v25);
    goto LABEL_69;
  }

  v32 = ot::Ip6::MessageInfo::GetPeerAddr(*(*&v160[7] + 8));
  Iid = ot::Ip6::Address::GetIid(v32);
  ot::Ip6::InterfaceIdentifier::ConvertToExtAddress(Iid, __s1);
  VersionTlv = ot::Mle::Mle::RxMessage::ReadVersionTlv(**&v160[7], &v160[1]);
  *&v160[3] = VersionTlv;
  if (!VersionTlv)
  {
    *&v160[3] = ot::Tlv::Find<ot::Mle::ScanMaskTlv>(**&v160[7], v160);
    if (!*&v160[3])
    {
      v149 = *(v152 + 130);
      if (v149 > 1)
      {
        if (v149 == 2)
        {
          if (!ot::Mle::ScanMaskTlv::IsEndDeviceFlagSet(v160[0]))
          {
            goto LABEL_69;
          }

          if (ot::RouterTable::GetActiveRouterCount((v152 + 30904)) >= 32)
          {
            *&v160[3] = 2;
            goto LABEL_69;
          }
        }

        else if ((v149 == 4 || v149 == 3) && !ot::Mle::ScanMaskTlv::IsRouterFlagSet(v160[0]))
        {
          goto LABEL_69;
        }

        *&v160[3] = ot::Mle::Mle::RxMessage::ReadChallengeTlv(**&v160[7], v168, v35, v36);
        if (*&v160[3])
        {
          v38 = ot::ErrorToString(*&v160[3]);
          ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Parent Request dropped error:%s as ReadChallenge failed", v39, v40, v41, v42, v43, v44, v38);
        }

        else
        {
          ot::ChildTable::FindChild(v152 + 1200, __s1, 5);
          NewChild = v45;
          if (v45)
          {
            v147 = &Now;
            Now = ot::TimerMilli::GetNow(v45);
            LastHeard = ot::Neighbor::GetLastHeard(NewChild);
            if (ot::Time::operator-(&Now, &LastHeard) < 0x2BC)
            {
              *&v160[3] = 29;
              goto LABEL_69;
            }
          }

          else
          {
            NewChild = ot::ChildTable::GetNewChild((v152 + 1200));
            if (!NewChild)
            {
              *&v160[3] = 3;
              goto LABEL_69;
            }

            ot::Mle::Mle::InitNeighbor(v152, NewChild, *&v160[7]);
            ot::Neighbor::SetState(NewChild, 2);
            if (!ot::Mle::Mle::RxMessage::ReadModeTlv(**&v160[7], &v158))
            {
              v156[2] = v158;
              ot::Child::SetDeviceMode(NewChild, v158);
              ot::Neighbor::SetVersion(NewChild, *&v160[1]);
            }

            if (*(v152 + 128) == 2)
            {
              CslClockAccuracyTlv = ot::Mle::Mle::RxMessage::ReadCslClockAccuracyTlv(**&v160[7], v156, v46, v47, v48, v49);
              if (CslClockAccuracyTlv)
              {
                if (CslClockAccuracyTlv != 23)
                {
                  *&v160[3] = 6;
                  goto LABEL_69;
                }

                ot::Mac::CslAccuracy::Init(v156);
              }

              ot::InstanceLocator::GetInstance(v152);
              otPlatRadioStopWakeup();
              ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Stopping Wakeup after receiving parent request ", v50, v51, v52, v53, v54, v55, v101);
              v56 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v152);
              ot::Mac::Mac::SetCslParentAccuracy(v56, v156);
            }
          }

          IsStateValidOrRestoring = ot::Neighbor::IsStateValidOrRestoring(NewChild);
          if (!IsStateValidOrRestoring)
          {
            v145 = NewChild;
            v153 = ot::TimerMilli::GetNow(IsStateValidOrRestoring);
            ot::Neighbor::SetLastHeard(v145, v153);
            v146 = NewChild;
            v58 = ot::Time::MsecToSec(0x1388);
            ot::Child::SetTimeout(v146, v58);
          }

          if (!ot::Mle::Mle::RxMessage::ReadModeTlv(**&v160[7], &v158))
          {
            if (ot::Mle::DeviceMode::IsRxOnWhenIdle(&v158) && (ot::Mle::Mle::wasChild(v152) & 1) == 0)
            {
              ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Overriding Device Stat,set wasChild:[True]", v59, v60, v61, v62, v63, v64, v101);
              ot::Mle::Mle::setWasChild(v152, 1);
            }

            if (!ot::Mle::Mle::IsSleepyRouter(v152) && *(v152 + 35681))
            {
              if (!memcmp(__s1, v152 + 35681, 8uLL))
              {
                if (ot::Mle::DeviceMode::IsRxOnWhenIdle(&v158))
                {
                  v139 = v165;
                  ot::Mle::DeviceMode::ToString((v152 + 131), v165);
                  v141 = ot::String<(unsigned short)45>::AsCString(v165);
                  v140 = v164;
                  ot::Mle::DeviceMode::ToString(&v158, v164);
                  IsAttaching = ot::String<(unsigned short)45>::AsCString(v164);
                  v103 = "Joining device mode is RxOnWhenIdle";
                  ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Parent Request accepted from Non-Sleepy Accessories, DUT mode: %s, Joiner Mode: %s: %s", v72, v73, v74, v75, v76, v77, v141);
                  v78 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(v152);
                  ot::Notifier::Signal(v78, 0x1000000000);
                }

                else
                {
                  v142 = v167;
                  ot::Mle::DeviceMode::ToString((v152 + 131), v167);
                  v144 = ot::String<(unsigned short)45>::AsCString(v167);
                  v143 = v166;
                  ot::Mle::DeviceMode::ToString(&v158, v166);
                  IsAttaching = ot::String<(unsigned short)45>::AsCString(v166);
                  v103 = "Joining device mode is not RxOnWhenIdle";
                  ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Parent Request accepted from Sleepy Accessories, DUT mode: %s, Joiner Mode: %s: %s", v65, v66, v67, v68, v69, v70, v144);
                  v71 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(v152);
                  ot::Notifier::Signal(v71, 0x800000000);
                }
              }

              else
              {
                v79 = __s1[0];
                v80 = __s1[1];
                v123 = __s1[2];
                v124 = __s1[3];
                v125 = __s1[4];
                v126 = __s1[5];
                v127 = __s1[6];
                v128 = __s1[7];
                v120 = 35681;
                v129 = *(v152 + 35681);
                v130 = *(v152 + 35682);
                v131 = *(v152 + 35683);
                v132 = *(v152 + 35684);
                v133 = *(v152 + 35685);
                v134 = *(v152 + 35686);
                v135 = *(v152 + 35687);
                v136 = *(v152 + 35688);
                v121 = v163;
                ot::Mle::DeviceMode::ToString(&v158, v163);
                v137 = ot::String<(unsigned short)45>::AsCString(v163);
                v122 = v162;
                ot::Mle::DeviceMode::ToString((v152 + 131), v162);
                v138 = &v101;
                IsAttaching = v80;
                v103 = v123;
                v104 = v124;
                v105 = v125;
                v106 = v126;
                v107 = v127;
                v108 = v128;
                v109 = v129;
                v110 = v130;
                v111 = v131;
                v112 = v132;
                v113 = v133;
                v114 = v134;
                v115 = v135;
                v116 = v136;
                v117 = v137;
                v118 = ot::String<(unsigned short)45>::AsCString(v162);
                ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Parent Request from Device extaddr =  %02X%02X%02X%02X%02X%02X%02X%02X address mismatch, Expected Device extaddr = %02X%02X%02X%02X%02X%02X%02X%02X, Joiner Mode: %s,  DUT mode: %s", v128, v127, v126, v125, v124, v123, v79);
              }

              ot::Mle::Mle::SetThreadCoexConfig(v152, 0, *(v152 + 130), *(v152 + 132));
            }
          }

          if (*(v152 + 128) == 2)
          {
            ot::WakeupTxScheduler::Stop((v152 + 72));
            v81 = v152;
            *(v152 + 128) = 3;
            v82 = ot::Mle::Mle::WorAttachStateToString(v81, *(v81 + 128));
            IsAttaching = "HandleParentRequest";
            ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, %s", v83, v84, v85, v86, v87, v88, v82);
            ot::Mle::Mle::SetCslPeripheral(v152, NewChild);
            v119 = NewChild;
            v89 = ot::Time::MsecToSec(0x3E8);
            ot::Child::SetTimeout(v119, v89);
            if (!ot::Mle::Mle::IsRxOnWhenIdle(v152))
            {
              v90 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(v152);
              ot::MeshForwarder::SetRxOnWhenIdle(v90, 0, v91, v92, v93, v94, v95, v96);
            }

            v97 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v152);
            ot::Mac::Mac::UpdateCsl(v97, 0);
          }

          v98 = v152;
          *(*&v160[7] + 32) = 2;
          ot::Mle::Mle::ProcessKeySequence(v98, *&v160[7]);
          v99 = ot::Ip6::MessageInfo::GetSockAddr(*(*&v160[7] + 8));
          if (ot::Ip6::Address::IsMulticast(v99))
          {
            if (ot::Mle::ScanMaskTlv::IsEndDeviceFlagSet(v160[0]))
            {
              v100 = 1000;
            }

            else
            {
              v100 = 500;
            }

            v157 = v100;
          }

          else
          {
            v157 = 0;
          }

          ot::Mle::MleRouter::SendParentResponse(v152, NewChild, v168, v157);
        }
      }
    }
  }

LABEL_69:
  ot::Mle::Mle::LogProcessError(27, *&v160[3]);
}

uint64_t ot::Tlv::Find<ot::Mle::ScanMaskTlv>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned char>(a1, 0xEu, a2);
}

{
  return ot::Tlv::Find<ot::Mle::ScanMaskTlv>(a1, a2);
}

BOOL ot::Mle::ScanMaskTlv::IsEndDeviceFlagSet(ot::Mle::ScanMaskTlv *this)
{
  return (this & 0x40) != 0;
}

{
  return ot::Mle::ScanMaskTlv::IsEndDeviceFlagSet(this);
}

BOOL ot::Mle::ScanMaskTlv::IsRouterFlagSet(ot::Mle::ScanMaskTlv *this)
{
  return this < 0;
}

{
  return ot::Mle::ScanMaskTlv::IsRouterFlagSet(this);
}

uint64_t ot::Mle::Mle::SetCslPeripheral(uint64_t this, ot::Neighbor *a2)
{
  *(this + 824) = a2;
  return this;
}

{
  return ot::Mle::Mle::SetCslPeripheral(this, a2);
}

void ot::Mle::MleRouter::SendParentResponse(ot::Mle::MleRouter *this, ot::Child *a2, const ot::Mle::RxChallenge *a3, unsigned __int16 a4)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  appended = 0;
  v9 = ot::Mle::Mle::NewMleMessage(this, 10);
  if (v9)
  {
    ot::Message::SetDirectTransmission(v9);
    appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v9);
    if (!appended)
    {
      appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v9);
      if (!appended)
      {
        appended = ot::Mle::Mle::TxMessage::AppendLinkAndMleFrameCounterTlvs(v9);
        if (!appended)
        {
          appended = ot::Mle::Mle::TxMessage::AppendResponseTlv(v9, v13);
          if (!appended)
          {
            ot::Message::SetSubType(v9, 13);
            if (!ot::Neighbor::IsThreadVersionCslCapable(v14) || (appended = ot::Mle::Mle::TxMessage::AppendCslClockAccuracyTlv(v9)) == 0)
            {
              ot::Child::GenerateChallenge(v14);
              Challenge = ot::Child::GetChallenge(v14);
              appended = ot::Mle::Mle::TxMessage::AppendChallengeTlv(v9, Challenge);
              if (!appended)
              {
                if (ot::Mle::Mle::IsCslPeripheralPresent(this) || (LinkInfo = ot::Neighbor::GetLinkInfo(v14), LinkMargin = ot::LinkQualityInfo::GetLinkMargin(LinkInfo), (appended = ot::Mle::Mle::TxMessage::AppendLinkMarginTlv(v9, LinkMargin)) == 0) && (appended = ot::Mle::Mle::TxMessage::AppendConnectivityTlv(v9)) == 0)
                {
                  appended = ot::Mle::Mle::TxMessage::AppendVersionTlv(v9);
                  if (!appended)
                  {
                    ot::Neighbor::GetExtAddress(v14);
                    ot::Ip6::Address::SetToLinkLocalAddress(v10, v7);
                    appended = ot::Mle::Mle::TxMessage::SendAfterDelay(v9, v10, v12);
                    if (!appended)
                    {
                      ot::Mle::Mle::Log(2, 15, v10);
                    }
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
    appended = 3;
  }

  if (appended && v9)
  {
    ot::Message::Free(v9);
  }

  ot::Mle::Mle::LogSendError(15, appended);
}

uint64_t ot::Mle::MleRouter::SendChildUpdateRequest(ot::Mle::MleRouter *this, ot::Child *a2)
{
  v22 = this;
  v21 = a2;
  appended = 0;
  v18 = 0;
  if (!ot::Neighbor::IsRxOnWhenIdle(a2))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    ChildIndex = ot::ChildTable::GetChildIndex(v2, v21);
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
    SendQueue = ot::MeshForwarder::GetSendQueue(v3);
    v15 = ot::PriorityQueue::begin(SendQueue);
    v14 = ot::PriorityQueue::end(SendQueue);
    while (ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator!=(&v15, &v14))
    {
      v13 = ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator*(&v15);
      if (ot::Message::GetChildMask(v13, ChildIndex) && ot::Message::GetSubType(v13) == 8)
      {
        if (ot::Neighbor::IsStateRestoring(v21))
        {
          goto LABEL_24;
        }

        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
        ot::MeshForwarder::RemoveMessagesForChild(v4, v21, ot::Mle::MleRouter::IsMessageChildUpdateRequest);
        break;
      }

      ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator++(&v15);
    }
  }

  v18 = ot::Mle::Mle::NewMleMessage(this, 13);
  if (v18)
  {
    appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v18);
    if (!appended)
    {
      appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v18);
      if (!appended)
      {
        v11 = v18;
        NetworkDataType = ot::Neighbor::GetNetworkDataType(v21);
        appended = ot::Mle::Mle::TxMessage::AppendNetworkDataTlv(v11, NetworkDataType);
        if (!appended)
        {
          appended = ot::Mle::Mle::TxMessage::AppendActiveAndPendingTimestampTlvs(v18);
          if (!appended)
          {
            if (ot::Neighbor::IsStateValid(v21))
            {
              goto LABEL_20;
            }

            appended = ot::Mle::Mle::TxMessage::AppendTlvRequestTlv<(unsigned char)2>(v18, ot::Mle::MleRouter::SendChildUpdateRequest(ot::Child &)::kTlvs);
            if (!appended)
            {
              if (!ot::Neighbor::IsStateRestored(v21))
              {
                ot::Child::GenerateChallenge(v21);
              }

              v10 = v18;
              Challenge = ot::Child::GetChallenge(v21);
              appended = ot::Mle::Mle::TxMessage::AppendChallengeTlv(v10, Challenge);
              if (!appended)
              {
LABEL_20:
                ot::Neighbor::GetExtAddress(v21);
                ot::Ip6::Address::SetToLinkLocalAddress(&v19, v7);
                appended = ot::Mle::Mle::TxMessage::SendTo(v18, &v19);
                if (!appended)
                {
                  if (ot::Neighbor::IsRxOnWhenIdle(v21))
                  {
                    ot::Neighbor::SetState(v21, 6);
                  }

                  Rloc16 = ot::Neighbor::GetRloc16(v21);
                  ot::Mle::Mle::Log(0, 20, &v19, Rloc16);
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

LABEL_24:
  if (appended && v18)
  {
    ot::Message::Free(v18);
  }

  return appended;
}

uint64_t ot::Mle::MleRouter::HasNeighborWithGoodLinkQuality(ot::Mle::MleRouter *this)
{
  v13 = 1;
  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  LinkInfo = ot::Neighbor::GetLinkInfo((this + 192));
  LastRss = ot::LinkQualityInfo::GetLastRss(LinkInfo);
  if (ot::Mac::Mac::ComputeLinkMargin(v9, LastRss) < 0xAu)
  {
    v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
    ot::RouterTable::begin(v12);
    v11 = v3;
    v10 = ot::RouterTable::end(v12);
    while (v11 != v10)
    {
      if (ot::Neighbor::IsStateValid(v11))
      {
        v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        v4 = ot::Neighbor::GetLinkInfo(v11);
        v5 = ot::LinkQualityInfo::GetLastRss(v4);
        if (ot::Mac::Mac::ComputeLinkMargin(v7, v5) >= 0xAu)
        {
          return v13 & 1;
        }
      }

      v11 = (v11 + 144);
    }

    v13 = 0;
  }

  return v13 & 1;
}

void ot::Mle::MleRouter::HandleTimeTick(ot::Mle::MleRouter *this)
{
  v132 = this;
  v131 = 0;
  if (!ot::Mle::Mle::IsFullThreadDevice(this))
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
    ot::TimeTicker::UnregisterReceiver(v1, 1);
    return;
  }

  if (*(this + 35616))
  {
    --*(this + 35616);
  }

  if (*(this + 35701))
  {
    --*(this + 35701);
  }

  if (*(this + 35705))
  {
    if (!--*(this + 35705))
    {
      ot::Mle::MleRouter::ClearAlternateRloc16(this);
    }
  }

  v131 = ot::Mle::MleRouter::RouterRoleTransition::HandleTimeTick((this + 35702));
  v104 = *(this + 130);
  if (!*(this + 130))
  {
    __assert_rtn("HandleTimeTick", "mle_router.cpp", 2128, "false");
  }

  if (v104 == 1)
  {
    if (!*(this + 35616) && !*(this + 143))
    {
      ot::Mle::Mle::BecomeDetached(this);
      IgnoreError();
      return;
    }

LABEL_41:
    v28 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    v129 = ot::ChildTable::Iterate(v28, 5);
    v130 = &v129;
    v140 = ot::ChildTable::IteratorBuilder::begin(&v129);
    v141 = v29;
    v127 = v140;
    v128 = v29;
    v138 = ot::ChildTable::IteratorBuilder::end(v130);
    v139 = v30;
    v125 = v138;
    v126 = v30;
    while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v127, &v125))
    {
      v124 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v127);
      v123 = 0;
      v122 = 1;
      v121 = 1;
      State = ot::Neighbor::GetState(v124);
      switch(State)
      {
        case 0:
          goto LABEL_71;
        case 2:
        case 1:
          goto LABEL_53;
        case 3:
          goto LABEL_54;
      }

      if (State != 4)
      {
        if (State == 5)
        {
LABEL_54:
          __assert_rtn("HandleTimeTick", "mle_router.cpp", 2163, "false");
        }

        if (State == 7 || State == 6)
        {
LABEL_53:
          Timeout = ot::Child::GetTimeout(v124);
          v123 = ot::Time::SecToMsec(Timeout);
        }

        IsCslPeripheralPresent = ot::Mle::Mle::IsCslPeripheralPresent(this);
        if (IsCslPeripheralPresent)
        {
          v121 = 0;
          IsCslPeripheralPresent = ot::Child::GetSupervisionInterval(v124);
          v122 = IsCslPeripheralPresent == 0;
        }

        if (v121)
        {
          IsCslPeripheralPresent = ot::CslTxScheduler::ChildInfo::IsCslSynchronized((v124 + 168));
          if (IsCslPeripheralPresent)
          {
            Now = ot::TimerMilli::GetNow(IsCslPeripheralPresent);
            CslLastHeard = ot::CslTxScheduler::ChildInfo::GetCslLastHeard((v124 + 168));
            v102 = ot::Time::operator-(&Now, &CslLastHeard);
            CslTimeout = ot::CslTxScheduler::ChildInfo::GetCslTimeout((v124 + 168));
            v34 = ot::Time::SecToMsec(CslTimeout);
            IsCslPeripheralPresent = v102;
            if (v102 >= v34)
            {
              v35 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
              Counters = ot::Mac::Mac::GetCounters(v35);
              ++*(Counters + 88);
              Rloc16 = ot::Neighbor::GetRloc16(v124);
              ot::Neighbor::GetExtAddress(v124);
              ot::Mac::ExtAddress::ToString(v36, v137);
              ot::String<(unsigned short)17>::AsCString(v137);
              ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Child CSL synchronization expired RLOC16: 0x%04x ExtAddr: %s", v37, v38, v39, v40, v41, v42, Rloc16);
              ot::CslTxScheduler::ChildInfo::SetCslSynchronized(v124 + 168, 0);
              ot::CslTxScheduler::ChildInfo::SetCslPrevSnValid(v124 + 168, 0);
              v43 = ot::GetProvider<ot::InstanceLocator>::Get<ot::CslTxScheduler>(this);
              ot::CslTxScheduler::Update(v43);
            }

            else
            {
              v122 = 0;
            }
          }
        }

        v100 = 0;
        if (v122)
        {
          v117 = ot::TimerMilli::GetNow(IsCslPeripheralPresent);
          LastHeard = ot::Neighbor::GetLastHeard(v124);
          v44 = ot::Time::operator-(&v117, &LastHeard);
          v100 = v44 >= v123;
        }

        if (v100)
        {
          v99 = ot::Neighbor::GetRloc16(v124);
          ot::Neighbor::GetExtAddress(v124);
          ot::Mac::ExtAddress::ToString(v45, v136);
          ot::String<(unsigned short)17>::AsCString(v136);
          ot::Neighbor::GetState(v124);
          ot::Neighbor::GetLinkFailures(v124);
          v115[1] = ot::Neighbor::GetLastHeard(v124);
          ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Child timeout expired, RLOC16: 0x%04x, ExtAddr: %s State:%d LinkFailureCount:%d LastHeard:%d", v46, v47, v48, v49, v50, v51, v99);
          ot::Mle::MleRouter::RemoveNeighbor(this, v124);
          ot::Mle::Mle::IncrementChildLossCounter(this);
          v52 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
          IsSleepyRouter = ot::Mle::Mle::IsSleepyRouter(v52);
          if (IsSleepyRouter)
          {
            v115[0] = ot::TimerMilli::GetNow(IsSleepyRouter);
            v114 = ot::Neighbor::GetLastHeard(v124);
            v54 = ot::Time::operator-(v115, &v114);
            ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Child timeout expired, mCslPeripheralAttachRetryTimer.Start Timeout=%d mSec", v55, v56, v57, v58, v59, v60, v54);
            v61 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
            ot::TimerMicro::Start((v61 + 8), 0x3E8u);
          }
        }

        else if (ot::Mle::Mle::IsRouterOrLeader(this) && ot::Neighbor::IsStateRestored(v124))
        {
          ot::Mle::MleRouter::SendChildUpdateRequest(this, v124);
          IgnoreError();
        }
      }

LABEL_71:
      ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v127);
    }

    v113 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
    ot::RouterTable::begin(v113);
    v112 = v62;
    v111 = ot::RouterTable::end(v113);
    while (1)
    {
      if (v112 == v111)
      {
        ot::RouterTable::HandleTimeTick((this + 30904));
        ot::Mle::MleRouter::SynchronizeChildNetworkData(this);
        return;
      }

      v110 = v112;
      v109 = 0;
      v98 = ot::Neighbor::GetRloc16(v112);
      if (v98 == ot::Mle::Mle::GetRloc16(this))
      {
        v97 = v110;
        v108 = ot::TimerMilli::GetNow(v98);
        ot::Neighbor::SetLastHeard(v97, v108);
        goto LABEL_89;
      }

      v107 = ot::TimerMilli::GetNow(v98);
      v106 = ot::Neighbor::GetLastHeard(v110);
      v109 = ot::Time::operator-(&v107, &v106);
      if (ot::Neighbor::IsStateValid(v110) && v109 >= 0x186A0)
      {
        if (v109 >= 0x19258)
        {
          v95 = ot::Neighbor::GetRloc16(v110);
          ot::Neighbor::GetExtAddress(v110);
          ot::Mac::ExtAddress::ToString(v70, v134);
          ot::String<(unsigned short)17>::AsCString(v134);
          ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Router timeout expired, RLOC16: 0x%04x, ExtAddr: %s", v71, v72, v73, v74, v75, v76, v95);
          ot::Mle::Mle::IncrementRouterLossCounter(this);
          ot::Mle::MleRouter::RemoveNeighbor(this, v110);
          goto LABEL_89;
        }

        v96 = ot::Neighbor::GetRloc16(v110);
        ot::Neighbor::GetExtAddress(v110);
        ot::Mac::ExtAddress::ToString(v63, v135);
        ot::String<(unsigned short)17>::AsCString(v135);
        ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "No Adv from router - sending Link Request, RLOC16: 0x%04x, ExtAddr: %s", v64, v65, v66, v67, v68, v69, v96);
        ot::Mle::MleRouter::SendLinkRequest(this, v110);
        IgnoreError();
      }

      if (ot::Neighbor::IsStateLinkRequest(v110) && v109 >= 0x7D0)
      {
        v94 = ot::Neighbor::GetRloc16(v110);
        ot::Neighbor::GetExtAddress(v110);
        ot::Mac::ExtAddress::ToString(v77, v133);
        ot::String<(unsigned short)17>::AsCString(v133);
        ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Router RLOC16: 0x%04x extAddr:%s - Link Request timeout expired", v78, v79, v80, v81, v82, v83, v94);
        ot::Mle::Mle::IncrementRouterLossCounter(this);
        ot::Mle::MleRouter::RemoveNeighbor(this, v110);
      }

      else if (ot::Mle::Mle::IsLeader(this))
      {
        ot::RouterTable::FindNextHopOf((this + 30904), v110);
        if (!v84 && ot::RouterTable::GetLinkCost((this + 30904), v110) >= 16 && v109 >= 0x15F90)
        {
          v85 = ot::Neighbor::GetRloc16(v110);
          ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Router 0x%04x ID timeout expired (no route)", v86, v87, v88, v89, v90, v91, v85);
          RouterId = ot::Neighbor::GetRouterId(v110);
          ot::RouterTable::Release((this + 30904), RouterId);
          IgnoreError();
        }
      }

LABEL_89:
      v112 = (v112 + 144);
    }
  }

  if (v104 != 2)
  {
    if (v104 != 3)
    {
      if (v104 != 4)
      {
        goto LABEL_41;
      }

      goto LABEL_36;
    }

LABEL_28:
    if (!(ot::RouterTable::GetLeaderAge((this + 30904)) % 0xA))
    {
      LeaderAge = ot::RouterTable::GetLeaderAge((this + 30904));
      v3 = ot::ToUlong(LeaderAge);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Leader age %lu", v4, v5, v6, v7, v8, v9, v3);
    }

    if (ot::RouterTable::GetActiveRouterCount((this + 30904)) > 0 && ot::RouterTable::GetLeaderAge((this + 30904)) >= *(this + 35628))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Leader age timeout", v10, v11, v12, v13, v14, v15, v93);
      ot::Mle::Mle::Attach(this, 1);
    }

    if (v131 && ot::RouterTable::GetActiveRouterCount((this + 30904)) > *(this + 35630))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Downgrade to REED", v16, v17, v18, v19, v20, v21, v93);
      ot::Mle::Mle::Attach(this, 3);
    }

LABEL_36:
    if (v131 && (ot::Mle::MleRouter::IsRouterEligible(this) & 1) == 0)
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "No longer router eligible", v22, v23, v24, v25, v26, v27, v93);
      ot::Mle::Mle::BecomeDetached(this);
      IgnoreError();
    }

    goto LABEL_41;
  }

  if (!v131)
  {
    goto LABEL_28;
  }

  if (ot::RouterTable::GetActiveRouterCount((this + 30904)) < *(this + 35629) && (ot::Mle::MleRouter::HasNeighborWithGoodLinkQuality(this) & 1) != 0)
  {
    ot::Mle::MleRouter::BecomeRouter(this, 2u);
    IgnoreError();
  }

  else
  {
    ot::Mle::Mle::InformPreviousChannel(this);
  }

  if (!ot::TrickleTimer::IsRunning((this + 1136)))
  {
    ot::Mle::MleRouter::SendAdvertisement(this);
    ot::TrickleTimer::Start(this + 1136, 1, 0x8B290u, 0x99CF0u, 0xFFFF);
  }
}

BOOL ot::Mle::MleRouter::RouterRoleTransition::HandleTimeTick(ot::Mle::MleRouter::RouterRoleTransition *this)
{
  v2 = 0;
  if (*this)
  {
    return --*this == 0;
  }

  return v2;
}

uint64_t ot::CslTxScheduler::ChildInfo::GetCslLastHeard(ot::CslTxScheduler::ChildInfo *this)
{
  return *(this + 3);
}

{
  return ot::CslTxScheduler::ChildInfo::GetCslLastHeard(this);
}

uint64_t ot::CslTxScheduler::ChildInfo::GetCslTimeout(ot::CslTxScheduler::ChildInfo *this)
{
  return *(this + 1);
}

{
  return ot::CslTxScheduler::ChildInfo::GetCslTimeout(this);
}

uint64_t ot::Mle::Mle::IncrementChildLossCounter(uint64_t this)
{
  ++*(this + 784);
  return this;
}

{
  return ot::Mle::Mle::IncrementChildLossCounter(this);
}

BOOL ot::Neighbor::IsStateRestored(ot::Neighbor *this)
{
  return (*(this + 30) & 0xF) == 1;
}

{
  return ot::Neighbor::IsStateRestored(this);
}

uint64_t ot::Mle::Mle::IncrementRouterLossCounter(uint64_t this)
{
  ++*(this + 786);
  return this;
}

{
  return ot::Mle::Mle::IncrementRouterLossCounter(this);
}

void ot::RouterTable::FindNextHopOf(ot::RouterTable *this, const ot::Router *a2)
{
  ot::AsConst<ot::RouterTable>();
  ot::RouterTable::FindNextHopOf(v2, a2);
  ot::AsNonConst<ot::Router>();
}

{
  ot::RouterTable::FindNextHopOf(this, a2);
}

uint64_t ot::Mle::MleRouter::SynchronizeChildNetworkData(ot::Mle::MleRouter *this)
{
  v16 = this;
  result = ot::Mle::Mle::IsRouterOrLeader(this);
  if (result)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    v14 = ot::ChildTable::Iterate(v2, 0);
    v15 = &v14;
    v19 = ot::ChildTable::IteratorBuilder::begin(&v14);
    v20 = v3;
    v12 = v19;
    v13 = v3;
    v17 = ot::ChildTable::IteratorBuilder::end(v15);
    v18 = v4;
    v10 = v17;
    v11 = v4;
    while (1)
    {
      result = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v12, &v10);
      if ((result & 1) == 0)
      {
        break;
      }

      v9 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v12);
      if (!ot::Neighbor::IsRxOnWhenIdle(v9))
      {
        NetworkDataVersion = ot::Child::GetNetworkDataVersion(v9);
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
        NetworkDataType = ot::Neighbor::GetNetworkDataType(v9);
        if (NetworkDataVersion != ot::NetworkData::Leader::GetVersion(v6, NetworkDataType))
        {
          result = ot::Mle::MleRouter::SendChildUpdateRequest(this, v9);
          if (result)
          {
            break;
          }
        }
      }

      ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v12);
    }
  }

  return result;
}

uint64_t ot::Utils::FifoHistogram<unsigned char,(short)24>::GetCount()
{
  return 24;
}

{
  return ot::Utils::FifoHistogram<unsigned char,(short)24>::GetCount();
}

void ot::Utils::FifoHistogram<unsigned char,(short)24>::GetData()
{
  ;
}

{
  ot::Utils::FifoHistogram<unsigned char,(short)24>::GetData();
}

void *ot::Utils::FifoHistogram<unsigned char,(short)24>::Clear(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  return ot::Utils::FifoHistogram<unsigned char,(short)24>::Clear(result);
}

uint64_t ot::Mle::MleRouter::HandleConnectedNeighbourTimer(ot::Mle::MleRouter *this)
{
  if (ot::Mle::Mle::IsFullThreadDevice(this))
  {
    NeighborCount = ot::RouterTable::GetNeighborCount(this + 30904, 1u);
    ot::Utils::FifoHistogram<unsigned char,(short)24>::Update(this + 35633, NeighborCount);
    NumChildren = ot::ChildTable::GetNumChildren(this + 600, 0);
    ot::Utils::FifoHistogram<unsigned char,(short)24>::Update(this + 35657, NumChildren);
  }

  v3 = ot::Time::SecToMsec(0xE10);
  return ot::TimerMilli::Start((this + 35760), v3);
}

__n128 ot::Utils::FifoHistogram<unsigned char,(short)24>::Update(uint64_t a1, char a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  v5 = *(a1 + 22);
  *(a1 + 1) = *a1;
  *(a1 + 17) = v3;
  *(a1 + 21) = v4;
  *(a1 + 23) = v5;
  *a1 = a2;
  return result;
}

BOOL ot::Neighbor::IsThreadVersionCslCapable(ot::Neighbor *this)
{
  LOBYTE(v3) = 0;
  if (ot::Neighbor::IsThreadVersion1p2OrHigher(this))
  {
    return !ot::Neighbor::IsRxOnWhenIdle(this);
  }

  return v3;
}

{
  return ot::Neighbor::IsThreadVersionCslCapable(this);
}

uint64_t ot::Child::GetChallenge(ot::Child *this)
{
  return this + 450;
}

{
  return ot::Child::GetChallenge(this);
}

uint64_t ot::Mle::MleRouter::ProcessAddressRegistrationTlv(ot::Mle::MleRouter *this, ot::Tlv **a2, ot::Child *a3)
{
  v74 = this;
  v73 = a2;
  v72 = a3;
  TlvValueOffsetRange = 0;
  v69 = 0;
  v68 = 0;
  ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::Array(v66);
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(*v73, 0x13, &v70, v3);
  if (TlvValueOffsetRange)
  {
    return TlvValueOffsetRange;
  }

  ot::Child::GetDomainUnicastAddress(v72, v67);
  if (v4)
  {
    ot::Clearable<ot::Ip6::Address>::Clear(v67);
  }

  if (ot::Child::HasAnyMlrRegisteredAddress(v72))
  {
    if (!ot::Neighbor::IsStateValid(v72))
    {
      __assert_rtn("ProcessAddressRegistrationTlv", "mle_router.cpp", 2495, "aChild.IsStateValid()");
    }

    Ip6Addresses = ot::Child::GetIp6Addresses(v72);
    ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin();
    v64 = v5;
    v63 = ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(Ip6Addresses);
    while (v64 != v63)
    {
      *&v62[1] = v64;
      if (ot::Ip6::Address::IsMulticastLargerThanRealmLocal(v64) && ot::Child::Ip6AddrEntry::GetMlrState(*&v62[1], v72) == 2)
      {
        ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::PushBack(v66, *&v62[1]);
        IgnoreError();
      }

      v64 = (v64 + 16);
    }
  }

  ot::Child::ClearIp6Addresses(v72);
  while (!ot::OffsetRange::IsEmpty(&v70))
  {
    v62[0] = 0;
    TlvValueOffsetRange = ot::Message::Read<unsigned char>(*v73, &v70, v62);
    if (TlvValueOffsetRange)
    {
      return TlvValueOffsetRange;
    }

    ot::OffsetRange::AdvanceOffset(&v70, 1u);
    ++v69;
    ot::Clearable<ot::Ip6::Address>::Clear(v61);
    if (!ot::Mle::AddressRegistrationTlv::IsEntryCompressed(v62[0]))
    {
      ot::Message::Read<ot::Ip6::Address>(*v73, &v70, v61);
      IgnoreError();
      ot::OffsetRange::AdvanceOffset(&v70, 0x10u);
      goto LABEL_21;
    }

    ContextId = ot::Mle::AddressRegistrationTlv::GetContextId(v62[0]);
    v50 = *v73;
    Iid = ot::Ip6::Address::GetIid(v61);
    ot::Message::Read<ot::Ip6::InterfaceIdentifier>(v50, &v70, Iid);
    IgnoreError();
    ot::OffsetRange::AdvanceOffset(&v70, 8u);
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    if (ot::NetworkData::Leader::GetContext(v7, ContextId, v59))
    {
      v49 = ContextId;
      ot::Neighbor::GetRloc16(v72);
      ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Failed to get context %u for compressed address from child 0x%04x", v8, v9, v10, v11, v12, v13, v49);
    }

    else
    {
      ot::Ip6::Address::SetPrefix(v61, v59);
LABEL_21:
      ot::Child::AddIp6Address(v72, v61);
      TlvValueOffsetRange = v14;
      if (v14)
      {
        v47 = ot::ErrorToString(TlvValueOffsetRange);
        ot::Ip6::Address::ToString(v61, v79);
        ot::String<(unsigned short)40>::AsCString(v79);
        ot::Neighbor::GetRloc16(v72);
        ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Error %s adding IPv6 address %s to child 0x%04x", v21, v22, v23, v24, v25, v26, v47);
      }

      else
      {
        ++v68;
        Rloc16 = ot::Neighbor::GetRloc16(v72);
        ot::Ip6::Address::ToString(v61, v80);
        ot::String<(unsigned short)40>::AsCString(v80);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Child 0x%04x IPv6 address[%u]=%s", v15, v16, v17, v18, v19, v20, Rloc16);
      }

      if (!ot::Ip6::Address::IsMulticast(v61))
      {
        v27 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
        v57 = ot::ChildTable::Iterate(v27, 1);
        v58 = &v57;
        v77 = ot::ChildTable::IteratorBuilder::begin(&v57);
        v78 = v28;
        v55 = v77;
        v56 = v28;
        v75 = ot::ChildTable::IteratorBuilder::end(v58);
        v76 = v29;
        v53 = v75;
        v54 = v29;
        while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v55, &v53))
        {
          v52 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v55);
          if (v52 != v72)
          {
            ot::Child::RemoveIp6Address(v52, v61);
            IgnoreError();
          }

          ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v55);
        }

        v30 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
        ot::AddressResolver::RemoveEntryForAddress(v30, v61);
      }
    }
  }

  ot::Mle::MleRouter::SignalDuaAddressEvent(this, v72, v67);
  v31 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MlrManager>(this);
  ot::MlrManager::UpdateProxiedSubscriptions(v31, v72, v66);
  if (v69)
  {
    v39 = ot::Neighbor::GetRloc16(v72);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Child 0x%04x has %u registered IPv6 address%s, %u address%s stored", v40, v41, v42, v43, v44, v45, v39);
  }

  else
  {
    v32 = ot::Neighbor::GetRloc16(v72);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Child 0x%04x has no registered IPv6 address", v33, v34, v35, v36, v37, v38, v32);
  }

  return 0;
}

uint64_t ot::Child::HasAnyMlrRegisteredAddress(ot::Child *this)
{
  return ot::BitVector<(unsigned short)15>::HasAny(this + 447);
}

{
  return ot::Child::HasAnyMlrRegisteredAddress(this);
}

uint64_t ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::PushBack(uint64_t a1, _OWORD *a2)
{
  if (ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsFull(a1))
  {
    return 3;
  }

  else
  {
    v2 = (*(a1 + 240))++;
    *(a1 + 16 * v2) = *a2;
    return 0;
  }
}

{
  return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::PushBack(a1, a2);
}

BOOL ot::Mle::AddressRegistrationTlv::IsEntryCompressed(ot::Mle::AddressRegistrationTlv *this)
{
  return this < 0;
}

{
  return ot::Mle::AddressRegistrationTlv::IsEntryCompressed(this);
}

uint64_t ot::Mle::AddressRegistrationTlv::GetContextId(ot::Mle::AddressRegistrationTlv *this)
{
  return this & 0xF;
}

{
  return ot::Mle::AddressRegistrationTlv::GetContextId(this);
}

uint64_t ot::Message::Read<ot::Ip6::InterfaceIdentifier>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 8u);
}

{
  return ot::Message::Read<ot::Ip6::InterfaceIdentifier>(a1, a2, a3);
}

uint64_t ot::Mle::MleRouter::SignalDuaAddressEvent(ot::Mle::MleRouter *this, const ot::Child *a2, const ot::Ip6::Address *a3)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = 3;
  ot::Child::GetDomainUnicastAddress(a2, v7);
  if (v3)
  {
    result = ot::Ip6::Address::IsUnspecified(v9);
    if (result)
    {
      return result;
    }

    v8 = 2;
  }

  else if (ot::Ip6::Address::IsUnspecified(v9))
  {
    v8 = 0;
  }

  else if (ot::Unequatable<ot::Ip6::Address>::operator!=(v9, v7))
  {
    v8 = 1;
  }

  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(this);
  return ot::DuaManager::HandleChildDuaAddressEvent(v5, v10, v8);
}

uint64_t ot::Mle::MleRouter::IsMessageMleSubType(ot::Mle::MleRouter *this, const ot::Message *a2)
{
  v4 = 0;
  SubType = ot::Message::GetSubType(this);
  if (SubType == 6 || (SubType - 8) <= 2)
  {
    v4 = 1;
  }

  return v4 & 1;
}

void ot::Mle::MleRouter::HandleChildIdRequest(ot::Mle::MleRouter *this, ot::Tlv **a2)
{
  v61 = this;
  v60 = a2;
  VersionTlv = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v54 = 0;
  ot::Mle::Mle::TlvList::TlvList(v63);
  v52 = 0;
  v51 = 0;
  v50 = 0;
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v60[1]);
  ot::Mle::Mle::Log(1, 2, PeerAddr);
  if (ot::Mle::Mle::IsCslPeripheralAttaching(this))
  {
    v3 = ot::ToUlong(*(v60 + 4));
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Received Parent Request FC: %lu", v4, v5, v6, v7, v8, v9, v3);
  }

  if ((ot::Mle::MleRouter::IsRouterEligible(this) & 1) == 0)
  {
    VersionTlv = 13;
    goto LABEL_52;
  }

  if (!ot::Mle::Mle::IsAttached(this))
  {
    VersionTlv = 13;
    goto LABEL_52;
  }

  v10 = ot::Ip6::MessageInfo::GetPeerAddr(v60[1]);
  Iid = ot::Ip6::Address::GetIid(v10);
  ot::Ip6::InterfaceIdentifier::ConvertToExtAddress(Iid, v64);
  ot::ChildTable::FindChild(this + 1200, v64, 5);
  v52 = v12;
  if (!v12)
  {
    VersionTlv = 24;
    goto LABEL_52;
  }

  VersionTlv = ot::Mle::Mle::RxMessage::ReadVersionTlv(*v60, &v58);
  if (!VersionTlv)
  {
    v46 = *v60;
    Challenge = ot::Child::GetChallenge(v52);
    VersionTlv = ot::Mle::Mle::RxMessage::ReadAndMatchResponseTlvWith(v46, Challenge);
    if (!VersionTlv)
    {
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
      ot::MeshForwarder::RemoveMessagesForChild(v14, v52, ot::Mle::MleRouter::IsMessageMleSubType);
      VersionTlv = ot::Mle::Mle::RxMessage::ReadFrameCounterTlvs(*v60, &v57, &v56);
      if (!VersionTlv)
      {
        v15 = ot::Ip6::MessageInfo::GetPeerAddr(v60[1]);
        ot::Ip6::Address::ToString(v15, v62);
        ot::String<(unsigned short)40>::AsCString(v62);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s Rx from %s linkFrameCounter=%d mleFrameCounter=%d", v16, v17, v18, v19, v20, v21, "HandleChildIdRequest");
        VersionTlv = ot::Mle::Mle::RxMessage::ReadModeTlv(*v60, &v55);
        if (!VersionTlv)
        {
          VersionTlv = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned int>>(*v60, &v54);
          if (!VersionTlv)
          {
            VersionTlv = ot::Mle::Mle::RxMessage::ReadTlvRequestTlv(*v60, v63, v22, v23);
            if (!VersionTlv)
            {
              v45 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)27,unsigned short>>(*v60, &v50);
              if (v45)
              {
                if (v45 != 23)
                {
                  VersionTlv = 6;
                  goto LABEL_52;
                }

                if (v58 > 4u)
                {
                  v24 = 0;
                }

                else
                {
                  v24 = 129;
                }

                v50 = v24;
              }

              else
              {
                ot::Mle::Mle::TlvList::Add(v63, 27);
              }

              v44 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(*v60, v53);
              if (v44)
              {
                if (v44 != 23)
                {
                  VersionTlv = 6;
                  goto LABEL_52;
                }
              }

              else
              {
                active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
                Timestamp = ot::MeshCoP::DatasetManager::GetTimestamp(active);
                if (ot::MeshCoP::Timestamp::operator==(v53, Timestamp, v27))
                {
                  goto LABEL_28;
                }
              }

              ot::Mle::Mle::TlvList::Add(v63, 24);
LABEL_28:
              v43 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)23,ot::MeshCoP::Timestamp>>(*v60, v53);
              if (v43)
              {
                if (v43 != 23)
                {
                  VersionTlv = 6;
                  goto LABEL_52;
                }
              }

              else
              {
                v28 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
                v29 = ot::MeshCoP::DatasetManager::GetTimestamp(v28);
                if (ot::MeshCoP::Timestamp::operator==(v53, v29, v30))
                {
                  goto LABEL_33;
                }
              }

              ot::Mle::Mle::TlvList::Add(v63, 25);
LABEL_33:
              if (ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetLength(v63) <= 6)
              {
                if (ot::Mle::DeviceMode::IsFullThreadDevice(&v55) || (VersionTlv = ot::Mle::MleRouter::ProcessAddressRegistrationTlv(this, v60, v52)) == 0)
                {
                  ot::RouterTable::FindRouter((this + 30904), v64);
                  v51 = v31;
                  if (v31)
                  {
                    ot::Mle::MleRouter::RemoveNeighbor(this, v51);
                  }

                  if (ot::Neighbor::IsStateValid(v52))
                  {
                    ot::Mle::MleRouter::RemoveNeighbor(this, v52);
                  }

                  else
                  {
                    v32 = ot::Neighbor::SetState(v52, 4);
                  }

                  v40 = v52;
                  Now = ot::TimerMilli::GetNow(v32);
                  ot::Neighbor::SetLastHeard(v40, Now);
                  LinkFrameCounters = ot::Neighbor::GetLinkFrameCounters(v52);
                  ot::Mac::LinkFrameCounters::SetAll(LinkFrameCounters, v57);
                  ot::Neighbor::SetLinkAckFrameCounter(v52, v57);
                  ot::Neighbor::SetMleFrameCounter(v52, v56);
                  ot::Neighbor::SetKeySequence(v52, *(v60 + 5));
                  ot::Child::SetDeviceMode(v52, v55);
                  ot::Neighbor::SetVersion(v52, v58);
                  LinkInfo = ot::Neighbor::GetLinkInfo(v52);
                  AverageRss = ot::Message::GetAverageRss(*v60);
                  ot::LinkQualityInfo::AddRss(LinkInfo, AverageRss);
                  ot::Child::SetTimeout(v52, v54);
                  ot::Child::SetSupervisionInterval(v52, v50);
                  v42 = v52;
                  NetworkDataType = ot::Mle::DeviceMode::GetNetworkDataType(&v55);
                  DataVersion = ot::Mle::LeaderData::GetDataVersion(this + 184, NetworkDataType);
                  ot::Child::SetNetworkDataVersion(v42, DataVersion);
                  ot::Child::ClearRequestTlvs(v52);
                  for (i = 0; i < ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetLength(v63); ++i)
                  {
                    v39 = v52;
                    v37 = ot::Array<unsigned char,(unsigned short)32,unsigned char>::operator[](v63, i);
                    ot::Child::SetRequestTlv(v39, i, *v37);
                  }

                  *(v60 + 32) = 1;
                  ot::Mle::Mle::ProcessKeySequence(this, v60);
                  v38 = *(this + 130);
                  if (v38 <= 1)
                  {
                    __assert_rtn("HandleChildIdRequest", "mle_router.cpp", 2922, "false");
                  }

                  if (v38 == 2)
                  {
                    ot::Neighbor::SetState(v52, 4);
                    ot::Mle::MleRouter::BecomeRouter(this, 3u);
                    IgnoreError();
                  }

                  else if (v38 == 4 || v38 == 3)
                  {
                    VersionTlv = ot::Mle::MleRouter::SendChildIdResponse(this, v52);
                  }
                }
              }

              else
              {
                VersionTlv = 6;
              }
            }
          }
        }
      }
    }
  }

LABEL_52:
  ot::Mle::Mle::LogProcessError(2, VersionTlv);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)27,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0x1Bu, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)27,unsigned short>>(a1, a2);
}

uint64_t ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetLength(uint64_t a1)
{
  return *(a1 + 32);
}

{
  return ot::Array<unsigned char,(unsigned short)32,unsigned char>::GetLength(a1);
}

uint64_t ot::Child::SetSupervisionInterval(uint64_t this, __int16 a2)
{
  *(this + 458) = a2;
  return this;
}

{
  return ot::Child::SetSupervisionInterval(this, a2);
}

uint64_t ot::Child::SetNetworkDataVersion(uint64_t this, char a2)
{
  *(this + 449) = a2;
  return this;
}

{
  return ot::Child::SetNetworkDataVersion(this, a2);
}

uint64_t ot::Child::ClearRequestTlvs(uint64_t this)
{
  *(this + 450) = -1;
  *(this + 454) = -1;
  return this;
}

{
  return ot::Child::ClearRequestTlvs(this);
}

uint64_t ot::Child::SetRequestTlv(uint64_t this, unsigned __int8 a2, char a3)
{
  *(this + 450 + a2) = a3;
  return this;
}

{
  return ot::Child::SetRequestTlv(this, a2, a3);
}

uint64_t ot::Array<unsigned char,(unsigned short)32,unsigned char>::operator[](uint64_t a1, unsigned __int8 a2)
{
  return a1 + a2;
}

{
  return ot::Array<unsigned char,(unsigned short)32,unsigned char>::operator[](a1, a2);
}

uint64_t ot::Mle::MleRouter::SendChildIdResponse(ot::Mle::MleRouter *this, ot::Child *a2)
{
  v21 = this;
  v20 = a2;
  appended = 0;
  v17 = ot::Mle::Mle::NewMleMessage(this, 12);
  if (v17)
  {
    appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v17);
    if (!appended)
    {
      appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v17);
      if (!appended)
      {
        appended = ot::Mle::Mle::TxMessage::AppendActiveAndPendingTimestampTlvs(v17);
        if (!appended)
        {
          if (!ot::Neighbor::GetRloc16(v20) || (Rloc16 = ot::Neighbor::GetRloc16(v20), !ot::Mle::Mle::HasMatchingRouterIdWith(this, Rloc16)))
          {
            do
            {
              if (++*(this + 17813) > 0x1FFu)
              {
                *(this + 17813) = 1;
              }

              v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
              v16 = ot::Mac::Mac::GetShortAddress(v3) | *(this + 17813);
              ot::ChildTable::FindChild(this + 1200, v16, 5);
            }

            while (v4);
            ot::Neighbor::SetRloc16(v20, v16);
          }

          v5 = ot::Neighbor::GetRloc16(v20);
          appended = ot::Mle::Mle::TxMessage::AppendAddress16Tlv(v17, v5);
          if (!appended)
          {
            for (i = 0; i < 6u; ++i)
            {
              RequestTlv = ot::Child::GetRequestTlv(v20, i);
              switch(RequestTlv)
              {
                case 9:
                  appended = ot::Mle::Mle::TxMessage::AppendRouteTlv(v17, 0);
                  if (appended)
                  {
                    goto LABEL_39;
                  }

                  break;
                case 12:
                  NetworkDataType = ot::Neighbor::GetNetworkDataType(v20);
                  appended = ot::Mle::Mle::TxMessage::AppendNetworkDataTlv(v17, NetworkDataType);
                  if (appended)
                  {
                    goto LABEL_39;
                  }

                  break;
                case 24:
                  appended = ot::Mle::Mle::TxMessage::AppendActiveDatasetTlv(v17);
                  if (appended)
                  {
                    goto LABEL_39;
                  }

                  break;
                case 25:
                  appended = ot::Mle::Mle::TxMessage::AppendPendingDatasetTlv(v17);
                  if (appended)
                  {
                    goto LABEL_39;
                  }

                  break;
                case 27:
                  SupervisionInterval = ot::Child::GetSupervisionInterval(v20);
                  appended = ot::Mle::Mle::TxMessage::AppendSupervisionIntervalTlv(v17, SupervisionInterval);
                  if (appended)
                  {
                    goto LABEL_39;
                  }

                  break;
              }
            }

            if (ot::Neighbor::IsFullThreadDevice(v20) || (appended = ot::Mle::Mle::TxMessage::AppendAddressRegistrationTlv(v17, v20)) == 0)
            {
              ot::Mle::MleRouter::SetChildStateToValid(this, v20);
              if (!ot::Neighbor::IsRxOnWhenIdle(v20))
              {
                v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::IndirectSender>(this);
                ot::IndirectSender::SetChildUseShortAddress(v8, v20, 0);
              }

              if (ot::Mle::Mle::IsCslPeripheralPresent(this))
              {
                v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
                ot::Mac::Mac::UpdateCsl(v9, 0);
              }

              ot::Neighbor::GetExtAddress(v20);
              ot::Ip6::Address::SetToLinkLocalAddress(&v18, v10);
              appended = ot::Mle::Mle::TxMessage::SendTo(v17, &v18);
              if (!appended)
              {
                v11 = ot::Neighbor::GetRloc16(v20);
                ot::Mle::Mle::Log(0, 4, &v18, v11);
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

LABEL_39:
  if (appended && v17)
  {
    ot::Message::Free(v17);
  }

  return appended;
}