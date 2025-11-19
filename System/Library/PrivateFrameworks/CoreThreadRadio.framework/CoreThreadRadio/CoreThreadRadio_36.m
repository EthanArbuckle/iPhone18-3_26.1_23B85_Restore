void ot::Mle::MleRouter::HandleChildUpdateRequest(ot::Mle::MleRouter *this, ot::Tlv **a2)
{
  v54 = this;
  v53 = a2;
  ModeTlv = 0;
  ot::Mle::RxChallenge::RxChallenge(v58);
  v49 = 0;
  v48 = 0;
  v47 = 0;
  ot::Mle::Mle::TlvList::TlvList(v57);
  ot::Mle::Mle::TlvList::TlvList(v56);
  v45 = 0;
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v53[1]);
  ot::Mle::Mle::Log(1, 20, PeerAddr);
  ModeTlv = ot::Mle::Mle::RxMessage::ReadModeTlv(*v53, &v51);
  if (!ModeTlv)
  {
    ChallengeTlv = ot::Mle::Mle::RxMessage::ReadChallengeTlv(*v53, v58, v3, v4);
    if (ChallengeTlv)
    {
      if (ChallengeTlv != 23)
      {
        ModeTlv = 6;
        goto LABEL_54;
      }

      ot::Mle::RxChallenge::Clear(v58);
    }

    else
    {
      ot::Mle::Mle::TlvList::Add(v56, 4);
    }

    ot::Mle::Mle::TlvList::Add(v56, 0);
    v5 = ot::Ip6::MessageInfo::GetPeerAddr(v53[1]);
    Iid = ot::Ip6::Address::GetIid(v5);
    ot::Ip6::InterfaceIdentifier::ConvertToExtAddress(Iid, v59);
    ot::ChildTable::FindChild(this + 1200, v59, 5);
    v47 = v7;
    if (v7)
    {
      if (ot::Neighbor::IsStateValid(v47))
      {
        DeviceMode = ot::Neighbor::GetDeviceMode(v47);
        v46 = DeviceMode;
        v43[3] = v51;
        ot::Child::SetDeviceMode(v47, v51);
        ot::Mle::Mle::TlvList::Add(v56, 1);
        ot::Mle::Mle::TlvList::Add(v56, 11);
        if (!ot::Mle::RxChallenge::IsEmpty(v58))
        {
          ot::Mle::Mle::TlvList::Add(v56, 8);
          ot::Mle::Mle::TlvList::Add(v56, 5);
        }

        v35 = ot::Mle::MleRouter::ProcessAddressRegistrationTlv(this, v53, v47);
        if (v35)
        {
          if (v35 != 23)
          {
            ModeTlv = 6;
            goto LABEL_54;
          }
        }

        else
        {
          ot::Mle::Mle::TlvList::Add(v56, 19);
        }

        LeaderDataTlv = ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(*v53, v50, v8, v9, v10, v11);
        if (LeaderDataTlv)
        {
          if (LeaderDataTlv != 23)
          {
            ModeTlv = 6;
            goto LABEL_54;
          }
        }

        else
        {
          NetworkDataType = ot::Neighbor::GetNetworkDataType(v47);
          DataVersion = ot::Mle::LeaderData::GetDataVersion(v50, NetworkDataType);
          ot::Child::SetNetworkDataVersion(v47, DataVersion);
        }

        v33 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned int>>(*v53, &v49);
        if (v33)
        {
          if (v33 != 23)
          {
            ModeTlv = 6;
            goto LABEL_54;
          }
        }

        else
        {
          Timeout = ot::Child::GetTimeout(v47);
          if (Timeout != v49)
          {
            ot::Child::SetTimeout(v47, v49);
            v45 = 1;
          }

          ot::Mle::Mle::TlvList::Add(v56, 2);
        }

        v32 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)27,unsigned short>>(*v53, &v48);
        if (v32)
        {
          if (v32 != 23)
          {
            ModeTlv = 6;
            goto LABEL_54;
          }

          if (ot::Neighbor::GetVersion(v47) > 4)
          {
            v15 = 0;
          }

          else
          {
            v15 = 129;
          }

          v48 = v15;
        }

        else
        {
          ot::Mle::Mle::TlvList::Add(v56, 27);
        }

        ot::Child::SetSupervisionInterval(v47, v48);
        TlvRequestTlv = ot::Mle::Mle::RxMessage::ReadTlvRequestTlv(*v53, v57, v16, v17);
        if (TlvRequestTlv)
        {
          if (TlvRequestTlv != 23)
          {
            ModeTlv = 6;
            goto LABEL_54;
          }
        }

        else
        {
          ot::Mle::Mle::TlvList::AddElementsFrom(v56, v57);
        }

        IsCslSynchronized = ot::CslTxScheduler::ChildInfo::IsCslSynchronized((v47 + 168));
        if (IsCslSynchronized)
        {
          v42 = 0;
          v30 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)85,unsigned int>>(*v53, &v42);
          if (v30)
          {
            if (v30 != 23)
            {
              ModeTlv = 0;
              goto LABEL_54;
            }
          }

          else
          {
            ot::CslTxScheduler::ChildInfo::SetCslTimeout(v47 + 168, v42);
            ot::Mle::Mle::TlvList::Add(v56, 86);
          }

          IsCslSynchronized = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)80,ot::Mle::ChannelTlvValue>>(*v53, v43);
          if (!IsCslSynchronized)
          {
            v29 = (v47 + 168);
            Channel = ot::Mle::ChannelTlvValue::GetChannel(v43);
            IsCslSynchronized = ot::CslTxScheduler::ChildInfo::SetCslChannel(v29, Channel);
          }
        }

        v28 = v47;
        Now = ot::TimerMilli::GetNow(IsCslSynchronized);
        ot::Neighbor::SetLastHeard(v28, Now);
        v40 = ot::Neighbor::GetDeviceMode(v47);
        if (ot::Unequatable<ot::Mle::DeviceMode>::operator!=(&v46, &v40))
        {
          Rloc16 = ot::Neighbor::GetRloc16(v47);
          ot::Mle::DeviceMode::Get(&v46);
          v39 = ot::Neighbor::GetDeviceMode(v47);
          ot::Mle::DeviceMode::Get(&v39);
          v38 = ot::Neighbor::GetDeviceMode(v47);
          ot::Mle::DeviceMode::ToString(&v38, v55);
          ot::String<(unsigned short)45>::AsCString(v55);
          ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Child 0x%04x mode change 0x%02x -> 0x%02x [%s]", v20, v21, v22, v23, v24, v25, Rloc16);
          v45 = 1;
          if (ot::Neighbor::IsRxOnWhenIdle(v47))
          {
            ot::CslTxScheduler::ChildInfo::SetCslSynchronized(v47 + 168, 0);
            ot::CslTxScheduler::ChildInfo::SetCslPrevSnValid(v47 + 168, 0);
          }

          v26 = ot::GetProvider<ot::InstanceLocator>::Get<ot::IndirectSender>(this);
          ot::IndirectSender::HandleChildModeChange(v26, v47, v46);
        }

        if (v45)
        {
          ot::ChildTable::StoreChild((this + 1200), v47);
          IgnoreError();
        }

        ot::Mle::MleRouter::SendChildUpdateResponse(this, v47, v53[1], v56, v58);
        *(v53 + 32) = 2;
      }
    }

    else if (ot::Mle::DeviceMode::IsRxOnWhenIdle(&v51))
    {
      ot::Mle::Mle::TlvList::Add(v56, 17);
      ot::Mle::MleRouter::SendChildUpdateResponse(this, 0, v53[1], v56, v58);
    }
  }

LABEL_54:
  ot::Mle::Mle::LogProcessError(20, ModeTlv);
}

void ot::Mle::MleRouter::SendChildUpdateResponse(ot::Mle::MleRouter *this, ot::Child *a2, const ot::Ip6::MessageInfo *a3, const ot::Mle::Mle::TlvList *a4, const ot::Mle::RxChallenge *a5)
{
  v18 = ot::Mle::Mle::NewMleMessage(this, 14);
  if (v18)
  {
    ot::Array<unsigned char,(unsigned short)32,unsigned char>::begin();
    v17 = v5;
    v16 = ot::Array<unsigned char,(unsigned short)32,unsigned char>::end(a4);
    while (v17 != v16)
    {
      v15 = *v17;
      v13 = *v17;
      if (*v17)
      {
        switch(v13)
        {
          case 4:
            appended = ot::Mle::Mle::TxMessage::AppendResponseTlv(v18, a5);
            if (appended)
            {
              goto LABEL_48;
            }

            break;
          case 5:
            appended = ot::Mle::Mle::TxMessage::AppendLinkFrameCounterTlv(v18);
            if (appended)
            {
              goto LABEL_48;
            }

            break;
          case 8:
            appended = ot::Mle::Mle::TxMessage::AppendMleFrameCounterTlv(v18);
            if (appended)
            {
              goto LABEL_48;
            }

            break;
          case 11:
            appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v18);
            if (appended)
            {
              goto LABEL_48;
            }

            break;
          case 17:
            appended = ot::Mle::Mle::TxMessage::AppendStatusTlv(v18, 1u);
            if (appended)
            {
              goto LABEL_48;
            }

            break;
        }
      }

      else
      {
        appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v18);
        if (appended)
        {
          goto LABEL_48;
        }
      }

      if (a2)
      {
        switch(v15)
        {
          case 1u:
            DeviceMode = ot::Neighbor::GetDeviceMode(a2);
            appended = ot::Mle::Mle::TxMessage::AppendModeTlv(v18, DeviceMode);
            if (appended)
            {
              goto LABEL_48;
            }

            break;
          case 2u:
            Timeout = ot::Child::GetTimeout(a2);
            appended = ot::Mle::Mle::TxMessage::AppendTimeoutTlv(v18, Timeout);
            if (appended)
            {
              goto LABEL_48;
            }

            break;
          case 0xCu:
            NetworkDataType = ot::Neighbor::GetNetworkDataType(a2);
            appended = ot::Mle::Mle::TxMessage::AppendNetworkDataTlv(v18, NetworkDataType);
            if (appended)
            {
              goto LABEL_48;
            }

            appended = ot::Mle::Mle::TxMessage::AppendActiveAndPendingTimestampTlvs(v18);
            if (appended)
            {
              goto LABEL_48;
            }

            break;
          case 0x13u:
            appended = ot::Mle::Mle::TxMessage::AppendAddressRegistrationTlv(v18, a2);
            if (appended)
            {
              goto LABEL_48;
            }

            break;
          case 0x1Bu:
            SupervisionInterval = ot::Child::GetSupervisionInterval(a2);
            appended = ot::Mle::Mle::TxMessage::AppendSupervisionIntervalTlv(v18, SupervisionInterval);
            if (appended)
            {
              goto LABEL_48;
            }

            break;
          default:
            if (v15 == 86 && !ot::Neighbor::IsRxOnWhenIdle(a2))
            {
              appended = ot::Mle::Mle::TxMessage::AppendCslClockAccuracyTlv(v18);
              if (appended)
              {
                goto LABEL_48;
              }
            }

            break;
        }
      }

      ++v17;
    }

    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(a3);
    appended = ot::Mle::Mle::TxMessage::SendTo(v18, PeerAddr);
    if (!appended)
    {
      if (a2)
      {
        v12 = ot::Ip6::MessageInfo::GetPeerAddr(a3);
        Rloc16 = ot::Neighbor::GetRloc16(a2);
        ot::Mle::Mle::Log(0, 21, v12, Rloc16);
      }

      else
      {
        v10 = ot::Ip6::MessageInfo::GetPeerAddr(a3);
        ot::Mle::Mle::Log(0, 21, v10);
      }
    }
  }

  else
  {
    appended = 3;
  }

LABEL_48:
  if (appended)
  {
    if (v18)
    {
      ot::Message::Free(v18);
    }
  }
}

BOOL ot::Neighbor::GetNetworkDataType(ot::Neighbor *this)
{
  v3 = this;
  DeviceMode = ot::Neighbor::GetDeviceMode(this);
  return ot::Mle::DeviceMode::GetNetworkDataType(&DeviceMode);
}

{
  return ot::Neighbor::GetNetworkDataType(this);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)85,unsigned int>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned int>(a1, 0x55u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)85,unsigned int>>(a1, a2);
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)80,ot::Mle::ChannelTlvValue>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::FindTlv(a1, 0x50, a2, 3);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)80,ot::Mle::ChannelTlvValue>>(a1, a2);
}

void ot::Mle::MleRouter::HandleChildUpdateResponse(ot::Mle::MleRouter *this, ot::Tlv **a2)
{
  v52 = this;
  v51 = a2;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  ot::Mle::RxChallenge::RxChallenge(v54);
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v43 = 0;
  if (v51[3] && (v2 = ot::Neighbor::GetRloc16(v51[3]), !ot::Mle::IsRouterRloc16(v2)) && (v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this), ot::ChildTable::Contains(v3, v51[3])))
  {
    v43 = v51[3];
    ResponseTlv = ot::Mle::Mle::RxMessage::ReadResponseTlv(*v51, v54, v4, v5);
    if (ResponseTlv)
    {
      if (ResponseTlv != 23)
      {
        v50 = 0;
        goto LABEL_52;
      }

      if (!ot::Neighbor::IsStateValid(v43))
      {
        v50 = 8;
        goto LABEL_52;
      }

      ot::Mle::RxChallenge::Clear(v54);
    }

    else
    {
      Challenge = ot::Child::GetChallenge(v43);
      if (!ot::Mle::RxChallenge::operator==(v54, Challenge))
      {
        v50 = 8;
        goto LABEL_52;
      }
    }

    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v51[1]);
    Rloc16 = ot::Neighbor::GetRloc16(v43);
    ot::Mle::Mle::Log(1, 21, PeerAddr, Rloc16);
    v38 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)0,unsigned short>>(*v51, &v49);
    if (v38)
    {
      if (v38 != 23)
      {
        v50 = 6;
        goto LABEL_52;
      }
    }

    else
    {
      v9 = ot::Neighbor::GetRloc16(v43);
      if (v9 != v49)
      {
        ot::Mle::MleRouter::RemoveNeighbor(this, v43);
        goto LABEL_52;
      }
    }

    v36 = ot::Tlv::Find<ot::Mle::StatusTlv>(*v51, &v47);
    if (v36)
    {
      if (v36 != 23)
      {
        v50 = 6;
        goto LABEL_52;
      }
    }

    else if (v47 == 1)
    {
      ot::Mle::MleRouter::RemoveNeighbor(this, v43);
      goto LABEL_52;
    }

    v35 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)5,unsigned int>>(*v51, &v46);
    if (v35)
    {
      if (v35 != 23)
      {
        v50 = 6;
        goto LABEL_52;
      }
    }

    else
    {
      LinkFrameCounters = ot::Neighbor::GetLinkFrameCounters(v43);
      ot::Mac::LinkFrameCounters::SetAll(LinkFrameCounters, v46);
      ot::Neighbor::SetLinkAckFrameCounter(v43, v46);
    }

    v34 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)8,unsigned int>>(*v51, &v45);
    if (v34)
    {
      if (v34 != 23)
      {
        v50 = 0;
        goto LABEL_52;
      }
    }

    else
    {
      ot::Neighbor::SetMleFrameCounter(v43, v45);
    }

    v11 = ot::Ip6::MessageInfo::GetPeerAddr(v51[1]);
    ot::Ip6::Address::ToString(v11, v53);
    ot::String<(unsigned short)40>::AsCString(v53);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "%s Rx from %s linkFrameCounter=%d mleFrameCounter=%d", v12, v13, v14, v15, v16, v17, "HandleChildUpdateResponse");
    v33 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned int>>(*v51, &v48);
    if (v33)
    {
      if (v33 != 23)
      {
        v50 = 6;
        goto LABEL_52;
      }
    }

    else
    {
      ot::Child::SetTimeout(v43, v48);
    }

    v42 = 0;
    v32 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)27,unsigned short>>(*v51, &v42);
    if (v32)
    {
      if (v32 != 23)
      {
        v50 = 6;
        goto LABEL_52;
      }
    }

    else
    {
      ot::Child::SetSupervisionInterval(v43, v42);
    }

    v31 = ot::Mle::MleRouter::ProcessAddressRegistrationTlv(this, v51, v43);
    if (v31 && v31 != 23)
    {
      v50 = 6;
    }

    else
    {
      LeaderDataTlv = ot::Mle::Mle::RxMessage::ReadLeaderDataTlv(*v51, v44, v18, v19, v20, v21);
      if (LeaderDataTlv)
      {
        if (LeaderDataTlv != 23)
        {
          v50 = 6;
          goto LABEL_52;
        }
      }

      else
      {
        v30 = v43;
        NetworkDataType = ot::Neighbor::GetNetworkDataType(v43);
        DataVersion = ot::Mle::LeaderData::GetDataVersion(v44, NetworkDataType);
        ot::Child::SetNetworkDataVersion(v30, DataVersion);
      }

      v25 = ot::Mle::MleRouter::SetChildStateToValid(this, v43);
      v28 = v43;
      Now = ot::TimerMilli::GetNow(v25);
      ot::Neighbor::SetLastHeard(v28, Now);
      ot::Neighbor::SetKeySequence(v43, *(v51 + 5));
      LinkInfo = ot::Neighbor::GetLinkInfo(v43);
      AverageRss = ot::Message::GetAverageRss(*v51);
      ot::LinkQualityInfo::AddRss(LinkInfo, AverageRss);
      if (ot::Mle::RxChallenge::IsEmpty(v54))
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      *(v51 + 32) = v27;
    }
  }

  else
  {
    v6 = ot::Ip6::MessageInfo::GetPeerAddr(v51[1]);
    ot::Mle::Mle::Log(1, 22, v6);
    v50 = 23;
  }

LABEL_52:
  ot::Mle::Mle::LogProcessError(21, v50);
}

uint64_t ot::Mle::MleRouter::SetChildStateToValid(ot::Mle::MleRouter *this, ot::Child *a2)
{
  v8 = this;
  v7 = a2;
  result = ot::Neighbor::IsStateValid(a2);
  if ((result & 1) == 0)
  {
    ot::Neighbor::SetState(v7, 7);
    ot::ChildTable::StoreChild((this + 1200), v7);
    IgnoreError();
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MlrManager>(this);
    v4 = v7;
    ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::Array(v6);
    ot::MlrManager::UpdateProxiedSubscriptions(v3, v4, v6);
    return ot::NeighborTable::Signal((this + 344), 0, v7);
  }

  return result;
}

void ot::Mle::MleRouter::HandleDataRequest(ot::Mle::MleRouter *this, ot::Mle::Mle::RxInfo *a2)
{
  v18 = this;
  v17 = a2;
  TlvRequestTlv = 0;
  ot::Mle::Mle::TlvList::TlvList(v19);
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(*(v17 + 1));
  ot::Mle::Mle::Log(1, 7, PeerAddr);
  if (ot::Mle::Mle::RxInfo::IsNeighborStateValid(v17))
  {
    TlvRequestTlv = ot::Mle::Mle::RxMessage::ReadTlvRequestTlv(*v17, v19, v3, v4);
    if (TlvRequestTlv)
    {
      goto LABEL_15;
    }

    v13 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)22,ot::MeshCoP::Timestamp>>(*v17, v15);
    if (v13)
    {
      if (v13 != 23)
      {
        TlvRequestTlv = 6;
        goto LABEL_15;
      }
    }

    else
    {
      active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
      Timestamp = ot::MeshCoP::DatasetManager::GetTimestamp(active);
      if (ot::MeshCoP::Timestamp::operator==(v15, Timestamp, v7))
      {
        goto LABEL_9;
      }
    }

    ot::Mle::Mle::TlvList::Add(v19, 24);
LABEL_9:
    v12 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)23,ot::MeshCoP::Timestamp>>(*v17, v15);
    if (v12)
    {
      if (v12 != 23)
      {
        TlvRequestTlv = 6;
        goto LABEL_15;
      }
    }

    else
    {
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
      v9 = ot::MeshCoP::DatasetManager::GetTimestamp(v8);
      if (ot::MeshCoP::Timestamp::operator==(v15, v9, v10))
      {
LABEL_14:
        *(v17 + 32) = 2;
        ot::Mle::Mle::ProcessKeySequence(this, v17);
        v11 = ot::Ip6::MessageInfo::GetPeerAddr(*(v17 + 1));
        ot::Mle::MleRouter::SendDataResponse(this, v11, v19, 0, *v17);
        goto LABEL_15;
      }
    }

    ot::Mle::Mle::TlvList::Add(v19, 25);
    goto LABEL_14;
  }

  TlvRequestTlv = 8;
LABEL_15:
  ot::Mle::Mle::LogProcessError(7, TlvRequestTlv);
}

void ot::Mle::MleRouter::SendDataResponse(ot::Mle::MleRouter *this, const ot::Ip6::Address *a2, const ot::Mle::Mle::TlvList *a3, unsigned __int16 a4, const ot::Message *a5)
{
  appended = 0;
  v30 = 0;
  if (ot::Mle::Mle::IsSleepyRouter(this))
  {
    ot::Ip6::Address::ToString(a2, v36);
    v11 = ot::String<(unsigned short)40>::AsCString(v36);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "ThreadConnection: Supress sending Data Responses, dst: %s", v12, v13, v14, v15, v16, v17, v11);
  }

  else if (*(this + 129))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Suppressing Data Response - waiting for new network data", v5, v6, v7, v8, v9, v10, v22);
  }

  else
  {
    v30 = ot::Mle::Mle::NewMleMessage(this, 8);
    if (v30)
    {
      appended = ot::Mle::Mle::TxMessage::AppendSourceAddressTlv(v30);
      if (!appended)
      {
        appended = ot::Mle::Mle::TxMessage::AppendLeaderDataTlv(v30);
        if (!appended)
        {
          appended = ot::Mle::Mle::TxMessage::AppendActiveAndPendingTimestampTlvs(v30);
          if (!appended)
          {
            ot::Array<unsigned char,(unsigned short)32,unsigned char>::begin();
            v27 = v18;
            v26 = ot::Array<unsigned char,(unsigned short)32,unsigned char>::end(a3);
            while (v27 != v26)
            {
              v24 = *v27;
              switch(v24)
              {
                case 9:
                  appended = ot::Mle::Mle::TxMessage::AppendRouteTlv(v30, 0);
                  if (appended)
                  {
                    goto LABEL_40;
                  }

                  break;
                case 12:
                  Neighbor = ot::NeighborTable::FindNeighbor((this + 344), a2, 1);
                  if (Neighbor)
                  {
                    NetworkDataType = ot::Neighbor::GetNetworkDataType(Neighbor);
                    v19 = ot::Mle::Mle::TxMessage::AppendNetworkDataTlv(v30, NetworkDataType);
                  }

                  else
                  {
                    v19 = ot::Mle::Mle::TxMessage::AppendNetworkDataTlv(v30, 0);
                  }

                  appended = v19;
                  if (v19)
                  {
                    goto LABEL_40;
                  }

                  break;
                case 24:
                  appended = ot::Mle::Mle::TxMessage::AppendActiveDatasetTlv(v30);
                  if (appended)
                  {
                    goto LABEL_40;
                  }

                  break;
                case 25:
                  appended = ot::Mle::Mle::TxMessage::AppendPendingDatasetTlv(v30);
                  if (appended)
                  {
                    goto LABEL_40;
                  }

                  break;
                case 89:
                  if (!a5)
                  {
                    __assert_rtn("SendDataResponse", "mle_router.cpp", 3932, "aRequestMessage != nullptr");
                  }

                  v29 = ot::NeighborTable::FindNeighbor((this + 344), a2, 1);
                  if (!v29)
                  {
                    appended = 13;
                    goto LABEL_40;
                  }

                  v20 = ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Subject>(this);
                  appended = ot::LinkMetrics::Subject::AppendReport(v20, v30, a5, v29);
                  if (appended)
                  {
                    goto LABEL_40;
                  }

                  break;
              }

              ++v27;
            }

            if (a4)
            {
              v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
              ot::MeshForwarder::RemoveDataResponseMessages(v21);
              ot::Mle::Mle::RemoveDelayedDataResponseMessage(this);
              appended = ot::Mle::Mle::TxMessage::SendAfterDelay(v30, a2, a4);
              if (!appended)
              {
                ot::Mle::Mle::Log(2, 8, a2);
              }
            }

            else
            {
              appended = ot::Mle::Mle::TxMessage::SendTo(v30, a2);
              if (!appended)
              {
                ot::Mle::Mle::Log(0, 8, a2);
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
  }

LABEL_40:
  if (appended && v30)
  {
    ot::Message::Free(v30);
  }

  ot::Mle::Mle::LogSendError(8, appended);
}

uint64_t ot::Mle::MleRouter::HandleNetworkDataUpdateRouter(ot::Mle::MleRouter *this)
{
  v5 = this;
  ot::Mle::Mle::TlvList::TlvList(v6);
  result = ot::Mle::Mle::IsRouterOrLeader(this);
  if (result)
  {
    ot::Ip6::Address::SetToLinkLocalAllNodesMulticast(v4);
    ot::Mle::Mle::TlvList::Add(v6, 12);
    if (ot::Mle::Mle::IsLeader(this))
    {
      Uint16InRange = 0;
    }

    else
    {
      Uint16InRange = ot::Random::NonCrypto::GetUint16InRange(0, 0x1F4u);
    }

    ot::Mle::MleRouter::SendDataResponse(this, v4, v6, Uint16InRange, 0);
    return ot::Mle::MleRouter::SynchronizeChildNetworkData(this);
  }

  return result;
}

uint64_t ot::Child::GetNetworkDataVersion(ot::Child *this)
{
  return *(this + 449);
}

{
  return ot::Child::GetNetworkDataVersion(this);
}

void ot::Mle::MleRouter::HandleDiscoveryRequest(ot::Mle::MleRouter *this, ot::Ip6::MessageInfo **a2)
{
  v23 = this;
  v22 = a2;
  TlvValueOffsetRange = 0;
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
  ot::Mle::Mle::Log(1, 9, PeerAddr);
  ot::Tlv::SetLength(v19, 0);
  if (ot::Mle::MleRouter::IsRouterEligible(this))
  {
    if (ot::Mle::Mle::IsRxOnWhenIdle(this))
    {
      TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(*v22, 0x1A, &v18, v3);
      if (!TlvValueOffsetRange)
      {
        while (!ot::OffsetRange::IsEmpty(&v18))
        {
          TlvValueOffsetRange = ot::Tlv::ParsedInfo::ParseFrom(v20, *v22, &v18);
          if (TlvValueOffsetRange)
          {
            goto LABEL_26;
          }

          if ((v20[1] & 1) == 0)
          {
            if (v20[0] == 2)
            {
              v15 = *v22;
              Offset = ot::OffsetRange::GetOffset(&v18);
              TlvValueOffsetRange = ot::Tlv::Read<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(v15, Offset, v26);
              if (TlvValueOffsetRange)
              {
                goto LABEL_26;
              }

              v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ExtendedPanIdManager>(this);
              ot::MeshCoP::ExtendedPanIdManager::GetExtPanId(v5);
              if (!ot::Unequatable<ot::MeshCoP::ExtendedPanId>::operator!=(v6, v26))
              {
                TlvValueOffsetRange = 2;
                goto LABEL_26;
              }
            }

            else if (v20[0] == 128)
            {
              TlvValueOffsetRange = ot::Message::Read<ot::MeshCoP::DiscoveryRequestTlv>(*v22, &v18, v19);
              if (TlvValueOffsetRange)
              {
                goto LABEL_26;
              }

              if (!ot::MeshCoP::DiscoveryRequestTlv::IsValid(v19))
              {
                TlvValueOffsetRange = 6;
                goto LABEL_26;
              }
            }
          }

          Size = ot::Tlv::ParsedInfo::GetSize(v20);
          ot::OffsetRange::AdvanceOffset(&v18, Size);
        }

        if (!ot::MeshCoP::DiscoveryRequestTlv::IsValid(v19))
        {
          goto LABEL_25;
        }

        if (ot::CallbackBase<void (*)(otThreadDiscoveryRequestInfo const*,void *)>::IsSet(this + 4468))
        {
          v8 = ot::Ip6::MessageInfo::GetPeerAddr(v22[1]);
          Iid = ot::Ip6::Address::GetIid(v8);
          v9 = ot::AsCoreType<otExtAddress>(v24);
          ot::Ip6::InterfaceIdentifier::ConvertToExtAddress(Iid, v9);
          Version = ot::MeshCoP::DiscoveryRequestTlv::GetVersion(v19);
          v25 = v25 & 0xF0 | Version & 0xF;
          IsJoiner = ot::MeshCoP::DiscoveryRequestTlv::IsJoiner(v19);
          v25 = v25 & 0xEF | (16 * IsJoiner);
          v17 = v24;
          ot::Callback<void (*)(otThreadDiscoveryRequestInfo const*,void *),(ot::CallbackContextPosition)1>::Invoke<otThreadDiscoveryRequestInfo*>(this + 35744, &v17);
        }

        if (ot::MeshCoP::DiscoveryRequestTlv::IsJoiner(v19) && (v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this), (ot::NetworkData::Leader::IsJoiningAllowed(v12) & 1) == 0))
        {
          TlvValueOffsetRange = 8;
        }

        else
        {
LABEL_25:
          v13 = ot::Ip6::MessageInfo::GetPeerAddr(v22[1]);
          TlvValueOffsetRange = ot::Mle::MleRouter::SendDiscoveryResponse(this, v13, *v22);
        }
      }
    }

    else
    {
      TlvValueOffsetRange = 13;
    }
  }

  else
  {
    TlvValueOffsetRange = 13;
  }

LABEL_26:
  ot::Mle::Mle::LogProcessError(9, TlvValueOffsetRange);
}

uint64_t ot::Message::Read<ot::MeshCoP::DiscoveryRequestTlv>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 4u);
}

{
  return ot::Message::Read<ot::MeshCoP::DiscoveryRequestTlv>(a1, a2, a3);
}

BOOL ot::MeshCoP::DiscoveryRequestTlv::IsValid(ot::MeshCoP::DiscoveryRequestTlv *this)
{
  return ot::Tlv::GetLength(this) >= 2uLL;
}

{
  return ot::MeshCoP::DiscoveryRequestTlv::IsValid(this);
}

BOOL ot::Unequatable<ot::MeshCoP::ExtendedPanId>::operator!=(const void *a1, const void *a2)
{
  return !ot::Equatable<ot::MeshCoP::ExtendedPanId>::operator==(a1, a2);
}

{
  return ot::Unequatable<ot::MeshCoP::ExtendedPanId>::operator!=(a1, a2);
}

BOOL ot::CallbackBase<void (*)(otThreadDiscoveryRequestInfo const*,void *)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(otThreadDiscoveryRequestInfo const*,void *)>::IsSet(a1);
}

uint64_t ot::MeshCoP::DiscoveryRequestTlv::GetVersion(ot::MeshCoP::DiscoveryRequestTlv *this)
{
  return *(this + 2) >> 4;
}

{
  return ot::MeshCoP::DiscoveryRequestTlv::GetVersion(this);
}

BOOL ot::MeshCoP::DiscoveryRequestTlv::IsJoiner(ot::MeshCoP::DiscoveryRequestTlv *this)
{
  return (*(this + 2) & 8) != 0;
}

{
  return ot::MeshCoP::DiscoveryRequestTlv::IsJoiner(this);
}

uint64_t ot::Callback<void (*)(otThreadDiscoveryRequestInfo const*,void *),(ot::CallbackContextPosition)1>::Invoke<otThreadDiscoveryRequestInfo*>(uint64_t a1, void *a2)
{
  return (*a1)(*a2, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otThreadDiscoveryRequestInfo const*,void *),(ot::CallbackContextPosition)1>::Invoke<otThreadDiscoveryRequestInfo*>(a1, a2);
}

uint64_t ot::Mle::MleRouter::SendDiscoveryResponse(ot::Mle::MleRouter *this, const ot::Ip6::Address *a2, const ot::Message *a3)
{
  v33 = this;
  v32 = a2;
  v31 = a3;
  appended = 0;
  Length = 0;
  v29 = ot::Mle::Mle::NewMleMessage(this, 17);
  if (v29)
  {
    ot::Message::SetDirectTransmission(v29);
    PanId = ot::Message::GetPanId(v31);
    ot::Message::SetPanId(v29, PanId);
    ot::Mle::Tlv::SetType(v27, 26);
    appended = ot::Message::Append<ot::Mle::Tlv>(v29, v27);
    if (!appended)
    {
      Length = ot::Message::GetLength(v29);
      ot::MeshCoP::DiscoveryResponseTlv::Init(v26);
      ot::MeshCoP::DiscoveryResponseTlv::SetVersion(v26, 4);
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
      if ((*(ot::KeyManager::GetSecurityPolicy(v4) + 2) & 2) != 0)
      {
        v23 = v29;
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
        UdpPort = ot::MeshCoP::BorderAgent::GetUdpPort(v5);
        appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)15,unsigned short>>(v23, UdpPort);
        if (appended)
        {
          goto LABEL_17;
        }

        ot::MeshCoP::DiscoveryResponseTlv::SetNativeCommissioner(v26, 1);
      }

      else
      {
        ot::MeshCoP::DiscoveryResponseTlv::SetNativeCommissioner(v26, 0);
      }

      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
      if ((*(ot::KeyManager::GetSecurityPolicy(v7) + 2) & 0x10) != 0)
      {
        ot::MeshCoP::DiscoveryResponseTlv::SetCommercialCommissioningMode(v26, 1);
      }

      appended = ot::Tlv::AppendTo(v26, v29);
      if (!appended)
      {
        v22 = v29;
        v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ExtendedPanIdManager>(this);
        ot::MeshCoP::ExtendedPanIdManager::GetExtPanId(v8);
        appended = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(v22, v9);
        if (!appended)
        {
          v21 = v29;
          v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::NetworkNameManager>(this);
          ot::MeshCoP::NetworkNameManager::GetNetworkName(v10);
          ot::MeshCoP::NetworkName::GetAsCString(v11);
          appended = ot::Tlv::Append<ot::MeshCoP::NetworkNameTlv>(v21, v12, v13, v14, v15);
          if (!appended)
          {
            appended = ot::Mle::Mle::TxMessage::AppendSteeringDataTlv(v29);
            if (!appended)
            {
              v20 = v29;
              v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::JoinerRouter>(this);
              JoinerUdpPort = ot::MeshCoP::JoinerRouter::GetJoinerUdpPort(v16);
              appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(v20, JoinerUdpPort);
              if (!appended)
              {
                v18 = ot::Message::GetLength(v29);
                ot::Tlv::SetLength(v27, v18 - Length);
                ot::Message::Write<ot::Mle::Tlv>(v29, Length - 2, v27);
                Uint16InRange = ot::Random::NonCrypto::GetUint16InRange(0, 0xFBu);
                appended = ot::Mle::Mle::TxMessage::SendAfterDelay(v29, v32, Uint16InRange);
                if (!appended)
                {
                  ot::Mle::Mle::Log(2, 10, v32);
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

LABEL_17:
  if (appended && v29)
  {
    ot::Message::Free(v29);
  }

  ot::Mle::Mle::LogProcessError(10, appended);
  return appended;
}

uint64_t ot::MeshCoP::DiscoveryResponseTlv::Init(ot::MeshCoP::DiscoveryResponseTlv *this)
{
  ot::MeshCoP::Tlv::SetType(this, 129);
  result = ot::Tlv::SetLength(this, 2);
  *(this + 2) = 0;
  *(this + 3) = 0;
  return result;
}

{
  return ot::MeshCoP::DiscoveryResponseTlv::Init(this);
}

uint64_t ot::MeshCoP::DiscoveryResponseTlv::SetVersion(uint64_t this, char a2)
{
  *(this + 2) = *(this + 2) & 0xF | (16 * a2);
  return this;
}

{
  return ot::MeshCoP::DiscoveryResponseTlv::SetVersion(this, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)15,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 15, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)15,unsigned short>>(a1, a2);
}

uint64_t ot::MeshCoP::DiscoveryResponseTlv::SetNativeCommissioner(uint64_t this, char a2)
{
  if (a2)
  {
    *(this + 2) |= 8u;
  }

  else
  {
    *(this + 2) &= ~8u;
  }

  return this;
}

{
  return ot::MeshCoP::DiscoveryResponseTlv::SetNativeCommissioner(this, a2);
}

uint64_t ot::MeshCoP::DiscoveryResponseTlv::SetCommercialCommissioningMode(uint64_t this, char a2)
{
  if (a2)
  {
    *(this + 2) |= 4u;
  }

  else
  {
    *(this + 2) &= ~4u;
  }

  return this;
}

{
  return ot::MeshCoP::DiscoveryResponseTlv::SetCommercialCommissioningMode(this, a2);
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 2, a2, 8);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::MeshCoP::NetworkNameTlv>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 3, 0x10u, a2, a5);
}

{
  return ot::Tlv::Append<ot::MeshCoP::NetworkNameTlv>(a1, a2, a3, a4, a5);
}

uint64_t ot::Child::GetRequestTlv(ot::Child *this, unsigned __int8 a2)
{
  return *(this + a2 + 450);
}

{
  return ot::Child::GetRequestTlv(this, a2);
}

uint64_t ot::MeshForwarder::GetSendQueue(ot::MeshForwarder *this)
{
  return this + 8;
}

{
  return ot::MeshForwarder::GetSendQueue(this);
}

void ot::Mle::MleRouter::RemoveRouterLink(ot::Mle::MleRouter *this, ot::Router *a2)
{
  v2 = *(this + 130);
  if (v2 == 2)
  {
    if (a2 == (this + 192))
    {
      ot::Mle::Mle::BecomeDetached(this);
      IgnoreError();
    }
  }

  else if (v2 == 4 || v2 == 3)
  {
    ot::RouterTable::RemoveRouterLink((this + 30904), a2);
  }
}

_BYTE *ot::Mle::Mle::ClearParentCandidate(ot::Mle::Mle *this)
{
  return ot::Mle::Mle::ParentCandidate::Clear((this + 368));
}

{
  return ot::Mle::Mle::ClearParentCandidate(this);
}

uint64_t ot::Mle::MleRouter::SetPreferredRouterId(ot::Mle::MleRouter *this, char a2)
{
  v4 = 0;
  if (ot::Mle::Mle::IsDetached(this) || ot::Mle::Mle::IsDisabled(this))
  {
    *(this + 35690) = a2;
  }

  else
  {
    return 13;
  }

  return v4;
}

uint64_t ot::Mle::MleRouter::SetPairingDeviceExtAddr(ot::Mle::MleRouter *this, const ot::Mac::ExtAddress *a2)
{
  result = ot::Mle::MleRouter::ResetPairingDeviceExtAddr(this);
  *(this + 35681) = *a2;
  return result;
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)1,ot::Mac::ExtAddress>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 1, a2, 8);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)1,ot::Mac::ExtAddress>>(a1, a2);
}

uint64_t ot::Mle::MleRouter::HandleAddressSolicitResponse(unsigned __int8 *a1, ot::Tlv *a2, ot::Ip6::MessageInfo *a3, int a4)
{
  v49 = a1;
  v48 = a2;
  v47 = a3;
  v46 = a4;
  v45 = 0;
  *v44 = 0;
  v43 = 0;
  v42 = 0;
  a1[35632] &= ~2u;
  if (!v46)
  {
    if (v48)
    {
      if (v47)
      {
        if (ot::Coap::Message::GetCode(v48) == 68)
        {
          PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v47);
          ot::Mle::Mle::Log(1, 18, PeerAddr);
          if (!ot::Tlv::Find<ot::ThreadStatusTlv>(v48, &v45))
          {
            if (v45)
            {
              a1[35632] = a1[35632] & 0xFB | 4;
              v32 = a1[35690];
              ot::Mle::IsRouterIdValid(v32);
              ot::Mle::MleRouter::HasChildren(a1);
              ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Address Solicit Rejected mPreviousRouterId=%d IsPrevRouterIdValid=%d HasChildren=%d", v5, v6, v7, v8, v9, v10, v32);
              if (ot::Mle::IsRouterIdValid(a1[35690]))
              {
                if (ot::Mle::MleRouter::HasChildren(a1))
                {
                  ot::Mle::MleRouter::RemoveChildren(a1);
                }

                ot::Mle::MleRouter::SetRouterId(a1, 63);
              }
            }

            else if (!ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v48, v44))
            {
              v43 = ot::Mle::RouterIdFromRloc16(*v44);
              if (!ot::Tlv::FindTlv<ot::ThreadRouterMaskTlv>(v48, v54, v11, v12, v13, v14) && ot::ThreadRouterMaskTlv::IsValid(v54))
              {
                ot::Mle::MleRouter::SetRouterId(a1, v43);
                v15 = ot::Mle::Rloc16FromRouterId(a1[35689]);
                ot::Mle::MleRouter::SetStateRouter(a1, v15);
                ot::RouterTable::ClearNeighbors((a1 + 30904));
                IdSequence = ot::ThreadRouterMaskTlv::GetIdSequence(v54);
                AssignedRouterIdMask = ot::ThreadRouterMaskTlv::GetAssignedRouterIdMask(v54);
                ot::RouterTable::UpdateRouterIdSet((a1 + 30904), IdSequence, AssignedRouterIdMask);
                ot::RouterTable::FindRouterById((a1 + 30904), v43);
                v42 = v17;
                if (v17)
                {
                  v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
                  ExtAddress = ot::Mac::Mac::GetExtAddress(v18);
                  ot::Neighbor::SetExtAddress(v42, ExtAddress);
                  ot::Router::SetNextHopToInvalid(v42);
                  RouterId = ot::Neighbor::GetRouterId((a1 + 192));
                  ot::RouterTable::FindRouterById((a1 + 30904), RouterId);
                  v42 = v21;
                  if (v21)
                  {
                    ot::Router::SetFrom(v42, (a1 + 192));
                    ot::Neighbor::SetState(v42, 7);
                    ot::InstanceLocator::GetInstance(a1);
                    if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) != 0 && (ot::Mle::Mle::GetRole(a1) == 4 || ot::Mle::Mle::GetRole(a1) == 3))
                    {
                      Role = ot::Mle::Mle::GetRole(a1);
                      ot::Mle::Mle::SetThreadCoexConfig(a1, 0, Role, a1[132]);
                    }

                    ot::Router::SetNextHopToInvalid(v42);
                    if (ot::RouterTable::GetPathCostToLeader((a1 + 30904)) >= 16)
                    {
                      ot::RouterTable::GetLeader((a1 + 30904));
                      v41 = v23;
                      if (!v23)
                      {
                        __assert_rtn("HandleAddressSolicitResponse", "mle_router.cpp", 4248, "leader != nullptr");
                      }

                      Rloc16 = ot::Neighbor::GetRloc16((a1 + 192));
                      v30 = ot::Mle::RouterIdFromRloc16(Rloc16);
                      LeaderCost = ot::Parent::GetLeaderCost((a1 + 192));
                      ot::Router::SetNextHopAndCost(v41, v30, LeaderCost);
                    }

                    if (ot::Neighbor::GetVersion((a1 + 192)) < 4)
                    {
                      ot::Mle::MleRouter::SendLinkRequest(a1, (a1 + 192));
                      IgnoreError();
                    }

                    ot::Mle::MleRouter::SendAdvertisement(a1);
                    v26 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(a1);
                    v39 = ot::ChildTable::Iterate(v26, 2);
                    v40 = &v39;
                    v52 = ot::ChildTable::IteratorBuilder::begin(&v39);
                    v53 = v27;
                    v37 = v52;
                    v38 = v27;
                    v50 = ot::ChildTable::IteratorBuilder::end(v40);
                    v51 = v28;
                    v35 = v50;
                    v36 = v28;
                    while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v37, &v35))
                    {
                      v34 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v37);
                      ot::Mle::MleRouter::SendChildIdResponse(a1, v34);
                      IgnoreError();
                      ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v37);
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

  return ot::Mle::Mle::InformPreviousChannel(a1);
}

uint64_t ot::Tlv::FindTlv<ot::ThreadRouterMaskTlv>(ot::Tlv *a1, char *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  return ot::Tlv::FindTlv(a1, 7, 0xBu, a2, a5, a6);
}

{
  return ot::Tlv::FindTlv<ot::ThreadRouterMaskTlv>(a1, a2, a3, a4, a5, a6);
}

BOOL ot::ThreadRouterMaskTlv::IsValid(ot::ThreadRouterMaskTlv *this)
{
  return ot::Tlv::GetLength(this) >= 9uLL;
}

{
  return ot::ThreadRouterMaskTlv::IsValid(this);
}

uint64_t ot::ThreadRouterMaskTlv::GetIdSequence(ot::ThreadRouterMaskTlv *this)
{
  return *(this + 2);
}

{
  return ot::ThreadRouterMaskTlv::GetIdSequence(this);
}

uint64_t ot::ThreadRouterMaskTlv::GetAssignedRouterIdMask(ot::ThreadRouterMaskTlv *this)
{
  return this + 3;
}

{
  return ot::ThreadRouterMaskTlv::GetAssignedRouterIdMask(this);
}

void ot::RouterTable::GetLeader(ot::RouterTable *this)
{
  ot::AsConst<ot::RouterTable>();
  ot::RouterTable::GetLeader(v1);
  ot::AsNonConst<ot::Router>();
}

{
  ot::RouterTable::GetLeader(this);
}

uint64_t ot::Parent::GetLeaderCost(ot::Parent *this)
{
  return *(this + 142);
}

{
  return ot::Parent::GetLeaderCost(this);
}

uint64_t ot::Mle::MleRouter::SetChildRouterLinks(ot::Mle::MleRouter *this, char a2)
{
  v4 = 0;
  if (ot::Mle::Mle::IsDisabled(this))
  {
    *(this + 35704) = a2;
  }

  else
  {
    return 13;
  }

  return v4;
}

uint64_t ot::Mle::MleRouter::IsExpectedToBecomeRouterSoon(ot::Mle::MleRouter *this)
{
  v4 = 0;
  if (ot::Mle::MleRouter::IsRouterEligible(this))
  {
    v4 = 0;
    if (ot::Mle::Mle::IsChild(this))
    {
      v4 = 0;
      if ((*(this + 35632) & 4) == 0)
      {
        if (!ot::Mle::MleRouter::RouterRoleTransition::IsPending((this + 35702)) || (LOBYTE(v2) = 1, ot::Mle::MleRouter::RouterRoleTransition::GetTimeout((this + 35702)) > 10))
        {
          v2 = (*(this + 35632) >> 1) & 1;
        }

        v4 = v2;
      }
    }
  }

  return v4 & 1;
}

void ot::Mle::MleRouter::HandleTmf<(ot::Uri)4>(_BYTE *a1, ot::Tlv *a2, ot::Ip6::MessageInfo *a3)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = 0;
  v25 = 1;
  *&v24[2] = 0;
  *v24 = 0;
  v23 = 0;
  if (a1[130] != 4)
  {
    v26 = 13;
    goto LABEL_30;
  }

  if (!ot::Coap::Message::IsConfirmablePostRequest(v28))
  {
    v26 = 6;
    goto LABEL_30;
  }

  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v27);
  ot::Mle::Mle::Log(1, 19, PeerAddr);
  v26 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)1,ot::Mac::ExtAddress>>(v28, v31);
  if (v26)
  {
    goto LABEL_30;
  }

  v26 = ot::Tlv::Find<ot::ThreadStatusTlv>(v28, &v23);
  if (v26)
  {
    goto LABEL_30;
  }

  v21 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v28, v24);
  if (v21)
  {
    if (v21 != 23)
    {
      v26 = 6;
      goto LABEL_30;
    }

    *v24 = -2;
  }

  ot::RouterTable::FindRouter((a1 + 30904), v31);
  *&v24[2] = v4;
  if (v4)
  {
    v25 = 0;
    goto LABEL_30;
  }

  if (v23 == 2)
  {
    if (ot::RouterTable::GetActiveRouterCount((a1 + 30904)) >= a1[35629])
    {
      goto LABEL_30;
    }
  }

  else if (v23 != 4 && v23 != 3)
  {
    if (v23 != 5)
    {
      v25 = 6;
      goto LABEL_30;
    }

    if (ot::RouterTable::GetActiveRouterCount((a1 + 30904)) >= a1[35629])
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
      if (ot::NetworkData::NetworkData::CountBorderRouters(v5, 1) >= 2)
      {
        ot::Mac::ExtAddress::ToString(v31, v30);
        v6 = ot::String<(unsigned short)17>::AsCString(v30);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Rejecting BR %s router role req - have %u BR routers", v7, v8, v9, v10, v11, v12, v6);
        goto LABEL_30;
      }
    }
  }

  if (*v24 != 65534)
  {
    v13 = ot::Mle::RouterIdFromRloc16(*v24);
    *&v24[2] = ot::RouterTable::Allocate((a1 + 30904), v13);
    if (*&v24[2])
    {
      v14 = ot::Mle::RouterIdFromRloc16(*v24);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Router id %u requested and provided!", v15, v16, v17, v18, v19, v20, v14);
    }
  }

  if (*&v24[2] || (*&v24[2] = ot::RouterTable::Allocate((a1 + 30904))) != 0)
  {
    ot::Neighbor::SetExtAddress(*&v24[2], v31);
    v25 = 0;
  }

