_BYTE *ot::NetworkData::Leader::ChangedFlags::ChangedFlags(_BYTE *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

void ot::AsNonConst<ot::NetworkData::CommissioningDataTlv>()
{
  ;
}

{
  ot::AsNonConst<ot::NetworkData::CommissioningDataTlv>();
}

void ot::AsNonConst<ot::NetworkData::PrefixTlv>()
{
  ;
}

{
  ot::AsNonConst<ot::NetworkData::PrefixTlv>();
}

_BYTE *ot::NetworkData::NetworkDataTlv::Init(_BYTE *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

{
  return ot::NetworkData::NetworkDataTlv::Init(this);
}

_BYTE *ot::NetworkData::NetworkDataTlv::SetType(_BYTE *result, char a2)
{
  *result = *result & 1 | (2 * a2);
  return result;
}

{
  return ot::NetworkData::NetworkDataTlv::SetType(result, a2);
}

void ot::AsNonConst<ot::NetworkData::ServiceTlv>()
{
  ;
}

{
  ot::AsNonConst<ot::NetworkData::ServiceTlv>();
}

void ot::NetworkData::ServerTlv::GetServerData(ot::NetworkData::ServerTlv *this)
{
  ot::AsConst<ot::NetworkData::ServerTlv>();
  ot::NetworkData::ServerTlv::GetServerData(v1);
  ot::AsNonConst<unsigned char>();
}

{
  ot::NetworkData::ServerTlv::GetServerData(this);
}

void ot::AsConst<ot::NetworkData::ServerTlv>()
{
  ;
}

{
  ot::AsConst<ot::NetworkData::ServerTlv>();
}

void ot::NetworkData::PrefixTlv::FindSubTlv(uint64_t a1, unsigned __int8 a2, char a3)
{
  ot::AsConst<ot::NetworkData::PrefixTlv>();
  ot::NetworkData::PrefixTlv::FindSubTlv(v3, a2, a3 & 1);
  ot::AsNonConst<ot::NetworkData::NetworkDataTlv>();
}

{
  ot::NetworkData::PrefixTlv::FindSubTlv(a1, a2, a3);
}

void ot::NetworkData::NetworkDataTlv::Find(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  ot::AsConst<ot::NetworkData::NetworkDataTlv>();
  v5 = v3;
  ot::AsConst<ot::NetworkData::NetworkDataTlv>();
  ot::NetworkData::NetworkDataTlv::Find(v5, v4, a3);
  ot::AsNonConst<ot::NetworkData::NetworkDataTlv>();
}

{
  ot::NetworkData::NetworkDataTlv::Find(a1, a2, a3);
}

void ot::AsConst<ot::NetworkData::NetworkDataTlv>()
{
  ;
}

{
  ot::AsConst<ot::NetworkData::NetworkDataTlv>();
}

uint64_t ot::NetworkData::Local::AddOnMeshPrefix(ot::NetworkData::Local *this, const ot::NetworkData::OnMeshPrefixConfig *a2)
{
  v8 = 7;
  Instance = ot::InstanceLocator::GetInstance(this);
  if (ot::NetworkData::OnMeshPrefixConfig::IsValid(a2, Instance))
  {
    Prefix = ot::NetworkData::OnMeshPrefixConfig::GetPrefix(a2);
    v3 = ot::NetworkData::OnMeshPrefixConfig::ConvertToTlvFlags(a2);
    return ot::NetworkData::Local::AddPrefix(this, Prefix, 2, v3, HIBYTE(*(a2 + 17)) & 1);
  }

  return v8;
}

uint64_t ot::NetworkData::Local::AddPrefix(ot::NetworkData::Local *a1, ot::Ip6::Prefix *a2, char a3, unsigned __int16 a4, char a5)
{
  v34 = a1;
  v33 = a2;
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  ot::NetworkData::Local::RemovePrefix(a1, a2);
  IgnoreError();
  v5 = 6;
  if (v32 != 2)
  {
    v5 = 5;
  }

  v28 = v5;
  BytesSize = ot::Ip6::Prefix::GetBytesSize(v33);
  ot::NetworkData::MutableNetworkData::AppendTlv(a1, BytesSize + 4 + v28);
  ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
  v27 = v7;
  if (v7)
  {
    v25 = *v33;
    v26 = *(v33 + 16);
    ot::NetworkData::PrefixTlv::Init(v27, 0, &v25);
    ot::NetworkData::PrefixTlv::SetSubTlvsLength(v27, v28);
    if (v32 == 2)
    {
      ot::NetworkData::PrefixTlv::GetSubTlvs(v27);
      ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
      v24 = v8;
      ot::NetworkData::BorderRouterTlv::Init(v8);
      Length = ot::NetworkData::NetworkDataTlv::GetLength(v24);
      ot::NetworkData::NetworkDataTlv::SetLength(v24, Length + 4);
      Entry = ot::NetworkData::BorderRouterTlv::GetEntry(v24, 0);
      ot::NetworkData::BorderRouterEntry::Init(Entry);
      v11 = ot::NetworkData::BorderRouterTlv::GetEntry(v24, 0);
      ot::NetworkData::BorderRouterEntry::SetFlags(v11, v31);
    }

    else
    {
      ot::NetworkData::PrefixTlv::GetSubTlvs(v27);
      ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
      v23 = v12;
      ot::NetworkData::HasRouteTlv::Init(v12);
      v13 = ot::NetworkData::NetworkDataTlv::GetLength(v23);
      ot::NetworkData::NetworkDataTlv::SetLength(v23, v13 + 3);
      v14 = ot::NetworkData::HasRouteTlv::GetEntry(v23, 0);
      ot::NetworkData::HasRouteEntry::Init(v14);
      v15 = ot::NetworkData::HasRouteTlv::GetEntry(v23, 0);
      ot::NetworkData::HasRouteEntry::SetFlags(v15, v31);
    }

    if (v30)
    {
      ot::NetworkData::NetworkDataTlv::SetStable(v27);
      SubTlvs = ot::NetworkData::PrefixTlv::GetSubTlvs(v27);
      ot::NetworkData::NetworkDataTlv::SetStable(SubTlvs);
    }

    ot::NetworkData::MutableNetworkData::GetBytes(a1);
    v21 = v17;
    v18 = ot::NetworkData::NetworkData::GetLength(a1);
    ot::Logger::Dump<(ot::LogLevel)5,&ot::NetworkData::kLogModuleName>("AddPrefix", v21, v18);
  }

  else
  {
    v29 = 3;
  }

  if (v29 == 3)
  {
    v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Notifier>(a1);
    ot::NetworkData::Notifier::SignalNetworkDataFull(v19);
  }

  return v29;
}

BOOL ot::NetworkData::Local::ContainsOnMeshPrefix(ot::NetworkData::Local *this, const ot::Ip6::Prefix *a2)
{
  v3 = 0;
  Prefix = ot::NetworkData::NetworkData::FindPrefix(this, a2);
  if (Prefix)
  {
    return ot::NetworkData::PrefixTlv::FindSubTlv(Prefix, 2u) != 0;
  }

  return v3;
}

uint64_t ot::NetworkData::Local::AddHasRoutePrefix(ot::NetworkData::Local *this, const ot::NetworkData::ExternalRouteConfig *a2)
{
  v8 = 7;
  Instance = ot::InstanceLocator::GetInstance(this);
  if (ot::NetworkData::ExternalRouteConfig::IsValid(a2, Instance))
  {
    Prefix = ot::NetworkData::ExternalRouteConfig::GetPrefix(a2);
    v3 = ot::NetworkData::ExternalRouteConfig::ConvertToTlvFlags(a2);
    return ot::NetworkData::Local::AddPrefix(this, Prefix, 0, v3, (*(a2 + 20) & 8) != 0);
  }

  return v8;
}

uint64_t ot::NetworkData::Local::RemovePrefix(ot::NetworkData::Local *this, const ot::Ip6::Prefix *a2)
{
  v8 = 0;
  ot::NetworkData::MutableNetworkData::FindPrefix(this, a2);
  if (v2)
  {
    ot::NetworkData::MutableNetworkData::RemoveTlv(this, v2);
  }

  else
  {
    v8 = 23;
  }

  ot::NetworkData::MutableNetworkData::GetBytes(this);
  v6 = v3;
  Length = ot::NetworkData::NetworkData::GetLength(this);
  ot::Logger::Dump<(ot::LogLevel)5,&ot::NetworkData::kLogModuleName>("RmvPrefix", v6, Length);
  return v8;
}

uint64_t ot::NetworkData::PrefixTlv::Init(ot::NetworkData::PrefixTlv *a1, char a2, ot::Ip6::Prefix *a3)
{
  Length = ot::Ip6::Prefix::GetLength(a3);
  ot::Ip6::Prefix::GetBytes(a3);
  return ot::NetworkData::PrefixTlv::Init(a1, a2, Length, v3);
}

{
  return ot::NetworkData::PrefixTlv::Init(a1, a2, a3);
}

uint64_t ot::NetworkData::BorderRouterEntry::Init(ot::NetworkData::BorderRouterEntry *this)
{
  result = ot::NetworkData::BorderRouterEntry::SetRloc(this, 0xFFFEu);
  *(this + 1) = 0;
  return result;
}

{
  return ot::NetworkData::BorderRouterEntry::Init(this);
}

uint64_t ot::NetworkData::BorderRouterEntry::SetFlags(ot::NetworkData::BorderRouterEntry *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::NetworkData::BorderRouterEntry::SetFlags(this, a2);
}

uint64_t ot::NetworkData::HasRouteEntry::Init(ot::NetworkData::HasRouteEntry *this)
{
  result = ot::NetworkData::HasRouteEntry::SetRloc(this, 0xFFFEu);
  *(this + 2) = 0;
  return result;
}

{
  return ot::NetworkData::HasRouteEntry::Init(this);
}

uint64_t ot::NetworkData::HasRouteEntry::SetFlags(uint64_t this, char a2)
{
  *(this + 2) = a2;
  return this;
}

{
  return ot::NetworkData::HasRouteEntry::SetFlags(this, a2);
}

void ot::NetworkData::MutableNetworkData::FindPrefix(ot::NetworkData::MutableNetworkData *this, const ot::Ip6::Prefix *a2)
{
  ot::Ip6::Prefix::GetBytes(a2);
  v4 = v2;
  Length = ot::Ip6::Prefix::GetLength(a2);
  ot::NetworkData::MutableNetworkData::FindPrefix(this, v4, Length);
}

{
  ot::NetworkData::MutableNetworkData::FindPrefix(this, a2);
}

uint64_t ot::NetworkData::MutableNetworkData::Clear(uint64_t this)
{
  *(this + 8) = 0;
  return this;
}

{
  return ot::NetworkData::MutableNetworkData::Clear(this);
}

unint64_t ot::NetworkData::Local::UpdateRloc(ot::NetworkData::Local *this, ot::NetworkData::PrefixTlv *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  Rloc16 = ot::Mle::Mle::GetRloc16(v2);
  for (i = ot::NetworkData::PrefixTlv::GetSubTlvs(a2); ; i = ot::NetworkData::NetworkDataTlv::GetNext(i))
  {
    result = ot::NetworkData::NetworkDataTlv::GetNext(a2);
    if (i >= result)
    {
      break;
    }

    Type = ot::NetworkData::NetworkDataTlv::GetType(i);
    if (Type)
    {
      if (Type != 2)
      {
        __assert_rtn("UpdateRloc", "network_data_local.cpp", 187, "false");
      }

      ot::NetworkData::As<ot::NetworkData::BorderRouterTlv>();
      Entry = ot::NetworkData::BorderRouterTlv::GetEntry(v6, 0);
      ot::NetworkData::BorderRouterEntry::SetRloc(Entry, Rloc16);
    }

    else
    {
      ot::NetworkData::As<ot::NetworkData::HasRouteTlv>();
      v5 = ot::NetworkData::HasRouteTlv::GetEntry(v4, 0);
      ot::NetworkData::HasRouteEntry::SetRloc(v5, Rloc16);
    }
  }

  return result;
}

uint64_t ot::NetworkData::Local::AddService(ot::NetworkData::MutableNetworkData *a1, unsigned int a2, uint64_t a3, char a4, uint64_t a5)
{
  v23 = 0;
  Length = ot::Data<(ot::DataLengthType)0>::GetLength(a3);
  v18 = ot::NetworkData::ServiceTlv::CalculateSize(a2, Length) + 4;
  v20 = (v18 + ot::Data<(ot::DataLengthType)0>::GetLength(a5));
  ot::NetworkData::Local::RemoveService(a1, a2, a3);
  IgnoreError();
  if (v20 <= 0xFEu)
  {
    ot::NetworkData::MutableNetworkData::AppendTlv(a1, v20);
    ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
    v22 = v6;
    if (v6)
    {
      ot::NetworkData::ServiceTlv::Init(v6, 0, a2, a3);
      v7 = ot::Data<(ot::DataLengthType)0>::GetLength(a5);
      ot::NetworkData::ServiceTlv::SetSubTlvsLength(v22, v7 + 4);
      ot::NetworkData::ServiceTlv::GetSubTlvs(v22);
      ot::NetworkData::As<ot::NetworkData::ServerTlv>();
      v21 = v8;
      v16 = v8;
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
      Rloc16 = ot::Mle::Mle::GetRloc16(v9);
      ot::NetworkData::ServerTlv::Init(v16, Rloc16, a5);
      if (a4)
      {
        ot::NetworkData::NetworkDataTlv::SetStable(v22);
        ot::NetworkData::NetworkDataTlv::SetStable(v21);
      }

      ot::NetworkData::MutableNetworkData::GetBytes(a1);
      v15 = v11;
      v12 = ot::NetworkData::NetworkData::GetLength(a1);
      ot::Logger::Dump<(ot::LogLevel)5,&ot::NetworkData::kLogModuleName>("AddService", v15, v12);
    }

    else
    {
      v23 = 3;
    }
  }

  else
  {
    v23 = 3;
  }

  if (v23 == 3)
  {
    v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Notifier>(a1);
    ot::NetworkData::Notifier::SignalNetworkDataFull(v13);
  }

  return v23;
}

uint64_t ot::NetworkData::Local::RemoveService(ot::NetworkData::MutableNetworkData *a1, int a2, uint64_t a3)
{
  v9 = 0;
  ot::NetworkData::MutableNetworkData::FindService(a1, a2, a3, 1);
  if (v3)
  {
    ot::NetworkData::MutableNetworkData::RemoveTlv(a1, v3);
  }

  else
  {
    v9 = 23;
  }

  ot::NetworkData::MutableNetworkData::GetBytes(a1);
  v7 = v4;
  Length = ot::NetworkData::NetworkData::GetLength(a1);
  ot::Logger::Dump<(ot::LogLevel)5,&ot::NetworkData::kLogModuleName>("RmvService", v7, Length);
  return v9;
}

unint64_t ot::NetworkData::Local::UpdateRloc(ot::NetworkData::Local *this, ot::NetworkData::ServiceTlv *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  Rloc16 = ot::Mle::Mle::GetRloc16(v2);
  for (i = ot::NetworkData::ServiceTlv::GetSubTlvs(a2); ; i = ot::NetworkData::NetworkDataTlv::GetNext(i))
  {
    result = ot::NetworkData::NetworkDataTlv::GetNext(a2);
    if (i >= result)
    {
      break;
    }

    if (ot::NetworkData::NetworkDataTlv::GetType(i) != 6)
    {
      __assert_rtn("UpdateRloc", "network_data_local.cpp", 270, "false");
    }

    ot::NetworkData::As<ot::NetworkData::ServerTlv>();
    ot::NetworkData::ServerTlv::SetServer16(v4, Rloc16);
  }

  return result;
}

void ot::NetworkData::Local::UpdateRloc(ot::NetworkData::Local *this)
{
  ot::NetworkData::MutableNetworkData::GetTlvsStart(this);
  for (i = v1; ; i = ot::NetworkData::NetworkDataTlv::GetNext(i))
  {
    ot::NetworkData::MutableNetworkData::GetTlvsEnd(this);
    if (i >= v2)
    {
      break;
    }

    Type = ot::NetworkData::NetworkDataTlv::GetType(i);
    if (Type == 1)
    {
      ot::NetworkData::As<ot::NetworkData::PrefixTlv>();
      ot::NetworkData::Local::UpdateRloc(this, v3);
    }

    else
    {
      if (Type != 5)
      {
        __assert_rtn("UpdateRloc", "network_data_local.cpp", 297, "false");
      }

      ot::NetworkData::As<ot::NetworkData::ServiceTlv>();
      ot::NetworkData::Local::UpdateRloc(this, v4);
    }
  }
}

ot::NetworkData::Notifier *ot::NetworkData::Notifier::Notifier(ot::NetworkData::Notifier *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::TimerMilliIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::HandleTimer>::TimerMilliIn((this + 8), a2);
  ot::TaskletIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::SynchronizeServerData>::TaskletIn((this + 32), a2);
  ot::TaskletIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::HandleNetDataFull>::TaskletIn((this + 48), a2);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 8);
  result = this;
  *(this + 20) = 0;
  *(this + 42) = -2;
  *(this + 86) &= ~1u;
  *(this + 86) &= ~2u;
  *(this + 87) = 0;
  return result;
}

{
  ot::NetworkData::Notifier::Notifier(this, a2);
  return this;
}

uint64_t ot::NetworkData::Notifier::SynchronizeServerData(ot::NetworkData::Notifier *this)
{
  v7 = 23;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  result = ot::Mle::Mle::IsAttached(v1);
  if ((result & 1) != 0 && (*(this + 86) & 1) == 0)
  {
    if (!*(this + 20) || (result = ot::Timer::IsRunning((this + 8)), (result & 1) == 0))
    {
      *(this + 20) = 5000;
      result = ot::NetworkData::Notifier::RemoveStaleChildEntries(this);
      v7 = result;
      if (result == 23)
      {
        *(this + 20) = 300000;
        result = ot::NetworkData::Notifier::UpdateInconsistentData(this);
        v7 = result;
      }
    }
  }

  if (v7)
  {
    switch(v7)
    {
      case 3:
        return ot::TimerMilli::Start((this + 8), 0x3E8u);
      case 13:
        v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
        RouterRoleTransitionTimeout = ot::Mle::MleRouter::GetRouterRoleTransitionTimeout(v3);
        v5 = ot::Time::SecToMsec((RouterRoleTransitionTimeout + 1));
        return ot::TimerMilli::Start((this + 8), v5);
      case 23:
        break;
      default:
        __assert_rtn("SynchronizeServerData", "network_data_notifier.cpp", 123, "false");
    }
  }

  else
  {
    *(this + 86) = *(this + 86) & 0xFE | 1;
  }

  return result;
}

uint64_t ot::NetworkData::Notifier::HandleNetDataFull(ot::NetworkData::Notifier *this)
{
  ot::Callback<void (*)(void *),(ot::CallbackContextPosition)0>::InvokeIfSet<>(this + 8);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  result = ot::Mle::Mle::IsLeader(v1);
  if ((result & 1) == 0)
  {
    return trigger_leader_override();
  }

  return result;
}

ot::TimerMilli *ot::TimerMilliIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::HandleTimer>::HandleTimer);
  return a1;
}

ot::InstanceLocator *ot::TaskletIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::SynchronizeServerData>::TaskletIn(ot::InstanceLocator *a1, ot::Instance *a2)
{
  ot::TaskletIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::SynchronizeServerData>::TaskletIn(a1, a2);
  return a1;
}

{
  ot::Tasklet::Tasklet(a1, a2, ot::TaskletIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::SynchronizeServerData>::HandleTasklet);
  return a1;
}

ot::InstanceLocator *ot::TaskletIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::HandleNetDataFull>::TaskletIn(ot::InstanceLocator *a1, ot::Instance *a2)
{
  ot::TaskletIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::HandleNetDataFull>::TaskletIn(a1, a2);
  return a1;
}

{
  ot::Tasklet::Tasklet(a1, a2, ot::TaskletIn<ot::NetworkData::Notifier,&ot::NetworkData::Notifier::HandleNetDataFull>::HandleTasklet);
  return a1;
}

uint64_t ot::NetworkData::Notifier::HandleServerDataUpdated(ot::NetworkData::Notifier *this)
{
  *(this + 86) &= ~2u;
  ot::NetworkData::Notifier::ScheduleRouterRoleUpgradeIfEligible(this);
  *(this + 20) = 0;
  return ot::Tasklet::Post((this + 32));
}

uint64_t ot::NetworkData::Notifier::ScheduleRouterRoleUpgradeIfEligible(uint64_t this)
{
  v3 = this;
  if ((*(this + 86) & 2) == 0)
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    this = ot::Mle::Mle::IsChild(v1);
    if (this)
    {
      this = ot::NetworkData::Notifier::IsEligibleForRouterRoleUpgradeAsBorderRouter(v3);
      if ((this & 1) != 0 && !*(v3 + 87))
      {
        *(v3 + 87) = ot::Random::NonCrypto::GetUint8InRange(1, 0xBu);
        v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(v3);
        return ot::TimeTicker::RegisterReceiver(v2, 6);
      }
    }
  }

  return this;
}

uint64_t ot::NetworkData::Notifier::RemoveStaleChildEntries(ot::NetworkData::Notifier *this)
{
  v14 = this;
  v13 = 23;
  ot::Array<unsigned short,(unsigned short)85,unsigned char>::Array(v12);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsRouterOrLeader(v1))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    ot::NetworkData::NetworkData::FindRlocs(v2, 0, 0, v12);
    ot::Array<unsigned short,(unsigned short)85,unsigned char>::begin();
    v11 = v3;
    v10 = ot::Array<unsigned short,(unsigned short)85,unsigned char>::end(v12);
    while (v11 != v10)
    {
      v9 = *v11;
      if (ot::Mle::IsChildRloc16(*v11))
      {
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
        if (ot::Mle::Mle::HasMatchingRouterIdWith(v4, v9))
        {
          v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
          ot::ChildTable::FindChild(v5, v9, 0);
          if (!v6)
          {
            return ot::NetworkData::Notifier::SendServerDataNotification(this, v9, 0);
          }
        }
      }

      v11 = (v11 + 2);
    }
  }

  return v13;
}

uint64_t ot::NetworkData::Notifier::UpdateInconsistentData(ot::NetworkData::Notifier *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  Rloc16 = ot::Mle::Mle::GetRloc16(v1);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::MleRouter::IsExpectedToBecomeRouterSoon(v2))
  {
    return 13;
  }

  else
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(this);
    ot::NetworkData::Local::UpdateRloc(v3);
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(this);
    if (ot::NetworkData::NetworkData::ContainsEntriesFrom(v10, v4, Rloc16) & 1) != 0 && (v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(this), v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this), (ot::NetworkData::NetworkData::ContainsEntriesFrom(v9, v5, Rloc16)))
    {
      return 23;
    }

    else
    {
      if (*(this + 42) == Rloc16)
      {
        *(this + 42) = -2;
      }

      v8 = *(this + 42);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(this);
      v13 = ot::NetworkData::Notifier::SendServerDataNotification(this, v8, v6);
      if (!v13)
      {
        *(this + 42) = Rloc16;
      }
    }
  }

  return v13;
}

uint64_t ot::NetworkData::Notifier::SendServerDataNotification(ot::NetworkData::Notifier *this, unsigned __int16 a2, const ot::NetworkData::NetworkData *a3)
{
  v27 = this;
  v26 = a2;
  v25 = a3;
  appended = 0;
  v23 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v22, Instance);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v23 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v4, 5u);
  if (!v23)
  {
    appended = 3;
    goto LABEL_11;
  }

  if (v25)
  {
    ot::ThreadTlv::SetType(v21, 10);
    Length = ot::NetworkData::NetworkData::GetLength(v25);
    ot::Tlv::SetLength(v21, Length);
    appended = ot::Message::Append<ot::ThreadTlv>(v23, v21);
    if (appended)
    {
      goto LABEL_11;
    }

    v19 = v23;
    Bytes = ot::NetworkData::NetworkData::GetBytes(v25);
    v6 = ot::NetworkData::NetworkData::GetLength(v25);
    appended = ot::Message::AppendBytes(v19, Bytes, v6);
    if (appended)
    {
      goto LABEL_11;
    }

    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    ot::NetworkData::Leader::CheckForNetDataGettingFull(v7, v25, v26);
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    ot::NetworkData::Leader::CheckForNetDataGettingFull(v8, v25, v26);
  }

  if (v26 == 65534 || (appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v23, v26)) == 0)
  {
    ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderAloc(v22);
    v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
    appended = ot::Coap::CoapBase::SendMessage(v9, v23, v22, ot::NetworkData::Notifier::HandleCoapResponse, this);
    if (!appended)
    {
      v10 = ot::UriToString<(ot::Uri)5>();
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetworkData", "Sent %s", v11, v12, v13, v14, v15, v16, v10);
    }
  }

LABEL_11:
  if (appended && v23)
  {
    ot::Message::Free(v23);
  }

  return appended;
}

uint64_t ot::Message::Append<ot::ThreadTlv>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 2u);
}

{
  return ot::Message::Append<ot::ThreadTlv>(a1, a2);
}

uint64_t ot::NetworkData::Notifier::HandleNotifierEvents(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (ot::Events::ContainsAny(&v4, 2052))
  {
    *(a1 + 80) = 0;
  }

  if (ot::Events::Contains(&v4, 128))
  {
    *(a1 + 86) &= ~2u;
  }

  if (ot::Events::ContainsAny(&v4, 644))
  {
    ot::NetworkData::Notifier::ScheduleRouterRoleUpgradeIfEligible(a1);
  }

  result = ot::Events::ContainsAny(&v4, 2564);
  if (result)
  {
    return ot::NetworkData::Notifier::SynchronizeServerData(a1);
  }

  return result;
}

uint64_t ot::NetworkData::Notifier::HandleCoapResponse(uint64_t a1, int a2)
{
  *(a1 + 86) &= ~1u;
  if (!a2)
  {
    return ot::TimerMilli::Start((a1 + 8), *(a1 + 80) + 1);
  }

  if (a2 != 11 && a2 != 28)
  {
    __assert_rtn("HandleCoapResponse", "network_data_notifier.cpp", 292, "false");
  }

  return ot::NetworkData::Notifier::SynchronizeServerData(a1);
}

BOOL ot::NetworkData::Notifier::IsEligibleForRouterRoleUpgradeAsBorderRouter(ot::NetworkData::Notifier *this)
{
  v13 = 0;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  Rloc16 = ot::Mle::Mle::GetRloc16(v1);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::MleRouter::IsRouterEligible(v2))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    if (ot::Mle::MleRouter::GetRouterUpgradeThreshold(v3))
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(this);
      if (ot::NetworkData::NetworkData::ContainsBorderRouterWithRloc(v4, Rloc16))
      {
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
        if (ot::NetworkData::NetworkData::ContainsBorderRouterWithRloc(v5, Rloc16))
        {
          v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
          ActiveRouterCount = ot::RouterTable::GetActiveRouterCount(v6);
          v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
          if (ActiveRouterCount >= ot::Mle::MleRouter::GetRouterUpgradeThreshold(v7) && ActiveRouterCount < 0x20u)
          {
            v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
            return ot::NetworkData::NetworkData::CountBorderRouters(v8, 1) < 2;
          }
        }
      }
    }
  }

  return v13;
}

void ot::NetworkData::Notifier::HandleTimeTick(ot::NetworkData::Notifier *this)
{
  if (*(this + 87))
  {
    if (!--*(this + 87))
    {
      v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
      ot::TimeTicker::UnregisterReceiver(v1, 6);
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      if (ot::Mle::Mle::IsChild(v2) && ot::NetworkData::Notifier::IsEligibleForRouterRoleUpgradeAsBorderRouter(this))
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetworkData", "Requesting router role as BR", v3, v4, v5, v6, v7, v8, this);
        *(v11 + 86) = *(v11 + 86) & 0xFD | 2;
        v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v11);
        ot::Mle::MleRouter::BecomeRouter(v9, 5u);
        IgnoreError();
      }
    }
  }
}

uint64_t ot::NetworkData::Service::Manager::AddService(ot::NetworkData::Service::Manager *this, uint64_t a2, char a3, char a4, uint64_t a5, char a6)
{
  v16 = this;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = a6;
  ot::Data<(ot::DataLengthType)0>::Init(v10, a2, a3);
  ot::Data<(ot::DataLengthType)0>::Init(v9, v12, v11);
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(this);
  return ot::NetworkData::Local::AddService(v6, 0xAFAAu, v10, v13 & 1, v9);
}

uint64_t ot::NetworkData::Service::Manager::RemoveService(ot::NetworkData::Service::Manager *this, uint64_t a2, char a3)
{
  v8 = this;
  v7 = a2;
  v6[23] = a3;
  ot::Data<(ot::DataLengthType)0>::Init(v6, a2, a3);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(this);
  return ot::NetworkData::Local::RemoveService(v3, 44970, v6);
}

uint64_t ot::NetworkData::Service::Manager::GetServiceId(ot::NetworkData::Service::Manager *this, uint64_t a2, char a3, char a4, unsigned __int8 *a5)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = a5;
  ot::Data<(ot::DataLengthType)0>::Init(v8, a2, a3);
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
  return ot::NetworkData::Leader::GetServiceId(v5, 44970, v8, v10 & 1, v9);
}

ot::NetworkData::NetworkDataTlv *ot::NetworkData::Service::Manager::GetBackboneRouterPrimary(ot::InstanceLocator *a1, uint64_t a2)
{
  v17 = a1;
  v16 = a2;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  ot::Data<(ot::DataLengthType)0>::Init(v12, &ot::NetworkData::Service::BackboneRouter::kServiceData, 1);
  *v16 = -2;
  while (1)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
    result = ot::NetworkData::NetworkData::FindNextThreadService(v2, v13, v12, 0);
    v13 = result;
    if (!result)
    {
      break;
    }

    ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(&v10);
    v10 = v13;
    while (!ot::NetworkData::Service::Manager::IterateToNextServer(a1, &v10))
    {
      ot::NetworkData::ServerTlv::GetServerData(v11, v9);
      if (ot::Data<(ot::DataLengthType)0>::GetLength(v9) >= 7uLL)
      {
        Bytes = ot::Data<(ot::DataLengthType)0>::GetBytes(v9);
        if (!v15 || (ot::NetworkData::Service::Manager::IsBackboneRouterPreferredTo(a1, v11, Bytes, v15, v14) & 1) != 0)
        {
          v15 = v11;
          v14 = Bytes;
        }
      }
    }
  }

  if (v15)
  {
    Server16 = ot::NetworkData::ServerTlv::GetServer16(v15);
    *v16 = Server16;
    SequenceNumber = ot::NetworkData::Service::BackboneRouter::ServerData::GetSequenceNumber(v14);
    *(v16 + 8) = SequenceNumber;
    ReregistrationDelay = ot::NetworkData::Service::BackboneRouter::ServerData::GetReregistrationDelay(v14);
    *(v16 + 2) = ReregistrationDelay;
    result = ot::NetworkData::Service::BackboneRouter::ServerData::GetMlrTimeout(v14);
    *(v16 + 4) = result;
  }

  return result;
}

uint64_t ot::NetworkData::Service::Manager::IterateToNextServer(ot::NetworkData::Service::Manager *this, ot::NetworkData::NetworkDataTlv **a2)
{
  v6 = 23;
  if (*a2)
  {
    if (a2[1])
    {
      Next = ot::NetworkData::NetworkDataTlv::GetNext(a2[1]);
    }

    else
    {
      Next = ot::NetworkData::ServiceTlv::GetSubTlvs(*a2);
    }

    v2 = ot::NetworkData::NetworkDataTlv::GetNext(*a2);
    ot::NetworkData::NetworkDataTlv::Find<ot::NetworkData::ServerTlv>(Next, v2);
    a2[1] = v3;
    if (a2[1])
    {
      return 0;
    }
  }

  return v6;
}

uint64_t ot::NetworkData::Service::Manager::IsBackboneRouterPreferredTo(ot::NetworkData::Service::Manager *this, const ot::NetworkData::ServerTlv *a2, const ot::NetworkData::Service::BackboneRouter::ServerData *a3, const ot::NetworkData::ServerTlv *a4, const ot::NetworkData::Service::BackboneRouter::ServerData *a5)
{
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  LeaderRloc16 = ot::Mle::Mle::GetLeaderRloc16(v5);
  if (ot::NetworkData::ServerTlv::GetServer16(a2) == LeaderRloc16)
  {
    v13 = 1;
  }

  else if (ot::NetworkData::ServerTlv::GetServer16(a4) == LeaderRloc16)
  {
    v13 = 0;
  }

  else
  {
    SequenceNumber = ot::NetworkData::Service::BackboneRouter::ServerData::GetSequenceNumber(a3);
    v11 = 1;
    if (SequenceNumber <= ot::NetworkData::Service::BackboneRouter::ServerData::GetSequenceNumber(a5))
    {
      v8 = ot::NetworkData::Service::BackboneRouter::ServerData::GetSequenceNumber(a3);
      v9 = 0;
      if (v8 == ot::NetworkData::Service::BackboneRouter::ServerData::GetSequenceNumber(a5))
      {
        Server16 = ot::NetworkData::ServerTlv::GetServer16(a2);
        v9 = Server16 > ot::NetworkData::ServerTlv::GetServer16(a4);
      }

      v11 = v9;
    }

    v13 = v11;
  }

  return v13 & 1;
}

uint64_t ot::NetworkData::Service::BackboneRouter::ServerData::GetSequenceNumber(ot::NetworkData::Service::BackboneRouter::ServerData *this)
{
  return *this;
}

{
  return ot::NetworkData::Service::BackboneRouter::ServerData::GetSequenceNumber(this);
}

uint64_t ot::NetworkData::Service::BackboneRouter::ServerData::GetReregistrationDelay(ot::NetworkData::Service::BackboneRouter::ServerData *this)
{
  return ot::BigEndian::HostSwap16(*(this + 1));
}

{
  return ot::NetworkData::Service::BackboneRouter::ServerData::GetReregistrationDelay(this);
}

uint64_t ot::NetworkData::Service::BackboneRouter::ServerData::GetMlrTimeout(ot::NetworkData::Service::BackboneRouter::ServerData *this)
{
  return ot::BigEndian::HostSwap32(*(this + 3));
}

{
  return ot::NetworkData::Service::BackboneRouter::ServerData::GetMlrTimeout(this);
}

uint64_t ot::NetworkData::Service::Manager::GetNextDnsSrpAnycastInfo(ot::InstanceLocator *a1, ot::NetworkData::NetworkDataTlv **a2, ot::Ip6::Address *a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = 0;
  NextThreadService = *a2;
  ot::Data<(ot::DataLengthType)0>::InitFrom<unsigned char>(v11, &ot::NetworkData::Service::DnsSrpAnycast::kServiceData);
  do
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
    NextThreadService = ot::NetworkData::NetworkData::FindNextThreadService(v3, NextThreadService, v11, 0);
    if (!NextThreadService)
    {
      return 23;
    }
  }

  while (ot::NetworkData::ServiceTlv::GetServiceDataLength(NextThreadService) < 2uLL);
  ot::NetworkData::ServiceTlv::GetServiceData(NextThreadService, v11);
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
  ServiceId = ot::NetworkData::ServiceTlv::GetServiceId(NextThreadService);
  ot::Mle::Mle::GetServiceAloc(v8, ServiceId, v13);
  Bytes = ot::Data<(ot::DataLengthType)0>::GetBytes(v11);
  SequenceNumber = ot::NetworkData::Service::DnsSrpAnycast::ServiceData::GetSequenceNumber(Bytes);
  *(v13 + 16) = SequenceNumber;
  *v14 = NextThreadService;
  return v12;
}

uint64_t ot::NetworkData::Service::DnsSrpAnycast::ServiceData::GetSequenceNumber(ot::NetworkData::Service::DnsSrpAnycast::ServiceData *this)
{
  return *(this + 1);
}

{
  return ot::NetworkData::Service::DnsSrpAnycast::ServiceData::GetSequenceNumber(this);
}

uint64_t ot::NetworkData::Service::Manager::FindPreferredDnsSrpAnycastInfo(ot::InstanceLocator *a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v12 = 23;
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(v11);
  while (!ot::NetworkData::Service::Manager::GetNextDnsSrpAnycastInfo(a1, v11, &v9))
  {
    if (v12 == 23)
    {
      v2 = v13;
      *v13 = v9;
      *(v2 + 16) = v10;
      v7 = v9;
      v8 = v10;
      v12 = 0;
    }

    else
    {
      if (ot::SerialNumber::IsGreater<unsigned char>(v10, *(v13 + 16)))
      {
        v3 = v13;
        *v13 = v9;
        *(v3 + 16) = v10;
      }

      if (v10 > v8)
      {
        v7 = v9;
        v8 = v10;
      }
    }
  }

  if (!v12)
  {
    ot::NetworkData::Service::Manager::Iterator::Reset(v11);
    while (!ot::NetworkData::Service::Manager::GetNextDnsSrpAnycastInfo(a1, v11, &v9))
    {
      if (v10 != *(v13 + 16) && ((v10 - *(v13 + 16)) == 128 || !ot::SerialNumber::IsGreater<unsigned char>(*(v13 + 16), v10)))
      {
        v4 = v13;
        *v13 = v7;
        *(v4 + 16) = v8;
        return v12;
      }
    }
  }

  return v12;
}

