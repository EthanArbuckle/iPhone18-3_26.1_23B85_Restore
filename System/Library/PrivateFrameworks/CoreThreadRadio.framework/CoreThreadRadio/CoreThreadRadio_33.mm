uint64_t ot::Ip6::Udp::IsBackboneSocket(ot::Ip6::Udp *this, const ot::Ip6::Udp::SocketHandle *a2)
{
  v4 = 0;
  for (i = ot::Ip6::Udp::GetBackboneSockets(this); i; i = ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::GetNext(i))
  {
    if (i == a2)
    {
      v4 = 1;
      return v4 & 1;
    }
  }

  return v4 & 1;
}

uint64_t ot::Clearable<ot::Ip6::SockAddr>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::Ip6::SockAddr>(a1);
}

{
  return ot::Clearable<ot::Ip6::SockAddr>::Clear(a1);
}

uint64_t ot::Ip6::Udp::SendDatagram(ot::Ip6::Udp *this, ot::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  ot::Ip6::Udp::Header::SetSourcePort(v7, *(a3 + 16));
  ot::Ip6::Udp::Header::SetDestinationPort(v7, *(v9 + 17));
  Length = ot::Message::GetLength(v10);
  ot::Ip6::Udp::Header::SetLength(v7, Length + 8);
  ot::Ip6::Udp::Header::SetChecksum(v7, 0);
  v8 = ot::Message::Prepend<ot::Ip6::Udp::Header>(v10, v7);
  if (!v8)
  {
    ot::Message::SetOffset(v10, 0);
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Ip6>(this);
    return ot::Ip6::Ip6::SendDatagram(v4, v10, v9, 0x11u);
  }

  return v8;
}

uint64_t ot::Ip6::Udp::IsPortReserved(ot::Ip6::Udp *this)
{
  v3 = 1;
  if (this != 61631)
  {
    v2 = 0;
    if (this >= 0xD11Fu)
    {
      v2 = this <= 0xD132u;
    }

    v3 = v2;
  }

  return v3 & 1;
}

uint64_t ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Add(uint64_t *a1, uint64_t a2)
{
  v4 = 0;
  if (ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Contains(a1, a2))
  {
    return 24;
  }

  else
  {
    ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Push(a1, a2);
  }

  return v4;
}

{
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Add(a1, a2);
}

uint64_t ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Find(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  ot::AsConst<ot::LinkedList<ot::Ip6::Udp::SocketHandle>>();
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Find(v3, a2, a3);
}

{
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Find(a1, a2, a3);
}

uint64_t ot::LinkedList<ot::Ip6::Udp::SocketHandle>::PopAfter(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Pop(a1);
  }

  Next = ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::GetNext(a2);
  if (Next)
  {
    v2 = ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::GetNext(Next);
    ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::SetNext(a2, v2);
  }

  return Next;
}

{
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::PopAfter(a1, a2);
}

uint64_t ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::SetNext(uint64_t result, uint64_t a2)
{
  *(result + 64) = a2;
  return result;
}

{
  return ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::SetNext(result, a2);
}

uint64_t ot::Ip6::Udp::Header::SetSourcePort(ot::Ip6::Udp::Header *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *this = result;
  return result;
}

{
  return ot::Ip6::Udp::Header::SetSourcePort(this, a2);
}

uint64_t ot::Ip6::Udp::Header::SetDestinationPort(ot::Ip6::Udp::Header *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::Ip6::Udp::Header::SetDestinationPort(this, a2);
}

uint64_t ot::Ip6::Udp::Header::SetLength(ot::Ip6::Udp::Header *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 2) = result;
  return result;
}

{
  return ot::Ip6::Udp::Header::SetLength(this, a2);
}

uint64_t ot::Ip6::Udp::Header::SetChecksum(ot::Ip6::Udp::Header *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 3) = result;
  return result;
}

{
  return ot::Ip6::Udp::Header::SetChecksum(this, a2);
}

uint64_t ot::Message::Prepend<ot::Ip6::Udp::Header>(ot::Message *a1, char *a2)
{
  return ot::Message::PrependBytes(a1, a2, 8u);
}

{
  return ot::Message::Prepend<ot::Ip6::Udp::Header>(a1, a2);
}

uint64_t ot::Ip6::Udp::HandleMessage(ot::Ip6::Udp *this, ot::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v17 = this;
  v16 = a2;
  v15 = a3;
  v14 = 0;
  Offset = ot::Message::GetOffset(a2);
  v14 = ot::Message::Read<ot::Ip6::Udp::Header>(a2, Offset, v13);
  if (!v14)
  {
    v14 = ot::Checksum::VerifyMessageChecksum(v16, v15, 0x11);
    if (!v14)
    {
      ot::Message::MoveOffset(v16, 8);
      SourcePort = ot::Ip6::Udp::Header::GetSourcePort(v13);
      *(v15 + 17) = SourcePort;
      DestinationPort = ot::Ip6::Udp::Header::GetDestinationPort(v13);
      *(v15 + 16) = DestinationPort;
      v12[1] = this + 8;
      v12[0] = ot::LinkedList<ot::Ip6::Udp::Receiver>::begin(this + 8);
      v11 = ot::LinkedList<ot::Ip6::Udp::Receiver>::end();
      while (ot::ItemPtrIterator<ot::Ip6::Udp::Receiver,ot::LinkedList<ot::Ip6::Udp::Receiver>::Iterator>::operator!=(v12, &v11))
      {
        v10 = ot::ItemPtrIterator<ot::Ip6::Udp::Receiver,ot::LinkedList<ot::Ip6::Udp::Receiver>::Iterator>::operator*(v12);
        if (ot::Ip6::Udp::Receiver::HandleMessage(v10, v16, v15))
        {
          return v14;
        }

        ot::ItemPtrIterator<ot::Ip6::Udp::Receiver,ot::LinkedList<ot::Ip6::Udp::Receiver>::Iterator>::operator++(v12);
      }

      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(this);
      if (!ot::AppMetricsManager::HasAppPort(v6, v13))
      {
        ot::Ip6::Udp::HandlePayload(this, v16, v15);
      }
    }
  }

  return v14;
}

uint64_t ot::LinkedList<ot::Ip6::Udp::Receiver>::begin(uint64_t a1)
{
  Head = ot::LinkedList<ot::Ip6::Udp::Receiver>::GetHead(a1);
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v3, Head);
  return v3;
}

{
  return ot::LinkedList<ot::Ip6::Udp::Receiver>::begin(a1);
}

uint64_t ot::LinkedList<ot::Ip6::Udp::Receiver>::end()
{
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v1, 0);
  return v1;
}

{
  return ot::LinkedList<ot::Ip6::Udp::Receiver>::end();
}

BOOL ot::ItemPtrIterator<ot::Ip6::Udp::Receiver,ot::LinkedList<ot::Ip6::Udp::Receiver>::Iterator>::operator!=(void *a1, void *a2)
{
  return *a1 != *a2;
}

{
  return ot::ItemPtrIterator<ot::Ip6::Udp::Receiver,ot::LinkedList<ot::Ip6::Udp::Receiver>::Iterator>::operator!=(a1, a2);
}

uint64_t ot::ItemPtrIterator<ot::Ip6::Udp::Receiver,ot::LinkedList<ot::Ip6::Udp::Receiver>::Iterator>::operator*(uint64_t a1)
{
  return *a1;
}

{
  return ot::ItemPtrIterator<ot::Ip6::Udp::Receiver,ot::LinkedList<ot::Ip6::Udp::Receiver>::Iterator>::operator*(a1);
}

uint64_t ot::Ip6::Udp::Receiver::HandleMessage(ot::Ip6::Udp::Receiver *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  return (*(this + 1))(*(this + 2), a2, a3);
}

{
  return ot::Ip6::Udp::Receiver::HandleMessage(this, a2, a3);
}

uint64_t ot::ItemPtrIterator<ot::Ip6::Udp::Receiver,ot::LinkedList<ot::Ip6::Udp::Receiver>::Iterator>::operator++(uint64_t *a1)
{
  return ot::LinkedList<ot::Ip6::Udp::Receiver>::Iterator::Advance(a1);
}

{
  return ot::ItemPtrIterator<ot::Ip6::Udp::Receiver,ot::LinkedList<ot::Ip6::Udp::Receiver>::Iterator>::operator++(a1);
}

void ot::Ip6::Udp::HandlePayload(ot::Ip6::Udp *this, ot::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = 0;
  v10 = 0;
  if (ot::Ip6::MessageInfo::IsHostInterface(a3))
  {
    BackboneSockets = ot::Ip6::Udp::GetBackboneSockets(this);
    ot::LinkedList<ot::Ip6::Udp::SocketHandle>::FindMatching<ot::Ip6::MessageInfo>(this + 16, BackboneSockets, 0, v12, &v10);
  }

  else
  {
    Head = ot::LinkedList<ot::Ip6::Udp::SocketHandle>::GetHead(this + 16);
    v7 = ot::Ip6::Udp::GetBackboneSockets(this);
    ot::LinkedList<ot::Ip6::Udp::SocketHandle>::FindMatching<ot::Ip6::MessageInfo>(this + 16, Head, v7, v12, &v10);
  }

  v11 = v3;
  if (v3)
  {
    v5 = v13;
    Offset = ot::Message::GetOffset(v13);
    ot::Message::RemoveHeader(v5, Offset);
    if (ot::Message::GetOffset(v13))
    {
      __assert_rtn("HandlePayload", "udp6.cpp", 537, "aMessage.GetOffset() == 0");
    }

    ot::Ip6::Udp::SocketHandle::HandleUdpReceive(v11, v13, v12);
  }
}

void ot::LinkedList<ot::Ip6::Udp::SocketHandle>::FindMatching<ot::Ip6::MessageInfo>(uint64_t a1, ot::Ip6::Udp::SocketHandle *a2, ot::Ip6::Udp::SocketHandle *a3, const ot::Ip6::MessageInfo *a4, ot::Ip6::Udp::SocketHandle **a5)
{
  ot::LinkedList<ot::Ip6::Udp::SocketHandle>::FindMatching<ot::Ip6::MessageInfo>(a1, a2, a3, a4, a5);
  ot::AsNonConst<ot::Ip6::Udp::SocketHandle>();
}

{
  ot::LinkedList<ot::Ip6::Udp::SocketHandle>::FindMatching<ot::Ip6::MessageInfo>(a1, a2, a3, a4, a5);
}

uint64_t ot::Ip6::Udp::SocketHandle::HandleUdpReceive(ot::Ip6::Udp::SocketHandle *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  return (*(this + 5))(*(this + 6), a2, a3);
}

{
  return ot::Ip6::Udp::SocketHandle::HandleUdpReceive(this, a2, a3);
}

uint64_t ot::Ip6::Udp::IsPortInUse(ot::Ip6::Udp *this, unsigned __int16 a2)
{
  v10 = this;
  v9 = a2;
  v8 = 0;
  v7[1] = this + 16;
  v7[0] = ot::LinkedList<ot::Ip6::Udp::SocketHandle>::begin(this + 16);
  v6 = ot::LinkedList<ot::Ip6::Udp::SocketHandle>::end();
  while (ot::ItemPtrIterator<ot::Ip6::Udp::SocketHandle const,ot::LinkedList<ot::Ip6::Udp::SocketHandle>::ConstIterator>::operator!=(v7, &v6))
  {
    v5 = ot::ItemPtrIterator<ot::Ip6::Udp::SocketHandle const,ot::LinkedList<ot::Ip6::Udp::SocketHandle>::ConstIterator>::operator*(v7);
    SockName = ot::Ip6::Udp::SocketHandle::GetSockName(v5);
    Port = ot::Ip6::SockAddr::GetPort(SockName);
    if (Port == v9)
    {
      v8 = 1;
      return v8 & 1;
    }

    ot::ItemPtrIterator<ot::Ip6::Udp::SocketHandle const,ot::LinkedList<ot::Ip6::Udp::SocketHandle>::ConstIterator>::operator++(v7);
  }

  return v8 & 1;
}

uint64_t ot::LinkedList<ot::Ip6::Udp::SocketHandle>::begin(uint64_t a1)
{
  Head = ot::LinkedList<ot::Ip6::Udp::SocketHandle>::GetHead(a1);
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v3, Head);
  return v3;
}

{
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::begin(a1);
}

uint64_t ot::LinkedList<ot::Ip6::Udp::SocketHandle>::end()
{
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v1, 0);
  return v1;
}

{
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::end();
}

BOOL ot::ItemPtrIterator<ot::Ip6::Udp::SocketHandle const,ot::LinkedList<ot::Ip6::Udp::SocketHandle>::ConstIterator>::operator!=(void *a1, void *a2)
{
  return *a1 != *a2;
}

{
  return ot::ItemPtrIterator<ot::Ip6::Udp::SocketHandle const,ot::LinkedList<ot::Ip6::Udp::SocketHandle>::ConstIterator>::operator!=(a1, a2);
}

uint64_t ot::ItemPtrIterator<ot::Ip6::Udp::SocketHandle const,ot::LinkedList<ot::Ip6::Udp::SocketHandle>::ConstIterator>::operator*(uint64_t a1)
{
  return *a1;
}

{
  return ot::ItemPtrIterator<ot::Ip6::Udp::SocketHandle const,ot::LinkedList<ot::Ip6::Udp::SocketHandle>::ConstIterator>::operator*(a1);
}

uint64_t ot::ItemPtrIterator<ot::Ip6::Udp::SocketHandle const,ot::LinkedList<ot::Ip6::Udp::SocketHandle>::ConstIterator>::operator++(uint64_t *a1)
{
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::ConstIterator::Advance(a1);
}

{
  return ot::ItemPtrIterator<ot::Ip6::Udp::SocketHandle const,ot::LinkedList<ot::Ip6::Udp::SocketHandle>::ConstIterator>::operator++(a1);
}

BOOL ot::Ip6::Udp::ShouldUsePlatformUdp(ot::Ip6::Udp *this, unsigned __int16 a2)
{
  v6 = 0;
  if (a2 != 19788)
  {
    v6 = 0;
    if (a2 != 61631)
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
      v6 = 0;
      if (a2 != ot::MeshCoP::BorderAgent::GetUdpProxyPort(v2))
      {
        v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::JoinerRouter>(this);
        v6 = 0;
        if (a2 != ot::MeshCoP::JoinerRouter::GetJoinerUdpPort(v3))
        {
          v6 = 0;
          if (a2 != 547)
          {
            return a2 != 546;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t ot::MeshCoP::BorderAgent::GetUdpProxyPort(ot::MeshCoP::BorderAgent *this)
{
  return *(this + 1);
}

{
  return ot::MeshCoP::BorderAgent::GetUdpProxyPort(this);
}

uint64_t ot::ClearAllBytes<ot::Ip6::SockAddr>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Ip6::SockAddr>(result);
}

void *ot::ClearAllBytes<ot::Ip6::Udp::SocketHandle>(void *a1)
{
  return memset(a1, 0, 0x48uLL);
}

{
  return ot::ClearAllBytes<ot::Ip6::Udp::SocketHandle>(a1);
}

BOOL ot::LinkedList<ot::Ip6::Udp::Receiver>::Contains(uint64_t *a1, uint64_t a2)
{
  v3[2] = a1;
  v3[1] = a2;
  v3[0] = 0;
  return ot::LinkedList<ot::Ip6::Udp::Receiver>::Find(a1, a2, v3) == 0;
}

{
  return ot::LinkedList<ot::Ip6::Udp::Receiver>::Contains(a1, a2);
}

void *ot::LinkedList<ot::Ip6::Udp::Receiver>::Push(uint64_t *a1, void *a2)
{
  result = ot::LinkedListEntry<ot::Ip6::Udp::Receiver>::SetNext(a2, *a1);
  *a1 = a2;
  return result;
}

{
  return ot::LinkedList<ot::Ip6::Udp::Receiver>::Push(a1, a2);
}

uint64_t ot::LinkedList<ot::Ip6::Udp::Receiver>::Find(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = 23;
  *a3 = 0;
  for (i = *a1; i; i = ot::LinkedListEntry<ot::Ip6::Udp::Receiver>::GetNext(i))
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
  return ot::LinkedList<ot::Ip6::Udp::Receiver>::Find(a1, a2, a3);
}

uint64_t ot::LinkedListEntry<ot::Ip6::Udp::Receiver>::GetNext(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

{
  return ot::LinkedListEntry<ot::Ip6::Udp::Receiver>::GetNext(a1);
}

{
  return ot::LinkedListEntry<ot::Ip6::Udp::Receiver>::GetNext(a1);
}

uint64_t ot::LinkedList<ot::Ip6::Udp::Receiver>::Find(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  ot::AsConst<ot::LinkedList<ot::Ip6::Udp::Receiver>>();
  return ot::LinkedList<ot::Ip6::Udp::Receiver>::Find(v3, a2, a3);
}

{
  return ot::LinkedList<ot::Ip6::Udp::Receiver>::Find(a1, a2, a3);
}

uint64_t ot::LinkedList<ot::Ip6::Udp::Receiver>::PopAfter(uint64_t *a1, void *a2)
{
  if (!a2)
  {
    return ot::LinkedList<ot::Ip6::Udp::Receiver>::Pop(a1);
  }

  Next = ot::LinkedListEntry<ot::Ip6::Udp::Receiver>::GetNext(a2);
  if (Next)
  {
    v2 = ot::LinkedListEntry<ot::Ip6::Udp::Receiver>::GetNext(Next);
    ot::LinkedListEntry<ot::Ip6::Udp::Receiver>::SetNext(a2, v2);
  }

  return Next;
}

{
  return ot::LinkedList<ot::Ip6::Udp::Receiver>::PopAfter(a1, a2);
}

void ot::AsConst<ot::LinkedList<ot::Ip6::Udp::Receiver>>()
{
  ;
}

{
  ot::AsConst<ot::LinkedList<ot::Ip6::Udp::Receiver>>();
}

uint64_t ot::LinkedList<ot::Ip6::Udp::Receiver>::Pop(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    *a1 = ot::LinkedListEntry<ot::Ip6::Udp::Receiver>::GetNext(*a1);
  }

  return v2;
}

{
  return ot::LinkedList<ot::Ip6::Udp::Receiver>::Pop(a1);
}

void ot::AsConst<ot::LinkedList<ot::Ip6::Udp::SocketHandle>>()
{
  ;
}

{
  ot::AsConst<ot::LinkedList<ot::Ip6::Udp::SocketHandle>>();
}

uint64_t ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Pop(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    *a1 = ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::GetNext(*a1);
  }

  return v2;
}

{
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Pop(a1);
}

uint64_t ot::LinkedList<ot::Ip6::Udp::Receiver>::GetHead(uint64_t a1)
{
  return *a1;
}

{
  return ot::LinkedList<ot::Ip6::Udp::Receiver>::GetHead(a1);
}

uint64_t ot::LinkedList<ot::Ip6::Udp::Receiver>::Iterator::Advance(uint64_t *a1)
{
  result = ot::LinkedListEntry<ot::Ip6::Udp::Receiver>::GetNext(*a1);
  *a1 = result;
  return result;
}

{
  return ot::LinkedList<ot::Ip6::Udp::Receiver>::Iterator::Advance(a1);
}

void ot::AsNonConst<ot::Ip6::Udp::SocketHandle>()
{
  ;
}

{
  ot::AsNonConst<ot::Ip6::Udp::SocketHandle>();
}

ot::Ip6::Udp::SocketHandle *ot::LinkedList<ot::Ip6::Udp::SocketHandle>::FindMatching<ot::Ip6::MessageInfo>(uint64_t a1, ot::Ip6::Udp::SocketHandle *Next, ot::Ip6::Udp::SocketHandle *a3, const ot::Ip6::MessageInfo *a4, ot::Ip6::Udp::SocketHandle **a5)
{
  *a5 = 0;
  while (Next != a3 && (ot::Ip6::Udp::SocketHandle::Matches(Next, a4) & 1) == 0)
  {
    *a5 = Next;
    Next = ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::GetNext(Next);
  }

  return Next;
}

{
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::FindMatching<ot::Ip6::MessageInfo>(a1, Next, a3, a4, a5);
}

uint64_t ot::LinkedList<ot::Ip6::Udp::SocketHandle>::ConstIterator::Advance(uint64_t *a1)
{
  result = ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::GetNext(*a1);
  *a1 = result;
  return result;
}

{
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::ConstIterator::Advance(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::FactoryDiags::Diags>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::FactoryDiags::Diags>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::FactoryDiags::Diags>(a1);
}

void otPlatRadioReceiveDone(uint64_t a1, ot::Mac::Frame *a2, int a3)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  if (ot::Instance::IsInitialized(v4))
  {
    v3 = ot::Instance::Get<ot::Radio::Callbacks>(v4);
    ot::Radio::Callbacks::HandleReceiveDone(v3, a2, a3);
  }
}

uint64_t ot::Instance::Get<ot::Radio::Callbacks>(uint64_t a1)
{
  return a1 + 35;
}

{
  return ot::Instance::Get<ot::Radio::Callbacks>(a1);
}

uint64_t otPlatRadioTxStarted(uint64_t a1, ot::Mac::TxFrame *a2)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  result = ot::Instance::IsInitialized(v4);
  if (result)
  {
    v3 = ot::Instance::Get<ot::Radio::Callbacks>(v4);
    return ot::Radio::Callbacks::HandleTransmitStarted(v3, a2);
  }

  return result;
}

void otPlatRadioTxDone(uint64_t a1, ot::Mac::TxFrame *a2, ot::Mac::RxFrame *a3, unsigned int a4)
{
  v5 = ot::AsCoreType<otInstance>(a1);
  if (ot::Instance::IsInitialized(v5))
  {
    v4 = ot::Instance::Get<ot::Radio::Callbacks>(v5);
    ot::Radio::Callbacks::HandleTransmitDone(v4, a2, a3, a4);
  }
}

uint64_t otPlatRadioEnergyScanDone(uint64_t a1, char a2)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  result = ot::Instance::IsInitialized(v4);
  if (result)
  {
    v3 = ot::Instance::Get<ot::Radio::Callbacks>(v4);
    return ot::Radio::Callbacks::HandleEnergyScanDone(v3, a2);
  }

  return result;
}

uint64_t otPlatRadioBusLatencyChanged(uint64_t a1)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  result = ot::Instance::IsInitialized(v3);
  if (result)
  {
    v2 = ot::Instance::Get<ot::Radio::Callbacks>(v3);
    return ot::Radio::Callbacks::HandleBusLatencyChanged(v2);
  }

  return result;
}

void otPlatDiagRadioReceiveDone(uint64_t a1, uint64_t a2, int a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Radio::Callbacks>(v3);
  ot::Radio::Callbacks::HandleDiagsReceiveDone(v4, a2, a3);
}

void otPlatDiagRadioTransmitDone(uint64_t a1, uint64_t a2, int a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Radio::Callbacks>(v3);
  ot::Radio::Callbacks::HandleDiagsTransmitDone(v4, a2, a3);
}

ot::AddressResolver::CacheEntry **ot::AddressResolver::AddressResolver(ot::AddressResolver::CacheEntry **this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Pool<ot::AddressResolver::CacheEntry,(unsigned short)512>::Pool(this + 1, a2);
  ot::OwnedPtr<ot::Message>::OwnedPtr(this + 2050);
  ot::OwnedPtr<ot::Message>::OwnedPtr(this + 2051);
  ot::OwnedPtr<ot::Message>::OwnedPtr(this + 2052);
  ot::OwnedPtr<ot::Message>::OwnedPtr(this + 2053);
  ot::Ip6::Icmp::Handler::Handler(this + 2054, ot::AddressResolver::HandleIcmpReceive, this);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Icmp>(this);
  ot::Ip6::Icmp::RegisterHandler(v2, (this + 2054));
  IgnoreError();
  return this;
}

{
  ot::AddressResolver::AddressResolver(this, a2);
  return this;
}

ot::AddressResolver::CacheEntry **ot::Pool<ot::AddressResolver::CacheEntry,(unsigned short)512>::Pool(ot::AddressResolver::CacheEntry **a1, ot::Instance *a2)
{
  ot::Pool<ot::AddressResolver::CacheEntry,(unsigned short)512>::Pool(a1, a2);
  return a1;
}

{
  ot::OwnedPtr<ot::Message>::OwnedPtr(a1);
  v4 = (a1 + 1);
  do
  {
    std::allocator<char>::allocator[abi:dn200100](v4);
    v4 = (v4 + 32);
  }

  while (v4 != (a1 + 2049));
  for (i = (a1 + 1); i != (a1 + 2049); i = (i + 32))
  {
    ot::AddressResolver::CacheEntry::Init(i, a2);
    ot::LinkedList<ot::AddressResolver::CacheEntry>::Push(a1, i);
  }

  return a1;
}

ot::AddressResolver::CacheEntry *ot::AddressResolver::HandleIcmpReceive(ot::AddressResolver::CacheEntry **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = ot::AsCoreType<otMessage>(a2);
  v7 = ot::AsCoreType<otMessageInfo>(a3);
  v4 = ot::AsCoreType<otIcmp6Header>(a4);
  return ot::AddressResolver::HandleIcmpReceive(a1, v6, v7, v4);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Icmp>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Ip6::Icmp>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Icmp>(a1);
}

ot::AddressResolver::CacheEntry *ot::AddressResolver::Clear(ot::AddressResolver::CacheEntry *this)
{
  v3 = this;
  v7[0] = this + 16400;
  v7[1] = this + 16408;
  v7[2] = this + 16416;
  v7[3] = this + 16424;
  for (i = v7; i != &v8; ++i)
  {
    v5 = *i;
    while (1)
    {
      this = ot::LinkedList<ot::AddressResolver::CacheEntry>::Pop(v5);
      v4 = this;
      if (!this)
      {
        break;
      }

      if (v5 == v3 + 2052)
      {
        v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(v3);
        ot::AddressResolver::CacheEntry::GetTarget(v4);
        ot::MeshForwarder::HandleResolved(v2, v1, 2);
      }

      ot::Pool<ot::AddressResolver::CacheEntry,(unsigned short)512>::Free(v3 + 1, v4);
    }
  }

  return this;
}

ot::AddressResolver::CacheEntry *ot::LinkedList<ot::AddressResolver::CacheEntry>::Pop(ot::AddressResolver::CacheEntry **a1)
{
  v2 = *a1;
  if (*a1)
  {
    *a1 = ot::AddressResolver::CacheEntry::GetNext(*a1);
  }

  return v2;
}

{
  return ot::LinkedList<ot::AddressResolver::CacheEntry>::Pop(a1);
}

void ot::AddressResolver::CacheEntry::GetTarget(ot::AddressResolver::CacheEntry *this)
{
  ;
}

{
  ot::AddressResolver::CacheEntry::GetTarget(this);
}

uint64_t ot::Pool<ot::AddressResolver::CacheEntry,(unsigned short)512>::Free(ot::AddressResolver::CacheEntry **a1, uint64_t a2)
{
  return ot::LinkedList<ot::AddressResolver::CacheEntry>::Push(a1, a2);
}

{
  return ot::Pool<ot::AddressResolver::CacheEntry,(unsigned short)512>::Free(a1, a2);
}

uint64_t ot::AddressResolver::GetNextCacheEntry(ot::InstanceLocator *a1, _OWORD *a2, ot::AddressResolver::Iterator *a3)
{
  v15 = 0;
  List = ot::AddressResolver::Iterator::GetList(a3);
  for (i = ot::AddressResolver::Iterator::GetEntry(a3); !i; i = Head)
  {
    if (List)
    {
      if (List == (a1 + 16400))
      {
        List = a1 + 16408;
        Head = ot::LinkedList<ot::AddressResolver::CacheEntry>::GetHead(a1 + 16408);
      }

      else if (List == (a1 + 16408))
      {
        List = a1 + 16416;
        Head = ot::LinkedList<ot::AddressResolver::CacheEntry>::GetHead(a1 + 16416);
      }

      else
      {
        if (List != (a1 + 16416))
        {
          return 23;
        }

        List = a1 + 16424;
        Head = ot::LinkedList<ot::AddressResolver::CacheEntry>::GetHead(a1 + 16424);
      }
    }

    else
    {
      List = a1 + 16400;
      Head = ot::LinkedList<ot::AddressResolver::CacheEntry>::GetHead(a1 + 16400);
    }
  }

  Next = ot::AddressResolver::CacheEntry::GetNext(i);
  ot::AddressResolver::Iterator::SetEntry(a3, Next);
  ot::AddressResolver::Iterator::SetList(a3, List);
  ot::Clearable<ot::AddressResolver::EntryInfo>::Clear(a2);
  ot::AddressResolver::CacheEntry::GetTarget(i);
  *a2 = *v5;
  *(a2 + 8) = ot::AddressResolver::CacheEntry::GetRloc16(i);
  if (List == (a1 + 16400))
  {
    *(a2 + 5) = ot::MapEnum<ot::AddressResolver::EntryInfo::State>(0);
    *(a2 + 24) = *(a2 + 24) & 0xFE | 1;
    *(a2 + 24) = *(a2 + 24) & 0xFB | (4 * ot::AddressResolver::CacheEntry::IsLastTransactionTimeValid(i));
    if (ot::AddressResolver::CacheEntry::IsLastTransactionTimeValid(i))
    {
      *(a2 + 7) = ot::AddressResolver::CacheEntry::GetLastTransactionTime(i);
      v10 = ot::AsCoreType<otIp6Address>((a2 + 2));
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
      MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v6);
      ot::Ip6::Address::SetPrefix(v10, MeshLocalPrefix);
      v11 = ot::AsCoreType<otIp6Address>((a2 + 2));
      MeshLocalIid = ot::AddressResolver::CacheEntry::GetMeshLocalIid(i);
      ot::Ip6::Address::SetIid(v11, MeshLocalIid);
    }
  }

  else
  {
    if (List == (a1 + 16408))
    {
      *(a2 + 5) = ot::MapEnum<ot::AddressResolver::EntryInfo::State>(1);
    }

    else if (List == (a1 + 16416))
    {
      *(a2 + 5) = ot::MapEnum<ot::AddressResolver::EntryInfo::State>(2);
    }

    else
    {
      *(a2 + 5) = ot::MapEnum<ot::AddressResolver::EntryInfo::State>(3);
      *(a2 + 24) = *(a2 + 24) & 0xFD | (2 * ot::AddressResolver::CacheEntry::IsInRampDown(i));
    }

    *(a2 + 24) = *(a2 + 24) & 0xFE | ot::AddressResolver::CacheEntry::CanEvict(i);
    *(a2 + 24) = ot::AddressResolver::CacheEntry::GetTimeout(i);
    *(a2 + 25) = ot::AddressResolver::CacheEntry::GetRetryDelay(i);
  }

  return v15;
}

uint64_t ot::AddressResolver::Iterator::GetList(ot::AddressResolver::Iterator *this)
{
  return *this;
}

{
  return ot::AddressResolver::Iterator::GetList(this);
}

uint64_t ot::AddressResolver::Iterator::GetEntry(ot::AddressResolver::Iterator *this)
{
  return *(this + 1);
}

{
  return ot::AddressResolver::Iterator::GetEntry(this);
}

uint64_t ot::LinkedList<ot::AddressResolver::CacheEntry>::GetHead(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

{
  return ot::LinkedList<ot::AddressResolver::CacheEntry>::GetHead(a1);
}

{
  return ot::LinkedList<ot::AddressResolver::CacheEntry>::GetHead(a1);
}

uint64_t ot::AddressResolver::Iterator::SetEntry(uint64_t this, const ot::AddressResolver::CacheEntry *a2)
{
  *(this + 8) = a2;
  return this;
}

{
  return ot::AddressResolver::Iterator::SetEntry(this, a2);
}

uint64_t ot::AddressResolver::CacheEntry::GetNext(ot::AddressResolver::CacheEntry *this)
{
  if ((*(this + 9) & 0x3FFF) == 0x3FFF)
  {
    return 0;
  }

  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
  CacheEntryPool = ot::AddressResolver::GetCacheEntryPool(v1);
  return ot::Pool<ot::AddressResolver::CacheEntry,(unsigned short)512>::GetEntryAt(CacheEntryPool, *(this + 9) & 0x3FFF);
}

{
  if ((*(this + 9) & 0x3FFF) == 0x3FFF)
  {
    return 0;
  }

  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
  CacheEntryPool = ot::AddressResolver::GetCacheEntryPool(v1);
  return ot::Pool<ot::AddressResolver::CacheEntry,(unsigned short)512>::GetEntryAt(CacheEntryPool, *(this + 9) & 0x3FFF);
}

void *ot::AddressResolver::Iterator::SetList(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  return ot::AddressResolver::Iterator::SetList(result, a2);
}

void *ot::Clearable<ot::AddressResolver::EntryInfo>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::AddressResolver::EntryInfo>(a1);
}

{
  return ot::Clearable<ot::AddressResolver::EntryInfo>::Clear(a1);
}

uint64_t ot::AddressResolver::CacheEntry::GetRloc16(ot::AddressResolver::CacheEntry *this)
{
  return *(this + 8);
}

{
  return ot::AddressResolver::CacheEntry::GetRloc16(this);
}

uint64_t ot::MapEnum<ot::AddressResolver::EntryInfo::State>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<ot::AddressResolver::EntryInfo::State>(result);
}

BOOL ot::AddressResolver::CacheEntry::IsLastTransactionTimeValid(ot::AddressResolver::CacheEntry *this)
{
  return ot::AddressResolver::CacheEntry::GetLastTransactionTime(this) != -1;
}

{
  return ot::AddressResolver::CacheEntry::IsLastTransactionTimeValid(this);
}

uint64_t ot::AddressResolver::CacheEntry::GetLastTransactionTime(ot::AddressResolver::CacheEntry *this)
{
  return *(this + 5);
}

{
  return ot::AddressResolver::CacheEntry::GetLastTransactionTime(this);
}

uint64_t ot::AddressResolver::CacheEntry::GetMeshLocalIid(ot::AddressResolver::CacheEntry *this)
{
  return this + 24;
}

{
  return ot::AddressResolver::CacheEntry::GetMeshLocalIid(this);
}

uint64_t ot::AddressResolver::CacheEntry::IsInRampDown(ot::AddressResolver::CacheEntry *this)
{
  return *(this + 25) & 1;
}

{
  return ot::AddressResolver::CacheEntry::IsInRampDown(this);
}

uint64_t ot::AddressResolver::CacheEntry::CanEvict(ot::AddressResolver::CacheEntry *this)
{
  return *(this + 24) & 1;
}

{
  return ot::AddressResolver::CacheEntry::CanEvict(this);
}

uint64_t ot::AddressResolver::CacheEntry::GetTimeout(ot::AddressResolver::CacheEntry *this)
{
  return *(this + 10);
}

{
  return ot::AddressResolver::CacheEntry::GetTimeout(this);
}

uint64_t ot::AddressResolver::CacheEntry::GetRetryDelay(ot::AddressResolver::CacheEntry *this)
{
  return *(this + 11);
}

{
  return ot::AddressResolver::CacheEntry::GetRetryDelay(this);
}

ot::AddressResolver::CacheEntry *ot::AddressResolver::Remove(ot::AddressResolver::CacheEntry *this, unsigned __int16 a2, char a3)
{
  v5 = this;
  v12[0] = this + 16400;
  v12[1] = this + 16408;
  for (i = v12; i != &v13; ++i)
  {
    v8 = *i;
    v7 = 0;
    while (1)
    {
      this = ot::AddressResolver::GetEntryAfter(v7, v8);
      v6 = this;
      if (!this)
      {
        break;
      }

      if ((a3 & 1) != 0 && (Rloc16 = ot::AddressResolver::CacheEntry::GetRloc16(this), ot::Mle::RouterIdMatch(Rloc16, a2)) || (a3 & 1) == 0 && ot::AddressResolver::CacheEntry::GetRloc16(v6) == a2)
      {
        if (a3)
        {
          v4 = 3;
        }

        else
        {
          v4 = 4;
        }

        ot::AddressResolver::RemoveCacheEntry(v5, v6, v8, v7, v4);
        ot::Pool<ot::AddressResolver::CacheEntry,(unsigned short)512>::Free(v5 + 1, v6);
      }

      else
      {
        v7 = v6;
      }
    }
  }

  return this;
}

uint64_t ot::AddressResolver::GetEntryAfter(ot::AddressResolver::CacheEntry *a1, uint64_t a2)
{
  if (a1)
  {
    return ot::AddressResolver::CacheEntry::GetNext(a1);
  }

  else
  {
    return ot::LinkedList<ot::AddressResolver::CacheEntry>::GetHead(a2);
  }
}

BOOL ot::Mle::RouterIdMatch(ot::Mle *this, unsigned __int16 a2)
{
  v3 = ot::Mle::RouterIdFromRloc16(this);
  return v3 == ot::Mle::RouterIdFromRloc16(a2);
}

{
  return ot::Mle::RouterIdMatch(this, a2);
}

void ot::AddressResolver::RemoveCacheEntry(ot::InstanceLocator *a1, ot::AddressResolver::CacheEntry *a2, ot::AddressResolver::CacheEntry **a3, ot::AddressResolver::CacheEntry *a4, unsigned __int8 a5)
{
  ot::LinkedList<ot::AddressResolver::CacheEntry>::PopAfter(a3, a4);
  if (a3 == (a1 + 16416))
  {
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
    ot::AddressResolver::CacheEntry::GetTarget(a2);
    ot::MeshForwarder::HandleResolved(v6, v5, 2);
  }

  ot::AddressResolver::LogCacheEntryChange(a1, 2u, a5, a2, a3);
}