LABEL_30:
  if (!v26)
  {
    ot::Mle::MleRouter::SendAddressSolicitResponse(a1, v28, v25, *&v24[2], v27);
  }
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)1,ot::Mac::ExtAddress>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::FindTlv(a1, 1, a2, 8);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)1,ot::Mac::ExtAddress>>(a1, a2);
}

void ot::Mle::MleRouter::SendAddressSolicitResponse(uint64_t a1, const ot::Coap::Message *a2, unsigned __int8 a3, ot::Neighbor *a4, ot::Ip6::MessageInfo *a5)
{
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  v18 = ot::Coap::CoapBase::NewPriorityResponseMessage(v5, a2);
  if (v18)
  {
    if (!ot::Tlv::Append<ot::ThreadStatusTlv>(v18, a3))
    {
      if (!a4 || (v6 = ot::Neighbor::GetRloc16(a4), !ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v18, v6)) && (ot::ThreadRouterMaskTlv::Init(v23), RouterIdSequence = ot::RouterTable::GetRouterIdSequence((a1 + 30904)), ot::ThreadRouterMaskTlv::SetIdSequence(v23, RouterIdSequence), AssignedRouterIdMask = ot::ThreadRouterMaskTlv::GetAssignedRouterIdMask(v23), ot::RouterTable::GetRouterIdSet((a1 + 30904), AssignedRouterIdMask), !ot::Tlv::AppendTo(v23, v18)))
      {
        v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
        if (!ot::Coap::CoapBase::SendMessage(v9, v18, a5))
        {
          v18 = 0;
          PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(a5);
          ot::Mle::Mle::Log(0, 18, PeerAddr);
          if (!a3)
          {
            if (a4)
            {
              v11 = ot::Ip6::MessageInfo::GetPeerAddr(a5);
              if (ot::Mle::Mle::IsRoutingLocator(a1, v11))
              {
                v12 = ot::Ip6::MessageInfo::GetPeerAddr(a5);
                Iid = ot::Ip6::Address::GetIid(v12);
                Locator = ot::Ip6::InterfaceIdentifier::GetLocator(Iid);
                if (Locator != ot::Neighbor::GetRloc16(a4))
                {
                  Rloc16 = ot::Mle::Mle::GetRloc16(a1);
                  if (!ot::Mle::RouterIdMatch(Locator, Rloc16))
                  {
                    v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(a1);
                    ot::AddressResolver::RemoveEntriesForRloc16(v15, Locator);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (v18)
  {
    ot::Message::Free(v18);
  }
}

void *ot::ThreadRouterMaskTlv::Init(ot::ThreadRouterMaskTlv *this)
{
  ot::ThreadTlv::SetType(this, 7);
  ot::Tlv::SetLength(this, 9);
  return ot::Clearable<ot::Mle::RouterIdSet>::Clear((this + 3));
}

{
  return ot::ThreadRouterMaskTlv::Init(this);
}

uint64_t ot::ThreadRouterMaskTlv::SetIdSequence(uint64_t this, char a2)
{
  *(this + 2) = a2;
  return this;
}

{
  return ot::ThreadRouterMaskTlv::SetIdSequence(this, a2);
}

void ot::Mle::MleRouter::HandleTmf<(ot::Uri)3>(_BYTE *a1, ot::Coap::Message *a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  *&v10[1] = a3;
  v10[0] = 0;
  if (a1[130] == 4 && ot::Coap::Message::IsConfirmablePostRequest(v11))
  {
    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(*&v10[1]);
    ot::Mle::Mle::Log(1, 16, PeerAddr);
    if (!ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v11, v10) && !ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)1,ot::Mac::ExtAddress>>(v11, v13))
    {
      v9 = ot::Mle::RouterIdFromRloc16(v10[0]);
      ot::RouterTable::FindRouterById((a1 + 30904), v9);
      if (v4)
      {
        ot::Neighbor::GetExtAddress(v4);
        if (ot::Equatable<ot::Mac::ExtAddress>::operator==(v5, v13))
        {
          ot::RouterTable::Release((a1 + 30904), v9);
          IgnoreError();
          v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
          if (!ot::Coap::CoapBase::SendEmptyAck(v6, v11, *&v10[1]))
          {
            v7 = ot::Ip6::MessageInfo::GetPeerAddr(*&v10[1]);
            ot::Mle::Mle::Log(0, 17, v7);
          }
        }
      }
    }
  }
}

uint64_t ot::Mle::MleRouter::FillConnectivityTlv(ot::Mle::MleRouter *this, ot::Mle::ConnectivityTlv *a2)
{
  if (*(this + 35706) == -2)
  {
    NumChildren = ot::ChildTable::GetNumChildren(this + 600, 0);
    MaxChildrenAllowed = ot::ChildTable::GetMaxChildrenAllowed((this + 1200));
    if (MaxChildrenAllowed - NumChildren < MaxChildrenAllowed / 3)
    {
      ot::Mle::ConnectivityTlv::SetParentPriority(a2, 255);
    }

    else
    {
      ot::Mle::ConnectivityTlv::SetParentPriority(a2, 0);
    }
  }

  else
  {
    ot::Mle::ConnectivityTlv::SetParentPriority(a2, *(this + 35706));
  }

  ot::Mle::ConnectivityTlv::SetLinkQuality1(a2, 0);
  ot::Mle::ConnectivityTlv::SetLinkQuality2(a2, 0);
  ot::Mle::ConnectivityTlv::SetLinkQuality3(a2, 0);
  if (ot::Mle::Mle::IsChild(this))
  {
    LinkQualityIn = ot::Neighbor::GetLinkQualityIn((this + 192));
    ot::Mle::ConnectivityTlv::IncrementLinkQuality(a2, LinkQualityIn);
  }

  v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
  ot::RouterTable::begin(v14);
  v13 = v3;
  v12 = ot::RouterTable::end(v14);
  while (v13 != v12)
  {
    Rloc16 = ot::Neighbor::GetRloc16(v13);
    if (Rloc16 != ot::Mle::Mle::GetRloc16(this) && ot::Neighbor::IsStateValid(v13))
    {
      TwoWayLinkQuality = ot::Router::GetTwoWayLinkQuality(v13);
      ot::Mle::ConnectivityTlv::IncrementLinkQuality(a2, TwoWayLinkQuality);
    }

    v13 = (v13 + 144);
  }

  ActiveRouterCount = ot::RouterTable::GetActiveRouterCount((this + 30904));
  ot::Mle::ConnectivityTlv::SetActiveRouters(a2, ActiveRouterCount);
  PathCostToLeader = ot::RouterTable::GetPathCostToLeader((this + 30904));
  v7 = ot::Min<unsigned char>(PathCostToLeader, 0x10u);
  ot::Mle::ConnectivityTlv::SetLeaderCost(a2, v7);
  RouterIdSequence = ot::RouterTable::GetRouterIdSequence((this + 30904));
  ot::Mle::ConnectivityTlv::SetIdSequence(a2, RouterIdSequence);
  ot::Mle::ConnectivityTlv::SetSedBufferSize(a2, 0x500u);
  return ot::Mle::ConnectivityTlv::SetSedDatagramCount(a2, 1);
}

uint64_t ot::Mle::ConnectivityTlv::SetLinkQuality1(uint64_t this, char a2)
{
  *(this + 5) = a2;
  return this;
}

{
  return ot::Mle::ConnectivityTlv::SetLinkQuality1(this, a2);
}

uint64_t ot::Mle::ConnectivityTlv::SetLinkQuality2(uint64_t this, char a2)
{
  *(this + 4) = a2;
  return this;
}

{
  return ot::Mle::ConnectivityTlv::SetLinkQuality2(this, a2);
}

uint64_t ot::Mle::ConnectivityTlv::SetLinkQuality3(uint64_t this, char a2)
{
  *(this + 3) = a2;
  return this;
}

{
  return ot::Mle::ConnectivityTlv::SetLinkQuality3(this, a2);
}

uint64_t ot::Neighbor::GetLinkQualityIn(ot::Neighbor *this)
{
  LinkInfo = ot::Neighbor::GetLinkInfo(this);
  return ot::LinkQualityInfo::GetLinkQuality(LinkInfo);
}

{
  return ot::Neighbor::GetLinkQualityIn(this);
}

uint64_t ot::Mle::ConnectivityTlv::SetActiveRouters(uint64_t this, char a2)
{
  *(this + 8) = a2;
  return this;
}

{
  return ot::Mle::ConnectivityTlv::SetActiveRouters(this, a2);
}

uint64_t ot::Mle::ConnectivityTlv::SetLeaderCost(uint64_t this, char a2)
{
  *(this + 6) = a2;
  return this;
}

{
  return ot::Mle::ConnectivityTlv::SetLeaderCost(this, a2);
}

uint64_t ot::Mle::ConnectivityTlv::SetIdSequence(uint64_t this, char a2)
{
  *(this + 7) = a2;
  return this;
}

{
  return ot::Mle::ConnectivityTlv::SetIdSequence(this, a2);
}

uint64_t ot::Mle::ConnectivityTlv::SetSedBufferSize(ot::Mle::ConnectivityTlv *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 9) = result;
  return result;
}

{
  return ot::Mle::ConnectivityTlv::SetSedBufferSize(this, a2);
}

uint64_t ot::Mle::ConnectivityTlv::SetSedDatagramCount(uint64_t this, char a2)
{
  *(this + 11) = a2;
  return this;
}

{
  return ot::Mle::ConnectivityTlv::SetSedDatagramCount(this, a2);
}

uint64_t ot::Mle::MleRouter::NeighborHasComparableConnectivity(ot::Mle::MleRouter *this, const ot::Mle::RouteTlv *a2, unsigned __int8 a3)
{
  v11 = 1;
  v10 = 0;
  v9 = 0;
  while (v10 <= 0x3Eu)
  {
    if (v10 != *(this + 35689) && v10 != a3)
    {
      RouterById = ot::RouterTable::FindRouterById((this + 30904), v10);
      if (RouterById)
      {
        if (ot::Neighbor::IsStateValid(RouterById))
        {
          TwoWayLinkQuality = ot::Router::GetTwoWayLinkQuality(RouterById);
          if (TwoWayLinkQuality >= 2u)
          {
            if (!ot::Mle::RouteTlv::IsRouterIdSet(a2, v10))
            {
              v11 = 0;
              return v11 & 1;
            }

            LinkQualityIn = ot::Mle::RouteTlv::GetLinkQualityIn(a2, v9);
            LinkQualityOut = ot::Mle::RouteTlv::GetLinkQualityOut(a2, v9);
            if (ot::Min<ot::LinkQuality>(LinkQualityIn, LinkQualityOut) < TwoWayLinkQuality)
            {
              v11 = 0;
              return v11 & 1;
            }
          }
        }
      }
    }

    v9 += ot::Mle::RouteTlv::IsRouterIdSet(a2, v10++);
  }

  return v11 & 1;
}

uint64_t ot::Min<ot::LinkQuality>(unsigned __int8 a1, unsigned __int8 a2)
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
  return ot::Min<ot::LinkQuality>(a1, a2);
}

uint64_t ot::Mle::RouteTlv::GetLinkQualityOut(ot::Mle::RouteTlv *this, unsigned __int8 a2)
{
  return (*(this + a2 + 11) & 0xC0) >> 6;
}

{
  return ot::Mle::RouteTlv::GetLinkQualityOut(this, a2);
}

uint64_t ot::Mle::MleRouter::SetAssignParentPriority(ot::Mle::MleRouter *this, char a2)
{
  v3 = 0;
  if (a2 <= 1 && a2 >= -2)
  {
    *(this + 35706) = a2;
  }

  else
  {
    return 7;
  }

  return v3;
}

uint64_t ot::Mle::MleRouter::GetMaxChildTimeout(ot::Mle::MleRouter *this, unsigned int *a2)
{
  v18 = this;
  v17 = a2;
  v16 = 23;
  *a2 = 0;
  if (ot::Mle::Mle::IsRouterOrLeader(this))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    v14 = ot::ChildTable::Iterate(v2, 0);
    v15 = &v14;
    v21 = ot::ChildTable::IteratorBuilder::begin(&v14);
    v22 = v3;
    v12 = v21;
    v13 = v3;
    v19 = ot::ChildTable::IteratorBuilder::end(v15);
    v20 = v4;
    v10 = v19;
    v11 = v4;
    while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v12, &v10))
    {
      v9 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v12);
      if (!ot::Neighbor::IsFullThreadDevice(v9))
      {
        Timeout = ot::Child::GetTimeout(v9);
        if (Timeout > *v17)
        {
          v6 = ot::Child::GetTimeout(v9);
          *v17 = v6;
        }

        v16 = 0;
      }

      ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v12);
    }
  }

  else
  {
    return 13;
  }

  return v16;
}

_BYTE *ot::Mle::MleRouter::RouterRoleTransition::RouterRoleTransition(_BYTE *this)
{
  *this = 0;
  this[1] = 5;
  return this;
}

uint64_t ot::Array<ot::Router,(unsigned short)32,unsigned char>::GetLength(uint64_t a1)
{
  return *(a1 + 4608);
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::GetLength(a1);
}

BOOL ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsInArrayBuffer(unint64_t a1, unint64_t a2)
{
  v3 = 0;
  if (a1 <= a2)
  {
    return a2 < ot::GetArrayEnd<ot::Router,(unsigned short)32>(a1);
  }

  return v3;
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsInArrayBuffer(a1, a2);
}

uint64_t ot::GetArrayEnd<ot::Router,(unsigned short)32>(uint64_t a1)
{
  return a1 + 4608;
}

{
  return ot::GetArrayEnd<ot::Router,(unsigned short)32>(a1);
}

BOOL ot::Neighbor::IsThreadVersion1p2OrHigher(ot::Neighbor *this)
{
  v2 = 0;
  if ((*(this + 30) & 0xF) != 0)
  {
    return *(this + 18) >= 3u;
  }

  return v2;
}

{
  return ot::Neighbor::IsThreadVersion1p2OrHigher(this);
}

uint64_t ot::BitVector<(unsigned short)15>::HasAny(_BYTE *a1)
{
  v3 = 0;
  for (i = a1; i != a1 + 2; ++i)
  {
    if (*i)
    {
      v3 = 1;
      return v3 & 1;
    }
  }

  return v3 & 1;
}

{
  return ot::BitVector<(unsigned short)15>::HasAny(a1);
}

BOOL ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsFull(uint64_t a1)
{
  v2 = *(a1 + 240);
  return v2 == ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetMaxSize();
}

{
  return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsFull(a1);
}

uint64_t ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetMaxSize()
{
  return 15;
}

