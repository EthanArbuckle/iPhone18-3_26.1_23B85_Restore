uint64_t ot::Message::Read<ot::Ip6::HopByHopHeader>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 2u);
}

{
  return ot::Message::Read<ot::Ip6::HopByHopHeader>(a1, a2, a3);
}

uint64_t ot::Ip6::Ip6::HandleOptions(ot::Ip6::Ip6 *this, ot::Message *a2, const ot::Ip6::Header *a3, BOOL *a4)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  HopByHopHeader = 0;
  ot::OffsetRange::InitFromMessageOffsetToEnd(v11, a2);
  HopByHopHeader = ot::Ip6::Ip6::ReadHopByHopHeader(this, v17, v11, v13);
  if (!HopByHopHeader)
  {
    while (!ot::OffsetRange::IsEmpty(v11))
    {
      HopByHopHeader = ot::Ip6::Option::ParseFrom(v12, v17, v11);
      if (HopByHopHeader)
      {
        return HopByHopHeader;
      }

      if (!ot::Ip6::Option::IsPadding(v12))
      {
        if (ot::Ip6::Option::GetType(v12) == 109)
        {
          v9 = v17;
          Source = ot::Ip6::Header::GetSource(v16);
          HopByHopHeader = ot::Ip6::Mpl::ProcessOption((this + 136), v9, v11, Source, v15);
          if (HopByHopHeader)
          {
            return HopByHopHeader;
          }
        }

        else if (ot::Ip6::Option::GetAction(v12))
        {
          return 2;
        }
      }

      Size = ot::Ip6::Option::GetSize(v12);
      ot::OffsetRange::AdvanceOffset(v11, Size);
    }

    v8 = v17;
    EndOffset = ot::OffsetRange::GetEndOffset(v11);
    ot::Message::SetOffset(v8, EndOffset);
  }

  return HopByHopHeader;
}

uint64_t ot::Ip6::Option::GetAction(ot::Ip6::Option *this)
{
  return *this & 0xC0;
}

{
  return ot::Ip6::Option::GetAction(this);
}

uint64_t ot::Ip6::Ip6::HandleFragment(ot::Ip6::Ip6 *this, ot::Message *a2)
{
  v8 = this;
  v7 = a2;
  v6 = 0;
  Offset = ot::Message::GetOffset(a2);
  v6 = ot::Message::Read<ot::Ip6::FragmentHeader>(a2, Offset, v5);
  if (!v6)
  {
    if (ot::Ip6::FragmentHeader::GetOffset(v5) || ot::Ip6::FragmentHeader::IsMoreFlagSet(v5))
    {
      return 2;
    }

    else
    {
      ot::Message::MoveOffset(v7, 8);
    }
  }

  return v6;
}

uint64_t ot::Message::Read<ot::Ip6::FragmentHeader>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 8u);
}

{
  return ot::Message::Read<ot::Ip6::FragmentHeader>(a1, a2, a3);
}

uint64_t ot::Ip6::FragmentHeader::GetOffset(ot::Ip6::FragmentHeader *this)
{
  return (ot::BigEndian::HostSwap16(*(this + 1)) & 0xFFF8) >> 3;
}

{
  return ot::Ip6::FragmentHeader::GetOffset(this);
}

BOOL ot::Ip6::FragmentHeader::IsMoreFlagSet(ot::Ip6::FragmentHeader *this)
{
  return (ot::BigEndian::HostSwap16(*(this + 1)) & 1) != 0;
}

{
  return ot::Ip6::FragmentHeader::IsMoreFlagSet(this);
}

uint64_t ot::Ip6::Ip6::HandleExtensionHeaders(ot::InstanceLocator *a1, uint64_t a2, ot::Ip6::Header *a3, unsigned __int8 *a4, BOOL *a5)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v17 = 0;
  while (1)
  {
    v14 = 1;
    if (!*v18)
    {
      v14 = *v19 == 0;
    }

    if (!v14)
    {
      break;
    }

    v13 = ot::Ptr<ot::Message>::operator->(v21);
    v5 = ot::Ptr<ot::Message>::operator->(v21);
    Offset = ot::Message::GetOffset(v5);
    v17 = ot::Message::Read<ot::Ip6::ExtensionHeader>(v13, Offset, v16);
    if (v17)
    {
      break;
    }

    v12 = *v19;
    if (*v19)
    {
      switch(v12)
      {
        case ')':
          return v17;
        case '+':
          return 2;
        case ',':
          ot::Ip6::Ip6::PassToHost(a1, v21, v20, *v19, 0, *v18, 1u);
          IgnoreError();
          v8 = ot::Ptr<ot::Message>::operator*(v21);
          v17 = ot::Ip6::Ip6::HandleFragment(a1, v8);
          if (v17)
          {
            return v17;
          }

          break;
        case ';':
          return 2;
        case '<':
          v9 = ot::Ptr<ot::Message>::operator*(v21);
          v17 = ot::Ip6::Ip6::HandleOptions(a1, v9, v20, v18);
          if (v17)
          {
            return v17;
          }

          break;
        default:
          return v17;
      }
    }

    else
    {
      v7 = ot::Ptr<ot::Message>::operator*(v21);
      v17 = ot::Ip6::Ip6::HandleOptions(a1, v7, v20, v18);
      if (v17)
      {
        return v17;
      }
    }

    NextHeader = ot::Ip6::ExtensionHeader::GetNextHeader(v16);
    *v19 = NextHeader;
  }

  return v17;
}

uint64_t ot::Message::Read<ot::Ip6::ExtensionHeader>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 2u);
}

{
  return ot::Message::Read<ot::Ip6::ExtensionHeader>(a1, a2, a3);
}

uint64_t ot::Ptr<ot::Message>::operator*(uint64_t a1)
{
  return *a1;
}

{
  return ot::Ptr<ot::Message>::operator*(a1);
}

uint64_t ot::Ip6::Ip6::PassToHost(ot::InstanceLocator *a1, uint64_t a2, ot::Ip6::Header *a3, unsigned __int8 a4, unsigned __int8 a5, char a6, unsigned __int8 a7)
{
  v147 = a1;
  v146 = a2;
  v145 = a3;
  v144 = a4;
  v143 = a5;
  v142 = a6;
  v141 = a7;
  v131 = a1;
  DestinationPort = 0;
  ShouldUsePlatformUdp = 0;
  IsPortInUse = 0;
  v137 = 0;
  v136 = 0;
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v135);
  v7 = ot::Ptr<ot::Message>::operator->(v146);
  if (ot::Message::IsLoopbackToHostAllowed(v7))
  {
    if (!ot::CallbackBase<void (*)(otMessage *,void *)>::IsSet(v131 + 1))
    {
      v136 = 4;
      goto LABEL_25;
    }

    v8 = ot::Ptr<ot::Message>::operator->(v146);
    if (ot::Message::GetLength(v8) > 1280)
    {
      v136 = 2;
      goto LABEL_25;
    }

    v130 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(v131);
    Source = ot::Ip6::Header::GetSource(v145);
    if (ot::Mle::Mle::IsMeshLocalAddress(v130, Source) && (v142 & 1) == 0)
    {
      v136 = 2;
      goto LABEL_25;
    }

    if (*v131 & 1) != 0 && (v143)
    {
      v129 = v144;
      if (v144 == 17)
      {
        v122 = ot::Ptr<ot::Message>::operator->(v146);
        v20 = ot::Ptr<ot::Message>::operator->(v146);
        Offset = ot::Message::GetOffset(v20);
        v124 = v133;
        ot::Message::Read<ot::Ip6::Udp::Header>(v122, Offset, v133);
        IgnoreError();
        DestinationPort = ot::Ip6::Udp::Header::GetDestinationPort(v133);
        v123 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Udp>(v131);
        v22 = ot::Ip6::Udp::Header::GetDestinationPort(v133);
        ShouldUsePlatformUdp = ot::Ip6::Udp::ShouldUsePlatformUdp(v123, v22);
        v125 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Udp>(v131);
        v23 = ot::Ip6::Udp::Header::GetDestinationPort(v133);
        IsPortInUse = ot::Ip6::Udp::IsPortInUse(v125, v23);
        v121 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Udp>(v131);
        v24 = ot::Ip6::Udp::Header::GetDestinationPort(v133);
        if (!ot::Ip6::Udp::ShouldUsePlatformUdp(v121, v24) || (v120 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Udp>(v131), v25 = ot::Ip6::Udp::Header::GetDestinationPort(v133), (ot::Ip6::Udp::IsPortInUse(v120, v25) & 1) != 0))
        {
          v26 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(v131);
          if (!ot::AppMetricsManager::HasAppPort(v26, v133))
          {
            v136 = 4;
            goto LABEL_25;
          }
        }
      }

      else if (v129 == 58)
      {
        v128 = v131 + 88;
        Destination = ot::Ip6::Header::GetDestination(v145);
        if (ot::Ip6::Icmp::ShouldHandleEchoRequest((v131 + 88), Destination))
        {
          v126 = ot::Ptr<ot::Message>::operator->(v146);
          v11 = ot::Ptr<ot::Message>::operator->(v146);
          v12 = ot::Message::GetOffset(v11);
          v127 = v134;
          ot::Message::Read<ot::Ip6::Icmp::Header>(v126, v12, v134);
          IgnoreError();
          if (ot::Ip6::Icmp::Header::GetType(v134) == 128)
          {
            Type = ot::Ip6::Icmp::Header::GetType(v134);
            ot::Logger::LogAtLevel<(ot::LogLevel)2>("Ip6", "PassToHost drop ICMP as header type is not EchoRequest:%d", v14, v15, v16, v17, v18, v19, Type);
          }

          if (ot::Ip6::Icmp::Header::GetType(v134) == 128)
          {
            v136 = 2;
            goto LABEL_25;
          }
        }
      }
    }

    v136 = ot::Ip6::Ip6::TakeOrCopyMessagePtr(&v135, v146, v141);
    if (!v136)
    {
      v137 = 1;
      v118 = &v135;
      v27 = ot::Ptr<ot::Message>::operator*(&v135);
      ot::Ip6::Ip6::RemoveMplOption(v131, v27);
      IgnoreError();
      v119 = v131 + 8;
      v132 = ot::OwnedPtr<ot::Message>::Release(&v135);
      ot::Callback<void (*)(otMessage *,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Message *>(v131 + 8, &v132);
    }
  }

LABEL_25:
  if (v136)
  {
    if (v144 == 17)
    {
      if (ShouldUsePlatformUdp)
      {
        if (v137)
        {
          v81 = ot::ErrorToString(v136);
          v80 = &v135;
          v57 = ot::Ptr<ot::Message>::operator->(&v135);
          Length = ot::Message::GetLength(v57);
          v83 = v144;
          v84 = v141;
          v85 = v143;
          v58 = ot::Ptr<ot::Message>::operator->(&v135);
          IsOriginThreadNetif = ot::Message::IsOriginThreadNetif (v58);
          v59 = ot::Ptr<ot::Message>::operator->(&v135);
          IsOriginHostTrusted = ot::Message::IsOriginHostTrusted(v59);
          v60 = ot::Ptr<ot::Message>::operator->(&v135);
          IsOriginHostUntrusted = ot::Message::IsOriginHostUntrusted(v60);
          v89 = &v67;
          v68 = Length;
          v69 = v83;
          v70 = v84;
          v71 = v85 & 1;
          v72 = IsOriginThreadNetif;
          v73 = IsOriginHostTrusted;
          v74 = IsOriginHostUntrusted;
          IsSet = ot::CallbackBase<void (*)(otMessage *,void *)>::IsSet(v131 + 1);
          v76 = DestinationPort;
          v77 = ShouldUsePlatformUdp;
          v78 = IsPortInUse & 1;
          ot::Logger::LogAtLevel<(ot::LogLevel)2>("Ip6", "Error in passToHost UDP error:%s, length:%d, aIpProto:%d, takeCustody:%d, applyFilter:%d, IsOriginThreadNetif:%d, IsOriginHostTrusted:%d, IsOriginHostUntrusted:%d, rxCallbackIsSet:%d, udpPort:%d, shouldHandlePlatformUdp:%d, isPortInUse:%d isPtrSwitch[1]", Length, v61, v62, v63, v64, v65, v81);
        }

        else
        {
          v90 = ot::ErrorToString(v136);
          v48 = ot::Ptr<ot::Message>::operator->(v146);
          v91 = ot::Message::GetLength(v48);
          v92 = v144;
          v93 = v141;
          v94 = v143;
          v49 = ot::Ptr<ot::Message>::operator->(v146);
          v95 = ot::Message::IsOriginThreadNetif (v49);
          v50 = ot::Ptr<ot::Message>::operator->(v146);
          v96 = ot::Message::IsOriginHostTrusted(v50);
          v51 = ot::Ptr<ot::Message>::operator->(v146);
          v97 = ot::Message::IsOriginHostUntrusted(v51);
          v98 = &v67;
          v68 = v91;
          v69 = v92;
          v70 = v93;
          v71 = v94 & 1;
          v72 = v95;
          v73 = v96;
          v74 = v97;
          IsSet = ot::CallbackBase<void (*)(otMessage *,void *)>::IsSet(v131 + 1);
          v76 = DestinationPort;
          v77 = ShouldUsePlatformUdp;
          v78 = IsPortInUse & 1;
          ot::Logger::LogAtLevel<(ot::LogLevel)2>("Ip6", "Error in passToHost UDP error:%s, length:%d, aIpProto:%d, takeCustody:%d, applyFilter:%d, IsOriginThreadNetif:%d, IsOriginHostTrusted:%d, IsOriginHostUntrusted:%d, rxCallbackIsSet:%d, udpPort:%d, shouldHandlePlatformUdp:%d, isPortInUse:%d isPtrSwitch[0]", v91, v52, v53, v54, v55, v56, v90);
        }
      }
    }

    else if (v137)
    {
      v100 = ot::ErrorToString(v136);
      v99 = &v135;
      v38 = ot::Ptr<ot::Message>::operator->(&v135);
      v101 = ot::Message::GetLength(v38);
      v102 = v144;
      v103 = v141;
      v104 = v143;
      v39 = ot::Ptr<ot::Message>::operator->(&v135);
      v105 = ot::Message::IsOriginThreadNetif (v39);
      v40 = ot::Ptr<ot::Message>::operator->(&v135);
      v106 = ot::Message::IsOriginHostTrusted(v40);
      v41 = ot::Ptr<ot::Message>::operator->(&v135);
      v107 = ot::Message::IsOriginHostUntrusted(v41);
      v108 = &v67;
      v68 = v101;
      v69 = v102;
      v70 = v103;
      v71 = v104 & 1;
      v72 = v105;
      v73 = v106;
      v74 = v107;
      IsSet = ot::CallbackBase<void (*)(otMessage *,void *)>::IsSet(v131 + 1);
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("Ip6", "Error in passToHost error:%s, length:%d, aIpProto:%d, takeCustody:%d, applyFilter:%d, IsOriginThreadNetif:%d, IsOriginHostTrusted:%d, IsOriginHostUntrusted:%d, rxCallbackIsSet:%d, isPtrSwitch[1]", v42, v43, v44, v45, v46, v47, v100);
    }

    else
    {
      v109 = ot::ErrorToString(v136);
      v28 = ot::Ptr<ot::Message>::operator->(v146);
      v110 = ot::Message::GetLength(v28);
      v111 = v144;
      v112 = v141;
      v113 = v143;
      v29 = ot::Ptr<ot::Message>::operator->(v146);
      v114 = ot::Message::IsOriginThreadNetif (v29);
      v30 = ot::Ptr<ot::Message>::operator->(v146);
      v115 = ot::Message::IsOriginHostTrusted(v30);
      v31 = ot::Ptr<ot::Message>::operator->(v146);
      v116 = ot::Message::IsOriginHostUntrusted(v31);
      v117 = &v67;
      v68 = v110;
      v69 = v111;
      v70 = v112;
      v71 = v113 & 1;
      v72 = v114;
      v73 = v115;
      v74 = v116;
      IsSet = ot::CallbackBase<void (*)(otMessage *,void *)>::IsSet(v131 + 1);
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("Ip6", "Error in passToHost error:%s, length:%d, aIpProto:%d, takeCustody:%d, applyFilter:%d, IsOriginThreadNetif:%d, IsOriginHostTrusted:%d, IsOriginHostUntrusted:%d, rxCallbackIsSet:%d, isPtrSwitch[0]", v32, v33, v34, v35, v36, v37, v109);
    }
  }

  v79 = v136;
  ot::OwnedPtr<ot::Message>::~OwnedPtr(&v135);
  return v79;
}

uint64_t ot::Ip6::Ip6::TakeOrCopyMessagePtr(ot::Message **a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = ot::Ptr<ot::Message>::operator->(a2);
      v5 = ot::Message::Clone(v4);
      ot::OwnedPtr<ot::Message>::Reset(a1, v5);
    }
  }

  else
  {
    ot::OwnedPtr<ot::Message>::PassOwnership();
    ot::OwnedPtr<ot::Message>::operator=(a1, v3);
  }

  if (ot::Ptr<ot::Message>::operator!=(a1, 0))
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

ot::Message **ot::OwnedPtr<ot::Message>::operator=(ot::Message **a1, uint64_t *a2)
{
  v2 = ot::OwnedPtr<ot::Message>::Release(a2);
  ot::OwnedPtr<ot::Message>::Reset(a1, v2);
  return a1;
}

{
  return ot::OwnedPtr<ot::Message>::operator=(a1, a2);
}

uint64_t ot::Ip6::Ip6::Receive(uint64_t a1, ot::Ip6::Header *a2, uint64_t a3, char a4, char a5)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v17 = 0;
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v16);
  ot::Ip6::MessageInfo::MessageInfo(v15);
  ot::Clearable<ot::Ip6::MessageInfo>::Clear(v15);
  Source = ot::Ip6::Header::GetSource(v21);
  ot::Ip6::MessageInfo::SetPeerAddr(v15, Source);
  Destination = ot::Ip6::Header::GetDestination(v21);
  ot::Ip6::MessageInfo::SetSockAddr(v15, Destination);
  HopLimit = ot::Ip6::Header::GetHopLimit(v21);
  ot::Ip6::MessageInfo::SetHopLimit(v15, HopLimit);
  Ecn = ot::Ip6::Header::GetEcn(v21);
  ot::Ip6::MessageInfo::SetEcn(v15, Ecn);
  if (v19 == 17 || v19 == 58)
  {
    v9 = ot::Ip6::Ip6::TakeOrCopyMessagePtr(&v16, v20, v18);
    v17 = v9;
    if (!v9)
    {
      if (v19 == 17)
      {
        v10 = ot::Ptr<ot::Message>::operator*(&v16);
        v17 = ot::Ip6::Udp::HandleMessage((a1 + 104), v10, v15);
      }

      else if (v19 == 58)
      {
        v11 = ot::Ptr<ot::Message>::operator*(&v16);
        v17 = ot::Ip6::Icmp::HandleMessage((a1 + 88), v11, v15);
      }
    }
  }

  ot::Logger::LogOnError("Ip6", v17, "handle payload");
  v13 = v17;
  ot::OwnedPtr<ot::Message>::~OwnedPtr(&v16);
  return v13;
}

uint64_t ot::Ip6::MessageInfo::SetEcn(uint64_t result, char a2)
{
  *(result + 37) = *(result + 37) & 0xFC | a2 & 3;
  return result;
}

{
  return ot::Ip6::MessageInfo::SetEcn(result, a2);
}

uint64_t ot::Ip6::Header::GetEcn(ot::Ip6::Header *this)
{
  return (*(this + 1) & 0x30) >> 4;
}

{
  return ot::Ip6::Header::GetEcn(this);
}

BOOL ot::CallbackBase<void (*)(otMessage *,void *)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(otMessage *,void *)>::IsSet(a1);
}

uint64_t ot::Message::Read<ot::Ip6::Udp::Header>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 8u);
}

{
  return ot::Message::Read<ot::Ip6::Udp::Header>(a1, a2, a3);
}

uint64_t ot::Ip6::Udp::Header::GetDestinationPort(ot::Ip6::Udp::Header *this)
{
  return ot::BigEndian::HostSwap16(*(this + 1));
}

{
  return ot::Ip6::Udp::Header::GetDestinationPort(this);
}

uint64_t ot::Callback<void (*)(otMessage *,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Message *>(uint64_t a1, void *a2)
{
  return (*a1)(*a2, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otMessage *,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Message *>(a1, a2);
}

uint64_t ot::OwnedPtr<ot::Message>::Release(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  return v2;
}

{
  return ot::OwnedPtr<ot::Message>::Release(a1);
}

BOOL ot::Message::IsOriginHostTrusted(ot::Message *this)
{
  return ot::Message::GetOrigin(this) == 1;
}

{
  return ot::Message::IsOriginHostTrusted(this);
}

BOOL ot::Message::IsOriginHostUntrusted(ot::Message *this)
{
  return ot::Message::GetOrigin(this) == 2;
}

{
  return ot::Message::IsOriginHostUntrusted(this);
}

uint64_t ot::Ip6::Ip6::SendRaw(ot::InstanceLocator *a1, uint64_t a2)
{
  v22 = a1;
  v21 = a2;
  inserted = 0;
  v2 = ot::Ptr<ot::Message>::operator*(a2);
  inserted = ot::Ip6::Header::ParseFrom(v19, v2);
  if (!inserted)
  {
    Source = ot::Ip6::Header::GetSource(v19);
    if (ot::Ip6::Address::IsMulticast(Source))
    {
      return 20;
    }

    else
    {
      v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1);
      v4 = ot::Ip6::Header::GetSource(v19);
      if (ot::BackboneRouter::Leader::IsDomainUnicast(v15, v4) || (v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1), v5 = ot::Ip6::Header::GetSource(v19), (ot::NetworkData::Leader::IsOnMesh(v14, v5) & 1) == 0) && (v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1), v6 = ot::Ip6::Header::GetDestination(v19), !ot::Mle::Mle::IsMeshLocalAddress(v13, v6)) || (v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1), v7 = ot::Ip6::Header::GetSource(v19), ot::Ip6::Netif::HasUnicastAddress(v12, v7)))
      {
        Destination = ot::Ip6::Header::GetDestination(v19);
        if (!ot::Ip6::Address::IsMulticast(Destination) || (v9 = ot::Ptr<ot::Message>::operator*(a2), (inserted = ot::Ip6::Ip6::InsertMplOption(a1, v9, v19)) == 0))
        {
          ot::OwnedPtr<ot::Message>::PassOwnership();
          ot::OwnedPtr<ot::Message>::OwnedPtr(&v18, v10);
          inserted = ot::Ip6::Ip6::HandleDatagram(a1, &v18, 0);
          ot::OwnedPtr<ot::Message>::~OwnedPtr(&v18);
        }
      }

      else
      {
        return 2;
      }
    }
  }

  return inserted;
}

uint64_t ot::Ip6::Ip6::extractAddressAndportfromHeader(ot::Ip6::Ip6 *this, ot::Message *a2, char *a3)
{
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
  memcpy(__dst, a2, sizeof(__dst));
  return ot::MeshForwarder::GetAddressAndPortInfo(v4, __dst, a3, 0);
}

uint64_t ot::Ip6::Ip6::IsOnLink(ot::Ip6::Ip6 *this, const ot::Ip6::Address *a2)
{
  v13 = this;
  v12 = a2;
  v11 = 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
  if (ot::NetworkData::Leader::IsOnMesh(v2, v12))
  {
    v11 = 1;
  }

  else
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
    ot::Ip6::Netif::GetUnicastAddresses(v3);
    v10[1] = v4;
    v10[0] = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::begin(v4);
    v9 = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::end();
    while (ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator!=(v10, &v9))
    {
      v8 = ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator*(v10);
      Address = ot::Ip6::Netif::UnicastAddress::GetAddress(v8);
      if (ot::Ip6::Address::PrefixMatch(Address, v12) >= v8[16])
      {
        v11 = 1;
        return v11 & 1;
      }

      ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator++(v10);
    }
  }

  return v11 & 1;
}

uint64_t ot::Ip6::Ip6::RouteLookup(ot::Ip6::Ip6 *this, const ot::Ip6::Address *a2, const ot::Ip6::Address *a3)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = 0;
  v15 = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
  v16 = ot::NetworkData::Leader::RouteLookup(v3, v18, v17, &v15);
  if (v16)
  {
    ot::Ip6::Address::ToString(v17, v20);
    v5 = ot::String<(unsigned short)40>::AsCString(v20);
    ot::Logger::LogAtLevel<(ot::LogLevel)3>("Ip6", "Failed to find valid route for: %s", v6, v7, v8, v9, v10, v11, v5);
  }

  else
  {
    v13 = v15;
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    if (v13 == ot::Mle::Mle::GetRloc16(v4))
    {
      return 4;
    }
  }

  return v16;
}

BOOL ot::Mle::Mle::IsMinimalEndDevice(ot::Mle::Mle *this)
{
  return ot::Mle::DeviceMode::IsMinimalEndDevice((this + 131));
}

{
  return ot::Mle::Mle::IsMinimalEndDevice(this);
}

uint64_t ot::Message::Write<unsigned char>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::WriteBytes(a1, a2, a3, 1u);
}

{
  return ot::Message::Write<unsigned char>(a1, a2, a3);
}

uint64_t ot::Ip6::Ip6::SelectSourceAddress(ot::Ip6::Ip6 *this, ot::Ip6::MessageInfo *a2)
{
  v6 = 0;
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(a2);
  v5 = ot::Ip6::Ip6::SelectSourceAddress(this, PeerAddr);
  if (v5)
  {
    ot::Ip6::MessageInfo::SetSockAddr(a2, v5);
  }

  else
  {
    return 23;
  }

  return v6;
}

uint64_t ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::begin(uint64_t a1)
{
  Head = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::GetHead(a1);
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v3, Head);
  return v3;
}

{
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::begin(a1);
}

uint64_t ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::end()
{
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v1, 0);
  return v1;
}

{
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::end();
}

BOOL ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator!=(void *a1, void *a2)
{
  return *a1 != *a2;
}

{
  return ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator!=(a1, a2);
}

uint64_t ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator*(uint64_t a1)
{
  return *a1;
}

{
  return ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator*(a1);
}

void ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator++(ot::Ip6::Netif::UnicastAddress **a1)
{
  ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator::Advance(a1);
}

{
  ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator++(a1);
}

uint64_t ot::Stringify::Lookup<(unsigned short)9>(__int16 a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  v10 = a1;
  v8 = ot::BinarySearch::Find<unsigned short,ot::Stringify::Entry,(unsigned short)9>(&v10, a2, a3, a4, a5, a6);
  if (v8)
  {
    return *(v8 + 1);
  }

  else
  {
    return a3;
  }
}

{
  return ot::Stringify::Lookup<(unsigned short)9>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Ip6::Headers::ParseFrom(ot::Ip6::Headers *this, const ot::Message *a2)
{
  v5 = 6;
  ot::Clearable<ot::Ip6::Headers>::Clear(this);
  if (!ot::Ip6::Header::ParseFrom(this, a2))
  {
    NextHeader = ot::Ip6::Header::GetNextHeader(this);
    if (NextHeader == 6)
    {
      if (!ot::Message::Read<ot::Ip6::Tcp::Header>(a2, 0x28u, this + 40))
      {
        return 0;
      }
    }

    else if (NextHeader == 17)
    {
      if (!ot::Message::Read<ot::Ip6::Udp::Header>(a2, 0x28u, this + 40))
      {
        if (ot::Ip6::Headers::GetSourcePort(this) == 5540 || ot::Ip6::Headers::GetDestinationPort(this) == 5540)
        {
          ot::Ip6::Matter::Header::ParseFrom((this + 64), a2, 0x30u);
          IgnoreError();
        }

        else if (ot::Ip6::Headers::GetSourcePort(this) == 5683 || ot::Ip6::Headers::GetDestinationPort(this) == 5683)
        {
          ot::Ip6::Hap::Header::ParseFrom((this + 64), a2, 0x30u);
          IgnoreError();
        }

        return 0;
      }
    }

    else if (NextHeader != 58 || !ot::Message::Read<ot::Ip6::Icmp::Header>(a2, 0x28u, this + 40))
    {
      return 0;
    }
  }

  return v5;
}

void *ot::Clearable<ot::Ip6::Headers>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Ip6::Headers>(a1);
}

{
  return ot::Clearable<ot::Ip6::Headers>::Clear(a1);
}

uint64_t ot::Ip6::Headers::GetSourcePort(ot::Ip6::Headers *this)
{
  v4 = 0;
  IpProto = ot::Ip6::Headers::GetIpProto(this);
  if (IpProto == 6)
  {
    return ot::Ip6::Tcp::Header::GetSourcePort((this + 40));
  }

  else if (IpProto == 17)
  {
    return ot::Ip6::Udp::Header::GetSourcePort((this + 40));
  }

  return v4;
}

uint64_t ot::Ip6::Headers::GetDestinationPort(ot::Ip6::Headers *this)
{
  v4 = 0;
  IpProto = ot::Ip6::Headers::GetIpProto(this);
  if (IpProto == 6)
  {
    return ot::Ip6::Tcp::Header::GetDestinationPort((this + 40));
  }

  else if (IpProto == 17)
  {
    return ot::Ip6::Udp::Header::GetDestinationPort((this + 40));
  }

  return v4;
}

uint64_t ot::Message::Read<ot::Ip6::Tcp::Header>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x14u);
}

{
  return ot::Message::Read<ot::Ip6::Tcp::Header>(a1, a2, a3);
}

uint64_t ot::Ip6::Headers::DecompressFrom(ot::Ip6::Headers *this, const ot::Message *a2, unsigned __int16 a3, const ot::Mac::Addresses *a4)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  Bytes = ot::Message::ReadBytes(a2, a3, v14, 0x75u);
  ot::Data<(ot::DataLengthType)1>::Init(v8, v14, Bytes);
  v6 = v10;
  Instance = ot::Message::GetInstance(v12);
  return ot::Ip6::Headers::DecompressFrom(this, v8, v6, Instance);
}

uint64_t ot::Ip6::Headers::DecompressFrom(ot::Ip6::Headers *this, const ot::FrameData *a2, const ot::Mac::Addresses *a3, ot::Instance *a4)
{
  v17 = this;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = 0;
  v12 = *a2;
  v10 = 0;
  if (ot::Lowpan::FragmentHeader::ParseFrom(v11, &v12) || !ot::Lowpan::FragmentHeader::GetDatagramOffset(v11))
  {
    if (ot::Lowpan::Lowpan::IsLowpanHc(&v12, v4))
    {
      v5 = ot::Instance::Get<ot::Lowpan::Lowpan>(v14);
      v13 = ot::Lowpan::Lowpan::DecompressBaseHeader(v5, this, &v10, v15, &v12);
      if (!v13)
      {
        NextHeader = ot::Ip6::Header::GetNextHeader(this);
        switch(NextHeader)
        {
          case 6:
            return ot::FrameData::Read<ot::Ip6::Tcp::Header>(&v12, this + 40);
          case 17:
            if (v10)
            {
              v6 = ot::Instance::Get<ot::Lowpan::Lowpan>(v14);
              v13 = ot::Lowpan::Lowpan::DecompressUdpHeader(v6, (this + 40), &v12);
              if (v13)
              {
                return v13;
              }
            }

            else
            {
              v13 = ot::FrameData::Read<ot::Ip6::Udp::Header>(&v12, this + 40);
              if (v13)
              {
                return v13;
              }
            }

            if (ot::Ip6::Headers::GetSourcePort(this) == 5540 || ot::Ip6::Headers::GetDestinationPort(this) == 5540)
            {
              ot::Ip6::Matter::Header::ParseFrom((this + 64), &v12);
              IgnoreError();
            }

            else if (ot::Ip6::Headers::GetSourcePort(this) == 5683 || ot::Ip6::Headers::GetDestinationPort(this) == 5683)
            {
              ot::Ip6::Hap::Header::ParseFrom((this + 64), &v12);
              IgnoreError();
            }

            break;
          case 58:
            return ot::FrameData::Read<ot::Ip6::Icmp::Header>(&v12, this + 40);
        }
      }
    }

    else
    {
      return 23;
    }
  }

  else
  {
    return 23;
  }

  return v13;
}

uint64_t ot::Lowpan::FragmentHeader::GetDatagramOffset(ot::Lowpan::FragmentHeader *this)
{
  return *(this + 2);
}

{
  return ot::Lowpan::FragmentHeader::GetDatagramOffset(this);
}

BOOL ot::Lowpan::Lowpan::IsLowpanHc(uint64_t a1)
{
  v4 = 0;
  if (ot::Data<(ot::DataLengthType)1>::GetLength(a1) > 0)
  {
    Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(a1);
    return ot::Lowpan::Lowpan::IsLowpanHc(Bytes, v2);
  }

  return v4;
}

uint64_t ot::Instance::Get<ot::Lowpan::Lowpan>(uint64_t a1)
{
  return a1 + 88192;
}

{
  return ot::Instance::Get<ot::Lowpan::Lowpan>(a1);
}

uint64_t ot::FrameData::Read<ot::Ip6::Udp::Header>(ot::FrameData *a1, void *a2)
{
  return ot::FrameData::ReadBytes(a1, a2, 8u);
}

{
  return ot::FrameData::Read<ot::Ip6::Udp::Header>(a1, a2);
}

uint64_t ot::FrameData::Read<ot::Ip6::Tcp::Header>(ot::FrameData *a1, void *a2)
{
  return ot::FrameData::ReadBytes(a1, a2, 0x14u);
}

{
  return ot::FrameData::Read<ot::Ip6::Tcp::Header>(a1, a2);
}

uint64_t ot::FrameData::Read<ot::Ip6::Icmp::Header>(ot::FrameData *a1, void *a2)
{
  return ot::FrameData::ReadBytes(a1, a2, 8u);
}

{
  return ot::FrameData::Read<ot::Ip6::Icmp::Header>(a1, a2);
}

uint64_t ot::Ip6::Udp::Header::GetSourcePort(ot::Ip6::Udp::Header *this)
{
  return ot::BigEndian::HostSwap16(*this);
}

{
  return ot::Ip6::Udp::Header::GetSourcePort(this);
}

uint64_t ot::Ip6::Tcp::Header::GetSourcePort(ot::Ip6::Tcp::Header *this)
{
  return ot::BigEndian::HostSwap16(*this);
}

{
  return ot::Ip6::Tcp::Header::GetSourcePort(this);
}

uint64_t ot::Ip6::Tcp::Header::GetDestinationPort(ot::Ip6::Tcp::Header *this)
{
  return ot::BigEndian::HostSwap16(*(this + 1));
}

{
  return ot::Ip6::Tcp::Header::GetDestinationPort(this);
}

uint64_t ot::Ip6::Headers::GetChecksum(ot::Ip6::Headers *this)
{
  v4 = 0;
  IpProto = ot::Ip6::Headers::GetIpProto(this);
  switch(IpProto)
  {
    case 6:
      return ot::Ip6::Tcp::Header::GetChecksum((this + 40));
    case 17:
      return ot::Ip6::Udp::Header::GetChecksum((this + 40));
    case 58:
      return ot::Ip6::Icmp::Header::GetChecksum((this + 40));
  }

  return v4;
}

uint64_t ot::Ip6::Udp::Header::GetChecksum(ot::Ip6::Udp::Header *this)
{
  return ot::BigEndian::HostSwap16(*(this + 3));
}

{
  return ot::Ip6::Udp::Header::GetChecksum(this);
}

uint64_t ot::Ip6::Tcp::Header::GetChecksum(ot::Ip6::Tcp::Header *this)
{
  return ot::BigEndian::HostSwap16(*(this + 8));
}

{
  return ot::Ip6::Tcp::Header::GetChecksum(this);
}

uint64_t ot::Ip6::Icmp::Header::GetChecksum(ot::Ip6::Icmp::Header *this)
{
  return ot::BigEndian::HostSwap16(*(this + 1));
}

{
  return ot::Ip6::Icmp::Header::GetChecksum(this);
}

double ot::Clearable<ot::PriorityQueue>::Clear(_OWORD *a1)
{
  return ot::ClearAllBytes<ot::PriorityQueue>(a1);
}

{
  return ot::Clearable<ot::PriorityQueue>::Clear(a1);
}

double ot::ClearAllBytes<ot::PriorityQueue>(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

{
  return ot::ClearAllBytes<ot::PriorityQueue>(a1);
}

uint64_t ot::Ip6::Header::SetVerionTrafficClassFlow(ot::Ip6::Header *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2);
  *this = result;
  return result;
}

{
  return ot::Ip6::Header::SetVerionTrafficClassFlow(this, a2);
}

BOOL ot::Lowpan::Lowpan::IsLowpanHc(ot::Lowpan::Lowpan *this, const unsigned __int8 *a2)
{
  return (*this & 0xE0) == 96;
}

{
  return ot::Lowpan::Lowpan::IsLowpanHc(this, a2);
}

void ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator::Advance(ot::Ip6::Netif::UnicastAddress **a1)
{
  ot::Ip6::Netif::UnicastAddress::GetNext(*a1);
  *a1 = v1;
}

{
  ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator::Advance(a1);
}

void ot::Ip6::Netif::UnicastAddress::GetNext(ot::Ip6::Netif::UnicastAddress *this)
{
  v1 = *(this + 3);
  ot::AsNonConst<otNetifAddress>();
}

{
  ot::Ip6::Netif::UnicastAddress::GetNext(this);
}

void ot::AsNonConst<otNetifAddress>()
{
  ;
}

{
  ot::AsNonConst<otNetifAddress>();
}

char *ot::BinarySearch::Find<unsigned short,ot::Stringify::Entry,(unsigned short)9>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 9, 0x10u, ot::BinarySearch::Compare<unsigned short,ot::Stringify::Entry>, a6);
}

{
  return ot::BinarySearch::Find<unsigned short,ot::Stringify::Entry,(unsigned short)9>(a1, a2, a3, a4, a5, a6);
}

void *ot::ClearAllBytes<ot::Ip6::Headers>(void *a1)
{
  return memset(a1, 0, 0x70uLL);
}

{
  return ot::ClearAllBytes<ot::Ip6::Headers>(a1);
}

void *ot::Ip6::Prefix::Set(ot::Ip6::Prefix *this, const unsigned __int8 *a2, unsigned __int8 a3)
{
  v3 = ot::Ip6::Prefix::SizeForLength(a3);
  result = memcpy(this, a2, v3);
  *(this + 16) = a3;
  return result;
}

uint64_t ot::Ip6::Prefix::SizeForLength(ot::Ip6::Prefix *this)
{
  return ((this + 7) / 8);
}

{
  return ot::Ip6::Prefix::SizeForLength(this);
}

BOOL ot::Ip6::Prefix::IsLinkLocal(ot::Ip6::Prefix *this)
{
  v4 = 0;
  if (*(this + 16) >= 0xAu)
  {
    v2 = *this;
    v3 = v2 & ot::BigEndian::HostSwap16(0xFFC0);
    return v3 == ot::BigEndian::HostSwap16(0xFE80);
  }

  return v4;
}

BOOL ot::Ip6::Prefix::IsMulticast(ot::Ip6::Prefix *this)
{
  v2 = 0;
  if (*(this + 16) >= 8u)
  {
    return *this == 255;
  }

  return v2;
}

BOOL ot::Ip6::Prefix::IsUniqueLocal(ot::Ip6::Prefix *this)
{
  v2 = 0;
  if (*(this + 16) >= 7u)
  {
    return (*this & 0xFE) == 252;
  }

  return v2;
}