uint64_t ot::AddressResolver::FindCacheEntry(uint64_t a1, const ot::Ip6::Address *a2, uint64_t *a3, ot::AddressResolver::CacheEntry **a4)
{
  v7 = 0;
  v11[0] = a1 + 16400;
  v11[1] = a1 + 16408;
  v11[2] = a1 + 16416;
  v11[3] = a1 + 16424;
  for (i = v11; i != &v12; ++i)
  {
    *a3 = *i;
    ot::LinkedList<ot::AddressResolver::CacheEntry>::FindMatching<ot::Ip6::Address>(*a3, a2, a4);
    v7 = v4;
    if (v4)
    {
      break;
    }
  }

  return v7;
}

void ot::LinkedList<ot::AddressResolver::CacheEntry>::FindMatching<ot::Ip6::Address>(uint64_t a1, const ot::Ip6::Address *a2, ot::AddressResolver::CacheEntry **a3)
{
  ot::AsConst<ot::LinkedList<ot::AddressResolver::CacheEntry>>();
  ot::LinkedList<ot::AddressResolver::CacheEntry>::FindMatching<ot::Ip6::Address>(v3, a2, a3);
  ot::AsNonConst<ot::AddressResolver::CacheEntry>();
}

{
  ot::LinkedList<ot::AddressResolver::CacheEntry>::FindMatching<ot::Ip6::Address>(a1, a2, a3);
}

ot::AddressResolver::CacheEntry *ot::AddressResolver::Remove(ot::AddressResolver::CacheEntry **a1, const ot::Ip6::Address *a2, unsigned __int8 a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  result = ot::AddressResolver::FindCacheEntry(a1, a2, &v5, &v6);
  v7 = result;
  if (result)
  {
    ot::AddressResolver::RemoveCacheEntry(a1, v7, v5, v6, v8);
    return ot::Pool<ot::AddressResolver::CacheEntry,(unsigned short)512>::Free(a1 + 1, v7);
  }

  return result;
}

BOOL ot::AddressResolver::ReplaceEntriesForRloc16(_BOOL8 this, unsigned __int16 a2, __int16 a3)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v14[0] = this + 16400;
  v14[1] = this + 16408;
  v10 = v14;
  v9 = v14;
  v8 = &v15;
  while (v9 != v8)
  {
    v7 = *v9;
    v6[1] = v7;
    v6[0] = ot::LinkedList<ot::AddressResolver::CacheEntry>::begin(v7);
    v5 = ot::LinkedList<ot::AddressResolver::CacheEntry>::end();
    while (1)
    {
      this = ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator!=(v6, &v5);
      if (!this)
      {
        break;
      }

      v4 = ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator*(v6);
      Rloc16 = ot::AddressResolver::CacheEntry::GetRloc16(v4);
      if (Rloc16 == v12)
      {
        ot::AddressResolver::CacheEntry::SetRloc16(v4, v11);
      }

      ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator++(v6);
    }

    ++v9;
  }

  return this;
}

uint64_t ot::LinkedList<ot::AddressResolver::CacheEntry>::begin(uint64_t a1)
{
  Head = ot::LinkedList<ot::AddressResolver::CacheEntry>::GetHead(a1);
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v3, Head);
  return v3;
}

{
  return ot::LinkedList<ot::AddressResolver::CacheEntry>::begin(a1);
}

uint64_t ot::LinkedList<ot::AddressResolver::CacheEntry>::end()
{
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v1, 0);
  return v1;
}

{
  return ot::LinkedList<ot::AddressResolver::CacheEntry>::end();
}

BOOL ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator!=(void *a1, void *a2)
{
  return *a1 != *a2;
}

{
  return ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator!=(a1, a2);
}

uint64_t ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator*(uint64_t a1)
{
  return *a1;
}

{
  return ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator*(a1);
}

uint64_t ot::AddressResolver::CacheEntry::SetRloc16(uint64_t this, __int16 a2)
{
  *(this + 16) = a2;
  return this;
}

{
  return ot::AddressResolver::CacheEntry::SetRloc16(this, a2);
}

uint64_t ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator++(ot::AddressResolver::CacheEntry **a1)
{
  return ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator::Advance(a1);
}

{
  return ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator++(a1);
}

ot::AddressResolver::CacheEntry *ot::AddressResolver::NewCacheEntry(ot::AddressResolver::CacheEntry **this, char a2)
{
  v10 = 0;
  v13[0] = this + 2051;
  v13[1] = this + 2053;
  v13[2] = this + 2052;
  v13[3] = this + 2050;
  v11 = ot::Pool<ot::AddressResolver::CacheEntry,(unsigned short)512>::Allocate(this + 1);
  if (!v11)
  {
    for (i = v13; i != &v14; ++i)
    {
      v8 = *i;
      v5 = 0;
      v7 = 0;
      for (j = ot::AddressResolver::GetEntryAfter(0, *i); ; j = ot::AddressResolver::GetEntryAfter(v6, v8))
      {
        v6 = j;
        if (!j)
        {
          break;
        }

        if (v8 == (this + 2050) || (ot::AddressResolver::CacheEntry::CanEvict(j) & 1) != 0)
        {
          v11 = v6;
          v10 = v7;
        }

        else
        {
          ++v5;
        }

        v7 = v6;
      }

      if (v11)
      {
        ot::AddressResolver::RemoveCacheEntry(this, v11, v8, v10, 6);
        return v11;
      }

      if ((a2 & 1) != 0 && v8 == (this + 2051) && v5 >= 0x20u)
      {
        return v11;
      }
    }
  }

  return v11;
}

ot::AddressResolver::CacheEntry *ot::Pool<ot::AddressResolver::CacheEntry,(unsigned short)512>::Allocate(ot::AddressResolver::CacheEntry **a1)
{
  return ot::LinkedList<ot::AddressResolver::CacheEntry>::Pop(a1);
}

{
  return ot::Pool<ot::AddressResolver::CacheEntry,(unsigned short)512>::Allocate(a1);
}

ot::AddressResolver::CacheEntry *ot::LinkedList<ot::AddressResolver::CacheEntry>::PopAfter(ot::AddressResolver::CacheEntry **a1, ot::AddressResolver::CacheEntry *a2)
{
  if (!a2)
  {
    return ot::LinkedList<ot::AddressResolver::CacheEntry>::Pop(a1);
  }

  Next = ot::AddressResolver::CacheEntry::GetNext(a2);
  if (Next)
  {
    v2 = ot::AddressResolver::CacheEntry::GetNext(Next);
    ot::AddressResolver::CacheEntry::SetNext(a2, v2);
  }

  return Next;
}

{
  return ot::LinkedList<ot::AddressResolver::CacheEntry>::PopAfter(a1, a2);
}

void ot::AddressResolver::LogCacheEntryChange(uint64_t a1, unsigned __int8 a2, unsigned __int8 a3, ot::AddressResolver::CacheEntry *a4, uint64_t a5)
{
  v14 = ot::AddressResolver::LogCacheEntryChange(ot::AddressResolver::EntryChange,ot::AddressResolver::Reason,ot::AddressResolver::CacheEntry const&,ot::AddressResolver::CacheEntryList *)::kChangeStrings[a2];
  ot::AddressResolver::CacheEntry::GetTarget(a4);
  ot::Ip6::Address::ToString(v5, v18);
  ot::String<(unsigned short)40>::AsCString(v18);
  ot::AddressResolver::CacheEntry::GetRloc16(a4);
  ot::AddressResolver::ListToString(a1, a5);
  v12 = ot::AddressResolver::LogCacheEntryChange(ot::AddressResolver::EntryChange,ot::AddressResolver::Reason,ot::AddressResolver::CacheEntry const&,ot::AddressResolver::CacheEntryList *)::kReasonStrings[a3];
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("AddrResolver", "Cache entry %s: %s, 0x%04x%s%s - %s", v6, v7, v8, v9, v10, v11, v14);
}

uint64_t ot::AddressResolver::UpdateCacheEntry(ot::AddressResolver::CacheEntry **this, const ot::Ip6::Address *a2, unsigned __int16 a3)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  v9 = 0;
  CacheEntry = 0;
  v7 = 0;
  CacheEntry = ot::AddressResolver::FindCacheEntry(this, a2, &v9, &v7);
  if (CacheEntry)
  {
    if (v9 == this + 2050 || v9 == this + 2051)
    {
      Rloc16 = ot::AddressResolver::CacheEntry::GetRloc16(CacheEntry);
      if (Rloc16 == v11)
      {
        return v10;
      }

      ot::AddressResolver::CacheEntry::SetRloc16(CacheEntry, v11);
    }

    else
    {
      ot::LinkedList<ot::AddressResolver::CacheEntry>::PopAfter(v9, v7);
      ot::AddressResolver::CacheEntry::SetRloc16(CacheEntry, v11);
      ot::AddressResolver::CacheEntry::MarkLastTransactionTimeAsInvalid(CacheEntry);
      ot::LinkedList<ot::AddressResolver::CacheEntry>::Push(this + 2050, CacheEntry);
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
      ot::MeshForwarder::HandleResolved(v4, v12, 0);
    }

    ot::AddressResolver::LogCacheEntryChange(this, 1u, 1u, CacheEntry, 0);
    return v10;
  }

  return 23;
}

uint64_t ot::AddressResolver::CacheEntry::MarkLastTransactionTimeAsInvalid(ot::AddressResolver::CacheEntry *this)
{
  return ot::AddressResolver::CacheEntry::SetLastTransactionTime(this, -1);
}

{
  return ot::AddressResolver::CacheEntry::MarkLastTransactionTimeAsInvalid(this);
}

uint64_t ot::LinkedList<ot::AddressResolver::CacheEntry>::Push(ot::AddressResolver::CacheEntry **a1, uint64_t a2)
{
  result = ot::AddressResolver::CacheEntry::SetNext(a2, *a1);
  *a1 = a2;
  return result;
}

{
  return ot::LinkedList<ot::AddressResolver::CacheEntry>::Push(a1, a2);
}

void ot::AddressResolver::UpdateSnoopedCacheEntry(ot::AddressResolver *this, __n128 *a2, __int16 a3, __int16 a4)
{
  v20 = this;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = 0;
  v15 = 0;
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsFullThreadDevice(v4))
  {
    v14 = 0;
    if (ot::AddressResolver::ResolveUsingNetDataServices(this, v19, &v14))
    {
      if (ot::AddressResolver::UpdateCacheEntry(this, v19, v18))
      {
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
        if (!ot::Mle::Mle::HasRloc16(v5, v18))
        {
          v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
          if (!ot::ChildTable::HasMinimalChild(v6, v18))
          {
            v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
            if (ot::Mle::Mle::HasRloc16(v7, v17) || (v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this), ot::ChildTable::HasMinimalChild(v8, v17)))
            {
              v15 = ot::AddressResolver::NewCacheEntry(this, 1);
              if (v15)
              {
                v13[1] = (this + 16408);
                v13[0] = ot::LinkedList<ot::AddressResolver::CacheEntry>::begin(this + 16408);
                v12 = ot::LinkedList<ot::AddressResolver::CacheEntry>::end();
                while (ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator!=(v13, &v12))
                {
                  v11 = ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator*(v13);
                  if ((ot::AddressResolver::CacheEntry::CanEvict(v11) & 1) == 0)
                  {
                    ++v16;
                  }

                  ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator++(v13);
                }

                ot::AddressResolver::CacheEntry::SetTarget(v15, v19);
                ot::AddressResolver::CacheEntry::SetRloc16(v15, v18);
                if (v16 < 0x20u)
                {
                  ot::AddressResolver::CacheEntry::SetCanEvict(v15, 0);
                  ot::AddressResolver::CacheEntry::SetTimeout(v15, 3);
                  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
                  ot::TimeTicker::RegisterReceiver(v9, 2);
                }

                else
                {
                  ot::AddressResolver::CacheEntry::SetCanEvict(v15, 1);
                  ot::AddressResolver::CacheEntry::SetTimeout(v15, 0);
                }

                ot::LinkedList<ot::AddressResolver::CacheEntry>::Push(this + 2051, v15);
                ot::AddressResolver::LogCacheEntryChange(this, 0, 1u, v15, 0);
              }
            }
          }
        }
      }
    }
  }
}

uint64_t ot::AddressResolver::ResolveUsingNetDataServices(ot::AddressResolver *this, const ot::Ip6::Address *a2, unsigned __int16 *a3)
{
  v16 = this;
  v15 = a2;
  v14 = a3;
  v13 = 23;
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(v12);
  ot::NetworkData::Service::DnsSrpUnicast::Info::Info(v10);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  DeviceMode = ot::Mle::Mle::GetDeviceMode(v3);
  if (!ot::Mle::DeviceMode::GetNetworkDataType(&DeviceMode))
  {
    while (1)
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Service::Manager>(this);
      if (ot::NetworkData::Service::Manager::GetNextDnsSrpUnicastInfo(v4, v12, v10))
      {
        break;
      }

      if (v10[18] == 1)
      {
        v7 = v15;
        Address = ot::Ip6::SockAddr::GetAddress(v10);
        if (ot::Equatable<ot::Ip6::Address>::operator==(v7, Address))
        {
          *v14 = v11;
          return 0;
        }
      }
    }
  }

  return v13;
}

__n128 ot::AddressResolver::CacheEntry::SetTarget(__n128 *this, __n128 *a2)
{
  result = *a2;
  *this = *a2;
  return result;
}

uint64_t ot::AddressResolver::CacheEntry::SetCanEvict(uint64_t this, char a2)
{
  *(this + 24) = a2 & 1;
  return this;
}

{
  return ot::AddressResolver::CacheEntry::SetCanEvict(this, a2);
}

uint64_t ot::AddressResolver::CacheEntry::SetTimeout(uint64_t this, __int16 a2)
{
  *(this + 20) = a2;
  return this;
}

{
  return ot::AddressResolver::CacheEntry::SetTimeout(this, a2);
}

BOOL ot::AddressResolver::RestartAddressQueries(ot::AddressResolver *this)
{
  v11 = this;
  ot::LinkedList<ot::AddressResolver::CacheEntry>::GetTail();
  v10 = v1;
  if (v1)
  {
    Head = ot::LinkedList<ot::AddressResolver::CacheEntry>::GetHead(this + 16424);
    ot::AddressResolver::CacheEntry::SetNext(v10, Head);
  }

  else
  {
    v2 = ot::LinkedList<ot::AddressResolver::CacheEntry>::GetHead(this + 16424);
    ot::LinkedList<ot::AddressResolver::CacheEntry>::SetHead(this + 2052, v2);
  }

  ot::LinkedList<ot::AddressResolver::CacheEntry>::Clear(this + 2053);
  v9[1] = (this + 16416);
  v9[0] = ot::LinkedList<ot::AddressResolver::CacheEntry>::begin(this + 16416);
  v8 = ot::LinkedList<ot::AddressResolver::CacheEntry>::end();
  while (1)
  {
    result = ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator!=(v9, &v8);
    if (!result)
    {
      break;
    }

    v7 = ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator*(v9);
    ot::AddressResolver::CacheEntry::GetTarget(v7);
    ot::AddressResolver::SendAddressQuery(this, v5);
    IgnoreError();
    ot::AddressResolver::CacheEntry::SetTimeout(v7, 3);
    ot::AddressResolver::CacheEntry::SetRetryDelay(v7, 8);
    ot::AddressResolver::CacheEntry::SetCanEvict(v7, 0);
    ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator++(v9);
  }

  return result;
}

void ot::LinkedList<ot::AddressResolver::CacheEntry>::GetTail()
{
  ot::AsConst<ot::LinkedList<ot::AddressResolver::CacheEntry>>();
  ot::LinkedList<ot::AddressResolver::CacheEntry>::GetTail(v0);
  ot::AsNonConst<ot::AddressResolver::CacheEntry>();
}

{
  ot::LinkedList<ot::AddressResolver::CacheEntry>::GetTail();
}

void *ot::LinkedList<ot::AddressResolver::CacheEntry>::SetHead(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  return ot::LinkedList<ot::AddressResolver::CacheEntry>::SetHead(result, a2);
}

uint64_t ot::AddressResolver::CacheEntry::SetNext(uint64_t this, ot::AddressResolver::CacheEntry *a2)
{
  v4 = this;
  if (a2)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
    CacheEntryPool = ot::AddressResolver::GetCacheEntryPool(v2);
    this = ot::Pool<ot::AddressResolver::CacheEntry,(unsigned short)512>::GetIndexOf(CacheEntryPool, a2);
    *(v4 + 18) = *(v4 + 18) & 0xC000 | this & 0x3FFF;
  }

  else
  {
    *(this + 18) = *(this + 18) & 0xC000 | 0x3FFF;
  }

  return this;
}

void *ot::LinkedList<ot::AddressResolver::CacheEntry>::Clear(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::LinkedList<ot::AddressResolver::CacheEntry>::Clear(result);
}

uint64_t ot::AddressResolver::SendAddressQuery(ot::AddressResolver *this, const ot::Ip6::Address *a2)
{
  v31 = this;
  v30 = a2;
  v29 = 0;
  v28 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v27, Instance);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v28 = ot::Coap::CoapBase::NewPriorityNonConfirmablePostMessage(v3, 2u);
  if (v28)
  {
    v29 = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v28, v30);
    if (!v29)
    {
      ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToRealmLocalAllRoutersMulticast(v27);
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
      v29 = ot::Coap::CoapBase::SendMessage(v4, v28, v27);
      if (!v29)
      {
        v24 = ot::UriToString<(ot::Uri)2>();
        ot::Ip6::Address::ToString(v30, v33);
        ot::String<(unsigned short)40>::AsCString(v33);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("AddrResolver", "Sent %s for %s", v5, v6, v7, v8, v9, v10, v24);
      }
    }
  }

  else
  {
    v29 = 3;
  }

  v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
  ot::TimeTicker::RegisterReceiver(v11, 2);
  if (v29 && v28)
  {
    ot::Message::Free(v28);
  }

  v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
  if (ot::BackboneRouter::Local::IsPrimary(v12))
  {
    v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
    if (ot::BackboneRouter::Leader::IsDomainUnicast(v13, v30))
    {
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      Rloc16 = ot::Mle::Mle::GetRloc16(v14);
      v23 = ot::UriToString<(ot::Uri)2>();
      ot::UriToString<(ot::Uri)9>();
      ot::Ip6::Address::ToString(v30, v32);
      ot::String<(unsigned short)40>::AsCString(v32);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("AddrResolver", "Extending %s to %s for target %s, rloc16=%04x(self)", v15, v16, v17, v18, v19, v20, v23);
      v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Manager>(this);
      ot::BackboneRouter::Manager::SendBackboneQuery(v21, v30, Rloc16);
      IgnoreError();
    }
  }

  return v29;
}

uint64_t ot::AddressResolver::CacheEntry::SetRetryDelay(uint64_t this, __int16 a2)
{
  *(this + 22) = a2;
  return this;
}

{
  return ot::AddressResolver::CacheEntry::SetRetryDelay(this, a2);
}

uint64_t ot::AddressResolver::LookUp(ot::AddressResolver::CacheEntry **this, const ot::Ip6::Address *a2)
{
  v5 = this;
  v4 = a2;
  v3 = -2;
  ot::AddressResolver::Resolve(this, a2, &v3, 0);
  IgnoreError();
  return v3;
}

uint64_t ot::AddressResolver::Resolve(ot::AddressResolver::CacheEntry **this, __n128 *a2, unsigned __int16 *a3, char a4)
{
  v24 = this;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = 0;
  CacheEntry = 0;
  v18 = 0;
  v17 = 0;
  if (ot::AddressResolver::ResolveUsingNetDataServices(this, a2, a3))
  {
    CacheEntry = ot::AddressResolver::FindCacheEntry(this, v23, &v17, &v18);
    if (!CacheEntry || v17 != this + 2050 && v17 != this + 2051)
    {
      goto LABEL_14;
    }

    ot::LinkedList<ot::AddressResolver::CacheEntry>::PopAfter(v17, v18);
    LOBYTE(v15) = 0;
    if (v17 == this + 2050)
    {
      v15 = !ot::AddressResolver::CacheEntry::IsFreshnessTimeoutZero(CacheEntry);
    }

    if (!v15)
    {
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
      Rloc16 = ot::AddressResolver::CacheEntry::GetRloc16(CacheEntry);
      if (ot::RouterTable::GetNextHop(v14, Rloc16) == 65534)
      {
        ot::Pool<ot::AddressResolver::CacheEntry,(unsigned short)512>::Free(this + 1, CacheEntry);
        CacheEntry = 0;
      }
    }

    if (CacheEntry)
    {
      if (v17 == this + 2051)
      {
        ot::AddressResolver::CacheEntry::MarkLastTransactionTimeAsInvalid(CacheEntry);
      }

      ot::LinkedList<ot::AddressResolver::CacheEntry>::Push(this + 2050, CacheEntry);
      v5 = ot::AddressResolver::CacheEntry::GetRloc16(CacheEntry);
      *v22 = v5;
    }

    else
    {
LABEL_14:
      if (!CacheEntry)
      {
        if ((v21 & 1) == 0)
        {
          v20 = 23;
          goto LABEL_33;
        }

        CacheEntry = ot::AddressResolver::NewCacheEntry(this, 0);
        if (!CacheEntry)
        {
          v20 = 3;
          goto LABEL_33;
        }

        ot::AddressResolver::CacheEntry::SetTarget(CacheEntry, v23);
        ot::AddressResolver::CacheEntry::SetRloc16(CacheEntry, 65534);
        ot::AddressResolver::CacheEntry::SetRetryDelay(CacheEntry, 8);
        ot::AddressResolver::CacheEntry::SetCanEvict(CacheEntry, 0);
        v17 = 0;
      }

      if (v21)
      {
        if (v17 == this + 2052)
        {
          v20 = 9;
        }

        else
        {
          if (v17 == this + 2053)
          {
            if ((ot::AddressResolver::CacheEntry::IsInRampDown(CacheEntry) & 1) == 0)
            {
              v20 = 2;
              goto LABEL_33;
            }

            ot::LinkedList<ot::AddressResolver::CacheEntry>::PopAfter(this + 2053, v18);
          }

          ot::AddressResolver::CacheEntry::SetTimeout(CacheEntry, 3);
          v20 = ot::AddressResolver::SendAddressQuery(this, v23);
          if (v20)
          {
            ot::Pool<ot::AddressResolver::CacheEntry,(unsigned short)512>::Free(this + 1, CacheEntry);
          }

          else
          {
            if (!v17)
            {
              ot::AddressResolver::LogCacheEntryChange(this, 0, 0, CacheEntry, 0);
            }

            ot::LinkedList<ot::AddressResolver::CacheEntry>::Push(this + 2052, CacheEntry);
            v20 = 9;
          }
        }
      }

      else
      {
        v20 = 23;
      }
    }
  }

LABEL_33:
  if (v20 && v20 != 9)
  {
    v6 = otThreadErrorToString(v20);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("AddrResolver", "Error %s while resolving EID-to-RLOC", v7, v8, v9, v10, v11, v12, v6);
  }

  return v20;
}

BOOL ot::AddressResolver::CacheEntry::IsFreshnessTimeoutZero(ot::AddressResolver::CacheEntry *this)
{
  return *(this + 9) >> 14 == 0;
}

{
  return ot::AddressResolver::CacheEntry::IsFreshnessTimeoutZero(this);
}

ot::NetworkData::Service::DnsSrpUnicast::Info *ot::NetworkData::Service::DnsSrpUnicast::Info::Info(ot::NetworkData::Service::DnsSrpUnicast::Info *this)
{
  ot::NetworkData::Service::DnsSrpUnicast::Info::Info(this);
  return this;
}

{
  ot::Ip6::SockAddr::SockAddr(this);
  return this;
}

BOOL ot::Mle::DeviceMode::GetNetworkDataType(ot::Mle::DeviceMode *this)
{
  return (*this & 1) == 0;
}

{
  return ot::Mle::DeviceMode::GetNetworkDataType(this);
}

void ot::AddressResolver::HandleTmf<(ot::Uri)1>(ot::AddressResolver::CacheEntry **a1, ot::Tlv *a2, ot::Ip6::MessageInfo *a3)
{
  v35 = a1;
  v34 = a2;
  v33 = a3;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  CacheEntry = 0;
  v26 = 0;
  if (ot::Coap::Message::IsConfirmablePostRequest(a2) && !ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v34, v32) && !ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)3,ot::Ip6::InterfaceIdentifier>>(v34, v31) && !ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v34, &v30))
  {
    v24 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)6,unsigned int>>(v34, &v29);
    if (v24)
    {
      if (v24 != 23)
      {
        return;
      }

      v29 = 0;
    }

    v23 = ot::UriToString<(ot::Uri)1>();
    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v33);
    Iid = ot::Ip6::Address::GetIid(PeerAddr);
    ot::Ip6::InterfaceIdentifier::GetLocator(Iid);
    ot::Ip6::Address::ToString(v32, v36);
    ot::String<(unsigned short)40>::AsCString(v36);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("AddrResolver", "Received %s from 0x%04x for %s to 0x%04x", v5, v6, v7, v8, v9, v10, v23);
    CacheEntry = ot::AddressResolver::FindCacheEntry(a1, v32, &v28, &v26);
    if (!CacheEntry)
    {
      return;
    }

    if (v28 != a1 + 2050 || !ot::AddressResolver::CacheEntry::IsLastTransactionTimeValid(CacheEntry))
    {
      goto LABEL_16;
    }

    MeshLocalIid = ot::AddressResolver::CacheEntry::GetMeshLocalIid(CacheEntry);
    if (!ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==(MeshLocalIid, v31))
    {
      ot::AddressResolver::SendAddressError(a1, v32, v31, 0);
      return;
    }

    v22 = v29;
    if (v22 < ot::AddressResolver::CacheEntry::GetLastTransactionTime(CacheEntry))
    {
LABEL_16:
      ot::AddressResolver::CacheEntry::SetRloc16(CacheEntry, v30);
      ot::AddressResolver::CacheEntry::SetMeshLocalIid(CacheEntry, v31);
      ot::AddressResolver::CacheEntry::SetLastTransactionTime(CacheEntry, v29);
      ot::AddressResolver::CacheEntry::ResetFreshnessTimeout(CacheEntry);
      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(a1);
      ot::TimeTicker::RegisterReceiver(v12, 2);
      ot::LinkedList<ot::AddressResolver::CacheEntry>::PopAfter(v28, v26);
      ot::LinkedList<ot::AddressResolver::CacheEntry>::Push(a1 + 2050, CacheEntry);
      ot::AddressResolver::LogCacheEntryChange(a1, 1u, 2u, CacheEntry, 0);
      v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
      if (!ot::Coap::CoapBase::SendEmptyAck(v13, v34, v33))
      {
        v14 = ot::UriToString<(ot::Uri)1>();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("AddrResolver", "Sent %s ack", v15, v16, v17, v18, v19, v20, v14);
      }

      v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
      ot::MeshForwarder::HandleResolved(v21, v32, 0);
    }
  }
}

void ot::AddressResolver::SendAddressError(ot::AddressResolver *this, const ot::Ip6::Address *a2, const ot::Ip6::InterfaceIdentifier *a3, __n128 *a4)
{
  v30 = this;
  v29 = a2;
  v28 = a3;
  v27 = a4;
  appended = 0;
  v25 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v24, Instance);
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v25 = ot::Coap::CoapBase::NewMessage(v5);
  if (v25)
  {
    ot::Coap::Message::Init(v25, v27 == 0, 2);
    v22 = v25;
    v6 = ot::PathForUri(0);
    appended = ot::Coap::Message::AppendUriPathOptions(v22, v6);
    if (!appended)
    {
      appended = ot::Coap::Message::SetPayloadMarker(v25);
      if (!appended)
      {
        appended = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v25, v29);
        if (!appended)
        {
          appended = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)3,ot::Ip6::InterfaceIdentifier>>(v25, v28);
          if (!appended)
          {
            if (v27)
            {
              ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(v24, v27);
            }

            else
            {
              ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToRealmLocalAllRoutersMulticast(v24);
            }

            v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
            appended = ot::Coap::CoapBase::SendMessage(v7, v25, v24);
            if (!appended)
            {
              v21 = ot::UriToString<(ot::Uri)0>();
              ot::Ip6::Address::ToString(v29, v31);
              ot::String<(unsigned short)40>::AsCString(v31);
              ot::Logger::LogAtLevel<(ot::LogLevel)4>("AddrResolver", "Sent %s for target %s", v8, v9, v10, v11, v12, v13, v21);
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
    if (v25)
    {
      ot::Message::Free(v25);
    }

    v20 = ot::UriToString<(ot::Uri)0>();
    ot::ErrorToString(appended);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("AddrResolver", "Failed to send %s: %s", v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t ot::AddressResolver::CacheEntry::SetMeshLocalIid(uint64_t this, const ot::Ip6::InterfaceIdentifier *a2)
{
  *(this + 24) = *a2;
  return this;
}

{
  return ot::AddressResolver::CacheEntry::SetMeshLocalIid(this, a2);
}

uint64_t ot::AddressResolver::CacheEntry::SetLastTransactionTime(uint64_t this, int a2)
{
  *(this + 20) = a2;
  return this;
}

{
  return ot::AddressResolver::CacheEntry::SetLastTransactionTime(this, a2);
}

uint64_t ot::AddressResolver::CacheEntry::ResetFreshnessTimeout(uint64_t this)
{
  *(this + 18) = *(this + 18) & 0x3FFF | 0xC000;
  return this;
}

{
  return ot::AddressResolver::CacheEntry::ResetFreshnessTimeout(this);
}

void *ot::AddressResolver::GetMeshLocalEid(ot::AddressResolver *this, ot::Ip6::Address *a2, ot::Ip6::Address *a3, BOOL *a4)
{
  MeshLocalIid = ot::AddressResolver::GetMeshLocalIid(this, a2, a4);
  ot::Clearable<ot::Ip6::Address>::Clear(a3);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v4);
  result = ot::Ip6::Address::SetPrefix(a3, MeshLocalPrefix);
  if (MeshLocalIid)
  {
    return ot::Ip6::Address::SetIid(a3, MeshLocalIid);
  }

  return result;
}

uint64_t ot::AddressResolver::GetMeshLocalIid(ot::AddressResolver *this, ot::Ip6::Address *a2, BOOL *a3)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  CacheEntry = 0;
  v6 = 0;
  MeshLocalIid = 0;
  CacheEntry = ot::AddressResolver::FindCacheEntry(this, a2, &v8, &v6);
  if (CacheEntry)
  {
    MeshLocalIid = ot::AddressResolver::CacheEntry::GetMeshLocalIid(CacheEntry);
    IsLastTransactionTimeValid = ot::AddressResolver::CacheEntry::IsLastTransactionTimeValid(CacheEntry);
    *v9 = IsLastTransactionTimeValid;
  }

  return MeshLocalIid;
}

void ot::AddressResolver::HandleTmf<(ot::Uri)0>(ot::InstanceLocator *a1, ot::Tlv *a2, ot::Ip6::MessageInfo *a3)
{
  v60 = a1;
  v59 = a2;
  v58 = a3;
  v57 = 0;
  if (ot::Coap::Message::IsPostRequest(a2))
  {
    v3 = ot::UriToString<(ot::Uri)0>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("AddrResolver", "Received %s", v4, v5, v6, v7, v8, v9, v3);
    if (ot::Coap::Message::IsConfirmable(v59))
    {
      SockAddr = ot::Ip6::MessageInfo::GetSockAddr(v58);
      if (!ot::Ip6::Address::IsMulticast(SockAddr))
      {
        v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
        if (!ot::Coap::CoapBase::SendEmptyAck(v11, v59, v58))
        {
          v12 = ot::UriToString<(ot::Uri)0>();
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("AddrResolver", "Sent %s ack", v13, v14, v15, v16, v17, v18, v12);
        }
      }
    }

    v57 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v59, v56);
    if (!v57)
    {
      v57 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)3,ot::Ip6::InterfaceIdentifier>>(v59, v55);
      if (!v57)
      {
        v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
        ot::Ip6::Netif::GetUnicastAddresses(v19);
        v53[1] = v20;
        v53[0] = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::begin(v20);
        v52 = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::end();
        while (ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator!=(v53, &v52))
        {
          v51 = ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator*(v53);
          Address = ot::Ip6::Netif::UnicastAddress::GetAddress(v51);
          if (ot::Equatable<ot::Ip6::Address>::operator==(Address, v56))
          {
            v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
            MeshLocalEid = ot::Mle::Mle::GetMeshLocalEid(v22);
            Iid = ot::Ip6::Address::GetIid(MeshLocalEid);
            if (ot::Unequatable<ot::Ip6::InterfaceIdentifier>::operator!=(Iid, v55))
            {
              v42 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1);
              v25 = ot::Ip6::Netif::UnicastAddress::GetAddress(v51);
              if (ot::BackboneRouter::Leader::IsDomainUnicast(v42, v25))
              {
                v26 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(a1);
                ot::DuaManager::NotifyDuplicateDomainUnicastAddress(v26);
              }

              else
              {
                v27 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
                ot::Ip6::Netif::RemoveUnicastAddress(v27, v51);
              }

              goto LABEL_24;
            }
          }

          ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator++(v53);
        }

        ot::Ip6::InterfaceIdentifier::ConvertToExtAddress(v55, v65);
        v28 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(a1);
        v49 = ot::ChildTable::Iterate(v28, 0);
        v50 = &v49;
        v63 = ot::ChildTable::IteratorBuilder::begin(&v49);
        v64 = v29;
        v47 = v63;
        v48 = v29;
        v61 = ot::ChildTable::IteratorBuilder::end(v50);
        v62 = v30;
        v45 = v61;
        v46 = v30;
        while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v47, &v45))
        {
          v44 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v47);
          if (!ot::Neighbor::IsFullThreadDevice(v44))
          {
            ot::Neighbor::GetExtAddress(v44);
            if (ot::Unequatable<ot::Mac::ExtAddress>::operator!=(v31, v65) && !ot::Child::RemoveIp6Address(v44, v56))
            {
              v32 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
              MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v32);
              Rloc16 = ot::Neighbor::GetRloc16(v44);
              ot::Ip6::Address::SetToRoutingLocator(&v54, MeshLocalPrefix, Rloc16);
              ot::AddressResolver::SendAddressError(a1, v56, v55, &v54);
              break;
            }
          }

          ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v47);
        }
      }
    }
  }

  else
  {
    v57 = 2;
  }

LABEL_24:
  if (v57)
  {
    v40 = ot::ErrorToString(v57);
    ot::UriToString<(ot::Uri)0>();
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("AddrResolver", "Error %s when processing %s", v34, v35, v36, v37, v38, v39, v40);
  }
}

BOOL ot::Neighbor::IsFullThreadDevice(ot::Neighbor *this)
{
  v3 = this;
  DeviceMode = ot::Neighbor::GetDeviceMode(this);
  return ot::Mle::DeviceMode::IsFullThreadDevice(&DeviceMode);
}

{
  return ot::Neighbor::IsFullThreadDevice(this);
}

void ot::AddressResolver::HandleTmf<(ot::Uri)2>(ot::InstanceLocator *a1, ot::Tlv *a2, ot::Ip6::MessageInfo *a3)
{
  v53 = a1;
  v52 = a2;
  v51 = a3;
  v49 = 0;
  if (ot::Coap::Message::IsNonConfirmablePostRequest(a2) && !ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v52, v50))
  {
    v37 = ot::UriToString<(ot::Uri)2>();
    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v51);
    Iid = ot::Ip6::Address::GetIid(PeerAddr);
    ot::Ip6::InterfaceIdentifier::GetLocator(Iid);
    ot::Ip6::Address::ToString(v50, v59);
    ot::String<(unsigned short)40>::AsCString(v59);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("AddrResolver", "Received %s from 0x%04x for target %s", v5, v6, v7, v8, v9, v10, v37);
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
    if (ot::Ip6::Netif::HasUnicastAddress(v11, v50))
    {
      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
      MeshLocalEid = ot::Mle::Mle::GetMeshLocalEid(v12);
      v36 = ot::Ip6::Address::GetIid(MeshLocalEid);
      v14 = ot::Ip6::MessageInfo::GetPeerAddr(v51);
      ot::AddressResolver::SendAddressQueryResponse(a1, v50, v36, 0, v14);
      v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Ip6>(a1);
      ot::Ip6::Ip6::RemoveMplEntry(v15, v52);
    }

    else
    {
      v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(a1);
      v47 = ot::ChildTable::Iterate(v16, 0);
      v48 = &v47;
      v57 = ot::ChildTable::IteratorBuilder::begin(&v47);
      v58 = v17;
      v45 = v57;
      v46 = v17;
      v55 = ot::ChildTable::IteratorBuilder::end(v48);
      v56 = v18;
      v43 = v55;
      v44 = v18;
      while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v45, &v43))
      {
        v42 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v45);
        if (!ot::Neighbor::IsFullThreadDevice(v42) && ot::Neighbor::GetLinkFailures(v42) < 4)
        {
          HasIp6Address = ot::Child::HasIp6Address(v42, v50);
          if (HasIp6Address)
          {
            Now = ot::TimerMilli::GetNow(HasIp6Address);
            LastHeard = ot::Neighbor::GetLastHeard(v42);
            v20 = ot::Time::operator-(&Now, &LastHeard);
            v49 = ot::Time::MsecToSec(v20);
            MeshLocalIid = ot::Child::GetMeshLocalIid(v42);
            v21 = ot::Ip6::MessageInfo::GetPeerAddr(v51);
            ot::AddressResolver::SendAddressQueryResponse(a1, v50, MeshLocalIid, &v49, v21);
            v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Ip6>(a1);
            ot::Ip6::Ip6::RemoveMplEntry(v22, v52);
            return;
          }
        }

        ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v45);
      }

      v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(a1);
      if (ot::BackboneRouter::Local::IsPrimary(v23))
      {
        v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1);
        if (ot::BackboneRouter::Leader::IsDomainUnicast(v24, v50))
        {
          v25 = ot::Ip6::MessageInfo::GetPeerAddr(v51);
          v26 = ot::Ip6::Address::GetIid(v25);
          Locator = ot::Ip6::InterfaceIdentifier::GetLocator(v26);
          v34 = ot::UriToString<(ot::Uri)2>();
          ot::UriToString<(ot::Uri)9>();
          ot::Ip6::Address::ToString(v50, v54);
          ot::String<(unsigned short)40>::AsCString(v54);
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("AddrResolver", "Extending %s to %s for target %s rloc16=%04x", v27, v28, v29, v30, v31, v32, v34);
          v33 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Manager>(a1);
          ot::BackboneRouter::Manager::SendBackboneQuery(v33, v50, Locator);
          IgnoreError();
        }
      }
    }
  }
}