void *ot::NetworkData::Service::Manager::Iterator::Reset(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

{
  return ot::NetworkData::Service::Manager::Iterator::Reset(this);
}

uint64_t ot::NetworkData::Service::Manager::GetNextDnsSrpUnicastInfo(ot::NetworkData::Service::Manager *this, ot::NetworkData::NetworkDataTlv **a2, ot::NetworkData::Service::DnsSrpUnicast::Info *a3)
{
  v32 = this;
  v31 = a2;
  v30 = a3;
  v29 = 0;
  ot::Data<(ot::DataLengthType)0>::InitFrom<unsigned char>(v28, &ot::NetworkData::Service::DnsSrpUnicast::kServiceData);
  do
  {
    while (!ot::NetworkData::Service::Manager::IterateToNextServer(this, v31))
    {
      ot::NetworkData::ServerTlv::GetServerData(v31[1], v27);
      if (ot::Data<(ot::DataLengthType)0>::GetLength(v27) >= 0x12uLL)
      {
        Bytes = ot::Data<(ot::DataLengthType)0>::GetBytes(v27);
        v22 = v30;
        ot::NetworkData::Service::DnsSrpUnicast::ServerData::GetAddress(Bytes);
        ot::Ip6::SockAddr::SetAddress(v22, v3);
        v23 = v30;
        Port = ot::NetworkData::Service::DnsSrpUnicast::ServerData::GetPort(Bytes);
        ot::Ip6::SockAddr::SetPort(v23, Port);
        *(v30 + 18) = 1;
        Server16 = ot::NetworkData::ServerTlv::GetServer16(v31[1]);
        *(v30 + 10) = Server16;
        return v29;
      }

      if (ot::Data<(ot::DataLengthType)0>::GetLength(v27) == 2)
      {
        Address = ot::Ip6::SockAddr::GetAddress(v30);
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
        MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v6);
        v7 = ot::NetworkData::ServerTlv::GetServer16(v31[1]);
        ot::Ip6::Address::SetToRoutingLocator(Address, MeshLocalPrefix, v7);
        v21 = v30;
        v8 = ot::Data<(ot::DataLengthType)0>::GetBytes(v27);
        Uint16 = ot::BigEndian::ReadUint16(v8, v9);
        ot::Ip6::SockAddr::SetPort(v21, Uint16);
        *(v30 + 18) = 1;
        v11 = ot::NetworkData::ServerTlv::GetServer16(v31[1]);
        *(v30 + 10) = v11;
        return v29;
      }
    }

    v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    NextThreadService = ot::NetworkData::NetworkData::FindNextThreadService(v12, *v31, v28, 0);
    *v31 = NextThreadService;
    if (!*v31)
    {
      return 23;
    }
  }

  while (ot::NetworkData::ServiceTlv::GetServiceDataLength(*v31) < 0x13uLL);
  ot::NetworkData::ServiceTlv::GetServiceData(*v31, v28);
  v25 = ot::Data<(ot::DataLengthType)0>::GetBytes(v28);
  v17 = v30;
  v14 = ot::NetworkData::Service::DnsSrpUnicast::ServiceData::GetAddress(v25);
  ot::Ip6::SockAddr::SetAddress(v17, v14);
  v18 = v30;
  v15 = ot::NetworkData::Service::DnsSrpUnicast::ServiceData::GetPort(v25);
  ot::Ip6::SockAddr::SetPort(v18, v15);
  *(v30 + 18) = 0;
  *(v30 + 10) = -2;
  return v29;
}

__n128 ot::Ip6::SockAddr::SetAddress(__n128 *this, __n128 *a2)
{
  result = *a2;
  *this = *a2;
  return result;
}

void ot::NetworkData::Service::DnsSrpUnicast::ServerData::GetAddress(ot::NetworkData::Service::DnsSrpUnicast::ServerData *this)
{
  ;
}

{
  ot::NetworkData::Service::DnsSrpUnicast::ServerData::GetAddress(this);
}

uint64_t ot::Ip6::SockAddr::SetPort(uint64_t this, __int16 a2)
{
  *(this + 16) = a2;
  return this;
}

{
  return ot::Ip6::SockAddr::SetPort(this, a2);
}

uint64_t ot::NetworkData::Service::DnsSrpUnicast::ServerData::GetPort(ot::NetworkData::Service::DnsSrpUnicast::ServerData *this)
{
  return ot::BigEndian::HostSwap16(*(this + 8));
}

{
  return ot::NetworkData::Service::DnsSrpUnicast::ServerData::GetPort(this);
}

uint64_t ot::NetworkData::Service::DnsSrpUnicast::ServiceData::GetAddress(ot::NetworkData::Service::DnsSrpUnicast::ServiceData *this)
{
  return this + 1;
}

{
  return ot::NetworkData::Service::DnsSrpUnicast::ServiceData::GetAddress(this);
}

uint64_t ot::NetworkData::Service::DnsSrpUnicast::ServiceData::GetPort(ot::NetworkData::Service::DnsSrpUnicast::ServiceData *this)
{
  return ot::BigEndian::HostSwap16(*(this + 17));
}

{
  return ot::NetworkData::Service::DnsSrpUnicast::ServiceData::GetPort(this);
}

ot::NetworkData::NetworkDataTlv *ot::NetworkData::NetworkDataTlv::Find(ot::NetworkData::NetworkDataTlv *Next, unint64_t a2, unsigned __int8 a3)
{
  while (1)
  {
    v4 = 0;
    if (Next + 2 <= a2)
    {
      v4 = ot::NetworkData::NetworkDataTlv::GetNext(Next) <= a2;
    }

    if (!v4)
    {
      break;
    }

    if (ot::NetworkData::NetworkDataTlv::GetType(Next) == a3)
    {
      return Next;
    }

    Next = ot::NetworkData::NetworkDataTlv::GetNext(Next);
  }

  return 0;
}

ot::NetworkData::NetworkDataTlv *ot::NetworkData::NetworkDataTlv::Find(ot::NetworkData::NetworkDataTlv *Next, unint64_t a2, unsigned __int8 a3, char a4)
{
  while (1)
  {
    v5 = 0;
    if (Next + 2 <= a2)
    {
      v5 = ot::NetworkData::NetworkDataTlv::GetNext(Next) <= a2;
    }

    if (!v5)
    {
      break;
    }

    if (ot::NetworkData::NetworkDataTlv::GetType(Next) == a3 && ot::NetworkData::NetworkDataTlv::IsStable(Next) == (a4 & 1))
    {
      return Next;
    }

    Next = ot::NetworkData::NetworkDataTlv::GetNext(Next);
  }

  return 0;
}

ot::NetworkData::NetworkDataTlv *ot::NetworkData::PrefixTlv::FindSubTlv(ot::NetworkData::PrefixTlv *a1, unsigned __int8 a2)
{
  SubTlvs = ot::NetworkData::PrefixTlv::GetSubTlvs(a1);
  Next = ot::NetworkData::NetworkDataTlv::GetNext(a1);
  return ot::NetworkData::NetworkDataTlv::Find(SubTlvs, Next, a2);
}

ot::NetworkData::NetworkDataTlv *ot::NetworkData::PrefixTlv::FindSubTlv(ot::NetworkData::PrefixTlv *a1, unsigned __int8 a2, char a3)
{
  SubTlvs = ot::NetworkData::PrefixTlv::GetSubTlvs(a1);
  Next = ot::NetworkData::NetworkDataTlv::GetNext(a1);
  return ot::NetworkData::NetworkDataTlv::Find(SubTlvs, Next, a2, a3 & 1);
}

uint64_t ot::NetworkData::ServiceTlv::Init(_BYTE *a1, char a2, unsigned int a3, uint64_t a4)
{
  ot::NetworkData::NetworkDataTlv::Init(a1);
  ot::NetworkData::NetworkDataTlv::SetType(a1, 5);
  if (a3 == 44970)
  {
    v4 = 0x80;
  }

  else
  {
    v4 = 0;
  }

  a1[2] = v4;
  a1[2] |= a2 & 0xF;
  if (a3 == 44970)
  {
    a1[3] = ot::Data<(ot::DataLengthType)0>::GetLength(a4);
    ot::Data<(ot::DataLengthType)0>::CopyBytesTo(a4, a1 + 4);
  }

  else
  {
    *(a1 + 3) = ot::BigEndian::HostSwap32(a3);
    a1[7] = ot::Data<(ot::DataLengthType)0>::GetLength(a4);
    ot::Data<(ot::DataLengthType)0>::CopyBytesTo(a4, a1 + 8);
  }

  FieldsLength = ot::NetworkData::ServiceTlv::GetFieldsLength(a1);
  return ot::NetworkData::NetworkDataTlv::SetLength(a1, FieldsLength);
}

ot::NetworkData::NetworkDataTlv *ot::NetworkData::TlvIterator::Iterate(uint64_t a1, unsigned __int8 a2)
{
  v4 = ot::NetworkData::NetworkDataTlv::Find(*a1, *(a1 + 8), a2);
  if (v4)
  {
    *a1 = ot::NetworkData::NetworkDataTlv::GetNext(v4);
  }

  return v4;
}

ot::NetworkData::NetworkDataTlv *ot::NetworkData::TlvIterator::Iterate(uint64_t a1, unsigned __int8 a2, char a3)
{
  v5 = ot::NetworkData::NetworkDataTlv::Find(*a1, *(a1 + 8), a2, a3 & 1);
  if (v5)
  {
    *a1 = ot::NetworkData::NetworkDataTlv::GetNext(v5);
  }

  return v5;
}

uint64_t ot::NetworkData::OnMeshPrefixConfig::IsValid(ot::NetworkData::OnMeshPrefixConfig *this, ot::Instance *a2)
{
  v9 = 0;
  if ((*(this + 17) & 0x10) == 0 || (*(this + 17) & 8) == 0)
  {
    if ((*(this + 17) & 8) == 0 || (v2 = ot::NetworkData::OnMeshPrefixConfig::GetPrefix(this), ot::Ip6::Prefix::GetLength(v2) == 64))
    {
      v3 = ((*(this + 17) << 14) >> 14);
      if (ot::NetworkData::IsRoutePreferenceValid(((*(this + 17) << 6) >> 6)))
      {
        Prefix = ot::NetworkData::OnMeshPrefixConfig::GetPrefix(this);
        if (ot::NetworkData::IsPrefixValid(a2, Prefix, v5))
        {
          v6 = ot::NetworkData::OnMeshPrefixConfig::GetPrefix(this);
          if (ot::Ip6::Prefix::GetLength(v6) > 0)
          {
            v9 = 1;
          }
        }
      }
    }
  }

  return v9 & 1;
}

BOOL ot::NetworkData::IsRoutePreferenceValid(ot::NetworkData *this)
{
  return ot::Preference::IsValid(this);
}

{
  return ot::NetworkData::IsRoutePreferenceValid(this);
}

BOOL ot::NetworkData::IsPrefixValid(ot::NetworkData *this, ot::Instance *a2, const ot::Ip6::Prefix *a3)
{
  LOBYTE(v6) = 0;
  if (ot::Ip6::Prefix::IsValid(a2))
  {
    v3 = ot::Instance::Get<ot::Mle::Mle>(this);
    MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v3);
    return !ot::Ip6::Prefix::ContainsPrefix(a2, MeshLocalPrefix);
  }

  return v6;
}

uint64_t ot::NetworkData::OnMeshPrefixConfig::ConvertToTlvFlags(ot::NetworkData::OnMeshPrefixConfig *this)
{
  v3 = 0;
  if ((*(this + 17) & 4) != 0)
  {
    v3 = 0x2000;
  }

  if ((*(this + 17) & 8) != 0)
  {
    v3 |= 0x1000u;
  }

  if ((*(this + 17) & 0x10) != 0)
  {
    v3 |= 0x800u;
  }

  if ((*(this + 17) & 0x20) != 0)
  {
    v3 |= 0x400u;
  }

  if ((*(this + 17) & 0x40) != 0)
  {
    v3 |= 0x200u;
  }

  if ((*(this + 17) & 0x80) != 0)
  {
    v3 |= 0x100u;
  }

  if ((*(this + 17) & 0x200) != 0)
  {
    v3 |= 0x80u;
  }

  if ((*(this + 17) & 0x400) != 0)
  {
    v3 |= 0x40u;
  }

  v1 = ((*(this + 17) << 14) >> 14);
  return (v3 | (ot::NetworkData::RoutePreferenceToValue(((*(this + 17) << 6) >> 6)) << 14));
}

uint64_t ot::NetworkData::RoutePreferenceToValue(ot::NetworkData *this)
{
  return ot::Preference::To2BitUint(this);
}

{
  return ot::NetworkData::RoutePreferenceToValue(this);
}

BOOL ot::NetworkData::OnMeshPrefixConfig::SetFrom(ot::NetworkData::OnMeshPrefixConfig *this, const ot::NetworkData::PrefixTlv *a2, const ot::NetworkData::BorderRouterTlv *a3, const ot::NetworkData::BorderRouterEntry *a4)
{
  ot::Clearable<ot::NetworkData::OnMeshPrefixConfig>::Clear(this);
  Prefix = ot::NetworkData::OnMeshPrefixConfig::GetPrefix(this);
  ot::NetworkData::PrefixTlv::CopyPrefixTo(a2, Prefix);
  Flags = ot::NetworkData::BorderRouterEntry::GetFlags(a4);
  ot::NetworkData::OnMeshPrefixConfig::SetFromTlvFlags(this, Flags);
  *(this + 10) = ot::NetworkData::BorderRouterEntry::GetRloc(a4);
  result = ot::NetworkData::NetworkDataTlv::IsStable(a3);
  *(this + 17) = *(this + 17) & 0xFEFF | (result << 8);
  return result;
}

void *ot::Clearable<ot::NetworkData::OnMeshPrefixConfig>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::NetworkData::OnMeshPrefixConfig>(a1);
}

{
  return ot::Clearable<ot::NetworkData::OnMeshPrefixConfig>::Clear(a1);
}

uint64_t ot::NetworkData::OnMeshPrefixConfig::SetFromTlvFlags(ot::NetworkData::OnMeshPrefixConfig *this, unsigned __int16 a2)
{
  *(this + 17) = *(this + 17) & 0xFFFB | (4 * ((a2 & 0x2000) != 0));
  *(this + 17) = *(this + 17) & 0xFFF7 | (8 * ((a2 & 0x1000) != 0));
  *(this + 17) = *(this + 17) & 0xFFEF | (16 * ((a2 & 0x800) != 0));
  *(this + 17) = *(this + 17) & 0xFFDF | (32 * ((a2 & 0x400) != 0));
  *(this + 17) = *(this + 17) & 0xFFBF | (((a2 & 0x200) != 0) << 6);
  *(this + 17) = *(this + 17) & 0xFF7F | (((a2 & 0x100) != 0) << 7);
  *(this + 17) = *(this + 17) & 0xFDFF | (((a2 & 0x80u) != 0) << 9);
  *(this + 17) = *(this + 17) & 0xFBFF | (((a2 & 0x40) != 0) << 10);
  result = ot::NetworkData::RoutePreferenceFromValue((a2 >> 14));
  *(this + 17) = *(this + 17) & 0xFFFC | result & 3;
  return result;
}

uint64_t ot::NetworkData::ExternalRouteConfig::IsValid(ot::NetworkData::ExternalRouteConfig *this, ot::Instance *a2)
{
  v7 = 0;
  if ((*(this + 20) & 4) == 0 || (v2 = ot::NetworkData::ExternalRouteConfig::GetPrefix(this), ot::Ip6::Prefix::IsValidNat64(v2)))
  {
    if (ot::NetworkData::IsRoutePreferenceValid(((*(this + 20) << 6) >> 6)))
    {
      Prefix = ot::NetworkData::ExternalRouteConfig::GetPrefix(this);
      if (ot::NetworkData::IsPrefixValid(a2, Prefix, v4))
      {
        v7 = 1;
      }
    }
  }

  return v7 & 1;
}

uint64_t ot::NetworkData::ExternalRouteConfig::ConvertToTlvFlags(ot::NetworkData::ExternalRouteConfig *this)
{
  v2 = 0;
  if ((*(this + 20) & 4) != 0)
  {
    v2 = 32;
  }

  if ((*(this + 20) & 0x20) != 0)
  {
    v2 |= 0x10u;
  }

  return (v2 | (ot::NetworkData::RoutePreferenceToValue(((*(this + 20) << 6) >> 6)) << 6));
}

uint64_t ot::NetworkData::ExternalRouteConfig::SetFrom(ot::NetworkData::ExternalRouteConfig *this, ot::Instance *a2, const ot::NetworkData::PrefixTlv *a3, const ot::NetworkData::HasRouteTlv *a4, const ot::NetworkData::HasRouteEntry *a5)
{
  ot::Clearable<ot::NetworkData::ExternalRouteConfig>::Clear(this);
  Prefix = ot::NetworkData::ExternalRouteConfig::GetPrefix(this);
  ot::NetworkData::PrefixTlv::CopyPrefixTo(a3, Prefix);
  Flags = ot::NetworkData::HasRouteEntry::GetFlags(a5);
  ot::NetworkData::ExternalRouteConfig::SetFromTlvFlags(this, Flags);
  *(this + 20) = *(this + 20) & 0xF7 | (8 * ot::NetworkData::NetworkDataTlv::IsStable(a4));
  *(this + 9) = ot::NetworkData::HasRouteEntry::GetRloc(a5);
  Rloc = ot::NetworkData::HasRouteEntry::GetRloc(a5);
  v7 = ot::Instance::Get<ot::Mle::MleRouter>(a2);
  Rloc16 = ot::Mle::Mle::GetRloc16(v7);
  result = Rloc;
  *(this + 20) = *(this + 20) & 0xEF | (16 * (Rloc == Rloc16));
  return result;
}

void *ot::Clearable<ot::NetworkData::ExternalRouteConfig>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::NetworkData::ExternalRouteConfig>(a1);
}

{
  return ot::Clearable<ot::NetworkData::ExternalRouteConfig>::Clear(a1);
}

uint64_t ot::NetworkData::ExternalRouteConfig::SetFromTlvFlags(ot::NetworkData::ExternalRouteConfig *this, unsigned __int8 a2)
{
  *(this + 20) = *(this + 20) & 0xFB | (4 * ((a2 & 0x20) != 0));
  *(this + 20) = *(this + 20) & 0xDF | (32 * ((a2 & 0x10) != 0));
  result = ot::NetworkData::RoutePreferenceFromValue((a2 >> 6));
  *(this + 20) = *(this + 20) & 0xFC | result & 3;
  return result;
}

BOOL ot::NetworkData::ServiceConfig::ServerConfig::operator==(_BYTE *a1, _BYTE *a2)
{
  v3 = 0;
  if ((*a1 & 1) == (*a2 & 1))
  {
    v3 = 0;
    if (a1[1] == a2[1])
    {
      return memcmp(a1 + 2, a2 + 2, a1[1]) == 0;
    }
  }

  return v3;
}

void *ot::NetworkData::ServiceConfig::ServerConfig::SetFrom(ot::NetworkData::ServiceConfig::ServerConfig *this, const ot::NetworkData::ServerTlv *a2)
{
  v6 = this;
  v5 = a2;
  ot::NetworkData::ServerTlv::GetServerData(a2, v4);
  *this = *this & 0xFE | ot::NetworkData::NetworkDataTlv::IsStable(v5);
  *(this + 125) = ot::NetworkData::ServerTlv::GetServer16(v5);
  *(this + 1) = ot::Data<(ot::DataLengthType)0>::GetLength(v4);
  return ot::Data<(ot::DataLengthType)0>::CopyBytesTo(v4, this + 2);
}

BOOL ot::NetworkData::ServiceConfig::operator==(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (*(a1 + 4) == *(a2 + 4))
  {
    v6 = 0;
    if (*(a1 + 8) == *(a2 + 8))
    {
      v6 = 0;
      if (!memcmp((a1 + 9), (a2 + 9), *(a1 + 8)))
      {
        ServerConfig = ot::NetworkData::ServiceConfig::GetServerConfig(a1);
        v2 = ot::NetworkData::ServiceConfig::GetServerConfig(a2);
        return ot::NetworkData::ServiceConfig::ServerConfig::operator==(ServerConfig, v2);
      }
    }
  }

  return v6;
}

void *ot::NetworkData::ServiceConfig::SetFrom(ot::NetworkData::ServiceConfig *this, const ot::NetworkData::ServiceTlv *a2, const ot::NetworkData::ServerTlv *a3)
{
  v9 = this;
  v8 = a2;
  v7 = a3;
  ot::Clearable<ot::NetworkData::ServiceConfig>::Clear(this);
  ot::NetworkData::ServiceTlv::GetServiceData(v8, v6);
  *this = ot::NetworkData::ServiceTlv::GetServiceId(v8);
  *(this + 1) = ot::NetworkData::ServiceTlv::GetEnterpriseNumber(v8);
  *(this + 8) = ot::Data<(ot::DataLengthType)0>::GetLength(v6);
  ot::Data<(ot::DataLengthType)0>::CopyBytesTo(v6, this + 9);
  ServerConfig = ot::NetworkData::ServiceConfig::GetServerConfig(this);
  return ot::NetworkData::ServiceConfig::ServerConfig::SetFrom(ServerConfig, v7);
}

void ot::Clearable<ot::NetworkData::ServiceConfig>::Clear(void *a1)
{
  ot::ClearAllBytes<ot::NetworkData::ServiceConfig>(a1);
}

{
  ot::Clearable<ot::NetworkData::ServiceConfig>::Clear(a1);
}

uint64_t ot::NetworkData::LowpanContextInfo::SetFrom(ot::NetworkData::LowpanContextInfo *this, const ot::NetworkData::PrefixTlv *a2, const ot::NetworkData::ContextTlv *a3)
{
  *this = ot::NetworkData::ContextTlv::GetContextId(a3);
  *(this + 1) = ot::NetworkData::ContextTlv::IsCompress(a3);
  Prefix = ot::NetworkData::LowpanContextInfo::GetPrefix(this);
  ot::NetworkData::PrefixTlv::CopyPrefixTo(a2, Prefix);
  v7 = ot::NetworkData::LowpanContextInfo::GetPrefix(this);
  ContextLength = ot::NetworkData::ContextTlv::GetContextLength(a3);
  return ot::Ip6::Prefix::SetLength(v7, ContextLength);
}

uint64_t ot::NetworkData::LowpanContextInfo::GetPrefix(ot::NetworkData::LowpanContextInfo *this)
{
  return ot::AsCoreType<otIp6Prefix>(this + 2);
}

{
  return ot::NetworkData::LowpanContextInfo::GetPrefix(this);
}

uint64_t ot::NetworkData::ContextTlv::GetContextLength(ot::NetworkData::ContextTlv *this)
{
  return *(this + 3);
}

{
  return ot::NetworkData::ContextTlv::GetContextLength(this);
}

BOOL ot::Ip6::Prefix::IsValid(ot::Ip6::Prefix *this)
{
  return *(this + 16) <= 0x80u;
}

{
  return ot::Ip6::Prefix::IsValid(this);
}

void *ot::ClearAllBytes<ot::NetworkData::OnMeshPrefixConfig>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::NetworkData::OnMeshPrefixConfig>(result);
}

void *ot::ClearAllBytes<ot::NetworkData::ExternalRouteConfig>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::NetworkData::ExternalRouteConfig>(result);
}

void ot::ClearAllBytes<ot::NetworkData::ServiceConfig>(void *a1)
{
  bzero(a1, 0x204uLL);
}

{
  ot::ClearAllBytes<ot::NetworkData::ServiceConfig>(a1);
}

ot::NetworkDiagnostic::Server *ot::NetworkDiagnostic::Server::Server(ot::NetworkDiagnostic::Server *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Coap::MessageQueue::MessageQueue(this);
  return this;
}

{
  ot::NetworkDiagnostic::Server::Server(this, a2);
  return this;
}

double ot::NetworkDiagnostic::Server::PrepareMessageInfoForDest(ot::NetworkDiagnostic::Server *this, const ot::Ip6::Address *a2, __n128 *a3)
{
  if (ot::Ip6::Address::IsMulticast(a2))
  {
    ot::Ip6::MessageInfo::SetMulticastLoop(a3, 1);
  }

  if (ot::Ip6::Address::IsLinkLocalUnicastOrMulticast(a2))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    LinkLocalAddress = ot::Mle::Mle::GetLinkLocalAddress(v3);
    ot::Ip6::MessageInfo::SetSockAddr(a3, LinkLocalAddress);
  }

  else
  {
    ot::Tmf::MessageInfo::SetSockAddrToRloc(a3);
  }

  return ot::Ip6::MessageInfo::SetPeerAddr(a3, a2);
}

uint64_t ot::NetworkDiagnostic::Server::AppendIp6AddressList(ot::NetworkDiagnostic::Server *this, ot::Message *a2)
{
  v22 = this;
  v21 = a2;
  v20 = 0;
  v19 = 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  ot::Ip6::Netif::GetUnicastAddresses(v2);
  v18[1] = v3;
  v18[0] = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::begin(v3);
  v17 = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::end();
  while (ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator!=(v18, &v17))
  {
    v16 = ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator*(v18);
    ++v19;
    ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator++(v18);
  }

  if (16 * v19 <= 254)
  {
    ot::NetworkDiagnostic::Tlv::SetType(v15, 8);
    ot::Tlv::SetLength(v15, 16 * v19);
    v20 = ot::Message::Append<ot::NetworkDiagnostic::Tlv>(v21, v15);
    if (v20)
    {
      return v20;
    }
  }

  else
  {
    ot::Tlv::SetType(v14, 8);
    ot::ExtendedTlv::SetLength(v14, 16 * v19);
    v4 = ot::Message::Append<ot::ExtendedTlv>(v21, v14);
    v20 = v4;
    if (v4)
    {
      return v20;
    }
  }

  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  ot::Ip6::Netif::GetUnicastAddresses(v5);
  v13[1] = v6;
  v13[0] = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::begin(v6);
  v12 = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::end();
  while (ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator!=(v13, &v12))
  {
    v11 = ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator*(v13);
    v9 = v21;
    Address = ot::Ip6::Netif::UnicastAddress::GetAddress(v11);
    v20 = ot::Message::Append<ot::Ip6::Address>(v9, Address);
    if (v20)
    {
      break;
    }

    ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator++(v13);
  }

  return v20;
}

_BYTE *ot::NetworkDiagnostic::Tlv::SetType(_BYTE *a1, char a2)
{
  return ot::Tlv::SetType(a1, a2);
}

{
  return ot::NetworkDiagnostic::Tlv::SetType(a1, a2);
}

uint64_t ot::Message::Append<ot::NetworkDiagnostic::Tlv>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 2u);
}

{
  return ot::Message::Append<ot::NetworkDiagnostic::Tlv>(a1, a2);
}

uint64_t ot::Message::Append<ot::ExtendedTlv>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 4u);
}

{
  return ot::Message::Append<ot::ExtendedTlv>(a1, a2);
}

uint64_t ot::NetworkDiagnostic::Server::AppendChildTable(ot::NetworkDiagnostic::Server *this, ot::Message *a2)
{
  v30 = this;
  v29 = a2;
  v28 = 0;
  v27 = 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsRouterOrLeader(v2))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    NumChildren = ot::ChildTable::GetNumChildren(v3, 0);
    v27 = ot::Min<unsigned short>(NumChildren, 0x18Eu);
    if (3 * v27 > 0xFE)
    {
      ot::Tlv::SetType(v25, 16);
      ot::ExtendedTlv::SetLength(v25, 3 * v27);
      v28 = ot::Message::Append<ot::ExtendedTlv>(v29, v25);
      if (v28)
      {
        return v28;
      }
    }

    else
    {
      ot::NetworkDiagnostic::Tlv::SetType(v26, 16);
      ot::Tlv::SetLength(v26, 3 * v27);
      v28 = ot::Message::Append<ot::NetworkDiagnostic::Tlv>(v29, v26);
      if (v28)
      {
        return v28;
      }
    }

    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    v23 = ot::ChildTable::Iterate(v5, 0);
    v24 = &v23;
    v33 = ot::ChildTable::IteratorBuilder::begin(&v23);
    v34 = v6;
    v21 = v33;
    v22 = v6;
    v31 = ot::ChildTable::IteratorBuilder::end(v24);
    v32 = v7;
    v19 = v31;
    v20 = v7;
    while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v21, &v19))
    {
      v18 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v21);
      v17 = 0;
      if (!v27--)
      {
        break;
      }

      while (1)
      {
        v13 = 1 << v17;
        if (v13 >= ot::Child::GetTimeout(v18))
        {
          break;
        }

        ++v17;
      }

      ot::Clearable<ot::NetworkDiagnostic::ChildTableEntry>::Clear(v16);
      ot::NetworkDiagnostic::ChildTableEntry::SetTimeout(v16, v17 + 4);
      LinkQualityIn = ot::Neighbor::GetLinkQualityIn(v18);
      ot::NetworkDiagnostic::ChildTableEntry::SetLinkQuality(v16, LinkQualityIn);
      Rloc16 = ot::Neighbor::GetRloc16(v18);
      v11 = ot::Mle::ChildIdFromRloc16(Rloc16);
      ot::NetworkDiagnostic::ChildTableEntry::SetChildId(v16, v11);
      DeviceMode = ot::Neighbor::GetDeviceMode(v18);
      ot::NetworkDiagnostic::ChildTableEntry::SetMode(v16, DeviceMode);
      v28 = ot::Message::Append<ot::NetworkDiagnostic::ChildTableEntry>(v29, v16);
      if (v28)
      {
        break;
      }

      ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v21);
    }
  }

  return v28;
}

uint64_t ot::Clearable<ot::NetworkDiagnostic::ChildTableEntry>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::NetworkDiagnostic::ChildTableEntry>(a1);
}

{
  return ot::Clearable<ot::NetworkDiagnostic::ChildTableEntry>::Clear(a1);
}

uint64_t ot::NetworkDiagnostic::ChildTableEntry::SetTimeout(ot::NetworkDiagnostic::ChildTableEntry *this, unsigned __int8 a2)
{
  TimeoutChildId = ot::NetworkDiagnostic::ChildTableEntry::GetTimeoutChildId(this);
  return ot::NetworkDiagnostic::ChildTableEntry::SetTimeoutChildId(this, TimeoutChildId & 0x7FFu | (a2 << 11));
}

{
  return ot::NetworkDiagnostic::ChildTableEntry::SetTimeout(this, a2);
}

uint64_t ot::NetworkDiagnostic::ChildTableEntry::SetLinkQuality(ot::NetworkDiagnostic::ChildTableEntry *a1, unsigned __int8 a2)
{
  TimeoutChildId = ot::NetworkDiagnostic::ChildTableEntry::GetTimeoutChildId(a1);
  return ot::NetworkDiagnostic::ChildTableEntry::SetTimeoutChildId(a1, TimeoutChildId & 0xF9FF | (a2 << 9) & 0x600u);
}

{
  return ot::NetworkDiagnostic::ChildTableEntry::SetLinkQuality(a1, a2);
}

uint64_t ot::NetworkDiagnostic::ChildTableEntry::SetChildId(ot::NetworkDiagnostic::ChildTableEntry *this, __int16 a2)
{
  TimeoutChildId = ot::NetworkDiagnostic::ChildTableEntry::GetTimeoutChildId(this);
  return ot::NetworkDiagnostic::ChildTableEntry::SetTimeoutChildId(this, TimeoutChildId & 0xFE00 | a2 & 0x1FFu);
}

{
  return ot::NetworkDiagnostic::ChildTableEntry::SetChildId(this, a2);
}

uint64_t ot::NetworkDiagnostic::ChildTableEntry::SetMode(uint64_t a1, char a2)
{
  v4 = a2;
  result = ot::Mle::DeviceMode::Get(&v4);
  *(a1 + 2) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::ChildTableEntry::SetMode(a1, a2);
}

uint64_t ot::Message::Append<ot::NetworkDiagnostic::ChildTableEntry>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 3u);
}

{
  return ot::Message::Append<ot::NetworkDiagnostic::ChildTableEntry>(a1, a2);
}

uint64_t ot::NetworkDiagnostic::Server::AppendMacCounters(ot::NetworkDiagnostic::Server *this, ot::Message *a2)
{
  v7 = this;
  v6 = a2;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  Counters = ot::Mac::Mac::GetCounters(v2);
  ot::ClearAllBytes<ot::NetworkDiagnostic::MacCountersTlv>(v5);
  ot::NetworkDiagnostic::MacCountersTlv::Init(v5);
  ot::NetworkDiagnostic::MacCountersTlv::SetIfInUnknownProtos(v5, Counters[31]);
  ot::NetworkDiagnostic::MacCountersTlv::SetIfInErrors(v5, Counters[35] + Counters[36] + Counters[37] + Counters[38] + Counters[39] + Counters[40]);
  ot::NetworkDiagnostic::MacCountersTlv::SetIfOutErrors(v5, Counters[14]);
  ot::NetworkDiagnostic::MacCountersTlv::SetIfInUcastPkts(v5, Counters[25]);
  ot::NetworkDiagnostic::MacCountersTlv::SetIfInBroadcastPkts(v5, Counters[26]);
  ot::NetworkDiagnostic::MacCountersTlv::SetIfInDiscards(v5, Counters[32] + Counters[33] + Counters[34]);
  ot::NetworkDiagnostic::MacCountersTlv::SetIfOutUcastPkts(v5, Counters[1]);
  ot::NetworkDiagnostic::MacCountersTlv::SetIfOutBroadcastPkts(v5, Counters[2]);
  ot::NetworkDiagnostic::MacCountersTlv::SetIfOutDiscards(v5, Counters[16]);
  return ot::Tlv::AppendTo(v5, v6);
}

void *ot::ClearAllBytes<ot::NetworkDiagnostic::MacCountersTlv>(void *a1)
{
  return memset(a1, 0, 0x26uLL);
}