BOOL ot::Ip6::Prefix::IsEqual(ot::Ip6::Prefix *this, const unsigned __int8 *a2, unsigned __int8 a3)
{
  v8 = 0;
  if (*(this + 16) == a3)
  {
    ot::Ip6::Prefix::GetBytes(this);
    v6 = v3;
    BytesSize = ot::Ip6::Prefix::GetBytesSize(this);
    return ot::Ip6::Prefix::MatchLength(v6, a2, BytesSize) >= *(this + 16);
  }

  return v8;
}

uint64_t ot::Ip6::Prefix::MatchLength(ot::Ip6::Prefix *this, const unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v6 = 0;
  if (a3 > 0x10u)
  {
    __assert_rtn("MatchLength", "ip6_address.cpp", 144, "aMaxSize <= Address::kSize");
  }

  for (i = 0; i < a3; ++i)
  {
    v4 = *(this + i) ^ a2[i];
    if (v4)
    {
      while ((v4 & 0x80) == 0)
      {
        ++v6;
        v4 *= 2;
      }

      return v6;
    }

    v6 += 8;
  }

  return v6;
}

uint64_t ot::Ip6::Prefix::GetBytesSize(ot::Ip6::Prefix *this)
{
  return ot::Ip6::Prefix::SizeForLength(*(this + 16));
}

{
  return ot::Ip6::Prefix::GetBytesSize(this);
}

BOOL ot::Ip6::Prefix::ContainsPrefix(ot::Ip6::Prefix *this, const ot::Ip6::Prefix *a2)
{
  v9 = 0;
  if (*(this + 16) >= *(a2 + 16))
  {
    ot::Ip6::Prefix::GetBytes(this);
    v7 = v2;
    ot::Ip6::Prefix::GetBytes(a2);
    v6 = v3;
    BytesSize = ot::Ip6::Prefix::GetBytesSize(a2);
    matched = ot::Ip6::Prefix::MatchLength(v7, v6, BytesSize);
    return matched >= ot::Ip6::Prefix::GetLength(a2);
  }

  return v9;
}

BOOL ot::Ip6::Prefix::ContainsPrefix(unsigned __int8 *a1, const unsigned __int8 *a2)
{
  v4 = 0;
  if (a1[16] >= 0x40u)
  {
    ot::Ip6::Prefix::GetBytes(a1);
    return ot::Ip6::Prefix::MatchLength(v2, a2, 8) >= 64;
  }

  return v4;
}

uint64_t ot::Ip6::Prefix::Tidy(ot::Ip6::Prefix *this)
{
  BytesSize = ot::Ip6::Prefix::GetBytesSize(this);
  if (BytesSize)
  {
    *(this + BytesSize - 1) &= ~((1 << (8 * BytesSize - *(this + 16))) - 1);
  }

  for (i = BytesSize; ; ++i)
  {
    result = ot::GetArrayLength<unsigned char,(unsigned short)16>();
    if (i >= result)
    {
      break;
    }

    *(this + i) = 0;
  }

  return result;
}

uint64_t ot::GetArrayLength<unsigned char,(unsigned short)16>()
{
  return 16;
}

{
  return ot::GetArrayLength<unsigned char,(unsigned short)16>();
}

BOOL ot::Ip6::Prefix::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v10 = 0;
  if (a1[16] == a2[16])
  {
    ot::Ip6::Prefix::GetBytes(a1);
    v7 = v2;
    ot::Ip6::Prefix::GetBytes(a2);
    v6 = v3;
    BytesSize = ot::Ip6::Prefix::GetBytesSize(a1);
    matched = ot::Ip6::Prefix::MatchLength(v7, v6, BytesSize);
    return matched >= ot::Ip6::Prefix::GetLength(a1);
  }

  return v10;
}

BOOL ot::Ip6::Prefix::operator<(ot::Ip6::Prefix *a1, ot::Ip6::Prefix *a2)
{
  Length = ot::Ip6::Prefix::GetLength(a1);
  v2 = ot::Ip6::Prefix::GetLength(a2);
  v16 = ot::Min<unsigned char>(Length, v2);
  ot::Ip6::Prefix::GetBytes(a1);
  v14 = v3;
  ot::Ip6::Prefix::GetBytes(a2);
  v13 = v4;
  v5 = ot::Ip6::Prefix::SizeForLength(v16);
  matched = ot::Ip6::Prefix::MatchLength(v14, v13, v5);
  if (matched < v16)
  {
    ot::Ip6::Prefix::GetBytes(a1);
    v9 = *(v6 + matched / 8);
    ot::Ip6::Prefix::GetBytes(a2);
    return v9 < *(v7 + matched / 8);
  }

  else
  {
    v10 = ot::Ip6::Prefix::GetLength(a1);
    return v10 < ot::Ip6::Prefix::GetLength(a2);
  }
}

BOOL ot::Ip6::Prefix::IsValidNat64PrefixLength(ot::Ip6::Prefix *this)
{
  v2 = 1;
  if (this != 32)
  {
    v2 = 1;
    if (this != 40)
    {
      v2 = 1;
      if (this != 48)
      {
        v2 = 1;
        if (this != 56)
        {
          v2 = 1;
          if (this != 64)
          {
            return this == 96;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t ot::Ip6::Prefix::FromString(const char **this, ot *a2)
{
  v10 = this;
  v9 = a2;
  v8 = 47;
  v7 = 0;
  v6 = 6;
  v5 = 0;
  if (a2)
  {
    v5 = ot::StringFind(v9, 0x2F);
    if (v5)
    {
      v2 = ot::AsCoreType<otIp6Address>(this);
      if (!ot::Ip6::Address::ParseFrom(v2, v9, 0x2F))
      {
        v5 = (v5 + 1);
        if (!ot::StringParseUint8(&v5, this + 2, 0x80) && !*v5)
        {
          return 0;
        }
      }
    }
  }

  return v6;
}

uint64_t ot::Ip6::Address::ParseFrom(ot::Ip6::Address *this, const char *a2, unsigned __int8 *a3)
{
  v24 = this;
  v23 = a2;
  v22 = a3;
  v21 = -1;
  v20 = 58;
  v19 = 46;
  v18 = 6;
  v17 = 0;
  v16 = 8;
  v15 = -1;
  v14 = 0;
  if (*a2 != 58)
  {
LABEL_4:
    while (*v23 != v22)
    {
      v13 = v23;
      v12 = 0;
      while (1)
      {
        v11 = 0;
        if (ot::ParseHexDigit(*v23, &v11, a3))
        {
          break;
        }

        ++v23;
        v12 = v11 + 16 * v12;
        if (v12 >= 0x10000)
        {
          return v18;
        }
      }

      if (v23 == v13)
      {
        return v18;
      }

      if (*v23 == 46)
      {
        v23 = v13;
        v14 = 1;
        v16 -= 2;
        if (v17 > v16)
        {
          return v18;
        }

        break;
      }

      if (*v23 != 58 && *v23 != v22 || v17 >= v16)
      {
        return v18;
      }

      v3 = ot::BigEndian::HostSwap16(v12);
      v4 = v17++;
      *(this + v4) = v3;
      if (*v23 == 58 && *++v23 == 58)
      {
        if (v15 != 255)
        {
          return v18;
        }

        v15 = v17;
        ++v23;
      }
    }

    if (v17 < v16)
    {
      v10 = 0;
      if (v15 == 255)
      {
        return v18;
      }

      v10 = v17 - v15;
      memmove(this + 2 * (v16 - (v17 - v15)), this + 2 * v15, 2 * (v17 - v15));
      bzero(this + 2 * v15, 2 * (v16 - v17));
    }

    if (v14)
    {
      v18 = ot::Ip4::Address::FromString(v9, v23, v22);
      if (v18)
      {
        return v18;
      }

      Array = ot::GetArrayEnd<unsigned char,(unsigned short)16>(this);
      ot::Ip4::Address::GetBytes(v9);
      *(Array - 4) = *v5;
    }

    return 0;
  }

  if (*++v23 == 58)
  {
    ++v23;
    v15 = v17;
    goto LABEL_4;
  }

  return v18;
}

ot::StringWriter *ot::Ip6::Prefix::ToString(ot::Ip6::Prefix *this, ot::StringWriter *a2)
{
  v9 = this;
  v8 = a2;
  v7 = (ot::Ip6::Prefix::GetBytesSize(this) + 1) / 2;
  v5 = *this;
  v6 = *(this + 16);
  ot::Ip6::Prefix::Tidy(&v5);
  v2 = ot::AsCoreType<otIp6Address>(&v5);
  ot::Ip6::Address::AppendHexWords(v2, v8, v7);
  if (ot::Ip6::Prefix::GetBytesSize(this) < 15)
  {
    ot::StringWriter::Append(v8, "::");
  }

  return ot::StringWriter::Append(v8, "/%d", *(this + 16));
}

ot::StringWriter *ot::Ip6::Prefix::ToString(ot::Ip6::Prefix *this, char *a2, __int16 a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  ot::StringWriter::StringWriter(v5, a2, a3);
  return ot::Ip6::Prefix::ToString(this, v5);
}

ot::StringWriter *ot::Ip6::Address::AppendHexWords(ot::StringWriter *this, ot::StringWriter *a2, unsigned __int8 a3)
{
  v4 = this;
  for (i = 0; i < a3; ++i)
  {
    if (i)
    {
      ot::StringWriter::Append(a2, ":");
    }

    v3 = ot::BigEndian::HostSwap16(*(v4 + i));
    this = ot::StringWriter::Append(a2, "%x", v3);
  }

  return this;
}

BOOL ot::Ip6::InterfaceIdentifier::IsUnspecified(ot::Ip6::InterfaceIdentifier *this)
{
  v2 = 0;
  if (!*this)
  {
    return *(this + 1) == 0;
  }

  return v2;
}

BOOL ot::Ip6::InterfaceIdentifier::IsReserved(ot::Ip6::InterfaceIdentifier *this)
{
  v3 = 1;
  if (!ot::Ip6::InterfaceIdentifier::IsSubnetRouterAnycast(this))
  {
    v3 = 1;
    if (!ot::Ip6::InterfaceIdentifier::IsReservedSubnetAnycast(this))
    {
      return ot::Ip6::InterfaceIdentifier::IsAnycastLocator(this);
    }
  }

  return v3;
}

BOOL ot::Ip6::InterfaceIdentifier::IsSubnetRouterAnycast(ot::Ip6::InterfaceIdentifier *this)
{
  v2 = 0;
  if (!*this)
  {
    return *(this + 1) == 0;
  }

  return v2;
}

BOOL ot::Ip6::InterfaceIdentifier::IsReservedSubnetAnycast(ot::Ip6::InterfaceIdentifier *this)
{
  v4 = *this;
  v5 = 0;
  if (v4 == ot::BigEndian::HostSwap32(0xFDFFFFFFLL))
  {
    v2 = *(this + 2);
    v5 = 0;
    if (v2 == ot::BigEndian::HostSwap16(0xFFFF))
    {
      v5 = 0;
      if (*(this + 6) == 255)
      {
        return *(this + 7) >= 0x80u;
      }
    }
  }

  return v5;
}

BOOL ot::Ip6::InterfaceIdentifier::IsAnycastLocator(ot::Ip6::InterfaceIdentifier *this)
{
  v3 = 0;
  if (ot::Ip6::InterfaceIdentifier::IsLocator(this))
  {
    return *(this + 6) == 252;
  }

  return v3;
}

uint64_t ot::Ip6::InterfaceIdentifier::GenerateRandom(ot::Ip6::InterfaceIdentifier *this)
{
  result = ot::Random::Crypto::Fill<ot::Ip6::InterfaceIdentifier>(this);
  if (result)
  {
    __assert_rtn("GenerateRandom", "ip6_address.cpp", 257, "false");
  }

  return result;
}

uint64_t ot::Random::Crypto::Fill<ot::Ip6::InterfaceIdentifier>(ot::Random::Crypto *a1)
{
  return ot::Random::Crypto::FillBuffer(a1, 8);
}

{
  return ot::Random::Crypto::Fill<ot::Ip6::InterfaceIdentifier>(a1);
}

char *ot::Ip6::InterfaceIdentifier::SetFromExtAddress(ot::Ip6::InterfaceIdentifier *this, const ot::Mac::ExtAddress *a2)
{
  v4 = *a2;
  ot::Mac::ExtAddress::ToggleLocal(&v4);
  return ot::Mac::ExtAddress::CopyTo(&v4, this, 0);
}

_BYTE *ot::Mac::ExtAddress::ToggleLocal(_BYTE *this)
{
  *this ^= 2u;
  return this;
}

{
  return ot::Mac::ExtAddress::ToggleLocal(this);
}

_BYTE *ot::Ip6::InterfaceIdentifier::ConvertToMacAddress(ot::Ip6::InterfaceIdentifier *this, ot::Mac::Address *a2)
{
  ot::Mac::Address::SetExtended(a2, this, 0);
  ot::Mac::Address::GetExtended(a2);
  return ot::Mac::ExtAddress::ToggleLocal(v2);
}

uint64_t ot::Ip6::InterfaceIdentifier::SetToLocator(ot::Ip6::InterfaceIdentifier *this, unsigned __int16 a2)
{
  *this = ot::BigEndian::HostSwap32(0xFF);
  *(this + 2) = ot::BigEndian::HostSwap16(0xFE00);
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 3) = result;
  return result;
}

BOOL ot::Ip6::InterfaceIdentifier::IsLocator(ot::Ip6::InterfaceIdentifier *this)
{
  v4 = *this;
  v5 = 0;
  if (v4 == ot::BigEndian::HostSwap32(0xFF))
  {
    v2 = *(this + 2);
    return v2 == ot::BigEndian::HostSwap16(0xFE00);
  }

  return v5;
}

BOOL ot::Ip6::InterfaceIdentifier::IsRoutingLocator(ot::Ip6::InterfaceIdentifier *this)
{
  v3 = 0;
  if (ot::Ip6::InterfaceIdentifier::IsLocator(this))
  {
    v3 = 0;
    if (*(this + 6) < 0xFCu)
    {
      return (*(this + 6) & 2) == 0;
    }
  }

  return v3;
}

BOOL ot::Ip6::InterfaceIdentifier::IsAnycastServiceLocator(ot::Ip6::InterfaceIdentifier *this)
{
  Locator = ot::Ip6::InterfaceIdentifier::GetLocator(this);
  v3 = 0;
  if (ot::Ip6::InterfaceIdentifier::IsLocator(this))
  {
    v3 = 0;
    if (Locator >= 0xFC10u)
    {
      return Locator <= 0xFC2Fu;
    }
  }

  return v3;
}

void *ot::Ip6::InterfaceIdentifier::ApplyPrefix(ot::Ip6::InterfaceIdentifier *this, const ot::Ip6::Prefix *a2)
{
  result = ot::Ip6::Prefix::GetLength(a2);
  if (result > 64)
  {
    ot::Ip6::Prefix::GetBytes(a2);
    v5 = (v3 + 8);
    Length = ot::Ip6::Prefix::GetLength(a2);
    return ot::Ip6::Address::CopyBits(this, v5, (Length - 64));
  }

  return result;
}

void *ot::Ip6::Address::CopyBits(ot::Ip6::Address *this, unsigned __int8 *a2, const unsigned __int8 *a3)
{
  __n = a3 / 8;
  v5 = a3 % 8;
  result = memcpy(this, a2, __n);
  if (v5)
  {
    v4 = (128 >> (v5 - 1)) - 1;
    *(this + __n) &= v4;
    *(this + __n) |= a2[__n] & ~v4;
  }

  return result;
}

BOOL ot::Ip6::Address::IsUnspecified(ot::Ip6::Address *this)
{
  v2 = 0;
  if (!*this)
  {
    v2 = 0;
    if (!*(this + 1))
    {
      v2 = 0;
      if (!*(this + 2))
      {
        return *(this + 3) == 0;
      }
    }
  }

  return v2;
}

BOOL ot::Ip6::Address::IsLoopback(ot::Ip6::Address *this)
{
  v3 = 0;
  if (!*this)
  {
    v3 = 0;
    if (!*(this + 1))
    {
      v3 = 0;
      if (!*(this + 2))
      {
        v2 = *(this + 3);
        return v2 == ot::BigEndian::HostSwap32(1);
      }
    }
  }

  return v3;
}

BOOL ot::Ip6::Address::IsLinkLocalUnicast(ot::Ip6::Address *this)
{
  v2 = *this;
  v3 = v2 & ot::BigEndian::HostSwap16(0xFFC0);
  return v3 == ot::BigEndian::HostSwap16(0xFE80);
}

char *ot::Ip6::Address::SetToLinkLocalAddress(ot::Ip6::Address *this, const ot::Mac::ExtAddress *a2)
{
  *this = ot::BigEndian::HostSwap32(0xFE800000);
  Iid = ot::Ip6::Address::GetIid(this);
  return ot::Ip6::InterfaceIdentifier::SetFromExtAddress(Iid, a2);
}

BOOL ot::Ip6::Address::IsLinkLocalMulticast(ot::Ip6::Address *this)
{
  v3 = 0;
  if (ot::Ip6::Address::IsMulticast(this))
  {
    return ot::Ip6::Address::GetScope(this) == 2;
  }

  return v3;
}

uint64_t ot::Ip6::Address::GetScope(ot::Ip6::Address *this)
{
  if (ot::Ip6::Address::IsMulticast(this))
  {
    return *(this + 1) & 0xF;
  }

  else if (ot::Ip6::Address::IsLinkLocalUnicast(this))
  {
    return 2;
  }

  else if (ot::Ip6::Address::IsLoopback(this))
  {
    return 0;
  }

  else
  {
    return 14;
  }
}

BOOL ot::Ip6::Address::IsLinkLocalUnicastOrMulticast(ot::Ip6::Address *this)
{
  v3 = 1;
  if (!ot::Ip6::Address::IsLinkLocalUnicast(this))
  {
    return ot::Ip6::Address::IsLinkLocalMulticast(this);
  }

  return v3;
}

__n128 ot::Ip6::Address::SetToLinkLocalAllNodesMulticast(ot::Ip6::Address *this)
{
  LinkLocalAllNodesMulticast = ot::Ip6::Address::GetLinkLocalAllNodesMulticast(this);
  result = *LinkLocalAllNodesMulticast;
  *this = *LinkLocalAllNodesMulticast;
  return result;
}

__n128 ot::Ip6::Address::SetToLinkLocalAllRoutersMulticast(ot::Ip6::Address *this)
{
  LinkLocalAllRoutersMulticast = ot::Ip6::Address::GetLinkLocalAllRoutersMulticast(this);
  result = *LinkLocalAllRoutersMulticast;
  *this = *LinkLocalAllRoutersMulticast;
  return result;
}

BOOL ot::Ip6::Address::IsRealmLocalMulticast(ot::Ip6::Address *this)
{
  v3 = 0;
  if (ot::Ip6::Address::IsMulticast(this))
  {
    return ot::Ip6::Address::GetScope(this) == 3;
  }

  return v3;
}

BOOL ot::Ip6::Address::IsMulticastLargerThanRealmLocal(ot::Ip6::Address *this)
{
  v3 = 0;
  if (ot::Ip6::Address::IsMulticast(this))
  {
    return ot::Ip6::Address::GetScope(this) > 3;
  }

  return v3;
}

__n128 ot::Ip6::Address::SetToRealmLocalAllNodesMulticast(ot::Ip6::Address *this)
{
  RealmLocalAllNodesMulticast = ot::Ip6::Address::GetRealmLocalAllNodesMulticast(this);
  result = *RealmLocalAllNodesMulticast;
  *this = *RealmLocalAllNodesMulticast;
  return result;
}

__n128 ot::Ip6::Address::SetToRealmLocalAllRoutersMulticast(ot::Ip6::Address *this)
{
  RealmLocalAllRoutersMulticast = ot::Ip6::Address::GetRealmLocalAllRoutersMulticast(this);
  result = *RealmLocalAllRoutersMulticast;
  *this = *RealmLocalAllRoutersMulticast;
  return result;
}

__n128 ot::Ip6::Address::SetToRealmLocalAllMplForwarders(ot::Ip6::Address *this)
{
  RealmLocalAllMplForwarders = ot::Ip6::Address::GetRealmLocalAllMplForwarders(this);
  result = *RealmLocalAllMplForwarders;
  *this = *RealmLocalAllMplForwarders;
  return result;
}

BOOL ot::Ip6::Address::IsIp4Mapped(ot::Ip6::Address *this)
{
  v3 = 0;
  if (!*this)
  {
    v3 = 0;
    if (!*(this + 1))
    {
      v2 = *(this + 2);
      return v2 == ot::BigEndian::HostSwap32(0xFFFF);
    }
  }

  return v3;
}

void ot::Ip6::Address::SetToIp4Mapped(ot::Ip6::Address *this, const ot::Ip4::Address *a2)
{
  ot::Clearable<ot::Ip6::Address>::Clear(this);
  *(this + 5) = -1;
  ot::Ip4::Address::GetBytes(a2);
  *(this + 3) = *v2;
}

BOOL ot::Ip6::Address::MatchesPrefix(ot::Ip6::Address *this, const ot::Ip6::Prefix *a2)
{
  ot::Ip6::Prefix::GetBytes(a2);
  v5 = v2;
  BytesSize = ot::Ip6::Prefix::GetBytesSize(a2);
  matched = ot::Ip6::Prefix::MatchLength(this, v5, BytesSize);
  return matched >= ot::Ip6::Prefix::GetLength(a2);
}

void *ot::Ip6::Address::SetPrefix(ot::Ip6::Address *this, const ot::Ip6::Prefix *a2)
{
  ot::Ip6::Prefix::GetBytes(a2);
  v5 = v2;
  Length = ot::Ip6::Prefix::GetLength(a2);
  return ot::Ip6::Address::CopyBits(this, v5, Length);
}

void *ot::Ip6::Address::SetMulticastNetworkPrefix(ot::Ip6::Address *this, unsigned __int8 *a2, unsigned __int8 a3)
{
  result = ot::Ip6::Address::CopyBits((this + 4), a2, a3);
  *(this + 3) = a3;
  return result;
}

uint64_t ot::Ip6::Address::SetToLocator(ot::Ip6::Address *a1, void *a2, unsigned __int16 a3)
{
  ot::Ip6::Address::SetPrefix(a1, a2);
  Iid = ot::Ip6::Address::GetIid(a1);
  return ot::Ip6::InterfaceIdentifier::SetToLocator(Iid, a3);
}

uint64_t ot::Ip6::Address::MatchesFilter(ot::Ip6::Address *a1, char a2)
{
  IsMulticast = 1;
  if (a2)
  {
    switch(a2)
    {
      case 1:
        LOBYTE(v3) = 0;
        if (!ot::Ip6::Address::IsUnspecified(a1))
        {
          v3 = !ot::Ip6::Address::IsMulticast(a1);
        }

        IsMulticast = v3;
        break;
      case 2:
        IsMulticast = ot::Ip6::Address::IsMulticast(a1);
        break;
      case 3:
        IsMulticast = ot::Ip6::Address::IsMulticastLargerThanRealmLocal(a1);
        break;
    }
  }

  return IsMulticast & 1;
}

void ot::Ip6::Address::SynthesizeFromIp4Address(ot::Ip6::Address *this, const ot::Ip6::Prefix *a2, const ot::Ip4::Address *a3)
{
  if (!ot::Ip6::Prefix::IsValidNat64(a2))
  {
    __assert_rtn("SynthesizeFromIp4Address", "ip6_address.cpp", 535, "aPrefix.IsValidNat64()");
  }

  ot::Clearable<ot::Ip6::Address>::Clear(this);
  ot::Ip6::Address::SetPrefix(this, a2);
  v7 = ot::Ip6::Prefix::GetLength(a2) / 8;
  for (i = 0; i < 4u; ++i)
  {
    if (v7 == 8)
    {
      ++v7;
    }

    ot::Ip4::Address::GetBytes(a3);
    v4 = v7++;
    *(this + v4) = *(v3 + i);
  }
}

BOOL ot::Ip6::Prefix::IsValidNat64(ot::Ip6::Prefix *this)
{
  return ot::Ip6::Prefix::IsValidNat64PrefixLength(*(this + 16));
}

{
  return ot::Ip6::Prefix::IsValidNat64(this);
}

uint64_t ot::GetArrayEnd<unsigned char,(unsigned short)16>(uint64_t a1)
{
  return a1 + 16;
}

{
  return ot::GetArrayEnd<unsigned char,(unsigned short)16>(a1);
}

uint64_t ot::String<(unsigned short)40>::String(uint64_t a1)
{
  ot::String<(unsigned short)40>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 40);
  return a1;
}

ot::StringWriter *ot::Ip6::Address::ToString(ot::Ip6::Address *this, char *a2, __int16 a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  ot::StringWriter::StringWriter(v5, a2, a3);
  return ot::Ip6::Address::ToString(this, v5);
}

uint64_t ot::GetArrayLength<unsigned short,(unsigned short)8>()
{
  return 8;
}

{
  return ot::GetArrayLength<unsigned short,(unsigned short)8>();
}

ot::Random::Manager *ot::Random::Manager::Manager(ot::Random::Manager *this)
{
  v3 = this;
  v4 = this;
  v2 = 0;
  if (ot::Random::Manager::sInitCount == 0xFFFF)
  {
    __assert_rtn("Manager", "random.cpp", 51, "sInitCount < 0xffff");
  }

  if (!ot::Random::Manager::sInitCount)
  {
    j__otPlatCryptoRandomInit();
    if (ot::Random::Crypto::Fill<unsigned int>(&v2))
    {
      __assert_rtn("Manager", "random.cpp", 57, "false");
    }

    ot::Random::Manager::NonCryptoPrng::Init(&ot::Random::Manager::sPrng, v2);
  }

  ++ot::Random::Manager::sInitCount;
  return v4;
}

{
  ot::Random::Manager::Manager(this);
  return this;
}

uint64_t ot::Random::Crypto::Fill<unsigned int>(ot::Random::Crypto *a1)
{
  return ot::Random::Crypto::FillBuffer(a1, 4);
}

{
  return ot::Random::Crypto::Fill<unsigned int>(a1);
}

int *ot::Random::Manager::NonCryptoPrng::Init(int *this, int a2)
{
  v2 = a2;
  if (!a2 || a2 == 0x7FFFFFFF)
  {
    v2 = 1;
  }

  *this = v2;
  return this;
}

void ot::Random::Manager::~Manager(ot::Random::Manager *this)
{
  if (!ot::Random::Manager::sInitCount)
  {
    __assert_rtn("~Manager", "random.cpp", 70, "sInitCount > 0");
  }

  if (!--ot::Random::Manager::sInitCount)
  {
    j__otPlatCryptoRandomDeinit();
  }
}

{
  ot::Random::Manager::~Manager(this);
}

uint64_t ot::Random::Manager::NonCryptoGetUint32(ot::Random::Manager *this)
{
  if (!ot::Random::Manager::sInitCount)
  {
    __assert_rtn("NonCryptoGetUint32", "random.cpp", 85, "sInitCount > 0");
  }

  return ot::Random::Manager::NonCryptoPrng::GetNext(&ot::Random::Manager::sPrng);
}

uint64_t ot::Random::Manager::NonCryptoPrng::GetNext(ot::Random::Manager::NonCryptoPrng *this)
{
  v2 = ((33614 * *this) >> 32) + ((33614 * *this) >> 1);
  if ((v2 & 0x80000000) != 0)
  {
    v2 = (v2 & 0x7FFFFFFF) + 1;
  }

  *this = v2;
  return v2;
}

uint64_t ot::Random::NonCrypto::GetUint8InRange(ot::Random::NonCrypto *this, unsigned __int8 a2)
{
  if (a2 <= this)
  {
    __assert_rtn("GetUint8InRange", "random.cpp", 134, "aMax > aMin");
  }

  return (this + ot::Random::NonCrypto::GetUint8(this) % (a2 - this));
}

uint64_t ot::Random::NonCrypto::GetUint16InRange(ot::Random::NonCrypto *this, unsigned __int16 a2)
{
  if (a2 <= this)
  {
    __assert_rtn("GetUint16InRange", "random.cpp", 141, "aMax > aMin");
  }

  return (this + ot::Random::NonCrypto::GetUint16(this) % (a2 - this));
}

uint64_t ot::Random::NonCrypto::GetUint32InRange(ot::Random::NonCrypto *this, unsigned int a2)
{
  if (a2 <= this)
  {
    __assert_rtn("GetUint32InRange", "random.cpp", 147, "aMax > aMin");
  }

  return this + ot::Random::NonCrypto::GetUint32(this) % (a2 - this);
}

ot::Random::NonCrypto *ot::Random::NonCrypto::FillBuffer(ot::Random::NonCrypto *this, unsigned __int8 *a2)
{
  v5 = this;
  v4 = a2;
  while (v4--)
  {
    this = ot::Random::NonCrypto::GetUint8(this);
    v3 = v5;
    v5 = (v5 + 1);
    *v3 = this;
  }

  return this;
}

uint64_t ot::Random::NonCrypto::AddJitter(ot::Random::NonCrypto *this, unsigned __int16 a2)
{
  v4 = 0;
  if (this)
  {
    if (a2 > this)
    {
      v3 = this;
    }

    else
    {
      v3 = a2;
    }

    return this + ot::Random::NonCrypto::GetUint32InRange(0, 2 * v3 + 1) - v3;
  }

  return v4;
}

BOOL ot::Ip6::Filter::Accept(ot::Ip6::Filter *this, ot::Message *a2)
{
  v13 = this;
  v12 = a2;
  v11 = 0;
  DestinationPort = 0;
  if (ot::Message::IsLinkSecurityEnabled(a2))
  {
    return 1;
  }

  else if (!ot::Ip6::Headers::ParseFrom(v10, v12))
  {
    DestinationAddress = ot::Ip6::Headers::GetDestinationAddress(v10);
    if (ot::Ip6::Address::IsLinkLocalUnicastOrMulticast(DestinationAddress))
    {
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      if (ot::Mle::Mle::GetRole(v3))
      {
        DestinationPort = ot::Ip6::Headers::GetDestinationPort(v10);
        IpProto = ot::Ip6::Headers::GetIpProto(v10);
        if (IpProto != 6)
        {
          if (IpProto != 17)
          {
            return v11;
          }

          if (DestinationPort == 19788)
          {
            return 1;
          }

          v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
          if ((*(ot::KeyManager::GetSecurityPolicy(v4) + 2) & 2) != 0)
          {
            v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
            if (DestinationPort == ot::MeshCoP::BorderAgent::GetUdpPort(v5))
            {
              return 1;
            }
          }
        }

        return ot::Array<unsigned short,(unsigned short)2,unsigned char>::Contains(this, &DestinationPort);
      }

      return 1;
    }
  }

  return v11;
}

BOOL ot::Array<unsigned short,(unsigned short)2,unsigned char>::Contains(uint64_t a1, unsigned __int16 *a2)
{
  return ot::Array<unsigned short,(unsigned short)2,unsigned char>::Find(a1, a2) != 0;
}

{
  return ot::Array<unsigned short,(unsigned short)2,unsigned char>::Contains(a1, a2);
}

uint64_t ot::Ip6::Filter::UpdateUnsecurePorts(uint64_t a1, char a2, __int16 a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = 0;
  if (!a3)
  {
    return 7;
  }

  ot::Array<unsigned short,(unsigned short)2,unsigned char>::Find(a1, &v14);
  if (v15)
  {
    if (!v3)
    {
      return 23;
    }

    ot::Array<unsigned short,(unsigned short)2,unsigned char>::Remove(a1, v3);
  }

  else
  {
    if (v3)
    {
      return v13;
    }

    v13 = ot::Array<unsigned short,(unsigned short)2,unsigned char>::PushBack(a1, &v14);
    if (v13)
    {
      return v13;
    }
  }

  v10 = "Added";
  if (v15)
  {
    v10 = "Removed";
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Ip6Filter", "%s unsecure port %d", v4, v5, v6, v7, v8, v9, v10);
  return v13;
}

void ot::Array<unsigned short,(unsigned short)2,unsigned char>::Find(uint64_t a1, unsigned __int16 *a2)
{
  ot::AsConst<ot::Array<unsigned short,(unsigned short)2,unsigned char>>();
  ot::Array<unsigned short,(unsigned short)2,unsigned char>::Find(v2, a2);
  ot::AsNonConst<unsigned short>();
}

{
  ot::Array<unsigned short,(unsigned short)2,unsigned char>::Find(a1, a2);
}

uint64_t ot::Array<unsigned short,(unsigned short)2,unsigned char>::PushBack(uint64_t a1, __int16 *a2)
{
  if (ot::Array<unsigned short,(unsigned short)2,unsigned char>::IsFull(a1))
  {
    return 3;
  }

  else
  {
    v2 = *a2;
    v3 = (*(a1 + 4))++;
    *(a1 + 2 * v3) = v2;
    return 0;
  }
}

{
  return ot::Array<unsigned short,(unsigned short)2,unsigned char>::PushBack(a1, a2);
}

_WORD *ot::Array<unsigned short,(unsigned short)2,unsigned char>::Remove(uint64_t a1, _WORD *a2)
{
  result = ot::Array<unsigned short,(unsigned short)2,unsigned char>::PopBack(a1);
  if (result != a2)
  {
    *a2 = *result;
  }

  return result;
}

{
  return ot::Array<unsigned short,(unsigned short)2,unsigned char>::Remove(a1, a2);
}

unsigned __int16 *ot::Array<unsigned short,(unsigned short)2,unsigned char>::Find(uint64_t a1, unsigned __int16 *a2)
{
  v7 = 0;
  ot::Array<unsigned short,(unsigned short)2,unsigned char>::begin();
  v5 = v2;
  v4 = ot::Array<unsigned short,(unsigned short)2,unsigned char>::end(a1);
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
  return ot::Array<unsigned short,(unsigned short)2,unsigned char>::Find(a1, a2);
}

void ot::Array<unsigned short,(unsigned short)2,unsigned char>::begin()
{
  ;
}

{
  ot::Array<unsigned short,(unsigned short)2,unsigned char>::begin();
}

uint64_t ot::Array<unsigned short,(unsigned short)2,unsigned char>::end(uint64_t a1)
{
  return a1 + 2 * *(a1 + 4);
}

{
  return ot::Array<unsigned short,(unsigned short)2,unsigned char>::end(a1);
}

void ot::AsConst<ot::Array<unsigned short,(unsigned short)2,unsigned char>>()
{
  ;
}

{
  ot::AsConst<ot::Array<unsigned short,(unsigned short)2,unsigned char>>();
}

BOOL ot::Array<unsigned short,(unsigned short)2,unsigned char>::IsFull(uint64_t a1)
{
  v2 = *(a1 + 4);
  return v2 == ot::Array<unsigned short,(unsigned short)2,unsigned char>::GetMaxSize();
}

{
  return ot::Array<unsigned short,(unsigned short)2,unsigned char>::IsFull(a1);
}

uint64_t ot::Array<unsigned short,(unsigned short)2,unsigned char>::GetMaxSize()
{
  return 2;
}

{
  return ot::Array<unsigned short,(unsigned short)2,unsigned char>::GetMaxSize();
}

uint64_t ot::Array<unsigned short,(unsigned short)2,unsigned char>::PopBack(uint64_t a1)
{
  if (ot::Array<unsigned short,(unsigned short)2,unsigned char>::IsEmpty(a1))
  {
    return 0;
  }

  v1 = *(a1 + 4);
  *(a1 + 4) = v1 - 1;
  return a1 + 2 * (v1 - 1);
}

{
  return ot::Array<unsigned short,(unsigned short)2,unsigned char>::PopBack(a1);
}

BOOL ot::Array<unsigned short,(unsigned short)2,unsigned char>::IsEmpty(uint64_t a1)
{
  return *(a1 + 4) == 0;
}

{
  return ot::Array<unsigned short,(unsigned short)2,unsigned char>::IsEmpty(a1);
}

uint64_t ot::Ip6::Header::ParseFrom(ot::Ip6::Header *this, const ot::Message *a2)
{
  v5 = 6;
  if (!ot::Message::Read<ot::Ip6::Header>(a2, 0, this) && ot::Ip6::Header::IsValid(this))
  {
    v3 = ot::Ip6::Header::GetPayloadLength(this) + 40;
    if (v3 == ot::Message::GetLength(a2))
    {
      return 0;
    }
  }

  return v5;
}

uint64_t ot::Message::Read<ot::Ip6::Header>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x28u);
}

{
  return ot::Message::Read<ot::Ip6::Header>(a1, a2, a3);
}

BOOL ot::Ip6::Header::IsValid(ot::Ip6::Header *this)
{
  v3 = 0;
  if (ot::Ip6::Header::IsVersion6(this))
  {
    return ot::Ip6::Header::GetPayloadLength(this) + 40 <= 0x500;
  }

  return v3;
}

BOOL ot::Ip6::Header::IsVersion6(ot::Ip6::Header *this)
{
  return (*this & 0xF0) == 96;
}

{
  return ot::Ip6::Header::IsVersion6(this);
}

uint64_t ot::Ip6::Option::ParseFrom(ot::Ip6::Option *this, const ot::Message *a2, const ot::OffsetRange *a3)
{
  v6 = ot::Message::Read(a2, a3, this, 1u);
  if (!v6)
  {
    if (*this)
    {
      v6 = ot::Message::Read<ot::Ip6::Option>(a2, a3, this);
      if (!v6)
      {
        Size = ot::Ip6::Option::GetSize(this);
        if (!ot::OffsetRange::Contains(a3, Size))
        {
          return 6;
        }
      }
    }

    else
    {
      ot::Ip6::Option::SetLength(this, 0);
    }
  }

  return v6;
}

uint64_t ot::Ip6::Option::SetLength(uint64_t this, char a2)
{
  *(this + 1) = a2;
  return this;
}

{
  return ot::Ip6::Option::SetLength(this, a2);
}

uint64_t ot::Message::Read<ot::Ip6::Option>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 2u);
}

{
  return ot::Message::Read<ot::Ip6::Option>(a1, a2, a3);
}

uint64_t ot::Ip6::Option::GetSize(ot::Ip6::Option *this)
{
  if (*this)
  {
    return (*(this + 1) + 2);
  }

  else
  {
    return 1;
  }
}

_BYTE *ot::Ip6::PadOption::InitForPadSize(ot::Ip6::PadOption *this, char a2)
{
  ot::Clearable<ot::Ip6::PadOption>::Clear(this);
  if (a2 == 1)
  {
    return ot::Ip6::Option::SetType(this, 0);
  }

  ot::Ip6::Option::SetType(this, 1);
  return ot::Ip6::Option::SetLength(this, a2 - 2);
}

_DWORD *ot::Clearable<ot::Ip6::PadOption>::Clear(_DWORD *a1)
{
  return ot::ClearAllBytes<ot::Ip6::PadOption>(a1);
}

{
  return ot::Clearable<ot::Ip6::PadOption>::Clear(a1);
}

_BYTE *ot::Ip6::Option::SetType(_BYTE *this, char a2)
{
  *this = a2;
  return this;
}

{
  return ot::Ip6::Option::SetType(this, a2);
}

uint64_t ot::Ip6::PadOption::InitToPadHeaderWithSize(ot::Ip6::PadOption *this, unsigned __int16 a2)
{
  v3[4] = 0;
  *v3 = a2 % 8;
  if (v3[0])
  {
    ot::Ip6::PadOption::InitForPadSize(this, 8 - v3[0]);
  }

  else
  {
    *&v3[1] = 24;
  }

  return *&v3[1];
}

_DWORD *ot::ClearAllBytes<ot::Ip6::PadOption>(_DWORD *result)
{
  *result = 0;
  *(result + 3) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Ip6::PadOption>(result);
}

ot::Ip6::Mpl *ot::Ip6::Mpl::Mpl(ot::Ip6::Mpl *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *(this + 140) = 0;
  ot::Coap::MessageQueue::MessageQueue((this + 144));
  ot::TimerMilliIn<ot::Ip6::Mpl,&ot::Ip6::Mpl::HandleRetransmissionTimer>::TimerMilliIn((this + 152), a2);
  ot::ClearAllBytes<ot::Ip6::Mpl::SeedEntry [35]>(this);
  return this;
}

{
  ot::Ip6::Mpl::Mpl(this, a2);
  return this;
}

uint64_t ot::Ip6::Mpl::HandleRetransmissionTimer(ot::Ip6::Mpl *this)
{
  v26 = this;
  ot::NextFireTime::NextFireTime(&v25);
  v24[2] = this + 144;
  v24[0] = ot::MessageQueue::begin((this + 144));
  v24[1] = v1;
  v23[0] = ot::MessageQueue::end((this + 144));
  v23[1] = v2;
  while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v24, v23))
  {
    __src = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(v24);
    v19 = 0;
    v18 = 0;
    ot::Ip6::Mpl::Metadata::ReadFrom(&v20, __src);
    Now = ot::NextFireTime::GetNow(&v25);
    if (ot::Time::operator<(&Now, &v20))
    {
      ot::NextFireTime::UpdateIfEarlier(&v25, v20);
    }

    else
    {
      ++v21;
      v18 = ot::Ip6::Mpl::DetermineMaxRetransmissions(this);
      if (v21 <= v18)
      {
        if (v21 >= v18)
        {
          ot::MessageQueue::Dequeue((this + 144), __src);
          v19 = __src;
        }

        else
        {
          v16 = ot::NextFireTime::GetNow(&v25);
          ot::Ip6::Mpl::Metadata::GenerateNextTransmissionTime(&v20, v16, 0x40u);
          ot::Ip6::Mpl::Metadata::UpdateIn(&v20, __src);
          ot::NextFireTime::UpdateIfEarlier(&v25, v20);
          v19 = ot::Message::Clone(__src);
        }

        if (v19)
        {
          if (v21 > 1u)
          {
            memcpy(__dst, __src, sizeof(__dst));
            v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(this);
            ot::MessagePool::GetTotalBufferCount(v4);
            v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(this);
            ot::MessagePool::GetFreeBufferCount(v5);
            otLogInfoPlat("MPL message free buffer = %p, total buffers = %d, free buffers = %d, , mTransmissionCount = %d", v6, v7, v8, v9, v10, v11, v12, __dst);
            ot::Message::SetSubType(v19, 5);
          }

          ot::Ip6::Mpl::Metadata::RemoveFrom(&v20, v19);
          ot::Message::SetLoopbackToHostAllowed(v19, 1);
          ot::Message::SetOrigin(v19, 1);
          v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Ip6>(this);
          ot::Ip6::Ip6::EnqueueDatagram(v13, v19);
        }
      }

      else
      {
        ot::MessageQueue::DequeueAndFree((this + 144), __src);
      }
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v24, v3);
  }

  return ot::TimerMilli::FireAt((this + 152), &v25);
}