void ot::AddressResolver::SendAddressQueryResponse(ot::AddressResolver *this, const ot::Ip6::Address *a2, const ot::Ip6::InterfaceIdentifier *a3, unsigned int *a4, const ot::Ip6::Address *a5)
{
  v26 = this;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v21 = 0;
  v20 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v19, Instance);
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v20 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v6, 1u);
  if (v20)
  {
    v21 = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v20, v25);
    if (!v21)
    {
      v21 = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)3,ot::Ip6::InterfaceIdentifier>>(v20, v24);
      if (!v21)
      {
        v17 = v20;
        v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
        Rloc16 = ot::Mle::Mle::GetRloc16(v7);
        v21 = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v17, Rloc16);
        if (!v21 && (!v23 || (v21 = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)6,unsigned int>>(v20, *v23)) == 0))
        {
          ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(v19, v22);
          v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
          v21 = ot::Coap::CoapBase::SendMessage(v9, v20, v19);
          if (!v21)
          {
            v16 = ot::UriToString<(ot::Uri)1>();
            ot::Ip6::Address::ToString(v25, v27);
            ot::String<(unsigned short)40>::AsCString(v27);
            ot::Logger::LogAtLevel<(ot::LogLevel)4>("AddrResolver", "Sent %s for target %s", v10, v11, v12, v13, v14, v15, v16);
          }
        }
      }
    }
  }

  else
  {
    v21 = 3;
  }

  if (v21)
  {
    if (v20)
    {
      ot::Message::Free(v20);
    }
  }
}

uint64_t ot::Ip6::Ip6::RemoveMplEntry(ot::Ip6::Ip6 *this, ot::Message *a2)
{
  return ot::Ip6::Mpl::RemoveMatchedMessage((this + 136), a2);
}

{
  return ot::Ip6::Ip6::RemoveMplEntry(this, a2);
}

uint64_t ot::Neighbor::GetLinkFailures(ot::Neighbor *this)
{
  return *(this + 35);
}

{
  return ot::Neighbor::GetLinkFailures(this);
}

ot::AddressResolver::CacheEntry *ot::AddressResolver::HandleTimeTick(ot::AddressResolver::CacheEntry **this)
{
  v46 = this;
  v45 = 0;
  v44[1] = (this + 2050);
  v44[0] = ot::LinkedList<ot::AddressResolver::CacheEntry>::begin((this + 2050));
  v43 = ot::LinkedList<ot::AddressResolver::CacheEntry>::end();
  while (ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator!=(v44, &v43))
  {
    v42 = ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator*(v44);
    if (!ot::AddressResolver::CacheEntry::IsFreshnessTimeoutZero(v42))
    {
      ot::AddressResolver::CacheEntry::DecrementFreshnessTimeout(v42);
      v45 = 1;
    }

    ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator++(v44);
  }

  v41[1] = (this + 2051);
  v41[0] = ot::LinkedList<ot::AddressResolver::CacheEntry>::begin((this + 2051));
  v40 = ot::LinkedList<ot::AddressResolver::CacheEntry>::end();
  while (ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator!=(v41, &v40))
  {
    v39 = ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator*(v41);
    if (!ot::AddressResolver::CacheEntry::IsTimeoutZero(v39))
    {
      v45 = 1;
      ot::AddressResolver::CacheEntry::DecrementTimeout(v39);
      if (ot::AddressResolver::CacheEntry::IsTimeoutZero(v39))
      {
        ot::AddressResolver::CacheEntry::SetCanEvict(v39, 1);
      }
    }

    ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator++(v41);
  }

  v38[1] = (this + 2053);
  v38[0] = ot::LinkedList<ot::AddressResolver::CacheEntry>::begin((this + 2053));
  v37 = ot::LinkedList<ot::AddressResolver::CacheEntry>::end();
  while (ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator!=(v38, &v37))
  {
    v36 = ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator*(v38);
    if (!ot::AddressResolver::CacheEntry::IsTimeoutZero(v36))
    {
      v45 = 1;
      ot::AddressResolver::CacheEntry::DecrementTimeout(v36);
      if (ot::AddressResolver::CacheEntry::IsTimeoutZero(v36))
      {
        if (ot::AddressResolver::CacheEntry::IsInRampDown(v36))
        {
          RetryDelay = ot::AddressResolver::CacheEntry::GetRetryDelay(v36);
          v35 = ot::Max<unsigned short>(RetryDelay >> 1, 8u);
          if (v35 != ot::AddressResolver::CacheEntry::GetRetryDelay(v36))
          {
            ot::AddressResolver::CacheEntry::SetRetryDelay(v36, v35);
            ot::AddressResolver::CacheEntry::SetTimeout(v36, 64);
            ot::AddressResolver::CacheEntry::GetTarget(v36);
            ot::Ip6::Address::ToString(v9, v48);
            v10 = ot::String<(unsigned short)40>::AsCString(v48);
            ot::Logger::LogAtLevel<(ot::LogLevel)4>("AddrResolver", "Ramping down %s retry-delay:%u", v11, v12, v13, v14, v15, v16, v10);
          }
        }

        else
        {
          ot::AddressResolver::CacheEntry::SetRampDown(v36, 1);
          ot::AddressResolver::CacheEntry::SetTimeout(v36, 64);
          ot::AddressResolver::CacheEntry::GetTarget(v36);
          ot::Ip6::Address::ToString(v1, v49);
          v29 = ot::String<(unsigned short)40>::AsCString(v49);
          ot::AddressResolver::CacheEntry::GetTimeout(v36);
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("AddrResolver", "Starting ramp down of %s retry-delay:%u", v2, v3, v4, v5, v6, v7, v29);
        }
      }
    }

    ot::ItemPtrIterator<ot::AddressResolver::CacheEntry,ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator>::operator++(v38);
  }

  v34 = 0;
  while (1)
  {
    result = ot::AddressResolver::GetEntryAfter(v34, (this + 2052));
    v33 = result;
    if (!result)
    {
      break;
    }

    if (ot::AddressResolver::CacheEntry::IsTimeoutZero(result))
    {
      __assert_rtn("HandleTimeTick", "address_resolver.cpp", 1171, "!entry->IsTimeoutZero()");
    }

    v45 = 1;
    ot::AddressResolver::CacheEntry::DecrementTimeout(v33);
    if (ot::AddressResolver::CacheEntry::IsTimeoutZero(v33))
    {
      v31 = ot::AddressResolver::CacheEntry::GetRetryDelay(v33);
      ot::AddressResolver::CacheEntry::SetTimeout(v33, v31);
      v32 = ot::Min<unsigned short>(2 * v31, 0x40u);
      ot::AddressResolver::CacheEntry::SetRetryDelay(v33, v32);
      ot::AddressResolver::CacheEntry::SetCanEvict(v33, 1);
      ot::AddressResolver::CacheEntry::SetRampDown(v33, 0);
      ot::LinkedList<ot::AddressResolver::CacheEntry>::PopAfter(this + 2052, v34);
      ot::LinkedList<ot::AddressResolver::CacheEntry>::Push(this + 2053, v33);
      v27 = ot::UriToString<(ot::Uri)1>();
      ot::AddressResolver::CacheEntry::GetTarget(v33);
      ot::Ip6::Address::ToString(v18, v47);
      ot::String<(unsigned short)40>::AsCString(v47);
      ot::AddressResolver::CacheEntry::GetTimeout(v33);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("AddrResolver", "Timed out waiting for %s for %s, retry: %d", v19, v20, v21, v22, v23, v24, v27);
      v28 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
      ot::AddressResolver::CacheEntry::GetTarget(v33);
      ot::MeshForwarder::HandleResolved(v28, v25, 2);
    }

    else
    {
      v34 = v33;
    }
  }

  if ((v45 & 1) == 0)
  {
    v26 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
    return ot::TimeTicker::UnregisterReceiver(v26, 2);
  }

  return result;
}

uint64_t ot::AddressResolver::CacheEntry::DecrementFreshnessTimeout(uint64_t this)
{
  *(this + 18) = *(this + 18) & 0x3FFF | ((((*(this + 18) >> 14) - 1) & 3) << 14);
  return this;
}

{
  return ot::AddressResolver::CacheEntry::DecrementFreshnessTimeout(this);
}

BOOL ot::AddressResolver::CacheEntry::IsTimeoutZero(ot::AddressResolver::CacheEntry *this)
{
  return *(this + 10) == 0;
}

{
  return ot::AddressResolver::CacheEntry::IsTimeoutZero(this);
}

uint64_t ot::AddressResolver::CacheEntry::DecrementTimeout(uint64_t this)
{
  --*(this + 20);
  return this;
}

{
  return ot::AddressResolver::CacheEntry::DecrementTimeout(this);
}

uint64_t ot::AddressResolver::CacheEntry::SetRampDown(uint64_t this, char a2)
{
  *(this + 25) = a2 & 1;
  return this;
}

{
  return ot::AddressResolver::CacheEntry::SetRampDown(this, a2);
}

ot::AddressResolver::CacheEntry *ot::AddressResolver::HandleIcmpReceive(ot::AddressResolver::CacheEntry **this, ot::Message *a2, const ot::Ip6::MessageInfo *a3, const ot::Ip6::Icmp::Header *a4)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  result = ot::Ip6::Icmp::Header::GetType(a4);
  if (result == 1)
  {
    result = ot::Ip6::Icmp::Header::GetCode(v9);
    if (!result)
    {
      Offset = ot::Message::GetOffset(v11);
      result = ot::Message::Read<ot::Ip6::Header>(v11, Offset, v8);
      if (!result)
      {
        Destination = ot::Ip6::Header::GetDestination(v8);
        return ot::AddressResolver::Remove(this, Destination, 5u);
      }
    }
  }

  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otIcmp6Header>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

uint64_t ot::Ip6::Icmp::Header::GetCode(ot::Ip6::Icmp::Header *this)
{
  return *(this + 1);
}

{
  return ot::Ip6::Icmp::Header::GetCode(this);
}

const char *ot::AddressResolver::ListToString(uint64_t a1, uint64_t a2)
{
  v3 = "";
  if (a2 == a1 + 16400)
  {
    return "cached";
  }

  if (a2 == a1 + 16408)
  {
    return "snooped";
  }

  if (a2 == a1 + 16416)
  {
    return "query";
  }

  if (a2 == a1 + 16424)
  {
    return "query-retry";
  }

  return v3;
}

void ot::AddressResolver::CacheEntry::Init(ot::AddressResolver::CacheEntry *this, ot::Instance *a2)
{
  ot::InstanceLocatorInit::Init(this, a2);
  *(this + 9) = *(this + 9) & 0xC000 | 0x3FFF;
  *(this + 9) &= 0x3FFFu;
}

uint64_t ot::AddressResolver::GetCacheEntryPool(ot::AddressResolver *this)
{
  return this + 8;
}

{
  return ot::AddressResolver::GetCacheEntryPool(this);
}

uint64_t ot::Pool<ot::AddressResolver::CacheEntry,(unsigned short)512>::GetEntryAt(uint64_t a1, unsigned __int16 a2)
{
  return a1 + 8 + 32 * a2;
}

{
  return ot::Pool<ot::AddressResolver::CacheEntry,(unsigned short)512>::GetEntryAt(a1, a2);
}

uint64_t ot::Pool<ot::AddressResolver::CacheEntry,(unsigned short)512>::GetIndexOf(uint64_t a1, uint64_t a2)
{
  return ((a2 - (a1 + 8)) / 32);
}

{
  return ot::Pool<ot::AddressResolver::CacheEntry,(unsigned short)512>::GetIndexOf(a1, a2);
}

void *ot::Ip6::Icmp::Handler::Handler(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = 0;
  return result;
}

ot::Ip6::SockAddr *ot::Ip6::SockAddr::SockAddr(ot::Ip6::SockAddr *this)
{
  ot::Ip6::SockAddr::SockAddr(this);
  return this;
}

{
  ot::Clearable<ot::Ip6::SockAddr>::Clear(this);
  return this;
}

void *ot::ClearAllBytes<ot::AddressResolver::EntryInfo>(void *a1)
{
  return memset(a1, 0, 0x34uLL);
}

{
  return ot::ClearAllBytes<ot::AddressResolver::EntryInfo>(a1);
}

void ot::AsNonConst<ot::AddressResolver::CacheEntry>()
{
  ;
}

{
  ot::AsNonConst<ot::AddressResolver::CacheEntry>();
}

void ot::AsConst<ot::LinkedList<ot::AddressResolver::CacheEntry>>()
{
  ;
}

{
  ot::AsConst<ot::LinkedList<ot::AddressResolver::CacheEntry>>();
}

ot::AddressResolver::CacheEntry *ot::LinkedList<ot::AddressResolver::CacheEntry>::FindMatching<ot::Ip6::Address>(ot::AddressResolver::CacheEntry **a1, const ot::Ip6::Address *a2, ot::AddressResolver::CacheEntry **a3)
{
  return ot::LinkedList<ot::AddressResolver::CacheEntry>::FindMatching<ot::Ip6::Address>(a1, *a1, 0, a2, a3);
}

{
  return ot::LinkedList<ot::AddressResolver::CacheEntry>::FindMatching<ot::Ip6::Address>(a1, a2, a3);
}

ot::AddressResolver::CacheEntry *ot::LinkedList<ot::AddressResolver::CacheEntry>::FindMatching<ot::Ip6::Address>(uint64_t a1, ot::AddressResolver::CacheEntry *Next, ot::AddressResolver::CacheEntry *a3, const ot::Ip6::Address *a4, ot::AddressResolver::CacheEntry **a5)
{
  *a5 = 0;
  while (Next != a3 && !ot::AddressResolver::CacheEntry::Matches(Next, a4))
  {
    *a5 = Next;
    Next = ot::AddressResolver::CacheEntry::GetNext(Next);
  }

  return Next;
}

{
  return ot::LinkedList<ot::AddressResolver::CacheEntry>::FindMatching<ot::Ip6::Address>(a1, Next, a3, a4, a5);
}

BOOL ot::AddressResolver::CacheEntry::Matches(ot::AddressResolver::CacheEntry *this, const ot::Ip6::Address *a2)
{
  ot::AddressResolver::CacheEntry::GetTarget(this);
  return ot::Equatable<ot::Ip6::Address>::operator==(v2, a2);
}

{
  return ot::AddressResolver::CacheEntry::Matches(this, a2);
}

uint64_t ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator::Advance(ot::AddressResolver::CacheEntry **a1)
{
  result = ot::AddressResolver::CacheEntry::GetNext(*a1);
  *a1 = result;
  return result;
}

{
  return ot::LinkedList<ot::AddressResolver::CacheEntry>::Iterator::Advance(a1);
}

ot::AddressResolver::CacheEntry *ot::LinkedList<ot::AddressResolver::CacheEntry>::GetTail(ot::AddressResolver::CacheEntry **a1)
{
  Next = *a1;
  if (*a1)
  {
    for (i = ot::AddressResolver::CacheEntry::GetNext(Next); i; i = ot::AddressResolver::CacheEntry::GetNext(Next))
    {
      Next = ot::AddressResolver::CacheEntry::GetNext(Next);
    }
  }

  return Next;
}

{
  return ot::LinkedList<ot::AddressResolver::CacheEntry>::GetTail(a1);
}

ot::AnnounceBeginServer *ot::AnnounceBeginServer::AnnounceBeginServer(ot::AnnounceBeginServer *this, ot::Instance *a2)
{
  ot::AnnounceSenderBase::AnnounceSenderBase(this, a2, ot::AnnounceBeginServer::HandleTimer);
  return this;
}

{
  ot::AnnounceBeginServer::AnnounceBeginServer(this, a2);
  return this;
}

uint64_t ot::AnnounceBeginServer::SendAnnounce(ot::AnnounceBeginServer *this, int a2, char a3, unsigned __int16 a4)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  ot::Mac::ChannelMask::ChannelMask(&v6, a2);
  ot::AnnounceSenderBase::SetChannelMask(this, v6);
  ot::AnnounceSenderBase::SetPeriod(this, v7);
  ot::AnnounceSenderBase::SetJitter(this, 0);
  return ot::AnnounceSenderBase::SendAnnounce(this, v8);
}

uint64_t ot::AnnounceSenderBase::SetPeriod(uint64_t this, int a2)
{
  *(this + 4) = a2;
  return this;
}

{
  return ot::AnnounceSenderBase::SetPeriod(this, a2);
}

uint64_t ot::AnnounceSenderBase::SetJitter(uint64_t this, __int16 a2)
{
  *(this + 8) = a2;
  return this;
}

{
  return ot::AnnounceSenderBase::SetJitter(this, a2);
}

void ot::AnnounceBeginServer::HandleTmf<(ot::Uri)10>(ot::AnnounceBeginServer *a1, ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  if (ot::Coap::Message::IsPostRequest(a2) && !ot::MeshCoP::ChannelMaskTlv::FindIn(v18, &v16, v3) && !ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)54,unsigned char>>(v18, &v15) && !ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)55,unsigned short>>(v18, &v14))
  {
    ot::AnnounceBeginServer::SendAnnounce(a1, v16, v15, v14);
    if (ot::Coap::Message::IsConfirmable(v18))
    {
      SockAddr = ot::Ip6::MessageInfo::GetSockAddr(v17);
      if (!ot::Ip6::Address::IsMulticast(SockAddr))
      {
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
        if (!ot::Coap::CoapBase::SendEmptyAck(v5, v18, v17))
        {
          v6 = ot::UriToString<(ot::Uri)10>();
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshCoP", "Sent %s response", v7, v8, v9, v10, v11, v12, v6);
        }
      }
    }
  }
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)54,unsigned char>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned char>(a1, 0x36u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)54,unsigned char>>(a1, a2);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)55,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0x37u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)55,unsigned short>>(a1, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::AnnounceBeginServer>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::AnnounceBeginServer>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::AnnounceBeginServer>(a1);
}

uint64_t ot::Instance::Get<ot::AnnounceBeginServer>(uint64_t a1)
{
  return a1 + 154584;
}

{
  return ot::Instance::Get<ot::AnnounceBeginServer>(a1);
}

ot::AnnounceSenderBase *ot::AnnounceSenderBase::AnnounceSenderBase(ot::AnnounceSenderBase *this, ot::Instance *a2, void (*a3)(ot::Timer *))
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Mac::ChannelMask::ChannelMask(this);
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = -1;
  ot::TimerMicro::TimerMicro((this + 16), a2, a3);
  return this;
}

{
  ot::AnnounceSenderBase::AnnounceSenderBase(this, a2, a3);
  return this;
}

uint64_t ot::AnnounceSenderBase::SendAnnounce(ot::AnnounceSenderBase *this, char a2)
{
  result = ot::AnnounceSenderBase::IsRunning(this);
  if (result)
  {
    *(this + 10) += a2;
  }

  else if (*(this + 1))
  {
    result = ot::Mac::ChannelMask::IsEmpty(this);
    if ((result & 1) == 0)
    {
      ot::AnnounceSenderBase::SelectStartingChannel(this);
      *(this + 10) = a2;
      *(this + 11) = *(this + 12);
      Uint32InRange = ot::Random::NonCrypto::GetUint32InRange(0, *(this + 4) + 1);
      return ot::TimerMilli::Start((this + 16), Uint32InRange);
    }
  }

  return result;
}

BOOL ot::AnnounceSenderBase::IsRunning(ot::AnnounceSenderBase *this)
{
  return ot::Timer::IsRunning((this + 16));
}

{
  return ot::AnnounceSenderBase::IsRunning(this);
}

void ot::AnnounceSenderBase::SelectStartingChannel(ot::AnnounceSenderBase *this)
{
  if (!ot::Mac::ChannelMask::IsEmpty(this) && (*(this + 12) == 255 || !ot::Mac::ChannelMask::ContainsChannel(this, *(this + 12))))
  {
    *(this + 12) = -1;
    ot::Mac::ChannelMask::GetNextChannel(this, this + 12);
    IgnoreError();
  }
}

uint64_t ot::AnnounceSenderBase::Stop(ot::AnnounceSenderBase *this)
{
  result = ot::TimerMilli::Stop((this + 16));
  *(this + 10) = 0;
  return result;
}

void ot::AnnounceSenderBase::SetChannelMask(ot::InstanceLocator *a1, int a2)
{
  *a1 = a2;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
  SupportedChannelMask = ot::Mac::Mac::GetSupportedChannelMask(v2);
  ot::Mac::ChannelMask::Intersect(a1, SupportedChannelMask);
  if (ot::Mac::ChannelMask::IsEmpty(a1))
  {
    ot::AnnounceSenderBase::Stop(a1);
  }

  else
  {
    ot::AnnounceSenderBase::SelectStartingChannel(a1);
  }
}

uint64_t ot::AnnounceSenderBase::HandleTimer(ot::AnnounceSenderBase *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  ot::Mle::Mle::SendAnnounce(v1, *(this + 11));
  while (1)
  {
    result = ot::Mac::ChannelMask::GetNextChannel(this, this + 11);
    if (!result)
    {
      break;
    }

    *(this + 11) = -1;
  }

  if (*(this + 11) != *(this + 12) || !*(this + 10) || (--*(this + 10), *(this + 10)))
  {
    v3 = ot::Random::NonCrypto::AddJitter(*(this + 1), *(this + 4));
    return ot::TimerMilli::Start((this + 16), v3);
  }

  return result;
}

void ot::Mle::Mle::SendAnnounce(ot::Mle::Mle *this, unsigned __int8 a2)
{
  ot::Mle::Mle::SendAnnounce(this, a2, 0);
}

{
  ot::Mle::Mle::SendAnnounce(this, a2);
}

ot::AnnounceSender *ot::AnnounceSender::AnnounceSender(ot::AnnounceSender *this, ot::Instance *a2)
{
  ot::AnnounceSenderBase::AnnounceSenderBase(this, a2, ot::AnnounceSender::HandleTimer);
  ot::TrickleTimer::TrickleTimer((this + 40), a2, ot::AnnounceSender::HandleTrickleTimer);
  ot::AnnounceSenderBase::SetJitter(this, 500);
  return this;
}

{
  ot::AnnounceSender::AnnounceSender(this, a2);
  return this;
}

void ot::AnnounceSender::Stop(ot::AnnounceSender *this)
{
  ot::AnnounceSenderBase::Stop(this);
  ot::TrickleTimer::Stop((this + 40));
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("AnnounceSender", "Stopped", v1, v2, v3, v4, v5, v6, this);
}

void ot::AnnounceSender::HandleNotifierEvents(ot::AnnounceSender *a1, uint64_t a2)
{
  v3 = a2;
  if (ot::Events::Contains(&v3, 4))
  {
    ot::AnnounceSender::HandleRoleChanged(a1);
  }

  if (ot::Events::Contains(&v3, 0x10000000))
  {
    ot::AnnounceSender::HandleActiveDatasetChanged(a1);
  }

  if (ot::Events::Contains(&v3, 0x4000))
  {
    ot::AnnounceSender::HandleThreadChannelChanged(a1);
  }
}

void ot::AnnounceSender::HandleRoleChanged(ot::AnnounceSender *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  Role = ot::Mle::Mle::GetRole(v1);
  if (Role > 1 && (Role != 2 || (v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this), (ot::Mle::MleRouter::IsRouterEligible(v2) & 1) != 0) && (v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this), ot::Mle::Mle::IsRxOnWhenIdle(v3))))
  {
    ot::TrickleTimer::Start(this + 40, 0, 0xA7F80u, 0xA7F80u, 8);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("AnnounceSender", "Started", v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    ot::AnnounceSender::Stop(this);
  }
}

void ot::AnnounceSender::HandleActiveDatasetChanged(ot::AnnounceSender *this)
{
  v15 = this;
  ot::Mac::ChannelMask::ChannelMask(&v14);
  active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
  if (!ot::MeshCoP::DatasetManager::GetChannelMask(active, &v14) && !ot::Mac::ChannelMask::IsEmpty(&v14))
  {
    ChannelMask = ot::AnnounceSenderBase::GetChannelMask(this);
    if (ot::Unequatable<ot::Mac::ChannelMask>::operator!=(&v14, &ChannelMask))
    {
      v12[1] = v14;
      ot::AnnounceSenderBase::SetChannelMask(this, v14);
      NumberOfChannels = ot::Mac::ChannelMask::GetNumberOfChannels(&v14);
      ot::AnnounceSenderBase::SetPeriod(this, 0x53FC1 / NumberOfChannels);
      v12[0] = ot::AnnounceSenderBase::GetChannelMask(this);
      ot::Mac::ChannelMask::ToString(v12, v16);
      v10 = ot::String<(unsigned short)45>::AsCString(v16);
      Period = ot::AnnounceSenderBase::GetPeriod(this);
      ot::ToUlong(Period);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("AnnounceSender", "ChannelMask:%s, period:%lu", v4, v5, v6, v7, v8, v9, v10);
      ot::AnnounceSender::HandleThreadChannelChanged(this);
    }
  }
}

void ot::AnnounceSender::HandleThreadChannelChanged(ot::AnnounceSender *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  PanChannel = ot::Mac::Mac::GetPanChannel(v1);
  ot::AnnounceSenderBase::SetStartingChannel(this, PanChannel);
  StartingChannel = ot::AnnounceSenderBase::GetStartingChannel(this);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("AnnounceSender", "StartingChannel:%d", v4, v5, v6, v7, v8, v9, StartingChannel);
}

BOOL ot::Unequatable<ot::Mac::ChannelMask>::operator!=(_DWORD *a1, _DWORD *a2)
{
  return !ot::Mac::ChannelMask::operator==(a1, a2);
}

{
  return ot::Unequatable<ot::Mac::ChannelMask>::operator!=(a1, a2);
}

uint64_t ot::AnnounceSenderBase::GetChannelMask(ot::AnnounceSenderBase *this)
{
  return *this;
}

{
  return ot::AnnounceSenderBase::GetChannelMask(this);
}

uint64_t ot::AnnounceSenderBase::GetPeriod(ot::AnnounceSenderBase *this)
{
  return *(this + 1);
}

{
  return ot::AnnounceSenderBase::GetPeriod(this);
}

uint64_t ot::AnnounceSenderBase::GetStartingChannel(ot::AnnounceSenderBase *this)
{
  return *(this + 12);
}

{
  return ot::AnnounceSenderBase::GetStartingChannel(this);
}

ot::InstanceLocator *ot::ChildTable::Iterator::Iterator(ot::InstanceLocator *a1, ot::Instance *a2, char a3)
{
  ot::InstanceLocator::InstanceLocator(a1, a2);
  ot::Ptr<ot::Message>::Ptr(a1, 0);
  *(a1 + 8) = a3;
  ot::ChildTable::Iterator::Reset(a1);
  return a1;
}

{
  ot::ChildTable::Iterator::Iterator(a1, a2, a3);
  return a1;
}

uint64_t ot::ChildTable::Iterator::Reset(ot::ChildTable::Iterator *this)
{
  *this = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this) + 8;
  result = ot::Neighbor::MatchesFilter(*this, *(this + 8));
  if ((result & 1) == 0)
  {
    return ot::ChildTable::Iterator::Advance(this);
  }

  return result;
}

uint64_t ot::ChildTable::Iterator::Advance(uint64_t this)
{
  v3 = this;
  if (*this)
  {
    while (1)
    {
      *v3 += 464;
      v2 = *v3;
      v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(v3) + 8;
      this = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(v3);
      if (v2 >= v1 + 464 * *this)
      {
        break;
      }

      this = ot::Neighbor::MatchesFilter(*v3, v3[8]);
      if (this)
      {
        return this;
      }
    }

    *v3 = 0;
  }

  return this;
}

ot::ChildTable *ot::ChildTable::ChildTable(ot::ChildTable *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 64;
  v4 = (this + 8);
  do
  {
    ot::Child::Child(v4);
    v4 = (v4 + 464);
  }

  while (v4 != (this + 29704));
  for (i = (this + 8); i != (this + 29704); i = (i + 464))
  {
    ot::Child::Init(i, a2);
    ot::Child::Clear(i);
  }

  return this;
}

{
  ot::ChildTable::ChildTable(this, a2);
  return this;
}

ot::Child *ot::Child::Child(ot::Child *this)
{
  ot::Child::Child(this);
  return this;
}

{
  ot::Neighbor::Neighbor(this);
  ot::Array<ot::Child::Ip6AddrEntry,(unsigned short)15,unsigned char>::Array(this + 204);
  return this;
}

uint64_t ot::Child::Init(ot::Child *this, ot::Instance *a2)
{
  return ot::Neighbor::Init(this, a2);
}

{
  return ot::Child::Init(this, a2);
}

uint64_t ot::ChildTable::Clear(uint64_t this)
{
  v2 = (this + 8);
  v1 = (this + 29704);
  while (v2 != v1)
  {
    this = ot::Child::Clear(v2);
    v2 = (v2 + 464);
  }

  return this;
}

uint64_t ot::ChildTable::GetChildAtIndex(ot::ChildTable *this, unsigned __int16 a2)
{
  v3 = 0;
  if (a2 < *this)
  {
    return this + 464 * a2 + 8;
  }

  return v3;
}

ot::Child *ot::ChildTable::GetNewChild(ot::ChildTable *this)
{
  v6 = this;
  ot::Neighbor::AddressMatcher::AddressMatcher(v4, 4);
  ot::ChildTable::FindChild(this, v4);
  v5 = v1;
  if (v1)
  {
    ot::Child::Clear(v5);
  }

  return v5;
}

void ot::ChildTable::FindChild(uint64_t a1, unsigned __int8 *a2)
{
  ot::AsConst<ot::ChildTable>();
  ot::ChildTable::FindChild(v2, a2);
  ot::AsNonConst<ot::Child>();
}

{
  ot::ChildTable::FindChild(a1, a2);
}

uint64_t ot::ChildTable::FindChild(__int16 *a1, unsigned __int8 *a2)
{
  v4 = (a1 + 4);
  for (i = *a1; i; --i)
  {
    if (ot::Neighbor::Matches(v4, a2))
    {
      return v4;
    }

    v4 += 464;
  }

  return 0;
}

uint64_t ot::Neighbor::Matches(uint64_t a1, unsigned __int8 *a2)
{
  return ot::Neighbor::AddressMatcher::Matches(a2, a1);
}

{
  return ot::Neighbor::Matches(a1, a2);
}

void ot::ChildTable::FindChild(uint64_t a1, __int16 a2, char a3)
{
  v6 = a1;
  v5 = a2;
  v4[21] = a3;
  ot::Neighbor::AddressMatcher::AddressMatcher(v4, a2, a3);
  ot::ChildTable::FindChild(a1, v4);
}

void ot::ChildTable::FindChild(uint64_t a1, uint64_t a2, char a3)
{
  v6 = a1;
  v5 = a2;
  v4[23] = a3;
  ot::Neighbor::AddressMatcher::AddressMatcher(v4, a2, a3);
  ot::ChildTable::FindChild(a1, v4);
}

void ot::ChildTable::FindChild(uint64_t a1, ot::Mac::Address *a2, char a3)
{
  v6 = a1;
  v5 = a2;
  v4[23] = a3;
  ot::Neighbor::AddressMatcher::AddressMatcher(v4, a2, a3);
  ot::ChildTable::FindChild(a1, v4);
}

uint64_t ot::Neighbor::AddressMatcher::AddressMatcher(uint64_t a1, ot::Mac::Address *a2, char a3)
{
  if (ot::Mac::Address::IsShort(a2))
  {
    Short = ot::Mac::Address::GetShort(a2);
  }

  else
  {
    Short = -2;
  }

  if (ot::Mac::Address::IsExtended(a2))
  {
    ot::Mac::Address::GetExtended(a2);
    ot::Neighbor::AddressMatcher::AddressMatcher(a1, a3, Short, v3);
  }

  else
  {
    ot::Neighbor::AddressMatcher::AddressMatcher(a1, a3, Short, 0);
  }

  return a1;
}

BOOL ot::ChildTable::HasChildren(__int16 *a1, char a2)
{
  v5 = a1;
  v4[23] = a2;
  ot::Neighbor::AddressMatcher::AddressMatcher(v4, a2);
  return ot::ChildTable::FindChild(a1, v4) != 0;
}

uint64_t ot::ChildTable::GetNumChildren(__int16 *a1, unsigned __int8 a2)
{
  v5 = 0;
  v4 = (a1 + 4);
  for (i = *a1; i; --i)
  {
    if (ot::Neighbor::MatchesFilter(v4, a2))
    {
      ++v5;
    }

    v4 += 464;
  }

  return v5;
}

uint64_t ot::ChildTable::SetMaxChildrenAllowed(ot::ChildTable *this, unsigned __int16 a2)
{
  v4 = 0;
  if (a2 && a2 <= 0x40u)
  {
    if (ot::ChildTable::HasChildren(this, 5))
    {
      return 13;
    }

    else
    {
      *this = a2;
    }
  }

  else
  {
    return 7;
  }

  return v4;
}

uint64_t ot::ChildTable::GetChildInfoById(ot::ChildTable *this, unsigned __int16 a2, ot::Child::Info *a3)
{
  v10 = a2;
  v8 = 0;
  if ((a2 & 0xFE00) != 0)
  {
    v10 = ot::Mle::ChildIdFromRloc16(a2);
  }

  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  v7 = ot::Mle::Mle::GetRloc16(v3) | v10;
  ot::ChildTable::FindChild(this, v7, 1);
  if (v4)
  {
    ot::Child::Info::SetFrom(a3, v4);
  }

  else
  {
    return 23;
  }

  return v8;
}

uint64_t ot::ChildTable::GetChildInfoByIndex(ot::ChildTable *this, unsigned __int16 a2, ot::Child::Info *a3)
{
  v5 = 0;
  ChildAtIndex = ot::ChildTable::GetChildAtIndex(this, a2);
  if (ChildAtIndex && ot::Neighbor::IsStateValidOrRestoring(ChildAtIndex))
  {
    ot::Child::Info::SetFrom(a3, ChildAtIndex);
  }

  else
  {
    return 23;
  }

  return v5;
}

uint64_t ot::ChildTable::Restore(ot::ChildTable *this)
{
  v32 = this;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(this);
  ot::Settings::IterateChildInfo(v1);
  v28 = &v27;
  ot::Settings::ChildInfoIteratorBuilder::begin(&v27, v34);
  ot::Settings::ChildInfoIteratorBuilder::end(v28, v33);
  while ((ot::Unequatable<ot::Settings::ChildInfoIterator>::operator!=(v34, v33) & 1) != 0)
  {
    ot::Settings::ChildInfoIterator::operator*();
    v26 = v2;
    NewChild = 0;
    ot::SettingsBase::ChildInfo::GetExtAddress(v2);
    ot::ChildTable::FindChild(this, v3, 5);
    NewChild = v4;
    if (v4)
    {
      v30 = 1;
    }

    else
    {
      NewChild = ot::ChildTable::GetNewChild(this);
      if (!NewChild)
      {
        v31 = 3;
        break;
      }
    }

    ot::Child::Clear(NewChild);
    v16 = NewChild;
    ot::SettingsBase::ChildInfo::GetExtAddress(v26);
    ot::Neighbor::SetExtAddress(v16, v5);
    LinkInfo = ot::Neighbor::GetLinkInfo(NewChild);
    ot::LinkQualityInfo::Clear(LinkInfo);
    v17 = NewChild;
    Rloc16 = ot::SettingsBase::ChildInfo::GetRloc16(v26);
    ot::Neighbor::SetRloc16(v17, Rloc16);
    v18 = NewChild;
    Timeout = ot::SettingsBase::ChildInfo::GetTimeout(v26);
    ot::Child::SetTimeout(v18, Timeout);
    v19 = NewChild;
    Mode = ot::SettingsBase::ChildInfo::GetMode(v26);
    ot::Mle::DeviceMode::DeviceMode(&v24, Mode);
    ot::Child::SetDeviceMode(v19, v24);
    ot::Neighbor::SetState(NewChild, 1);
    ot::Child::GenerateChallenge(NewChild);
    v20 = NewChild;
    Now = ot::TimerMilli::GetNow(v10);
    ot::Neighbor::SetLastHeard(v20, Now);
    v21 = NewChild;
    Version = ot::SettingsBase::ChildInfo::GetVersion(v26);
    ot::Neighbor::SetVersion(v21, Version);
    v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::IndirectSender>(this);
    ot::IndirectSender::SetChildUseShortAddress(v12, NewChild, 1);
    v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
    ot::NeighborTable::Signal(v13, 0, NewChild);
    ++v29;
    ot::Settings::ChildInfoIterator::operator++(v34);
  }

  if (v30)
  {
    return ot::ChildTable::RefreshStoredChildren(this);
  }

  v15 = v29;
  result = ot::ChildTable::GetMaxChildren(this);
  if (v15 > result || v31)
  {
    return ot::ChildTable::RefreshStoredChildren(this);
  }

  return result;
}