{
  return ot::ClearAllBytes<ot::NetworkDiagnostic::MacCountersTlv>(a1);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::Init(ot::NetworkDiagnostic::MacCountersTlv *this)
{
  ot::NetworkDiagnostic::Tlv::SetType(this, 9);
  return ot::Tlv::SetLength(this, 36);
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::Init(this);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::SetIfInUnknownProtos(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2);
  *(this + 2) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::SetIfInUnknownProtos(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::SetIfInErrors(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2);
  *(this + 6) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::SetIfInErrors(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::SetIfOutErrors(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2);
  *(this + 10) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::SetIfOutErrors(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::SetIfInUcastPkts(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2);
  *(this + 14) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::SetIfInUcastPkts(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::SetIfInBroadcastPkts(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2);
  *(this + 18) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::SetIfInBroadcastPkts(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::SetIfInDiscards(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2);
  *(this + 22) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::SetIfInDiscards(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::SetIfOutUcastPkts(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2);
  *(this + 26) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::SetIfOutUcastPkts(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::SetIfOutBroadcastPkts(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2);
  *(this + 30) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::SetIfOutBroadcastPkts(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::SetIfOutDiscards(ot::NetworkDiagnostic::MacCountersTlv *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2);
  *(this + 34) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::SetIfOutDiscards(this, a2);
}

uint64_t ot::NetworkDiagnostic::Server::AppendRequestedTlvs(ot::NetworkDiagnostic::Server *this, const ot::Message *a2, ot::Message *a3, ot::OffsetRange *a4)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  i = 0;
  for (i = ot::Tlv::FindTlvValueOffsetRange(a2, 0x12, &v7, a4); !i; i = ot::NetworkDiagnostic::Server::AppendDiagTlv(this, v6, v9))
  {
    if (ot::OffsetRange::IsEmpty(&v7))
    {
      break;
    }

    v6 = 0;
    i = ot::Message::Read<unsigned char>(v10, &v7, &v6);
    if (i)
    {
      break;
    }

    ot::OffsetRange::AdvanceOffset(&v7, 1u);
  }

  return i;
}

uint64_t ot::NetworkDiagnostic::Server::AppendDiagTlv(ot::NetworkDiagnostic::Server *this, char a2, ot::Message *a3)
{
  v64 = this;
  v63 = a2;
  v62 = a3;
  appended = 0;
  switch(a2)
  {
    case 0:
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ExtAddress = ot::Mac::Mac::GetExtAddress(v3);
      appended = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Mac::ExtAddress>>(v62, ExtAddress);
      break;
    case 1:
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      Rloc16 = ot::Mle::Mle::GetRloc16(v5);
      appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(v62, Rloc16);
      break;
    case 2:
      v48 = v62;
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      DeviceMode = ot::Mle::Mle::GetDeviceMode(v7);
      v8 = ot::Mle::DeviceMode::Get(&DeviceMode);
      appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned char>>(v48, v8);
      break;
    case 3:
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      if (!ot::Mle::Mle::IsRxOnWhenIdle(v10))
      {
        v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
        Timeout = ot::Mle::Mle::GetTimeout(v11);
        appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)3,unsigned int>>(v62, Timeout);
      }

      break;
    case 4:
      ot::NetworkDiagnostic::ConnectivityTlv::Init(v51);
      v43 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      ot::Mle::MleRouter::FillConnectivityTlv(v43, v51);
      appended = ot::Tlv::AppendTo(v51, v62);
      break;
    case 5:
      ot::NetworkDiagnostic::RouteTlv::Init(v65);
      v44 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
      ot::RouterTable::FillRouteTlv(v44, v65, 0);
      appended = ot::Tlv::AppendTo(v65, v62);
      break;
    case 6:
      ot::NetworkDiagnostic::LeaderDataTlv::Init(v59);
      v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      LeaderData = ot::Mle::Mle::GetLeaderData(v13);
      ot::Mle::LeaderDataTlv::Set(v59, LeaderData);
      appended = ot::Tlv::AppendTo(v59, v62);
      break;
    case 7:
      v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
      ot::NetworkData::MutableNetworkData::GetBytes(v15);
      v47 = v16;
      v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
      Length = ot::NetworkData::NetworkData::GetLength(v17);
      appended = ot::Tlv::Append<ot::TlvInfo<(unsigned char)7>>(v62, v47, Length);
      break;
    case 8:
      appended = ot::NetworkDiagnostic::Server::AppendIp6AddressList(this, v62);
      break;
    case 9:
      appended = ot::NetworkDiagnostic::Server::AppendMacCounters(this, v62);
      break;
    case 16:
      appended = ot::NetworkDiagnostic::Server::AppendChildTable(this, v62);
      break;
    case 17:
      v56 = 0;
      ot::NetworkDiagnostic::ChannelPagesTlv::Init(v57);
      v55 = &ot::Radio::kSupportedChannelPages;
      v54 = &ot::Radio::kSupportedChannelPages;
      v53 = "AddrResolver";
      while (v54 != v53)
      {
        v52 = *v54;
        ChannelPages = ot::NetworkDiagnostic::ChannelPagesTlv::GetChannelPages(v57);
        v42 = v56++;
        *(ChannelPages + v42) = v52;
        ++v54;
      }

      ot::Tlv::SetLength(v57, v56);
      appended = ot::Tlv::AppendTo(v57, v62);
      break;
    case 19:
      v50 = 0;
      v45 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      if (!ot::Mle::MleRouter::GetMaxChildTimeout(v45, &v50))
      {
        appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)19,unsigned int>>(v62, v50);
      }

      break;
    case 23:
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      ot::Radio::GetIeeeEui64(v9, v66);
      appended = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)23,ot::Mac::ExtAddress>>(v62, v66);
      break;
    case 24:
      appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)24,unsigned short>>(v62, 4u);
      break;
    case 25:
      VendorName = ot::NetworkDiagnostic::Server::GetVendorName(this);
      appended = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)25,(unsigned char)32>>(v62, VendorName, v22, v23, v24);
      break;
    case 26:
      VendorModel = ot::NetworkDiagnostic::Server::GetVendorModel(this);
      appended = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)26,(unsigned char)32>>(v62, VendorModel, v26, v27, v28);
      break;
    case 27:
      VendorSwVersion = ot::NetworkDiagnostic::Server::GetVendorSwVersion(this);
      appended = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)27,(unsigned char)16>>(v62, VendorSwVersion, v30, v31, v32);
      break;
    case 28:
      VersionString = otGetVersionString();
      appended = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)28,(unsigned char)64>>(v62, VersionString, v38, v39, v40);
      break;
    case 34:
      v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      Counters = ot::Mle::Mle::GetCounters(v19);
      ot::NetworkDiagnostic::MleCountersTlv::Init(v58, Counters);
      appended = ot::Tlv::AppendTo(v58, v62);
      break;
    case 35:
      VendorAppUrl = ot::NetworkDiagnostic::Server::GetVendorAppUrl(this);
      appended = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)35,(unsigned char)96>>(v62, VendorAppUrl, v34, v35, v36);
      break;
    default:
      return appended;
  }

  return appended;
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Mac::ExtAddress>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 0, a2, 8);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Mac::ExtAddress>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned char>>(uint64_t a1, unsigned __int8 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned char>(a1, 2, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned char>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)23,ot::Mac::ExtAddress>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 0x17, a2, 8);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)23,ot::Mac::ExtAddress>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)24,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 24, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)24,unsigned short>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)3,unsigned int>>(ot::Tlv *a1, unsigned int a2)
{
  return ot::Tlv::AppendUintTlv<unsigned int>(a1, 3u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)3,unsigned int>>(a1, a2);
}

_BYTE *ot::NetworkDiagnostic::LeaderDataTlv::Init(ot::NetworkDiagnostic::LeaderDataTlv *this)
{
  ot::Mle::LeaderDataTlv::Init(this);
  return ot::Tlv::SetType(this, 6);
}

{
  return ot::NetworkDiagnostic::LeaderDataTlv::Init(this);
}

uint64_t ot::Tlv::Append<ot::TlvInfo<(unsigned char)7>>(ot::Tlv *a1, void *a2, unsigned __int8 a3)
{
  return ot::Tlv::AppendTlv(a1, 7, a2, a3);
}

{
  return ot::Tlv::Append<ot::TlvInfo<(unsigned char)7>>(a1, a2, a3);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)25,(unsigned char)32>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0x19, 0x20u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)25,(unsigned char)32>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)26,(unsigned char)32>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0x1A, 0x20u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)26,(unsigned char)32>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)27,(unsigned char)16>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0x1B, 0x10u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)27,(unsigned char)16>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)35,(unsigned char)96>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0x23, 0x60u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)35,(unsigned char)96>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)28,(unsigned char)64>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0x1C, 0x40u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)28,(unsigned char)64>>(a1, a2, a3, a4, a5);
}

uint64_t ot::NetworkDiagnostic::ChannelPagesTlv::Init(ot::NetworkDiagnostic::ChannelPagesTlv *this)
{
  ot::NetworkDiagnostic::Tlv::SetType(this, 17);
  return ot::Tlv::SetLength(this, 1);
}

{
  return ot::NetworkDiagnostic::ChannelPagesTlv::Init(this);
}

uint64_t ot::NetworkDiagnostic::ChannelPagesTlv::GetChannelPages(ot::NetworkDiagnostic::ChannelPagesTlv *this)
{
  return this + 2;
}

{
  return ot::NetworkDiagnostic::ChannelPagesTlv::GetChannelPages(this);
}

_BYTE *ot::NetworkDiagnostic::ConnectivityTlv::Init(ot::NetworkDiagnostic::ConnectivityTlv *this)
{
  ot::Mle::ConnectivityTlv::Init(this);
  return ot::Tlv::SetType(this, 4);
}

{
  return ot::NetworkDiagnostic::ConnectivityTlv::Init(this);
}

_BYTE *ot::NetworkDiagnostic::RouteTlv::Init(ot::NetworkDiagnostic::RouteTlv *this)
{
  ot::Mle::RouteTlv::Init(this);
  return ot::Tlv::SetType(this, 5);
}

{
  return ot::NetworkDiagnostic::RouteTlv::Init(this);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)19,unsigned int>>(ot::Tlv *a1, unsigned int a2)
{
  return ot::Tlv::AppendUintTlv<unsigned int>(a1, 0x13u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)19,unsigned int>>(a1, a2);
}

void ot::NetworkDiagnostic::Server::HandleTmf<(ot::Uri)35>(ot::InstanceLocator *a1, const ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3)
{
  if (ot::Coap::Message::IsPostRequest(a2))
  {
    v12 = ot::UriToString<(ot::Uri)35>();
    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(a3);
    ot::Ip6::Address::ToString(PeerAddr, v16);
    ot::String<(unsigned short)40>::AsCString(v16);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetDiag", "Received %s from %s", v4, v5, v6, v7, v8, v9, v12);
    if (ot::Coap::Message::IsConfirmable(a2))
    {
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
      ot::Coap::CoapBase::SendEmptyAck(v10, a2, a3);
      IgnoreError();
    }

    v11 = ot::Ip6::MessageInfo::GetPeerAddr(a3);
    ot::NetworkDiagnostic::Server::PrepareAndSendAnswers(a1, v11, a2);
  }
}

void ot::NetworkDiagnostic::Server::PrepareAndSendAnswers(ot::NetworkDiagnostic::Server *this, const ot::Ip6::Address *a2, const ot::Message *a3)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = 0;
  TlvValueOffsetRange = 0;
  ot::NetworkDiagnostic::Server::AnswerInfo::AnswerInfo(&v12);
  if (!ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)33,unsigned short>>(v17, v13))
  {
    v13[2] = 1;
  }

  v13[3] = ot::Message::GetPriority(v17);
  TlvValueOffsetRange = ot::NetworkDiagnostic::Server::AllocateAnswer(this, &v16, &v12);
  if (!TlvValueOffsetRange)
  {
    TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(v17, 0x12, &v11, v4);
    if (!TlvValueOffsetRange)
    {
      while (!ot::OffsetRange::IsEmpty(&v11))
      {
        v9 = 0;
        TlvValueOffsetRange = ot::Message::Read<unsigned char>(v17, &v11, &v9);
        if (TlvValueOffsetRange)
        {
          goto LABEL_22;
        }

        ot::OffsetRange::AdvanceOffset(&v11, 1u);
        switch(v9)
        {
          case 0x1Du:
            TlvValueOffsetRange = ot::NetworkDiagnostic::Server::AppendChildTableAsChildTlvs(this, &v16, &v12);
            if (TlvValueOffsetRange)
            {
              goto LABEL_22;
            }

            break;
          case 0x1Eu:
            TlvValueOffsetRange = ot::NetworkDiagnostic::Server::AppendChildTableIp6AddressList(this, &v16, &v12);
            if (TlvValueOffsetRange)
            {
              goto LABEL_22;
            }

            break;
          case 0x1Fu:
            TlvValueOffsetRange = ot::NetworkDiagnostic::Server::AppendRouterNeighborTlvs(this, &v16, &v12);
            if (TlvValueOffsetRange)
            {
              goto LABEL_22;
            }

            break;
          default:
            appended = ot::NetworkDiagnostic::Server::AppendDiagTlv(this, v9, v16);
            TlvValueOffsetRange = appended;
            if (appended)
            {
              goto LABEL_22;
            }

            break;
        }

        TlvValueOffsetRange = ot::NetworkDiagnostic::Server::CheckAnswerLength(this, &v16, &v12);
        if (TlvValueOffsetRange)
        {
          goto LABEL_22;
        }
      }

      ot::NetworkDiagnostic::AnswerTlv::Init(v10, v12, 1);
      TlvValueOffsetRange = ot::Message::Append<ot::NetworkDiagnostic::AnswerTlv>(v16, v10);
      if (!TlvValueOffsetRange)
      {
        ot::NetworkDiagnostic::Server::SendNextAnswer(this, v14, v18, v4, v5, v6);
      }
    }
  }

LABEL_22:
  if (TlvValueOffsetRange)
  {
    if (v14)
    {
      ot::NetworkDiagnostic::Server::FreeAllRelatedAnswers(this, v14, v3, v4, v5, v6);
    }
  }
}

uint64_t ot::NetworkDiagnostic::Server::AllocateAnswer(ot::NetworkDiagnostic::Server *this, ot::Coap::Message **a2, ot::NetworkDiagnostic::Server::AnswerInfo *a3)
{
  v6 = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  *a2 = ot::Coap::CoapBase::NewConfirmablePostMessage(v3, 0x21u);
  if (*a2)
  {
    ot::Message::SetPriority(*a2, *(a3 + 5));
    IgnoreError();
    ot::Coap::MessageQueue::Enqueue(this, *a2);
    if (!*(a3 + 1))
    {
      *(a3 + 1) = *a2;
    }

    if (*(a3 + 4))
    {
      return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)33,unsigned short>>(*a2, *(a3 + 1));
    }
  }

  else
  {
    return 3;
  }

  return v6;
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)33,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 33, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)33,unsigned short>>(a1, a2);
}

BOOL ot::NetworkDiagnostic::Server::IsLastAnswer(ot::NetworkDiagnostic::Server *this, const ot::Coap::Message *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  v10 = this;
  v9 = a2;
  v8 = 1;
  if (!ot::Tlv::FindTlv<ot::NetworkDiagnostic::AnswerTlv>(a2, v7, a3, a4, a5, a6))
  {
    return ot::NetworkDiagnostic::AnswerTlv::IsLast(v7);
  }

  return v8;
}

BOOL ot::NetworkDiagnostic::AnswerTlv::IsLast(ot::NetworkDiagnostic::AnswerTlv *this)
{
  return (ot::NetworkDiagnostic::AnswerTlv::GetFlagsIndex(this) & 0x8000) != 0;
}

{
  return ot::NetworkDiagnostic::AnswerTlv::IsLast(this);
}

void ot::NetworkDiagnostic::Server::FreeAllRelatedAnswers(ot::NetworkDiagnostic::Server *this, ot::Coap::Message *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  while (a2)
  {
    if (ot::NetworkDiagnostic::Server::IsLastAnswer(this, a2, a3, a4, a5, a6))
    {
      NextCoapMessage = 0;
    }

    else
    {
      NextCoapMessage = ot::Coap::Message::GetNextCoapMessage(a2);
    }

    ot::Coap::MessageQueue::DequeueAndFree(this, a2);
    a2 = NextCoapMessage;
  }
}

uint64_t ot::Coap::Message::GetNextCoapMessage(ot::Coap::Message *this)
{
  return ot::Message::GetNext(this);
}

{
  return ot::Coap::Message::GetNextCoapMessage(this);
}

uint64_t ot::NetworkDiagnostic::Server::AppendChildTableAsChildTlvs(ot::NetworkDiagnostic::Server *this, ot::Coap::Message **a2, ot::NetworkDiagnostic::Server::AnswerInfo *a3)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = 0;
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
    ot::NetworkDiagnostic::ChildTlv::InitFrom(v23, v8);
    v15 = ot::Tlv::AppendTo(v23, *v17);
    if (v15)
    {
      return v15;
    }

    v15 = ot::NetworkDiagnostic::Server::CheckAnswerLength(this, v17, v16);
    if (v15)
    {
      return v15;
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v11);
  }

  ot::NetworkDiagnostic::ChildTlv::InitAsEmpty(v23);
  return ot::Tlv::AppendTo(v23, *v17);
}

uint64_t ot::NetworkDiagnostic::Server::AppendChildTableIp6AddressList(ot::NetworkDiagnostic::Server *this, ot::Coap::Message **a2, ot::NetworkDiagnostic::Server::AnswerInfo *a3)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  appended = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v13 = ot::ChildTable::Iterate(v3, 0);
  v14 = &v13;
  v22 = ot::ChildTable::IteratorBuilder::begin(&v13);
  v23 = v4;
  v11 = v22;
  v12 = v4;
  v20 = ot::ChildTable::IteratorBuilder::end(v14);
  v21 = v5;
  v9 = v20;
  v10 = v5;
  while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v11, &v9))
  {
    v8 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v11);
    appended = ot::NetworkDiagnostic::Server::AppendChildIp6AddressListTlv(this, *v18, v8);
    if (appended)
    {
      return appended;
    }

    appended = ot::NetworkDiagnostic::Server::CheckAnswerLength(this, v18, v17);
    if (appended)
    {
      return appended;
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v11);
  }

  ot::NetworkDiagnostic::Tlv::SetType(v15, 30);
  ot::Tlv::SetLength(v15, 0);
  return ot::Message::Append<ot::NetworkDiagnostic::Tlv>(*v18, v15);
}

uint64_t ot::NetworkDiagnostic::Server::AppendRouterNeighborTlvs(ot::NetworkDiagnostic::Server *this, ot::Coap::Message **a2, ot::NetworkDiagnostic::Server::AnswerInfo *a3)
{
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
  ot::RouterTable::begin(v8);
  v7 = v3;
  v6 = ot::RouterTable::end(v8);
  while (v7 != v6)
  {
    if (ot::Neighbor::IsStateValid(v7))
    {
      ot::NetworkDiagnostic::RouterNeighborTlv::InitFrom(v12, v7);
      v9 = ot::Tlv::AppendTo(v12, *a2);
      if (v9)
      {
        return v9;
      }

      v9 = ot::NetworkDiagnostic::Server::CheckAnswerLength(this, a2, a3);
      if (v9)
      {
        return v9;
      }
    }

    v7 = (v7 + 144);
  }

  ot::NetworkDiagnostic::RouterNeighborTlv::InitAsEmpty(v12);
  return ot::Tlv::AppendTo(v12, *a2);
}

uint64_t ot::NetworkDiagnostic::Server::CheckAnswerLength(ot::NetworkDiagnostic::Server *this, ot::Coap::Message **a2, ot::NetworkDiagnostic::Server::AnswerInfo *a3)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  if (ot::Message::GetLength(*a2) >= 800)
  {
    v3 = (*v8)++;
    ot::NetworkDiagnostic::AnswerTlv::Init(v6, v3, 0);
    v7 = ot::Message::Append<ot::NetworkDiagnostic::AnswerTlv>(*v9, v6);
    if (!v7)
    {
      return ot::NetworkDiagnostic::Server::AllocateAnswer(this, v9, v8);
    }
  }

  return v7;
}

uint64_t ot::Message::Append<ot::NetworkDiagnostic::AnswerTlv>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 4u);
}

{
  return ot::Message::Append<ot::NetworkDiagnostic::AnswerTlv>(a1, a2);
}

void ot::NetworkDiagnostic::Server::SendNextAnswer(ot::NetworkDiagnostic::Server *this, ot::Coap::Message *a2, const ot::Ip6::Address *a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = 0;
  if (ot::NetworkDiagnostic::Server::IsLastAnswer(this, a2, a3, a4, a5, a6))
  {
    NextCoapMessage = 0;
  }

  else
  {
    NextCoapMessage = ot::Coap::Message::GetNextCoapMessage(v18);
  }

  v15 = NextCoapMessage;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v14, Instance);
  ot::Coap::MessageQueue::Dequeue(this, v18);
  ot::NetworkDiagnostic::Server::PrepareMessageInfoForDest(this, v17, v14);
  v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v16 = ot::Coap::CoapBase::SendMessage(v7, v18, v14, ot::NetworkDiagnostic::Server::HandleAnswerResponse, v15);
  if (v16)
  {
    ot::Message::Free(v18);
    if (v15)
    {
      ot::NetworkDiagnostic::Server::FreeAllRelatedAnswers(this, v15, v8, v9, v10, v11);
    }
  }
}

void ot::NetworkDiagnostic::Server::HandleAnswerResponse(ot::Message *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a1)
  {
    v8 = ot::GetProvider<ot::Message>::Get<ot::NetworkDiagnostic::Server>(a1);
    ot::AsCoapMessagePtr();
    v7 = v4;
    ot::AsCoreTypePtr<otMessageInfo>();
    ot::NetworkDiagnostic::Server::HandleAnswerResponse(v8, a1, v7, v5, a4, v6);
  }
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::NetworkDiagnostic::Server>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::NetworkDiagnostic::Server>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::NetworkDiagnostic::Server>(a1);
}

void ot::NetworkDiagnostic::Server::HandleAnswerResponse(ot::NetworkDiagnostic::Server *a1, ot::Coap::Message *a2, ot::Coap::Message *a3, ot::Ip6::MessageInfo *a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  v8 = a5;
  if (!a5)
  {
    if (a3 && a4)
    {
      if (ot::Coap::Message::GetCode(a3) == 68)
      {
        PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(a4);
        ot::NetworkDiagnostic::Server::SendNextAnswer(a1, a2, PeerAddr);
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 2;
    }
  }

  if (v8)
  {
    ot::NetworkDiagnostic::Server::FreeAllRelatedAnswers(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t ot::NetworkDiagnostic::ChildTlv::InitAsEmpty(ot::NetworkDiagnostic::ChildTlv *this)
{
  ot::NetworkDiagnostic::Tlv::SetType(this, 29);
  return ot::Tlv::SetLength(this, 0);
}

{
  return ot::NetworkDiagnostic::ChildTlv::InitAsEmpty(this);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::InitAsEmpty(ot::NetworkDiagnostic::RouterNeighborTlv *this)
{
  ot::NetworkDiagnostic::Tlv::SetType(this, 31);
  return ot::Tlv::SetLength(this, 0);
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::InitAsEmpty(this);
}

uint64_t ot::NetworkDiagnostic::Server::AppendChildIp6AddressListTlv(ot::NetworkDiagnostic::Server *this, ot::Coap::Message *a2, const ot::Child *a3)
{
  v17 = this;
  v16 = a2;
  v15 = a3;
  *&v14[4] = 0;
  Ip6Addresses = ot::Child::GetIp6Addresses(a3);
  *v14 = ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::GetLength(Ip6Addresses);
  if (ot::Child::GetMeshLocalIp6Address(v15, v12))
  {
    ot::Clearable<ot::Ip6::Address>::Clear(v12);
  }

  else
  {
    ++*v14;
  }

  if (*v14)
  {
    if (16 * *v14 + 2 > 0xFE)
    {
      ot::Tlv::SetType(v10, 30);
      ot::ExtendedTlv::SetLength(v10, 16 * *v14 + 2);
      *&v14[2] = ot::Message::Append<ot::ExtendedTlv>(v16, v10);
      if (*&v14[2])
      {
        return *&v14[2];
      }
    }

    else
    {
      ot::NetworkDiagnostic::Tlv::SetType(v11, 30);
      ot::Tlv::SetLength(v11, 16 * v14[0] + 2);
      *&v14[2] = ot::Message::Append<ot::NetworkDiagnostic::Tlv>(v16, v11);
      if (*&v14[2])
      {
        return *&v14[2];
      }
    }

    Rloc16 = ot::Neighbor::GetRloc16(v15);
    ot::NetworkDiagnostic::ChildIp6AddressListTlvValue::SetRloc16(v13, Rloc16);
    *&v14[2] = ot::Message::Append<ot::NetworkDiagnostic::ChildIp6AddressListTlvValue>(v16, v13);
    if (!*&v14[2] && (ot::Ip6::Address::IsUnspecified(v12) || (*&v14[2] = ot::Message::Append<ot::Ip6::Address>(v16, v12)) == 0))
    {
      v9 = ot::Child::GetIp6Addresses(v15);
      ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::begin();
      v8 = v5;
      v7 = ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::end(v9);
      while (v8 != v7)
      {
        *&v14[2] = ot::Message::Append<ot::Ip6::Address>(v16, v8);
        if (*&v14[2])
        {
          break;
        }

        v8 += 16;
      }
    }
  }

  return *&v14[2];
}

uint64_t ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::GetLength(uint64_t a1)
{
  return *(a1 + 240);
}

{
  return ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::GetLength(a1);
}

uint64_t ot::NetworkDiagnostic::ChildIp6AddressListTlvValue::SetRloc16(ot::NetworkDiagnostic::ChildIp6AddressListTlvValue *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *this = result;
  return result;
}

{
  return ot::NetworkDiagnostic::ChildIp6AddressListTlvValue::SetRloc16(this, a2);
}

uint64_t ot::Message::Append<ot::NetworkDiagnostic::ChildIp6AddressListTlvValue>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 2u);
}

{
  return ot::Message::Append<ot::NetworkDiagnostic::ChildIp6AddressListTlvValue>(a1, a2);
}

void ot::NetworkDiagnostic::Server::HandleTmf<(ot::Uri)34>(ot::InstanceLocator *a1, const ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v16 = 0;
  if (ot::Coap::Message::IsConfirmablePostRequest(a2))
  {
    v14 = ot::UriToString<(ot::Uri)34>();
    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(a3);
    ot::Ip6::Address::ToString(PeerAddr, v20);
    ot::String<(unsigned short)40>::AsCString(v20);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetDiag", "Received %s from %s", v4, v5, v6, v7, v8, v9, v14);
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
    v16 = ot::Coap::CoapBase::NewResponseMessage(v10, a2);
    if (v16)
    {
      Priority = ot::Message::GetPriority(a2);
      ot::Message::SetPriority(v16, Priority);
      IgnoreError();
      appended = ot::NetworkDiagnostic::Server::AppendRequestedTlvs(a1, a2, v16, v12);
      if (!appended)
      {
        v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
        appended = ot::Coap::CoapBase::SendMessage(v13, v16, a3);
      }
    }

    else
    {
      appended = 3;
    }
  }

  else
  {
    appended = 2;
  }

  if (appended)
  {
    if (v16)
    {
      ot::Message::Free(v16);
    }
  }
}

void ot::NetworkDiagnostic::Server::HandleTmf<(ot::Uri)36>(ot::InstanceLocator *a1, ot::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = 0;
  v18 = 0;
  if (ot::Coap::Message::IsConfirmablePostRequest(a2))
  {
    v14 = ot::UriToString<(ot::Uri)36>();
    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v20);
    ot::Ip6::Address::ToString(PeerAddr, v23);
    ot::String<(unsigned short)40>::AsCString(v23);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetDiag", "Received %s from %s", v4, v5, v6, v7, v8, v9, v14);
    Offset = ot::Message::GetOffset(v21);
    if (!ot::Message::Read<ot::NetworkDiagnostic::Tlv>(v21, Offset, v17) && ot::NetworkDiagnostic::Tlv::GetType(v17) == 18)
    {
      v19 = ot::Message::GetOffset(v21) + 2;
      for (i = 0; i < ot::Tlv::GetLength(v17); ++i)
      {
        if (ot::Message::Read<unsigned char>(v21, v19 + i, &v18))
        {
          return;
        }

        if (v18 == 9)
        {
          v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
          ot::Mac::Mac::ResetCounters(v11);
        }

        else if (v18 == 34)
        {
          v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
          ot::Mle::Mle::ResetCounters(v12);
        }
      }

      v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
      ot::Coap::CoapBase::SendEmptyAck(v13, v21, v20);
      IgnoreError();
    }
  }
}

uint64_t ot::Message::Read<ot::NetworkDiagnostic::Tlv>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 2u);
}

{
  return ot::Message::Read<ot::NetworkDiagnostic::Tlv>(a1, a2, a3);
}

uint64_t ot::NetworkDiagnostic::Tlv::GetType(ot::NetworkDiagnostic::Tlv *this)
{
  return ot::Tlv::GetType(this);
}

{
  return ot::NetworkDiagnostic::Tlv::GetType(this);
}

ot::NetworkDiagnostic::Client *ot::NetworkDiagnostic::Client::Client(ot::NetworkDiagnostic::Client *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = ot::Random::NonCrypto::GetUint16(v2);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 1);
  return this;
}

{
  ot::NetworkDiagnostic::Client::Client(this, a2);
  return this;
}

uint64_t ot::NetworkDiagnostic::Client::SendDiagnosticGet(ot::InstanceLocator *a1, ot::Ip6::Address *a2, void *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  if (ot::Ip6::Address::IsMulticast(a2))
  {
    v8 = ot::NetworkDiagnostic::Client::SendCommand(a1, 0x23u, 1u, a2, a3, a4, 0, 0);
  }

  else
  {
    v8 = ot::NetworkDiagnostic::Client::SendCommand(a1, 0x22u, 1u, a2, a3, a4, ot::NetworkDiagnostic::Client::HandleGetResponse, a1);
  }

  if (!v8)
  {
    ot::CallbackBase<void (*)(otError,otMessage *,otMessageInfo const*,void *)>::Set(a1 + 1, a5, a6);
  }

  return v8;
}

uint64_t ot::NetworkDiagnostic::Client::SendCommand(ot::InstanceLocator *a1, unsigned __int8 a2, unsigned __int8 a3, ot::Ip6::Address *a4, void *a5, unsigned __int8 a6, uint64_t a7, uint64_t a8)
{
  v34 = a1;
  v33 = a2;
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  v28 = a7;
  v27 = a8;
  v26 = 0;
  v25 = 0;
  Instance = ot::InstanceLocator::GetInstance(a1);
  ot::Tmf::MessageInfo::MessageInfo(v24, Instance);
  if (v33 != 34)
  {
    if (v33 == 35)
    {
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
      v25 = ot::Coap::CoapBase::NewNonConfirmablePostMessage(v9, v33);
      goto LABEL_7;
    }

    if (v33 != 36)
    {
      __assert_rtn("SendCommand", "network_diagnostic.cpp", 1092, "false");
    }
  }

  v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  v25 = ot::Coap::CoapBase::NewConfirmablePostMessage(v10, v33);
LABEL_7:
  if (v25)
  {
    ot::Message::SetPriority(v25, v32);
    IgnoreError();
    if (!v29 || (v26 = ot::Tlv::Append<ot::NetworkDiagnostic::TypeListTlv>(v25, v30, v29)) == 0)
    {
      if (v33 != 35 || (v11 = v25, v12 = *a1 + 1, *a1 = v12, (v26 = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)33,unsigned short>>(v11, v12)) == 0))
      {
        v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Server>(a1);
        ot::NetworkDiagnostic::Server::PrepareMessageInfoForDest(v13, v31, v24);
        v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
        v26 = ot::Coap::CoapBase::SendMessage(v14, v25, v24, v28, v27);
        if (!v26)
        {
          v22 = ot::NetworkDiagnostic::Client::UriToString(v33);
          ot::Ip6::Address::ToString(v31, v35);
          ot::String<(unsigned short)40>::AsCString(v35);
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetDiag", "Sent %s to %s", v15, v16, v17, v18, v19, v20, v22);
        }
      }
    }
  }

  else
  {
    v26 = 3;
  }

  if (v26 && v25)
  {
    ot::Message::Free(v25);
  }

  return v26;
}

void *ot::NetworkDiagnostic::Client::HandleGetResponse(ot::Coap::Message *a1, uint64_t a2, uint64_t a3, _BOOL4 a4)
{
  ot::AsCoapMessagePtr();
  v7 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  return ot::NetworkDiagnostic::Client::HandleGetResponse(a1, v7, v5, a4);
}

void *ot::CallbackBase<void (*)(otError,otMessage *,otMessageInfo const*,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otError,otMessage *,otMessageInfo const*,void *)>::Set(result, a2, a3);
}

uint64_t ot::Tlv::Append<ot::NetworkDiagnostic::TypeListTlv>(ot::Tlv *a1, void *a2, unsigned __int8 a3)
{
  return ot::Tlv::AppendTlv(a1, 0x12, a2, a3);
}

{
  return ot::Tlv::Append<ot::NetworkDiagnostic::TypeListTlv>(a1, a2, a3);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Server>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::NetworkDiagnostic::Server>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Server>(a1);
}

const char *ot::NetworkDiagnostic::Client::UriToString(char a1)
{
  v2 = "";
  switch(a1)
  {
    case '""':
      return ot::UriToString<(ot::Uri)34>();
    case '#':
      return ot::UriToString<(ot::Uri)35>();
    case '$':
      return ot::UriToString<(ot::Uri)36>();
  }

  return v2;
}

void *ot::NetworkDiagnostic::Client::HandleGetResponse(ot::Coap::Message *a1, ot::Coap::Message *a2, uint64_t a3, _BOOL4 a4)
{
  v8[1] = a1;
  v8[0] = a2;
  v7 = a3;
  v6 = a4;
  if (!a4)
  {
    v6 = ot::Coap::Message::GetCode(v8[0]) != 68;
  }

  return ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,ot::Coap::Message *&,ot::Ip6::MessageInfo const*&>(a1 + 1, &v6, v8, &v7);
}

void *ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,ot::Coap::Message *&,ot::Ip6::MessageInfo const*&>(void *result, unsigned int *a2, void *a3, void *a4)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,ot::Coap::Message *&,ot::Ip6::MessageInfo const*&>(result, a2, a3, a4);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,ot::Coap::Message *&,ot::Ip6::MessageInfo const*&>(result, a2, a3, a4);
}

void ot::NetworkDiagnostic::Client::HandleTmf<(ot::Uri)33>(ot::InstanceLocator *a1, ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  if (ot::Coap::Message::IsConfirmablePostRequest(a2))
  {
    v12 = ot::UriToString<(ot::Uri)33>();
    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v16);
    ot::Ip6::Address::ToString(PeerAddr, v19);
    ot::String<(unsigned short)40>::AsCString(v19);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("NetDiag", "Received %s from %s", v4, v5, v6, v7, v8, v9, v12);
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::MeshDiag>(a1);
    if ((ot::Utils::MeshDiag::HandleDiagnosticGetAnswer(v10, v17, v16) & 1) == 0)
    {
      v15 = v17;
      v14 = v16;
      ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,ot::Coap::Message *,ot::Ip6::MessageInfo const*>(a1 + 1, &ot::kErrorNone, &v15, &v14);
    }

    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
    ot::Coap::CoapBase::SendEmptyAck(v11, v17, v16);
    IgnoreError();
  }
}

void *ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,ot::Coap::Message *,ot::Ip6::MessageInfo const*>(void *result, unsigned int *a2, void *a3, void *a4)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,ot::Coap::Message *,ot::Ip6::MessageInfo const*>(result, a2, a3, a4);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,ot::Coap::Message *,ot::Ip6::MessageInfo const*>(result, a2, a3, a4);
}