ot::TimerMilli *ot::TimerMilliIn<ot::Ip6::Mpl,&ot::Ip6::Mpl::HandleRetransmissionTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::Ip6::Mpl,&ot::Ip6::Mpl::HandleRetransmissionTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::Ip6::Mpl,&ot::Ip6::Mpl::HandleRetransmissionTimer>::HandleTimer);
  return a1;
}

void *ot::ClearAllBytes<ot::Ip6::Mpl::SeedEntry [35]>(void *a1)
{
  return memset(a1, 0, 0x8CuLL);
}

{
  return ot::ClearAllBytes<ot::Ip6::Mpl::SeedEntry [35]>(a1);
}

uint64_t ot::Ip6::MplOption::Init(_BYTE *a1, char a2)
{
  ot::Ip6::Option::SetType(a1, 109);
  if (a2)
  {
    if (a2 != 64)
    {
      __assert_rtn("Init", "ip6_mpl.cpp", 71, "false");
    }

    result = ot::Ip6::Option::SetLength(a1, 4);
  }

  else
  {
    result = ot::Ip6::Option::SetLength(a1, 2);
  }

  a1[2] = a2;
  return result;
}

uint64_t ot::Ip6::Mpl::InitOption(ot::Ip6::Mpl *this, ot::Ip6::MplOption *a2, const ot::Ip6::Address *a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  MeshLocalRloc = ot::Mle::Mle::GetMeshLocalRloc(v3);
  if (ot::Equatable<ot::Ip6::Address>::operator==(a3, MeshLocalRloc))
  {
    ot::Ip6::MplOption::Init(a2, 0);
  }

  else
  {
    ot::Ip6::MplOption::Init(a2, 64);
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    Rloc16 = ot::Mle::Mle::GetRloc16(v5);
    ot::Ip6::MplOption::SetSeedId(a2, Rloc16);
  }

  v7 = *(this + 140);
  *(this + 140) = v7 + 1;
  return ot::Ip6::MplOption::SetSequence(a2, v7);
}

uint64_t ot::Ip6::MplOption::SetSeedId(ot::Ip6::MplOption *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 2) = result;
  return result;
}

{
  return ot::Ip6::MplOption::SetSeedId(this, a2);
}

uint64_t ot::Ip6::MplOption::SetSequence(uint64_t this, char a2)
{
  *(this + 3) = a2;
  return this;
}

{
  return ot::Ip6::MplOption::SetSequence(this, a2);
}

uint64_t ot::Ip6::Mpl::ProcessOption(ot::Ip6::Mpl *this, ot::Message *a2, const ot::OffsetRange *a3, const ot::Ip6::Address *a4, BOOL *a5)
{
  v22 = this;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  updated = 0;
  updated = ot::Message::Read(a2, a3, v16, 4u);
  if (!updated)
  {
    SeedIdLength = ot::Ip6::MplOption::GetSeedIdLength(v16);
    if (SeedIdLength)
    {
      if (SeedIdLength == 64)
      {
        updated = ot::Message::Read<ot::Ip6::MplOption>(v21, v20, v16);
        if (updated)
        {
          return updated;
        }
      }

      else if (SeedIdLength == 128 || SeedIdLength == 192)
      {
        return 6;
      }
    }

    else
    {
      Iid = ot::Ip6::Address::GetIid(v19);
      if (!ot::Ip6::InterfaceIdentifier::IsLocator(Iid))
      {
        return 2;
      }

      v6 = ot::Ip6::Address::GetIid(v19);
      Locator = ot::Ip6::InterfaceIdentifier::GetLocator(v6);
      ot::Ip6::MplOption::SetSeedId(v16, Locator);
    }

    SeedId = ot::Ip6::MplOption::GetSeedId(v16);
    Sequence = ot::Ip6::MplOption::GetSequence(v16);
    updated = ot::Ip6::Mpl::UpdateSeedSet(this, SeedId, Sequence);
    if (updated)
    {
      if (!ot::Message::IsOriginThreadNetif (v21))
      {
        *v18 = 0;
        return 0;
      }
    }

    else
    {
      v11 = v21;
      v12 = ot::Ip6::MplOption::GetSeedId(v16);
      v9 = ot::Ip6::MplOption::GetSequence(v16);
      ot::Ip6::Mpl::AddBufferedMessage(this, v11, v12, v9);
    }
  }

  return updated;
}

uint64_t ot::Ip6::MplOption::GetSeedIdLength(ot::Ip6::MplOption *this)
{
  return *(this + 2) & 0xC0;
}

{
  return ot::Ip6::MplOption::GetSeedIdLength(this);
}

uint64_t ot::Message::Read<ot::Ip6::MplOption>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 6u);
}

{
  return ot::Message::Read<ot::Ip6::MplOption>(a1, a2, a3);
}

uint64_t ot::Ip6::Mpl::UpdateSeedSet(ot::Ip6::Mpl *this, __int16 a2, char a3)
{
  v12 = 0;
  v11 = 0;
  v10 = this;
  __dst = this;
  v8 = 0;
  v7 = 0;
  for (i = 0; i < 0x23; ++i)
  {
    if (!*(this + 4 * i + 3))
    {
      if (!v11)
      {
        v11 = (this + 4 * i);
      }

      __dst = (this + 4 * i);
      break;
    }

    if (*(this + 2 * i) != *v10)
    {
      if (a2 == *v10 && !v11)
      {
        v11 = (this + 4 * i);
        ++v8;
      }

      if (v7 < v8)
      {
        __dst = v10;
        v7 = v8;
      }

      v10 = (this + 4 * i);
      v8 = 0;
    }

    if (a2 == *(this + 2 * i))
    {
      if (a3 == *(this + 4 * i + 2))
      {
        *(this + 4 * i + 3) = 5;
        return 2;
      }

      if (!v11 && ot::SerialNumber::IsLess<unsigned char>(a3, *(this + 4 * i + 2)))
      {
        v11 = (this + 4 * i);
        ++v8;
      }
    }

    ++v8;
  }

  if (*(__dst + 3))
  {
    if (!v8)
    {
      __assert_rtn("UpdateSeedSet", "ip6_mpl.cpp", 232, "curCount != 0");
    }

    if (a2 == *v10 && !v11)
    {
      v11 = (this + 140);
      ++v8;
    }

    if (v7 < v8)
    {
      __dst = v10;
      v7 = v8;
    }

    if (v7 <= 1u)
    {
      return 2;
    }

    if (v11)
    {
      if (v11 <= this || a2 != *(v11 - 2))
      {
        return 2;
      }
    }

    else
    {
      v11 = __dst;
    }
  }

  if (__dst <= v11)
  {
    if (__dst < v11)
    {
      if (__dst < this)
      {
        __assert_rtn("UpdateSeedSet", "ip6_mpl.cpp", 270, "evict >= mSeedSet");
      }

      memmove(__dst, __dst + 4, 4 * (((v11 - 4) - __dst) / 4));
      v11 = (v11 - 4);
    }
  }

  else
  {
    if (v11 < this)
    {
      __assert_rtn("UpdateSeedSet", "ip6_mpl.cpp", 265, "insert >= mSeedSet");
    }

    memmove(v11 + 4, v11, 4 * ((__dst - v11) / 4));
  }

  *v11 = a2;
  *(v11 + 2) = a3;
  *(v11 + 3) = 5;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
  ot::TimeTicker::RegisterReceiver(v3, 7);
  return v12;
}

uint64_t ot::Ip6::MplOption::GetSeedId(ot::Ip6::MplOption *this)
{
  return ot::BigEndian::HostSwap16(*(this + 2));
}

{
  return ot::Ip6::MplOption::GetSeedId(this);
}

uint64_t ot::Ip6::MplOption::GetSequence(ot::Ip6::MplOption *this)
{
  return *(this + 3);
}

{
  return ot::Ip6::MplOption::GetSequence(this);
}

void ot::Ip6::Mpl::AddBufferedMessage(ot::Ip6::Mpl *this, ot::Message *a2, __int16 a3, char a4)
{
  v27 = this;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = 0;
  v22 = 0;
  v17 = 0;
  if (ot::Ip6::Mpl::DetermineMaxRetransmissions(this) > 0)
  {
    v22 = ot::Message::Clone(v26);
    if (!v22)
    {
      v23 = 3;
      goto LABEL_10;
    }

    ot::Message::IsOriginThreadNetif (v26);
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(this);
    ot::MessagePool::GetTotalBufferCount(v4);
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(this);
    ot::MessagePool::GetFreeBufferCount(v5);
    otLogInfoPlat("MPL AddBufferedMessage: Sequence=%d, SeedID=0x%x, IsOriginThreadNetif=%s, buffer = %p, total buffers = %d, free buffers = %d", v6, v7, v8, v9, v10, v11, v12, v24);
    if (ot::Message::IsOriginThreadNetif (v26))
    {
      ot::Message::Read<unsigned char>(v26, 7u, &v17);
      IgnoreError();
      v13 = v17--;
      if (v13 <= 1)
      {
        v23 = 2;
        goto LABEL_10;
      }

      ot::Message::Write<unsigned char>(v22, 7u, &v17);
    }

    v19 = v25;
    v20 = v24;
    IsOriginThreadNetif = ot::Message::IsOriginThreadNetif (v26);
    v21 = !IsOriginThreadNetif;
    Now = ot::TimerMilli::GetNow(IsOriginThreadNetif);
    ot::Ip6::Mpl::Metadata::GenerateNextTransmissionTime(&v18, Now, 0x40u);
    v23 = ot::Ip6::Mpl::Metadata::AppendTo(&v18, v22);
    if (!v23)
    {
      ot::MessageQueue::Enqueue((this + 144), v22);
      ot::TimerMilli::FireAtIfEarlier(this + 38, v18);
    }
  }

LABEL_10:
  if (v23)
  {
    if (v22)
    {
      ot::Message::Free(v22);
    }
  }
}

BOOL ot::SerialNumber::IsLess<unsigned char>(char a1, char a2)
{
  return (a1 - a2) < 0;
}

{
  return ot::SerialNumber::IsLess<unsigned char>(a1, a2);
}

uint64_t ot::Ip6::Mpl::RemoveMatchedMessage(ot::Ip6::Mpl *this, ot::Message *a2)
{
  v16 = this;
  v15 = a2;
  v14 = 0;
  Length = ot::Message::GetLength(a2);
  if (Length)
  {
    v12[2] = this + 144;
    v12[0] = ot::MessageQueue::begin((this + 144));
    v12[1] = v2;
    v11[0] = ot::MessageQueue::end((this + 144));
    v11[1] = v3;
    while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v12, v11))
    {
      v10 = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(v12);
      v4 = ot::Message::GetLength(v10);
      if (v4 - 12 >= Length)
      {
        v8 = v15;
        v6 = ot::Message::GetLength(v10);
        if (ot::Message::CompareBytes(v8, 0, v10, v6 - 12 - Length, Length, 0))
        {
          ot::MessageQueue::DequeueAndFree((this + 144), v10);
          v14 = 1;
          return v14 & 1;
        }
      }

      ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v12, v5);
    }
  }

  return v14 & 1;
}

ot::InstanceLocator *ot::Ip6::Mpl::HandleTimeTick(ot::InstanceLocator *this)
{
  v7 = 0;
  v6 = 0;
  for (i = 0; ; ++i)
  {
    v4 = 0;
    if (i < 35)
    {
      v4 = *(this + 4 * i + 3) != 0;
    }

    if (!v4)
    {
      break;
    }

    if (--*(this + 4 * i + 3))
    {
      v1 = v6++;
      *(this + v1) = *(this + i);
      v7 = 1;
    }
  }

  while (1)
  {
    v3 = 0;
    if (v6 < 35)
    {
      v3 = *(this + 4 * v6 + 3) != 0;
    }

    if (!v3)
    {
      break;
    }

    *(this + 4 * v6++ + 3) = 0;
  }

  if ((v7 & 1) == 0)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
    return ot::TimeTicker::UnregisterReceiver(v2, 7);
  }

  return this;
}

uint64_t ot::Ip6::Mpl::DetermineMaxRetransmissions(ot::Ip6::Mpl *this)
{
  v4 = 0;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  Role = ot::Mle::Mle::GetRole(v1);
  if (Role > 1)
  {
    if (Role == 2)
    {
      return 0;
    }

    else if (Role == 4 || Role == 3)
    {
      return 2;
    }
  }

  return v4;
}

uint64_t ot::Ip6::Mpl::Metadata::GenerateNextTransmissionTime(uint64_t a1, int a2, unsigned __int8 a3)
{
  v7 = a2;
  if (a3)
  {
    Uint8InRange = ot::Random::NonCrypto::GetUint8InRange(0, a3);
  }

  else
  {
    Uint8InRange = 0;
  }

  result = ot::Time::operator+(&v7, *(a1 + 8) + Uint8InRange);
  *a1 = result;
  *(a1 + 8) = a3 - Uint8InRange;
  return result;
}

uint64_t ot::Ip6::Mpl::Metadata::AppendTo(ot::Ip6::Mpl::Metadata *this, ot::Message *a2)
{
  return ot::Message::Append<ot::Ip6::Mpl::Metadata>(a2, this);
}

{
  return ot::Ip6::Mpl::Metadata::AppendTo(this, a2);
}

void ot::Ip6::Mpl::Metadata::ReadFrom(ot::Ip6::Mpl::Metadata *this, const ot::Message *a2)
{
  Length = ot::Message::GetLength(a2);
  if (Length < 0xCuLL)
  {
    __assert_rtn("ReadFrom", "ip6_mpl.cpp", 491, "length >= sizeof(*this)");
  }

  ot::Message::Read<ot::Ip6::Mpl::Metadata>(a2, Length - 12, this);
  IgnoreError();
}

uint64_t ot::Message::Read<ot::Ip6::Mpl::Metadata>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0xCu);
}

{
  return ot::Message::Read<ot::Ip6::Mpl::Metadata>(a1, a2, a3);
}

uint64_t ot::Message::Write<ot::Ip6::Mpl::Metadata>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::WriteBytes(a1, a2, a3, 0xCu);
}

{
  return ot::Message::Write<ot::Ip6::Mpl::Metadata>(a1, a2, a3);
}

uint64_t ot::Message::Append<ot::Ip6::Mpl::Metadata>(ot::Message *a1, const void *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0xCu);
}

{
  return ot::Message::Append<ot::Ip6::Mpl::Metadata>(a1, a2);
}

ot::Uptime *ot::Uptime::Uptime(ot::Uptime *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = ot::TimerMilli::GetNow(v2);
  *(this + 1) = 0;
  ot::TimerMilliIn<ot::Uptime,&ot::Uptime::HandleTimer>::TimerMilliIn((this + 8), a2);
  v5 = ot::Time::operator+(this, 0x40000000);
  ot::TimerMilli::FireAt((this + 8), v5);
  return this;
}

{
  ot::Uptime::Uptime(this, a2);
  return this;
}

uint64_t ot::Uptime::HandleTimer(ot::Uptime *this)
{
  v6 = this;
  FireTime = ot::Timer::GetFireTime((this + 8));
  if (ot::Time::operator==(&FireTime, this))
  {
    ++*(this + 1);
  }

  v3 = ot::Timer::GetFireTime((this + 8));
  v4 = ot::Time::operator+(&v3, 0x40000000);
  return ot::TimerMilli::FireAt((this + 8), v4);
}

ot::TimerMilli *ot::TimerMilliIn<ot::Uptime,&ot::Uptime::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::Uptime,&ot::Uptime::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::Uptime,&ot::Uptime::HandleTimer>::HandleTimer);
  return a1;
}

unint64_t ot::Uptime::GetUptime(ot::Uptime *this)
{
  v8 = this;
  Now = ot::TimerMilli::GetNow(this);
  v6 = *(this + 1);
  FireTime = ot::Timer::GetFireTime((this + 8));
  v4 = 0;
  if (ot::Time::operator==(&FireTime, this))
  {
    v4 = ot::Time::operator>=(&Now, this);
  }

  if (v4)
  {
    ++v6;
  }

  v2 = v6 << 32;
  return v2 + ot::Time::operator-(&Now, this);
}

ot::StringWriter *ot::Uptime::GetUptime(ot::Uptime *this, char *a2, __int16 a3)
{
  v9 = this;
  v8 = a2;
  v7 = a3;
  ot::StringWriter::StringWriter(v6, a2, a3);
  Uptime = ot::Uptime::GetUptime(this);
  return ot::Uptime::UptimeToString(Uptime, v6, 1);
}

ot::StringWriter *ot::Uptime::UptimeToString(unint64_t this, ot::StringWriter *a2, ot::StringWriter *a3)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = this / 0x5265C00;
  v7 = 0;
  if (this / 0x5265C00)
  {
    ot::StringWriter::Append(v10, "%lud.", v8);
    v11 -= 86400000 * v8;
  }

  v7 = v11;
  Remainder = ot::DivideAndGetRemainder(&v7, 0x36EE80);
  v5 = ot::DivideAndGetRemainder(&v7, 0xEA60);
  v4 = ot::DivideAndGetRemainder(&v7, 0x3E8);
  result = ot::StringWriter::Append(v10, "%02u:%02u:%02u", Remainder, v5, v4);
  if (v9)
  {
    return ot::StringWriter::Append(v10, ".%03u", v7);
  }

  return result;
}

uint64_t ot::DivideAndGetRemainder(ot *this, unsigned int *a2)
{
  v3 = *this / a2;
  *this %= a2;
  return v3;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Uptime>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Uptime>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Uptime>(a1);
}

ot::Spinel::SpinelInterface *std::map<unsigned long long,ot::appPacketInfo>::map[abi:dn200100](ot::Spinel::SpinelInterface *a1)
{
  std::map<unsigned long long,ot::appPacketInfo>::map[abi:dn200100](a1);
  return a1;
}

{
  v4 = a1;
  boost::optional_ns::in_place_init_t::in_place_init_t(&v3);
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__tree(a1);
  return a1;
}

ot::Spinel::SpinelInterface *std::map<unsigned long long,ot::appPacketInfo>::~map[abi:dn200100](ot::Spinel::SpinelInterface *a1)
{
  std::map<unsigned long long,ot::appPacketInfo>::~map[abi:dn200100](a1);
  return a1;
}

{
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::~__tree(a1);
  return a1;
}

ot::Spinel::SpinelInterface *std::queue<unsigned long long>::queue[abi:dn200100](ot::Spinel::SpinelInterface *a1)
{
  std::queue<unsigned long long>::queue[abi:dn200100](a1);
  return a1;
}

{
  std::deque<unsigned long long>::deque[abi:dn200100](a1);
  return a1;
}

ot::Spinel::SpinelInterface *std::queue<unsigned long long>::~queue(ot::Spinel::SpinelInterface *a1)
{
  std::queue<unsigned long long>::~queue(a1);
  return a1;
}

{
  std::deque<unsigned long long>::~deque[abi:dn200100](a1);
  return a1;
}

ot::Spinel::SpinelInterface *std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::~map[abi:dn200100](ot::Spinel::SpinelInterface *a1)
{
  std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::~map[abi:dn200100](a1);
  return a1;
}

{
  std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::~__tree(a1);
  return a1;
}

ot::Spinel::SpinelInterface *std::map<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>::~map[abi:dn200100](ot::Spinel::SpinelInterface *a1)
{
  std::map<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>::~map[abi:dn200100](a1);
  return a1;
}

{
  std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::~__tree(a1);
  return a1;
}

ot::AppMetricsManager *ot::AppMetricsManager::AppMetricsManager(ot::AppMetricsManager *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *(this + 340) = 0;
  ot::AppMetricsManager::ResetAppInfoMaps(this);
  ot::AppMetricsManager::ResetCounters(this);
  std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::clear[abi:dn200100](&ot::mMatterSubscriptionInfoMap);
  std::map<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>::clear[abi:dn200100](&ot::mMatterIp6ToMeshLocalIidMap);
  return this;
}

{
  ot::AppMetricsManager::AppMetricsManager(this, a2);
  return this;
}

void ot::AppMetricsManager::ResetAppInfoMaps(ot::AppMetricsManager *this)
{
  std::map<unsigned long long,ot::appPacketInfo>::clear[abi:dn200100](&unk_1004E9F18);
  std::map<unsigned long long,ot::appPacketInfo>::clear[abi:dn200100](&unk_1004E9F30);
  std::map<unsigned long long,ot::appPacketInfo>::clear[abi:dn200100](&ot::mAppMap);
  std::map<unsigned long long,ot::appPacketInfo>::clear[abi:dn200100](&unk_1004E9F00);
}

_WORD *ot::AppMetricsManager::ResetCounters(ot::AppMetricsManager *this)
{
  bzero(this, 0x2A4uLL);
  memset(this + 688, 0, 0x80uLL);
  memset(this + 816, 0, 0x80uLL);
  memset(this + 944, 0, 0x80uLL);
  ot::Clearable<ot::SuccessRateTracker>::Clear(this + 339);
  return ot::Clearable<ot::SuccessRateTracker>::Clear(this + 338);
}

BOOL ot::AppMetricsManager::ResetMatterSubscriptionCounts(ot::AppMetricsManager *this)
{
  v4[1] = this;
  v4[0] = std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::begin[abi:dn200100](&ot::mMatterSubscriptionInfoMap);
  while (1)
  {
    v3 = std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::end[abi:dn200100](&ot::mMatterSubscriptionInfoMap);
    result = std::operator!=[abi:dn200100](v4, &v3);
    if (!result)
    {
      break;
    }

    std::__map_iterator<std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>>::operator->[abi:dn200100](v4);
    *(v2 + 8) = 0;
    std::__map_iterator<std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>>::operator++[abi:dn200100](v4);
  }

  return result;
}

uint64_t std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::begin[abi:dn200100](ot::Spinel::SpinelInterface *a1)
{
  v2 = std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::begin[abi:dn200100](a1);
  std::__map_iterator<std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>>::__map_iterator[abi:dn200100](&v3, v2);
  return v3;
}

BOOL std::operator!=[abi:dn200100](void *a1, void *a2)
{
  return std::operator!=[abi:dn200100](a1, a2);
}

{
  return !std::operator==[abi:dn200100](a1, a2);
}

uint64_t std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::end[abi:dn200100](uint64_t a1)
{
  v2 = std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::end[abi:dn200100](a1);
  std::__map_iterator<std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>>::__map_iterator[abi:dn200100](&v3, v2);
  return v3;
}

void std::__map_iterator<std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>>::operator->[abi:dn200100](uint64_t a1)
{
  std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>::operator->[abi:dn200100](a1);
  ot::Spinel::SpinelInterface::~SpinelInterface(v1);
  ot::Spinel::SpinelInterface::~SpinelInterface(v2);
}

uint64_t ot::AppMetricsManager::GetIP6Headers(ot::AppMetricsManager *this, const ot::Message *a2, ot::Ip6::Headers *a3)
{
  v22 = this;
  v21 = a2;
  v20 = a3;
  v19 = 6;
  if (ot::Message::GetType(a2))
  {
    if (ot::Message::GetType(v21) == 1)
    {
      v18 = 0;
      v17 = 0;
      ot::Mac::Addresses::Addresses(v15);
      if (!ot::Lowpan::MeshHeader::ParseFrom(v14, v21, &v17))
      {
        Source = ot::Lowpan::MeshHeader::GetSource(v14);
        ot::Mac::Address::SetShort(v15, Source);
        Destination = ot::Lowpan::MeshHeader::GetDestination(v14);
        ot::Mac::Address::SetShort(&v16, Destination);
        v18 = v17;
        if (ot::Lowpan::FragmentHeader::ParseFrom(v13, v21, v17, &v17))
        {
          if (ot::Ip6::Headers::DecompressFrom(v20, v21, v18, v15))
          {
            goto LABEL_12;
          }
        }

        else
        {
          v18 += v17;
          if (!ot::Lowpan::FragmentHeader::GetDatagramOffset(v13) && ot::Ip6::Headers::DecompressFrom(v20, v21, v18, v15))
          {
            goto LABEL_12;
          }
        }

        v19 = 0;
      }
    }
  }

  else if (!ot::Ip6::Headers::ParseFrom(v20, v21))
  {
    v19 = 0;
  }

LABEL_12:
  if (v19 && (!ot::Message::GetType(v21) || ot::Message::GetType(v21) == 1))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>("AppMetrics", "Error while parsing IP6 headers from the message", v5, v6, v7, v8, v9, v10, v12);
  }

  return v19;
}

uint64_t ot::Lowpan::MeshHeader::GetSource(ot::Lowpan::MeshHeader *this)
{
  return *this;
}

{
  return ot::Lowpan::MeshHeader::GetSource(this);
}

uint64_t ot::Lowpan::MeshHeader::GetDestination(ot::Lowpan::MeshHeader *this)
{
  return *(this + 1);
}

{
  return ot::Lowpan::MeshHeader::GetDestination(this);
}

BOOL ot::AppMetricsManager::IsMatter(ot::AppMetricsManager *this, const ot::Ip6::Headers *a2)
{
  v3 = 1;
  if (ot::Ip6::Headers::GetSourcePort(a2) != 5540)
  {
    return ot::Ip6::Headers::GetDestinationPort(a2) == 5540;
  }

  return v3;
}

BOOL ot::AppMetricsManager::IsHap(ot::AppMetricsManager *this, const ot::Ip6::Headers *a2)
{
  v3 = 1;
  if (ot::Ip6::Headers::GetSourcePort(a2) != 5683)
  {
    return ot::Ip6::Headers::GetDestinationPort(a2) == 5683;
  }

  return v3;
}

BOOL ot::AppMetricsManager::IsMle(ot::AppMetricsManager *this, const ot::Ip6::Headers *a2)
{
  v3 = 1;
  if (ot::Ip6::Headers::GetSourcePort(a2) != 19788)
  {
    return ot::Ip6::Headers::GetDestinationPort(a2) == 19788;
  }

  return v3;
}

BOOL ot::AppMetricsManager::IsSrp(ot::AppMetricsManager *this, const ot::Ip6::Headers *a2)
{
  v4 = 1;
  if (ot::Ip6::Headers::GetSourcePort(a2) != 53)
  {
    v4 = 1;
    if (ot::Ip6::Headers::GetDestinationPort(a2) != 53)
    {
      v4 = 1;
      if (ot::Ip6::Headers::GetSourcePort(a2) != *(this + 340))
      {
        return ot::Ip6::Headers::GetDestinationPort(a2) == *(this + 340);
      }
    }
  }

  return v4;
}

BOOL ot::AppMetricsManager::IsTmf(ot::AppMetricsManager *this, const ot::Ip6::Headers *a2)
{
  v3 = 1;
  if (ot::Ip6::Headers::GetSourcePort(a2) != 61631)
  {
    return ot::Ip6::Headers::GetDestinationPort(a2) == 61631;
  }

  return v3;
}

uint64_t ot::AppMetricsManager::IsAppPacket(ot::AppMetricsManager *this, const ot::Message *a2, ot::Ip6::Headers *a3, char a4)
{
  if ((a4 & 1) != 0 && ot::AppMetricsManager::GetIP6Headers(this, a2, a3))
  {
    goto LABEL_7;
  }

  if (!ot::AppMetricsManager::IsMatter(this, a3))
  {
    if (ot::AppMetricsManager::IsHap(this, a3))
    {
      HapHeader = ot::Ip6::Headers::GetHapHeader(a3);
      v9 = (ot::Ip6::Hap::Header::GetHasParseError(HapHeader) ^ 1) & 1;
      return v9 & 1;
    }

LABEL_7:
    v9 = 0;
    return v9 & 1;
  }

  MatterHeader = ot::Ip6::Headers::GetMatterHeader(a3);
  v9 = (ot::Ip6::Matter::Header::GetHasParseError(MatterHeader) ^ 1) & 1;
  return v9 & 1;
}

uint64_t ot::Ip6::Headers::GetMatterHeader(ot::Ip6::Headers *this)
{
  return this + 64;
}

{
  return ot::Ip6::Headers::GetMatterHeader(this);
}

uint64_t ot::Ip6::Matter::Header::GetHasParseError(ot::Ip6::Matter::Header *this)
{
  return *(this + 42) & 1;
}

{
  return ot::Ip6::Matter::Header::GetHasParseError(this);
}

uint64_t ot::Ip6::Headers::GetHapHeader(ot::Ip6::Headers *this)
{
  return this + 64;
}

{
  return ot::Ip6::Headers::GetHapHeader(this);
}

uint64_t ot::Ip6::Hap::Header::GetHasParseError(ot::Ip6::Hap::Header *this)
{
  return *(this + 24) & 1;
}

{
  return ot::Ip6::Hap::Header::GetHasParseError(this);
}

uint64_t ot::AppMetricsManager::GetApplicationPacketType(ot::AppMetricsManager *this, const ot::Message *a2, unsigned __int16 *a3)
{
  v9 = this;
  v8 = a2;
  v7 = a3;
  v5 = 23;
  if (!ot::Message::GetType(a2) && !ot::Ip6::Headers::ParseFrom(v6, v8))
  {
    if (ot::AppMetricsManager::IsMatter(this, v6))
    {
      *v7 = 5540;
    }

    else if (ot::AppMetricsManager::IsHap(this, v6))
    {
      *v7 = 5683;
    }

    return 0;
  }

  return v5;
}

BOOL ot::AppMetricsManager::HasAppPort(ot::AppMetricsManager *this, ot::Ip6::Udp::Header *a2)
{
  v3 = 1;
  if (ot::Ip6::Udp::Header::GetSourcePort(a2) != 5540)
  {
    v3 = 1;
    if (ot::Ip6::Udp::Header::GetDestinationPort(a2) != 5540)
    {
      v3 = 1;
      if (ot::Ip6::Udp::Header::GetSourcePort(a2) != 5683)
      {
        return ot::Ip6::Udp::Header::GetDestinationPort(a2) == 5683;
      }
    }
  }

  return v3;
}

uint64_t ot::AppMetricsManager::GetAppHeaderString(ot::AppMetricsManager *this, const ot::Ip6::Headers *a2, char *a3)
{
  if (ot::AppMetricsManager::IsMatter(this, a2))
  {
    MatterHeader = ot::Ip6::Headers::GetMatterHeader(a2);
    Flags = ot::Ip6::Matter::Header::GetFlags(MatterHeader);
    SecurityFlags = ot::Ip6::Matter::Header::GetSecurityFlags(MatterHeader);
    SessionId = ot::Ip6::Matter::Header::GetSessionId(MatterHeader);
    Counter = ot::Ip6::Matter::Header::GetCounter(MatterHeader);
    if (ot::Ip6::Matter::Header::GetIsUnsecured(MatterHeader))
    {
      ProtocolOpcodeAsString = ot::Ip6::Matter::Header::GetProtocolOpcodeAsString(MatterHeader);
      return snprintf(a3, 0x40uLL, ", Matter F:%u, Sec:%u, S:%u, M:%u%s", Flags, SecurityFlags, SessionId, Counter, ProtocolOpcodeAsString);
    }

    else
    {
      return snprintf(a3, 0x40uLL, ", Matter F:%u, Sec:%u, S:%u, M:%u%s", Flags, SecurityFlags, SessionId, Counter, "");
    }
  }

  else
  {
    result = ot::AppMetricsManager::IsHap(this, a2);
    if (result)
    {
      HapHeader = ot::Ip6::Headers::GetHapHeader(a2);
      Type = ot::Ip6::Hap::Header::GetType(HapHeader);
      Code = ot::Ip6::Hap::Header::GetCode(HapHeader);
      MessageId = ot::Ip6::Hap::Header::GetMessageId(HapHeader);
      Token = ot::Ip6::Hap::Header::GetToken(HapHeader);
      return snprintf(a3, 0x40uLL, ", Hap T:%u, C:%.2f, M:%u, TK:0x%llx", Type, Code, MessageId, Token);
    }
  }

  return result;
}

uint64_t ot::Ip6::Matter::Header::GetFlags(ot::Ip6::Matter::Header *this)
{
  return *this;
}

{
  return ot::Ip6::Matter::Header::GetFlags(this);
}

uint64_t ot::Ip6::Matter::Header::GetSecurityFlags(ot::Ip6::Matter::Header *this)
{
  return *(this + 4);
}

{
  return ot::Ip6::Matter::Header::GetSecurityFlags(this);
}

uint64_t ot::Ip6::Matter::Header::GetSessionId(ot::Ip6::Matter::Header *this)
{
  return *(this + 1);
}

{
  return ot::Ip6::Matter::Header::GetSessionId(this);
}

uint64_t ot::Ip6::Matter::Header::GetCounter(ot::Ip6::Matter::Header *this)
{
  return *(this + 2);
}

{
  return ot::Ip6::Matter::Header::GetCounter(this);
}

uint64_t ot::Ip6::Matter::Header::GetIsUnsecured(ot::Ip6::Matter::Header *this)
{
  return *(this + 41) & 1;
}

{
  return ot::Ip6::Matter::Header::GetIsUnsecured(this);
}

uint64_t ot::Ip6::Hap::Header::GetType(ot::Ip6::Hap::Header *this)
{
  return *this;
}

{
  return ot::Ip6::Hap::Header::GetType(this);
}

float ot::Ip6::Hap::Header::GetCode(ot::Ip6::Hap::Header *this)
{
  return *(this + 1);
}

{
  return ot::Ip6::Hap::Header::GetCode(this);
}

uint64_t ot::Ip6::Hap::Header::GetMessageId(ot::Ip6::Hap::Header *this)
{
  return ot::BigEndian::HostSwap16(*(this + 4));
}

{
  return ot::Ip6::Hap::Header::GetMessageId(this);
}

uint64_t ot::Ip6::Hap::Header::GetToken(ot::Ip6::Hap::Header *this)
{
  return *(this + 2);
}

{
  return ot::Ip6::Hap::Header::GetToken(this);
}