ot::Settings::ChildInfoIteratorBuilder *ot::Settings::IterateChildInfo(ot::Settings *this)
{
  Instance = ot::InstanceLocator::GetInstance(this);
  return ot::Settings::ChildInfoIteratorBuilder::ChildInfoIteratorBuilder(&v3, Instance);
}

{
  return ot::Settings::IterateChildInfo(this);
}

ot::Settings::ChildInfoIterator *ot::Settings::ChildInfoIteratorBuilder::begin@<X0>(ot::Settings::ChildInfoIteratorBuilder *this@<X0>, ot::Settings::ChildInfoIterator *a2@<X8>)
{
  Instance = ot::InstanceLocator::GetInstance(this);
  return ot::Settings::ChildInfoIterator::ChildInfoIterator(a2, Instance);
}

{
  return ot::Settings::ChildInfoIteratorBuilder::begin(this, a2);
}

uint64_t ot::Settings::ChildInfoIteratorBuilder::end@<X0>(ot::Settings::ChildInfoIteratorBuilder *this@<X0>, uint64_t a2@<X8>)
{
  Instance = ot::InstanceLocator::GetInstance(this);
  return ot::Settings::ChildInfoIterator::ChildInfoIterator(a2, Instance);
}

{
  return ot::Settings::ChildInfoIteratorBuilder::end(this, a2);
}

uint64_t ot::Unequatable<ot::Settings::ChildInfoIterator>::operator!=(uint64_t a1, uint64_t a2)
{
  return ot::Settings::ChildInfoIterator::operator==(a1, a2) ^ 1;
}

{
  return ot::Unequatable<ot::Settings::ChildInfoIterator>::operator!=(a1, a2);
}

void ot::Settings::ChildInfoIterator::operator*()
{
  ;
}

{
  ot::Settings::ChildInfoIterator::operator*();
}

void *ot::Neighbor::SetExtAddress(void *this, const ot::Mac::ExtAddress *a2)
{
  *this = *a2;
  return this;
}

{
  return ot::Neighbor::SetExtAddress(this, a2);
}

uint64_t ot::Neighbor::SetRloc16(uint64_t this, __int16 a2)
{
  *(this + 28) = a2;
  return this;
}

{
  return ot::Neighbor::SetRloc16(this, a2);
}

uint64_t ot::Child::SetTimeout(uint64_t this, int a2)
{
  *(this + 192) = a2;
  return this;
}

{
  return ot::Child::SetTimeout(this, a2);
}

void ot::Child::GenerateChallenge(ot::Child *this)
{
  ot::Mle::TxChallenge::GenerateRandom((this + 450));
}

{
  ot::Child::GenerateChallenge(this);
}

uint64_t ot::Neighbor::SetVersion(uint64_t this, __int16 a2)
{
  *(this + 36) = a2;
  return this;
}

{
  return ot::Neighbor::SetVersion(this, a2);
}

void ot::Settings::ChildInfoIterator::operator++(ot::Settings::ChildInfoIterator *a1)
{
  ot::Settings::ChildInfoIterator::Advance(a1);
}

{
  ot::Settings::ChildInfoIterator::Advance(a1);
}

{
  ot::Settings::ChildInfoIterator::operator++(a1);
}

{
  ot::Settings::ChildInfoIterator::operator++(a1);
}

uint64_t ot::ChildTable::GetMaxChildren(ot::ChildTable *this)
{
  return 64;
}

{
  return ot::ChildTable::GetMaxChildren(this);
}

uint64_t ot::ChildTable::RefreshStoredChildren(ot::ChildTable *this)
{
  v5 = (this + 8);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(this);
  result = ot::Settings::DeleteAllChildInfo(v1);
  if (!result)
  {
    for (i = *this; i; --i)
    {
      result = ot::Neighbor::IsStateInvalid(v5);
      if ((result & 1) == 0)
      {
        result = ot::ChildTable::StoreChild(this, v5);
        if (result)
        {
          break;
        }
      }

      v5 = (v5 + 464);
    }
  }

  return result;
}

void ot::ChildTable::RemoveStoredChild(ot::ChildTable *this, const ot::Child *a2)
{
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Settings::ChildInfoIterator::ChildInfoIterator(v6, Instance);
  while ((ot::Settings::ChildInfoIterator::IsDone(v6) & 1) == 0)
  {
    ot::Settings::ChildInfoIterator::GetChildInfo(v6);
    Rloc16 = ot::SettingsBase::ChildInfo::GetRloc16(v3);
    if (Rloc16 == ot::Neighbor::GetRloc16(a2))
    {
      ot::Settings::ChildInfoIterator::Delete(v6);
      IgnoreError();
      return;
    }

    ot::Settings::ChildInfoIterator::operator++(v6);
  }
}

uint64_t ot::Settings::ChildInfoIterator::IsDone(ot::Settings::ChildInfoIterator *this)
{
  return *(this + 20) & 1;
}

{
  return ot::Settings::ChildInfoIterator::IsDone(this);
}

void ot::Settings::ChildInfoIterator::GetChildInfo(ot::Settings::ChildInfoIterator *this)
{
  ;
}

{
  ot::Settings::ChildInfoIterator::GetChildInfo(this);
}

uint64_t ot::ChildTable::StoreChild(ot::ChildTable *this, const ot::Child *a2)
{
  v12 = this;
  v11 = a2;
  ot::ChildTable::RemoveStoredChild(this, a2);
  ot::SettingsBase::ChildInfo::Init(v13);
  ot::Neighbor::GetExtAddress(v11);
  ot::SettingsBase::ChildInfo::SetExtAddress(v13, v2);
  Timeout = ot::Child::GetTimeout(v11);
  ot::SettingsBase::ChildInfo::SetTimeout(v13, Timeout);
  Rloc16 = ot::Neighbor::GetRloc16(v11);
  ot::SettingsBase::ChildInfo::SetRloc16(v13, Rloc16);
  DeviceMode = ot::Neighbor::GetDeviceMode(v11);
  v5 = ot::Mle::DeviceMode::Get(&DeviceMode);
  ot::SettingsBase::ChildInfo::SetMode(v13, v5);
  Version = ot::Neighbor::GetVersion(v11);
  ot::SettingsBase::ChildInfo::SetVersion(v13, Version);
  v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(this);
  return ot::Settings::AddChildInfo(v7, v13);
}

void *ot::SettingsBase::ChildInfo::SetExtAddress(void *this, const ot::Mac::ExtAddress *a2)
{
  *this = *a2;
  return this;
}

{
  return ot::SettingsBase::ChildInfo::SetExtAddress(this, a2);
}

uint64_t ot::SettingsBase::ChildInfo::SetTimeout(ot::SettingsBase::ChildInfo *this, unsigned int a2)
{
  result = ot::LittleEndian::HostSwap32(a2);
  *(this + 2) = result;
  return result;
}

{
  return ot::SettingsBase::ChildInfo::SetTimeout(this, a2);
}

uint64_t ot::Child::GetTimeout(ot::Child *this)
{
  return *(this + 48);
}

{
  return ot::Child::GetTimeout(this);
}

uint64_t ot::SettingsBase::ChildInfo::SetRloc16(ot::SettingsBase::ChildInfo *this, unsigned __int16 a2)
{
  result = ot::LittleEndian::HostSwap16(a2);
  *(this + 6) = result;
  return result;
}

{
  return ot::SettingsBase::ChildInfo::SetRloc16(this, a2);
}

uint64_t ot::SettingsBase::ChildInfo::SetMode(uint64_t this, char a2)
{
  *(this + 14) = a2;
  return this;
}

{
  return ot::SettingsBase::ChildInfo::SetMode(this, a2);
}

uint64_t ot::Mle::DeviceMode::Get(ot::Mle::DeviceMode *this)
{
  return *this;
}

{
  return ot::Mle::DeviceMode::Get(this);
}

BOOL ot::ChildTable::HasMinimalChild(ot::ChildTable *this, __int16 a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  Child = 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  if (ot::Mle::Mle::HasMatchingRouterIdWith(v2, v8))
  {
    ot::Neighbor::AddressMatcher::AddressMatcher(v5, v8, 1);
    Child = ot::ChildTable::FindChild(this, v5);
    if (Child)
    {
      return !ot::Neighbor::IsFullThreadDevice(Child);
    }
  }

  return v7;
}

BOOL ot::Mle::Mle::HasMatchingRouterIdWith(ot::Mle::Mle *this, unsigned __int16 a2)
{
  return ot::Mle::RouterIdMatch(*(this + 72), a2);
}

{
  return ot::Mle::Mle::HasMatchingRouterIdWith(this, a2);
}

uint64_t ot::ChildTable::HasSleepyChildWithAddress(ot::ChildTable *this, const ot::Ip6::Address *a2)
{
  v5 = 0;
  v4 = (this + 8);
  for (i = *this; i; --i)
  {
    if (ot::Neighbor::IsStateValidOrRestoring(v4) && !ot::Neighbor::IsRxOnWhenIdle(v4) && ot::Child::HasIp6Address(v4, a2))
    {
      v5 = 1;
      return v5 & 1;
    }

    v4 = (v4 + 464);
  }

  return v5 & 1;
}

ot::Neighbor *ot::Neighbor::Neighbor(ot::Neighbor *this)
{
  ot::Spinel::SpinelInterface::~SpinelInterface(this);
  std::allocator<char>::allocator[abi:dn200100]((this + 38));
  ot::OwnedPtr<ot::Message>::OwnedPtr(this + 7);
  return this;
}

void ot::AsNonConst<ot::Child>()
{
  ;
}

{
  ot::AsNonConst<ot::Child>();
}

void ot::AsConst<ot::ChildTable>()
{
  ;
}

{
  ot::AsConst<ot::ChildTable>();
}

uint64_t ot::Neighbor::AddressMatcher::AddressMatcher(uint64_t result, char a2, __int16 a3, uint64_t a4)
{
  *result = a2;
  *(result + 2) = a3;
  *(result + 8) = a4;
  return result;
}

uint64_t ot::Settings::ChildInfoIterator::ChildInfoIterator(uint64_t a1, ot::Instance *a2)
{
  ot::Settings::ChildInfoIterator::ChildInfoIterator(a1, a2);
  return a1;
}

{
  ot::SettingsBase::SettingsBase(a1, a2);
  result = a1;
  *(a1 + 18) = 0;
  *(a1 + 20) = 1;
  return result;
}

uint64_t ot::Settings::ChildInfoIterator::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 20) & 1) == 0 || (v4 = 1, (*(a2 + 20) & 1) == 0))
  {
    v3 = 0;
    if ((*(a1 + 20) & 1) == 0)
    {
      v3 = 0;
      if ((*(a2 + 20) & 1) == 0)
      {
        v3 = *(a1 + 18) == *(a2 + 18);
      }
    }

    v4 = v3;
  }

  return v4 & 1;
}

{
  return ot::Settings::ChildInfoIterator::operator==(a1, a2);
}

ot::CslTxScheduler::Callbacks *ot::CslTxScheduler::Callbacks::Callbacks(ot::CslTxScheduler::Callbacks *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  return this;
}

{
  ot::CslTxScheduler::Callbacks::Callbacks(this, a2);
  return this;
}

ot::CslTxScheduler *ot::CslTxScheduler::CslTxScheduler(ot::CslTxScheduler *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 12) = 0;
  ot::CslTxScheduler::Callbacks::Callbacks((this + 26), a2);
  *(this + 7) = 0;
  ot::CslTxScheduler::UpdateFrameRequestAhead(this);
  return this;
}

{
  ot::CslTxScheduler::CslTxScheduler(this, a2);
  return this;
}

_DWORD *ot::CslTxScheduler::UpdateFrameRequestAhead(ot::CslTxScheduler *this)
{
  ot::InstanceLocator::GetInstance(this);
  BusSpeed = otPlatRadioGetBusSpeed();
  ot::InstanceLocator::GetInstance(this);
  otPlatRadioGetBusLatency();
  if (BusSpeed)
  {
    v2 = (BusSpeed + 1199999999) / BusSpeed;
  }

  else
  {
    v2 = 0;
  }

  *(this + 7) = v2;
  return ot::CslTxScheduler::SetFrameRequestAheadUs(this, 2000);
}

void ot::CslTxScheduler::Update(ot::CslTxScheduler *this)
{
  if (*(this + 2))
  {
    if (*(this + 1))
    {
      if (ot::IndirectSender::ChildInfo::GetIndirectMessage((*(this + 1) + 144)) != *(this + 2))
      {
        ot::CslTxScheduler::ChildInfo::ResetCslTxAttempts(*(this + 1) + 168);
        *(this + 1) = 0;
        *(this + 12) = 0;
      }
    }
  }

  else
  {
    ot::CslTxScheduler::RescheduleCslTx(this);
  }
}

void ot::CslTxScheduler::RescheduleCslTx(ot::CslTxScheduler *this)
{
  v17 = this;
  v16 = -1;
  v15 = 0;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v13 = ot::ChildTable::Iterate(v1, 5);
  v14 = &v13;
  v20 = ot::ChildTable::IteratorBuilder::begin(&v13);
  v21 = v2;
  v11 = v20;
  v12 = v2;
  v18 = ot::ChildTable::IteratorBuilder::end(v14);
  v19 = v3;
  v9 = v18;
  v10 = v3;
  while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v11, &v9))
  {
    v8 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v11);
    NextCslTransmissionDelay = 0;
    v6 = 0;
    if (ot::CslTxScheduler::ChildInfo::IsCslSynchronized((v8 + 168)) && ot::IndirectSender::ChildInfo::GetIndirectMessageCount((v8 + 144)))
    {
      NextCslTransmissionDelay = ot::CslTxScheduler::GetNextCslTransmissionDelay(this, v8, &v6, *this);
      if (NextCslTransmissionDelay < v16)
      {
        v16 = NextCslTransmissionDelay;
        v15 = v8;
      }
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v11);
  }

  if (v15)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    ot::Mac::Mac::RequestCslFrameTransmission(v4, v16 / 0x3E8);
  }

  *(this + 1) = v15;
}

uint64_t ot::IndirectSender::ChildInfo::GetIndirectMessage(ot::IndirectSender::ChildInfo *this)
{
  return *this;
}

{
  return ot::IndirectSender::ChildInfo::GetIndirectMessage(this);
}

BOOL ot::CslTxScheduler::Clear(ot::CslTxScheduler *this)
{
  v15 = this;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v13 = ot::ChildTable::Iterate(v1, 5);
  v14 = &v13;
  v18 = ot::ChildTable::IteratorBuilder::begin(&v13);
  v19 = v2;
  v11 = v18;
  v12 = v2;
  v16 = ot::ChildTable::IteratorBuilder::end(v14);
  v17 = v3;
  v9 = v16;
  v10 = v3;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v11, &v9);
    if (!result)
    {
      break;
    }

    v8 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v11);
    ot::CslTxScheduler::ChildInfo::ResetCslTxAttempts(v8 + 168);
    ot::CslTxScheduler::ChildInfo::SetCslSynchronized(v8 + 168, 0);
    ot::CslTxScheduler::ChildInfo::SetCslPrevSnValid((v8 + 168), 0);
    ot::CslTxScheduler::ChildInfo::SetCslChannel(v8 + 168, 0);
    ot::CslTxScheduler::ChildInfo::SetCslTimeout(v8 + 168, 0);
    ot::CslTxScheduler::ChildInfo::SetCslPeriod(v8 + 168, 0);
    ot::CslTxScheduler::ChildInfo::SetCslPhase(v8 + 168, 0);
    v5 = v8 + 168;
    ot::Time::Time(&v7, 0);
    ot::CslTxScheduler::ChildInfo::SetCslLastHeard(v5, v7);
    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v11);
  }

  *(this + 12) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  return result;
}

uint64_t ot::CslTxScheduler::ChildInfo::SetCslTimeout(uint64_t this, int a2)
{
  *(this + 4) = a2;
  return this;
}

{
  return ot::CslTxScheduler::ChildInfo::SetCslTimeout(this, a2);
}

BOOL ot::CslTxScheduler::ChildInfo::IsCslSynchronized(ot::CslTxScheduler::ChildInfo *this)
{
  v2 = 0;
  if ((*(this + 2) & 0x80) != 0)
  {
    return *(this + 4) != 0;
  }

  return v2;
}

{
  return ot::CslTxScheduler::ChildInfo::IsCslSynchronized(this);
}

unint64_t ot::CslTxScheduler::GetNextCslTransmissionDelay(ot::CslTxScheduler *this, const ot::Child *a2, unsigned int *a3, unsigned int a4)
{
  ot::InstanceLocator::GetInstance(this);
  Now = otPlatRadioGetNow();
  v7 = 160 * ot::CslTxScheduler::ChildInfo::GetCslPeriod((a2 + 168));
  LastRxTimestamp = ot::CslTxScheduler::ChildInfo::GetLastRxTimestamp((a2 + 168));
    ;
  }

  *a3 = i - ot::CslTxScheduler::ChildInfo::GetLastRxTimestamp((a2 + 168));
  return i - Now - a4;
}

ot::Mac::TxFrame *ot::CslTxScheduler::HandleFrameRequest(const ot::Child **this, ot::Mac::TxFrames *a2)
{
  v18 = this;
  v17 = a2;
  TxFrame = 0;
  v15 = 0;
  if (this[1] && ot::CslTxScheduler::ChildInfo::IsCslSynchronized((this[1] + 168)))
  {
    TxFrame = ot::Mac::TxFrames::GetTxFrame(v17);
    if (ot::CslTxScheduler::Callbacks::PrepareFrameForChild((this + 26), TxFrame, this + 12, this[1]))
    {
      return 0;
    }

    else
    {
      this[2] = ot::IndirectSender::ChildInfo::GetIndirectMessage((this[1] + 144));
      if (this[2])
      {
        if (ot::DataPollHandler::ChildInfo::GetIndirectTxAttempts((this[1] + 160)) <= 0 && ot::CslTxScheduler::ChildInfo::GetCslTxAttempts((this[1] + 168)) <= 0)
        {
          ot::Mac::TxFrame::SetIsARetransmission(TxFrame, 0);
        }

        else
        {
          ot::Mac::TxFrame::SetIsARetransmission(TxFrame, 1);
          IndirectDataSequenceNumber = ot::DataPollHandler::ChildInfo::GetIndirectDataSequenceNumber((this[1] + 160));
          ot::Mac::Frame::SetSequence(TxFrame, IndirectDataSequenceNumber);
          IsCslIePresent = ot::Mac::TxFrame::IsCslIePresent(TxFrame);
          if (ot::Mac::Frame::GetSecurityEnabled(TxFrame) && (IsCslIePresent & 1) == 0)
          {
            IndirectFrameCounter = ot::DataPollHandler::ChildInfo::GetIndirectFrameCounter((this[1] + 160));
            ot::Mac::Frame::SetFrameCounter(TxFrame, IndirectFrameCounter);
            IndirectKeyId = ot::DataPollHandler::ChildInfo::GetIndirectKeyId((this[1] + 160));
            ot::Mac::Frame::SetKeyId(TxFrame, IndirectKeyId);
          }
        }

        if (ot::CslTxScheduler::ChildInfo::GetCslChannel((this[1] + 168)))
        {
          CslChannel = ot::CslTxScheduler::ChildInfo::GetCslChannel((this[1] + 168));
          ot::Mac::TxFrame::SetChannel(TxFrame, CslChannel);
        }

        Channel = ot::Mac::Frame::GetChannel(TxFrame);
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        if (Channel != ot::Mac::Mac::GetPanChannel(v6))
        {
          v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
          PanChannel = ot::Mac::Mac::GetPanChannel(v7);
          ot::Mac::TxFrame::SetRxChannelAfterTxDone(TxFrame, PanChannel);
        }

        ot::CslTxScheduler::GetNextCslTransmissionDelay(this, this[1], &v15, 0);
        ot::Mac::TxFrame::SetTxDelay(TxFrame, v15);
        v11 = TxFrame;
        LastRxTimestamp = ot::CslTxScheduler::ChildInfo::GetLastRxTimestamp((this[1] + 168));
        ot::Mac::TxFrame::SetTxDelayBaseTime(v11, LastRxTimestamp);
        ot::Mac::TxFrame::SetCsmaCaEnabled(TxFrame, 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return TxFrame;
}

uint64_t ot::CslTxScheduler::Callbacks::PrepareFrameForChild(ot::InstanceLocator *a1, ot::Mac::TxFrame *a2, _WORD *a3, uint64_t a4)
{
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::IndirectSender>(a1);
  return ot::IndirectSender::PrepareFrameForChild(v4, a2, a3, a4);
}

{
  return ot::CslTxScheduler::Callbacks::PrepareFrameForChild(a1, a2, a3, a4);
}

uint64_t ot::CslTxScheduler::ChildInfo::GetCslChannel(ot::CslTxScheduler::ChildInfo *this)
{
  return *(this + 3);
}

{
  return ot::CslTxScheduler::ChildInfo::GetCslChannel(this);
}

void ot::CslTxScheduler::HandleMissedScheduledTx(ot::CslTxScheduler *this)
{
  if (*(this + 1))
  {
    *(this + 1) = 0;
    *(this + 2) = 0;
    ot::CslTxScheduler::RescheduleCslTx(this);
  }
}

void ot::CslTxScheduler::HandleSentFrame(uint64_t a1, ot::Mac::TxFrame *a2, int a3)
{
  v4 = *(a1 + 8);
  *(a1 + 16) = 0;
  if (v4)
  {
    *(a1 + 8) = 0;
    ot::CslTxScheduler::HandleSentFrame(a1, a2, a3, v4);
  }

  ot::CslTxScheduler::RescheduleCslTx(a1);
}

void ot::CslTxScheduler::HandleSentFrame(unsigned __int16 *a1, ot::Mac::TxFrame *a2, int a3, ot::Neighbor *a4)
{
  v55 = a1;
  v54 = a2;
  v53 = a3;
  v52 = a4;
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
  Counters = ot::Mac::Mac::GetCounters(v4);
  ++Counters[17];
  v50 = 4;
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
  if (ot::Mle::Mle::IsCslPeripheralPresent(v5))
  {
    v50 = 8;
  }

  if (v53)
  {
    if (v53 != 11)
    {
      if (v53 == 14)
      {
        IsHeaderUpdated = 1;
        if (ot::Mac::Frame::GetSecurityEnabled(v54))
        {
          IsHeaderUpdated = ot::Mac::TxFrame::IsHeaderUpdated(v54);
        }

        if ((IsHeaderUpdated & 1) == 0)
        {
          __assert_rtn("HandleSentFrame", "csl_tx_scheduler.cpp", 382, "!aFrame.GetSecurityEnabled() || aFrame.IsHeaderUpdated()");
        }

        ot::CslTxScheduler::ChildInfo::IncrementCslTxAttempts(v52 + 168);
        v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
        if (ot::Mle::Mle::IsSleepyRouter(v16))
        {
          Rloc16 = ot::Neighbor::GetRloc16(v52);
          ot::CslTxScheduler::ChildInfo::GetCslTxAttempts((v52 + 168));
          v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
          ot::Mle::Mle::GetCslPeripheralState(v17);
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("CslTxScheduler", "CSL tx to child %04x failed, attempt %d/%d in Peripheral Attach State: %s", v18, v19, v20, v21, v22, v23, Rloc16);
        }

        else
        {
          v43 = ot::Neighbor::GetRloc16(v52);
          ot::CslTxScheduler::ChildInfo::GetCslTxAttempts((v52 + 168));
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("CslTxScheduler", "CSL tx to child %04x failed, attempt %d/%d", v24, v25, v26, v27, v28, v29, v43);
        }

        if (ot::CslTxScheduler::ChildInfo::GetCslTxAttempts((v52 + 168)) >= v50)
        {
          ot::CslTxScheduler::ChildInfo::SetCslSynchronized(v52 + 168, 0);
          ot::CslTxScheduler::ChildInfo::ResetCslTxAttempts(v52 + 168);
          v30 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
          if (ot::Mle::Mle::IsCslPeripheralPresent(v30))
          {
            v42 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
            IndirectMessage = ot::IndirectSender::ChildInfo::GetIndirectMessage((v52 + 144));
            ot::MeshForwarder::RemoveMessageIfNoPendingTx(v42, IndirectMessage);
            v32 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
            ot::Mle::MleRouter::RemoveNeighbor(v32, v52);
            v33 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
            ot::Mle::Mle::NeedsDetachConfirm(v33, 0);
            return;
          }

          ++Counters[23];
        }

        ++Counters[18];
      }

      else if (v53 != 15)
      {
        __assert_rtn("HandleSentFrame", "csl_tx_scheduler.cpp", 460, "false");
      }

      ++Counters[21];
    }

    if (!ot::Mac::Frame::IsEmpty(v54))
    {
      Sequence = ot::Mac::Frame::GetSequence(v54);
      ot::DataPollHandler::ChildInfo::SetIndirectDataSequenceNumber(v52 + 160, Sequence);
      if (ot::Mac::Frame::GetSecurityEnabled(v54) && (ot::Mac::TxFrame::IsHeaderUpdated(v54) & 1) != 0)
      {
        v49 = 0;
        v48 = 0;
        ot::Mac::Frame::GetFrameCounter(v54, &v49);
        IgnoreError();
        ot::DataPollHandler::ChildInfo::SetIndirectFrameCounter(v52 + 40, v49);
        ot::Mac::Frame::GetKeyId(v54, &v48);
        IgnoreError();
        ot::DataPollHandler::ChildInfo::SetIndirectKeyId(v52 + 160, v48);
      }
    }

    ++Counters[15];
  }

  else
  {
    ot::CslTxScheduler::ChildInfo::ResetCslTxAttempts(v52 + 168);
    ot::DataPollHandler::ChildInfo::ResetIndirectTxAttempts(v52 + 160);
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
    if (ot::Mle::Mle::IsWaitingForDetachConfirm(v6))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("CslTxScheduler", "Removing WED after getting confirmation for Detach Frame", v7, v8, v9, v10, v11, v12, v35);
      v46 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
      v13 = ot::IndirectSender::ChildInfo::GetIndirectMessage((v52 + 144));
      ot::MeshForwarder::RemoveMessageIfNoPendingTx(v46, v13);
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
      ot::Mle::MleRouter::RemoveNeighbor(v14, v52);
      v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
      ot::Mle::Mle::NeedsDetachConfirm(v15, 0);
    }

    else
    {
      v36 = Counters[18];
      v37 = Counters[19];
      v38 = Counters[20];
      v39 = Counters[21];
      v40 = Counters[22];
      v41 = Counters[23];
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("CslTxScheduler", "CslScheduler::HandleSentFrame: mTxCslTotal=%d mTxCslErrNoAck=%d mTxCslErrCca=%d mTxCslErrAbort=%d mTxCslErrBusyChannel=%d mTxCslLossOfSyncCountDueToCslTimeout=%d mTxCslLossOfSyncCountDueToReTx=%d", v7, v8, v9, v10, v11, v12, Counters[17]);
      ot::CslTxScheduler::Callbacks::HandleSentFrameToChild((a1 + 13), v54, a1 + 12, v53, v52);
    }
  }
}

uint64_t ot::CslTxScheduler::ForceDetach(ot::CslTxScheduler *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  result = ot::Mle::Mle::IsCslPeripheralPresent(v1);
  if (result)
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    ChildAtIndex = ot::ChildTable::GetChildAtIndex(v3, 0);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("CslTxScheduler", "Removing WED after getting RCP Reset", v4, v5, v6, v7, v8, v9, v12);
    ot::CslTxScheduler::ChildInfo::SetCslSynchronized(ChildAtIndex + 168, v13 & 1);
    ot::CslTxScheduler::ChildInfo::ResetCslTxAttempts(ChildAtIndex + 168);
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::MleRouter::RemoveNeighbor(v10, ChildAtIndex);
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    return ot::Mle::Mle::NeedsDetachConfirm(v11, v13 & 1);
  }

  return result;
}

uint64_t ot::Mle::Mle::IsWaitingForDetachConfirm(ot::Mle::Mle *this)
{
  return (*(this + 856) >> 1) & 1;
}

{
  return ot::Mle::Mle::IsWaitingForDetachConfirm(this);
}

uint64_t ot::CslTxScheduler::ChildInfo::IncrementCslTxAttempts(uint64_t this)
{
  *(this + 2) = *(this + 2) & 0x80 | ((*(this + 2) & 0x7F) + 1) & 0x7F;
  return this;
}

{
  return ot::CslTxScheduler::ChildInfo::IncrementCslTxAttempts(this);
}

const char *ot::Mle::Mle::GetCslPeripheralState(ot::Mle::Mle *this)
{
  return ot::Mle::Mle::WorAttachStateToString(this, *(this + 128));
}

{
  return ot::Mle::Mle::GetCslPeripheralState(this);
}

void ot::CslTxScheduler::Callbacks::HandleSentFrameToChild(ot::InstanceLocator *a1, ot::Mac::Frame *a2, unsigned __int16 *a3, int a4, uint64_t a5)
{
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::IndirectSender>(a1);
  ot::IndirectSender::HandleSentFrameToChild(v5, a2, a3, a4, a5);
}

{
  ot::CslTxScheduler::Callbacks::HandleSentFrameToChild(a1, a2, a3, a4, a5);
}

const char *ot::Mle::Mle::WorAttachStateToString(uint64_t a1, unsigned __int8 a2)
{
  if (a2 >= ot::GetArrayLength<char const*,(unsigned short)5>())
  {
    return "invalid";
  }

  else
  {
    return ot::Mle::Mle::WorAttachStateToString(ot::Mle::Mle::CslPeripheralAttachState)::kRoleStrings[a2];
  }
}

{
  return ot::Mle::Mle::WorAttachStateToString(a1, a2);
}

uint64_t ot::GetArrayLength<char const*,(unsigned short)5>()
{
  return 5;
}

{
  return ot::GetArrayLength<char const*,(unsigned short)5>();
}

ot::Mle::DiscoverScanner *ot::Mle::DiscoverScanner::DiscoverScanner(ot::Mle::DiscoverScanner *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this);
  ot::TaskletIn<ot::Mle::DiscoverScanner,&ot::Mle::DiscoverScanner::HandleScanDoneTask>::TaskletIn((this + 16), a2);
  ot::TimerMilliIn<ot::Mle::DiscoverScanner,&ot::Mle::DiscoverScanner::HandleTimer>::TimerMilliIn((this + 32), a2);
  *(this + 14) = 0;
  ot::Mac::ChannelMask::ChannelMask((this + 60));
  result = this;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 73) = 0;
  *(this + 138) &= ~1u;
  *(this + 138) &= ~2u;
  return result;
}

{
  ot::Mle::DiscoverScanner::DiscoverScanner(this, a2);
  return this;
}

unsigned __int8 *ot::Mle::DiscoverScanner::HandleTimer(unsigned __int8 *this)
{
  v2 = this;
  if (this[64] == 1)
  {
    if (ot::Mac::ChannelMask::GetNextChannel((this + 60), this + 72))
    {
      *(v2 + 64) = 2;
    }

    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(v2);
    return ot::MeshForwarder::ResumeMessageTransmissions(v1);
  }

  return this;
}

ot::InstanceLocator *ot::TaskletIn<ot::Mle::DiscoverScanner,&ot::Mle::DiscoverScanner::HandleScanDoneTask>::TaskletIn(ot::InstanceLocator *a1, ot::Instance *a2)
{
  ot::TaskletIn<ot::Mle::DiscoverScanner,&ot::Mle::DiscoverScanner::HandleScanDoneTask>::TaskletIn(a1, a2);
  return a1;
}

{
  ot::Tasklet::Tasklet(a1, a2, ot::TaskletIn<ot::Mle::DiscoverScanner,&ot::Mle::DiscoverScanner::HandleScanDoneTask>::HandleTasklet);
  return a1;
}

ot::TimerMilli *ot::TimerMilliIn<ot::Mle::DiscoverScanner,&ot::Mle::DiscoverScanner::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::Mle::DiscoverScanner,&ot::Mle::DiscoverScanner::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::Mle::DiscoverScanner,&ot::Mle::DiscoverScanner::HandleTimer>::HandleTimer);
  return a1;
}

uint64_t ot::Mle::DiscoverScanner::Discover(uint64_t a1, ot::Mac::ChannelMask *a2, unsigned __int16 a3, char a4, char a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v43 = a1;
  v42 = a2;
  v41 = a3;
  v40 = a4;
  v39 = a5;
  v38 = a6;
  v37 = a7;
  v36 = a8;
  v35 = 0;
  v34 = 0;
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
  if (ot::ThreadNetif::IsUp(v8))
  {
    if (*(a1 + 64))
    {
      v35 = 5;
    }

    else
    {
      *(a1 + 138) = *(a1 + 138) & 0xFE | v39 & 1;
      if (*(a1 + 138))
      {
        if (v38)
        {
          *(a1 + 56) = *v38;
        }

        else
        {
          v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(a1);
          ot::Radio::GetIeeeEui64(v9, v44);
          ot::MeshCoP::ComputeJoinerId(v44, v44, v10);
          ot::MeshCoP::SteeringData::CalculateHashBitIndexes(v44, (a1 + 56));
        }
      }

      ot::CallbackBase<void (*)(otActiveScanResult *,void *)>::Set(a1, v37, v36);
      *(a1 + 138) &= ~2u;
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
      *(a1 + 60) = *ot::Mac::Mac::GetSupportedChannelMask(v11);
      if (!ot::Mac::ChannelMask::IsEmpty(v42))
      {
        ot::Mac::ChannelMask::Intersect((a1 + 60), v42);
      }

      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
      v34 = ot::Mle::Mle::NewMleMessage(v12, 16);
      if (v34)
      {
        ot::Message::SetPanId(v34, v41);
        ot::MeshCoP::DiscoveryRequestTlv::Init(v31);
        ot::MeshCoP::DiscoveryRequestTlv::SetVersion(v31, 4);
        ot::MeshCoP::DiscoveryRequestTlv::SetJoiner(v31, v40 & 1);
        if (*(a1 + 73))
        {
          ot::MeshCoP::JoinerAdvertisementTlv::Init(v45);
          ot::MeshCoP::JoinerAdvertisementTlv::SetOui(v45, *(a1 + 68), v13);
          ot::MeshCoP::JoinerAdvertisementTlv::SetAdvData(v45, (a1 + 74), *(a1 + 73));
        }

        ot::Mle::Tlv::SetType(v33, 26);
        Size = ot::Tlv::GetSize(v31);
        if (*(a1 + 73))
        {
          v28 = ot::Tlv::GetSize(v45);
        }

        else
        {
          v28 = 0;
        }

        ot::Tlv::SetLength(v33, Size + v28);
        v35 = ot::Message::Append<ot::Mle::Tlv>(v34, v33);
        if (!v35)
        {
          v35 = ot::Tlv::AppendTo(v31, v34);
          if (!v35 && (!*(a1 + 73) || (v35 = ot::Tlv::AppendTo(v45, v34)) == 0))
          {
            ot::Ip6::Address::SetToLinkLocalAllRoutersMulticast(&v32);
            v35 = ot::Mle::Mle::TxMessage::SendTo(v34, &v32);
            if (!v35)
            {
              if (v41 == 0xFFFF)
              {
                v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
                if (ot::Mac::Mac::GetPanId(v14) == 0xFFFF)
                {
                  v27 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
                  RandomPanId = ot::Mac::GenerateRandomPanId(v27);
                  ot::Mac::Mac::SetPanId(v27, RandomPanId);
                  *(a1 + 138) = *(a1 + 138) & 0xFD | 2;
                }
              }

              *(a1 + 72) = -1;
              if (ot::Mac::ChannelMask::GetNextChannel((a1 + 60), (a1 + 72)))
              {
                v16 = 2;
              }

              else
              {
                v16 = 1;
              }

              *(a1 + 64) = v16;
              v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
              if (!ot::Mle::Mle::IsDisabled(v17))
              {
                v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
                if (!ot::Mle::Mle::IsRxOnWhenIdle(v18))
                {
                  v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
                  ot::MeshForwarder::SetRxOnWhenIdle(v19, 1, v20, v21, v22, v23, v24, v25);
                }
              }

              ot::Mle::Mle::Log(0, 9, &v32);
            }
          }
        }
      }

      else
      {
        v35 = 3;
      }
    }
  }

  else
  {
    v35 = 13;
  }

  if (v35 && v34)
  {
    ot::Message::Free(v34);
  }

  return v35;
}

void *ot::CallbackBase<void (*)(otActiveScanResult *,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otActiveScanResult *,void *)>::Set(result, a2, a3);
}

uint64_t ot::MeshCoP::DiscoveryRequestTlv::Init(ot::MeshCoP::DiscoveryRequestTlv *this)
{
  ot::MeshCoP::Tlv::SetType(this, 128);
  result = ot::Tlv::SetLength(this, 2);
  *(this + 2) = 0;
  *(this + 3) = 0;
  return result;
}

{
  return ot::MeshCoP::DiscoveryRequestTlv::Init(this);
}

uint64_t ot::MeshCoP::DiscoveryRequestTlv::SetVersion(uint64_t this, char a2)
{
  *(this + 2) = *(this + 2) & 0xF | (16 * a2);
  return this;
}

{
  return ot::MeshCoP::DiscoveryRequestTlv::SetVersion(this, a2);
}

uint64_t ot::MeshCoP::DiscoveryRequestTlv::SetJoiner(uint64_t this, char a2)
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
  return ot::MeshCoP::DiscoveryRequestTlv::SetJoiner(this, a2);
}