{
  return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetMaxSize();
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otHistoryTrackerIterator>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t ot::Utils::HistoryTracker::Iterator::Init(ot::Utils::HistoryTracker::Iterator *this)
{
  ot::Utils::HistoryTracker::Iterator::ResetEntryNumber(this);
  return ot::Utils::HistoryTracker::Iterator::SetInitTime(this);
}

{
  return ot::Utils::HistoryTracker::Iterator::Init(this);
}

uint64_t otHistoryTrackerIterateNetInfoHistory(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    __assert_rtn("otHistoryTrackerIterateNetInfoHistory", "history_tracker_api.cpp", 52, "(aEntryAge) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Utils::HistoryTracker>(v3);
  v4 = ot::AsCoreType<otHistoryTrackerIterator>(a2);
  return ot::Utils::HistoryTracker::IterateNetInfoHistory(v6, v4, a3);
}

uint64_t ot::Utils::HistoryTracker::IterateNetInfoHistory(ot::Utils::HistoryTracker *this, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::Iterate(this + 4, a2, a3);
}

{
  return ot::Utils::HistoryTracker::IterateNetInfoHistory(this, a2, a3);
}

uint64_t otHistoryTrackerIterateUnicastAddressHistory(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    __assert_rtn("otHistoryTrackerIterateUnicastAddressHistory", "history_tracker_api.cpp", 62, "(aEntryAge) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Utils::HistoryTracker>(v3);
  v4 = ot::AsCoreType<otHistoryTrackerIterator>(a2);
  return ot::Utils::HistoryTracker::IterateUnicastAddressHistory(v6, v4, a3);
}

uint64_t ot::Utils::HistoryTracker::IterateUnicastAddressHistory(ot::Utils::HistoryTracker *this, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerUnicastAddressInfo,(unsigned short)20>::Iterate(this + 520, a2, a3);
}

{
  return ot::Utils::HistoryTracker::IterateUnicastAddressHistory(this, a2, a3);
}

uint64_t otHistoryTrackerIterateMulticastAddressHistory(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    __assert_rtn("otHistoryTrackerIterateMulticastAddressHistory", "history_tracker_api.cpp", 73, "(aEntryAge) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Utils::HistoryTracker>(v3);
  v4 = ot::AsCoreType<otHistoryTrackerIterator>(a2);
  return ot::Utils::HistoryTracker::IterateMulticastAddressHistory(v6, v4, a3);
}

uint64_t ot::Utils::HistoryTracker::IterateMulticastAddressHistory(ot::Utils::HistoryTracker *this, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMulticastAddressInfo,(unsigned short)20>::Iterate(this + 1164, a2, a3);
}

{
  return ot::Utils::HistoryTracker::IterateMulticastAddressHistory(this, a2, a3);
}

uint64_t otHistoryTrackerIterateRxHistory(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    __assert_rtn("otHistoryTrackerIterateRxHistory", "history_tracker_api.cpp", 83, "(aEntryAge) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Utils::HistoryTracker>(v3);
  v4 = ot::AsCoreType<otHistoryTrackerIterator>(a2);
  return ot::Utils::HistoryTracker::IterateRxHistory(v6, v4, a3);
}

uint64_t ot::Utils::HistoryTracker::IterateRxHistory(ot::Utils::HistoryTracker *this, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::Iterate(this + 1728, a2, a3);
}

{
  return ot::Utils::HistoryTracker::IterateRxHistory(this, a2, a3);
}

uint64_t otHistoryTrackerIterateTxHistory(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    __assert_rtn("otHistoryTrackerIterateTxHistory", "history_tracker_api.cpp", 92, "(aEntryAge) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Utils::HistoryTracker>(v3);
  v4 = ot::AsCoreType<otHistoryTrackerIterator>(a2);
  return ot::Utils::HistoryTracker::IterateTxHistory(v6, v4, a3);
}

uint64_t ot::Utils::HistoryTracker::IterateTxHistory(ot::Utils::HistoryTracker *this, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::Iterate(this + 3332, a2, a3);
}

{
  return ot::Utils::HistoryTracker::IterateTxHistory(this, a2, a3);
}

uint64_t otHistoryTrackerIterateNeighborHistory(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    __assert_rtn("otHistoryTrackerIterateNeighborHistory", "history_tracker_api.cpp", 101, "(aEntryAge) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Utils::HistoryTracker>(v3);
  v4 = ot::AsCoreType<otHistoryTrackerIterator>(a2);
  return ot::Utils::HistoryTracker::IterateNeighborHistory(v6, v4, a3);
}

uint64_t ot::Utils::HistoryTracker::IterateNeighborHistory(ot::Utils::HistoryTracker *this, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNeighborInfo,(unsigned short)64>::Iterate(this + 4936, a2, a3);
}

{
  return ot::Utils::HistoryTracker::IterateNeighborHistory(this, a2, a3);
}

uint64_t otHistoryTrackerIterateRouterHistory(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    __assert_rtn("otHistoryTrackerIterateRouterHistory", "history_tracker_api.cpp", 110, "(aEntryAge) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Utils::HistoryTracker>(v3);
  v4 = ot::AsCoreType<otHistoryTrackerIterator>(a2);
  return ot::Utils::HistoryTracker::IterateRouterHistory(v6, v4, a3);
}

uint64_t ot::Utils::HistoryTracker::IterateRouterHistory(ot::Utils::HistoryTracker *this, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerRouterInfo,(unsigned short)256>::Iterate(this + 5964, a2, a3);
}

{
  return ot::Utils::HistoryTracker::IterateRouterHistory(this, a2, a3);
}

uint64_t otHistoryTrackerIterateOnMeshPrefixHistory(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    __assert_rtn("otHistoryTrackerIterateOnMeshPrefixHistory", "history_tracker_api.cpp", 119, "(aEntryAge) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Utils::HistoryTracker>(v3);
  v4 = ot::AsCoreType<otHistoryTrackerIterator>(a2);
  return ot::Utils::HistoryTracker::IterateOnMeshPrefixHistory(v6, v4, a3);
}

uint64_t ot::Utils::HistoryTracker::IterateOnMeshPrefixHistory(ot::Utils::HistoryTracker *this, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerOnMeshPrefixInfo,(unsigned short)32>::Iterate(this + 7760, a2, a3);
}

{
  return ot::Utils::HistoryTracker::IterateOnMeshPrefixHistory(this, a2, a3);
}

uint64_t otHistoryTrackerIterateExternalRouteHistory(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    __assert_rtn("otHistoryTrackerIterateExternalRouteHistory", "history_tracker_api.cpp", 130, "(aEntryAge) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Utils::HistoryTracker>(v3);
  v4 = ot::AsCoreType<otHistoryTrackerIterator>(a2);
  return ot::Utils::HistoryTracker::IterateExternalRouteHistory(v6, v4, a3);
}

uint64_t ot::Utils::HistoryTracker::IterateExternalRouteHistory(ot::Utils::HistoryTracker *this, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerExternalRouteInfo,(unsigned short)32>::Iterate(this + 8788, a2, a3);
}

{
  return ot::Utils::HistoryTracker::IterateExternalRouteHistory(this, a2, a3);
}

uint64_t ot::Utils::HistoryTracker::Iterator::ResetEntryNumber(uint64_t this)
{
  *(this + 4) = 0;
  return this;
}

{
  return ot::Utils::HistoryTracker::Iterator::ResetEntryNumber(this);
}

uint64_t ot::Utils::HistoryTracker::Iterator::SetInitTime(ot::Utils::HistoryTracker::Iterator *this)
{
  v4 = this;
  Now = ot::TimerMilli::GetNow(this);
  result = ot::Time::GetValue(&Now);
  *this = result;
  return result;
}

{
  return ot::Utils::HistoryTracker::Iterator::SetInitTime(this);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::Iterate(uint64_t a1, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if (ot::Utils::HistoryTracker::List::Iterate(a1, 0x20u, (a1 + 4), a2, &v6, a3))
  {
    return 0;
  }

  else
  {
    return a1 + 132 + 12 * v6;
  }
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::Iterate(a1, a2, a3);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerUnicastAddressInfo,(unsigned short)20>::Iterate(uint64_t a1, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if (ot::Utils::HistoryTracker::List::Iterate(a1, 0x14u, (a1 + 4), a2, &v6, a3))
  {
    return 0;
  }

  else
  {
    return a1 + 84 + 28 * v6;
  }
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerUnicastAddressInfo,(unsigned short)20>::Iterate(a1, a2, a3);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMulticastAddressInfo,(unsigned short)20>::Iterate(uint64_t a1, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if (ot::Utils::HistoryTracker::List::Iterate(a1, 0x14u, (a1 + 4), a2, &v6, a3))
  {
    return 0;
  }

  else
  {
    return a1 + 84 + 24 * v6;
  }
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMulticastAddressInfo,(unsigned short)20>::Iterate(a1, a2, a3);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::Iterate(uint64_t a1, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if (ot::Utils::HistoryTracker::List::Iterate(a1, 0x20u, (a1 + 4), a2, &v6, a3))
  {
    return 0;
  }

  else
  {
    return a1 + 132 + 46 * v6;
  }
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::Iterate(a1, a2, a3);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNeighborInfo,(unsigned short)64>::Iterate(uint64_t a1, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if (ot::Utils::HistoryTracker::List::Iterate(a1, 0x40u, (a1 + 4), a2, &v6, a3))
  {
    return 0;
  }

  else
  {
    return a1 + 260 + 12 * v6;
  }
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNeighborInfo,(unsigned short)64>::Iterate(a1, a2, a3);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerRouterInfo,(unsigned short)256>::Iterate(uint64_t a1, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if (ot::Utils::HistoryTracker::List::Iterate(a1, 0x100u, (a1 + 4), a2, &v6, a3))
  {
    return 0;
  }

  else
  {
    return a1 + 1028 + 3 * v6;
  }
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerRouterInfo,(unsigned short)256>::Iterate(a1, a2, a3);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerOnMeshPrefixInfo,(unsigned short)32>::Iterate(uint64_t a1, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if (ot::Utils::HistoryTracker::List::Iterate(a1, 0x20u, (a1 + 4), a2, &v6, a3))
  {
    return 0;
  }

  else
  {
    return a1 + 132 + 28 * v6;
  }
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerOnMeshPrefixInfo,(unsigned short)32>::Iterate(a1, a2, a3);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerExternalRouteInfo,(unsigned short)32>::Iterate(uint64_t a1, ot::Utils::HistoryTracker::Iterator *a2, unsigned int *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if (ot::Utils::HistoryTracker::List::Iterate(a1, 0x20u, (a1 + 4), a2, &v6, a3))
  {
    return 0;
  }

  else
  {
    return a1 + 132 + 28 * v6;
  }
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerExternalRouteInfo,(unsigned short)32>::Iterate(a1, a2, a3);
}

BOOL ot::Mle::DeviceMode::Get(ot::Mle::DeviceMode *a1, _BYTE *a2)
{
  *a2 = *a2 & 0xFE | ot::Mle::DeviceMode::IsRxOnWhenIdle(a1);
  *a2 = *a2 & 0xFD | (2 * ot::Mle::DeviceMode::IsFullThreadDevice(a1));
  result = ot::Mle::DeviceMode::GetNetworkDataType(a1);
  *a2 = *a2 & 0xFB | (4 * !result);
  return result;
}

_BYTE *ot::Mle::DeviceMode::Set(_BYTE *result, _BYTE *a2)
{
  *result = 4;
  if (*a2)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *result |= v2;
  if ((*a2 & 2) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *result |= v3;
  *result |= (*a2 & 4) != 0;
  return result;
}

ot::StringWriter *ot::Mle::DeviceMode::ToString@<X0>(ot::Mle::DeviceMode *this@<X0>, ot::StringWriter *a2@<X8>)
{
  ot::String<(unsigned short)45>::String(a2);
  IsRxOnWhenIdle = ot::Mle::DeviceMode::IsRxOnWhenIdle(this);
  v8 = ot::ToYesNo(IsRxOnWhenIdle);
  IsFullThreadDevice = ot::Mle::DeviceMode::IsFullThreadDevice(this);
  v9 = ot::ToYesNo(IsFullThreadDevice);
  v4 = !ot::Mle::DeviceMode::GetNetworkDataType(this);
  v5 = ot::ToYesNo(v4);
  return ot::StringWriter::Append(a2, "rx-on:%s ftd:%s full-net:%s", v8, v9, v5);
}

uint64_t ot::Mle::RouterIdSet::GetNumberOfAllocatedIds(ot::Mle::RouterIdSet *this)
{
  v4 = 0;
  v3 = this;
  v2 = this + 8;
  while (v3 != v2)
  {
    v4 += ot::CountBitsInMask<unsigned char>(*v3++);
  }

  return v4;
}

uint64_t ot::CountBitsInMask<unsigned char>(char a1)
{
  v2 = 0;
  while (a1)
  {
    a1 &= a1 - 1;
    ++v2;
  }

  return v2;
}

{
  return ot::CountBitsInMask<unsigned char>(a1);
}

uint64_t ot::Random::Crypto::Fill<ot::Mle::TxChallenge>(ot::Random::Crypto *a1)
{
  return ot::Random::Crypto::FillBuffer(a1, 8);
}

{
  return ot::Random::Crypto::Fill<ot::Mle::TxChallenge>(a1);
}

uint64_t ot::Mle::RxChallenge::ReadFrom(ot::Mle::RxChallenge *this, const ot::Message *a2, const ot::OffsetRange *a3)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = 0;
  v10 = *a3;
  ot::Mle::RxChallenge::Clear(this);
  ot::OffsetRange::ShrinkLength(&v10, 8u);
  if (ot::OffsetRange::Contains(&v10, 4u))
  {
    v8 = v13;
    ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetArrayBuffer();
    v7 = v3;
    Length = ot::OffsetRange::GetLength(&v10);
    v11 = ot::Message::Read(v8, &v10, v7, Length);
    if (!v11)
    {
      v5 = ot::OffsetRange::GetLength(&v10);
      ot::Array<unsigned char,(unsigned short)8,unsigned char>::SetLength(this, v5);
    }
  }

  else
  {
    return 6;
  }

  return v11;
}

uint64_t ot::Array<unsigned char,(unsigned short)8,unsigned char>::SetLength(uint64_t result, char a2)
{
  *(result + 8) = a2;
  return result;
}

{
  return ot::Array<unsigned char,(unsigned short)8,unsigned char>::SetLength(result, a2);
}

BOOL ot::Mle::RxChallenge::operator==(uint64_t a1, const void *a2)
{
  v4 = 0;
  if (ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetLength(a1) == 8)
  {
    ot::Array<unsigned char,(unsigned short)8,unsigned char>::GetArrayBuffer();
    return memcmp(v2, a2, 8uLL) == 0;
  }

  return v4;
}

const char *ot::Mle::RoleToString(unsigned __int8 a1)
{
  if (a1 >= ot::GetArrayLength<char const*,(unsigned short)5>())
  {
    return "invalid";
  }

  else
  {
    return ot::Mle::RoleToString(ot::Mle::DeviceRole)::kRoleStrings[a1];
  }
}

ot::MlrManager *ot::MlrManager::MlrManager(ot::MlrManager *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this);
  result = this;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 22) &= ~1u;
  *(this + 22) &= ~2u;
  return result;
}

{
  ot::MlrManager::MlrManager(this, a2);
  return this;
}

void ot::MlrManager::HandleNotifierEvents(ot::MlrManager *a1, uint64_t a2)
{
  v4 = a2;
  if (ot::Events::Contains(&v4, 4096))
  {
    ot::MlrManager::UpdateLocalSubscriptions(a1);
  }

  if (ot::Events::Contains(&v4, 4))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
    if (ot::Mle::Mle::IsChild(v2))
    {
      ot::MlrManager::UpdateReregistrationDelay(a1, 1);
    }
  }
}

uint64_t ot::MlrManager::UpdateLocalSubscriptions(ot::MlrManager *this)
{
  v12 = this;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  v13 = ot::Ip6::Netif::IterateExternalMulticastAddresses(v1, 3);
  v14 = v2;
  v9 = v13;
  v10 = v2;
  v11 = &v9;
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::begin(&v9, v8);
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::end(v11, v7);
  while (ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator!=(v8, v7))
  {
    v6 = ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator*(v8);
    if (!ot::Ip6::Netif::ExternalMulticastAddress::GetMlrState(v6))
    {
      Address = ot::Ip6::Netif::MulticastAddress::GetAddress(v6);
      if (ot::MlrManager::IsAddressMlrRegisteredByAnyChild(this, Address))
      {
        ot::Ip6::Netif::ExternalMulticastAddress::SetMlrState(v6, 2);
      }
    }

    ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator++(v8);
  }

  ot::MlrManager::CheckInvariants(this);
  return ot::MlrManager::ScheduleSend(this, 0);
}

void ot::MlrManager::UpdateReregistrationDelay(ot::MlrManager *this, char a2)
{
  v23 = this;
  v22 = a2;
  v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsFullThreadDevice(v21) || (Parent = ot::Mle::Mle::GetParent(v21), HasPrimary = 0, ot::Neighbor::IsThreadVersion1p1(Parent)))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
    HasPrimary = ot::BackboneRouter::Leader::HasPrimary(v3);
  }

  v20 = HasPrimary;
  if (HasPrimary)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
    ot::BackboneRouter::Leader::GetConfig(v4, v17);
    IgnoreError();
    if (v22)
    {
      if (v18 <= 1u)
      {
        Uint16InRange = 1;
      }

      else
      {
        Uint16InRange = ot::Random::NonCrypto::GetUint16InRange(1, v18);
      }

      Uint32InRange = Uint16InRange;
    }

    else
    {
      v15 = ot::Max<unsigned int>(v19, 0x12Cu);
      Uint32InRange = ot::Random::NonCrypto::GetUint32InRange(((v15 >> 1) + 1), v15 - 9);
    }

    if (!*(this + 4) || *(this + 4) > Uint32InRange)
    {
      *(this + 4) = Uint32InRange;
    }
  }

  else
  {
    *(this + 4) = 0;
  }

  ot::MlrManager::UpdateTimeTickerRegistration(this);
  v11 = v22;
  ot::ToUlong(*(this + 4));
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("MlrManager", "MlrManager::UpdateReregistrationDelay: rereg=%d, needSendMlr=%d, ReregDelay=%lu", v5, v6, v7, v8, v9, v10, v11 & 1);
}

void ot::MlrManager::HandleBackboneRouterPrimaryUpdate(ot::MlrManager *a1, char a2)
{
  v2 = 1;
  if (a2 != 1)
  {
    v2 = a2 == 3;
  }

  ot::MlrManager::UpdateReregistrationDelay(a1, v2);
}

uint64_t ot::Ip6::Netif::ExternalMulticastAddress::GetMlrState(ot::Ip6::Netif::ExternalMulticastAddress *this)
{
  return *(this + 24);
}

{
  return ot::Ip6::Netif::ExternalMulticastAddress::GetMlrState(this);
}

uint64_t ot::MlrManager::IsAddressMlrRegisteredByAnyChild(ot::MlrManager *this, const ot::Ip6::Address *a2)
{
  return ot::MlrManager::IsAddressMlrRegisteredByAnyChildExcept(this, a2, 0);
}

{
  return ot::MlrManager::IsAddressMlrRegisteredByAnyChild(this, a2);
}

uint64_t ot::Ip6::Netif::ExternalMulticastAddress::SetMlrState(uint64_t result, char a2)
{
  *(result + 24) = a2;
  return result;
}

{
  return ot::Ip6::Netif::ExternalMulticastAddress::SetMlrState(result, a2);
}

uint64_t ot::MlrManager::ScheduleSend(uint64_t this, unsigned __int16 a2)
{
  v2 = this;
  v3 = 1;
  if (*(this + 22))
  {
    v3 = *(this + 20) == 0;
  }

  if (!v3)
  {
    __assert_rtn("ScheduleSend", "mlr_manager.cpp", 189, "!mMlrPending || mSendDelay == 0");
  }

  if ((*(this + 22) & 1) == 0)
  {
    if (a2)
    {
      if (!*(this + 20) || *(this + 20) > a2)
      {
        *(this + 20) = a2;
      }
    }

    else
    {
      *(this + 20) = 0;
      ot::MlrManager::SendMlr(this);
    }

    return ot::MlrManager::UpdateTimeTickerRegistration(v2);
  }

  return this;
}

uint64_t ot::MlrManager::IsAddressMlrRegisteredByNetif (ot::MlrManager *this, const ot::Ip6::Address *a2)
{
  v15 = this;
  v14 = a2;
  v13 = 0;
  if (!ot::Ip6::Address::IsMulticastLargerThanRealmLocal(a2))
  {
    __assert_rtn("IsAddressMlrRegisteredByNetif", "mlr_manager.cpp", 113, "aAddress.IsMulticastLargerThanRealmLocal()");
  }

  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  v16 = ot::Ip6::Netif::IterateExternalMulticastAddresses(v2, 0);
  v17 = v3;
  v10 = v16;
  v11 = v3;
  v12 = &v10;
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::begin(&v10, v9);
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::end(v12, v8);
  while (ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator!=(v9, v8))
  {
    v7 = ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator*(v9);
    Address = ot::Ip6::Netif::MulticastAddress::GetAddress(v7);
    if (ot::Equatable<ot::Ip6::Address>::operator==(Address, v14) && ot::Ip6::Netif::ExternalMulticastAddress::GetMlrState(v7) == 2)
    {
      v13 = 1;
      return v13 & 1;
    }

    ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator++(v9);
  }

  return v13 & 1;
}

uint64_t ot::MlrManager::IsAddressMlrRegisteredByAnyChildExcept(ot::MlrManager *this, const ot::Ip6::Address *a2, const ot::Child *a3)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = 0;
  if (!ot::Ip6::Address::IsMulticastLargerThanRealmLocal(a2))
  {
    __assert_rtn("IsAddressMlrRegisteredByAnyChildExcept", "mlr_manager.cpp", 135, "aAddress.IsMulticastLargerThanRealmLocal()");
  }

  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v13 = ot::ChildTable::Iterate(v3, 0);
  v14 = &v13;
  v21 = ot::ChildTable::IteratorBuilder::begin(&v13);
  v22 = v4;
  v11 = v21;
  v12 = v4;
  v19 = ot::ChildTable::IteratorBuilder::end(v14);
  v20 = v5;
  v9 = v19;
  v10 = v5;
  while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v11, &v9))
  {
    v8 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v11);
    if (v8 != v16 && ot::Child::HasMlrRegisteredAddress(v8, v17))
    {
      v15 = 1;
      return v15 & 1;
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v11);
  }

  return v15 & 1;
}

uint64_t ot::MlrManager::UpdateProxiedSubscriptions(ot::MlrManager *a1, ot::Child *a2, uint64_t a3)
{
  if (ot::Neighbor::IsStateValid(a2))
  {
    Ip6Addresses = ot::Child::GetIp6Addresses(a2);
    ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin();
    v18 = v10;
    v17 = ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(Ip6Addresses);
    while (v18 != v17)
    {
      if (ot::Ip6::Address::IsMulticastLargerThanRealmLocal(v18))
      {
        IsAddressMlrRegisteredByNetif = 1;
        if (!ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::Contains(a3, v18))
        {
          IsAddressMlrRegisteredByNetif = ot::MlrManager::IsAddressMlrRegisteredByNetif (a1, v18);
        }

        IsAddressMlrRegisteredByAnyChildExcept = 1;
        if ((IsAddressMlrRegisteredByNetif & 1) == 0)
        {
          IsAddressMlrRegisteredByAnyChildExcept = ot::MlrManager::IsAddressMlrRegisteredByAnyChildExcept(a1, v18, a2);
        }

        if (IsAddressMlrRegisteredByAnyChildExcept)
        {
          v11 = 2;
        }

        else
        {
          v11 = 0;
        }

        ot::Child::Ip6AddrEntry::SetMlrState(v18, v11, a2);
      }

      v18 = (v18 + 16);
    }
  }

  ot::MlrManager::LogMulticastAddresses(a1, v3, v4, v5, v6, v7, v8, v9);
  ot::MlrManager::CheckInvariants(a1);
  result = ot::Child::HasAnyMlrToRegisterAddress(a2);
  if (result)
  {
    Uint16InRange = ot::Random::NonCrypto::GetUint16InRange(1, 5u);
    return ot::MlrManager::ScheduleSend(a1, Uint16InRange);
  }

  return result;
}

BOOL ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::Contains(uint64_t a1, const void *a2)
{
  return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::Find(a1, a2) != 0;
}

{
  return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::Contains(a1, a2);
}

BOOL ot::MlrManager::LogMulticastAddresses(ot::MlrManager *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = this;
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("MlrManager", "-------- Multicast Addresses --------", a3, a4, a5, a6, a7, a8, v28);
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  v57 = ot::Ip6::Netif::IterateExternalMulticastAddresses(v8, 0);
  v58 = v9;
  v47 = v57;
  v48 = v9;
  v49 = &v47;
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::begin(&v47, v46);
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::end(v49, v45);
  while (ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator!=(v46, v45))
  {
    v44 = ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator*(v46);
    Address = ot::Ip6::Netif::MulticastAddress::GetAddress(v44);
    ot::Ip6::Address::ToString(Address, v56);
    v32 = ot::String<(unsigned short)40>::AsCString(v56);
    v29 = aRr[ot::Ip6::Netif::ExternalMulticastAddress::GetMlrState(v44)];
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("MlrManager", "%-32s%c", v11, v12, v13, v14, v15, v16, v32);
    ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator++(v46);
  }

  v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v42 = ot::ChildTable::Iterate(v17, 0);
  v43 = &v42;
  v54 = ot::ChildTable::IteratorBuilder::begin(&v42);
  v55 = v18;
  v40 = v54;
  v41 = v18;
  v52 = ot::ChildTable::IteratorBuilder::end(v43);
  v53 = v19;
  v38 = v52;
  v39 = v19;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v40, &v38);
    if (!result)
    {
      break;
    }

    v37 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v40);
    Ip6Addresses = ot::Child::GetIp6Addresses(v37);
    ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin();
    v35 = v21;
    v34 = ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(Ip6Addresses);
    while (v35 != v34)
    {
      if (ot::Ip6::Address::IsMulticastLargerThanRealmLocal(v35))
      {
        ot::Ip6::Address::ToString(v35, v51);
        v31 = ot::String<(unsigned short)40>::AsCString(v51);
        v30 = aRr[ot::Child::Ip6AddrEntry::GetMlrState(v35, v37)];
        ot::Neighbor::GetRloc16(v37);
        ot::Logger::LogAtLevel<(ot::LogLevel)5>("MlrManager", "%-32s%c %04x", v22, v23, v24, v25, v26, v27, v31);
      }

      v35 = (v35 + 16);
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v40);
  }

  return result;
}

uint64_t ot::Child::HasAnyMlrToRegisterAddress(ot::Child *this)
{
  return ot::BitVector<(unsigned short)15>::HasAny(this + 445);
}

{
  return ot::Child::HasAnyMlrToRegisterAddress(this);
}

void ot::MlrManager::SendMlr(ot::MlrManager *this)
{
  v60 = this;
  v59 = 0;
  v58 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  ot::MlrManager::AddressArray::AddressArray(v57);
  if (*(this + 22))
  {
    v59 = 5;
  }

  else if (ot::Mle::Mle::IsAttached(v58))
  {
    if (ot::Mle::Mle::IsFullThreadDevice(v58) || (Parent = ot::Mle::Mle::GetParent(v58), ot::Neighbor::IsThreadVersion1p1(Parent)))
    {
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
      if (ot::BackboneRouter::Leader::HasPrimary(v9))
      {
        v39 = *(this + 22) & 1;
        ot::Mle::Mle::IsAttached(v58);
        ot::Mle::Mle::IsFullThreadDevice(v58);
        v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
        ot::BackboneRouter::Leader::HasPrimary(v10);
        otLogDebgPlat("MlrManager::SendMulticastListenerRegistration mlrPending:%d isAttached:%d isFTD:%d hasPrimary:%d", v11, v12, v13, v14, v15, v16, v17, v39 & 1);
        v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
        v66 = ot::Ip6::Netif::IterateExternalMulticastAddresses(v18, 3);
        v67 = v19;
        v54 = v66;
        v55 = v19;
        v56 = &v54;
        ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::begin(&v54, v53);
        ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::end(v56, v52);
        while (ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator!=(v53, v52))
        {
          v51 = ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator*(v53);
          if (ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsFull(v57))
          {
            break;
          }

          Address = ot::Ip6::Netif::MulticastAddress::GetAddress(v51);
          ot::Ip6::Address::ToString(Address, v65);
          v38 = ot::String<(unsigned short)40>::AsCString(v65);
          ot::Ip6::Netif::ExternalMulticastAddress::GetMlrState(v51);
          otLogInfoPlat("MlrManager::SendMulticastListenerRegistration addr:%s state:%d", v21, v22, v23, v24, v25, v26, v27, v38);
          if (!ot::Ip6::Netif::ExternalMulticastAddress::GetMlrState(v51))
          {
            v28 = ot::Ip6::Netif::MulticastAddress::GetAddress(v51);
            ot::MlrManager::AddressArray::AddUnique(v57, v28);
            ot::Ip6::Netif::ExternalMulticastAddress::SetMlrState(v51, 1);
          }

          ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator++(v53);
        }

        v29 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
        v49 = ot::ChildTable::Iterate(v29, 0);
        v50 = &v49;
        v63 = ot::ChildTable::IteratorBuilder::begin(&v49);
        v64 = v30;
        v47 = v63;
        v48 = v30;
        v61 = ot::ChildTable::IteratorBuilder::end(v50);
        v62 = v31;
        v45 = v61;
        v46 = v31;
        while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v47, &v45))
        {
          v44 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v47);
          if (ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsFull(v57))
          {
            break;
          }

          if (ot::Child::HasAnyMlrToRegisterAddress(v44))
          {
            Ip6Addresses = ot::Child::GetIp6Addresses(v44);
            ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin();
            v42 = v32;
            v41 = ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(Ip6Addresses);
            while (v42 != v41)
            {
              if (ot::Ip6::Address::IsMulticastLargerThanRealmLocal(v42))
              {
                if (ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsFull(v57))
                {
                  break;
                }

                if (!ot::Child::Ip6AddrEntry::GetMlrState(v42, v44))
                {
                  ot::MlrManager::AddressArray::AddUnique(v57, v42);
                  ot::Child::Ip6AddrEntry::SetMlrState(v42, 1, v44);
                }
              }

              v42 = (v42 + 16);
            }
          }

          ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v47);
        }

        if (ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsEmpty(v57))
        {
          v59 = 23;
        }

        else
        {
          ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetArrayBuffer();
          v37 = v33;
          Length = ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetLength(v57);
          v59 = ot::MlrManager::SendMlrMessage(this, v37, Length, 0, ot::MlrManager::HandleMlrResponse, this);
          if (!v59)
          {
            *(this + 22) = *(this + 22) & 0xFE | 1;
            v35 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
            if (!ot::Mle::Mle::IsRxOnWhenIdle(v35))
            {
              v36 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
              ot::DataPollSender::SendFastPolls(v36, 0);
            }
          }
        }
      }

      else
      {
        v59 = 13;
      }
    }

    else
    {
      v59 = 13;
    }
  }

  else
  {
    v59 = 13;
  }

  if (v59)
  {
    ot::MlrManager::SetMulticastAddressMlrState(this, 1u, 0);
    if (v59 == 3)
    {
      ot::MlrManager::ScheduleSend(this, 1u);
    }
  }

  ot::MlrManager::LogMulticastAddresses(this, v1, v2, v3, v4, v5, v6, v7);
  ot::MlrManager::CheckInvariants(this);
}

uint64_t ot::MlrManager::UpdateTimeTickerRegistration(ot::MlrManager *this)
{
  if (*(this + 10) || *(this + 4))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
    return ot::TimeTicker::RegisterReceiver(v3, 5);
  }

  else
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
    return ot::TimeTicker::UnregisterReceiver(v1, 5);
  }
}

void ot::MlrManager::AddressArray::AddUnique(ot::MlrManager::AddressArray *this, const ot::Ip6::Address *a2)
{
  if (!ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::Contains(this, a2))
  {
    ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::PushBack(this, a2);
    IgnoreError();
  }
}

BOOL ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsEmpty(uint64_t a1)
{
  return *(a1 + 240) == 0;
}

{
  return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsEmpty(a1);
}

uint64_t ot::MlrManager::SendMlrMessage(ot::InstanceLocator *a1, char *a2, unsigned __int8 a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v49 = a1;
  v48 = a2;
  v47 = a3;
  v46 = a4;
  v45 = a5;
  v44 = a6;
  appended = 0;
  v42 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
  v41 = 0;
  Instance = ot::InstanceLocator::GetInstance(a1);
  ot::Tmf::MessageInfo::MessageInfo(v40, Instance);
  v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1);
  if (ot::BackboneRouter::Leader::HasPrimary(v7))
  {
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
    v41 = ot::Coap::CoapBase::NewConfirmablePostMessage(v8, 0x27u);
    if (v41)
    {
      ot::Ip6AddressesTlv::Init(v39);
      ot::Tlv::SetLength(v39, 16 * v47);
      appended = ot::Message::Append<ot::Ip6AddressesTlv>(v41, v39);
      if (appended)
      {
        goto LABEL_17;
      }

      appended = ot::Message::AppendBytes(v41, v48, 16 * v47);
      if (appended)
      {
        goto LABEL_17;
      }

      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(a1);
      if (ot::MeshCoP::Commissioner::IsActive(v9))
      {
        v36 = v41;
        v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(a1);
        SessionId = ot::MeshCoP::Commissioner::GetSessionId(v10);
        appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)15,unsigned short>>(v36, SessionId);
        if (appended)
        {
          goto LABEL_17;
        }
      }

      if (v46)
      {
        appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)11,unsigned int>>(v41, *v46);
        if (appended)
        {
          goto LABEL_17;
        }
      }

      if (ot::Mle::Mle::IsFullThreadDevice(v42) || (Parent = ot::Mle::Mle::GetParent(v42), !ot::Neighbor::IsThreadVersion1p1(Parent)))
      {
        PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v40);
        MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v42);
        v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1);
        Server16 = ot::BackboneRouter::Leader::GetServer16(v15);
        ot::Ip6::Address::SetToRoutingLocator(PeerAddr, MeshLocalPrefix, Server16);
      }

      else
      {
        v38 = 0;
        v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1);
        appended = ot::BackboneRouter::Leader::GetServiceId(v13, &v38);
        if (appended)
        {
          goto LABEL_17;
        }

        v35 = v42;
        v34 = v38;
        v14 = ot::Ip6::MessageInfo::GetPeerAddr(v40);
        ot::Mle::Mle::GetServiceAloc(v35, v34, v14);
      }

      ot::Tmf::MessageInfo::SetSockAddrToRloc(v40);
      v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
      appended = ot::Coap::CoapBase::SendMessage(v17, v41, v40, v45, v44);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("MlrManager", "Sent MLR.req: addressNum=%d", v18, v19, v20, v21, v22, v23, v47);
      goto LABEL_17;
    }

    appended = 3;
  }

  else
  {
    appended = 13;
  }

LABEL_17:
  v24 = ot::ErrorToString(appended);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("MlrManager", "SendMlrMessage(): %s", v25, v26, v27, v28, v29, v30, v24);
  if (appended && v41)
  {
    ot::Message::Free(v41);
  }

  return appended;
}

void ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetArrayBuffer()
{
  ;
}

{
  ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetArrayBuffer();
}

uint64_t ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetLength(uint64_t a1)
{
  return *(a1 + 240);
}

{
  return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetLength(a1);
}

uint64_t ot::MlrManager::HandleMlrResponse(ot::MlrManager *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  ot::AsCoapMessagePtr();
  v7 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  return ot::MlrManager::HandleMlrResponse(a1, v7, v5, a4);
}

BOOL ot::MlrManager::SetMulticastAddressMlrState(ot::InstanceLocator *a1, unsigned __int8 a2, unsigned __int8 a3)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
  v36 = ot::Ip6::Netif::IterateExternalMulticastAddresses(v3, 3);
  v37 = v4;
  v26 = v36;
  v27 = v4;
  v28 = &v26;
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::begin(&v26, v25);
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::end(v28, v24);
  while (ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator!=(v25, v24))
  {
    v23 = ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator*(v25);
    MlrState = ot::Ip6::Netif::ExternalMulticastAddress::GetMlrState(v23);
    if (MlrState == v30)
    {
      ot::Ip6::Netif::ExternalMulticastAddress::SetMlrState(v23, v29);
    }

    ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator++(v25);
  }

  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(a1);
  v21 = ot::ChildTable::Iterate(v6, 0);
  v22 = &v21;
  v34 = ot::ChildTable::IteratorBuilder::begin(&v21);
  v35 = v7;
  v19 = v34;
  v20 = v7;
  v32 = ot::ChildTable::IteratorBuilder::end(v22);
  v33 = v8;
  v17 = v32;
  v18 = v8;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v19, &v17);
    if (!result)
    {
      break;
    }

    v16 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v19);
    Ip6Addresses = ot::Child::GetIp6Addresses(v16);
    ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin();
    v14 = v10;
    v13 = ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(Ip6Addresses);
    while (v14 != v13)
    {
      if (ot::Ip6::Address::IsMulticastLargerThanRealmLocal(v14))
      {
        v11 = ot::Child::Ip6AddrEntry::GetMlrState(v14, v16);
        if (v11 == v30)
        {
          ot::Child::Ip6AddrEntry::SetMlrState(v14, v29, v16);
        }
      }

      v14 = (v14 + 16);
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v19);
  }

  return result;
}

uint64_t ot::MlrManager::RegisterMulticastListeners(ot::InstanceLocator *a1, char *a2, unsigned __int8 a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a3 && a3 <= 0xFu)
    {
      if (!a6 || a5)
      {
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(a1);
        if (ot::MeshCoP::Commissioner::IsActive(v6))
        {
          if ((*(a1 + 22) & 2) != 0)
          {
            return 5;
          }

          else
          {
            v9 = ot::MlrManager::SendMlrMessage(a1, a2, a3, a4, ot::MlrManager::HandleRegisterResponse, a1);
            if (!v9)
            {
              *(a1 + 22) = *(a1 + 22) & 0xFD | 2;
              ot::CallbackBase<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char)>::Set(a1, a5, a6);
            }
          }
        }

        else
        {
          return 13;
        }
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

  else
  {
    return 7;
  }

  return v9;
}

void *ot::MlrManager::HandleRegisterResponse(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  ot::AsCoapMessagePtr();
  v7 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  return ot::MlrManager::HandleRegisterResponse(a1, v7, v5, a4);
}

{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = 0;
  v16 = 0;
  ot::MlrManager::AddressArray::AddressArray(v15);
  *(a1 + 22) &= ~2u;
  v11 = v18;
  ot::AsCoapMessagePtr();
  v16 = ot::MlrManager::ParseMlrResponse(v11, v4, &v17, v15, v5, v6, v7, v8);
  ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetArrayBuffer();
  v14 = v9;
  Length = ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetLength(v15);
  return ot::Callback<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char),(ot::CallbackContextPosition)0>::InvokeAndClearIfSet<otError&,unsigned char &,ot::Ip6::Address *,unsigned char>(a1, &v16, &v17, &v14, &Length);
}

void *ot::CallbackBase<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char)>::Set(result, a2, a3);
}

uint64_t ot::MlrManager::ParseMlrResponse(unsigned int a1, ot::Tlv *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = 0;
  *a3 = 6;
  if (v18 || !v17)
  {
    v14 = 6;
    goto LABEL_17;
  }

  if (ot::Coap::Message::GetCode(v17) != 68)
  {
    v14 = 6;
    goto LABEL_17;
  }

  v14 = ot::Tlv::Find<ot::ThreadStatusTlv>(v17, v16);
  if (!v14)
  {
    if (!ot::Tlv::FindTlvValueOffsetRange(v17, 0xE, &v13, v8))
    {
      if (ot::OffsetRange::GetLength(&v13) % 0x10uLL)
      {
        v14 = 6;
        goto LABEL_17;
      }

      if (ot::OffsetRange::GetLength(&v13) / 0x10uLL > 0xF)
      {
        v14 = 6;
        goto LABEL_17;
      }

      while (!ot::OffsetRange::IsEmpty(&v13))
      {
        v12 = v17;
        v9 = ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::PushBack(v15);
        ot::Message::Read<ot::Ip6::Address>(v12, &v13, v9);
        IgnoreError();
        ot::OffsetRange::AdvanceOffset(&v13, 0x10u);
      }
    }

    if (!ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsEmpty(v15) && !*v16)
    {
      v14 = 6;
    }
  }

LABEL_17:
  ot::MlrManager::LogMlrResponse(v18, v14, *v16, v15, a5, a6, a7, a8);
  if (v18)
  {
    return v18;
  }

  else
  {
    return v14;
  }
}

void *ot::Callback<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char),(ot::CallbackContextPosition)0>::InvokeAndClearIfSet<otError&,unsigned char &,ot::Ip6::Address *,unsigned char>(void *a1, unsigned int *a2, unsigned __int8 *a3, void *a4, unsigned __int8 *a5)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = a5;
  v6 = *a1;
  ot::CallbackBase<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char)>::Clear(a1);
  return ot::Callback<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char),(ot::CallbackContextPosition)0>::InvokeIfSet<otError&,unsigned char &,ot::Ip6::Address *,unsigned char>(&v6, v10, v9, v8, v7);
}

{
  return ot::Callback<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char),(ot::CallbackContextPosition)0>::InvokeAndClearIfSet<otError&,unsigned char &,ot::Ip6::Address *,unsigned char>(a1, a2, a3, a4, a5);
}

uint64_t ot::MlrManager::HandleMlrResponse(ot::MlrManager *a1, ot::Tlv *a2, uint64_t a3, unsigned int a4)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = 0;
  v16 = 0;
  ot::MlrManager::AddressArray::AddressArray(v15);
  v16 = ot::MlrManager::ParseMlrResponse(v18, v20, &v17, v15, v4, v5, v6, v7);
  v11 = 0;
  if (!v16)
  {
    v11 = v17 == 0;
  }

  ot::MlrManager::FinishMlr(a1, v11, v15);
  if (!v16 && !v17)
  {
    return ot::MlrManager::ScheduleSend(a1, 0);
  }

  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1);
  result = ot::BackboneRouter::Leader::GetConfig(v9, v13);
  if (!result)
  {
    if (v14 <= 1u)
    {
      Uint16InRange = 1;
    }

    else
    {
      Uint16InRange = ot::Random::NonCrypto::GetUint16InRange(1, v14);
    }

    return ot::MlrManager::ScheduleSend(a1, Uint16InRange);
  }

  return result;
}

void ot::MlrManager::FinishMlr(ot::MlrManager *this, char a2, const ot::MlrManager::AddressArray *a3)
{
  v42 = this;
  v41 = a2;
  v40 = a3;
  if ((*(this + 22) & 1) == 0)
  {
    __assert_rtn("FinishMlr", "mlr_manager.cpp", 562, "mMlrPending");
  }

  *(this + 22) &= ~1u;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  v47 = ot::Ip6::Netif::IterateExternalMulticastAddresses(v3, 3);
  v48 = v4;
  v37 = v47;
  v38 = v4;
  v39 = &v37;
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::begin(&v37, v36);
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Builder::end(v39, v35);
  while (ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator!=(v36, v35))
  {
    v34 = ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator*(v36);
    if (ot::Ip6::Netif::ExternalMulticastAddress::GetMlrState(v34) == 1)
    {
      LOBYTE(v21) = 1;
      if ((v41 & 1) == 0)
      {
        v20 = v40;
        Address = ot::Ip6::Netif::MulticastAddress::GetAddress(v34);
        v21 = !ot::MlrManager::AddressArray::IsEmptyOrContains(v20, Address);
      }

      v33 = v21;
      if (v21)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      ot::Ip6::Netif::ExternalMulticastAddress::SetMlrState(v34, v6);
    }

    ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::operator++(v36);
  }

  v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v31 = ot::ChildTable::Iterate(v7, 0);
  v32 = &v31;
  v45 = ot::ChildTable::IteratorBuilder::begin(&v31);
  v46 = v8;
  v29 = v45;
  v30 = v8;
  v43 = ot::ChildTable::IteratorBuilder::end(v32);
  v44 = v9;
  v27 = v43;
  v28 = v9;
  while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v29, &v27))
  {
    v26 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v29);
    Ip6Addresses = ot::Child::GetIp6Addresses(v26);
    ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin();
    v24 = v17;
    v23 = ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(Ip6Addresses);
    while (v24 != v23)
    {
      if (ot::Ip6::Address::IsMulticastLargerThanRealmLocal(v24) && ot::Child::Ip6AddrEntry::GetMlrState(v24, v26) == 1)
      {
        LOBYTE(v19) = 1;
        if ((v41 & 1) == 0)
        {
          v19 = !ot::MlrManager::AddressArray::IsEmptyOrContains(v40, v24);
        }

        if (v19)
        {
          v18 = 2;
        }

        else
        {
          v18 = 0;
        }

        ot::Child::Ip6AddrEntry::SetMlrState(v24, v18, v26);
      }

      v24 = (v24 + 16);
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v29);
  }

  ot::MlrManager::LogMulticastAddresses(this, v10, v11, v12, v13, v14, v15, v16);
  ot::MlrManager::CheckInvariants(this);
}

uint64_t ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::PushBack(uint64_t a1)
{
  if (ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsFull(a1))
  {
    return 0;
  }

  v1 = (*(a1 + 240))++;
  return a1 + 16 * v1;
}

{
  return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::PushBack(a1);
}