uint64_t ot::NetworkDiagnostic::Client::GetNextDiagTlv(ot::Tlv *a1, unsigned __int16 *a2, _BYTE *a3)
{
  v50 = a1;
  v49 = a2;
  v48 = a3;
  v47 = 0;
  if (*a2)
  {
    Offset = *v49;
  }

  else
  {
    Offset = ot::Message::GetOffset(v50);
  }

  v46 = Offset;
  while (1)
  {
    v25 = v46;
    if (v25 >= ot::Message::GetLength(v50))
    {
      return 23;
    }

    v45 = 0;
    v44 = 0;
    Length = 0;
    v47 = ot::Message::Read<ot::NetworkDiagnostic::Tlv>(v50, v46, v42);
    if (v47)
    {
      return v47;
    }

    if (ot::Tlv::IsExtended(v42))
    {
      v47 = ot::Message::Read<ot::ExtendedTlv>(v50, v46, v42);
      if (v47)
      {
        return v47;
      }

      v44 = v46 + 4;
      Length = ot::ExtendedTlv::GetLength(v42);
    }

    else
    {
      v44 = v46 + 2;
      Length = ot::Tlv::GetLength(v42);
    }

    v23 = v46;
    v24 = v23 + ot::Tlv::GetSize(v42);
    if (v24 > ot::Message::GetLength(v50))
    {
      return 6;
    }

    switch(ot::NetworkDiagnostic::Tlv::GetType(v42))
    {
      case 0u:
        v22 = v50;
        v21 = v46;
        v5 = ot::AsCoreType<otExtAddress>((v48 + 8));
        v47 = ot::Tlv::Read<ot::SimpleTlvInfo<(unsigned char)0,ot::Mac::ExtAddress>>(v22, v21, v5);
        if (!v47)
        {
          goto LABEL_91;
        }

        return v47;
      case 1u:
        v47 = ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(v50, v46, v48 + 8);
        if (!v47)
        {
          goto LABEL_91;
        }

        return v47;
      case 2u:
        v41 = 0;
        v47 = ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)2,unsigned char>>(v50, v46, &v41);
        if (!v47)
        {
          ot::Mle::DeviceMode::DeviceMode(&v40, v41);
          ot::Mle::DeviceMode::Get(&v40, v48 + 8);
          goto LABEL_91;
        }

        return v47;
      case 3u:
        v47 = ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)3,unsigned int>>(v50, v46, v48 + 8);
        if (!v47)
        {
          goto LABEL_91;
        }

        return v47;
      case 4u:
        if (ot::Tlv::IsExtended(v42))
        {
          return 6;
        }

        else
        {
          v47 = ot::Message::Read<ot::NetworkDiagnostic::ConnectivityTlv>(v50, v46, v39);
          if (!v47)
          {
            if (ot::Mle::ConnectivityTlv::IsValid(v39))
            {
              ot::NetworkDiagnostic::ConnectivityTlv::GetConnectivity(v39, (v48 + 8));
              goto LABEL_91;
            }

            return 6;
          }
        }

        return v47;
      case 5u:
        Size = ot::Tlv::GetSize(v42);
        v38 = ot::Min<unsigned int>(Size, 0x4Au);
        if (ot::Tlv::IsExtended(v42))
        {
          return 6;
        }

        else
        {
          v47 = ot::Message::Read(v50, v46, v51, v38);
          if (!v47)
          {
            if (ot::Mle::RouteTlv::IsValid(v51))
            {
              ot::NetworkDiagnostic::ParseRoute(v51, v48 + 8);
              goto LABEL_91;
            }

            return 6;
          }
        }

        return v47;
      case 6u:
        if (ot::Tlv::IsExtended(v42))
        {
          return 6;
        }

        else
        {
          v47 = ot::Message::Read<ot::NetworkDiagnostic::LeaderDataTlv>(v50, v46, v37);
          if (!v47)
          {
            if (ot::Mle::LeaderDataTlv::IsValid(v37))
            {
              v7 = ot::AsCoreType<otLeaderData>((v48 + 8));
              ot::Mle::LeaderDataTlv::Get(v37, v7);
              goto LABEL_91;
            }

            return 6;
          }
        }

        return v47;
      case 7u:
        if (Length <= 0xFEu)
        {
          v48[8] = Length;
          ot::Message::ReadBytes(v50, v44, v48 + 9, Length);
          goto LABEL_91;
        }

        return 6;
      case 8u:
        Array = ot::GetArrayLength<otIp6Address,(unsigned short)15>();
        ot::AsCoreTypePtr<otIp6Address>();
        v35 = v8;
        v34 = v48 + 8;
        if (Length % 16)
        {
          return 6;
        }

        else
        {
          *v34 = 0;
          while (1)
          {
            v20 = 0;
            if (Length)
            {
              v20 = *v34 < Array;
            }

            if (!v20)
            {
              goto LABEL_91;
            }

            v47 = ot::Message::Read<ot::Ip6::Address>(v50, v44, v35);
            if (v47)
            {
              break;
            }

            ++*v34;
            v35 += 16;
            v44 += 16;
            Length -= 16;
          }
        }

        return v47;
      case 9u:
        v47 = ot::Message::Read<ot::NetworkDiagnostic::MacCountersTlv>(v50, v46, v33);
        if (!v47)
        {
          if (ot::NetworkDiagnostic::MacCountersTlv::IsValid(v33))
          {
            ot::NetworkDiagnostic::ParseMacCounters(v33, v48 + 2);
            goto LABEL_91;
          }

          return 6;
        }

        return v47;
      case 0xEu:
        v47 = ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)14,unsigned char>>(v50, v46, v48 + 8);
        if (!v47)
        {
          goto LABEL_91;
        }

        return v47;
      case 0xFu:
        v47 = ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)15,unsigned short>>(v50, v46, v48 + 8);
        if (!v47)
        {
          goto LABEL_91;
        }

        return v47;
      case 0x10u:
        v31 = ot::GetArrayLength<otNetworkDiagChildEntry,(unsigned short)63>();
        v30 = v48 + 10;
        v29 = v48 + 8;
        if (Length % 3uLL)
        {
          return 6;
        }

        else
        {
          *v29 = 0;
          while (1)
          {
            v19 = 0;
            if (Length)
            {
              v19 = *v29 < v31;
            }

            if (!v19)
            {
              goto LABEL_91;
            }

            v47 = ot::Message::Read<ot::NetworkDiagnostic::ChildTableEntry>(v50, v44, v28);
            if (v47)
            {
              break;
            }

            Timeout = ot::NetworkDiagnostic::ChildTableEntry::GetTimeout(v28);
            *v30 = *v30 & 0xFFE0 | Timeout & 0x1F;
            LinkQuality = ot::NetworkDiagnostic::ChildTableEntry::GetLinkQuality(v28);
            *v30 = *v30 & 0xFF9F | (32 * (LinkQuality & 3));
            ChildId = ot::NetworkDiagnostic::ChildTableEntry::GetChildId(v28);
            *v30 = *v30 & 0x7F | ((ChildId & 0x1FF) << 7);
            Mode = ot::NetworkDiagnostic::ChildTableEntry::GetMode(v28);
            ot::Mle::DeviceMode::Get(&Mode, v30 + 2);
            ++*v29;
            v30 += 4;
            Length -= 3;
            v44 += 3;
          }
        }

        return v47;
      case 0x11u:
        v18 = Length;
        v12 = ot::GetArrayLength<unsigned char,(unsigned short)254>();
        v48[8] = ot::Min<unsigned short>(v18, v12);
        ot::Message::ReadBytes(v50, v44, v48 + 9, v48[8]);
        goto LABEL_91;
      case 0x13u:
        v47 = ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)19,unsigned int>>(v50, v46, v48 + 8);
        if (!v47)
        {
          goto LABEL_91;
        }

        return v47;
      case 0x17u:
        v17 = v50;
        v16 = v46;
        v13 = ot::AsCoreType<otExtAddress>((v48 + 8));
        v47 = ot::Tlv::Read<ot::SimpleTlvInfo<(unsigned char)23,ot::Mac::ExtAddress>>(v17, v16, v13);
        if (!v47)
        {
          goto LABEL_91;
        }

        return v47;
      case 0x18u:
        v47 = ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)24,unsigned short>>(v50, v46, v48 + 8);
        if (!v47)
        {
          goto LABEL_91;
        }

        return v47;
      case 0x19u:
        v47 = ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)25,(unsigned char)32>>(v50, v46, v48 + 8, v3, v4);
        if (!v47)
        {
          goto LABEL_91;
        }

        return v47;
      case 0x1Au:
        v47 = ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)26,(unsigned char)32>>(v50, v46, v48 + 8, v3, v4);
        if (!v47)
        {
          goto LABEL_91;
        }

        return v47;
      case 0x1Bu:
        v47 = ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)27,(unsigned char)16>>(v50, v46, v48 + 8, v3, v4);
        if (!v47)
        {
          goto LABEL_91;
        }

        return v47;
      case 0x1Cu:
        v47 = ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)28,(unsigned char)64>>(v50, v46, v48 + 8, v3, v4);
        if (!v47)
        {
          goto LABEL_91;
        }

        return v47;
      case 0x22u:
        v47 = ot::Message::Read<ot::NetworkDiagnostic::MleCountersTlv>(v50, v46, v32);
        if (v47)
        {
          return v47;
        }

        if (!ot::NetworkDiagnostic::MleCountersTlv::IsValid(v32))
        {
          return 6;
        }

        ot::NetworkDiagnostic::MleCountersTlv::Read(v32, (v48 + 8));
LABEL_91:
        v14 = ot::Tlv::GetSize(v42);
        v46 += v14;
        if ((v45 & 1) == 0)
        {
          *v48 = ot::NetworkDiagnostic::Tlv::GetType(v42);
          *v49 = v46;
          return 0;
        }

        break;
      case 0x23u:
        v47 = ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)35,(unsigned char)96>>(v50, v46, v48 + 8, v3, v4);
        if (!v47)
        {
          goto LABEL_91;
        }

        return v47;
      default:
        v45 = 1;
        goto LABEL_91;
    }
  }
}

uint64_t ot::Message::Read<ot::ExtendedTlv>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 4u);
}

{
  return ot::Message::Read<ot::ExtendedTlv>(a1, a2, a3);
}

uint64_t ot::Tlv::Read<ot::SimpleTlvInfo<(unsigned char)0,ot::Mac::ExtAddress>>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  return ot::Tlv::ReadTlvValue(a1, a2, a3, 8);
}

{
  return ot::Tlv::Read<ot::SimpleTlvInfo<(unsigned char)0,ot::Mac::ExtAddress>>(a1, a2, a3);
}

uint64_t ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  return ot::Tlv::ReadUintTlv<unsigned short>(a1, a2, a3);
}

{
  return ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(a1, a2, a3);
}

uint64_t ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)2,unsigned char>>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  return ot::Tlv::ReadUintTlv<unsigned char>(a1, a2, a3);
}

{
  return ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)2,unsigned char>>(a1, a2, a3);
}

uint64_t ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)3,unsigned int>>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  return ot::Tlv::ReadUintTlv<unsigned int>(a1, a2, a3);
}

{
  return ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)3,unsigned int>>(a1, a2, a3);
}

uint64_t ot::Message::Read<ot::NetworkDiagnostic::ConnectivityTlv>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0xCu);
}

{
  return ot::Message::Read<ot::NetworkDiagnostic::ConnectivityTlv>(a1, a2, a3);
}

BOOL ot::Mle::ConnectivityTlv::IsValid(ot::Mle::ConnectivityTlv *this)
{
  v3 = 1;
  if (!ot::Mle::ConnectivityTlv::IsSedBufferingIncluded(this))
  {
    return ot::Tlv::GetLength(this) == 7;
  }

  return v3;
}

{
  return ot::Mle::ConnectivityTlv::IsValid(this);
}

uint64_t ot::NetworkDiagnostic::ConnectivityTlv::GetConnectivity(ot::Mle::ConnectivityTlv *a1, uint64_t a2)
{
  *a2 = ot::Mle::ConnectivityTlv::GetParentPriority(a1);
  *(a2 + 1) = ot::Mle::ConnectivityTlv::GetLinkQuality3(a1);
  *(a2 + 2) = ot::Mle::ConnectivityTlv::GetLinkQuality2(a1);
  *(a2 + 3) = ot::Mle::ConnectivityTlv::GetLinkQuality1(a1);
  *(a2 + 4) = ot::Mle::ConnectivityTlv::GetLeaderCost(a1);
  *(a2 + 5) = ot::Mle::ConnectivityTlv::GetIdSequence(a1);
  *(a2 + 6) = ot::Mle::ConnectivityTlv::GetActiveRouters(a1);
  *(a2 + 8) = ot::Mle::ConnectivityTlv::GetSedBufferSize(a1);
  result = ot::Mle::ConnectivityTlv::GetSedDatagramCount(a1);
  *(a2 + 10) = result;
  return result;
}

{
  return ot::NetworkDiagnostic::ConnectivityTlv::GetConnectivity(a1, a2);
}

uint64_t ot::NetworkDiagnostic::ParseRoute(ot::Mle::RouteTlv *a1, _BYTE *a2)
{
  v4 = 0;
  for (i = 0; i <= 0x3Eu; ++i)
  {
    if (ot::Mle::RouteTlv::IsRouterIdSet(a1, i))
    {
      a2[2 * v4 + 2] = i;
      a2[2 * v4 + 3] = a2[2 * v4 + 3] & 0xF | (16 * (ot::Mle::RouteTlv::GetRouteCost(a1, v4) & 0xF));
      a2[2 * v4 + 3] = a2[2 * v4 + 3] & 0xF3 | (4 * (ot::Mle::RouteTlv::GetLinkQualityIn(a1, v4) & 3));
      a2[2 * v4 + 3] = a2[2 * v4 + 3] & 0xFC | ot::Mle::RouteTlv::GetLinkQualityOut(a1, v4) & 3;
      ++v4;
    }
  }

  a2[1] = v4;
  result = ot::Mle::RouteTlv::GetRouterIdSequence(a1);
  *a2 = result;
  return result;
}

uint64_t ot::Message::Read<ot::NetworkDiagnostic::LeaderDataTlv>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0xAu);
}

{
  return ot::Message::Read<ot::NetworkDiagnostic::LeaderDataTlv>(a1, a2, a3);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otLeaderData>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t ot::GetArrayLength<otIp6Address,(unsigned short)15>()
{
  return 15;
}

{
  return ot::GetArrayLength<otIp6Address,(unsigned short)15>();
}

uint64_t ot::Message::Read<ot::NetworkDiagnostic::MacCountersTlv>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x26u);
}

{
  return ot::Message::Read<ot::NetworkDiagnostic::MacCountersTlv>(a1, a2, a3);
}

BOOL ot::NetworkDiagnostic::MacCountersTlv::IsValid(ot::NetworkDiagnostic::MacCountersTlv *this)
{
  return ot::Tlv::GetLength(this) >= 0x24uLL;
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::IsValid(this);
}

uint64_t ot::NetworkDiagnostic::ParseMacCounters(ot::NetworkDiagnostic::MacCountersTlv *a1, _DWORD *a2)
{
  *a2 = ot::NetworkDiagnostic::MacCountersTlv::GetIfInUnknownProtos(a1);
  a2[1] = ot::NetworkDiagnostic::MacCountersTlv::GetIfInErrors(a1);
  a2[2] = ot::NetworkDiagnostic::MacCountersTlv::GetIfOutErrors(a1);
  a2[3] = ot::NetworkDiagnostic::MacCountersTlv::GetIfInUcastPkts(a1);
  a2[4] = ot::NetworkDiagnostic::MacCountersTlv::GetIfInBroadcastPkts(a1);
  a2[5] = ot::NetworkDiagnostic::MacCountersTlv::GetIfInDiscards(a1);
  a2[6] = ot::NetworkDiagnostic::MacCountersTlv::GetIfOutUcastPkts(a1);
  a2[7] = ot::NetworkDiagnostic::MacCountersTlv::GetIfOutBroadcastPkts(a1);
  result = ot::NetworkDiagnostic::MacCountersTlv::GetIfOutDiscards(a1);
  a2[8] = result;
  return result;
}

uint64_t ot::Message::Read<ot::NetworkDiagnostic::MleCountersTlv>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x44u);
}

{
  return ot::Message::Read<ot::NetworkDiagnostic::MleCountersTlv>(a1, a2, a3);
}

BOOL ot::NetworkDiagnostic::MleCountersTlv::IsValid(ot::NetworkDiagnostic::MleCountersTlv *this)
{
  return ot::Tlv::GetLength(this) >= 0x42uLL;
}

{
  return ot::NetworkDiagnostic::MleCountersTlv::IsValid(this);
}

uint64_t ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)14,unsigned char>>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  return ot::Tlv::ReadUintTlv<unsigned char>(a1, a2, a3);
}

{
  return ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)14,unsigned char>>(a1, a2, a3);
}

uint64_t ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)15,unsigned short>>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  return ot::Tlv::ReadUintTlv<unsigned short>(a1, a2, a3);
}

{
  return ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)15,unsigned short>>(a1, a2, a3);
}

uint64_t ot::GetArrayLength<otNetworkDiagChildEntry,(unsigned short)63>()
{
  return 63;
}

{
  return ot::GetArrayLength<otNetworkDiagChildEntry,(unsigned short)63>();
}

uint64_t ot::Message::Read<ot::NetworkDiagnostic::ChildTableEntry>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 3u);
}

{
  return ot::Message::Read<ot::NetworkDiagnostic::ChildTableEntry>(a1, a2, a3);
}

uint64_t ot::NetworkDiagnostic::ChildTableEntry::GetTimeout(ot::NetworkDiagnostic::ChildTableEntry *this)
{
  return (ot::NetworkDiagnostic::ChildTableEntry::GetTimeoutChildId(this) & 0xF800) >> 11;
}

{
  return ot::NetworkDiagnostic::ChildTableEntry::GetTimeout(this);
}

uint64_t ot::GetArrayLength<unsigned char,(unsigned short)254>()
{
  return 254;
}

{
  return ot::GetArrayLength<unsigned char,(unsigned short)254>();
}

uint64_t ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)19,unsigned int>>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  return ot::Tlv::ReadUintTlv<unsigned int>(a1, a2, a3);
}

{
  return ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)19,unsigned int>>(a1, a2, a3);
}

uint64_t ot::Tlv::Read<ot::SimpleTlvInfo<(unsigned char)23,ot::Mac::ExtAddress>>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  return ot::Tlv::ReadTlvValue(a1, a2, a3, 8);
}

{
  return ot::Tlv::Read<ot::SimpleTlvInfo<(unsigned char)23,ot::Mac::ExtAddress>>(a1, a2, a3);
}

uint64_t ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)24,unsigned short>>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  return ot::Tlv::ReadUintTlv<unsigned short>(a1, a2, a3);
}

{
  return ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)24,unsigned short>>(a1, a2, a3);
}

uint64_t ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)25,(unsigned char)32>>(ot::Tlv *a1, unsigned __int16 a2, char *a3, uint64_t a4, char *a5)
{
  return ot::Tlv::ReadStringTlv(a1, a2, 0x20u, a3, a5);
}

{
  return ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)25,(unsigned char)32>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)26,(unsigned char)32>>(ot::Tlv *a1, unsigned __int16 a2, char *a3, uint64_t a4, char *a5)
{
  return ot::Tlv::ReadStringTlv(a1, a2, 0x20u, a3, a5);
}

{
  return ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)26,(unsigned char)32>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)27,(unsigned char)16>>(ot::Tlv *a1, unsigned __int16 a2, char *a3, uint64_t a4, char *a5)
{
  return ot::Tlv::ReadStringTlv(a1, a2, 0x10u, a3, a5);
}

{
  return ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)27,(unsigned char)16>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)35,(unsigned char)96>>(ot::Tlv *a1, unsigned __int16 a2, char *a3, uint64_t a4, char *a5)
{
  return ot::Tlv::ReadStringTlv(a1, a2, 0x60u, a3, a5);
}

{
  return ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)35,(unsigned char)96>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)28,(unsigned char)64>>(ot::Tlv *a1, unsigned __int16 a2, char *a3, uint64_t a4, char *a5)
{
  return ot::Tlv::ReadStringTlv(a1, a2, 0x40u, a3, a5);
}

{
  return ot::Tlv::Read<ot::StringTlvInfo<(unsigned char)28,(unsigned char)64>>(a1, a2, a3, a4, a5);
}

uint64_t ot::NetworkDiagnostic::ChildTableEntry::SetTimeoutChildId(ot::NetworkDiagnostic::ChildTableEntry *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *this = result;
  return result;
}

{
  return ot::NetworkDiagnostic::ChildTableEntry::SetTimeoutChildId(this, a2);
}