uint64_t ot::MeshCoP::JoinerAdvertisementTlv::Init(ot::MeshCoP::JoinerAdvertisementTlv *this)
{
  ot::MeshCoP::Tlv::SetType(this, 241);
  return ot::Tlv::SetLength(this, 67);
}

{
  return ot::MeshCoP::JoinerAdvertisementTlv::Init(this);
}

uint64_t ot::MeshCoP::JoinerAdvertisementTlv::SetOui(ot::MeshCoP::JoinerAdvertisementTlv *this, unsigned int a2, unsigned __int8 *a3)
{
  return ot::BigEndian::WriteUint24(a2, this + 2, a3);
}

{
  return ot::MeshCoP::JoinerAdvertisementTlv::SetOui(this, a2, a3);
}

void *ot::MeshCoP::JoinerAdvertisementTlv::SetAdvData(ot::MeshCoP::JoinerAdvertisementTlv *this, const unsigned __int8 *a2, unsigned __int8 a3)
{
  v5 = 0;
  if (a2)
  {
    v5 = 0;
    if (a3)
    {
      v5 = a3 <= 0x40u;
    }
  }

  if (!v5)
  {
    __assert_rtn("SetAdvData", "meshcop_tlvs.hpp", 1377, "(aAdvData != nullptr) && (aAdvDataLength > 0) && (aAdvDataLength <= kAdvDataMaxLength)");
  }

  ot::Tlv::SetLength(this, a3 + 3);
  return memcpy(this + 5, a2, a3);
}

{
  return ot::MeshCoP::JoinerAdvertisementTlv::SetAdvData(this, a2, a3);
}

uint64_t ot::Message::Append<ot::Mle::Tlv>(ot::Message *a1, const void *a2)
{
  return ot::Message::AppendBytes(a1, a2, 2u);
}

{
  return ot::Message::Append<ot::Mle::Tlv>(a1, a2);
}

uint64_t ot::Mle::DiscoverScanner::SetJoinerAdvertisement(ot::Mle::DiscoverScanner *this, unsigned int a2, const unsigned __int8 *a3, unsigned __int8 a4)
{
  v5 = 0;
  if (a3 && a4 && a4 <= 0x40u && a2 <= 0xFFFFFF)
  {
    *(this + 17) = a2;
    *(this + 73) = a4;
    memcpy(this + 74, a3, a4);
  }

  else
  {
    return 7;
  }

  return v5;
}

ot::Mac::TxFrame *ot::Mle::DiscoverScanner::PrepareDiscoveryRequestFrame(ot::Mle::DiscoverScanner *this, ot::Mac::TxFrame *a2)
{
  v6 = a2;
  v5 = *(this + 64);
  if (!*(this + 64))
  {
    return 0;
  }

  if (v5 == 1)
  {
    ot::Mac::TxFrame::SetChannel(a2, *(this + 72));
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    ot::Mac::Mac::SetTemporaryChannel(v2, *(this + 72));
    IgnoreError();
    return v6;
  }

  if (v5 == 2)
  {
    return 0;
  }

  return v6;
}

unsigned __int8 *ot::Mle::DiscoverScanner::HandleDiscoveryRequestFrameTxDone(unsigned __int8 *result, ot::Message *a2, int a3)
{
  v4 = result;
  v5 = result[64];
  if (result[64])
  {
    if (v5 == 1)
    {
      if (!a3 || a3 == 15)
      {
        ot::Message::SetDirectTransmission(a2);
        ot::Message::SetTimestampToNow(a2);
        v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(v4);
        ot::MeshForwarder::PauseMessageTransmissions(v3);
        return ot::TimerMilli::Start((v4 + 32), 0x12Cu);
      }

      result[64] = 2;
    }

    else if (v5 != 2)
    {
      return result;
    }

    return ot::Mle::DiscoverScanner::HandleDiscoverComplete(result);
  }

  return result;
}

uint64_t ot::Message::SetTimestampToNow(ot::Message *this)
{
  Now = ot::TimerMilli::GetNow(this);
  return ot::Message::SetTimestamp(this, Now);
}

{
  return ot::Message::SetTimestampToNow(this);
}

uint64_t ot::MeshForwarder::PauseMessageTransmissions(uint64_t this)
{
  *(this + 88) = *(this + 88) & 0xFB | 4;
  return this;
}

{
  return ot::MeshForwarder::PauseMessageTransmissions(this);
}

uint64_t ot::Mle::DiscoverScanner::HandleDiscoverComplete(ot::Mle::DiscoverScanner *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  if (ot::Mle::Mle::isThreadAlwaysOnFeatureEnabled(v1))
  {
    v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    result = ot::Mle::Mle::IsDisabled(v13);
    if ((result & 1) == 0)
    {
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      result = ot::Mle::Mle::IsRxOnWhenIdle(v14);
      if ((result & 1) == 0)
      {
        v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
        result = ot::MeshForwarder::SetRxOnWhenIdle(v15, 0, v16, v17, v18, v19, v20, v21);
      }
    }
  }

  else
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    result = ot::Mle::Mle::IsDisabled(v2);
    if ((result & 1) == 0)
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      result = ot::Mle::Mle::IsRxOnWhenIdle(v4);
      if ((result & 1) == 0)
      {
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
        result = ot::Mle::Mle::IsSleepyRouter(v5);
        if ((result & 1) == 0)
        {
          v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
          result = ot::MeshForwarder::SetRxOnWhenIdle(v6, 0, v7, v8, v9, v10, v11, v12);
        }
      }
    }
  }

  v25 = *(this + 64);
  if (*(this + 64))
  {
    if (v25 == 1)
    {
      ot::TimerMilli::Stop((this + 32));
      v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
      ot::MeshForwarder::ResumeMessageTransmissions(v22);
    }

    else if (v25 != 2)
    {
      return result;
    }

    v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    ot::Mac::Mac::ClearTemporaryChannel(v23);
    if ((*(this + 138) & 2) != 0)
    {
      v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ot::Mac::Mac::SetPanId(v24, 0xFFFF);
      *(this + 138) &= ~2u;
    }

    return ot::Tasklet::Post((this + 16));
  }

  return result;
}

void *ot::Callback<void (*)(otActiveScanResult *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<decltype(nullptr)>(void *result)
{
  if (*result)
  {
    return ot::Callback<void (*)(otActiveScanResult *,void *),(ot::CallbackContextPosition)1>::Invoke<decltype(nullptr)>(result);
  }

  return result;
}

{
  return ot::Callback<void (*)(otActiveScanResult *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<decltype(nullptr)>(result);
}

void ot::Mle::DiscoverScanner::HandleDiscoveryResponse(ot::Mle::DiscoverScanner *this, ot::Ip6::MessageInfo **a2)
{
  v34 = this;
  v33 = a2;
  TlvValueOffsetRange = 0;
  v27 = 0;
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(a2[1]);
  ot::Mle::Mle::Log(1, 10, PeerAddr);
  if (*(this + 64) == 1)
  {
    TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(*v33, 0x1A, &v30, v3);
    if (!TlvValueOffsetRange)
    {
      ot::ClearAllBytes<otActiveScanResult>(v35);
      v40 = v40 & 0xDF | 0x20;
      *&v38[17] = ot::Message::GetPanId(*v33);
      v39[2] = ot::Message::GetChannel(*v33);
      v39[3] = ot::Message::GetAverageRss(*v33);
      v39[4] = ot::Message::GetAverageLqi(*v33);
      v4 = ot::Ip6::MessageInfo::GetPeerAddr(v33[1]);
      Iid = ot::Ip6::Address::GetIid(v4);
      v5 = ot::AsCoreType<otExtAddress>(v35);
      ot::Ip6::InterfaceIdentifier::ConvertToExtAddress(Iid, v5);
      while (!ot::OffsetRange::IsEmpty(&v30))
      {
        TlvValueOffsetRange = ot::Tlv::ParsedInfo::ParseFrom(v28, *v33, &v30);
        if (TlvValueOffsetRange)
        {
          goto LABEL_31;
        }

        if ((v28[1] & 1) == 0)
        {
          switch(v28[0])
          {
            case 2:
              v21 = *v33;
              Offset = ot::OffsetRange::GetOffset(&v30);
              v8 = ot::AsCoreType<otExtendedPanId>(v37);
              TlvValueOffsetRange = ot::Tlv::Read<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(v21, Offset, v8);
              if (TlvValueOffsetRange)
              {
                goto LABEL_31;
              }

              break;
            case 3:
              v19 = *v33;
              v9 = ot::OffsetRange::GetOffset(&v30);
              TlvValueOffsetRange = ot::Tlv::Read<ot::MeshCoP::NetworkNameTlv>(v19, v9, v36, v10, v11);
              if (TlvValueOffsetRange)
              {
                goto LABEL_31;
              }

              break;
            case 8:
              if (!ot::OffsetRange::IsEmpty(&v29))
              {
                v26 = ot::AsCoreType<otSteeringData>(v38);
                v25 = v29;
                ot::OffsetRange::ShrinkLength(&v25, 0x10u);
                v17 = v26;
                Length = ot::OffsetRange::GetLength(&v25);
                ot::MeshCoP::SteeringData::Init(v17, Length);
                v18 = *v33;
                Data = ot::MeshCoP::SteeringData::GetData(v26);
                ot::Message::ReadBytes(v18, &v25, Data);
                if ((*(this + 138) & 1) != 0 && !ot::MeshCoP::SteeringData::Contains(v26, this + 28))
                {
                  goto LABEL_31;
                }

                v27 = 1;
              }

              break;
            case 0x12:
              v16 = *v33;
              v14 = ot::OffsetRange::GetOffset(&v30);
              TlvValueOffsetRange = ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(v16, v14, v39);
              if (TlvValueOffsetRange)
              {
                goto LABEL_31;
              }

              break;
            case 0x81:
              TlvValueOffsetRange = ot::Message::Read<ot::MeshCoP::DiscoveryResponseTlv>(*v33, &v30, v31);
              if (TlvValueOffsetRange)
              {
                goto LABEL_31;
              }

              if (!ot::MeshCoP::DiscoveryResponseTlv::IsValid(v31))
              {
                TlvValueOffsetRange = 6;
                goto LABEL_31;
              }

              Version = ot::MeshCoP::DiscoveryResponseTlv::GetVersion(v31);
              v40 = v40 & 0xF0 | Version & 0xF;
              IsNativeCommissioner = ot::MeshCoP::DiscoveryResponseTlv::IsNativeCommissioner(v31);
              v40 = v40 & 0xEF | (16 * IsNativeCommissioner);
              break;
          }
        }

        Size = ot::Tlv::ParsedInfo::GetSize(v28);
        ot::OffsetRange::AdvanceOffset(&v30, Size);
      }

      if (*(this + 138) & 1) == 0 || (v27)
      {
        v24 = v35;
        ot::Callback<void (*)(otActiveScanResult *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otActiveScanResult *>(this, &v24);
      }
    }
  }

  else
  {
    TlvValueOffsetRange = 2;
  }

LABEL_31:
  ot::Mle::Mle::LogProcessError(10, TlvValueOffsetRange);
}

uint64_t ot::Message::Read<ot::MeshCoP::DiscoveryResponseTlv>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 4u);
}

{
  return ot::Message::Read<ot::MeshCoP::DiscoveryResponseTlv>(a1, a2, a3);
}

BOOL ot::MeshCoP::DiscoveryResponseTlv::IsValid(ot::MeshCoP::DiscoveryResponseTlv *this)
{
  return ot::Tlv::GetLength(this) >= 2uLL;
}

{
  return ot::MeshCoP::DiscoveryResponseTlv::IsValid(this);
}

uint64_t ot::MeshCoP::DiscoveryResponseTlv::GetVersion(ot::MeshCoP::DiscoveryResponseTlv *this)
{
  return *(this + 2) >> 4;
}

{
  return ot::MeshCoP::DiscoveryResponseTlv::GetVersion(this);
}

BOOL ot::MeshCoP::DiscoveryResponseTlv::IsNativeCommissioner(ot::MeshCoP::DiscoveryResponseTlv *this)
{
  return (*(this + 2) & 8) != 0;
}

{
  return ot::MeshCoP::DiscoveryResponseTlv::IsNativeCommissioner(this);
}

uint64_t ot::Tlv::Read<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  return ot::Tlv::ReadTlvValue(a1, a2, a3, 8);
}

{
  return ot::Tlv::Read<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(a1, a2, a3);
}

uint64_t ot::Tlv::Read<ot::MeshCoP::NetworkNameTlv>(ot::Tlv *a1, unsigned __int16 a2, char *a3, uint64_t a4, char *a5)
{
  return ot::Tlv::ReadStringTlv(a1, a2, 0x10u, a3, a5);
}

{
  return ot::Tlv::Read<ot::MeshCoP::NetworkNameTlv>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  return ot::Tlv::ReadUintTlv<unsigned short>(a1, a2, a3);
}

{
  return ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(a1, a2, a3);
}

uint64_t ot::Tlv::ParsedInfo::GetSize(ot::Tlv::ParsedInfo *this)
{
  return ot::OffsetRange::GetLength((this + 2));
}

{
  return ot::Tlv::ParsedInfo::GetSize(this);
}

void *ot::Callback<void (*)(otActiveScanResult *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otActiveScanResult *>(void *result, void *a2)
{
  if (*result)
  {
    return ot::Callback<void (*)(otActiveScanResult *,void *),(ot::CallbackContextPosition)1>::Invoke<otActiveScanResult *>(result, a2);
  }

  return result;
}

{
  return ot::Callback<void (*)(otActiveScanResult *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otActiveScanResult *>(result, a2);
}

uint64_t ot::Callback<void (*)(otActiveScanResult *,void *),(ot::CallbackContextPosition)1>::Invoke<decltype(nullptr)>(uint64_t a1)
{
  return (*a1)(0, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otActiveScanResult *,void *),(ot::CallbackContextPosition)1>::Invoke<decltype(nullptr)>(a1);
}

uint64_t ot::Callback<void (*)(otActiveScanResult *,void *),(ot::CallbackContextPosition)1>::Invoke<otActiveScanResult *>(uint64_t a1, void *a2)
{
  return (*a1)(*a2, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otActiveScanResult *,void *),(ot::CallbackContextPosition)1>::Invoke<otActiveScanResult *>(a1, a2);
}

ot::DuaManager *ot::DuaManager::DuaManager(ot::DuaManager *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::TaskletIn<ot::DuaManager,&ot::DuaManager::PerformNextRegistration>::TaskletIn((this + 8), a2);
  *(this + 40) &= ~1u;
  *(this + 41) = 0;
  *(this + 42) = 0;
  ot::Time::Time((this + 44), 0);
  *(this + 54) = 64;
  *(this + 22) = 0;
  ot::Ip6::Netif::UnicastAddress::InitAsThreadOriginGlobalScope((this + 56));
  ot::Clearable<ot::Ip6::InterfaceIdentifier>::Clear(this + 6);
  ot::Clearable<ot::BitVector<(unsigned short)64>>::Clear((this + 92));
  ot::Clearable<ot::BitVector<(unsigned short)64>>::Clear((this + 100));
  return this;
}

{
  ot::DuaManager::DuaManager(this, a2);
  return this;
}

void ot::DuaManager::PerformNextRegistration(ot::DuaManager *this)
{
  v68 = this;
  ServiceId = 0;
  v66 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  v65 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v64, Instance);
  if (!ot::Mle::Mle::IsAttached(v66))
  {
    ServiceId = 13;
    goto LABEL_50;
  }

  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
  if (!ot::BackboneRouter::Leader::HasPrimary(v8))
  {
    ServiceId = 13;
    goto LABEL_50;
  }

  if (*(this + 40))
  {
    ServiceId = 5;
    goto LABEL_50;
  }

  if (!ot::Mle::Mle::IsRouterOrLeader(v66) && (ot::Mle::MleRouter::IsExpectedToBecomeRouterSoon(v66) & 1) != 0)
  {
    ServiceId = 13;
    goto LABEL_50;
  }

  if (!ot::Mle::Mle::IsFullThreadDevice(v66))
  {
    Parent = ot::Mle::Mle::GetParent(v66);
    if (!ot::Neighbor::IsThreadVersion1p1(Parent))
    {
      ServiceId = 13;
      goto LABEL_50;
    }
  }

  v62 = 0;
  v46 = 0;
  if (*(this + 41) == 1)
  {
    v46 = *(this + 91) == 0;
  }

  v62 = v46;
  v45 = 1;
  if (!v46)
  {
    v44 = 0;
    if (ot::BitVector<(unsigned short)64>::HasAny(this + 92))
    {
      v44 = ot::Unequatable<ot::BitVector<(unsigned short)64>>::operator!=(this + 92, this + 100);
    }

    v45 = v44;
  }

  v62 = v45 & 1;
  if ((v45 & 1) == 0)
  {
    ServiceId = 23;
    goto LABEL_50;
  }

  v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v65 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v10, 0x26u);
  if (!v65)
  {
    ServiceId = 3;
    goto LABEL_50;
  }

  if (*(this + 41) != 1 || *(this + 91))
  {
    v60 = 0;
    ChildAtIndex = 0;
    if (*(this + 54) != 64)
    {
      __assert_rtn("PerformNextRegistration", "dua_manager.cpp", 486, "mChildIndexDuaRegistering == Mle::kMaxChildren");
    }

    v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    v57 = ot::ChildTable::Iterate(v14, 0);
    v58 = &v57;
    v72 = ot::ChildTable::IteratorBuilder::begin(&v57);
    v73 = v15;
    v55 = v72;
    v56 = v15;
    v70 = ot::ChildTable::IteratorBuilder::end(v58);
    v71 = v16;
    v53 = v70;
    v54 = v16;
    while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v55, &v53))
    {
      v52 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v55);
      v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
      ChildIndex = ot::ChildTable::GetChildIndex(v17, v52);
      if (ot::BitVector<(unsigned short)64>::Get(this + 92, ChildIndex) && !ot::BitVector<(unsigned short)64>::Get(this + 100, ChildIndex))
      {
        *(this + 54) = ChildIndex;
        break;
      }

      ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v55);
    }

    v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    ChildAtIndex = ot::ChildTable::GetChildAtIndex(v18, *(this + 54));
    ot::Child::GetDomainUnicastAddress(ChildAtIndex, &v63);
    if (v19)
    {
      __assert_rtn("PerformNextRegistration", "dua_manager.cpp", 500, "false");
    }

    ServiceId = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v65, &v63);
    if (ServiceId)
    {
      goto LABEL_50;
    }

    v42 = v65;
    MeshLocalIid = ot::Child::GetMeshLocalIid(ChildAtIndex);
    v21 = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)3,ot::Ip6::InterfaceIdentifier>>(v42, MeshLocalIid);
    ServiceId = v21;
    if (v21)
    {
      goto LABEL_50;
    }

    Now = ot::TimerMilli::GetNow(v21);
    LastHeard = ot::Neighbor::GetLastHeard(ChildAtIndex);
    v22 = ot::Time::operator-(&Now, &LastHeard);
    v60 = ot::Time::MsecToSec(v22);
    ServiceId = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)6,unsigned int>>(v65, v60);
    if (ServiceId)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v63 = *ot::DuaManager::GetDomainUnicastAddress(this);
    ServiceId = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v65, &v63);
    if (ServiceId)
    {
      goto LABEL_50;
    }

    v43 = v65;
    MeshLocalEid = ot::Mle::Mle::GetMeshLocalEid(v66);
    Iid = ot::Ip6::Address::GetIid(MeshLocalEid);
    v13 = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)3,ot::Ip6::InterfaceIdentifier>>(v43, Iid);
    ServiceId = v13;
    if (v13)
    {
      goto LABEL_50;
    }

    *(this + 41) = 2;
    v61 = ot::TimerMilli::GetNow(v13);
    *(this + 11) = v61;
  }

  if (ot::Mle::Mle::IsFullThreadDevice(v66) || (v23 = ot::Mle::Mle::GetParent(v66), !ot::Neighbor::IsThreadVersion1p1(v23)))
  {
    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v64);
    MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v66);
    v26 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
    Server16 = ot::BackboneRouter::Leader::GetServer16(v26);
    ot::Ip6::Address::SetToRoutingLocator(PeerAddr, MeshLocalPrefix, Server16);
  }

  else
  {
    v48 = 0;
    v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
    ServiceId = ot::BackboneRouter::Leader::GetServiceId(v24, &v48);
    if (ServiceId)
    {
      goto LABEL_50;
    }

    v41 = v66;
    v40 = v48;
    v25 = ot::Ip6::MessageInfo::GetPeerAddr(v64);
    ot::Mle::Mle::GetServiceAloc(v41, v40, v25);
  }

  ot::Tmf::MessageInfo::SetSockAddrToRloc(v64);
  v28 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  ServiceId = ot::Coap::CoapBase::SendMessage(v28, v65, v64, ot::DuaManager::HandleDuaResponse, this);
  if (!ServiceId)
  {
    *(this + 40) = *(this + 40) & 0xFE | 1;
    *(this + 24) = v63;
    *(this + 22) = 0;
    v29 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (!ot::Mle::Mle::IsRxOnWhenIdle(v29))
    {
      v30 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
      ot::DataPollSender::SendFastPolls(v30, 0);
    }

    v37 = ot::UriToString<(ot::Uri)38>();
    ot::Ip6::Address::ToString(&v63, v69);
    ot::String<(unsigned short)40>::AsCString(v69);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("DuaManager", "Sent %s for DUA %s", v31, v32, v33, v34, v35, v36, v37);
  }

LABEL_50:
  if (ServiceId == 3)
  {
    ot::DuaManager::UpdateCheckDelay(this, 5u, v2, v3, v4, v5, v6, v7);
  }

  ot::Logger::LogOnError("DuaManager", ServiceId, "perform next registration");
  if (ServiceId)
  {
    if (v65)
    {
      ot::Message::Free(v65);
    }
  }
}

ot::InstanceLocator *ot::TaskletIn<ot::DuaManager,&ot::DuaManager::PerformNextRegistration>::TaskletIn(ot::InstanceLocator *a1, ot::Instance *a2)
{
  ot::TaskletIn<ot::DuaManager,&ot::DuaManager::PerformNextRegistration>::TaskletIn(a1, a2);
  return a1;
}

{
  ot::Tasklet::Tasklet(a1, a2, ot::TaskletIn<ot::DuaManager,&ot::DuaManager::PerformNextRegistration>::HandleTasklet);
  return a1;
}

void *ot::Clearable<ot::Ip6::InterfaceIdentifier>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Ip6::InterfaceIdentifier>(a1);
}

{
  return ot::Clearable<ot::Ip6::InterfaceIdentifier>::Clear(a1);
}

void *ot::Clearable<ot::BitVector<(unsigned short)64>>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::BitVector<(unsigned short)64>>(a1);
}

{
  return ot::Clearable<ot::BitVector<(unsigned short)64>>::Clear(a1);
}

void ot::DuaManager::HandleDomainPrefixUpdate(uint64_t a1, char a2)
{
  if (a2 == 1 || a2 == 2)
  {
    if (*(a1 + 40))
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
      ot::Coap::CoapBase::AbortTransaction(v2, ot::DuaManager::HandleDuaResponse, a1);
      IgnoreError();
    }

    ot::DuaManager::RemoveDomainUnicastAddress(a1);
    if (ot::BitVector<(unsigned short)64>::HasAny((a1 + 92)))
    {
      ot::Clearable<ot::BitVector<(unsigned short)64>>::Clear((a1 + 92));
      ot::Clearable<ot::BitVector<(unsigned short)64>>::Clear((a1 + 100));
    }
  }

  if (!a2 || a2 == 2 || a2 == 3 && (v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1), DomainUnicastAddress = ot::DuaManager::GetDomainUnicastAddress(a1), !ot::Ip6::Netif::HasUnicastAddress(v8, DomainUnicastAddress)))
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1);
    DomainPrefix = ot::BackboneRouter::Leader::GetDomainPrefix(v4);
    if (!DomainPrefix)
    {
      __assert_rtn("HandleDomainPrefixUpdate", "dua_manager.cpp", 116, "prefix != nullptr");
    }

    *(a1 + 72) = ot::Ip6::Prefix::GetLength(DomainPrefix);
    Address = ot::Ip6::Netif::UnicastAddress::GetAddress((a1 + 56));
    ot::Clearable<ot::Ip6::Address>::Clear(Address);
    v6 = ot::Ip6::Netif::UnicastAddress::GetAddress((a1 + 56));
    ot::Ip6::Address::SetPrefix(v6, DomainPrefix);
    if (ot::DuaManager::IsFixedDuaInterfaceIdentifierSet(a1))
    {
      v7 = ot::Ip6::Netif::UnicastAddress::GetAddress((a1 + 56));
      ot::Ip6::Address::SetIid(v7, (a1 + 48));
    }

    else if (ot::DuaManager::GenerateDomainUnicastAddressIid(a1))
    {
      return;
    }

    ot::DuaManager::AddDomainUnicastAddress(a1);
  }
}

void ot::DuaManager::HandleDuaResponse(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  ot::AsCoapMessagePtr();
  v10 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  ot::DuaManager::HandleDuaResponse(a1, v10, v5, a4, v6, v7, v8, v9);
}

uint64_t ot::DuaManager::RemoveDomainUnicastAddress(ot::DuaManager *this)
{
  if (*(this + 41) == 2 && (*(this + 40) & 1) != 0)
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
    ot::Coap::CoapBase::AbortTransaction(v1, ot::DuaManager::HandleDuaResponse, this);
    IgnoreError();
  }

  *(this + 41) = 0;
  *(this + 37) &= ~1u;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  return ot::Ip6::Netif::RemoveUnicastAddress(v2, (this + 56));
}

uint64_t ot::DuaManager::GetDomainUnicastAddress(ot::DuaManager *this)
{
  return ot::Ip6::Netif::UnicastAddress::GetAddress((this + 56));
}

{
  return ot::DuaManager::GetDomainUnicastAddress(this);
}

uint64_t ot::DuaManager::GenerateDomainUnicastAddressIid(ot::DuaManager *this)
{
  v14 = this;
  v13 = 0;
  v12 = *(this + 42);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::Slaac>(this);
  v13 = ot::Utils::Slaac::GenerateIid(v1, (this + 56), &v12);
  if (v13)
  {
    ot::Logger::LogOnError("DuaManager", v13, "generate DUA");
  }

  else
  {
    if (v12 != *(this + 42))
    {
      *(this + 42) = v12;
      ot::DuaManager::Store(this);
      IgnoreError();
    }

    Address = ot::Ip6::Netif::UnicastAddress::GetAddress((this + 56));
    ot::Ip6::Address::ToString(Address, v15);
    v3 = ot::String<(unsigned short)40>::AsCString(v15);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("DuaManager", "Generated DUA: %s", v4, v5, v6, v7, v8, v9, v3);
  }

  return v13;
}

void ot::DuaManager::AddDomainUnicastAddress(ot::DuaManager *this)
{
  *(this + 41) = 1;
  *(this + 11) = ot::TimerMilli::GetNow(this);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  ot::Ip6::Netif::AddUnicastAddress(v1, (this + 56));
}

uint64_t ot::DuaManager::Store(ot::DuaManager *this)
{
  v5 = this;
  ot::SettingsBase::DadInfo::SetDadCounter(&v4, *(this + 42));
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(this);
  return ot::Settings::Save<ot::SettingsBase::DadInfo>(v1, &v4);
}

uint64_t ot::DuaManager::SetFixedDuaInterfaceIdentifier(ot::DuaManager *this, const ot::Ip6::InterfaceIdentifier *a2)
{
  v14 = 0;
  if (ot::Ip6::InterfaceIdentifier::IsReserved(a2))
  {
    return 7;
  }

  else if (ot::Ip6::InterfaceIdentifier::IsUnspecified((this + 48)) || ot::Unequatable<ot::Ip6::InterfaceIdentifier>::operator!=(this + 48, a2))
  {
    *(this + 6) = *a2;
    ot::Ip6::InterfaceIdentifier::ToString((this + 48), v16);
    v2 = ot::String<(unsigned short)17>::AsCString(v16);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("DuaManager", "Set DUA IID: %s", v3, v4, v5, v6, v7, v8, v2);
    v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
    DomainUnicastAddress = ot::DuaManager::GetDomainUnicastAddress(this);
    if (ot::Ip6::Netif::HasUnicastAddress(v12, DomainUnicastAddress))
    {
      ot::DuaManager::RemoveDomainUnicastAddress(this);
      Address = ot::Ip6::Netif::UnicastAddress::GetAddress((this + 56));
      ot::Ip6::Address::SetIid(Address, (this + 48));
      ot::DuaManager::AddDomainUnicastAddress(this);
    }
  }

  return v14;
}

uint64_t ot::DuaManager::ClearFixedDuaInterfaceIdentifier(ot::DuaManager *this)
{
  result = ot::DuaManager::IsFixedDuaInterfaceIdentifierSet(this);
  if (result)
  {
    DomainUnicastAddress = ot::DuaManager::GetDomainUnicastAddress(this);
    Iid = ot::Ip6::Address::GetIid(DomainUnicastAddress);
    if (ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==(Iid, this + 48))
    {
      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
      v4 = ot::DuaManager::GetDomainUnicastAddress(this);
      if (ot::Ip6::Netif::HasUnicastAddress(v12, v4))
      {
        ot::DuaManager::RemoveDomainUnicastAddress(this);
        if (!ot::DuaManager::GenerateDomainUnicastAddressIid(this))
        {
          ot::DuaManager::AddDomainUnicastAddress(this);
        }
      }
    }

    ot::Ip6::InterfaceIdentifier::ToString((this + 48), v14);
    v5 = ot::String<(unsigned short)17>::AsCString(v14);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("DuaManager", "Cleared DUA IID: %s", v6, v7, v8, v9, v10, v11, v5);
    return ot::Clearable<ot::Ip6::InterfaceIdentifier>::Clear(this + 6);
  }

  return result;
}

uint64_t ot::DuaManager::Restore(ot::DuaManager *this)
{
  v5 = this;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(this);
  result = ot::Settings::Read<ot::SettingsBase::DadInfo>(v1, &v4);
  if (!result)
  {
    result = ot::SettingsBase::DadInfo::GetDadCounter(&v4);
    *(this + 42) = result;
  }

  return result;
}

uint64_t ot::Settings::Read<ot::SettingsBase::DadInfo>(ot::InstanceLocator *a1, ot::SettingsBase::DadInfo *a2)
{
  ot::SettingsBase::DadInfo::Init(a2);
  return ot::Settings::ReadEntry(a1, 8u, a2, 1u);
}

{
  return ot::Settings::Read<ot::SettingsBase::DadInfo>(a1, a2);
}

_BYTE *ot::SettingsBase::DadInfo::SetDadCounter(_BYTE *this, char a2)
{
  *this = a2;
  return this;
}

{
  return ot::SettingsBase::DadInfo::SetDadCounter(this, a2);
}

uint64_t ot::Settings::Save<ot::SettingsBase::DadInfo>(ot::InstanceLocator *a1, ot::SettingsBase::NetworkInfo *a2)
{
  v5 = a1;
  v4 = a2;
  return ot::Settings::SaveEntry(a1, 8, a2, &v3, 1u);
}

{
  return ot::Settings::Save<ot::SettingsBase::DadInfo>(a1, a2);
}

char *ot::DuaManager::UpdateRegistrationDelay(char *this, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = this;
  if (!this[91] || this[91] > a2)
  {
    this[91] = a2;
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("DuaManager", "update regdelay %d", a3, a4, a5, a6, a7, a8, this[91]);
    return ot::DuaManager::UpdateTimeTickerRegistration(v8);
  }

  return this;
}

uint64_t ot::DuaManager::UpdateTimeTickerRegistration(ot::DuaManager *this)
{
  if (*(this + 22))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
    return ot::TimeTicker::RegisterReceiver(v3, 4);
  }

  else
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
    return ot::TimeTicker::UnregisterReceiver(v1, 4);
  }
}

void ot::DuaManager::NotifyDuplicateDomainUnicastAddress(ot::DuaManager *this)
{
  ot::DuaManager::RemoveDomainUnicastAddress(this);
  ++*(this + 42);
  if (!ot::DuaManager::GenerateDomainUnicastAddressIid(this))
  {
    ot::DuaManager::AddDomainUnicastAddress(this);
  }
}

void ot::DuaManager::UpdateReregistrationDelay(ot::DuaManager *this)
{
  v13 = this;
  v12 = 0;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
  if (!ot::BackboneRouter::Leader::GetConfig(v1, v10))
  {
    if (v11 <= 1u)
    {
      Uint16InRange = 1;
    }

    else
    {
      Uint16InRange = ot::Random::NonCrypto::GetUint16InRange(1, v11);
    }

    v12 = Uint16InRange;
    if (!*(this + 44) || *(this + 44) > v12)
    {
      *(this + 44) = v12;
      ot::DuaManager::UpdateTimeTickerRegistration(this);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("DuaManager", "update reregdelay %d", v2, v3, v4, v5, v6, v7, *(this + 44));
    }
  }
}

char *ot::DuaManager::UpdateCheckDelay(char *this, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = this;
  if (!this[90] || this[90] > a2)
  {
    this[90] = a2;
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("DuaManager", "update checkdelay %d", a3, a4, a5, a6, a7, a8, this[90]);
    return ot::DuaManager::UpdateTimeTickerRegistration(v8);
  }

  return this;
}

char *ot::DuaManager::HandleNotifierEvents(ot::InstanceLocator *a1, uint64_t a2)
{
  v32 = a2;
  v31 = a1;
  v30 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
  if (ot::Events::Contains(&v32, 512))
  {
    v27 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(a1);
    DomainUnicastAddress = ot::DuaManager::GetDomainUnicastAddress(v2);
    if (ot::Ip6::Netif::HasUnicastAddress(v27, DomainUnicastAddress))
    {
      v26 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(a1);
      v5 = ot::DuaManager::GetDomainUnicastAddress(v4);
      if (ot::NetworkData::Leader::GetContext(v26, v5, v29))
      {
        ot::DuaManager::RemoveDomainUnicastAddress(a1);
      }
    }
  }

  result = ot::Mle::Mle::IsAttached(v30);
  if (result)
  {
    if (ot::Events::Contains(&v32, 4))
    {
      if (ot::Mle::Mle::HasRestored(v30))
      {
        ot::DuaManager::UpdateReregistrationDelay(a1);
      }

      else if (ot::Mle::Mle::IsRouter(v30))
      {
        ot::DuaManager::UpdateRegistrationDelay(a1, 3u, v7, v8, v9, v10, v11, v12);
      }

      else if (ot::Mle::MleRouter::IsExpectedToBecomeRouterSoon(v30))
      {
        RouterRoleTransitionTimeout = ot::Mle::MleRouter::GetRouterRoleTransitionTimeout(v30);
        ot::DuaManager::UpdateRegistrationDelay(a1, RouterRoleTransitionTimeout + 4, v14, v15, v16, v17, v18, v19);
      }
    }

    result = ot::Events::ContainsAny(&v32, 1);
    if (result)
    {
      return ot::DuaManager::UpdateRegistrationDelay(a1, 1u, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    *(a1 + 22) = 0;
  }

  return result;
}

uint64_t ot::Mle::Mle::HasRestored(ot::Mle::Mle *this)
{
  return (*(this + 129) >> 2) & 1;
}

{
  return ot::Mle::Mle::HasRestored(this);
}

uint64_t ot::Mle::MleRouter::GetRouterRoleTransitionTimeout(ot::Mle::MleRouter *this)
{
  return ot::Mle::MleRouter::RouterRoleTransition::GetTimeout((this + 35702));
}

{
  return ot::Mle::MleRouter::GetRouterRoleTransitionTimeout(this);
}

void ot::DuaManager::HandleBackboneRouterPrimaryUpdate(ot::InstanceLocator *a1, char a2)
{
  if (a2 == 1 || a2 == 3)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
    if (ot::Mle::Mle::IsFullThreadDevice(v2) || (v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1), Parent = ot::Mle::Mle::GetParent(v3), ot::Neighbor::IsThreadVersion1p1(Parent)))
    {
      ot::DuaManager::UpdateReregistrationDelay(a1);
    }
  }
}

BOOL ot::Neighbor::IsThreadVersion1p1(ot::Neighbor *this)
{
  v2 = 0;
  if ((*(this + 30) & 0xF) != 0)
  {
    return *(this + 18) == 2;
  }

  return v2;
}

{
  return ot::Neighbor::IsThreadVersion1p1(this);
}

uint64_t ot::DuaManager::HandleTimeTick(ot::DuaManager *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = this;
  v19 = 0;
  v13 = *(this + 44);
  v14 = *(this + 90);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("DuaManager", "regdelay %d, reregdelay %d, checkdelay %d", a3, a4, a5, a6, a7, a8, *(this + 91));
  v16 = 0;
  if (*(this + 41))
  {
    Now = ot::TimerMilli::GetNow(0);
    v8 = ot::Time::SecToMsec(0x64);
    v17 = ot::Time::operator+(this + 11, v8);
    v16 = ot::Time::operator>(&Now, &v17);
  }

  if (v16)
  {
    *(this + 37) = *(this + 37) & 0xFFFE | 1;
  }

  if (*(this + 91))
  {
    v9 = *(this + 91);
    *(this + 91) = v9 - 1;
    if (v9 == 1)
    {
      v19 = 1;
    }
  }

  if (*(this + 90))
  {
    v10 = *(this + 90);
    *(this + 90) = v10 - 1;
    if (v10 == 1)
    {
      v19 = 1;
    }
  }

  if (*(this + 44))
  {
    v11 = *(this + 44);
    *(this + 44) = v11 - 1;
    if (v11 == 1)
    {
      if (*(this + 41))
      {
        *(this + 41) = 1;
      }

      ot::Clearable<ot::BitVector<(unsigned short)64>>::Clear((this + 100));
      v19 = 1;
    }
  }

  if (v19)
  {
    ot::Tasklet::Post((this + 8));
  }

  return ot::DuaManager::UpdateTimeTickerRegistration(this);
}