uint64_t ot::AppMetricsManager::CountAppDuplicates(ot::AppMetricsManager *this, const ot::Message *a2, const ot::Ip6::Headers *a3, char a4, unsigned __int8 a5)
{
  v53 = this;
  v52 = a2;
  v51 = a3;
  v50 = a4;
  v49 = a5;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  *&v43[4] = 0;
  *v43 = ot::Message::GetLength(a2);
  Timestamp = ot::Message::GetTimestamp(v52);
  Value = ot::Time::GetValue(&Timestamp);
  v40 = 0;
  v39 = (v50 & 1) == 0;
  v38 = 0;
  Type = 0;
  v36 = 0;
  memset(__b, 0, sizeof(__b));
  if (ot::AppMetricsManager::IsMatter(this, v51))
  {
    MatterHeader = ot::Ip6::Headers::GetMatterHeader(v51);
    SessionId = ot::Ip6::Matter::Header::GetSessionId(MatterHeader);
    v38 = ot::Ip6::Matter::Header::GetCounter(MatterHeader) | (SessionId << 32);
    v40 = 1;
  }

  else
  {
    HapHeader = ot::Ip6::Headers::GetHapHeader(v51);
    Type = ot::Ip6::Hap::Header::GetType(HapHeader);
    v28 = ot::Ip6::Hap::Header::GetType(HapHeader);
    v29 = (ot::Ip6::Hap::Header::GetToken(HapHeader) << 16) | (v28 << 48);
    v38 = v29 | ot::Ip6::Hap::Header::GetMessageId(HapHeader);
    v40 = 0;
  }

  v45 = ++*(this + 2 * v40 + v39 + 4);
  *(this + 2 * v40 + v39 + 12) += *v43;
  *&v43[2] = *(this + 2 * v40 + v39 + 12);
  if (std::map<unsigned long long,ot::appPacketInfo>::count[abi:dn200100]((&ot::mAppMap + 48 * v40 + 24 * v39), &v38))
  {
    v36 = 1;
    v48 = *std::map<unsigned long long,ot::appPacketInfo>::operator[]((&ot::mAppMap + 48 * v40 + 24 * v39), &v38);
    v5 = std::map<unsigned long long,ot::appPacketInfo>::operator[]((&ot::mAppMap + 48 * v40 + 24 * v39), &v38);
    ++*v5;
    v46 = ++*(this + 2 * v40 + v39);
    *(this + 2 * v40 + v39 + 8) += *v43;
    v44 = *(this + 2 * v40 + v39 + 8);
    v27 = Value;
    v47 = v27 - *(std::map<unsigned long long,ot::appPacketInfo>::operator[]((&ot::mAppMap + 48 * v40 + 24 * v39), &v38) + 8);
  }

  else
  {
    if (std::map<unsigned long long,ot::appPacketInfo>::size[abi:dn200100](&ot::mAppMap + 48 * v40 + 24 * v39) < 0x3E8)
    {
      std::queue<unsigned long long>::push[abi:dn200100]((&ot::mAppQueue + 96 * v40 + 48 * v39), &v38);
      *std::map<unsigned long long,ot::appPacketInfo>::operator[]((&ot::mAppMap + 48 * v40 + 24 * v39), &v38) = 1;
    }

    else
    {
      v26 = (&ot::mAppMap + 48 * v40 + 24 * v39);
      v6 = std::queue<unsigned long long>::front[abi:dn200100](&ot::mAppQueue + 96 * v40 + 48 * v39);
      std::map<unsigned long long,ot::appPacketInfo>::erase[abi:dn200100](v26, v6);
      *std::map<unsigned long long,ot::appPacketInfo>::operator[]((&ot::mAppMap + 48 * v40 + 24 * v39), &v38) = 1;
      std::queue<unsigned long long>::pop[abi:dn200100]((&ot::mAppQueue + 96 * v40 + 48 * v39));
      std::queue<unsigned long long>::push[abi:dn200100]((&ot::mAppQueue + 96 * v40 + 48 * v39), &v38);
    }

    v25 = Value;
    *(std::map<unsigned long long,ot::appPacketInfo>::operator[]((&ot::mAppMap + 48 * v40 + 24 * v39), &v38) + 4) = v25;
    if (!v40)
    {
      if (!v39 || Type)
      {
        if (!v39 && Type == 2)
        {
          v33 = v38 & 0xFFFDFFFFFFFFFFFFLL;
          if (std::map<unsigned long long,ot::appPacketInfo>::count[abi:dn200100]((&ot::mAppMap + 48 * v40 + 24), &v33))
          {
            v24 = Value;
            if ((v24 - *(std::map<unsigned long long,ot::appPacketInfo>::operator[]((&ot::mAppMap + 48 * v40 + 24), &v33) + 4)) > 0x1388)
            {
              *(std::map<unsigned long long,ot::appPacketInfo>::operator[]((&ot::mAppMap + 48 * v40 + 24), &v33) + 32) = 4;
            }

            else
            {
              *(std::map<unsigned long long,ot::appPacketInfo>::operator[]((&ot::mAppMap + 48 * v40 + 24), &v33) + 32) = 0;
            }
          }

          else
          {
            ot::Logger::LogAtLevel<(ot::LogLevel)2>("AppMetrics", "Error: HAP response received but there is no HAP request entry in the TX map", v7, v8, v9, v10, v11, v12, v17);
          }
        }
      }

      else
      {
        *(std::map<unsigned long long,ot::appPacketInfo>::operator[]((&ot::mAppMap + 48 * v40 + 24 * v39), &v38) + 32) = 5;
      }
    }
  }

  v22 = Value;
  *(std::map<unsigned long long,ot::appPacketInfo>::operator[]((&ot::mAppMap + 48 * v40 + 24 * v39), &v38) + 8) = v22;
  Length = ot::Message::GetLength(v52);
  v13 = std::map<unsigned long long,ot::appPacketInfo>::operator[]((&ot::mAppMap + 48 * v40 + 24 * v39), &v38);
  result = Length;
  *(v13 + 12) = Length;
  if (v39)
  {
    if (v39)
    {
      v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
      v32[0] = ot::Message::GetTimestamp(v52);
      v16 = ot::Time::GetValue(v32);
      result = ot::MeshForwarder::GetTxDelayStats(v18, v16);
      v32[1] = result;
      if (result > 0x1388)
      {
        result = std::map<unsigned long long,ot::appPacketInfo>::operator[]((&ot::mAppMap + 48 * v40 + 24 * v39), &v38);
        *(result + 24) |= 0x40uLL;
      }
    }
  }

  else
  {
    v21 = v49;
    if (v21 <= *(std::map<unsigned long long,ot::appPacketInfo>::operator[]((&ot::mAppMap + 48 * v40), &v38) + 16))
    {
      v20 = *(std::map<unsigned long long,ot::appPacketInfo>::operator[]((&ot::mAppMap + 48 * v40 + 24 * v39), &v38) + 16);
    }

    else
    {
      v20 = v49;
    }

    *(std::map<unsigned long long,ot::appPacketInfo>::operator[]((&ot::mAppMap + 48 * v40 + 24 * v39), &v38) + 16) = v20;
    v15 = std::map<unsigned long long,ot::appPacketInfo>::operator[]((&ot::mAppMap + 48 * v40 + 24 * v39), &v38);
    v19 = *(v15 + 20) + v49;
    result = std::map<unsigned long long,ot::appPacketInfo>::operator[]((&ot::mAppMap + 48 * v40 + 24 * v39), &v38);
    *(result + 20) = v19;
  }

  return result;
}

uint64_t std::map<unsigned long long,ot::appPacketInfo>::operator[](ot::Spinel::SpinelInterface *a1, void *a2)
{
  v13 = a1;
  v12 = a2;
  v9 = std::forward_as_tuple[abi:dn200100]<unsigned long long const&>(a2);
  boost::any::holder<BOOL>::~holder();
  v14 = std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1, a2, &std::piecewise_construct, &v9, &v8);
  v15 = v2;
  v10 = v14;
  v11 = v2;
  std::__tree_iterator<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *> *,long>::operator->[abi:dn200100](&v10);
  ot::Spinel::SpinelInterface::~SpinelInterface(v3);
  return v4 + 8;
}

uint64_t ot::AppMetricsManager::AddMatterMessageTxStatus(ot::AppMetricsManager *this, char a2)
{
  ot::SuccessRateTracker::AddSample(this + 339, a2 & 1, 0x80u);
  if (ot::SuccessRateTracker::GetFailureRatePercent((this + 678)) % 0x64)
  {
    result = ot::SuccessRateTracker::GetFailureRatePercent((this + 678));
    v3 = result / 0x64 + 1;
  }

  else
  {
    result = ot::SuccessRateTracker::GetFailureRatePercent((this + 678));
    v3 = result / 0x64;
  }

  *(this + 17) = v3;
  return result;
}

uint64_t ot::AppMetricsManager::AddHapMessageTxStatus(ot::AppMetricsManager *this, char a2)
{
  ot::SuccessRateTracker::AddSample(this + 338, a2 & 1, 0x80u);
  if (ot::SuccessRateTracker::GetFailureRatePercent((this + 676)) % 0x64)
  {
    result = ot::SuccessRateTracker::GetFailureRatePercent((this + 676));
    v3 = result / 0x64 + 1;
  }

  else
  {
    result = ot::SuccessRateTracker::GetFailureRatePercent((this + 676));
    v3 = result / 0x64;
  }

  *(this + 16) = v3;
  return result;
}

uint64_t ot::AppMetricsManager::AddAppMessageTxStatus(ot::AppMetricsManager *this, const ot::Ip6::Headers *a2, ot::Neighbor *a3, char a4)
{
  if (ot::AppMetricsManager::IsMatter(this, a2))
  {
    LinkInfo = ot::Neighbor::GetLinkInfo(a3);
    ot::LinkQualityInfo::AddMatterMessageTxStatus(LinkInfo, a4 & 1);
    return ot::AppMetricsManager::AddMatterMessageTxStatus(this, a4 & 1);
  }

  else
  {
    result = ot::AppMetricsManager::IsHap(this, a2);
    if (result)
    {
      v6 = ot::Neighbor::GetLinkInfo(a3);
      ot::LinkQualityInfo::AddHapMessageTxStatus(v6, a4 & 1);
      return ot::AppMetricsManager::AddHapMessageTxStatus(this, a4 & 1);
    }
  }

  return result;
}

_WORD *ot::LinkQualityInfo::AddMatterMessageTxStatus(ot::LinkQualityInfo *this, char a2)
{
  return ot::SuccessRateTracker::AddSample(this + 4, a2 & 1, 0x80u);
}

{
  return ot::LinkQualityInfo::AddMatterMessageTxStatus(this, a2);
}

_WORD *ot::LinkQualityInfo::AddHapMessageTxStatus(ot::LinkQualityInfo *this, char a2)
{
  return ot::SuccessRateTracker::AddSample(this + 5, a2 & 1, 0x80u);
}

{
  return ot::LinkQualityInfo::AddHapMessageTxStatus(this, a2);
}

void ot::AppMetricsManager::ResetAppAndRoutingMetricsHistograms(ot::AppMetricsManager *this)
{
  ot::AppMetricsManager::ResetAppInfoMaps(this);
  for (i = 0; i < 2u; ++i)
  {
    for (j = 0; j < 2u; ++j)
    {
      for (k = 0; k < 5u; ++k)
      {
        memset(&ot::mRoutingMetricHistogram + 1360 * i + 680 * j + 68 * k, 0, 0x40uLL);
        memset(&ot::mRoutingMetricHistogram + 1360 * i + 680 * j + 68 * k + 340, 0, 0x40uLL);
      }

      for (m = 0; m < 5u; ++m)
      {
        v1 = &ot::mApplicationProtocolMetricHistogram + 200 * i + 100 * j + 20 * m;
        *v1 = 0;
        *(v1 + 1) = 0;
        *(v1 + 4) = 0;
      }
    }
  }
}

BOOL ot::AppMetricsManager::UpdateAppAndRoutingMetricsHistograms(_BOOL8 this)
{
  v21 = this;
  v14 = this;
  for (i = 0; i < 2u; ++i)
  {
    for (j = 0; j < 2u; ++j)
    {
      for (k = std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::begin[abi:dn200100]((&ot::mAppMap + 48 * i + 24 * j)); ; std::__map_iterator<std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>>::operator++[abi:dn200100](&k))
      {
        v17 = std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::end[abi:dn200100](&ot::mAppMap + 48 * i + 24 * j);
        this = std::operator!=[abi:dn200100](&k, &v17);
        if (!this)
        {
          break;
        }

        std::__map_iterator<std::__tree_iterator<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *> *,long>>::operator->[abi:dn200100](&k);
        v16 = (v1 + 8);
        if (*(v1 + 8) && *v16 <= 5u && *(v1 + 28) < 0x11u && *(v1 + 24) < 0x11u)
        {
          *(v1 + 28) /= *(v1 + 8);
          v8 = &ot::mRoutingMetricHistogram + 1360 * i + 680 * j + 68 * (*v16 - 1);
          ++*&v8[4 * *(v1 + 28)];
          v9 = &ot::mRoutingMetricHistogram + 1360 * i + 680 * j + 68 * (*v16 - 1) + 340;
          ++*&v9[4 * *(v1 + 24)];
          PacketSizeEnumType = ot::AppMetricsManager::GetPacketSizeEnumType(v14, *(v1 + 20));
          v10 = &ot::mApplicationProtocolMetricHistogram + 200 * i + 100 * j + 20 * PacketSizeEnumType;
          ++*&v10[4 * (*v16 - 1)];
          v11 = &ot::mApplicationProtocolMetricHistogram + 200 * i + 100 * j + 80;
          ++*&v11[4 * (*v16 - 1)];
        }

        else
        {
          v12 = *(v1 + 28);
          v13 = *(v1 + 24);
          ot::Logger::LogAtLevel<(ot::LogLevel)2>("AppMetrics", "UpdateAppAndRoutingMetricsHistograms: Incorrect txCount(%d) avgRouteMetric(%d) maxRouteMetric(%d) for protocolType(%d) and packetDirection(%d)", v2, v3, v4, v5, v6, v7, *v16);
        }
      }
    }
  }

  return this;
}

void std::__map_iterator<std::__tree_iterator<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *> *,long>>::operator->[abi:dn200100](uint64_t a1)
{
  std::__tree_iterator<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *> *,long>::operator->[abi:dn200100](a1);
  ot::Spinel::SpinelInterface::~SpinelInterface(v1);
  ot::Spinel::SpinelInterface::~SpinelInterface(v2);
}

uint64_t ot::AppMetricsManager::GetPacketSizeEnumType(ot::AppMetricsManager *this, unsigned int a2)
{
  if (a2 > 0x5A)
  {
    if (a2 > 0xC8)
    {
      if (a2 > 0x1F4)
      {
        if (a2 > 0x500)
        {
          return 5;
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

  else
  {
    return 0;
  }
}

void ot::AppMetricsManager::UpdateRouteCostInMap(ot::AppMetricsManager *this, ot::Ip6::Headers *a2, unsigned __int16 a3)
{
  v36 = this;
  v35 = a2;
  v34 = a3;
  v33 = 0;
  if (ot::AppMetricsManager::IsMatter(this, a2))
  {
    MatterHeader = ot::Ip6::Headers::GetMatterHeader(v35);
    SessionId = ot::Ip6::Matter::Header::GetSessionId(MatterHeader);
    v33 = ot::Ip6::Matter::Header::GetCounter(MatterHeader) | (SessionId << 32);
    if (std::map<unsigned long long,ot::appPacketInfo>::count[abi:dn200100](&unk_1004E9F30, &v33))
    {
      v3 = std::map<unsigned long long,ot::appPacketInfo>::operator[](&unk_1004E9F30, &v33);
      if (*(v3 + 16) > v34)
      {
        v28 = *(std::map<unsigned long long,ot::appPacketInfo>::operator[](&unk_1004E9F30, &v33) + 16);
      }

      else
      {
        v28 = v34;
      }

      *(std::map<unsigned long long,ot::appPacketInfo>::operator[](&unk_1004E9F30, &v33) + 16) = v28;
      v4 = std::map<unsigned long long,ot::appPacketInfo>::operator[](&unk_1004E9F30, &v33);
      v27 = *(v4 + 20) + v34;
      *(std::map<unsigned long long,ot::appPacketInfo>::operator[](&unk_1004E9F30, &v33) + 20) = v27;
    }

    else
    {
      v26 = v34;
      DestinationAddress = ot::Ip6::Headers::GetDestinationAddress(v35);
      ot::Ip6::Address::ToString(DestinationAddress, v38);
      ot::String<(unsigned short)40>::AsCString(v38);
      ot::Ip6::Matter::Header::GetSessionId(MatterHeader);
      ot::Ip6::Matter::Header::GetCounter(MatterHeader);
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("AppMetrics", "Cannot update route cost(%d) in map for dst:%s as key not found matterSessionId:%d, matterCounter:%d", v6, v7, v8, v9, v10, v11, v26);
    }
  }

  else if (ot::AppMetricsManager::IsHap(this, v35))
  {
    HapHeader = ot::Ip6::Headers::GetHapHeader(v35);
    Type = ot::Ip6::Hap::Header::GetType(HapHeader);
    v25 = (ot::Ip6::Hap::Header::GetToken(HapHeader) << 16) | (Type << 48);
    v33 = v25 | ot::Ip6::Hap::Header::GetMessageId(HapHeader);
    if (std::map<unsigned long long,ot::appPacketInfo>::count[abi:dn200100](&unk_1004E9F00, &v33))
    {
      v12 = std::map<unsigned long long,ot::appPacketInfo>::operator[](&unk_1004E9F00, &v33);
      if (*(v12 + 16) > v34)
      {
        v23 = *(std::map<unsigned long long,ot::appPacketInfo>::operator[](&unk_1004E9F00, &v33) + 16);
      }

      else
      {
        v23 = v34;
      }

      *(std::map<unsigned long long,ot::appPacketInfo>::operator[](&unk_1004E9F00, &v33) + 16) = v23;
      v13 = std::map<unsigned long long,ot::appPacketInfo>::operator[](&unk_1004E9F00, &v33);
      v22 = *(v13 + 20) + v34;
      *(std::map<unsigned long long,ot::appPacketInfo>::operator[](&unk_1004E9F00, &v33) + 20) = v22;
    }

    else
    {
      v21 = v34;
      v14 = ot::Ip6::Headers::GetDestinationAddress(v35);
      ot::Ip6::Address::ToString(v14, v37);
      ot::String<(unsigned short)40>::AsCString(v37);
      ot::Ip6::Hap::Header::GetMessageId(HapHeader);
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("AppMetrics", "Cannot update route cost(%d) in map for dst:%s as key not found hkMsgId:%d", v15, v16, v17, v18, v19, v20, v21);
    }
  }
}

void ot::AppMetricsManager::UpdateRouteCostFromTxMsg(ot::AppMetricsManager *a1, const ot::Message *a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  if (*a4 && *v11 != 4)
  {
    v8 = *v11;
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("AppMetrics", "AppMetricsManager::UpdateRouteCostFromTxMsg Cannot update route cost(%d) aError:(%d) ", a3, a4, a5, a6, a7, a8, v12);
  }

  else if (ot::AppMetricsManager::IsAppPacket(a1, v13, v10, 1))
  {
    ot::AppMetricsManager::UpdateRouteCostInMap(a1, v10, v12);
  }
}

void ot::AppMetricsManager::UpdateMatterSubscriptionInfoMap(ot::AppMetricsManager *this, const ot::Message *a2, const ot::Ip6::Headers *a3, const ot::Mac::Address *a4)
{
  v54 = this;
  v53 = a2;
  v52 = a3;
  v51 = a4;
  if (ot::AppMetricsManager::IsMatter(this, a3) && ot::AppMetricsManager::GetIsPrimaryResident(this))
  {
    MatterHeader = ot::Ip6::Headers::GetMatterHeader(v52);
    if (ot::Ip6::Matter::Header::GetProtocolOpcode(MatterHeader) == 48)
    {
      if (std::map<unsigned long long,ot::appPacketInfo>::size[abi:dn200100](&ot::mMatterSubscriptionInfoMap) > 0x3E8)
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)2>("AppMetrics", "Error: Matter subscription info map is full", v4, v5, v6, v7, v8, v9, v34);
        return;
      }

      SessionId = ot::Ip6::Matter::Header::GetSessionId(MatterHeader);
      v49 = ot::Ip6::Matter::Header::GetCounter(MatterHeader) | (SessionId << 32);
      if (*std::map<unsigned long long,ot::appPacketInfo>::operator[](&unk_1004E9F30, &v49) <= 1u)
      {
        Iid = 0;
        v47 = 0;
        Value = 0;
        *&v44[8] = 0;
        *v44 = ot::Message::GetTimestamp(v53);
        Value = ot::Time::GetValue(v44);
        v46 = *ot::Ip6::Headers::GetDestinationAddress(v52);
        if (v51)
        {
          v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
          ot::ChildTable::FindChild(v10, v51, 0);
          *&v44[4] = v11;
        }

        else
        {
          *&v44[4] = 0;
        }

        if (std::map<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>::count[abi:dn200100](&ot::mMatterIp6ToMeshLocalIidMap, &v46))
        {
          Iid = std::map<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>::operator[](&ot::mMatterIp6ToMeshLocalIidMap, &v46);
        }

        else
        {
          v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
          MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v12);
          ot::Ip6::Address::GetPrefix(&v46);
          if (ot::Equatable<ot::Ip6::NetworkPrefix>::operator==(MeshLocalPrefix, v13))
          {
            Iid = ot::Ip6::Address::GetIid(&v46);
            v39 = Iid;
            *std::map<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>::operator[](&ot::mMatterIp6ToMeshLocalIidMap, &v46) = *v39;
          }

          else if (*&v44[4])
          {
            Iid = ot::Child::GetMeshLocalIid(*&v44[4]);
            v38 = Iid;
            *std::map<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>::operator[](&ot::mMatterIp6ToMeshLocalIidMap, &v46) = *v38;
          }

          else
          {
            v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
            Iid = ot::AddressResolver::GetMeshLocalIid(v14, &v46, &v47);
            if (!Iid)
            {
              ot::Ip6::Address::ToString(&v46, v57);
              v15 = ot::String<(unsigned short)40>::AsCString(v57);
              ot::Logger::LogAtLevel<(ot::LogLevel)2>("AppMetrics", "Error: No matching ML-IID for Ip6[%s]", v16, v17, v18, v19, v20, v21, v15);
              return;
            }

            v37 = Iid;
            *std::map<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>::operator[](&ot::mMatterIp6ToMeshLocalIidMap, &v46) = *v37;
          }
        }

        if (std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::count[abi:dn200100](&ot::mMatterSubscriptionInfoMap, Iid))
        {
          v22 = std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::operator[](&ot::mMatterSubscriptionInfoMap, Iid);
          ++*v22;
          v36 = Value;
          v43 = v36 - *(std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::operator[](&ot::mMatterSubscriptionInfoMap, Iid) + 4);
          if (v43 >= 0x12CC0300)
          {
            ot::AppMetricsManager::UpdateMatterSubscriptionIntervalHistograms(this, 0);
          }

          else
          {
            ot::AppMetricsManager::UpdateMatterSubscriptionIntervalHistograms(this, v43);
          }

          v23 = std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::operator[](&ot::mMatterSubscriptionInfoMap, Iid);
          if (ot::Unequatable<ot::Ip6::Address>::operator!=((v23 + 8), &v46))
          {
            v24 = std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::operator[](&ot::mMatterSubscriptionInfoMap, Iid);
            ot::Ip6::Address::ToString((v24 + 8), v56);
            ot::String<(unsigned short)40>::AsCString(v56);
            ot::Ip6::Address::ToString(&v46, v55);
            ot::String<(unsigned short)40>::AsCString(v55);
            ot::Logger::LogAtLevel<(ot::LogLevel)4>("AppMetrics", "%s, Accessory LastIp6[%s], NewIp6[%s]", v25, v26, v27, v28, v29, v30, "UpdateMatterSubscriptionInfoMap");
            v31 = std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::operator[](&ot::mMatterSubscriptionInfoMap, Iid);
            std::map<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>::erase[abi:dn200100](&ot::mMatterIp6ToMeshLocalIidMap, (v31 + 8));
            v32 = std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::operator[](&ot::mMatterSubscriptionInfoMap, Iid);
            *(v32 + 8) = v46;
          }
        }

        else
        {
          *std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::operator[](&ot::mMatterSubscriptionInfoMap, Iid) = 1;
          v33 = std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::operator[](&ot::mMatterSubscriptionInfoMap, Iid);
          *(v33 + 8) = v46;
        }

        v35 = Value;
        *(std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::operator[](&ot::mMatterSubscriptionInfoMap, Iid) + 4) = v35;
        ++*(this + 18);
      }
    }
  }
}

uint64_t ot::Ip6::Matter::Header::GetProtocolOpcode(ot::Ip6::Matter::Header *this)
{
  return *(this + 35);
}

{
  return ot::Ip6::Matter::Header::GetProtocolOpcode(this);
}

uint64_t std::map<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>::operator[](ot::Spinel::SpinelInterface *a1, const void *a2)
{
  v13 = a1;
  v12 = a2;
  v9 = std::forward_as_tuple[abi:dn200100]<unsigned long long const&>(a2);
  boost::any::holder<BOOL>::~holder();
  v14 = std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::__emplace_unique_key_args<ot::Ip6::Address,std::piecewise_construct_t const&,std::tuple<ot::Ip6::Address const&>,std::tuple<>>(a1, a2, &std::piecewise_construct, &v9, &v8);
  v15 = v2;
  v10 = v14;
  v11 = v2;
  std::__tree_iterator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *> *,long>::operator->[abi:dn200100](&v10);
  ot::Spinel::SpinelInterface::~SpinelInterface(v3);
  return v4 + 16;
}

uint64_t ot::Child::GetMeshLocalIid(ot::Child *this)
{
  return this + 196;
}

{
  return ot::Child::GetMeshLocalIid(this);
}

uint64_t std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::operator[](ot::Spinel::SpinelInterface *a1, const void *a2)
{
  v13 = a1;
  v12 = a2;
  v9 = std::forward_as_tuple[abi:dn200100]<unsigned long long const&>(a2);
  boost::any::holder<BOOL>::~holder();
  v14 = std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::__emplace_unique_key_args<ot::Ip6::InterfaceIdentifier,std::piecewise_construct_t const&,std::tuple<ot::Ip6::InterfaceIdentifier const&>,std::tuple<>>(a1, a2, &std::piecewise_construct, &v9, &v8);
  v15 = v2;
  v10 = v14;
  v11 = v2;
  std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>::operator->[abi:dn200100](&v10);
  ot::Spinel::SpinelInterface::~SpinelInterface(v3);
  return v4 + 8;
}

uint64_t ot::AppMetricsManager::UpdateMatterSubscriptionIntervalHistograms(uint64_t this, unsigned int a2)
{
  if (a2 >= 0x2710)
  {
    if (a2 >= 0xEA60)
    {
      if (a2 >= 0xA1220)
      {
        if (a2 >= 0x1C61A0)
        {
          if (a2 >= 0x36EE80)
          {
            if (a2 >= 0xAF18380)
            {
              ++*(this + 672);
            }

            else
            {
              ++*(this + 276 + 4 * ((a2 - 3600000) / 0x36EE80 + 50));
            }
          }

          else
          {
            ++*(this + 276 + 4 * ((a2 - 1860000) / 0x2BF20 + 40));
          }
        }

        else
        {
          ++*(this + 276 + 4 * ((a2 - 660000) / 0x1D4C0 + 30));
        }
      }

      else
      {
        ++*(this + 276 + 4 * ((a2 - 60000) / 0xEA60 + 20));
      }
    }

    else
    {
      ++*(this + 276 + 4 * ((a2 - 10000) / 0x1388 + 10));
    }
  }

  else
  {
    ++*(this + 276 + 4 * (a2 / 0x3E8));
  }

  return this;
}

BOOL ot::AppMetricsManager::UpdateMatterSubscriptionCountHistogram(ot::AppMetricsManager *this)
{
  v6[1] = this;
  result = ot::AppMetricsManager::GetIsPrimaryResident(this);
  if (result)
  {
    v6[0] = std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::begin[abi:dn200100](&ot::mMatterSubscriptionInfoMap);
    while (1)
    {
      v5 = std::map<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>::end[abi:dn200100](&ot::mMatterSubscriptionInfoMap);
      result = std::operator!=[abi:dn200100](v6, &v5);
      if (!result)
      {
        break;
      }

      std::__map_iterator<std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>>::operator->[abi:dn200100](v6);
      if (*(v2 + 8) >= 0x32u)
      {
        ++*(this + 68);
      }

      else
      {
        std::__map_iterator<std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>>::operator->[abi:dn200100](v6);
        ++*(this + *(v3 + 8) + 19);
      }

      std::__map_iterator<std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>>::operator++[abi:dn200100](v6);
    }
  }

  return result;
}

unint64_t ot::AppMetricsManager::UpdateSystemWideThreadMeshReachabilityStatusLastTimestamp(ot::AppMetricsManager *a1, unsigned int a2)
{
  result = ot::AppMetricsManager::GetIsPrimaryResident(a1);
  if (result)
  {
    result = otPlatTimeGet();
    *(a1 + a2 + 86) = result;
  }

  return result;
}

unint64_t ot::AppMetricsManager::UpdateSystemWideThreadTXReachabilityStatusLastTimestamp(ot::AppMetricsManager *a1, unsigned int a2)
{
  result = ot::AppMetricsManager::GetIsPrimaryResident(a1);
  if (result)
  {
    result = otPlatTimeGet();
    *(a1 + a2 + 102) = result;
  }

  return result;
}

unint64_t ot::AppMetricsManager::UpdateSystemWideThreadRXReachabilityStatusLastTimestamp(ot::AppMetricsManager *a1, int a2, const ot::Ip6::Headers *a3)
{
  result = ot::AppMetricsManager::GetIsPrimaryResident(a1);
  if ((result & 1) != 0 && a2)
  {
    v5 = 0;
    if (a3)
    {
      if (a2 == 30)
      {
        if (ot::AppMetricsManager::IsMatter(a1, a3))
        {
          v5 = 8;
        }

        else if (ot::AppMetricsManager::IsHap(a1, a3))
        {
          v5 = 9;
        }

        else if (ot::AppMetricsManager::IsMle(a1, a3))
        {
          v5 = 10;
        }

        else if (ot::AppMetricsManager::IsSrp(a1, a3))
        {
          v5 = 11;
        }

        else
        {
          result = ot::AppMetricsManager::IsTmf(a1, a3);
          if ((result & 1) == 0)
          {
            return result;
          }

          v5 = 12;
        }
      }
    }

    else
    {
      switch(a2)
      {
        case 3:
          v5 = 5;
          break;
        case 8:
          v5 = 6;
          break;
        case 17:
          v5 = 7;
          break;
        default:
          return result;
      }
    }

    result = otPlatTimeGet();
    *(a1 + v5 + 118) = result;
  }

  return result;
}

void ot::AppMetricsManager::UpdateAppMapWithPerPacketThreadTXReachabilityStatus(ot::AppMetricsManager *a1, int a2, ot::Ip6::Headers *a3)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  if (ot::AppMetricsManager::GetIsPrimaryResident(a1) && v23)
  {
    v21 = 0;
    v20 = 1;
    v19 = 0;
    v18 = 0;
    switch(v23)
    {
      case 11:
        v21 = 4;
        break;
      case 14:
        v21 = 1;
        break;
      case 15:
        v21 = 3;
        break;
      case 29:
        v21 = 2;
        break;
      default:
        return;
    }

    if (ot::AppMetricsManager::IsMatter(a1, v22))
    {
      MatterHeader = ot::Ip6::Headers::GetMatterHeader(v22);
      SessionId = ot::Ip6::Matter::Header::GetSessionId(MatterHeader);
      v18 = ot::Ip6::Matter::Header::GetCounter(MatterHeader) | (SessionId << 32);
      v19 = 1;
    }

    else
    {
      HapHeader = ot::Ip6::Headers::GetHapHeader(v22);
      Type = ot::Ip6::Hap::Header::GetType(HapHeader);
      v13 = (ot::Ip6::Hap::Header::GetToken(HapHeader) << 16) | (Type << 48);
      v18 = v13 | ot::Ip6::Hap::Header::GetMessageId(HapHeader);
      v19 = 0;
    }

    if (std::map<unsigned long long,ot::appPacketInfo>::count[abi:dn200100]((&ot::mAppMap + 48 * v19 + 24 * v20), &v18))
    {
      v11 = 1 << v21;
      v9 = std::map<unsigned long long,ot::appPacketInfo>::operator[]((&ot::mAppMap + 48 * v19 + 24 * v20), &v18);
      *(v9 + 24) |= v11;
    }

    else
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("AppMetrics", "Error: There is no entry in the TX map to update Thread TX reachability status", v3, v4, v5, v6, v7, v8, v10);
    }
  }
}

void ot::AppMetricsManager::SetSrpPortIfSrpSerivceData(ot::AppMetricsManager *this, const unsigned __int8 *a2, uint64_t a3, const unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  for (i = 0; i < a3; ++i)
  {
    v10 = a2[i] | (v10 << 8);
  }

  if (v10 == 93)
  {
    if (a5 >= 2u)
    {
      *(this + 340) = _byteswap_ushort(*&a4[a5 - 2]);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("AppMetrics", "Extracted port from aServerData: %u", a3, a4, a5, a6, a7, a8, *(this + 340));
    }

    else
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("AppMetrics", "Server data too short to extract port", a3, a4, a5, a6, a7, a8, v8);
    }
  }
}

uint64_t ot::AppMetricsManager::GetThreadReachabilityStatusBitmaps(ot::AppMetricsManager *this, const unint64_t *a2, const BOOL *a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v17 = this;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = a6;
  if (!ot::AppMetricsManager::GetIsPrimaryResident(this))
  {
    return 0;
  }

  v11 = otPlatTimeGet();
  for (i = 0; i < 0x10u; ++i)
  {
    if (*(this + i + 86) && v11 - *(this + i + 86) <= 0x1C9C380)
    {
      *v14 |= 1 << i;
    }

    if (*(this + i + 102) && v11 - *(this + i + 102) <= 0x1C9C380)
    {
      *v13 |= 1 << i;
    }

    if (*(this + i + 118) && v11 - *(this + i + 118) <= 0x1C9C380)
    {
      *v12 |= 1 << i;
    }
  }

  if (std::map<unsigned long long,ot::appPacketInfo>::count[abi:dn200100](&unk_1004E9F00, v16))
  {
    v6 = std::map<unsigned long long,ot::appPacketInfo>::operator[](&unk_1004E9F00, v16);
    memcpy(__dst, v6, sizeof(__dst));
    *v13 |= __dst[3];
    if (*v15)
    {
      return __dst[4];
    }

    else
    {
      return 1;
    }
  }

  else if (*v15)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

ot::Spinel::SpinelInterface *std::deque<unsigned long long>::~deque[abi:dn200100](ot::Spinel::SpinelInterface *a1)
{
  std::deque<unsigned long long>::~deque[abi:dn200100](a1);
  return a1;
}

{
  std::deque<unsigned long long>::clear(a1);
  std::string::__annotate_delete[abi:dn200100]();
  v5 = std::__split_buffer<unsigned long long *>::begin[abi:dn200100](a1);
  v4 = std::__split_buffer<unsigned long long *>::end[abi:dn200100](a1);
  while (v5 != v4)
  {
    ot::Spinel::SpinelInterface::~SpinelInterface(a1);
    std::allocator_traits<std::allocator<unsigned long long>>::deallocate[abi:dn200100](v1, *v5++);
  }

  std::__split_buffer<unsigned long long *>::~__split_buffer(a1);
  return a1;
}

void std::deque<unsigned long long>::clear(ot::Spinel::SpinelInterface *a1)
{
  v11 = a1;
  std::string::__annotate_delete[abi:dn200100]();
  ot::Spinel::SpinelInterface::~SpinelInterface(a1);
  v10 = v1;
  v9[0] = std::deque<unsigned long long>::begin[abi:dn200100](a1);
  v9[1] = v2;
  v8[0] = std::deque<unsigned long long>::end[abi:dn200100](a1);
  v8[1] = v3;
  while (std::operator!=[abi:dn200100](v9, v8))
  {
    std::__split_buffer<unsigned long long *>::begin[abi:dn200100](v9);
    std::allocator_traits<std::allocator<unsigned long long>>::destroy[abi:dn200100]<unsigned long long,0>();
    std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>::operator++[abi:dn200100](v9);
  }

  *std::deque<unsigned long long>::__size[abi:dn200100](a1) = 0;
  while (std::__split_buffer<unsigned long long *>::size[abi:dn200100](a1) > 2)
  {
    v6 = v10;
    v4 = std::__split_buffer<unsigned long long *>::begin[abi:dn200100](a1);
    std::allocator_traits<std::allocator<unsigned long long>>::deallocate[abi:dn200100](v6, *v4);
    std::__split_buffer<unsigned long long *>::pop_front[abi:dn200100](a1);
  }

  v5 = std::__split_buffer<unsigned long long *>::size[abi:dn200100](a1);
  if (v5 == 1)
  {
    *(a1 + 4) = 256;
  }

  else if (v5 == 2)
  {
    *(a1 + 4) = 512;
  }

  std::string::__annotate_shrink[abi:dn200100]();
}

void **std::__split_buffer<unsigned long long *>::~__split_buffer(void **a1)
{
  std::__split_buffer<unsigned long long *>::~__split_buffer(a1);
  return a1;
}

{
  std::__split_buffer<unsigned long long *>::clear[abi:dn200100](a1);
  if (*a1)
  {
    v2 = *a1;
    std::__split_buffer<unsigned long long *>::capacity[abi:dn200100](a1);
    std::allocator_traits<std::allocator<unsigned long long>>::deallocate[abi:dn200100](a1, v2);
  }

  return a1;
}

{
  std::__split_buffer<unsigned long long *>::~__split_buffer(a1);
  return a1;
}

{
  std::__split_buffer<unsigned long long *>::clear[abi:dn200100](a1);
  if (*a1)
  {
    v3 = a1[4];
    v2 = *a1;
    std::__split_buffer<unsigned long long *>::capacity[abi:dn200100](a1);
    std::allocator_traits<std::allocator<unsigned long long>>::deallocate[abi:dn200100](v3, v2);
  }

  return a1;
}

uint64_t std::deque<unsigned long long>::begin[abi:dn200100](uint64_t a1)
{
  v3 = (std::__split_buffer<unsigned long long *>::begin[abi:dn200100](a1) + 8 * (*(a1 + 32) / 0x200uLL));
  if (std::__split_buffer<unsigned long long *>::empty[abi:dn200100](a1))
  {
    ot::Cli::Dataset::Dataset(&v4, v3, 0);
  }

  else
  {
    ot::Cli::Dataset::Dataset(&v4, v3, *v3 + 8 * (*(a1 + 32) % 0x200uLL));
  }

  return v4;
}

uint64_t std::deque<unsigned long long>::end[abi:dn200100](uint64_t a1)
{
  v4 = std::deque<unsigned long long>::size[abi:dn200100](a1) + *(a1 + 32);
  v3 = (std::__split_buffer<unsigned long long *>::begin[abi:dn200100](a1) + 8 * (v4 / 0x200));
  if (std::__split_buffer<unsigned long long *>::empty[abi:dn200100](a1))
  {
    ot::Cli::Dataset::Dataset(&v5, v3, 0);
  }

  else
  {
    ot::Cli::Dataset::Dataset(&v5, v3, *v3 + 8 * (v4 % 0x200));
  }

  return v5;
}

void std::allocator_traits<std::allocator<unsigned long long>>::destroy[abi:dn200100]<unsigned long long,0>()
{
  std::string::__annotate_shrink[abi:dn200100]();
}

{
  std::allocator_traits<std::allocator<unsigned long long>>::destroy[abi:dn200100]<unsigned long long,0>();
}

uint64_t std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>::operator++[abi:dn200100](uint64_t result)
{
  v1 = *(result + 8) + 8;
  *(result + 8) = v1;
  if ((v1 - **result) / 8 == 512)
  {
    *result += 8;
    *(result + 8) = **result;
  }

  return result;
}

void std::__split_buffer<unsigned long long *>::clear[abi:dn200100](uint64_t a1)
{
  std::__split_buffer<unsigned long long *>::__destruct_at_end[abi:dn200100](a1, *(a1 + 8));
}

{
  std::__split_buffer<unsigned long long *>::__destruct_at_end[abi:dn200100](a1, *(a1 + 8));
}

void std::__split_buffer<unsigned long long *>::__destruct_at_end[abi:dn200100](uint64_t a1, uint64_t a2)
{
  std::__split_buffer<unsigned long long *>::__destruct_at_end[abi:dn200100](a1, a2);
}

{
  while (a2 != *(a1 + 16))
  {
    v2 = (*(a1 + 16) - 8);
    *(a1 + 16) = v2;
    ot::Spinel::SpinelInterface::~SpinelInterface(v2);
    std::allocator_traits<std::allocator<unsigned long long *>>::destroy[abi:dn200100]<unsigned long long *,0>();
  }
}

{
  std::__split_buffer<unsigned long long *>::__destruct_at_end[abi:dn200100](a1, a2);
}

{
  while (a2 != *(a1 + 16))
  {
    v3 = *(a1 + 32);
    v2 = (*(a1 + 16) - 8);
    *(a1 + 16) = v2;
    ot::Spinel::SpinelInterface::~SpinelInterface(v2);
    std::allocator_traits<std::allocator<unsigned long long *>>::destroy[abi:dn200100]<unsigned long long *,0>();
  }
}

void std::allocator_traits<std::allocator<unsigned long long *>>::destroy[abi:dn200100]<unsigned long long *,0>()
{
  std::string::__annotate_shrink[abi:dn200100]();
}

{
  std::allocator_traits<std::allocator<unsigned long long *>>::destroy[abi:dn200100]<unsigned long long *,0>();
}

ot::Spinel::SpinelInterface *std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__tree(ot::Spinel::SpinelInterface *a1)
{
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__tree(a1);
  return a1;
}

{
  ot::OwnedPtr<ot::Message>::OwnedPtr(a1 + 1);
  std::allocator<char>::allocator[abi:dn200100](a1);
  *(a1 + 2) = 0;
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__end_node[abi:dn200100](a1);
  v5 = v1;
  ot::Spinel::SpinelInterface::~SpinelInterface(a1);
  v3 = v2;
  result = a1;
  *v3 = v5;
  return result;
}

ot::Spinel::SpinelInterface *std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::~__tree(ot::Spinel::SpinelInterface *a1)
{
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::~__tree(a1);
  return a1;
}

{
  v1 = std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__root[abi:dn200100](a1);
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::destroy(a1, v1);
  return a1;
}

void std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::destroy(ot::Spinel::SpinelInterface *a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::destroy(a1, a2[1]);
    ot::Spinel::SpinelInterface::~SpinelInterface(a1);
    v6 = v2;
    v4 = v2;
    std::string::__get_short_pointer[abi:dn200100]((a2 + 4));
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>::destroy[abi:dn200100]<std::pair<unsigned long long const,ot::appPacketInfo>,void,0>(v4, v3);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>::deallocate[abi:dn200100](v6, a2);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>::destroy[abi:dn200100]<std::pair<unsigned long long const,ot::appPacketInfo>,void,0>(uint64_t a1, uint64_t a2)
{
  std::__destroy_at[abi:dn200100]<std::pair<unsigned long long const,ot::appPacketInfo>,0>(a2);
}

{
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>::destroy[abi:dn200100]<std::pair<unsigned long long const,ot::appPacketInfo>,void,0>(a1, a2);
}

void std::__destroy_at[abi:dn200100]<std::pair<unsigned long long const,ot::appPacketInfo>,0>(uint64_t a1)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__memory/construct_at.h:65: assertion __loc != nullptr failed: null pointer given to destroy_at\n");
  }
}