uint64_t ot::NetworkDiagnostic::Server::AnswerInfo::AnswerInfo(uint64_t this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t ot::Mle::RouteTlv::GetRouteCost(ot::Mle::RouteTlv *this, unsigned __int8 a2)
{
  return *(this + a2 + 11) & 0xF;
}

{
  return ot::Mle::RouteTlv::GetRouteCost(this, a2);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::GetIfInUnknownProtos(ot::NetworkDiagnostic::MacCountersTlv *this)
{
  return ot::BigEndian::HostSwap32(*(this + 2));
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::GetIfInUnknownProtos(this);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::GetIfInErrors(ot::NetworkDiagnostic::MacCountersTlv *this)
{
  return ot::BigEndian::HostSwap32(*(this + 6));
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::GetIfInErrors(this);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::GetIfOutErrors(ot::NetworkDiagnostic::MacCountersTlv *this)
{
  return ot::BigEndian::HostSwap32(*(this + 10));
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::GetIfOutErrors(this);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::GetIfInUcastPkts(ot::NetworkDiagnostic::MacCountersTlv *this)
{
  return ot::BigEndian::HostSwap32(*(this + 14));
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::GetIfInUcastPkts(this);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::GetIfInBroadcastPkts(ot::NetworkDiagnostic::MacCountersTlv *this)
{
  return ot::BigEndian::HostSwap32(*(this + 18));
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::GetIfInBroadcastPkts(this);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::GetIfInDiscards(ot::NetworkDiagnostic::MacCountersTlv *this)
{
  return ot::BigEndian::HostSwap32(*(this + 22));
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::GetIfInDiscards(this);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::GetIfOutUcastPkts(ot::NetworkDiagnostic::MacCountersTlv *this)
{
  return ot::BigEndian::HostSwap32(*(this + 26));
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::GetIfOutUcastPkts(this);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::GetIfOutBroadcastPkts(ot::NetworkDiagnostic::MacCountersTlv *this)
{
  return ot::BigEndian::HostSwap32(*(this + 30));
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::GetIfOutBroadcastPkts(this);
}

uint64_t ot::NetworkDiagnostic::MacCountersTlv::GetIfOutDiscards(ot::NetworkDiagnostic::MacCountersTlv *this)
{
  return ot::BigEndian::HostSwap32(*(this + 34));
}

{
  return ot::NetworkDiagnostic::MacCountersTlv::GetIfOutDiscards(this);
}

uint64_t ot::ClearAllBytes<ot::NetworkDiagnostic::ChildTableEntry>(uint64_t result)
{
  *result = 0;
  *(result + 2) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::NetworkDiagnostic::ChildTableEntry>(result);
}

uint64_t ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,ot::Coap::Message *&,ot::Ip6::MessageInfo const*&>(uint64_t a1, unsigned int *a2, void *a3, void *a4)
{
  return (*a1)(*a2, *a3, *a4, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,ot::Coap::Message *&,ot::Ip6::MessageInfo const*&>(a1, a2, a3, a4);
}

uint64_t ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,ot::Coap::Message *,ot::Ip6::MessageInfo const*>(uint64_t a1, unsigned int *a2, void *a3, void *a4)
{
  return (*a1)(*a2, *a3, *a4, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,otMessage *,otMessageInfo const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,ot::Coap::Message *,ot::Ip6::MessageInfo const*>(a1, a2, a3, a4);
}

ot::PanIdQueryServer *ot::PanIdQueryServer::PanIdQueryServer(ot::PanIdQueryServer *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *(this + 4) = 0;
  *(this + 10) = -1;
  ot::TimerMilliIn<ot::PanIdQueryServer,&ot::PanIdQueryServer::HandleTimer>::TimerMilliIn((this + 24), a2);
  return this;
}

{
  ot::PanIdQueryServer::PanIdQueryServer(this, a2);
  return this;
}

void ot::PanIdQueryServer::HandleTimer(ot::PanIdQueryServer *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ot::Mac::Mac::ActiveScan(v1, *(this + 4), 0, ot::PanIdQueryServer::HandleScanResult, this);
  IgnoreError();
  *(this + 4) = 0;
}

ot::TimerMilli *ot::TimerMilliIn<ot::PanIdQueryServer,&ot::PanIdQueryServer::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::PanIdQueryServer,&ot::PanIdQueryServer::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::PanIdQueryServer,&ot::PanIdQueryServer::HandleTimer>::HandleTimer);
  return a1;
}

void ot::PanIdQueryServer::HandleTmf<(ot::Uri)27>(uint64_t a1, ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = 0;
  v14 = 0;
  if (ot::Coap::Message::IsPostRequest(a2) && !ot::MeshCoP::ChannelMaskTlv::FindIn(v17, &v14, v3) && !ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(v17, &v15))
  {
    *(a1 + 16) = v14;
    *a1 = *ot::Ip6::MessageInfo::GetPeerAddr(v16);
    *(a1 + 20) = v15;
    ot::TimerMilli::Start((a1 + 24), 0x3E8u);
    if (ot::Coap::Message::IsConfirmable(v17))
    {
      SockAddr = ot::Ip6::MessageInfo::GetSockAddr(v16);
      if (!ot::Ip6::Address::IsMulticast(SockAddr))
      {
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
        if (!ot::Coap::CoapBase::SendEmptyAck(v5, v17, v16))
        {
          v6 = ot::UriToString<(ot::Uri)27>();
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshCoP", "Sent %s ack", v7, v8, v9, v10, v11, v12, v6);
        }
      }
    }
  }
}

void ot::PanIdQueryServer::HandleScanResult(uint64_t a1, uint64_t a2)
{
  ot::PanIdQueryServer::HandleScanResult(a2, a1);
}

{
  if (a2)
  {
    if (*(a2 + 50) == *(a1 + 20))
    {
      *(a1 + 16) |= 1 << *(a2 + 54);
    }
  }

  else if (*(a1 + 16))
  {
    ot::PanIdQueryServer::SendConflict(a1);
  }
}

void ot::PanIdQueryServer::SendConflict(ot::PanIdQueryServer *this)
{
  v15 = this;
  v14 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v13, Instance);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v12 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v2, 0x19u);
  if (v12)
  {
    v14 = ot::MeshCoP::ChannelMaskTlv::AppendTo(v12, *(this + 4));
    if (!v14)
    {
      v14 = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(v12, *(this + 10));
      if (!v14)
      {
        ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(v13, this);
        v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
        v14 = ot::Coap::CoapBase::SendMessage(v3, v12, v13);
        if (!v14)
        {
          v4 = ot::UriToString<(ot::Uri)25>();
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshCoP", "Sent %s", v5, v6, v7, v8, v9, v10, v4);
        }
      }
    }
  }

  else
  {
    v14 = 3;
  }

  if (v14 && v12)
  {
    ot::Message::Free(v12);
  }

  ot::Logger::LogOnError("MeshCoP", v14, "send panid conflict");
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::PanIdQueryServer>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::PanIdQueryServer>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::PanIdQueryServer>(a1);
}

uint64_t ot::Instance::Get<ot::PanIdQueryServer>(uint64_t a1)
{
  return a1 + 154624;
}

{
  return ot::Instance::Get<ot::PanIdQueryServer>(a1);
}

ot::RouterTable *ot::RouterTable::RouterTable(ot::RouterTable *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::Array(this + 8, a2);
  ot::TaskletIn<ot::RouterTable,&ot::RouterTable::HandleTableChanged>::TaskletIn((this + 4624), a2);
  ot::RouterTable::RouterIdMap::RouterIdMap((this + 4640));
  v2 = ot::Time::Time((this + 4704), 0);
  *(this + 4708) = ot::Random::NonCrypto::GetUint8(v2);
  ot::RouterTable::Clear(this);
  return this;
}

{
  ot::RouterTable::RouterTable(this, a2);
  return this;
}

uint64_t ot::RouterTable::HandleTableChanged(ot::RouterTable *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ot::RouterTable::LogRouteTable(this, a2, a3, a4, a5, a6, a7, a8);
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::HistoryTracker>(this);
  ot::Utils::HistoryTracker::RecordRouterTableChange(v8);
  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  return ot::Mle::MleRouter::UpdateAdvertiseInterval(v9);
}

uint64_t ot::Array<ot::Router,(unsigned short)32,unsigned char>::Array(uint64_t a1, ot::Instance *a2)
{
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::Array(a1, a2);
  return a1;
}

{
  v4 = a1;
  do
  {
    ot::Parent::Parent(v4);
    v4 = (v4 + 144);
  }

  while (v4 != (a1 + 4608));
  *(a1 + 4608) = 0;
  for (i = a1; i != (a1 + 4608); i = (i + 144))
  {
    ot::Router::Init(i, a2);
  }

  return a1;
}

ot::InstanceLocator *ot::TaskletIn<ot::RouterTable,&ot::RouterTable::HandleTableChanged>::TaskletIn(ot::InstanceLocator *a1, ot::Instance *a2)
{
  ot::TaskletIn<ot::RouterTable,&ot::RouterTable::HandleTableChanged>::TaskletIn(a1, a2);
  return a1;
}

{
  ot::Tasklet::Tasklet(a1, a2, ot::TaskletIn<ot::RouterTable,&ot::RouterTable::HandleTableChanged>::HandleTasklet);
  return a1;
}

ot::RouterTable::RouterIdMap *ot::RouterTable::RouterIdMap::RouterIdMap(ot::RouterTable::RouterIdMap *this)
{
  ot::RouterTable::RouterIdMap::RouterIdMap(this);
  return this;
}

{
  ot::Clearable<ot::RouterTable::RouterIdMap>::Clear(this);
  return this;
}

uint64_t ot::RouterTable::Clear(ot::RouterTable *this)
{
  ot::RouterTable::ClearNeighbors(this);
  ot::Clearable<ot::RouterTable::RouterIdMap>::Clear(this + 4640);
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::Clear(this + 8);
  return ot::RouterTable::SignalTableChanged(this);
}

uint64_t ot::RouterTable::ClearNeighbors(ot::RouterTable *this)
{
  v7 = this + 8;
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin();
  v6 = v1;
  result = ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(v7);
  v5 = result;
  while (v6 != v5)
  {
    if (ot::Neighbor::IsStateValid(v6))
    {
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
      ot::NeighborTable::Signal(v3, 4u, v6);
      ot::RouterTable::SignalTableChanged(this);
    }

    result = ot::Neighbor::SetState(v6, 0);
    v6 = (v6 + 144);
  }

  return result;
}

void *ot::Clearable<ot::RouterTable::RouterIdMap>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::RouterTable::RouterIdMap>(a1);
}

{
  return ot::Clearable<ot::RouterTable::RouterIdMap>::Clear(a1);
}

uint64_t ot::Array<ot::Router,(unsigned short)32,unsigned char>::Clear(uint64_t result)
{
  *(result + 4608) = 0;
  return result;
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::Clear(result);
}

BOOL ot::RouterTable::IsRouteTlvIdSequenceMoreRecent(ot::RouterTable *this, const ot::Mle::RouteTlv *a2)
{
  v6 = 1;
  if (ot::RouterTable::GetActiveRouterCount(this))
  {
    RouterIdSequence = ot::Mle::RouteTlv::GetRouterIdSequence(a2);
    v2 = ot::RouterTable::GetRouterIdSequence(this);
    return ot::SerialNumber::IsGreater<unsigned char>(RouterIdSequence, v2);
  }

  return v6;
}

ot::Router *ot::RouterTable::AddRouter(ot::RouterTable *this, unsigned __int8 a2)
{
  v16 = ot::Array<ot::Router,(unsigned short)32,unsigned char>::PushBack(this + 8);
  if (v16)
  {
    ot::Router::Clear(v16);
    v2 = ot::Mle::Rloc16FromRouterId(a2);
    ot::Neighbor::SetRloc16(v16, v2);
    ot::Router::SetNextHopToInvalid(v16);
    v3 = ot::Array<ot::Router,(unsigned short)32,unsigned char>::IndexOf(this + 8, v16);
    ot::RouterTable::RouterIdMap::SetIndex(this + 4640, a2, v3);
    ot::RouterTable::SignalTableChanged(this);
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    Rloc16 = ot::Mle::Mle::GetRloc16(v4);
    if (Rloc16 == ot::Mle::Rloc16FromRouterId(a2))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("RouterTable", "Updating Ext Address for routerId = %d", v5, v6, v7, v8, v9, v10, a2);
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ExtAddress = ot::Mac::Mac::GetExtAddress(v11);
      ot::Neighbor::SetExtAddress(v16, ExtAddress);
    }
  }

  return v16;
}

uint64_t ot::Array<ot::Router,(unsigned short)32,unsigned char>::PushBack(uint64_t a1)
{
  if (ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsFull(a1))
  {
    return 0;
  }

  v1 = (*(a1 + 4608))++;
  return a1 + 144 * v1;
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::PushBack(a1);
}

uint64_t ot::RouterTable::RouterIdMap::SetIndex(uint64_t this, unsigned __int8 a2, char a3)
{
  *(this + a2) = a3 | 0x80;
  return this;
}

{
  return ot::RouterTable::RouterIdMap::SetIndex(this, a2, a3);
}

uint64_t ot::Array<ot::Router,(unsigned short)32,unsigned char>::IndexOf(uint64_t a1, uint64_t a2)
{
  return ((a2 - a1) / 144);
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::IndexOf(a1, a2);
}

uint64_t ot::RouterTable::RemoveRouter(ot::RouterTable *this, ot::Router *a2)
{
  if (ot::Neighbor::IsStateValid(a2))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
    ot::NeighborTable::Signal(v2, 4u, a2);
  }

  RouterId = ot::Neighbor::GetRouterId(a2);
  ot::RouterTable::RouterIdMap::Release(this + 4640, RouterId);
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::Remove(this + 8, a2);
  v4 = ot::Neighbor::GetRouterId(a2);
  if (ot::RouterTable::IsAllocated(this, v4))
  {
    v7 = ot::Neighbor::GetRouterId(a2);
    v5 = ot::Array<ot::Router,(unsigned short)32,unsigned char>::IndexOf(this + 8, a2);
    ot::RouterTable::RouterIdMap::SetIndex(this + 4640, v7, v5);
  }

  return ot::RouterTable::SignalTableChanged(this);
}

uint64_t ot::RouterTable::RouterIdMap::Release(uint64_t this, unsigned __int8 a2)
{
  *(this + a2) = 100;
  return this;
}

{
  return ot::RouterTable::RouterIdMap::Release(this, a2);
}

void *ot::Array<ot::Router,(unsigned short)32,unsigned char>::Remove(uint64_t a1, void *a2)
{
  result = ot::Array<ot::Router,(unsigned short)32,unsigned char>::PopBack(a1);
  if (result != a2)
  {
    return memcpy(a2, result, 0x8EuLL);
  }

  return result;
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::Remove(a1, a2);
}

uint64_t ot::RouterTable::Allocate(ot::RouterTable *this)
{
  v6 = 0;
  v5 = 0;
  v4 = 63;
  if (!ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsFull(this + 8))
  {
    for (i = 0; i <= 0x3Eu; ++i)
    {
      if (ot::RouterTable::RouterIdMap::CanAllocate((this + 4640), i) && !ot::Random::NonCrypto::GetUint8InRange(0, ++v5))
      {
        v4 = i;
      }
    }

    if (v4 != 63)
    {
      v6 = ot::RouterTable::Allocate(this, v4);
      if (!v6)
      {
        __assert_rtn("Allocate", "router_table.cpp", 174, "router != nullptr");
      }
    }
  }

  return v6;
}

BOOL ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsFull(uint64_t a1)
{
  v2 = *(a1 + 4608);
  return v2 == ot::Array<ot::Router,(unsigned short)32,unsigned char>::GetMaxSize();
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsFull(a1);
}

BOOL ot::RouterTable::RouterIdMap::CanAllocate(ot::RouterTable::RouterIdMap *this, unsigned __int8 a2)
{
  return *(this + a2) == 0;
}

{
  return ot::RouterTable::RouterIdMap::CanAllocate(this, a2);
}

uint64_t ot::RouterTable::Allocate(ot::RouterTable *this, unsigned __int8 a2)
{
  v14 = 0;
  if (a2 <= 0x3Eu && ot::RouterTable::RouterIdMap::CanAllocate((this + 4640), a2))
  {
    v2 = ot::RouterTable::AddRouter(this, a2);
    v14 = v2;
    if (v2)
    {
      Now = ot::TimerMilli::GetNow(v2);
      Heard = ot::Neighbor::SetLastHeard(v14, Now);
      ++*(this + 4708);
      *(this + 1176) = ot::TimerMilli::GetNow(Heard);
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      ot::Mle::MleRouter::ResetAdvertiseInterval(v4);
      ot::Logger::LogAtLevel<(ot::LogLevel)3>("RouterTable", "Allocate router id %d", v5, v6, v7, v8, v9, v10, a2);
    }
  }

  return v14;
}

uint64_t ot::RouterTable::Release(ot::RouterTable *this, unsigned __int8 a2)
{
  v20 = 0;
  if (a2 > 0x3Eu)
  {
    __assert_rtn("Release", "router_table.cpp", 206, "aRouterId <= Mle::kMaxRouterId");
  }

  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsLeader(v2))
  {
    ot::RouterTable::FindRouterById(this, a2);
    if (v3)
    {
      ot::RouterTable::RemoveRouter(this, v3);
      ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin();
      v19 = v4;
      NextHop = ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(this + 8);
      v18 = NextHop;
      while (v19 != v18)
      {
        NextHop = ot::Router::GetNextHop(v19);
        if (NextHop == a2)
        {
          NextHop = ot::Router::SetNextHopToInvalid(v19);
        }

        v19 = (v19 + 144);
      }

      ++*(this + 4708);
      *(this + 1176) = ot::TimerMilli::GetNow(NextHop);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
      ot::AddressResolver::RemoveEntriesForRouterId(v6, a2);
      v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
      v7 = ot::Mle::Rloc16FromRouterId(a2);
      ot::NetworkData::Leader::RemoveBorderRouter(v16, v7, 1);
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      ot::Mle::MleRouter::ResetAdvertiseInterval(v8);
      ot::Logger::LogAtLevel<(ot::LogLevel)3>("RouterTable", "Release router id %d", v9, v10, v11, v12, v13, v14, a2);
    }

    else
    {
      return 23;
    }
  }

  else
  {
    return 13;
  }

  return v20;
}

ot::AddressResolver::CacheEntry *ot::RouterTable::RemoveRouterLink(ot::RouterTable *this, ot::Router *a2)
{
  if (ot::Router::GetLinkQualityOut(a2))
  {
    v2 = ot::Router::SetLinkQualityOut(a2, 0);
    Now = ot::TimerMilli::GetNow(v2);
    ot::Neighbor::SetLastHeard(a2, Now);
    ot::RouterTable::SignalTableChanged(this);
  }

  ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin();
  v12 = v3;
  v11 = ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(this + 8);
  while (v12 != v11)
  {
    NextHop = ot::Router::GetNextHop(v12);
    if (NextHop == ot::Neighbor::GetRouterId(a2))
    {
      ot::Router::SetNextHopToInvalid(v12);
      ot::RouterTable::SignalTableChanged(this);
      if (ot::RouterTable::GetLinkCost(this, v12) >= 16)
      {
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
        ot::Mle::MleRouter::ResetAdvertiseInterval(v4);
      }
    }

    v12 = (v12 + 144);
  }

  result = ot::Router::GetNextHop(a2);
  if (result == 63)
  {
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::MleRouter::ResetAdvertiseInterval(v6);
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
    RouterId = ot::Neighbor::GetRouterId(a2);
    return ot::AddressResolver::RemoveEntriesForRouterId(v8, RouterId);
  }

  return result;
}

uint64_t ot::Router::GetLinkQualityOut(ot::Router *this)
{
  return *(this + 141) & 3;
}

{
  return ot::Router::GetLinkQualityOut(this);
}

uint64_t ot::RouterTable::GetLinkCost(ot::RouterTable *this, const ot::Router *a2)
{
  v6 = 16;
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  Rloc16 = ot::Neighbor::GetRloc16(a2);
  if (!ot::Mle::Mle::HasRloc16(v5, Rloc16) && ot::Neighbor::IsStateValid(a2))
  {
    TwoWayLinkQuality = ot::Router::GetTwoWayLinkQuality(a2);
    return ot::CostForLinkQuality(TwoWayLinkQuality);
  }

  return v6;
}

uint64_t ot::Array<ot::Router,(unsigned short)32,unsigned char>::FindMatching<ot::Neighbor::AddressMatcher>(uint64_t a1, unsigned __int8 *a2)
{
  v7 = 0;
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin();
  v5 = v2;
  v4 = ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(a1);
  while (v5 != v4)
  {
    if (ot::Neighbor::Matches(v5, a2))
    {
      return v5;
    }

    v5 += 144;
  }

  return v7;
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::FindMatching<ot::Neighbor::AddressMatcher>(a1, a2);
}

uint64_t ot::RouterTable::FindNeighbor(ot::RouterTable *this, __int16 a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  if (!ot::Mle::Mle::HasRloc16(v2, v8))
  {
    ot::Neighbor::AddressMatcher::AddressMatcher(v6, v8, 0);
    ot::RouterTable::FindRouter(this, v6);
    return v3;
  }

  return v7;
}

void ot::RouterTable::FindNeighbor(ot::RouterTable *this, const ot::Mac::ExtAddress *a2)
{
  v5 = this;
  v4 = a2;
  ot::Neighbor::AddressMatcher::AddressMatcher(v3, a2, 0);
  ot::RouterTable::FindRouter(this, v3);
}

void ot::RouterTable::FindNeighbor(ot::RouterTable *this, const ot::Mac::Address *a2)
{
  v5 = this;
  v4 = a2;
  ot::Neighbor::AddressMatcher::AddressMatcher(v3, a2, 0);
  ot::RouterTable::FindRouter(this, v3);
}

uint64_t ot::RouterTable::FindRouterById(ot::RouterTable *this, unsigned __int8 a2)
{
  v5 = 0;
  if (a2 <= 0x3Eu && ot::RouterTable::IsAllocated(this, a2))
  {
    Index = ot::RouterTable::RouterIdMap::GetIndex((this + 4640), a2);
    return ot::Array<ot::Router,(unsigned short)32,unsigned char>::operator[](this + 8, Index);
  }

  return v5;
}

uint64_t ot::Array<ot::Router,(unsigned short)32,unsigned char>::operator[](uint64_t a1, unsigned __int8 a2)
{
  return a1 + 144 * a2;
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::operator[](a1, a2);
}

uint64_t ot::RouterTable::RouterIdMap::GetIndex(ot::RouterTable::RouterIdMap *this, unsigned __int8 a2)
{
  return *(this + a2) & 0x7F;
}

{
  return ot::RouterTable::RouterIdMap::GetIndex(this, a2);
}

void ot::RouterTable::FindRouter(ot::RouterTable *this, const ot::Mac::ExtAddress *a2)
{
  v5 = this;
  v4 = a2;
  ot::Neighbor::AddressMatcher::AddressMatcher(v3, a2, 7);
  ot::RouterTable::FindRouter(this, v3);
}

uint64_t ot::RouterTable::GetRouterInfo(ot::RouterTable *this, unsigned __int16 a2, ot::Router::Info *a3)
{
  v7 = 0;
  if (a2 > 0x3Eu)
  {
    if (!ot::Mle::IsRouterRloc16(a2))
    {
      return 7;
    }

    v6 = ot::Mle::RouterIdFromRloc16(a2);
    if (v6 > 0x3Eu)
    {
      return 7;
    }

    ot::RouterTable::FindRouterById(this, v6);
  }

  else
  {
    ot::RouterTable::FindRouterById(this, a2);
  }

  if (v3)
  {
    ot::Router::Info::SetFrom(a3, v3);
  }

  else
  {
    return 23;
  }

  return v7;
}

uint64_t ot::RouterTable::GetLeader(ot::RouterTable *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  LeaderId = ot::Mle::Mle::GetLeaderId(v1);
  return ot::RouterTable::FindRouterById(this, LeaderId);
}

uint64_t ot::RouterTable::GetLeaderAge(ot::RouterTable *this)
{
  v7 = this;
  IsEmpty = ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsEmpty(this + 8);
  if (IsEmpty)
  {
    return -1;
  }

  else
  {
    Now = ot::TimerMilli::GetNow(IsEmpty);
    v2 = ot::Time::operator-(&Now, this + 1176);
    return ot::Time::MsecToSec(v2);
  }
}

BOOL ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsEmpty(uint64_t a1)
{
  return *(a1 + 4608) == 0;
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsEmpty(a1);
}

uint64_t ot::RouterTable::GetNeighborCount(uint64_t a1, unsigned __int8 a2)
{
  v7 = 0;
  v6 = a1 + 8;
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin();
  v5 = v2;
  v4 = ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(v6);
  while (v5 != v4)
  {
    if (ot::Neighbor::IsStateValid(v5) && ot::Neighbor::GetLinkQualityIn(v5) >= a2)
    {
      ++v7;
    }

    v5 = (v5 + 144);
  }

  return v7;
}

uint64_t ot::RouterTable::GetLinkCost(ot::RouterTable *this, unsigned __int8 a2)
{
  v5 = 16;
  RouterById = ot::RouterTable::FindRouterById(this, a2);
  if (RouterById)
  {
    return ot::RouterTable::GetLinkCost(this, RouterById);
  }

  return v5;
}

uint64_t ot::RouterTable::GetPathCost(ot::RouterTable *this, unsigned __int16 a2)
{
  v6 = this;
  v5 = a2;
  v4 = 0;
  v3 = 0;
  ot::RouterTable::GetNextHopAndPathCost(this, a2, &v3, &v4);
  return v4;
}

void ot::RouterTable::GetNextHopAndPathCost(ot::RouterTable *this, unsigned __int16 a2, unsigned __int16 *a3, unsigned __int8 *a4)
{
  *a4 = 16;
  *a3 = -2;
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  if (ot::Mle::Mle::IsAttached(v4))
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (ot::Mle::Mle::HasRloc16(v5, a2))
    {
      *a4 = 0;
      *a3 = a2;
      return;
    }

    v6 = ot::Mle::RouterIdFromRloc16(a2);
    RouterById = ot::RouterTable::FindRouterById(this, v6);
    if (RouterById)
    {
      NextHopOf = ot::RouterTable::FindNextHopOf(this, RouterById);
    }

    else
    {
      NextHopOf = 0;
    }

    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    if (ot::Mle::Mle::IsChild(v7))
    {
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      Parent = ot::Mle::Mle::GetParent(v8);
      if (ot::Neighbor::IsStateValid(Parent))
      {
        *a3 = ot::Neighbor::GetRloc16(Parent);
      }

      Rloc16 = ot::Neighbor::GetRloc16(Parent);
      v19 = ot::Mle::RouterIdMatch(a2, Rloc16);
      if (v19 || NextHopOf)
      {
        LinkQualityIn = ot::Neighbor::GetLinkQualityIn(Parent);
        *a4 = ot::CostForLinkQuality(LinkQualityIn);
        if (!v19)
        {
          *a4 += ot::Router::GetCost(RouterById);
        }

LABEL_24:
        if (ot::Mle::IsChildRloc16(a2))
        {
          ++*a4;
        }
      }
    }

    else
    {
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      if (!ot::Mle::Mle::HasMatchingRouterIdWith(v11, a2))
      {
        if (!RouterById)
        {
          return;
        }

        *a4 = ot::RouterTable::GetLinkCost(this, RouterById);
        if (*a4 < 0x10u)
        {
          *a3 = ot::Neighbor::GetRloc16(RouterById);
        }

        if (NextHopOf)
        {
          Cost = ot::Router::GetCost(RouterById);
          v18 = Cost + ot::RouterTable::GetLinkCost(this, NextHopOf);
          if (v18 < *a4)
          {
            *a4 = v18;
            *a3 = ot::Neighbor::GetRloc16(NextHopOf);
          }
        }

        goto LABEL_24;
      }

      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
      ot::ChildTable::FindChild(v12, a2, 5);
      if (v13)
      {
        *a3 = a2;
        v14 = ot::Neighbor::GetLinkQualityIn(v13);
        *a4 = ot::CostForLinkQuality(v14);
      }
    }
  }
}

uint64_t ot::RouterTable::GetPathCostToLeader(ot::RouterTable *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  LeaderRloc16 = ot::Mle::Mle::GetLeaderRloc16(v1);
  return ot::RouterTable::GetPathCost(this, LeaderRloc16);
}

uint64_t ot::Router::GetCost(ot::Router *this)
{
  return (*(this + 141) >> 2) & 0xF;
}

{
  return ot::Router::GetCost(this);
}

uint64_t ot::RouterTable::GetNextHop(ot::RouterTable *this, unsigned __int16 a2)
{
  v6 = this;
  v5 = a2;
  v4 = 0;
  v3 = 0;
  ot::RouterTable::GetNextHopAndPathCost(this, a2, &v3, &v4);
  return v3;
}

uint64_t ot::RouterTable::UpdateRouterIdSet(ot::RouterTable *this, char a2, const ot::Mle::RouterIdSet *a3)
{
  v12 = 0;
  *(this + 4708) = a2;
  result = ot::TimerMilli::GetNow(this);
  *(this + 1176) = result;
  for (i = 0; i <= 0x3Eu; ++i)
  {
    IsAllocated = ot::RouterTable::IsAllocated(this, i);
    v4 = ot::Mle::RouterIdSet::Contains(a3, i);
    result = IsAllocated;
    if (IsAllocated != v4)
    {
      result = ot::RouterTable::IsAllocated(this, i);
      if (result)
      {
        ot::RouterTable::FindRouterById(this, i);
        v10 = v5;
        if (!v5)
        {
          __assert_rtn("UpdateRouterIdSet", "router_table.cpp", 539, "router != nullptr");
        }

        ot::Router::SetNextHopToInvalid(v5);
        ot::RouterTable::RemoveRouterLink(this, v10);
        result = ot::RouterTable::RemoveRouter(this, v10);
      }

      else
      {
        v12 = 1;
      }
    }
  }

  if (v12)
  {
    for (j = 0; j <= 0x3Eu; ++j)
    {
      if (!ot::RouterTable::IsAllocated(this, j) && ot::Mle::RouterIdSet::Contains(a3, j))
      {
        ot::RouterTable::AddRouter(this, j);
      }
    }

    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    return ot::Mle::MleRouter::ResetAdvertiseInterval(v6);
  }

  return result;
}

void ot::RouterTable::UpdateRoutes(ot::RouterTable *this, const ot::Mle::RouteTlv *a2, unsigned __int8 a3)
{
  ot::RouterTable::FindRouterById(this, a3);
  v29 = v3;
  if (v3)
  {
    ot::Clearable<ot::Mle::RouterIdSet>::Clear(&v32);
    for (i = 0; i <= 0x3Eu; ++i)
    {
      v4 = ot::Mle::Rloc16FromRouterId(i);
      if (ot::RouterTable::GetPathCost(this, v4) < 16)
      {
        ot::Mle::RouterIdSet::Add(&v32, i);
      }
    }

    v26 = 0;
    v25 = 0;
    while (v26 <= 0x3Eu)
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      if (ot::Mle::Mle::MatchesRouterId(v5, v26))
      {
        if (ot::Mle::RouteTlv::IsRouterIdSet(a2, v26))
        {
          LinkQualityIn = ot::Mle::RouteTlv::GetLinkQualityIn(a2, v25);
          if (ot::Router::GetLinkQualityOut(v29) != LinkQualityIn)
          {
            ot::Router::SetLinkQualityOut(v29, LinkQualityIn);
            ot::RouterTable::SignalTableChanged(this);
          }
        }

        break;
      }

      v25 += ot::Mle::RouteTlv::IsRouterIdSet(a2, v26++);
    }

    LinkCost = ot::RouterTable::GetLinkCost(this, v29);
    v23 = 0;
    v22 = 0;
    while (v23 <= 0x3Eu)
    {
      if (ot::Mle::RouteTlv::IsRouterIdSet(a2, v23))
      {
        ot::RouterTable::FindRouterById(this, v23);
        v21 = v6;
        if (v6)
        {
          v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
          Rloc16 = ot::Neighbor::GetRloc16(v21);
          if (!ot::Mle::Mle::HasRloc16(v14, Rloc16) && v21 != v29)
          {
            ot::RouterTable::FindNextHopOf(this, v21);
            v20 = v8;
            RouteCost = ot::Mle::RouteTlv::GetRouteCost(a2, v22);
            if (RouteCost)
            {
              v13 = RouteCost;
            }

            else
            {
              v13 = 16;
            }

            if (v20 && v20 != v29)
            {
              Cost = ot::Router::GetCost(v21);
              if ((v13 + LinkCost) < (Cost + ot::RouterTable::GetLinkCost(this, v20)))
              {
                ot::Router::SetNextHopAndCost(v21, a3, v13);
                ot::RouterTable::SignalTableChanged(this);
              }
            }

            else if (v13 + LinkCost >= 16)
            {
              if (v20 == v29)
              {
                HopToInvalid = ot::Router::SetNextHopToInvalid(v21);
                Now = ot::TimerMilli::GetNow(HopToInvalid);
                ot::Neighbor::SetLastHeard(v21, Now);
                ot::RouterTable::SignalTableChanged(this);
              }
            }

            else if (ot::Router::SetNextHopAndCost(v21, a3, v13))
            {
              ot::RouterTable::SignalTableChanged(this);
            }
          }
        }
      }

      v22 += ot::Mle::RouteTlv::IsRouterIdSet(a2, v23++);
    }

    for (j = 0; j <= 0x3Eu; ++j)
    {
      v16 = ot::Mle::RouterIdSet::Contains(&v32, j);
      v10 = ot::Mle::Rloc16FromRouterId(j);
      if (ot::RouterTable::GetPathCost(this, v10) < 16 != v16)
      {
        v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
        ot::Mle::MleRouter::ResetAdvertiseInterval(v11);
        return;
      }
    }
  }
}

uint64_t ot::Mle::RouterIdSet::Add(ot::Mle::RouterIdSet *this, unsigned __int8 a2)
{
  result = ot::Mle::RouterIdSet::MaskFor(a2);
  *(this + a2 / 8) |= result;
  return result;
}

{
  return ot::Mle::RouterIdSet::Add(this, a2);
}

BOOL ot::Mle::Mle::MatchesRouterId(ot::Mle::Mle *this, unsigned __int8 a2)
{
  return ot::Mle::RouterIdFromRloc16(*(this + 72)) == a2;
}

{
  return ot::Mle::Mle::MatchesRouterId(this, a2);
}

BOOL ot::RouterTable::UpdateRoutesOnFed(_BOOL8 this, const ot::Mle::RouteTlv *a2, unsigned __int8 a3)
{
  v5 = this;
  v9 = 0;
  v8 = 0;
  while (v9 <= 0x3Eu)
  {
    if (ot::Mle::RouteTlv::IsRouterIdSet(a2, v9) && v9 != a3)
    {
      ot::RouterTable::FindRouterById(v5, v9);
      v7 = v3;
      if (v3)
      {
        RouteCost = ot::Mle::RouteTlv::GetRouteCost(a2, v8);
        if (RouteCost)
        {
          v4 = a3;
        }

        else
        {
          v4 = 63;
        }

        if (ot::Router::SetNextHopAndCost(v7, v4, RouteCost))
        {
          ot::RouterTable::SignalTableChanged(v5);
        }
      }
    }

    this = ot::Mle::RouteTlv::IsRouterIdSet(a2, v9);
    v8 += this;
    ++v9;
  }

  return this;
}

uint64_t ot::RouterTable::FillRouteTlv(ot::RouterTable *this, ot::Mle::RouteTlv *a2, const ot::Neighbor *a3)
{
  v18 = *(this + 4708);
  ot::RouterTable::RouterIdMap::GetAsRouterIdSet((this + 4640), v21);
  if (a3)
  {
    Rloc16 = ot::Neighbor::GetRloc16(a3);
    if (ot::Mle::IsRouterRloc16(Rloc16))
    {
      Length = ot::Array<ot::Router,(unsigned short)32,unsigned char>::GetLength(this + 8);
      if (Length > 0x14u)
      {
        for (i = 0; i <= 0x3Eu && Length > 0x14u; ++i)
        {
          v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
          if (!ot::Mle::Mle::MatchesRouterId(v4, i) && i != ot::Neighbor::GetRouterId(a3))
          {
            v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
            if (i != ot::Mle::Mle::GetLeaderId(v5) && ot::Mle::RouterIdSet::Contains(v21, i))
            {
              ot::Mle::RouterIdSet::Remove(v21, i);
              --Length;
            }
          }
        }

        v18 -= 64;
      }
    }
  }

  ot::Mle::RouteTlv::SetRouterIdSequence(a2, v18);
  ot::Mle::RouteTlv::SetRouterIdMask(a2, v21);
  v17 = 0;
  for (j = 0; j <= 0x3Eu; ++j)
  {
    if (ot::Mle::RouterIdSet::Contains(v21, j))
    {
      v13 = ot::Mle::Rloc16FromRouterId(j);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      if (ot::Mle::Mle::HasRloc16(v6, v13))
      {
        ot::Mle::RouteTlv::SetRouteData(a2, v17, 0, 0, 1);
      }

      else
      {
        RouterById = ot::RouterTable::FindRouterById(this, j);
        if (!RouterById)
        {
          __assert_rtn("FillRouteTlv", "router_table.cpp", 794, "router != nullptr");
        }

        PathCost = ot::RouterTable::GetPathCost(this, v13);
        if (PathCost >= 0x10u)
        {
          PathCost = 0;
        }

        LinkQualityIn = ot::Neighbor::GetLinkQualityIn(RouterById);
        LinkQualityOut = ot::Router::GetLinkQualityOut(RouterById);
        ot::Mle::RouteTlv::SetRouteData(a2, v17, LinkQualityIn, LinkQualityOut, PathCost);
      }

      ++v17;
    }
  }

  return ot::Mle::RouteTlv::SetRouteDataLength(a2, v17);
}

uint64_t ot::RouterTable::RouterIdMap::GetAsRouterIdSet(ot::RouterTable::RouterIdMap *this, ot::Mle::RouterIdSet *a2)
{
  result = ot::Clearable<ot::Mle::RouterIdSet>::Clear(a2);
  for (i = 0; i <= 0x3Eu; ++i)
  {
    result = ot::RouterTable::RouterIdMap::IsAllocated(this, i);
    if (result)
    {
      result = ot::Mle::RouterIdSet::Add(a2, i);
    }
  }

  return result;
}

uint64_t ot::Mle::RouteTlv::SetRouterIdSequence(uint64_t this, char a2)
{
  *(this + 2) = a2;
  return this;
}

{
  return ot::Mle::RouteTlv::SetRouterIdSequence(this, a2);
}

uint64_t ot::Mle::RouteTlv::SetRouterIdMask(uint64_t this, const ot::Mle::RouterIdSet *a2)
{
  *(this + 3) = *a2;
  return this;
}

{
  return ot::Mle::RouteTlv::SetRouterIdMask(this, a2);
}

uint64_t ot::Mle::RouteTlv::SetRouteData(uint64_t result, unsigned __int8 a2, char a3, char a4, char a5)
{
  *(result + 11 + a2) = (16 * a3) & 0x30 | (a4 << 6) | a5 & 0xF;
  return result;
}

{
  return ot::Mle::RouteTlv::SetRouteData(result, a2, a3, a4, a5);
}

uint64_t ot::Mle::RouteTlv::SetRouteDataLength(ot::Mle::RouteTlv *this, char a2)
{
  return ot::Tlv::SetLength(this, a2 + 9);
}

{
  return ot::Mle::RouteTlv::SetRouteDataLength(this, a2);
}

uint64_t ot::RouterTable::HandleTimeTick(ot::RouterTable *this)
{
  ot::RouterTable::RouterIdMap::HandleTimeTick(this + 4640);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  result = ot::Mle::Mle::IsLeader(v1);
  if (result)
  {
    result = ot::RouterTable::GetLeaderAge(this);
    if (result >= 0xA)
    {
      ++*(this + 4708);
      result = ot::TimerMilli::GetNow(result);
      *(this + 1176) = result;
    }
  }

  return result;
}

BOOL ot::RouterTable::RouterIdMap::HandleTimeTick(_BOOL8 this)
{
  v1 = this;
  for (i = 0; i <= 0x3Eu; ++i)
  {
    this = ot::RouterTable::RouterIdMap::IsAllocated(v1, i);
    if (!this)
    {
      if (*(v1 + i))
      {
        --*(v1 + i);
      }
    }
  }

  return this;
}

void ot::RouterTable::LogRouteTable(ot::RouterTable *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("RouterTable", "Route table", a3, a4, a5, a6, a7, a8, v30);
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin();
  v41 = v8;
  v40 = ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(this + 8);
  while (v41 != v40)
  {
    ot::String<(unsigned short)128>::String(v42);
    RouterId = ot::Neighbor::GetRouterId(v41);
    Rloc16 = ot::Neighbor::GetRloc16(v41);
    ot::StringWriter::Append(v42, "    %2d 0x%04x", RouterId, Rloc16);
    v38 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    v16 = ot::Neighbor::GetRloc16(v41);
    if (ot::Mle::Mle::HasRloc16(v38, v16))
    {
      ot::StringWriter::Append(v42, " - me");
    }

    else
    {
      v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      if (ot::Mle::Mle::IsChild(v17) && (v36 = ot::Neighbor::GetRloc16(v41), v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this), Parent = ot::Mle::Mle::GetParent(v18), v36 == ot::Neighbor::GetRloc16(Parent)))
      {
        ot::StringWriter::Append(v42, " - parent");
      }

      else
      {
        if (ot::Neighbor::IsStateValid(v41))
        {
          LinkQualityIn = ot::Neighbor::GetLinkQualityIn(v41);
          LinkQualityOut = ot::Router::GetLinkQualityOut(v41);
          LinkCost = ot::RouterTable::GetLinkCost(this, v41);
          ot::StringWriter::Append(v42, " - nbr{lq[i/o]:%d/%d cost:%d}", LinkQualityIn, LinkQualityOut, LinkCost);
        }

        if (ot::Router::GetNextHop(v41) != 63)
        {
          NextHop = ot::Router::GetNextHop(v41);
          Cost = ot::Router::GetCost(v41);
          ot::StringWriter::Append(v42, " - nexthop{%d cost:%d}", NextHop, Cost);
        }
      }
    }

    v32 = ot::Neighbor::GetRouterId(v41);
    v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (v32 == ot::Mle::Mle::GetLeaderId(v22))
    {
      ot::StringWriter::Append(v42, " - leader");
    }

    v23 = ot::String<(unsigned short)128>::AsCString(v42);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("RouterTable", "%s", v24, v25, v26, v27, v28, v29, v23);
    v41 = (v41 + 144);
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)4>("RouterTable", "Route table dump end", v9, v10, v11, v12, v13, v14, v31);
}

void *ot::ClearAllBytes<ot::RouterTable::RouterIdMap>(void *a1)
{
  return memset(a1, 0, 0x3FuLL);
}

{
  return ot::ClearAllBytes<ot::RouterTable::RouterIdMap>(a1);
}

uint64_t ot::Router::Init(ot::Router *this, ot::Instance *a2)
{
  return ot::Neighbor::Init(this, a2);
}

{
  return ot::Router::Init(this, a2);
}

uint64_t ot::Array<ot::Router,(unsigned short)32,unsigned char>::PopBack(uint64_t a1)
{
  if (ot::Array<ot::Router,(unsigned short)32,unsigned char>::IsEmpty(a1))
  {
    return 0;
  }

  v1 = *(a1 + 4608);
  *(a1 + 4608) = v1 - 1;
  return a1 + 144 * (v1 - 1);
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::PopBack(a1);
}

uint64_t ot::Array<ot::Router,(unsigned short)32,unsigned char>::GetMaxSize()
{
  return 32;
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::GetMaxSize();
}

ot::SourceMatchController *ot::SourceMatchController::SourceMatchController(ot::SourceMatchController *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 0;
  ot::SourceMatchController::ClearTable(this);
  return this;
}

{
  ot::SourceMatchController::SourceMatchController(this, a2);
  return this;
}

void ot::SourceMatchController::ClearTable(ot::SourceMatchController *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::ClearSrcMatchShortEntries(v1);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::ClearSrcMatchExtEntries(v2);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("SrcMatchCtrl", "Cleared all entries", v3, v4, v5, v6, v7, v8, this);
}

uint64_t ot::SourceMatchController::IncrementMessageCount(ot::SourceMatchController *this, ot::Child *a2, char a3)
{
  if (!ot::IndirectSender::ChildInfo::GetIndirectMessageCount((a2 + 144)))
  {
    ot::SourceMatchController::AddEntry(this, a2);
  }

  result = ot::IndirectSender::ChildInfo::IncrementIndirectMessageCount(a2 + 144);
  if (a3)
  {
    return ot::IndirectSender::ChildInfo::IncrementApplicationMessageCount(a2 + 144);
  }

  return result;
}

uint64_t ot::SourceMatchController::AddEntry(ot::SourceMatchController *this, ot::Child *a2)
{
  ot::IndirectSender::ChildInfo::SetIndirectSourceMatchPending(a2 + 144, 1);
  if (ot::SourceMatchController::IsEnabled(this))
  {
    if (ot::SourceMatchController::AddAddress(this, a2))
    {
      return ot::SourceMatchController::Enable(this, 0);
    }

    else
    {
      ot::IndirectSender::ChildInfo::SetIndirectSourceMatchPending(a2 + 144, 0);
      return ot::SourceMatchController::Enable(this, 1);
    }
  }

  else
  {
    result = ot::SourceMatchController::AddPendingEntries(this);
    if (!result)
    {
      return ot::SourceMatchController::Enable(this, 1);
    }
  }

  return result;
}

uint64_t ot::IndirectSender::ChildInfo::IncrementIndirectMessageCount(uint64_t this)
{
  *(this + 8) = *(this + 8) & 0xFFFFFFFFC000FFFFLL | ((((WORD1(*(this + 8)) & 0x3FFF) + 1) & 0x3FFF) << 16);
  return this;
}

{
  return ot::IndirectSender::ChildInfo::IncrementIndirectMessageCount(this);
}

uint64_t ot::IndirectSender::ChildInfo::IncrementApplicationMessageCount(uint64_t this)
{
  *(this + 8) = *(this + 8) & 0xFFFFC000FFFFFFFFLL | ((((HIDWORD(*(this + 8)) & 0x3FFF) + 1) & 0x3FFF) << 32);
  return this;
}

{
  return ot::IndirectSender::ChildInfo::IncrementApplicationMessageCount(this);
}

void ot::SourceMatchController::DecrementMessageCount(ot::SourceMatchController *this, ot::Child *a2, char a3)
{
  if (ot::IndirectSender::ChildInfo::GetIndirectMessageCount((a2 + 144)))
  {
    if (a3)
    {
      ot::IndirectSender::ChildInfo::DecrementApplicationMessageCount(a2 + 144);
    }

    ot::IndirectSender::ChildInfo::DecrementIndirectMessageCount(a2 + 144);
    if (!ot::IndirectSender::ChildInfo::GetIndirectMessageCount((a2 + 144)))
    {
      if (ot::IndirectSender::ChildInfo::GetApplicationMessageCount((a2 + 144)) > 0)
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)2>("SrcMatchCtrl", "As IndirectMessageCount = 0 and Application MessageCount > 0 which is invalid.", v10, v11, v12, v13, v14, v15, v16);
        ot::IndirectSender::ChildInfo::ResetApplicationMessageCount(a2 + 144);
      }

      ot::SourceMatchController::ClearEntry(this, a2);
    }
  }

  else
  {
    Rloc16 = ot::Neighbor::GetRloc16(a2);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("SrcMatchCtrl", "DecrementMessageCount(child 0x%04x) called when already at zero count.", v4, v5, v6, v7, v8, v9, Rloc16);
  }
}

uint64_t ot::IndirectSender::ChildInfo::DecrementApplicationMessageCount(uint64_t this)
{
  if (!(v1 | ((*(this + 8) & 0x3FFF00000000) == 0)))
  {
    *(this + 8) = *(this + 8) & 0xFFFFC000FFFFFFFFLL | ((((HIDWORD(*(this + 8)) & 0x3FFF) - 1) & 0x3FFF) << 32);
  }

  return this;
}

{
  return ot::IndirectSender::ChildInfo::DecrementApplicationMessageCount(this);
}

uint64_t ot::IndirectSender::ChildInfo::DecrementIndirectMessageCount(uint64_t this)
{
  *(this + 8) = *(this + 8) & 0xFFFFFFFFC000FFFFLL | ((((WORD1(*(this + 8)) & 0x3FFF) - 1) & 0x3FFF) << 16);
  return this;
}

{
  return ot::IndirectSender::ChildInfo::DecrementIndirectMessageCount(this);
}

uint64_t ot::IndirectSender::ChildInfo::ResetApplicationMessageCount(uint64_t this)
{
  *(this + 8) &= 0xFFFFC000FFFFFFFFLL;
  return this;
}

{
  return ot::IndirectSender::ChildInfo::ResetApplicationMessageCount(this);
}

void ot::SourceMatchController::ClearEntry(ot::SourceMatchController *this, ot::Child *a2)
{
  if (ot::IndirectSender::ChildInfo::IsIndirectSourceMatchPending((a2 + 144)))
  {
    Rloc16 = ot::Neighbor::GetRloc16(a2);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("SrcMatchCtrl", "Clearing pending flag for 0x%04x", v3, v4, v5, v6, v7, v8, Rloc16);
    ot::IndirectSender::ChildInfo::SetIndirectSourceMatchPending(a2 + 144, 0);
  }

  else
  {
    if (ot::IndirectSender::ChildInfo::IsIndirectSourceMatchShort((a2 + 144)))
    {
      v26 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      v9 = ot::Neighbor::GetRloc16(a2);
      matched = ot::Radio::ClearSrcMatchShortEntry(v26, v9);
      v27 = ot::Neighbor::GetRloc16(a2);
      ot::ErrorToString(matched);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("SrcMatchCtrl", "Clearing short addr: 0x%04x -- %s (%d)", v10, v11, v12, v13, v14, v15, v27);
    }

    else
    {
      ot::Neighbor::GetExtAddress(a2);
      ot::Mac::ExtAddress::Set(v32, v16, 1);
      v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      matched = ot::Radio::ClearSrcMatchExtEntry(v17, v32);
      ot::Neighbor::GetExtAddress(a2);
      ot::Mac::ExtAddress::ToString(v18, v31);
      v25 = ot::String<(unsigned short)17>::AsCString(v31);
      ot::ErrorToString(matched);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("SrcMatchCtrl", "Clearing addr: %s -- %s (%d)", v19, v20, v21, v22, v23, v24, v25);
    }

    if (!matched && (ot::SourceMatchController::IsEnabled(this) & 1) == 0 && !ot::SourceMatchController::AddPendingEntries(this))
    {
      ot::SourceMatchController::Enable(this, 1);
    }
  }
}

uint64_t ot::SourceMatchController::ResetMessageCount(ot::SourceMatchController *this, ot::Child *a2)
{
  ot::IndirectSender::ChildInfo::ResetIndirectMessageCount(a2 + 144);
  ot::IndirectSender::ChildInfo::ResetApplicationMessageCount(a2 + 144);
  return ot::SourceMatchController::ClearEntry(this, a2);
}

uint64_t ot::IndirectSender::ChildInfo::ResetIndirectMessageCount(uint64_t this)
{
  *(this + 8) &= 0xFFFFFFFFC000FFFFLL;
  return this;
}

{
  return ot::IndirectSender::ChildInfo::ResetIndirectMessageCount(this);
}

uint64_t ot::SourceMatchController::SetSrcMatchAsShort(ot::SourceMatchController *this, ot::Child *a2, char a3)
{
  result = ot::IndirectSender::ChildInfo::IsIndirectSourceMatchShort((a2 + 144));
  if (result != (a3 & 1))
  {
    if (ot::IndirectSender::ChildInfo::GetIndirectMessageCount((a2 + 144)) <= 0)
    {
      return ot::IndirectSender::ChildInfo::SetIndirectSourceMatchShort(a2 + 144, a3 & 1);
    }

    else
    {
      ot::SourceMatchController::ClearEntry(this, a2);
      ot::IndirectSender::ChildInfo::SetIndirectSourceMatchShort(a2 + 144, a3 & 1);
      return ot::SourceMatchController::AddEntry(this, a2);
    }
  }

  return result;
}

uint64_t ot::IndirectSender::ChildInfo::SetIndirectSourceMatchShort(uint64_t this, char a2)
{
  *(this + 8) = *(this + 8) & 0xFFFFFFFFBFFFFFFFLL | ((a2 & 1) << 30);
  return this;
}

{
  return ot::IndirectSender::ChildInfo::SetIndirectSourceMatchShort(this, a2);
}

uint64_t ot::Radio::ClearSrcMatchShortEntries(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioClearSrcMatchShortEntries();
}

{
  return ot::Radio::ClearSrcMatchShortEntries(this);
}

uint64_t ot::Radio::ClearSrcMatchExtEntries(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioClearSrcMatchExtEntries();
}

{
  return ot::Radio::ClearSrcMatchExtEntries(this);
}

void ot::SourceMatchController::Enable(ot::SourceMatchController *this, char a2)
{
  *this = a2 & 1;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::EnableSrcMatch(v2, *this & 1);
  v9 = "En";
  if ((*this & 1) == 0)
  {
    v9 = "Dis";
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)5>("SrcMatchCtrl", "%sabling", v3, v4, v5, v6, v7, v8, v9);
}

uint64_t ot::Radio::EnableSrcMatch(ot::Radio *this, char a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioEnableSrcMatch(InstancePtr, a2 & 1);
}

{
  return ot::Radio::EnableSrcMatch(this, a2);
}

uint64_t ot::IndirectSender::ChildInfo::SetIndirectSourceMatchPending(uint64_t this, char a2)
{
  *(this + 8) = *(this + 8) & 0xFFFFFFFF7FFFFFFFLL | ((a2 & 1) << 31);
  return this;
}

{
  return ot::IndirectSender::ChildInfo::SetIndirectSourceMatchPending(this, a2);
}

uint64_t ot::SourceMatchController::IsEnabled(ot::SourceMatchController *this)
{
  return *this & 1;
}

{
  return ot::SourceMatchController::IsEnabled(this);
}

uint64_t ot::SourceMatchController::AddPendingEntries(ot::SourceMatchController *this)
{
  v14 = this;
  v13 = 0;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v11 = ot::ChildTable::Iterate(v1, 1);
  v12 = &v11;
  v17 = ot::ChildTable::IteratorBuilder::begin(&v11);
  v18 = v2;
  v9 = v17;
  v10 = v2;
  v15 = ot::ChildTable::IteratorBuilder::end(v12);
  v16 = v3;
  v7 = v15;
  v8 = v3;
  while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v9, &v7))
  {
    v6 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v9);
    if (ot::IndirectSender::ChildInfo::IsIndirectSourceMatchPending((v6 + 144)))
    {
      v13 = ot::SourceMatchController::AddAddress(this, v6);
      if (v13)
      {
        return v13;
      }

      ot::IndirectSender::ChildInfo::SetIndirectSourceMatchPending(v6 + 144, 0);
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v9);
  }

  return v13;
}