void ot::MlrManager::LogMlrResponse(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 || a2 || a3)
  {
    v23 = ot::ErrorToString(a1);
    ot::ErrorToString(a2);
    ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::GetLength(a4);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("MlrManager", "Receive MLR.rsp: result=%s, error=%s, status=%d, failedAddressNum=%d", v8, v9, v10, v11, v12, v13, v23);
    ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::begin();
    v25 = v14;
    v24 = ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::end(a4);
    while (v25 != v24)
    {
      ot::Ip6::Address::ToString(v25, v28);
      v15 = ot::String<(unsigned short)40>::AsCString(v28);
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("MlrManager", "MA failed: %s", v16, v17, v18, v19, v20, v21, v15);
      v25 = (v25 + 16);
    }
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("MlrManager", "Receive MLR.rsp OK", a3, a4, a5, a6, a7, a8, v22);
  }
}

BOOL ot::MlrManager::AddressArray::IsEmptyOrContains(ot::MlrManager::AddressArray *this, const ot::Ip6::Address *a2)
{
  v4 = 1;
  if (!ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::IsEmpty(this))
  {
    return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::Contains(this, a2);
  }

  return v4;
}

{
  return ot::MlrManager::AddressArray::IsEmptyOrContains(this, a2);
}

uint64_t ot::MlrManager::HandleTimeTick(ot::MlrManager *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 10))
  {
    v8 = *(this + 10);
    *(this + 10) = v8 - 1;
    if (v8 == 1)
    {
      ot::MlrManager::SendMlr(this);
    }
  }

  if (*(this + 4))
  {
    v9 = *(this + 4) - 1;
    *(this + 4) = v9;
    if (!v9)
    {
      ot::MlrManager::Reregister(this, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  return ot::MlrManager::UpdateTimeTickerRegistration(this);
}

void ot::MlrManager::Reregister(ot::MlrManager *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("MlrManager", "MLR Reregister!", a3, a4, a5, a6, a7, a8, v8);
  ot::MlrManager::SetMulticastAddressMlrState(this, 2u, 0);
  ot::MlrManager::CheckInvariants(this);
  ot::MlrManager::ScheduleSend(this, 0);
  ot::MlrManager::UpdateReregistrationDelay(this, 0);
}

void ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::begin()
{
  ;
}

{
  ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::begin();
}

uint64_t ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::end(uint64_t a1)
{
  return a1 + 16 * *(a1 + 240);
}

{
  return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::end(a1);
}

char *ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::Find(uint64_t a1, const void *a2)
{
  v7 = 0;
  ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::begin();
  v5 = v2;
  v4 = ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::end(a1);
  while (v5 != v4)
  {
    if (ot::Equatable<ot::Ip6::Address>::operator==(v5, a2))
    {
      return v5;
    }

    v5 += 16;
  }

  return v7;
}

{
  return ot::Array<ot::Ip6::Address,(unsigned short)15,unsigned char>::Find(a1, a2);
}

void *ot::CallbackBase<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char)>::Clear(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::CallbackBase<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char)>::Clear(result);
}

void *ot::Callback<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char),(ot::CallbackContextPosition)0>::InvokeIfSet<otError&,unsigned char &,ot::Ip6::Address *,unsigned char>(void *result, unsigned int *a2, unsigned __int8 *a3, void *a4, unsigned __int8 *a5)
{
  if (*result)
  {
    return ot::Callback<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char),(ot::CallbackContextPosition)0>::Invoke<otError&,unsigned char &,ot::Ip6::Address *,unsigned char>(result, a2, a3, a4, a5);
  }

  return result;
}

{
  return ot::Callback<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char),(ot::CallbackContextPosition)0>::InvokeIfSet<otError&,unsigned char &,ot::Ip6::Address *,unsigned char>(result, a2, a3, a4, a5);
}

uint64_t ot::Callback<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char),(ot::CallbackContextPosition)0>::Invoke<otError&,unsigned char &,ot::Ip6::Address *,unsigned char>(uint64_t a1, unsigned int *a2, unsigned __int8 *a3, void *a4, unsigned __int8 *a5)
{
  return (*a1)(*(a1 + 8), *a2, *a3, *a4, *a5);
}

{
  return ot::Callback<void (*)(void *,otError,unsigned char,otIp6Address const*,unsigned char),(ot::CallbackContextPosition)0>::Invoke<otError&,unsigned char &,ot::Ip6::Address *,unsigned char>(a1, a2, a3, a4, a5);
}

ot::NeighborTable *ot::NeighborTable::NeighborTable(ot::NeighborTable *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  result = this;
  *this = 0;
  return result;
}

{
  ot::NeighborTable::NeighborTable(this, a2);
  return this;
}

uint64_t ot::NeighborTable::FindParent(ot::InstanceLocator *a1, unsigned __int8 *a2)
{
  v6 = 0;
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
  Parent = ot::Mle::Mle::GetParent(v5);
  if (ot::Neighbor::Matches(Parent, a2))
  {
    return ot::Mle::Mle::GetParent(v5);
  }

  ParentCandidate = ot::Mle::Mle::GetParentCandidate(v5);
  if (ot::Neighbor::Matches(ParentCandidate, a2))
  {
    return ot::Mle::Mle::GetParentCandidate(v5);
  }

  return v6;
}

uint64_t ot::NeighborTable::FindParent(ot::InstanceLocator *a1, __int16 a2, char a3)
{
  v7 = a1;
  v6 = a2;
  v5[21] = a3;
  ot::Neighbor::AddressMatcher::AddressMatcher(v5, a2, a3);
  return ot::NeighborTable::FindParent(a1, v5);
}

uint64_t ot::NeighborTable::FindParent(ot::InstanceLocator *a1, uint64_t a2, char a3)
{
  v7 = a1;
  v6 = a2;
  v5[23] = a3;
  ot::Neighbor::AddressMatcher::AddressMatcher(v5, a2, a3);
  return ot::NeighborTable::FindParent(a1, v5);
}

uint64_t ot::NeighborTable::FindParent(ot::InstanceLocator *a1, ot::Mac::Address *a2, char a3)
{
  v7 = a1;
  v6 = a2;
  v5[23] = a3;
  ot::Neighbor::AddressMatcher::AddressMatcher(v5, a2, a3);
  return ot::NeighborTable::FindParent(a1, v5);
}

uint64_t ot::NeighborTable::FindNeighbor(ot::InstanceLocator *a1, unsigned __int8 *a2)
{
  ChildOrRouter = 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
  if (ot::Mle::Mle::IsRouterOrLeader(v2))
  {
    ChildOrRouter = ot::NeighborTable::FindChildOrRouter(a1, a2);
  }

  if (!ChildOrRouter)
  {
    return ot::NeighborTable::FindParent(a1, a2);
  }

  return ChildOrRouter;
}

uint64_t ot::NeighborTable::FindChildOrRouter(ot::InstanceLocator *a1, unsigned __int8 *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(a1);
  ot::ChildTable::FindChild(v2, a2);
  v8 = v3;
  if (!v3)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(a1);
    ot::RouterTable::FindRouter(v4, a2);
    return v5;
  }

  return v8;
}

uint64_t ot::NeighborTable::FindNeighbor(ot::InstanceLocator *a1, unsigned __int16 a2, char a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if (a2 != 0xFFFF && v8 != 65534)
  {
    ot::Neighbor::AddressMatcher::AddressMatcher(v5, v8, v7);
    return ot::NeighborTable::FindNeighbor(a1, v5);
  }

  return v6;
}

uint64_t ot::NeighborTable::FindNeighbor(ot::InstanceLocator *a1, uint64_t a2, char a3)
{
  v7 = a1;
  v6 = a2;
  v5[23] = a3;
  ot::Neighbor::AddressMatcher::AddressMatcher(v5, a2, a3);
  return ot::NeighborTable::FindNeighbor(a1, v5);
}

uint64_t ot::NeighborTable::FindNeighbor(ot::InstanceLocator *a1, ot::Mac::Address *a2, char a3)
{
  v7 = a1;
  v6 = a2;
  v5[23] = a3;
  ot::Neighbor::AddressMatcher::AddressMatcher(v5, a2, a3);
  return ot::NeighborTable::FindNeighbor(a1, v5);
}

void ot::RouterTable::FindRouter(uint64_t a1, unsigned __int8 *a2)
{
  ot::AsConst<ot::RouterTable>();
  ot::RouterTable::FindRouter(v2, a2);
  ot::AsNonConst<ot::Router>();
}

{
  ot::RouterTable::FindRouter(a1, a2);
}

uint64_t ot::NeighborTable::FindNeighbor(ot::InstanceLocator *a1, ot::Ip6::Address *a2, char a3)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = 0;
  ot::Mac::Address::Address(v20);
  if (ot::Ip6::Address::IsLinkLocalUnicast(v23))
  {
    Iid = ot::Ip6::Address::GetIid(v23);
    ot::Ip6::InterfaceIdentifier::ConvertToMacAddress(Iid, v20);
  }

  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
  if (ot::Mle::Mle::IsRoutingLocator(v4, v23))
  {
    v5 = ot::Ip6::Address::GetIid(v23);
    Locator = ot::Ip6::InterfaceIdentifier::GetLocator(v5);
    ot::Mac::Address::SetShort(v20, Locator);
  }

  if (ot::Mac::Address::IsNone(v20))
  {
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(a1);
    v17 = ot::ChildTable::Iterate(v7, v22);
    v18 = &v17;
    v27 = ot::ChildTable::IteratorBuilder::begin(&v17);
    v28 = v8;
    v15 = v27;
    v16 = v8;
    v25 = ot::ChildTable::IteratorBuilder::end(v18);
    v26 = v9;
    v13 = v25;
    v14 = v9;
    while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v15, &v13))
    {
      v12 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v15);
      if (ot::Child::HasIp6Address(v12, v23))
      {
        return v12;
      }

      ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v15);
    }
  }

  else
  {
    ot::Neighbor::AddressMatcher::AddressMatcher(v19, v20, v22);
    return ot::NeighborTable::FindNeighbor(a1, v19);
  }

  return v21;
}

uint64_t ot::NeighborTable::FindRxOnlyNeighborRouter(ot::NeighborTable *this, const ot::Mac::ExtAddress *a2)
{
  v6 = this;
  v5 = a2;
  ot::Mac::Address::Address(v4);
  ot::Mac::Address::SetExtended(v4, v5);
  return ot::NeighborTable::FindRxOnlyNeighborRouter(this, v4);
}

uint64_t ot::NeighborTable::FindRxOnlyNeighborRouter(ot::NeighborTable *this, const ot::Mac::Address *a2)
{
  v7 = 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  if (ot::Mle::Mle::IsChild(v2))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
    ot::RouterTable::FindNeighbor(v3, a2);
    return v4;
  }

  return v7;
}

uint64_t ot::NeighborTable::GetNextNeighborInfo(ot::NeighborTable *this, unsigned __int16 *a2, ot::Neighbor::Info *a3)
{
  v18 = 0;
  v15 = *a2;
  if (*a2 < 0)
  {
LABEL_8:
    for (i = -*a2; i <= 62; ++i)
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
      ot::RouterTable::FindRouterById(v4, i);
      v13 = v5;
      if (v5 && ot::Neighbor::IsStateValid(v5))
      {
        ot::Neighbor::Info::SetFrom(a3, v13);
        *(a3 + 54) &= ~8u;
        *a2 = -(i + 1);
        return v18;
      }
    }

    *a2 = -i;
    v18 = 23;
    if (!v15)
    {
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      if (ot::Mle::Mle::GetRole(v6) == 2)
      {
        v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
        Parent = ot::Mle::Mle::GetParent(v7);
        if (ot::Neighbor::IsStateValid(Parent))
        {
          v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
          v10 = ot::Mle::Mle::GetParent(v9);
          ot::Neighbor::Info::SetFrom(a3, v10);
          *(a3 + 54) &= ~8u;
          return 0;
        }
      }
    }
  }

  else
  {
    for (j = *a2; ; ++j)
    {
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
      ChildAtIndex = ot::ChildTable::GetChildAtIndex(v3, j);
      if (!ChildAtIndex)
      {
        *a2 = 0;
        goto LABEL_8;
      }

      if (ot::Neighbor::IsStateValid(ChildAtIndex))
      {
        break;
      }
    }

    ot::Neighbor::Info::SetFrom(a3, ChildAtIndex);
    *(a3 + 54) = *(a3 + 54) & 0xF7 | 8;
    *a2 = j + 1;
  }

  return v18;
}

uint64_t ot::NeighborTable::Signal(ot::InstanceLocator *a1, unsigned __int8 a2, const ot::Neighbor *a3)
{
  ot::InstanceLocator::GetInstance(a1);
  if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) != 0 && (!a2 || a2 == 3))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
    if (ot::Mle::Mle::GetRole(v3) == 4 || (v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1), ot::Mle::Mle::GetRole(v4) == 3))
    {
      v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
      Role = ot::Mle::Mle::GetRole(v5);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
      ot::Mle::Mle::SetThreadCoexConfig(v15, 0, Role, *(v6 + 132));
    }
  }

  Instance = ot::InstanceLocator::GetInstance(a1);
  if (a2 <= 2u)
  {
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(a1);
    if (!ot::ChildTable::Contains(v7, a3))
    {
      __assert_rtn("Signal", "neighbor_table.cpp", 364, "Get<ChildTable>().Contains(aNeighbor)");
    }

    ot::Child::Info::SetFrom(v20, a3);
  }

  else if (a2 == 4 || a2 == 3)
  {
    ot::Neighbor::Info::SetFrom(v20, a3);
  }

  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::HistoryTracker>(a1);
  result = ot::Utils::HistoryTracker::RecordNeighborEvent(v8, a2, &Instance);
  if (*a1)
  {
    result = (*a1)(a2, &Instance);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
      ot::Notifier::Signal(v11, 2048);
      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(a1);
      return ot::DuaManager::HandleChildDuaAddressEvent(v12, a3, 2);
    }

    else if (a2 == 4 || a2 == 3)
    {
      v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(a1);
      return ot::RouterTable::SignalTableChanged(v13);
    }
  }

  else
  {
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
    return ot::Notifier::Signal(v10, 1024);
  }

  return result;
}

uint64_t ot::NetworkData::NetworkData::CopyNetworkData(ot::InstanceLocator *a1, char a2, unsigned __int8 *a3, char *a4)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = 0;
  Instance = ot::InstanceLocator::GetInstance(a1);
  ot::NetworkData::MutableNetworkData::MutableNetworkData(v8, Instance, v11, 0, *v10);
  v9 = ot::NetworkData::NetworkData::CopyNetworkData(a1, v12, v8);
  if (!v9)
  {
    Length = ot::NetworkData::NetworkData::GetLength(v8);
    *v10 = Length;
  }

  return v9;
}

uint64_t ot::NetworkData::NetworkData::CopyNetworkData(uint64_t a1, char a2, ot::NetworkData::MutableNetworkData *a3)
{
  v6 = 0;
  if (ot::NetworkData::MutableNetworkData::GetSize(a3) < *(a1 + 8))
  {
    return 3;
  }

  else
  {
    ot::NetworkData::MutableNetworkData::GetBytes(a3);
    memcpy(v3, *a1, *(a1 + 8));
    ot::NetworkData::MutableNetworkData::SetLength(a3, *(a1 + 8));
    ot::NetworkData::NetworkData::PrintServiceTLVInfo(a3);
    if (a2 == 1)
    {
      ot::NetworkData::MutableNetworkData::RemoveTemporaryData(a3);
    }
  }

  return v6;
}

uint64_t ot::NetworkData::MutableNetworkData::GetSize(ot::NetworkData::MutableNetworkData *this)
{
  return *(this + 9);
}

{
  return ot::NetworkData::MutableNetworkData::GetSize(this);
}

void ot::NetworkData::MutableNetworkData::GetBytes(ot::NetworkData::MutableNetworkData *this)
{
  ot::AsConst<ot::NetworkData::MutableNetworkData>();
  ot::NetworkData::NetworkData::GetBytes(v1);
  ot::AsNonConst<unsigned char>();
}

{
  ot::NetworkData::MutableNetworkData::GetBytes(this);
}

uint64_t ot::NetworkData::MutableNetworkData::SetLength(uint64_t this, char a2)
{
  *(this + 8) = a2;
  return this;
}

{
  return ot::NetworkData::MutableNetworkData::SetLength(this, a2);
}

void ot::NetworkData::NetworkData::PrintServiceTLVInfo(ot::NetworkData::NetworkData *this)
{
  v60 = this;
  v51 = this;
  v59 = 0;
  NextThreadService = 0;
  v52 = v57;
  ot::Data<(ot::DataLengthType)0>::InitFrom<unsigned char>(v57, &ot::NetworkData::Service::DnsSrpUnicast::kServiceData);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(v51);
  NextThreadService = ot::NetworkData::NetworkData::FindNextThreadService(v1, NextThreadService, v57, 0);
  if (NextThreadService)
  {
    v56 = 0;
    if (ot::Data<(ot::DataLengthType)0>::GetLength(v57) <= 3uLL)
    {
      v49 = v57;
      Bytes = ot::Data<(ot::DataLengthType)0>::GetBytes(v57);
      Length = ot::Data<(ot::DataLengthType)0>::GetLength(v57);
      encode_data_into_string(Bytes, Length, &v56, 4uLL, 0);
      ot::NetworkData::TlvIterator::TlvIterator(v55, NextThreadService);
      v54 = 0;
      while (1)
      {
        ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServerTlv>(v55);
        v54 = v3;
        if (!v3)
        {
          break;
        }

        ++v59;
        memset(__b, 0, sizeof(__b));
        v48 = v53;
        ot::NetworkData::ServerTlv::GetServerData(v54, v53);
        if (ot::Data<(ot::DataLengthType)0>::GetLength(v48) >= 0x64uLL)
        {
          v23 = ot::Data<(ot::DataLengthType)0>::GetLength(v53);
          ot::Logger::LogAtLevel<(ot::LogLevel)2>("NetworkData", "%s:Error ServerDataLen:%d", v16, v17, v18, v19, v20, v21, "PrintServiceTLVInfo");
        }

        else
        {
          v38 = v53;
          v33 = ot::Data<(ot::DataLengthType)0>::GetBytes(v53);
          v4 = ot::Data<(ot::DataLengthType)0>::GetLength(v38);
          v44 = __b;
          encode_data_into_string(v33, v4, __b, 0x64uLL, 0);
          v37 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(v51);
          v34 = ot::Data<(ot::DataLengthType)0>::GetBytes(v57);
          *v35 = ot::NetworkData::ServiceTlv::GetServiceDataLength(NextThreadService);
          v36 = ot::Data<(ot::DataLengthType)0>::GetBytes(v38);
          v5 = ot::Data<(ot::DataLengthType)0>::GetLength(v38);
          ot::AppMetricsManager::SetSrpPortIfSrpSerivceData(v37, v34, *v35, v36, v5, v6, v7, v8);
          v39 = v59;
          Type = ot::NetworkData::NetworkDataTlv::GetType(NextThreadService);
          EnterpriseNumber = ot::NetworkData::ServiceTlv::GetEnterpriseNumber(NextThreadService);
          ServiceDataLength = ot::NetworkData::ServiceTlv::GetServiceDataLength(NextThreadService);
          IsStable = ot::NetworkData::NetworkDataTlv::IsStable(v54);
          v45 = ot::Data<(ot::DataLengthType)0>::GetLength(v38);
          Server16 = ot::NetworkData::ServerTlv::GetServer16(v54);
          ServiceId = ot::NetworkData::ServiceTlv::GetServiceId(NextThreadService);
          v47 = &v22;
          v23 = v39;
          v24 = Type;
          v25 = EnterpriseNumber;
          v26 = &v56;
          v27 = ServiceDataLength;
          v28 = IsStable;
          v29 = v44;
          v30 = v45;
          v31 = Server16;
          v32 = ServiceId;
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetworkData", "%s: Entry:%d ServiceType:%d, EnterpriseNumber:%d, ServiceData:%s, ServiceDataLen:%d, Stable:%d, ServerData:%s, ServerDataLen:%d, Rloc16:0x%04x, Sid:%d", v10, v11, v12, v13, v14, v15, "PrintServiceTLVInfo");
        }
      }
    }
  }
}

void ot::NetworkData::MutableNetworkData::RemoveTemporaryData(ot::NetworkData::MutableNetworkData *this)
{
  ot::NetworkData::MutableNetworkData::GetTlvsStart(this);
  Next = v1;
  while (1)
  {
    ot::NetworkData::MutableNetworkData::GetTlvsEnd(this);
    if (Next >= v2)
    {
      break;
    }

    Type = ot::NetworkData::NetworkDataTlv::GetType(Next);
    if (Type == 1)
    {
      ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
      v7 = ot::NetworkData::MutableNetworkData::RemoveTemporaryDataIn(this, v3);
    }

    else if (Type == 5)
    {
      ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
      v7 = ot::NetworkData::MutableNetworkData::RemoveTemporaryDataIn(this, v4);
    }

    else
    {
      v7 = !ot::NetworkData::NetworkDataTlv::IsStable(Next);
    }

    if (v7)
    {
      ot::NetworkData::MutableNetworkData::RemoveTlv(this, Next);
    }

    else
    {
      Next = ot::NetworkData::NetworkDataTlv::GetNext(Next);
    }
  }
}

uint64_t ot::Data<(ot::DataLengthType)0>::InitFrom<unsigned char>(uint64_t a1, uint64_t a2)
{
  return ot::Data<(ot::DataLengthType)0>::Init(a1, a2, 1);
}

{
  return ot::Data<(ot::DataLengthType)0>::InitFrom<unsigned char>(a1, a2);
}

ot::NetworkData::TlvIterator *ot::NetworkData::TlvIterator::TlvIterator(ot::NetworkData::TlvIterator *this, const ot::NetworkData::ServiceTlv *a2)
{
  SubTlvs = ot::NetworkData::ServiceTlv::GetSubTlvs(a2);
  Next = ot::NetworkData::NetworkDataTlv::GetNext(a2);
  ot::Cli::Dataset::Dataset(this, SubTlvs, Next);
  return this;
}

void ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServerTlv>(uint64_t a1)
{
  ot::NetworkData::TlvIterator::Iterate(a1, 6u);
  ot::NetworkData::As<ot::NetworkData::ServerTlv>();
}

{
  ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServerTlv>(a1);
}

uint64_t ot::NetworkData::ServerTlv::GetServerData(ot::NetworkData::ServerTlv *a1, uint64_t a2)
{
  ServerData = ot::NetworkData::ServerTlv::GetServerData(a1);
  ServerDataLength = ot::NetworkData::ServerTlv::GetServerDataLength(a1);
  return ot::Data<(ot::DataLengthType)0>::Init(a2, ServerData, ServerDataLength);
}

{
  return ot::NetworkData::ServerTlv::GetServerData(a1, a2);
}

uint64_t ot::NetworkData::ServiceTlv::GetServiceDataLength(ot::NetworkData::ServiceTlv *this)
{
  if (ot::NetworkData::ServiceTlv::IsThreadEnterprise(this))
  {
    return *(this + 3);
  }

  else
  {
    return *(this + 7);
  }
}

{
  return ot::NetworkData::ServiceTlv::GetServiceDataLength(this);
}

uint64_t ot::NetworkData::NetworkDataTlv::GetType(ot::NetworkData::NetworkDataTlv *this)
{
  return *this >> 1;
}

{
  return ot::NetworkData::NetworkDataTlv::GetType(this);
}

uint64_t ot::NetworkData::ServiceTlv::GetEnterpriseNumber(ot::NetworkData::ServiceTlv *this)
{
  if (ot::NetworkData::ServiceTlv::IsThreadEnterprise(this))
  {
    return 44970;
  }

  else
  {
    return ot::BigEndian::HostSwap32(*(this + 3));
  }
}

{
  return ot::NetworkData::ServiceTlv::GetEnterpriseNumber(this);
}

BOOL ot::NetworkData::NetworkDataTlv::IsStable(ot::NetworkData::NetworkDataTlv *this)
{
  return (*this & 1) != 0;
}

{
  return ot::NetworkData::NetworkDataTlv::IsStable(this);
}

uint64_t ot::NetworkData::ServerTlv::GetServer16(ot::NetworkData::ServerTlv *this)
{
  return ot::BigEndian::HostSwap16(*(this + 1));
}

{
  return ot::NetworkData::ServerTlv::GetServer16(this);
}

uint64_t ot::NetworkData::ServiceTlv::GetServiceId(ot::NetworkData::ServiceTlv *this)
{
  return *(this + 2) & 0xF;
}

{
  return ot::NetworkData::ServiceTlv::GetServiceId(this);
}

uint64_t ot::NetworkData::NetworkData::GetNextOnMeshPrefix(const unsigned __int8 **this, unsigned int *a2, unsigned __int16 a3, ot::NetworkData::OnMeshPrefixConfig *a4)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  v5[4] = a4;
  v5[0] = a4;
  memset(&v5[1], 0, 24);
  return ot::NetworkData::NetworkData::Iterate(this, a2, a3, v5);
}

uint64_t ot::NetworkData::NetworkData::Iterate(const unsigned __int8 **a1, uint64_t a2, unsigned __int16 a3, ot::NetworkData::OnMeshPrefixConfig **a4)
{
  v45 = a1;
  v44 = a2;
  v43 = a3;
  v42 = a4;
  v41 = 23;
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v40, a2);
  while (1)
  {
    Tlv = ot::NetworkData::NetworkData::NetworkDataIterator::GetTlv(&v40, *a1);
    v28 = 0;
    if (Tlv + 2 <= ot::NetworkData::NetworkData::GetTlvsEnd(a1))
    {
      Next = ot::NetworkData::NetworkDataTlv::GetNext(Tlv);
      v28 = Next <= ot::NetworkData::NetworkData::GetTlvsEnd(a1);
    }

    if (!v28)
    {
      break;
    }

    SubTlvs = 0;
    Type = ot::NetworkData::NetworkDataTlv::GetType(Tlv);
    if (Type == 1)
    {
      if (*v42 || v42[1] || v42[3])
      {
        ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
        SubTlvs = ot::NetworkData::PrefixTlv::GetSubTlvs(v4);
      }
    }

    else if (Type == 5 && v42[2])
    {
      ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
      SubTlvs = ot::NetworkData::ServiceTlv::GetSubTlvs(v5);
    }

    if (SubTlvs)
    {
      while (1)
      {
        SubTlv = ot::NetworkData::NetworkData::NetworkDataIterator::GetSubTlv(&v40, SubTlvs);
        v25 = 0;
        if (SubTlv + 2 <= ot::NetworkData::NetworkDataTlv::GetNext(Tlv))
        {
          v24 = ot::NetworkData::NetworkDataTlv::GetNext(SubTlv);
          v25 = v24 <= ot::NetworkData::NetworkDataTlv::GetNext(Tlv);
        }

        if (!v25)
        {
          break;
        }

        if (ot::NetworkData::NetworkDataTlv::GetType(Tlv) == 1)
        {
          ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
          v36 = v6;
          v23 = ot::NetworkData::NetworkDataTlv::GetType(SubTlv);
          if (v23)
          {
            if (v23 == 2)
            {
              ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
              v35 = v7;
              if (*v42)
              {
                while (1)
                {
                  v22 = ot::NetworkData::NetworkData::NetworkDataIterator::GetAndAdvanceIndex(&v40);
                  if (v22 >= ot::NetworkData::BorderRouterTlv::GetNumEntries(v35))
                  {
                    break;
                  }

                  if (v43 != 0xFFFF)
                  {
                    Entry = ot::NetworkData::BorderRouterTlv::GetEntry(v35, v22);
                    Rloc = ot::NetworkData::BorderRouterEntry::GetRloc(Entry);
                    if (Rloc != v43)
                    {
                      continue;
                    }
                  }

                  v10 = ot::NetworkData::BorderRouterTlv::GetEntry(v35, v22);
                  v42[1] = 0;
                  v42[2] = 0;
                  v42[3] = 0;
                  ot::NetworkData::OnMeshPrefixConfig::SetFrom(*v42, v36, v35, v10);
                  return 0;
                }
              }
            }

            else if (v23 == 3)
            {
              ot::NetworkData::As<ot::NetworkData::ContextTlv>();
              v32 = v15;
              if (v42[3])
              {
                if (ot::NetworkData::NetworkData::NetworkDataIterator::IsNewEntry(&v40))
                {
                  *v42 = 0;
                  v42[1] = 0;
                  v42[2] = 0;
                  ot::NetworkData::LowpanContextInfo::SetFrom(v42[3], v36, v32);
                  ot::NetworkData::NetworkData::NetworkDataIterator::MarkEntryAsNotNew(&v40);
                  return 0;
                }
              }
            }
          }

          else
          {
            ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
            v34 = v11;
            if (v42[1])
            {
              while (1)
              {
                v21 = ot::NetworkData::NetworkData::NetworkDataIterator::GetAndAdvanceIndex(&v40);
                if (v21 >= ot::NetworkData::HasRouteTlv::GetNumEntries(v34))
                {
                  break;
                }

                if (v43 != 0xFFFF)
                {
                  v12 = ot::NetworkData::HasRouteTlv::GetEntry(v34, v21);
                  v13 = ot::NetworkData::HasRouteEntry::GetRloc(v12);
                  if (v13 != v43)
                  {
                    continue;
                  }
                }

                v33 = ot::NetworkData::HasRouteTlv::GetEntry(v34, v21);
                *v42 = 0;
                v42[2] = 0;
                v42[3] = 0;
                v20 = v42[1];
                Instance = ot::InstanceLocator::GetInstance(a1);
                ot::NetworkData::ExternalRouteConfig::SetFrom(v20, Instance, v36, v34, v33);
                return 0;
              }
            }
          }
        }

        else
        {
          ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
          v31 = v16;
          if (v42[2])
          {
            if (ot::NetworkData::NetworkDataTlv::GetType(SubTlv) == 6)
            {
              ot::NetworkData::As<ot::NetworkData::ServerTlv>();
              v30 = v17;
              if (ot::NetworkData::NetworkData::NetworkDataIterator::IsNewEntry(&v40))
              {
                if (v43 == 0xFFFF || (Server16 = ot::NetworkData::ServerTlv::GetServer16(v30), Server16 == v43))
                {
                  *v42 = 0;
                  v42[1] = 0;
                  v42[3] = 0;
                  ot::NetworkData::ServiceConfig::SetFrom(v42[2], v31, v30);
                  ot::NetworkData::NetworkData::NetworkDataIterator::MarkEntryAsNotNew(&v40);
                  return 0;
                }
              }
            }
          }
        }

        ot::NetworkData::NetworkData::NetworkDataIterator::AdvanceSubTlv(&v40, SubTlvs);
      }
    }

    ot::NetworkData::NetworkData::NetworkDataIterator::AdvanceTlv(&v40, *a1);
  }

  return v41;
}

uint64_t ot::NetworkData::NetworkData::GetNextExternalRoute(const unsigned __int8 **this, unsigned int *a2, unsigned __int16 a3, ot::NetworkData::ExternalRouteConfig *a4)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  v5[4] = a4;
  v5[0] = 0;
  v5[1] = a4;
  v5[2] = 0;
  v5[3] = 0;
  return ot::NetworkData::NetworkData::Iterate(this, a2, a3, v5);
}

uint64_t ot::NetworkData::NetworkData::GetNextService(const unsigned __int8 **this, unsigned int *a2, unsigned __int16 a3, ot::NetworkData::ServiceConfig *a4)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  v5[4] = a4;
  v5[0] = 0;
  v5[1] = 0;
  v5[2] = a4;
  v5[3] = 0;
  return ot::NetworkData::NetworkData::Iterate(this, a2, a3, v5);
}

uint64_t ot::NetworkData::NetworkData::GetNextLowpanContextInfo(ot::NetworkData::NetworkData *this, ot::NetworkData::OnMeshPrefixConfig *a2, ot::NetworkData::LowpanContextInfo *a3)
{
  v4[6] = this;
  v4[5] = a2;
  v4[4] = a3;
  memset(v4, 0, 24);
  v4[3] = a3;
  return ot::NetworkData::NetworkData::Iterate(this, a2, 0xFFFFu, v4);
}

const unsigned __int8 *ot::NetworkData::NetworkData::NetworkDataIterator::GetTlv(ot::NetworkData::NetworkData::NetworkDataIterator *this, const unsigned __int8 *a2)
{
  return &a2[ot::NetworkData::NetworkData::NetworkDataIterator::GetTlvOffset(this)];
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::GetTlv(this, a2);
}

uint64_t ot::NetworkData::NetworkData::GetTlvsEnd(ot::NetworkData::NetworkData *this)
{
  return *this + *(this + 8);
}

{
  return ot::NetworkData::NetworkData::GetTlvsEnd(this);
}

uint64_t ot::NetworkData::NetworkDataTlv::GetNext(ot::NetworkData::NetworkDataTlv *this)
{
  return this + *(this + 1) + 2;
}

{
  return this + *(this + 1) + 2;
}

{
  return ot::NetworkData::NetworkDataTlv::GetNext(this);
}

{
  return ot::NetworkData::NetworkDataTlv::GetNext(this);
}

void ot::NetworkData::As<ot::NetworkData::PrefixTlv>()
{
  ;
}

{
  ;
}

{
  ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
}

{
  ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
}

uint64_t ot::NetworkData::PrefixTlv::GetSubTlvs(ot::NetworkData::PrefixTlv *this)
{
  Prefix = ot::NetworkData::PrefixTlv::GetPrefix(this);
  return Prefix + ot::Ip6::Prefix::SizeForLength(*(this + 3));
}

{
  Prefix = ot::NetworkData::PrefixTlv::GetPrefix(this);
  return Prefix + ot::Ip6::Prefix::SizeForLength(*(this + 3));
}

{
  return ot::NetworkData::PrefixTlv::GetSubTlvs(this);
}

{
  return ot::NetworkData::PrefixTlv::GetSubTlvs(this);
}

void ot::NetworkData::As<ot::NetworkData::ServiceTlv>()
{
  ;
}

{
  ;
}

{
  ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
}

{
  ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
}

uint64_t ot::NetworkData::ServiceTlv::GetSubTlvs(ot::NetworkData::ServiceTlv *this)
{
  Value = ot::NetworkData::NetworkDataTlv::GetValue(this);
  return Value + ot::NetworkData::ServiceTlv::GetFieldsLength(this);
}

{
  Value = ot::NetworkData::NetworkDataTlv::GetValue(this);
  return Value + ot::NetworkData::ServiceTlv::GetFieldsLength(this);
}

{
  return ot::NetworkData::ServiceTlv::GetSubTlvs(this);
}