ot::Spinel::SpinelInterface *std::deque<unsigned long long>::deque[abi:dn200100](ot::Spinel::SpinelInterface *a1)
{
  std::deque<unsigned long long>::deque[abi:dn200100](a1);
  return a1;
}

{
  std::__split_buffer<unsigned long long *>::__split_buffer[abi:dn200100](a1);
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  std::allocator<char>::allocator[abi:dn200100](a1);
  std::string::__annotate_shrink[abi:dn200100]();
  return a1;
}

ot::Spinel::SpinelInterface *std::__split_buffer<unsigned long long *>::__split_buffer[abi:dn200100](ot::Spinel::SpinelInterface *a1)
{
  std::__split_buffer<unsigned long long *>::__split_buffer[abi:dn200100](a1);
  return a1;
}

{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  std::allocator<char>::allocator[abi:dn200100](a1);
  return a1;
}

ot::Spinel::SpinelInterface *std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::~__tree(ot::Spinel::SpinelInterface *a1)
{
  std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::~__tree(a1);
  return a1;
}

{
  v1 = std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__root[abi:dn200100](a1);
  std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::destroy(a1, v1);
  return a1;
}

void std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::destroy(ot::Spinel::SpinelInterface *a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::destroy(a1, a2[1]);
    ot::Spinel::SpinelInterface::~SpinelInterface(a1);
    v6 = v2;
    v4 = v2;
    std::string::__get_short_pointer[abi:dn200100]((a2 + 28));
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>>::destroy[abi:dn200100]<std::pair<ot::Ip6::InterfaceIdentifier const,ot::matterSubscriptionInfo>,void,0>(v4, v3);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>>::deallocate[abi:dn200100](v6, a2);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>>::destroy[abi:dn200100]<std::pair<ot::Ip6::InterfaceIdentifier const,ot::matterSubscriptionInfo>,void,0>(uint64_t a1, uint64_t a2)
{
  std::__destroy_at[abi:dn200100]<std::pair<unsigned long long const,ot::appPacketInfo>,0>(a2);
}

{
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>>::destroy[abi:dn200100]<std::pair<ot::Ip6::InterfaceIdentifier const,ot::matterSubscriptionInfo>,void,0>(a1, a2);
}

ot::Spinel::SpinelInterface *std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::~__tree(ot::Spinel::SpinelInterface *a1)
{
  std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::~__tree(a1);
  return a1;
}

{
  v1 = std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__root[abi:dn200100](a1);
  std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::destroy(a1, v1);
  return a1;
}

void std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::destroy(ot::Spinel::SpinelInterface *a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::destroy(a1, a2[1]);
    ot::Spinel::SpinelInterface::~SpinelInterface(a1);
    v6 = v2;
    v4 = v2;
    std::string::__get_short_pointer[abi:dn200100]((a2 + 25));
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>>::destroy[abi:dn200100]<std::pair<ot::Ip6::Address const,ot::Ip6::InterfaceIdentifier>,void,0>(v4, v3);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>>::deallocate[abi:dn200100](v6, a2);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>>::destroy[abi:dn200100]<std::pair<ot::Ip6::Address const,ot::Ip6::InterfaceIdentifier>,void,0>(uint64_t a1, uint64_t a2)
{
  std::__destroy_at[abi:dn200100]<std::pair<unsigned long long const,ot::appPacketInfo>,0>(a2);
}

{
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>>::destroy[abi:dn200100]<std::pair<ot::Ip6::Address const,ot::Ip6::InterfaceIdentifier>,void,0>(a1, a2);
}

void std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::clear(ot::Spinel::SpinelInterface *a1)
{
  v1 = std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__root[abi:dn200100](a1);
  std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::destroy(a1, v1);
  *std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::size[abi:dn200100](a1) = 0;
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__end_node[abi:dn200100](a1);
  v5 = v2;
  ot::Spinel::SpinelInterface::~SpinelInterface(a1);
  *v3 = v5;
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__end_node[abi:dn200100](a1);
  *v4 = 0;
}

void std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::clear(ot::Spinel::SpinelInterface *a1)
{
  v1 = std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__root[abi:dn200100](a1);
  std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::destroy(a1, v1);
  *std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::size[abi:dn200100](a1) = 0;
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__end_node[abi:dn200100](a1);
  v5 = v2;
  ot::Spinel::SpinelInterface::~SpinelInterface(a1);
  *v3 = v5;
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__end_node[abi:dn200100](a1);
  *v4 = 0;
}

void std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::clear(ot::Spinel::SpinelInterface *a1)
{
  v1 = std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__root[abi:dn200100](a1);
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::destroy(a1, v1);
  *std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::size[abi:dn200100](a1) = 0;
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__end_node[abi:dn200100](a1);
  v5 = v2;
  ot::Spinel::SpinelInterface::~SpinelInterface(a1);
  *v3 = v5;
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__end_node[abi:dn200100](a1);
  *v4 = 0;
}

uint64_t std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::begin[abi:dn200100](ot::Spinel::SpinelInterface *a1)
{
  ot::Spinel::SpinelInterface::~SpinelInterface(a1);
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v3, *v1);
  return v3;
}

uint64_t std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::end[abi:dn200100](uint64_t a1)
{
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__end_node[abi:dn200100](a1);
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v3, v1);
  return v3;
}

uint64_t *std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>::operator++[abi:dn200100](uint64_t *a1)
{
  v1 = std::__tree_next_iter[abi:dn200100]<std::__tree_end_node<std::__tree_node_base<void *> *> *,std::__tree_node_base<void *> *>(*a1);
  result = a1;
  *a1 = v1;
  return result;
}

void *std::__tree_next_iter[abi:dn200100]<std::__tree_end_node<std::__tree_node_base<void *> *> *,std::__tree_node_base<void *> *>(uint64_t a1)
{
  v3 = a1;
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:194: assertion __x != nullptr failed: node shouldn't be null\n");
  }

  if (*(v3 + 8))
  {
    return std::__tree_min[abi:dn200100]<std::__tree_node_base<void *> *>(*(v3 + 8));
  }

  for (i = std::__tree_is_left_child[abi:dn200100]<std::__tree_node_base<void *> *>(v3); !i; i = std::__tree_is_left_child[abi:dn200100]<std::__tree_node_base<void *> *>(v3))
  {
    v3 = std::__split_buffer<unsigned long long *>::end[abi:dn200100](v3);
  }

  return *(v3 + 16);
}

void *std::__tree_min[abi:dn200100]<std::__tree_node_base<void *> *>(void *a1)
{
  v2 = a1;
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:166: assertion __x != nullptr failed: Root node shouldn't be null\n");
  }

  while (*v2)
  {
    v2 = *v2;
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__count_unique<unsigned long long>(ot::Spinel::SpinelInterface *a1, void *a2)
{
  v6 = std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__root[abi:dn200100](a1);
  while (v6)
  {
    ot::Spinel::SpinelInterface::~SpinelInterface(a1);
    if (std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>::operator()[abi:dn200100](v2, a2, (v6 + 4)))
    {
      v6 = *v6;
    }

    else
    {
      ot::Spinel::SpinelInterface::~SpinelInterface(a1);
      if (!std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>::operator()[abi:dn200100](v3, (v6 + 4), a2))
      {
        return 1;
      }

      v6 = v6[1];
    }
  }

  return 0;
}

{
  return std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__count_unique<unsigned long long>(a1, a2);
}

uint64_t std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(ot::Spinel::SpinelInterface *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[5] = a1;
  v11[4] = a2;
  v11[3] = a3;
  v11[2] = a4;
  v11[1] = a5;
  v10 = std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__find_equal<unsigned long long>(a1, v11, a2);
  v9 = *v10;
  v8 = 0;
  if (!*v10)
  {
    std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1);
  }

  ot::OwnedPtr<ot::Message>::OwnedPtr(&v7, v9);
  std::pair<std::__tree_iterator<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *> *,long>,BOOL>::pair[abi:dn200100]<std::__tree_iterator<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *> *,long>,BOOL &,0>(&v12, &v7, &v8);
  return v12;
}

{
  return std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1, a2, a3, a4, a5);
}

void *std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__find_equal<unsigned long long>(ot::Spinel::SpinelInterface *a1, uint64_t a2, void *a3)
{
  v10 = std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__root[abi:dn200100](a1);
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__root_ptr[abi:dn200100](a1);
  v9 = v3;
  if (v10)
  {
    while (1)
    {
      while (1)
      {
        ot::Spinel::SpinelInterface::~SpinelInterface(a1);
        if (!std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>::operator()[abi:dn200100](v4, a3, (v10 + 4)))
        {
          break;
        }

        if (!*v10)
        {
          *a2 = v10;
          return *a2;
        }

        v9 = v10;
        v10 = *v10;
      }

      ot::Spinel::SpinelInterface::~SpinelInterface(a1);
      if (!std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>::operator()[abi:dn200100](v5, (v10 + 4), a3))
      {
        break;
      }

      if (!v10[1])
      {
        *a2 = v10;
        return v10 + 1;
      }

      v9 = v10 + 1;
      v10 = v10[1];
    }

    *a2 = v10;
    return v9;
  }

  else
  {
    std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__end_node[abi:dn200100](a1);
    *a2 = v6;
    return *a2;
  }
}

{
  return std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__find_equal<unsigned long long>(a1, a2, a3);
}

void std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(ot::Spinel::SpinelInterface *a1)
{
  ot::Spinel::SpinelInterface::~SpinelInterface(a1);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>::allocate[abi:dn200100](v1, 1uLL);
}

{
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1);
}

void *std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__insert_node_at(ot::Spinel::SpinelInterface *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  ot::Spinel::SpinelInterface::~SpinelInterface(a1);
  if (**v4)
  {
    ot::Spinel::SpinelInterface::~SpinelInterface(a1);
    v9 = **v5;
    ot::Spinel::SpinelInterface::~SpinelInterface(a1);
    *v6 = v9;
  }

  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__end_node[abi:dn200100](a1);
  std::__tree_balance_after_insert[abi:dn200100]<std::__tree_node_base<void *> *>(*v7, *a3);
  result = std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::size[abi:dn200100](a1);
  ++*result;
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>>::release[abi:dn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  return v2;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>>::~unique_ptr[abi:dn200100](uint64_t *a1)
{
  std::unique_ptr<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>>::~unique_ptr[abi:dn200100](a1);
  return a1;
}

{
  std::unique_ptr<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>>::reset[abi:dn200100](a1, 0);
  return a1;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>>::unique_ptr[abi:dn200100]<true,void>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  std::unique_ptr<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>>::unique_ptr[abi:dn200100]<true,void>(a1, a2, a3);
  return a1;
}

{
  *a1 = a2;
  *(a1 + 8) = *a3;
  std::__compressed_pair_padding<std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>,false>::__compressed_pair_padding((a1 + 17));
  return a1;
}

void *std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>::construct[abi:dn200100]<std::pair<unsigned long long const,ot::appPacketInfo>,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>,0>(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  return std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>::construct[abi:dn200100]<std::pair<unsigned long long const,ot::appPacketInfo>,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1, a2, a3, a4);
}

{
  return std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>::construct[abi:dn200100]<std::pair<unsigned long long const,ot::appPacketInfo>,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>,0>(a1, a2, a3, a4);
}

void std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>::allocate[abi:dn200100](uint64_t a1, unint64_t a2)
{
  if (a2 > std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>::max_size[abi:dn200100]<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>,0>())
  {
    std::__throw_bad_array_new_length[abi:dn200100]();
  }

  std::__libcpp_allocate[abi:dn200100]<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>();
}

uint64_t std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>::max_size[abi:dn200100]<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>,0>()
{
  return std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>::max_size[abi:dn200100]();
}

{
  return std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>::max_size[abi:dn200100]<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>,0>();
}

uint64_t std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>::__tree_node_destructor[abi:dn200100](uint64_t result, uint64_t a2, char a3)
{
  *result = a2;
  *(result + 8) = a3 & 1;
  return result;
}

_BYTE *std::__compressed_pair_padding<std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>,false>::__compressed_pair_padding(_BYTE *result)
{
  v2 = result;
  do
  {
    *v2 = 0;
  }

  while (++v2 - (result + 7));
  return result;
}

void *std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>::construct[abi:dn200100]<std::pair<unsigned long long const,ot::appPacketInfo>,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  return std::pair<unsigned long long const,ot::appPacketInfo>::pair[abi:dn200100]<unsigned long long const&>(a2, *a4);
}

{
  return std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>::construct[abi:dn200100]<std::pair<unsigned long long const,ot::appPacketInfo>,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1, a2, a3, a4);
}

void *std::pair<unsigned long long const,ot::appPacketInfo>::pair[abi:dn200100]<unsigned long long const&>(void *a1, uint64_t a2)
{
  v4 = a2;
  _ZNSt3__14pairIKyN2ot13appPacketInfoEEC1B8dn200100IJRS1_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNS8_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSH_IJXspT2_EEEE(a1, &v4);
  return a1;
}

void *_ZNSt3__14pairIKyN2ot13appPacketInfoEEC2B8dn200100IJRS1_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNS8_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSH_IJXspT2_EEEE(void *a1, uint64_t a2)
{
  *a1 = *std::get[abi:dn200100]<0ul,unsigned long long const&>(a2);
  memset(a1 + 1, 0, 0x28uLL);
  return a1;
}

void std::__tree_balance_after_insert[abi:dn200100]<std::__tree_node_base<void *> *>(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:280: assertion __root != nullptr failed: Root of the tree shouldn't be null\n");
  }

  if (!a2)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:281: assertion __x != nullptr failed: Can't attach null node to a leaf\n");
  }

  *(a2 + 24) = a2 == a1;
  while (1)
  {
    v10 = 0;
    if (a2 != a1)
    {
      v10 = *(std::__split_buffer<unsigned long long *>::end[abi:dn200100](a2) + 24) ^ 1;
    }

    if ((v10 & 1) == 0)
    {
      break;
    }

    v2 = std::__split_buffer<unsigned long long *>::end[abi:dn200100](a2);
    if (std::__tree_is_left_child[abi:dn200100]<std::__tree_node_base<void *> *>(v2))
    {
      v3 = std::__split_buffer<unsigned long long *>::end[abi:dn200100](a2);
      v12 = *(std::__split_buffer<unsigned long long *>::end[abi:dn200100](v3) + 8);
      if (!v12 || (*(v12 + 24) & 1) != 0)
      {
        if (!std::__tree_is_left_child[abi:dn200100]<std::__tree_node_base<void *> *>(a2))
        {
          a2 = std::__split_buffer<unsigned long long *>::end[abi:dn200100](a2);
          std::__tree_left_rotate[abi:dn200100]<std::__tree_node_base<void *> *>(a2);
        }

        v5 = std::__split_buffer<unsigned long long *>::end[abi:dn200100](a2);
        *(v5 + 24) = 1;
        v6 = std::__split_buffer<unsigned long long *>::end[abi:dn200100](v5);
        *(v6 + 24) = 0;
        std::__tree_right_rotate[abi:dn200100]<std::__tree_node_base<void *> *>(v6);
        return;
      }

      v4 = std::__split_buffer<unsigned long long *>::end[abi:dn200100](a2);
      *(v4 + 24) = 1;
      a2 = std::__split_buffer<unsigned long long *>::end[abi:dn200100](v4);
      *(a2 + 24) = a2 == a1;
      *(v12 + 24) = 1;
    }

    else
    {
      v11 = **(std::__split_buffer<unsigned long long *>::end[abi:dn200100](a2) + 16);
      if (!v11 || (*(v11 + 24) & 1) != 0)
      {
        if (std::__tree_is_left_child[abi:dn200100]<std::__tree_node_base<void *> *>(a2))
        {
          a2 = std::__split_buffer<unsigned long long *>::end[abi:dn200100](a2);
          std::__tree_right_rotate[abi:dn200100]<std::__tree_node_base<void *> *>(a2);
        }

        v8 = std::__split_buffer<unsigned long long *>::end[abi:dn200100](a2);
        *(v8 + 24) = 1;
        v9 = std::__split_buffer<unsigned long long *>::end[abi:dn200100](v8);
        *(v9 + 24) = 0;
        std::__tree_left_rotate[abi:dn200100]<std::__tree_node_base<void *> *>(v9);
        return;
      }

      v7 = std::__split_buffer<unsigned long long *>::end[abi:dn200100](a2);
      *(v7 + 24) = 1;
      a2 = std::__split_buffer<unsigned long long *>::end[abi:dn200100](v7);
      *(a2 + 24) = a2 == a1;
      *(v11 + 24) = 1;
    }
  }
}

uint64_t std::__tree_left_rotate[abi:dn200100]<std::__tree_node_base<void *> *>(uint64_t a1)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:237: assertion __x != nullptr failed: node shouldn't be null\n");
  }

  if (!*(a1 + 8))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:238: assertion __x->__right_ != nullptr failed: node should have a right child\n");
  }

  v2 = *(a1 + 8);
  *(a1 + 8) = *v2;
  if (*(a1 + 8))
  {
    std::__tree_node_base<void *>::__set_parent[abi:dn200100](*(a1 + 8), a1);
  }

  v2[2] = *(a1 + 16);
  if (std::__tree_is_left_child[abi:dn200100]<std::__tree_node_base<void *> *>(a1))
  {
    **(a1 + 16) = v2;
  }

  else
  {
    *(std::__split_buffer<unsigned long long *>::end[abi:dn200100](a1) + 8) = v2;
  }

  *v2 = a1;
  return std::__tree_node_base<void *>::__set_parent[abi:dn200100](a1, v2);
}

uint64_t std::__tree_right_rotate[abi:dn200100]<std::__tree_node_base<void *> *>(uint64_t *a1)
{
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:256: assertion __x != nullptr failed: node shouldn't be null\n");
  }

  if (!*a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:257: assertion __x->__left_ != nullptr failed: node should have a left child\n");
  }

  v2 = *a1;
  *a1 = *(*a1 + 8);
  if (*a1)
  {
    std::__tree_node_base<void *>::__set_parent[abi:dn200100](*a1, a1);
  }

  *(v2 + 16) = a1[2];
  if (std::__tree_is_left_child[abi:dn200100]<std::__tree_node_base<void *> *>(a1))
  {
    *a1[2] = v2;
  }

  else
  {
    *(std::__split_buffer<unsigned long long *>::end[abi:dn200100](a1) + 8) = v2;
  }

  *(v2 + 8) = a1;
  return std::__tree_node_base<void *>::__set_parent[abi:dn200100](a1, v2);
}

void std::unique_ptr<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>>::reset[abi:dn200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>::operator()[abi:dn200100]((a1 + 1), v2);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>::operator()[abi:dn200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v3 = *a1;
    std::string::__get_short_pointer[abi:dn200100]((a2 + 32));
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>::destroy[abi:dn200100]<std::pair<unsigned long long const,ot::appPacketInfo>,void,0>(v3, v2);
  }

  if (a2)
  {
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>::deallocate[abi:dn200100](*a1, a2);
  }
}

uint64_t std::pair<std::__tree_iterator<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *> *,long>,BOOL>::pair[abi:dn200100]<std::__tree_iterator<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *> *,long>,BOOL &,0>(uint64_t result, void *a2, _BYTE *a3)
{
  *result = *a2;
  *(result + 8) = *a3 & 1;
  return result;
}

void *std::tuple<unsigned long long const&>::tuple[abi:dn200100]<std::_And,0>(void *a1, uint64_t a2)
{
  std::tuple<unsigned long long const&>::tuple[abi:dn200100]<std::_And,0>(a1, a2);
  return a1;
}

{
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJRKyEEC1B8dn200100IJLm0EEJS4_EJEJEJS4_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS8_IJDpT2_EEEDpOT3_(a1, a2);
  return a1;
}

unint64_t std::deque<unsigned long long>::front(uint64_t a1)
{
  if (std::deque<unsigned long long>::empty[abi:dn200100](a1))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/deque:1546: assertion !empty() failed: deque::front called on an empty deque\n");
  }

  return *(std::__split_buffer<unsigned long long *>::begin[abi:dn200100](a1) + 8 * (*(a1 + 32) / 0x200uLL)) + 8 * (*(a1 + 32) % 0x200uLL);
}

uint64_t std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__erase_unique<unsigned long long>(ot::Spinel::SpinelInterface *a1, void *a2)
{
  v6[2] = a1;
  v6[1] = a2;
  v6[0] = std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::find<unsigned long long>(a1, a2);
  v5 = std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::end[abi:dn200100](a1);
  if (std::operator==[abi:dn200100](v6, &v5))
  {
    return 0;
  }

  std::__map_iterator<std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>>::__map_iterator[abi:dn200100](&v4, v6[0]);
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::erase(a1, v4);
  return 1;
}

{
  return std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__erase_unique<unsigned long long>(a1, a2);
}

uint64_t std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::find<unsigned long long>(ot::Spinel::SpinelInterface *a1, void *a2)
{
  v15 = a1;
  v14 = a2;
  v9 = std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__root[abi:dn200100](a1);
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__end_node[abi:dn200100](a1);
  v13 = std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__lower_bound<unsigned long long>(a1, a2, v9, v2);
  v12 = std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::end[abi:dn200100](a1);
  LOBYTE(v11) = 0;
  if (std::operator!=[abi:dn200100](&v13, &v12))
  {
    ot::Spinel::SpinelInterface::~SpinelInterface(a1);
    v7 = v3;
    v6 = v14;
    v4 = std::__tree_iterator<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *> *,long>::operator*[abi:dn200100](&v13);
    v11 = !std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>::operator()[abi:dn200100](v7, v6, v4);
  }

  if (v11)
  {
    return v13;
  }

  else
  {
    return std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::end[abi:dn200100](a1);
  }
}

{
  return std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::find<unsigned long long>(a1, a2);
}

uint64_t std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::erase(ot::Spinel::SpinelInterface *a1, uint64_t a2)
{
  v10 = a2;
  v9 = std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>::__get_np[abi:dn200100](&v10);
  v11 = std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__remove_node_pointer(a1, v9);
  ot::Spinel::SpinelInterface::~SpinelInterface(a1);
  v8 = v2;
  v7 = v2;
  v3 = std::__tree_iterator<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *> *,long>::operator*[abi:dn200100](&v10);
  std::string::__get_short_pointer[abi:dn200100](v3);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>::destroy[abi:dn200100]<std::pair<unsigned long long const,ot::appPacketInfo>,void,0>(v7, v4);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *>>>::deallocate[abi:dn200100](v8, v9);
  return v11;
}

uint64_t std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__lower_bound<unsigned long long>(ot::Spinel::SpinelInterface *a1, void *a2, void *a3, uint64_t a4)
{
  while (a3)
  {
    ot::Spinel::SpinelInterface::~SpinelInterface(a1);
    if (std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>::operator()[abi:dn200100](v4, (a3 + 4), a2))
    {
      a3 = a3[1];
    }

    else
    {
      a4 = a3;
      a3 = *a3;
    }
  }

  ot::OwnedPtr<ot::Message>::OwnedPtr(&v10, a4);
  return v10;
}

{
  return std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__lower_bound<unsigned long long>(a1, a2, a3, a4);
}

uint64_t std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__remove_node_pointer(ot::Spinel::SpinelInterface *a1, uint64_t a2)
{
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v10, a2);
  std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>::operator++[abi:dn200100](&v10);
  ot::Spinel::SpinelInterface::~SpinelInterface(a1);
  if (*v2 == a2)
  {
    v7 = v10;
    ot::Spinel::SpinelInterface::~SpinelInterface(a1);
    *v3 = v7;
  }

  v4 = std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::size[abi:dn200100](a1);
  --*v4;
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__end_node[abi:dn200100](a1);
  std::__tree_remove[abi:dn200100]<std::__tree_node_base<void *> *>(*v5, a2);
  return v10;
}

uint64_t std::__tree_remove[abi:dn200100]<std::__tree_node_base<void *> *>(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:336: assertion __root != nullptr failed: Root node should not be null\n");
  }

  if (!a2)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:337: assertion __z != nullptr failed: The node to remove should not be null\n");
  }

  if (!std::__tree_invariant[abi:dn200100]<std::__tree_node_base<void *> *>(v17))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:338: assertion std::__tree_invariant(__root) failed: The tree invariants should hold\n");
  }

  if (*a2 && *(a2 + 8))
  {
    v11 = std::__tree_next[abi:dn200100]<std::__tree_node_base<void *> *>(a2);
  }

  else
  {
    v11 = a2;
  }

  if (*v11)
  {
    v10 = *v11;
  }

  else
  {
    v10 = v11[1];
  }

  v13 = 0;
  if (v10)
  {
    *(v10 + 16) = v11[2];
  }

  result = std::__tree_is_left_child[abi:dn200100]<std::__tree_node_base<void *> *>(v11);
  if (result)
  {
    *v11[2] = v10;
    if (v11 == v17)
    {
      v17 = v10;
    }

    else
    {
      result = std::__split_buffer<unsigned long long *>::end[abi:dn200100](v11);
      v13 = *(result + 8);
    }
  }

  else
  {
    result = std::__split_buffer<unsigned long long *>::end[abi:dn200100](v11);
    *(result + 8) = v10;
    v13 = *v11[2];
  }

  v12 = v11[3] & 1;
  if (v11 != a2)
  {
    v11[2] = *(a2 + 16);
    if (std::__tree_is_left_child[abi:dn200100]<std::__tree_node_base<void *> *>(a2))
    {
      *v11[2] = v11;
    }

    else
    {
      *(std::__split_buffer<unsigned long long *>::end[abi:dn200100](v11) + 8) = v11;
    }

    *v11 = *a2;
    result = std::__tree_node_base<void *>::__set_parent[abi:dn200100](*v11, v11);
    v11[1] = *(a2 + 8);
    if (v11[1])
    {
      result = std::__tree_node_base<void *>::__set_parent[abi:dn200100](v11[1], v11);
    }

    *(v11 + 24) = *(a2 + 24) & 1;
    if (v17 == a2)
    {
      v17 = v11;
    }
  }

  if ((v12 & 1) != 0 && v17)
  {
    if (v10)
    {
      *(v10 + 24) = 1;
    }

    else
    {
      for (i = std::__tree_is_left_child[abi:dn200100]<std::__tree_node_base<void *> *>(v13); ; i = std::__tree_is_left_child[abi:dn200100]<std::__tree_node_base<void *> *>(v8))
      {
        while (!i)
        {
          if ((v13[3] & 1) == 0)
          {
            *(v13 + 24) = 1;
            *(std::__split_buffer<unsigned long long *>::end[abi:dn200100](v13) + 24) = 0;
            v4 = std::__split_buffer<unsigned long long *>::end[abi:dn200100](v13);
            std::__tree_left_rotate[abi:dn200100]<std::__tree_node_base<void *> *>(v4);
            if (v17 == *v13)
            {
              v17 = v13;
            }

            v13 = *(*v13 + 8);
          }

          if (*v13 && (*(*v13 + 24) & 1) == 0 || v13[1] && (*(v13[1] + 24) & 1) == 0)
          {
            if (!v13[1] || (*(v13[1] + 24) & 1) != 0)
            {
              *(*v13 + 24) = 1;
              *(v13 + 24) = 0;
              std::__tree_right_rotate[abi:dn200100]<std::__tree_node_base<void *> *>(v13);
              v13 = std::__split_buffer<unsigned long long *>::end[abi:dn200100](v13);
            }

            *(v13 + 24) = *(std::__split_buffer<unsigned long long *>::end[abi:dn200100](v13) + 24) & 1;
            *(std::__split_buffer<unsigned long long *>::end[abi:dn200100](v13) + 24) = 1;
            *(v13[1] + 24) = 1;
            v5 = std::__split_buffer<unsigned long long *>::end[abi:dn200100](v13);
            return std::__tree_left_rotate[abi:dn200100]<std::__tree_node_base<void *> *>(v5);
          }

          *(v13 + 24) = 0;
          result = std::__split_buffer<unsigned long long *>::end[abi:dn200100](v13);
          v14 = result;
          if (result == v17 || (*(result + 24) & 1) == 0)
          {
            *(result + 24) = 1;
            return result;
          }

          if (std::__tree_is_left_child[abi:dn200100]<std::__tree_node_base<void *> *>(result))
          {
            v9 = *(std::__split_buffer<unsigned long long *>::end[abi:dn200100](v14) + 8);
          }

          else
          {
            v9 = **(v14 + 16);
          }

          v13 = v9;
          i = std::__tree_is_left_child[abi:dn200100]<std::__tree_node_base<void *> *>(v9);
        }

        if ((v13[3] & 1) == 0)
        {
          *(v13 + 24) = 1;
          *(std::__split_buffer<unsigned long long *>::end[abi:dn200100](v13) + 24) = 0;
          v6 = std::__split_buffer<unsigned long long *>::end[abi:dn200100](v13);
          std::__tree_right_rotate[abi:dn200100]<std::__tree_node_base<void *> *>(v6);
          if (v17 == v13[1])
          {
            v17 = v13;
          }

          v13 = *v13[1];
        }

        if (*v13 && (*(*v13 + 24) & 1) == 0 || v13[1] && (*(v13[1] + 24) & 1) == 0)
        {
          break;
        }

        *(v13 + 24) = 0;
        result = std::__split_buffer<unsigned long long *>::end[abi:dn200100](v13);
        v15 = result;
        if ((*(result + 24) & 1) == 0 || result == v17)
        {
          *(result + 24) = 1;
          return result;
        }

        if (std::__tree_is_left_child[abi:dn200100]<std::__tree_node_base<void *> *>(result))
        {
          v8 = *(std::__split_buffer<unsigned long long *>::end[abi:dn200100](v15) + 8);
        }

        else
        {
          v8 = **(v15 + 16);
        }

        v13 = v8;
      }

      if (!*v13 || (*(*v13 + 24) & 1) != 0)
      {
        *(v13[1] + 24) = 1;
        *(v13 + 24) = 0;
        std::__tree_left_rotate[abi:dn200100]<std::__tree_node_base<void *> *>(v13);
        v13 = std::__split_buffer<unsigned long long *>::end[abi:dn200100](v13);
      }

      *(v13 + 24) = *(std::__split_buffer<unsigned long long *>::end[abi:dn200100](v13) + 24) & 1;
      *(std::__split_buffer<unsigned long long *>::end[abi:dn200100](v13) + 24) = 1;
      *(*v13 + 24) = 1;
      v7 = std::__split_buffer<unsigned long long *>::end[abi:dn200100](v13);
      return std::__tree_right_rotate[abi:dn200100]<std::__tree_node_base<void *> *>(v7);
    }
  }

  return result;
}

BOOL std::__tree_invariant[abi:dn200100]<std::__tree_node_base<void *> *>(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      return std::__tree_is_left_child[abi:dn200100]<std::__tree_node_base<void *> *>(a1) && (*(a1 + 24) & 1) != 0 && std::__tree_sub_invariant<std::__tree_node_base<void *> *>(a1) != 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }
}

void *std::__tree_next[abi:dn200100]<std::__tree_node_base<void *> *>(uint64_t a1)
{
  v3 = a1;
  if (!a1)
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__tree:184: assertion __x != nullptr failed: node shouldn't be null\n");
  }

  if (*(v3 + 8))
  {
    return std::__tree_min[abi:dn200100]<std::__tree_node_base<void *> *>(*(v3 + 8));
  }

  for (i = std::__tree_is_left_child[abi:dn200100]<std::__tree_node_base<void *> *>(v3); !i; i = std::__tree_is_left_child[abi:dn200100]<std::__tree_node_base<void *> *>(v3))
  {
    v3 = std::__split_buffer<unsigned long long *>::end[abi:dn200100](v3);
  }

  return std::__split_buffer<unsigned long long *>::end[abi:dn200100](v3);
}