uint64_t ot::SourceMatchController::AddAddress(ot::SourceMatchController *this, const ot::Child *a2)
{
  if (ot::IndirectSender::ChildInfo::IsIndirectSourceMatchShort((a2 + 144)))
  {
    v20 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    Rloc16 = ot::Neighbor::GetRloc16(a2);
    matched = ot::Radio::AddSrcMatchShortEntry(v20, Rloc16);
    v21 = ot::Neighbor::GetRloc16(a2);
    ot::ErrorToString(matched);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("SrcMatchCtrl", "Adding short addr: 0x%04x -- %s (%d)", v3, v4, v5, v6, v7, v8, v21);
  }

  else
  {
    ot::Neighbor::GetExtAddress(a2);
    ot::Mac::ExtAddress::Set(v26, v9, 1);
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    matched = ot::Radio::AddSrcMatchExtEntry(v10, v26);
    ot::Neighbor::GetExtAddress(a2);
    ot::Mac::ExtAddress::ToString(v11, v25);
    v19 = ot::String<(unsigned short)17>::AsCString(v25);
    ot::ErrorToString(matched);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("SrcMatchCtrl", "Adding addr: %s -- %s (%d)", v12, v13, v14, v15, v16, v17, v19);
  }

  return matched;
}

uint64_t ot::Radio::AddSrcMatchShortEntry(ot::Radio *this, unsigned __int16 a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioAddSrcMatchShortEntry(InstancePtr, a2);
}

{
  return ot::Radio::AddSrcMatchShortEntry(this, a2);
}

uint64_t ot::Radio::AddSrcMatchExtEntry(ot::Radio *this, const ot::Mac::ExtAddress *a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioAddSrcMatchExtEntry(InstancePtr, a2);
}

{
  return ot::Radio::AddSrcMatchExtEntry(this, a2);
}

uint64_t ot::IndirectSender::ChildInfo::IsIndirectSourceMatchPending(ot::IndirectSender::ChildInfo *this)
{
  return (*(this + 1) >> 31) & 1;
}

{
  return ot::IndirectSender::ChildInfo::IsIndirectSourceMatchPending(this);
}

uint64_t ot::Radio::ClearSrcMatchShortEntry(ot::Radio *this, unsigned __int16 a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioClearSrcMatchShortEntry(InstancePtr, a2);
}

{
  return ot::Radio::ClearSrcMatchShortEntry(this, a2);
}

uint64_t ot::Radio::ClearSrcMatchExtEntry(ot::Radio *this, const ot::Mac::ExtAddress *a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioClearSrcMatchExtEntry(InstancePtr, a2);
}

{
  return ot::Radio::ClearSrcMatchExtEntry(this, a2);
}

ot::ThreadNetif *ot::ThreadNetif::ThreadNetif (ot::ThreadNetif *this, ot::Instance *a2)
{
  ot::Ip6::Netif::Netif (this, a2);
  result = this;
  *(this + 560) = 0;
  return result;
}

{
  ot::ThreadNetif::ThreadNetif (this, a2);
  return this;
}

uint64_t ot::ThreadNetif::Up(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(this + 560) & 1) == 0)
  {
    otLogDebgPlat("ThreadNetif: Up", a2, a3, a4, a5, a6, a7, a8, this);
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v20);
    ot::Mac::Mac::SetEnabled(v8, 1);
    v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(v20);
    ot::MeshForwarder::Start(v9);
    *(v20 + 560) = 1;
    ot::Ip6::Netif::SubscribeAllNodesMulticast(v20);
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v20);
    ot::Mle::Mle::Enable(v10, v11, v12, v13, v14, v15, v16, v17);
    IgnoreError();
    v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v20);
    ot::Tmf::Agent::Start(v18);
    IgnoreError();
    v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(v20);
    return ot::Notifier::Signal(v19, 0x1000000);
  }

  return this;
}

uint64_t ot::ThreadNetif::Down(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 560))
  {
    otLogDebgPlat("ThreadNetif: Down", a2, a3, a4, a5, a6, a7, a8, this);
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(v20);
    ot::Coap::CoapSecure::Stop(v8);
    v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(v20);
    ot::Coap::Coap::Stop(v9);
    IgnoreError();
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v20);
    ot::Mle::Mle::Disable(v10, v11, v12, v13, v14, v15, v16, v17);
    IgnoreError();
    ot::Ip6::Netif::RemoveAllExternalUnicastAddresses(v20);
    ot::Ip6::Netif::UnsubscribeAllExternalMulticastAddresses(v20);
    ot::Ip6::Netif::UnsubscribeAllRoutersMulticast(v20);
    ot::Ip6::Netif::UnsubscribeAllNodesMulticast(v20);
    *(v20 + 560) = 0;
    v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(v20);
    ot::MeshForwarder::Stop(v18);
    v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(v20);
    return ot::Notifier::Signal(v19, 0x1000000);
  }

  return this;
}

uint64_t ot::FrameData::ReadBytes(ot::FrameData *this, void *a2, unsigned __int16 a3)
{
  v6 = 0;
  if (ot::FrameData::CanRead(this, a3))
  {
    Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(this);
    memcpy(a2, Bytes, a3);
    ot::FrameData::SkipOver(this, a3);
  }

  else
  {
    return 6;
  }

  return v6;
}

uint64_t ot::FrameData::ReadBigEndianUint16(ot::FrameData *this, unsigned __int16 *a2)
{
  Bytes = ot::FrameData::ReadBytes(this, a2, 2u);
  if (!Bytes)
  {
    *a2 = ot::BigEndian::HostSwap16(*a2);
  }

  return Bytes;
}

uint64_t ot::FrameData::ReadBigEndianUint32(ot::FrameData *this, unsigned int *a2)
{
  Bytes = ot::FrameData::ReadBytes(this, a2, 4u);
  if (!Bytes)
  {
    *a2 = ot::BigEndian::HostSwap32(*a2);
  }

  return Bytes;
}

uint64_t ot::FrameData::ReadLittleEndianUint16(ot::FrameData *this, unsigned __int16 *a2)
{
  Bytes = ot::FrameData::ReadBytes(this, a2, 2u);
  if (!Bytes)
  {
    *a2 = ot::LittleEndian::HostSwap16(*a2);
  }

  return Bytes;
}

uint64_t ot::FrameData::ReadLittleEndianUint32(ot::FrameData *this, unsigned int *a2)
{
  Bytes = ot::FrameData::ReadBytes(this, a2, 4u);
  if (!Bytes)
  {
    *a2 = ot::LittleEndian::HostSwap32(*a2);
  }

  return Bytes;
}

uint64_t ot::FrameData::SkipOver(ot::FrameData *this, unsigned __int16 a2)
{
  Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(this);
  Length = ot::Data<(ot::DataLengthType)1>::GetLength(this);
  return ot::Data<(ot::DataLengthType)1>::Init(this, Bytes + a2, Length - a2);
}

ot::Instance *ot::Instance::Instance(ot::Instance *this)
{
  ot::OwnedPtr<ot::Message>::OwnedPtr(this + 1);
  ot::TimerMilli::Scheduler::Scheduler((this + 16), this);
  ot::TimerMilli::Scheduler::Scheduler((this + 24), this);
  ot::Crypto::MbedTls::MbedTls((this + 32));
  ot::Random::Manager::Manager((this + 33));
  ot::Radio::Radio((this + 34), this);
  ot::Uptime::Uptime((this + 40), this);
  ot::Notifier::Notifier((this + 72), this);
  ot::TimeTicker::TimeTicker((this + 168), this);
  ot::Settings::Settings((this + 200), this);
  ot::Settings::ChildInfoIteratorBuilder::ChildInfoIteratorBuilder((this + 201), this);
  ot::MessagePool::MessagePool((this + 208), this);
  ot::Ip6::Ip6::Ip6((this + 85224), this);
  ot::ThreadNetif::ThreadNetif ((this + 85536), this);
  ot::Tmf::Agent::Agent((this + 86104), this);
  ot::Dhcp6::Client::Client((this + 86320), this);
  ot::Dhcp6::Server::Server((this + 86672), this);
  ot::Utils::Slaac::Slaac((this + 86984), this);
  ot::BackboneRouter::Local::Local((this + 87184), this);
  ot::MeshCoP::ActiveDatasetManager::ActiveDatasetManager((this + 87312), this);
  ot::MeshCoP::PendingDatasetManager::PendingDatasetManager((this + 87640), this);
  ot::MeshCoP::ExtendedPanIdManager::ExtendedPanIdManager((this + 87992), this);
  ot::MeshCoP::NetworkNameManager::NetworkNameManager((this + 88000), this);
  ot::Ip6::Filter::Filter((this + 88034), this);
  ot::KeyManager::KeyManager((this + 88040), this);
  ot::Lowpan::Lowpan::Lowpan((this + 88192), this);
  ot::Mac::Mac::Mac((this + 88200), this);
  ot::MeshForwarder::MeshForwarder((this + 89904), this);
  ot::Mle::MleRouter::MleRouter((this + 91160), this);
  ot::Mle::DiscoverScanner::DiscoverScanner((this + 126944), this);
  ot::AddressResolver::AddressResolver(this + 15886, this);
  ot::NetworkData::Local::Local((this + 143544), this);
  ot::NetworkData::Leader::Leader((this + 143808), this);
  ot::NetworkData::Notifier::Notifier((this + 144176), this);
  ot::Settings::ChildInfoIteratorBuilder::ChildInfoIteratorBuilder((this + 144264), this);
  ot::NetworkDiagnostic::Server::Server((this + 144272), this);
  ot::NetworkDiagnostic::Client::Client((this + 144280), this);
  ot::MeshCoP::BorderAgent::BorderAgent((this + 144304), this);
  ot::MeshCoP::Commissioner::Commissioner((this + 144416), this);
  ot::Tmf::SecureAgent::SecureAgent((this + 145008), this);
  ot::MeshCoP::Joiner::Joiner((this + 146216), this);
  ot::MeshCoP::JoinerRouter::JoinerRouter((this + 146336), this);
  ot::MeshCoP::Leader::Leader((this + 146456), this);
  ot::BackboneRouter::Leader::Leader((this + 146560), this);
  ot::BackboneRouter::Manager::Manager((this + 146592), this);
  ot::MlrManager::MlrManager((this + 154384), this);
  ot::DuaManager::DuaManager((this + 154408), this);
  ot::ChildSupervisor::ChildSupervisor((this + 154520), this);
  ot::SupervisionListener::SupervisionListener((this + 154552), this);
  ot::AnnounceBeginServer::AnnounceBeginServer((this + 154584), this);
  ot::PanIdQueryServer::PanIdQueryServer((this + 154624), this);
  ot::EnergyScanServer::EnergyScanServer((this + 154672), this);
  ot::LinkMetrics::Initiator::Initiator((this + 154736), this);
  ot::LinkMetrics::Subject::Subject((this + 154784), this);
  ot::Coap::Coap::Coap((this + 156336), this);
  ot::Utils::PingSender::PingSender((this + 156552), this);
  ot::Utils::ChannelManager::ChannelManager((this + 156696), this);
  ot::Utils::MeshDiag::MeshDiag((this + 156744), this);
  ot::Utils::HistoryTracker::HistoryTracker((this + 156800), this);
  ot::MeshCoP::DatasetUpdater::DatasetUpdater((this + 167040), this);
  ot::AnnounceSender::AnnounceSender((this + 167064), this);
  ot::Mac::LinkRaw::LinkRaw((this + 167168), this);
  ot::ThreadAnalyticsManager::ThreadAnalyticsManager((this + 167208), this);
  v1 = ot::FactoryDiags::Diags::Diags((this + 168288), this);
  *(this + 168344) = 0;
  Uint32 = ot::Random::NonCrypto::GetUint32(v1);
  result = this;
  *(this + 42087) = Uint32;
  return result;
}

{
  ot::Instance::Instance(this);
  return this;
}

ot::TimerMilli::Scheduler *ot::TimerMilli::Scheduler::Scheduler(ot::TimerMilli::Scheduler *this, ot::Instance *a2)
{
  ot::TimerMilli::Scheduler::Scheduler(this, a2);
  return this;
}

{
  ot::Timer::Scheduler::Scheduler(this, a2);
  return this;
}

ot::Radio *ot::Radio::Radio(ot::Radio *this, ot::Instance *a2)
{
  ot::Radio::Radio(this, a2);
  return this;
}

{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Settings::ChildInfoIteratorBuilder::ChildInfoIteratorBuilder((this + 1), a2);
  return this;
}

ot::Ip6::Filter *ot::Ip6::Filter::Filter(ot::Ip6::Filter *this, ot::Instance *a2)
{
  ot::Ip6::Filter::Filter(this, a2);
  return this;
}

{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Array<unsigned short,(unsigned short)2,unsigned char>::Array(this);
  return this;
}

ot::NetworkData::Local *ot::NetworkData::Local::Local(ot::NetworkData::Local *this, ot::Instance *a2)
{
  ot::NetworkData::Local::Local(this, a2);
  return this;
}

{
  ot::NetworkData::MutableNetworkData::MutableNetworkData(this, a2, this + 10, 0, 254);
  return this;
}

uint64_t ot::Instance::GetHeap(ot::Instance *this)
{
  if (!ot::Instance::sHeap)
  {
    ot::Utils::Heap::Heap(&ot::sHeapRaw);
    ot::Instance::sHeap = &ot::sHeapRaw;
  }

  return ot::Instance::sHeap;
}

_BYTE *ot::Instance::InitSingle(ot::Instance *this)
{
  v3 = ot::Instance::Get(this);
  if ((v3[168344] & 1) == 0)
  {
    ot::Instance::Instance(&ot::gInstanceRaw);
    v3 = &ot::gInstanceRaw;
    ot::Instance::AfterInit(&ot::gInstanceRaw);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(5) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_1_8_0(v5, 168352);
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "INITSINGLE: sz_Instance[0x%lx]\n", v5, 0xCu);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v4, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v4, 0x16u);
    }
  }

  return v3;
}

void ot::Instance::AfterInit(ot::Instance *this)
{
  *(this + 168344) = 1;
  v1 = ot::Instance::Get<ot::Settings>(this);
  ot::Settings::Init(v1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(this);
  ot::Mle::Mle::Restore(v2);
}

void ot::Instance::InitSettings(ot::Instance *this)
{
  v1 = ot::Instance::Get<ot::Settings>(this);
  ot::Settings::Init(v1);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(5) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v11, "InitSettings", 0);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: Setting MLE Frame Counter: %u", v11, 0x12u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v10, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v10, 0x16u);
  }

  v2 = ot::Instance::Get<ot::KeyManager>(this);
  ot::KeyManager::SetMleFrameCounter(v2, 0);
  v6 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v6 && (syslog_is_the_mask_enabled(5) & 1) != 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v9, "InitSettings", 0);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: Setting All MAC Frame Counter: %u", v9, 0x12u);
    }
  }

  else if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v8, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v8, 0x16u);
  }

  v3 = ot::Instance::Get<ot::KeyManager>(this);
  ot::KeyManager::SetAllMacFrameCounters(v3, 0, 0);
  v4 = ot::Instance::Get<ot::Mle::MleRouter>(this);
  ot::Mle::Mle::Restore(v4);
}

void ot::Instance::Finalize(ot::Instance *this)
{
  if (*(this + 168344))
  {
    *(this + 168344) = 0;
    otThreadSetEnabled(this, 0);
    IgnoreError();
    otIp6SetEnabled(this, 0);
    IgnoreError();
    otLinkSetEnabled(this, 0);
    IgnoreError();
    v1 = ot::Instance::Get<ot::Settings>(this);
    ot::Settings::Deinit(v1);
    v2 = ot::Instance::Get<ot::Mac::SubMac>(this);
    ot::Mac::SubMac::Disable(v2);
    IgnoreError();
    ot::Instance::~Instance(this);
  }
}

void ot::Instance::~Instance(ot::Instance *this)
{
  ot::Instance::~Instance(this);
}

{
  ot::Random::Manager::~Manager((this + 33));
}

void ot::Instance::FactoryReset(ot::Instance *this)
{
  v1 = ot::Instance::Get<ot::Settings>(this);
  ot::Settings::Wipe(v1);
  otPlatReset(this);
}

uint64_t ot::Instance::ErasePersistentInfo(ot::Instance *this)
{
  v5 = 0;
  v1 = ot::Instance::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsDisabled(v1))
  {
    v2 = ot::Instance::Get<ot::Settings>(this);
    ot::Settings::Wipe(v2);
  }

  else
  {
    return 13;
  }

  return v5;
}

BOOL ot::Instance::GetBufferInfo(ot::Instance *a1, _WORD *a2)
{
  ot::Clearable<ot::Instance::BufferInfo>::Clear(a2);
  v2 = ot::Instance::Get<ot::MessagePool>(a1);
  *a2 = ot::MessagePool::GetTotalBufferCount(v2);
  v3 = ot::Instance::Get<ot::MessagePool>(a1);
  a2[1] = ot::MessagePool::GetFreeBufferCount(v3);
  v4 = ot::Instance::Get<ot::MessagePool>(a1);
  a2[2] = ot::MessagePool::GetMaxUsedBufferCount(v4);
  v5 = ot::Instance::Get<ot::MeshForwarder>(a1);
  SendQueue = ot::MeshForwarder::GetSendQueue(v5);
  ot::PriorityQueue::GetInfo(SendQueue, (a2 + 4));
  v7 = ot::Instance::Get<ot::MeshForwarder>(a1);
  ReassemblyQueue = ot::MeshForwarder::GetReassemblyQueue(v7);
  ot::MessageQueue::GetInfo(ReassemblyQueue, (a2 + 8));
  v9 = ot::Instance::Get<ot::Ip6::Ip6>(a1);
  v10 = ot::Ip6::Ip6::GetSendQueue(v9);
  ot::PriorityQueue::GetInfo(v10, (a2 + 12));
  v11 = ot::Instance::Get<ot::Ip6::Mpl>(a1);
  BufferedMessageSet = ot::Ip6::Mpl::GetBufferedMessageSet(v11);
  ot::MessageQueue::GetInfo(BufferedMessageSet, (a2 + 16));
  v13 = ot::Instance::Get<ot::Mle::MleRouter>(a1);
  MessageQueue = ot::Mle::Mle::GetMessageQueue(v13);
  ot::MessageQueue::GetInfo(MessageQueue, (a2 + 20));
  v15 = ot::Instance::Get<ot::Tmf::Agent>(a1);
  ot::Coap::CoapBase::GetRequestMessages(v15);
  ot::MessageQueue::GetInfo(v16, (a2 + 24));
  v17 = ot::Instance::Get<ot::Tmf::Agent>(a1);
  ot::Coap::CoapBase::GetCachedResponses(v17);
  ot::MessageQueue::GetInfo(v18, (a2 + 24));
  v19 = ot::Instance::Get<ot::Tmf::SecureAgent>(a1);
  ot::Coap::CoapBase::GetRequestMessages(v19);
  ot::MessageQueue::GetInfo(v20, (a2 + 28));
  v21 = ot::Instance::Get<ot::Tmf::SecureAgent>(a1);
  ot::Coap::CoapBase::GetCachedResponses(v21);
  ot::MessageQueue::GetInfo(v22, (a2 + 28));
  ApplicationCoap = ot::Instance::GetApplicationCoap(a1);
  ot::Coap::CoapBase::GetRequestMessages(ApplicationCoap);
  ot::MessageQueue::GetInfo(v24, (a2 + 32));
  v25 = ot::Instance::GetApplicationCoap(a1);
  ot::Coap::CoapBase::GetCachedResponses(v25);
  return ot::MessageQueue::GetInfo(v26, (a2 + 32));
}

void *ot::Clearable<ot::Instance::BufferInfo>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Instance::BufferInfo>(a1);
}

{
  return ot::Clearable<ot::Instance::BufferInfo>::Clear(a1);
}

uint64_t ot::MessagePool::GetMaxUsedBufferCount(ot::MessagePool *this)
{
  return *(this + 32777);
}

{
  return ot::MessagePool::GetMaxUsedBufferCount(this);
}

uint64_t ot::MeshForwarder::GetReassemblyQueue(ot::MeshForwarder *this)
{
  return this + 40;
}

{
  return ot::MeshForwarder::GetReassemblyQueue(this);
}

uint64_t ot::Ip6::Ip6::GetSendQueue(ot::Ip6::Ip6 *this)
{
  return this + 40;
}

{
  return ot::Ip6::Ip6::GetSendQueue(this);
}

uint64_t ot::Ip6::Mpl::GetBufferedMessageSet(ot::Ip6::Mpl *this)
{
  return this + 144;
}

{
  return ot::Ip6::Mpl::GetBufferedMessageSet(this);
}

uint64_t ot::Mle::Mle::GetMessageQueue(ot::Mle::Mle *this)
{
  return this + 352;
}

{
  return ot::Mle::Mle::GetMessageQueue(this);
}

void ot::Coap::CoapBase::GetRequestMessages(ot::Coap::CoapBase *this)
{
  ;
}

{
  ot::Coap::CoapBase::GetRequestMessages(this);
}

void ot::Coap::CoapBase::GetCachedResponses(ot::Coap::CoapBase *this)
{
  ot::Coap::ResponsesQueue::GetResponses((this + 72));
}

{
  ot::Coap::CoapBase::GetCachedResponses(this);
}

uint64_t ot::MessagePool::ResetMaxUsedBufferCount(uint64_t this)
{
  *(this + 65554) = *(this + 65552);
  return this;
}

{
  return ot::MessagePool::ResetMaxUsedBufferCount(this);
}

void ot::Instance::SetLogLevel(unsigned __int8 a1)
{
  if (a1 != ot::Instance::sLogLevel)
  {
    ot::Instance::sLogLevel = a1;
    otPlatLogHandleLevelChanged(a1);
  }
}

ot::Timer::Scheduler *ot::Timer::Scheduler::Scheduler(ot::Timer::Scheduler *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::OwnedPtr<ot::Message>::OwnedPtr(this);
  return this;
}

void ot::Coap::ResponsesQueue::GetResponses(ot::Coap::ResponsesQueue *this)
{
  ;
}

{
  ot::Coap::ResponsesQueue::GetResponses(this);
}

void *ot::ClearAllBytes<ot::Instance::BufferInfo>(void *a1)
{
  return memset(a1, 0, 0x48uLL);
}

{
  return ot::ClearAllBytes<ot::Instance::BufferInfo>(a1);
}

double ot::Tmf::MessageInfo::SetSockAddrToRloc(ot::Tmf::MessageInfo *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  MeshLocalRloc = ot::Mle::Mle::GetMeshLocalRloc(v1);
  return ot::Ip6::MessageInfo::SetSockAddr(this, MeshLocalRloc);
}

uint64_t ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderAloc(ot::Tmf::MessageInfo *this)
{
  ot::Tmf::MessageInfo::SetSockAddrToRloc(this);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(this);
  return ot::Mle::Mle::GetLeaderAloc(v4, PeerAddr);
}

uint64_t ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderRloc(ot::Tmf::MessageInfo *this)
{
  ot::Tmf::MessageInfo::SetSockAddrToRloc(this);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(this);
  return ot::Mle::Mle::GetLeaderRloc(v4, PeerAddr);
}

double ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToRealmLocalAllRoutersMulticast(ot::Tmf::MessageInfo *this)
{
  ot::Tmf::MessageInfo::SetSockAddrToRloc(this);
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(this);
  *&result = ot::Ip6::Address::SetToRealmLocalAllRoutersMulticast(PeerAddr).n128_u64[0];
  return result;
}

uint64_t ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(ot::Tmf::MessageInfo *this, unsigned __int16 a2)
{
  ot::Tmf::MessageInfo::SetSockAddrToRloc(this);
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(this);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v2);
  return ot::Ip6::Address::SetToRoutingLocator(PeerAddr, MeshLocalPrefix, a2);
}

ot::Tmf::Agent *ot::Tmf::Agent::Agent(ot::Tmf::Agent *this, ot::Instance *a2)
{
  ot::Coap::Coap::Coap(this, a2);
  ot::Coap::CoapBase::SetInterceptor(this, ot::Tmf::Agent::Filter, this);
  ot::Coap::CoapBase::SetResourceHandler(this, ot::Tmf::Agent::HandleResource);
  return this;
}

{
  ot::Tmf::Agent::Agent(this, a2);
  return this;
}

uint64_t ot::Tmf::Agent::Filter(ot::Tmf::Agent *this, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, void *a4)
{
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(a2);
  SockAddr = ot::Ip6::MessageInfo::GetSockAddr(a2);
  SockPort = ot::Ip6::MessageInfo::GetSockPort(a2);
  if (ot::Tmf::Agent::IsTmfMessage(a3, PeerAddr, SockAddr, SockPort))
  {
    return 0;
  }

  else
  {
    return 31;
  }
}

void ot::Tmf::Agent::HandleTmf<(ot::Uri)29>(ot::InstanceLocator *a1, ot::Tlv *a2, uint64_t a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(a1);
  ot::MeshCoP::Commissioner::HandleTmf<(ot::Uri)29>(v3, a2, a3);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(a1);
  ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)29>(v4, a2);
}

uint64_t ot::Tmf::Agent::HandleResource(ot::Tmf::Agent *this, ot *a2, ot::Coap::Message *a3, const ot::Ip6::MessageInfo *a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  v39 = 1;
  switch(ot::UriFromPath(a2, a2, a3, a4, a5, a6))
  {
    case 0u:
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
      ot::AddressResolver::HandleTmf<(ot::Uri)0>(v6, a3, a4);
      break;
    case 1u:
      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
      ot::AddressResolver::HandleTmf<(ot::Uri)1>(v12, a3, a4);
      break;
    case 2u:
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
      ot::AddressResolver::HandleTmf<(ot::Uri)2>(v11, a3, a4);
      break;
    case 3u:
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      ot::Mle::MleRouter::HandleTmf<(ot::Uri)3>(v14, a3, a4);
      break;
    case 4u:
      v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      ot::Mle::MleRouter::HandleTmf<(ot::Uri)4>(v13, a3, a4);
      break;
    case 5u:
      v20 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
      ot::NetworkData::Leader::HandleTmf<(ot::Uri)5>(v20, a3, a4);
      break;
    case 0xAu:
      v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AnnounceBeginServer>(this);
      ot::AnnounceBeginServer::HandleTmf<(ot::Uri)10>(v23, a3, a4);
      break;
    case 0xBu:
      active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
      ot::MeshCoP::ActiveDatasetManager::HandleTmf<(ot::Uri)11>(active, a3, a4);
      break;
    case 0xCu:
      v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
      ot::MeshCoP::ActiveDatasetManager::HandleTmf<(ot::Uri)12>(v16, a3, a4);
      break;
    case 0xDu:
      v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
      ot::MeshCoP::ActiveDatasetManager::HandleTmf<(ot::Uri)13>(v15, a3, a4);
      break;
    case 0xFu:
      v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
      ot::NetworkData::Leader::HandleTmf<(ot::Uri)15>(v21, a3, a4);
      break;
    case 0x11u:
      v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
      ot::NetworkData::Leader::HandleTmf<(ot::Uri)17>(v22, a3, a4);
      break;
    case 0x12u:
      v28 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(this);
      ot::MeshCoP::Commissioner::HandleTmf<(ot::Uri)18>(v28, a3, a4);
      break;
    case 0x13u:
      v27 = ot::GetProvider<ot::InstanceLocator>::Get<ot::EnergyScanClient>(this);
      ot::EnergyScanClient::HandleTmf<(ot::Uri)19>(v27, a3, a4);
      break;
    case 0x14u:
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::EnergyScanServer>(this);
      ot::EnergyScanServer::HandleTmf<(ot::Uri)20>(v7, a3, a4);
      break;
    case 0x15u:
      v25 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Joiner>(this);
      ot::MeshCoP::Joiner::HandleTmf<(ot::Uri)21>(v25, a3, a4);
      break;
    case 0x17u:
      v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Leader>(this);
      ot::MeshCoP::Leader::HandleTmf<(ot::Uri)23>(v19, a3, a4);
      break;
    case 0x18u:
      v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Leader>(this);
      ot::MeshCoP::Leader::HandleTmf<(ot::Uri)24>(v18, a3, a4);
      break;
    case 0x19u:
      v26 = ot::GetProvider<ot::InstanceLocator>::Get<ot::PanIdQueryClient>(this);
      ot::PanIdQueryClient::HandleTmf<(ot::Uri)25>(v26, a3, a4);
      break;
    case 0x1Au:
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
      ot::MeshCoP::PendingDatasetManager::HandleTmf<(ot::Uri)26>(v9, a3, a4);
      break;
    case 0x1Bu:
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::PanIdQueryServer>(this);
      ot::PanIdQueryServer::HandleTmf<(ot::Uri)27>(v10, a3, a4);
      break;
    case 0x1Cu:
      v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
      ot::MeshCoP::PendingDatasetManager::HandleTmf<(ot::Uri)28>(v17, a3, a4);
      break;
    case 0x1Du:
      v29 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
      ot::Tmf::Agent::HandleTmf<(ot::Uri)29>(v29, a3, a4);
      break;
    case 0x1Eu:
      v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::JoinerRouter>(this);
      ot::MeshCoP::JoinerRouter::HandleTmf<(ot::Uri)30>(v24, a3, a4);
      break;
    case 0x21u:
      v34 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Client>(this);
      ot::NetworkDiagnostic::Client::HandleTmf<(ot::Uri)33>(v34, a3, a4);
      break;
    case 0x22u:
      v31 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Server>(this);
      ot::NetworkDiagnostic::Server::HandleTmf<(ot::Uri)34>(v31, a3, a4);
      break;
    case 0x23u:
      v32 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Server>(this);
      ot::NetworkDiagnostic::Server::HandleTmf<(ot::Uri)35>(v32, a3, a4);
      break;
    case 0x24u:
      v33 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Server>(this);
      ot::NetworkDiagnostic::Server::HandleTmf<(ot::Uri)36>(v33, a3, a4);
      break;
    case 0x25u:
      v30 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(this);
      ot::DuaManager::HandleTmf<(ot::Uri)37>(v30, a3, a4);
      break;
    case 0x26u:
      v36 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Manager>(this);
      ot::BackboneRouter::Manager::HandleTmf<(ot::Uri)38>(v36, a3, a4);
      break;
    case 0x27u:
      v35 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Manager>(this);
      ot::BackboneRouter::Manager::HandleTmf<(ot::Uri)39>(v35, a3, a4);
      break;
    default:
      v39 = 0;
      break;
  }

  return v39 & 1;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::PanIdQueryClient>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::PanIdQueryClient>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::PanIdQueryClient>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::EnergyScanClient>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::EnergyScanClient>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::EnergyScanClient>(a1);
}

BOOL ot::Tmf::Agent::IsTmfMessage(ot::Tmf::Agent *this, const ot::Ip6::Address *a2, const ot::Ip6::Address *a3, unsigned __int16 a4)
{
  v8 = 0;
  if (a4 == 61631)
  {
    if (ot::Ip6::Address::IsLinkLocalUnicast(a2))
    {
      return ot::Ip6::Address::IsLinkLocalUnicastOrMulticast(a3);
    }

    else
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      if (ot::Mle::Mle::IsMeshLocalAddress(v4, a2))
      {
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
        if (ot::Mle::Mle::IsMeshLocalAddress(v5, a3) || ot::Ip6::Address::IsLinkLocalMulticast(a3) || ot::Ip6::Address::IsRealmLocalMulticast(a3))
        {
          return 1;
        }
      }
    }
  }

  return v8;
}

uint64_t ot::Tmf::Agent::PriorityToDscp(char a1)
{
  v2 = 15;
  if (a1)
  {
    if (a1 != 2 && a1 != 1 && a1 == 3)
    {
      return 7;
    }
  }

  else
  {
    return 23;
  }

  return v2;
}

uint64_t ot::Tmf::Agent::DscpToPriority(ot::Tmf::Agent *this)
{
  v2 = 3;
  if (this != 7)
  {
    if (this == 15)
    {
      return 1;
    }

    else if (this == 23)
    {
      return 0;
    }
  }

  return v2;
}

ot::Tmf::SecureAgent *ot::Tmf::SecureAgent::SecureAgent(ot::Tmf::SecureAgent *this, ot::Instance *a2)
{
  ot::Coap::CoapSecure::CoapSecure(this, a2, 0);
  ot::Coap::CoapBase::SetResourceHandler(this, ot::Tmf::SecureAgent::HandleResource);
  return this;
}

{
  ot::Tmf::SecureAgent::SecureAgent(this, a2);
  return this;
}

uint64_t ot::Tmf::SecureAgent::HandleResource(ot::Tmf::SecureAgent *this, ot *a2, ot::Coap::Message *a3, const ot::Ip6::MessageInfo *a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  v20 = 1;
  v18 = ot::UriFromPath(a2, a2, a3, a4, a5, a6);
  switch(v18)
  {
    case 11:
      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
      ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)11>(v12, a3, a4);
      break;
    case 13:
      v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
      ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)13>(v13, a3, a4);
      break;
    case 14:
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
      ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)14>(v8, a3, a4);
      break;
    case 15:
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
      ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)15>(v10, a3, a4);
      break;
    case 16:
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
      ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)16>(v7, a3, a4);
      break;
    case 17:
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
      ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)17>(v11, a3, a4);
      break;
    case 22:
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(this);
      ot::MeshCoP::Commissioner::HandleTmf<(ot::Uri)22>(v6, a3);
      break;
    case 26:
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
      ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)26>(v14, a3, a4);
      break;
    case 28:
      v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
      ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)28>(v15, a3, a4);
      break;
    case 30:
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
      ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)30>(v9, a3, a4);
      break;
    case 32:
      v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
      ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)32>(v16, a3, a4);
      break;
    default:
      v20 = 0;
      break;
  }

  return v20 & 1;
}

uint64_t ot::Instance::Get<ot::PanIdQueryClient>(uint64_t a1)
{
  return ot::MeshCoP::Commissioner::GetPanIdQueryClient((a1 + 144416));
}

{
  return ot::Instance::Get<ot::PanIdQueryClient>(a1);
}

uint64_t ot::Instance::Get<ot::EnergyScanClient>(uint64_t a1)
{
  return ot::MeshCoP::Commissioner::GetEnergyScanClient((a1 + 144416));
}

{
  return ot::Instance::Get<ot::EnergyScanClient>(a1);
}

char *ot::PathForUri(unsigned __int8 a1)
{
  if (a1 == 40)
  {
    __assert_rtn("PathForUri", "uri_paths.cpp", 149, "aUri != kUriUnknown");
  }

  return ot::UriList::kEntries[a1];
}

uint64_t ot::UriFromPath(ot *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  v9 = this;
  v8 = 40;
  v7 = ot::BinarySearch::Find<char const*,ot::UriList::Entry,(unsigned short)40>(&v9, ot::UriList::kEntries, a3, a4, a5, a6);
  if (v7)
  {
    return ((v7 - ot::UriList::kEntries) / 8);
  }

  return v8;
}

char *ot::BinarySearch::Find<char const*,ot::UriList::Entry,(unsigned short)40>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 0x28, 8u, ot::BinarySearch::Compare<char const*,ot::UriList::Entry>, a6);
}

{
  return ot::BinarySearch::Find<char const*,ot::UriList::Entry,(unsigned short)40>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::UriList::Entry::Compare(const char **this, const char *a2)
{
  return strcmp(a2, *this);
}

{
  return ot::UriList::Entry::Compare(this, a2);
}

ot::Utils::ChannelManager *ot::Utils::ChannelManager::ChannelManager(ot::Utils::ChannelManager *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Mac::ChannelMask::ChannelMask(this, 0);
  ot::Mac::ChannelMask::ChannelMask((this + 4), 0);
  *(this + 4) = 120;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  ot::TimerMilliIn<ot::Utils::ChannelManager,&ot::Utils::ChannelManager::HandleTimer>::TimerMilliIn((this + 16), a2);
  result = this;
  *(this + 10) = 10800;
  *(this + 44) = 0;
  *(this + 23) = 9174;
  return result;
}

{
  ot::Utils::ChannelManager::ChannelManager(this, a2);
  return this;
}

ot::Utils::ChannelManager *ot::Utils::ChannelManager::HandleTimer(ot::Utils::ChannelManager *this)
{
  if (*(this + 12))
  {
    if (*(this + 12) == 1)
    {
      return ot::Utils::ChannelManager::StartDatasetUpdate(this);
    }
  }

  return this;
}

ot::TimerMilli *ot::TimerMilliIn<ot::Utils::ChannelManager,&ot::Utils::ChannelManager::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::Utils::ChannelManager,&ot::Utils::ChannelManager::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::Utils::ChannelManager,&ot::Utils::ChannelManager::HandleTimer>::HandleTimer);
  return a1;
}

void ot::Utils::ChannelManager::RequestChannelChange(ot::Utils::ChannelManager *this, unsigned __int8 a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  if (ot::Mle::Mle::IsFullThreadDevice(v2))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (ot::Mle::Mle::IsRxOnWhenIdle(v3) && (*(this + 44) & 1) != 0)
    {
      ot::Utils::ChannelManager::RequestNetworkChannelChange(this, a2);
    }
  }
}