BOOL ot::Unequatable<ot::BitVector<(unsigned short)64>>::operator!=(const void *a1, const void *a2)
{
  return !ot::Equatable<ot::BitVector<(unsigned short)64>>::operator==(a1, a2);
}

{
  return ot::Unequatable<ot::BitVector<(unsigned short)64>>::operator!=(a1, a2);
}

void ot::DuaManager::HandleDuaResponse(uint64_t a1, ot::Coap::Message *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 40) &= ~1u;
  *(a1 + 108) = 64;
  if (a4 == 28)
  {
    ot::DuaManager::UpdateCheckDelay(a1, 0x1Eu, a3, a4, a5, a6, a7, a8);
    v16 = 28;
  }

  else if (a4)
  {
    v16 = 6;
  }

  else
  {
    if (!a2)
    {
      __assert_rtn("HandleDuaResponse", "dua_manager.cpp", 577, "aMessage != nullptr");
    }

    if (ot::Coap::Message::GetCode(a2) == 68 || ot::Coap::Message::GetCode(a2) >= 128)
    {
      v16 = ot::DuaManager::ProcessDuaResponse(a1, a2);
    }

    else
    {
      v16 = 6;
    }
  }

  if (v16 != 28)
  {
    ot::Tasklet::Post((a1 + 8));
  }

  v14 = ot::UriToString<(ot::Uri)38>();
  ot::ErrorToString(v16);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("DuaManager", "Received %s response: %s", v8, v9, v10, v11, v12, v13, v14);
}

uint64_t ot::DuaManager::ProcessDuaResponse(ot::DuaManager *this, ot::Coap::Message *a2)
{
  v27 = this;
  v26 = a2;
  v25 = 0;
  v23 = 0;
  if (ot::Coap::Message::GetCode(a2) < 128)
  {
    v25 = ot::Tlv::Find<ot::ThreadStatusTlv>(v26, &v23);
    if (v25)
    {
      goto LABEL_41;
    }

    v25 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v26, &v24);
    if (v25)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v23 = 6;
    v24 = *(this + 24);
  }

  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
  if (ot::BackboneRouter::Leader::IsDomainUnicast(v2, &v24))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
    HasUnicastAddress = ot::Ip6::Netif::HasUnicastAddress(v3, &v24);
    if (HasUnicastAddress)
    {
      if (v23)
      {
        switch(v23)
        {
          case 1u:
            v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
            DomainUnicastAddress = ot::DuaManager::GetDomainUnicastAddress(this);
            if (ot::Ip6::Netif::HasUnicastAddress(v11, DomainUnicastAddress))
            {
              ot::DuaManager::RemoveDomainUnicastAddress(this);
              ot::DuaManager::AddDomainUnicastAddress(this);
            }

            break;
          case 2u:
            ot::DuaManager::RemoveDomainUnicastAddress(this);
            break;
          case 3u:
            ot::DuaManager::NotifyDuplicateDomainUnicastAddress(this);
            break;
          default:
            if (v23 - 4 <= 2)
            {
              ot::DuaManager::UpdateReregistrationDelay(this);
            }

            break;
        }
      }

      else
      {
        Now = ot::TimerMilli::GetNow(HasUnicastAddress);
        *(this + 11) = Now;
        *(this + 41) = 3;
      }
    }

    else
    {
      v21 = 0;
      ChildIndex = 0;
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
      v18 = ot::ChildTable::Iterate(v6, 0);
      v19 = &v18;
      v30 = ot::ChildTable::IteratorBuilder::begin(&v18);
      v31 = v7;
      v16 = v30;
      v17 = v7;
      v28 = ot::ChildTable::IteratorBuilder::end(v19);
      v29 = v8;
      v14 = v28;
      v15 = v8;
      while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v16, &v14))
      {
        v13 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v16);
        if (ot::Child::HasIp6Address(v13, &v24))
        {
          v21 = v13;
          break;
        }

        ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v16);
      }

      if (v21)
      {
        v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
        ChildIndex = ot::ChildTable::GetChildIndex(v9, v21);
        if (v23)
        {
          if (v23 == 1)
          {
            ot::BitVector<(unsigned short)64>::Set(this + 92, ChildIndex, 0);
            ot::BitVector<(unsigned short)64>::Set(this + 100, ChildIndex, 0);
          }

          else if (v23 != 3 && v23 != 2)
          {
            if (v23 - 4 <= 2)
            {
              ot::DuaManager::UpdateReregistrationDelay(this);
            }
          }

          else
          {
            ot::Child::RemoveIp6Address(v21, &v24);
            IgnoreError();
            ot::BitVector<(unsigned short)64>::Set(this + 92, ChildIndex, 0);
            ot::BitVector<(unsigned short)64>::Set(this + 100, ChildIndex, 0);
          }
        }

        else if (ot::BitVector<(unsigned short)64>::Get(this + 92, ChildIndex))
        {
          ot::BitVector<(unsigned short)64>::Set(this + 100, ChildIndex, 1);
        }

        if (v23)
        {
          ot::DuaManager::SendAddressNotification(this, &v24, v23, v21);
        }
      }

      else
      {
        v25 = 23;
      }
    }
  }

  else
  {
    v25 = 2;
  }

LABEL_41:
  ot::DuaManager::UpdateTimeTickerRegistration(this);
  return v25;
}

void ot::DuaManager::HandleTmf<(ot::Uri)37>(ot::InstanceLocator *a1, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  if (ot::Coap::Message::IsPostRequest(a2))
  {
    if (ot::Coap::Message::IsConfirmable(a2))
    {
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
      if (!ot::Coap::CoapBase::SendEmptyAck(v3, a2, a3))
      {
        v4 = ot::UriToString<(ot::Uri)37>();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("DuaManager", "Sent %s ack", v5, v6, v7, v8, v9, v10, v4);
      }
    }

    v19 = ot::DuaManager::ProcessDuaResponse(a1, a2);
  }

  else
  {
    v19 = 6;
  }

  v17 = ot::UriToString<(ot::Uri)37>();
  ot::ErrorToString(v19);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("DuaManager", "Received %s: %s", v11, v12, v13, v14, v15, v16, v17);
}

uint64_t ot::Tlv::Find<ot::ThreadStatusTlv>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned char>(a1, 4u, a2);
}

{
  return ot::Tlv::Find<ot::ThreadStatusTlv>(a1, a2);
}

void ot::DuaManager::SendAddressNotification(ot::InstanceLocator *a1, void *a2, unsigned __int8 a3, ot::Neighbor *a4)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = 0;
  Instance = ot::InstanceLocator::GetInstance(a1);
  ot::Tmf::MessageInfo::MessageInfo(v24, Instance);
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  v25 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v5, 0x25u);
  if (v25)
  {
    v23 = ot::Tlv::Append<ot::ThreadStatusTlv>(v25, v27);
    if (!v23)
    {
      v23 = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v25, v28);
      if (!v23)
      {
        Rloc16 = ot::Neighbor::GetRloc16(v26);
        ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(v24, Rloc16);
        v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
        v23 = ot::Coap::CoapBase::SendMessage(v7, v25, v24);
        if (!v23)
        {
          v21 = ot::UriToString<(ot::Uri)37>();
          ot::Neighbor::GetRloc16(v26);
          ot::Ip6::Address::ToString(v28, v31);
          ot::String<(unsigned short)40>::AsCString(v31);
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("DuaManager", "Sent %s for child %04x DUA %s", v8, v9, v10, v11, v12, v13, v21);
        }
      }
    }
  }

  else
  {
    v23 = 3;
  }

  if (v23)
  {
    if (v25)
    {
      ot::Message::Free(v25);
    }

    v20 = ot::UriToString<(ot::Uri)37>();
    ot::Neighbor::GetRloc16(v26);
    ot::Ip6::Address::ToString(v28, v30);
    ot::String<(unsigned short)40>::AsCString(v30);
    ot::ErrorToString(v23);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("DuaManager", "Sent %s for child %04x DUA %s Error %s", v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t ot::DuaManager::HandleChildDuaAddressEvent(unsigned __int16 *a1, const ot::Child *a2, char a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(a1);
  result = ot::ChildTable::GetChildIndex(v3, a2);
  v14 = result;
  if (a3 == 2 || a3 == 1)
  {
    result = ot::BitVector<(unsigned short)64>::Get((a1 + 46), result);
    if (result)
    {
      if (a1[54] == v14)
      {
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
        ot::Coap::CoapBase::AbortTransaction(v5, ot::DuaManager::HandleDuaResponse, a1);
        IgnoreError();
      }

      ot::BitVector<(unsigned short)64>::Set((a1 + 46), v14, 0);
      result = ot::BitVector<(unsigned short)64>::Set((a1 + 50), v14, 0);
    }
  }

  if (!a3 || a3 == 1 || a3 == 3 && (result = ot::BitVector<(unsigned short)64>::Get((a1 + 46), v14), (result & 1) == 0))
  {
    if (ot::Equatable<ot::BitVector<(unsigned short)64>>::operator==(a1 + 46, a1 + 50))
    {
      Uint8InRange = ot::Random::NonCrypto::GetUint8InRange(1, 5u);
      ot::DuaManager::UpdateCheckDelay(a1, Uint8InRange, v7, v8, v9, v10, v11, v12);
    }

    ot::BitVector<(unsigned short)64>::Set((a1 + 46), v14, 1);
    return ot::BitVector<(unsigned short)64>::Set((a1 + 50), v14, 0);
  }

  return result;
}

BOOL ot::Equatable<ot::BitVector<(unsigned short)64>>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 8uLL) == 0;
}

{
  return ot::Equatable<ot::BitVector<(unsigned short)64>>::operator==(a1, a2);
}

uint64_t ot::Mle::MleRouter::RouterRoleTransition::GetTimeout(ot::Mle::MleRouter::RouterRoleTransition *this)
{
  return *this;
}

{
  return ot::Mle::MleRouter::RouterRoleTransition::GetTimeout(this);
}

void *ot::ClearAllBytes<ot::Ip6::InterfaceIdentifier>(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Ip6::InterfaceIdentifier>(result);
}

void *ot::ClearAllBytes<ot::BitVector<(unsigned short)64>>(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::BitVector<(unsigned short)64>>(result);
}

_BYTE *ot::SettingsBase::DadInfo::Init(ot::SettingsBase::DadInfo *this)
{
  return ot::Clearable<ot::SettingsBase::DadInfo>::Clear(this);
}

{
  return ot::SettingsBase::DadInfo::Init(this);
}

_BYTE *ot::Clearable<ot::SettingsBase::DadInfo>::Clear(_BYTE *a1)
{
  return ot::ClearAllBytes<ot::SettingsBase::DadInfo>(a1);
}

{
  return ot::Clearable<ot::SettingsBase::DadInfo>::Clear(a1);
}

_BYTE *ot::ClearAllBytes<ot::SettingsBase::DadInfo>(_BYTE *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::SettingsBase::DadInfo>(result);
}

ot::EnergyScanServer *ot::EnergyScanServer::EnergyScanServer(ot::EnergyScanServer *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 4) = 0;
  ot::TimerMilliIn<ot::EnergyScanServer,&ot::EnergyScanServer::HandleTimer>::TimerMilliIn((this + 40), a2);
  return this;
}

{
  ot::EnergyScanServer::EnergyScanServer(this, a2);
  return this;
}

void ot::EnergyScanServer::HandleTimer(ot::EnergyScanServer *this)
{
  if (*(this + 4))
  {
    if (*(this + 28))
    {
      v3 = *(this + 5) & ~(*(this + 5) - 1);
      v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ot::Mac::Mac::EnergyScan(v1, v3, *(this + 13), ot::EnergyScanServer::HandleScanResult, this);
      IgnoreError();
    }

    else
    {
      ot::EnergyScanServer::SendReport(this);
    }
  }
}

ot::TimerMilli *ot::TimerMilliIn<ot::EnergyScanServer,&ot::EnergyScanServer::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::EnergyScanServer,&ot::EnergyScanServer::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::EnergyScanServer,&ot::EnergyScanServer::HandleTimer>::HandleTimer);
  return a1;
}

void ot::EnergyScanServer::HandleTmf<(ot::Uri)20>(uint64_t a1, ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = 0;
  *v18 = 0;
  v17 = 0;
  v16 = 0;
  if (ot::Coap::Message::IsPostRequest(a2) && !ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)54,unsigned char>>(v21, &v19) && !ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)55,unsigned short>>(v21, v18) && !ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)56,unsigned short>>(v21, &v17) && !ot::MeshCoP::ChannelMaskTlv::FindIn(v21, &v16, v3))
  {
    if (*(a1 + 32))
    {
      ot::Message::Free(*(a1 + 32));
    }

    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
    *(a1 + 32) = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v4, 0x13u);
    if (*(a1 + 32))
    {
      if (!ot::MeshCoP::ChannelMaskTlv::AppendTo(*(a1 + 32), v16))
      {
        ot::MeshCoP::Tlv::SetType(v15, 57);
        if (!ot::Message::Append<ot::MeshCoP::Tlv>(*(a1 + 32), v15))
        {
          *(a1 + 29) = 0;
          *(a1 + 16) = v16;
          *(a1 + 20) = *(a1 + 16);
          *(a1 + 28) = v19;
          *(a1 + 24) = *v18;
          *(a1 + 26) = v17;
          ot::TimerMilli::Start((a1 + 40), 0x3E8u);
          *a1 = *ot::Ip6::MessageInfo::GetPeerAddr(v20);
          if (ot::Coap::Message::IsConfirmable(v21))
          {
            SockAddr = ot::Ip6::MessageInfo::GetSockAddr(v20);
            if (!ot::Ip6::Address::IsMulticast(SockAddr))
            {
              v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
              if (!ot::Coap::CoapBase::SendEmptyAck(v6, v21, v20))
              {
                v7 = ot::UriToString<(ot::Uri)20>();
                ot::Logger::LogAtLevel<(ot::LogLevel)4>("EnergyScanSrv", "Sent %s ack", v8, v9, v10, v11, v12, v13, v7);
              }
            }
          }
        }
      }
    }
  }
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)56,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0x38u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)56,unsigned short>>(a1, a2);
}

void ot::EnergyScanServer::HandleScanResult(uint64_t a1, uint64_t a2)
{
  ot::EnergyScanServer::HandleScanResult(a2, a1);
}

{
  if (*(a1 + 32))
  {
    if (a2)
    {
      if (ot::Message::Append<signed char>(*(a1 + 32), (a2 + 1)))
      {
        if (*(a1 + 32))
        {
          ot::Message::Free(*(a1 + 32));
        }

        *(a1 + 32) = 0;
      }

      else if (++*(a1 + 29) == 255)
      {
        *(a1 + 28) = 0;
        ot::TimerMilli::Start((a1 + 40), 0x1F4u);
      }
    }

    else
    {
      *(a1 + 20) &= *(a1 + 20) - 1;
      if (!*(a1 + 20))
      {
        *(a1 + 20) = *(a1 + 16);
        --*(a1 + 28);
      }

      if (*(a1 + 28))
      {
        ot::TimerMilli::Start((a1 + 40), *(a1 + 24));
      }

      else
      {
        ot::TimerMilli::Start((a1 + 40), 0x1F4u);
      }
    }
  }
}

void ot::EnergyScanServer::SendReport(ot::EnergyScanServer *this)
{
  v14 = this;
  v13 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v12, Instance);
  Length = ot::Message::GetLength(*(this + 4));
  ot::Message::Write<unsigned char>(*(this + 4), Length - *(this + 29) - 1, this + 29);
  ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(v12, this);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v13 = ot::Coap::CoapBase::SendMessage(v3, *(this + 4), v12);
  if (!v13)
  {
    v4 = ot::UriToString<(ot::Uri)19>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("EnergyScanSrv", "Sent %s", v5, v6, v7, v8, v9, v10, v4);
  }

  if (v13 && *(this + 4))
  {
    ot::Message::Free(*(this + 4));
  }

  ot::Logger::LogOnError("EnergyScanSrv", v13, "send scan results");
  *(this + 4) = 0;
}

uint64_t ot::Message::Append<signed char>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 1u);
}

{
  return ot::Message::Append<signed char>(a1, a2);
}

uint64_t ot::EnergyScanServer::HandleNotifierEvents(ot::Message **a1, uint64_t a2)
{
  v7 = a2;
  v6 = a1;
  v5 = 0;
  result = ot::Events::Contains(&v7, 512);
  if ((result & 1) != 0 && a1[4])
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
    result = ot::NetworkData::Leader::FindBorderAgentRloc(v3, &v5);
    if (result)
    {
      ot::Message::Free(a1[4]);
      a1[4] = 0;
      return ot::TimerMilli::Stop((a1 + 5));
    }
  }

  return result;
}

ot::Mac::Address *ot::IndirectSender::ChildInfo::GetMacAddress(ot::IndirectSender::ChildInfo *this, ot::Mac::Address *a2)
{
  if ((*(this + 1) & 0x40000000) != 0)
  {
    Rloc16 = ot::Neighbor::GetRloc16((this - 144));
    ot::Mac::Address::SetShort(a2, Rloc16);
  }

  else
  {
    ot::Neighbor::GetExtAddress((this - 144));
    ot::Mac::Address::SetExtended(a2, v3);
  }

  return a2;
}

ot::IndirectSender *ot::IndirectSender::IndirectSender(ot::IndirectSender *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 0;
  ot::SourceMatchController::SourceMatchController((this + 1), a2);
  ot::DataPollHandler::DataPollHandler((this + 8), a2);
  ot::CslTxScheduler::CslTxScheduler((this + 24), a2);
  return this;
}

{
  ot::IndirectSender::IndirectSender(this, a2);
  return this;
}

ot::InstanceLocator *ot::IndirectSender::Stop(ot::InstanceLocator *this)
{
  v12 = this;
  v4 = this;
  if (*this)
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    v10 = ot::ChildTable::Iterate(v1, 5);
    v11 = &v10;
    v15 = ot::ChildTable::IteratorBuilder::begin(&v10);
    v16 = v2;
    v8 = v15;
    v9 = v2;
    v13 = ot::ChildTable::IteratorBuilder::end(v11);
    v14 = v3;
    v6 = v13;
    v7 = v3;
    while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v8, &v6))
    {
      v5 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v8);
      ot::IndirectSender::ChildInfo::SetIndirectMessage(v5 + 18, 0);
      ot::SourceMatchController::ResetMessageCount((v4 + 1), v5);
      ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v8);
    }

    ot::DataPollHandler::Clear((v4 + 8));
    this = ot::CslTxScheduler::Clear((v4 + 24));
  }

  *v4 = 0;
  return this;
}

void *ot::IndirectSender::ChildInfo::SetIndirectMessage(void *this, ot::Message *a2)
{
  *this = a2;
  return this;
}

{
  return ot::IndirectSender::ChildInfo::SetIndirectMessage(this, a2);
}

void ot::IndirectSender::AddMessageForSleepyChild(ot::IndirectSender *this, ot::Message *a2, ot::Child *a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  ChildIndex = ot::ChildTable::GetChildIndex(v3, a3);
  if (!ot::Message::GetChildMask(a2, ChildIndex))
  {
    ot::Message::SetChildMask(a2, ChildIndex);
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
    memcpy(__dst, a2, sizeof(__dst));
    if (ot::MeshForwarder::IsTxThreadControl(v5, __dst))
    {
      ot::SourceMatchController::IncrementMessageCount((this + 1), a3, 0);
    }

    else
    {
      ot::SourceMatchController::IncrementMessageCount((this + 1), a3, 1);
    }

    if (ot::Message::GetType(a2) != 2 && ot::IndirectSender::ChildInfo::GetIndirectMessageCount((a3 + 144)) > 1)
    {
      IndirectMessage = ot::IndirectSender::FindIndirectMessage(this, a3, 1);
      if (IndirectMessage)
      {
        ot::IndirectSender::RemoveMessageFromSleepyChild(this, IndirectMessage, a3);
        IgnoreError();
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
        ot::MeshForwarder::RemoveMessageIfNoPendingTx(v4, IndirectMessage);
      }
    }

    ot::IndirectSender::RequestMessageUpdate(this, a3);
  }
}

uint64_t ot::IndirectSender::FindIndirectMessage(ot::IndirectSender *this, ot::Child *a2, char a3)
{
  v16 = this;
  v15 = a2;
  v14 = a3;
  *&v13[8] = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  *v13 = ot::ChildTable::GetChildIndex(v3, v15);
  v12 = (ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this) + 8);
  v11[0] = ot::PriorityQueue::begin(v12);
  v11[1] = v4;
  v10[0] = ot::PriorityQueue::end(v12);
  v10[1] = v5;
  while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v11, v10))
  {
    v9 = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(v11);
    if (ot::Message::GetChildMask(v9, *v13) && ((v14 & 1) == 0 || ot::Message::GetType(v9) == 2))
    {
      *&v13[2] = v9;
      return *&v13[2];
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v11, v6);
  }

  return *&v13[2];
}

uint64_t ot::IndirectSender::RemoveMessageFromSleepyChild(ot::IndirectSender *this, ot::Message *a2, ot::Child *a3)
{
  *&v7[4] = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  *v7 = ot::ChildTable::GetChildIndex(v3, a3);
  if (ot::Message::GetChildMask(a2, *v7))
  {
    ot::Message::ClearChildMask(a2, *v7);
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
    memcpy(__dst, a2, sizeof(__dst));
    if (ot::MeshForwarder::IsTxThreadControl(v5, __dst))
    {
      ot::SourceMatchController::DecrementMessageCount((this + 1), a3, 0);
    }

    else
    {
      ot::SourceMatchController::DecrementMessageCount((this + 1), a3, 1);
    }

    ot::IndirectSender::RequestMessageUpdate(this, a3);
  }

  else
  {
    *&v7[2] = 23;
  }

  return *&v7[2];
}

void ot::IndirectSender::RequestMessageUpdate(ot::IndirectSender *this, ot::Child *a2)
{
  IndirectMessage = ot::IndirectSender::ChildInfo::GetIndirectMessage((a2 + 144));
  if (!IndirectMessage || (v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this), ChildIndex = ot::ChildTable::GetChildIndex(v2, a2), ot::Message::GetChildMask(IndirectMessage, ChildIndex)))
  {
    if ((ot::IndirectSender::ChildInfo::IsWaitingForMessageUpdate((a2 + 144)) & 1) == 0 && IndirectMessage != ot::IndirectSender::FindIndirectMessage(this, a2, 0))
    {
      if (IndirectMessage)
      {
        if (!ot::IndirectSender::ChildInfo::GetIndirectFragmentOffset((a2 + 144)))
        {
          ot::IndirectSender::ChildInfo::SetWaitingForMessageUpdate(a2 + 144, 1);
          ot::DataPollHandler::RequestFrameChange(this + 8, 1, a2);
          ot::CslTxScheduler::Update((this + 24));
        }
      }

      else
      {
        ot::IndirectSender::UpdateIndirectMessage(this, a2);
      }
    }
  }

  else
  {
    ot::IndirectSender::ChildInfo::SetIndirectMessage(a2 + 18, 0);
    ot::IndirectSender::ChildInfo::SetWaitingForMessageUpdate(a2 + 144, 1);
    ot::DataPollHandler::RequestFrameChange(this + 8, 0, a2);
    ot::CslTxScheduler::Update((this + 24));
  }
}

void ot::IndirectSender::ClearAllMessagesForSleepyChild(ot::IndirectSender *this, ot::Child *a2)
{
  v14 = this;
  v13 = a2;
  if (ot::IndirectSender::ChildInfo::GetIndirectMessageCount((a2 + 144)) > 0)
  {
    v12 = (ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this) + 8);
    v11[0] = ot::PriorityQueue::begin(v12);
    v11[1] = v2;
    v10[0] = ot::PriorityQueue::end(v12);
    v10[1] = v3;
    while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v11, v10))
    {
      v8 = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(v11);
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
      ChildIndex = ot::ChildTable::GetChildIndex(v4, v13);
      ot::Message::ClearChildMask(v8, ChildIndex);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
      ot::MeshForwarder::RemoveMessageIfNoPendingTx(v6, v8);
      ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v11, v7);
    }

    ot::IndirectSender::ChildInfo::SetIndirectMessage(v13 + 18, 0);
    ot::SourceMatchController::ResetMessageCount((this + 1), v13);
    ot::DataPollHandler::RequestFrameChange(this + 8, 0, v13);
    ot::CslTxScheduler::Update((this + 24));
  }
}

uint64_t ot::IndirectSender::SetChildUseShortAddress(ot::IndirectSender *this, ot::Child *a2, char a3)
{
  result = ot::IndirectSender::ChildInfo::IsIndirectSourceMatchShort((a2 + 144));
  if (result != (a3 & 1))
  {
    return ot::SourceMatchController::SetSrcMatchAsShort((this + 1), a2, a3 & 1);
  }

  return result;
}

uint64_t ot::IndirectSender::ChildInfo::IsIndirectSourceMatchShort(ot::IndirectSender::ChildInfo *this)
{
  return (*(this + 1) >> 30) & 1;
}

{
  return ot::IndirectSender::ChildInfo::IsIndirectSourceMatchShort(this);
}

void ot::IndirectSender::HandleChildModeChange(uint64_t a1, ot::Neighbor *a2, char a3)
{
  v15 = a3;
  v14 = a1;
  v13 = a2;
  if (!ot::Neighbor::IsRxOnWhenIdle(a2) && ot::Neighbor::IsStateValid(v13))
  {
    ot::IndirectSender::SetChildUseShortAddress(a1, v13, 1);
  }

  if (!ot::Mle::DeviceMode::IsRxOnWhenIdle(&v15) && ot::Neighbor::IsRxOnWhenIdle(v13) && ot::IndirectSender::ChildInfo::GetIndirectMessageCount((v13 + 144)) > 0)
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(a1);
    ChildIndex = ot::ChildTable::GetChildIndex(v3, v13);
    v11 = (ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1) + 8);
    v10[0] = ot::PriorityQueue::begin(v11);
    v10[1] = v4;
    v9[0] = ot::PriorityQueue::end(v11);
    v9[1] = v5;
    while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v10, v9))
    {
      v8 = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(v10);
      if (ot::Message::GetChildMask(v8, ChildIndex))
      {
        ot::Message::ClearChildMask(v8, ChildIndex);
        ot::Message::SetDirectTransmission(v8);
      }

      ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v10, v6);
    }

    ot::IndirectSender::ChildInfo::SetIndirectMessage(v13 + 18, 0);
    ot::SourceMatchController::ResetMessageCount((a1 + 1), v13);
    ot::DataPollHandler::RequestFrameChange(a1 + 8, 0, v13);
    ot::CslTxScheduler::Update((a1 + 24));
  }
}

uint64_t ot::IndirectSender::ChildInfo::SetWaitingForMessageUpdate(uint64_t this, char a2)
{
  *(this + 8) = *(this + 8) & 0xFFFFFFFFFFFF7FFFLL | ((a2 & 1) << 15);
  return this;
}

{
  return ot::IndirectSender::ChildInfo::SetWaitingForMessageUpdate(this, a2);
}

uint64_t ot::IndirectSender::ChildInfo::IsWaitingForMessageUpdate(ot::IndirectSender::ChildInfo *this)
{
  return (*(this + 1) >> 15) & 1;
}

{
  return ot::IndirectSender::ChildInfo::IsWaitingForMessageUpdate(this);
}

void ot::IndirectSender::UpdateIndirectMessage(ot::IndirectSender *this, ot::Child *a2)
{
  v7 = this;
  v6 = a2;
  IndirectMessage = ot::IndirectSender::FindIndirectMessage(this, a2, 0);
  ot::IndirectSender::ChildInfo::SetWaitingForMessageUpdate(v6 + 144, 0);
  ot::IndirectSender::ChildInfo::SetIndirectMessage(v6 + 18, IndirectMessage);
  ot::IndirectSender::ChildInfo::SetIndirectFragmentOffset(v6 + 144, 0);
  ot::IndirectSender::ChildInfo::SetIndirectTxSuccess(v6 + 144, 1);
  ot::CslTxScheduler::Update((this + 24));
  if (IndirectMessage)
  {
    ot::Mac::Address::Address(v4);
    ot::DataPollHandler::HandleNewFrame((this + 8), v6);
    ot::IndirectSender::ChildInfo::GetMacAddress((v6 + 144), v4);
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
    ot::MeshForwarder::LogMessage(v2, 2u, IndirectMessage, 0, v4);
  }
}

uint64_t ot::IndirectSender::ChildInfo::GetIndirectFragmentOffset(ot::IndirectSender::ChildInfo *this)
{
  v1 = *(this + 1) & 0x3FFFLL;
  return *(this + 4) & 0x3FFF;
}

{
  return ot::IndirectSender::ChildInfo::GetIndirectFragmentOffset(this);
}

void ot::IndirectSender::HandleFrameChangeDone(ot::IndirectSender *this, ot::Child *a2)
{
  if (ot::IndirectSender::ChildInfo::IsWaitingForMessageUpdate((a2 + 144)))
  {
    ot::IndirectSender::UpdateIndirectMessage(this, a2);
  }
}

uint64_t ot::IndirectSender::ChildInfo::SetIndirectFragmentOffset(uint64_t this, __int16 a2)
{
  *(this + 8) = *(this + 8) & 0xFFFFFFFFFFFFC000 | a2 & 0x3FFF;
  return this;
}

{
  return ot::IndirectSender::ChildInfo::SetIndirectFragmentOffset(this, a2);
}

uint64_t ot::IndirectSender::ChildInfo::SetIndirectTxSuccess(uint64_t this, char a2)
{
  *(this + 8) = *(this + 8) & 0xFFFFFFFFFFFFBFFFLL | ((a2 & 1) << 14);
  return this;
}

{
  return ot::IndirectSender::ChildInfo::SetIndirectTxSuccess(this, a2);
}

uint64_t ot::IndirectSender::PrepareFrameForChild(ot::IndirectSender *a1, ot::Mac::TxFrame *a2, _WORD *a3, uint64_t a4)
{
  v8 = 0;
  IndirectMessage = ot::IndirectSender::ChildInfo::GetIndirectMessage((a4 + 144));
  if (*a1)
  {
    if (IndirectMessage)
    {
      Type = ot::Message::GetType(IndirectMessage);
      if (Type)
      {
        if (Type != 2)
        {
          __assert_rtn("PrepareFrameForChild", "indirect_sender.cpp", 374, "false");
        }

        ot::IndirectSender::PrepareEmptyFrame(a1, a2, a4, 1);
        *a3 = ot::Message::GetLength(IndirectMessage);
      }

      else
      {
        *a3 = ot::IndirectSender::PrepareDataFrame(a1, a2, a4, IndirectMessage);
      }
    }

    else
    {
      ot::IndirectSender::PrepareEmptyFrame(a1, a2, a4, 1);
      *a3 = 0;
    }
  }

  else
  {
    return 11;
  }

  return v8;
}

uint64_t ot::IndirectSender::PrepareEmptyFrame(ot::IndirectSender *this, ot::Mac::TxFrame *a2, ot::Child *a3, char a4)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  ot::Mac::Address::Address(v7);
  ot::IndirectSender::ChildInfo::GetMacAddress((v9 + 144), v7);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
  return ot::MeshForwarder::PrepareEmptyFrame(v4, v10, v7, v8 & 1);
}

uint64_t ot::IndirectSender::PrepareDataFrame(ot::IndirectSender *this, ot::Mac::TxFrame *a2, ot::Child *a3, ot::Message *a4)
{
  v22 = this;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  ot::Mac::Addresses::Addresses(v16);
  ot::Message::Read<ot::Ip6::Header>(v19, 0, v18);
  IgnoreError();
  v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
  Source = ot::Ip6::Header::GetSource(v18);
  ot::MeshForwarder::GetMacSourceAddress(v13, Source, v16);
  Destination = ot::Ip6::Header::GetDestination(v18);
  if (ot::Ip6::Address::IsLinkLocalUnicast(Destination))
  {
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
    v6 = ot::Ip6::Header::GetDestination(v18);
    ot::MeshForwarder::GetMacDestinationAddress(v11, v6, v17);
  }

  else
  {
    ot::IndirectSender::ChildInfo::GetMacAddress((v20 + 144), v17);
  }

  Offset = ot::Message::GetOffset(v19);
  v10 = v19;
  IndirectFragmentOffset = ot::IndirectSender::ChildInfo::GetIndirectFragmentOffset((v20 + 144));
  ot::Message::SetOffset(v10, IndirectFragmentOffset);
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
  v14 = ot::MeshForwarder::PrepareDataFrameWithNoMeshHeader(v8, v21, v19, v16);
  ot::Message::SetOffset(v19, Offset);
  if (ot::IndirectSender::ChildInfo::GetIndirectMessageCount((v20 + 144)) > 1)
  {
    ot::Mac::Frame::SetFramePending(v21, 1);
  }

  return v14;
}

void ot::IndirectSender::HandleSentFrameToChild(uint64_t a1, ot::Mac::Frame *a2, unsigned __int16 *a3, int a4, uint64_t a5)
{
  v52 = a1;
  v51 = a2;
  v50 = a3;
  v49 = a4;
  v48 = a5;
  __src = ot::IndirectSender::ChildInfo::GetIndirectMessage((a5 + 144));
  Length = *v50;
  if (*a1)
  {
    if (!v49)
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildSupervisor>(a1);
      ot::ChildSupervisor::UpdateOnSend(v5, v48);
    }

    if (Length)
    {
      if (v49)
      {
        if (v49 != 11 && v49 != 15 && v49 != 14)
        {
          __assert_rtn("HandleSentFrameToChild", "indirect_sender.cpp", 485, "false");
        }

        ot::IndirectSender::ChildInfo::SetIndirectTxSuccess(v48 + 144, 0);
        if (__src)
        {
          Length = ot::Message::GetLength(__src);
        }
      }

      if (__src && Length < ot::Message::GetLength(__src))
      {
        ot::IndirectSender::ChildInfo::SetIndirectFragmentOffset(v48 + 144, Length);
        ot::DataPollHandler::HandleNewFrame((a1 + 8), v48);
        ot::CslTxScheduler::Update((a1 + 24));
      }

      else
      {
        if (__src)
        {
          v45 = v49;
          v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(a1);
          ChildIndex = ot::ChildTable::GetChildIndex(v6, v48);
          ot::Mac::Address::Address(v43);
          ot::IndirectSender::ChildInfo::SetIndirectMessage(v48 + 18, 0);
          LinkInfo = ot::Neighbor::GetLinkInfo(v48);
          IndirectTxSuccess = ot::IndirectSender::ChildInfo::GetIndirectTxSuccess((v48 + 144));
          ot::LinkQualityInfo::AddMessageTxStatus(LinkInfo, IndirectTxSuccess);
          v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(a1);
          if (ot::AppMetricsManager::IsAppPacket(v8, __src, v42, 1))
          {
            v33 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(a1);
            v32 = v48;
            v9 = ot::IndirectSender::ChildInfo::GetIndirectTxSuccess((v48 + 144));
            ot::AppMetricsManager::AddAppMessageTxStatus(v33, v42, v32, v9);
          }

          ot::SourceMatchController::SetSrcMatchAsShort((a1 + 1), v48, 1);
          if (!ot::Mac::Frame::IsEmpty(v51))
          {
            ot::Mac::Frame::GetDstAddr(v51, v43);
            IgnoreError();
            v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
            ot::MeshForwarder::LogMessage(v10, 1u, __src, v45, v43);
          }

          if (!ot::Message::GetType(__src))
          {
            v41 = (ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1) + 136);
            v30 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
            memcpy(__dst, __src, sizeof(__dst));
            IsTxThreadControl = ot::MeshForwarder::IsTxThreadControl(v30, __dst);
            v31 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
            memcpy(v54, __src, sizeof(v54));
            IsTxIcmpError = ot::MeshForwarder::IsTxIcmpError(v31, v54);
            v38 = (ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1) + 192);
            if (ot::IndirectSender::ChildInfo::GetIndirectTxSuccess((v48 + 144)))
            {
              ++*v41;
              ++*v38;
              if (!IsTxThreadControl)
              {
                ++v41[11];
                ++v38[11];
              }

              v29 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
              Timestamp = ot::Message::GetTimestamp(__src);
              Value = ot::Time::GetValue(&Timestamp);
              ot::MeshForwarder::UpdateTxDelayStats(v29, Value);
            }

            else
            {
              ++v41[2];
              ++v38[2];
              if (!IsTxThreadControl)
              {
                ++v41[12];
                ++v38[12];
              }

              v28 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
              v36 = ot::Message::GetTimestamp(__src);
              v12 = ot::Time::GetValue(&v36);
              ot::MeshForwarder::UpdateTxDelayStats(v28, v12);
            }

            v27 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
            v24 = v48;
            v25 = IsTxThreadControl;
            v26 = IsTxIcmpError;
            v13 = ot::IndirectSender::ChildInfo::GetIndirectTxSuccess((v48 + 144));
            ot::MeshForwarder::UpdateTriggerBasedNeighborInfo(v27, v24, v25, v26, v13);
          }

          if (ot::Message::GetChildMask(__src, ChildIndex))
          {
            ot::Message::ClearChildMask(__src, ChildIndex);
            v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
            memcpy(v53, __src, sizeof(v53));
            if (ot::MeshForwarder::IsTxThreadControl(v23, v53))
            {
              ot::SourceMatchController::DecrementMessageCount((a1 + 1), v48, 0);
            }

            else
            {
              ot::SourceMatchController::DecrementMessageCount((a1 + 1), v48, 1);
            }
          }

          if (!ot::Neighbor::IsStateInvalid(v48))
          {
            v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
            ot::MeshForwarder::RemoveMessageIfNoPendingTx(v14, __src);
          }
        }

        ot::IndirectSender::UpdateIndirectMessage(a1, v48);
        v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
        if (ot::Mle::Mle::IsCslPeripheralPresent(v15))
        {
          v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
          ot::Mle::Mle::HandleSentFrameToNeighbor(v16, v48, v17, v18, v19, v20, v21, v22);
        }
      }
    }
  }

  if (*a1)
  {
    ot::IndirectSender::ClearMessagesForRemovedChildren(a1);
  }
}