uint64_t std::__tree_sub_invariant<std::__tree_node_base<void *> *>(void *a1)
{
  if (a1)
  {
    if (!*a1 || *(*a1 + 16) == a1)
    {
      if (!a1[1] || *(a1[1] + 16) == a1)
      {
        if (*a1 == a1[1] && *a1)
        {
          return 0;
        }

        else
        {
          if ((a1[3] & 1) == 0)
          {
            if (*a1 && (*(*a1 + 24) & 1) == 0)
            {
              return 0;
            }

            if (a1[1] && (*(a1[1] + 24) & 1) == 0)
            {
              return 0;
            }
          }

          v2 = std::__tree_sub_invariant<std::__tree_node_base<void *> *>(*a1);
          if (v2)
          {
            if (v2 == std::__tree_sub_invariant<std::__tree_node_base<void *> *>(a1[1]))
            {
              return (v2 + (a1[3] & 1));
            }

            else
            {
              return 0;
            }
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }
}

{
  return std::__tree_sub_invariant<std::__tree_node_base<void *> *>(a1);
}

uint64_t std::deque<unsigned long long>::pop_front(ot::Spinel::SpinelInterface *a1)
{
  if (std::deque<unsigned long long>::empty[abi:dn200100](a1))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~B_v8ugBWuesEGt82XZilQQy1Qo98BCZ2VzVe8mQ/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/deque:2289: assertion !empty() failed: deque::pop_front called on an empty deque\n");
  }

  std::deque<unsigned long long>::size[abi:dn200100](a1);
  v5 = *(a1 + 4);
  ot::Spinel::SpinelInterface::~SpinelInterface(a1);
  v1 = std::__split_buffer<unsigned long long *>::begin[abi:dn200100](a1);
  ot::Spinel::SpinelInterface::~SpinelInterface((*(v1 + 8 * (*(a1 + 4) / 0x200uLL)) + 8 * (*(a1 + 4) % 0x200uLL)));
  std::allocator_traits<std::allocator<unsigned long long>>::destroy[abi:dn200100]<unsigned long long,0>();
  v2 = std::deque<unsigned long long>::__size[abi:dn200100](a1);
  --*v2;
  ++*(a1 + 4);
  std::deque<unsigned long long>::__annotate_shrink_front[abi:dn200100]();
  return std::deque<unsigned long long>::__maybe_remove_front_spare[abi:dn200100](a1, 1);
}

uint64_t std::deque<unsigned long long>::__maybe_remove_front_spare[abi:dn200100](ot::Spinel::SpinelInterface *a1, char a2)
{
  if (std::deque<unsigned long long>::__front_spare_blocks[abi:dn200100](a1) < 2 && ((a2 & 1) != 0 || !std::deque<unsigned long long>::__front_spare_blocks[abi:dn200100](a1)))
  {
    v8 = 0;
  }

  else
  {
    std::deque<unsigned long long>::__annotate_whole_block[abi:dn200100]();
    ot::Spinel::SpinelInterface::~SpinelInterface(a1);
    v5 = v2;
    v3 = std::__split_buffer<unsigned long long *>::begin[abi:dn200100](a1);
    std::allocator_traits<std::allocator<unsigned long long>>::deallocate[abi:dn200100](v5, *v3);
    std::__split_buffer<unsigned long long *>::pop_front[abi:dn200100](a1);
    *(a1 + 4) -= 512;
    v8 = 1;
  }

  return v8 & 1;
}

void *std::deque<unsigned long long>::push_back(ot::Spinel::SpinelInterface *a1, void *a2)
{
  v11 = a1;
  v10 = a2;
  ot::Spinel::SpinelInterface::~SpinelInterface(a1);
  v9 = v2;
  if (!std::deque<unsigned long long>::__back_spare[abi:dn200100](a1))
  {
    std::deque<unsigned long long>::__add_back_capacity(a1);
  }

  std::string::__annotate_shrink[abi:dn200100]();
  v6 = v9;
  v8[0] = std::deque<unsigned long long>::end[abi:dn200100](a1);
  v8[1] = v3;
  v4 = std::__split_buffer<unsigned long long *>::begin[abi:dn200100](v8);
  std::allocator_traits<std::allocator<unsigned long long>>::construct[abi:dn200100]<unsigned long long,unsigned long long const&,0>(v6, v4, v10);
  result = std::deque<unsigned long long>::__size[abi:dn200100](a1);
  ++*result;
  return result;
}

uint64_t std::deque<unsigned long long>::__back_spare[abi:dn200100](uint64_t a1)
{
  v4 = std::deque<unsigned long long>::__capacity[abi:dn200100](a1);
  v3 = *(a1 + 32);
  return v4 - (v3 + std::deque<unsigned long long>::size[abi:dn200100](a1));
}

void std::deque<unsigned long long>::__add_back_capacity(ot::Spinel::SpinelInterface *a1)
{
  v11 = a1;
  ot::Spinel::SpinelInterface::~SpinelInterface(a1);
  v10 = v1;
  if (std::deque<unsigned long long>::__front_spare[abi:dn200100](a1) < 0x200)
  {
    v4 = std::__split_buffer<unsigned long long *>::size[abi:dn200100](a1);
    if (v4 < std::__split_buffer<unsigned long long *>::capacity[abi:dn200100](a1))
    {
      if (std::__split_buffer<unsigned long long *>::__back_spare[abi:dn200100](a1))
      {
        std::allocator_traits<std::allocator<unsigned long long>>::allocate[abi:dn200100](v10, 0x200uLL);
      }

      std::allocator_traits<std::allocator<unsigned long long>>::allocate[abi:dn200100](v10, 0x200uLL);
    }

    v7 = 2 * std::__split_buffer<unsigned long long *>::capacity[abi:dn200100](a1);
    v6 = 1;
    v3 = *std::max[abi:dn200100]<unsigned long>(&v7, &v6);
    v2 = std::__split_buffer<unsigned long long *>::size[abi:dn200100](a1);
    std::__split_buffer<unsigned long long *>::__split_buffer(v8, v3, v2, a1);
    std::allocator_traits<std::allocator<unsigned long long>>::allocate[abi:dn200100](v10, 0x200uLL);
  }

  *(a1 + 4) -= 512;
  v9 = *std::__split_buffer<unsigned long long *>::begin[abi:dn200100](a1);
  std::__split_buffer<unsigned long long *>::pop_front[abi:dn200100](a1);
  std::__split_buffer<unsigned long long *>::emplace_back<unsigned long long *&>(a1, &v9);
}

void std::allocator_traits<std::allocator<unsigned long long>>::construct[abi:dn200100]<unsigned long long,unsigned long long const&,0>(uint64_t a1, void *a2, void *a3)
{
  std::allocator<unsigned long long>::construct[abi:dn200100]<unsigned long long,unsigned long long const&>(a1, a2, a3);
}

{
  std::allocator_traits<std::allocator<unsigned long long>>::construct[abi:dn200100]<unsigned long long,unsigned long long const&,0>(a1, a2, a3);
}

uint64_t std::deque<unsigned long long>::__capacity[abi:dn200100](uint64_t a1)
{
  if (std::__split_buffer<unsigned long long *>::size[abi:dn200100](a1))
  {
    return (std::__split_buffer<unsigned long long *>::size[abi:dn200100](a1) << 9) - 1;
  }

  else
  {
    return 0;
  }
}

void std::__split_buffer<unsigned long long *>::emplace_back<unsigned long long *&>(uint64_t a1, void *a2)
{
  v15 = a1;
  v14 = a2;
  if (*(a1 + 16) == *(a1 + 24))
  {
    if (*(a1 + 8) > *a1)
    {
      v13 = ((*(a1 + 8) - *a1) / 8 + 1) / 2;
      *(a1 + 16) = std::move[abi:dn200100]<unsigned long long **,unsigned long long **>(*(a1 + 8), *(a1 + 16), (*(a1 + 8) - 8 * v13));
      *(a1 + 8) -= 8 * v13;
    }

    else
    {
      v11 = 2 * ((*(a1 + 24) - *a1) / 8);
      v10 = 1;
      v12 = *std::max[abi:dn200100]<unsigned long>(&v11, &v10);
      std::__split_buffer<unsigned long long *>::__split_buffer(&v6, v12, v12 / 4, a1);
      ot::OwnedPtr<ot::Message>::OwnedPtr(&v5, *(a1 + 8));
      ot::OwnedPtr<ot::Message>::OwnedPtr(&v4, *(a1 + 16));
      std::__split_buffer<unsigned long long *>::__construct_at_end<std::move_iterator<unsigned long long **>,0>(&v6, v5, v4);
      std::swap[abi:dn200100]<unsigned long long **>(a1, &v6);
      std::swap[abi:dn200100]<unsigned long long **>((a1 + 8), &v7);
      std::swap[abi:dn200100]<unsigned long long **>((a1 + 16), &v8);
      std::swap[abi:dn200100]<unsigned long long **>((a1 + 24), &v9);
      std::__split_buffer<unsigned long long *>::~__split_buffer(&v6);
    }
  }

  ot::Spinel::SpinelInterface::~SpinelInterface(*(a1 + 16));
  std::allocator_traits<std::allocator<unsigned long long *>>::construct[abi:dn200100]<unsigned long long *,unsigned long long *&,0>(a1, v2, v14);
  *(a1 + 16) += 8;
}

{
  std::__split_buffer<unsigned long long *>::emplace_back<unsigned long long *&>(a1, a2);
}

void std::__split_buffer<unsigned long long *>::emplace_back<unsigned long long *>(uint64_t a1, void *a2)
{
  v15 = a1;
  v14 = a2;
  if (*(a1 + 16) == *(a1 + 24))
  {
    if (*(a1 + 8) > *a1)
    {
      v13 = ((*(a1 + 8) - *a1) / 8 + 1) / 2;
      *(a1 + 16) = std::move[abi:dn200100]<unsigned long long **,unsigned long long **>(*(a1 + 8), *(a1 + 16), (*(a1 + 8) - 8 * v13));
      *(a1 + 8) -= 8 * v13;
    }

    else
    {
      v11 = 2 * ((*(a1 + 24) - *a1) / 8);
      v10 = 1;
      v12 = *std::max[abi:dn200100]<unsigned long>(&v11, &v10);
      std::__split_buffer<unsigned long long *>::__split_buffer(&v6, v12, v12 / 4, a1);
      ot::OwnedPtr<ot::Message>::OwnedPtr(&v5, *(a1 + 8));
      ot::OwnedPtr<ot::Message>::OwnedPtr(&v4, *(a1 + 16));
      std::__split_buffer<unsigned long long *>::__construct_at_end<std::move_iterator<unsigned long long **>,0>(&v6, v5, v4);
      std::swap[abi:dn200100]<unsigned long long **>(a1, &v6);
      std::swap[abi:dn200100]<unsigned long long **>((a1 + 8), &v7);
      std::swap[abi:dn200100]<unsigned long long **>((a1 + 16), &v8);
      std::swap[abi:dn200100]<unsigned long long **>((a1 + 24), &v9);
      std::__split_buffer<unsigned long long *>::~__split_buffer(&v6);
    }
  }

  ot::Spinel::SpinelInterface::~SpinelInterface(*(a1 + 16));
  std::allocator_traits<std::allocator<unsigned long long *>>::construct[abi:dn200100]<unsigned long long *,unsigned long long *,0>(a1, v2, v14);
  *(a1 + 16) += 8;
}

{
  v16 = a1;
  v15 = a2;
  if (*(a1 + 16) == *(a1 + 24))
  {
    if (*(a1 + 8) > *a1)
    {
      v14 = ((*(a1 + 8) - *a1) / 8 + 1) / 2;
      *(a1 + 16) = std::move[abi:dn200100]<unsigned long long **,unsigned long long **>(*(a1 + 8), *(a1 + 16), (*(a1 + 8) - 8 * v14));
      *(a1 + 8) -= 8 * v14;
    }

    else
    {
      v12 = 2 * ((*(a1 + 24) - *a1) / 8);
      v11 = 1;
      v13 = *std::max[abi:dn200100]<unsigned long>(&v12, &v11);
      std::__split_buffer<unsigned long long *>::__split_buffer(&v7, v13, v13 / 4, *(a1 + 32));
      ot::OwnedPtr<ot::Message>::OwnedPtr(&v6, *(a1 + 8));
      ot::OwnedPtr<ot::Message>::OwnedPtr(&v5, *(a1 + 16));
      std::__split_buffer<unsigned long long *>::__construct_at_end<std::move_iterator<unsigned long long **>,0>(&v7, v6, v5);
      std::swap[abi:dn200100]<unsigned long long **>(a1, &v7);
      std::swap[abi:dn200100]<unsigned long long **>((a1 + 8), &v8);
      std::swap[abi:dn200100]<unsigned long long **>((a1 + 16), &v9);
      std::swap[abi:dn200100]<unsigned long long **>((a1 + 24), &v10);
      std::__split_buffer<unsigned long long *>::~__split_buffer(&v7);
    }
  }

  v3 = *(a1 + 32);
  ot::Spinel::SpinelInterface::~SpinelInterface(*(a1 + 16));
  std::allocator_traits<std::allocator<unsigned long long *>>::construct[abi:dn200100]<unsigned long long *,unsigned long long *,0>(v3, v2, v15);
  *(a1 + 16) += 8;
}

{
  std::__split_buffer<unsigned long long *>::emplace_back<unsigned long long *>(a1, a2);
}

{
  std::__split_buffer<unsigned long long *>::emplace_back<unsigned long long *>(a1, a2);
}

void std::__split_buffer<unsigned long long *>::emplace_front<unsigned long long *>(uint64_t *a1, void *a2)
{
  v15 = a1;
  v14 = a2;
  if (a1[1] == *a1)
  {
    if (a1[2] >= a1[3])
    {
      v11 = 2 * ((a1[3] - *a1) / 8);
      v10 = 1;
      v12 = *std::max[abi:dn200100]<unsigned long>(&v11, &v10);
      std::__split_buffer<unsigned long long *>::__split_buffer(&v6, v12, (v12 + 3) / 4, a1);
      ot::OwnedPtr<ot::Message>::OwnedPtr(&v5, a1[1]);
      ot::OwnedPtr<ot::Message>::OwnedPtr(&v4, a1[2]);
      std::__split_buffer<unsigned long long *>::__construct_at_end<std::move_iterator<unsigned long long **>,0>(&v6, v5, v4);
      std::swap[abi:dn200100]<unsigned long long **>(a1, &v6);
      std::swap[abi:dn200100]<unsigned long long **>(a1 + 1, &v7);
      std::swap[abi:dn200100]<unsigned long long **>(a1 + 2, &v8);
      std::swap[abi:dn200100]<unsigned long long **>(a1 + 3, &v9);
      std::__split_buffer<unsigned long long *>::~__split_buffer(&v6);
    }

    else
    {
      v13 = ((a1[3] - a1[2]) / 8 + 1) / 2;
      a1[1] = std::move_backward[abi:dn200100]<unsigned long long **,unsigned long long **>(a1[1], a1[2], (a1[2] + 8 * v13));
      a1[2] += 8 * v13;
    }
  }

  ot::Spinel::SpinelInterface::~SpinelInterface((a1[1] - 8));
  std::allocator_traits<std::allocator<unsigned long long *>>::construct[abi:dn200100]<unsigned long long *,unsigned long long *,0>(a1, v2, v14);
  a1[1] -= 8;
}

{
  std::__split_buffer<unsigned long long *>::emplace_front<unsigned long long *>(a1, a2);
}

void std::__split_buffer<unsigned long long *>::emplace_front<unsigned long long *&>(uint64_t *a1, void *a2)
{
  v16 = a1;
  v15 = a2;
  if (a1[1] == *a1)
  {
    if (a1[2] >= a1[3])
    {
      v12 = 2 * ((a1[3] - *a1) / 8);
      v11 = 1;
      v13 = *std::max[abi:dn200100]<unsigned long>(&v12, &v11);
      std::__split_buffer<unsigned long long *>::__split_buffer(&v7, v13, (v13 + 3) / 4, a1[4]);
      ot::OwnedPtr<ot::Message>::OwnedPtr(&v6, a1[1]);
      ot::OwnedPtr<ot::Message>::OwnedPtr(&v5, a1[2]);
      std::__split_buffer<unsigned long long *>::__construct_at_end<std::move_iterator<unsigned long long **>,0>(&v7, v6, v5);
      std::swap[abi:dn200100]<unsigned long long **>(a1, &v7);
      std::swap[abi:dn200100]<unsigned long long **>(a1 + 1, &v8);
      std::swap[abi:dn200100]<unsigned long long **>(a1 + 2, &v9);
      std::swap[abi:dn200100]<unsigned long long **>(a1 + 3, &v10);
      std::__split_buffer<unsigned long long *>::~__split_buffer(&v7);
    }

    else
    {
      v14 = ((a1[3] - a1[2]) / 8 + 1) / 2;
      a1[1] = std::move_backward[abi:dn200100]<unsigned long long **,unsigned long long **>(a1[1], a1[2], (a1[2] + 8 * v14));
      a1[2] += 8 * v14;
    }
  }

  v3 = a1[4];
  ot::Spinel::SpinelInterface::~SpinelInterface((a1[1] - 8));
  std::allocator_traits<std::allocator<unsigned long long *>>::construct[abi:dn200100]<unsigned long long *,unsigned long long *&,0>(v3, v2, v15);
  a1[1] -= 8;
}

{
  std::__split_buffer<unsigned long long *>::emplace_front<unsigned long long *&>(a1, a2);
}

uint64_t *std::swap[abi:dn200100]<unsigned long long **>(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  return result;
}

uint64_t std::unique_ptr<unsigned long long *,std::__allocator_destructor<std::allocator<unsigned long long>>>::~unique_ptr[abi:dn200100](uint64_t a1)
{
  std::unique_ptr<unsigned long long *,std::__allocator_destructor<std::allocator<unsigned long long>>>::~unique_ptr[abi:dn200100](a1);
  return a1;
}

{
  std::unique_ptr<unsigned long long *,std::__allocator_destructor<std::allocator<unsigned long long>>>::reset[abi:dn200100](a1, 0);
  return a1;
}

uint64_t std::__split_buffer<unsigned long long *>::__construct_at_end<std::move_iterator<unsigned long long **>,0>(ot::Spinel::SpinelInterface *a1, uint64_t a2, uint64_t a3)
{
  v3 = std::distance[abi:dn200100]<std::move_iterator<unsigned long long **>>(a2, a3);
  return std::__split_buffer<unsigned long long *>::__construct_at_end_with_size<std::move_iterator<unsigned long long **>>(a1, a2, v3);
}

{
  return std::__split_buffer<unsigned long long *>::__construct_at_end<std::move_iterator<unsigned long long **>,0>(a1, a2, a3);
}

void std::allocator_traits<std::allocator<unsigned long long *>>::construct[abi:dn200100]<unsigned long long *,unsigned long long *&,0>(uint64_t a1, void *a2, void *a3)
{
  std::allocator<unsigned long long *>::construct[abi:dn200100]<unsigned long long *,unsigned long long *&>(a1, a2, a3);
}

{
  std::allocator_traits<std::allocator<unsigned long long *>>::construct[abi:dn200100]<unsigned long long *,unsigned long long *&,0>(a1, a2, a3);
}

uint64_t std::__copy_move_unwrap_iters[abi:dn200100]<std::__move_impl<std::_ClassicAlgPolicy>,unsigned long long **,unsigned long long **,unsigned long long **,0>(ot::Spinel::SpinelInterface *a1, ot::Spinel::SpinelInterface *a2, ot::Spinel::SpinelInterface *a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = std::__unwrap_range[abi:dn200100]<unsigned long long **,unsigned long long **>(a1, a2);
  v14 = v3;
  v7 = v3;
  std::__unwrap_iter[abi:dn200100]<unsigned long long **,std::__unwrap_iter_impl<unsigned long long **,true>,0>(v15);
  v11 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:dn200100]<unsigned long long *,unsigned long long *,0>(&v10, v13, v7, v4);
  v12 = v5;
  v9 = std::__rewrap_range[abi:dn200100]<unsigned long long **,unsigned long long **>(v17, v11);
  v8 = std::__rewrap_iter[abi:dn200100]<unsigned long long **,unsigned long long **,std::__unwrap_iter_impl<unsigned long long **,true>>(v15, v12);
  return std::make_pair[abi:dn200100]<unsigned long long **,unsigned long long **>(&v9, &v8);
}

uint64_t std::__unwrap_range[abi:dn200100]<unsigned long long **,unsigned long long **>(ot::Spinel::SpinelInterface *a1, ot::Spinel::SpinelInterface *a2)
{
  v8 = a1;
  v7 = a2;
  std::__unwrap_iter[abi:dn200100]<unsigned long long **,std::__unwrap_iter_impl<unsigned long long **,true>,0>(a1);
  v6 = v2;
  std::__unwrap_iter[abi:dn200100]<unsigned long long **,std::__unwrap_iter_impl<unsigned long long **,true>,0>(v7);
  v5 = v3;
  return std::make_pair[abi:dn200100]<unsigned long long **,unsigned long long **>(&v6, &v5);
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:dn200100]<unsigned long long *,unsigned long long *,0>(uint64_t a1, const void *a2, uint64_t a3, char *a4)
{
  return std::__copy_trivial_impl[abi:dn200100]<unsigned long long *,unsigned long long *>(a2, a3, a4);
}

{
  return std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:dn200100]<unsigned long long *,unsigned long long *,0>(a1, a2, a3, a4);
}

uint64_t std::__copy_trivial_impl[abi:dn200100]<unsigned long long *,unsigned long long *>(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = (a2 - a1) / 8;
  std::__constexpr_memmove[abi:dn200100]<unsigned long long *,unsigned long long *,0>(a3, a1, v5);
  v4 = &v6[8 * v5];
  return std::make_pair[abi:dn200100]<unsigned long long **,unsigned long long **>(v7, &v4);
}

void *std::__constexpr_memmove[abi:dn200100]<unsigned long long *,unsigned long long *,0>(void *a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    memmove(a1, a2, 8 * (a3 - 1) + 8);
  }

  return a1;
}

void *std::pair<unsigned long long **,unsigned long long **>::pair[abi:dn200100]<unsigned long long **&,unsigned long long **,0>(void *result, void *a2, void *a3)
{
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t std::__split_buffer<unsigned long long *>::__construct_at_end_with_size<std::move_iterator<unsigned long long **>>(ot::Spinel::SpinelInterface *a1, uint64_t a2, ot::Spinel::SpinelInterface *a3)
{
  v10 = a2;
  v9[4] = a1;
  v9[3] = a3;
  std::__split_buffer<unsigned long long *>::_ConstructTransaction::_ConstructTransaction[abi:dn200100](v9, a1 + 2, a3);
  while (v9[0] != v9[1])
  {
    v7 = *(a1 + 4);
    ot::Spinel::SpinelInterface::~SpinelInterface(v9[0]);
    v6 = v3;
    v4 = std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>::__get_np[abi:dn200100](&v10);
    std::allocator_traits<std::allocator<unsigned long long *>>::construct[abi:dn200100]<unsigned long long *,unsigned long long *,0>(v7, v6, v4);
    v9[0] = (v9[0] + 8);
    std::move_iterator<unsigned long long **>::operator++[abi:dn200100](&v10);
  }

  return std::__split_buffer<unsigned long long *>::_ConstructTransaction::~_ConstructTransaction[abi:dn200100](v9);
}

{
  return std::__split_buffer<unsigned long long *>::__construct_at_end_with_size<std::move_iterator<unsigned long long **>>(a1, a2, a3);
}

void std::allocator_traits<std::allocator<unsigned long long *>>::construct[abi:dn200100]<unsigned long long *,unsigned long long *,0>(uint64_t a1, void *a2, void *a3)
{
  std::allocator<unsigned long long *>::construct[abi:dn200100]<unsigned long long *,unsigned long long *>(a1, a2, a3);
}

{
  std::allocator_traits<std::allocator<unsigned long long *>>::construct[abi:dn200100]<unsigned long long *,unsigned long long *,0>(a1, a2, a3);
}

void *std::__split_buffer<unsigned long long *>::_ConstructTransaction::_ConstructTransaction[abi:dn200100](void *result, void *a2, uint64_t a3)
{
  *result = *a2;
  result[1] = *a2 + 8 * a3;
  result[2] = a2;
  return result;
}

void std::allocator<unsigned long long *>::construct[abi:dn200100]<unsigned long long *,unsigned long long *>(uint64_t a1, void *a2, void *a3)
{
  *a2 = *a3;
}

{
  std::allocator<unsigned long long *>::construct[abi:dn200100]<unsigned long long *,unsigned long long *>(a1, a2, a3);
}

uint64_t std::__distance[abi:dn200100]<std::move_iterator<unsigned long long **>>(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  return std::operator-[abi:dn200100]<unsigned long long **,unsigned long long **>(&v3, &v4);
}

void std::allocator<unsigned long long *>::construct[abi:dn200100]<unsigned long long *,unsigned long long *&>(uint64_t a1, void *a2, void *a3)
{
  *a2 = *a3;
}

{
  std::allocator<unsigned long long *>::construct[abi:dn200100]<unsigned long long *,unsigned long long *&>(a1, a2, a3);
}

void std::allocator<unsigned long long>::allocate[abi:dn200100](uint64_t a1, unint64_t a2)
{
  if (a2 > std::allocator_traits<std::allocator<unsigned long long>>::max_size[abi:dn200100]<std::allocator<unsigned long long>,0>())
  {
    std::__throw_bad_array_new_length[abi:dn200100]();
  }

  std::__libcpp_allocate[abi:dn200100]<unsigned long long>();
}

uint64_t std::allocator_traits<std::allocator<unsigned long long>>::max_size[abi:dn200100]<std::allocator<unsigned long long>,0>()
{
  return std::allocator<unsigned long long>::max_size[abi:dn200100]();
}

{
  return std::allocator_traits<std::allocator<unsigned long long>>::max_size[abi:dn200100]<std::allocator<unsigned long long>,0>();
}

uint64_t std::__copy_move_unwrap_iters[abi:dn200100]<std::__move_backward_impl<std::_ClassicAlgPolicy>,unsigned long long **,unsigned long long **,unsigned long long **,0>(ot::Spinel::SpinelInterface *a1, ot::Spinel::SpinelInterface *a2, ot::Spinel::SpinelInterface *a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = std::__unwrap_range[abi:dn200100]<unsigned long long **,unsigned long long **>(a1, a2);
  v14 = v3;
  v7 = v3;
  std::__unwrap_iter[abi:dn200100]<unsigned long long **,std::__unwrap_iter_impl<unsigned long long **,true>,0>(v15);
  v11 = std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:dn200100]<unsigned long long *,unsigned long long *,0>(&v10, v13, v7, v4);
  v12 = v5;
  v9 = std::__rewrap_range[abi:dn200100]<unsigned long long **,unsigned long long **>(v17, v11);
  v8 = std::__rewrap_iter[abi:dn200100]<unsigned long long **,unsigned long long **,std::__unwrap_iter_impl<unsigned long long **,true>>(v15, v12);
  return std::make_pair[abi:dn200100]<unsigned long long **,unsigned long long **>(&v9, &v8);
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:dn200100]<unsigned long long *,unsigned long long *,0>(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  return std::__copy_backward_trivial_impl[abi:dn200100]<unsigned long long *,unsigned long long *>(a2, a3, a4);
}

{
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:dn200100]<unsigned long long *,unsigned long long *,0>(a1, a2, a3, a4);
}

uint64_t std::__copy_backward_trivial_impl[abi:dn200100]<unsigned long long *,unsigned long long *>(const void *a1, uint64_t a2, uint64_t a3)
{
  v6[1] = a1;
  v6[0] = a2;
  v4 = (a2 - a1) / 8;
  v5 = (a3 - 8 * v4);
  std::__constexpr_memmove[abi:dn200100]<unsigned long long *,unsigned long long *,0>(v5, a1, v4);
  return std::make_pair[abi:dn200100]<unsigned long long **,unsigned long long **>(v6, &v5);
}

void *std::max[abi:dn200100]<unsigned long,std::__less<void,void>>(void *a1, void *a2)
{
  if (std::__less<void,void>::operator()[abi:dn200100]<char const*,char const*>(&v6, a1, a2))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

void *std::__split_buffer<unsigned long long *>::__split_buffer(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    std::__allocate_at_least[abi:dn200100]<std::allocator<unsigned long long *>>(result[4], a2);
  }

  *result = 0;
  v4 = *result + 8 * a3;
  result[2] = v4;
  result[1] = v4;
  result[3] = *result;
  return result;
}

void std::allocator<unsigned long long *>::allocate[abi:dn200100](uint64_t a1, unint64_t a2)
{
  if (a2 > std::allocator_traits<std::allocator<unsigned long long *>>::max_size[abi:dn200100]<std::allocator<unsigned long long *>,0>())
  {
    std::__throw_bad_array_new_length[abi:dn200100]();
  }

  std::__libcpp_allocate[abi:dn200100]<unsigned long long *>();
}

uint64_t std::allocator_traits<std::allocator<unsigned long long *>>::max_size[abi:dn200100]<std::allocator<unsigned long long *>,0>()
{
  return std::allocator<unsigned long long>::max_size[abi:dn200100]();
}

{
  return std::allocator_traits<std::allocator<unsigned long long *>>::max_size[abi:dn200100]<std::allocator<unsigned long long *>,0>();
}

__n128 std::unique_ptr<unsigned long long *,std::__allocator_destructor<std::allocator<unsigned long long>>>::unique_ptr[abi:dn200100]<true,void>(uint64_t a1, uint64_t a2, __n128 *a3)
{
  *a1 = a2;
  result = *a3;
  *(a1 + 8) = *a3;
  return result;
}

void std::unique_ptr<unsigned long long *,std::__allocator_destructor<std::allocator<unsigned long long>>>::reset[abi:dn200100](uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    std::__allocator_destructor<std::allocator<unsigned long long>>::operator()[abi:dn200100]((a1 + 8), v2);
  }
}

void std::allocator<unsigned long long>::construct[abi:dn200100]<unsigned long long,unsigned long long const&>(uint64_t a1, void *a2, void *a3)
{
  *a2 = *a3;
}

{
  std::allocator<unsigned long long>::construct[abi:dn200100]<unsigned long long,unsigned long long const&>(a1, a2, a3);
}

uint64_t std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::__count_unique<ot::Ip6::Address>(ot::Spinel::SpinelInterface *a1, const void *a2)
{
  v6 = std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__root[abi:dn200100](a1);
  while (v6)
  {
    ot::Spinel::SpinelInterface::~SpinelInterface(a1);
    if (std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>::operator()[abi:dn200100](v2, a2, (v6 + 25)))
    {
      v6 = *v6;
    }

    else
    {
      ot::Spinel::SpinelInterface::~SpinelInterface(a1);
      if (!std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>::operator()[abi:dn200100](v3, (v6 + 25), a2))
      {
        return 1;
      }

      v6 = v6[1];
    }
  }

  return 0;
}

{
  return std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::__count_unique<ot::Ip6::Address>(a1, a2);
}

BOOL ot::Ip6::Address::operator<(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 0x10uLL) < 0;
}

{
  return ot::Ip6::Address::operator<(a1, a2);
}

uint64_t std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::__emplace_unique_key_args<ot::Ip6::Address,std::piecewise_construct_t const&,std::tuple<ot::Ip6::Address const&>,std::tuple<>>(ot::Spinel::SpinelInterface *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[5] = a1;
  v11[4] = a2;
  v11[3] = a3;
  v11[2] = a4;
  v11[1] = a5;
  v10 = std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::__find_equal<ot::Ip6::Address>(a1, v11, a2);
  v9 = *v10;
  v8 = 0;
  if (!*v10)
  {
    std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<ot::Ip6::Address const&>,std::tuple<>>(a1);
  }

  ot::OwnedPtr<ot::Message>::OwnedPtr(&v7, v9);
  std::pair<std::__tree_iterator<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *> *,long>,BOOL>::pair[abi:dn200100]<std::__tree_iterator<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *> *,long>,BOOL &,0>(&v12, &v7, &v8);
  return v12;
}

{
  return std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::__emplace_unique_key_args<ot::Ip6::Address,std::piecewise_construct_t const&,std::tuple<ot::Ip6::Address const&>,std::tuple<>>(a1, a2, a3, a4, a5);
}

void *std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::__find_equal<ot::Ip6::Address>(ot::Spinel::SpinelInterface *a1, uint64_t a2, const void *a3)
{
  v10 = std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__root[abi:dn200100](a1);
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__root_ptr[abi:dn200100](a1);
  v9 = v3;
  if (v10)
  {
    while (1)
    {
      while (1)
      {
        ot::Spinel::SpinelInterface::~SpinelInterface(a1);
        if (!std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>::operator()[abi:dn200100](v4, a3, (v10 + 25)))
        {
          break;
        }

        if (!*v10)
        {
          *a2 = v10;
          return *a2;
        }

        v9 = v10;
        v10 = *v10;
      }

      ot::Spinel::SpinelInterface::~SpinelInterface(a1);
      if (!std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>::operator()[abi:dn200100](v5, (v10 + 25), a3))
      {
        break;
      }

      if (!v10[1])
      {
        *a2 = v10;
        return v10 + 1;
      }

      v9 = v10 + 1;
      v10 = v10[1];
    }

    *a2 = v10;
    return v9;
  }

  else
  {
    std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__end_node[abi:dn200100](a1);
    *a2 = v6;
    return *a2;
  }
}

{
  return std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::__find_equal<ot::Ip6::Address>(a1, a2, a3);
}

void std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<ot::Ip6::Address const&>,std::tuple<>>(ot::Spinel::SpinelInterface *a1)
{
  ot::Spinel::SpinelInterface::~SpinelInterface(a1);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>>::allocate[abi:dn200100](v1, 1uLL);
}

{
  std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<ot::Ip6::Address const&>,std::tuple<>>(a1);
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>>>::~unique_ptr[abi:dn200100](uint64_t *a1)
{
  std::unique_ptr<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>>>::~unique_ptr[abi:dn200100](a1);
  return a1;
}

{
  std::unique_ptr<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>>>::reset[abi:dn200100](a1, 0);
  return a1;
}

__n128 *std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>>::construct[abi:dn200100]<std::pair<ot::Ip6::Address const,ot::Ip6::InterfaceIdentifier>,std::piecewise_construct_t const&,std::tuple<ot::Ip6::Address const&>,std::tuple<>,0>(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t *a4)
{
  return std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>::construct[abi:dn200100]<std::pair<ot::Ip6::Address const,ot::Ip6::InterfaceIdentifier>,std::piecewise_construct_t const&,std::tuple<ot::Ip6::Address const&>,std::tuple<>>(a1, a2, a3, a4);
}

{
  return std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>>::construct[abi:dn200100]<std::pair<ot::Ip6::Address const,ot::Ip6::InterfaceIdentifier>,std::piecewise_construct_t const&,std::tuple<ot::Ip6::Address const&>,std::tuple<>,0>(a1, a2, a3, a4);
}

void std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>::allocate[abi:dn200100](uint64_t a1, unint64_t a2)
{
  if (a2 > std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>>::max_size[abi:dn200100]<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>,0>())
  {
    std::__throw_bad_array_new_length[abi:dn200100]();
  }

  std::__libcpp_allocate[abi:dn200100]<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>();
}

uint64_t std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>>::max_size[abi:dn200100]<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>,0>()
{
  return std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>::max_size[abi:dn200100]();
}

{
  return std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>>::max_size[abi:dn200100]<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>,0>();
}

__n128 *std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>::construct[abi:dn200100]<std::pair<ot::Ip6::Address const,ot::Ip6::InterfaceIdentifier>,std::piecewise_construct_t const&,std::tuple<ot::Ip6::Address const&>,std::tuple<>>(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t *a4)
{
  return std::pair<ot::Ip6::Address const,ot::Ip6::InterfaceIdentifier>::pair[abi:dn200100]<ot::Ip6::Address const&>(a2, *a4);
}

{
  return std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>::construct[abi:dn200100]<std::pair<ot::Ip6::Address const,ot::Ip6::InterfaceIdentifier>,std::piecewise_construct_t const&,std::tuple<ot::Ip6::Address const&>,std::tuple<>>(a1, a2, a3, a4);
}

__n128 *std::pair<ot::Ip6::Address const,ot::Ip6::InterfaceIdentifier>::pair[abi:dn200100]<ot::Ip6::Address const&>(__n128 *a1, uint64_t a2)
{
  v4 = a2;
  _ZNSt3__14pairIKN2ot3Ip67AddressENS2_19InterfaceIdentifierEEC1B8dn200100IJRS4_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSA_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSJ_IJXspT2_EEEE(a1, &v4);
  return a1;
}

__n128 _ZNSt3__14pairIKN2ot3Ip67AddressENS2_19InterfaceIdentifierEEC2B8dn200100IJRS4_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSA_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSJ_IJXspT2_EEEE(__n128 *a1, uint64_t a2)
{
  v2 = std::get[abi:dn200100]<0ul,unsigned long long const&>(a2);
  result = *v2;
  *a1 = *v2;
  a1[1].n128_u64[0] = 0;
  return result;
}

void std::unique_ptr<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>>>::reset[abi:dn200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>>::operator()[abi:dn200100]((a1 + 1), v2);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>>::operator()[abi:dn200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v3 = *a1;
    std::string::__get_short_pointer[abi:dn200100]((a2 + 25));
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>>::destroy[abi:dn200100]<std::pair<ot::Ip6::Address const,ot::Ip6::InterfaceIdentifier>,void,0>(v3, v2);
  }

  if (a2)
  {
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>>::deallocate[abi:dn200100](*a1, a2);
  }
}

uint64_t std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::__count_unique<ot::Ip6::InterfaceIdentifier>(ot::Spinel::SpinelInterface *a1, const void *a2)
{
  v6 = std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__root[abi:dn200100](a1);
  while (v6)
  {
    ot::Spinel::SpinelInterface::~SpinelInterface(a1);
    if (std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>::operator()[abi:dn200100](v2, a2, (v6 + 28)))
    {
      v6 = *v6;
    }

    else
    {
      ot::Spinel::SpinelInterface::~SpinelInterface(a1);
      if (!std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>::operator()[abi:dn200100](v3, (v6 + 28), a2))
      {
        return 1;
      }

      v6 = v6[1];
    }
  }

  return 0;
}

{
  return std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::__count_unique<ot::Ip6::InterfaceIdentifier>(a1, a2);
}

BOOL ot::Ip6::InterfaceIdentifier::operator<(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 8uLL) < 0;
}

{
  return ot::Ip6::InterfaceIdentifier::operator<(a1, a2);
}

uint64_t std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::__emplace_unique_key_args<ot::Ip6::InterfaceIdentifier,std::piecewise_construct_t const&,std::tuple<ot::Ip6::InterfaceIdentifier const&>,std::tuple<>>(ot::Spinel::SpinelInterface *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[5] = a1;
  v11[4] = a2;
  v11[3] = a3;
  v11[2] = a4;
  v11[1] = a5;
  v10 = std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::__find_equal<ot::Ip6::InterfaceIdentifier>(a1, v11, a2);
  v9 = *v10;
  v8 = 0;
  if (!*v10)
  {
    std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<ot::Ip6::InterfaceIdentifier const&>,std::tuple<>>(a1);
  }

  ot::OwnedPtr<ot::Message>::OwnedPtr(&v7, v9);
  std::pair<std::__tree_iterator<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *> *,long>,BOOL>::pair[abi:dn200100]<std::__tree_iterator<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__tree_node<std::__value_type<unsigned long long,ot::appPacketInfo>,void *> *,long>,BOOL &,0>(&v12, &v7, &v8);
  return v12;
}

{
  return std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::__emplace_unique_key_args<ot::Ip6::InterfaceIdentifier,std::piecewise_construct_t const&,std::tuple<ot::Ip6::InterfaceIdentifier const&>,std::tuple<>>(a1, a2, a3, a4, a5);
}

void *std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::__find_equal<ot::Ip6::InterfaceIdentifier>(ot::Spinel::SpinelInterface *a1, uint64_t a2, const void *a3)
{
  v10 = std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__root[abi:dn200100](a1);
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__root_ptr[abi:dn200100](a1);
  v9 = v3;
  if (v10)
  {
    while (1)
    {
      while (1)
      {
        ot::Spinel::SpinelInterface::~SpinelInterface(a1);
        if (!std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>::operator()[abi:dn200100](v4, a3, (v10 + 28)))
        {
          break;
        }

        if (!*v10)
        {
          *a2 = v10;
          return *a2;
        }

        v9 = v10;
        v10 = *v10;
      }

      ot::Spinel::SpinelInterface::~SpinelInterface(a1);
      if (!std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>::operator()[abi:dn200100](v5, (v10 + 28), a3))
      {
        break;
      }

      if (!v10[1])
      {
        *a2 = v10;
        return v10 + 1;
      }

      v9 = v10 + 1;
      v10 = v10[1];
    }

    *a2 = v10;
    return v9;
  }

  else
  {
    std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__end_node[abi:dn200100](a1);
    *a2 = v6;
    return *a2;
  }
}

{
  return std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::__find_equal<ot::Ip6::InterfaceIdentifier>(a1, a2, a3);
}

void std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<ot::Ip6::InterfaceIdentifier const&>,std::tuple<>>(ot::Spinel::SpinelInterface *a1)
{
  ot::Spinel::SpinelInterface::~SpinelInterface(a1);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>>::allocate[abi:dn200100](v1, 1uLL);
}