void ot::Utils::ChannelManager::RequestNetworkChannelChange(ot::Utils::ChannelManager *this, unsigned __int8 a2)
{
  v13 = a2;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  if (v13 == ot::Mac::Mac::GetPanChannel(v2))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChannelManager", "Already operating on the requested channel %d", v3, v4, v5, v6, v7, v8, a2);
  }

  else
  {
    v11 = *(this + 4);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChannelManager", "Request to change to channel %d with delay %d sec", v3, v4, v5, v6, v7, v8, a2);
    if (*(this + 12) != 2 || *(this + 10) != a2)
    {
      *(this + 12) = 1;
      *(this + 10) = a2;
      Uint32InRange = ot::Random::NonCrypto::GetUint32InRange(0, 0x2710u);
      ot::TimerMilli::Start((this + 16), Uint32InRange + 1);
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
      ot::Notifier::Signal(v10, 0x200000);
    }
  }
}

uint64_t ot::Utils::ChannelManager::SetDelay(ot::Utils::ChannelManager *this, unsigned __int16 a2)
{
  v3 = 0;
  if (a2 >= 0x78u)
  {
    *(this + 4) = a2;
  }

  else
  {
    return 7;
  }

  return v3;
}

uint64_t ot::Utils::ChannelManager::StartDatasetUpdate(ot::Utils::ChannelManager *this)
{
  v12 = this;
  ot::Clearable<ot::MeshCoP::Dataset::Info>::Clear(v13);
  v11 = *(this + 10);
  ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)8>(v13, &v11);
  v10 = ot::Time::SecToMsec(*(this + 4));
  ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)6>(v13, &v10);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::DatasetUpdater>(this);
  result = ot::MeshCoP::DatasetUpdater::RequestUpdate(v1, v13, ot::Utils::ChannelManager::HandleDatasetUpdateDone, this);
  if (result)
  {
    if (result == 3 || result == 5)
    {
      return ot::TimerMilli::Start((this + 16), 0x4E20u);
    }

    else
    {
      if (result == 13)
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChannelManager", "Request to change to channel %d failed. Device is disabled", v3, v4, v5, v6, v7, v8, *(this + 10));
      }

      *(this + 12) = 0;
      return ot::Utils::ChannelManager::StartAutoSelectTimer(this);
    }
  }

  else
  {
    *(this + 12) = 2;
  }

  return result;
}

uint64_t ot::Utils::ChannelManager::StartAutoSelectTimer(uint64_t this)
{
  v2 = this;
  if (!*(this + 12))
  {
    if (*(this + 44))
    {
      v1 = ot::Time::SecToMsec(*(this + 40));
      return ot::TimerMilli::Start((v2 + 16), v1);
    }

    else
    {
      return ot::TimerMilli::Stop((this + 16));
    }
  }

  return this;
}

uint64_t ot::Utils::ChannelManager::HandleDatasetUpdateDone(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChannelManager", "Canceling channel change to %d%s", a3, a4, a5, a6, a7, a8, *(a1 + 10));
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChannelManager", "Channel changed to %d", a3, a4, a5, a6, a7, a8, *(a1 + 10));
  }

  *(a1 + 12) = 0;
  return ot::Utils::ChannelManager::StartAutoSelectTimer(a1);
}

uint64_t ot::Utils::ChannelManager::SetAutoChannelSelectionInterval(ot::Utils::ChannelManager *this, unsigned int a2)
{
  v11 = this;
  v10 = a2;
  v9 = 0;
  v8 = *(this + 10);
  if (a2 && v10 <= ot::Time::MsecToSec(0x7FFFFFFF))
  {
    *(this + 10) = v10;
    if ((*(this + 44) & 1) != 0 && !*(this + 12) && ot::Timer::IsRunning((this + 16)) && v8 != v10)
    {
      FireTime = ot::Timer::GetFireTime((this + 16));
      v2 = ot::Time::SecToMsec(v8);
      v7 = ot::Time::operator-(&FireTime, v2);
      v3 = ot::Time::SecToMsec(v10);
      ot::TimerMilli::StartAt((this + 16), v7, v3);
    }
  }

  else
  {
    return 7;
  }

  return v9;
}

void ot::Utils::ChannelManager::SetSupportedChannels(ot::Utils::ChannelManager *this, int a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  SupportedChannelMask = ot::Mac::Mac::GetSupportedChannelMask(v2);
  Mask = ot::Mac::ChannelMask::GetMask(SupportedChannelMask);
  ot::Mac::ChannelMask::SetMask(this, a2 & Mask);
  ot::Mac::ChannelMask::ToString(this, v14);
  v5 = ot::String<(unsigned short)45>::AsCString(v14);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChannelManager", "Supported channels: %s", v6, v7, v8, v9, v10, v11, v5);
}

void ot::Utils::ChannelManager::SetFavoredChannels(ot::Utils::ChannelManager *this, int a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  SupportedChannelMask = ot::Mac::Mac::GetSupportedChannelMask(v2);
  Mask = ot::Mac::ChannelMask::GetMask(SupportedChannelMask);
  ot::Mac::ChannelMask::SetMask(this + 1, a2 & Mask);
  ot::Mac::ChannelMask::ToString((this + 4), v14);
  v5 = ot::String<(unsigned short)45>::AsCString(v14);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChannelManager", "Favored channels: %s", v6, v7, v8, v9, v10, v11, v5);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::ChannelManager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Utils::ChannelManager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::ChannelManager>(a1);
}

ot::Utils::Heap *ot::Utils::Heap::Heap(ot::Utils::Heap *this)
{
  v7 = ot::Utils::Heap::BlockAt(this, 6u);
  ot::Utils::Block::SetSize(v7, 4);
  v6 = ot::Utils::Heap::BlockRight(this, v7);
  ot::Utils::Block::SetSize(v6, 64492);
  v5 = ot::Utils::Heap::BlockRight(this, v6);
  ot::Utils::Block::SetSize(v5, 0xFFFF);
  v1 = ot::Utils::Heap::BlockOffset(this, v6);
  ot::Utils::Block::SetNext(v7, v1);
  v2 = ot::Utils::Heap::BlockOffset(this, v5);
  ot::Utils::Block::SetNext(v6, v2);
  result = this;
  *this = -1044;
  return result;
}

{
  ot::Utils::Heap::Heap(this);
  return this;
}

uint64_t ot::Utils::Heap::BlockAt(ot::Utils::Heap *this, unsigned __int16 a2)
{
  return this + 2 * (a2 / 2);
}

{
  return ot::Utils::Heap::BlockAt(this, a2);
}

_WORD *ot::Utils::Block::SetSize(_WORD *this, __int16 a2)
{
  *this = a2;
  return this;
}

{
  return ot::Utils::Block::SetSize(this, a2);
}

uint64_t ot::Utils::Heap::BlockRight(ot::Utils::Heap *this, const ot::Utils::Block *a2)
{
  v4 = ot::Utils::Heap::BlockOffset(this, a2) + 4;
  Size = ot::Utils::Block::GetSize(a2);
  return ot::Utils::Heap::BlockAt(this, v4 + Size);
}

{
  return ot::Utils::Heap::BlockRight(this, a2);
}

unsigned __int16 *ot::Utils::Block::SetNext(unsigned __int16 *this, unsigned __int16 a2)
{
  *(this + *this + 2) = a2;
  return this;
}

{
  return ot::Utils::Block::SetNext(this, a2);
}

uint64_t ot::Utils::Heap::BlockOffset(ot::Utils::Heap *this, const ot::Utils::Block *a2)
{
  return (a2 - this);
}

{
  return ot::Utils::Heap::BlockOffset(this, a2);
}

uint64_t ot::Utils::Heap::CAlloc(ot::Utils::Heap *this, __int16 a2, __int16 a3)
{
  v14 = 0;
  if (a2 * a3)
  {
    v11 = ((a2 * a3 + 3) & 0xFFF8) + 4;
    v13 = ot::Utils::Heap::BlockSuper(this);
    v12 = ot::Utils::Heap::BlockNext(this, v13);
    for (i = ot::Utils::Block::GetSize(v12); i < v11; i = ot::Utils::Block::GetSize(v12))
    {
      v13 = v12;
      v12 = ot::Utils::Heap::BlockNext(this, v12);
    }

    if (ot::Utils::Block::IsFree(v12))
    {
      Next = ot::Utils::Block::GetNext(v12);
      ot::Utils::Block::SetNext(v13, Next);
      if (v11 + 4 < ot::Utils::Block::GetSize(v12))
      {
        v10 = ot::Utils::Block::GetSize(v12) - v11 - 4;
        ot::Utils::Block::SetSize(v12, v11);
        v9 = ot::Utils::Heap::BlockRight(this, v12);
        ot::Utils::Block::SetSize(v9, v10);
        ot::Utils::Block::SetNext(v9, 0);
        if (ot::Utils::Block::GetSize(v13) >= v10)
        {
          v5 = ot::Utils::Heap::BlockSuper(this);
          ot::Utils::Heap::BlockInsert(this, v5, v9);
        }

        else
        {
          ot::Utils::Heap::BlockInsert(this, v13, v9);
        }

        *this -= 4;
      }

      *this -= ot::Utils::Block::GetSize(v12);
      ot::Utils::Block::SetNext(v12, 0);
      Pointer = ot::Utils::Block::GetPointer(v12);
      bzero(Pointer, v11);
      return ot::Utils::Block::GetPointer(v12);
    }
  }

  return v14;
}

uint64_t ot::Utils::Heap::BlockSuper(ot::Utils::Heap *this)
{
  return ot::Utils::Heap::BlockAt(this, 6u);
}

{
  return ot::Utils::Heap::BlockSuper(this);
}

uint64_t ot::Utils::Heap::BlockNext(ot::Utils::Heap *this, const ot::Utils::Block *a2)
{
  Next = ot::Utils::Block::GetNext(a2);
  return ot::Utils::Heap::BlockAt(this, Next);
}

{
  return ot::Utils::Heap::BlockNext(this, a2);
}

uint64_t ot::Utils::Block::GetSize(ot::Utils::Block *this)
{
  return *this;
}

{
  return ot::Utils::Block::GetSize(this);
}

BOOL ot::Utils::Block::IsFree(ot::Utils::Block *this)
{
  v2 = 0;
  if (*this != 0xFFFF)
  {
    return ot::Utils::Block::GetNext(this) != 0;
  }

  return v2;
}

{
  return ot::Utils::Block::IsFree(this);
}

uint64_t ot::Utils::Block::GetNext(ot::Utils::Block *this)
{
  return *(this + *this + 2);
}

{
  return ot::Utils::Block::GetNext(this);
}

unsigned __int16 *ot::Utils::Heap::BlockInsert(ot::Utils::Heap *this, ot::Utils::Block *a2, ot::Utils::Block *a3)
{
  v9 = a2;
  v8 = ot::Utils::Heap::BlockNext(this, a2);
  for (i = ot::Utils::Block::GetSize(v8); i < ot::Utils::Block::GetSize(a3); i = ot::Utils::Block::GetSize(v8))
  {
    v9 = v8;
    v8 = ot::Utils::Heap::BlockNext(this, v8);
  }

  Next = ot::Utils::Block::GetNext(v9);
  ot::Utils::Block::SetNext(a3, Next);
  v5 = ot::Utils::Heap::BlockOffset(this, a3);
  return ot::Utils::Block::SetNext(v9, v5);
}

uint64_t ot::Utils::Block::GetPointer(ot::Utils::Block *this)
{
  return this + 2;
}

{
  return ot::Utils::Block::GetPointer(this);
}

ot::Utils::Block *ot::Utils::Heap::BlockPrev(ot::Utils::Heap *this, const ot::Utils::Block *a2)
{
  v5 = ot::Utils::Heap::BlockSuper(this);
  for (i = ot::Utils::Block::GetNext(v5); i != ot::Utils::Heap::BlockOffset(this, a2); i = ot::Utils::Block::GetNext(v5))
  {
    v5 = ot::Utils::Heap::BlockNext(this, v5);
  }

  return v5;
}

unsigned __int16 *ot::Utils::Heap::Free(unsigned __int16 *this, void *a2)
{
  v16 = this;
  if (a2)
  {
    v22 = ot::Utils::Heap::BlockOf(this, a2);
    v21 = ot::Utils::Heap::BlockRight(v16, v22);
    *v16 += ot::Utils::Block::GetSize(v22);
    if (ot::Utils::Heap::IsLeftFree(v16, v22))
    {
      v20 = ot::Utils::Heap::BlockSuper(v16);
      v19 = ot::Utils::Heap::BlockNext(v16, v20);
      *v16 += 4;
      LeftNext = ot::Utils::Block::GetLeftNext(v22);
      for (i = ot::Utils::Block::GetNext(v19); i != LeftNext; i = ot::Utils::Block::GetNext(v19))
      {
        v20 = v19;
        v19 = ot::Utils::Heap::BlockNext(v16, v19);
      }

      Next = ot::Utils::Block::GetNext(v19);
      ot::Utils::Block::SetNext(v20, Next);
      ot::Utils::Block::SetNext(v19, 0);
      if (ot::Utils::Block::IsFree(v21))
      {
        *v16 += 4;
        Size = ot::Utils::Block::GetSize(v21);
        if (Size <= ot::Utils::Block::GetSize(v19))
        {
          v20 = ot::Utils::Heap::BlockPrev(v16, v21);
        }

        else
        {
          v17 = ot::Utils::Heap::BlockOffset(v16, v21);
          for (j = ot::Utils::Block::GetNext(v20); j != v17; j = ot::Utils::Block::GetNext(v20))
          {
            v20 = ot::Utils::Heap::BlockNext(v16, v20);
          }
        }

        v5 = ot::Utils::Block::GetNext(v21);
        ot::Utils::Block::SetNext(v20, v5);
        ot::Utils::Block::SetNext(v21, 0);
        v14 = ot::Utils::Block::GetSize(v19);
        v6 = ot::Utils::Block::GetSize(v21);
        ot::Utils::Block::SetSize(v19, v14 + v6 + 4);
      }

      v13 = ot::Utils::Block::GetSize(v19);
      v7 = ot::Utils::Block::GetSize(v22);
      ot::Utils::Block::SetSize(v19, v13 + v7 + 4);
      return ot::Utils::Heap::BlockInsert(v16, v20, v19);
    }

    else if (ot::Utils::Block::IsFree(v21))
    {
      v11 = ot::Utils::Heap::BlockPrev(v16, v21);
      v8 = ot::Utils::Block::GetNext(v21);
      ot::Utils::Block::SetNext(v11, v8);
      v12 = ot::Utils::Block::GetSize(v22);
      v9 = ot::Utils::Block::GetSize(v21);
      ot::Utils::Block::SetSize(v22, v12 + v9 + 4);
      this = ot::Utils::Heap::BlockInsert(v16, v11, v22);
      *v16 += 4;
    }

    else
    {
      v10 = ot::Utils::Heap::BlockSuper(v16);
      return ot::Utils::Heap::BlockInsert(v16, v10, v22);
    }
  }

  return this;
}

uint64_t ot::Utils::Heap::BlockOf(ot::Utils::Heap *this, void *a2)
{
  return ot::Utils::Heap::BlockAt(this, a2 - this - 2);
}

{
  return ot::Utils::Heap::BlockOf(this, a2);
}

BOOL ot::Utils::Heap::IsLeftFree(ot::Utils::Heap *this, const ot::Utils::Block *a2)
{
  v3 = 0;
  if (ot::Utils::Heap::BlockOffset(this, a2) != 14)
  {
    return ot::Utils::Block::IsLeftFree(a2);
  }

  return v3;
}

{
  return ot::Utils::Heap::IsLeftFree(this, a2);
}

uint64_t ot::Utils::Block::GetLeftNext(ot::Utils::Block *this)
{
  return *(this - 1);
}

{
  return ot::Utils::Block::GetLeftNext(this);
}

BOOL ot::Utils::Block::IsLeftFree(ot::Utils::Block *this)
{
  return ot::Utils::Block::GetLeftNext(this) != 0;
}

{
  return ot::Utils::Block::IsLeftFree(this);
}

uint64_t ot::Utils::CmdLineParser::ParseCmd(ot::Utils::CmdLineParser *this, char *a2, ot::Utils::CmdLineParser::Arg *a3)
{
  v10 = a3;
  v9 = 0;
  v8 = 0;
  while (*this)
  {
    if (*this == 92 && ot::Utils::CmdLineParser::IsEscapable(*(this + 1)))
    {
      v3 = strlen(this);
      memmove(this, this + 1, v3);
    }

    else if (ot::Utils::CmdLineParser::IsSeparator(*this))
    {
      *this = 0;
    }

    if (*this && (!v8 || !*(this - 1)))
    {
      if (v8 == v10 - 1)
      {
        v9 = 7;
        break;
      }

      v4 = v8++;
      ot::Utils::CmdLineParser::Arg::SetCString(&a2[8 * v4], this);
    }

    this = (this + 1);
  }

  while (v8 < v10)
  {
    v5 = v8++;
    ot::Utils::CmdLineParser::Arg::Clear(&a2[8 * v5]);
  }

  return v9;
}

BOOL ot::Utils::CmdLineParser::IsEscapable(ot::Utils::CmdLineParser *this)
{
  v3 = this;
  v2 = 1;
  if (!ot::Utils::CmdLineParser::IsSeparator(this))
  {
    return v3 == 92;
  }

  return v2;
}

BOOL ot::Utils::CmdLineParser::IsSeparator(ot::Utils::CmdLineParser *this)
{
  v2 = 1;
  if (this != 32)
  {
    v2 = 1;
    if (this != 9)
    {
      v2 = 1;
      if (this != 13)
      {
        return this == 10;
      }
    }
  }

  return v2;
}

void *ot::Utils::CmdLineParser::Arg::SetCString(void *this, char *a2)
{
  *this = a2;
  return this;
}

{
  return ot::Utils::CmdLineParser::Arg::SetCString(this, a2);
}

uint64_t ot::Utils::CmdLineParser::ParseUint<unsigned char>(ot::Utils::CmdLineParser *a1, _BYTE *a2, unsigned __int8 *a3)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  v4 = 0;
  v5 = ot::Utils::CmdLineParser::ParseAsUint64(a1, &v4, a3);
  if (!v5)
  {
    if (v4 <= 0xFF)
    {
      *v6 = v4;
    }

    else
    {
      return 7;
    }
  }

  return v5;
}

{
  return ot::Utils::CmdLineParser::ParseUint<unsigned char>(a1, a2, a3);
}

uint64_t ot::Utils::CmdLineParser::ParseUint<unsigned short>(ot::Utils::CmdLineParser *a1, _WORD *a2, unsigned __int8 *a3)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  v4 = 0;
  v5 = ot::Utils::CmdLineParser::ParseAsUint64(a1, &v4, a3);
  if (!v5)
  {
    if (v4 < 0x10000)
    {
      *v6 = v4;
    }

    else
    {
      return 7;
    }
  }

  return v5;
}

{
  return ot::Utils::CmdLineParser::ParseUint<unsigned short>(a1, a2, a3);
}

uint64_t ot::Utils::CmdLineParser::ParseUint<unsigned int>(ot::Utils::CmdLineParser *a1, _DWORD *a2, unsigned __int8 *a3)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  v4 = 0;
  v5 = ot::Utils::CmdLineParser::ParseAsUint64(a1, &v4, a3);
  if (!v5)
  {
    if (v4 <= 0xFFFFFFFF)
    {
      *v6 = v4;
    }

    else
    {
      return 7;
    }
  }

  return v5;
}

{
  return ot::Utils::CmdLineParser::ParseUint<unsigned int>(a1, a2, a3);
}

uint64_t ot::Utils::CmdLineParser::ParseAsUint64(ot::Utils::CmdLineParser *this, char *a2, unsigned __int8 *a3)
{
  v13 = this;
  v12 = a2;
  v11 = 0;
  v10 = 0;
  v9 = this;
  v8 = 0;
  if (this)
  {
    if (*v9 == 48 && (*(v9 + 1) == 120 || *(v9 + 1) == 88))
    {
      v9 = (v9 + 2);
      v8 = 1;
    }

    while (1)
    {
      v7 = 0;
      v6 = (v8 & 1) != 0 ? ot::ParseHexDigit(*v9, &v7, a3) : ot::ParseDigit(*v9, &v7, a3);
      v11 = v6;
      if (v6)
      {
        break;
      }

      v3 = 0xFFFFFFFFFFFFFFFLL;
      if ((v8 & 1) == 0)
      {
        v3 = 0x1999999999999999;
      }

      if (v10 > v3)
      {
        return 7;
      }

      if (v8)
      {
        v5 = 16 * v10;
      }

      else
      {
        v5 = 10 * v10;
      }

      v10 = v5;
      if (v5 + v7 < v5)
      {
        return 7;
      }

      v10 = v5 + v7;
      v9 = (v9 + 1);
      if (!*v9)
      {
        *v12 = v10;
        return v11;
      }
    }
  }

  else
  {
    return 7;
  }

  return v11;
}

uint64_t ot::Utils::CmdLineParser::ParseInt<signed char>(ot::Utils::CmdLineParser *a1, _BYTE *a2, unsigned __int8 *a3)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  *v4 = 0;
  v5 = ot::Utils::CmdLineParser::ParseAsInt32(a1, v4, a3);
  if (!v5)
  {
    if (*v4 >= -128 && *v4 <= 127)
    {
      *v6 = v4[0];
    }

    else
    {
      return 7;
    }
  }

  return v5;
}

{
  return ot::Utils::CmdLineParser::ParseInt<signed char>(a1, a2, a3);
}

uint64_t ot::Utils::CmdLineParser::ParseInt<short>(ot::Utils::CmdLineParser *a1, _WORD *a2, unsigned __int8 *a3)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  *v4 = 0;
  v5 = ot::Utils::CmdLineParser::ParseAsInt32(a1, v4, a3);
  if (!v5)
  {
    if (*v4 >= -32768 && *v4 < 0x8000)
    {
      *v6 = *v4;
    }

    else
    {
      return 7;
    }
  }

  return v5;
}

{
  return ot::Utils::CmdLineParser::ParseInt<short>(a1, a2, a3);
}

uint64_t ot::Utils::CmdLineParser::ParseAsInt32(ot::Utils::CmdLineParser *this, char *a2, unsigned __int8 *a3)
{
  v10 = this;
  v9 = a2;
  v8 = 0;
  *v7 = 0;
  v6 = 0;
  if (this)
  {
    if (*v10 == 45)
    {
      v10 = (v10 + 1);
      v6 = 1;
    }

    else if (*v10 == 43)
    {
      v10 = (v10 + 1);
    }

    v8 = ot::Utils::CmdLineParser::ParseAsUint64(v10, v7, a3);
    if (!v8)
    {
      v3 = 0x80000000;
      if ((v6 & 1) == 0)
      {
        v3 = 0x7FFFFFFFLL;
      }

      if (*v7 <= v3)
      {
        if (v6)
        {
          v5 = -*v7;
        }

        else
        {
          LODWORD(v5) = *v7;
        }

        *v9 = v5;
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

uint64_t ot::Utils::CmdLineParser::ParseAsBool(ot::Utils::CmdLineParser *this, char *a2, BOOL *a3)
{
  v7 = this;
  v6 = a2;
  v5 = 0;
  *v4 = 0;
  v5 = ot::Utils::CmdLineParser::ParseAsUint32(this, v4, a3);
  if (!v5)
  {
    *v6 = *v4 != 0;
  }

  return v5;
}

uint64_t ot::Utils::CmdLineParser::ParseAsIp6Address(const char *a1, uint64_t a2)
{
  if (a1)
  {
    return otIp6AddressFromString(a1, a2);
  }

  else
  {
    return 7;
  }
}

uint64_t ot::Utils::CmdLineParser::ParseAsIp4Address(const char *a1, uint64_t a2)
{
  if (a1)
  {
    return otIp4AddressFromString(a1, a2);
  }

  else
  {
    return 7;
  }
}

uint64_t ot::Utils::CmdLineParser::ParseAsIp6Prefix(ot *a1, uint64_t a2)
{
  if (a1)
  {
    return otIp6PrefixFromString(a1, a2);
  }

  else
  {
    return 7;
  }
}

uint64_t ot::Utils::CmdLineParser::ParseAsHexString(ot::Utils::CmdLineParser *this, char *a2, unsigned __int8 *a3)
{
  v6 = this;
  v5 = a2;
  v4 = a3;
  return ot::Utils::CmdLineParser::ParseHexString(&v6, &v4, a2, 0);
}

uint64_t ot::Utils::CmdLineParser::ParseHexString(const char **a1, _WORD *a2, _BYTE *a3, int a4)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  if (*a1)
  {
    v9 = strlen(*v15);
    v8 = (v9 + 1) / 2;
    if (v12)
    {
      if (v12 == 1 && v8 > *v14)
      {
        return 7;
      }
    }

    else if (v8 != *v14)
    {
      return 7;
    }

    v7 = (v9 & 1) != 0;
    while (v10 < v8)
    {
      v6 = 0;
      if (v12 == 2 && v10 == *v14)
      {
        return 36;
      }

      if (v7)
      {
        *v13 = 0;
        v7 = 0;
      }

      else
      {
        v11 = ot::ParseHexDigit(**v15, &v6, v4);
        if (v11)
        {
          return v11;
        }

        ++*v15;
        *v13 = 16 * v6;
      }

      v11 = ot::ParseHexDigit(**v15, &v6, v4);
      if (v11)
      {
        return v11;
      }

      ++*v15;
      *v13++ |= v6;
      ++v10;
    }

    *v14 = v10;
  }

  else
  {
    return 7;
  }

  return v11;
}

uint64_t ot::Utils::CmdLineParser::Arg::GetLength(const char **this)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(this))
  {
    return 0;
  }

  else
  {
    return strlen(*this);
  }
}

BOOL ot::Utils::CmdLineParser::Arg::operator==(const char **a1, const char *a2)
{
  v4 = 0;
  if (!ot::Utils::CmdLineParser::Arg::IsEmpty(a1))
  {
    return strcmp(*a1, a2) == 0;
  }

  return v4;
}

BOOL ot::Utils::CmdLineParser::Arg::CopyArgsToStringArray(ot::Utils::CmdLineParser::Arg *this, ot::Utils::CmdLineParser::Arg *a2, char **a3)
{
  for (i = 0; ; ++i)
  {
    result = ot::Utils::CmdLineParser::Arg::IsEmpty((this + 8 * i));
    if (result)
    {
      break;
    }

    *(a2 + i) = ot::Utils::CmdLineParser::Arg::GetCString((this + 8 * i));
  }

  return result;
}

uint64_t ot::Utils::CmdLineParser::Arg::GetArgsLength(ot::Utils::CmdLineParser::Arg *this, ot::Utils::CmdLineParser::Arg *a2)
{
    ;
  }

  return i;
}

uint64_t ot::Utils::PingSender::Config::SetUnspecifiedToDefault(uint64_t this)
{
  if (!*(this + 56))
  {
    *(this + 56) = 8;
  }

  if (!*(this + 58))
  {
    *(this + 58) = 1;
  }

  if (!*(this + 60))
  {
    *(this + 60) = 1000;
  }

  if (!*(this + 64))
  {
    *(this + 64) = 3000;
  }

  return this;
}

uint64_t ot::Utils::PingSender::HandleTimer(ot::Utils::PingSender *this)
{
  if (*(this + 29))
  {
    return ot::Utils::PingSender::SendPing(this);
  }

  else
  {
    return ot::Utils::PingSender::Config::InvokeStatisticsCallback(this, this + 72);
  }
}

uint64_t ot::Utils::PingSender::Config::InvokeReplyCallback(uint64_t result, uint64_t a2)
{
  if (*(result + 32))
  {
    return (*(result + 32))(a2, *(result + 48));
  }

  return result;
}

uint64_t ot::Utils::PingSender::Config::InvokeStatisticsCallback(uint64_t result, uint64_t a2)
{
  if (*(result + 40))
  {
    return (*(result + 40))(a2, *(result + 48));
  }

  return result;
}

ot::Utils::PingSender *ot::Utils::PingSender::PingSender(ot::Utils::PingSender *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Utils::PingSender::Statistics::Statistics((this + 72));
  *(this + 44) = 0;
  *(this + 45) = 0;
  ot::TimerMilliIn<ot::Utils::PingSender,&ot::Utils::PingSender::HandleTimer>::TimerMilliIn((this + 96), a2);
  ot::Ip6::Icmp::Handler::Handler(this + 15, ot::Utils::PingSender::HandleIcmpReceive, this);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Icmp>(this);
  ot::Ip6::Icmp::RegisterHandler(v2, (this + 120));
  IgnoreError();
  return this;
}

{
  ot::Utils::PingSender::PingSender(this, a2);
  return this;
}

ot::Utils::PingSender::Statistics *ot::Utils::PingSender::Statistics::Statistics(ot::Utils::PingSender::Statistics *this)
{
  ot::Utils::PingSender::Statistics::Statistics(this);
  return this;
}

{
  ot::Utils::PingSender::Statistics::Clear(this);
  return this;
}

ot::TimerMilli *ot::TimerMilliIn<ot::Utils::PingSender,&ot::Utils::PingSender::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::Utils::PingSender,&ot::Utils::PingSender::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::Utils::PingSender,&ot::Utils::PingSender::HandleTimer>::HandleTimer);
  return a1;
}

uint64_t ot::Utils::PingSender::HandleIcmpReceive(ot::Utils::PingSender *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = ot::AsCoreType<otMessage>(a2);
  v7 = ot::AsCoreType<otMessageInfo>(a3);
  v4 = ot::AsCoreType<otIcmp6Header>(a4);
  return ot::Utils::PingSender::HandleIcmpReceive(a1, v6, v7, v4);
}

uint64_t ot::Utils::PingSender::Ping(ot::Utils::PingSender *this, const ot::Utils::PingSender::Config *a2)
{
  v5 = 0;
  if (ot::Timer::IsRunning((this + 96)))
  {
    return 5;
  }

  else
  {
    memcpy(this, a2, 0x48uLL);
    ot::Utils::PingSender::Config::SetUnspecifiedToDefault(this);
    if (*(this + 15) > 0x7FFFFFFFu)
    {
      return 7;
    }

    else
    {
      ot::Utils::PingSender::Statistics::Clear(this + 72);
      v2 = ot::AsCoreType<otIp6Address>(this + 16);
      *(this + 84) = ot::Ip6::Address::IsMulticast(v2);
      ++*(this + 44);
      ot::Utils::PingSender::SendPing(this);
    }
  }

  return v5;
}

uint64_t ot::Utils::PingSender::Statistics::Clear(uint64_t this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 8) = -1;
  *(this + 10) = 0;
  *(this + 12) = 0;
  return this;
}

{
  return ot::Utils::PingSender::Statistics::Clear(this);
}

uint64_t ot::Utils::PingSender::SendPing(ot::Utils::PingSender *this)
{
  v17 = this;
  Now = ot::TimerMilli::GetNow(this);
  v15 = 0;
  ot::Ip6::MessageInfo::MessageInfo(v12);
  Source = ot::Utils::PingSender::Config::GetSource(this);
  ot::Ip6::MessageInfo::SetSockAddr(v12, Source);
  Destination = ot::Utils::PingSender::Config::GetDestination(this);
  ot::Ip6::MessageInfo::SetPeerAddr(v12, Destination);
  v13 = *(this + 66);
  v14 = v14 & 0xF7 | (8 * (*(this + 67) & 1));
  v14 = v14 & 0xEF | (16 * (*(this + 68) & 1));
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Icmp>(this);
  v15 = ot::Ip6::Icmp::NewMessage(v3);
  if (v15)
  {
    v9 = v15;
    Value = ot::Time::GetValue(&Now);
    *v11 = ot::BigEndian::HostSwap32(Value);
    if (!ot::Message::Append<unsigned int>(v9, v11))
    {
      v8 = *(this + 28);
      if (v8 <= ot::Message::GetLength(v15) || !ot::Message::SetLength(v15, *(this + 28)))
      {
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Icmp>(this);
        *(this + 45) = ot::Ip6::Icmp::GetEchoSequence(v5);
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Icmp>(this);
        if (!ot::Ip6::Icmp::SendEchoRequest(v6, v15, v12, *(this + 44)))
        {
          ++*(this + 36);
          v15 = 0;
        }
      }
    }
  }

  if (v15)
  {
    ot::Message::Free(v15);
  }

  if (--*(this + 29))
  {
    return ot::TimerMilli::Start((this + 96), *(this + 15));
  }

  else
  {
    return ot::TimerMilli::Start((this + 96), *(this + 32));
  }
}

uint64_t ot::Utils::PingSender::Stop(ot::Utils::PingSender *this)
{
  result = ot::TimerMilli::Stop((this + 96));
  ++*(this + 44);
  return result;
}

uint64_t ot::Utils::PingSender::Config::GetSource(ot::Utils::PingSender::Config *this)
{
  return ot::AsCoreType<otIp6Address>(this);
}

{
  return ot::Utils::PingSender::Config::GetSource(this);
}

uint64_t ot::Utils::PingSender::Config::GetDestination(ot::Utils::PingSender::Config *this)
{
  return ot::AsCoreType<otIp6Address>(this + 16);
}

{
  return ot::Utils::PingSender::Config::GetDestination(this);
}

uint64_t ot::Message::Append<unsigned int>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 4u);
}

{
  return ot::Message::Append<unsigned int>(a1, a2);
}

uint64_t ot::Ip6::Icmp::GetEchoSequence(ot::Ip6::Icmp *this)
{
  return *(this + 4);
}

{
  return ot::Ip6::Icmp::GetEchoSequence(this);
}