_WORD *ot::LinkQualityInfo::AddMessageTxStatus(ot::LinkQualityInfo *this, char a2)
{
  return ot::SuccessRateTracker::AddSample(this + 3, a2 & 1, 0x80u);
}

{
  return ot::LinkQualityInfo::AddMessageTxStatus(this, a2);
}

uint64_t ot::IndirectSender::ChildInfo::GetIndirectTxSuccess(ot::IndirectSender::ChildInfo *this)
{
  return (*(this + 1) >> 14) & 1;
}

{
  return ot::IndirectSender::ChildInfo::GetIndirectTxSuccess(this);
}

BOOL ot::IndirectSender::ClearMessagesForRemovedChildren(ot::IndirectSender *this)
{
  v13 = this;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v11 = ot::ChildTable::Iterate(v1, 6);
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
    if (ot::IndirectSender::ChildInfo::GetIndirectMessageCount((v6 + 144)))
    {
      ot::IndirectSender::ClearAllMessagesForSleepyChild(this, v6);
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v9);
  }

  return result;
}

uint64_t ot::KeyManager::HandleKeyRotationTimer(ot::KeyManager *this)
{
  ot::TimerMilli::Start((this + 80), 0x36EE80u);
  v8 = ++*(this + 34);
  v9 = *(this + 70);
  v10 = *(this + 35);
  v11 = *(this + 4);
  ot::Timer::IsRunning((this + 80));
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("KeyManager", "%s Rotation time hoursSinceKeyRotation:%u, securityPolicy.RotationTime:%u, guardTime:%u, keySequence:%u, isRunning:%d", v1, v2, v3, v4, v5, v6, "HandleKeyRotationTimer");
  if (*(this + 36))
  {
    --*(this + 36);
  }

  return ot::KeyManager::CheckForKeyRotation(this);
}

uint64_t ot::SecurityPolicy::SetToDefaultFlags(uint64_t this)
{
  *(this + 2) = *(this + 2) & 0xFFFE | 1;
  *(this + 2) = *(this + 2) & 0xFFFD | 2;
  *(this + 2) = *(this + 2) & 0xFFFB | 4;
  *(this + 2) = *(this + 2) & 0xFFF7 | 8;
  *(this + 2) &= ~0x10u;
  *(this + 2) &= ~0x20u;
  *(this + 2) &= ~0x40u;
  *(this + 2) = *(this + 2) & 0xFF7F | 0x80;
  *(this + 2) &= ~0x100u;
  *(this + 2) &= 0xF1FFu;
  return this;
}

uint64_t ot::SecurityPolicy::SetFlags(ot::SecurityPolicy *this, char *a2, unsigned __int8 a3)
{
  if (!a3)
  {
    __assert_rtn("SetFlags", "key_manager.cpp", 95, "aFlagsLength > 0");
  }

  result = ot::SecurityPolicy::SetToDefaultFlags(this);
  *(this + 1) = *(this + 1) & 0xFFFE | (*a2 < 0);
  *(this + 1) = *(this + 1) & 0xFFFD | (2 * ((*a2 & 0x40) != 0));
  *(this + 1) = *(this + 1) & 0xFFFB | (4 * ((*a2 & 0x20) != 0));
  *(this + 1) = *(this + 1) & 0xFFF7 | (8 * ((*a2 & 0x10) != 0));
  *(this + 1) = *(this + 1) & 0xFFEF | (16 * ((*a2 & 4) == 0));
  *(this + 1) = *(this + 1) & 0xFFDF | (32 * ((*a2 & 2) == 0));
  *(this + 1) = *(this + 1) & 0xFFBF | (((*a2 & 1) == 0) << 6);
  if (a3 > 1uLL)
  {
    *(this + 1) = *(this + 1) & 0xFF7F | ((a2[1] < 0) << 7);
    *(this + 1) = *(this + 1) & 0xFEFF | (((a2[1] & 0x40) == 0) << 8);
    *(this + 1) = *(this + 1) & 0xF1FF | ((a2[1] & 7) << 9);
  }

  return result;
}

void ot::SecurityPolicy::GetFlags(ot::SecurityPolicy *this, unsigned __int8 *a2, unsigned __int8 a3)
{
  if (!a3)
  {
    __assert_rtn("GetFlags", "key_manager.cpp", 118, "aFlagsLength > 0");
  }

  bzero(a2, a3);
  if (*(this + 1))
  {
    *a2 |= 0x80u;
  }

  if ((*(this + 1) & 2) != 0)
  {
    *a2 |= 0x40u;
  }

  if ((*(this + 1) & 4) != 0)
  {
    *a2 |= 0x20u;
  }

  if ((*(this + 1) & 8) != 0)
  {
    *a2 |= 0x10u;
  }

  if ((*(this + 1) & 0x10) == 0)
  {
    *a2 |= 4u;
  }

  if ((*(this + 1) & 0x20) == 0)
  {
    *a2 |= 2u;
  }

  if ((*(this + 1) & 0x40) == 0)
  {
    *a2 |= 1u;
  }

  if (a3 > 1uLL)
  {
    if ((*(this + 1) & 0x80) != 0)
    {
      a2[1] |= 0x80u;
    }

    if ((*(this + 1) & 0x100) == 0)
    {
      a2[1] |= 0x40u;
    }

    a2[1] |= 0x38u;
    a2[1] |= (*(this + 1) >> 9) & 7;
  }
}

ot::KeyManager *ot::KeyManager::KeyManager(ot::KeyManager *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *(this + 4) = 0;
  ot::Mac::KeyMaterial::KeyMaterial((this + 20));
  ot::Mac::KeyMaterial::KeyMaterial((this + 36));
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 34) = 0;
  *(this + 35) = 624;
  *(this + 36) = 0;
  ot::TimerMilliIn<ot::KeyManager,&ot::KeyManager::HandleKeyRotationTimer>::TimerMilliIn((this + 80), a2);
  ot::Mac::KeyMaterial::KeyMaterial((this + 120));
  *(this + 34) = 0;
  ot::SecurityPolicy::SecurityPolicy((this + 140));
  *(this + 144) &= ~1u;
  j__otPlatCryptoInit();
  ot::NetworkKey::GenerateRandom(this);
  IgnoreError();
  ot::Clearable<ot::Pskc>::Clear(this + 13);
  ot::Mac::LinkFrameCounters::Reset((this + 52));
  return this;
}

{
  ot::KeyManager::KeyManager(this, a2);
  return this;
}

ot::TimerMilli *ot::TimerMilliIn<ot::KeyManager,&ot::KeyManager::HandleKeyRotationTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::KeyManager,&ot::KeyManager::HandleKeyRotationTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::KeyManager,&ot::KeyManager::HandleKeyRotationTimer>::HandleTimer);
  return a1;
}

uint64_t ot::KeyManager::SetPskc(uint64_t a1, _OWORD *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
  result = ot::Notifier::Update<ot::Pskc>(v2, (a1 + 104), a2, 0x80000);
  *(a1 + 144) = *(a1 + 144) & 0xFE | 1;
  return result;
}

uint64_t ot::Notifier::Update<ot::Pskc>(void *a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  v6 = 0;
  if (ot::Equatable<ot::Pskc>::operator==(a2, a3))
  {
    ot::Notifier::SignalIfFirst(a1, a4);
    return 24;
  }

  else
  {
    *a2 = *a3;
    ot::Notifier::Signal(a1, a4);
  }

  return v6;
}

{
  return ot::Notifier::Update<ot::Pskc>(a1, a2, a3, a4);
}

BOOL ot::KeyManager::ResetFrameCounters(ot::KeyManager *this)
{
  v23 = this;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  Parent = ot::Mle::Mle::GetParent(v1);
  ot::Neighbor::SetKeySequence(Parent, 0);
  LinkFrameCounters = ot::Neighbor::GetLinkFrameCounters(Parent);
  ot::Mac::LinkFrameCounters::Reset(LinkFrameCounters);
  ot::Neighbor::SetLinkAckFrameCounter(Parent, 0);
  ot::Neighbor::SetMleFrameCounter(Parent, 0);
  v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
  ot::RouterTable::begin(v21);
  v20 = v3;
  v19 = ot::RouterTable::end(v21);
  while (v20 != v19)
  {
    v18 = v20;
    ot::Neighbor::SetKeySequence(v20, 0);
    v4 = ot::Neighbor::GetLinkFrameCounters(v20);
    ot::Mac::LinkFrameCounters::Reset(v4);
    ot::Neighbor::SetLinkAckFrameCounter(v20, 0);
    ot::Neighbor::SetMleFrameCounter(v20, 0);
    v20 = (v20 + 144);
  }

  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v16 = ot::ChildTable::Iterate(v5, 5);
  v17 = &v16;
  v26 = ot::ChildTable::IteratorBuilder::begin(&v16);
  v27 = v6;
  v14 = v26;
  v15 = v6;
  v24 = ot::ChildTable::IteratorBuilder::end(v17);
  v25 = v7;
  v12 = v24;
  v13 = v7;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v14, &v12);
    if (!result)
    {
      break;
    }

    v11 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v14);
    ot::Neighbor::SetKeySequence(v11, 0);
    v9 = ot::Neighbor::GetLinkFrameCounters(v11);
    ot::Mac::LinkFrameCounters::Reset(v9);
    ot::Neighbor::SetLinkAckFrameCounter(v11, 0);
    ot::Neighbor::SetMleFrameCounter(v11, 0);
    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v14);
  }

  return result;
}

void ot::RouterTable::begin(ot::RouterTable *this)
{
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin();
}

{
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin();
}

{
  ot::RouterTable::begin(this);
}

{
  ot::RouterTable::begin(this);
}

uint64_t ot::RouterTable::end(ot::RouterTable *this)
{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(this + 8);
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(this + 8);
}

{
  return ot::RouterTable::end(this);
}

{
  return ot::RouterTable::end(this);
}

uint64_t ot::KeyManager::SetNetworkKey(ot::KeyManager *this, const ot::NetworkKey *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
  result = ot::Notifier::Update<ot::NetworkKey>(v2, this, a2, 0x40000);
  if (!result)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    if (ot::Mle::Mle::GetRole(v4))
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
      ot::Notifier::Signal(v5, 256);
      *(this + 4) = 0;
    }

    ot::KeyManager::UpdateKeyMaterial(this);
    return ot::KeyManager::ResetFrameCounters(this);
  }

  return result;
}

uint64_t ot::Notifier::Update<ot::NetworkKey>(void *a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  v6 = 0;
  if (ot::Equatable<ot::NetworkKey>::operator==(a2, a3))
  {
    ot::Notifier::SignalIfFirst(a1, a4);
    return 24;
  }

  else
  {
    *a2 = *a3;
    ot::Notifier::Signal(a1, a4);
  }

  return v6;
}

{
  return ot::Notifier::Update<ot::NetworkKey>(a1, a2, a3, a4);
}

uint64_t ot::KeyManager::UpdateKeyMaterial(ot::KeyManager *this)
{
  ot::KeyManager::ComputeKeys(this, *(this + 4), v12);
  ot::KeyManager::HashKeys::GetMleKey(v12);
  ot::Mac::KeyMaterial::SetFrom((this + 20), v1);
  ot::Mac::KeyMaterial::KeyMaterial(&v11);
  ot::Mac::KeyMaterial::KeyMaterial(&v10);
  ot::Mac::KeyMaterial::KeyMaterial(&v9);
  MacKey = ot::KeyManager::HashKeys::GetMacKey(v12);
  ot::Mac::KeyMaterial::SetFrom(&v11, MacKey);
  ot::KeyManager::ComputeKeys(this, *(this + 4) - 1, v12);
  v3 = ot::KeyManager::HashKeys::GetMacKey(v12);
  ot::Mac::KeyMaterial::SetFrom(&v10, v3);
  ot::KeyManager::ComputeKeys(this, *(this + 4) + 1, v12);
  v4 = ot::KeyManager::HashKeys::GetMacKey(v12);
  ot::Mac::KeyMaterial::SetFrom(&v9, v4);
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::SubMac>(this);
  v6 = (*(this + 4) & 0x7Fu) + 1;
  return ot::Mac::SubMac::SetMacKey(v5, 8u, (*(this + 16) & 0x7Fu) + 1, &v10, &v11, &v9);
}

void ot::KeyManager::ComputeKeys(ot::KeyManager *this, unsigned int a2, ot::KeyManager::HashKeys *a3)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  ot::Crypto::HmacSha256::HmacSha256(v7);
  ot::Crypto::Key::Set(v5, this, 16);
  ot::Crypto::HmacSha256::Start(v7, v5);
  ot::BigEndian::WriteUint32(v9, v6, v3);
  ot::Crypto::HmacSha256::Update<unsigned char [4]>(v7, v6);
  ot::Crypto::HmacSha256::Update<unsigned char [6]>(v7, &ot::KeyManager::kThreadString);
  ot::Crypto::HmacSha256::Finish(v7, v8);
  ot::Crypto::HmacSha256::~HmacSha256(v7);
}

uint64_t ot::Crypto::HmacSha256::Update<unsigned char [4]>(ot::Crypto::HmacSha256 *a1, uint64_t a2)
{
  return ot::Crypto::HmacSha256::Update(a1, a2, 4u);
}

{
  return ot::Crypto::HmacSha256::Update<unsigned char [4]>(a1, a2);
}

uint64_t ot::Crypto::HmacSha256::Update<unsigned char [6]>(ot::Crypto::HmacSha256 *a1, uint64_t a2)
{
  return ot::Crypto::HmacSha256::Update(a1, a2, 6u);
}

{
  return ot::Crypto::HmacSha256::Update<unsigned char [6]>(a1, a2);
}

void ot::KeyManager::HashKeys::GetMleKey(ot::KeyManager::HashKeys *this)
{
  ;
}

{
  ot::KeyManager::HashKeys::GetMleKey(this);
}

uint64_t ot::KeyManager::HashKeys::GetMacKey(ot::KeyManager::HashKeys *this)
{
  return this + 16;
}

{
  return ot::KeyManager::HashKeys::GetMacKey(this);
}

uint64_t ot::KeyManager::SetCurrentKeySequence(uint64_t this, int a2, char a3)
{
  v5 = this;
  if (a2 == *(this + 16))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
    return ot::Notifier::SignalIfFirst(v3, 256);
  }

  else if ((a3 & 1) == 0 || !*(this + 72))
  {
    *(this + 16) = a2;
    ot::KeyManager::UpdateKeyMaterial(this);
    ot::KeyManager::SetAllMacFrameCounters(v5, 0, 0);
    *(v5 + 14) = 0;
    ot::KeyManager::ResetKeyRotationTimer(v5);
    if ((a3 & 2) != 0)
    {
      *(v5 + 36) = *(v5 + 35);
    }

    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(v5);
    return ot::Notifier::Signal(v4, 256);
  }

  return this;
}

uint64_t ot::KeyManager::SetAllMacFrameCounters(ot::KeyManager *this, unsigned int a2, char a3)
{
  ot::Mac::LinkFrameCounters::SetAll(this + 13, a2);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::SubMac>(this);
  return ot::Mac::SubMac::SetFrameCounter(v3, a2, a3 & 1);
}

uint64_t ot::KeyManager::GetTemporaryMleKey(ot::KeyManager *this, unsigned int a2)
{
  ot::KeyManager::ComputeKeys(this, a2, v5);
  ot::KeyManager::HashKeys::GetMleKey(v5);
  ot::Mac::KeyMaterial::SetFrom((this + 36), v2);
  return this + 36;
}

void ot::KeyManager::MacFrameCounterUsed(ot::KeyManager *this, unsigned int a2)
{
  if (ot::Mac::LinkFrameCounters::Get154((this + 52)) <= a2)
  {
    ot::Mac::LinkFrameCounters::Set154(this + 13, a2 + 1);
    if (ot::Mac::LinkFrameCounters::Get154((this + 52)) >= *(this + 15))
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      ot::Mle::Mle::Store(v2);
      IgnoreError();
    }
  }
}

_DWORD *ot::Mac::LinkFrameCounters::Set154(_DWORD *this, int a2)
{
  *this = a2;
  return this;
}

{
  return ot::Mac::LinkFrameCounters::Set154(this, a2);
}

void ot::KeyManager::Increment154MacFrameCounter(ot::KeyManager *this)
{
  ot::Mac::LinkFrameCounters::Increment154(this + 13);
  if (ot::Mac::LinkFrameCounters::Get154((this + 52)) >= *(this + 15))
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::Mle::Store(v1);
    IgnoreError();
  }
}

_DWORD *ot::Mac::LinkFrameCounters::Increment154(_DWORD *this)
{
  ++*this;
  return this;
}

{
  return ot::Mac::LinkFrameCounters::Increment154(this);
}

void ot::KeyManager::IncrementMleFrameCounter(ot::KeyManager *this)
{
  if (++*(this + 14) >= *(this + 16))
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::Mle::Store(v1);
    IgnoreError();
  }
}

uint64_t ot::KeyManager::SetSecurityPolicy(ot::KeyManager *this, const ot::SecurityPolicy *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = this;
  v12 = a2;
  v11 = *a2;
  if (v11 < 2u)
  {
    LOWORD(v11) = 2;
    ot::Logger::LogAtLevel<(ot::LogLevel)3>("KeyManager", "Key Rotation Time in SecurityPolicy is set to min allowed value of %u", a3, a4, a5, a6, a7, a8, 2);
  }

  if (v11 != *(this + 70))
  {
    *(this + 35) = 93 * v11 / 0x64;
  }

  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
  ot::Notifier::Update<ot::SecurityPolicy>(v8, this + 35, &v11, 0x100000);
  IgnoreError();
  return ot::KeyManager::CheckForKeyRotation(this);
}

uint64_t ot::Notifier::Update<ot::SecurityPolicy>(void *a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v6 = 0;
  if (ot::Equatable<ot::SecurityPolicy>::operator==(a2, a3))
  {
    ot::Notifier::SignalIfFirst(a1, a4);
    return 24;
  }

  else
  {
    *a2 = *a3;
    ot::Notifier::Signal(a1, a4);
  }

  return v6;
}

{
  return ot::Notifier::Update<ot::SecurityPolicy>(a1, a2, a3, a4);
}

uint64_t ot::KeyManager::CheckForKeyRotation(uint64_t this)
{
  v11 = this;
  if (*(this + 68) >= *(this + 140))
  {
    v7 = *(this + 68);
    v8 = *(this + 140);
    v9 = *(this + 70);
    v10 = *(this + 16);
    ot::Timer::IsRunning((this + 80));
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("KeyManager", "%s Update keysequence as key rotation timer expired hoursSinceKeyRotation:%u, securityPolicy.RotationTime:%u, guardTime:%u, keySequence:%u, isRunning:%d", v1, v2, v3, v4, v5, v6, "CheckForKeyRotation");
    return ot::KeyManager::SetCurrentKeySequence(v11, *(v11 + 16) + 1, 2);
  }

  return this;
}

__n128 ot::KeyManager::GetNetworkKey(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 ot::KeyManager::GetPskc(uint64_t a1, __n128 *a2)
{
  result = *(a1 + 104);
  *a2 = result;
  return result;
}

void ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin()
{
  ;
}

{
  ;
}

{
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin();
}

{
  ot::Array<ot::Router,(unsigned short)32,unsigned char>::begin();
}

uint64_t ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(uint64_t a1)
{
  return a1 + 144 * *(a1 + 4608);
}

{
  return a1 + 144 * *(a1 + 4608);
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(a1);
}

{
  return ot::Array<ot::Router,(unsigned short)32,unsigned char>::end(a1);
}

BOOL ot::Equatable<ot::Pskc>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 0x10uLL) == 0;
}

{
  return ot::Equatable<ot::Pskc>::operator==(a1, a2);
}

BOOL ot::Equatable<ot::SecurityPolicy>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 4uLL) == 0;
}

{
  return ot::Equatable<ot::SecurityPolicy>::operator==(a1, a2);
}

ot::LinkMetrics::Initiator *ot::LinkMetrics::Initiator::Initiator(ot::LinkMetrics::Initiator *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 2);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 4);
  return this;
}

{
  ot::LinkMetrics::Initiator::Initiator(this, a2);
  return this;
}

uint64_t ot::LinkMetrics::Initiator::Query(ot::LinkMetrics::Initiator *this, const ot::Ip6::Address *a2, char a3, const ot::LinkMetrics::Metrics *a4)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  Neighbor = 0;
  v10 = 0;
  Neighbor = ot::LinkMetrics::Initiator::FindNeighbor(this, a2, &v10);
  if (!Neighbor)
  {
    ot::Clearable<ot::LinkMetrics::Initiator::QueryInfo>::Clear(&v7);
    v7 = v13;
    if (v12)
    {
      v9 = ot::LinkMetrics::Metrics::ConvertToTypeIds(v12, v8);
    }

    if (v13 && v9)
    {
      return 7;
    }

    else
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      return ot::Mle::Mle::SendDataRequestForLinkMetricsReport(v4, v14, &v7);
    }
  }

  return Neighbor;
}

uint64_t ot::LinkMetrics::Initiator::FindNeighbor(ot::LinkMetrics::Initiator *this, const ot::Ip6::Address *a2, ot::Neighbor **a3)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  v9 = 19;
  ot::Mac::Address::Address(v8);
  *v10 = 0;
  if (ot::Ip6::Address::IsLinkLocalUnicast(v11))
  {
    Iid = ot::Ip6::Address::GetIid(v11);
    ot::Ip6::InterfaceIdentifier::ConvertToMacAddress(Iid, v8);
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
    Neighbor = ot::NeighborTable::FindNeighbor(v4, v8, 1);
    *v10 = Neighbor;
    if (*v10)
    {
      if (ot::Neighbor::GetVersion(*v10) >= 3)
      {
        return 0;
      }

      else
      {
        return 27;
      }
    }
  }

  return v9;
}

uint64_t ot::Clearable<ot::LinkMetrics::Initiator::QueryInfo>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::LinkMetrics::Initiator::QueryInfo>(a1);
}

{
  return ot::Clearable<ot::LinkMetrics::Initiator::QueryInfo>::Clear(a1);
}

uint64_t ot::LinkMetrics::Initiator::AppendLinkMetricsQueryTlv(uint64_t a1, ot::Message *a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  OptionsSub = 0;
  ot::Tlv::SetType(v6, 87);
  if (*(v8 + 5))
  {
    v4 = *(v8 + 5) + 2;
  }

  else
  {
    v4 = 0;
  }

  ot::Tlv::SetLength(v6, v4 + 3);
  OptionsSub = ot::Message::Append<ot::Tlv>(v9, v6);
  if (!OptionsSub)
  {
    OptionsSub = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)1,unsigned char>>(v9, *v8);
    if (!OptionsSub)
    {
      if (*(v8 + 5))
      {
        ot::LinkMetrics::QueryOptionsSubTlv::Init(v5);
        ot::Tlv::SetLength(v5, *(v8 + 5));
        OptionsSub = ot::Message::Append<ot::LinkMetrics::QueryOptionsSubTlv>(v9, v5);
        if (!OptionsSub)
        {
          return ot::Message::AppendBytes(v9, (v8 + 1), *(v8 + 5));
        }
      }
    }
  }

  return OptionsSub;
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)1,unsigned char>>(uint64_t a1, unsigned __int8 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned char>(a1, 1, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)1,unsigned char>>(a1, a2);
}

uint64_t ot::LinkMetrics::QueryOptionsSubTlv::Init(ot::LinkMetrics::QueryOptionsSubTlv *this)
{
  ot::Tlv::SetType(this, 2);
  return ot::Tlv::SetLength(this, 0);
}

{
  return ot::LinkMetrics::QueryOptionsSubTlv::Init(this);
}

uint64_t ot::Message::Append<ot::LinkMetrics::QueryOptionsSubTlv>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 2u);
}

{
  return ot::Message::Append<ot::LinkMetrics::QueryOptionsSubTlv>(a1, a2);
}

void ot::LinkMetrics::Initiator::HandleReport(ot::LinkMetrics::Initiator *this, const ot::Message *a2, ot::OffsetRange *a3, const ot::Ip6::Address *a4)
{
  v65 = this;
  v64 = a2;
  v63 = a3;
  v62 = a4;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v51 = 0;
  MetricsTypeId = 0;
  if (ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsValues const*,otLinkMetricsStatus,void *)>::IsSet(this))
  {
    ot::Clearable<ot::LinkMetrics::MetricsValues>::Clear(v52);
    while (!ot::OffsetRange::IsEmpty(v63))
    {
      v61 = ot::Tlv::ParsedInfo::ParseFrom(v58, v64, v63);
      if (v61)
      {
        goto LABEL_39;
      }

      if ((v58[1] & 1) == 0)
      {
        if (v58[0])
        {
          if (v58[0] == 5)
          {
            if (v60 & 1) != 0 || (v59)
            {
              v61 = 2;
              goto LABEL_39;
            }

            v45 = v64;
            Offset = ot::OffsetRange::GetOffset(v63);
            v61 = ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)5,unsigned char>>(v45, Offset, &v51);
            if (v61)
            {
              goto LABEL_39;
            }

            v60 = 1;
          }
        }

        else
        {
          if (v60)
          {
            v61 = 2;
            goto LABEL_39;
          }

          v61 = ot::Message::Read(v64, v63, v57, 4u);
          if (v61)
          {
            goto LABEL_39;
          }

          if (!ot::LinkMetrics::ReportSubTlv::IsValid(v57))
          {
            v61 = 6;
            goto LABEL_39;
          }

          v59 = 1;
          MetricsTypeId = ot::LinkMetrics::ReportSubTlv::GetMetricsTypeId(v57);
          if (!ot::LinkMetrics::TypeId::IsExtended(MetricsTypeId))
          {
            if (ot::LinkMetrics::TypeId::GetValueLength(MetricsTypeId) > 1uLL)
            {
              v44 = v64;
              v5 = ot::OffsetRange::GetOffset(v63);
              v61 = ot::Message::Read<ot::LinkMetrics::ReportSubTlv>(v44, v5, v57);
              if (v61)
              {
                goto LABEL_39;
              }
            }

            switch(MetricsTypeId)
            {
              case 9u:
                v52[0] = v52[0] & 0xFD | 2;
                MetricsValue8 = ot::LinkMetrics::ReportSubTlv::GetMetricsValue8(v57);
                ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkMetrics", " - LQI: %u (Exponential Moving Average)", v13, v14, v15, v16, v17, v18, MetricsValue8);
                break;
              case 0xAu:
                v52[0] = v52[0] & 0xFB | 4;
                v19 = ot::LinkMetrics::ReportSubTlv::GetMetricsValue8(v57);
                v55 = ot::LinkMetrics::ScaleRawValueToLinkMargin(v19);
                ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkMetrics", " - Margin: %u (dB) (Exponential Moving Average)", v20, v21, v22, v23, v24, v25, v55);
                break;
              case 0xBu:
                v52[0] = v52[0] & 0xF7 | 8;
                v26 = ot::LinkMetrics::ReportSubTlv::GetMetricsValue8(v57);
                v56 = ot::LinkMetrics::ScaleRawValueToRssi(v26);
                ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkMetrics", " - RSSI: %u (dBm) (Exponential Moving Average)", v27, v28, v29, v30, v31, v32, v56);
                break;
              case 0x40u:
                v52[0] = v52[0] & 0xFE | 1;
                MetricsValue32 = ot::LinkMetrics::ReportSubTlv::GetMetricsValue32(v57);
                v6 = ot::ToUlong(MetricsValue32);
                ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkMetrics", " - PDU Counter: %lu (Count/Summation)", v7, v8, v9, v10, v11, v12, v6);
                break;
            }
          }
        }
      }

      v43 = v63;
      Size = ot::Tlv::ParsedInfo::GetSize(v58);
      ot::OffsetRange::AdvanceOffset(v43, Size);
    }

    if (v60 & 1) != 0 || (v59)
    {
      v49 = v62;
      if (v60)
      {
        v42 = 0;
      }

      else
      {
        v42 = v52;
      }

      v48 = v42;
      if (v60)
      {
        v41 = ot::MapEnum<ot::LinkMetrics::Status>(v51);
      }

      else
      {
        v41 = ot::MapEnum<ot::LinkMetrics::Status>(0);
      }

      v47 = v41;
      ot::Callback<void (*)(otIp6Address const*,otLinkMetricsValues const*,otLinkMetricsStatus,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Ip6::Address const*,ot::LinkMetrics::MetricsValues *,otLinkMetricsStatus>(this, &v49, &v48, &v47);
    }
  }

LABEL_39:
  v34 = ot::ErrorToString(v61);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkMetrics", "HandleReport, error:%s", v35, v36, v37, v38, v39, v40, v34);
}

BOOL ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsValues const*,otLinkMetricsStatus,void *)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsValues const*,otLinkMetricsStatus,void *)>::IsSet(a1);
}

uint64_t ot::Clearable<ot::LinkMetrics::MetricsValues>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::LinkMetrics::MetricsValues>(a1);
}

{
  return ot::Clearable<ot::LinkMetrics::MetricsValues>::Clear(a1);
}

uint64_t ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)5,unsigned char>>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  return ot::Tlv::ReadUintTlv<unsigned char>(a1, a2, a3);
}

{
  return ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)5,unsigned char>>(a1, a2, a3);
}

BOOL ot::LinkMetrics::ReportSubTlv::IsValid(ot::LinkMetrics::ReportSubTlv *this)
{
  return ot::Tlv::GetLength(this) >= 2;
}

{
  return ot::LinkMetrics::ReportSubTlv::IsValid(this);
}

uint64_t ot::LinkMetrics::ReportSubTlv::GetMetricsTypeId(ot::LinkMetrics::ReportSubTlv *this)
{
  return *(this + 2);
}

{
  return ot::LinkMetrics::ReportSubTlv::GetMetricsTypeId(this);
}

BOOL ot::LinkMetrics::TypeId::IsExtended(ot::LinkMetrics::TypeId *this)
{
  return this < 0;
}

{
  return ot::LinkMetrics::TypeId::IsExtended(this);
}

uint64_t ot::LinkMetrics::TypeId::GetValueLength(ot::LinkMetrics::TypeId *this)
{
  v1 = 4;
  if ((this & 0x40) == 0)
  {
    return 1;
  }

  return v1;
}

{
  return ot::LinkMetrics::TypeId::GetValueLength(this);
}

uint64_t ot::Message::Read<ot::LinkMetrics::ReportSubTlv>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 7u);
}

{
  return ot::Message::Read<ot::LinkMetrics::ReportSubTlv>(a1, a2, a3);
}

uint64_t ot::LinkMetrics::ReportSubTlv::GetMetricsValue32(ot::LinkMetrics::ReportSubTlv *this)
{
  return ot::BigEndian::HostSwap32(*(this + 3));
}

{
  return ot::LinkMetrics::ReportSubTlv::GetMetricsValue32(this);
}

uint64_t ot::LinkMetrics::ReportSubTlv::GetMetricsValue8(ot::LinkMetrics::ReportSubTlv *this)
{
  return *(this + 3);
}

{
  return ot::LinkMetrics::ReportSubTlv::GetMetricsValue8(this);
}

uint64_t ot::Callback<void (*)(otIp6Address const*,otLinkMetricsValues const*,otLinkMetricsStatus,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Ip6::Address const*,ot::LinkMetrics::MetricsValues *,otLinkMetricsStatus>(uint64_t a1, void *a2, void *a3, unsigned int *a4)
{
  return (*a1)(*a2, *a3, *a4, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otIp6Address const*,otLinkMetricsValues const*,otLinkMetricsStatus,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Ip6::Address const*,ot::LinkMetrics::MetricsValues *,otLinkMetricsStatus>(a1, a2, a3, a4);
}

uint64_t ot::MapEnum<ot::LinkMetrics::Status>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<ot::LinkMetrics::Status>(result);
}

uint64_t ot::LinkMetrics::Initiator::SendMgmtRequestForwardTrackingSeries(ot::LinkMetrics::Initiator *this, __n128 *a2, char a3, const ot::LinkMetrics::SeriesFlags *a4, const ot::LinkMetrics::Metrics *a5)
{
  v26 = this;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = a5;
  Neighbor = 0;
  v20 = 0;
  v19 = 0;
  Neighbor = ot::LinkMetrics::Initiator::FindNeighbor(this, a2, &v20);
  if (!Neighbor)
  {
    if (v24)
    {
      ot::LinkMetrics::FwdProbingRegSubTlv::Init(v18);
      ot::LinkMetrics::FwdProbingRegSubTlv::SetSeriesId(v18, v24);
      v5 = ot::LinkMetrics::SeriesFlags::ConvertToMask(v23);
      ot::LinkMetrics::FwdProbingRegSubTlv::SetSeriesFlagsMask(v18, v5);
      if (v22)
      {
        v16 = v22;
        TypeIds = ot::LinkMetrics::FwdProbingRegSubTlv::GetTypeIds(v18);
        v19 = ot::LinkMetrics::Metrics::ConvertToTypeIds(v16, TypeIds);
      }

      ot::Tlv::SetLength(v18, v19 + 2);
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      Neighbor = ot::Mle::Mle::SendLinkMetricsManagementRequest(v7, v25, v18);
    }

    else
    {
      Neighbor = 7;
    }
  }

  v8 = ot::ErrorToString(Neighbor);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkMetrics", "SendMgmtRequestForwardTrackingSeries, error:%s, Series ID:%u", v9, v10, v11, v12, v13, v14, v8);
  return Neighbor;
}

uint64_t ot::LinkMetrics::FwdProbingRegSubTlv::Init(ot::LinkMetrics::FwdProbingRegSubTlv *this)
{
  ot::Tlv::SetType(this, 3);
  return ot::Tlv::SetLength(this, 2);
}

{
  return ot::LinkMetrics::FwdProbingRegSubTlv::Init(this);
}

uint64_t ot::LinkMetrics::FwdProbingRegSubTlv::SetSeriesId(uint64_t this, char a2)
{
  *(this + 2) = a2;
  return this;
}

{
  return ot::LinkMetrics::FwdProbingRegSubTlv::SetSeriesId(this, a2);
}

uint64_t ot::LinkMetrics::FwdProbingRegSubTlv::SetSeriesFlagsMask(uint64_t this, char a2)
{
  *(this + 3) = a2;
  return this;
}

{
  return ot::LinkMetrics::FwdProbingRegSubTlv::SetSeriesFlagsMask(this, a2);
}

uint64_t ot::LinkMetrics::FwdProbingRegSubTlv::GetTypeIds(ot::LinkMetrics::FwdProbingRegSubTlv *this)
{
  return this + 4;
}

{
  return ot::LinkMetrics::FwdProbingRegSubTlv::GetTypeIds(this);
}

uint64_t ot::LinkMetrics::Initiator::SendMgmtRequestEnhAckProbing(ot::LinkMetrics::Initiator *a1, __n128 *a2, char a3, const ot::LinkMetrics::Metrics *a4)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  Neighbor = 0;
  v12 = 0;
  v11 = 0;
  Neighbor = ot::LinkMetrics::Initiator::FindNeighbor(a1, a2, &v12);
  if (!Neighbor)
  {
    if (v15 || !v14)
    {
      ot::LinkMetrics::EnhAckConfigSubTlv::Init(v10);
      ot::LinkMetrics::EnhAckConfigSubTlv::SetEnhAckFlags(v10, v15);
      if (v14)
      {
        v7 = v14;
        TypeIds = ot::LinkMetrics::EnhAckConfigSubTlv::GetTypeIds(v10);
        v11 = ot::LinkMetrics::Metrics::ConvertToTypeIds(v7, TypeIds);
      }

      ot::Tlv::SetLength(v10, v11 + 1);
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
      Neighbor = ot::Mle::Mle::SendLinkMetricsManagementRequest(v5, v16, v10);
      if (v14)
      {
        ot::Neighbor::SetEnhAckProbingMetrics(v12, v14);
      }

      else
      {
        ot::Clearable<ot::LinkMetrics::Metrics>::Clear(&v9);
        ot::Neighbor::SetEnhAckProbingMetrics(v12, &v9);
      }
    }

    else
    {
      return 7;
    }
  }

  return Neighbor;
}

uint64_t ot::LinkMetrics::EnhAckConfigSubTlv::Init(ot::LinkMetrics::EnhAckConfigSubTlv *this)
{
  ot::Tlv::SetType(this, 7);
  return ot::Tlv::SetLength(this, 1);
}

{
  return ot::LinkMetrics::EnhAckConfigSubTlv::Init(this);
}

uint64_t ot::LinkMetrics::EnhAckConfigSubTlv::SetEnhAckFlags(uint64_t result, char a2)
{
  *(result + 2) = a2;
  return result;
}

{
  return ot::LinkMetrics::EnhAckConfigSubTlv::SetEnhAckFlags(result, a2);
}

uint64_t ot::LinkMetrics::EnhAckConfigSubTlv::GetTypeIds(ot::LinkMetrics::EnhAckConfigSubTlv *this)
{
  return this + 3;
}

{
  return ot::LinkMetrics::EnhAckConfigSubTlv::GetTypeIds(this);
}