{
  std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<ot::Ip6::InterfaceIdentifier const&>,std::tuple<>>(a1);
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>>>::~unique_ptr[abi:dn200100](uint64_t *a1)
{
  std::unique_ptr<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>>>::~unique_ptr[abi:dn200100](a1);
  return a1;
}

{
  std::unique_ptr<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>>>::reset[abi:dn200100](a1, 0);
  return a1;
}

void *std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>>::construct[abi:dn200100]<std::pair<ot::Ip6::InterfaceIdentifier const,ot::matterSubscriptionInfo>,std::piecewise_construct_t const&,std::tuple<ot::Ip6::InterfaceIdentifier const&>,std::tuple<>,0>(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  return std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>::construct[abi:dn200100]<std::pair<ot::Ip6::InterfaceIdentifier const,ot::matterSubscriptionInfo>,std::piecewise_construct_t const&,std::tuple<ot::Ip6::InterfaceIdentifier const&>,std::tuple<>>(a1, a2, a3, a4);
}

{
  return std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>>::construct[abi:dn200100]<std::pair<ot::Ip6::InterfaceIdentifier const,ot::matterSubscriptionInfo>,std::piecewise_construct_t const&,std::tuple<ot::Ip6::InterfaceIdentifier const&>,std::tuple<>,0>(a1, a2, a3, a4);
}

void std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>::allocate[abi:dn200100](uint64_t a1, unint64_t a2)
{
  if (a2 > std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>>::max_size[abi:dn200100]<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>,0>())
  {
    std::__throw_bad_array_new_length[abi:dn200100]();
  }

  std::__libcpp_allocate[abi:dn200100]<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>();
}

uint64_t std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>>::max_size[abi:dn200100]<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>,0>()
{
  return std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>::max_size[abi:dn200100]();
}

{
  return std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>>::max_size[abi:dn200100]<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>,0>();
}

void *std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>::construct[abi:dn200100]<std::pair<ot::Ip6::InterfaceIdentifier const,ot::matterSubscriptionInfo>,std::piecewise_construct_t const&,std::tuple<ot::Ip6::InterfaceIdentifier const&>,std::tuple<>>(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  return std::pair<ot::Ip6::InterfaceIdentifier const,ot::matterSubscriptionInfo>::pair[abi:dn200100]<ot::Ip6::InterfaceIdentifier const&>(a2, *a4);
}

{
  return std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>::construct[abi:dn200100]<std::pair<ot::Ip6::InterfaceIdentifier const,ot::matterSubscriptionInfo>,std::piecewise_construct_t const&,std::tuple<ot::Ip6::InterfaceIdentifier const&>,std::tuple<>>(a1, a2, a3, a4);
}

void *std::pair<ot::Ip6::InterfaceIdentifier const,ot::matterSubscriptionInfo>::pair[abi:dn200100]<ot::Ip6::InterfaceIdentifier const&>(void *a1, uint64_t a2)
{
  v4 = a2;
  _ZNSt3__14pairIKN2ot3Ip619InterfaceIdentifierENS1_22matterSubscriptionInfoEEC1B8dn200100IJRS4_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSA_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSJ_IJXspT2_EEEE(a1, &v4);
  return a1;
}

void *_ZNSt3__14pairIKN2ot3Ip619InterfaceIdentifierENS1_22matterSubscriptionInfoEEC2B8dn200100IJRS4_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSA_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSJ_IJXspT2_EEEE(void *a1, uint64_t a2)
{
  v2 = std::get[abi:dn200100]<0ul,unsigned long long const&>(a2);
  result = a1;
  *a1 = *v2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  return result;
}

void std::unique_ptr<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>>>::reset[abi:dn200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>>::operator()[abi:dn200100]((a1 + 1), v2);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>>::operator()[abi:dn200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v3 = *a1;
    std::string::__get_short_pointer[abi:dn200100]((a2 + 28));
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>>::destroy[abi:dn200100]<std::pair<ot::Ip6::InterfaceIdentifier const,ot::matterSubscriptionInfo>,void,0>(v3, v2);
  }

  if (a2)
  {
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *>>>::deallocate[abi:dn200100](*a1, a2);
  }
}

uint64_t std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::__erase_unique<ot::Ip6::Address>(ot::Spinel::SpinelInterface *a1, const void *a2)
{
  v6[2] = a1;
  v6[1] = a2;
  v6[0] = std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::find<ot::Ip6::Address>(a1, a2);
  v5 = std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::end[abi:dn200100](a1);
  if (std::operator==[abi:dn200100](v6, &v5))
  {
    return 0;
  }

  std::__map_iterator<std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>>::__map_iterator[abi:dn200100](&v4, v6[0]);
  std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::erase(a1, v4);
  return 1;
}

{
  return std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::__erase_unique<ot::Ip6::Address>(a1, a2);
}

uint64_t std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::find<ot::Ip6::Address>(ot::Spinel::SpinelInterface *a1, const void *a2)
{
  v15 = a1;
  v14 = a2;
  v9 = std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__root[abi:dn200100](a1);
  std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__end_node[abi:dn200100](a1);
  v13 = std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::__lower_bound<ot::Ip6::Address>(a1, a2, v9, v2);
  v12 = std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::end[abi:dn200100](a1);
  LOBYTE(v11) = 0;
  if (std::operator!=[abi:dn200100](&v13, &v12))
  {
    ot::Spinel::SpinelInterface::~SpinelInterface(a1);
    v7 = v3;
    v6 = v14;
    v4 = std::__tree_iterator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *> *,long>::operator*[abi:dn200100](&v13);
    v11 = !std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>::operator()[abi:dn200100](v7, v6, v4);
  }

  if (v11)
  {
    return v13;
  }

  else
  {
    return std::__tree<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__map_value_compare<ot::Ip6::InterfaceIdentifier,std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::less<ot::Ip6::InterfaceIdentifier>,true>,std::allocator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>>>::end[abi:dn200100](a1);
  }
}

{
  return std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::find<ot::Ip6::Address>(a1, a2);
}

uint64_t std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::erase(ot::Spinel::SpinelInterface *a1, uint64_t a2)
{
  v10 = a2;
  v9 = std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>::__get_np[abi:dn200100](&v10);
  v11 = std::__tree<std::__value_type<unsigned long long,ot::appPacketInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ot::appPacketInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ot::appPacketInfo>>>::__remove_node_pointer(a1, v9);
  ot::Spinel::SpinelInterface::~SpinelInterface(a1);
  v8 = v2;
  v7 = v2;
  v3 = std::__tree_iterator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *> *,long>::operator*[abi:dn200100](&v10);
  std::string::__get_short_pointer[abi:dn200100](v3);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>>::destroy[abi:dn200100]<std::pair<ot::Ip6::Address const,ot::Ip6::InterfaceIdentifier>,void,0>(v7, v4);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,void *>>>::deallocate[abi:dn200100](v8, v9);
  return v11;
}

uint64_t std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::__lower_bound<ot::Ip6::Address>(ot::Spinel::SpinelInterface *a1, const void *a2, void *a3, uint64_t a4)
{
  while (a3)
  {
    ot::Spinel::SpinelInterface::~SpinelInterface(a1);
    if (std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>::operator()[abi:dn200100](v4, (a3 + 25), a2))
    {
      a3 = a3[1];
    }

    else
    {
      a4 = a3;
      a3 = *a3;
    }
  }

  ot::OwnedPtr<ot::Message>::OwnedPtr(&v10, a4);
  return v10;
}

{
  return std::__tree<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::__map_value_compare<ot::Ip6::Address,std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>,std::less<ot::Ip6::Address>,true>,std::allocator<std::__value_type<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>>>::__lower_bound<ot::Ip6::Address>(a1, a2, a3, a4);
}

ot::Spinel::SpinelInterface *__cxx_global_array_dtor_0()
{
  v1 = &ot::mAppQueue;
  do
  {
    result = std::map<unsigned long long,ot::appPacketInfo>::~map[abi:dn200100]((v1 - 24));
    v1 -= 24;
  }

  while (v1 != &ot::mAppMap);
  return result;
}

uint64_t __cxx_global_var_init_3()
{
  v1 = &ot::mAppQueue;
  do
  {
    std::queue<unsigned long long>::queue[abi:dn200100](v1);
    v1 = (v1 + 48);
  }

  while (v1 != &ot::mMatterSubscriptionInfoMap);
  return __cxa_atexit(__cxx_global_array_dtor_4, 0, &_mh_execute_header);
}

ot::Spinel::SpinelInterface *__cxx_global_array_dtor_4()
{
  v1 = &ot::mMatterSubscriptionInfoMap;
  do
  {
    result = std::queue<unsigned long long>::~queue((v1 - 48));
    v1 -= 48;
  }

  while (v1 != &ot::mAppQueue);
  return result;
}

uint64_t _GLOBAL__sub_I_application_metrics_manager_cpp()
{
  __cxx_global_var_init_8();
  __cxx_global_var_init_1_7();
  __cxx_global_var_init_2();
  __cxx_global_var_init_3();
  __cxx_global_var_init_5();
  return __cxx_global_var_init_6();
}

ot::ThreadAnalyticsManager *ot::ThreadAnalyticsManager::ThreadAnalyticsManager(ot::ThreadAnalyticsManager *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::AppMetricsManager::AppMetricsManager((this + 8), a2);
  return this;
}

{
  ot::ThreadAnalyticsManager::ThreadAnalyticsManager(this, a2);
  return this;
}

ot::Ip6::Netif *ot::Ip6::Netif::Netif (ot::Ip6::Netif *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::OwnedPtr<ot::Message>::OwnedPtr(this);
  ot::OwnedPtr<ot::Message>::OwnedPtr(this + 1);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 2);
  ot::Pool<ot::Ip6::Netif::UnicastAddress,(unsigned short)8>::Pool(this + 4);
  ot::Pool<ot::Ip6::Netif::ExternalMulticastAddress,(unsigned short)8>::Pool(this + 37);
  return this;
}

{
  ot::Ip6::Netif::Netif (this, a2);
  return this;
}

uint64_t *ot::Pool<ot::Ip6::Netif::UnicastAddress,(unsigned short)8>::Pool(uint64_t *a1)
{
  ot::Pool<ot::Ip6::Netif::UnicastAddress,(unsigned short)8>::Pool(a1);
  return a1;
}

{
  ot::OwnedPtr<ot::Message>::OwnedPtr(a1);
  for (i = (a1 + 1); i != a1 + 33; i += 32)
  {
    ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Push(a1, i);
  }

  return a1;
}

uint64_t *ot::Pool<ot::Ip6::Netif::ExternalMulticastAddress,(unsigned short)8>::Pool(uint64_t *a1)
{
  ot::Pool<ot::Ip6::Netif::ExternalMulticastAddress,(unsigned short)8>::Pool(a1);
  return a1;
}

{
  ot::OwnedPtr<ot::Message>::OwnedPtr(a1);
  for (i = (a1 + 1); i != a1 + 33; i += 32)
  {
    ot::LinkedList<ot::Ip6::Netif::ExternalMulticastAddress>::Push(a1, i);
  }

  return a1;
}

BOOL ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::ContainsMatching<ot::Ip6::Address>(ot::Ip6::Netif::MulticastAddress *a1, ot::Ip6::Netif::MulticastAddress *a2)
{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::FindMatching<ot::Ip6::Address>(a1, a2) != 0;
}

{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::ContainsMatching<ot::Ip6::Address>(a1, a2);
}

uint64_t ot::Ip6::Netif::SubscribeAllNodesMulticast(ot::Ip6::Netif *this)
{
  ot::AsNonConst<otNetifMulticastAddress>();
  v5 = ot::AsCoreType<otNetifMulticastAddress>(v1);
  result = ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Contains((this + 8), v5);
  if ((result & 1) == 0)
  {
    ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::GetTail();
    if (v3)
    {
      ot::LinkedListEntry<ot::Ip6::Netif::MulticastAddress>::SetNext(v3, v5);
    }

    else
    {
      ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::SetHead(this + 1, v5);
    }

    return ot::Ip6::Netif::SignalMulticastAddressesChange(this, 1, v5, 0);
  }

  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otNetifMulticastAddress>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

void ot::AsNonConst<otNetifMulticastAddress>()
{
  ;
}

{
  ;
}

{
  ot::AsNonConst<otNetifMulticastAddress>();
}

{
  ot::AsNonConst<otNetifMulticastAddress>();
}

BOOL ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Contains(ot::Ip6::Netif::MulticastAddress *a1, ot::Ip6::Netif::MulticastAddress *a2)
{
  v3[2] = a1;
  v3[1] = a2;
  v3[0] = 0;
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Find(a1, a2, v3) == 0;
}

{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Contains(a1, a2);
}

void ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::GetTail()
{
  ot::AsConst<ot::LinkedList<ot::Ip6::Netif::MulticastAddress>>();
  ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::GetTail(v0);
  ot::AsNonConst<ot::Ip6::Netif::MulticastAddress>();
}

{
  ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::GetTail();
}

void *ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::SetHead(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::SetHead(result, a2);
}

uint64_t ot::LinkedListEntry<ot::Ip6::Netif::MulticastAddress>::SetNext(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  return result;
}

{
  return ot::LinkedListEntry<ot::Ip6::Netif::MulticastAddress>::SetNext(result, a2);
}

uint64_t ot::Ip6::Netif::SignalMulticastAddressesChange(uint64_t result, char a2, ot::Ip6::Netif::MulticastAddress *a3, ot::Ip6::Netif::MulticastAddress *a4)
{
  v4 = result;
  while (a3 != a4)
  {
    ot::Ip6::Netif::SignalMulticastAddressChange(v4, a2 & 1, a3, 0);
    result = ot::Ip6::Netif::MulticastAddress::GetNext(a3);
    a3 = result;
  }

  return result;
}

uint64_t ot::Ip6::Netif::UnsubscribeAllNodesMulticast(ot::Ip6::Netif *this)
{
  v7[1] = this;
  v7[0] = 0;
  ot::AsNonConst<otNetifMulticastAddress>();
  v6 = ot::AsCoreType<otNetifMulticastAddress>(v1);
  result = ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Find(this + 8, v6, v7);
  if (!result)
  {
    v4 = v7[0];
    ot::AsNonConst<otNetifMulticastAddress>();
    ot::AsCoreTypePtr<otNetifMulticastAddress>();
    if (v4 == v3)
    {
      __assert_rtn("UnsubscribeAllNodesMulticast", "netif.cpp", 151, "prev != AsCoreTypePtr(AsNonConst(&kRealmLocalAllRoutersMulticastAddress))");
    }

    if (v7[0])
    {
      ot::LinkedListEntry<ot::Ip6::Netif::MulticastAddress>::SetNext(v7[0], 0);
    }

    else
    {
      ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Clear(this + 1);
    }

    return ot::Ip6::Netif::SignalMulticastAddressesChange(this, 0, v6, 0);
  }

  return result;
}

uint64_t ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Find(uint64_t a1, ot::Ip6::Netif::MulticastAddress *a2, ot::Ip6::Netif::MulticastAddress **a3)
{
  ot::AsConst<ot::LinkedList<ot::Ip6::Netif::MulticastAddress>>();
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Find(v3, a2, a3);
}

{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Find(a1, a2, a3);
}

void ot::AsCoreTypePtr<otNetifMulticastAddress>()
{
  ;
}

{
  ot::AsCoreTypePtr<otNetifMulticastAddress>();
}

void *ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Clear(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Clear(result);
}

uint64_t ot::Ip6::Netif::SubscribeAllRoutersMulticast(ot::Ip6::Netif *this)
{
  v9[1] = this;
  v9[0] = 0;
  ot::AsNonConst<otNetifMulticastAddress>();
  v8 = ot::AsCoreType<otNetifMulticastAddress>(v1);
  ot::AsNonConst<otNetifMulticastAddress>();
  v7 = ot::AsCoreType<otNetifMulticastAddress>(v2);
  ot::AsNonConst<otNetifMulticastAddress>();
  v6 = ot::AsCoreType<otNetifMulticastAddress>(v3);
  result = ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Find(this + 8, v7, v9);
  if (result)
  {
    __assert_rtn("SubscribeAllRoutersMulticast", "netif.cpp", 178, "false");
  }

  if (v9[0] != v6)
  {
    if (v9[0])
    {
      ot::LinkedListEntry<ot::Ip6::Netif::MulticastAddress>::SetNext(v9[0], v8);
    }

    else
    {
      ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::SetHead(this + 1, v8);
    }

    return ot::Ip6::Netif::SignalMulticastAddressesChange(this, 1, v8, v7);
  }

  return result;
}

uint64_t ot::Ip6::Netif::UnsubscribeAllRoutersMulticast(ot::Ip6::Netif *this)
{
  v7[1] = this;
  v7[0] = 0;
  ot::AsNonConst<otNetifMulticastAddress>();
  v6 = ot::AsCoreType<otNetifMulticastAddress>(v1);
  ot::AsNonConst<otNetifMulticastAddress>();
  v5 = ot::AsCoreType<otNetifMulticastAddress>(v2);
  result = ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Find(this + 8, v6, v7);
  if (!result)
  {
    if (v7[0])
    {
      ot::LinkedListEntry<ot::Ip6::Netif::MulticastAddress>::SetNext(v7[0], v5);
    }

    else
    {
      ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::SetHead(this + 1, v5);
    }

    return ot::Ip6::Netif::SignalMulticastAddressesChange(this, 0, v6, v5);
  }

  return result;
}

uint64_t ot::Ip6::Netif::SignalMulticastAddressChange(ot::InstanceLocator *a1, char a2, ot::Ip6::Netif::MulticastAddress *a3, char a4)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
  if ((v17 & 1) == 1)
  {
    v5 = 4096;
  }

  else
  {
    v5 = 0x2000;
  }

  ot::Notifier::Signal(v4, v5);
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::HistoryTracker>(a1);
  result = ot::Utils::HistoryTracker::RecordAddressEvent(v6, v17 & 1, v16, v15);
  if (!v15)
  {
    result = ot::CallbackBase<void (*)(otIp6AddressInfo const*,BOOL,void *)>::IsSet(a1 + 2);
    if (result)
    {
      Address = ot::Ip6::Netif::MulticastAddress::GetAddress(v16);
      v13 = 0x80;
      v8 = ot::Ip6::Netif::MulticastAddress::GetAddress(v16);
      Scope = ot::Ip6::Address::GetScope(v8);
      v14 = v14 & 0xC0 | Scope & 0xF;
      p_Address = &Address;
      return ot::Callback<void (*)(otIp6AddressInfo const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<otIp6AddressInfo*,ot::Ip6::Netif::AddressEvent &>(a1 + 16, &p_Address, &v17);
    }
  }

  return result;
}

BOOL ot::CallbackBase<void (*)(otIp6AddressInfo const*,BOOL,void *)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(otIp6AddressInfo const*,BOOL,void *)>::IsSet(a1);
}