uint64_t ot::Utils::PingSender::HandleIcmpReceive(ot::Utils::PingSender *this, const ot::Message *a2, const ot::Ip6::MessageInfo *a3, const ot::Ip6::Icmp::Header *a4)
{
  v20 = this;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v12[0] = 0;
  result = ot::Timer::IsRunning((this + 96));
  if (result)
  {
    result = ot::Ip6::Icmp::Header::GetType(v17);
    if (result == 129)
    {
      result = ot::Ip6::Icmp::Header::GetId(v17);
      if (result == *(this + 44))
      {
        Offset = ot::Message::GetOffset(v19);
        result = ot::Message::Read<unsigned int>(v19, Offset, v12);
        if (!result)
        {
          v12[0] = ot::BigEndian::HostSwap32(v12[0]);
          PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v18);
          *&v12[1] = *PeerAddr;
          Now = ot::TimerMilli::GetNow(PeerAddr);
          ot::Time::Time(&v10, v12[0]);
          v7 = ot::Time::operator-(&Now, &v10);
          v13 = ot::ClampToUint16<unsigned int>(v7);
          Length = ot::Message::GetLength(v19);
          v14 = Length - ot::Message::GetOffset(v19);
          Sequence = ot::Ip6::Icmp::Header::GetSequence(v17);
          HopLimit = ot::Ip6::MessageInfo::GetHopLimit(v18);
          ++*(this + 37);
          *(this + 19) += v13;
          *(this + 41) = ot::Max<unsigned short>(*(this + 41), v13);
          *(this + 40) = ot::Min<unsigned short>(*(this + 40), v13);
          if ((*(this + 84) & 1) == 0 && !*(this + 29) && ot::Ip6::Icmp::Header::GetSequence(v17) == *(this + 45))
          {
            ot::TimerMilli::Stop((this + 96));
          }

          result = ot::Utils::PingSender::Config::InvokeReplyCallback(this, &v12[1]);
          if ((*(this + 84) & 1) == 0 && !*(this + 29))
          {
            result = ot::Ip6::Icmp::Header::GetSequence(v17);
            if (result == *(this + 45))
            {
              return ot::Utils::PingSender::Config::InvokeStatisticsCallback(this, this + 72);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ot::Ip6::Icmp::Header::GetId(ot::Ip6::Icmp::Header *this)
{
  return ot::BigEndian::HostSwap16(*(this + 2));
}

{
  return ot::Ip6::Icmp::Header::GetId(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::PingSender>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Utils::PingSender>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::PingSender>(a1);
}

ot::Utils::Slaac *ot::Utils::Slaac::Slaac(ot::Utils::Slaac *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 1;
  *(this + 1) = 0;
  ot::TimerMilliIn<ot::Utils::Slaac,&ot::Utils::Slaac::HandleTimer>::TimerMilliIn((this + 16), a2);
  ot::ClearAllBytes<ot::Utils::Slaac::SlaacAddress [4]>(this + 40);
  return this;
}

{
  ot::Utils::Slaac::Slaac(this, a2);
  return this;
}

uint64_t ot::Utils::Slaac::HandleTimer(ot::Utils::Slaac *this)
{
  v11 = this;
  ot::NextFireTime::NextFireTime(&v10);
  v9 = this + 40;
  v8 = (this + 40);
  v7 = (this + 200);
  while (v8 != v7)
  {
    v6 = v8;
    if ((ot::Utils::Slaac::SlaacAddress::IsInUse(v8) & 1) != 0 && ot::Utils::Slaac::SlaacAddress::IsDeprecating(v6))
    {
      ExpirationTime = ot::Utils::Slaac::SlaacAddress::GetExpirationTime(v6);
      Now = ot::NextFireTime::GetNow(&v10);
      if (ot::Time::operator<=(&ExpirationTime, &Now))
      {
        ot::Utils::Slaac::RemoveAddress(this, v6);
      }

      else
      {
        v3 = ot::Utils::Slaac::SlaacAddress::GetExpirationTime(v6);
        ot::NextFireTime::UpdateIfEarlier(&v10, v3);
      }
    }

    v8 = (v8 + 40);
  }

  return ot::TimerMilli::FireAtIfEarlier((this + 16), &v10);
}

ot::TimerMilli *ot::TimerMilliIn<ot::Utils::Slaac,&ot::Utils::Slaac::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::Utils::Slaac,&ot::Utils::Slaac::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::Utils::Slaac,&ot::Utils::Slaac::HandleTimer>::HandleTimer);
  return a1;
}

void *ot::ClearAllBytes<ot::Utils::Slaac::SlaacAddress [4]>(void *a1)
{
  return memset(a1, 0, 0xA0uLL);
}

{
  return ot::ClearAllBytes<ot::Utils::Slaac::SlaacAddress [4]>(a1);
}

_BYTE *ot::Utils::Slaac::Enable(_BYTE *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*this & 1) == 0)
  {
    *this = 1;
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Slaac", "Enabled", a3, a4, a5, a6, a7, a8, this);
    return ot::Utils::Slaac::AddAddresses(v8);
  }

  return this;
}

uint64_t ot::Utils::Slaac::AddAddresses(ot::Utils::Slaac *this)
{
  v25 = this;
  v24 = 0;
  while (1)
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    result = ot::NetworkData::NetworkData::GetNextOnMeshPrefix(v1, &v24, v23);
    if (result)
    {
      return result;
    }

    v22 = 0;
    if (ot::Utils::Slaac::IsSlaac(this, v23) && (ot::Utils::Slaac::IsFiltered(this, v23) & 1) == 0)
    {
      v21 = this + 40;
      v20 = (this + 40);
      v19 = (this + 200);
      while (v20 != v19)
      {
        v18 = v20;
        if ((ot::Utils::Slaac::SlaacAddress::IsInUse(v20) & 1) != 0 && ot::Utils::Slaac::DoesConfigMatchNetifAddr(v23, v18, v3))
        {
          if (ot::Utils::Slaac::SlaacAddress::IsDeprecating(v18) && (v23[17] & 4) != 0)
          {
            ot::Utils::Slaac::SlaacAddress::MarkAsNotDeprecating(v18);
            v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
            ot::Ip6::Netif::UpdatePreferredFlagOn(v4, v18, 1);
          }

          v22 = 1;
          break;
        }

        v20 = (v20 + 40);
      }

      if ((v22 & 1) == 0)
      {
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
        ot::Ip6::Netif::GetUnicastAddresses(v5);
        v17[1] = v6;
        v17[0] = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::begin(v6);
        v16 = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::end();
        while (ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator!=(v17, &v16))
        {
          v15 = ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator*(v17);
          if (ot::Utils::Slaac::DoesConfigMatchNetifAddr(v23, v15, v13))
          {
            v22 = 1;
            break;
          }

          ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator++(v17);
        }

        if ((v22 & 1) == 0)
        {
          ot::Utils::Slaac::AddAddressFor(this, v23, v7, v8, v9, v10, v11, v12);
        }
      }
    }
  }
}

void ot::Utils::Slaac::Disable(ot::Utils::Slaac *this)
{
  if (*this)
  {
    ot::Utils::Slaac::RemoveAllAddresses(this);
    ot::TimerMilli::Stop((this + 16));
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Slaac", "Disabled", v1, v2, v3, v4, v5, v6, this);
    *v8 = 0;
  }
}

uint64_t ot::Utils::Slaac::RemoveAllAddresses(uint64_t this)
{
  v1 = this;
  v3 = (this + 40);
  v2 = (this + 200);
  while (v3 != v2)
  {
    this = ot::Utils::Slaac::SlaacAddress::IsInUse(v3);
    if (this)
    {
      this = ot::Utils::Slaac::RemoveAddress(v1, v3);
    }

    v3 = (v3 + 40);
  }

  return this;
}

void ot::Utils::Slaac::SetFilter(ot::Utils::Slaac *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != *(a1 + 1))
  {
    *(a1 + 1) = a2;
    v8 = "updated";
    if (!*(a1 + 1))
    {
      v8 = "disabled";
    }

    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Slaac", "Filter %s", a3, a4, a5, a6, a7, a8, v8);
    if (*a1)
    {
      ot::Utils::Slaac::RemoveOrDeprecateAddresses(a1);
      ot::Utils::Slaac::AddAddresses(a1);
    }
  }
}

uint64_t ot::Utils::Slaac::RemoveOrDeprecateAddresses(uint64_t this)
{
  v11 = this;
  v3 = this;
  v10 = this + 40;
  v9 = (this + 40);
  v8 = (this + 200);
  while (v9 != v8)
  {
    v7 = v9;
    v6 = 0;
    v4 = 0;
    this = ot::Utils::Slaac::SlaacAddress::IsInUse(v9);
    if (this)
    {
      v6 = 0;
      while (1)
      {
        v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(v3);
        if (ot::NetworkData::NetworkData::GetNextOnMeshPrefix(v1, &v6, v5))
        {
          break;
        }

        if (ot::Utils::Slaac::IsSlaac(v3, v5) && ot::Utils::Slaac::DoesConfigMatchNetifAddr(v5, v7, v2))
        {
          v4 = 1;
          break;
        }
      }

      if (v4)
      {
        this = ot::Utils::Slaac::IsFiltered(v3, v5);
        if (this)
        {
          this = ot::Utils::Slaac::RemoveAddress(v3, v7);
        }
      }

      else
      {
        this = ot::Utils::Slaac::SlaacAddress::IsDeprecating(v7);
        if ((this & 1) == 0)
        {
          if (*(v7 + 9))
          {
            this = ot::Utils::Slaac::DeprecateAddress(v3, v7);
          }

          else
          {
            this = ot::Utils::Slaac::RemoveAddress(v3, v7);
          }
        }
      }
    }

    v9 = (v9 + 40);
  }

  return this;
}

uint64_t ot::Utils::Slaac::FindDomainIdFor(ot::Utils::Slaac *this, const ot::Ip6::Address *a2, unsigned __int8 *a3)
{
  v7 = 23;
  v6 = (this + 40);
  v5 = (this + 200);
  while (v6 != v5)
  {
    if ((ot::Utils::Slaac::SlaacAddress::IsInUse(v6) & 1) != 0 && ot::Utils::Slaac::SlaacAddress::IsDeprecating(v6))
    {
      Address = ot::Ip6::Netif::UnicastAddress::GetAddress(v6);
      if (ot::Ip6::Address::PrefixMatch(a2, Address) >= 64)
      {
        *a3 = ot::Utils::Slaac::SlaacAddress::GetDomainId(v6);
        return 0;
      }
    }

    v6 = (v6 + 40);
  }

  return v7;
}

uint64_t ot::Utils::Slaac::SlaacAddress::IsInUse(ot::Utils::Slaac::SlaacAddress *this)
{
  return (*(this + 9) >> 1) & 1;
}

{
  return ot::Utils::Slaac::SlaacAddress::IsInUse(this);
}

BOOL ot::Utils::Slaac::SlaacAddress::IsDeprecating(ot::Utils::Slaac::SlaacAddress *this)
{
  return ot::Time::GetValue((this + 36)) != 0;
}

{
  return ot::Utils::Slaac::SlaacAddress::IsDeprecating(this);
}

uint64_t ot::Utils::Slaac::SlaacAddress::GetDomainId(ot::Utils::Slaac::SlaacAddress *this)
{
  return *(this + 32);
}

{
  return ot::Utils::Slaac::SlaacAddress::GetDomainId(this);
}

BOOL ot::Utils::Slaac::IsSlaac(ot::Utils::Slaac *this, const ot::NetworkData::OnMeshPrefixConfig *a2)
{
  v4 = 0;
  if ((*(a2 + 17) & 8) != 0)
  {
    v4 = 0;
    if ((*(a2 + 17) & 0x400) == 0)
    {
      Prefix = ot::NetworkData::OnMeshPrefixConfig::GetPrefix(a2);
      return ot::Ip6::Prefix::GetLength(Prefix) == 64;
    }
  }

  return v4;
}

uint64_t ot::Utils::Slaac::IsFiltered(ot::Utils::Slaac *this, const ot::NetworkData::OnMeshPrefixConfig *a2)
{
  if (*(this + 1))
  {
    v4 = *(this + 1);
    Instance = ot::InstanceLocator::GetInstance(this);
    Prefix = ot::NetworkData::OnMeshPrefixConfig::GetPrefix(a2);
    v6 = v4(Instance, Prefix);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t ot::Utils::Slaac::HandleNotifierEvents(uint64_t result, uint64_t a2)
{
  v3 = a2;
  v2 = result;
  if (*result)
  {
    if (ot::Events::Contains(&v3, 512))
    {
      ot::Utils::Slaac::RemoveOrDeprecateAddresses(v2);
      return ot::Utils::Slaac::AddAddresses(v2);
    }

    else
    {
      result = ot::Events::Contains(&v3, 2);
      if (result)
      {
        return ot::Utils::Slaac::AddAddresses(v2);
      }
    }
  }

  return result;
}

BOOL ot::Utils::Slaac::DoesConfigMatchNetifAddr(ot::Utils::Slaac *this, const ot::NetworkData::OnMeshPrefixConfig *a2, const ot::Ip6::Netif::UnicastAddress *a3)
{
  if ((*(this + 17) & 0x80) != 0 && *(a2 + 16) == *(this + 16) || (v6 = 0, (*(this + 17) & 0x80) == 0) && (v6 = 0, *(a2 + 16) == 128))
  {
    Address = ot::Ip6::Netif::UnicastAddress::GetAddress(a2);
    Prefix = ot::NetworkData::OnMeshPrefixConfig::GetPrefix(this);
    return ot::Ip6::Address::MatchesPrefix(Address, Prefix);
  }

  return v6;
}

uint64_t ot::Utils::Slaac::RemoveAddress(ot::Utils::Slaac *this, ot::Utils::Slaac::SlaacAddress *a2)
{
  ot::Utils::Slaac::LogAddress(this, 1u, a2);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  ot::Ip6::Netif::RemoveUnicastAddress(v2, a2);
  return ot::Utils::Slaac::SlaacAddress::MarkAsNotInUse(a2);
}

uint64_t ot::Utils::Slaac::DeprecateAddress(ot::Utils::Slaac *this, ot::Utils::Slaac::SlaacAddress *a2)
{
  v11 = this;
  v10 = a2;
  ot::Utils::Slaac::LogAddress(this, 2u, a2);
  v5 = v10;
  Now = ot::TimerMilli::GetNow(v2);
  v9 = ot::Time::operator+(&Now, 300000);
  ot::Utils::Slaac::SlaacAddress::SetExpirationTime(v5, v9);
  ExpirationTime = ot::Utils::Slaac::SlaacAddress::GetExpirationTime(v10);
  ot::TimerMilli::FireAtIfEarlier(this + 4, ExpirationTime);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  return ot::Ip6::Netif::UpdatePreferredFlagOn(v3, v10, 0);
}

void ot::Utils::Slaac::LogAddress(uint64_t a1, unsigned __int8 a2, ot::Ip6::Netif::UnicastAddress *a3)
{
  v10 = ot::Utils::Slaac::LogAddress(ot::Utils::Slaac::Action,ot::Utils::Slaac::SlaacAddress const&)::kActionStrings[a2];
  Address = ot::Ip6::Netif::UnicastAddress::GetAddress(a3);
  ot::Ip6::Address::ToString(Address, v11);
  ot::String<(unsigned short)40>::AsCString(v11);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Slaac", "%s %s", v4, v5, v6, v7, v8, v9, v10);
}

_DWORD *ot::Utils::Slaac::SlaacAddress::SetExpirationTime(uint64_t a1, int a2)
{
  *(a1 + 36) = a2;
  result = ot::Time::GetValue((a1 + 36));
  if (!result)
  {
    return ot::Time::SetValue((a1 + 36), 1);
  }

  return result;
}

{
  return ot::Utils::Slaac::SlaacAddress::SetExpirationTime(a1, a2);
}

uint64_t ot::Utils::Slaac::SlaacAddress::GetExpirationTime(ot::Utils::Slaac::SlaacAddress *this)
{
  return *(this + 9);
}

{
  return ot::Utils::Slaac::SlaacAddress::GetExpirationTime(this);
}

uint64_t ot::Utils::Slaac::SlaacAddress::MarkAsNotInUse(uint64_t this)
{
  *(this + 18) &= ~2u;
  return this;
}

{
  return ot::Utils::Slaac::SlaacAddress::MarkAsNotInUse(this);
}

_DWORD *ot::Utils::Slaac::SlaacAddress::MarkAsNotDeprecating(ot::Utils::Slaac::SlaacAddress *this)
{
  return ot::Time::SetValue(this + 9, 0);
}

{
  return ot::Utils::Slaac::SlaacAddress::MarkAsNotDeprecating(this);
}

void ot::Utils::Slaac::AddAddressFor(ot::Utils::Slaac *this, const ot::NetworkData::OnMeshPrefixConfig *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = this;
  v26 = a2;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = this + 40;
  v21 = (this + 40);
  v20 = (this + 200);
  while (v21 != v20)
  {
    v19 = v21;
    if ((ot::Utils::Slaac::SlaacAddress::IsInUse(v21) & 1) == 0)
    {
      v25 = v19;
      break;
    }

    if (ot::Utils::Slaac::SlaacAddress::IsDeprecating(v19))
    {
      v15 = 1;
      if (v25)
      {
        ExpirationTime = ot::Utils::Slaac::SlaacAddress::GetExpirationTime(v19);
        v17 = ot::Utils::Slaac::SlaacAddress::GetExpirationTime(v25);
        v15 = ot::Time::operator<(&ExpirationTime, &v17);
      }

      if (v15)
      {
        v25 = v19;
      }
    }

    v21 = (v21 + 40);
  }

  if (v25)
  {
    if (ot::Utils::Slaac::SlaacAddress::IsInUse(v25))
    {
      ot::Utils::Slaac::RemoveAddress(this, v25);
    }

    ot::Utils::Slaac::SlaacAddress::MarkAsNotDeprecating(v25);
    v14 = v25;
    if ((*(v26 + 17) & 0x80) != 0)
    {
      v13 = *(ot::NetworkData::OnMeshPrefixConfig::GetPrefix(v26) + 16);
      ot::Ip6::Netif::UnicastAddress::InitAsSlaacOrigin(v14, v13, (*(v26 + 17) & 4) != 0);
    }

    else
    {
      ot::Ip6::Netif::UnicastAddress::InitAsSlaacOrigin(v25, 128, (*(v26 + 17) & 4) != 0);
    }

    Address = ot::Ip6::Netif::UnicastAddress::GetAddress(v25);
    Prefix = ot::NetworkData::OnMeshPrefixConfig::GetPrefix(v26);
    ot::Ip6::Address::SetPrefix(Address, Prefix);
    v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    v9 = ot::NetworkData::OnMeshPrefixConfig::GetPrefix(v26);
    ot::NetworkData::NetworkData::FindDomainIdFor(v12, v9, &v23);
    IgnoreError();
    ot::Utils::Slaac::SlaacAddress::SetDomainId(v25, v23);
    ot::Utils::Slaac::GenerateIid(this, v25, &v24);
    IgnoreError();
    ot::Utils::Slaac::LogAddress(this, 0, v25);
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
    ot::Ip6::Netif::AddUnicastAddress(v10, v25);
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("Slaac", "Failed to add - already have max %u addresses", a3, a4, a5, a6, a7, a8, 4);
  }
}

uint64_t ot::Utils::Slaac::SlaacAddress::SetDomainId(uint64_t this, char a2)
{
  *(this + 32) = a2;
  return this;
}

{
  return ot::Utils::Slaac::SlaacAddress::SetDomainId(this, a2);
}

uint64_t ot::Utils::Slaac::GenerateIid(ot::Utils::Slaac *this, ot::Ip6::Netif::UnicastAddress *a2, unsigned __int8 *a3)
{
  v23 = this;
  v22 = a2;
  v21 = a3;
  v20 = 1;
  v19 = 1851879543;
  ot::Crypto::Sha256::Sha256(v18);
  ot::Utils::Slaac::GetIidSecretKey(this, v25);
  for (i = 0; i < 0x100u; ++i)
  {
    ot::Crypto::Sha256::Start(v18);
    ot::Crypto::Sha256::Update(v18, v22, ((*(v22 + 16) + 7) / 8));
    ot::Crypto::Sha256::Update<unsigned char [4]>(v18, &v19);
    ot::Crypto::Sha256::Update<unsigned char>(v18, v21);
    ot::Crypto::Sha256::Update<ot::Utils::Slaac::IidSecretKey>(v18, v25);
    ot::Crypto::Sha256::Finish(v18, v24);
    Address = ot::Ip6::Netif::UnicastAddress::GetAddress(v22);
    Iid = ot::Ip6::Address::GetIid(Address);
    ot::Crypto::Sha256::Hash::GetBytes(v24);
    ot::Ip6::InterfaceIdentifier::SetBytes(Iid, v10);
    v11 = ot::Ip6::Netif::UnicastAddress::GetAddress(v22);
    v12 = ot::Ip6::Address::GetIid(v11);
    if (!ot::Ip6::InterfaceIdentifier::IsReserved(v12))
    {
      v20 = 0;
      goto LABEL_7;
    }

    ++*v21;
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)2>("Slaac", "Failed to generate a non-reserved IID after %d attempts", v3, v4, v5, v6, v7, v8, 0);
LABEL_7:
  v14 = v20;
  ot::Crypto::Sha256::~Sha256(v18);
  return v14;
}

void ot::Utils::Slaac::GetIidSecretKey(ot::InstanceLocator *a1, ot::Random::Crypto *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(a1);
  if (ot::Settings::Read<ot::SettingsBase::SlaacIidSecretKey>(v2, a2))
  {
    if (ot::Random::Crypto::Fill<ot::Utils::Slaac::IidSecretKey>(a2))
    {
      ot::Random::Crypto::Fill<ot::Utils::Slaac::IidSecretKey>(a2);
      IgnoreError();
    }

    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(a1);
    ot::Settings::Save<ot::SettingsBase::SlaacIidSecretKey>(v3, a2);
    IgnoreError();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Slaac", "Generated and saved secret key", v4, v5, v6, v7, v8, v9, a1);
  }
}

uint64_t ot::Crypto::Sha256::Update<unsigned char [4]>(ot::Crypto::Sha256 *a1, uint64_t a2)
{
  return ot::Crypto::Sha256::Update(a1, a2, 4u);
}

{
  return ot::Crypto::Sha256::Update<unsigned char [4]>(a1, a2);
}

uint64_t ot::Crypto::Sha256::Update<unsigned char>(ot::Crypto::Sha256 *a1, uint64_t a2)
{
  return ot::Crypto::Sha256::Update(a1, a2, 1u);
}

{
  return ot::Crypto::Sha256::Update<unsigned char>(a1, a2);
}

uint64_t ot::Crypto::Sha256::Update<ot::Utils::Slaac::IidSecretKey>(ot::Crypto::Sha256 *a1, uint64_t a2)
{
  return ot::Crypto::Sha256::Update(a1, a2, 0x20u);
}

{
  return ot::Crypto::Sha256::Update<ot::Utils::Slaac::IidSecretKey>(a1, a2);
}

uint64_t ot::Settings::Read<ot::SettingsBase::SlaacIidSecretKey>(ot::InstanceLocator *a1, void *a2)
{
  return ot::Settings::ReadEntry(a1, 7u, a2, 0x20u);
}

{
  return ot::Settings::Read<ot::SettingsBase::SlaacIidSecretKey>(a1, a2);
}

uint64_t ot::Random::Crypto::Fill<ot::Utils::Slaac::IidSecretKey>(ot::Random::Crypto *a1)
{
  return ot::Random::Crypto::FillBuffer(a1, 0x20);
}

{
  return ot::Random::Crypto::Fill<ot::Utils::Slaac::IidSecretKey>(a1);
}

uint64_t ot::Settings::Save<ot::SettingsBase::SlaacIidSecretKey>(ot::InstanceLocator *a1, ot::SettingsBase::NetworkInfo *a2)
{
  return ot::Settings::SaveEntry(a1, 7, a2, v3, 0x20u);
}

{
  return ot::Settings::Save<ot::SettingsBase::SlaacIidSecretKey>(a1, a2);
}

uint64_t ot::Hdlc::Encoder::Encoder(uint64_t this, ot::Spinel::FrameWritePointer *a2)
{
  *this = a2;
  *(this + 8) = 0;
  return this;
}

uint64_t ot::Spinel::FrameWritePointer::WriteByte(ot::Spinel::FrameWritePointer *this, char a2)
{
  if (ot::Spinel::FrameWritePointer::CanWrite(this, 1u))
  {
    v2 = (*this)++;
    *v2 = a2;
    --*(this + 4);
    return 0;
  }

  else
  {
    return 3;
  }
}

{
  return ot::Spinel::FrameWritePointer::WriteByte(this, a2);
}

uint64_t ot::Hdlc::Encoder::Encode(ot::Spinel::FrameWritePointer **this, unsigned __int8 a2)
{
  v4 = 0;
  if (!ot::Hdlc::HdlcByteNeedsEscape(a2))
  {
    v4 = ot::Spinel::FrameWritePointer::WriteByte(*this, a2);
    if (v4)
    {
      return v4;
    }

LABEL_6:
    *(this + 4) = ot::Hdlc::UpdateFcs(*(this + 4), a2);
    return v4;
  }

  if (ot::Spinel::FrameWritePointer::CanWrite(*this, 2u))
  {
    ot::Spinel::FrameWritePointer::WriteByte(*this, 125);
    ot::Spinel::FrameWritePointer::WriteByte(*this, a2 ^ 0x20);
    goto LABEL_6;
  }

  return 3;
}

BOOL ot::Spinel::FrameWritePointer::CanWrite(ot::Spinel::FrameWritePointer *this, unsigned __int16 a2)
{
  return *(this + 4) >= a2;
}

{
  return ot::Spinel::FrameWritePointer::CanWrite(this, a2);
}

uint64_t ot::Hdlc::Encoder::Encode(ot::Spinel::FrameWritePointer **this, unsigned __int8 *a2, __int16 a3)
{
  *&v9[4] = 0;
  *v9 = *(this + 4);
  v8 = **this;
  do
  {
    if (!a3--)
    {
      break;
    }

    v4 = a2++;
    *&v9[2] = ot::Hdlc::Encoder::Encode(this, *v4);
  }

  while (!*&v9[2]);
  if (*&v9[2])
  {
    v5 = *this;
    *v5 = v8;
    *(v5 + 4) = WORD4(v8);
    *(this + 4) = *v9;
  }

  return *&v9[2];
}

uint64_t ot::Hdlc::Encoder::EndFrame(__int128 **this)
{
  v5 = **this;
  v4 = *(this + 4);
  v6 = ot::Hdlc::Encoder::Encode(this, ~v4);
  if (!v6)
  {
    v6 = ot::Hdlc::Encoder::Encode(this, ~HIBYTE(v4));
    if (!v6)
    {
      v6 = ot::Spinel::FrameWritePointer::WriteByte(*this, 126);
    }
  }

  if (v6)
  {
    v1 = *this;
    *v1 = v5;
    *(v1 + 4) = WORD4(v5);
    *(this + 4) = v4;
  }

  return v6;
}

uint64_t ot::Hdlc::Decoder::Decoder(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 34) = 0;
  return this;
}

void *ot::Hdlc::Decoder::Init(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  return result;
}

uint64_t ot::Hdlc::Decoder::Reset(uint64_t this)
{
  *this = 0;
  *(this + 32) = 0;
  *(this + 34) = 0;
  return this;
}

uint64_t ot::Hdlc::Decoder::DecodeByPass(ot::Hdlc::Decoder *this, char *a2, __int16 a3)
{
  *(this + 17) = 0;
  while (a3--)
  {
    v4 = a2++;
    v7 = *v4;
    if (!ot::Spinel::FrameWritePointer::CanWrite(*(this + 1), 1u))
    {
      break;
    }

    ot::Spinel::FrameWritePointer::WriteByte(*(this + 1), v7);
    ++*(this + 17);
    *this = 1;
  }

  *(this + 17) = 0;
  *this = 1;
  *(this + 16) = -1;
  return (*(this + 2))(*(this + 3), 0);
}

uint64_t ot::Hdlc::Decoder::Decode(uint64_t this, char *a2, __int16 a3)
{
  v6 = this;
  while (a3--)
  {
    v4 = a2++;
    v8 = *v4;
    v5 = *v6;
    if (*v6)
    {
      if (v5 == 1)
      {
        if (v8 == 125)
        {
          *v6 = 2;
        }

        else if (v8 == 126)
        {
          if (*(v6 + 34))
          {
            v7 = 6;
            if (*(v6 + 34) >= 2u && *(v6 + 32) == 61624)
            {
              ot::Spinel::FrameWritePointer::UndoLastWrites(*(v6 + 8), 2u);
              v7 = 0;
            }

            this = (*(v6 + 16))(*(v6 + 24), v7);
          }

          *(v6 + 34) = 0;
          *(v6 + 32) = -1;
        }

        else if (ot::Spinel::FrameWritePointer::CanWrite(*(v6 + 8), 1u))
        {
          *(v6 + 32) = ot::Hdlc::UpdateFcs(*(v6 + 32), v8);
          this = ot::Spinel::FrameWritePointer::WriteByte(*(v6 + 8), v8);
          ++*(v6 + 34);
        }

        else
        {
LABEL_25:
          this = (*(v6 + 16))(*(v6 + 24), 3);
          *v6 = 0;
        }
      }

      else if (v5 == 2)
      {
        if (!ot::Spinel::FrameWritePointer::CanWrite(*(v6 + 8), 1u))
        {
          goto LABEL_25;
        }

        v9 = v8 ^ 0x20;
        *(v6 + 32) = ot::Hdlc::UpdateFcs(*(v6 + 32), v9);
        this = ot::Spinel::FrameWritePointer::WriteByte(*(v6 + 8), v9);
        ++*(v6 + 34);
        *v6 = 1;
      }
    }

    else if (v8 == 126)
    {
      *v6 = 1;
      *(v6 + 34) = 0;
      *(v6 + 32) = -1;
    }
  }

  return this;
}

uint64_t ot::Spinel::FrameWritePointer::UndoLastWrites(uint64_t this, unsigned __int16 a2)
{
  *this -= a2;
  *(this + 8) += a2;
  return this;
}

{
  return ot::Spinel::FrameWritePointer::UndoLastWrites(this, a2);
}

char *otExitCodeToString(char a1)
{
  switch(a1)
  {
    case 0:
      return "Success";
    case 1:
      return "Failure";
    case 2:
      return "InvalidArgument";
    case 3:
      return "RadioSpinelIncompatible";
    case 4:
      return "RadioSpinelReset";
    case 5:
      v1 = __error();
      return strerror(*v1);
    case 6:
      return "RadioSpinelNoResponse";
    default:
      __assert_rtn("otExitCodeToString", "exit_code.c", 79, "false");
  }
}

void *ot::Url::Url::Url(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t ot::Url::Url::Init(ot::Url::Url *this, char *a2)
{
  v8 = 0;
  *(this + 3) = &a2[strlen(a2)];
  *this = a2;
  __str = strstr[abi:dn200100](a2, "://");
  if (__str)
  {
    *__str = 0;
    *(this + 1) = __str + 3;
    __stra = strstr[abi:dn200100](__str + 3, "?");
    if (__stra)
    {
      __strb = __stra + 1;
      *(this + 2) = __strb;
      for (i = strtok(__strb, "&"); i; i = strtok(0, "&"))
      {
        *(i - 1) = 0;
      }
    }

    else
    {
      *(this + 2) = *(this + 3);
    }
  }

  else
  {
    return 6;
  }

  return v8;
}

char *ot::Url::Url::GetValue(ot::Url::Url *this, const char *a2, const char *a3)
{
  v7 = 0;
  __n = strlen(a2);
  if (!a3)
  {
    __s2 = *(this + 2);
    goto LABEL_7;
  }

  if (a3 > *(this + 2) && a3 < *(this + 3))
  {
    __s2 = &a3[strlen(a3) + 1];
LABEL_7:
    while (__s2 < *(this + 3))
    {
      if (!strncmp(a2, __s2, __n))
      {
        if (__s2[__n] == 61)
        {
          return &__s2[__n + 1];
        }

        if (!__s2[__n])
        {
          return &__s2[__n];
        }
      }

      __s2 += strlen(__s2) + 1;
    }
  }

  return v7;
}

uint64_t ot::Url::Url::ParseUint32(ot::Url::Url *this, const char *a2, unsigned int *a3)
{
  v6 = 0;
  __str = ot::Url::Url::GetValue(this, a2, 0);
  if (__str)
  {
    v4 = strtoll(__str, 0, 0);
    if (v4 < 0x100000000)
    {
      *a3 = v4;
    }

    else
    {
      return 7;
    }
  }

  else
  {
    return 23;
  }

  return v6;
}

uint64_t ot::Url::Url::ParseUint16(ot::Url::Url *this, const char *a2, unsigned __int16 *a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  v5 = 0;
  v4 = 0;
  v5 = ot::Url::Url::ParseUint32(this, a2, &v4);
  if (!v5)
  {
    if (v4 < 0x10000)
    {
      *v6 = v4;
    }

    else
    {
      return 7;
    }
  }

  return v5;
}

uint64_t ot::Url::Url::ParseUint8(ot::Url::Url *this, const char *a2, unsigned __int8 *a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  v5 = 0;
  v4 = 0;
  v5 = ot::Url::Url::ParseUint32(this, a2, &v4);
  if (!v5)
  {
    if (v4 <= 0xFF)
    {
      *v6 = v4;
    }

    else
    {
      return 7;
    }
  }

  return v5;
}

uint64_t ot::Url::Url::ParseInt32(ot::Url::Url *this, const char *a2, int *a3)
{
  v6 = 0;
  __str = ot::Url::Url::GetValue(this, a2, 0);
  if (__str)
  {
    v4 = strtoll(__str, 0, 0);
    if (v4 >= 0xFFFFFFFF80000000 && v4 <= 0x7FFFFFFF)
    {
      *a3 = v4;
    }

    else
    {
      return 7;
    }
  }

  else
  {
    return 23;
  }

  return v6;
}

uint64_t ot::Url::Url::ParseInt16(ot::Url::Url *this, const char *a2, __int16 *a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  v5 = 0;
  v4 = 0;
  v5 = ot::Url::Url::ParseInt32(this, a2, &v4);
  if (!v5)
  {
    if (v4 >= -32768 && v4 < 0x8000)
    {
      *v6 = v4;
    }

    else
    {
      return 7;
    }
  }

  return v5;
}

uint64_t ot::Url::Url::ParseInt8(ot::Url::Url *this, const char *a2, signed __int8 *a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  v5 = 0;
  v4 = 0;
  v5 = ot::Url::Url::ParseInt32(this, a2, &v4);
  if (!v5)
  {
    if (v4 >= -128 && v4 <= 127)
    {
      *v6 = v4;
    }

    else
    {
      return 7;
    }
  }

  return v5;
}

uint64_t otbr::Ncp::NcpNetworkProperties::NcpNetworkProperties(uint64_t this, uint64_t *a2)
{
  *this = &off_1004CDAE8;
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 24)) = a2[1];
  *(this + 8) = 0;
  return this;
}

uint64_t otbr::Ncp::NcpNetworkProperties::NcpNetworkProperties(uint64_t this)
{
  *this = off_1004CD790;
  *(this + 16) = &off_1004CD7D0;
  *(this + 8) = 0;
  return this;
}

void otbr::Ncp::NcpHost::NcpHost(otbr::Ncp::NcpHost *this, const char *a2)
{
  otbr::MainloopProcessor::MainloopProcessor(this);
}

{
  *(this + 1) = &off_1004CDB10;
  otbr::MainloopProcessor::MainloopProcessor(this);
}

void *otbr::Ncp::NcpHost::Init(otbr::Ncp::NcpHost *this)
{
  otSysInit(this + 40);
  v2 = *(this + 4);

  return otbr::Ncp::NcpSpinel::Init(this + 12, v2, this + 16);
}

void *non-virtual thunk tootbr::Ncp::NcpHost::Init(otbr::Ncp::NcpHost *this)
{
  otSysInit(this + 32);
  v2 = *(this + 3);

  return otbr::Ncp::NcpSpinel::Init(this + 11, v2, this + 8);
}

void otbr::Ncp::NcpHost::Deinit(otbr::Ncp::NcpHost *this)
{
  v1 = otbr::Ncp::NcpSpinel::Deinit(this + 12);

  otSysDeinit(v1);
}

void non-virtual thunk tootbr::Ncp::NcpHost::Deinit(otbr::Ncp::NcpHost *this)
{
  v1 = otbr::Ncp::NcpSpinel::Deinit(this + 11);

  otSysDeinit(v1);
}

uint64_t otbr::Ncp::NcpHost::Update(uint64_t a1, uint64_t a2)
{
  result = (*(**(*(a1 + 32) + 8224) + 32))(*(*(a1 + 32) + 8224));
  if (*(*(a1 + 32) + 8216) != *(a1 + 32) + 18)
  {
    *(a2 + 392) = 0;
    *(a2 + 400) = 0;
  }

  return result;
}

void otbr::Ncp::NcpHost::~NcpHost(otbr::Ncp::NcpHost *this)
{
}

{

  operator delete();
}

void non-virtual thunk tootbr::Ncp::NcpHost::~NcpHost(otbr::Ncp::NcpHost *this)
{
}

{

  operator delete();
}

{
}

{

  operator delete();
}

void otbr::Ncp::NcpHost::~NcpHost(otbr::Ncp::NcpHost *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + 1) = a2[5];
  *(this + *(v3 - 24)) = a2[6];
  *(this + 2) = a2[7];
  otbr::TaskRunner::~TaskRunner((this + 176));

  otbr::MainloopProcessor::~MainloopProcessor(this);
}

otbr::Ncp::NcpSpinel *otbr::Ncp::NcpSpinel::NcpSpinel(otbr::Ncp::NcpSpinel *this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 10) = 1;
  otbr::TaskRunner::TaskRunner((this + 80));
  *(this + 28) = 0;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(this + 12) = v2;
  *(this + 28) = v2;
  *(this + 44) = v2;
  *(this + 60) = v2;
  return this;
}

{
  *this = 0;
  *(this + 4) = 0;
  *(this + 10) = 1;
  otbr::TaskRunner::TaskRunner((this + 80));
  *(this + 28) = 0;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(this + 12) = v2;
  *(this + 28) = v2;
  *(this + 44) = v2;
  *(this + 60) = v2;
  return this;
}

void *otbr::Ncp::NcpSpinel::Init(void *a1, ot::Spinel::SpinelDriver *this, uint64_t a3)
{
  *a1 = this;
  a1[28] = a3;
  return ot::Spinel::SpinelDriver::SetFrameHandler(this, otbr::Ncp::NcpSpinel::HandleReceivedFrame, otbr::Ncp::NcpSpinel::HandleSavedFrame, a1);
}

uint64_t otbr::Ncp::NcpSpinel::SpinelDataUnpack(otbr::Ncp::NcpSpinel *this, const unsigned __int8 *a2, _BYTE *a3, const char *a4, ...)
{
  va_start(va, a4);
  if (spinel_datatype_vunpack(this, a2, a3, va) <= 0)
  {
    return 4294967288;
  }

  else
  {
    return 0;
  }
}

void otbr::Ncp::NcpSpinel::HandleReceivedFrame(otbr::Ncp::NcpSpinel *this, otbr::Ncp::NcpSpinel *a2, unsigned __int8 *a3, const char *a4, BOOL *a5)
{
  if ((a4 & 0xF) != 0)
  {
    otbr::Ncp::NcpSpinel::HandleResponse(this, a4 & 0xF, a2, a3);
  }

  else
  {
    otbr::Ncp::NcpSpinel::HandleNotification(this, a2, a3, a4);
  }

  *a5 = 0;
}