{
  return ot::NetworkData::ServiceTlv::GetSubTlvs(this);
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::GetSubTlv(ot::NetworkData::NetworkData::NetworkDataIterator *this, const ot::NetworkData::NetworkDataTlv *a2)
{
  return a2 + ot::NetworkData::NetworkData::NetworkDataIterator::GetSubTlvOffset(this);
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::GetSubTlv(this, a2);
}

void ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>()
{
  ;
}

{
  ;
}

{
  ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
}

{
  ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::GetAndAdvanceIndex(ot::NetworkData::NetworkData::NetworkDataIterator *this)
{
  v1 = *this;
  result = *(*this + 2);
  *(v1 + 2) = result + 1;
  return result;
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::GetAndAdvanceIndex(this);
}

uint64_t ot::NetworkData::BorderRouterTlv::GetNumEntries(ot::NetworkData::BorderRouterTlv *this)
{
  return ot::NetworkData::NetworkDataTlv::GetLength(this) / 4u;
}

{
  return ot::NetworkData::BorderRouterTlv::GetNumEntries(this);
}

uint64_t ot::NetworkData::BorderRouterTlv::GetEntry(ot::NetworkData::BorderRouterTlv *this, unsigned __int8 a2)
{
  return ot::NetworkData::NetworkDataTlv::GetValue(this) + 4 * a2;
}

{
  return ot::NetworkData::NetworkDataTlv::GetValue(this) + 4 * a2;
}

{
  return ot::NetworkData::BorderRouterTlv::GetEntry(this, a2);
}

{
  return ot::NetworkData::BorderRouterTlv::GetEntry(this, a2);
}

uint64_t ot::NetworkData::BorderRouterEntry::GetRloc(ot::NetworkData::BorderRouterEntry *this)
{
  return ot::BigEndian::HostSwap16(*this);
}

{
  return ot::NetworkData::BorderRouterEntry::GetRloc(this);
}

void ot::NetworkData::As<ot::NetworkData::HasRouteTlv>()
{
  ;
}

{
  ;
}

{
  ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
}

{
  ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
}

uint64_t ot::NetworkData::HasRouteTlv::GetNumEntries(ot::NetworkData::HasRouteTlv *this)
{
  return ot::NetworkData::NetworkDataTlv::GetLength(this) / 3u;
}

{
  return ot::NetworkData::HasRouteTlv::GetNumEntries(this);
}

uint64_t ot::NetworkData::HasRouteTlv::GetEntry(ot::NetworkData::HasRouteTlv *this, unsigned __int8 a2)
{
  return ot::NetworkData::NetworkDataTlv::GetValue(this) + 3 * a2;
}

{
  return ot::NetworkData::NetworkDataTlv::GetValue(this) + 3 * a2;
}

{
  return ot::NetworkData::HasRouteTlv::GetEntry(this, a2);
}

{
  return ot::NetworkData::HasRouteTlv::GetEntry(this, a2);
}

uint64_t ot::NetworkData::HasRouteEntry::GetRloc(ot::NetworkData::HasRouteEntry *this)
{
  return ot::BigEndian::HostSwap16(*this);
}

{
  return ot::NetworkData::HasRouteEntry::GetRloc(this);
}

void ot::NetworkData::As<ot::NetworkData::ContextTlv>()
{
  ;
}

{
  ;
}

{
  ot::NetworkData::As<ot::NetworkData::ContextTlv>();
}

{
  ot::NetworkData::As<ot::NetworkData::ContextTlv>();
}

BOOL ot::NetworkData::NetworkData::NetworkDataIterator::IsNewEntry(ot::NetworkData::NetworkData::NetworkDataIterator *this)
{
  return ot::NetworkData::NetworkData::NetworkDataIterator::GetEntryIndex(this) == 0;
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::IsNewEntry(this);
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::MarkEntryAsNotNew(ot::NetworkData::NetworkData::NetworkDataIterator *this)
{
  return ot::NetworkData::NetworkData::NetworkDataIterator::SetEntryIndex(this, 1);
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::MarkEntryAsNotNew(this);
}

void ot::NetworkData::As<ot::NetworkData::ServerTlv>()
{
  ;
}

{
  ;
}

{
  ot::NetworkData::As<ot::NetworkData::ServerTlv>();
}

{
  ot::NetworkData::As<ot::NetworkData::ServerTlv>();
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::AdvanceSubTlv(ot::NetworkData::NetworkData::NetworkDataIterator *this, const ot::NetworkData::NetworkDataTlv *a2)
{
  SubTlv = ot::NetworkData::NetworkData::NetworkDataIterator::GetSubTlv(this, a2);
  Next = ot::NetworkData::NetworkDataTlv::GetNext(SubTlv);
  ot::NetworkData::NetworkData::NetworkDataIterator::SaveSubTlvOffset(this, Next, a2);
  return ot::NetworkData::NetworkData::NetworkDataIterator::SetEntryIndex(this, 0);
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::AdvanceSubTlv(this, a2);
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::AdvanceTlv(ot::NetworkData::NetworkData::NetworkDataIterator *this, const unsigned __int8 *a2)
{
  Tlv = ot::NetworkData::NetworkData::NetworkDataIterator::GetTlv(this, a2);
  Next = ot::NetworkData::NetworkDataTlv::GetNext(Tlv);
  ot::NetworkData::NetworkData::NetworkDataIterator::SaveTlvOffset(this, Next, a2);
  ot::NetworkData::NetworkData::NetworkDataIterator::SetSubTlvOffset(this, 0);
  return ot::NetworkData::NetworkData::NetworkDataIterator::SetEntryIndex(this, 0);
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::AdvanceTlv(this, a2);
}

uint64_t ot::NetworkData::NetworkData::ContainsOnMeshPrefix(const unsigned __int8 **this, const ot::NetworkData::OnMeshPrefixConfig *a2)
{
  v8 = this;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  while (!ot::NetworkData::NetworkData::GetNextOnMeshPrefix(this, &v5, v7[10], v4))
  {
    if (ot::Equatable<ot::NetworkData::OnMeshPrefixConfig>::operator==(v4, v7))
    {
      v6 = 1;
      return v6 & 1;
    }
  }

  return v6 & 1;
}

BOOL ot::Equatable<ot::NetworkData::OnMeshPrefixConfig>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 0x18uLL) == 0;
}

{
  return ot::Equatable<ot::NetworkData::OnMeshPrefixConfig>::operator==(a1, a2);
}

uint64_t ot::NetworkData::NetworkData::ContainsExternalRoute(const unsigned __int8 **this, const ot::NetworkData::ExternalRouteConfig *a2)
{
  v8 = this;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  while (!ot::NetworkData::NetworkData::GetNextExternalRoute(this, &v5, v7[9], v4))
  {
    if (ot::Equatable<ot::NetworkData::ExternalRouteConfig>::operator==(v4, v7))
    {
      v6 = 1;
      return v6 & 1;
    }
  }

  return v6 & 1;
}

BOOL ot::Equatable<ot::NetworkData::ExternalRouteConfig>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 0x18uLL) == 0;
}

{
  return ot::Equatable<ot::NetworkData::ExternalRouteConfig>::operator==(a1, a2);
}

uint64_t ot::NetworkData::NetworkData::ContainsService(const unsigned __int8 **this, const ot::NetworkData::ServiceConfig *a2)
{
  v8 = this;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  while (1)
  {
    ServerConfig = ot::NetworkData::ServiceConfig::GetServerConfig(v7);
    if (ot::NetworkData::NetworkData::GetNextService(this, &v5, *(ServerConfig + 250), v9))
    {
      break;
    }

    if (ot::NetworkData::ServiceConfig::operator==(v9, v7))
    {
      v6 = 1;
      return v6 & 1;
    }
  }

  return v6 & 1;
}

uint64_t ot::NetworkData::ServiceConfig::GetServerConfig(ot::NetworkData::ServiceConfig *this)
{
  return this + 262;
}

{
  return this + 262;
}

{
  return ot::NetworkData::ServiceConfig::GetServerConfig(this);
}

{
  return ot::NetworkData::ServiceConfig::GetServerConfig(this);
}

uint64_t ot::NetworkData::NetworkData::ContainsEntriesFrom(const unsigned __int8 **this, const unsigned __int8 **a2, unsigned __int16 a3)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = 1;
  v11 = 0;
  while (1)
  {
    v7 = &v6;
    v8 = &v5;
    v9 = &v16;
    v10 = 0;
    if (ot::NetworkData::NetworkData::Iterate(v14, &v11, v13, &v7))
    {
      break;
    }

    if (v7 && (ot::NetworkData::NetworkData::ContainsOnMeshPrefix(this, v7) & 1) == 0 || v8 && (ot::NetworkData::NetworkData::ContainsExternalRoute(this, v8) & 1) == 0 || v9 && (ot::NetworkData::NetworkData::ContainsService(this, v9) & 1) == 0)
    {
      v12 = 0;
      return v12 & 1;
    }
  }

  return v12 & 1;
}

ot::NetworkData::PrefixTlv *ot::NetworkData::NetworkData::FindPrefix(ot::NetworkData::NetworkData *this, const unsigned __int8 *a2, unsigned __int8 a3)
{
  v9 = this;
  v8 = a2;
  v7 = a3;
  ot::NetworkData::TlvIterator::TlvIterator(v6, *this, *(this + 8));
  do
  {
    ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::PrefixTlv>(v6);
    v5 = v3;
  }

  while (v3 && !ot::NetworkData::PrefixTlv::IsEqual(v3, v8, v7));
  return v5;
}

void ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::PrefixTlv>(uint64_t a1)
{
  ot::NetworkData::TlvIterator::Iterate(a1, 1u);
  ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
}

{
  ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::PrefixTlv>(a1);
}

BOOL ot::NetworkData::PrefixTlv::IsEqual(ot::NetworkData::PrefixTlv *this, const unsigned __int8 *a2, unsigned __int8 a3)
{
  v7 = 0;
  if (a3 == *(this + 3))
  {
    Prefix = ot::NetworkData::PrefixTlv::GetPrefix(this);
    v3 = ot::Ip6::Prefix::SizeForLength(a3);
    return ot::Ip6::Prefix::MatchLength(Prefix, a2, v3) >= *(this + 3);
  }

  return v7;
}

{
  return ot::NetworkData::PrefixTlv::IsEqual(this, a2, a3);
}

ot::NetworkData::ServiceTlv *ot::NetworkData::NetworkData::FindService(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  ot::NetworkData::TlvIterator::TlvIterator(v7, *a1, *(a1 + 8));
  do
  {
    ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServiceTlv>(v7);
    v6 = v4;
  }

  while (v4 && !ot::NetworkData::NetworkData::MatchService(v4, v10, v9, v8));
  return v6;
}

void ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServiceTlv>(uint64_t a1)
{
  ot::NetworkData::TlvIterator::Iterate(a1, 5u);
  ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
}

{
  ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServiceTlv>(a1);
}

BOOL ot::NetworkData::NetworkData::MatchService(ot::NetworkData::ServiceTlv *a1, int a2, uint64_t a3, char a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v6 = 0;
  if (ot::NetworkData::ServiceTlv::GetEnterpriseNumber(a1) == a2)
  {
    ot::NetworkData::ServiceTlv::GetServiceData(v10, v5);
    if (v7)
    {
      if (v7 == 1)
      {
        return ot::Data<(ot::DataLengthType)0>::operator==(v5, v8);
      }
    }

    else
    {
      return ot::Data<(ot::DataLengthType)0>::StartsWith(v5, v8);
    }
  }

  return v6;
}

ot::NetworkData::ServiceTlv *ot::NetworkData::NetworkData::FindNextService(uint64_t a1, ot::NetworkData::NetworkDataTlv *a2, int a3, uint64_t a4, char a5)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  Next = 0;
  v9 = 0;
  if (a2)
  {
    Next = ot::NetworkData::NetworkDataTlv::GetNext(v14);
    v9 = *a1 + *(a1 + 8) - Next;
  }

  else
  {
    Next = *a1;
    v9 = *(a1 + 8);
  }

  Instance = ot::InstanceLocator::GetInstance(a1);
  ot::NetworkData::NetworkData::NetworkData(v8, Instance, Next, v9);
  return ot::NetworkData::NetworkData::FindService(v8, v13, v12, v11);
}

uint64_t ot::NetworkData::ServiceTlv::GetServiceData(ot::NetworkData::ServiceTlv *a1, uint64_t a2)
{
  ServiceData = ot::NetworkData::ServiceTlv::GetServiceData(a1);
  ServiceDataLength = ot::NetworkData::ServiceTlv::GetServiceDataLength(a1);
  return ot::Data<(ot::DataLengthType)0>::Init(a2, ServiceData, ServiceDataLength);
}

{
  return ot::NetworkData::ServiceTlv::GetServiceData(a1, a2);
}

BOOL ot::Data<(ot::DataLengthType)0>::StartsWith(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (*(a1 + 8) >= *(a2 + 8))
  {
    return ot::Data<(ot::DataLengthType)0>::MatchesBytesIn(a2, *a1);
  }

  return v3;
}

{
  return ot::Data<(ot::DataLengthType)0>::StartsWith(a1, a2);
}

uint64_t ot::NetworkData::NetworkData::FindRlocs(const unsigned __int8 **a1, char a2, char a3, uint64_t a4)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = 0;
  ot::Array<unsigned short,(unsigned short)85,unsigned char>::Clear(a4);
  while (1)
  {
    v9 = &v15;
    v10 = &v13;
    v11 = &v23;
    v12 = 0;
    result = ot::NetworkData::NetworkData::Iterate(a1, &v18, 0xFFFFu, &v9);
    if (result)
    {
      break;
    }

    if (v9)
    {
      v8 = 1;
      if (v21 && v21 == 1)
      {
        v6 = 0;
        if ((v16 & 0x80) != 0)
        {
          LOBYTE(v5) = 1;
          if ((v16 & 0x40) == 0)
          {
            v5 = (v16 >> 10) & 1;
          }

          v6 = v5;
        }

        v8 = v6;
      }

      if (v8)
      {
        ot::NetworkData::NetworkData::AddRloc16ToRlocs(v17, v19, v20);
      }
    }

    else if (v10)
    {
      ot::NetworkData::NetworkData::AddRloc16ToRlocs(v14, v19, v20);
    }

    else if (v11 && !v21)
    {
      ot::NetworkData::NetworkData::AddRloc16ToRlocs(v24, v19, v20);
    }
  }

  return result;
}

uint64_t ot::Array<unsigned short,(unsigned short)85,unsigned char>::Clear(uint64_t result)
{
  *(result + 170) = 0;
  return result;
}

{
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::Clear(result);
}

void ot::NetworkData::NetworkData::AddRloc16ToRlocs(unsigned __int16 a1, uint64_t a2, char a3)
{
  v4 = a1;
  if (!a3)
  {
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    if (!ot::Mle::IsRouterRloc16(v4))
    {
      return;
    }

    goto LABEL_9;
  }

  if (a3 != 2 || ot::Mle::IsChildRloc16(v4))
  {
LABEL_9:
    if (!ot::Array<unsigned short,(unsigned short)85,unsigned char>::Contains(a2, &v4))
    {
      ot::Array<unsigned short,(unsigned short)85,unsigned char>::PushBack(a2, &v4);
      IgnoreError();
    }
  }
}

uint64_t ot::NetworkData::NetworkData::CountBorderRouters(const unsigned __int8 **a1, char a2)
{
  v6 = a1;
  v5 = a2;
  ot::Array<unsigned short,(unsigned short)85,unsigned char>::Array(v4);
  ot::NetworkData::NetworkData::FindRlocs(a1, 1, v5, v4);
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::GetLength(v4);
}

uint64_t ot::Array<unsigned short,(unsigned short)85,unsigned char>::GetLength(uint64_t a1)
{
  return *(a1 + 170);
}

{
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::GetLength(a1);
}

BOOL ot::NetworkData::NetworkData::ContainsBorderRouterWithRloc(const unsigned __int8 **this, unsigned __int16 a2)
{
  v6 = this;
  v5 = a2;
  ot::Array<unsigned short,(unsigned short)85,unsigned char>::Array(v4);
  ot::NetworkData::NetworkData::FindRlocs(this, 1, 0, v4);
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::Contains(v4, &v5);
}

BOOL ot::Array<unsigned short,(unsigned short)85,unsigned char>::Contains(uint64_t a1, unsigned __int16 *a2)
{
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::Find(a1, a2) != 0;
}

{
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::Contains(a1, a2);
}

uint64_t ot::Array<unsigned short,(unsigned short)85,unsigned char>::PushBack(uint64_t a1, __int16 *a2)
{
  if (ot::Array<unsigned short,(unsigned short)85,unsigned char>::IsFull(a1))
  {
    return 3;
  }

  else
  {
    v2 = *a2;
    v3 = (*(a1 + 170))++;
    *(a1 + 2 * v3) = v2;
    return 0;
  }
}

{
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::PushBack(a1, a2);
}

uint64_t ot::NetworkData::NetworkData::FindDomainIdFor(ot::NetworkData::NetworkData *this, const ot::Ip6::Prefix *a2, unsigned __int8 *a3)
{
  v5 = 0;
  Prefix = ot::NetworkData::NetworkData::FindPrefix(this, a2);
  if (Prefix)
  {
    *a3 = ot::NetworkData::PrefixTlv::GetDomainId(Prefix);
  }

  else
  {
    return 23;
  }

  return v5;
}

ot::NetworkData::PrefixTlv *ot::NetworkData::NetworkData::FindPrefix(ot::NetworkData::NetworkData *this, const ot::Ip6::Prefix *a2)
{
  ot::Ip6::Prefix::GetBytes(a2);
  v5 = v2;
  Length = ot::Ip6::Prefix::GetLength(a2);
  return ot::NetworkData::NetworkData::FindPrefix(this, v5, Length);
}

{
  return ot::NetworkData::NetworkData::FindPrefix(this, a2);
}

uint64_t ot::NetworkData::PrefixTlv::GetDomainId(ot::NetworkData::PrefixTlv *this)
{
  return *(this + 2);
}

{
  return ot::NetworkData::PrefixTlv::GetDomainId(this);
}

void ot::NetworkData::MutableNetworkData::GetTlvsStart(ot::NetworkData::MutableNetworkData *this)
{
  ot::AsConst<ot::NetworkData::MutableNetworkData>();
  ot::NetworkData::NetworkData::GetTlvsStart(v1);
  ot::AsNonConst<ot::NetworkData::NetworkDataTlv>();
}

{
  ot::NetworkData::MutableNetworkData::GetTlvsStart(this);
}

void ot::NetworkData::MutableNetworkData::GetTlvsEnd(ot::NetworkData::MutableNetworkData *this)
{
  ot::AsConst<ot::NetworkData::MutableNetworkData>();
  ot::NetworkData::NetworkData::GetTlvsEnd(v1);
  ot::AsNonConst<ot::NetworkData::NetworkDataTlv>();
}

{
  ot::NetworkData::MutableNetworkData::GetTlvsEnd(this);
}

BOOL ot::NetworkData::MutableNetworkData::RemoveTemporaryDataIn(ot::NetworkData::MutableNetworkData *this, ot::NetworkData::PrefixTlv *a2)
{
  SubTlvs = ot::NetworkData::PrefixTlv::GetSubTlvs(a2);
  while (SubTlvs < ot::NetworkData::NetworkDataTlv::GetNext(a2))
  {
    if (ot::NetworkData::NetworkDataTlv::IsStable(SubTlvs))
    {
      Type = ot::NetworkData::NetworkDataTlv::GetType(SubTlvs);
      if (Type)
      {
        if (Type == 2)
        {
          ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
          v15 = v2;
          ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::ContextTlv>(a2);
          v14 = v3;
          for (i = ot::NetworkData::BorderRouterTlv::GetFirstEntry(v15); i <= ot::NetworkData::BorderRouterTlv::GetLastEntry(v15); i = ot::NetworkData::BorderRouterEntry::GetNext(i))
          {
            if ((ot::NetworkData::BorderRouterEntry::IsDhcp(i) || ot::NetworkData::BorderRouterEntry::IsConfigure(i)) && v14)
            {
              ContextId = ot::NetworkData::ContextTlv::GetContextId(v14);
              ot::NetworkData::BorderRouterEntry::SetRloc(i, ContextId | 0xFC00);
            }

            else
            {
              ot::NetworkData::BorderRouterEntry::SetRloc(i, 0xFFFEu);
            }
          }
        }
      }

      else
      {
        ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
        v12 = v5;
        for (j = ot::NetworkData::HasRouteTlv::GetFirstEntry(v5); j <= ot::NetworkData::HasRouteTlv::GetLastEntry(v12); j = ot::NetworkData::HasRouteEntry::GetNext(j))
        {
          ot::NetworkData::HasRouteEntry::SetRloc(j, 0xFFFEu);
        }
      }

      SubTlvs = ot::NetworkData::NetworkDataTlv::GetNext(SubTlvs);
    }

    else
    {
      Size = ot::NetworkData::NetworkDataTlv::GetSize(SubTlvs);
      ot::NetworkData::MutableNetworkData::RemoveTlv(this, SubTlvs);
      SubTlvsLength = ot::NetworkData::PrefixTlv::GetSubTlvsLength(a2);
      ot::NetworkData::PrefixTlv::SetSubTlvsLength(a2, SubTlvsLength - Size);
    }
  }

  return ot::NetworkData::PrefixTlv::GetSubTlvsLength(a2) == 0;
}

BOOL ot::NetworkData::MutableNetworkData::RemoveTemporaryDataIn(ot::NetworkData::MutableNetworkData *this, ot::NetworkData::ServiceTlv *a2)
{
  SubTlvs = ot::NetworkData::ServiceTlv::GetSubTlvs(a2);
  while (SubTlvs < ot::NetworkData::NetworkDataTlv::GetNext(a2))
  {
    if (ot::NetworkData::NetworkDataTlv::IsStable(SubTlvs))
    {
      if (ot::NetworkData::NetworkDataTlv::GetType(SubTlvs) == 6)
      {
        ot::NetworkData::As<ot::NetworkData::ServerTlv>();
        v7 = v2;
        ServiceId = ot::NetworkData::ServiceTlv::GetServiceId(a2);
        v4 = ot::Mle::ServiceAlocFromId(ServiceId);
        ot::NetworkData::ServerTlv::SetServer16(v7, v4);
      }

      SubTlvs = ot::NetworkData::NetworkDataTlv::GetNext(SubTlvs);
    }

    else
    {
      Size = ot::NetworkData::NetworkDataTlv::GetSize(SubTlvs);
      ot::NetworkData::MutableNetworkData::RemoveTlv(this, SubTlvs);
      SubTlvsLength = ot::NetworkData::ServiceTlv::GetSubTlvsLength(a2);
      ot::NetworkData::ServiceTlv::SetSubTlvsLength(a2, SubTlvsLength - Size);
    }
  }

  return ot::NetworkData::ServiceTlv::GetSubTlvsLength(a2) == 0;
}

void ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::ContextTlv>(uint64_t a1)
{
  ot::NetworkData::PrefixTlv::FindSubTlv(a1, 3u);
  ot::NetworkData::As<ot::NetworkData::ContextTlv>();
}

{
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::ContextTlv>(a1);
}

uint64_t ot::NetworkData::BorderRouterTlv::GetFirstEntry(ot::NetworkData::BorderRouterTlv *this)
{
  return ot::NetworkData::NetworkDataTlv::GetValue(this);
}

{
  return ot::NetworkData::NetworkDataTlv::GetValue(this);
}

{
  return ot::NetworkData::BorderRouterTlv::GetFirstEntry(this);
}

{
  return ot::NetworkData::BorderRouterTlv::GetFirstEntry(this);
}

uint64_t ot::NetworkData::BorderRouterTlv::GetLastEntry(ot::NetworkData::BorderRouterTlv *this)
{
  Value = ot::NetworkData::NetworkDataTlv::GetValue(this);
  return Value + ot::NetworkData::NetworkDataTlv::GetLength(this) - 4;
}

{
  Value = ot::NetworkData::NetworkDataTlv::GetValue(this);
  return Value + ot::NetworkData::NetworkDataTlv::GetLength(this) - 4;
}

{
  return ot::NetworkData::BorderRouterTlv::GetLastEntry(this);
}

{
  return ot::NetworkData::BorderRouterTlv::GetLastEntry(this);
}

BOOL ot::NetworkData::BorderRouterEntry::IsDhcp(ot::NetworkData::BorderRouterEntry *this)
{
  return (ot::BigEndian::HostSwap16(*(this + 1)) & 0x800) != 0;
}

{
  return ot::NetworkData::BorderRouterEntry::IsDhcp(this);
}

BOOL ot::NetworkData::BorderRouterEntry::IsConfigure(ot::NetworkData::BorderRouterEntry *this)
{
  return (ot::BigEndian::HostSwap16(*(this + 1)) & 0x400) != 0;
}

{
  return ot::NetworkData::BorderRouterEntry::IsConfigure(this);
}

uint64_t ot::NetworkData::BorderRouterEntry::SetRloc(ot::NetworkData::BorderRouterEntry *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *this = result;
  return result;
}

{
  return ot::NetworkData::BorderRouterEntry::SetRloc(this, a2);
}

uint64_t ot::NetworkData::ContextTlv::GetContextId(ot::NetworkData::ContextTlv *this)
{
  return *(this + 2) & 0xF;
}

{
  return ot::NetworkData::ContextTlv::GetContextId(this);
}

uint64_t ot::NetworkData::BorderRouterEntry::GetNext(ot::NetworkData::BorderRouterEntry *this)
{
  return this + 4;
}

{
  return this + 4;
}

{
  return ot::NetworkData::BorderRouterEntry::GetNext(this);
}

{
  return ot::NetworkData::BorderRouterEntry::GetNext(this);
}

uint64_t ot::NetworkData::HasRouteTlv::GetFirstEntry(ot::NetworkData::HasRouteTlv *this)
{
  return ot::NetworkData::NetworkDataTlv::GetValue(this);
}

{
  return ot::NetworkData::NetworkDataTlv::GetValue(this);
}

{
  return ot::NetworkData::HasRouteTlv::GetFirstEntry(this);
}

{
  return ot::NetworkData::HasRouteTlv::GetFirstEntry(this);
}

uint64_t ot::NetworkData::HasRouteTlv::GetLastEntry(ot::NetworkData::HasRouteTlv *this)
{
  Value = ot::NetworkData::NetworkDataTlv::GetValue(this);
  return Value + ot::NetworkData::NetworkDataTlv::GetLength(this) - 3;
}

{
  Value = ot::NetworkData::NetworkDataTlv::GetValue(this);
  return Value + ot::NetworkData::NetworkDataTlv::GetLength(this) - 3;
}

{
  return ot::NetworkData::HasRouteTlv::GetLastEntry(this);
}

{
  return ot::NetworkData::HasRouteTlv::GetLastEntry(this);
}

uint64_t ot::NetworkData::HasRouteEntry::SetRloc(ot::NetworkData::HasRouteEntry *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *this = result;
  return result;
}

{
  return ot::NetworkData::HasRouteEntry::SetRloc(this, a2);
}

uint64_t ot::NetworkData::HasRouteEntry::GetNext(ot::NetworkData::HasRouteEntry *this)
{
  return this + 3;
}

{
  return this + 3;
}

{
  return ot::NetworkData::HasRouteEntry::GetNext(this);
}

{
  return ot::NetworkData::HasRouteEntry::GetNext(this);
}

uint64_t ot::NetworkData::NetworkDataTlv::GetSize(ot::NetworkData::NetworkDataTlv *this)
{
  return (*(this + 1) + 2);
}

{
  return ot::NetworkData::NetworkDataTlv::GetSize(this);
}

uint64_t ot::NetworkData::PrefixTlv::SetSubTlvsLength(ot::NetworkData::PrefixTlv *this, char a2)
{
  v2 = ot::Ip6::Prefix::SizeForLength(*(this + 3));
  return ot::NetworkData::NetworkDataTlv::SetLength(this, v2 + 2 + a2);
}

{
  return ot::NetworkData::PrefixTlv::SetSubTlvsLength(this, a2);
}

uint64_t ot::NetworkData::PrefixTlv::GetSubTlvsLength(ot::NetworkData::PrefixTlv *this)
{
  Length = ot::NetworkData::NetworkDataTlv::GetLength(this);
  return (Length - (ot::Ip6::Prefix::SizeForLength(*(this + 3)) + 2));
}

{
  return ot::NetworkData::PrefixTlv::GetSubTlvsLength(this);
}

uint64_t ot::NetworkData::ServerTlv::SetServer16(ot::NetworkData::ServerTlv *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::NetworkData::ServerTlv::SetServer16(this, a2);
}

uint64_t ot::NetworkData::ServiceTlv::SetSubTlvsLength(ot::NetworkData::ServiceTlv *this, char a2)
{
  FieldsLength = ot::NetworkData::ServiceTlv::GetFieldsLength(this);
  return ot::NetworkData::NetworkDataTlv::SetLength(this, FieldsLength + a2);
}

{
  return ot::NetworkData::ServiceTlv::SetSubTlvsLength(this, a2);
}

uint64_t ot::NetworkData::ServiceTlv::GetSubTlvsLength(ot::NetworkData::ServiceTlv *this)
{
  Length = ot::NetworkData::NetworkDataTlv::GetLength(this);
  return (Length - ot::NetworkData::ServiceTlv::GetFieldsLength(this));
}

{
  return ot::NetworkData::ServiceTlv::GetSubTlvsLength(this);
}

uint64_t ot::NetworkData::MutableNetworkData::AppendTlv(ot::NetworkData::MutableNetworkData *this, unsigned __int16 a2)
{
  v6 = a2;
  if (!ot::NetworkData::MutableNetworkData::CanInsert(this, a2))
  {
    return 0;
  }

  ot::NetworkData::MutableNetworkData::GetTlvsEnd(this);
  v5 = v2;
  *(this + 8) += v6;
  return v5;
}

BOOL ot::NetworkData::MutableNetworkData::CanInsert(ot::NetworkData::MutableNetworkData *this, unsigned __int16 a2)
{
  return *(this + 8) + a2 <= *(this + 9);
}

{
  return ot::NetworkData::MutableNetworkData::CanInsert(this, a2);
}

void *ot::NetworkData::MutableNetworkData::Insert(ot::NetworkData::MutableNetworkData *this, char *a2, unsigned __int8 a3)
{
  v5 = 0;
  if (ot::NetworkData::MutableNetworkData::CanInsert(this, a3))
  {
    v5 = 0;
    if (*this <= a2)
    {
      v5 = a2 <= *this + *(this + 8);
    }
  }

  if (!v5)
  {
    __assert_rtn("Insert", "network_data.cpp", 813, "CanInsert(aLength) && mTlvs <= start && start <= mTlvs + mLength");
  }

  result = memmove(&a2[a3], a2, *(this + 8) - &a2[-*this]);
  *(this + 8) += a3;
  return result;
}

void *ot::NetworkData::MutableNetworkData::Remove(ot::NetworkData::MutableNetworkData *this, char *a2, unsigned __int8 a3)
{
  ot::NetworkData::MutableNetworkData::GetBytes(this);
  v9 = v3 + *(this + 8);
  __src = &a2[a3];
  v7 = 0;
  if (a3 <= *(this + 8))
  {
    ot::NetworkData::MutableNetworkData::GetBytes(this);
    v7 = 0;
    if (v4 <= a2)
    {
      v7 = __src <= v9;
    }
  }

  if (!v7)
  {
    __assert_rtn("Remove", "network_data.cpp", 824, "(aRemoveLength <= mLength) && (GetBytes() <= removeStart) && (removeEnd <= end)");
  }

  result = memmove(a2, __src, (v9 - __src));
  *(this + 8) -= a3;
  return result;
}

void ot::AsConst<ot::NetworkData::MutableNetworkData>()
{
  ;
}

{
  ot::AsConst<ot::NetworkData::MutableNetworkData>();
}

uint64_t ot::NetworkData::NetworkData::GetBytes(ot::NetworkData::NetworkData *this)
{
  return *this;
}

{
  return ot::NetworkData::NetworkData::GetBytes(this);
}

uint64_t ot::NetworkData::ServerTlv::GetServerData(ot::NetworkData::ServerTlv *this)
{
  return this + 4;
}

{
  return ot::NetworkData::ServerTlv::GetServerData(this);
}

uint64_t ot::NetworkData::ServerTlv::GetServerDataLength(ot::NetworkData::ServerTlv *this)
{
  return (ot::NetworkData::NetworkDataTlv::GetLength(this) - 2);
}

{
  return ot::NetworkData::ServerTlv::GetServerDataLength(this);
}

uint64_t ot::NetworkData::NetworkDataTlv::GetLength(ot::NetworkData::NetworkDataTlv *this)
{
  return *(this + 1);
}

{
  return ot::NetworkData::NetworkDataTlv::GetLength(this);
}

BOOL ot::NetworkData::ServiceTlv::IsThreadEnterprise(ot::NetworkData::ServiceTlv *this)
{
  return *(this + 2) < 0;
}