uint64_t ot::Callback<void (*)(otIp6AddressInfo const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<otIp6AddressInfo*,ot::Ip6::Netif::AddressEvent &>(uint64_t a1, void *a2, _BYTE *a3)
{
  return (*a1)(*a2, (*a3 & 1) != 0, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otIp6AddressInfo const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<otIp6AddressInfo*,ot::Ip6::Netif::AddressEvent &>(a1, a2, a3);
}

uint64_t ot::Ip6::Netif::MulticastAddress::GetNext(ot::Ip6::Netif::MulticastAddress *this)
{
  return *(this + 2);
}

{
  return ot::Ip6::Netif::MulticastAddress::GetNext(this);
}

BOOL ot::Pool<ot::Ip6::Netif::ExternalMulticastAddress,(unsigned short)8>::IsPoolEntry(uint64_t a1, unint64_t a2)
{
  v3 = 0;
  if (a1 + 8 <= a2)
  {
    return a2 < ot::GetArrayEnd<ot::Ip6::Netif::ExternalMulticastAddress,(unsigned short)8>(a1 + 8);
  }

  return v3;
}

{
  return ot::Pool<ot::Ip6::Netif::ExternalMulticastAddress,(unsigned short)8>::IsPoolEntry(a1, a2);
}

uint64_t ot::Ip6::Netif::SubscribeMulticast(ot::Ip6::Netif *this, ot::Ip6::Netif::MulticastAddress *a2)
{
  result = ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Add(this + 1, a2);
  if (!result)
  {
    Address = ot::Ip6::Netif::MulticastAddress::GetAddress(a2);
    ot::Ip6::Address::ToString(Address, v14);
    v4 = ot::String<(unsigned short)40>::AsCString(v14);
    otLogDebgPlat("Netif::SubscribeMulticast address:%s", v5, v6, v7, v8, v9, v10, v11, v4);
    return ot::Ip6::Netif::SignalMulticastAddressChange(this, 1, a2, 0);
  }

  return result;
}

uint64_t ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Add(uint64_t *a1, ot::Ip6::Netif::MulticastAddress *a2)
{
  v4 = 0;
  if (ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Contains(a1, a2))
  {
    return 24;
  }

  else
  {
    ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Push(a1, a2);
  }

  return v4;
}

{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Add(a1, a2);
}

uint64_t ot::Ip6::Netif::UnsubscribeMulticast(ot::Ip6::Netif *this, const ot::Ip6::Netif::MulticastAddress *a2)
{
  result = ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Remove((this + 8), a2);
  if (!result)
  {
    Address = ot::Ip6::Netif::MulticastAddress::GetAddress(a2);
    ot::Ip6::Address::ToString(Address, v14);
    v4 = ot::String<(unsigned short)40>::AsCString(v14);
    otLogDebgPlat("Netif::UnsubscribeMulticast address:%s", v5, v6, v7, v8, v9, v10, v11, v4);
    return ot::Ip6::Netif::SignalMulticastAddressChange(this, 0, a2, 0);
  }

  return result;
}

uint64_t ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Remove(ot::Ip6::Netif::MulticastAddress *a1, ot::Ip6::Netif::MulticastAddress *a2)
{
  v5[2] = a1;
  v5[1] = a2;
  v5[0] = 0;
  v4 = ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Find(a1, a2, v5);
  if (!v4)
  {
    ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::PopAfter(a1, v5[0]);
  }

  return v4;
}

{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Remove(a1, a2);
}

uint64_t ot::Ip6::Netif::SubscribeExternalMulticast(ot::Ip6::Netif *this, const ot::Ip6::Address *a2)
{
  v81 = this;
  v80 = a2;
  v79 = 0;
  ot::AsNonConst<otNetifMulticastAddress>();
  v78 = ot::AsCoreType<otNetifMulticastAddress>(v2);
  v77 = 0;
  v76 = 0;
  if (ot::Ip6::Address::IsMulticast(v80))
  {
    ot::Ip6::Address::ToString(v80, v85);
    v66 = ot::String<(unsigned short)40>::AsCString(v85);
    ot::Ip6::Netif::IsMulticastSubscribed(this, v80);
    otLogDebgPlat("Netif::SubscribeExternalMulticast address:%s isAlready:%d", v3, v4, v5, v6, v7, v8, v9, v66);
    if (ot::Ip6::Netif::IsMulticastSubscribed(this, v80))
    {
      return 24;
    }

    else
    {
      for (i = v78; i; i = ot::Ip6::Netif::MulticastAddress::GetNext(i))
      {
        Address = ot::Ip6::Netif::MulticastAddress::GetAddress(i);
        if (!ot::Unequatable<ot::Ip6::Address>::operator!=(Address, v80))
        {
          return 37;
        }
      }

      for (j = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::GetHead(this); j; j = ot::Ip6::Netif::UnicastAddress::GetNext(j))
      {
        ot::Ip6::Address::GetBytes(v80);
        v65 = *(v11 + 8);
        v12 = ot::Ip6::Netif::UnicastAddress::GetAddress(j);
        ot::Ip6::Address::GetBytes(v12);
        if (v65 != *(v13 + 12))
        {
          goto LABEL_16;
        }

        ot::Ip6::Address::GetBytes(v80);
        v64 = *(v14 + 9);
        v15 = ot::Ip6::Netif::UnicastAddress::GetAddress(j);
        ot::Ip6::Address::GetBytes(v15);
        if (v64 != *(v16 + 13))
        {
          goto LABEL_16;
        }

        ot::Ip6::Address::GetBytes(v80);
        v63 = *(v17 + 10);
        v18 = ot::Ip6::Netif::UnicastAddress::GetAddress(j);
        ot::Ip6::Address::GetBytes(v18);
        if (v63 != *(v19 + 14) || (ot::Ip6::Address::GetBytes(v80), v61 = *(v20 + 11), v21 = ot::Ip6::Netif::UnicastAddress::GetAddress(j), ot::Ip6::Address::GetBytes(v21), v62 = 1, v61 != *(v22 + 15)))
        {
LABEL_16:
          ot::Ip6::Address::GetBytes(v80);
          v59 = *(v23 + 8);
          v24 = ot::Ip6::Netif::UnicastAddress::GetAddress(j);
          ot::Ip6::Address::GetBytes(v24);
          v60 = 0;
          if (v59 == *v25)
          {
            ot::Ip6::Address::GetBytes(v80);
            v58 = *(v26 + 9);
            v27 = ot::Ip6::Netif::UnicastAddress::GetAddress(j);
            ot::Ip6::Address::GetBytes(v27);
            v60 = 0;
            if (v58 == *(v28 + 1))
            {
              ot::Ip6::Address::GetBytes(v80);
              v57 = *(v29 + 10);
              v30 = ot::Ip6::Netif::UnicastAddress::GetAddress(j);
              ot::Ip6::Address::GetBytes(v30);
              v60 = 0;
              if (v57 == *(v31 + 2))
              {
                ot::Ip6::Address::GetBytes(v80);
                v56 = *(v32 + 11);
                v33 = ot::Ip6::Netif::UnicastAddress::GetAddress(j);
                ot::Ip6::Address::GetBytes(v33);
                v60 = v56 == *(v34 + 3);
              }
            }
          }

          v62 = v60;
        }

        v76 = v62;
        if (v62)
        {
          ot::Ip6::Address::ToString(v80, v84);
          v55 = ot::String<(unsigned short)40>::AsCString(v84);
          v35 = ot::Ip6::Netif::UnicastAddress::GetAddress(j);
          ot::Ip6::Address::ToString(v35, v83);
          ot::String<(unsigned short)40>::AsCString(v83);
          otLogWarnPlat("Netif::SubscribeExternalMulticast address:%s is node address derived from unicast address:%s, skip such addresses", v36, v37, v38, v39, v40, v41, v42, v55);
        }

        if (v76)
        {
          return 37;
        }
      }

      v77 = ot::Pool<ot::Ip6::Netif::ExternalMulticastAddress,(unsigned short)8>::Allocate(this + 37);
      if (v77)
      {
        *v77 = *v80;
        *(v77 + 24) = 0;
        ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Push(this + 1, v77);
        ot::Ip6::Address::ToString(v80, v82);
        v43 = ot::String<(unsigned short)40>::AsCString(v82);
        otLogDebgPlat("Netif::SubscribeExternalMulticast Signal MulticastSubscribed for address:%s", v44, v45, v46, v47, v48, v49, v50, v43);
        ot::Ip6::Netif::SignalMulticastAddressChange(this, 1, v77, 3);
        if (ot::CallbackBase<void (*)(otIp6AddressInfo const*,BOOL,void *)>::IsSet(this + 2))
        {
          v51 = ot::Ip6::Netif::MulticastAddress::GetAddress(v73);
          *v51 = *v80;
          v70 = ot::Ip6::Netif::MulticastAddress::GetAddress(v73);
          v71 = 0x80;
          v52 = ot::Ip6::Netif::MulticastAddress::GetAddress(v73);
          Scope = ot::Ip6::Address::GetScope(v52);
          v72 = v72 & 0xF0 | Scope & 0xF;
          v72 &= ~0x10u;
          v69 = &v70;
          v68 = 1;
          ot::Callback<void (*)(otIp6AddressInfo const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<otIp6AddressInfo*,ot::Ip6::Netif::AddressEvent>(this + 16, &v69, &v68);
        }
      }

      else
      {
        return 3;
      }
    }
  }

  else
  {
    return 7;
  }

  return v79;
}

uint64_t ot::Ip6::Netif::UnicastAddress::GetNext(ot::Ip6::Netif::UnicastAddress *this)
{
  return *(this + 3);
}

{
  return ot::Ip6::Netif::UnicastAddress::GetNext(this);
}

ot::Ip6::Netif::ExternalMulticastAddress *ot::Pool<ot::Ip6::Netif::ExternalMulticastAddress,(unsigned short)8>::Allocate(ot::Ip6::Netif::ExternalMulticastAddress **a1)
{
  return ot::LinkedList<ot::Ip6::Netif::ExternalMulticastAddress>::Pop(a1);
}

{
  return ot::Pool<ot::Ip6::Netif::ExternalMulticastAddress,(unsigned short)8>::Allocate(a1);
}

uint64_t ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Push(uint64_t *a1, uint64_t a2)
{
  result = ot::LinkedListEntry<ot::Ip6::Netif::MulticastAddress>::SetNext(a2, *a1);
  *a1 = a2;
  return result;
}

{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Push(a1, a2);
}

uint64_t ot::Callback<void (*)(otIp6AddressInfo const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<otIp6AddressInfo*,ot::Ip6::Netif::AddressEvent>(uint64_t a1, void *a2, _BYTE *a3)
{
  return (*a1)(*a2, (*a3 & 1) != 0, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otIp6AddressInfo const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<otIp6AddressInfo*,ot::Ip6::Netif::AddressEvent>(a1, a2, a3);
}

uint64_t ot::Ip6::Netif::UnsubscribeExternalMulticast(ot::Ip6::Netif *this, const ot::Ip6::Address *a2)
{
  v34 = this;
  v33 = a2;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  ot::Ip6::Address::ToString(a2, v36);
  v22 = ot::String<(unsigned short)40>::AsCString(v36);
  ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::FindMatching<ot::Ip6::Address>(this + 8, v33, &v30);
  otLogDebgPlat("Netif::unsubscribeExternalMulticast address:%s entry:%d", v2, v3, v4, v5, v6, v7, v8, v22);
  ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::FindMatching<ot::Ip6::Address>(this + 8, v33, &v30);
  v31 = v9;
  if (v9)
  {
    if (ot::Ip6::Netif::IsMulticastAddressExternal(this, v31))
    {
      ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::PopAfter(this + 1, v30);
      ot::Ip6::Netif::SignalMulticastAddressChange(this, 0, v31, 3);
      ot::Pool<ot::Ip6::Netif::ExternalMulticastAddress,(unsigned short)8>::Free(this + 37, v31);
      ot::Ip6::Address::ToString(v33, v35);
      v21 = ot::String<(unsigned short)40>::AsCString(v35);
      ot::Pool<ot::Ip6::Netif::ExternalMulticastAddress,(unsigned short)8>::GetSize();
      otLogDebgPlat("Netif::unSubscribeExternalMulticast Signal multicastUnsubscribed for  address:%s poolSize:%d", v10, v11, v12, v13, v14, v15, v16, v21);
      if (ot::CallbackBase<void (*)(otIp6AddressInfo const*,BOOL,void *)>::IsSet(this + 2))
      {
        Address = ot::Ip6::Netif::MulticastAddress::GetAddress(v29);
        *Address = *v33;
        v26 = ot::Ip6::Netif::MulticastAddress::GetAddress(v29);
        v27 = 0x80;
        v18 = ot::Ip6::Netif::MulticastAddress::GetAddress(v29);
        Scope = ot::Ip6::Address::GetScope(v18);
        v28 = v28 & 0xF0 | Scope & 0xF;
        v28 &= ~0x10u;
        v25 = &v26;
        v24 = 0;
        ot::Callback<void (*)(otIp6AddressInfo const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<otIp6AddressInfo*,ot::Ip6::Netif::AddressEvent>(this + 16, &v25, &v24);
      }
    }

    else
    {
      return 37;
    }
  }

  else
  {
    return 23;
  }

  return v32;
}

void ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::FindMatching<ot::Ip6::Address>(uint64_t a1, const ot::Ip6::Address *a2, ot::Ip6::Netif::MulticastAddress **a3)
{
  ot::AsConst<ot::LinkedList<ot::Ip6::Netif::MulticastAddress>>();
  ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::FindMatching<ot::Ip6::Address>(v3, a2, a3);
  ot::AsNonConst<ot::Ip6::Netif::MulticastAddress>();
}

{
  ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::FindMatching<ot::Ip6::Address>(a1, a2, a3);
}

ot::Ip6::Netif::MulticastAddress *ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::PopAfter(ot::Ip6::Netif::MulticastAddress **a1, ot::Ip6::Netif::MulticastAddress *a2)
{
  if (!a2)
  {
    return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Pop(a1);
  }

  ot::Ip6::Netif::MulticastAddress::GetNext(a2);
  v5 = v2;
  if (v2)
  {
    ot::Ip6::Netif::MulticastAddress::GetNext(v2);
    ot::LinkedListEntry<ot::Ip6::Netif::MulticastAddress>::SetNext(a2, v3);
  }

  return v5;
}

{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::PopAfter(a1, a2);
}

uint64_t ot::Pool<ot::Ip6::Netif::ExternalMulticastAddress,(unsigned short)8>::Free(uint64_t *a1, uint64_t a2)
{
  return ot::LinkedList<ot::Ip6::Netif::ExternalMulticastAddress>::Push(a1, a2);
}

{
  return ot::Pool<ot::Ip6::Netif::ExternalMulticastAddress,(unsigned short)8>::Free(a1, a2);
}

uint64_t ot::Pool<ot::Ip6::Netif::ExternalMulticastAddress,(unsigned short)8>::GetSize()
{
  return 8;
}

{
  return ot::Pool<ot::Ip6::Netif::ExternalMulticastAddress,(unsigned short)8>::GetSize();
}

void ot::Ip6::Netif::UnsubscribeAllExternalMulticastAddresses(ot::Ip6::Netif *this)
{
  for (i = ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::GetHead(this + 8); i; i = v5)
  {
    ot::Ip6::Netif::MulticastAddress::GetNext(i);
    v5 = v1;
    if (ot::Ip6::Netif::IsMulticastAddressExternal(this, i))
    {
      Address = ot::Ip6::Netif::MulticastAddress::GetAddress(i);
      ot::Ip6::Netif::UnsubscribeExternalMulticast(this, Address);
      IgnoreError();
    }
  }
}

void ot::Ip6::Netif::MulticastAddress::GetNext(ot::Ip6::Netif::MulticastAddress *this)
{
  v1 = *(this + 2);
  ot::AsNonConst<otNetifMulticastAddress>();
}

{
  ot::Ip6::Netif::MulticastAddress::GetNext(this);
}

void ot::Ip6::Netif::AddUnicastAddress(ot::Ip6::Netif *this, ot::Ip6::Netif::UnicastAddress *a2)
{
  v19 = this;
  v18 = a2;
  Address = ot::Ip6::Netif::UnicastAddress::GetAddress(a2);
  ot::Ip6::Address::ToString(Address, v20);
  v3 = ot::String<(unsigned short)40>::AsCString(v20);
  std::string::basic_string[abi:dn200100]<0>(&v17, v3);
  std::string::basic_string[abi:dn200100]<0>(&v16, "ff:fe00:fc1");
  std::string::basic_string[abi:dn200100]<0>(&v15, "ff:fe00:fc2");
  if (std::string::find[abi:dn200100](&v17, &v16, 0) == -1 && std::string::find[abi:dn200100](&v17, &v15, 0) == -1)
  {
    if ((*(v18 + 9) & 0x100) != 0)
    {
      v13 = ot::Ip6::Netif::UnicastAddress::GetAddress(v18);
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v11);
      ot::Ip6::Address::SetPrefix(v13, MeshLocalPrefix);
    }

    if (!ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Add(this, v18))
    {
      ot::Ip6::Netif::SignalUnicastAddressChange(this, 1, v18);
    }
  }

  else
  {
    std::string::c_str[abi:dn200100](&v17);
    otLogInfoPlat("%s Avoid adding anycast address:%s", v4, v5, v6, v7, v8, v9, v10, "AddUnicastAddress");
  }

  std::string::~string(&v15);
  std::string::~string(&v16);
  std::string::~string(&v17);
}

uint64_t std::string::find[abi:dn200100](uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  std::string::data[abi:dn200100](a1);
  v10 = v3;
  v8 = std::string::size[abi:dn200100](a1);
  std::string::data[abi:dn200100](a2);
  v9 = v4;
  v5 = std::string::size[abi:dn200100](a2);
  return std::__str_find[abi:dn200100]<char,unsigned long,std::char_traits<char>,18446744073709551615ul>(v10, v8, v9, a3, v5);
}

uint64_t ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Add(uint64_t *a1, ot::Ip6::Netif::UnicastAddress *a2)
{
  v4 = 0;
  if (ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Contains(a1, a2))
  {
    return 24;
  }

  else
  {
    ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Push(a1, a2);
  }

  return v4;
}

{
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Add(a1, a2);
}

uint64_t ot::Ip6::Netif::SignalUnicastAddressChange(ot::InstanceLocator *a1, char a2, ot::Ip6::Netif::UnicastAddress *a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = 0;
  if ((*(a3 + 9) & 0x80) != 0)
  {
    v3 = 32;
    if ((v16 & 1) != 1)
    {
      v3 = 64;
    }

    v14 = v3;
  }

  else
  {
    v4 = 2;
    if ((v16 & 1) == 1)
    {
      v4 = 1;
    }

    v14 = v4;
  }

  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
  ot::Notifier::Signal(v5, v14);
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::HistoryTracker>(a1);
  ot::Utils::HistoryTracker::RecordAddressEvent(v6, v16 & 1, v15);
  result = ot::Ip6::Netif::IsUnicastAddressExternal(a1, v15);
  if ((result & 1) == 0)
  {
    result = ot::CallbackBase<void (*)(otIp6AddressInfo const*,BOOL,void *)>::IsSet(a1 + 2);
    if (result)
    {
      v11 = v15;
      v12 = *(v15 + 16);
      Scope = ot::Ip6::Netif::UnicastAddress::GetScope(v15);
      v13 = v13 & 0xF0 | Scope & 0xF;
      v13 = v13 & 0xEF | (16 * ((*(v15 + 9) & 1) != 0));
      v13 = v13 & 0xDF | (32 * ((*(v15 + 9) & 0x100) != 0));
      v10 = &v11;
      return ot::Callback<void (*)(otIp6AddressInfo const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<otIp6AddressInfo*,ot::Ip6::Netif::AddressEvent &>(a1 + 16, &v10, &v16);
    }
  }

  return result;
}

uint64_t ot::Ip6::Netif::RemoveUnicastAddress(ot::Ip6::Netif *this, ot::Ip6::Netif::UnicastAddress *a2)
{
  result = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Remove(this, a2);
  if (!result)
  {
    *(a2 + 9) &= ~0x200u;
    return ot::Ip6::Netif::SignalUnicastAddressChange(this, 0, a2);
  }

  return result;
}

uint64_t ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Remove(ot::Ip6::Netif::UnicastAddress *a1, ot::Ip6::Netif::UnicastAddress *a2)
{
  v5[2] = a1;
  v5[1] = a2;
  v5[0] = 0;
  v4 = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Find(a1, a2, v5);
  if (!v4)
  {
    ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::PopAfter(a1, v5[0]);
  }

  return v4;
}

{
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Remove(a1, a2);
}

uint64_t ot::Ip6::Netif::UpdatePreferredFlagOn(ot::Ip6::Netif *this, ot::Ip6::Netif::UnicastAddress *a2, char a3)
{
  result = ot::Ip6::Netif::HasUnicastAddress(this, a2);
  if ((result & 1) != 0 && (*(a2 + 9) & 1) != (a3 & 1))
  {
    ot::Ip6::Netif::SignalUnicastAddressChange(this, 0, a2);
    *(a2 + 9) = *(a2 + 9) & 0xFFFE | a3 & 1;
    return ot::Ip6::Netif::SignalUnicastAddressChange(this, 1, a2);
  }

  return result;
}

BOOL ot::Ip6::Netif::HasUnicastAddress(ot::Ip6::Netif *this, const ot::Ip6::Netif::UnicastAddress *a2)
{
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Contains(this, a2);
}

{
  return ot::Ip6::Netif::HasUnicastAddress(this, a2);
}

uint64_t ot::Ip6::Netif::AddExternalUnicastAddress(ot::Ip6::Netif::UnicastAddress **this, const ot::Ip6::Netif::UnicastAddress *a2)
{
  v33 = 0;
  Address = ot::Ip6::Netif::UnicastAddress::GetAddress(a2);
  if (ot::Ip6::Address::IsMulticast(Address))
  {
    return 7;
  }

  else
  {
    v3 = ot::Ip6::Netif::UnicastAddress::GetAddress(a2);
    ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::FindMatching<ot::Ip6::Address>(this, v3);
    v31 = v4;
    if (v4)
    {
      if (ot::Ip6::Netif::IsUnicastAddressExternal(this, v4))
      {
        *(v31 + 16) = *(a2 + 16);
        *(v31 + 17) = *(a2 + 17);
        *(v31 + 9) = *(v31 + 9) & 0xFFFE | ((*(a2 + 9) & 1) != 0);
        *(v31 + 9) = *(v31 + 9) & 0xFFFD | (2 * ((*(a2 + 9) & 2) != 0));
      }

      else
      {
        return 7;
      }
    }

    else
    {
      v5 = ot::Ip6::Netif::UnicastAddress::GetAddress(a2);
      if (ot::Ip6::Address::IsLinkLocalUnicast(v5))
      {
        return 7;
      }

      else
      {
        v32 = ot::Pool<ot::Ip6::Netif::UnicastAddress,(unsigned short)8>::Allocate(this + 4);
        if (v32)
        {
          *v32 = *a2;
          *(v32 + 1) = *(a2 + 1);
          *(v32 + 9) &= ~0x80u;
          *(v32 + 9) &= ~0x100u;
          *(v32 + 9) &= ~0x200u;
          ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Push(this, v32);
          v6 = ot::Ip6::Netif::UnicastAddress::GetAddress(v32);
          if (ne_tunnel_add_address(v6, *(v32 + 16), *(v32 + 9) & 1))
          {
            v16 = ot::Ip6::Netif::UnicastAddress::GetAddress(v32);
            ot::Ip6::Address::ToString(v16, v35);
            v17 = ot::String<(unsigned short)40>::AsCString(v35);
            v27 = *(v32 + 16);
            v29 = *(v32 + 9) & 1;
            otLogWarnPlat("[ne_tunnel] Failed to add %s/%u preferred:%d ret:%d", v18, v19, v20, v21, v22, v23, v24, v17);
          }

          else
          {
            v7 = ot::Ip6::Netif::UnicastAddress::GetAddress(v32);
            ot::Ip6::Address::ToString(v7, v36);
            v8 = ot::String<(unsigned short)40>::AsCString(v36);
            v26 = *(v32 + 16);
            v28 = *(v32 + 9) & 1;
            otLogInfoPlat("[ne_tunnel] Added %s/%u preferred:%d", v9, v10, v11, v12, v13, v14, v15, v8);
          }

          ot::Ip6::Netif::SignalUnicastAddressChange(this, 1, v32);
        }

        else
        {
          return 3;
        }
      }
    }
  }

  return v33;
}

void ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::FindMatching<ot::Ip6::Address>(uint64_t a1, ot::Ip6::Netif::UnicastAddress *a2)
{
  ot::AsConst<ot::LinkedList<ot::Ip6::Netif::UnicastAddress>>();
  ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::FindMatching<ot::Ip6::Address>(v2, a2);
  ot::AsNonConst<ot::Ip6::Netif::UnicastAddress>();
}

{
  ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::FindMatching<ot::Ip6::Address>(a1, a2);
}

ot::Ip6::Netif::UnicastAddress *ot::Pool<ot::Ip6::Netif::UnicastAddress,(unsigned short)8>::Allocate(ot::Ip6::Netif::UnicastAddress **a1)
{
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Pop(a1);
}

{
  return ot::Pool<ot::Ip6::Netif::UnicastAddress,(unsigned short)8>::Allocate(a1);
}

uint64_t ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Push(uint64_t *a1, uint64_t a2)
{
  result = ot::LinkedListEntry<ot::Ip6::Netif::UnicastAddress>::SetNext(a2, *a1);
  *a1 = a2;
  return result;
}

{
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Push(a1, a2);
}

uint64_t ot::Ip6::Netif::RemoveExternalUnicastAddress(ot::Ip6::Netif *this, const ot::Ip6::Address *a2)
{
  v28 = this;
  v27 = a2;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::FindMatching<ot::Ip6::Address>(this, a2, &v24);
  v25 = v2;
  if (v2)
  {
    if (ot::Ip6::Netif::IsUnicastAddressExternal(this, v25))
    {
      ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::PopAfter(this, v24);
      Address = ot::Ip6::Netif::UnicastAddress::GetAddress(v25);
      if (ne_tunnel_remove_address(Address))
      {
        v13 = ot::Ip6::Netif::UnicastAddress::GetAddress(v25);
        ot::Ip6::Address::ToString(v13, v29);
        v14 = ot::String<(unsigned short)40>::AsCString(v29);
        otLogWarnPlat("[ne_tunnel] Failed to remove %s ret:%d", v15, v16, v17, v18, v19, v20, v21, v14);
      }

      else
      {
        v4 = ot::Ip6::Netif::UnicastAddress::GetAddress(v25);
        ot::Ip6::Address::ToString(v4, v30);
        v5 = ot::String<(unsigned short)40>::AsCString(v30);
        otLogInfoPlat("[ne_tunnel] Removed %s", v6, v7, v8, v9, v10, v11, v12, v5);
      }

      ot::Ip6::Netif::SignalUnicastAddressChange(this, 0, v25);
      ot::Pool<ot::Ip6::Netif::UnicastAddress,(unsigned short)8>::Free(this + 4, v25);
    }

    else
    {
      return 37;
    }
  }

  else
  {
    return 23;
  }

  return v26;
}

void ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::FindMatching<ot::Ip6::Address>(uint64_t a1, const ot::Ip6::Address *a2, ot::Ip6::Netif::UnicastAddress **a3)
{
  ot::AsConst<ot::LinkedList<ot::Ip6::Netif::UnicastAddress>>();
  ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::FindMatching<ot::Ip6::Address>(v3, a2, a3);
  ot::AsNonConst<ot::Ip6::Netif::UnicastAddress>();
}

{
  ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::FindMatching<ot::Ip6::Address>(a1, a2, a3);
}

ot::Ip6::Netif::UnicastAddress *ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::PopAfter(ot::Ip6::Netif::UnicastAddress **a1, ot::Ip6::Netif::UnicastAddress *a2)
{
  if (!a2)
  {
    return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Pop(a1);
  }

  ot::Ip6::Netif::UnicastAddress::GetNext(a2);
  v5 = v2;
  if (v2)
  {
    ot::Ip6::Netif::UnicastAddress::GetNext(v2);
    ot::LinkedListEntry<ot::Ip6::Netif::UnicastAddress>::SetNext(a2, v3);
  }

  return v5;
}

{
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::PopAfter(a1, a2);
}

uint64_t ot::Pool<ot::Ip6::Netif::UnicastAddress,(unsigned short)8>::Free(uint64_t *a1, uint64_t a2)
{
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Push(a1, a2);
}

{
  return ot::Pool<ot::Ip6::Netif::UnicastAddress,(unsigned short)8>::Free(a1, a2);
}

void ot::Ip6::Netif::RemoveAllExternalUnicastAddresses(ot::Ip6::Netif *this)
{
  for (i = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::GetHead(this); i; i = v5)
  {
    ot::Ip6::Netif::UnicastAddress::GetNext(i);
    v5 = v1;
    if (ot::Ip6::Netif::IsUnicastAddressExternal(this, i))
    {
      Address = ot::Ip6::Netif::UnicastAddress::GetAddress(i);
      ot::Ip6::Netif::RemoveExternalUnicastAddress(this, Address);
      IgnoreError();
    }
  }
}

BOOL ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::ContainsMatching<ot::Ip6::Address>(ot::Ip6::Netif::UnicastAddress *a1, ot::Ip6::Netif::UnicastAddress *a2)
{
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::FindMatching<ot::Ip6::Address>(a1, a2) != 0;
}

{
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::ContainsMatching<ot::Ip6::Address>(a1, a2);
}

BOOL ot::Pool<ot::Ip6::Netif::UnicastAddress,(unsigned short)8>::IsPoolEntry(uint64_t a1, unint64_t a2)
{
  v3 = 0;
  if (a1 + 8 <= a2)
  {
    return a2 < ot::GetArrayEnd<ot::Ip6::Netif::UnicastAddress,(unsigned short)8>(a1 + 8);
  }

  return v3;
}

{
  return ot::Pool<ot::Ip6::Netif::UnicastAddress,(unsigned short)8>::IsPoolEntry(a1, a2);
}

BOOL ot::Ip6::Netif::ApplyNewMeshLocalPrefix(ot::Ip6::Netif *this)
{
  v15[2] = this;
  v15[1] = this;
  v15[0] = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::begin(this);
  v14 = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::end();
  while (ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator!=(v15, &v14))
  {
    v13 = ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator*(v15);
    if ((*(v13 + 9) & 0x100) != 0)
    {
      ot::Ip6::Netif::SignalUnicastAddressChange(this, 0, v13);
      *(v13 + 9) &= ~0x200u;
      Address = ot::Ip6::Netif::UnicastAddress::GetAddress(v13);
      v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v1);
      ot::Ip6::Address::SetPrefix(Address, MeshLocalPrefix);
      ot::Ip6::Netif::SignalUnicastAddressChange(this, 1, v13);
    }

    ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator++(v15);
  }

  v12[1] = (this + 8);
  v12[0] = ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::begin(this + 8);
  v11 = ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::end();
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Ip6::Netif::MulticastAddress,ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Iterator>::operator!=(v12, &v11);
    if (!result)
    {
      break;
    }

    v10 = ot::ItemPtrIterator<ot::Ip6::Netif::MulticastAddress,ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Iterator>::operator*(v12);
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (ot::Mle::Mle::IsMulticastAddressMeshLocalPrefixBased(v4, v10))
    {
      ot::Ip6::Netif::SignalMulticastAddressChange(this, 0, v10, 0);
      v7 = ot::Ip6::Netif::MulticastAddress::GetAddress(v10);
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      v6 = ot::Mle::Mle::GetMeshLocalPrefix(v5);
      ot::Ip6::Address::SetMulticastNetworkPrefix(v7, v6);
      ot::Ip6::Netif::SignalMulticastAddressChange(this, 1, v10, 0);
    }

    ot::ItemPtrIterator<ot::Ip6::Netif::MulticastAddress,ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Iterator>::operator++(v12);
  }

  return result;
}

uint64_t ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::begin(uint64_t a1)
{
  Head = ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::GetHead(a1);
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v3, Head);
  return v3;
}

{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::begin(a1);
}

uint64_t ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::end()
{
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v1, 0);
  return v1;
}

{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::end();
}

BOOL ot::ItemPtrIterator<ot::Ip6::Netif::MulticastAddress,ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Iterator>::operator!=(void *a1, void *a2)
{
  return *a1 != *a2;
}

{
  return ot::ItemPtrIterator<ot::Ip6::Netif::MulticastAddress,ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Iterator>::operator!=(a1, a2);
}

uint64_t ot::ItemPtrIterator<ot::Ip6::Netif::MulticastAddress,ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Iterator>::operator*(uint64_t a1)
{
  return *a1;
}

{
  return ot::ItemPtrIterator<ot::Ip6::Netif::MulticastAddress,ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Iterator>::operator*(a1);
}

BOOL ot::Mle::Mle::IsMulticastAddressMeshLocalPrefixBased(ot::Mle::Mle *this, const ot::Ip6::Netif::MulticastAddress *a2)
{
  v3 = 1;
  if (a2 != (this + 1088))
  {
    return a2 == (this + 1112);
  }

  return v3;
}

{
  return ot::Mle::Mle::IsMulticastAddressMeshLocalPrefixBased(this, a2);
}

void ot::ItemPtrIterator<ot::Ip6::Netif::MulticastAddress,ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Iterator>::operator++(ot::Ip6::Netif::MulticastAddress **a1)
{
  ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Iterator::Advance(a1);
}

{
  ot::ItemPtrIterator<ot::Ip6::Netif::MulticastAddress,ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Iterator>::operator++(a1);
}

void ot::Ip6::Netif::UnicastAddress::InitAsThreadOrigin(ot::Ip6::Netif::UnicastAddress *this)
{
  ot::Clearable<ot::Ip6::Netif::UnicastAddress>::Clear(this);
  *(this + 16) = 64;
  *(this + 17) = 0;
  *(this + 9) = *(this + 9) & 0xFFFE | 1;
  *(this + 9) = *(this + 9) & 0xFFFD | 2;
}

double ot::Clearable<ot::Ip6::Netif::UnicastAddress>::Clear(_OWORD *a1)
{
  return ot::ClearAllBytes<ot::Ip6::Netif::UnicastAddress>(a1);
}

{
  return ot::Clearable<ot::Ip6::Netif::UnicastAddress>::Clear(a1);
}

uint64_t ot::Ip6::Netif::UnicastAddress::InitAsThreadOriginMeshLocal(ot::Ip6::Netif::UnicastAddress *this)
{
  ot::Ip6::Netif::UnicastAddress::InitAsThreadOrigin(this);
  result = ot::Ip6::Netif::UnicastAddress::SetScopeOverride(this, 3);
  *(this + 9) = *(this + 9) & 0xFEFF | 0x100;
  return result;
}

uint64_t ot::Ip6::Netif::UnicastAddress::SetScopeOverride(uint64_t this, char a2)
{
  *(this + 18) = *(this + 18) & 0xFF87 | (8 * (a2 & 0xF));
  *(this + 18) = *(this + 18) & 0xFFFB | 4;
  return this;
}

{
  return ot::Ip6::Netif::UnicastAddress::SetScopeOverride(this, a2);
}

uint64_t ot::Ip6::Netif::UnicastAddress::InitAsThreadOriginGlobalScope(ot::Ip6::Netif::UnicastAddress *this)
{
  ot::Clearable<ot::Ip6::Netif::UnicastAddress>::Clear(this);
  *(this + 17) = 0;
  *(this + 9) = *(this + 9) & 0xFFFD | 2;
  return ot::Ip6::Netif::UnicastAddress::SetScopeOverride(this, 14);
}

void ot::Ip6::Netif::UnicastAddress::InitAsSlaacOrigin(ot::Ip6::Netif::UnicastAddress *this, char a2, char a3)
{
  ot::Clearable<ot::Ip6::Netif::UnicastAddress>::Clear(this);
  *(this + 16) = a2;
  *(this + 17) = 1;
  *(this + 9) = *(this + 9) & 0xFFFE | a3 & 1;
  *(this + 9) = *(this + 9) & 0xFFFD | 2;
}

uint64_t ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Iterator(uint64_t a1, uint64_t a2, char a3)
{
  ot::Ptr<ot::Message>::Ptr(a1, 0);
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  MulticastAddresses = ot::Ip6::Netif::GetMulticastAddresses(*(a1 + 8));
  Head = ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::GetHead(MulticastAddresses);
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::AdvanceFrom(a1, Head);
  return a1;
}

{
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Iterator(a1, a2, a3);
  return a1;
}

void ot::Ip6::Netif::ExternalMulticastAddress::Iterator::AdvanceFrom(ot::Ip6::Netif::ExternalMulticastAddress::Iterator *this, const ot::Ip6::Netif::MulticastAddress *Next)
{
  while (1)
  {
    v5 = 0;
    if (Next)
    {
      v4 = 0;
      if (ot::Ip6::Netif::IsMulticastAddressExternal(*(this + 1), Next))
      {
        Address = ot::Ip6::Netif::MulticastAddress::GetAddress(Next);
        v4 = ot::Ip6::Address::MatchesFilter(Address, *(this + 16));
      }

      v5 = v4 ^ 1;
    }

    if ((v5 & 1) == 0)
    {
      break;
    }

    Next = ot::Ip6::Netif::MulticastAddress::GetNext(Next);
  }

  ot::AsNonConst<ot::Ip6::Netif::ExternalMulticastAddress>();
  *this = v3;
}

void ot::AsNonConst<ot::Ip6::Netif::ExternalMulticastAddress>()
{
  ;
}

{
  ot::AsNonConst<ot::Ip6::Netif::ExternalMulticastAddress>();
}

BOOL ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Contains(ot::Ip6::Netif::UnicastAddress *a1, ot::Ip6::Netif::UnicastAddress *a2)
{
  v3[2] = a1;
  v3[1] = a2;
  v3[0] = 0;
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Find(a1, a2, v3) == 0;
}

{
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Contains(a1, a2);
}

uint64_t ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Find(ot::Ip6::Netif::UnicastAddress **a1, ot::Ip6::Netif::UnicastAddress *a2, ot::Ip6::Netif::UnicastAddress **a3)
{
  v5 = 23;
  *a3 = 0;
  for (i = *a1; i; i = ot::Ip6::Netif::UnicastAddress::GetNext(i))
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
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Find(a1, a2, a3);
}

uint64_t ot::LinkedList<ot::Ip6::Netif::ExternalMulticastAddress>::Push(uint64_t *a1, uint64_t a2)
{
  result = ot::LinkedListEntry<ot::Ip6::Netif::MulticastAddress>::SetNext(a2, *a1);
  *a1 = a2;
  return result;
}

{
  return ot::LinkedList<ot::Ip6::Netif::ExternalMulticastAddress>::Push(a1, a2);
}

ot::Ip6::Netif::MulticastAddress *ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::FindMatching<ot::Ip6::Address>(ot::Ip6::Netif::MulticastAddress *a1, ot::Ip6::Netif::MulticastAddress *a2)
{
  v3[2] = a1;
  v3[1] = a2;
  v3[0] = 0;
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::FindMatching<ot::Ip6::Address>(a1, a2, v3);
}

{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::FindMatching<ot::Ip6::Address>(a1, a2);
}

ot::Ip6::Netif::MulticastAddress *ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::FindMatching<ot::Ip6::Address>(ot::Ip6::Netif::MulticastAddress **a1, const ot::Ip6::Address *a2, ot::Ip6::Netif::MulticastAddress **a3)
{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::FindMatching<ot::Ip6::Address>(a1, *a1, 0, a2, a3);
}

{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::FindMatching<ot::Ip6::Address>(a1, a2, a3);
}

ot::Ip6::Netif::MulticastAddress *ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::FindMatching<ot::Ip6::Address>(uint64_t a1, ot::Ip6::Netif::MulticastAddress *Next, ot::Ip6::Netif::MulticastAddress *a3, const ot::Ip6::Address *a4, ot::Ip6::Netif::MulticastAddress **a5)
{
  *a5 = 0;
  while (Next != a3 && !ot::Ip6::Netif::MulticastAddress::Matches(Next, a4))
  {
    *a5 = Next;
    Next = ot::Ip6::Netif::MulticastAddress::GetNext(Next);
  }

  return Next;
}

{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::FindMatching<ot::Ip6::Address>(a1, Next, a3, a4, a5);
}

BOOL ot::Ip6::Netif::MulticastAddress::Matches(ot::Ip6::Netif::MulticastAddress *this, const ot::Ip6::Address *a2)
{
  Address = ot::Ip6::Netif::MulticastAddress::GetAddress(this);
  return ot::Equatable<ot::Ip6::Address>::operator==(Address, a2);
}

{
  return ot::Ip6::Netif::MulticastAddress::Matches(this, a2);
}

uint64_t ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Find(ot::Ip6::Netif::MulticastAddress **a1, ot::Ip6::Netif::MulticastAddress *a2, ot::Ip6::Netif::MulticastAddress **a3)
{
  v5 = 23;
  *a3 = 0;
  for (i = *a1; i; i = ot::Ip6::Netif::MulticastAddress::GetNext(i))
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
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Find(a1, a2, a3);
}

void ot::AsNonConst<ot::Ip6::Netif::MulticastAddress>()
{
  ;
}

{
  ot::AsNonConst<ot::Ip6::Netif::MulticastAddress>();
}

void ot::AsConst<ot::LinkedList<ot::Ip6::Netif::MulticastAddress>>()
{
  ;
}

{
  ot::AsConst<ot::LinkedList<ot::Ip6::Netif::MulticastAddress>>();
}

ot::Ip6::Netif::MulticastAddress *ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::GetTail(ot::Ip6::Netif::MulticastAddress **a1)
{
  Next = *a1;
  if (*a1)
  {
    for (i = ot::Ip6::Netif::MulticastAddress::GetNext(Next); i; i = ot::Ip6::Netif::MulticastAddress::GetNext(Next))
    {
      Next = ot::Ip6::Netif::MulticastAddress::GetNext(Next);
    }
  }

  return Next;
}

{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::GetTail(a1);
}

uint64_t ot::GetArrayEnd<ot::Ip6::Netif::ExternalMulticastAddress,(unsigned short)8>(uint64_t a1)
{
  return a1 + 256;
}

{
  return ot::GetArrayEnd<ot::Ip6::Netif::ExternalMulticastAddress,(unsigned short)8>(a1);
}

ot::Ip6::Netif::ExternalMulticastAddress *ot::LinkedList<ot::Ip6::Netif::ExternalMulticastAddress>::Pop(ot::Ip6::Netif::ExternalMulticastAddress **a1)
{
  v4 = *a1;
  if (*a1)
  {
    ot::Ip6::Netif::ExternalMulticastAddress::GetNext(*a1);
    *a1 = v1;
  }

  return v4;
}

{
  return ot::LinkedList<ot::Ip6::Netif::ExternalMulticastAddress>::Pop(a1);
}

void ot::Ip6::Netif::ExternalMulticastAddress::GetNext(ot::Ip6::Netif::ExternalMulticastAddress *this)
{
  v1 = *(this + 2);
  ot::AsNonConst<otNetifMulticastAddress>();
}

{
  ot::Ip6::Netif::ExternalMulticastAddress::GetNext(this);
}

ot::Ip6::Netif::MulticastAddress *ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Pop(ot::Ip6::Netif::MulticastAddress **a1)
{
  v4 = *a1;
  if (*a1)
  {
    ot::Ip6::Netif::MulticastAddress::GetNext(*a1);
    *a1 = v1;
  }

  return v4;
}

{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Pop(a1);
}

uint64_t std::__str_find[abi:dn200100]<char,unsigned long,std::char_traits<char>,18446744073709551615ul>(uint64_t a1, unint64_t a2, char *a3, unint64_t a4, uint64_t a5)
{
  if (a4 > a2)
  {
    return -1;
  }

  if (!a5)
  {
    return a4;
  }

  v6 = std::__search_substring[abi:dn200100]<char,std::char_traits<char>>((a1 + a4), a1 + a2, a3, &a3[a5]);
  if (v6 == (a1 + a2))
  {
    return -1;
  }

  else
  {
    return &v6[-a1];
  }
}

char *std::__search_substring[abi:dn200100]<char,std::char_traits<char>>(char *a1, uint64_t a2, char *a3, char *a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = a4 - a3;
  if (a4 == a3)
  {
    return v11;
  }

  v6 = v10 - v11;
  if (v10 - v11 < v7)
  {
    return v10;
  }

  v5 = *v9;
  while (1)
  {
    v6 = v10 - v11;
    if (v10 - v11 < v7)
    {
      return v10;
    }

    v11 = std::char_traits<char>::find[abi:dn200100](v11, v6 - v7 + 1, &v5);
    if (!v11)
    {
      return v10;
    }

    if (!std::char_traits<char>::compare[abi:dn200100](v11, v9, v7))
    {
      break;
    }

    ++v11;
  }

  return v11;
}

void *std::char_traits<char>::find[abi:dn200100](void *a1, size_t a2, char *a3)
{
  if (a2)
  {
    return std::__constexpr_memchr[abi:dn200100]<char const,char>(a1, *a3, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Find(uint64_t a1, ot::Ip6::Netif::UnicastAddress *a2, ot::Ip6::Netif::UnicastAddress **a3)
{
  ot::AsConst<ot::LinkedList<ot::Ip6::Netif::UnicastAddress>>();
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Find(v3, a2, a3);
}

{
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Find(a1, a2, a3);
}

void ot::AsConst<ot::LinkedList<ot::Ip6::Netif::UnicastAddress>>()
{
  ;
}

{
  ot::AsConst<ot::LinkedList<ot::Ip6::Netif::UnicastAddress>>();
}

void ot::AsNonConst<ot::Ip6::Netif::UnicastAddress>()
{
  ;
}

{
  ot::AsNonConst<ot::Ip6::Netif::UnicastAddress>();
}

ot::Ip6::Netif::UnicastAddress *ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::FindMatching<ot::Ip6::Address>(ot::Ip6::Netif::UnicastAddress *a1, ot::Ip6::Netif::UnicastAddress *a2)
{
  v3[2] = a1;
  v3[1] = a2;
  v3[0] = 0;
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::FindMatching<ot::Ip6::Address>(a1, a2, v3);
}

{
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::FindMatching<ot::Ip6::Address>(a1, a2);
}

ot::Ip6::Netif::UnicastAddress *ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::FindMatching<ot::Ip6::Address>(ot::Ip6::Netif::UnicastAddress **a1, const ot::Ip6::Address *a2, ot::Ip6::Netif::UnicastAddress **a3)
{
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::FindMatching<ot::Ip6::Address>(a1, *a1, 0, a2, a3);
}

{
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::FindMatching<ot::Ip6::Address>(a1, a2, a3);
}

ot::Ip6::Netif::UnicastAddress *ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::FindMatching<ot::Ip6::Address>(uint64_t a1, ot::Ip6::Netif::UnicastAddress *Next, ot::Ip6::Netif::UnicastAddress *a3, const ot::Ip6::Address *a4, ot::Ip6::Netif::UnicastAddress **a5)
{
  *a5 = 0;
  while (Next != a3 && !ot::Ip6::Netif::UnicastAddress::Matches(Next, a4))
  {
    *a5 = Next;
    Next = ot::Ip6::Netif::UnicastAddress::GetNext(Next);
  }

  return Next;
}

{
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::FindMatching<ot::Ip6::Address>(a1, Next, a3, a4, a5);
}

BOOL ot::Ip6::Netif::UnicastAddress::Matches(ot::Ip6::Netif::UnicastAddress *this, const ot::Ip6::Address *a2)
{
  Address = ot::Ip6::Netif::UnicastAddress::GetAddress(this);
  return ot::Equatable<ot::Ip6::Address>::operator==(Address, a2);
}

{
  return ot::Ip6::Netif::UnicastAddress::Matches(this, a2);
}

ot::Ip6::Netif::UnicastAddress *ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Pop(ot::Ip6::Netif::UnicastAddress **a1)
{
  v4 = *a1;
  if (*a1)
  {
    ot::Ip6::Netif::UnicastAddress::GetNext(*a1);
    *a1 = v1;
  }

  return v4;
}

{
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Pop(a1);
}

uint64_t ot::LinkedListEntry<ot::Ip6::Netif::UnicastAddress>::SetNext(uint64_t result, uint64_t a2)
{
  *(result + 24) = a2;
  return result;
}

{
  return ot::LinkedListEntry<ot::Ip6::Netif::UnicastAddress>::SetNext(result, a2);
}

uint64_t ot::GetArrayEnd<ot::Ip6::Netif::UnicastAddress,(unsigned short)8>(uint64_t a1)
{
  return a1 + 256;
}

{
  return ot::GetArrayEnd<ot::Ip6::Netif::UnicastAddress,(unsigned short)8>(a1);
}

void ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Iterator::Advance(ot::Ip6::Netif::MulticastAddress **a1)
{
  ot::Ip6::Netif::MulticastAddress::GetNext(*a1);
  *a1 = v1;
}

{
  ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::Iterator::Advance(a1);
}

double ot::ClearAllBytes<ot::Ip6::Netif::UnicastAddress>(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

{
  return ot::ClearAllBytes<ot::Ip6::Netif::UnicastAddress>(a1);
}

uint64_t ot::String<(unsigned short)48>::String(uint64_t a1)
{
  ot::String<(unsigned short)48>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 48);
  return a1;
}

ot::StringWriter *ot::Ip6::SockAddr::ToString(ot::Ip6::SockAddr *this, ot::StringWriter *a2)
{
  Address = ot::Ip6::SockAddr::GetAddress(this);
  ot::Ip6::Address::ToString(Address, v8);
  v6 = ot::String<(unsigned short)40>::AsCString(v8);
  Port = ot::Ip6::SockAddr::GetPort(this);
  return ot::StringWriter::Append(a2, "[%s]:%u", v6, Port);
}

ot::StringWriter *ot::Ip6::SockAddr::ToString(ot::Ip6::SockAddr *this, char *a2, __int16 a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  ot::StringWriter::StringWriter(v5, a2, a3);
  return ot::Ip6::SockAddr::ToString(this, v5);
}

uint64_t ot::Ip6::SockAddr::GetPort(ot::Ip6::SockAddr *this)
{
  return *(this + 8);
}

{
  return ot::Ip6::SockAddr::GetPort(this);
}

uint64_t ot::Ip6::Udp::SocketHandle::Matches(ot::Ip6::Udp::SocketHandle *this, const ot::Ip6::MessageInfo *a2)
{
  v17 = 0;
  v15 = *(ot::Ip6::Udp::SocketHandle::GetSockName(this) + 16);
  if (v15 == ot::Ip6::MessageInfo::GetSockPort(a2))
  {
    SockAddr = ot::Ip6::MessageInfo::GetSockAddr(a2);
    if (ot::Ip6::Address::IsMulticast(SockAddr) || (SockName = ot::Ip6::Udp::SocketHandle::GetSockName(this), v4 = ot::Ip6::SockAddr::GetAddress(SockName), ot::Ip6::Address::IsUnspecified(v4)) || (v5 = ot::Ip6::Udp::SocketHandle::GetSockName(this), v14 = ot::Ip6::SockAddr::GetAddress(v5), v6 = ot::Ip6::MessageInfo::GetSockAddr(a2), ot::Equatable<ot::Ip6::Address>::operator==(v14, v6)))
    {
      if (!*(ot::Ip6::Udp::SocketHandle::GetPeerName(this) + 16) || (v13 = *(ot::Ip6::Udp::SocketHandle::GetPeerName(this) + 16), v13 == ot::Ip6::MessageInfo::GetPeerPort(a2)) && ((PeerName = ot::Ip6::Udp::SocketHandle::GetPeerName(this), Address = ot::Ip6::SockAddr::GetAddress(PeerName), ot::Ip6::Address::IsUnspecified(Address)) || (v9 = ot::Ip6::Udp::SocketHandle::GetPeerName(this), v12 = ot::Ip6::SockAddr::GetAddress(v9), PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(a2), ot::Equatable<ot::Ip6::Address>::operator==(v12, PeerAddr))))
      {
        v17 = 1;
      }
    }
  }

  return v17 & 1;
}

uint64_t ot::Ip6::Udp::SocketHandle::GetPeerName(ot::Ip6::Udp::SocketHandle *this)
{
  return ot::AsCoreType<otSockAddr>(this + 18);
}

{
  return ot::AsCoreType<otSockAddr>(this + 18);
}

{
  return ot::Ip6::Udp::SocketHandle::GetPeerName(this);
}

{
  return ot::Ip6::Udp::SocketHandle::GetPeerName(this);
}

ot::InstanceLocator *ot::Ip6::Udp::Socket::Socket(ot::InstanceLocator *a1, ot::Instance *a2, uint64_t a3, uint64_t a4)
{
  ot::InstanceLocator::InstanceLocator(a1, a2);
  ot::Clearable<ot::Ip6::Udp::SocketHandle>::Clear(a1);
  result = a1;
  *(a1 + 5) = a3;
  *(a1 + 6) = a4;
  return result;
}

{
  ot::Ip6::Udp::Socket::Socket(a1, a2, a3, a4);
  return a1;
}

void *ot::Clearable<ot::Ip6::Udp::SocketHandle>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Ip6::Udp::SocketHandle>(a1);
}

{
  return ot::Clearable<ot::Ip6::Udp::SocketHandle>::Clear(a1);
}

uint64_t ot::Ip6::Udp::Open(ot::Ip6::Udp *a1, const ot::Ip6::Udp::SocketHandle *a2, uint64_t a3, uint64_t a4)
{
  if (ot::Ip6::Udp::IsOpen(a1, a2))
  {
    __assert_rtn("Open", "udp6.cpp", 186, "!IsOpen(aSocket)");
  }

  ot::Clearable<ot::Ip6::Udp::SocketHandle>::Clear(a2);
  *(a2 + 5) = a3;
  *(a2 + 6) = a4;
  ot::Ip6::Udp::AddSocket(a1, a2);
  return 0;
}

uint64_t ot::Ip6::Udp::Bind(ot::Ip6::Udp *a1, ot::Ip6::Udp::SocketHandle *a2, ot::Ip6::SockAddr *a3, char a4)
{
  v9 = 0;
  if (a4 == 2)
  {
    ot::Ip6::Udp::SetBackboneSocket(a1, a2);
  }

  Address = ot::Ip6::SockAddr::GetAddress(a3);
  if (ot::Ip6::Address::IsUnspecified(Address) || (v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1), v5 = ot::Ip6::SockAddr::GetAddress(a3), ot::Ip6::Netif::HasUnicastAddress(v7, v5)))
  {
    *a2 = *a3;
    *(a2 + 8) = *(a3 + 8);
    if (!ot::Ip6::Udp::SocketHandle::IsBound(a2))
    {
      *(a2 + 8) = ot::Ip6::Udp::GetEphemeralPort(a1);
    }
  }

  else
  {
    return 7;
  }

  return v9;
}

uint64_t ot::Ip6::Udp::Socket::Bind(ot::InstanceLocator *a1, __int16 a2, char a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  ot::Ip6::SockAddr::SockAddr(v5, a2);
  return ot::Ip6::Udp::Socket::Bind(a1, v5, v6);
}

uint64_t ot::Ip6::Udp::Connect(ot::Ip6::Udp *this, ot::Ip6::Udp::SocketHandle *a2, const ot::Ip6::SockAddr *a3)
{
  v6 = 0;
  *(a2 + 18) = *a3;
  *(a2 + 17) = *(a3 + 8);
  if (!ot::Ip6::Udp::SocketHandle::IsBound(a2))
  {
    SockName = ot::Ip6::Udp::SocketHandle::GetSockName(a2);
    return ot::Ip6::Udp::Bind(this, a2, SockName, 1);
  }

  return v6;
}

uint64_t ot::Ip6::Udp::Socket::Connect(ot::Ip6::Udp::Socket *this, __int16 a2)
{
  v6 = this;
  v5 = a2;
  ot::Ip6::SockAddr::SockAddr(v4, a2);
  return ot::Ip6::Udp::Socket::Connect(this, v4);
}

uint64_t ot::Ip6::Udp::Close(ot::Ip6::Udp *this, ot::Ip6::Udp::SocketHandle *a2)
{
  if (ot::Ip6::Udp::IsOpen(this, a2))
  {
    ot::Ip6::Udp::RemoveSocket(this, a2);
    SockName = ot::Ip6::Udp::SocketHandle::GetSockName(a2);
    ot::Clearable<ot::Ip6::SockAddr>::Clear(SockName);
    PeerName = ot::Ip6::Udp::SocketHandle::GetPeerName(a2);
    ot::Clearable<ot::Ip6::SockAddr>::Clear(PeerName);
  }

  return 0;
}

uint64_t ot::Ip6::Udp::SendTo(ot::Ip6::Udp *this, ot::Ip6::Udp::SocketHandle *a2, ot::Message *a3, const ot::Ip6::MessageInfo *a4)
{
  v23 = this;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = 0;
  ot::Ip6::MessageInfo::MessageInfo(__dst);
  if (!ot::Ip6::MessageInfo::GetSockPort(v20) || (v16 = *(ot::Ip6::Udp::SocketHandle::GetSockName(v22) + 16), v16 == ot::Ip6::MessageInfo::GetSockPort(v20)))
  {
    memcpy(__dst, v20, sizeof(__dst));
    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(__dst);
    if (ot::Ip6::Address::IsUnspecified(PeerAddr))
    {
      PeerName = ot::Ip6::Udp::SocketHandle::GetPeerName(v22);
      Address = ot::Ip6::SockAddr::GetAddress(PeerName);
      if (ot::Ip6::Address::IsUnspecified(Address))
      {
        return 7;
      }

      v7 = ot::Ip6::Udp::SocketHandle::GetPeerName(v22);
      v8 = ot::Ip6::SockAddr::GetAddress(v7);
      ot::Ip6::MessageInfo::SetPeerAddr(__dst, v8);
    }

    if (!*&__dst[34])
    {
      if (!*(ot::Ip6::Udp::SocketHandle::GetPeerName(v22) + 16))
      {
        return 7;
      }

      *&__dst[34] = *(ot::Ip6::Udp::SocketHandle::GetPeerName(v22) + 16);
    }

    SockAddr = ot::Ip6::MessageInfo::GetSockAddr(__dst);
    if (ot::Ip6::Address::IsUnspecified(SockAddr))
    {
      SockName = ot::Ip6::Udp::SocketHandle::GetSockName(v22);
      v11 = ot::Ip6::SockAddr::GetAddress(SockName);
      ot::Ip6::MessageInfo::SetSockAddr(__dst, v11);
    }

    if (ot::Ip6::Udp::SocketHandle::IsBound(v22) || (v15 = v22, v12 = ot::Ip6::Udp::SocketHandle::GetSockName(v22), (v19 = ot::Ip6::Udp::Bind(this, v15, v12, 1)) == 0))
    {
      v13 = ot::Ip6::Udp::SocketHandle::GetSockName(v22);
      ot::Ip6::MessageInfo::SetSockPort(__dst, *(v13 + 16));
      return ot::Ip6::Udp::SendDatagram(this, v21, __dst);
    }
  }

  else
  {
    return 7;
  }

  return v19;
}

uint64_t ot::Ip6::Udp::Socket::JoinNetifMulticastGroup(uint64_t a1, uint64_t a2, ot::Ip6::Address *a3)
{
  v4 = 12;
  if (!ot::Ip6::Address::IsMulticast(a3))
  {
    return 7;
  }

  return v4;
}

uint64_t ot::Ip6::Udp::Socket::LeaveNetifMulticastGroup(uint64_t a1, uint64_t a2, ot::Ip6::Address *a3)
{
  v4 = 12;
  if (!ot::Ip6::Address::IsMulticast(a3))
  {
    return 7;
  }

  return v4;
}

ot::Ip6::Udp *ot::Ip6::Udp::Udp(ot::Ip6::Udp *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = -16384;
  ot::OwnedPtr<ot::Message>::OwnedPtr(this + 1);
  ot::OwnedPtr<ot::Message>::OwnedPtr(this + 2);
  result = this;
  *(this + 3) = 0;
  return result;
}

{
  ot::Ip6::Udp::Udp(this, a2);
  return this;
}

uint64_t ot::LinkedList<ot::Ip6::Udp::Receiver>::Add(uint64_t *a1, void *a2)
{
  v4 = 0;
  if (ot::LinkedList<ot::Ip6::Udp::Receiver>::Contains(a1, a2))
  {
    return 24;
  }

  else
  {
    ot::LinkedList<ot::Ip6::Udp::Receiver>::Push(a1, a2);
  }

  return v4;
}

{
  return ot::LinkedList<ot::Ip6::Udp::Receiver>::Add(a1, a2);
}

uint64_t ot::Ip6::Udp::RemoveReceiver(ot::Ip6::Udp *this, ot::Ip6::Udp::Receiver *a2)
{
  v3 = ot::LinkedList<ot::Ip6::Udp::Receiver>::Remove(this + 1, a2);
  if (!v3)
  {
    ot::LinkedListEntry<ot::Ip6::Udp::Receiver>::SetNext(a2, 0);
  }

  return v3;
}

uint64_t ot::LinkedList<ot::Ip6::Udp::Receiver>::Remove(void *a1, void *a2)
{
  v5[2] = a1;
  v5[1] = a2;
  v5[0] = 0;
  v4 = ot::LinkedList<ot::Ip6::Udp::Receiver>::Find(a1, a2, v5);
  if (!v4)
  {
    ot::LinkedList<ot::Ip6::Udp::Receiver>::PopAfter(a1, v5[0]);
  }

  return v4;
}

{
  return ot::LinkedList<ot::Ip6::Udp::Receiver>::Remove(a1, a2);
}

void *ot::LinkedListEntry<ot::Ip6::Udp::Receiver>::SetNext(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  return ot::LinkedListEntry<ot::Ip6::Udp::Receiver>::SetNext(result, a2);
}

uint64_t ot::Ip6::Udp::AddSocket(ot::Ip6::Udp *this, ot::Ip6::Udp::SocketHandle *a2)
{
  result = ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Add(this + 2, a2);
  if (!result && !*(this + 3))
  {
    *(this + 3) = a2;
  }

  return result;
}

uint64_t ot::Ip6::Udp::SetBackboneSocket(ot::Ip6::Udp *this, ot::Ip6::Udp::SocketHandle *a2)
{
  ot::Ip6::Udp::RemoveSocket(this, a2);
  if (*(this + 3))
  {
    return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::PushAfter(this + 16, a2, *(this + 3));
  }

  else
  {
    return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Push(this + 2, a2);
  }
}

uint64_t ot::Ip6::Udp::GetEphemeralPort(ot::Ip6::Udp *this)
{
  do
  {
    if (*this == 0xFFFF)
    {
      *this = -16384;
    }

    else
    {
      ++*this;
    }
  }

  while ((ot::Ip6::Udp::IsPortReserved(*this) & 1) != 0);
  return *this;
}

uint64_t ot::Ip6::Udp::RemoveSocket(ot::Ip6::Udp *this, ot::Ip6::Udp::SocketHandle *a2)
{
  v6 = this;
  v5 = a2;
  v4 = 0;
  result = ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Find(this + 16, a2, &v4);
  if (!result)
  {
    ot::LinkedList<ot::Ip6::Udp::SocketHandle>::PopAfter(this + 2, v4);
    result = ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::SetNext(v5, 0);
    if (v5 == *(this + 3))
    {
      *(this + 3) = v4;
    }
  }

  return result;
}

uint64_t ot::LinkedList<ot::Ip6::Udp::SocketHandle>::PushAfter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Next = ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::GetNext(a3);
  ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::SetNext(a2, Next);
  return ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::SetNext(a3, a2);
}

{
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::PushAfter(a1, a2, a3);
}

uint64_t ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Push(uint64_t *a1, uint64_t a2)
{
  result = ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::SetNext(a2, *a1);
  *a1 = a2;
  return result;
}

{
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Push(a1, a2);
}

uint64_t ot::Ip6::Udp::GetBackboneSockets(ot::Ip6::Udp *this)
{
  if (*(this + 3))
  {
    return ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::GetNext(*(this + 3));
  }

  else
  {
    return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::GetHead(this + 16);
  }
}