uint64_t ot::Neighbor::SetEnhAckProbingMetrics(uint64_t this, const ot::LinkMetrics::Metrics *a2)
{
  *(this + 64) = *a2;
  return this;
}

{
  return ot::Neighbor::SetEnhAckProbingMetrics(this, a2);
}

_BYTE *ot::Clearable<ot::LinkMetrics::Metrics>::Clear(_BYTE *a1)
{
  return ot::ClearAllBytes<ot::LinkMetrics::Metrics>(a1);
}

{
  return ot::Clearable<ot::LinkMetrics::Metrics>::Clear(a1);
}

uint64_t ot::LinkMetrics::Initiator::HandleManagementResponse(ot::LinkMetrics::Initiator *this, const ot::Message *a2, const ot::Ip6::Address *a3)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  TlvValueOffsetRange = 0;
  v12 = 0;
  v11 = 0;
  if (ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsStatus,void *)>::IsSet(this + 2))
  {
    TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(v17, 0x58, &v14, v3);
    if (!TlvValueOffsetRange)
    {
      while (!ot::OffsetRange::IsEmpty(&v14))
      {
        TlvValueOffsetRange = ot::Tlv::ParsedInfo::ParseFrom(v13, v17, &v14);
        if (TlvValueOffsetRange)
        {
          return TlvValueOffsetRange;
        }

        if ((v13[1] & 1) == 0 && v13[0] == 5)
        {
          if (v11)
          {
            return 6;
          }

          v7 = v17;
          Offset = ot::OffsetRange::GetOffset(&v14);
          TlvValueOffsetRange = ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)5,unsigned char>>(v7, Offset, &v12);
          if (TlvValueOffsetRange)
          {
            return TlvValueOffsetRange;
          }

          v11 = 1;
        }

        Size = ot::Tlv::ParsedInfo::GetSize(v13);
        ot::OffsetRange::AdvanceOffset(&v14, Size);
      }

      if (v11)
      {
        v10 = v16;
        v9 = ot::MapEnum<ot::LinkMetrics::Status>(v12);
        ot::Callback<void (*)(otIp6Address const*,otLinkMetricsStatus,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Ip6::Address const*,otLinkMetricsStatus>(this + 16, &v10, &v9);
      }

      else
      {
        return 6;
      }
    }
  }

  return TlvValueOffsetRange;
}

BOOL ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsStatus,void *)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(otIp6Address const*,otLinkMetricsStatus,void *)>::IsSet(a1);
}

uint64_t ot::Callback<void (*)(otIp6Address const*,otLinkMetricsStatus,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Ip6::Address const*,otLinkMetricsStatus>(uint64_t a1, void *a2, unsigned int *a3)
{
  return (*a1)(*a2, *a3, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otIp6Address const*,otLinkMetricsStatus,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Ip6::Address const*,otLinkMetricsStatus>(a1, a2, a3);
}

uint64_t ot::LinkMetrics::Initiator::SendLinkProbe(ot::LinkMetrics::Initiator *this, const ot::Ip6::Address *a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  Neighbor = 0;
  v14 = 0;
  Neighbor = ot::LinkMetrics::Initiator::FindNeighbor(this, a2, &v14);
  if (!Neighbor)
  {
    if (v16 <= 0x40u && v17 && v17 != 255)
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      Neighbor = ot::Mle::Mle::SendLinkProbe(v4, v18, v17, v20, v16);
    }

    else
    {
      Neighbor = 7;
    }
  }

  v5 = ot::ErrorToString(Neighbor);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkMetrics", "SendLinkProbe, error:%s, Series ID:%u", v6, v7, v8, v9, v10, v11, v5);
  return Neighbor;
}

uint64_t ot::LinkMetrics::Initiator::ProcessEnhAckIeData(ot::LinkMetrics::Initiator *this, const unsigned __int8 *a2, unsigned __int8 a3, const ot::Neighbor *a4)
{
  v22 = this;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v17 = 0;
  result = ot::CallbackBase<void (*)(unsigned short,otExtAddress const*,otLinkMetricsValues const*,void *)>::IsSet(this + 4);
  if (result)
  {
    EnhAckProbingMetrics = ot::Neighbor::GetEnhAckProbingMetrics(v19);
    ot::LinkMetrics::MetricsValues::SetMetrics(v18, EnhAckProbingMetrics);
    ot::LinkMetrics::MetricsValues::GetMetrics(v18);
    if ((*v6 & 2) != 0 && v17 < v20)
    {
      v7 = v17++;
      v18[8] = v21[v7];
    }

    ot::LinkMetrics::MetricsValues::GetMetrics(v18);
    if ((*v8 & 4) != 0 && v17 < v20)
    {
      v9 = v17++;
      v18[9] = ot::LinkMetrics::ScaleRawValueToLinkMargin(v21[v9]);
    }

    ot::LinkMetrics::MetricsValues::GetMetrics(v18);
    if ((*v10 & 8) != 0 && v17 < v20)
    {
      v11 = v17++;
      v18[10] = ot::LinkMetrics::ScaleRawValueToRssi(v21[v11]);
    }

    Rloc16 = ot::Neighbor::GetRloc16(v19);
    ot::Neighbor::GetExtAddress(v19);
    v15 = v12;
    v14 = v18;
    return ot::Callback<void (*)(unsigned short,otExtAddress const*,otLinkMetricsValues const*,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned short,ot::Mac::ExtAddress const*,ot::LinkMetrics::MetricsValues *>(this + 32, &Rloc16, &v15, &v14);
  }

  return result;
}

BOOL ot::CallbackBase<void (*)(unsigned short,otExtAddress const*,otLinkMetricsValues const*,void *)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(unsigned short,otExtAddress const*,otLinkMetricsValues const*,void *)>::IsSet(a1);
}

_BYTE *ot::LinkMetrics::MetricsValues::SetMetrics(_BYTE *this, const ot::LinkMetrics::Metrics *a2)
{
  *this = *a2;
  return this;
}

{
  return ot::LinkMetrics::MetricsValues::SetMetrics(this, a2);
}

uint64_t ot::Neighbor::GetEnhAckProbingMetrics(ot::Neighbor *this)
{
  return this + 64;
}

{
  return ot::Neighbor::GetEnhAckProbingMetrics(this);
}

void ot::LinkMetrics::MetricsValues::GetMetrics(ot::LinkMetrics::MetricsValues *this)
{
  ;
}

{
  ot::LinkMetrics::MetricsValues::GetMetrics(this);
}

uint64_t ot::Callback<void (*)(unsigned short,otExtAddress const*,otLinkMetricsValues const*,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned short,ot::Mac::ExtAddress const*,ot::LinkMetrics::MetricsValues *>(uint64_t a1, unsigned __int16 *a2, void *a3, void *a4)
{
  return (*a1)(*a2, *a3, *a4, *(a1 + 8));
}

{
  return ot::Callback<void (*)(unsigned short,otExtAddress const*,otLinkMetricsValues const*,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned short,ot::Mac::ExtAddress const*,ot::LinkMetrics::MetricsValues *>(a1, a2, a3, a4);
}

ot::LinkMetrics::Subject *ot::LinkMetrics::Subject::Subject(ot::LinkMetrics::Subject *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Pool<ot::LinkMetrics::SeriesInfo,(unsigned short)64>::Pool(this + 1);
  return this;
}

{
  ot::LinkMetrics::Subject::Subject(this, a2);
  return this;
}

uint64_t *ot::Pool<ot::LinkMetrics::SeriesInfo,(unsigned short)64>::Pool(uint64_t *a1)
{
  ot::Pool<ot::LinkMetrics::SeriesInfo,(unsigned short)64>::Pool(a1);
  return a1;
}

{
  ot::OwnedPtr<ot::Message>::OwnedPtr(a1);
  for (i = a1 + 1; i != a1 + 193; i += 3)
  {
    ot::LinkedList<ot::LinkMetrics::SeriesInfo>::Push(a1, i);
  }

  return a1;
}

uint64_t ot::LinkMetrics::Subject::AppendReport(ot::LinkMetrics::Subject *this, ot::Message *a2, const ot::Message *a3, ot::Neighbor *a4)
{
  v46 = this;
  v45 = a2;
  v44 = a3;
  v43 = a4;
  TlvValueOffsetRange = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  Length = 0;
  ot::Clearable<ot::LinkMetrics::MetricsValues>::Clear(v29);
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(v44, 0x57, &v34, v4);
  if (!TlvValueOffsetRange)
  {
    while (!ot::OffsetRange::IsEmpty(&v34))
    {
      TlvValueOffsetRange = ot::Tlv::ParsedInfo::ParseFrom(v39, v44, &v34);
      if (TlvValueOffsetRange)
      {
        goto LABEL_26;
      }

      if ((v39[1] & 1) == 0)
      {
        if (v39[0] == 1)
        {
          v26 = v44;
          Offset = ot::OffsetRange::GetOffset(v40);
          TlvValueOffsetRange = ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)1,unsigned char>>(v26, Offset, &v38);
          if (TlvValueOffsetRange)
          {
            goto LABEL_26;
          }

          v37 = 1;
        }

        else if (v39[0] == 2)
        {
          v25 = v44;
          ot::LinkMetrics::MetricsValues::GetMetrics(v29);
          TlvValueOffsetRange = ot::LinkMetrics::Subject::ReadTypeIdsFromMessage(v25, &v40[4], v6, v7);
          if (TlvValueOffsetRange)
          {
            goto LABEL_26;
          }
        }
      }

      Size = ot::Tlv::ParsedInfo::GetSize(v39);
      ot::OffsetRange::AdvanceOffset(&v34, Size);
    }

    if (v37)
    {
      Length = ot::Message::GetLength(v45);
      ot::Tlv::SetType(v41, 89);
      TlvValueOffsetRange = ot::Message::Append<ot::Tlv>(v45, v41);
      if (!TlvValueOffsetRange)
      {
        if (v38)
        {
          ForwardTrackingSeriesInfo = ot::Neighbor::GetForwardTrackingSeriesInfo(v43, &v38);
          if (ForwardTrackingSeriesInfo)
          {
            if (ot::LinkMetrics::SeriesInfo::GetPduCount(ForwardTrackingSeriesInfo))
            {
              LinkMetrics = ot::LinkMetrics::SeriesInfo::GetLinkMetrics(ForwardTrackingSeriesInfo);
              ot::LinkMetrics::MetricsValues::SetMetrics(v29, LinkMetrics);
              PduCount = ot::LinkMetrics::SeriesInfo::GetPduCount(ForwardTrackingSeriesInfo);
              AverageLqi = ot::LinkMetrics::SeriesInfo::GetAverageLqi(ForwardTrackingSeriesInfo);
              v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
              AverageRss = ot::LinkMetrics::SeriesInfo::GetAverageRss(ForwardTrackingSeriesInfo);
              v32 = ot::Mac::Mac::ComputeLinkMargin(v23, AverageRss);
              v33 = ot::LinkMetrics::SeriesInfo::GetAverageRss(ForwardTrackingSeriesInfo);
              TlvValueOffsetRange = ot::LinkMetrics::Subject::AppendReportSubTlvToMessage(v45, v29, v13);
              if (TlvValueOffsetRange)
              {
                goto LABEL_26;
              }
            }

            else
            {
              TlvValueOffsetRange = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)5,unsigned char>>(v45, 4u);
              if (TlvValueOffsetRange)
              {
                goto LABEL_26;
              }
            }
          }

          else
          {
            TlvValueOffsetRange = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)5,unsigned char>>(v45, 3u);
            if (TlvValueOffsetRange)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          PduCount = ot::Message::GetPsduCount(v44);
          AverageLqi = ot::Message::GetAverageLqi(v44);
          v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
          v9 = ot::Message::GetAverageRss(v44);
          v32 = ot::Mac::Mac::ComputeLinkMargin(v24, v9);
          v33 = ot::Message::GetAverageRss(v44);
          TlvValueOffsetRange = ot::LinkMetrics::Subject::AppendReportSubTlvToMessage(v45, v29, v10);
          if (TlvValueOffsetRange)
          {
            goto LABEL_26;
          }
        }

        v14 = ot::Message::GetLength(v45);
        v36 = v14 - Length - 2;
        ot::Tlv::SetLength(v41, v14 - Length - 2);
        ot::Message::Write<ot::Tlv>(v45, Length, v41);
      }
    }

    else
    {
      TlvValueOffsetRange = 6;
    }
  }

LABEL_26:
  v15 = ot::ErrorToString(TlvValueOffsetRange);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkMetrics", "AppendReport, error:%s", v16, v17, v18, v19, v20, v21, v15);
  return TlvValueOffsetRange;
}

uint64_t ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)1,unsigned char>>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  return ot::Tlv::ReadUintTlv<unsigned char>(a1, a2, a3);
}

{
  return ot::Tlv::Read<ot::UintTlvInfo<(unsigned char)1,unsigned char>>(a1, a2, a3);
}

uint64_t ot::LinkMetrics::Subject::ReadTypeIdsFromMessage(ot::LinkMetrics::Subject *this, const ot::Message *a2, const ot::OffsetRange *a3, ot::LinkMetrics::Metrics *a4)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  *&v5[5] = 0;
  *&v5[1] = *a2;
  ot::Clearable<ot::LinkMetrics::Metrics>::Clear(a3);
  while (!ot::OffsetRange::IsEmpty(&v5[1]))
  {
    v5[0] = 0;
    if (ot::Message::Read<unsigned char>(v8, &v5[1], v5))
    {
      break;
    }

    switch(v5[0])
    {
      case 9:
        if ((*v6 & 2) != 0)
        {
          *&v5[5] = 6;
          return *&v5[5];
        }

        *v6 = *v6 & 0xFD | 2;
        break;
      case 0xA:
        if ((*v6 & 4) != 0)
        {
          *&v5[5] = 6;
          return *&v5[5];
        }

        *v6 = *v6 & 0xFB | 4;
        break;
      case 0xB:
        if ((*v6 & 8) != 0)
        {
          *&v5[5] = 6;
          return *&v5[5];
        }

        *v6 = *v6 & 0xF7 | 8;
        break;
      case 0x40:
        if (*v6)
        {
          *&v5[5] = 6;
          return *&v5[5];
        }

        *v6 = *v6 & 0xFE | 1;
        break;
      default:
        if (ot::LinkMetrics::TypeId::IsExtended(v5[0]))
        {
          ot::OffsetRange::AdvanceOffset(&v5[1], 1u);
        }

        else
        {
          *v6 = *v6 & 0xEF | 0x10;
        }

        break;
    }

    ot::OffsetRange::AdvanceOffset(&v5[1], 1u);
  }

  return *&v5[5];
}

uint64_t ot::Message::GetPsduCount(ot::Message *this)
{
  Metadata = ot::Buffer::GetMetadata(this);
  return ot::LqiAverager::GetCount((Metadata + 60));
}

{
  return ot::Message::GetPsduCount(this);
}

uint64_t ot::LinkMetrics::Subject::AppendReportSubTlvToMessage(ot::LinkMetrics::Subject *this, ot::Message *a2, const ot::LinkMetrics::MetricsValues *a3)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  ot::LinkMetrics::ReportSubTlv::Init(v6);
  if ((*v8 & 1) == 0 || (ot::LinkMetrics::ReportSubTlv::SetMetricsTypeId(v6, 64), ot::LinkMetrics::ReportSubTlv::SetMetricsValue32(v6, *(v8 + 1)), (v7 = ot::Tlv::AppendTo(v6, v9)) == 0))
  {
    if ((*v8 & 2) == 0 || (ot::LinkMetrics::ReportSubTlv::SetMetricsTypeId(v6, 9), ot::LinkMetrics::ReportSubTlv::SetMetricsValue8(v6, *(v8 + 8)), (v7 = ot::Tlv::AppendTo(v6, v9)) == 0))
    {
      if ((*v8 & 4) == 0 || (ot::LinkMetrics::ReportSubTlv::SetMetricsTypeId(v6, 10), v3 = ot::LinkMetrics::ScaleLinkMarginToRawValue(*(v8 + 9)), ot::LinkMetrics::ReportSubTlv::SetMetricsValue8(v6, v3), (v7 = ot::Tlv::AppendTo(v6, v9)) == 0))
      {
        if ((*v8 & 8) != 0)
        {
          ot::LinkMetrics::ReportSubTlv::SetMetricsTypeId(v6, 11);
          v4 = ot::LinkMetrics::ScaleRssiToRawValue(*(v8 + 10));
          ot::LinkMetrics::ReportSubTlv::SetMetricsValue8(v6, v4);
          return ot::Tlv::AppendTo(v6, v9);
        }
      }
    }
  }

  return v7;
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)5,unsigned char>>(uint64_t a1, unsigned __int8 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned char>(a1, 5, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)5,unsigned char>>(a1, a2);
}

uint64_t ot::LinkMetrics::SeriesInfo::GetPduCount(ot::LinkMetrics::SeriesInfo *this)
{
  return *(this + 4);
}

{
  return ot::LinkMetrics::SeriesInfo::GetPduCount(this);
}

uint64_t ot::LinkMetrics::SeriesInfo::GetLinkMetrics(ot::LinkMetrics::SeriesInfo *this)
{
  return this + 10;
}

{
  return ot::LinkMetrics::SeriesInfo::GetLinkMetrics(this);
}

uint64_t ot::LinkMetrics::SeriesInfo::GetAverageLqi(ot::LinkMetrics::SeriesInfo *this)
{
  return ot::LqiAverager::GetAverage((this + 14));
}

{
  return ot::LinkMetrics::SeriesInfo::GetAverageLqi(this);
}

uint64_t ot::LinkMetrics::SeriesInfo::GetAverageRss(ot::LinkMetrics::SeriesInfo *this)
{
  return ot::RssAverager::GetAverage((this + 12));
}

{
  return ot::LinkMetrics::SeriesInfo::GetAverageRss(this);
}

uint64_t ot::Message::Write<ot::Tlv>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::WriteBytes(a1, a2, a3, 2u);
}

{
  return ot::Message::Write<ot::Tlv>(a1, a2, a3);
}

uint64_t ot::LinkMetrics::Subject::HandleManagementRequest(ot::LinkMetrics::Subject *a1, ot::Message *a2, ot::Neighbor *a3, ot::OffsetRange *a4)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  TlvValueOffsetRange = 0;
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(a2, 0x58, &v22, a4);
  if (TlvValueOffsetRange)
  {
    return TlvValueOffsetRange;
  }

  ot::Tlv::SetLength(v19, 0);
  ot::Tlv::SetLength(v18, 0);
  while (!ot::OffsetRange::IsEmpty(&v22))
  {
    v16 = 0;
    v15 = 0;
    TlvValueOffsetRange = ot::Tlv::ParsedInfo::ParseFrom(v20, v26, &v22);
    if (TlvValueOffsetRange)
    {
      return TlvValueOffsetRange;
    }

    if ((v20[1] & 1) == 0)
    {
      v14 = v21;
      if (v20[0] == 3)
      {
        v15 = v19;
        v16 = 4;
      }

      else
      {
        if (v20[0] != 7)
        {
          goto LABEL_19;
        }

        v15 = v18;
        v16 = 3;
      }

      if (ot::Tlv::GetLength(v19))
      {
        return 6;
      }

      if (ot::Tlv::GetLength(v18))
      {
        return 6;
      }

      Size = ot::Tlv::ParsedInfo::GetSize(v20);
      if (Size < v16)
      {
        return 6;
      }

      TlvValueOffsetRange = ot::Message::Read(v26, &v14, v15, v16);
      if (TlvValueOffsetRange)
      {
        return TlvValueOffsetRange;
      }

      ot::OffsetRange::AdvanceOffset(&v14, v16);
      TlvValueOffsetRange = ot::LinkMetrics::Subject::ReadTypeIdsFromMessage(v26, &v14, &v17, v5);
      if (TlvValueOffsetRange)
      {
        return TlvValueOffsetRange;
      }
    }

LABEL_19:
    v6 = ot::Tlv::ParsedInfo::GetSize(v20);
    ot::OffsetRange::AdvanceOffset(&v22, v6);
  }

  if (ot::Tlv::GetLength(v19))
  {
    SeriesId = ot::LinkMetrics::FwdProbingRegSubTlv::GetSeriesId(v19);
    SeriesFlagsMask = ot::LinkMetrics::FwdProbingRegSubTlv::GetSeriesFlagsMask(v19);
    v8 = ot::LinkMetrics::Subject::ConfigureForwardTrackingSeries(a1, SeriesId, SeriesFlagsMask, &v17, v25);
    *v24 = v8;
  }

  if (ot::Tlv::GetLength(v18))
  {
    EnhAckFlags = ot::LinkMetrics::EnhAckConfigSubTlv::GetEnhAckFlags(v18);
    v10 = ot::LinkMetrics::Subject::ConfigureEnhAckProbing(a1, EnhAckFlags, &v17, v25);
    *v24 = v10;
  }

  return TlvValueOffsetRange;
}

uint64_t ot::LinkMetrics::Subject::ConfigureForwardTrackingSeries(ot::LinkMetrics::Subject *this, unsigned __int8 a2, char a3, const ot::LinkMetrics::Metrics *a4, ot::Neighbor *a5)
{
  v14 = this;
  v13 = a2;
  v9 = 0;
  if (a2)
  {
    if (a3)
    {
      if (ot::Neighbor::GetForwardTrackingSeriesInfo(a5, &v13))
      {
        return 2;
      }

      else
      {
        v7 = ot::Pool<ot::LinkMetrics::SeriesInfo,(unsigned short)64>::Allocate(this + 1);
        if (v7)
        {
          ot::LinkMetrics::SeriesInfo::Init(v7, v13, a3, a4);
          ot::Neighbor::AddForwardTrackingSeriesInfo(a5, v7);
        }

        else
        {
          return 1;
        }
      }
    }

    else if (v13 == 255)
    {
      ot::Neighbor::RemoveAllForwardTrackingSeriesInfo(a5);
    }

    else
    {
      v8 = ot::Neighbor::RemoveForwardTrackingSeriesInfo(a5, &v13);
      if (v8)
      {
        ot::Pool<ot::LinkMetrics::SeriesInfo,(unsigned short)64>::Free(this + 1, v8);
      }

      else
      {
        return 3;
      }
    }
  }

  else
  {
    return -2;
  }

  return v9;
}

uint64_t ot::LinkMetrics::FwdProbingRegSubTlv::GetSeriesId(ot::LinkMetrics::FwdProbingRegSubTlv *this)
{
  return *(this + 2);
}

{
  return ot::LinkMetrics::FwdProbingRegSubTlv::GetSeriesId(this);
}

uint64_t ot::LinkMetrics::FwdProbingRegSubTlv::GetSeriesFlagsMask(ot::LinkMetrics::FwdProbingRegSubTlv *this)
{
  return *(this + 3);
}

{
  return ot::LinkMetrics::FwdProbingRegSubTlv::GetSeriesFlagsMask(this);
}

uint64_t ot::LinkMetrics::Subject::ConfigureEnhAckProbing(ot::LinkMetrics::Subject *this, char a2, const ot::LinkMetrics::Metrics *a3, ot::Neighbor *a4)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = 0;
  v13 = 0;
  if ((*a3 & 0x10) != 0)
  {
    return -2;
  }

  else
  {
    if (v17 == 1)
    {
      if (*v16)
      {
        return -2;
      }

      if ((*v16 & 2) == 0 && (*v16 & 4) == 0 && (*v16 & 8) == 0)
      {
        return -2;
      }

      if ((*v16 & 2) != 0 && (*v16 & 4) != 0 && (*v16 & 8) != 0)
      {
        return -2;
      }

      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      v12 = *v16;
      Rloc16 = ot::Neighbor::GetRloc16(v15);
      ot::Neighbor::GetExtAddress(v15);
      v13 = ot::Radio::ConfigureEnhAckProbing(v8, v12, &Rloc16, v4);
    }

    else if (v17)
    {
      v14 = -2;
    }

    else
    {
      if ((*v16 & 2) != 0 || (*v16 & 4) != 0 || (*v16 & 8) != 0)
      {
        return -2;
      }

      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      v10 = *v16;
      v9 = ot::Neighbor::GetRloc16(v15);
      ot::Neighbor::GetExtAddress(v15);
      v13 = ot::Radio::ConfigureEnhAckProbing(v7, v10, &v9, v5);
    }

    if (v13)
    {
      return -2;
    }
  }

  return v14;
}

uint64_t ot::LinkMetrics::EnhAckConfigSubTlv::GetEnhAckFlags(ot::LinkMetrics::EnhAckConfigSubTlv *this)
{
  return *(this + 2);
}

{
  return ot::LinkMetrics::EnhAckConfigSubTlv::GetEnhAckFlags(this);
}

uint64_t ot::LinkMetrics::Subject::HandleLinkProbe(ot::LinkMetrics::Subject *this, const ot::Message *a2, char *a3, ot::OffsetRange *a4)
{
  v9 = this;
  v8 = a2;
  v7 = a3;
  TlvValueOffsetRange = 0;
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(a2, 0x5A, &v5, a4);
  if (!TlvValueOffsetRange)
  {
    return ot::Message::Read<unsigned char>(v8, &v5, v7);
  }

  return TlvValueOffsetRange;
}

_BYTE *ot::LinkMetrics::ReportSubTlv::Init(ot::LinkMetrics::ReportSubTlv *this)
{
  return ot::Tlv::SetType(this, 0);
}

{
  return ot::LinkMetrics::ReportSubTlv::Init(this);
}

uint64_t ot::LinkMetrics::ReportSubTlv::SetMetricsTypeId(uint64_t this, char a2)
{
  *(this + 2) = a2;
  return this;
}

{
  return ot::LinkMetrics::ReportSubTlv::SetMetricsTypeId(this, a2);
}

uint64_t ot::LinkMetrics::ReportSubTlv::SetMetricsValue32(ot::LinkMetrics::ReportSubTlv *this, unsigned int a2)
{
  *(this + 3) = ot::BigEndian::HostSwap32(a2);
  return ot::Tlv::SetLength(this, 5);
}

{
  return ot::LinkMetrics::ReportSubTlv::SetMetricsValue32(this, a2);
}

uint64_t ot::LinkMetrics::ReportSubTlv::SetMetricsValue8(ot::LinkMetrics::ReportSubTlv *this, char a2)
{
  *(this + 3) = a2;
  return ot::Tlv::SetLength(this, 2);
}

{
  return ot::LinkMetrics::ReportSubTlv::SetMetricsValue8(this, a2);
}

void *ot::Pool<ot::LinkMetrics::SeriesInfo,(unsigned short)64>::Free(uint64_t *a1, void *a2)
{
  return ot::LinkedList<ot::LinkMetrics::SeriesInfo>::Push(a1, a2);
}

{
  return ot::Pool<ot::LinkMetrics::SeriesInfo,(unsigned short)64>::Free(a1, a2);
}

uint64_t ot::Pool<ot::LinkMetrics::SeriesInfo,(unsigned short)64>::Allocate(uint64_t *a1)
{
  return ot::LinkedList<ot::LinkMetrics::SeriesInfo>::Pop(a1);
}

{
  return ot::Pool<ot::LinkMetrics::SeriesInfo,(unsigned short)64>::Allocate(a1);
}

uint64_t ot::Radio::ConfigureEnhAckProbing(ot::Radio *a1, char a2, unsigned __int16 *a3, uint64_t a4)
{
  InstancePtr = ot::Radio::GetInstancePtr(a1);
  return otPlatRadioConfigureEnhAckProbing(InstancePtr, a2, *a3, a4);
}

{
  return ot::Radio::ConfigureEnhAckProbing(a1, a2, a3, a4);
}

uint64_t ot::DivideAndRoundToClosest<unsigned short>(unsigned __int16 a1, unsigned __int16 a2)
{
  return ((a1 + a2 / 2) / a2);
}

{
  return ot::DivideAndRoundToClosest<unsigned short>(a1, a2);
}

uint64_t ot::Clamp<int>(unsigned int a1, unsigned int a2, unsigned int a3)
{
  v4 = ot::Max<int>(a1, a2);
  return ot::Min<int>(v4, a3);
}

{
  return ot::Clamp<int>(a1, a2, a3);
}

uint64_t ot::DivideAndRoundToClosest<int>(int a1, int a2)
{
  return ((a1 + a2 / 2) / a2);
}

{
  return ot::DivideAndRoundToClosest<int>(a1, a2);
}

uint64_t ot::ClampToInt8<int>(unsigned int a1)
{
  return ot::Clamp<int>(a1, 0xFFFFFF80, 0x7Fu);
}

{
  return ot::ClampToInt8<int>(a1);
}

uint64_t ot::LqiAverager::GetCount(ot::LqiAverager *this)
{
  return *(this + 1);
}

{
  return ot::LqiAverager::GetCount(this);
}

uint64_t ot::ClearAllBytes<ot::LinkMetrics::Initiator::QueryInfo>(uint64_t result)
{
  *result = 0;
  *(result + 4) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::LinkMetrics::Initiator::QueryInfo>(result);
}

uint64_t ot::ClearAllBytes<ot::LinkMetrics::MetricsValues>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::LinkMetrics::MetricsValues>(result);
}

_BYTE *ot::ClearAllBytes<ot::LinkMetrics::Metrics>(_BYTE *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::LinkMetrics::Metrics>(result);
}

void *ot::LinkedList<ot::LinkMetrics::SeriesInfo>::Push(uint64_t *a1, void *a2)
{
  result = ot::LinkedListEntry<ot::LinkMetrics::SeriesInfo>::SetNext(a2, *a1);
  *a1 = a2;
  return result;
}

{
  return ot::LinkedList<ot::LinkMetrics::SeriesInfo>::Push(a1, a2);
}

void *ot::LinkedListEntry<ot::LinkMetrics::SeriesInfo>::SetNext(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  return ot::LinkedListEntry<ot::LinkMetrics::SeriesInfo>::SetNext(result, a2);
}

uint64_t ot::LinkedList<ot::LinkMetrics::SeriesInfo>::Pop(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    *a1 = ot::LinkedListEntry<ot::LinkMetrics::SeriesInfo>::GetNext(*a1);
  }

  return v2;
}

{
  return ot::LinkedList<ot::LinkMetrics::SeriesInfo>::Pop(a1);
}

uint64_t ot::LinkedListEntry<ot::LinkMetrics::SeriesInfo>::GetNext(uint64_t a1)
{
  return *a1;
}

{
  return ot::LinkedListEntry<ot::LinkMetrics::SeriesInfo>::GetNext(a1);
}

_WORD *ot::SuccessRateTracker::AddSample(_WORD *this, char a2, unsigned __int16 a3)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0xFFFF;
  }

  *this = (*this * (a3 - 1) + v3 + a3 / 2u) / a3;
  return this;
}

uint64_t ot::RssAverager::Add(ot::RssAverager *this, char a2)
{
  v7 = 0;
  if (a2 == 127)
  {
    return 7;
  }

  else
  {
    v2 = ot::Min<signed char>(a2, 0);
    v3 = *this >> 11;
    if (v3 >= 8)
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 + 1;
    }

    *this = *this & 0x7FF | ((v4 & 0x1F) << 11);
    *this = *this & 0xF800 | (((*this & 0x7FF) * ((*this >> 11) - 1) + (-8 * v2)) / (*this >> 11)) & 0x7FF;
  }

  return v7;
}

uint64_t ot::RssAverager::GetAverage(ot::RssAverager *this)
{
  if (*this >> 11)
  {
    v2 = -((*this & 0x7FF) >> 3);
    if ((*this & 7u) >= 4)
    {
      --v2;
    }
  }

  else
  {
    return 127;
  }

  return v2;
}

ot::StringWriter *ot::RssAverager::ToString@<X0>(ot::RssAverager *this@<X0>, ot::StringWriter *a2@<X8>)
{
  result = ot::String<(unsigned short)10>::String(a2);
  if (*this >> 11)
  {
    return ot::StringWriter::Append(a2, "%d.%s", -((*this & 0x7FF) >> 3), ot::kDigitsString[*this & 7]);
  }

  return result;
}

uint64_t ot::String<(unsigned short)10>::String(uint64_t a1)
{
  ot::String<(unsigned short)10>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 10);
  return a1;
}

uint64_t ot::LqiAverager::Add(ot::LqiAverager *this, unsigned __int8 a2)
{
  if (*(this + 1) != 255)
  {
    ++*(this + 1);
  }

  result = ot::Min<unsigned char>(8u, *(this + 1));
  *this = (*this * (result - 1) + a2) / result;
  return result;
}

_WORD *ot::LinkQualityInfo::Clear(ot::LinkQualityInfo *this)
{
  ot::Clearable<ot::RssAverager>::Clear(this);
  ot::LinkQualityInfo::SetLinkQuality(this, 0);
  *(this + 3) = 127;
  ot::Clearable<ot::SuccessRateTracker>::Clear(this + 2);
  return ot::Clearable<ot::SuccessRateTracker>::Clear(this + 3);
}

uint64_t ot::LinkQualityInfo::SetLinkQuality(uint64_t result, char a2)
{
  *(result + 2) = a2;
  return result;
}

{
  return ot::LinkQualityInfo::SetLinkQuality(result, a2);
}

ot::LinkQualityInfo *ot::LinkQualityInfo::AddRss(ot::LinkQualityInfo *this, char a2)
{
  v4 = this;
  LinkQuality = -1;
  if (a2 != 127)
  {
    *(this + 3) = a2;
    if (ot::RssAverager::HasAverage(this))
    {
      LinkQuality = ot::LinkQualityInfo::GetLinkQuality(v4);
    }

    this = ot::RssAverager::Add(v4, a2);
    if (!this)
    {
      LinkMargin = ot::LinkQualityInfo::GetLinkMargin(v4);
      v3 = ot::LinkQualityInfo::CalculateLinkQuality(LinkMargin, LinkQuality);
      return ot::LinkQualityInfo::SetLinkQuality(v4, v3);
    }
  }

  return this;
}

BOOL ot::RssAverager::HasAverage(ot::RssAverager *this)
{
  return *this >> 11 != 0;
}

{
  return ot::RssAverager::HasAverage(this);
}

uint64_t ot::LinkQualityInfo::CalculateLinkQuality(ot::LinkQualityInfo *this, char a2)
{
  v3 = 0;
  v6 = 2;
  v5 = 10;
  v4 = 20;
  switch(a2)
  {
    case 0:
      v6 = 4;
      goto LABEL_6;
    case 1:
LABEL_6:
      v5 = 12;
      goto LABEL_7;
    case 2:
LABEL_7:
      v4 = 22;
      break;
  }

  if (this <= v4)
  {
    if (this <= v5)
    {
      if (this > v6)
      {
        return 1;
      }
    }

    else
    {
      return 2;
    }
  }

  else
  {
    return 3;
  }

  return v3;
}

uint64_t ot::LinkQualityInfo::GetLinkMargin(ot::LinkQualityInfo *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::SubMac>(this);
  NoiseFloor = ot::Mac::SubMac::GetNoiseFloor(v1);
  AverageRss = ot::LinkQualityInfo::GetAverageRss(this);
  return ot::ComputeLinkMargin(NoiseFloor, AverageRss);
}

uint64_t ot::ComputeLinkMargin(ot *this, char a2)
{
  v3 = a2 - this;
  if ((a2 - this) < 0 || a2 == 127)
  {
    return 0;
  }

  return v3;
}

ot::StringWriter *ot::LinkQualityInfo::ToInfoString@<X0>(ot::LinkQualityInfo *this@<X0>, ot::StringWriter *a2@<X8>)
{
  ot::String<(unsigned short)50>::String(a2);
  ot::RssAverager::ToString(this, v8);
  v5 = ot::String<(unsigned short)10>::AsCString(v8);
  LastRss = ot::LinkQualityInfo::GetLastRss(this);
  LinkQuality = ot::LinkQualityInfo::GetLinkQuality(this);
  return ot::StringWriter::Append(a2, "aveRss:%s, lastRss:%d, linkQuality:%d", v5, LastRss, LinkQuality);
}

uint64_t ot::String<(unsigned short)50>::String(uint64_t a1)
{
  ot::String<(unsigned short)50>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 50);
  return a1;
}

uint64_t ot::String<(unsigned short)10>::AsCString(uint64_t a1)
{
  return a1 + 12;
}

{
  return ot::String<(unsigned short)10>::AsCString(a1);
}

ot::StringWriter *ot::LinkQualityInfo::ToErrorRateInfoString@<X0>(ot::LinkQualityInfo *this@<X0>, ot::StringWriter *a2@<X8>)
{
  ot::String<(unsigned short)128>::String(a2);
  v5 = ot::LinkQualityInfo::GetFrameErrorRatePercent(this) / 0x64;
  v6 = ot::LinkQualityInfo::GetFrameErrorRatePercent(this) % 0x64;
  v7 = ot::LinkQualityInfo::GetMessageErrorRatePercent(this) / 0x64;
  v8 = ot::LinkQualityInfo::GetMessageErrorRatePercent(this) % 0x64;
  v9 = ot::LinkQualityInfo::GetMatterMessageErrorRatePercent(this) / 0x64;
  v10 = ot::LinkQualityInfo::GetMatterMessageErrorRatePercent(this) % 0x64;
  v11 = ot::LinkQualityInfo::GetHapMessageErrorRatePercent(this) / 0x64;
  HapMessageErrorRatePercent = ot::LinkQualityInfo::GetHapMessageErrorRatePercent(this);
  return ot::StringWriter::Append(a2, ", frameErrorRate:%d.%02d%%, messageErrorRate:%d.%02d%%, MatterMessageErrorRate:%d.%02d%%, HapMessageErrorRate:%d.%02d%%", v5, v6, v7, v8, v9, v10, v11, HapMessageErrorRatePercent % 0x64);
}