{
  return ot::NetworkData::ServiceTlv::IsThreadEnterprise(this);
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::GetTlvOffset(ot::NetworkData::NetworkData::NetworkDataIterator *this)
{
  return **this;
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::GetTlvOffset(this);
}

uint64_t ot::NetworkData::PrefixTlv::GetPrefix(ot::NetworkData::PrefixTlv *this)
{
  return this + 4;
}

{
  return this + 4;
}

{
  return ot::NetworkData::PrefixTlv::GetPrefix(this);
}

{
  return ot::NetworkData::PrefixTlv::GetPrefix(this);
}

uint64_t ot::NetworkData::NetworkDataTlv::GetValue(ot::NetworkData::NetworkDataTlv *this)
{
  return this + 2;
}

{
  return this + 2;
}

{
  return ot::NetworkData::NetworkDataTlv::GetValue(this);
}

{
  return ot::NetworkData::NetworkDataTlv::GetValue(this);
}

uint64_t ot::NetworkData::ServiceTlv::GetFieldsLength(ot::NetworkData::ServiceTlv *this)
{
  IsThreadEnterprise = ot::NetworkData::ServiceTlv::IsThreadEnterprise(this);
  v2 = 0;
  if (!IsThreadEnterprise)
  {
    v2 = 4;
  }

  return (v2 + 2 + ot::NetworkData::ServiceTlv::GetServiceDataLength(this));
}

{
  return ot::NetworkData::ServiceTlv::GetFieldsLength(this);
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::GetSubTlvOffset(ot::NetworkData::NetworkData::NetworkDataIterator *this)
{
  return *(*this + 1);
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::GetSubTlvOffset(this);
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::GetEntryIndex(ot::NetworkData::NetworkData::NetworkDataIterator *this)
{
  return *(*this + 2);
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::GetEntryIndex(this);
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::SetEntryIndex(uint64_t this, char a2)
{
  *(*this + 2) = a2;
  return this;
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::SetEntryIndex(this, a2);
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::SaveSubTlvOffset(ot::NetworkData::NetworkData::NetworkDataIterator *this, const ot::NetworkData::NetworkDataTlv *a2, const ot::NetworkData::NetworkDataTlv *a3)
{
  return ot::NetworkData::NetworkData::NetworkDataIterator::SetSubTlvOffset(this, a2 - a3);
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::SaveSubTlvOffset(this, a2, a3);
}

uint64_t ot::NetworkData::NetworkData::NetworkDataIterator::SetSubTlvOffset(uint64_t this, char a2)
{
  *(*this + 1) = a2;
  return this;
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::SetSubTlvOffset(this, a2);
}

_BYTE **ot::NetworkData::NetworkData::NetworkDataIterator::SaveTlvOffset(ot::NetworkData::NetworkData::NetworkDataIterator *this, const ot::NetworkData::NetworkDataTlv *a2, const unsigned __int8 *a3)
{
  return ot::NetworkData::NetworkData::NetworkDataIterator::SetTlvOffset(this, a2 - a3);
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::SaveTlvOffset(this, a2, a3);
}

_BYTE **ot::NetworkData::NetworkData::NetworkDataIterator::SetTlvOffset(_BYTE **this, char a2)
{
  **this = a2;
  return this;
}

{
  return ot::NetworkData::NetworkData::NetworkDataIterator::SetTlvOffset(this, a2);
}

char *ot::NetworkData::ServiceTlv::GetServiceData(ot::NetworkData::ServiceTlv *this)
{
  if (ot::NetworkData::ServiceTlv::IsThreadEnterprise(this))
  {
    v2 = this + 3;
  }

  else
  {
    v2 = this + 7;
  }

  return v2 + 1;
}

{
  return ot::NetworkData::ServiceTlv::GetServiceData(this);
}

void ot::AsNonConst<ot::NetworkData::NetworkDataTlv>()
{
  ;
}

{
  ot::AsNonConst<ot::NetworkData::NetworkDataTlv>();
}

uint64_t ot::NetworkData::NetworkData::GetTlvsStart(ot::NetworkData::NetworkData *this)
{
  return *this;
}

{
  return ot::NetworkData::NetworkData::GetTlvsStart(this);
}

uint64_t ot::NetworkData::NetworkDataTlv::SetLength(uint64_t this, char a2)
{
  *(this + 1) = a2;
  return this;
}

{
  return ot::NetworkData::NetworkDataTlv::SetLength(this, a2);
}

unsigned __int16 *ot::Array<unsigned short,(unsigned short)85,unsigned char>::Find(uint64_t a1, unsigned __int16 *a2)
{
  v7 = 0;
  ot::Array<unsigned short,(unsigned short)85,unsigned char>::begin();
  v5 = v2;
  v4 = ot::Array<unsigned short,(unsigned short)85,unsigned char>::end(a1);
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
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::Find(a1, a2);
}

void ot::Array<unsigned short,(unsigned short)85,unsigned char>::begin()
{
  ;
}

{
  ;
}

{
  ot::Array<unsigned short,(unsigned short)85,unsigned char>::begin();
}

{
  ot::Array<unsigned short,(unsigned short)85,unsigned char>::begin();
}

uint64_t ot::Array<unsigned short,(unsigned short)85,unsigned char>::end(uint64_t a1)
{
  return a1 + 2 * *(a1 + 170);
}

{
  return a1 + 2 * *(a1 + 170);
}

{
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::end(a1);
}

{
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::end(a1);
}

BOOL ot::Array<unsigned short,(unsigned short)85,unsigned char>::IsFull(uint64_t a1)
{
  v2 = *(a1 + 170);
  return v2 == ot::Array<unsigned short,(unsigned short)85,unsigned char>::GetMaxSize();
}

{
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::IsFull(a1);
}

uint64_t ot::Array<unsigned short,(unsigned short)85,unsigned char>::GetMaxSize()
{
  return 85;
}

{
  return ot::Array<unsigned short,(unsigned short)85,unsigned char>::GetMaxSize();
}

void ot::NetworkData::PrefixTlv::FindSubTlv(uint64_t a1, unsigned __int8 a2)
{
  ot::AsConst<ot::NetworkData::PrefixTlv>();
  ot::NetworkData::PrefixTlv::FindSubTlv(v2, a2);
  ot::AsNonConst<ot::NetworkData::NetworkDataTlv>();
}

{
  ot::NetworkData::PrefixTlv::FindSubTlv(a1, a2);
}

void ot::AsConst<ot::NetworkData::PrefixTlv>()
{
  ;
}

{
  ot::AsConst<ot::NetworkData::PrefixTlv>();
}

ot::Crypto::LiteralKey *ot::Crypto::LiteralKey::LiteralKey(ot::Crypto::LiteralKey *this, const ot::Crypto::Key *a2)
{
  *this = ot::Crypto::Key::GetBytes(a2);
  Length = ot::Crypto::Key::GetLength(a2);
  result = this;
  *(this + 4) = Length;
  return result;
}

{
  ot::Crypto::LiteralKey::LiteralKey(this, a2);
  return this;
}

uint64_t ot::Crypto::Key::GetBytes(ot::Crypto::Key *this)
{
  return *this;
}

{
  return ot::Crypto::Key::GetBytes(this);
}

uint64_t ot::Crypto::Key::GetLength(ot::Crypto::Key *this)
{
  return *(this + 4);
}

{
  return ot::Crypto::Key::GetLength(this);
}

ot::NetworkData::Leader *ot::NetworkData::Leader::Leader(ot::NetworkData::Leader *this, ot::Instance *a2)
{
  ot::NetworkData::MutableNetworkData::MutableNetworkData(this, a2, this + 12, 0, 254);
  *(this + 266) = 0;
  *(this + 267) = 0;
  *(this + 268) = 0;
  ot::NetworkData::Leader::ContextIds::ContextIds((this + 272), a2);
  ot::TimerMilliIn<ot::NetworkData::Leader,&ot::NetworkData::Leader::HandleTimer>::TimerMilliIn((this + 344), a2);
  ot::NetworkData::Leader::Reset(this);
  return this;
}

{
  ot::NetworkData::Leader::Leader(this, a2);
  return this;
}

ot::TimerMilli *ot::TimerMilliIn<ot::NetworkData::Leader,&ot::NetworkData::Leader::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::NetworkData::Leader,&ot::NetworkData::Leader::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::NetworkData::Leader,&ot::NetworkData::Leader::HandleTimer>::HandleTimer);
  return a1;
}

ot::NetworkData::Leader::ContextIds *ot::NetworkData::Leader::Reset(ot::NetworkData::Leader *this)
{
  Uint8 = ot::Random::NonCrypto::GetUint8(this);
  *(this + 11) = Uint8;
  *(this + 10) = ot::Random::NonCrypto::GetUint8(Uint8);
  ot::NetworkData::MutableNetworkData::SetLength(this, 0);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("NetworkData", "%s: SignalNetDataChanged", v2, v3, v4, v5, v6, v7, "Reset");
  ot::NetworkData::Leader::SignalNetDataChanged(this);
  return ot::NetworkData::Leader::ContextIds::Clear((this + 272));
}

uint64_t ot::NetworkData::Leader::SignalNetDataChanged(ot::NetworkData::Leader *this)
{
  v4 = *(this + 266);
  Length = ot::NetworkData::NetworkData::GetLength(this);
  *(this + 266) = ot::Max<unsigned char>(v4, Length);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
  return ot::Notifier::Signal(v2, 512);
}

uint64_t ot::NetworkData::Leader::GetServiceId(const unsigned __int8 **a1, int a2, uint64_t a3, char a4, _BYTE *a5)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = a5;
  v9 = 23;
  v8 = 0;
  while (!ot::NetworkData::NetworkData::GetNextService(a1, &v8, v15))
  {
    ot::NetworkData::ServiceConfig::GetServiceData(v15, v7);
    if (v13 == v16 && ot::Data<(ot::DataLengthType)0>::operator==(v12, v7) && (v11 & 1) == (v17 & 1))
    {
      *v10 = v15[0];
      return 0;
    }
  }

  return v9;
}

uint64_t ot::NetworkData::ServiceConfig::GetServiceData(uint64_t a1, uint64_t a2)
{
  return ot::Data<(ot::DataLengthType)0>::Init(a2, a1 + 9, *(a1 + 8));
}

{
  return ot::NetworkData::ServiceConfig::GetServiceData(a1, a2);
}

uint64_t ot::NetworkData::Leader::GetPreferredNat64Prefix(const unsigned __int8 **this, ot::NetworkData::ExternalRouteConfig *a2)
{
  v16 = this;
  v15 = a2;
  v14 = 23;
  v13 = 0;
  while (!ot::NetworkData::NetworkData::GetNextExternalRoute(this, &v13, &v11))
  {
    if ((v12 & 0x400000000) != 0)
    {
      Prefix = ot::NetworkData::ExternalRouteConfig::GetPrefix(&v11);
      if (ot::Ip6::Prefix::IsValidNat64(Prefix))
      {
        if (v14 == 23 || (v3 = (BYTE4(v12) << 6) >> 6, v4 = __OFSUB__(v3, (*(v15 + 20) << 6) >> 6), v5 = v3 - ((*(v15 + 20) << 6) >> 6), !((v5 < 0) ^ v4 | (v5 == 0))) || ((BYTE4(v12) << 6) >> 6) == ((*(v15 + 20) << 6) >> 6) && (v9 = ot::NetworkData::ExternalRouteConfig::GetPrefix(&v11), v6 = ot::NetworkData::ExternalRouteConfig::GetPrefix(v15), ot::Ip6::Prefix::operator<(v9, v6)))
        {
          v7 = v15;
          *v15 = v11;
          *(v7 + 2) = v12;
          v14 = 0;
        }
      }
    }
  }

  return v14;
}

ot::NetworkData::PrefixTlv *ot::NetworkData::Leader::FindNextMatchingPrefixTlv(ot::NetworkData::Leader *this, const ot::Ip6::Address *a2, const ot::NetworkData::PrefixTlv *a3)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = 0;
  if (a3)
  {
    Next = ot::NetworkData::NetworkDataTlv::GetNext(v13);
  }

  else
  {
    Next = ot::NetworkData::NetworkData::GetTlvsStart(this);
  }

  TlvsEnd = ot::NetworkData::NetworkData::GetTlvsEnd(this);
  ot::Cli::Dataset::Dataset(v11, Next, TlvsEnd);
  do
  {
    ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::PrefixTlv>(v11);
    v12 = v4;
    if (!v4)
    {
      break;
    }

    v8 = v14;
    Prefix = ot::NetworkData::PrefixTlv::GetPrefix(v12);
    PrefixLength = ot::NetworkData::PrefixTlv::GetPrefixLength(v12);
  }

  while (!ot::Ip6::Address::MatchesPrefix(v8, Prefix, PrefixLength));
  return v12;
}

uint64_t ot::NetworkData::PrefixTlv::GetPrefixLength(ot::NetworkData::PrefixTlv *this)
{
  return *(this + 3);
}

{
  return ot::NetworkData::PrefixTlv::GetPrefixLength(this);
}

uint64_t ot::NetworkData::Leader::GetContext(ot::InstanceLocator *a1, const ot::Ip6::Address *a2, ot::Ip6::Prefix *a3)
{
  NextMatchingPrefixTlv = 0;
  ot::Ip6::Prefix::SetLength(a3, 0);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
  if (ot::Mle::Mle::IsMeshLocalAddress(v3, a2))
  {
    ot::NetworkData::Leader::GetContextForMeshLocalPrefix(a1, a3);
  }

  while (1)
  {
    NextMatchingPrefixTlv = ot::NetworkData::Leader::FindNextMatchingPrefixTlv(a1, a2, NextMatchingPrefixTlv);
    if (!NextMatchingPrefixTlv)
    {
      break;
    }

    ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::ContextTlv>(NextMatchingPrefixTlv);
    v8 = v4;
    if (v4)
    {
      PrefixLength = ot::NetworkData::PrefixTlv::GetPrefixLength(NextMatchingPrefixTlv);
      if (PrefixLength > ot::Ip6::Prefix::GetLength(a3))
      {
        ot::NetworkData::PrefixTlv::CopyPrefixTo(NextMatchingPrefixTlv, a3);
        *(a3 + 17) = ot::NetworkData::ContextTlv::GetContextId(v8);
        *(a3 + 18) = ot::NetworkData::ContextTlv::IsCompress(v8);
        *(a3 + 19) = 1;
      }
    }
  }

  if (ot::Ip6::Prefix::GetLength(a3) <= 0)
  {
    return 23;
  }

  else
  {
    return 0;
  }
}

void *ot::NetworkData::Leader::GetContextForMeshLocalPrefix(ot::InstanceLocator *a1, ot::Ip6::Prefix *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
  MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v2);
  result = ot::Ip6::Prefix::Set(a2, MeshLocalPrefix);
  *(a2 + 17) = 0;
  *(a2 + 18) = 1;
  *(a2 + 19) = 1;
  return result;
}

void ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::ContextTlv>(ot::NetworkData::PrefixTlv *a1)
{
  ot::NetworkData::PrefixTlv::FindSubTlv(a1, 3u);
  ot::NetworkData::As<ot::NetworkData::ContextTlv>();
}

{
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::ContextTlv>(a1);
}

void *ot::NetworkData::PrefixTlv::CopyPrefixTo(ot::NetworkData::PrefixTlv *this, ot::Ip6::Prefix *a2)
{
  Prefix = ot::NetworkData::PrefixTlv::GetPrefix(this);
  PrefixLength = ot::NetworkData::PrefixTlv::GetPrefixLength(this);
  return ot::Ip6::Prefix::Set(a2, Prefix, PrefixLength);
}

{
  return ot::NetworkData::PrefixTlv::CopyPrefixTo(this, a2);
}

BOOL ot::NetworkData::ContextTlv::IsCompress(ot::NetworkData::ContextTlv *this)
{
  return (*(this + 2) & 0x10) != 0;
}

{
  return ot::NetworkData::ContextTlv::IsCompress(this);
}

ot::NetworkData::PrefixTlv *ot::NetworkData::Leader::FindPrefixTlvForContextId(ot::NetworkData::Leader *this, unsigned __int8 a2, const ot::NetworkData::ContextTlv **a3)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  TlvsStart = ot::NetworkData::NetworkData::GetTlvsStart(this);
  TlvsEnd = ot::NetworkData::NetworkData::GetTlvsEnd(this);
  ot::Cli::Dataset::Dataset(v12, TlvsStart, TlvsEnd);
  while (1)
  {
    ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::PrefixTlv>(v12);
    v11 = v4;
    if (!v4)
    {
      break;
    }

    ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::ContextTlv>(v4);
    v10 = v5;
    if (v5)
    {
      ContextId = ot::NetworkData::ContextTlv::GetContextId(v5);
      if (ContextId == v14)
      {
        *v13 = v10;
        return v11;
      }
    }
  }

  return v11;
}

uint64_t ot::NetworkData::Leader::GetContext(ot::NetworkData::NetworkData *a1, unsigned __int8 a2, ot::Ip6::Prefix *a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = 0;
  TlvsStart = ot::NetworkData::NetworkData::GetTlvsStart(a1);
  TlvsEnd = ot::NetworkData::NetworkData::GetTlvsEnd(a1);
  ot::Cli::Dataset::Dataset(&v11, TlvsStart, TlvsEnd);
  PrefixTlvForContextId = 0;
  v9 = 0;
  if (v14)
  {
    PrefixTlvForContextId = ot::NetworkData::Leader::FindPrefixTlvForContextId(a1, v14, &v9);
    if (PrefixTlvForContextId)
    {
      ot::NetworkData::PrefixTlv::CopyPrefixTo(PrefixTlvForContextId, v13);
      ContextId = ot::NetworkData::ContextTlv::GetContextId(v9);
      *(v13 + 17) = ContextId;
      IsCompress = ot::NetworkData::ContextTlv::IsCompress(v9);
      *(v13 + 18) = IsCompress;
      *(v13 + 19) = 1;
    }

    else
    {
      return 23;
    }
  }

  else
  {
    ot::NetworkData::Leader::GetContextForMeshLocalPrefix(a1, v13);
  }

  return v12;
}

void *ot::Ip6::Prefix::Set(ot::Ip6::Prefix *a1, const unsigned __int8 *a2)
{
  return ot::Ip6::Prefix::Set(a1, a2, 0x40u);
}

{
  return ot::Ip6::Prefix::Set(a1, a2);
}

uint64_t ot::NetworkData::Leader::IsOnMesh(ot::NetworkData::Leader *this, const ot::Ip6::Address *a2)
{
  v12 = this;
  v11 = a2;
  NextMatchingPrefixTlv = 0;
  v9 = 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsMeshLocalAddress(v2, v11))
  {
    v9 = 1;
  }

  else
  {
    while (1)
    {
      NextMatchingPrefixTlv = ot::NetworkData::Leader::FindNextMatchingPrefixTlv(this, v11, NextMatchingPrefixTlv);
      if (!NextMatchingPrefixTlv)
      {
        break;
      }

      ot::NetworkData::TlvIterator::TlvIterator(v8, NextMatchingPrefixTlv);
      while (1)
      {
        ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::BorderRouterTlv>(v8);
        v7 = v3;
        if (!v3)
        {
          break;
        }

        for (i = ot::NetworkData::BorderRouterTlv::GetFirstEntry(v3); i <= ot::NetworkData::BorderRouterTlv::GetLastEntry(v7); i = ot::NetworkData::BorderRouterEntry::GetNext(i))
        {
          if (ot::NetworkData::BorderRouterEntry::IsOnMesh(i))
          {
            v9 = 1;
            return v9 & 1;
          }
        }
      }
    }
  }

  return v9 & 1;
}

ot::NetworkData::TlvIterator *ot::NetworkData::TlvIterator::TlvIterator(ot::NetworkData::TlvIterator *this, const ot::NetworkData::PrefixTlv *a2)
{
  SubTlvs = ot::NetworkData::PrefixTlv::GetSubTlvs(a2);
  Next = ot::NetworkData::NetworkDataTlv::GetNext(a2);
  ot::Cli::Dataset::Dataset(this, SubTlvs, Next);
  return this;
}

void ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::BorderRouterTlv>(uint64_t a1)
{
  ot::NetworkData::TlvIterator::Iterate(a1, 2u);
  ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
}

{
  ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::BorderRouterTlv>(a1);
}

BOOL ot::NetworkData::BorderRouterEntry::IsOnMesh(ot::NetworkData::BorderRouterEntry *this)
{
  return (ot::BigEndian::HostSwap16(*(this + 1)) & 0x100) != 0;
}

{
  return ot::NetworkData::BorderRouterEntry::IsOnMesh(this);
}

uint64_t ot::NetworkData::Leader::RouteLookup(ot::NetworkData::Leader *this, const ot::Ip6::Address *a2, const ot::Ip6::Address *a3, unsigned __int16 *a4)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = 4;
  NextMatchingPrefixTlv = 0;
  while (1)
  {
    NextMatchingPrefixTlv = ot::NetworkData::Leader::FindNextMatchingPrefixTlv(this, v14, NextMatchingPrefixTlv);
    if (!NextMatchingPrefixTlv)
    {
      break;
    }

    ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(NextMatchingPrefixTlv);
    if (v4)
    {
      DomainId = ot::NetworkData::PrefixTlv::GetDomainId(NextMatchingPrefixTlv);
      if (!ot::NetworkData::Leader::ExternalRouteLookup(this, DomainId, v13, v12))
      {
        return 0;
      }

      if (!ot::NetworkData::Leader::DefaultRouteLookup(this, NextMatchingPrefixTlv, v12))
      {
        return 0;
      }
    }
  }

  v9 = 0;
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::Slaac>(this);
  if (!ot::Utils::Slaac::FindDomainIdFor(v6, v14, &v9))
  {
    return ot::NetworkData::Leader::ExternalRouteLookup(this, v9, v13, v12);
  }

  return v11;
}

void ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(ot::NetworkData::PrefixTlv *a1)
{
  ot::NetworkData::PrefixTlv::FindSubTlv(a1, 2u);
  ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
}

{
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(a1);
}

uint64_t ot::NetworkData::Leader::ExternalRouteLookup(ot::NetworkData::Leader *this, unsigned __int8 a2, const ot::Ip6::Address *a3, unsigned __int16 *a4)
{
  v20 = this;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = 4;
  NextMatchingPrefixTlv = 0;
  v14 = 0;
  v13 = 0;
  while (1)
  {
    NextMatchingPrefixTlv = ot::NetworkData::Leader::FindNextMatchingPrefixTlv(this, v18, NextMatchingPrefixTlv);
    if (!NextMatchingPrefixTlv)
    {
      break;
    }

    v12 = 0;
    PrefixLength = ot::NetworkData::PrefixTlv::GetPrefixLength(NextMatchingPrefixTlv);
    ot::NetworkData::TlvIterator::TlvIterator(v10, NextMatchingPrefixTlv);
    DomainId = ot::NetworkData::PrefixTlv::GetDomainId(NextMatchingPrefixTlv);
    if (DomainId == v19 && (!v14 || PrefixLength > v13))
    {
      while (1)
      {
        ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::HasRouteTlv>(v10);
        v12 = v5;
        if (!v5)
        {
          break;
        }

        for (i = ot::NetworkData::HasRouteTlv::GetFirstEntry(v12); i <= ot::NetworkData::HasRouteTlv::GetLastEntry(v12); i = ot::NetworkData::HasRouteEntry::GetNext(i))
        {
          if (!v14 || PrefixLength > v13 || ot::NetworkData::Leader::CompareRouteEntries(this, i, v14) > 0)
          {
            v14 = i;
            v13 = PrefixLength;
          }
        }
      }
    }
  }

  if (v14)
  {
    Rloc = ot::NetworkData::HasRouteEntry::GetRloc(v14);
    *v17 = Rloc;
    return 0;
  }

  return v16;
}

uint64_t ot::NetworkData::Leader::CompareRouteEntries(ot::NetworkData::Leader *this, const ot::NetworkData::BorderRouterEntry *a2, const ot::NetworkData::BorderRouterEntry *a3)
{
  Preference = ot::NetworkData::BorderRouterEntry::GetPreference(a2);
  Rloc = ot::NetworkData::BorderRouterEntry::GetRloc(a2);
  v7 = ot::NetworkData::BorderRouterEntry::GetPreference(a3);
  v3 = ot::NetworkData::BorderRouterEntry::GetRloc(a3);
  return ot::NetworkData::Leader::CompareRouteEntries(this, Preference, Rloc, v7, v3);
}

uint64_t ot::NetworkData::Leader::CompareRouteEntries(ot::NetworkData::Leader *this, char a2, unsigned __int16 a3, char a4, unsigned __int16 a5)
{
  v13 = ot::ThreeWayCompare<signed char>(a2, a4);
  if (!v13)
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
    PathCost = ot::RouterTable::GetPathCost(v5, a5);
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
    v7 = ot::RouterTable::GetPathCost(v6, a3);
    v13 = ot::ThreeWayCompare<unsigned char>(PathCost, v7);
    if (!v13)
    {
      IsRouterRloc16 = ot::Mle::IsRouterRloc16(a3);
      v8 = ot::Mle::IsRouterRloc16(a5);
      return ot::ThreeWayCompare<BOOL>(IsRouterRloc16, v8);
    }
  }

  return v13;
}

uint64_t ot::NetworkData::BorderRouterEntry::GetPreference(ot::NetworkData::BorderRouterEntry *this)
{
  Flags = ot::NetworkData::BorderRouterEntry::GetFlags(this);
  return ot::NetworkData::BorderRouterEntry::PreferenceFromFlags(Flags);
}

{
  return ot::NetworkData::BorderRouterEntry::GetPreference(this);
}

uint64_t ot::NetworkData::Leader::CompareRouteEntries(ot::NetworkData::Leader *this, const ot::NetworkData::HasRouteEntry *a2, const ot::NetworkData::HasRouteEntry *a3)
{
  Preference = ot::NetworkData::HasRouteEntry::GetPreference(a2);
  Rloc = ot::NetworkData::HasRouteEntry::GetRloc(a2);
  v7 = ot::NetworkData::HasRouteEntry::GetPreference(a3);
  v3 = ot::NetworkData::HasRouteEntry::GetRloc(a3);
  return ot::NetworkData::Leader::CompareRouteEntries(this, Preference, Rloc, v7, v3);
}

uint64_t ot::NetworkData::HasRouteEntry::GetPreference(ot::NetworkData::HasRouteEntry *this)
{
  Flags = ot::NetworkData::HasRouteEntry::GetFlags(this);
  return ot::NetworkData::HasRouteEntry::PreferenceFromFlags(Flags);
}

{
  return ot::NetworkData::HasRouteEntry::GetPreference(this);
}

uint64_t ot::NetworkData::Leader::CompareRouteEntries(ot::NetworkData::Leader *this, const ot::NetworkData::ServerTlv *a2, const ot::NetworkData::ServerTlv *a3)
{
  Server16 = ot::NetworkData::ServerTlv::GetServer16(a2);
  v3 = ot::NetworkData::ServerTlv::GetServer16(a3);
  return ot::NetworkData::Leader::CompareRouteEntries(this, 0, Server16, 0, v3);
}

void ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::HasRouteTlv>(uint64_t a1)
{
  ot::NetworkData::TlvIterator::Iterate(a1, 0);
  ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
}

{
  ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::HasRouteTlv>(a1);
}

uint64_t ot::NetworkData::Leader::LookupRouteIn(ot::NetworkData::Leader *this, const ot::NetworkData::PrefixTlv *a2, BOOL (*a3)(const ot::NetworkData::BorderRouterEntry *), unsigned __int16 *a4)
{
  v16 = this;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = 4;
  ot::NetworkData::TlvIterator::TlvIterator(v11, a2);
  v9 = 0;
  while (1)
  {
    ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::BorderRouterTlv>(v11);
    v10 = v4;
    if (!v4)
    {
      break;
    }

    for (i = ot::NetworkData::BorderRouterTlv::GetFirstEntry(v4); i <= ot::NetworkData::BorderRouterTlv::GetLastEntry(v10); i = ot::NetworkData::BorderRouterEntry::GetNext(i))
    {
      if (((v14)(i) & 1) != 0 && (!v9 || ot::NetworkData::Leader::CompareRouteEntries(this, i, v9) > 0))
      {
        v9 = i;
      }
    }
  }

  if (v9)
  {
    Rloc = ot::NetworkData::BorderRouterEntry::GetRloc(v9);
    *v13 = Rloc;
    return 0;
  }

  return v12;
}

BOOL ot::NetworkData::BorderRouterEntry::IsDefaultRoute(ot::NetworkData::BorderRouterEntry *this)
{
  return (ot::BigEndian::HostSwap16(*(this + 1)) & 0x200) != 0;
}

{
  return ot::NetworkData::BorderRouterEntry::IsDefaultRoute(this);
}

uint64_t ot::NetworkData::Leader::SetNetworkData(ot::NetworkData::MutableNetworkData *a1, char a2, char a3, char a4, ot::Message *a5, ot::OffsetRange *a6)
{
  Length = ot::OffsetRange::GetLength(a6);
  if (Length <= 0xFEu)
  {
    Offset = ot::OffsetRange::GetOffset(a6);
    ot::NetworkData::MutableNetworkData::GetBytes(a1);
    v24 = ot::Message::Read(a5, Offset, v6, Length);
    if (!v24)
    {
      ot::NetworkData::MutableNetworkData::SetLength(a1, Length);
      *(a1 + 11) = a2;
      *(a1 + 10) = a3;
      if (a4 == 1)
      {
        ot::NetworkData::MutableNetworkData::RemoveTemporaryData(a1);
      }

      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
      if (ot::Mle::Mle::IsLeader(v7))
      {
        v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
        ot::NetworkData::Leader::HandleNetworkDataRestoredAfterReset(v8);
      }

      ot::NetworkData::MutableNetworkData::GetBytes(a1);
      v19 = v9;
      v10 = ot::NetworkData::NetworkData::GetLength(a1);
      encode_data_into_string(v19, v10, v30, 0x3E8uLL, 0);
      v20 = *(a1 + 11);
      v18 = *(a1 + 10);
      ot::NetworkData::NetworkData::GetLength(a1);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("NetworkData", "SetNetworkData, SignalNetDataChanged ver=%d, stable_ver=%d, len=%d, data=%s", v11, v12, v13, v14, v15, v16, v20);
      ot::NetworkData::Leader::SignalNetDataChanged(a1);
    }
  }

  else
  {
    return 6;
  }

  return v24;
}

uint64_t ot::NetworkData::Leader::setStringAsNetworkData(ot::NetworkData::Leader *this, char *a2, size_t a3, char a4, char a5)
{
  v23 = this;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v13 = this;
  v18 = 0;
  if (a3)
  {
    v17 = v10;
    __chkstk_darwin(this);
    v12 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v11 = v12;
    v16 = v5;
    bzero(v12, v21);
    v15 = parse_string_into_data(v12, v21, v22);
    if (v15 == v21)
    {
      v18 = 6;
      v14 = 4;
    }

    else
    {
      ot::NetworkData::MutableNetworkData::SetLength(v13, v15);
      ot::NetworkData::MutableNetworkData::GetBytes(v13);
      memcpy(v6, v11, v15);
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v13);
      if (ot::Mle::Mle::IsLeader(v7))
      {
        v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(v13);
        ot::NetworkData::Leader::HandleNetworkDataRestoredAfterReset(v8);
      }

      v14 = 0;
    }
  }

  return v18;
}

void ot::NetworkData::Leader::FindCommissioningData(ot::NetworkData::Leader *this)
{
  TlvsStart = ot::NetworkData::NetworkData::GetTlvsStart(this);
  TlvsEnd = ot::NetworkData::NetworkData::GetTlvsEnd(this);
  ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::CommissioningDataTlv>(TlvsStart, TlvsEnd);
}

{
  ot::AsConst<ot::NetworkData::Leader>();
  ot::NetworkData::Leader::FindCommissioningData(v1);
  ot::AsNonConst<ot::NetworkData::CommissioningDataTlv>();
}

{
  ot::NetworkData::Leader::FindCommissioningData(this);
}

void ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::CommissioningDataTlv>(ot::NetworkData::NetworkDataTlv *a1, unint64_t a2)
{
  ot::NetworkData::NetworkDataTlv::Find(a1, a2, 4u);
  ot::NetworkData::As<ot::NetworkData::CommissioningDataTlv>();
}

{
  ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::CommissioningDataTlv>(a1, a2);
}

uint64_t ot::NetworkData::Leader::FindCommissioningDataSubTlv(ot::NetworkData::Leader *this, unsigned __int8 a2)
{
  v8 = 0;
  ot::NetworkData::Leader::FindCommissioningData(this);
  v7 = v2;
  if (v2)
  {
    Value = ot::NetworkData::NetworkDataTlv::GetValue(v2);
    Length = ot::NetworkData::NetworkDataTlv::GetLength(v7);
    ot::Tlv::FindTlv(Value, Length, a2);
    ot::As<ot::MeshCoP::Tlv>();
    return v4;
  }

  return v8;
}

uint64_t ot::NetworkData::Leader::ReadCommissioningDataUint16SubTlv(ot::NetworkData::Leader *a1, unsigned __int8 a2, _WORD *a3)
{
  v7 = 0;
  CommissioningDataSubTlv = ot::NetworkData::Leader::FindCommissioningDataSubTlv(a1, a2);
  if (CommissioningDataSubTlv)
  {
    if (ot::Tlv::GetLength(CommissioningDataSubTlv) >= 2uLL)
    {
      Value = ot::Tlv::GetValue(CommissioningDataSubTlv);
      *a3 = ot::BigEndian::ReadUint16(Value, v4);
    }

    else
    {
      return 6;
    }
  }

  else
  {
    return 23;
  }

  return v7;
}

void ot::NetworkData::Leader::GetCommissioningDataset(ot::NetworkData::Leader *this, ot::MeshCoP::CommissioningDataset *a2)
{
  ot::NetworkData::Leader::FindCommissioningData(this);
  v10 = v2;
  ot::Clearable<ot::MeshCoP::CommissioningDataset>::Clear(a2);
  if (v10)
  {
    *(a2 + 24) = *(a2 + 24) & 0xFE | (ot::NetworkData::Leader::FindBorderAgentRloc(this, a2) == 0);
    *(a2 + 24) = *(a2 + 24) & 0xFD | (2 * (ot::NetworkData::Leader::FindCommissioningSessionId(this, a2 + 1) == 0));
    *(a2 + 24) = *(a2 + 24) & 0xF7 | (8 * (ot::NetworkData::Leader::FindJoinerUdpPort(this, a2 + 11) == 0));
    v3 = ot::AsCoreType<otSteeringData>(a2 + 4);
    *(a2 + 24) = *(a2 + 24) & 0xFB | (4 * (ot::NetworkData::Leader::FindSteeringData(this, v3) == 0));
    Value = ot::NetworkData::NetworkDataTlv::GetValue(v10);
    v6 = ot::NetworkData::NetworkDataTlv::GetValue(v10);
    v8 = v6 + ot::NetworkData::NetworkDataTlv::GetLength(v10);
    while (Value < v8)
    {
      Type = ot::MeshCoP::Tlv::GetType(Value);
      if (Type != 9 && Type != 8 && Type != 11 && Type != 18)
      {
        *(a2 + 24) = *(a2 + 24) & 0xEF | 0x10;
        return;
      }

      ot::MeshCoP::Tlv::GetNext(Value);
      Value = v4;
    }
  }
}

uint64_t ot::NetworkData::Leader::FindSteeringData(ot::NetworkData::Leader *this, ot::MeshCoP::SteeringData *a2)
{
  v4 = 0;
  ot::NetworkData::Leader::FindInCommissioningData<ot::MeshCoP::SteeringDataTlv>(this);
  if (v2)
  {
    ot::MeshCoP::SteeringDataTlv::CopyTo(v2, a2);
  }

  else
  {
    return 23;
  }

  return v4;
}

void ot::NetworkData::Leader::FindInCommissioningData<ot::MeshCoP::SteeringDataTlv>(ot::NetworkData::Leader *a1)
{
  ot::NetworkData::Leader::FindCommissioningDataSubTlv(a1, 8u);
  ot::As<ot::MeshCoP::SteeringDataTlv>();
}

{
  ot::NetworkData::Leader::FindInCommissioningData<ot::MeshCoP::SteeringDataTlv>(a1);
}

uint64_t ot::NetworkData::Leader::IsJoiningAllowed(ot::NetworkData::Leader *this)
{
  v2 = 0;
  if (!ot::NetworkData::Leader::FindSteeringData(this, v3))
  {
    v2 = (ot::MeshCoP::SteeringData::IsEmpty(v3) ^ 1) & 1;
  }

  return v2 & 1;
}

uint64_t ot::MeshCoP::SteeringData::IsEmpty(ot::MeshCoP::SteeringData *this)
{
  return ot::MeshCoP::SteeringData::DoesAllMatch(this, 0);
}

{
  return ot::MeshCoP::SteeringData::IsEmpty(this);
}

uint64_t ot::NetworkData::Leader::SteeringDataCheck(ot::NetworkData::Leader *a1, unsigned __int16 *a2)
{
  v4 = 13;
  if (!ot::NetworkData::Leader::FindSteeringData(a1, v6))
  {
    if (ot::MeshCoP::SteeringData::Contains(v6, a2))
    {
      return 0;
    }

    else
    {
      return 23;
    }
  }

  return v4;
}

uint64_t ot::NetworkData::Leader::SteeringDataCheckJoiner(ot::NetworkData::Leader *this, const ot::Mac::ExtAddress *a2, ot::Mac::ExtAddress *a3)
{
  v7 = this;
  v6 = a2;
  ot::MeshCoP::ComputeJoinerId(a2, v8, a3);
  ot::MeshCoP::SteeringData::CalculateHashBitIndexes(v8, v5);
  return ot::NetworkData::Leader::SteeringDataCheck(this, v5);
}

uint64_t ot::NetworkData::Leader::SteeringDataCheckJoiner(ot::NetworkData::Leader *this, const ot::MeshCoP::JoinerDiscerner *a2)
{
  v6 = this;
  v5 = a2;
  ot::MeshCoP::SteeringData::CalculateHashBitIndexes(a2, v4);
  return ot::NetworkData::Leader::SteeringDataCheck(this, v4);
}

uint64_t ot::NetworkData::BorderRouterEntry::PreferenceFromFlags(ot::NetworkData::BorderRouterEntry *this)
{
  return ot::NetworkData::RoutePreferenceFromValue((this >> 14));
}

{
  return ot::NetworkData::BorderRouterEntry::PreferenceFromFlags(this);
}

uint64_t ot::NetworkData::BorderRouterEntry::GetFlags(ot::NetworkData::BorderRouterEntry *this)
{
  return ot::BigEndian::HostSwap16(*(this + 1));
}

{
  return ot::NetworkData::BorderRouterEntry::GetFlags(this);
}

uint64_t ot::NetworkData::RoutePreferenceFromValue(ot::NetworkData *this)
{
  return ot::Preference::From2BitUint(this);
}

{
  return ot::NetworkData::RoutePreferenceFromValue(this);
}

uint64_t ot::NetworkData::HasRouteEntry::PreferenceFromFlags(ot::NetworkData::HasRouteEntry *this)
{
  return ot::NetworkData::RoutePreferenceFromValue((this >> 6));
}

{
  return ot::NetworkData::HasRouteEntry::PreferenceFromFlags(this);
}

uint64_t ot::NetworkData::HasRouteEntry::GetFlags(ot::NetworkData::HasRouteEntry *this)
{
  return *(this + 2);
}

{
  return ot::NetworkData::HasRouteEntry::GetFlags(this);
}

void ot::NetworkData::As<ot::NetworkData::CommissioningDataTlv>()
{
  ;
}

{
  ;
}

{
  ot::NetworkData::As<ot::NetworkData::CommissioningDataTlv>();
}

{
  ot::NetworkData::As<ot::NetworkData::CommissioningDataTlv>();
}

void ot::As<ot::MeshCoP::SteeringDataTlv>()
{
  ;
}

{
  ot::As<ot::MeshCoP::SteeringDataTlv>();
}

_BYTE *ot::NetworkData::Leader::Start(_BYTE *result, char a2)
{
  if (result[267])
  {
    __assert_rtn("Start", "network_data_leader_ftd.cpp", 64, "!mIsClone");
  }

  result[268] = a2 == 1;
  if (result[268])
  {
    return ot::TimerMilli::Start((result + 344), 0xEA60u);
  }

  return result;
}

void ot::NetworkData::Leader::HandleTimer(ot::NetworkData::Leader *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 268))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetworkData", "Timed out waiting for netdata on restoring leader role after reset", a3, a4, a5, a6, a7, a8, this);
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v9);
    ot::Mle::Mle::BecomeDetached(v8);
    IgnoreError();
  }

  else
  {
    ot::NetworkData::Leader::ContextIds::HandleTimer((this + 272));
  }
}

ot::NetworkData::Leader *ot::NetworkData::Leader::IncrementVersion(ot::NetworkData::Leader *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  result = ot::Mle::Mle::IsLeader(v1);
  if (result)
  {
    return ot::NetworkData::Leader::IncrementVersions(this, 0, v3, v4, v5, v6, v7, v8);
  }

  return result;
}

ot::NetworkData::Leader *ot::NetworkData::Leader::IncrementVersions(ot::NetworkData::Leader *this, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = this;
  if ((*(this + 267) & 1) == 0)
  {
    if (a2)
    {
      ++*(this + 10);
    }

    v8 = ++*(this + 11);
    v9 = *(this + 10);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("NetworkData", "%s: SignalNetDataChanged version=%d stable_version=%d", a3, a4, a5, a6, a7, a8, "IncrementVersions");
    return ot::NetworkData::Leader::SignalNetDataChanged(v10);
  }

  return this;
}

ot::NetworkData::Leader *ot::NetworkData::Leader::IncrementVersionAndStableVersion(ot::NetworkData::Leader *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  result = ot::Mle::Mle::IsLeader(v1);
  if (result)
  {
    return ot::NetworkData::Leader::IncrementVersions(this, 1, v3, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t ot::NetworkData::Leader::IncrementVersions(ot::NetworkData::Leader *this, const ot::NetworkData::Leader::ChangedFlags *a2)
{
  result = ot::NetworkData::Leader::ChangedFlags::DidChange(a2);
  if (result)
  {
    v3 = ot::NetworkData::Leader::ChangedFlags::DidStableChange(a2);
    return ot::NetworkData::Leader::IncrementVersions(this, v3, v4, v5, v6, v7, v8, v9);
  }

  return result;
}

uint64_t ot::NetworkData::Leader::ChangedFlags::DidChange(ot::NetworkData::Leader::ChangedFlags *this)
{
  return *this & 1;
}

{
  return ot::NetworkData::Leader::ChangedFlags::DidChange(this);
}

uint64_t ot::NetworkData::Leader::ChangedFlags::DidStableChange(ot::NetworkData::Leader::ChangedFlags *this)
{
  return *(this + 1) & 1;
}

{
  return ot::NetworkData::Leader::ChangedFlags::DidStableChange(this);
}

uint64_t ot::NetworkData::Leader::AnycastLookup(ot::NetworkData::Leader *this, unsigned __int16 a2, unsigned __int16 *a3)
{
  BorderAgentRloc = 0;
  *a3 = -2;
  if (a2 == 64512)
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    *a3 = ot::Mle::Mle::GetLeaderRloc16(v3);
  }

  else if (a2 > 0xFC0Fu)
  {
    if (a2 > 0xFC2Fu)
    {
      if (a2 > 0xFC37u)
      {
        if (a2 == 64568)
        {
          v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
          if (!ot::BackboneRouter::Leader::HasPrimary(v4))
          {
            return 2;
          }

          v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
          *a3 = ot::BackboneRouter::Leader::GetServer16(v5);
        }

        else if (a2 < 0xFC40u || a2 > 0xFC4Eu)
        {
          BorderAgentRloc = 2;
        }

        else
        {
          BorderAgentRloc = ot::NetworkData::Leader::LookupRouteForAgentAloc(this, a2 - 63, ot::NetworkData::Leader::IsEntryForNdAgent, a3);
        }
      }

      else
      {
        BorderAgentRloc = ot::NetworkData::Leader::FindBorderAgentRloc(this, a3);
      }
    }

    else
    {
      BorderAgentRloc = ot::NetworkData::Leader::LookupRouteForServiceAloc(this, a2, a3);
    }
  }

  else
  {
    BorderAgentRloc = ot::NetworkData::Leader::LookupRouteForAgentAloc(this, a2, ot::NetworkData::Leader::IsEntryForDhcp6Agent, a3);
  }

  if (!BorderAgentRloc)
  {
    if (*a3 == 65534)
    {
      return 4;
    }

    else if (ot::Mle::IsChildRloc16(*a3))
    {
      v9 = ot::Mle::ParentRloc16ForRloc16(*a3);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      if (!ot::Mle::Mle::HasRloc16(v6, v9))
      {
        *a3 = v9;
      }
    }
  }

  return BorderAgentRloc;
}

uint64_t ot::NetworkData::Leader::LookupRouteForAgentAloc(ot::NetworkData::Leader *this, unsigned __int8 a2, BOOL (*a3)(const ot::NetworkData::BorderRouterEntry *), unsigned __int16 *a4)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = 4;
  PrefixTlvForContextId = 0;
  v6 = 0;
  PrefixTlvForContextId = ot::NetworkData::Leader::FindPrefixTlvForContextId(this, a2, &v6);
  if (PrefixTlvForContextId)
  {
    return ot::NetworkData::Leader::LookupRouteIn(this, PrefixTlvForContextId, v10, v9);
  }

  return v8;
}

BOOL ot::NetworkData::Leader::IsEntryForDhcp6Agent(ot::NetworkData::Leader *this, const ot::NetworkData::BorderRouterEntry *a2)
{
  v3 = 1;
  if (!ot::NetworkData::BorderRouterEntry::IsDhcp(this))
  {
    return ot::NetworkData::BorderRouterEntry::IsConfigure(this);
  }

  return v3;
}

uint64_t ot::NetworkData::Leader::LookupRouteForServiceAloc(ot::NetworkData::Leader *this, unsigned __int16 a2, unsigned __int16 *a3)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = 4;
  v3 = ot::Mle::ServiceIdFromAloc(a2);
  ServiceById = ot::NetworkData::Leader::FindServiceById(this, v3);
  if (ServiceById)
  {
    ot::NetworkData::TlvIterator::TlvIterator(v10, ServiceById);
    v9 = 0;
    while (1)
    {
      ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServerTlv>(v10);
      v8 = v4;
      if (!v4)
      {
        break;
      }

      if (!v9 || ot::NetworkData::Leader::CompareRouteEntries(this, v4, v9) > 0)
      {
        v9 = v8;
      }
    }

    if (v9)
    {
      Server16 = ot::NetworkData::ServerTlv::GetServer16(v9);
      *v13 = Server16;
      return 0;
    }
  }

  return v12;
}

uint64_t ot::Mle::ParentRloc16ForRloc16(ot::Mle *this)
{
  v1 = ot::Mle::RouterIdFromRloc16(this);
  return ot::Mle::Rloc16FromRouterId(v1);
}

{
  return ot::Mle::ParentRloc16ForRloc16(this);
}

ot::NetworkData::ServiceTlv *ot::NetworkData::Leader::FindServiceById(ot::NetworkData::Leader *this, unsigned __int8 a2)
{
  v11 = this;
  v10 = a2;
  v9 = 0;
  TlvsStart = ot::NetworkData::NetworkData::GetTlvsStart(this);
  TlvsEnd = ot::NetworkData::NetworkData::GetTlvsEnd(this);
  ot::Cli::Dataset::Dataset(v8, TlvsStart, TlvsEnd);
  do
  {
    ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServiceTlv>(v8);
    v9 = v3;
    if (!v3)
    {
      break;
    }

    ServiceId = ot::NetworkData::ServiceTlv::GetServiceId(v9);
  }

  while (ServiceId != v10);
  return v9;
}

BOOL ot::NetworkData::BorderRouterEntry::IsNdDns(ot::NetworkData::BorderRouterEntry *this)
{
  return (ot::BigEndian::HostSwap16(*(this + 1)) & 0x80) != 0;
}

{
  return ot::NetworkData::BorderRouterEntry::IsNdDns(this);
}

uint64_t ot::NetworkData::Leader::RemoveBorderRouter(ot::InstanceLocator *a1, unsigned __int16 a2, char a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  ot::NetworkData::Leader::ChangedFlags::ChangedFlags(v5);
  ot::NetworkData::Leader::RemoveRloc(a1, v7, v6, v5);
  return ot::NetworkData::Leader::IncrementVersions(a1, v5);
}

void ot::NetworkData::Leader::RemoveRloc(ot::InstanceLocator *a1, unsigned __int16 a2, char a3, ot::NetworkData::Leader::ChangedFlags *a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  Instance = ot::InstanceLocator::GetInstance(a1);
  ot::NetworkData::NetworkData::NetworkData(v6, Instance, 0, 0);
  ot::NetworkData::Leader::RemoveRloc(a1, v9, v8, v6, v7);
}

void ot::NetworkData::Leader::HandleTmf<(ot::Uri)5>(ot::InstanceLocator *a1, ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v37 = a1;
  v36 = a2;
  v35 = a3;
  v34 = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
  if (ot::Mle::Mle::IsLeader(v3) && (*(a1 + 268) & 1) == 0)
  {
    v4 = ot::UriToString<(ot::Uri)5>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetworkData", "Received %s", v5, v6, v7, v8, v9, v10, v4);
    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v35);
    Iid = ot::Ip6::Address::GetIid(PeerAddr);
    if (ot::Ip6::InterfaceIdentifier::IsRoutingLocator(Iid))
    {
      v31 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v36, &v34);
      if (v31)
      {
        if (v31 != 23)
        {
          return;
        }
      }

      else
      {
        ot::NetworkData::Leader::RemoveBorderRouter(a1, v34, 0);
      }

      if (!ot::Tlv::FindTlv<ot::ThreadNetworkDataTlv>(v36, v38, v13, v14, v15, v16))
      {
        if ((ot::ThreadNetworkDataTlv::IsValid(v38) & 1) == 0)
        {
          return;
        }

        Instance = ot::InstanceLocator::GetInstance(a1);
        Tlvs = ot::ThreadNetworkDataTlv::GetTlvs(v38);
        Length = ot::Tlv::GetLength(v38);
        ot::NetworkData::NetworkData::NetworkData(v33, Instance, Tlvs, Length);
        v18 = ot::Ip6::MessageInfo::GetPeerAddr(v35);
        v19 = ot::Ip6::Address::GetIid(v18);
        Locator = ot::Ip6::InterfaceIdentifier::GetLocator(v19);
        ot::NetworkData::Leader::RegisterNetworkData(a1, Locator, v33);
      }

      v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
      if (!ot::Coap::CoapBase::SendEmptyAck(v21, v36, v35))
      {
        v22 = ot::UriToString<(ot::Uri)5>();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetworkData", "Sent %s ack", v23, v24, v25, v26, v27, v28, v22);
      }
    }
  }
}

uint64_t ot::Tlv::FindTlv<ot::ThreadNetworkDataTlv>(ot::Tlv *a1, char *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  return ot::Tlv::FindTlv(a1, 0xA, 0x101u, a2, a5, a6);
}

{
  return ot::Tlv::FindTlv<ot::ThreadNetworkDataTlv>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::ThreadNetworkDataTlv::IsValid(ot::ThreadNetworkDataTlv *this)
{
  return 1;
}

{
  return ot::ThreadNetworkDataTlv::IsValid(this);
}

uint64_t ot::ThreadNetworkDataTlv::GetTlvs(ot::ThreadNetworkDataTlv *this)
{
  return this + 2;
}

{
  return ot::ThreadNetworkDataTlv::GetTlvs(this);
}

void ot::NetworkData::Leader::RegisterNetworkData(ot::NetworkData::Leader *this, unsigned __int16 a2, const ot::NetworkData::NetworkData *a3)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = 0;
  ot::NetworkData::Leader::ChangedFlags::ChangedFlags(v14);
  v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
  v3 = ot::Mle::RouterIdFromRloc16(v17);
  if (ot::RouterTable::IsAllocated(v11, v3))
  {
    v15 = ot::NetworkData::Leader::Validate(v16, v17);
    if (!v15)
    {
      ot::NetworkData::Leader::RemoveRloc(this, v17, 0, v16, v14);
      for (i = ot::NetworkData::NetworkData::GetTlvsStart(v16); i < ot::NetworkData::NetworkData::GetTlvsEnd(v16); i = ot::NetworkData::NetworkDataTlv::GetNext(i))
      {
        Type = ot::NetworkData::NetworkDataTlv::GetType(i);
        if (Type == 1)
        {
          ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
          v15 = ot::NetworkData::Leader::AddPrefix(this, v4, v14);
          if (v15)
          {
            goto LABEL_14;
          }
        }

        else if (Type == 5)
        {
          ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
          v15 = ot::NetworkData::Leader::AddService(this, v5, v14);
          if (v15)
          {
            goto LABEL_14;
          }
        }
      }

      ot::NetworkData::MutableNetworkData::GetBytes(this);
      v9 = v6;
      Length = ot::NetworkData::NetworkData::GetLength(this);
      ot::Logger::Dump<(ot::LogLevel)5,&ot::NetworkData::kLogModuleName>("Register", v9, Length);
    }
  }

  else
  {
    v15 = 4;
  }

LABEL_14:
  ot::NetworkData::Leader::IncrementVersions(this, v14);
  if (v15 == 3)
  {
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Notifier>(this);
    ot::NetworkData::Notifier::SignalNetworkDataFull(v8);
  }

  if ((*(this + 267) & 1) == 0)
  {
    ot::Logger::LogOnError("NetworkData", v15, "register network data");
  }
}

void ot::NetworkData::Leader::HandleTmf<(ot::Uri)17>(ot::InstanceLocator *a1, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = -1;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
  if (ot::Mle::Mle::IsLeader(v3) && (*(a1 + 268) & 1) == 0 && ot::Tlv::Find<ot::MeshCoP::BorderAgentLocatorTlv>(v11, &v8) == 23 && !ot::Tlv::Find<ot::MeshCoP::CommissionerSessionIdTlv>(v11, &v7) && (ot::NetworkData::Leader::FindCommissioningSessionId(a1, &v6) || v7 == v6) && (ot::NetworkData::Leader::FindBorderAgentRloc(a1, &v8) || !ot::Tlv::Append<ot::MeshCoP::BorderAgentLocatorTlv>(v11, v8)) && !ot::NetworkData::Leader::SetCommissioningData(a1, v11))
  {
    v9 = 1;
  }

  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
  if (ot::Mle::Mle::IsLeader(v4))
  {
    ot::NetworkData::Leader::SendCommissioningSetResponse(a1, v11, v10, v9);
  }
}

uint64_t ot::Tlv::Find<ot::MeshCoP::BorderAgentLocatorTlv>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 9u, a2);
}

{
  return ot::Tlv::Find<ot::MeshCoP::BorderAgentLocatorTlv>(a1, a2);
}

uint64_t ot::NetworkData::Leader::SetCommissioningData(ot::NetworkData::Leader *this, const ot::Message *a2)
{
  v11 = this;
  v10 = a2;
  updated = 0;
  v7 = 0;
  ot::OffsetRange::InitFromMessageOffsetToEnd(v8, a2);
  Length = ot::OffsetRange::GetLength(v8);
  updated = ot::NetworkData::Leader::UpdateCommissioningData(this, Length, &v7);
  if (!updated)
  {
    v5 = v10;
    Value = ot::NetworkData::NetworkDataTlv::GetValue(v7);
    ot::Message::ReadBytes(v5, v8, Value);
  }

  return updated;
}

void ot::NetworkData::Leader::SendCommissioningSetResponse(ot::InstanceLocator *a1, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, unsigned __int8 a4)
{
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  v14 = ot::Coap::CoapBase::NewPriorityResponseMessage(v4, a2);
  if (v14)
  {
    if (!ot::Tlv::Append<ot::MeshCoP::StateTlv>(v14, a4))
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
      if (!ot::Coap::CoapBase::SendMessage(v5, v14, a3))
      {
        v14 = 0;
        v6 = ot::UriToString<(ot::Uri)17>();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetworkData", "Sent %s response", v7, v8, v9, v10, v11, v12, v6);
      }
    }
  }

  if (v14)
  {
    ot::Message::Free(v14);
  }
}

void ot::NetworkData::Leader::HandleTmf<(ot::Uri)15>(ot::InstanceLocator *a1, ot::Tlv *a2, const ot::Ip6::MessageInfo *a3)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
  if (!ot::Mle::Mle::IsLeader(v3))
  {
    goto LABEL_15;
  }

  if (*(a1 + 268))
  {
    goto LABEL_15;
  }

  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  v23 = ot::Coap::CoapBase::NewPriorityResponseMessage(v4, v25);
  if (!v23)
  {
    goto LABEL_15;
  }

  if (ot::Tlv::FindTlvValueOffsetRange(v25, 0xD, &v22, v5))
  {
    ot::NetworkData::Leader::FindCommissioningData(a1);
    v20 = v7;
    if (v7)
    {
      v18 = v23;
      Value = ot::NetworkData::NetworkDataTlv::GetValue(v7);
      Length = ot::NetworkData::NetworkDataTlv::GetLength(v20);
      if (ot::Message::AppendBytes(v18, Value, Length))
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    while (!ot::OffsetRange::IsEmpty(&v22))
    {
      v21 = 0;
      ot::Message::Read<unsigned char>(v25, &v22, &v21);
      IgnoreError();
      ot::OffsetRange::AdvanceOffset(&v22, 1u);
      ot::NetworkData::Leader::FindCommissioningDataSubTlv(a1, v21);
      if (v6 && ot::Tlv::AppendTo(v6, v23))
      {
        goto LABEL_15;
      }
    }
  }

  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  if (!ot::Coap::CoapBase::SendMessage(v9, v23, v24))
  {
    v23 = 0;
    v10 = ot::UriToString<(ot::Uri)15>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetworkData", "Sent %s response", v11, v12, v13, v14, v15, v16, v10);
  }

LABEL_15:
  if (v23)
  {
    ot::Message::Free(v23);
  }
}

BOOL ot::NetworkData::Leader::RlocMatch(unsigned __int16 a1, unsigned __int16 a2, char a3)
{
  v4 = 0;
  if (a3)
  {
    if (a3 == 1)
    {
      return ot::Mle::RouterIdMatch(a1, a2);
    }
  }

  else
  {
    return a1 == a2;
  }

  return v4;
}

uint64_t ot::NetworkData::Leader::Validate(ot::NetworkData::Leader *this, const ot::NetworkData::NetworkData *a2)
{
  v20 = this;
  v19 = a2;
  v18 = 0;
  TlvsEnd = ot::NetworkData::NetworkData::GetTlvsEnd(this);
  for (i = ot::NetworkData::NetworkData::GetTlvsStart(v20); i < TlvsEnd; i = ot::NetworkData::NetworkDataTlv::GetNext(i))
  {
    Instance = ot::InstanceLocator::GetInstance(v20);
    TlvsStart = ot::NetworkData::NetworkData::GetTlvsStart(v20);
    ot::NetworkData::NetworkData::NetworkData(v15, Instance, TlvsStart, i);
    if (i + 2 > TlvsEnd)
    {
      return 6;
    }

    Next = ot::NetworkData::NetworkDataTlv::GetNext(i);
    if (Next > TlvsEnd)
    {
      return 6;
    }

    Type = ot::NetworkData::NetworkDataTlv::GetType(i);
    if (Type == 1)
    {
      ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
      v14 = v5;
      if (!ot::NetworkData::PrefixTlv::IsValid(v5))
      {
        return 6;
      }

      Prefix = ot::NetworkData::PrefixTlv::GetPrefix(v14);
      PrefixLength = ot::NetworkData::PrefixTlv::GetPrefixLength(v14);
      if (ot::NetworkData::NetworkData::FindPrefix(v15, Prefix, PrefixLength))
      {
        return 6;
      }

      v18 = ot::NetworkData::Leader::ValidatePrefix(v14, v19);
      if (v18)
      {
        return v18;
      }
    }

    else if (Type == 5)
    {
      ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
      v13 = v7;
      if (!ot::NetworkData::ServiceTlv::IsValid(v7))
      {
        return 6;
      }

      ot::NetworkData::ServiceTlv::GetServiceData(v13, v12);
      EnterpriseNumber = ot::NetworkData::ServiceTlv::GetEnterpriseNumber(v13);
      if (ot::NetworkData::NetworkData::FindService(v15, EnterpriseNumber, v12, 1))
      {
        return 6;
      }

      v18 = ot::NetworkData::Leader::ValidateService(v13, v19);
      if (v18)
      {
        return v18;
      }
    }
  }

  return v18;
}

ot::NetworkData::NetworkData *ot::NetworkData::NetworkData::NetworkData(ot::NetworkData::NetworkData *this, ot::Instance *a2, const ot::NetworkData::NetworkDataTlv *a3, const ot::NetworkData::NetworkDataTlv *a4)
{
  ot::NetworkData::NetworkData::NetworkData(this, a2, a3, a4);
  return this;
}

{
  v6 = a4;
  ot::InstanceLocator::InstanceLocator(this, a2);
  result = this;
  *this = a3;
  *(this + 8) = v6 - a3;
  return result;
}

BOOL ot::NetworkData::PrefixTlv::IsValid(ot::NetworkData::PrefixTlv *this)
{
  v4 = 0;
  if (ot::NetworkData::NetworkDataTlv::GetLength(this) >= 2uLL)
  {
    Length = ot::NetworkData::NetworkDataTlv::GetLength(this);
    v4 = 0;
    if (ot::Ip6::Prefix::SizeForLength(*(this + 3)) + 2 <= Length)
    {
      return ot::Ip6::Prefix::SizeForLength(*(this + 3)) <= 0x10uLL;
    }
  }

  return v4;
}

{
  return ot::NetworkData::PrefixTlv::IsValid(this);
}

uint64_t ot::NetworkData::Leader::ValidatePrefix(ot::NetworkData::Leader *this, const ot::NetworkData::PrefixTlv *a2)
{
  v19 = a2;
  v18 = 6;
  Next = ot::NetworkData::NetworkDataTlv::GetNext(this);
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  for (i = ot::NetworkData::PrefixTlv::GetSubTlvs(this); i < Next; i = ot::NetworkData::NetworkDataTlv::GetNext(i))
  {
    if (i + 2 > Next || ot::NetworkData::NetworkDataTlv::GetNext(i) > Next)
    {
      return v18;
    }

    Type = ot::NetworkData::NetworkDataTlv::GetType(i);
    if (Type)
    {
      if (Type == 2)
      {
        ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
        v11 = v3;
        if (ot::NetworkData::NetworkDataTlv::IsStable(v3))
        {
          if (v13)
          {
            return v18;
          }

          v13 = 1;
        }

        else
        {
          if (v14)
          {
            return v18;
          }

          v14 = 1;
        }

        FirstEntry = ot::NetworkData::BorderRouterTlv::GetFirstEntry(v11);
        if (FirstEntry != ot::NetworkData::BorderRouterTlv::GetLastEntry(v11))
        {
          return v18;
        }

        v4 = ot::NetworkData::BorderRouterTlv::GetFirstEntry(v11);
        if (ot::NetworkData::BorderRouterEntry::GetRloc(v4) != v19)
        {
          return v18;
        }
      }
    }

    else
    {
      ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
      v10 = v5;
      if (ot::NetworkData::NetworkDataTlv::IsStable(v5))
      {
        if (v15)
        {
          return v18;
        }

        v15 = 1;
      }

      else
      {
        if (v16)
        {
          return v18;
        }

        v16 = 1;
      }

      v8 = ot::NetworkData::HasRouteTlv::GetFirstEntry(v10);
      if (v8 != ot::NetworkData::HasRouteTlv::GetLastEntry(v10))
      {
        return v18;
      }

      v6 = ot::NetworkData::HasRouteTlv::GetFirstEntry(v10);
      if (ot::NetworkData::HasRouteEntry::GetRloc(v6) != v19)
      {
        return v18;
      }
    }
  }

  if (v13 & 1) != 0 || (v14 & 1) != 0 || (v15 & 1) != 0 || (v16)
  {
    return 0;
  }

  return v18;
}

BOOL ot::NetworkData::ServiceTlv::IsValid(ot::NetworkData::ServiceTlv *this)
{
  Length = ot::NetworkData::NetworkDataTlv::GetLength(this);
  v7 = 0;
  if (Length)
  {
    IsThreadEnterprise = ot::NetworkData::ServiceTlv::IsThreadEnterprise(this);
    v2 = 0;
    if (!IsThreadEnterprise)
    {
      v2 = 4;
    }

    v7 = 0;
    if (Length >= (v2 + 2))
    {
      EnterpriseNumber = ot::NetworkData::ServiceTlv::GetEnterpriseNumber(this);
      ServiceDataLength = ot::NetworkData::ServiceTlv::GetServiceDataLength(this);
      return Length + 2 >= ot::NetworkData::ServiceTlv::CalculateSize(EnterpriseNumber, ServiceDataLength);
    }
  }

  return v7;
}

{
  return ot::NetworkData::ServiceTlv::IsValid(this);
}

uint64_t ot::NetworkData::Leader::ValidateService(ot::NetworkData::Leader *this, const ot::NetworkData::ServiceTlv *a2)
{
  v9 = a2;
  v8 = 6;
  Next = ot::NetworkData::NetworkDataTlv::GetNext(this);
  v6 = 0;
  for (i = ot::NetworkData::ServiceTlv::GetSubTlvs(this); i < Next; i = ot::NetworkData::NetworkDataTlv::GetNext(i))
  {
    if (i + 2 > Next)
    {
      return v8;
    }

    if (ot::NetworkData::NetworkDataTlv::GetNext(i) > Next)
    {
      return v8;
    }

    if (ot::NetworkData::NetworkDataTlv::GetType(i) == 6)
    {
      ot::NetworkData::As<ot::NetworkData::ServerTlv>();
      v4 = v2;
      if (v6)
      {
        return v8;
      }

      v6 = 1;
      if (!ot::NetworkData::ServerTlv::IsValid(v2) || ot::NetworkData::ServerTlv::GetServer16(v4) != v9)
      {
        return v8;
      }
    }
  }

  if (v6)
  {
    return 0;
  }

  return v8;
}

BOOL ot::NetworkData::ServerTlv::IsValid(ot::NetworkData::ServerTlv *this)
{
  return ot::NetworkData::NetworkDataTlv::GetLength(this) >= 2uLL;
}

{
  return ot::NetworkData::ServerTlv::IsValid(this);
}

uint64_t ot::NetworkData::Leader::ContainsMatchingEntry(ot::NetworkData::Leader *this, const ot::NetworkData::PrefixTlv *a2, const ot::NetworkData::HasRouteTlv *a3, const ot::NetworkData::HasRouteEntry *a4)
{
  if (this)
  {
    ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::HasRouteTlv>(this, a2 & 1);
    v7 = ot::NetworkData::Leader::ContainsMatchingEntry(v4, a3, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t ot::NetworkData::Leader::ContainsMatchingEntry(ot::NetworkData::Leader *this, const ot::NetworkData::HasRouteTlv *a2, const ot::NetworkData::HasRouteEntry *a3)
{
  v5 = 0;
  if (this)
  {
    for (i = ot::NetworkData::HasRouteTlv::GetFirstEntry(this); i <= ot::NetworkData::HasRouteTlv::GetLastEntry(this); i += 3)
    {
      if (ot::Equatable<ot::NetworkData::HasRouteEntry>::operator==(i, a2))
      {
        v5 = 1;
        return v5 & 1;
      }
    }
  }

  return v5 & 1;
}

void ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::HasRouteTlv>(ot::NetworkData::PrefixTlv *a1, char a2)
{
  ot::NetworkData::PrefixTlv::FindSubTlv(a1, 0, a2 & 1);
  ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
}

{
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::HasRouteTlv>(a1, a2);
}

BOOL ot::Equatable<ot::NetworkData::HasRouteEntry>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 3uLL) == 0;
}

{
  return ot::Equatable<ot::NetworkData::HasRouteEntry>::operator==(a1, a2);
}

uint64_t ot::NetworkData::Leader::ContainsMatchingEntry(ot::NetworkData::Leader *this, const ot::NetworkData::PrefixTlv *a2, const ot::NetworkData::BorderRouterTlv *a3, const ot::NetworkData::BorderRouterEntry *a4)
{
  if (this)
  {
    ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(this, a2 & 1);
    v7 = ot::NetworkData::Leader::ContainsMatchingEntry(v4, a3, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t ot::NetworkData::Leader::ContainsMatchingEntry(ot::NetworkData::Leader *this, const ot::NetworkData::BorderRouterTlv *a2, const ot::NetworkData::BorderRouterEntry *a3)
{
  v5 = 0;
  if (this)
  {
    for (i = ot::NetworkData::BorderRouterTlv::GetFirstEntry(this); i <= ot::NetworkData::BorderRouterTlv::GetLastEntry(this); i += 4)
    {
      if (ot::Equatable<ot::NetworkData::BorderRouterEntry>::operator==(i, a2))
      {
        v5 = 1;
        return v5 & 1;
      }
    }
  }

  return v5 & 1;
}

void ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(ot::NetworkData::PrefixTlv *a1, char a2)
{
  ot::NetworkData::PrefixTlv::FindSubTlv(a1, 2u, a2 & 1);
  ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
}

{
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(a1, a2);
}

BOOL ot::Equatable<ot::NetworkData::BorderRouterEntry>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 4uLL) == 0;
}

{
  return ot::Equatable<ot::NetworkData::BorderRouterEntry>::operator==(a1, a2);
}

uint64_t ot::NetworkData::Leader::ContainsMatchingServer(ot::NetworkData::Leader *this, const ot::NetworkData::ServiceTlv *a2, const ot::NetworkData::ServerTlv *a3)
{
  v10 = this;
  v9 = a2;
  v8 = 0;
  if (this)
  {
    v7 = 0;
    ot::NetworkData::TlvIterator::TlvIterator(v6, v10);
    while (1)
    {
      IsStable = ot::NetworkData::NetworkDataTlv::IsStable(v9);
      ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServerTlv>(v6, IsStable);
      v7 = v4;
      if (!v4)
      {
        break;
      }

      if (ot::NetworkData::ServerTlv::operator==(v7, v9))
      {
        v8 = 1;
        return v8 & 1;
      }
    }
  }

  return v8 & 1;
}

void ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServerTlv>(uint64_t a1, char a2)
{
  ot::NetworkData::TlvIterator::Iterate(a1, 6u, a2 & 1);
  ot::NetworkData::As<ot::NetworkData::ServerTlv>();
}

{
  ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::ServerTlv>(a1, a2);
}

BOOL ot::NetworkData::ServerTlv::operator==(ot::NetworkData::NetworkDataTlv *a1, ot::NetworkData::NetworkDataTlv *a2)
{
  Length = ot::NetworkData::NetworkDataTlv::GetLength(a1);
  v8 = 0;
  if (Length == ot::NetworkData::NetworkDataTlv::GetLength(a2))
  {
    __s1 = ot::NetworkData::NetworkDataTlv::GetValue(a1);
    __s2 = ot::NetworkData::NetworkDataTlv::GetValue(a2);
    v2 = ot::NetworkData::NetworkDataTlv::GetLength(a1);
    return memcmp(__s1, __s2, v2) == 0;
  }

  return v8;
}

{
  return ot::NetworkData::ServerTlv::operator==(a1, a2);
}

uint64_t ot::NetworkData::Leader::UpdateTlv(ot::NetworkData::Leader *this, ot::NetworkData::NetworkDataTlv *a2, const ot::NetworkData::NetworkDataTlv *a3)
{
  v6 = 1;
  if (a3 == ot::NetworkData::NetworkDataTlv::GetNext(a2))
  {
    ot::NetworkData::MutableNetworkData::RemoveTlv(this, a2);
    return 0;
  }

  else
  {
    for (i = a3; i < ot::NetworkData::NetworkDataTlv::GetNext(a2); i = ot::NetworkData::NetworkDataTlv::GetNext(i))
    {
      if (ot::NetworkData::NetworkDataTlv::IsStable(i))
      {
        ot::NetworkData::NetworkDataTlv::SetStable(a2);
        return v6;
      }
    }

    ot::NetworkData::NetworkDataTlv::ClearStable(a2);
  }

  return v6;
}

_BYTE *ot::NetworkData::NetworkDataTlv::SetStable(_BYTE *this)
{
  *this |= 1u;
  return this;
}

{
  return ot::NetworkData::NetworkDataTlv::SetStable(this);
}

_BYTE *ot::NetworkData::NetworkDataTlv::ClearStable(_BYTE *this)
{
  *this &= ~1u;
  return this;
}

{
  return ot::NetworkData::NetworkDataTlv::ClearStable(this);
}

void ot::NetworkData::Leader::CheckForNetDataGettingFull(ot::NetworkData::Leader *this, const ot::NetworkData::NetworkData *a2, unsigned __int16 a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (!ot::Mle::Mle::IsLeader(v3))
  {
    Instance = ot::InstanceLocator::GetInstance(this);
    ot::NetworkData::Leader::Leader(v10, Instance);
    ot::NetworkData::Leader::MarkAsClone(v10);
    if (ot::NetworkData::NetworkData::CopyNetworkData(this, 0, v10))
    {
      __assert_rtn("CheckForNetDataGettingFull", "network_data_leader_ftd.cpp", 731, "false");
    }

    if (a3 != 65534)
    {
      ot::NetworkData::Leader::RemoveBorderRouter(v10, a3, 0);
    }

    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    Rloc16 = ot::Mle::Mle::GetRloc16(v5);
    ot::NetworkData::Leader::RegisterNetworkData(v10, Rloc16, a2);
  }
}

uint64_t ot::NetworkData::Leader::ContextIds::MarkAsClone(uint64_t this)
{
  *(this + 64) = 1;
  return this;
}

{
  return ot::NetworkData::Leader::ContextIds::MarkAsClone(this);
}

void ot::NetworkData::Leader::RemoveRloc(ot::NetworkData::MutableNetworkData *a1, unsigned __int16 a2, char a3, ot::NetworkData::NetworkData *a4, ot::NetworkData::Leader::ChangedFlags *a5)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5;
  ot::NetworkData::MutableNetworkData::GetTlvsStart(a1);
  Next = v5;
  while (1)
  {
    v15 = Next;
    ot::NetworkData::MutableNetworkData::GetTlvsEnd(a1);
    if (v15 >= v6)
    {
      break;
    }

    Type = ot::NetworkData::NetworkDataTlv::GetType(Next);
    if (Type == 1)
    {
      ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
      v21 = v7;
      v13 = v24;
      Prefix = ot::NetworkData::PrefixTlv::GetPrefix(v7);
      PrefixLength = ot::NetworkData::PrefixTlv::GetPrefixLength(v21);
      v20 = ot::NetworkData::NetworkData::FindPrefix(v13, Prefix, PrefixLength);
      ot::NetworkData::Leader::RemoveRlocInPrefix(a1, v21, v26, v25, v20, v23);
      if (ot::NetworkData::Leader::UpdatePrefix(a1, v21))
      {
        goto LABEL_9;
      }
    }

    else if (Type != 5 || (ot::NetworkData::As<ot::NetworkData::ServiceTlv>(), v19 = v9, ot::NetworkData::ServiceTlv::GetServiceData(v9, v18), v11 = v24, EnterpriseNumber = ot::NetworkData::ServiceTlv::GetEnterpriseNumber(v19), Service = ot::NetworkData::NetworkData::FindService(v11, EnterpriseNumber, v18, 1), ot::NetworkData::Leader::RemoveRlocInService(a1, v19, v26, v25, Service, v23), ot::NetworkData::Leader::UpdateService(a1, v19)))
    {
LABEL_9:
      Next = ot::NetworkData::NetworkDataTlv::GetNext(Next);
    }
  }
}

uint64_t ot::NetworkData::Leader::AddPrefix(ot::NetworkData::Leader *this, const ot::NetworkData::PrefixTlv *a2, ot::NetworkData::Leader::ChangedFlags *a3)
{
  HasRoute = 0;
  Prefix = ot::NetworkData::PrefixTlv::GetPrefix(a2);
  PrefixLength = ot::NetworkData::PrefixTlv::GetPrefixLength(a2);
  ot::NetworkData::MutableNetworkData::FindPrefix(this, Prefix, PrefixLength);
  v18 = v4;
  if (!v4)
  {
    v5 = ot::NetworkData::PrefixTlv::GetPrefixLength(a2);
    v6 = ot::NetworkData::PrefixTlv::CalculateSize(v5);
    ot::NetworkData::MutableNetworkData::AppendTlv(this, v6);
    ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
    v18 = v7;
    if (!v7)
    {
      HasRoute = 3;
      goto LABEL_14;
    }

    DomainId = ot::NetworkData::PrefixTlv::GetDomainId(a2);
    v14 = ot::NetworkData::PrefixTlv::GetPrefixLength(a2);
    v8 = ot::NetworkData::PrefixTlv::GetPrefix(a2);
    ot::NetworkData::PrefixTlv::Init(v18, DomainId, v14, v8);
  }

  for (i = ot::NetworkData::PrefixTlv::GetSubTlvs(a2); i < ot::NetworkData::NetworkDataTlv::GetNext(a2); i = ot::NetworkData::NetworkDataTlv::GetNext(i))
  {
    Type = ot::NetworkData::NetworkDataTlv::GetType(i);
    if (Type)
    {
      if (Type == 2)
      {
        ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
        HasRoute = ot::NetworkData::Leader::AddBorderRouter(this, v10, v18, a3);
        if (HasRoute)
        {
          break;
        }
      }
    }

    else
    {
      ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
      HasRoute = ot::NetworkData::Leader::AddHasRoute(this, v9, v18, a3);
      if (HasRoute)
      {
        break;
      }
    }
  }

LABEL_14:
  if (v18)
  {
    ot::NetworkData::Leader::UpdatePrefix(this, v18);
  }

  return HasRoute;
}

uint64_t ot::NetworkData::Leader::AddService(ot::NetworkData::Leader *this, const ot::NetworkData::ServiceTlv *a2, ot::NetworkData::Leader::ChangedFlags *a3)
{
  v24 = this;
  v23 = a2;
  v22 = a3;
  v21 = 0;
  v20 = 0;
  v18 = 0;
  ot::NetworkData::ServiceTlv::GetServiceData(a2, v19);
  EnterpriseNumber = ot::NetworkData::ServiceTlv::GetEnterpriseNumber(v23);
  ot::NetworkData::MutableNetworkData::FindService(this, EnterpriseNumber, v19, 1);
  v20 = v4;
  if (!v4)
  {
    v17 = 0;
    v21 = ot::NetworkData::Leader::AllocateServiceId(this, &v17);
    if (v21)
    {
      goto LABEL_9;
    }

    v15 = ot::NetworkData::ServiceTlv::GetEnterpriseNumber(v23);
    Length = ot::Data<(ot::DataLengthType)0>::GetLength(v19);
    v6 = ot::NetworkData::ServiceTlv::CalculateSize(v15, Length);
    ot::NetworkData::MutableNetworkData::AppendTlv(this, v6);
    ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
    v20 = v7;
    if (!v7)
    {
      v21 = 3;
      goto LABEL_9;
    }

    v14 = v20;
    v13 = v17;
    v8 = ot::NetworkData::ServiceTlv::GetEnterpriseNumber(v23);
    ot::NetworkData::ServiceTlv::Init(v14, v13, v8, v19);
  }

  SubTlvs = ot::NetworkData::ServiceTlv::GetSubTlvs(v23);
  Next = ot::NetworkData::NetworkDataTlv::GetNext(v23);
  ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::ServerTlv>(SubTlvs, Next);
  v18 = v10;
  if (!v10)
  {
    __assert_rtn("AddService", "network_data_leader_ftd.cpp", 870, "server != nullptr");
  }

  v21 = ot::NetworkData::Leader::AddServer(this, v18, v20, v22);
LABEL_9:
  if (v20)
  {
    ot::NetworkData::Leader::UpdateService(this, v20);
  }

  return v21;
}

uint64_t ot::Logger::Dump<(ot::LogLevel)5,&ot::NetworkData::kLogModuleName>(uint64_t a1, uint64_t a2, __int16 a3)
{
  return ot::Logger::DumpAtLevel<(ot::LogLevel)5>("NetworkData", a1, a2, a3);
}

{
  return ot::Logger::DumpAtLevel<(ot::LogLevel)5>("NetworkData", a1, a2, a3);
}

uint64_t ot::NetworkData::Notifier::SignalNetworkDataFull(ot::NetworkData::Notifier *this)
{
  return ot::Tasklet::Post((this + 48));
}

{
  return ot::NetworkData::Notifier::SignalNetworkDataFull(this);
}

void ot::NetworkData::MutableNetworkData::FindPrefix(ot::NetworkData::MutableNetworkData *this, const unsigned __int8 *a2, unsigned __int8 a3)
{
  ot::AsConst<ot::NetworkData::MutableNetworkData>();
  ot::NetworkData::NetworkData::FindPrefix(v3, a2, a3);
  ot::AsNonConst<ot::NetworkData::PrefixTlv>();
}

{
  ot::NetworkData::MutableNetworkData::FindPrefix(this, a2, a3);
}

uint64_t ot::NetworkData::PrefixTlv::CalculateSize(ot::NetworkData::PrefixTlv *this)
{
  return (ot::Ip6::Prefix::SizeForLength(this) + 4);
}

{
  return ot::NetworkData::PrefixTlv::CalculateSize(this);
}

uint64_t ot::NetworkData::PrefixTlv::Init(ot::NetworkData::PrefixTlv *this, char a2, unsigned __int8 a3, const unsigned __int8 *a4)
{
  ot::NetworkData::NetworkDataTlv::Init(this);
  ot::NetworkData::NetworkDataTlv::SetType(this, 1);
  *(this + 2) = a2;
  *(this + 3) = a3;
  __dst = ot::NetworkData::PrefixTlv::GetPrefix(this);
  v4 = ot::Ip6::Prefix::SizeForLength(a3);
  memcpy(__dst, a4, v4);
  return ot::NetworkData::PrefixTlv::SetSubTlvsLength(this, 0);
}

{
  return ot::NetworkData::PrefixTlv::Init(this, a2, a3, a4);
}

uint64_t ot::NetworkData::Leader::AddHasRoute(ot::NetworkData::Leader *this, const ot::NetworkData::HasRouteTlv *a2, ot::NetworkData::PrefixTlv *a3, ot::NetworkData::Leader::ChangedFlags *a4)
{
  v15 = 0;
  IsStable = ot::NetworkData::NetworkDataTlv::IsStable(a2);
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::HasRouteTlv>(a3, IsStable);
  v14 = v5;
  FirstEntry = ot::NetworkData::HasRouteTlv::GetFirstEntry(a2);
  if (!v14)
  {
    if (!ot::NetworkData::MutableNetworkData::CanInsert(this, 5u))
    {
      return 3;
    }

    ot::NetworkData::NetworkDataTlv::GetNext(a3);
    ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
    v14 = v7;
    ot::NetworkData::MutableNetworkData::Insert(this, v7, 2u);
    ot::NetworkData::NetworkDataTlv::IncreaseLength(a3, 2);
    ot::NetworkData::HasRouteTlv::Init(v14);
    if (ot::NetworkData::NetworkDataTlv::IsStable(a2))
    {
      ot::NetworkData::NetworkDataTlv::SetStable(v14);
    }
  }

  if ((ot::NetworkData::Leader::ContainsMatchingEntry(v14, FirstEntry, v6) & 1) == 0)
  {
    if (ot::NetworkData::MutableNetworkData::CanInsert(this, 3u))
    {
      Next = ot::NetworkData::NetworkDataTlv::GetNext(v14);
      ot::NetworkData::MutableNetworkData::Insert(this, Next, 3u);
      ot::NetworkData::NetworkDataTlv::IncreaseLength(v14, 3);
      ot::NetworkData::NetworkDataTlv::IncreaseLength(a3, 3);
      LastEntry = ot::NetworkData::HasRouteTlv::GetLastEntry(v14);
      *LastEntry = *FirstEntry;
      *(LastEntry + 2) = *(FirstEntry + 2);
      ot::NetworkData::Leader::ChangedFlags::Update(a4, v14);
    }

    else
    {
      return 3;
    }
  }

  return v15;
}

uint64_t ot::NetworkData::Leader::AddBorderRouter(ot::NetworkData::Leader *this, const ot::NetworkData::BorderRouterTlv *a2, ot::NetworkData::PrefixTlv *a3, ot::NetworkData::Leader::ChangedFlags *a4)
{
  v27 = this;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  UnallocatedId = 0;
  IsStable = ot::NetworkData::NetworkDataTlv::IsStable(a2);
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(a3, IsStable);
  v22 = v5;
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::ContextTlv>(v25);
  v21 = v6;
  v20 = 0;
  FirstEntry = ot::NetworkData::BorderRouterTlv::GetFirstEntry(v26);
  if (v21 || (UnallocatedId = ot::NetworkData::Leader::ContextIds::GetUnallocatedId((this + 272), &v20)) == 0)
  {
    if (!v22)
    {
      v7 = 4;
      if (v21)
      {
        v7 = 0;
      }

      if (!ot::NetworkData::MutableNetworkData::CanInsert(this, v7 + 6))
      {
        return 3;
      }

      ot::NetworkData::NetworkDataTlv::GetNext(v25);
      ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
      v22 = v8;
      ot::NetworkData::MutableNetworkData::Insert(this, v8, 2u);
      ot::NetworkData::NetworkDataTlv::IncreaseLength(v25, 2);
      ot::NetworkData::BorderRouterTlv::Init(v22);
      if (ot::NetworkData::NetworkDataTlv::IsStable(v26))
      {
        ot::NetworkData::NetworkDataTlv::SetStable(v22);
      }
    }

    if (!v21)
    {
      if (!ot::NetworkData::MutableNetworkData::CanInsert(this, 8u))
      {
        return 3;
      }

      ot::NetworkData::NetworkDataTlv::GetNext(v25);
      ot::NetworkData::As<ot::NetworkData::ContextTlv>();
      v21 = v9;
      ot::NetworkData::MutableNetworkData::Insert(this, v9, 4u);
      ot::NetworkData::NetworkDataTlv::IncreaseLength(v25, 4);
      v16 = v21;
      v15 = v20;
      PrefixLength = ot::NetworkData::PrefixTlv::GetPrefixLength(v25);
      ot::NetworkData::ContextTlv::Init(v16, v15, PrefixLength);
    }

    if (ot::NetworkData::NetworkDataTlv::IsStable(v26))
    {
      ot::NetworkData::NetworkDataTlv::SetStable(v21);
    }

    ot::NetworkData::ContextTlv::SetCompress(v21);
    ContextId = ot::NetworkData::ContextTlv::GetContextId(v21);
    ot::NetworkData::Leader::ContextIds::MarkAsInUse((this + 272), ContextId);
    if ((ot::NetworkData::Leader::ContainsMatchingEntry(v22, FirstEntry, v12) & 1) == 0)
    {
      if (ot::NetworkData::MutableNetworkData::CanInsert(this, 4u))
      {
        Next = ot::NetworkData::NetworkDataTlv::GetNext(v22);
        ot::NetworkData::MutableNetworkData::Insert(this, Next, 4u);
        ot::NetworkData::NetworkDataTlv::IncreaseLength(v22, 4);
        ot::NetworkData::NetworkDataTlv::IncreaseLength(v25, 4);
        *ot::NetworkData::BorderRouterTlv::GetLastEntry(v22) = *FirstEntry;
        ot::NetworkData::Leader::ChangedFlags::Update(v24, v22);
      }

      else
      {
        return 3;
      }
    }
  }

  return UnallocatedId;
}

void ot::NetworkData::MutableNetworkData::FindService(uint64_t a1, int a2, uint64_t a3, char a4)
{
  ot::AsConst<ot::NetworkData::MutableNetworkData>();
  ot::NetworkData::NetworkData::FindService(v4, a2, a3, a4);
  ot::AsNonConst<ot::NetworkData::ServiceTlv>();
}

{
  ot::NetworkData::MutableNetworkData::FindService(a1, a2, a3, a4);
}

uint64_t ot::NetworkData::Leader::AllocateServiceId(ot::NetworkData::Leader *this, unsigned __int8 *a2)
{
  v11 = 23;
  if (*(this + 267))
  {
    *a2 = 0;
    return 0;
  }

  else
  {
    for (i = 0; i <= 0xFu; ++i)
    {
      if (!ot::NetworkData::Leader::FindServiceById(this, i))
      {
        *a2 = i;
        v11 = 0;
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetworkData", "Allocated Service ID = %d", v2, v3, v4, v5, v6, v7, i);
        return v11;
      }
    }
  }

  return v11;
}

uint64_t ot::NetworkData::ServiceTlv::CalculateSize(ot::NetworkData::ServiceTlv *this, unsigned __int8 a2)
{
  v2 = 0;
  if (this != 44970)
  {
    v2 = 4;
  }

  return (a2 + 4 + v2);
}

{
  return ot::NetworkData::ServiceTlv::CalculateSize(this, a2);
}

void ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::ServerTlv>(ot::NetworkData::NetworkDataTlv *a1, unint64_t a2)
{
  ot::NetworkData::NetworkDataTlv::Find(a1, a2, 6u);
  ot::NetworkData::As<ot::NetworkData::ServerTlv>();
}

{
  ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::ServerTlv>(a1, a2);
}

uint64_t ot::NetworkData::Leader::AddServer(ot::NetworkData::Leader *this, const ot::NetworkData::ServerTlv *a2, ot::NetworkData::ServiceTlv *a3, ot::NetworkData::Leader::ChangedFlags *a4)
{
  v17 = this;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = 0;
  v12 = 0;
  Size = ot::NetworkData::NetworkDataTlv::GetSize(a2);
  if ((ot::NetworkData::Leader::ContainsMatchingServer(v15, v16, v4) & 1) == 0)
  {
    if (ot::NetworkData::MutableNetworkData::CanInsert(this, Size))
    {
      ot::NetworkData::ServerTlv::GetServerData(v16, v11);
      ot::NetworkData::NetworkDataTlv::GetNext(v15);
      ot::NetworkData::As<ot::NetworkData::ServerTlv>();
      v12 = v5;
      ot::NetworkData::MutableNetworkData::Insert(this, v5, Size);
      v8 = v12;
      Server16 = ot::NetworkData::ServerTlv::GetServer16(v16);
      ot::NetworkData::ServerTlv::Init(v8, Server16, v11);
      if (ot::NetworkData::NetworkDataTlv::IsStable(v16))
      {
        ot::NetworkData::NetworkDataTlv::SetStable(v12);
      }

      ot::NetworkData::NetworkDataTlv::IncreaseLength(v15, Size);
      ot::NetworkData::Leader::ChangedFlags::Update(v14, v12);
    }

    else
    {
      return 3;
    }
  }

  return v13;
}

void ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::HasRouteTlv>(uint64_t a1, char a2)
{
  ot::NetworkData::PrefixTlv::FindSubTlv(a1, 0, a2 & 1);
  ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
}

{
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::HasRouteTlv>(a1, a2);
}

uint64_t ot::NetworkData::NetworkDataTlv::IncreaseLength(uint64_t this, char a2)
{
  *(this + 1) += a2;
  return this;
}

{
  return ot::NetworkData::NetworkDataTlv::IncreaseLength(this, a2);
}

uint64_t ot::NetworkData::HasRouteTlv::Init(ot::NetworkData::HasRouteTlv *this)
{
  ot::NetworkData::NetworkDataTlv::Init(this);
  ot::NetworkData::NetworkDataTlv::SetType(this, 0);
  return ot::NetworkData::NetworkDataTlv::SetLength(this, 0);
}

{
  return ot::NetworkData::HasRouteTlv::Init(this);
}

BOOL ot::NetworkData::Leader::ChangedFlags::Update(ot::NetworkData::Leader::ChangedFlags *this, const ot::NetworkData::NetworkDataTlv *a2)
{
  *this = 1;
  v2 = *(this + 1);
  result = 1;
  v5 = 1;
  if ((v2 & 1) == 0)
  {
    result = ot::NetworkData::NetworkDataTlv::IsStable(a2);
    v5 = result;
  }

  *(this + 1) = v5 & 1;
  return result;
}

{
  return ot::NetworkData::Leader::ChangedFlags::Update(this, a2);
}

void ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(uint64_t a1, char a2)
{
  ot::NetworkData::PrefixTlv::FindSubTlv(a1, 2u, a2 & 1);
  ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
}

{
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(a1, a2);
}

uint64_t ot::NetworkData::Leader::ContextIds::GetUnallocatedId(ot::NetworkData::Leader::ContextIds *this, unsigned __int8 *a2)
{
  v5 = 23;
  if (*(this + 64))
  {
    *a2 = 1;
    return 0;
  }

  else
  {
    for (i = 1; i <= 0xFu; ++i)
    {
      if (ot::NetworkData::Leader::ContextIds::IsUnallocated(this, i))
      {
        *a2 = i;
        return 0;
      }
    }
  }

  return v5;
}

uint64_t ot::NetworkData::BorderRouterTlv::Init(ot::NetworkData::BorderRouterTlv *this)
{
  ot::NetworkData::NetworkDataTlv::Init(this);
  ot::NetworkData::NetworkDataTlv::SetType(this, 2);
  return ot::NetworkData::NetworkDataTlv::SetLength(this, 0);
}

{
  return ot::NetworkData::BorderRouterTlv::Init(this);
}

uint64_t ot::NetworkData::ContextTlv::Init(ot::NetworkData::ContextTlv *this, char a2, char a3)
{
  ot::NetworkData::NetworkDataTlv::Init(this);
  ot::NetworkData::NetworkDataTlv::SetType(this, 3);
  result = ot::NetworkData::NetworkDataTlv::SetLength(this, 2);
  *(this + 2) = a2 & 0xF;
  *(this + 3) = a3;
  return result;
}

{
  return ot::NetworkData::ContextTlv::Init(this, a2, a3);
}

uint64_t ot::NetworkData::ContextTlv::SetCompress(uint64_t this)
{
  *(this + 2) |= 0x10u;
  return this;
}

{
  return ot::NetworkData::ContextTlv::SetCompress(this);
}

_DWORD *ot::NetworkData::Leader::ContextIds::MarkAsInUse(ot::NetworkData::Leader::ContextIds *this, unsigned __int8 a2)
{
  return ot::Time::SetValue(this + a2 - 1, 1);
}

{
  return ot::NetworkData::Leader::ContextIds::MarkAsInUse(this, a2);
}

uint64_t ot::NetworkData::ServerTlv::Init(ot::NetworkData::ServerTlv *a1, unsigned __int16 a2, uint64_t a3)
{
  ot::NetworkData::NetworkDataTlv::Init(a1);
  ot::NetworkData::NetworkDataTlv::SetType(a1, 6);
  ot::NetworkData::ServerTlv::SetServer16(a1, a2);
  ot::NetworkData::ServerTlv::GetServerData(a1);
  ot::Data<(ot::DataLengthType)0>::CopyBytesTo(a3, v3);
  Length = ot::Data<(ot::DataLengthType)0>::GetLength(a3);
  return ot::NetworkData::NetworkDataTlv::SetLength(a1, Length + 2);
}

{
  return ot::NetworkData::ServerTlv::Init(a1, a2, a3);
}

void ot::NetworkData::Leader::RemoveRlocInPrefix(uint64_t a1, ot::NetworkData::PrefixTlv *a2, unsigned __int16 a3, char a4, ot::NetworkData::Leader *a5, ot::NetworkData::Leader::ChangedFlags *a6)
{
  SubTlvs = ot::NetworkData::PrefixTlv::GetSubTlvs(a2);
  while (SubTlvs < ot::NetworkData::NetworkDataTlv::GetNext(a2))
  {
    Type = ot::NetworkData::NetworkDataTlv::GetType(SubTlvs);
    if (Type)
    {
      if (Type == 2)
      {
        ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
        ot::NetworkData::Leader::RemoveRlocInBorderRouter(a1, a2, v7, a3, a4, a5, a6);
        if (!ot::NetworkData::NetworkDataTlv::GetLength(SubTlvs))
        {
          goto LABEL_7;
        }
      }

LABEL_10:
      SubTlvs = ot::NetworkData::NetworkDataTlv::GetNext(SubTlvs);
    }

    else
    {
      ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
      ot::NetworkData::Leader::RemoveRlocInHasRoute(a1, a2, v6, a3, a4, a5, a6);
      if (ot::NetworkData::NetworkDataTlv::GetLength(SubTlvs))
      {
        goto LABEL_10;
      }

LABEL_7:
      ot::NetworkData::NetworkDataTlv::DecreaseLength(a2, 2);
      ot::NetworkData::MutableNetworkData::RemoveTlv(a1, SubTlvs);
    }
  }

  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::ContextTlv>(a2);
  v14 = v8;
  if (v8)
  {
    ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(a2);
    if (v9)
    {
      ot::NetworkData::ContextTlv::SetCompress(v14);
      ContextId = ot::NetworkData::ContextTlv::GetContextId(v14);
      ot::NetworkData::Leader::ContextIds::MarkAsInUse((a1 + 272), ContextId);
    }

    else
    {
      ot::NetworkData::ContextTlv::ClearCompress(v14);
      v10 = ot::NetworkData::ContextTlv::GetContextId(v14);
      ot::NetworkData::Leader::ContextIds::ScheduleToRemove(a1 + 272, v10);
    }
  }
}

void ot::NetworkData::Leader::RemoveRlocInService(ot::NetworkData::MutableNetworkData *a1, ot::NetworkData::ServiceTlv *a2, unsigned __int16 a3, char a4, ot::NetworkData::Leader *a5, ot::NetworkData::Leader::ChangedFlags *a6)
{
  SubTlvs = ot::NetworkData::ServiceTlv::GetSubTlvs(a2);
  while (1)
  {
    Next = ot::NetworkData::NetworkDataTlv::GetNext(a2);
    ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::ServerTlv>(SubTlvs, Next);
    v12 = v7;
    if (!v7)
    {
      break;
    }

    Server16 = ot::NetworkData::ServerTlv::GetServer16(v7);
    if (!ot::NetworkData::Leader::RlocMatch(Server16, a3, a4) || (ot::NetworkData::Leader::ContainsMatchingServer(a5, v12, v9) & 1) != 0)
    {
      SubTlvs = ot::NetworkData::NetworkDataTlv::GetNext(v12);
    }

    else
    {
      Size = ot::NetworkData::NetworkDataTlv::GetSize(v12);
      ot::NetworkData::Leader::ChangedFlags::Update(a6, v12);
      ot::NetworkData::MutableNetworkData::RemoveTlv(a1, v12);
      ot::NetworkData::NetworkDataTlv::DecreaseLength(a2, Size);
    }
  }
}

unint64_t ot::NetworkData::Leader::RemoveRlocInHasRoute(ot::NetworkData::MutableNetworkData *a1, uint64_t a2, ot::NetworkData::HasRouteTlv *a3, unsigned __int16 a4, char a5, ot::NetworkData::Leader *a6, ot::NetworkData::Leader::ChangedFlags *a7)
{
  FirstEntry = ot::NetworkData::HasRouteTlv::GetFirstEntry(a3);
  while (1)
  {
    result = ot::NetworkData::HasRouteTlv::GetLastEntry(a3);
    if (FirstEntry > result)
    {
      break;
    }

    Rloc = ot::NetworkData::HasRouteEntry::GetRloc(FirstEntry);
    if (!ot::NetworkData::Leader::RlocMatch(Rloc, a4, a5) || (IsStable = ot::NetworkData::NetworkDataTlv::IsStable(a3), (ot::NetworkData::Leader::ContainsMatchingEntry(a6, IsStable, FirstEntry, v10) & 1) != 0))
    {
      FirstEntry = ot::NetworkData::HasRouteEntry::GetNext(FirstEntry);
    }

    else
    {
      ot::NetworkData::Leader::ChangedFlags::Update(a7, a3);
      ot::NetworkData::NetworkDataTlv::DecreaseLength(a3, 3);
      ot::NetworkData::NetworkDataTlv::DecreaseLength(a2, 3);
      ot::NetworkData::MutableNetworkData::Remove(a1, FirstEntry, 3u);
    }
  }

  return result;
}

uint64_t ot::NetworkData::NetworkDataTlv::DecreaseLength(uint64_t this, char a2)
{
  *(this + 1) -= a2;
  return this;
}

{
  return ot::NetworkData::NetworkDataTlv::DecreaseLength(this, a2);
}

unint64_t ot::NetworkData::Leader::RemoveRlocInBorderRouter(ot::NetworkData::MutableNetworkData *a1, uint64_t a2, ot::NetworkData::BorderRouterTlv *a3, unsigned __int16 a4, char a5, ot::NetworkData::Leader *a6, ot::NetworkData::Leader::ChangedFlags *a7)
{
  FirstEntry = ot::NetworkData::BorderRouterTlv::GetFirstEntry(a3);
  while (1)
  {
    result = ot::NetworkData::BorderRouterTlv::GetLastEntry(a3);
    if (FirstEntry > result)
    {
      break;
    }

    Rloc = ot::NetworkData::BorderRouterEntry::GetRloc(FirstEntry);
    if (!ot::NetworkData::Leader::RlocMatch(Rloc, a4, a5) || (IsStable = ot::NetworkData::NetworkDataTlv::IsStable(a3), (ot::NetworkData::Leader::ContainsMatchingEntry(a6, IsStable, FirstEntry, v10) & 1) != 0))
    {
      FirstEntry = ot::NetworkData::BorderRouterEntry::GetNext(FirstEntry);
    }

    else
    {
      ot::NetworkData::Leader::ChangedFlags::Update(a7, a3);
      ot::NetworkData::NetworkDataTlv::DecreaseLength(a3, 4);
      ot::NetworkData::NetworkDataTlv::DecreaseLength(a2, 4);
      ot::NetworkData::MutableNetworkData::Remove(a1, FirstEntry, 4u);
    }
  }

  return result;
}

void ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(uint64_t a1)
{
  ot::NetworkData::PrefixTlv::FindSubTlv(a1, 2u);
  ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
}

{
  ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::BorderRouterTlv>(a1);
}

uint64_t ot::NetworkData::ContextTlv::ClearCompress(uint64_t this)
{
  *(this + 2) &= ~0x10u;
  return this;
}

{
  return ot::NetworkData::ContextTlv::ClearCompress(this);
}

uint64_t ot::NetworkData::Leader::ContextIds::ScheduleToRemove(uint64_t this, unsigned __int8 a2)
{
  v10 = this;
  v9 = a2;
  v5 = this;
  if ((*(this + 64) & 1) == 0)
  {
    this = ot::NetworkData::Leader::ContextIds::IsInUse(this, v9);
    if (this)
    {
      v3 = v9;
      Now = ot::TimerMilli::GetNow(this);
      v2 = ot::Time::SecToMsec(v5[15]);
      v8 = ot::Time::operator+(&Now, v2);
      ot::NetworkData::Leader::ContextIds::SetRemoveTime(v5, v3, v8);
      v4 = (ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(v5) + 344);
      v6 = ot::NetworkData::Leader::ContextIds::GetRemoveTime(v5, v9);
      return ot::TimerMilli::FireAtIfEarlier(v4, v6);
    }
  }

  return this;
}

void ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::ServerTlv>(uint64_t a1, uint64_t a2)
{
  ot::NetworkData::NetworkDataTlv::Find(a1, a2, 6u);
  ot::NetworkData::As<ot::NetworkData::ServerTlv>();
}

{
  ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::ServerTlv>(a1, a2);
}

ot::NetworkData::Leader *ot::NetworkData::Leader::RemoveContext(ot::NetworkData::Leader *this, unsigned __int8 a2)
{
  ot::NetworkData::MutableNetworkData::GetTlvsStart(this);
  Next = v2;
  while (1)
  {
    ot::NetworkData::MutableNetworkData::GetTlvsEnd(this);
    ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::PrefixTlv>(Next, v3);
    v13 = v4;
    if (!v4)
    {
      break;
    }

    ot::NetworkData::Leader::RemoveContext(this, v4, a2);
    if (ot::NetworkData::Leader::UpdatePrefix(this, v13))
    {
      Next = ot::NetworkData::NetworkDataTlv::GetNext(v13);
    }
  }

  return ot::NetworkData::Leader::IncrementVersions(this, 1, v5, v6, v7, v8, v9, v10);
}

void ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::PrefixTlv>(uint64_t a1, uint64_t a2)
{
  ot::NetworkData::NetworkDataTlv::Find(a1, a2, 1u);
  ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
}

{
  ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::PrefixTlv>(a1, a2);
}

void ot::NetworkData::Leader::RemoveContext(ot::NetworkData::Leader *this, ot::NetworkData::PrefixTlv *a2, unsigned __int8 a3)
{
  SubTlvs = ot::NetworkData::PrefixTlv::GetSubTlvs(a2);
  while (1)
  {
    Next = ot::NetworkData::NetworkDataTlv::GetNext(a2);
    ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::ContextTlv>(SubTlvs, Next);
    v7 = v4;
    if (!v4)
    {
      break;
    }

    if (ot::NetworkData::ContextTlv::GetContextId(v4) == a3)
    {
      Size = ot::NetworkData::NetworkDataTlv::GetSize(v7);
      ot::NetworkData::MutableNetworkData::RemoveTlv(this, v7);
      ot::NetworkData::NetworkDataTlv::DecreaseLength(a2, Size);
    }

    else
    {
      SubTlvs = ot::NetworkData::NetworkDataTlv::GetNext(v7);
    }
  }
}

void ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::ContextTlv>(uint64_t a1, uint64_t a2)
{
  ot::NetworkData::NetworkDataTlv::Find(a1, a2, 3u);
  ot::NetworkData::As<ot::NetworkData::ContextTlv>();
}

{
  ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::ContextTlv>(a1, a2);
}

void ot::NetworkData::Leader::HandleNetworkDataRestoredAfterReset(ot::NetworkData::Leader *this)
{
  v24 = this;
  v23 = 0;
  ot::NetworkData::MutableNetworkData::GetTlvsStart(this);
  v12 = v1;
  ot::NetworkData::MutableNetworkData::GetTlvsEnd(this);
  ot::Cli::Dataset::Dataset(v22, v12, v2);
  ot::NetworkData::Leader::ChangedFlags::ChangedFlags(v21);
  v20 = 0;
  v19 = 0;
  ot::Array<unsigned short,(unsigned short)85,unsigned char>::Array(v18);
  *(this + 268) = 0;
  ot::NetworkData::NetworkData::FindRlocs(this, 0, 0, v18);
  ot::Array<unsigned short,(unsigned short)85,unsigned char>::begin();
  v17 = v3;
  v16 = ot::Array<unsigned short,(unsigned short)85,unsigned char>::end(v18);
  while (v17 != v16)
  {
    v15 = *v17;
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
    v4 = ot::Mle::RouterIdFromRloc16(v15);
    if (!ot::RouterTable::IsAllocated(v11, v4))
    {
      ot::NetworkData::Leader::RemoveRloc(this, v15, 1, v21);
    }

    ++v17;
  }

  ot::NetworkData::Leader::IncrementVersions(this, v21);
  while (1)
  {
    ot::NetworkData::TlvIterator::Iterate<ot::NetworkData::PrefixTlv>(v22);
    v23 = v5;
    if (!v5)
    {
      break;
    }

    ot::NetworkData::PrefixTlv::FindSubTlv<ot::NetworkData::ContextTlv>(v23);
    v14 = v6;
    if (v6)
    {
      ContextId = ot::NetworkData::ContextTlv::GetContextId(v6);
      ot::NetworkData::Leader::ContextIds::MarkAsInUse((this + 272), ContextId);
      if (!ot::NetworkData::ContextTlv::IsCompress(v14))
      {
        v8 = ot::NetworkData::ContextTlv::GetContextId(v14);
        ot::NetworkData::Leader::ContextIds::ScheduleToRemove(this + 272, v8);
      }
    }
  }

  if (!ot::NetworkData::Leader::FindCommissioningSessionId(this, &v19))
  {
    v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Leader>(this);
    ot::MeshCoP::Leader::SetSessionId(v9, v19);
  }

  if (!ot::NetworkData::Leader::FindBorderAgentRloc(this, &v20))
  {
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Leader>(this);
    ot::MeshCoP::Leader::SetEmptyCommissionerData(v10);
  }
}

uint64_t ot::MeshCoP::Leader::SetSessionId(uint64_t this, __int16 a2)
{
  *(this + 102) = a2;
  return this;
}

{
  return ot::MeshCoP::Leader::SetSessionId(this, a2);
}

uint64_t ot::NetworkData::Leader::UpdateCommissioningData(ot::NetworkData::Leader *this, unsigned __int16 a2, ot::NetworkData::CommissioningDataTlv **a3)
{
  v10 = 0;
  ot::NetworkData::Leader::FindCommissioningData(this);
  *&v9[2] = v3;
  if (v3)
  {
    if (a2 > ot::NetworkData::NetworkDataTlv::GetLength(v3))
    {
      v7 = a2 - ot::NetworkData::NetworkDataTlv::GetLength(*&v9[2]);
    }

    else
    {
      LOWORD(v7) = 0;
    }

    CanInsert = ot::NetworkData::MutableNetworkData::CanInsert(this, v7);
  }

  else
  {
    *v9 = (a2 + 2);
    CanInsert = ot::NetworkData::MutableNetworkData::CanInsert(this, *v9);
  }

  if (CanInsert)
  {
    if (*&v9[2])
    {
      ot::NetworkData::MutableNetworkData::RemoveTlv(this, *&v9[2]);
    }

    ot::NetworkData::MutableNetworkData::AppendTlv(this, a2 + 2);
    ot::NetworkData::As<ot::NetworkData::CommissioningDataTlv>();
    *a3 = v5;
    if (!*a3)
    {
      __assert_rtn("UpdateCommissioningData", "network_data_leader_ftd.cpp", 1423, "aDataTlv != nullptr");
    }

    ot::NetworkData::CommissioningDataTlv::Init(*a3);
    ot::NetworkData::NetworkDataTlv::SetLength(*a3, a2);
    ++*(this + 11);
    ot::NetworkData::Leader::SignalNetDataChanged(this);
  }

  else
  {
    return 3;
  }

  return v10;
}

uint64_t ot::NetworkData::CommissioningDataTlv::Init(ot::NetworkData::CommissioningDataTlv *this)
{
  ot::NetworkData::NetworkDataTlv::Init(this);
  ot::NetworkData::NetworkDataTlv::SetType(this, 4);
  return ot::NetworkData::NetworkDataTlv::SetLength(this, 0);
}

{
  return ot::NetworkData::CommissioningDataTlv::Init(this);
}

uint64_t ot::NetworkData::Leader::SetCommissioningData(ot::NetworkData::Leader *this, const void *a2, unsigned __int8 a3)
{
  v9 = this;
  v8 = a2;
  v7 = a3;
  updated = 0;
  v5 = 0;
  updated = ot::NetworkData::Leader::UpdateCommissioningData(this, a3, &v5);
  if (!updated)
  {
    Value = ot::NetworkData::NetworkDataTlv::GetValue(v5);
    memcpy(Value, v8, v7);
  }

  return updated;
}

uint64_t ot::NetworkData::Leader::ContextIds::HandleTimer(ot::NetworkData::Leader::ContextIds *this)
{
  v10 = this;
  ot::NextFireTime::NextFireTime(&v9);
  if (*(this + 64))
  {
    __assert_rtn("HandleTimer", "network_data_leader_ftd.cpp", 1614, "!mIsClone");
  }

  for (i = 1; i <= 0xFu; ++i)
  {
    if (!ot::NetworkData::Leader::ContextIds::IsUnallocated(this, i) && !ot::NetworkData::Leader::ContextIds::IsInUse(this, i))
    {
      Now = ot::NextFireTime::GetNow(&v9);
      v6 = ot::NetworkData::Leader::ContextIds::GetRemoveTime(this, i);
      if (ot::Time::operator>=(&Now, &v6))
      {
        ot::NetworkData::Leader::ContextIds::MarkAsUnallocated(this, i);
        v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
        ot::NetworkData::Leader::RemoveContext(v1, i);
      }

      else
      {
        v5 = ot::NetworkData::Leader::ContextIds::GetRemoveTime(this, i);
        ot::NextFireTime::UpdateIfEarlier(&v9, v5);
      }
    }
  }

  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
  return ot::TimerMilli::FireAt((v2 + 344), &v9);
}

ot::NetworkData::Leader::ContextIds *ot::NetworkData::Leader::ContextIds::ContextIds(ot::NetworkData::Leader::ContextIds *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  result = this;
  *(this + 15) = 300;
  *(this + 64) = 0;
  return result;
}

{
  ot::NetworkData::Leader::ContextIds::ContextIds(this, a2);
  return this;
}

ot::NetworkData::Leader::ContextIds *ot::NetworkData::Leader::ContextIds::Clear(ot::NetworkData::Leader::ContextIds *this)
{
  v1 = this;
  for (i = 1; i <= 0xFu; ++i)
  {
    this = ot::NetworkData::Leader::ContextIds::MarkAsUnallocated(v1, i);
  }

  return this;
}

_DWORD *ot::NetworkData::Leader::ContextIds::MarkAsUnallocated(ot::NetworkData::Leader::ContextIds *this, unsigned __int8 a2)
{
  return ot::Time::SetValue(this + a2 - 1, 0);
}

{
  return ot::NetworkData::Leader::ContextIds::MarkAsUnallocated(this, a2);
}

BOOL ot::NetworkData::Leader::ContextIds::IsUnallocated(ot::NetworkData::Leader::ContextIds *this, unsigned __int8 a2)
{
  return ot::Time::GetValue((this + 4 * a2 - 4)) == 0;
}

{
  return ot::NetworkData::Leader::ContextIds::IsUnallocated(this, a2);
}

BOOL ot::NetworkData::Leader::ContextIds::IsInUse(ot::NetworkData::Leader::ContextIds *this, unsigned __int8 a2)
{
  return ot::Time::GetValue((this + 4 * a2 - 4)) == 1;
}

{
  return ot::NetworkData::Leader::ContextIds::IsInUse(this, a2);
}

_DWORD *ot::NetworkData::Leader::ContextIds::SetRemoveTime(uint64_t a1, unsigned __int8 a2, int a3)
{
  v8 = a3;
  for (i = ot::Time::GetValue(&v8); ; ++i)
  {
    v4 = 1;
    if (i)
    {
      v4 = i == 1;
    }

    if (!v4)
    {
      break;
    }
  }

  return ot::Time::SetValue((a1 + 4 * (a2 - 1)), i);
}

uint64_t ot::NetworkData::Leader::ContextIds::GetRemoveTime(ot::NetworkData::Leader::ContextIds *this, unsigned __int8 a2)
{
  return *(this + a2 - 1);
}

{
  return ot::NetworkData::Leader::ContextIds::GetRemoveTime(this, a2);
}