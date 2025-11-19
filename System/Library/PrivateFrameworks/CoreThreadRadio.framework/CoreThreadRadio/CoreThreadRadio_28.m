uint64_t ot::Coap::MessageQueue::GetHead(ot::Coap::MessageQueue *this)
{
  return ot::MessageQueue::GetHead(this);
}

{
  return ot::MessageQueue::GetHead(this);
}

{
  return ot::Coap::MessageQueue::GetHead(this);
}

{
  return ot::Coap::MessageQueue::GetHead(this);
}

uint64_t ot::Coap::MessageQueue::Dequeue(ot::Coap::MessageQueue *this, ot::Coap::Message *a2)
{
  return ot::MessageQueue::Dequeue(this, a2);
}

{
  return ot::Coap::MessageQueue::Dequeue(this, a2);
}

ot::Coap::Message *ot::Coap::CoapBase::FindRelatedRequest(ot::Coap::CoapBase *this, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, ot::Coap::CoapBase::Metadata *a4)
{
  v22 = this;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = 0;
  v17 = this;
  v16[0] = ot::Coap::MessageQueue::begin(this);
  v16[1] = v4;
  v15[0] = ot::Coap::MessageQueue::end(v17);
  v15[1] = v5;
  while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v16, v15))
  {
    v14 = ot::Coap::Message::Iterator::operator*(v16);
    ot::Coap::CoapBase::Metadata::ReadFrom(v19, v14);
    v13 = v19 + 16;
    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v20);
    if (ot::Equatable<ot::Ip6::Address>::operator==(v13, PeerAddr) || ot::Ip6::Address::IsMulticast((v19 + 16)) || (Iid = ot::Ip6::Address::GetIid((v19 + 16)), ot::Ip6::InterfaceIdentifier::IsAnycastLocator(Iid)))
    {
      v12 = *(v19 + 16);
      if (v12 == ot::Ip6::MessageInfo::GetPeerPort(v20))
      {
        Type = ot::Coap::Message::GetType(v21);
        if (Type <= 1)
        {
          if (ot::Coap::Message::IsTokenEqual(v21, v14))
          {
            return v14;
          }
        }

        else if (Type == 3 || Type == 2)
        {
          MessageId = ot::Coap::Message::GetMessageId(v21);
          if (MessageId == ot::Coap::Message::GetMessageId(v14))
          {
            return v14;
          }
        }
      }
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v16, v8);
  }

  return v18;
}

void ot::Coap::CoapBase::Receive(ot::Coap::CoapBase *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  ot::AsCoapMessage();
  v13 = v3;
  if (ot::Coap::Message::ParseHeader(v3))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("Coap", "Failed to parse CoAP header", v4, v5, v6, v7, v8, v9, v11);
    SockAddr = ot::Ip6::MessageInfo::GetSockAddr(a3);
    if (!ot::Ip6::Address::IsMulticast(SockAddr) && ot::Coap::Message::IsConfirmable(v13))
    {
      ot::Coap::CoapBase::SendReset(this, v13, a3);
      IgnoreError();
    }
  }

  else if (ot::Coap::Message::IsRequest(v13))
  {
    ot::Coap::CoapBase::ProcessReceivedRequest(this, v13, a3);
  }

  else
  {
    ot::Coap::CoapBase::ProcessReceivedResponse(this, v13, a3);
  }
}

void ot::Coap::CoapBase::ProcessReceivedRequest(ot::Coap::CoapBase *this, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v31 = this;
  v30 = a2;
  v29 = a3;
  v28 = 0;
  v27 = 0;
  if (!ot::CallbackBase<otError (*)(ot::Coap::Message const&,ot::Ip6::MessageInfo const&,void *)>::IsSet(this + 7) || (v27 = ot::Callback<otError (*)(ot::Coap::Message const&,ot::Ip6::MessageInfo const&,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Coap::Message&,ot::Ip6::MessageInfo const&>(this + 56, v30, v29)) == 0)
  {
    MatchedResponseCopy = ot::Coap::ResponsesQueue::GetMatchedResponseCopy((this + 72), v30, v29, &v28);
    if (MatchedResponseCopy)
    {
      if (MatchedResponseCopy == 3)
      {
        v27 = 3;
      }

      else
      {
        UriPathOptions = ot::Coap::Message::ReadUriPathOptions(v30, __s2);
        v27 = UriPathOptions;
        if (!UriPathOptions)
        {
          if (*(this + 16) && ((*(this + 16))(this, __s2, v30, v29) & 1) != 0)
          {
            v27 = 0;
          }

          else
          {
            v26[1] = this + 48;
            v26[0] = ot::LinkedList<ot::Coap::Resource>::begin(this + 48);
            v25 = ot::LinkedList<ot::Coap::Resource>::end();
            while (ot::ItemPtrIterator<ot::Coap::Resource,ot::LinkedList<ot::Coap::Resource>::Iterator>::operator!=(v26, &v25))
            {
              v24 = ot::ItemPtrIterator<ot::Coap::Resource,ot::LinkedList<ot::Coap::Resource>::Iterator>::operator*(v26);
              if (!strcmp(*v24, __s2))
              {
                ot::Coap::Resource::HandleRequest(v24, v30, v29);
                v27 = 0;
                goto LABEL_20;
              }

              ot::ItemPtrIterator<ot::Coap::Resource,ot::LinkedList<ot::Coap::Resource>::Iterator>::operator++(v26);
            }

            if (ot::CallbackBase<void (*)(void *,otMessage *,otMessageInfo const*)>::IsSet(this + 14))
            {
              v23 = v30;
              v22 = v29;
              ot::Callback<void (*)(void *,otMessage *,otMessageInfo const*),(ot::CallbackContextPosition)0>::Invoke<ot::Coap::Message *,ot::Ip6::MessageInfo const*>(this + 112, &v23, &v22);
              v27 = 0;
            }

            else
            {
              v27 = 23;
            }
          }
        }
      }
    }

    else
    {
      ot::Coap::Message::Finish(v28);
      v27 = ot::Coap::CoapBase::Send(this, v28, v29);
    }
  }

LABEL_20:
  if (v27)
  {
    v4 = ot::ErrorToString(v27);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Coap", "Failed to process request: %s", v5, v6, v7, v8, v9, v10, v4);
    ot::Message::GetLength(v30);
    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v29);
    ot::Ip6::Address::ToString(PeerAddr, v33);
    ot::String<(unsigned short)40>::AsCString(v33);
    ot::Ip6::MessageInfo::GetPeerPort(v29);
    SockAddr = ot::Ip6::MessageInfo::GetSockAddr(v29);
    ot::Ip6::Address::ToString(SockAddr, v32);
    ot::String<(unsigned short)40>::AsCString(v32);
    ot::Ip6::MessageInfo::GetSockPort(v29);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Coap", "Failed message info: uri %s, length %u, source %s/%u, destination %s/%u", v13, v14, v15, v16, v17, v18, __s2);
    if (v27 == 23)
    {
      v19 = ot::Ip6::MessageInfo::GetSockAddr(v29);
      if (!ot::Ip6::Address::IsMulticast(v19))
      {
        ot::Coap::CoapBase::SendNotFound(this, v30, v29);
        IgnoreError();
      }
    }

    if (v28)
    {
      ot::Message::Free(v28);
    }
  }
}

void ot::Coap::CoapBase::ProcessReceivedResponse(ot::Coap::CoapBase *this, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v29 = this;
  v28 = a2;
  v27 = a3;
  RelatedRequest = ot::Coap::CoapBase::FindRelatedRequest(this, a2, a3, v22);
  if (!RelatedRequest)
  {
    goto LABEL_24;
  }

  Type = ot::Coap::Message::GetType(v28);
  switch(Type)
  {
    case 0:
      ot::Coap::CoapBase::SendAck(this, v28, v27);
      IgnoreError();
      goto LABEL_20;
    case 1:
LABEL_20:
      if (v24 && ot::Ip6::Address::IsMulticast(&v23))
      {
        v24(v25, v28, v27, 0);
      }

      else
      {
        ot::Coap::CoapBase::FinalizeCoapTransaction(this, RelatedRequest, v22, v28, v27, 0);
      }

      break;
    case 2:
      if (ot::Coap::Message::IsEmpty(v28))
      {
        if ((v26 & 2) != 0)
        {
          v26 = v26 & 0xFE | 1;
          ot::Coap::CoapBase::Metadata::UpdateIn(v22, RelatedRequest);
        }

        if (!v24)
        {
          ot::Coap::CoapBase::DequeueMessage(this, RelatedRequest);
        }
      }

      else if (ot::Coap::Message::IsResponse(v28) && ot::Coap::Message::IsTokenEqual(v28, RelatedRequest))
      {
        ot::Coap::CoapBase::FinalizeCoapTransaction(this, RelatedRequest, v22, v28, v27, 0);
      }

      break;
    default:
      if (Type == 3 && ot::Coap::Message::IsEmpty(v28))
      {
        ot::Coap::CoapBase::FinalizeCoapTransaction(this, RelatedRequest, v22, 0, 0, 0xBu);
      }

      break;
  }

LABEL_24:
  if (!RelatedRequest)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Coap", "Failed to process response: no matching request", v3, v4, v5, v6, v7, v8, v17);
    Length = ot::Message::GetLength(v28);
    PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v27);
    ot::Ip6::Address::ToString(PeerAddr, v31);
    ot::String<(unsigned short)40>::AsCString(v31);
    ot::Ip6::MessageInfo::GetPeerPort(v27);
    SockAddr = ot::Ip6::MessageInfo::GetSockAddr(v27);
    ot::Ip6::Address::ToString(SockAddr, v30);
    ot::String<(unsigned short)40>::AsCString(v30);
    ot::Ip6::MessageInfo::GetSockPort(v27);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Coap", "Failed message info: length %u, source %s/%u, destination %s/%u", v11, v12, v13, v14, v15, v16, Length);
    if (ot::Coap::Message::IsConfirmable(v28) || ot::Coap::Message::IsNonConfirmable(v28))
    {
      ot::Coap::CoapBase::SendReset(this, v28, v27);
      IgnoreError();
    }
  }
}

BOOL ot::Coap::Message::IsEmpty(ot::Coap::Message *this)
{
  return ot::Coap::Message::GetCode(this) == 0;
}

{
  return ot::Coap::Message::IsEmpty(this);
}

BOOL ot::Coap::Message::IsResponse(ot::Coap::Message *this)
{
  return ot::Coap::Message::GetCode(this) >= 64;
}

{
  return ot::Coap::Message::IsResponse(this);
}

uint64_t ot::Ip6::MessageInfo::GetSockPort(ot::Ip6::MessageInfo *this)
{
  return *(this + 16);
}

{
  return ot::Ip6::MessageInfo::GetSockPort(this);
}

BOOL ot::CallbackBase<otError (*)(ot::Coap::Message const&,ot::Ip6::MessageInfo const&,void *)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<otError (*)(ot::Coap::Message const&,ot::Ip6::MessageInfo const&,void *)>::IsSet(a1);
}

uint64_t ot::Callback<otError (*)(ot::Coap::Message const&,ot::Ip6::MessageInfo const&,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Coap::Message&,ot::Ip6::MessageInfo const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*a1)(a2, a3, *(a1 + 8));
}

{
  return ot::Callback<otError (*)(ot::Coap::Message const&,ot::Ip6::MessageInfo const&,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Coap::Message&,ot::Ip6::MessageInfo const&>(a1, a2, a3);
}

uint64_t ot::Coap::ResponsesQueue::GetMatchedResponseCopy(ot::Coap::ResponsesQueue *this, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, ot::Coap::Message **a4)
{
  v7 = 0;
  MatchedResponse = ot::Coap::ResponsesQueue::FindMatchedResponse(this, a2, a3);
  if (MatchedResponse)
  {
    Length = ot::Message::GetLength(MatchedResponse);
    *a4 = ot::Coap::Message::Clone(MatchedResponse, Length - 44);
    if (!*a4)
    {
      return 3;
    }
  }

  else
  {
    return 23;
  }

  return v7;
}

uint64_t ot::LinkedList<ot::Coap::Resource>::begin(uint64_t a1)
{
  Head = ot::LinkedList<ot::Coap::Resource>::GetHead(a1);
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v3, Head);
  return v3;
}

{
  return ot::LinkedList<ot::Coap::Resource>::begin(a1);
}

uint64_t ot::LinkedList<ot::Coap::Resource>::end()
{
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v1, 0);
  return v1;
}

{
  return ot::LinkedList<ot::Coap::Resource>::end();
}

BOOL ot::ItemPtrIterator<ot::Coap::Resource,ot::LinkedList<ot::Coap::Resource>::Iterator>::operator!=(void *a1, void *a2)
{
  return *a1 != *a2;
}

{
  return ot::ItemPtrIterator<ot::Coap::Resource,ot::LinkedList<ot::Coap::Resource>::Iterator>::operator!=(a1, a2);
}

uint64_t ot::ItemPtrIterator<ot::Coap::Resource,ot::LinkedList<ot::Coap::Resource>::Iterator>::operator*(uint64_t a1)
{
  return *a1;
}

{
  return ot::ItemPtrIterator<ot::Coap::Resource,ot::LinkedList<ot::Coap::Resource>::Iterator>::operator*(a1);
}

uint64_t ot::ItemPtrIterator<ot::Coap::Resource,ot::LinkedList<ot::Coap::Resource>::Iterator>::operator++(uint64_t *a1)
{
  return ot::LinkedList<ot::Coap::Resource>::Iterator::Advance(a1);
}

{
  return ot::ItemPtrIterator<ot::Coap::Resource,ot::LinkedList<ot::Coap::Resource>::Iterator>::operator++(a1);
}

BOOL ot::CallbackBase<void (*)(void *,otMessage *,otMessageInfo const*)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(void *,otMessage *,otMessageInfo const*)>::IsSet(a1);
}

uint64_t ot::Callback<void (*)(void *,otMessage *,otMessageInfo const*),(ot::CallbackContextPosition)0>::Invoke<ot::Coap::Message *,ot::Ip6::MessageInfo const*>(uint64_t a1, void *a2, void *a3)
{
  return (*a1)(*(a1 + 8), *a2, *a3);
}

{
  return ot::Callback<void (*)(void *,otMessage *,otMessageInfo const*),(ot::CallbackContextPosition)0>::Invoke<ot::Coap::Message *,ot::Ip6::MessageInfo const*>(a1, a2, a3);
}

uint64_t ot::Message::Read<ot::Coap::CoapBase::Metadata>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x48u);
}

{
  return ot::Message::Read<ot::Coap::CoapBase::Metadata>(a1, a2, a3);
}

uint64_t ot::Message::Write<ot::Coap::CoapBase::Metadata>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::WriteBytes(a1, a2, a3, 0x48u);
}

{
  return ot::Message::Write<ot::Coap::CoapBase::Metadata>(a1, a2, a3);
}

ot::Coap::Message *ot::Coap::ResponsesQueue::FindMatchedResponse(ot::Coap::ResponsesQueue *this, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v17 = this;
  v16 = a2;
  v15 = a3;
  v14 = 0;
  v13 = this;
  v12 = ot::Coap::MessageQueue::begin(this);
  v11 = ot::Coap::MessageQueue::end(v13);
  while (ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator!=(&v12, &v11))
  {
    v10 = ot::Coap::Message::ConstIterator::operator*(&v12);
    MessageId = ot::Coap::Message::GetMessageId(v10);
    if (MessageId == ot::Coap::Message::GetMessageId(v16))
    {
      ot::Coap::ResponsesQueue::ResponseMetadata::ResponseMetadata(v8);
      ot::Coap::ResponsesQueue::ResponseMetadata::ReadFrom(v8, v10);
      PeerPort = ot::Ip6::MessageInfo::GetPeerPort(v9);
      if (PeerPort == ot::Ip6::MessageInfo::GetPeerPort(v15))
      {
        PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v9);
        v3 = ot::Ip6::MessageInfo::GetPeerAddr(v15);
        if (ot::Equatable<ot::Ip6::Address>::operator==(PeerAddr, v3))
        {
          return v10;
        }
      }
    }

    ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator++(&v12);
  }

  return v14;
}

BOOL ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator!=(void *a1, void *a2)
{
  return *a1 != *a2;
}

{
  return ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator!=(a1, a2);
}

uint64_t ot::Coap::Message::ConstIterator::operator*(uint64_t a1)
{
  return ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator*(a1);
}

{
  return ot::Coap::Message::ConstIterator::operator*(a1);
}

ot::Coap::ResponsesQueue::ResponseMetadata *ot::Coap::ResponsesQueue::ResponseMetadata::ResponseMetadata(ot::Coap::ResponsesQueue::ResponseMetadata *this)
{
  ot::Coap::ResponsesQueue::ResponseMetadata::ResponseMetadata(this);
  return this;
}

{
  ot::Ip6::MessageInfo::MessageInfo((this + 4));
  return this;
}

void ot::Coap::ResponsesQueue::ResponseMetadata::ReadFrom(ot::Coap::ResponsesQueue::ResponseMetadata *this, const ot::Coap::Message *a2)
{
  Length = ot::Message::GetLength(a2);
  if (Length < 0x2CuLL)
  {
    __assert_rtn("ReadFrom", "coap.cpp", 1661, "length >= sizeof(*this)");
  }

  ot::Message::Read<ot::Coap::ResponsesQueue::ResponseMetadata>(a2, Length - 44, this);
  IgnoreError();
}

ot::Message *ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator++(ot::Message **a1)
{
  return ot::Message::ConstIterator::Advance(a1);
}

{
  return ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator++(a1);
}

void ot::Coap::ResponsesQueue::UpdateQueue(ot::Coap::ResponsesQueue *this)
{
  v12 = this;
  v11 = 0;
  v10 = 0;
  ot::Time::Time(&v9, 0);
  v8[2] = this;
  v8[0] = ot::Coap::MessageQueue::begin(this);
  v8[1] = v1;
  v7[0] = ot::Coap::MessageQueue::end(this);
  v7[1] = v2;
  while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v8, v7))
  {
    v6 = ot::Coap::Message::Iterator::operator*(v8);
    ot::Coap::ResponsesQueue::ResponseMetadata::ResponseMetadata(v5);
    ot::Coap::ResponsesQueue::ResponseMetadata::ReadFrom(v5, v6);
    if (!v10 || ot::Time::operator<(v5, &v9))
    {
      v10 = v6;
      v9 = v5[0];
    }

    ++v11;
    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v8, v3);
  }

  if (v11 >= 0xAu)
  {
    ot::Coap::ResponsesQueue::DequeueResponse(this, v10);
  }
}

ot::Message *ot::Coap::Message::Clone(ot::Coap::Message *this)
{
  Length = ot::Message::GetLength(this);
  return ot::Coap::Message::Clone(this, Length);
}

{
  return ot::Coap::Message::Clone(this);
}

uint64_t ot::Coap::ResponsesQueue::ResponseMetadata::AppendTo(ot::Coap::ResponsesQueue::ResponseMetadata *this, ot::Coap::Message *a2)
{
  return ot::Message::Append<ot::Coap::ResponsesQueue::ResponseMetadata>(a2, this);
}

{
  return ot::Coap::ResponsesQueue::ResponseMetadata::AppendTo(this, a2);
}

void ot::Coap::MessageQueue::DequeueAndFree(ot::Coap::MessageQueue *this, ot::Coap::Message *a2)
{
  ot::MessageQueue::DequeueAndFree(this, a2);
}

{
  ot::Coap::MessageQueue::DequeueAndFree(this, a2);
}

uint64_t ot::Coap::ResponsesQueue::HandleTimer(ot::Coap::ResponsesQueue *this)
{
  v12 = this;
  ot::NextFireTime::NextFireTime(&v11);
  v10[2] = this;
  v10[0] = ot::Coap::MessageQueue::begin(this);
  v10[1] = v1;
  v9[0] = ot::Coap::MessageQueue::end(this);
  v9[1] = v2;
  while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v10, v9))
  {
    v8 = ot::Coap::Message::Iterator::operator*(v10);
    ot::Coap::ResponsesQueue::ResponseMetadata::ResponseMetadata(v7);
    ot::Coap::ResponsesQueue::ResponseMetadata::ReadFrom(v7, v8);
    Now = ot::NextFireTime::GetNow(&v11);
    if (ot::Time::operator>=(&Now, v7))
    {
      ot::Coap::ResponsesQueue::DequeueResponse(this, v8);
    }

    else
    {
      ot::NextFireTime::UpdateIfEarlier(&v11, v7[0]);
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v10, v3);
  }

  return ot::TimerMilli::FireAt((this + 8), &v11);
}

uint64_t ot::Message::Read<ot::Coap::ResponsesQueue::ResponseMetadata>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x2Cu);
}

{
  return ot::Message::Read<ot::Coap::ResponsesQueue::ResponseMetadata>(a1, a2, a3);
}

BOOL ot::Coap::TxParameters::IsValid(ot::Coap::TxParameters *this)
{
  v7 = 0;
  if (*(this + 5) && *(this + 4) >= *(this + 5) && *this >= 0x3E8u && *(this + 6) <= 0x14u)
  {
    v1 = ot::Coap::Multiply(*this, (1 << (*(this + 6) + 1)) - 1);
    v6 = ot::Coap::Multiply(v1, *(this + 4)) / *(this + 5);
    v4 = 0;
    if (v6)
    {
      return *this != -200000 && v6 + *this + 200000 >= v6;
    }

    return v4;
  }

  return v7;
}

uint64_t ot::Coap::Multiply(ot::Coap *this, int a2)
{
  v4 = 0;
  if (this)
  {
    if (this * a2 / this == a2)
    {
      return (this * a2);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

void *ot::Coap::Resource::Resource(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = 0;
  return result;
}

void *ot::Coap::Resource::Resource(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v4 = ot::PathForUri(a2);
  ot::Coap::Resource::Resource(a1, v4, a3, a4);
  return a1;
}

{
  v4 = ot::PathForUri(a2);
  ot::Coap::Resource::Resource(a1, v4, a3, a4);
  return a1;
}

ot::Coap::Coap *ot::Coap::Coap::Coap(ot::Coap::Coap *this, ot::Instance *a2)
{
  ot::Coap::CoapBase::CoapBase(this, a2, ot::Coap::Coap::Send);
  ot::Ip6::Udp::SocketIn<ot::Coap::Coap,&ot::Coap::Coap::HandleUdpReceive>::SocketIn((this + 144), a2, this);
  return this;
}

{
  ot::Coap::Coap::Coap(this, a2);
  return this;
}

ot::InstanceLocator *ot::Ip6::Udp::SocketIn<ot::Coap::Coap,&ot::Coap::Coap::HandleUdpReceive>::SocketIn(ot::InstanceLocator *a1, ot::Instance *a2, uint64_t a3)
{
  ot::Ip6::Udp::SocketIn<ot::Coap::Coap,&ot::Coap::Coap::HandleUdpReceive>::SocketIn(a1, a2, a3);
  return a1;
}

{
  ot::Ip6::Udp::Socket::Socket(a1, a2, ot::Ip6::Udp::SocketIn<ot::Coap::Coap,&ot::Coap::Coap::HandleUdpReceive>::HandleUdpReceive, a3);
  return a1;
}

uint64_t ot::Coap::Coap::Start(uint64_t a1, __int16 a2, char a3)
{
  v6 = 0;
  v5 = 0;
  if (!ot::Ip6::Udp::SocketHandle::IsBound((a1 + 144)))
  {
    v6 = ot::Ip6::Udp::Socket::Open((a1 + 144));
    if (!v6)
    {
      v5 = 1;
      v6 = ot::Ip6::Udp::Socket::Bind((a1 + 144), a2, a3);
    }
  }

  if (v6 && (v5 & 1) != 0)
  {
    ot::Ip6::Udp::Socket::Close((a1 + 144));
    IgnoreError();
  }

  return v6;
}

BOOL ot::Ip6::Udp::SocketHandle::IsBound(ot::Ip6::Udp::SocketHandle *this)
{
  return *(this + 8) != 0;
}

{
  return ot::Ip6::Udp::SocketHandle::IsBound(this);
}

uint64_t ot::Coap::Coap::Stop(ot::Coap::Coap *this)
{
  v3 = 0;
  if (ot::Ip6::Udp::SocketHandle::IsBound((this + 144)))
  {
    v3 = ot::Ip6::Udp::Socket::Close((this + 144));
    if (!v3)
    {
      ot::Coap::CoapBase::ClearRequestsAndResponses(this);
    }
  }

  return v3;
}

uint64_t ot::Coap::Coap::Send(ot::Coap::Coap *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  if (ot::Ip6::Udp::SocketHandle::IsBound((this + 144)))
  {
    return ot::Ip6::Udp::Socket::SendTo((this + 144), a2, a3);
  }

  else
  {
    return 13;
  }
}

ot::Coap::Message::Iterator *ot::Coap::Message::Iterator::Iterator(ot::Coap::Message::Iterator *this)
{
  ot::Coap::Message::Iterator::Iterator(this);
  return this;
}

{
  ot::Message::Iterator::Iterator(this);
  return this;
}

ot::Message::Iterator *ot::Message::Iterator::Iterator(ot::Message::Iterator *this)
{
  ot::Ptr<ot::Message>::Ptr(this);
  result = this;
  *(this + 1) = 0;
  return result;
}

uint64_t ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(uint64_t a1)
{
  return *a1;
}

{
  return ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(a1);
}

uint64_t ot::Message::Append<ot::Coap::CoapBase::Metadata>(ot::Message *a1, const void *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0x48u);
}

{
  return ot::Message::Append<ot::Coap::CoapBase::Metadata>(a1, a2);
}

ot::Message **ot::Coap::MessageQueue::Enqueue(ot::MessageQueue *a1, ot::Message *a2, char a3)
{
  return ot::MessageQueue::Enqueue(a1, a2, a3);
}

{
  return ot::Coap::MessageQueue::Enqueue(a1, a2, a3);
}

uint64_t ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator*(uint64_t a1)
{
  return *a1;
}

{
  return ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator*(a1);
}

uint64_t ot::Message::Append<ot::Coap::ResponsesQueue::ResponseMetadata>(ot::Message *a1, const void *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0x2Cu);
}

{
  return ot::Message::Append<ot::Coap::ResponsesQueue::ResponseMetadata>(a1, a2);
}

BOOL ot::LinkedList<ot::Coap::Resource>::Contains(uint64_t *a1, uint64_t a2)
{
  v3[2] = a1;
  v3[1] = a2;
  v3[0] = 0;
  return ot::LinkedList<ot::Coap::Resource>::Find(a1, a2, v3) == 0;
}

{
  return ot::LinkedList<ot::Coap::Resource>::Contains(a1, a2);
}

uint64_t ot::LinkedList<ot::Coap::Resource>::Push(uint64_t *a1, uint64_t a2)
{
  result = ot::LinkedListEntry<ot::Coap::Resource>::SetNext(a2, *a1);
  *a1 = a2;
  return result;
}

{
  return ot::LinkedList<ot::Coap::Resource>::Push(a1, a2);
}

uint64_t ot::LinkedList<ot::Coap::Resource>::Find(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = 23;
  *a3 = 0;
  for (i = *a1; i; i = ot::LinkedListEntry<ot::Coap::Resource>::GetNext(i))
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
  return ot::LinkedList<ot::Coap::Resource>::Find(a1, a2, a3);
}

uint64_t ot::LinkedListEntry<ot::Coap::Resource>::GetNext(uint64_t a1)
{
  return *(a1 + 24);
}

{
  return *(a1 + 24);
}

{
  return ot::LinkedListEntry<ot::Coap::Resource>::GetNext(a1);
}

{
  return ot::LinkedListEntry<ot::Coap::Resource>::GetNext(a1);
}

uint64_t ot::LinkedList<ot::Coap::Resource>::Find(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  ot::AsConst<ot::LinkedList<ot::Coap::Resource>>();
  return ot::LinkedList<ot::Coap::Resource>::Find(v3, a2, a3);
}

{
  return ot::LinkedList<ot::Coap::Resource>::Find(a1, a2, a3);
}

uint64_t ot::LinkedList<ot::Coap::Resource>::PopAfter(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return ot::LinkedList<ot::Coap::Resource>::Pop(a1);
  }

  Next = ot::LinkedListEntry<ot::Coap::Resource>::GetNext(a2);
  if (Next)
  {
    v2 = ot::LinkedListEntry<ot::Coap::Resource>::GetNext(Next);
    ot::LinkedListEntry<ot::Coap::Resource>::SetNext(a2, v2);
  }

  return Next;
}

{
  return ot::LinkedList<ot::Coap::Resource>::PopAfter(a1, a2);
}

void ot::AsConst<ot::LinkedList<ot::Coap::Resource>>()
{
  ;
}

{
  ot::AsConst<ot::LinkedList<ot::Coap::Resource>>();
}

uint64_t ot::LinkedList<ot::Coap::Resource>::Pop(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    *a1 = ot::LinkedListEntry<ot::Coap::Resource>::GetNext(*a1);
  }

  return v2;
}

{
  return ot::LinkedList<ot::Coap::Resource>::Pop(a1);
}

uint64_t ot::LinkedList<ot::Coap::Resource>::GetHead(uint64_t a1)
{
  return *a1;
}

{
  return ot::LinkedList<ot::Coap::Resource>::GetHead(a1);
}

uint64_t ot::LinkedList<ot::Coap::Resource>::Iterator::Advance(uint64_t *a1)
{
  result = ot::LinkedListEntry<ot::Coap::Resource>::GetNext(*a1);
  *a1 = result;
  return result;
}

{
  return ot::LinkedList<ot::Coap::Resource>::Iterator::Advance(a1);
}

ot::Message *ot::Message::ConstIterator::Advance(ot::Message **this)
{
  result = ot::Message::GetNext(*this);
  *this = result;
  return result;
}

{
  return ot::Message::ConstIterator::Advance(this);
}

uint64_t ot::Ip6::Udp::SocketIn<ot::Coap::Coap,&ot::Coap::Coap::HandleUdpReceive>::HandleUdpReceive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = ot::AsCoreType<otMessage>(a2);
  v3 = ot::AsCoreType<otMessageInfo>(a3);
  return (ot::Coap::Coap::HandleUdpReceive)(a1, v5, v3);
}

void ot::Coap::Message::Init(ot::Coap::Message *this)
{
  ot::Coap::Message::GetHelpData(this);
  ot::Clearable<ot::Coap::Message::HelpData>::Clear(v1);
  ot::Coap::Message::SetVersion(this, 1);
  ot::Message::SetOffset(this, 0);
  ot::Coap::Message::GetHelpData(this);
  *(v2 + 16) = 4;
  ot::Coap::Message::GetHelpData(this);
  ot::Message::SetLength(this, *(v3 + 16));
  IgnoreError();
}

uint64_t ot::Clearable<ot::Coap::Message::HelpData>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::Coap::Message::HelpData>(a1);
}

{
  return ot::Clearable<ot::Coap::Message::HelpData>::Clear(a1);
}

void ot::Coap::Message::SetVersion(ot::Coap::Message *this, char a2)
{
  ot::Coap::Message::GetHelpData(this);
  *v2 &= 0x3Fu;
  ot::Coap::Message::GetHelpData(this);
  *v3 |= a2 << 6;
}

{
  ot::Coap::Message::SetVersion(this, a2);
}

void ot::Coap::Message::Init(ot::Coap::Message *a1, char a2, char a3)
{
  ot::Coap::Message::Init(a1);
  ot::Coap::Message::SetType(a1, a2);
  ot::Coap::Message::SetCode(a1, a3);
}

void ot::Coap::Message::SetType(ot::Coap::Message *a1, char a2)
{
  ot::Coap::Message::GetHelpData(a1);
  *v2 &= 0xCFu;
  ot::Coap::Message::GetHelpData(a1);
  *v3 |= 16 * a2;
}

{
  ot::Coap::Message::SetType(a1, a2);
}

uint64_t ot::Coap::Message::Init(ot::Coap::Message *a1, char a2, char a3, unsigned __int8 a4)
{
  ot::Coap::Message::Init(a1, a2, a3);
  RandomToken = ot::Coap::Message::GenerateRandomToken(a1, 2u);
  if (!RandomToken)
  {
    v4 = ot::PathForUri(a4);
    return ot::Coap::Message::AppendUriPathOptions(a1, v4);
  }

  return RandomToken;
}

uint64_t ot::Coap::Message::GenerateRandomToken(ot::Coap::Message *this, unsigned __int8 a2)
{
  if (a2 > 8uLL)
  {
    __assert_rtn("GenerateRandomToken", "coap_message.cpp", 421, "aTokenLength <= sizeof(token)");
  }

  ot::Random::Crypto::FillBuffer(v5, a2);
  IgnoreError();
  return ot::Coap::Message::SetToken(this, v5, a2);
}

uint64_t ot::Coap::Message::AppendUriPathOptions(ot::Coap::Message *this, ot *a2)
{
  v6 = a2;
  for (i = ot::StringFind(a2, 0x2F); ; i = ot::StringFind((v5 + 1), 0x2F))
  {
    v5 = i;
    if (!i)
    {
      break;
    }

    appended = ot::Coap::Message::AppendOption(this, 0xBu, i - v6, v6);
    if (appended)
    {
      return appended;
    }

    v6 = (v5 + 1);
  }

  return ot::Coap::Message::AppendStringOption(this, 0xBu, v6);
}

BOOL ot::Coap::Message::IsConfirmablePostRequest(ot::Coap::Message *this)
{
  v3 = 0;
  if (ot::Coap::Message::IsConfirmable(this))
  {
    return ot::Coap::Message::IsPostRequest(this);
  }

  return v3;
}

BOOL ot::Coap::Message::IsNonConfirmablePostRequest(ot::Coap::Message *this)
{
  v3 = 0;
  if (ot::Coap::Message::IsNonConfirmable(this))
  {
    return ot::Coap::Message::IsPostRequest(this);
  }

  return v3;
}

uint64_t ot::Coap::Message::Finish(ot::Coap::Message *this)
{
  ot::Coap::Message::GetHelpData(this);
  if (*(v1 + 18))
  {
    ot::Coap::Message::GetHelpData(this);
    v7 = *(v2 + 16);
    if (v7 == ot::Message::GetLength(this))
    {
      ot::Message::RemoveFooter(this, 1u);
    }
  }

  ot::Coap::Message::GetHelpData(this);
  v6 = v3;
  OptionStart = ot::Coap::Message::GetOptionStart(this);
  return ot::Message::WriteBytes(this, 0, v6, OptionStart);
}

uint64_t ot::Coap::Message::WriteExtendedOptionField(ot::Coap::Message *this, unsigned __int16 a2, unsigned __int8 **a3)
{
  if (a2 >= 0xDu)
  {
    if (a2 < 0x10Du)
    {
      v4 = 13;
      *(*a3)++ = a2 - 13;
    }

    else
    {
      v4 = 14;
      ot::BigEndian::WriteUint16((a2 - 269), *a3, a3);
      *a3 += 2;
    }
  }

  else
  {
    return a2;
  }

  return v4;
}

uint64_t ot::BigEndian::WriteUint16(uint64_t this, _BYTE *a2, unsigned __int8 *a3)
{
  *a2 = BYTE1(this);
  a2[1] = this;
  return this;
}

{
  return ot::BigEndian::WriteUint16(this, a2, a3);
}

uint64_t ot::Coap::Message::AppendOptionHeader(ot::Coap::Message *this, unsigned __int16 a2, unsigned __int16 a3)
{
  v20 = this;
  v19 = a2;
  v18 = a3;
  v17 = 0;
  *&v16[4] = 0;
  v14 = 0;
  v13 = 0;
  v11 = a2;
  ot::Coap::Message::GetHelpData(this);
  if (v11 >= *(v3 + 12))
  {
    ot::Coap::Message::GetHelpData(this);
    *&v16[4] = v19 - *(v4 + 12);
    v13 = v16;
    v15 = 16 * ot::Coap::Message::WriteExtendedOptionField(this, *&v16[4], &v13);
    v5 = ot::Coap::Message::WriteExtendedOptionField(this, v18, &v13);
    v15 |= v5;
    v14 = v13 - &v15;
    Length = ot::Message::GetLength(this);
    if (Length + v14 + v18 >= 0x200)
    {
      return 3;
    }

    else
    {
      appended = ot::Message::AppendBytes(this, &v15, v14);
      v17 = appended;
      if (!appended)
      {
        v10 = v19;
        ot::Coap::Message::GetHelpData(this);
        *(v8 + 12) = v10;
      }
    }
  }

  else
  {
    return 7;
  }

  return v17;
}

uint64_t ot::Coap::Message::AppendOption(ot::Coap::Message *this, unsigned __int16 a2, unsigned __int16 a3, const void *a4)
{
  appended = ot::Coap::Message::AppendOptionHeader(this, a2, a3);
  if (!appended)
  {
    appended = ot::Message::AppendBytes(this, a4, a3);
    if (!appended)
    {
      Length = ot::Message::GetLength(this);
      ot::Coap::Message::GetHelpData(this);
      *(v4 + 16) = Length;
    }
  }

  return appended;
}

uint64_t ot::Coap::Message::AppendOptionFromMessage(ot::Coap::Message *this, unsigned __int16 a2, unsigned __int16 a3, const ot::Coap::Message *a4, unsigned __int16 a5)
{
  appended = ot::Coap::Message::AppendOptionHeader(this, a2, a3);
  if (!appended)
  {
    appended = ot::Message::AppendBytesFromMessage(this, a4, a5, a3);
    if (!appended)
    {
      Length = ot::Message::GetLength(this);
      ot::Coap::Message::GetHelpData(this);
      *(v5 + 16) = Length;
    }
  }

  return appended;
}

uint64_t ot::Coap::Message::AppendUintOption(ot::Coap::Message *this, unsigned __int16 a2, unsigned __int8 *a3)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v7 = v8;
  v6 = 4;
  ot::BigEndian::WriteUint32(a3, v8, a3);
  while (1)
  {
    v4 = 0;
    if (v6)
    {
      v4 = *v7 == 0;
    }

    if (!v4)
    {
      break;
    }

    ++v7;
    --v6;
  }

  return ot::Coap::Message::AppendOption(this, v10, v6, v7);
}

uint64_t ot::BigEndian::WriteUint32(uint64_t this, _BYTE *a2, unsigned __int8 *a3)
{
  *a2 = BYTE3(this);
  a2[1] = BYTE2(this);
  a2[2] = BYTE1(this);
  a2[3] = this;
  return this;
}

{
  return ot::BigEndian::WriteUint32(this, a2, a3);
}

uint64_t ot::Coap::Message::ReadUriPathOptions(ot::Coap::Message *this, char (*a2)[33])
{
  v11 = this;
  v10 = a2;
  v9 = a2;
  v8 = 0;
  v8 = ot::Coap::Option::Iterator::Init(v7, this, 0xBu);
  if (!v8)
  {
    while (!ot::Coap::Option::Iterator::IsDone(v7))
    {
      Option = ot::Coap::Option::Iterator::GetOption(v7);
      Length = ot::Coap::Option::GetLength(Option);
      if (v9 != v10)
      {
        v3 = v9++;
        *v3 = 47;
      }

      v5 = &v9[Length];
      if (v5 >= ot::GetArrayEnd<char,(unsigned short)33>(v10))
      {
        v8 = 6;
        break;
      }

      ot::Coap::Option::Iterator::ReadOptionValue(v7, v9);
      IgnoreError();
      v9 += Length;
      v8 = ot::Coap::Option::Iterator::Advance(v7, 0xBu);
      if (v8)
      {
        break;
      }
    }
  }

  *v9 = 0;
  return v8;
}

uint64_t ot::Coap::Option::GetLength(ot::Coap::Option *this)
{
  return *(this + 1);
}

{
  return ot::Coap::Option::GetLength(this);
}

uint64_t ot::GetArrayEnd<char,(unsigned short)33>(uint64_t a1)
{
  return a1 + 33;
}

{
  return ot::GetArrayEnd<char,(unsigned short)33>(a1);
}

uint64_t ot::Coap::Option::Iterator::ReadOptionValue(ot::Coap::Option::Iterator *this, char *a2)
{
  v5 = 0;
  if (ot::Coap::Option::Iterator::IsDone(this))
  {
    return 23;
  }

  else
  {
    Message = ot::Coap::Option::Iterator::GetMessage(this);
    ot::Message::ReadBytes(Message, *(this + 6) - *(this + 5), a2, *(this + 5));
  }

  return v5;
}

uint64_t ot::Coap::Message::AppendUriQueryOptions(ot::Coap::Message *this, ot *a2)
{
  v6 = a2;
  for (i = ot::StringFind(a2, 0x26); ; i = ot::StringFind((v5 + 1), 0x26))
  {
    v5 = i;
    if (!i)
    {
      break;
    }

    appended = ot::Coap::Message::AppendOption(this, 0xFu, i - v6, v6);
    if (appended)
    {
      return appended;
    }

    v6 = (v5 + 1);
  }

  return ot::Coap::Message::AppendStringOption(this, 0xFu, v6);
}

uint64_t ot::Coap::Message::AppendBlockOption(ot::Coap::Message *a1, char a2, unsigned int a3, char a4, int a5)
{
  if (a2 == 1 || a2 == 2)
  {
    if (a5 <= 6)
    {
      if (a3 < 0xFFFF)
      {
        if (a2 == 1)
        {
          v5 = 27;
        }

        else
        {
          v5 = 23;
        }

        return ot::Coap::Message::AppendUintOption(a1, v5, (a5 | (8 * (a4 & 1)) | (16 * a3)));
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
}

uint64_t ot::Coap::Message::SetPayloadMarker(ot::Coap::Message *this)
{
  v9 = this;
  v8 = 0;
  v7 = -1;
  if (ot::Message::GetLength(this) < 512)
  {
    v8 = ot::Message::Append<unsigned char>(this, &v7);
    if (!v8)
    {
      ot::Coap::Message::GetHelpData(this);
      *(v1 + 18) = 1;
      Length = ot::Message::GetLength(this);
      ot::Coap::Message::GetHelpData(this);
      *(v2 + 16) = Length;
      ot::Coap::Message::GetHelpData(this);
      ot::Message::SetOffset(this, *(v3 + 16));
    }
  }

  else
  {
    return 3;
  }

  return v8;
}

uint64_t ot::Message::Append<unsigned char>(ot::Message *a1, const void *a2)
{
  return ot::Message::AppendBytes(a1, a2, 1u);
}

{
  return ot::Message::Append<unsigned char>(a1, a2);
}

uint64_t ot::Coap::Message::ParseHeader(ot::Coap::Message *this)
{
  v19 = this;
  v18 = 0;
  Reserved = ot::Message::GetReserved(this);
  ot::Coap::Message::GetHelpData(this);
  if (v1 - ot::Buffer::GetFirstData(this) + 20 > Reserved)
  {
    __assert_rtn("ParseHeader", "coap_message.cpp", 383, "GetReserved() >= sizeof(HelpData) + static_cast<size_t>((reinterpret_cast<uint8_t *>(&GetHelpData()) - GetFirstData()))");
  }

  ot::Coap::Message::GetHelpData(this);
  ot::Clearable<ot::Coap::Message::HelpData>::Clear(v2);
  Offset = ot::Message::GetOffset(this);
  ot::Coap::Message::GetHelpData(this);
  *(v3 + 14) = Offset;
  ot::Coap::Message::GetHelpData(this);
  v14 = *(v4 + 14);
  ot::Coap::Message::GetHelpData(this);
  ot::Message::Read<ot::Coap::Message::Header>(this, v14, v5);
  IgnoreError();
  TokenLength = ot::Coap::Message::GetTokenLength(this);
  if (TokenLength <= 8)
  {
    v18 = ot::Coap::Option::Iterator::Init(v17, this);
    if (!v18)
    {
      while (!ot::Coap::Option::Iterator::IsDone(v17))
      {
        v18 = ot::Coap::Option::Iterator::Advance(v17);
        if (v18)
        {
          return v18;
        }
      }

      PayloadMessageOffset = ot::Coap::Option::Iterator::GetPayloadMessageOffset(v17);
      ot::Coap::Message::GetHelpData(this);
      v12 = PayloadMessageOffset - *(v7 + 14);
      ot::Coap::Message::GetHelpData(this);
      *(v8 + 16) = v12;
      ot::Coap::Message::GetHelpData(this);
      ot::Message::MoveOffset(this, *(v9 + 16));
    }
  }

  else
  {
    return 6;
  }

  return v18;
}

uint64_t ot::Message::GetReserved(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 46);
}

{
  return ot::Message::GetReserved(this);
}

uint64_t ot::Message::Read<ot::Coap::Message::Header>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0xCu);
}

{
  return ot::Message::Read<ot::Coap::Message::Header>(a1, a2, a3);
}

uint64_t ot::Coap::Option::Iterator::Init(ot::Coap::Option::Iterator *this, const ot::Coap::Message *a2)
{
  v6 = 6;
  v4 = *(ot::Coap::Message::GetHelpData(a2) + 14);
  v5 = v4 + ot::Coap::Message::GetOptionStart(a2);
  if (v5 <= ot::Message::GetLength(a2))
  {
    *(this + 4) = 0;
    *(this + 5) = 0;
    *this = a2;
    *(this + 6) = v5;
    return ot::Coap::Option::Iterator::Advance(this);
  }

  else
  {
    ot::Coap::Option::Iterator::MarkAsParseErrored(this);
  }

  return v6;
}

uint64_t ot::Coap::Option::Iterator::Advance(ot::Coap::Option::Iterator *this)
{
  v11 = this;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  if (!ot::Coap::Option::Iterator::IsDone(this))
  {
    v10 = ot::Coap::Option::Iterator::Read(this, 1u, &v9);
    if (v10 || v9 == 255)
    {
      ot::Coap::Option::Iterator::MarkAsDone(this);
      if (v10 || (v5 = *(this + 6), Message = ot::Coap::Option::Iterator::GetMessage(this), v5 < ot::Message::GetLength(Message)))
      {
        v10 = 0;
      }

      else
      {
        v10 = 6;
      }
    }

    else
    {
      v8 = (v9 & 0xF0) >> 4;
      v10 = ot::Coap::Option::Iterator::ReadExtendedOptionField(this, &v8);
      if (!v10)
      {
        v7 = v9 & 0xF;
        v10 = ot::Coap::Option::Iterator::ReadExtendedOptionField(this, &v7);
        if (!v10)
        {
          v4 = v7;
          v2 = ot::Coap::Option::Iterator::GetMessage(this);
          if (v4 <= (ot::Message::GetLength(v2) - *(this + 6)))
          {
            *(this + 6) += v7;
            *(this + 4) += v8;
            *(this + 5) = v7;
          }

          else
          {
            v10 = 6;
          }
        }
      }
    }
  }

  if (v10)
  {
    ot::Coap::Option::Iterator::MarkAsParseErrored(this);
  }

  return v10;
}

uint64_t ot::Coap::Option::Iterator::GetPayloadMessageOffset(ot::Coap::Option::Iterator *this)
{
  return *(this + 6);
}

{
  return ot::Coap::Option::Iterator::GetPayloadMessageOffset(this);
}

uint64_t ot::Coap::Message::SetToken(ot::Coap::Message *this, const unsigned __int8 *a2, unsigned __int8 a3)
{
  if (a3 > 8u)
  {
    __assert_rtn("SetToken", "coap_message.cpp", 408, "aTokenLength <= kMaxTokenLength");
  }

  ot::Coap::Message::SetTokenLength(this, a3);
  Token = ot::Coap::Message::GetToken(this);
  memcpy(Token, a2, a3);
  ot::Coap::Message::GetHelpData(this);
  *(v4 + 16) += a3;
  ot::Coap::Message::GetHelpData(this);
  return ot::Message::SetLength(this, *(v5 + 16));
}

void ot::Coap::Message::SetTokenLength(ot::Coap::Message *this, char a2)
{
  ot::Coap::Message::GetHelpData(this);
  *v2 &= 0xF0u;
  ot::Coap::Message::GetHelpData(this);
  *v3 |= a2 & 0xF;
}

{
  ot::Coap::Message::SetTokenLength(this, a2);
}

uint64_t ot::Coap::Message::GetToken(ot::Coap::Message *this)
{
  ot::Coap::Message::GetHelpData(this);
  return v1 + 4;
}

{
  return ot::Coap::Message::GetToken(this);
}

uint64_t ot::Random::Crypto::FillBuffer(ot::Random::Crypto *this, unsigned __int8 *a2)
{
  return ot::Random::Manager::CryptoFillBuffer(this, a2);
}

{
  return ot::Random::Crypto::FillBuffer(this, a2);
}

uint64_t ot::Coap::Message::SetTokenFromMessage(ot::Coap::Message *this, const ot::Coap::Message *a2)
{
  Token = ot::Coap::Message::GetToken(a2);
  TokenLength = ot::Coap::Message::GetTokenLength(a2);
  return ot::Coap::Message::SetToken(this, Token, TokenLength);
}

BOOL ot::Coap::Message::IsTokenEqual(ot::Coap::Message *this, const ot::Coap::Message *a2)
{
  TokenLength = ot::Coap::Message::GetTokenLength(this);
  v6 = 0;
  if (TokenLength == ot::Coap::Message::GetTokenLength(a2))
  {
    __s1 = ot::Coap::Message::GetToken(this);
    Token = ot::Coap::Message::GetToken(a2);
    return memcmp(__s1, Token, TokenLength) == 0;
  }

  return v6;
}

uint64_t ot::Coap::Message::SetDefaultResponseHeader(ot::Coap::Message *this, const ot::Coap::Message *a2)
{
  ot::Coap::Message::Init(this, 2, 68);
  MessageId = ot::Coap::Message::GetMessageId(a2);
  ot::Coap::Message::SetMessageId(this, MessageId);
  return ot::Coap::Message::SetTokenFromMessage(this, a2);
}

ot::Message *ot::Coap::Message::Clone(ot::Coap::Message *this, unsigned __int16 a2)
{
  v6 = ot::Message::Clone(this, a2);
  if (v6)
  {
    HelpData = ot::Coap::Message::GetHelpData(this);
    ot::Coap::Message::GetHelpData(v6);
    *v2 = *HelpData;
    *(v2 + 16) = *(HelpData + 16);
  }

  return v6;
}

uint64_t ot::Stringify::Lookup<(unsigned short)28>(__int16 a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  v10 = a1;
  v8 = ot::BinarySearch::Find<unsigned short,ot::Stringify::Entry,(unsigned short)28>(&v10, a2, a3, a4, a5, a6);
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
  return ot::Stringify::Lookup<(unsigned short)28>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Coap::MessageQueue::begin(ot::Coap::MessageQueue *this)
{
  Head = ot::Coap::MessageQueue::GetHead(this);
  _ZN2ot4Coap7Message8IteratorCI1NS_7Message8IteratorEEPS3_(&v3, Head);
  return v3;
}

{
  Head = ot::Coap::MessageQueue::GetHead(this);
  _ZN2ot4Coap7Message13ConstIteratorCI1NS_7Message13ConstIteratorEEPKS3_(&v3, Head);
  return v3;
}

uint64_t ot::Coap::Option::Iterator::MarkAsParseErrored(ot::Coap::Option::Iterator *this)
{
  result = ot::Coap::Option::Iterator::MarkAsDone(this);
  *(this + 6) = 0;
  return result;
}

{
  return ot::Coap::Option::Iterator::MarkAsParseErrored(this);
}

uint64_t ot::Coap::Option::Iterator::Read(ot::Coap::Option::Iterator *this, unsigned __int16 a2, char *a3)
{
  Message = ot::Coap::Option::Iterator::GetMessage(this);
  v6 = ot::Message::Read(Message, *(this + 6), a3, a2);
  if (!v6)
  {
    *(this + 6) += a2;
  }

  return v6;
}

uint64_t ot::Coap::Option::Iterator::MarkAsDone(uint64_t this)
{
  *(this + 10) = -1;
  return this;
}

{
  return ot::Coap::Option::Iterator::MarkAsDone(this);
}

uint64_t ot::Coap::Option::Iterator::ReadExtendedOptionField(ot::Coap::Option::Iterator *this, unsigned __int16 *a2)
{
  v7 = this;
  v6 = a2;
  v5 = 0;
  if (*a2 >= 0xDu)
  {
    if (*v6 == 13)
    {
      v4 = 0;
      v5 = ot::Coap::Option::Iterator::Read(this, 1u, &v4);
      if (!v5)
      {
        *v6 = v4 + 13;
      }
    }

    else if (*v6 == 14)
    {
      v3 = 0;
      v5 = ot::Coap::Option::Iterator::Read(this, 2u, &v3);
      if (!v5)
      {
        v3 = ot::BigEndian::HostSwap16(v3);
        *v6 = v3 + 269;
      }
    }

    else
    {
      return 6;
    }
  }

  return v5;
}

uint64_t ot::Coap::Option::Iterator::ReadOptionValue(ot::Coap::Option::Iterator *this, unint64_t *a2)
{
  v5 = 0;
  if (ot::Coap::Option::Iterator::IsDone(this))
  {
    return 23;
  }

  else if (*(this + 5) > 8uLL)
  {
    return 3;
  }

  else
  {
    ot::Coap::Option::Iterator::ReadOptionValue(this, v7);
    IgnoreError();
    *a2 = 0;
    for (i = 0; i < *(this + 5); ++i)
    {
      *a2 <<= 8;
      *a2 |= v7[i];
    }
  }

  return v5;
}

uint64_t ot::Coap::Option::Iterator::InitOrAdvance(ot::Coap::Option::Iterator *this, const ot::Coap::Message *a2, unsigned __int16 a3)
{
  if (a2)
  {
    v6 = ot::Coap::Option::Iterator::Init(this, a2);
  }

  else
  {
    v6 = ot::Coap::Option::Iterator::Advance(this);
  }

  for (i = v6; ; i = ot::Coap::Option::Iterator::Advance(this))
  {
    v5 = 0;
    if (!i)
    {
      v5 = 0;
      if (!ot::Coap::Option::Iterator::IsDone(this))
      {
        Option = ot::Coap::Option::Iterator::GetOption(this);
        v5 = ot::Coap::Option::GetNumber(Option) != a3;
      }
    }

    if (!v5)
    {
      break;
    }
  }

  return i;
}

uint64_t ot::Coap::Option::GetNumber(ot::Coap::Option *this)
{
  return *this;
}

{
  return ot::Coap::Option::GetNumber(this);
}

uint64_t ot::Random::Manager::CryptoFillBuffer(ot::Random::Manager *this, unsigned __int8 *a2)
{
  return j__otPlatCryptoRandomGet(this, a2);
}

{
  return ot::Random::Manager::CryptoFillBuffer(this, a2);
}

ot::Message::Iterator *ot::Message::Iterator::Iterator(ot::Message::Iterator *this, ot::Message *a2)
{
  ot::Ptr<ot::Message>::Ptr(this, a2);
  Message = ot::Message::Iterator::NextMessage(a2, v2);
  result = this;
  *(this + 1) = Message;
  return result;
}

uint64_t ot::Message::Iterator::NextMessage(ot::Message::Iterator *this, ot::Message *a2)
{
  if (this)
  {
    return ot::Message::GetNext(this);
  }

  else
  {
    return 0;
  }
}

{
  return ot::Message::Iterator::NextMessage(this, a2);
}

uint64_t ot::Message::NextOf(ot::Message *this, const ot::Message *a2)
{
  if (this)
  {
    return *ot::Message::Next(this);
  }

  else
  {
    return 0;
  }
}

{
  return ot::Message::NextOf(this, a2);
}

uint64_t ot::ClearAllBytes<ot::Coap::Message::HelpData>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Coap::Message::HelpData>(result);
}

char *ot::BinarySearch::Find<unsigned short,ot::Stringify::Entry,(unsigned short)28>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 0x1C, 0x10u, ot::BinarySearch::Compare<unsigned short,ot::Stringify::Entry>, a6);
}

{
  return ot::BinarySearch::Find<unsigned short,ot::Stringify::Entry,(unsigned short)28>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Stringify::Entry::Compare(ot::Stringify::Entry *this, unsigned __int16 a2)
{
  return ot::ThreeWayCompare<unsigned short>(a2, *this);
}

{
  return ot::Stringify::Entry::Compare(this, a2);
}

uint64_t ot::ThreeWayCompare<unsigned short>(unsigned __int16 a1, unsigned __int16 a2)
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
  return ot::ThreeWayCompare<unsigned short>(a1, a2);
}

ot::Coap::CoapSecure *ot::Coap::CoapSecure::CoapSecure(ot::Coap::CoapSecure *this, ot::Instance *a2, char a3)
{
  ot::Coap::CoapBase::CoapBase(this, a2, ot::Coap::CoapSecure::Send);
  ot::MeshCoP::SecureTransport::SecureTransport((this + 144), a2, a3 & 1, 1);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 143);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 145);
  ot::Coap::MessageQueue::MessageQueue((this + 1176));
  ot::TaskletContext::TaskletContext((this + 1184), a2, ot::Coap::CoapSecure::HandleTransmit, this);
  return this;
}

{
  ot::Coap::CoapSecure::CoapSecure(this, a2, a3 & 1);
  return this;
}

ot::TaskletContext *ot::TaskletContext::TaskletContext(ot::TaskletContext *this, ot::Instance *a2, void (*a3)(ot::Tasklet *), void *a4)
{
  ot::TaskletContext::TaskletContext(this, a2, a3, a4);
  return this;
}

{
  ot::Tasklet::Tasklet(this, a2, a3);
  result = this;
  *(this + 2) = a4;
  return result;
}

uint64_t ot::Coap::CoapSecure::Start(ot::Coap::CoapSecure *this, __int16 a2, __int16 a3, void (*a4)(void *), uint64_t a5)
{
  v7 = ot::Coap::CoapSecure::Open(this, a3, a4, a5);
  if (!v7)
  {
    return ot::MeshCoP::SecureTransport::Bind((this + 144), a2);
  }

  return v7;
}

uint64_t ot::Coap::CoapSecure::Open(ot::Coap::CoapSecure *this, __int16 a2, void (*a3)(void *), uint64_t a4)
{
  v6 = 24;
  if (!ot::MeshCoP::SecureTransport::SetMaxConnectionAttempts((this + 144), a2, ot::Coap::CoapSecure::HandleDtlsAutoClose, this))
  {
    ot::CallbackBase<void (*)(void *)>::Set(this + 145, a3, a4);
    ot::CallbackBase<void (*)(BOOL,void *)>::Clear(this + 143);
    if (!ot::MeshCoP::SecureTransport::Open((this + 144), ot::Coap::CoapSecure::HandleDtlsReceive, ot::Coap::CoapSecure::HandleDtlsConnected, this))
    {
      return 0;
    }
  }

  return v6;
}

uint64_t ot::Coap::CoapSecure::Start(ot::Coap::CoapSecure *a1, uint64_t a2, uint64_t a3)
{
  v5 = ot::Coap::CoapSecure::Open(a1, 0, 0, 0);
  if (!v5)
  {
    return ot::MeshCoP::SecureTransport::Bind(a1 + 144, a2, a3);
  }

  return v5;
}

void *ot::CallbackBase<void (*)(void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(void *)>::Set(result, a2, a3);
}

void *ot::CallbackBase<void (*)(BOOL,void *)>::Clear(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::CallbackBase<void (*)(BOOL,void *)>::Clear(result);
}

ot::Message *ot::Coap::CoapSecure::Stop(void **this)
{
  ot::MeshCoP::SecureTransport::Close(this + 18);
  ot::MessageQueue::DequeueAndFreeAll((this + 147));
  return ot::Coap::CoapBase::ClearRequestsAndResponses(this);
}

void *ot::CallbackBase<void (*)(BOOL,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(BOOL,void *)>::Set(result, a2, a3);
}

uint64_t ot::Coap::CoapSecure::SetPsk(ot::Coap::CoapSecure *this, const ot::MeshCoP::JoinerPskd *a2)
{
  v6 = (this + 144);
  ot::MeshCoP::JoinerPskd::GetAsCString(a2);
  v5 = v2;
  Length = ot::MeshCoP::JoinerPskd::GetLength(a2);
  result = ot::MeshCoP::SecureTransport::SetPsk(v6, v5, Length);
  if (result)
  {
    __assert_rtn("SetPsk", "coap_secure.cpp", 118, "false");
  }

  return result;
}

void ot::MeshCoP::JoinerPskd::GetAsCString(ot::MeshCoP::JoinerPskd *this)
{
  ;
}

{
  ot::MeshCoP::JoinerPskd::GetAsCString(this);
}

uint64_t ot::MeshCoP::JoinerPskd::GetLength(ot::MeshCoP::JoinerPskd *this)
{
  return ot::StringLength(this, 0x21);
}

{
  return ot::MeshCoP::JoinerPskd::GetLength(this);
}

uint64_t ot::Coap::CoapSecure::SendMessage(uint64_t a1, ot::Coap::Message *a2, uint64_t a3, uint64_t a4)
{
  if (ot::Coap::CoapSecure::IsConnected(a1))
  {
    MessageInfo = ot::MeshCoP::SecureTransport::GetMessageInfo((a1 + 144));
    return ot::Coap::CoapBase::SendMessage(a1, a2, MessageInfo, a3, a4);
  }

  else
  {
    return 13;
  }
}

BOOL ot::Coap::CoapSecure::IsConnected(ot::Coap::CoapSecure *this)
{
  return ot::MeshCoP::SecureTransport::IsConnected((this + 144));
}

{
  return ot::Coap::CoapSecure::IsConnected(this);
}

uint64_t ot::MeshCoP::SecureTransport::GetMessageInfo(ot::MeshCoP::SecureTransport *this)
{
  return this + 856;
}

{
  return ot::MeshCoP::SecureTransport::GetMessageInfo(this);
}

uint64_t ot::Coap::CoapSecure::Send(ot::Coap::CoapSecure *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  ot::MessageQueue::Enqueue((this + 1176), a2);
  ot::Tasklet::Post((this + 1184));
  return 0;
}

void *ot::Coap::CoapSecure::HandleDtlsConnected(ot::Coap::CoapSecure *this, char a2)
{
  v4 = this;
  v3 = a2;
  return ot::Callback<void (*)(BOOL,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<BOOL &>(this + 143, &v3);
}

void *ot::Callback<void (*)(BOOL,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<BOOL &>(void *result, _BYTE *a2)
{
  if (*result)
  {
    return ot::Callback<void (*)(BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<BOOL &>(result, a2);
  }

  return result;
}

{
  return ot::Callback<void (*)(BOOL,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<BOOL &>(result, a2);
}

void *ot::Callback<void (*)(void *),(ot::CallbackContextPosition)0>::InvokeIfSet<>(void *result)
{
  if (*result)
  {
    return ot::Callback<void (*)(void *),(ot::CallbackContextPosition)0>::Invoke<>(result);
  }

  return result;
}

{
  return ot::Callback<void (*)(void *),(ot::CallbackContextPosition)0>::InvokeIfSet<>(result);
}

void ot::Coap::CoapSecure::HandleDtlsReceive(ot::Coap::CoapSecure *this, char *a2, unsigned __int16 a3)
{
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(this);
  HelpDataReserved = ot::Coap::Message::GetHelpDataReserved(v5);
  v7 = ot::MessagePool::Allocate(v5, 0, HelpDataReserved);
  if (v7 && !ot::Message::AppendBytes(v7, a2, a3))
  {
    MessageInfo = ot::MeshCoP::SecureTransport::GetMessageInfo((this + 144));
    ot::Coap::CoapBase::Receive(this, v7, MessageInfo);
  }

  if (v7)
  {
    ot::Message::Free(v7);
  }
}

uint64_t ot::Coap::Message::GetHelpDataReserved(ot::Coap::Message *this)
{
  return 22;
}

{
  return ot::Coap::Message::GetHelpDataReserved(this);
}

uint64_t ot::TaskletContext::GetContext(ot::TaskletContext *this)
{
  return *(this + 2);
}

{
  return ot::TaskletContext::GetContext(this);
}

void ot::Coap::CoapSecure::HandleTransmit(ot::Coap::CoapSecure *this)
{
  v18 = 0;
  Head = ot::MessageQueue::GetHead((this + 1176));
  if (Head)
  {
    ot::MessageQueue::Dequeue((this + 1176), Head);
    if (ot::MessageQueue::GetHead((this + 1176)))
    {
      ot::Tasklet::Post((this + 1184));
    }

    Length = ot::Message::GetLength(Head);
    v18 = ot::MeshCoP::SecureTransport::Send((this + 144), Head, Length);
  }

  if (v18)
  {
    v2 = ot::ErrorToString(v18);
    ot::Logger::LogAtLevel<(ot::LogLevel)3>("CoapSecure", "Transmit: %s", v3, v4, v5, v6, v7, v8, v2);
    ot::Message::Free(Head);
  }

  else
  {
    v9 = ot::ErrorToString(0);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("CoapSecure", "Transmit: %s", v10, v11, v12, v13, v14, v15, v9);
  }
}

ot::InstanceLocator *ot::Tasklet::Tasklet(ot::InstanceLocator *a1, ot::Instance *a2, uint64_t a3)
{
  ot::InstanceLocator::InstanceLocator(a1, a2);
  result = a1;
  *a1 = a3;
  *(a1 + 1) = 0;
  return result;
}

BOOL ot::MeshCoP::SecureTransport::IsConnected(ot::MeshCoP::SecureTransport *this)
{
  return *this == 4;
}

{
  return ot::MeshCoP::SecureTransport::IsConnected(this);
}

uint64_t ot::Callback<void (*)(BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<BOOL &>(uint64_t a1, _BYTE *a2)
{
  return (*a1)(*a2 & 1, *(a1 + 8));
}

{
  return ot::Callback<void (*)(BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<BOOL &>(a1, a2);
}

uint64_t ot::Callback<void (*)(void *),(ot::CallbackContextPosition)0>::Invoke<>(uint64_t a1)
{
  return (*a1)(*(a1 + 8));
}

{
  return ot::Callback<void (*)(void *),(ot::CallbackContextPosition)0>::Invoke<>(a1);
}

_WORD *ot::Crc16::Crc16(_WORD *a1, __int16 a2)
{
  *a1 = a2;
  ot::Crc16::Init(a1);
  return a1;
}

{
  ot::Crc16::Crc16(a1, a2);
  return a1;
}

uint64_t ot::Crc16::Init(uint64_t this)
{
  *(this + 2) = 0;
  return this;
}

{
  return ot::Crc16::Init(this);
}

_WORD *ot::Crc16::Update(_WORD *this, unsigned __int8 a2)
{
  this[1] ^= a2 << 8;
  v2 = 8;
  do
  {
    if ((this[1] & 0x8000) != 0)
    {
      this[1] = (2 * this[1]) ^ *this;
    }

    else
    {
      this[1] *= 2;
    }

    --v2;
  }

  while (v2);
  return this;
}

const char *ot::ErrorToString(int a1)
{
  if (a1 >= ot::GetArrayLength<char const*,(unsigned short)38>())
  {
    return "UnknownErrorType";
  }

  else
  {
    return ot::ErrorToString(otError)::kErrorStrings[a1];
  }
}

uint64_t ot::GetArrayLength<char const*,(unsigned short)38>()
{
  return 38;
}

{
  return ot::GetArrayLength<char const*,(unsigned short)38>();
}

uint64_t ot::Heap::CAlloc(ot::Heap *this, __int16 a2)
{
  v5 = this;
  Heap = ot::Instance::GetHeap(this);
  return ot::Utils::Heap::CAlloc(Heap, v5, a2);
}

ot::MessagePool *ot::MessagePool::MessagePool(ot::MessagePool *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Pool<ot::Buffer,(unsigned short)256>::Pool(this + 1);
  *(this + 32776) = 0;
  *(this + 32777) = 0;
  bzero(this + 65556, 0x4C00uLL);
  result = this;
  *(this + 85012) = 1;
  return result;
}

{
  ot::MessagePool::MessagePool(this, a2);
  return this;
}

uint64_t *ot::Pool<ot::Buffer,(unsigned short)256>::Pool(uint64_t *a1)
{
  ot::Pool<ot::Buffer,(unsigned short)256>::Pool(a1);
  return a1;
}

{
  ot::OwnedPtr<ot::Message>::OwnedPtr(a1);
  for (i = a1 + 1; i != a1 + 8193; i += 32)
  {
    ot::LinkedList<ot::Buffer>::Push(a1, i);
  }

  return a1;
}

ot::Message *ot::MessagePool::Allocate(ot::MessagePool *a1, char a2, __int16 a3, ot::Message::Settings *a4)
{
  v10 = 0;
  Priority = ot::Message::Settings::GetPriority(a4);
  v9 = ot::MessagePool::NewBuffer(a1, Priority);
  if (v9)
  {
    ot::ClearAllBytes<ot::Message>(v9);
    ot::Message::SetMessagePool(v9, a1);
    ot::Message::SetType(v9, a2);
    ot::Message::SetReserved(v9, a3);
    IsLinkSecurityEnabled = ot::Message::Settings::IsLinkSecurityEnabled(a4);
    ot::Message::SetLinkSecurityEnabled(v9, IsLinkSecurityEnabled);
    ot::Message::SetLoopbackToHostAllowed(v9, 1);
    ot::Message::SetOrigin(v9, 1);
    v6 = ot::Message::Settings::GetPriority(a4);
    v10 = ot::Message::SetPriority(v9, v6);
    if (!v10)
    {
      v10 = ot::Message::SetLength(v9, 0);
    }
  }

  if (v10)
  {
    ot::MessagePool::Free(a1, v9);
    return 0;
  }

  return v9;
}

ot::Buffer *ot::MessagePool::NewBuffer(ot::InstanceLocator *a1, unsigned __int8 a2)
{
  v76 = a1;
  v75 = a2;
  v48 = a1;
  v74 = 0;
  while (1)
  {
    v74 = ot::Pool<ot::Buffer,(unsigned short)256>::Allocate(v48 + 1);
    if (v74)
    {
      break;
    }

    if (ot::MessagePool::ReclaimBuffers(v48, v75))
    {
      goto LABEL_14;
    }
  }

  if (*(v48 + 85012))
  {
    ot::MessagePool::UpdateBufferStats(v48, v74, 1);
  }

  v2 = v48;
  ++*(v48 + 32776);
  v47 = 65554;
  *(v48 + 32777) = ot::Max<unsigned short>(*(v2 + 32777), *(v2 + 32776));
  ot::Buffer::SetNextBuffer(v74, 0);
  FreeBufferCount = ot::MessagePool::GetFreeBufferCount(v48);
  if (256 - FreeBufferCount >= 230 && FreeBufferCount != 26)
  {
    handle_ot_buffer_threshold_captureABC();
  }

  if ((rcpBuffersAvailable & 1) == 1)
  {
    v4 = ot::MessagePool::GetFreeBufferCount(v48);
    if (256 - v4 >= 192 && v4 != 64)
    {
      v46 = v74;
      v5 = ot::MessagePool::GetFreeBufferCount(v48);
      v6 = *(v48 + 32776);
      v7 = *(v48 + 32777);
      v19 = 256;
      v20 = v5;
      v21 = v6;
      v22 = v7;
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("Message", "HIGH_WATER_MARK: Low message buffer : buffer = %p,total buffers = %d, free buffers = %d, allocated buffers = %d, max allocated = %d", v8, v9, v10, v11, v12, v13, v74);
      rcpBuffersAvailable = 0;
    }
  }

  if (ot::MessagePool::GetFreeBufferCount(v48) <= 2)
  {
    update_buff_limit_exceedeed_metric(1);
  }

LABEL_14:
  if (!v74)
  {
    Instance = ot::InstanceLocator::GetInstance(v48);
    otMessageGetBufferInfo(Instance, v49);
    v15 = ot::MessagePool::GetFreeBufferCount(v48);
    v16 = *(v48 + 32777);
    v45 = &v18;
    v19 = v15;
    v20 = v56;
    v21 = v57;
    v22 = v58;
    v23 = v50;
    v24 = v51;
    v25 = v52;
    v26 = v53;
    v27 = v54;
    v28 = v55;
    v29 = v62;
    v30 = v63;
    v31 = v64;
    v32 = v65;
    v33 = v66;
    v34 = v67;
    v35 = v68;
    v36 = v69;
    v37 = v70;
    v38 = v59;
    v39 = v60;
    v40 = v61;
    v41 = v71;
    v42 = v72;
    v43 = v73;
    v44 = v16;
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Message", "No available message buffer : [tot:%d, free:%d], Ip6:[msgs:%u, bufs:%u, totbytes:%u] 6LoSend:[%u, %u, %u] 6LoReas:[%u, %u, %u] mle:[%u, %u, %u,], coap:[%u, %u, %u], coapSec:[%u, %u, %u], mpl:[%u %u %u], applCoap:[%u, %u, %u], max allocated = %d", v33, v33, v65, v30, v30, v62, 0);
  }

  return v74;
}

uint64_t ot::Message::Settings::GetPriority(ot::Message::Settings *this)
{
  return *(this + 1);
}

{
  return ot::Message::Settings::GetPriority(this);
}

void *ot::ClearAllBytes<ot::Message>(void *a1)
{
  return memset(a1, 0, 0x100uLL);
}

{
  return ot::ClearAllBytes<ot::Message>(a1);
}

uint64_t ot::Message::SetMessagePool(ot::Message *this, ot::MessagePool *a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 16) = a2;
  return result;
}

{
  return ot::Message::SetMessagePool(this, a2);
}

uint64_t ot::Message::SetType(ot::Buffer *a1, char a2)
{
  result = ot::Buffer::GetMetadata(a1);
  *(result + 70) = *(result + 70) & 0xFFFFFFF8 | a2 & 7;
  return result;
}

{
  return ot::Message::SetType(a1, a2);
}

uint64_t ot::Message::SetReserved(ot::Message *this, __int16 a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 46) = a2;
  return result;
}

{
  return ot::Message::SetReserved(this, a2);
}

uint64_t ot::Message::SetLinkSecurityEnabled(ot::Message *this, char a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 70) = *(result + 70) & 0xFFFFFEFF | ((a2 & 1) << 8);
  return result;
}

{
  return ot::Message::SetLinkSecurityEnabled(this, a2);
}

uint64_t ot::Message::Settings::IsLinkSecurityEnabled(ot::Message::Settings *this)
{
  return *this & 1;
}

{
  return ot::Message::Settings::IsLinkSecurityEnabled(this);
}

uint64_t ot::Message::SetPriority(ot::Message *a1, unsigned __int8 a2)
{
  v8 = 0;
  if (a2 < 4u)
  {
    if (ot::Message::IsInAQueue(a1))
    {
      if (((*(ot::Buffer::GetMetadata(a1) + 70) >> 9) & 3) != a2)
      {
        PriorityQueue = ot::Message::GetPriorityQueue(a1);
        if (PriorityQueue)
        {
          ot::PriorityQueue::Dequeue(PriorityQueue, a1);
        }

        Metadata = ot::Buffer::GetMetadata(a1);
        *(Metadata + 70) = *(Metadata + 70) & 0xFFFFF9FF | ((a2 & 3) << 9);
        if (PriorityQueue)
        {
          ot::PriorityQueue::Enqueue(PriorityQueue, a1);
        }
      }
    }

    else
    {
      v2 = ot::Buffer::GetMetadata(a1);
      *(v2 + 70) = *(v2 + 70) & 0xFFFFF9FF | ((a2 & 3) << 9);
    }
  }

  else
  {
    return 7;
  }

  return v8;
}

uint64_t ot::Message::SetLength(ot::Message *this, unsigned __int16 a2)
{
  v4 = (ot::Message::GetReserved(this) + a2);
  if (v4 >= ot::Message::GetReserved(this))
  {
    v5 = ot::Message::ResizeMessage(this, v4);
    if (!v5)
    {
      *(ot::Buffer::GetMetadata(this) + 48) = a2;
      if (ot::Message::GetOffset(this) > a2)
      {
        ot::Message::SetOffset(this, a2);
      }
    }
  }

  else
  {
    return 7;
  }

  return v5;
}

void ot::MessagePool::Free(ot::MessagePool *this, ot::Message *a2)
{
  v3 = 0;
  if (!*ot::Message::Next(a2))
  {
    v3 = *ot::Message::Prev(a2) == 0;
  }

  if (!v3)
  {
    __assert_rtn("Free", "message.cpp", 129, "aMessage->Next() == nullptr && aMessage->Prev() == nullptr");
  }

  ot::MessagePool::FreeBuffers(this, a2);
}

uint64_t ot::Message::Prev(ot::Message *this)
{
  return ot::Buffer::GetMetadata(this) + 8;
}

{
  return ot::Message::Prev(this);
}

void ot::MessagePool::FreeBuffers(ot::MessagePool *this, ot::Buffer *a2)
{
  while (a2)
  {
    NextBuffer = ot::Buffer::GetNextBuffer(a2);
    ot::Pool<ot::Buffer,(unsigned short)256>::Free(this + 1, a2);
    if (*(this + 85012))
    {
      ot::MessagePool::UpdateBufferStats(this, a2, 0);
    }

    --*(this + 32776);
    if ((rcpBuffersAvailable & 1) == 0 && (256 - ot::MessagePool::GetFreeBufferCount(this)) < 115)
    {
      ot::MessagePool::GetFreeBufferCount(this);
      v8 = *(this + 32776);
      v9 = *(this + 32777);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("Message", "LOW_WATER_MARK: allocated buffers = %d, free buffers = %d, allocated buffers=%d, max allocated=%d", v2, v3, v4, v5, v6, v7, 0);
      rcpBuffersAvailable = 1;
    }

    a2 = NextBuffer;
  }
}

uint64_t ot::Pool<ot::Buffer,(unsigned short)256>::Allocate(uint64_t *a1)
{
  return ot::LinkedList<ot::Buffer>::Pop(a1);
}

{
  return ot::Pool<ot::Buffer,(unsigned short)256>::Allocate(a1);
}

uint64_t ot::MessagePool::ReclaimBuffers(ot::InstanceLocator *a1, unsigned __int8 a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
  v6 = ot::MeshForwarder::EvictMessage(v2, a2);
  if (v6 == 23)
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
    return ot::Coap::CoapBase::EvictMessage(v3);
  }

  return v6;
}

uint64_t ot::MessagePool::UpdateBufferStats(ot::MessagePool *this, const ot::Buffer *a2, char a3)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  IndexOf = ot::MessagePool::GetIndexOf(this, a2);
  *(this + 76 * IndexOf + 65564) = v10 & 1;
  gettimeofday(&v8, 0);
  tv_sec = v8.tv_sec;
  tv_usec = v8.tv_usec;
  memset(v13, 0, sizeof(v13));
  v3 = localtime(&tv_sec);
  strftime(v13, 0x20uLL, "%Y-%m-%d %H:%M:%S", v3);
  if (v10)
  {
    ++*(this + 19 * IndexOf + 16389);
    return snprintf(this + 76 * IndexOf + 65565, 0x20uLL, "%s.%06d", v13, tv_usec);
  }

  else
  {
    ++*(this + 19 * IndexOf + 16390);
    return snprintf(this + 76 * IndexOf + 65597, 0x20uLL, "%s.%06d", v13, tv_usec);
  }
}

uint64_t ot::Max<unsigned short>(unsigned __int16 a1, unsigned __int16 a2)
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
  return ot::Max<unsigned short>(a1, a2);
}

void *ot::Buffer::SetNextBuffer(ot::Buffer *this, ot::Buffer *a2)
{
  return ot::LinkedListEntry<ot::Buffer>::SetNext(this, a2);
}

{
  return ot::Buffer::SetNextBuffer(this, a2);
}

uint64_t ot::Buffer::GetNextBuffer(ot::Buffer *this)
{
  return ot::LinkedListEntry<ot::Buffer>::GetNext(this);
}

{
  return ot::LinkedListEntry<ot::Buffer>::GetNext(this);
}

{
  return ot::Buffer::GetNextBuffer(this);
}

{
  return ot::Buffer::GetNextBuffer(this);
}

void *ot::Pool<ot::Buffer,(unsigned short)256>::Free(uint64_t *a1, void *a2)
{
  return ot::LinkedList<ot::Buffer>::Push(a1, a2);
}

{
  return ot::Pool<ot::Buffer,(unsigned short)256>::Free(a1, a2);
}

void ot::MessagePool::ReclaimAllBuffers(ot::MessagePool *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  ot::Coap::CoapBase::ClearRequestsAndResponses(v1);
  ot::MessagePool::GetFreeBufferCount(this);
  v8 = *(this + 32776);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Message", "ReclaimAllBuff:Total[%d],free[%d],allocated[%d]", v2, v3, v4, v5, v6, v7, 0);
}

uint64_t ot::MessagePool::GetIndexOf(ot::MessagePool *this, const ot::Buffer *a2)
{
  return ot::Pool<ot::Buffer,(unsigned short)256>::GetIndexOf(this + 8, a2);
}

{
  return ot::MessagePool::GetIndexOf(this, a2);
}

uint64_t ot::MessagePool::ResetBufferStats(uint64_t this)
{
  for (i = 0; i < 0x100u; ++i)
  {
    *(this + 65556 + 76 * i) -= *(this + 65556 + 76 * i + 4);
    v1 = this + 65556 + 76 * i;
    *(v1 + 4);
    *(v1 + 4) = 0;
    *(v1 + 41) = 0u;
    *(v1 + 57) = 0u;
    if (!*v1)
    {
      v2 = this + 65556 + 76 * i;
      *(v2 + 9) = 0u;
      *(v2 + 25) = 0u;
    }
  }

  return this;
}

BOOL *ot::Message::Settings::Settings(BOOL *result, char a2, BOOL a3)
{
  *result = (a2 & 1) != 0;
  result[1] = a3;
  return result;
}

void *ot::Message::Settings::From(uint64_t a1)
{
  if (a1)
  {
    return ot::AsCoreType<otMessageSettings>(a1);
  }

  else
  {
    return ot::Message::Settings::GetDefault(0);
  }
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otMessageSettings>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

uint64_t ot::Message::Iterator::Advance(ot::Message::Iterator *this, ot::Message *a2)
{
  *this = *(this + 1);
  result = ot::Message::Iterator::NextMessage(*(this + 1), a2);
  *(this + 1) = result;
  return result;
}

uint64_t ot::Message::GetBufferIDs(ot::Message *this, unsigned __int16 a2, unsigned __int16 a3, char *a4)
{
  NextBuffer = this;
  v10 = 1;
  snprintf(a4, 0x400uLL, ", BufIDs:");
  if (a2 <= 0xA8u || a2 + a3 <= 0xA8)
  {
    v4 = ot::GetProvider<ot::Message>::Get<ot::MessagePool>(this);
    IndexOf = ot::MessagePool::GetIndexOf(v4, NextBuffer);
    v5 = strlen(a4);
    snprintf(&a4[v5], 1024 - v5, "%u", IndexOf);
    v10 = 0;
  }

  for (i = 168; ; i += 248)
  {
    result = ot::Buffer::GetNextBuffer(NextBuffer);
    if (!result)
    {
      break;
    }

    NextBuffer = ot::Buffer::GetNextBuffer(NextBuffer);
    if (a2 >= i && a2 <= i + 248 || a2 + a3 >= i && a2 + a3 <= i + 248)
    {
      v7 = ot::GetProvider<ot::Message>::Get<ot::MessagePool>(this);
      v14 = ot::MessagePool::GetIndexOf(v7, NextBuffer);
      v11 = strlen(a4);
      v8 = "";
      if ((v10 & 1) == 0)
      {
        v8 = ",";
      }

      snprintf(&a4[v11], 1024 - v11, "%s%u", v8, v14);
      v10 = 0;
    }
  }

  return result;
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::MessagePool>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::MessagePool>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::MessagePool>(a1);
}

uint64_t ot::Message::GetBufferIDs(ot::Message *this, char *a2)
{
  NextBuffer = this;
  v2 = ot::GetProvider<ot::Message>::Get<ot::MessagePool>(this);
  IndexOf = ot::MessagePool::GetIndexOf(v2, NextBuffer);
  snprintf(a2, 0x400uLL, ", BufIDs:%u", IndexOf);
  while (1)
  {
    result = ot::Buffer::GetNextBuffer(NextBuffer);
    if (!result)
    {
      break;
    }

    NextBuffer = ot::Buffer::GetNextBuffer(NextBuffer);
    v5 = ot::GetProvider<ot::Message>::Get<ot::MessagePool>(this);
    v8 = ot::MessagePool::GetIndexOf(v5, NextBuffer);
    v6 = strlen(a2);
    snprintf(&a2[v6], 1024 - v6, ",%u", v8);
  }

  return result;
}

uint64_t ot::Message::ResizeMessage(ot::Message *this, unsigned __int16 a2)
{
  v12 = 0;
  NextBuffer = this;
  for (i = 168; i < a2; i += 248)
  {
    if (!ot::Buffer::GetNextBuffer(NextBuffer))
    {
      MessagePool = ot::Message::GetMessagePool(this);
      Priority = ot::Message::GetPriority(this);
      v3 = ot::MessagePool::NewBuffer(MessagePool, Priority);
      ot::Buffer::SetNextBuffer(NextBuffer, v3);
      if (!ot::Buffer::GetNextBuffer(NextBuffer))
      {
        return 3;
      }
    }

    NextBuffer = ot::Buffer::GetNextBuffer(NextBuffer);
  }

  v9 = NextBuffer;
  v11 = ot::Buffer::GetNextBuffer(NextBuffer);
  ot::Buffer::SetNextBuffer(v9, 0);
  v4 = ot::Message::GetMessagePool(this);
  ot::MessagePool::FreeBuffers(v4, v11);
  return v12;
}

uint64_t ot::Message::GetNext(ot::Message *this)
{
  if ((*(ot::Buffer::GetMetadata(this) + 70) & 0x800) != 0)
  {
    PriorityQueue = ot::Message::GetPriorityQueue(this);
    if (!PriorityQueue)
    {
      return 0;
    }

    ot::PriorityQueue::GetTail(PriorityQueue);
    Tail = v1;
  }

  else
  {
    MessageQueue = ot::Message::GetMessageQueue(this);
    if (!MessageQueue)
    {
      return 0;
    }

    Tail = ot::MessageQueue::GetTail(MessageQueue);
  }

  if (this == Tail)
  {
    return 0;
  }

  else
  {
    return *ot::Message::Next(this);
  }
}

uint64_t ot::Message::GetPriorityQueue(ot::Message *this)
{
  if ((*(ot::Buffer::GetMetadata(this) + 70) & 0x800) != 0)
  {
    return *(ot::Buffer::GetMetadata(this) + 24);
  }

  else
  {
    return 0;
  }
}

{
  return ot::Message::GetPriorityQueue(this);
}

void ot::PriorityQueue::GetTail(ot::PriorityQueue *this)
{
  ot::AsConst<ot::PriorityQueue>();
  ot::PriorityQueue::GetTail(v1);
  ot::AsNonConst<ot::Message>();
}

{
  ot::PriorityQueue::GetTail(this);
}

uint64_t ot::Message::SetOffset(ot::Message *this, unsigned __int16 a2)
{
  if (a2 > ot::Message::GetLength(this))
  {
    __assert_rtn("SetOffset", "message.cpp", 525, "aOffset <= GetLength()");
  }

  result = ot::Buffer::GetMetadata(this);
  *(result + 50) = a2;
  return result;
}

uint64_t ot::Message::GetBufferCount(ot::Message *this)
{
  v3 = 1;
  for (i = ot::Buffer::GetNextBuffer(this); i; i = ot::Buffer::GetNextBuffer(i))
  {
    ++v3;
  }

  return v3;
}

uint64_t ot::Message::MoveOffset(ot::Message *this, int a2)
{
  v7 = a2;
  v6 = ot::Message::GetOffset(this) + a2;
  if (v6 > ot::Message::GetLength(this))
  {
    __assert_rtn("MoveOffset", "message.cpp", 518, "GetOffset() + aDelta <= GetLength()");
  }

  Metadata = ot::Buffer::GetMetadata(this);
  *(Metadata + 50) += v7;
  v4 = *(ot::Buffer::GetMetadata(this) + 50);
  result = ot::Message::GetLength(this);
  if (v4 > result)
  {
    __assert_rtn("MoveOffset", "message.cpp", 520, "GetMetadata().mOffset <= GetLength()");
  }

  return result;
}

BOOL ot::Message::IsInAQueue(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 24) != 0;
}

{
  return ot::Message::IsInAQueue(this);
}

uint64_t ot::PriorityQueue::Dequeue(ot::PriorityQueue *this, ot::Message *a2)
{
  if (ot::Message::GetPriorityQueue(a2) != this)
  {
    __assert_rtn("Dequeue", "message.cpp", 1281, "aMessage.GetPriorityQueue() == this");
  }

  Priority = ot::Message::GetPriority(a2);
  v8 = *(this + Priority);
  if (a2 == v8)
  {
    v9 = *ot::Message::Prev(v8);
    if (a2 == v9 || ot::Message::GetPriority(v9) != Priority)
    {
      v9 = 0;
    }

    *(this + Priority) = v9;
  }

  v5 = *ot::Message::Prev(a2);
  v2 = ot::Message::Next(a2);
  *ot::Message::Prev(*v2) = v5;
  v6 = *ot::Message::Next(a2);
  v3 = ot::Message::Prev(a2);
  *ot::Message::Next(*v3) = v6;
  *ot::Message::Next(a2) = 0;
  *ot::Message::Prev(a2) = 0;
  return ot::Message::SetPriorityQueue(a2, 0);
}

void *ot::PriorityQueue::Enqueue(ot::PriorityQueue *this, ot::Message *a2)
{
  if (ot::Message::IsInAQueue(a2))
  {
    __assert_rtn("Enqueue", "message.cpp", 1250, "!aMessage.IsInAQueue()");
  }

  ot::Message::SetPriorityQueue(a2, this);
  Priority = ot::Message::GetPriority(a2);
  ot::PriorityQueue::FindFirstNonNullTail(this, Priority);
  v6 = v2;
  if (v2)
  {
    v4 = *ot::Message::Next(v2);
    *ot::Message::Next(a2) = v4;
    *ot::Message::Prev(a2) = v6;
    *ot::Message::Prev(v4) = a2;
    result = ot::Message::Next(v6);
  }

  else
  {
    *ot::Message::Next(a2) = a2;
    result = ot::Message::Prev(a2);
  }

  *result = a2;
  *(this + Priority) = a2;
  return result;
}

uint64_t ot::Message::AppendBytes(ot::Message *this, char *a2, unsigned __int16 a3)
{
  Length = ot::Message::GetLength(this);
  v3 = ot::Message::GetLength(this);
  v7 = ot::Message::SetLength(this, v3 + a3);
  if (!v7)
  {
    ot::Message::WriteBytes(this, Length, a2, a3);
  }

  return v7;
}

uint64_t ot::Message::WriteBytes(ot::Message *this, unsigned __int16 a2, char *a3, unsigned __int16 a4)
{
  v16 = this;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a3;
  if (a2 + a4 > ot::Message::GetLength(this))
  {
    __assert_rtn("WriteBytes", "message.cpp", 927, "aOffset + aLength <= GetLength()");
  }

  ot::Message::GetFirstChunk(this, v15, &v13, v11);
  while (1)
  {
    result = ot::Data<(ot::DataLengthType)1>::GetLength(v11);
    if (result <= 0)
    {
      break;
    }

    ot::Message::MutableChunk::GetBytes(v11);
    __dst = v5;
    __src = v12;
    Length = ot::Data<(ot::DataLengthType)1>::GetLength(v11);
    memmove(__dst, __src, Length);
    v7 = ot::Data<(ot::DataLengthType)1>::GetLength(v11);
    v12 += v7;
    ot::Message::GetNextChunk(this, &v13, v11);
  }

  return result;
}

uint64_t ot::Message::AppendBytesFromMessage(ot::Message *this, const ot::Message *a2, const ot::OffsetRange *a3)
{
  Offset = ot::OffsetRange::GetOffset(a3);
  Length = ot::OffsetRange::GetLength(a3);
  return ot::Message::AppendBytesFromMessage(this, a2, Offset, Length);
}

uint64_t ot::Message::AppendBytesFromMessage(ot::Message *this, const ot::Message *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v17 = this;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  *&v13[4] = 0;
  *v13 = ot::Message::GetLength(this);
  if (ot::Message::GetLength(v16) < v15 + v14)
  {
    *&v13[2] = 6;
  }

  else
  {
    Length = ot::Message::GetLength(this);
    v5 = ot::Message::SetLength(this, Length + v14);
    *&v13[2] = v5;
    if (!v5)
    {
      ot::Message::GetFirstChunk(v16, v15, &v14, v12);
      while (ot::Data<(ot::DataLengthType)1>::GetLength(v12) > 0)
      {
        v9 = *v13;
        Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(v12);
        v6 = ot::Data<(ot::DataLengthType)1>::GetLength(v12);
        ot::Message::WriteBytes(this, v9, Bytes, v6);
        v7 = ot::Data<(ot::DataLengthType)1>::GetLength(v12);
        *v13 += v7;
        ot::Message::GetNextChunk(v16, &v14, v12);
      }
    }
  }

  return *&v13[2];
}

uint64_t ot::OffsetRange::GetOffset(ot::OffsetRange *this)
{
  return *this;
}

{
  return ot::OffsetRange::GetOffset(this);
}

uint64_t ot::Message::GetFirstChunk(ot::Message *this, unsigned __int16 a2, unsigned __int16 *a3, ot::Message::Chunk *a4)
{
  if (a2 < ot::Message::GetLength(this))
  {
    v10 = a2 + *a3;
    if (v10 >= ot::Message::GetLength(this))
    {
      *a3 = ot::Message::GetLength(this) - a2;
    }

    v15 = a2 + ot::Message::GetReserved(this);
    ot::Message::Chunk::SetBuffer(a4, this);
    if (v15 < 0xA8u)
    {
      FirstData = ot::Buffer::GetFirstData(this);
      ot::Data<(ot::DataLengthType)1>::Init(a4, FirstData + v15, 168 - v15);
    }

    else
    {
      for (i = v15 - 168; ; i -= 248)
      {
        Buffer = ot::Message::Chunk::GetBuffer(a4);
        NextBuffer = ot::Buffer::GetNextBuffer(Buffer);
        ot::Message::Chunk::SetBuffer(a4, NextBuffer);
        if (!ot::Message::Chunk::GetBuffer(a4))
        {
          __assert_rtn("GetFirstChunk", "message.cpp", 794, "aChunk.GetBuffer() != nullptr");
        }

        if (i < 0xF8u)
        {
          break;
        }
      }

      v7 = ot::Message::Chunk::GetBuffer(a4);
      Data = ot::Buffer::GetData(v7);
      ot::Data<(ot::DataLengthType)1>::Init(a4, Data + i, 248 - i);
    }
  }

  else
  {
    ot::Data<(ot::DataLengthType)1>::SetLength(a4, 0);
  }

  if (ot::Data<(ot::DataLengthType)1>::GetLength(a4) > *a3)
  {
    ot::Data<(ot::DataLengthType)1>::SetLength(a4, *a3);
  }

  result = ot::Data<(ot::DataLengthType)1>::GetLength(a4);
  *a3 -= result;
  return result;
}

uint64_t ot::Data<(ot::DataLengthType)1>::GetBytes(uint64_t a1)
{
  return *a1;
}

{
  return ot::Data<(ot::DataLengthType)1>::GetBytes(a1);
}

uint64_t ot::Message::GetNextChunk(ot::Message *this, unsigned __int16 *a2, ot::Message::Chunk *a3)
{
  if (!*a2)
  {
    return ot::Data<(ot::DataLengthType)1>::SetLength(a3, 0);
  }

  Buffer = ot::Message::Chunk::GetBuffer(a3);
  NextBuffer = ot::Buffer::GetNextBuffer(Buffer);
  ot::Message::Chunk::SetBuffer(a3, NextBuffer);
  if (!ot::Message::Chunk::GetBuffer(a3))
  {
    __assert_rtn("GetNextChunk", "message.cpp", 826, "aChunk.GetBuffer() != nullptr");
  }

  v6 = ot::Message::Chunk::GetBuffer(a3);
  Data = ot::Buffer::GetData(v6);
  ot::Data<(ot::DataLengthType)1>::Init(a3, Data, 248);
  if (ot::Data<(ot::DataLengthType)1>::GetLength(a3) > *a2)
  {
    ot::Data<(ot::DataLengthType)1>::SetLength(a3, *a2);
  }

  result = ot::Data<(ot::DataLengthType)1>::GetLength(a3);
  *a2 -= result;
  return result;
}

uint64_t ot::Message::PrependBytes(ot::Message *this, char *a2, unsigned __int16 a3)
{
  v16 = 0;
  while (a3 > ot::Message::GetReserved(this))
  {
    MessagePool = ot::Message::GetMessagePool(this);
    Priority = ot::Message::GetPriority(this);
    v15 = ot::MessagePool::NewBuffer(MessagePool, Priority);
    if (!v15)
    {
      return 3;
    }

    NextBuffer = ot::Buffer::GetNextBuffer(this);
    ot::Buffer::SetNextBuffer(v15, NextBuffer);
    ot::Buffer::SetNextBuffer(this, v15);
    if (ot::Message::GetReserved(this) < 0xA8uLL)
    {
      __dst = v15 + ot::Message::GetReserved(this) + 88;
      __src = this + ot::Message::GetReserved(this) + 88;
      Reserved = ot::Message::GetReserved(this);
      memcpy(__dst, __src, 168 - Reserved);
    }

    v6 = ot::Message::GetReserved(this);
    ot::Message::SetReserved(this, v6 + 248);
  }

  v7 = ot::Message::GetReserved(this);
  ot::Message::SetReserved(this, v7 - a3);
  Metadata = ot::Buffer::GetMetadata(this);
  *(Metadata + 48) += a3;
  Offset = ot::Message::GetOffset(this);
  ot::Message::SetOffset(this, Offset + a3);
  if (a2)
  {
    ot::Message::WriteBytes(this, 0, a2, a3);
  }

  return v16;
}

uint64_t ot::Message::RemoveHeader(ot::Message *this, unsigned __int16 a2)
{
  if (a2 > *(ot::Buffer::GetMetadata(this) + 48))
  {
    __assert_rtn("RemoveHeader", "message.cpp", 680, "aLength <= GetMetadata().mLength");
  }

  Metadata = ot::Buffer::GetMetadata(this);
  *(Metadata + 46) += a2;
  v3 = ot::Buffer::GetMetadata(this);
  *(v3 + 48) -= a2;
  if (*(ot::Buffer::GetMetadata(this) + 50) <= a2)
  {
    result = ot::Buffer::GetMetadata(this);
    *(result + 50) = 0;
  }

  else
  {
    result = ot::Buffer::GetMetadata(this);
    *(result + 50) -= a2;
  }

  return result;
}

const ot::Message *ot::Message::WriteBytesFromMessage(const ot::Message *this, unsigned __int16 a2, const ot::Message *a3, unsigned __int16 a4, unsigned __int16 a5)
{
  v16 = this;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v9 = this;
  if (a3 == this && v13 < v15)
  {
    v15 += v12;
    v13 += v12;
    while (v12)
    {
      v10 = ot::Min<unsigned short>(0x20u, v12);
      v12 -= v10;
      v13 -= v10;
      v15 -= v10;
      ot::Message::ReadBytes(v9, v13, v17, v10);
      this = ot::Message::WriteBytes(v9, v15, v17, v10);
    }
  }

  else
  {
    ot::Message::GetFirstChunk(v14, v13, &v12, v11);
    while (1)
    {
      this = ot::Data<(ot::DataLengthType)1>::GetLength(v11);
      if (this <= 0)
      {
        break;
      }

      v7 = v15;
      Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(v11);
      Length = ot::Data<(ot::DataLengthType)1>::GetLength(v11);
      ot::Message::WriteBytes(v9, v7, Bytes, Length);
      v6 = ot::Data<(ot::DataLengthType)1>::GetLength(v11);
      v15 += v6;
      ot::Message::GetNextChunk(v14, &v12, v11);
    }
  }

  return this;
}

uint64_t ot::Message::InsertHeader(ot::Message *this, unsigned __int16 a2, unsigned __int16 a3)
{
  v5 = ot::Message::PrependBytes(this, 0, a3);
  if (!v5)
  {
    ot::Message::WriteBytesFromMessage(this, 0, this, a3, a2);
  }

  return v5;
}

void ot::Message::RemoveFooter(ot::Message *this, unsigned __int16 a2)
{
  Length = ot::Message::GetLength(this);
  v2 = ot::Message::GetLength(this);
  v3 = ot::Min<unsigned short>(a2, v2);
  ot::Message::SetLength(this, Length - v3);
  IgnoreError();
}

uint64_t ot::Data<(ot::DataLengthType)1>::SetLength(uint64_t result, __int16 a2)
{
  *(result + 8) = a2;
  return result;
}

{
  return ot::Data<(ot::DataLengthType)1>::SetLength(result, a2);
}

uint64_t ot::Message::Chunk::SetBuffer(uint64_t this, const ot::Buffer *a2)
{
  *(this + 16) = a2;
  return this;
}

{
  return ot::Message::Chunk::SetBuffer(this, a2);
}

uint64_t ot::Message::Chunk::GetBuffer(ot::Message::Chunk *this)
{
  return *(this + 2);
}

{
  return ot::Message::Chunk::GetBuffer(this);
}

uint64_t ot::Buffer::GetData(ot::Buffer *this)
{
  return this + 8;
}

{
  return ot::Buffer::GetData(this);
}

uint64_t ot::Message::ReadBytes(ot::Message *this, unsigned __int16 a2, char *a3, unsigned __int16 a4)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a3;
  ot::Message::GetFirstChunk(this, a2, &v9, v7);
  while (ot::Data<(ot::DataLengthType)1>::GetLength(v7) > 0)
  {
    ot::Data<(ot::DataLengthType)1>::CopyBytesTo(v7, v8);
    Length = ot::Data<(ot::DataLengthType)1>::GetLength(v7);
    v8 += Length;
    ot::Message::GetNextChunk(this, &v9, v7);
  }

  return (v8 - v10);
}

void *ot::Data<(ot::DataLengthType)1>::CopyBytesTo(uint64_t a1, void *a2)
{
  return memcpy(a2, *a1, *(a1 + 8));
}

{
  return ot::Data<(ot::DataLengthType)1>::CopyBytesTo(a1, a2);
}

uint64_t ot::Message::ReadBytes(ot::Message *this, const ot::OffsetRange *a2, char *a3)
{
  Offset = ot::OffsetRange::GetOffset(a2);
  Length = ot::OffsetRange::GetLength(a2);
  return ot::Message::ReadBytes(this, Offset, a3, Length);
}

uint64_t ot::Message::Read(ot::Message *this, unsigned __int16 a2, char *a3, unsigned __int16 a4)
{
  if (ot::Message::ReadBytes(this, a2, a3, a4) == a4)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

uint64_t ot::Message::Read(ot::Message *this, const ot::OffsetRange *a2, char *a3, unsigned __int16 a4)
{
  v7 = 0;
  if (ot::OffsetRange::Contains(a2, a4))
  {
    Offset = ot::OffsetRange::GetOffset(a2);
    if (ot::Message::ReadBytes(this, Offset, a3, a4) != a4)
    {
      return 6;
    }
  }

  else
  {
    return 6;
  }

  return v7;
}

BOOL ot::OffsetRange::Contains(ot::OffsetRange *this, unsigned int a2)
{
  return a2 <= *(this + 1);
}

{
  return ot::OffsetRange::Contains(this, a2);
}

BOOL ot::Message::CompareBytes(ot::Message *this, unsigned __int16 a2, const unsigned __int8 *a3, unsigned __int16 a4, BOOL (*a5)(unsigned __int8, unsigned __int8))
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = a4;
  v12 = a3;
  ot::Message::GetFirstChunk(this, a2, &v15, v11);
  while (ot::Data<(ot::DataLengthType)1>::GetLength(v11) > 0 && (ot::Data<(ot::DataLengthType)1>::MatchesBytesIn(v11, v12, v14, v5, v6) & 1) != 0)
  {
    Length = ot::Data<(ot::DataLengthType)1>::GetLength(v11);
    v12 += Length;
    v8 = ot::Data<(ot::DataLengthType)1>::GetLength(v11);
    v13 -= v8;
    ot::Message::GetNextChunk(this, &v15, v11);
  }

  return v13 == 0;
}

uint64_t ot::Data<(ot::DataLengthType)1>::MatchesBytesIn(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, uint64_t a4, BOOL (*a5)(unsigned __int8, unsigned __int8))
{
  return ot::DataUtils::MatchBytes(*a1, a2, *(a1 + 8), a3, a5);
}

{
  return ot::Data<(ot::DataLengthType)1>::MatchesBytesIn(a1, a2, a3, a4, a5);
}

BOOL ot::Message::CompareBytes(ot::Message *this, unsigned __int16 a2, const ot::Message *a3, unsigned __int16 a4, unsigned __int16 a5, BOOL (*a6)(unsigned __int8, unsigned __int8))
{
  v21 = this;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  v15 = a5;
  ot::Message::GetFirstChunk(this, a2, &v17, v14);
  while (ot::Data<(ot::DataLengthType)1>::GetLength(v14) > 0)
  {
    v12 = v19;
    v10 = v18;
    Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(v14);
    Length = ot::Data<(ot::DataLengthType)1>::GetLength(v14);
    if (!ot::Message::CompareBytes(v12, v10, Bytes, Length, v16))
    {
      break;
    }

    v7 = ot::Data<(ot::DataLengthType)1>::GetLength(v14);
    v18 += v7;
    v8 = ot::Data<(ot::DataLengthType)1>::GetLength(v14);
    v15 -= v8;
    ot::Message::GetNextChunk(this, &v17, v14);
  }

  return v15 == 0;
}

uint64_t ot::Message::GetFirstChunk(ot::Message *this, unsigned __int16 a2, unsigned __int16 *a3, ot::Message::MutableChunk *a4)
{
  ot::AsConst<ot::Message>();
  return ot::Message::GetFirstChunk(v4, a2, a3, a4);
}

{
  return ot::Message::GetFirstChunk(this, a2, a3, a4);
}

void ot::Message::MutableChunk::GetBytes(ot::Message::MutableChunk *this)
{
  ot::Data<(ot::DataLengthType)1>::GetBytes(this);
  ot::AsNonConst<unsigned char>();
}

{
  ot::Message::MutableChunk::GetBytes(this);
}

uint64_t ot::Message::GetNextChunk(ot::Message *this, unsigned __int16 *a2, ot::Message::MutableChunk *a3)
{
  ot::AsConst<ot::Message>();
  return ot::Message::GetNextChunk(v3, a2, a3);
}

{
  return ot::Message::GetNextChunk(this, a2, a3);
}

ot::Message *ot::Message::Clone(ot::Message *this, unsigned __int16 a2)
{
  v34 = this;
  v33 = a2;
  appended = 0;
  v31 = 0;
  v24 = (ot::Message::IsLinkSecurityEnabled(this) & 1) != 0;
  Priority = ot::Message::GetPriority(this);
  ot::Message::Settings::Settings(v30, v24, Priority);
  Length = ot::Message::GetLength(this);
  v33 = ot::Min<unsigned short>(Length, v33);
  MessagePool = ot::Message::GetMessagePool(this);
  Type = ot::Message::GetType(this);
  Reserved = ot::Message::GetReserved(this);
  v31 = ot::MessagePool::Allocate(MessagePool, Type, Reserved, v30);
  if (v31)
  {
    appended = ot::Message::AppendBytesFromMessage(v31, this, 0, v33);
    if (!appended)
    {
      Offset = ot::Message::GetOffset(this);
      v29 = ot::Min<unsigned short>(Offset, v33);
      ot::Message::SetOffset(v31, v29);
      v15 = v31;
      SubType = ot::Message::GetSubType(this);
      ot::Message::SetSubType(v15, SubType);
      v16 = v31;
      IsLoopbackToHostAllowed = ot::Message::IsLoopbackToHostAllowed(this);
      ot::Message::SetLoopbackToHostAllowed(v16, IsLoopbackToHostAllowed);
      v17 = v31;
      Origin = ot::Message::GetOrigin(this);
      ot::Message::SetOrigin(v17, Origin);
      v18 = v31;
      Timestamp = ot::Message::GetTimestamp(this);
      ot::Message::SetTimestamp(v18, Timestamp);
      v19 = v31;
      MeshDest = ot::Message::GetMeshDest(this);
      ot::Message::SetMeshDest(v19, MeshDest);
      v20 = v31;
      PanId = ot::Message::GetPanId(this);
      ot::Message::SetPanId(v20, PanId);
      v21 = v31;
      Channel = ot::Message::GetChannel(this);
      ot::Message::SetChannel(v21, Channel);
      v22 = v31;
      RssAverager = ot::Message::GetRssAverager(this);
      ot::Message::SetRssAverager(v22, RssAverager);
      v23 = v31;
      LqiAverager = ot::Message::GetLqiAverager(this);
      ot::Message::SetLqiAverager(v23, LqiAverager);
    }
  }

  else
  {
    appended = 3;
  }

  if (appended && v31)
  {
    ot::Message::Free(v31);
    return 0;
  }

  return v31;
}

uint64_t ot::Message::SetSubType(ot::Buffer *a1, char a2)
{
  result = ot::Buffer::GetMetadata(a1);
  *(result + 70) = *(result + 70) & 0xFFFFFF87 | (8 * (a2 & 0xF));
  return result;
}

{
  return ot::Message::SetSubType(a1, a2);
}

uint64_t ot::Message::GetSubType(ot::Message *this)
{
  return (*(ot::Buffer::GetMetadata(this) + 70) >> 3) & 0xF;
}

{
  return ot::Message::GetSubType(this);
}

uint64_t ot::Message::GetTimestamp(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 36);
}

{
  return ot::Message::GetTimestamp(this);
}

uint64_t ot::Message::SetMeshDest(ot::Message *this, __int16 a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 52) = a2;
  return result;
}

{
  return ot::Message::SetMeshDest(this, a2);
}

uint64_t ot::Message::GetMeshDest(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 52);
}

{
  return ot::Message::GetMeshDest(this);
}

uint64_t ot::Message::SetPanId(ot::Message *this, __int16 a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 54) = a2;
  return result;
}

{
  return ot::Message::SetPanId(this, a2);
}

uint64_t ot::Message::GetPanId(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 54);
}

{
  return ot::Message::GetPanId(this);
}

uint64_t ot::Message::SetChannel(ot::Message *this, char a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 56) = a2;
  return result;
}

{
  return ot::Message::SetChannel(this, a2);
}

uint64_t ot::Message::GetChannel(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 56);
}

{
  return ot::Message::GetChannel(this);
}

uint64_t ot::Message::SetRssAverager(ot::Message *this, const ot::RssAverager *a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 58) = *a2;
  return result;
}

{
  return ot::Message::SetRssAverager(this, a2);
}

uint64_t ot::Message::SetLqiAverager(ot::Message *this, const ot::LqiAverager *a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 60) = *a2;
  return result;
}

{
  return ot::Message::SetLqiAverager(this, a2);
}

uint64_t ot::Message::GetLqiAverager(ot::Message *this)
{
  return ot::Buffer::GetMetadata(this) + 60;
}

{
  return ot::Message::GetLqiAverager(this);
}

BOOL ot::BitVector<(unsigned short)64>::Get(uint64_t a1, unsigned __int16 a2)
{
  if (a2 >= 0x40u)
  {
    __assert_rtn("Get", "bit_vector.hpp", 77, "aIndex < N");
  }

  return (*(a1 + a2 / 8) & (128 >> (a2 % 8))) != 0;
}

{
  return ot::BitVector<(unsigned short)64>::Get(a1, a2);
}

uint64_t ot::BitVector<(unsigned short)64>::Set(uint64_t result, unsigned __int16 a2, char a3)
{
  if (a2 >= 0x40u)
  {
    __assert_rtn("Set", "bit_vector.hpp", 90, "aIndex < N");
  }

  if (a3)
  {
    *(result + a2 / 8) |= 128 >> (a2 % 8);
  }

  else
  {
    *(result + a2 / 8) &= ~(128 >> (a2 % 8));
  }

  return result;
}

{
  return ot::BitVector<(unsigned short)64>::Set(result, a2, a3);
}

uint64_t ot::BitVector<(unsigned short)64>::HasAny(_BYTE *a1)
{
  v3 = 0;
  for (i = a1; i != a1 + 8; ++i)
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
  return ot::BitVector<(unsigned short)64>::HasAny(a1);
}

uint64_t ot::Message::GetLinkInfo(ot::Message *this, ot::ThreadLinkInfo *a2)
{
  v4 = 0;
  if (ot::Message::IsOriginThreadNetif (this))
  {
    ot::Clearable<ot::ThreadLinkInfo>::Clear(a2);
    *a2 = ot::Message::GetPanId(this);
    *(a2 + 2) = ot::Message::GetChannel(this);
    *(a2 + 3) = ot::Message::GetAverageRss(this);
    *(a2 + 4) = ot::Message::GetAverageLqi(this);
    *(a2 + 5) = *(a2 + 5) & 0xFE | ot::Message::IsLinkSecurityEnabled(this);
    *(a2 + 5) = *(a2 + 5) & 0xFD | (2 * ot::Message::IsDstPanIdBroadcast(this));
  }

  else
  {
    return 23;
  }

  return v4;
}

void *ot::Clearable<ot::ThreadLinkInfo>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::ThreadLinkInfo>(a1);
}

{
  return ot::Clearable<ot::ThreadLinkInfo>::Clear(a1);
}

uint64_t ot::Message::GetAverageLqi(ot::Message *this)
{
  Metadata = ot::Buffer::GetMetadata(this);
  return ot::LqiAverager::GetAverage((Metadata + 60));
}

{
  return ot::Message::GetAverageLqi(this);
}

uint64_t ot::Message::IsDstPanIdBroadcast(ot::Message *this)
{
  return (*(ot::Buffer::GetMetadata(this) + 70) >> 17) & 1;
}

{
  return ot::Message::IsDstPanIdBroadcast(this);
}

uint64_t ot::Message::UpdateLinkInfoFrom(ot::Message *this, const ot::ThreadLinkInfo *a2)
{
  ot::Message::SetPanId(this, *a2);
  ot::Message::SetChannel(this, *(a2 + 2));
  ot::Message::AddRss(this, *(a2 + 3));
  ot::Message::AddLqi(this, *(a2 + 4));
  ot::Message::SetLinkSecurityEnabled(this, *(a2 + 5) & 1);
  IsDstPanIdBroadcast = ot::ThreadLinkInfo::IsDstPanIdBroadcast(a2);
  Metadata = ot::Buffer::GetMetadata(this);
  *(Metadata + 70) = *(Metadata + 70) & 0xFFFDFFFF | (IsDstPanIdBroadcast << 17);
  return ot::Message::SetHopsLft(this, *(a2 + 17));
}

void ot::Message::AddRss(ot::Message *this, char a2)
{
  Metadata = ot::Buffer::GetMetadata(this);
  ot::RssAverager::Add((Metadata + 58), a2);
  IgnoreError();
}

{
  ot::Message::AddRss(this, a2);
}

uint64_t ot::Message::AddLqi(ot::Message *this, unsigned __int8 a2)
{
  Metadata = ot::Buffer::GetMetadata(this);
  return ot::LqiAverager::Add((Metadata + 60), a2);
}

{
  return ot::Message::AddLqi(this, a2);
}

uint64_t ot::ThreadLinkInfo::IsDstPanIdBroadcast(ot::ThreadLinkInfo *this)
{
  return (*(this + 5) >> 1) & 1;
}

{
  return ot::ThreadLinkInfo::IsDstPanIdBroadcast(this);
}

uint64_t ot::Message::SetHopsLft(ot::Message *this, char a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 44) = a2;
  return result;
}

{
  return ot::Message::SetHopsLft(this, a2);
}

uint64_t ot::Message::SetMessageQueue(ot::Message *this, ot::MessageQueue *a2)
{
  *(ot::Buffer::GetMetadata(this) + 24) = a2;
  result = ot::Buffer::GetMetadata(this);
  *(result + 70) &= ~0x800u;
  return result;
}

uint64_t ot::Message::SetPriorityQueue(ot::Message *this, ot::PriorityQueue *a2)
{
  *(ot::Buffer::GetMetadata(this) + 24) = a2;
  result = ot::Buffer::GetMetadata(this);
  *(result + 70) = *(result + 70) & 0xFFFFF7FF | 0x800;
  return result;
}

ot::Message **ot::MessageQueue::Enqueue(ot::MessageQueue *a1, ot::Message *a2, char a3)
{
  if (ot::Message::IsInAQueue(a2))
  {
    __assert_rtn("Enqueue", "message.cpp", 1105, "!aMessage.IsInAQueue()");
  }

  v8 = 0;
  if (!*ot::Message::Next(a2))
  {
    v8 = *ot::Message::Prev(a2) == 0;
  }

  if (!v8)
  {
    __assert_rtn("Enqueue", "message.cpp", 1106, "(aMessage.Next() == nullptr) && (aMessage.Prev() == nullptr)");
  }

  ot::Message::SetMessageQueue(a2, a1);
  if (ot::MessageQueue::GetTail(a1))
  {
    Tail = ot::MessageQueue::GetTail(a1);
    v6 = *ot::Message::Next(Tail);
    *ot::Message::Next(a2) = v6;
    v7 = ot::MessageQueue::GetTail(a1);
    *ot::Message::Prev(a2) = v7;
    *ot::Message::Prev(v6) = a2;
    v5 = ot::MessageQueue::GetTail(a1);
    result = ot::Message::Next(v5);
    *result = a2;
    if (a3 == 1)
    {
      return ot::MessageQueue::SetTail(a1, a2);
    }
  }

  else
  {
    *ot::Message::Next(a2) = a2;
    *ot::Message::Prev(a2) = a2;
    return ot::MessageQueue::SetTail(a1, a2);
  }

  return result;
}

uint64_t ot::MessageQueue::Dequeue(ot::MessageQueue *this, ot::Message *a2)
{
  if (ot::Message::GetMessageQueue(a2) != this)
  {
    __assert_rtn("Dequeue", "message.cpp", 1136, "aMessage.GetMessageQueue() == this");
  }

  v9 = 0;
  if (*ot::Message::Next(a2))
  {
    v9 = *ot::Message::Prev(a2) != 0;
  }

  if (!v9)
  {
    __assert_rtn("Dequeue", "message.cpp", 1137, "(aMessage.Next() != nullptr) && (aMessage.Prev() != nullptr)");
  }

  if (a2 == ot::MessageQueue::GetTail(this))
  {
    Tail = ot::MessageQueue::GetTail(this);
    v3 = ot::Message::Prev(Tail);
    ot::MessageQueue::SetTail(this, *v3);
    if (a2 == ot::MessageQueue::GetTail(this))
    {
      ot::MessageQueue::SetTail(this, 0);
    }
  }

  v7 = *ot::Message::Next(a2);
  v4 = ot::Message::Prev(a2);
  *ot::Message::Next(*v4) = v7;
  v8 = *ot::Message::Prev(a2);
  v5 = ot::Message::Next(a2);
  *ot::Message::Prev(*v5) = v8;
  *ot::Message::Prev(a2) = 0;
  *ot::Message::Next(a2) = 0;
  return ot::Message::SetMessageQueue(a2, 0);
}

ot::Message *ot::MessageQueue::DequeueAndFreeAll(ot::MessageQueue *this)
{
  while (1)
  {
    result = ot::MessageQueue::GetHead(this);
    if (!result)
    {
      break;
    }

    ot::MessageQueue::DequeueAndFree(this, result);
  }

  return result;
}

uint64_t ot::MessageQueue::begin(ot::MessageQueue *this)
{
  Head = ot::MessageQueue::GetHead(this);
  _ZN2ot4Coap7Message8IteratorCI2NS_7Message8IteratorEEPS3_(&v3, Head);
  return v3;
}

{
  Head = ot::MessageQueue::GetHead(this);
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v3, Head);
  return v3;
}

BOOL ot::MessageQueue::GetInfo(ot::MessageQueue *a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v8 = a1;
  v7 = ot::MessageQueue::begin(a1);
  v6 = ot::MessageQueue::end(v8);
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator!=(&v7, &v6);
    if (!result)
    {
      break;
    }

    v5 = ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator*(&v7);
    ++*v9;
    BufferCount = ot::Message::GetBufferCount(v5);
    *(v9 + 2) += BufferCount;
    Length = ot::Message::GetLength(v5);
    *(v9 + 4) += Length;
    ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator++(&v7);
  }

  return result;
}

uint64_t ot::MessageQueue::end(ot::MessageQueue *this)
{
  v2 = 0;
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v2);
  return v2;
}

{
  ot::Coap::Message::Iterator::Iterator(&v2);
  return v2;
}

{
  return ot::MessageQueue::end(this);
}

{
  return ot::MessageQueue::end(this);
}

uint64_t ot::PriorityQueue::FindFirstNonNullTail(ot::PriorityQueue *a1, unsigned __int8 a2)
{
  v5 = 0;
  Priority = a2;
  while (!*(a1 + Priority))
  {
    Priority = ot::PriorityQueue::PrevPriority(a1, Priority);
    if (Priority == a2)
    {
      return v5;
    }
  }

  return *(a1 + Priority);
}

uint64_t ot::PriorityQueue::PrevPriority(ot::PriorityQueue *this, char a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return (a2 + 1);
  }
}

{
  return ot::PriorityQueue::PrevPriority(this, a2);
}

uint64_t ot::PriorityQueue::GetHeadForPriority(ot::PriorityQueue *a1, unsigned __int8 a2)
{
  if (!*(a1 + a2))
  {
    return 0;
  }

  Priority = ot::PriorityQueue::PrevPriority(a1, a2);
  FirstNonNullTail = ot::PriorityQueue::FindFirstNonNullTail(a1, Priority);
  if (!FirstNonNullTail)
  {
    __assert_rtn("GetHeadForPriority", "message.cpp", 1230, "previousTail != nullptr");
  }

  return *ot::Message::Next(FirstNonNullTail);
}

void ot::PriorityQueue::FindFirstNonNullTail(uint64_t a1, unsigned __int8 a2)
{
  ot::AsConst<ot::PriorityQueue>();
  ot::PriorityQueue::FindFirstNonNullTail(v2, a2);
  ot::AsNonConst<ot::Message>();
}

{
  ot::PriorityQueue::FindFirstNonNullTail(a1, a2);
}

void ot::PriorityQueue::DequeueAndFreeAll(ot::PriorityQueue *this)
{
  while (1)
  {
    ot::PriorityQueue::GetHead(this);
    if (!v1)
    {
      break;
    }

    ot::PriorityQueue::DequeueAndFree(this, v1);
  }
}

void ot::PriorityQueue::GetHead(ot::PriorityQueue *this)
{
  ot::AsConst<ot::PriorityQueue>();
  ot::PriorityQueue::GetHead(v1);
  ot::AsNonConst<ot::Message>();
}

{
  ot::PriorityQueue::GetHead(this);
}

uint64_t ot::PriorityQueue::begin(ot::PriorityQueue *this)
{
  ot::PriorityQueue::GetHead(this);
  _ZN2ot4Coap7Message8IteratorCI2NS_7Message8IteratorEEPS3_(&v3, v1);
  return v3;
}

{
  Head = ot::PriorityQueue::GetHead(this);
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v3, Head);
  return v3;
}

BOOL ot::PriorityQueue::GetInfo(ot::PriorityQueue *a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v8 = a1;
  v7 = ot::PriorityQueue::begin(a1);
  v6 = ot::PriorityQueue::end(v8);
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator!=(&v7, &v6);
    if (!result)
    {
      break;
    }

    v5 = ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator*(&v7);
    ++*v9;
    BufferCount = ot::Message::GetBufferCount(v5);
    *(v9 + 2) += BufferCount;
    Length = ot::Message::GetLength(v5);
    *(v9 + 4) += Length;
    ot::ItemPtrIterator<ot::Message const,ot::Message::ConstIterator>::operator++(&v7);
  }

  return result;
}

uint64_t ot::PriorityQueue::end(ot::PriorityQueue *this)
{
  v2 = 0;
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v2);
  return v2;
}

{
  ot::Coap::Message::Iterator::Iterator(&v2);
  return v2;
}

{
  return ot::PriorityQueue::end(this);
}

{
  return ot::PriorityQueue::end(this);
}

void *ot::LinkedListEntry<ot::Buffer>::SetNext(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  return ot::LinkedListEntry<ot::Buffer>::SetNext(result, a2);
}

uint64_t ot::LinkedListEntry<ot::Buffer>::GetNext(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

{
  return ot::LinkedListEntry<ot::Buffer>::GetNext(a1);
}

{
  return ot::LinkedListEntry<ot::Buffer>::GetNext(a1);
}

uint64_t ot::Pool<ot::Buffer,(unsigned short)256>::GetIndexOf(uint64_t a1, uint64_t a2)
{
  return ((a2 - (a1 + 8)) / 256);
}

{
  return ot::Pool<ot::Buffer,(unsigned short)256>::GetIndexOf(a1, a2);
}

void ot::AsNonConst<ot::Message>()
{
  ;
}

{
  ot::AsNonConst<ot::Message>();
}

void ot::AsConst<ot::PriorityQueue>()
{
  ;
}

{
  ot::AsConst<ot::PriorityQueue>();
}

void ot::AsConst<ot::Message>()
{
  ;
}

{
  ot::AsConst<ot::Message>();
}

void ot::AsNonConst<unsigned char>()
{
  ;
}

{
  ot::AsNonConst<unsigned char>();
}

uint64_t ot::LqiAverager::GetAverage(ot::LqiAverager *this)
{
  return *this;
}

{
  return ot::LqiAverager::GetAverage(this);
}

void *ot::LinkedList<ot::Buffer>::Push(uint64_t *a1, void *a2)
{
  result = ot::LinkedListEntry<ot::Buffer>::SetNext(a2, *a1);
  *a1 = a2;
  return result;
}

{
  return ot::LinkedList<ot::Buffer>::Push(a1, a2);
}

uint64_t ot::LinkedList<ot::Buffer>::Pop(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    *a1 = ot::LinkedListEntry<ot::Buffer>::GetNext(*a1);
  }

  return v2;
}

{
  return ot::LinkedList<ot::Buffer>::Pop(a1);
}

void *ot::ClearAllBytes<ot::ThreadLinkInfo>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::ThreadLinkInfo>(result);
}

uint64_t __cxx_global_var_init_6()
{
  return boost::optional_ns::in_place_init_t::in_place_init_t(&boost::optional_ns::in_place_init);
}

{
  std::map<unsigned long long,ot::appPacketInfo>::map[abi:dn200100](&ot::mMatterIp6ToMeshLocalIidMap);
  return __cxa_atexit(std::map<ot::Ip6::Address,ot::Ip6::InterfaceIdentifier>::~map[abi:dn200100], &ot::mMatterIp6ToMeshLocalIidMap, &_mh_execute_header);
}

ot::Notifier *ot::Notifier::Notifier(ot::Notifier *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::OwnedPtr<ot::Message>::OwnedPtr(this);
  ot::OwnedPtr<ot::Message>::OwnedPtr(this + 1);
  ot::TaskletIn<ot::Notifier,&ot::Notifier::EmitEvents>::TaskletIn((this + 16), a2);
  v4 = (this + 32);
  do
  {
    ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(v4);
    v4 += 2;
  }

  while (v4 != (this + 96));
  for (i = (this + 32); i != (this + 96); i += 2)
  {
    ot::CallbackBase<void (*)(unsigned long long,void *)>::Clear(i);
  }

  return this;
}

{
  ot::Notifier::Notifier(this, a2);
  return this;
}

uint64_t ot::Notifier::EmitEvents(ot::Notifier *this)
{
  v34[1] = this;
  ot::OwnedPtr<ot::Message>::OwnedPtr(v34);
  result = ot::Events::IsEmpty(this);
  if ((result & 1) == 0)
  {
    v34[0] = *this;
    ot::Events::Clear(this);
    v33 = v34[0];
    ot::Notifier::LogEvents(this, v34[0]);
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    v32 = v34[0];
    ot::Mle::Mle::HandleNotifierEvents(v2, v34[0]);
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::EnergyScanServer>(this);
    v31 = v34[0];
    ot::EnergyScanServer::HandleNotifierEvents(v3, v34[0]);
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::JoinerRouter>(this);
    v30 = v34[0];
    ot::MeshCoP::JoinerRouter::HandleNotifierEvents(v4, v34[0]);
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Manager>(this);
    v29 = v34[0];
    ot::BackboneRouter::Manager::HandleNotifierEvents(v5, v34[0]);
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildSupervisor>(this);
    v28 = v34[0];
    ot::ChildSupervisor::HandleNotifierEvents(v6, v34[0]);
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::DatasetUpdater>(this);
    v27 = v34[0];
    ot::MeshCoP::DatasetUpdater::HandleNotifierEvents(v7, v34[0]);
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Notifier>(this);
    v26 = v34[0];
    ot::NetworkData::Notifier::HandleNotifierEvents(v8, v34[0]);
    v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AnnounceSender>(this);
    v25 = v34[0];
    ot::AnnounceSender::HandleNotifierEvents(v9, v34[0]);
    ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(this);
    v24 = v34[0];
    ot::MeshCoP::BorderAgent::HandleNotifierEvents();
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MlrManager>(this);
    v23 = v34[0];
    ot::MlrManager::HandleNotifierEvents(v10, v34[0]);
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(this);
    v22 = v34[0];
    ot::DuaManager::HandleNotifierEvents(v11, v34[0]);
    v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::Slaac>(this);
    v21 = v34[0];
    ot::Utils::Slaac::HandleNotifierEvents(v12, v34[0]);
    v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::HistoryTracker>(this);
    v20 = v34[0];
    result = ot::Utils::HistoryTracker::HandleNotifierEvents(v13, v34[0]);
    v19 = this + 32;
    v18 = this + 32;
    v17 = this + 96;
    while (v18 != v17)
    {
      v16[1] = v18;
      v14 = v18;
      v16[0] = ot::Events::GetAsFlags(v34);
      result = ot::Callback<void (*)(unsigned long long,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<unsigned long long>(v14, v16);
      v18 += 16;
    }
  }

  return result;
}

ot::InstanceLocator *ot::TaskletIn<ot::Notifier,&ot::Notifier::EmitEvents>::TaskletIn(ot::InstanceLocator *a1, ot::Instance *a2)
{
  ot::TaskletIn<ot::Notifier,&ot::Notifier::EmitEvents>::TaskletIn(a1, a2);
  return a1;
}

{
  ot::Tasklet::Tasklet(a1, a2, ot::TaskletIn<ot::Notifier,&ot::Notifier::EmitEvents>::HandleTasklet);
  return a1;
}

void *ot::CallbackBase<void (*)(unsigned long long,void *)>::Clear(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::CallbackBase<void (*)(unsigned long long,void *)>::Clear(result);
}

uint64_t ot::Notifier::RegisterCallback(ot::Notifier *this, void (*a2)(unint64_t, void *), uint64_t a3)
{
  v7 = 0;
  v6 = 0;
  if (a2)
  {
    v5 = this + 32;
    v4 = this + 96;
    while (v5 != v4)
    {
      if (ot::CallbackBase<void (*)(unsigned long long,void *)>::Matches(v5, a2, a3))
      {
        return 24;
      }

      if (!ot::CallbackBase<void (*)(unsigned long long,void *)>::IsSet(v5) && !v6)
      {
        v6 = v5;
      }

      v5 += 16;
    }

    if (v6)
    {
      ot::CallbackBase<void (*)(unsigned long long,void *)>::Set(v6, a2, a3);
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

BOOL ot::CallbackBase<void (*)(unsigned long long,void *)>::Matches(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  if (*a1 == a2)
  {
    return a1[1] == a3;
  }

  return v4;
}

{
  return ot::CallbackBase<void (*)(unsigned long long,void *)>::Matches(a1, a2, a3);
}

BOOL ot::CallbackBase<void (*)(unsigned long long,void *)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(unsigned long long,void *)>::IsSet(a1);
}

void *ot::CallbackBase<void (*)(unsigned long long,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(unsigned long long,void *)>::Set(result, a2, a3);
}

uint64_t ot::Notifier::RemoveCallback(uint64_t this, void (*a2)(unint64_t, void *), uint64_t a3)
{
  v3 = this;
  if (a2)
  {
    for (i = (this + 32); i != (v3 + 96); i += 2)
    {
      this = ot::CallbackBase<void (*)(unsigned long long,void *)>::Matches(i, a2, a3);
      if (this)
      {
        this = ot::CallbackBase<void (*)(unsigned long long,void *)>::Clear(i);
      }
    }
  }

  return this;
}

uint64_t ot::Notifier::Signal(void *a1, uint64_t a2)
{
  ot::Events::Add(a1, a2);
  ot::Events::Add(a1 + 1, a2);
  return ot::Tasklet::Post((a1 + 2));
}

void *ot::Events::Add(void *result, uint64_t a2)
{
  *result |= a2;
  return result;
}

{
  return ot::Events::Add(result, a2);
}

uint64_t ot::Notifier::SignalIfFirst(void *a1, uint64_t a2)
{
  result = ot::Notifier::HasSignaled(a1, a2);
  if ((result & 1) == 0)
  {
    return ot::Notifier::Signal(a1, a2);
  }

  return result;
}

BOOL ot::Notifier::HasSignaled(uint64_t a1, uint64_t a2)
{
  return ot::Events::Contains((a1 + 8), a2);
}

{
  return ot::Notifier::HasSignaled(a1, a2);
}

BOOL ot::Events::IsEmpty(ot::Events *this)
{
  return *this == 0;
}

{
  return ot::Events::IsEmpty(this);
}

void *ot::Events::Clear(void *this)
{
  *this = 0;
  return this;
}

{
  return ot::Events::Clear(this);
}

void ot::Notifier::LogEvents(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  AsFlags = ot::Events::GetAsFlags(&v23);
  v21 = 0;
  ot::String<(unsigned short)95>::String(v24);
  for (i = 0; i < 0x40uLL && AsFlags; ++i)
  {
    if ((AsFlags & (1 << i)) != 0)
    {
      if (ot::StringWriter::GetLength(v24) >= 70)
      {
        v18 = ot::Events::GetAsFlags(&v23);
        ot::String<(unsigned short)95>::AsCString(v24);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("Notifier", "StateChanged (0x%llx) %s%s ...", v2, v3, v4, v5, v6, v7, v18);
        ot::StringWriter::Clear(v24);
        v21 = 0;
      }

      v8 = " ";
      if ((v21 & 1) == 0)
      {
        v8 = "";
      }

      v17 = v8;
      v9 = ot::Notifier::EventToString(a1, 1 << i);
      ot::StringWriter::Append(v24, "%s%s", v17, v9);
      v21 = 1;
      AsFlags ^= 1 << i;
    }
  }

  v16 = ot::Events::GetAsFlags(&v23);
  ot::String<(unsigned short)95>::AsCString(v24);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Notifier", "StateChanged (0x%llx) %s%s]", v10, v11, v12, v13, v14, v15, v16);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::EnergyScanServer>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::EnergyScanServer>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::EnergyScanServer>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::JoinerRouter>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::JoinerRouter>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::JoinerRouter>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::DatasetUpdater>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::DatasetUpdater>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::DatasetUpdater>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::AnnounceSender>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::AnnounceSender>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::AnnounceSender>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::BorderAgent>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::Slaac>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Utils::Slaac>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::Slaac>(a1);
}

void *ot::Callback<void (*)(unsigned long long,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<unsigned long long>(void *result, void *a2)
{
  if (*result)
  {
    return ot::Callback<void (*)(unsigned long long,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned long long>(result, a2);
  }

  return result;
}

{
  return ot::Callback<void (*)(unsigned long long,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<unsigned long long>(result, a2);
}

uint64_t ot::Events::GetAsFlags(ot::Events *this)
{
  return *this;
}

{
  return ot::Events::GetAsFlags(this);
}

uint64_t ot::String<(unsigned short)95>::String(uint64_t a1)
{
  ot::String<(unsigned short)95>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 95);
  return a1;
}

uint64_t ot::StringWriter::GetLength(ot::StringWriter *this)
{
  return *(this + 4);
}

{
  return ot::StringWriter::GetLength(this);
}

uint64_t ot::String<(unsigned short)95>::AsCString(uint64_t a1)
{
  return a1 + 12;
}

{
  return ot::String<(unsigned short)95>::AsCString(a1);
}

char *ot::Notifier::EventToString(uint64_t a1, uint64_t a2)
{
  v4 = "(unknown)";
  for (i = 0; i < ot::GetArrayLength<char const*,(unsigned short)35>(); ++i)
  {
    if (a2 == 1 << i)
    {
      return ot::Notifier::EventToString(ot::Event)const::kEventStrings[i];
    }
  }

  return v4;
}

uint64_t ot::GetArrayLength<char const*,(unsigned short)35>()
{
  return 35;
}

{
  return ot::GetArrayLength<char const*,(unsigned short)35>();
}

uint64_t ot::Instance::Get<ot::EnergyScanServer>(uint64_t a1)
{
  return a1 + 154672;
}

{
  return ot::Instance::Get<ot::EnergyScanServer>(a1);
}

uint64_t ot::Instance::Get<ot::MeshCoP::DatasetUpdater>(uint64_t a1)
{
  return a1 + 167040;
}

{
  return ot::Instance::Get<ot::MeshCoP::DatasetUpdater>(a1);
}

uint64_t ot::Instance::Get<ot::AnnounceSender>(uint64_t a1)
{
  return a1 + 167064;
}

{
  return ot::Instance::Get<ot::AnnounceSender>(a1);
}

uint64_t ot::Callback<void (*)(unsigned long long,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned long long>(uint64_t a1, void *a2)
{
  return (*a1)(*a2, *(a1 + 8));
}

{
  return ot::Callback<void (*)(unsigned long long,void *),(ot::CallbackContextPosition)1>::Invoke<unsigned long long>(a1, a2);
}

void ot::SettingsBase::NetworkInfo::Log(ot::SettingsBase::NetworkInfo *a1, unsigned __int8 a2)
{
  v29 = ot::SettingsBase::ActionToString(a2);
  ot::SettingsBase::NetworkInfo::GetRloc16(a1);
  ExtAddress = ot::SettingsBase::NetworkInfo::GetExtAddress(a1);
  ot::Mac::ExtAddress::ToString(ExtAddress, v33);
  ot::String<(unsigned short)17>::AsCString(v33);
  Role = ot::SettingsBase::NetworkInfo::GetRole(a1);
  ot::Mle::RoleToString(Role);
  ot::SettingsBase::NetworkInfo::GetDeviceMode(a1);
  ot::SettingsBase::NetworkInfo::GetVersion(a1);
  KeySequence = ot::SettingsBase::NetworkInfo::GetKeySequence(a1);
  ot::ToUlong(KeySequence);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Settings", "%s NetworkInfo {rloc:0x%04x, extaddr:%s, role:%s, mode:0x%02x, version:%u, keyseq:0x%lx, ...", v5, v6, v7, v8, v9, v10, v29);
  WasChildStatus = ot::SettingsBase::NetworkInfo::GetWasChildStatus(a1);
  v18 = "TRUE";
  if ((WasChildStatus & 1) == 0)
  {
    v18 = "FALSE";
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Settings", "... wasChild:%s", v11, v12, v13, v14, v15, v16, v18);
  PreviousPartitionId = ot::SettingsBase::NetworkInfo::GetPreviousPartitionId(a1);
  v31 = ot::ToUlong(PreviousPartitionId);
  MleFrameCounter = ot::SettingsBase::NetworkInfo::GetMleFrameCounter(a1);
  ot::ToUlong(MleFrameCounter);
  MacFrameCounter = ot::SettingsBase::NetworkInfo::GetMacFrameCounter(a1);
  ot::ToUlong(MacFrameCounter);
  MeshLocalIid = ot::SettingsBase::NetworkInfo::GetMeshLocalIid(a1);
  ot::Ip6::InterfaceIdentifier::ToString(MeshLocalIid, v32);
  ot::String<(unsigned short)17>::AsCString(v32);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Settings", "... pid:0x%lx, mlecntr:0x%lx, maccntr:0x%lx, mliid:%s}", v23, v24, v25, v26, v27, v28, v31);
}

uint64_t ot::SettingsBase::NetworkInfo::GetRloc16(ot::SettingsBase::NetworkInfo *this)
{
  return ot::LittleEndian::HostSwap16(*(this + 1));
}

{
  return ot::SettingsBase::NetworkInfo::GetRloc16(this);
}

uint64_t ot::SettingsBase::NetworkInfo::GetExtAddress(ot::SettingsBase::NetworkInfo *this)
{
  return this + 20;
}

{
  return ot::SettingsBase::NetworkInfo::GetExtAddress(this);
}

uint64_t ot::SettingsBase::NetworkInfo::GetRole(ot::SettingsBase::NetworkInfo *this)
{
  return *this;
}

{
  return ot::SettingsBase::NetworkInfo::GetRole(this);
}

uint64_t ot::SettingsBase::NetworkInfo::GetDeviceMode(ot::SettingsBase::NetworkInfo *this)
{
  return *(this + 1);
}

{
  return ot::SettingsBase::NetworkInfo::GetDeviceMode(this);
}

uint64_t ot::SettingsBase::NetworkInfo::GetVersion(ot::SettingsBase::NetworkInfo *this)
{
  return ot::LittleEndian::HostSwap16(*(this + 18));
}

{
  return ot::SettingsBase::NetworkInfo::GetVersion(this);
}

uint64_t ot::SettingsBase::NetworkInfo::GetKeySequence(ot::SettingsBase::NetworkInfo *this)
{
  return ot::LittleEndian::HostSwap32(*(this + 1));
}

{
  return ot::SettingsBase::NetworkInfo::GetKeySequence(this);
}

uint64_t ot::SettingsBase::NetworkInfo::GetWasChildStatus(ot::SettingsBase::NetworkInfo *this)
{
  return *(this + 46) & 1;
}

{
  return ot::SettingsBase::NetworkInfo::GetWasChildStatus(this);
}

uint64_t ot::SettingsBase::NetworkInfo::GetPreviousPartitionId(ot::SettingsBase::NetworkInfo *this)
{
  return ot::LittleEndian::HostSwap32(*(this + 4));
}

{
  return ot::SettingsBase::NetworkInfo::GetPreviousPartitionId(this);
}

uint64_t ot::SettingsBase::NetworkInfo::GetMleFrameCounter(ot::SettingsBase::NetworkInfo *this)
{
  return ot::LittleEndian::HostSwap32(*(this + 2));
}

{
  return ot::SettingsBase::NetworkInfo::GetMleFrameCounter(this);
}

uint64_t ot::SettingsBase::NetworkInfo::GetMacFrameCounter(ot::SettingsBase::NetworkInfo *this)
{
  return ot::LittleEndian::HostSwap32(*(this + 3));
}

{
  return ot::SettingsBase::NetworkInfo::GetMacFrameCounter(this);
}

uint64_t ot::SettingsBase::NetworkInfo::GetMeshLocalIid(ot::SettingsBase::NetworkInfo *this)
{
  return this + 28;
}

{
  return ot::SettingsBase::NetworkInfo::GetMeshLocalIid(this);
}

void ot::SettingsBase::ParentInfo::Log(ot::SettingsBase::ParentInfo *a1, unsigned __int8 a2)
{
  v10 = ot::SettingsBase::ActionToString(a2);
  ExtAddress = ot::SettingsBase::ParentInfo::GetExtAddress(a1);
  ot::Mac::ExtAddress::ToString(ExtAddress, v11);
  ot::String<(unsigned short)17>::AsCString(v11);
  ot::SettingsBase::ParentInfo::GetVersion(a1);
  ot::SettingsBase::ParentInfo::GetLastHeardTime(a1);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Settings", "%s ParentInfo {extaddr:%s, version:%u lastHeard:%llu}", v3, v4, v5, v6, v7, v8, v10);
}

uint64_t ot::SettingsBase::ParentInfo::GetExtAddress(ot::SettingsBase::ParentInfo *this)
{
  return this + 12;
}

{
  return ot::SettingsBase::ParentInfo::GetExtAddress(this);
}

uint64_t ot::SettingsBase::ParentInfo::GetVersion(ot::SettingsBase::ParentInfo *this)
{
  return ot::LittleEndian::HostSwap16(*(this + 10));
}

{
  return ot::SettingsBase::ParentInfo::GetVersion(this);
}

uint64_t ot::SettingsBase::ParentInfo::GetLastHeardTime(ot::SettingsBase::ParentInfo *this)
{
  return *(this + 4);
}

{
  return ot::SettingsBase::ParentInfo::GetLastHeardTime(this);
}

void ot::SettingsBase::ChildInfo::Log(ot::SettingsBase::ChildInfo *a1, unsigned __int8 a2)
{
  v11 = ot::SettingsBase::ActionToString(a2);
  ot::SettingsBase::ChildInfo::GetRloc16(a1);
  ot::SettingsBase::ChildInfo::GetExtAddress(a1);
  ot::Mac::ExtAddress::ToString(v2, v12);
  ot::String<(unsigned short)17>::AsCString(v12);
  Timeout = ot::SettingsBase::ChildInfo::GetTimeout(a1);
  ot::ToUlong(Timeout);
  ot::SettingsBase::ChildInfo::GetMode(a1);
  ot::SettingsBase::ChildInfo::GetVersion(a1);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Settings", "%s ChildInfo {rloc:0x%04x, extaddr:%s, timeout:%lu, mode:0x%02x, version:%u}", v4, v5, v6, v7, v8, v9, v11);
}

uint64_t ot::SettingsBase::ChildInfo::GetRloc16(ot::SettingsBase::ChildInfo *this)
{
  return ot::LittleEndian::HostSwap16(*(this + 6));
}

{
  return ot::SettingsBase::ChildInfo::GetRloc16(this);
}

void ot::SettingsBase::ChildInfo::GetExtAddress(ot::SettingsBase::ChildInfo *this)
{
  ;
}

{
  ot::SettingsBase::ChildInfo::GetExtAddress(this);
}

uint64_t ot::SettingsBase::ChildInfo::GetTimeout(ot::SettingsBase::ChildInfo *this)
{
  return ot::LittleEndian::HostSwap32(*(this + 2));
}

{
  return ot::SettingsBase::ChildInfo::GetTimeout(this);
}

uint64_t ot::SettingsBase::ChildInfo::GetMode(ot::SettingsBase::ChildInfo *this)
{
  return *(this + 14);
}

{
  return ot::SettingsBase::ChildInfo::GetMode(this);
}

uint64_t ot::SettingsBase::ChildInfo::GetVersion(ot::SettingsBase::ChildInfo *this)
{
  return ot::LittleEndian::HostSwap16(*(this + 15));
}

{
  return ot::SettingsBase::ChildInfo::GetVersion(this);
}

void ot::SettingsBase::DadInfo::Log(ot::SettingsBase::DadInfo *a1, unsigned __int8 a2)
{
  v9 = ot::SettingsBase::ActionToString(a2);
  ot::SettingsBase::DadInfo::GetDadCounter(a1);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Settings", "%s DadInfo {DadCounter:%2d}", v2, v3, v4, v5, v6, v7, v9);
}

uint64_t ot::SettingsBase::DadInfo::GetDadCounter(ot::SettingsBase::DadInfo *this)
{
  return *this;
}

{
  return ot::SettingsBase::DadInfo::GetDadCounter(this);
}

void ot::SettingsBase::BorderAgentId::Log(ot::SettingsBase::BorderAgentId *a1, unsigned __int8 a2)
{
  v13 = a1;
  v12 = a2;
  ot::StringWriter::StringWriter(v11, v14, 33);
  ot::SettingsBase::BorderAgentId::GetId(a1);
  ot::StringWriter::AppendHexBytes(v11, v2, 16);
  v3 = ot::SettingsBase::ActionToString(v12);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Settings", "%s BorderAgentId {id:%s}", v4, v5, v6, v7, v8, v9, v3);
}

void ot::SettingsBase::BorderAgentId::GetId(ot::SettingsBase::BorderAgentId *this)
{
  ;
}

{
  ;
}

{
  ot::SettingsBase::BorderAgentId::GetId(this);
}

{
  ot::SettingsBase::BorderAgentId::GetId(this);
}

uint64_t ot::SettingsBase::KeyToString(unsigned __int16 a1)
{
  if (a1 > 0x11u)
  {
    __assert_rtn("KeyToString", "settings.cpp", 200, "aKey <= kLastKey");
  }

  return *(&ot::SettingsBase::KeyToString(ot::SettingsBase::Key)::kKeyStrings + a1);
}

uint64_t ot::Settings::Init(ot::Settings *this)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(this);
  Array = ot::GetArrayLength<unsigned short,(unsigned short)3>();
  return ot::SettingsDriver::Init(v3, ot::Settings::kSensitiveKeys, Array);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::SettingsDriver>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(a1);
}

uint64_t ot::SettingsDriver::Init(ot::SettingsDriver *this, const unsigned __int16 *a2, __int16 a3)
{
  InstancePtr = ot::SettingsDriver::GetInstancePtr(this);
  return otPlatSettingsInit(InstancePtr, a2, a3);
}

{
  return ot::SettingsDriver::Init(this, a2, a3);
}

uint64_t ot::GetArrayLength<unsigned short,(unsigned short)3>()
{
  return 3;
}

{
  return ot::GetArrayLength<unsigned short,(unsigned short)3>();
}

uint64_t ot::SettingsDriver::Deinit(ot::SettingsDriver *this)
{
  ot::SettingsDriver::GetInstancePtr(this);
  return otPlatSettingsDeinit();
}

{
  return ot::SettingsDriver::Deinit(this);
}

void ot::Settings::Wipe(ot::Settings *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(this);
  ot::SettingsDriver::Wipe(v1);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Settings", "Wiped all info", v2, v3, v4, v5, v6, v7, v8);
}

uint64_t ot::SettingsDriver::Wipe(ot::SettingsDriver *this)
{
  ot::SettingsDriver::GetInstancePtr(this);
  return otPlatSettingsWipe();
}

{
  return ot::SettingsDriver::Wipe(this);
}

uint64_t ot::Settings::KeyForDatasetType(char a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void ot::Settings::SaveOperationalDataset(ot::InstanceLocator *a1, char a2, ot::MeshCoP::Dataset *a3)
{
  v9 = ot::Settings::KeyForDatasetType(a2);
  v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(a1);
  ot::MeshCoP::Dataset::GetBytes(a3);
  v6 = v3;
  Length = ot::MeshCoP::Dataset::GetLength(a3);
  v8 = ot::SettingsDriver::Set(v7, v9, v6, Length);
  ot::Settings::Log(1u, v8, v9, 0);
  if (v8)
  {
    __assert_rtn("SaveOperationalDataset", "settings.cpp", 240, "false");
  }
}

uint64_t ot::SettingsDriver::Set(ot::SettingsDriver *this, __int16 a2, const void *a3, unsigned __int16 a4)
{
  InstancePtr = ot::SettingsDriver::GetInstancePtr(this);
  return otPlatSettingsSet(InstancePtr, a2, a3, a4);
}

{
  return ot::SettingsDriver::Set(this, a2, a3, a4);
}

void ot::MeshCoP::Dataset::GetBytes(ot::MeshCoP::Dataset *this)
{
  ;
}

{
  ;
}

{
  ot::MeshCoP::Dataset::GetBytes(this);
}

{
  ot::MeshCoP::Dataset::GetBytes(this);
}

uint64_t ot::MeshCoP::Dataset::GetLength(ot::MeshCoP::Dataset *this)
{
  return *(this + 254);
}

{
  return ot::MeshCoP::Dataset::GetLength(this);
}

void ot::Settings::Log(unsigned __int8 a1, int a2, unsigned __int16 a3, ot::SettingsBase::NetworkInfo *a4)
{
  ot::ErrorToString(a2);
  ot::SettingsBase::KeyToString(a3);
  ot::Logger::LogAtLevel<(ot::LogLevel)2>("Settings", "%s: Error: %s, action: %hhu, key: %s", v4, v5, v6, v7, v8, v9, "Log");
  if (a2)
  {
    if (a1)
    {
      switch(a1)
      {
        case 2u:
        case 1u:
          goto LABEL_18;
        case 3u:
          if (a2 == 23)
          {
            return;
          }

          goto LABEL_18;
        case 4u:
          goto LABEL_18;
        case 5u:
          if (a2 == 23)
          {
            return;
          }

          goto LABEL_18;
      }

      if (a1 != 6 || a2 != 23)
      {
LABEL_18:
        v23 = ot::ErrorToString(a2);
        ot::SettingsBase::KeyToString(a3);
        ot::Logger::LogAtLevel<(ot::LogLevel)2>("Settings", "Error %s %s %s", v10, v11, v12, v13, v14, v15, v23);
      }
    }
  }

  else
  {
    if (a4)
    {
      switch(a3)
      {
        case 3u:
          ot::SettingsBase::NetworkInfo::Log(a4, a1);
          break;
        case 4u:
          ot::SettingsBase::ParentInfo::Log(a4, a1);
          break;
        case 5u:
          ot::SettingsBase::ChildInfo::Log(a4, a1);
          break;
        case 8u:
          ot::SettingsBase::DadInfo::Log(a4, a1);
          break;
        case 0x11u:
          ot::SettingsBase::BorderAgentId::Log(a4, a1);
          break;
        default:
          a4 = 0;
          break;
      }
    }

    if (!a4)
    {
      v22 = ot::SettingsBase::ActionToString(a1);
      ot::SettingsBase::KeyToString(a3);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("Settings", "%s %s", v16, v17, v18, v19, v20, v21, v22);
    }
  }
}

uint64_t ot::Settings::ReadOperationalDataset(ot::InstanceLocator *a1, char a2, ot::MeshCoP::Dataset *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 254;
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(a1);
  v5 = ot::Settings::KeyForDatasetType(v10);
  ot::MeshCoP::Dataset::GetBytes(v9);
  v8 = ot::SettingsDriver::Get(v6, v5, v3, &v7);
  if (!v8)
  {
    if (v7 <= 0xFEu)
    {
      ot::MeshCoP::Dataset::SetLength(v9, v7);
    }

    else
    {
      v8 = 23;
    }
  }

  if (v8 == 12)
  {
    __assert_rtn("ReadOperationalDataset", "settings.cpp", 254, "error != kErrorNotImplemented");
  }

  return v8;
}

uint64_t ot::SettingsDriver::Get(ot::SettingsDriver *this, unsigned __int16 a2, void *a3, unsigned __int16 *a4)
{
  return ot::SettingsDriver::Get(this, a2, 0, a3, a4);
}

{
  return ot::SettingsDriver::Get(this, a2, a3, a4);
}

uint64_t ot::MeshCoP::Dataset::SetLength(uint64_t this, char a2)
{
  *(this + 254) = a2;
  return this;
}

{
  return ot::MeshCoP::Dataset::SetLength(this, a2);
}

void ot::Settings::DeleteOperationalDataset(ot::InstanceLocator *a1, char a2)
{
  v5 = ot::Settings::KeyForDatasetType(a2);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(a1);
  v4 = ot::SettingsDriver::Delete(v2, v5, -1);
  ot::Settings::Log(3u, v4, v5, 0);
  if (v4 == 12)
  {
    __assert_rtn("DeleteOperationalDataset", "settings.cpp", 264, "error != kErrorNotImplemented");
  }
}

uint64_t ot::SettingsDriver::Delete(ot::SettingsDriver *this, __int16 a2, int a3)
{
  InstancePtr = ot::SettingsDriver::GetInstancePtr(this);
  return otPlatSettingsDelete(InstancePtr, a2, a3);
}

{
  return ot::SettingsDriver::Delete(this, a2, a3);
}

uint64_t ot::Settings::AddChildInfo(ot::Settings *this, const ot::SettingsBase::ChildInfo *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(this);
  v4 = ot::SettingsDriver::Add(v2, 5, a2, 0x11u);
  ot::Settings::Log(4u, v4, 5u, a2);
  return v4;
}

uint64_t ot::SettingsDriver::Add(ot::SettingsDriver *this, __int16 a2, const void *a3, unsigned __int16 a4)
{
  InstancePtr = ot::SettingsDriver::GetInstancePtr(this);
  return otPlatSettingsAdd(InstancePtr, a2, a3, a4);
}

{
  return ot::SettingsDriver::Add(this, a2, a3, a4);
}

uint64_t ot::Settings::DeleteAllChildInfo(ot::Settings *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(this);
  v3 = ot::SettingsDriver::Delete(v1, 5, -1);
  ot::Settings::Log(6u, v3, 5u, 0);
  return v3;
}

ot::Settings::ChildInfoIterator *ot::Settings::ChildInfoIterator::ChildInfoIterator(ot::Settings::ChildInfoIterator *this, ot::Instance *a2)
{
  ot::SettingsBase::SettingsBase(this, a2);
  *(this + 9) = 0;
  *(this + 20) = 0;
  ot::Settings::ChildInfoIterator::Read(this);
  return this;
}

{
  ot::Settings::ChildInfoIterator::ChildInfoIterator(this, a2);
  return this;
}

void ot::Settings::ChildInfoIterator::Read(ot::Settings::ChildInfoIterator *this)
{
  v5 = this;
  v4 = 17;
  ot::SettingsBase::ChildInfo::Init(this);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(this);
  v3 = ot::SettingsDriver::Get(v1, 5u, *(this + 9), this, &v4);
  ot::Settings::Log(0, v3, 5u, this);
  *(this + 20) = v3 != 0;
}

void ot::Settings::ChildInfoIterator::Advance(ot::Settings::ChildInfoIterator *this)
{
  if ((*(this + 20) & 1) == 0)
  {
    ++*(this + 9);
    ot::Settings::ChildInfoIterator::Read(this);
  }
}

uint64_t ot::Settings::ChildInfoIterator::Delete(ot::Settings::ChildInfoIterator *this)
{
  if (*(this + 20))
  {
    v4 = 13;
    ot::Settings::Log(5u, 13, 5u, this);
  }

  else
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(this);
    v4 = ot::SettingsDriver::Delete(v1, 5, *(this + 9));
    ot::Settings::Log(5u, v4, 5u, this);
  }

  return v4;
}

uint64_t ot::SettingsBase::ChildInfo::Init(ot::SettingsBase::ChildInfo *this)
{
  ot::ClearAllBytes<ot::SettingsBase::ChildInfo>(this);
  return ot::SettingsBase::ChildInfo::SetVersion(this, 2u);
}

{
  return ot::SettingsBase::ChildInfo::Init(this);
}

uint64_t ot::SettingsDriver::Get(ot::SettingsDriver *this, unsigned __int16 a2, int a3, void *a4, unsigned __int16 *a5)
{
  InstancePtr = ot::SettingsDriver::GetInstancePtr(this);
  return otPlatSettingsGet(InstancePtr, a2, a3, a4, a5);
}

{
  return ot::SettingsDriver::Get(this, a2, a3, a4, a5);
}

uint64_t ot::Settings::ReadEntry(ot::InstanceLocator *a1, unsigned __int16 a2, void *a3, unsigned __int16 a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = 0;
  v6 = a4;
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(a1);
  v7 = ot::SettingsDriver::Get(v4, v10, v9, &v6);
  ot::Settings::Log(0, v7, v10, v9);
  return v7;
}

uint64_t ot::Settings::SaveEntry(ot::InstanceLocator *a1, __int16 a2, ot::SettingsBase::NetworkInfo *a3, uint64_t a4, unsigned __int16 a5)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  *&__n[1] = a4;
  __n[0] = a5;
  v10 = 0;
  v9 = a5;
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(a1);
  if (!ot::SettingsDriver::Get(v5, v13, *&__n[1], &v9) && v9 == __n[0] && !memcmp(v12, *&__n[1], __n[0]))
  {
    ot::Settings::Log(2u, v10, v13, v12);
  }

  else
  {
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(a1);
    v10 = ot::SettingsDriver::Set(v6, v13, v12, __n[0]);
    ot::Settings::Log(1u, v10, v13, v12);
  }

  return v10;
}

uint64_t ot::Settings::DeleteEntry(ot::InstanceLocator *a1, __int16 a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SettingsDriver>(a1);
  v4 = ot::SettingsDriver::Delete(v2, a2, -1);
  ot::Settings::Log(3u, v4, a2, 0);
  return v4;
}

uint64_t ot::LittleEndian::HostSwap16(uint64_t this)
{
  return this;
}

{
  return ot::LittleEndian::HostSwap16(this);
}

uint64_t ot::LittleEndian::HostSwap32(uint64_t this)
{
  return this;
}

{
  return ot::LittleEndian::HostSwap32(this);
}

void *ot::SettingsDriver::GetInstancePtr(ot::SettingsDriver *this)
{
  return ot::InstanceLocator::GetInstance(this);
}

{
  return ot::SettingsDriver::GetInstancePtr(this);
}

uint64_t ot::ClearAllBytes<ot::SettingsBase::ChildInfo>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::SettingsBase::ChildInfo>(result);
}

uint64_t ot::SettingsBase::ChildInfo::SetVersion(ot::SettingsBase::ChildInfo *this, unsigned __int16 a2)
{
  result = ot::LittleEndian::HostSwap16(a2);
  *(this + 15) = result;
  return result;
}

{
  return ot::SettingsBase::ChildInfo::SetVersion(this, a2);
}

uint64_t ot::Instance::Get<ot::SettingsDriver>(uint64_t a1)
{
  return a1 + 201;
}

{
  return ot::Instance::Get<ot::SettingsDriver>(a1);
}

uint64_t ot::StringLength(ot *this, const char *a2)
{
  v4 = 0;
  if (this)
  {
    while (1)
    {
      v3 = 0;
      if (v4 < a2)
      {
        v3 = *(this + v4) != 0;
      }

      if (!v3)
      {
        break;
      }

      ++v4;
    }
  }

  return v4;
}

ot *ot::StringFind(ot *this, const char *a2)
{
  v3 = 0;
  while (*this)
  {
    if (*this == a2)
    {
      return this;
    }

    this = (this + 1);
  }

  return v3;
}

const char *ot::StringFind(const char *a1, char *a2, char a3)
{
  v7 = 0;
  v6 = strlen(a1);
  v5 = strlen(a2);
  if (v5 <= v6)
  {
    for (i = 0; i <= v6 - v5; ++i)
    {
      {
        return &a1[i];
      }
    }
  }

  return v7;
}

uint64_t ot::anonymous namespace::Match(char *a1, char *a2, char a3)
{
  v10 = 0;
  if (a3)
  {
    if (a3 == 1)
    {
      while (*a2)
      {
        v5 = a1++;
        v9 = ot::ToLowercase(*v5);
        v6 = a2++;
        if (v9 != ot::ToLowercase(*v6))
        {
          return v10;
        }
      }
    }
  }

  else
  {
    while (*a2)
    {
      v3 = a1++;
      v4 = a2++;
      if (*v3 != *v4)
      {
        return v10;
      }
    }
  }

  if (*a1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

BOOL ot::StringEndsWith(ot *this, const char *a2)
{
  v5 = a2;
  v4 = strlen(this);
  v3 = 0;
  if (v4)
  {
    return *(this + v4 - 1) == v5;
  }

  return v3;
}

BOOL ot::StringEndsWith(const char *a1, char *a2, char a3)
{
  v6 = strlen(a1);
  v5 = strlen(a2);
  v4 = 0;
  if (v5)
  {
    v4 = 0;
    if (v6 >= v5)
    {
    }
  }

  return v4;
}

uint64_t ot::StringCopy(_BYTE *a1, unsigned __int16 a2, ot *a3, char a4)
{
  v7 = 0;
  if (a3)
  {
    v6 = ot::StringLength(a3, a2);
    if (v6 < a2)
    {
      if (a4 && a4 == 1 && (ot::IsValidUtf8String(a3, v4) & 1) == 0)
      {
        return 6;
      }

      else
      {
        memcpy(a1, a3, v6 + 1);
      }
    }

    else
    {
      return 7;
    }
  }

  else
  {
    *a1 = 0;
  }

  return v7;
}

uint64_t ot::IsValidUtf8String(ot *this, const char *a2)
{
  v2 = strlen(this);
  return ot::IsValidUtf8String(this, v2);
}

{
  _c_1 = 1;
  v4 = 0;
  while (v4 < a2)
  {
    _c = *(this + v4++);
    if ((_c & 0x80) != 0)
    {
      if ((_c & 0x40) == 0)
      {
        _c_1 = 0;
        return _c_1 & 1;
      }

      if ((_c & 0x20) == 0)
      {
        v5 = 1;
        goto LABEL_16;
      }

      if ((_c & 0x10) == 0)
      {
        v5 = 2;
        goto LABEL_16;
      }

      if ((_c & 8) != 0)
      {
        _c_1 = 0;
        return _c_1 & 1;
      }

      v5 = 3;
LABEL_16:
      while (v5--)
      {
        if (v4 >= a2)
        {
          _c_1 = 0;
          return _c_1 & 1;
        }

        _ca = *(this + v4++);
        if ((_ca & 0xC0) != 0x80)
        {
          _c_1 = 0;
          return _c_1 & 1;
        }
      }
    }

    else if (iscntrl(_c))
    {
      _c_1 = 0;
      return _c_1 & 1;
    }
  }

  return _c_1 & 1;
}

uint64_t ot::StringParseUint8(ot *this, const char **a2, unsigned __int8 *a3)
{
  return ot::StringParseUint8(this, a2, 0xFF);
}

{
  v10 = this;
  v9 = a2;
  v8 = a3;
  v7 = 6;
  v6 = *this;
  v5 = 0;
  v4 = 0;
  while (!ot::ParseDigit(*v6, &v4, a3))
  {
    v5 *= 10;
    v5 += v4;
    if (v5 > v8)
    {
      return 6;
    }

    v7 = 0;
    ++v6;
  }

  *v10 = v6;
  *v9 = v5;
  return v7;
}

uint64_t ot::ParseDigit(ot *this, _BYTE *a2, unsigned __int8 *a3)
{
  v6 = this;
  v4 = 0;
  if (ot::IsDigit(this))
  {
    *a2 = v6 - 48;
  }

  else
  {
    return 7;
  }

  return v4;
}

_BYTE *ot::StringConvertToLowercase(_BYTE *this, char *a2)
{
  for (i = this; *i; ++i)
  {
    this = ot::ToLowercase(*i);
    *i = this;
  }

  return this;
}

uint64_t ot::ToLowercase(ot *this)
{
  v2 = this;
  if (ot::IsUppercase(this))
  {
    v2 += 32;
  }

  return v2;
}

_BYTE *ot::StringConvertToUppercase(_BYTE *this, char *a2)
{
  for (i = this; *i; ++i)
  {
    this = ot::ToUppercase(*i);
    *i = this;
  }

  return this;
}

uint64_t ot::ToUppercase(ot *this)
{
  v2 = this;
  if (ot::IsLowercase(this))
  {
    v2 -= 32;
  }

  return v2;
}

BOOL ot::IsUppercase(ot *this)
{
  v2 = 0;
  if (this >= 65)
  {
    return this <= 90;
  }

  return v2;
}

BOOL ot::IsLowercase(ot *this)
{
  v2 = 0;
  if (this >= 97)
  {
    return this <= 122;
  }

  return v2;
}

BOOL ot::IsDigit(ot *this)
{
  v2 = 0;
  if (this >= 48)
  {
    return this <= 57;
  }

  return v2;
}

uint64_t ot::ParseHexDigit(ot *this, _BYTE *a2, unsigned __int8 *a3)
{
  v4 = 0;
  if (this < 65 || this > 70)
  {
    if (this < 97 || this > 102)
    {
      return ot::ParseDigit(this, a2, a3);
    }

    else
    {
      *a2 = this - 87;
    }
  }

  else
  {
    *a2 = this - 55;
  }

  return v4;
}

uint64_t ot::StringWriter::StringWriter(uint64_t this, char *a2, __int16 a3)
{
  *this = a2;
  *(this + 8) = 0;
  *(this + 10) = a3;
  **this = 0;
  return this;
}

uint64_t ot::StringWriter::Clear(uint64_t this)
{
  **this = 0;
  *(this + 8) = 0;
  return this;
}

ot::StringWriter *ot::StringWriter::Append(ot::StringWriter *this, const char *a2, ...)
{
  va_start(va, a2);
  ot::StringWriter::AppendVarArgs(this, a2, va);
  return this;
}

ot::StringWriter *ot::StringWriter::AppendVarArgs(ot::StringWriter *this, const char *a2, va_list a3)
{
  if (*(this + 5) <= *(this + 4))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(this + 5) - *(this + 4);
  }

  v6 = vsnprintf((*this + *(this + 4)), v4, a2, a3);
  if (v6 < 0)
  {
    __assert_rtn("AppendVarArgs", "string.cpp", 333, "len >= 0");
  }

  *(this + 4) += v6;
  if (ot::StringWriter::IsTruncated(this))
  {
    *(*this + *(this + 5) - 1) = 0;
  }

  return this;
}

BOOL ot::StringWriter::IsTruncated(ot::StringWriter *this)
{
  return *(this + 4) >= *(this + 5);
}

{
  return ot::StringWriter::IsTruncated(this);
}

ot::StringWriter *ot::StringWriter::AppendHexBytes(ot::StringWriter *this, unsigned __int8 *a2, __int16 a3)
{
  while (a3--)
  {
    v4 = a2++;
    ot::StringWriter::Append(this, "%02x", *v4);
  }

  return this;
}

ot::StringWriter *ot::StringWriter::AppendCharMultipleTimes(ot::StringWriter *this, char a2, __int16 a3)
{
  while (a3--)
  {
    ot::StringWriter::Append(this, "%c", a2);
  }

  return this;
}

int iscntrl(int _c)
{
  return __istype(_c, 0x200uLL);
}

{
  return iscntrl(_c);
}

int __istype(__darwin_ct_rune_t _c, unint64_t _f)
{
  if (isascii(_c))
  {
    return (_DefaultRuneLocale.__runetype[_c] & _f) != 0;
  }

  else
  {
    return __maskrune(_c, _f) != 0;
  }
}

{
  return __istype(_c, _f);
}

int isascii(int _c)
{
  return (_c & 0xFFFFFF80) == 0;
}

{
  return isascii(_c);
}

uint64_t ot::Tasklet::Post(ot::Tasklet *this)
{
  result = ot::Tasklet::IsPosted(this);
  if ((result & 1) == 0)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tasklet::Scheduler>(this);
    return ot::Tasklet::Scheduler::PostTasklet(v2, this);
  }

  return result;
}

BOOL ot::Tasklet::IsPosted(ot::Tasklet *this)
{
  return *(this + 1) != 0;
}

{
  return ot::Tasklet::IsPosted(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Tasklet::Scheduler>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Tasklet::Scheduler>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Tasklet::Scheduler>(a1);
}

uint64_t ot::Tasklet::Scheduler::PostTasklet(uint64_t this, ot::Tasklet *a2)
{
  if (*this)
  {
    *(a2 + 1) = *(*this + 8);
    *(*this + 8) = a2;
    *this = a2;
  }

  else
  {
    *this = a2;
    *(*this + 8) = *this;
    Instance = ot::InstanceLocator::GetInstance(a2);
    return otTaskletsSignalPending(Instance);
  }

  return this;
}

uint64_t ot::Tasklet::RunTask(uint64_t (**this)(void))
{
  return (*this)();
}

{
  return ot::Tasklet::RunTask(this);
}

ot::TimeTicker *ot::TimeTicker::TimeTicker(ot::TimeTicker *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 0;
  ot::TimerMilliIn<ot::TimeTicker,&ot::TimeTicker::HandleTimer>::TimerMilliIn((this + 8), a2);
  return this;
}

{
  ot::TimeTicker::TimeTicker(this, a2);
  return this;
}

void ot::TimeTicker::HandleTimer(ot::TimeTicker *this)
{
  v35 = this;
  FireTime = ot::Timer::GetFireTime((this + 8));
  v1 = ot::Random::NonCrypto::AddJitter(0x3E8, 4u);
  v34 = ot::Time::operator+(&FireTime, v1);
  ot::TimerMilli::FireAt((this + 8), v34);
  v32 = *this;
  if ((v32 & ot::TimeTicker::Mask(0)) != 0)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
    ot::MeshForwarder::HandleTimeTick(v2);
  }

  v30 = *this;
  if ((v30 & ot::TimeTicker::Mask(1)) != 0)
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::MleRouter::HandleTimeTick(v3);
  }

  v29 = *this;
  if ((v29 & ot::TimeTicker::Mask(2)) != 0)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
    ot::AddressResolver::HandleTimeTick(v4);
  }

  v28 = *this;
  if ((v28 & ot::TimeTicker::Mask(6)) != 0)
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Notifier>(this);
    ot::NetworkData::Notifier::HandleTimeTick(v5);
  }

  v27 = *this;
  if ((v27 & ot::TimeTicker::Mask(4)) != 0)
  {
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(this);
    ot::DuaManager::HandleTimeTick(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v26 = *this;
  if ((v26 & ot::TimeTicker::Mask(5)) != 0)
  {
    v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MlrManager>(this);
    ot::MlrManager::HandleTimeTick(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  v25 = *this;
  if ((v25 & ot::TimeTicker::Mask(7)) != 0)
  {
    v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Mpl>(this);
    ot::Ip6::Mpl::HandleTimeTick(v22);
  }

  v24 = *this;
  if ((v24 & ot::TimeTicker::Mask(8)) != 0)
  {
    v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
    ot::BackboneRouter::Local::HandleTimeTick(v23);
  }
}

ot::TimerMilli *ot::TimerMilliIn<ot::TimeTicker,&ot::TimeTicker::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::TimeTicker,&ot::TimeTicker::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::TimeTicker,&ot::TimeTicker::HandleTimer>::HandleTimer);
  return a1;
}

uint64_t ot::TimeTicker::RegisterReceiver(_DWORD *a1, char a2)
{
  *a1 |= ot::TimeTicker::Mask(a2);
  result = ot::Timer::IsRunning((a1 + 2));
  if ((result & 1) == 0)
  {
    Uint32InRange = ot::Random::NonCrypto::GetUint32InRange(0, 0x3E9u);
    return ot::TimerMilli::Start((a1 + 2), Uint32InRange);
  }

  return result;
}

uint64_t ot::TimeTicker::Mask(char a1)
{
  return (1 << a1);
}

{
  return ot::TimeTicker::Mask(a1);
}

uint64_t ot::TimeTicker::UnregisterReceiver(_DWORD *a1, char a2)
{
  result = ot::TimeTicker::Mask(a2);
  *a1 &= ~result;
  if (!*a1)
  {
    return ot::TimerMilli::Stop((a1 + 2));
  }

  return result;
}

uint64_t ot::Timer::GetFireTime(ot::Timer *this)
{
  return *(this + 2);
}

{
  return ot::Timer::GetFireTime(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Mpl>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Ip6::Mpl>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Mpl>(a1);
}

uint64_t ot::Instance::Get<ot::Ip6::Mpl>(uint64_t a1)
{
  return a1 + 85360;
}

{
  return ot::Instance::Get<ot::Ip6::Mpl>(a1);
}

ot::NextFireTime *ot::NextFireTime::NextFireTime(ot::NextFireTime *this)
{
  Now = ot::TimerMilli::GetNow(this);
  ot::NextFireTime::NextFireTime(this, Now);
  return this;
}

{
  Now = ot::TimerMilli::GetNow(this);
  ot::NextFireTime::NextFireTime(this, Now);
  return this;
}

_DWORD *ot::NextFireTime::NextFireTime(_DWORD *a1, int a2)
{
  v5 = a2;
  *a1 = a2;
  DistantFuture = ot::Time::GetDistantFuture(&v5);
  result = a1;
  a1[1] = DistantFuture;
  return result;
}

{
  ot::NextFireTime::NextFireTime(a1, a2);
  return a1;
}

uint64_t ot::Time::GetDistantFuture(ot::Time *this)
{
  ot::Time::Time(&v2, *this + 0x7FFFFFFF);
  return v2;
}

{
  return ot::Time::GetDistantFuture(this);
}

uint64_t ot::NextFireTime::UpdateIfEarlier(int *a1, int a2)
{
  v5 = a1[1];
  v2 = ot::Max<ot::Time>(*a1, a2);
  result = ot::Min<ot::Time>(v5, v2);
  a1[1] = result;
  return result;
}

uint64_t ot::Min<ot::Time>(int a1, int a2)
{
  v5 = a1;
  v4 = a2;
  if (ot::Time::operator<(&v5, &v4))
  {
    v3 = &v5;
  }

  else
  {
    v3 = &v4;
  }

  return *v3;
}

{
  return ot::Min<ot::Time>(a1, a2);
}

uint64_t ot::Max<ot::Time>(int a1, int a2)
{
  v5 = a1;
  v4 = a2;
  if (ot::Time::operator<(&v5, &v4))
  {
    v3 = &v4;
  }

  else
  {
    v3 = &v5;
  }

  return *v3;
}

{
  return ot::Max<ot::Time>(a1, a2);
}

BOOL ot::Timer::DoesFireBefore(ot::Timer *a1, ot::Timer *a2, int a3)
{
  v14 = a3;
  v13 = a1;
  v12 = a2;
  v11 = 0;
  FireTime = ot::Timer::GetFireTime(a1);
  v10 = ot::Time::operator<(&FireTime, &v14);
  v8 = ot::Timer::GetFireTime(v12);
  v3 = ot::Time::operator<(&v8, &v14);
  if (v3 == v10)
  {
    v7 = ot::Timer::GetFireTime(a1);
    v6 = ot::Timer::GetFireTime(v12);
    return ot::Time::operator<(&v7, &v6);
  }

  else
  {
    return v10;
  }
}

uint64_t ot::TimerMilli::StartAt(ot::InstanceLocator *a1, int a2, unsigned int a3)
{
  v6 = a2;
  if (a3 > 0x7FFFFFFF)
  {
    __assert_rtn("StartAt", "timer.cpp", 106, "aDelay <= kMaxDelay");
  }

  v5 = ot::Time::operator+(&v6, a3);
  return ot::TimerMilli::FireAt(a1, v5);
}

uint64_t ot::TimerMilli::FireAt(ot::InstanceLocator *a1, int a2)
{
  *(a1 + 2) = a2;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimerMilli::Scheduler>(a1);
  return ot::TimerMilli::Scheduler::Add(v2, a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::TimerMilli::Scheduler>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::TimerMilli::Scheduler>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::TimerMilli::Scheduler>(a1);
}

uint64_t ot::TimerMilli::Scheduler::Add(ot::TimerMilli::Scheduler *this, ot::TimerMilli *a2)
{
  return ot::Timer::Scheduler::Add(this, a2, ot::TimerMilli::Scheduler::sAlarmMilliApi);
}

{
  return ot::TimerMilli::Scheduler::Add(this, a2);
}

uint64_t ot::TimerMilli::FireAt(ot::TimerMilli *this, const ot::NextFireTime *a2)
{
  if (!ot::NextFireTime::IsSet(a2))
  {
    return ot::TimerMilli::Stop(this);
  }

  NextTime = ot::NextFireTime::GetNextTime(a2);
  return ot::TimerMilli::FireAt(this, NextTime);
}

BOOL ot::NextFireTime::IsSet(ot::NextFireTime *this)
{
  v4 = this;
  DistantFuture = ot::Time::GetDistantFuture(this);
  return ot::Unequatable<ot::Time>::operator!=(this + 1, &DistantFuture);
}

{
  return ot::NextFireTime::IsSet(this);
}

uint64_t ot::NextFireTime::GetNextTime(ot::NextFireTime *this)
{
  return *(this + 1);
}

{
  return ot::NextFireTime::GetNextTime(this);
}

uint64_t ot::TimerMilli::FireAtIfEarlier(int *a1, int a2)
{
  v4 = a2;
  if (!ot::Timer::IsRunning(a1))
  {
    return ot::TimerMilli::FireAt(a1, v4);
  }

  result = ot::Time::operator>(a1 + 2, &v4);
  if (result)
  {
    return ot::TimerMilli::FireAt(a1, v4);
  }

  return result;
}

uint64_t ot::TimerMilli::FireAtIfEarlier(ot::TimerMilli *this, const ot::NextFireTime *a2)
{
  result = ot::NextFireTime::IsSet(a2);
  if (result)
  {
    NextTime = ot::NextFireTime::GetNextTime(a2);
    return ot::TimerMilli::FireAtIfEarlier(this, NextTime);
  }

  return result;
}

uint64_t ot::TimerMilli::Scheduler::Remove(ot::TimerMilli::Scheduler *this, ot::TimerMilli *a2)
{
  return ot::Timer::Scheduler::Remove(this, a2, ot::TimerMilli::Scheduler::sAlarmMilliApi);
}

{
  return ot::TimerMilli::Scheduler::Remove(this, a2);
}

uint64_t ot::Instance::Get<ot::TimerMilli::Scheduler>(uint64_t a1)
{
  return a1 + 16;
}

{
  return ot::Instance::Get<ot::TimerMilli::Scheduler>(a1);
}

uint64_t ot::TimerMilli::Scheduler::RemoveAll(ot::TimerMilli::Scheduler *this)
{
  return ot::Timer::Scheduler::RemoveAll(this, ot::TimerMilli::Scheduler::sAlarmMilliApi);
}

{
  return ot::TimerMilli::Scheduler::RemoveAll(this);
}

uint64_t ot::Timer::Scheduler::Add(uint64_t *a1, ot::Timer *a2, uint64_t a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  v3 = (*(a3 + 16))();
  ot::Time::Time(&v9, v3);
  ot::Timer::Scheduler::Remove(a1, v12, v11);
  v8[1] = a1;
  v8[0] = ot::LinkedList<ot::Timer>::begin(a1);
  v7 = ot::LinkedList<ot::Timer>::end();
  while (ot::ItemPtrIterator<ot::Timer,ot::LinkedList<ot::Timer>::Iterator>::operator!=(v8, &v7))
  {
    v6 = ot::ItemPtrIterator<ot::Timer,ot::LinkedList<ot::Timer>::Iterator>::operator*(v8);
    if (ot::Timer::DoesFireBefore(v12, v6, v9))
    {
      break;
    }

    v10 = v6;
    ot::ItemPtrIterator<ot::Timer,ot::LinkedList<ot::Timer>::Iterator>::operator++(v8);
  }

  if (v10)
  {
    return ot::LinkedList<ot::Timer>::PushAfter(a1, v12, v10);
  }

  ot::LinkedList<ot::Timer>::Push(a1, v12);
  return ot::Timer::Scheduler::SetAlarm(a1, v11);
}

uint64_t ot::Timer::Scheduler::Remove(uint64_t *a1, ot::Timer *a2, uint64_t a3)
{
  result = ot::Timer::IsRunning(a2);
  if (result)
  {
    if (ot::LinkedList<ot::Timer>::GetHead(a1) == a2)
    {
      ot::LinkedList<ot::Timer>::Pop(a1);
      ot::Timer::Scheduler::SetAlarm(a1, a3);
    }

    else
    {
      ot::LinkedList<ot::Timer>::Remove(a1, a2);
      IgnoreError();
    }

    return ot::LinkedListEntry<ot::Timer>::SetNext(a2, a2);
  }

  return result;
}

uint64_t ot::LinkedList<ot::Timer>::begin(uint64_t a1)
{
  Head = ot::LinkedList<ot::Timer>::GetHead(a1);
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v3, Head);
  return v3;
}

{
  return ot::LinkedList<ot::Timer>::begin(a1);
}

uint64_t ot::LinkedList<ot::Timer>::end()
{
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v1, 0);
  return v1;
}

{
  return ot::LinkedList<ot::Timer>::end();
}

BOOL ot::ItemPtrIterator<ot::Timer,ot::LinkedList<ot::Timer>::Iterator>::operator!=(void *a1, void *a2)
{
  return *a1 != *a2;
}

{
  return ot::ItemPtrIterator<ot::Timer,ot::LinkedList<ot::Timer>::Iterator>::operator!=(a1, a2);
}

uint64_t ot::ItemPtrIterator<ot::Timer,ot::LinkedList<ot::Timer>::Iterator>::operator*(uint64_t a1)
{
  return *a1;
}

{
  return ot::ItemPtrIterator<ot::Timer,ot::LinkedList<ot::Timer>::Iterator>::operator*(a1);
}

uint64_t ot::ItemPtrIterator<ot::Timer,ot::LinkedList<ot::Timer>::Iterator>::operator++(uint64_t *a1)
{
  return ot::LinkedList<ot::Timer>::Iterator::Advance(a1);
}

{
  return ot::ItemPtrIterator<ot::Timer,ot::LinkedList<ot::Timer>::Iterator>::operator++(a1);
}

uint64_t ot::LinkedList<ot::Timer>::Push(uint64_t *a1, uint64_t a2)
{
  result = ot::LinkedListEntry<ot::Timer>::SetNext(a2, *a1);
  *a1 = a2;
  return result;
}

{
  return ot::LinkedList<ot::Timer>::Push(a1, a2);
}

uint64_t ot::Timer::Scheduler::SetAlarm(ot::InstanceLocator *a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  if (ot::LinkedList<ot::Timer>::IsEmpty(a1))
  {
    v9 = *(v13 + 8);
    Instance = ot::InstanceLocator::GetInstance(a1);
    return v9(Instance);
  }

  else
  {
    Head = ot::LinkedList<ot::Timer>::GetHead(a1);
    v4 = (*(v13 + 16))();
    ot::Time::Time(&v11, v4);
    if (ot::Time::operator<(&v11, (Head + 8)))
    {
      v8 = ot::Time::operator-((Head + 8), &v11);
    }

    else
    {
      v8 = 0;
    }

    v6 = *v13;
    v7 = ot::InstanceLocator::GetInstance(a1);
    Value = ot::Time::GetValue(&v11);
    return v6(v7, Value, v8);
  }
}

uint64_t ot::LinkedList<ot::Timer>::PushAfter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Next = ot::LinkedListEntry<ot::Timer>::GetNext(a3);
  ot::LinkedListEntry<ot::Timer>::SetNext(a2, Next);
  return ot::LinkedListEntry<ot::Timer>::SetNext(a3, a2);
}

{
  return ot::LinkedList<ot::Timer>::PushAfter(a1, a2, a3);
}

uint64_t ot::LinkedList<ot::Timer>::GetHead(uint64_t a1)
{
  return *a1;
}

{
  return ot::LinkedList<ot::Timer>::GetHead(a1);
}

uint64_t ot::LinkedList<ot::Timer>::Pop(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    *a1 = ot::LinkedListEntry<ot::Timer>::GetNext(*a1);
  }

  return v2;
}

{
  return ot::LinkedList<ot::Timer>::Pop(a1);
}

uint64_t ot::LinkedList<ot::Timer>::Remove(uint64_t *a1, uint64_t a2)
{
  v5[2] = a1;
  v5[1] = a2;
  v5[0] = 0;
  v4 = ot::LinkedList<ot::Timer>::Find(a1, a2, v5);
  if (!v4)
  {
    ot::LinkedList<ot::Timer>::PopAfter(a1, v5[0]);
  }

  return v4;
}

{
  return ot::LinkedList<ot::Timer>::Remove(a1, a2);
}

uint64_t ot::LinkedListEntry<ot::Timer>::SetNext(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  return result;
}

{
  return ot::LinkedListEntry<ot::Timer>::SetNext(result, a2);
}

BOOL ot::LinkedList<ot::Timer>::IsEmpty(void *a1)
{
  return *a1 == 0;
}

{
  return ot::LinkedList<ot::Timer>::IsEmpty(a1);
}

uint64_t ot::Timer::Scheduler::ProcessTimers(ot::InstanceLocator *a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  Head = ot::LinkedList<ot::Timer>::GetHead(a1);
  if (!Head)
  {
    return ot::Timer::Scheduler::SetAlarm(a1, v7);
  }

  v2 = (*(v7 + 16))();
  ot::Time::Time(&v5, v2);
  if (!ot::Time::operator>=(&v5, Head + 2))
  {
    return ot::Timer::Scheduler::SetAlarm(a1, v7);
  }

  ot::Timer::Scheduler::Remove(a1, Head, v7);
  return ot::Timer::Fired(Head);
}

uint64_t ot::Timer::Fired(uint64_t (**this)(void))
{
  return (*this)();
}

{
  return ot::Timer::Fired(this);
}

uint64_t ot::Timer::Scheduler::RemoveAll(uint64_t *a1, uint64_t a2)
{
  while (1)
  {
    v4 = ot::LinkedList<ot::Timer>::Pop(a1);
    if (!v4)
    {
      break;
    }

    ot::LinkedListEntry<ot::Timer>::SetNext(v4, v4);
  }

  return ot::Timer::Scheduler::SetAlarm(a1, a2);
}

uint64_t otPlatAlarmMilliFired(uint64_t a1)
{
  result = otInstanceIsInitialized(a1);
  if (result)
  {
    v2 = ot::AsCoreType<otInstance>(a1);
    v3 = ot::Instance::Get<ot::TimerMilli::Scheduler>(v2);
    return ot::TimerMilli::Scheduler::ProcessTimers(v3);
  }

  return result;
}

uint64_t ot::TimerMilli::Scheduler::ProcessTimers(ot::TimerMilli::Scheduler *this)
{
  return ot::Timer::Scheduler::ProcessTimers(this, ot::TimerMilli::Scheduler::sAlarmMilliApi);
}

{
  return ot::TimerMilli::Scheduler::ProcessTimers(this);
}

uint64_t ot::TimerMicro::StartAt(ot::InstanceLocator *a1, int a2, unsigned int a3)
{
  v6 = a2;
  if (a3 > 0x7FFFFFFF)
  {
    __assert_rtn("StartAt", "timer.cpp", 274, "aDelay <= kMaxDelay");
  }

  v5 = ot::Time::operator+(&v6, a3);
  return ot::TimerMicro::FireAt(a1, v5);
}

uint64_t ot::TimerMicro::FireAt(ot::InstanceLocator *a1, int a2)
{
  *(a1 + 2) = a2;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimerMicro::Scheduler>(a1);
  return ot::TimerMicro::Scheduler::Add(v2, a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::TimerMicro::Scheduler>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::TimerMicro::Scheduler>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::TimerMicro::Scheduler>(a1);
}

uint64_t ot::TimerMicro::Scheduler::Add(ot::TimerMicro::Scheduler *this, ot::TimerMicro *a2)
{
  return ot::Timer::Scheduler::Add(this, a2, ot::TimerMicro::Scheduler::sAlarmMicroApi);
}

{
  return ot::TimerMicro::Scheduler::Add(this, a2);
}

uint64_t ot::TimerMicro::Scheduler::Remove(ot::TimerMicro::Scheduler *this, ot::TimerMicro *a2)
{
  return ot::Timer::Scheduler::Remove(this, a2, ot::TimerMicro::Scheduler::sAlarmMicroApi);
}

{
  return ot::TimerMicro::Scheduler::Remove(this, a2);
}

uint64_t ot::Instance::Get<ot::TimerMicro::Scheduler>(uint64_t a1)
{
  return a1 + 24;
}

{
  return ot::Instance::Get<ot::TimerMicro::Scheduler>(a1);
}

uint64_t ot::TimerMicro::Scheduler::RemoveAll(ot::TimerMicro::Scheduler *this)
{
  return ot::Timer::Scheduler::RemoveAll(this, ot::TimerMicro::Scheduler::sAlarmMicroApi);
}

{
  return ot::TimerMicro::Scheduler::RemoveAll(this);
}

uint64_t otPlatAlarmMicroFired(uint64_t a1)
{
  result = otInstanceIsInitialized(a1);
  if (result)
  {
    v2 = ot::AsCoreType<otInstance>(a1);
    v3 = ot::Instance::Get<ot::TimerMicro::Scheduler>(v2);
    return ot::TimerMicro::Scheduler::ProcessTimers(v3);
  }

  return result;
}

uint64_t ot::TimerMicro::Scheduler::ProcessTimers(ot::TimerMicro::Scheduler *this)
{
  return ot::Timer::Scheduler::ProcessTimers(this, ot::TimerMicro::Scheduler::sAlarmMicroApi);
}

{
  return ot::TimerMicro::Scheduler::ProcessTimers(this);
}

BOOL ot::Unequatable<ot::Time>::operator!=(_DWORD *a1, _DWORD *a2)
{
  return !ot::Time::operator==(a1, a2);
}

{
  return ot::Unequatable<ot::Time>::operator!=(a1, a2);
}

BOOL ot::Time::operator==(_DWORD *a1, _DWORD *a2)
{
  return *a1 == *a2;
}

{
  return ot::Time::operator==(a1, a2);
}

uint64_t ot::LinkedList<ot::Timer>::Iterator::Advance(uint64_t *a1)
{
  result = ot::LinkedListEntry<ot::Timer>::GetNext(*a1);
  *a1 = result;
  return result;
}

{
  return ot::LinkedList<ot::Timer>::Iterator::Advance(a1);
}

uint64_t ot::LinkedListEntry<ot::Timer>::GetNext(uint64_t a1)
{
  return *(a1 + 16);
}

{
  return *(a1 + 16);
}

{
  return ot::LinkedListEntry<ot::Timer>::GetNext(a1);
}

{
  return ot::LinkedListEntry<ot::Timer>::GetNext(a1);
}

uint64_t ot::LinkedList<ot::Timer>::Find(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  ot::AsConst<ot::LinkedList<ot::Timer>>();
  return ot::LinkedList<ot::Timer>::Find(v3, a2, a3);
}

{
  return ot::LinkedList<ot::Timer>::Find(a1, a2, a3);
}

uint64_t ot::LinkedList<ot::Timer>::PopAfter(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return ot::LinkedList<ot::Timer>::Pop(a1);
  }

  Next = ot::LinkedListEntry<ot::Timer>::GetNext(a2);
  if (Next)
  {
    v2 = ot::LinkedListEntry<ot::Timer>::GetNext(Next);
    ot::LinkedListEntry<ot::Timer>::SetNext(a2, v2);
  }

  return Next;
}

{
  return ot::LinkedList<ot::Timer>::PopAfter(a1, a2);
}

void ot::AsConst<ot::LinkedList<ot::Timer>>()
{
  ;
}

{
  ot::AsConst<ot::LinkedList<ot::Timer>>();
}

uint64_t ot::LinkedList<ot::Timer>::Find(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = 23;
  *a3 = 0;
  for (i = *a1; i; i = ot::LinkedListEntry<ot::Timer>::GetNext(i))
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
  return ot::LinkedList<ot::Timer>::Find(a1, a2, a3);
}

uint64_t ot::Tlv::ReadUintTlv<unsigned char>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  TlvValue = ot::Tlv::ReadTlvValue(a1, a2, a3, 1);
  if (!TlvValue)
  {
    *a3 = ot::BigEndian::HostSwap<unsigned char>(*a3);
  }

  return TlvValue;
}

{
  return ot::Tlv::ReadUintTlv<unsigned char>(a1, a2, a3);
}

uint64_t ot::Tlv::ReadTlvValue(ot::Tlv *this, const ot::Message *a2, char *a3, void *a4)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = 0;
  v7 = ot::Tlv::ParsedInfo::ParseFrom(v5, this, a2);
  if (!v7)
  {
    if (ot::OffsetRange::Contains(v6, v8))
    {
      ot::OffsetRange::ShrinkLength(v6, v8);
      ot::Message::ReadBytes(v11, v6, v9);
    }

    else
    {
      return 6;
    }
  }

  return v7;
}

uint64_t ot::BigEndian::HostSwap<unsigned char>(uint64_t result)
{
  return result;
}

{
  return ot::BigEndian::HostSwap<unsigned char>(result);
}

uint64_t ot::Tlv::ReadUintTlv<unsigned short>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  TlvValue = ot::Tlv::ReadTlvValue(a1, a2, a3, 2);
  if (!TlvValue)
  {
    *a3 = ot::BigEndian::HostSwap<unsigned short>(*a3);
  }

  return TlvValue;
}

{
  return ot::Tlv::ReadUintTlv<unsigned short>(a1, a2, a3);
}

uint64_t ot::BigEndian::HostSwap<unsigned short>(unsigned __int16 a1)
{
  return ot::BigEndian::HostSwap16(a1);
}

{
  return ot::BigEndian::HostSwap<unsigned short>(a1);
}

uint64_t ot::Tlv::ReadUintTlv<unsigned int>(ot::Tlv *a1, unsigned __int16 a2, char *a3)
{
  TlvValue = ot::Tlv::ReadTlvValue(a1, a2, a3, 4);
  if (!TlvValue)
  {
    *a3 = ot::BigEndian::HostSwap<unsigned int>(*a3);
  }

  return TlvValue;
}

{
  return ot::Tlv::ReadUintTlv<unsigned int>(a1, a2, a3);
}

uint64_t ot::BigEndian::HostSwap<unsigned int>(unsigned int a1)
{
  return ot::BigEndian::HostSwap32(a1);
}

{
  return ot::BigEndian::HostSwap<unsigned int>(a1);
}

uint64_t ot::Tlv::FindUintTlv<unsigned char>(const ot::Message *a1, unsigned __int8 a2, char *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v8 = ot::Tlv::ParsedInfo::FindIn(v6, a1, a2);
  if (!v8)
  {
    v5 = v11;
    Offset = ot::OffsetRange::GetOffset(&v7);
    return ot::Tlv::ReadUintTlv<unsigned char>(v5, Offset, v9);
  }

  return v8;
}

{
  return ot::Tlv::FindUintTlv<unsigned char>(a1, a2, a3);
}

uint64_t ot::Tlv::ParsedInfo::FindIn(ot::Tlv::ParsedInfo *this, const ot::Message *a2, unsigned __int8 a3)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  v7 = 23;
  ot::OffsetRange::InitFromMessageOffsetToEnd(v6, a2);
  while (!ot::Tlv::ParsedInfo::ParseFrom(this, v9, v6))
  {
    if (*this == v8)
    {
      return 0;
    }

    Length = ot::OffsetRange::GetLength((this + 2));
    ot::OffsetRange::AdvanceOffset(v6, Length);
  }

  return v7;
}

uint64_t ot::Tlv::FindUintTlv<unsigned short>(const ot::Message *a1, unsigned __int8 a2, char *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v8 = ot::Tlv::ParsedInfo::FindIn(v6, a1, a2);
  if (!v8)
  {
    v5 = v11;
    Offset = ot::OffsetRange::GetOffset(&v7);
    return ot::Tlv::ReadUintTlv<unsigned short>(v5, Offset, v9);
  }

  return v8;
}

{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, a2, a3);
}

uint64_t ot::Tlv::FindUintTlv<unsigned int>(const ot::Message *a1, unsigned __int8 a2, char *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v8 = ot::Tlv::ParsedInfo::FindIn(v6, a1, a2);
  if (!v8)
  {
    v5 = v11;
    Offset = ot::OffsetRange::GetOffset(&v7);
    return ot::Tlv::ReadUintTlv<unsigned int>(v5, Offset, v9);
  }

  return v8;
}

{
  return ot::Tlv::FindUintTlv<unsigned int>(a1, a2, a3);
}

uint64_t ot::Tlv::AppendUintTlv<unsigned char>(uint64_t a1, char a2, unsigned __int8 a3)
{
  *&v5[1] = a1;
  v5[0] = a2;
  v4[1] = a3;
  v4[0] = ot::BigEndian::HostSwap<unsigned char>(a3);
  return ot::Tlv::AppendTlv(*&v5[1], v5[0], v4, 1);
}

{
  return ot::Tlv::AppendUintTlv<unsigned char>(a1, a2, a3);
}

uint64_t ot::Tlv::AppendTlv(ot::Tlv *this, ot::Message *a2, void *a3, const void *a4)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v6 = 0;
  if (a4 == 255)
  {
    __assert_rtn("AppendTlv", "tlvs.cpp", 277, "aLength <= Tlv::kBaseTlvMaxLength");
  }

  ot::Tlv::SetType(v5, v9);
  ot::Tlv::SetLength(v5, v7);
  v6 = ot::Message::Append<ot::Tlv>(v10, v5);
  if (!v6 && v7)
  {
    return ot::Message::AppendBytes(v10, v8, v7);
  }

  return v6;
}

uint64_t ot::Tlv::AppendUintTlv<unsigned short>(uint64_t a1, char a2, unsigned __int16 a3)
{
  *&v5[1] = a1;
  v5[0] = a2;
  v4[1] = a3;
  v4[0] = ot::BigEndian::HostSwap<unsigned short>(a3);
  return ot::Tlv::AppendTlv(*&v5[1], v5[0], v4, 2);
}

{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, a2, a3);
}

uint64_t ot::Tlv::AppendUintTlv<unsigned int>(ot::Tlv *a1, unsigned __int8 a2, unsigned int a3)
{
  v6 = a1;
  v5 = a2;
  v4[1] = a3;
  v4[0] = ot::BigEndian::HostSwap<unsigned int>(a3);
  return ot::Tlv::AppendTlv(v6, v5, v4, 4);
}

{
  return ot::Tlv::AppendUintTlv<unsigned int>(a1, a2, a3);
}

uint64_t ot::Tlv::GetSize(ot::Tlv *this)
{
  if (!ot::Tlv::IsExtended(this))
  {
    return ot::Tlv::GetLength(this) + 2;
  }

  ot::As<ot::ExtendedTlv>();
  return ot::ExtendedTlv::GetLength(v1) + 4;
}

void ot::As<ot::ExtendedTlv>()
{
  ;
}

{
  ot::As<ot::ExtendedTlv>();
}

uint64_t ot::ExtendedTlv::GetLength(ot::ExtendedTlv *this)
{
  return ot::BigEndian::HostSwap16(*(this + 1));
}

{
  return ot::ExtendedTlv::GetLength(this);
}

uint64_t ot::Tlv::GetValue(ot::Tlv *this)
{
  IsExtended = ot::Tlv::IsExtended(this);
  v2 = 4;
  if (!IsExtended)
  {
    v2 = 2;
  }

  return this + v2;
}

{
  IsExtended = ot::Tlv::IsExtended(this);
  v2 = 4;
  if (!IsExtended)
  {
    v2 = 2;
  }

  return this + v2;
}

uint64_t ot::Tlv::FindTlv(ot::Tlv *this, const ot::Message *a2, unsigned __int16 a3, char *a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  *v8 = a4;
  v7 = 0;
  return ot::Tlv::FindTlv(this, a2, a3, a4, &v7, a6);
}

{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v10 = 0;
  v10 = ot::Tlv::ParsedInfo::FindIn(v8, this, a2);
  if (!v10)
  {
    ot::OffsetRange::ShrinkLength(&v9, v13);
    ot::Message::ReadBytes(v15, &v9, v12);
    Offset = ot::OffsetRange::GetOffset(&v9);
    *v11 = Offset;
  }

  return v10;
}

uint64_t ot::Tlv::FindTlvValueOffsetRange(ot::Tlv *this, const ot::Message *a2, _DWORD *a3, ot::OffsetRange *a4)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  v7 = ot::Tlv::ParsedInfo::FindIn(v5, this, a2);
  if (!v7)
  {
    *v8 = v6;
  }

  return v7;
}

uint64_t ot::Tlv::ParsedInfo::ParseFrom(ot::Tlv::ParsedInfo *this, const ot::Message *a2, unsigned __int16 a3)
{
  v9 = this;
  v8 = a2;
  v7[2] = a3;
  v5 = a3;
  Length = ot::Message::GetLength(a2);
  ot::OffsetRange::InitFromRange(v7, v5, Length);
  return ot::Tlv::ParsedInfo::ParseFrom(this, v8, v7);
}

uint64_t ot::Tlv::ParsedInfo::ParseFrom(ot::Tlv::ParsedInfo *this, const ot::Message *a2, const ot::OffsetRange *a3)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  v10 = ot::Message::Read<ot::Tlv>(a2, a3, v9);
  if (!v10)
  {
    *this = ot::Tlv::GetType(v9);
    if (ot::Tlv::IsExtended(v9))
    {
      v10 = ot::Message::Read<ot::ExtendedTlv>(v12, v11, v8);
      if (v10)
      {
        return v10;
      }

      *(this + 1) = 1;
      v7 = 4;
      v6 = ot::ExtendedTlv::GetLength(v8) + 4;
    }

    else
    {
      *(this + 1) = 0;
      v7 = 2;
      v6 = ot::Tlv::GetLength(v9) + 2;
    }

    *(this + 2) = *v11;
    if (ot::OffsetRange::Contains((this + 2), v6))
    {
      ot::OffsetRange::ShrinkLength(this + 2, v6);
      EndOffset = ot::OffsetRange::GetEndOffset((this + 2));
      if (EndOffset <= ot::Message::GetLength(v12))
      {
        *(this + 6) = *(this + 2);
        ot::OffsetRange::AdvanceOffset(this + 3, v7);
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
  }

  return v10;
}

uint64_t ot::Message::Read<ot::Tlv>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 2u);
}

{
  return ot::Message::Read<ot::Tlv>(a1, a2, a3);
}

uint64_t ot::Tlv::GetType(ot::Tlv *this)
{
  return *this;
}

{
  return ot::Tlv::GetType(this);
}

uint64_t ot::Message::Read<ot::ExtendedTlv>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 4u);
}

{
  return ot::Message::Read<ot::ExtendedTlv>(a1, a2, a3);
}

uint64_t ot::Tlv::ReadStringTlv(ot::Tlv *this, const ot::Message *a2, unsigned __int8 a3, char *a4, char *a5)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = 0;
  v9 = ot::Tlv::ParsedInfo::ParseFrom(v7, this, a2);
  if (!v9)
  {
    ot::OffsetRange::ShrinkLength(v8, v11);
    ot::Message::ReadBytes(v13, v8, v10);
    v6 = v10;
    v6[ot::OffsetRange::GetLength(v8)] = 0;
  }

  return v9;
}

uint64_t ot::Tlv::FindStringTlv(ot::Tlv *this, const ot::Message *a2, unsigned __int8 a3, uint64_t a4, char *a5)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  *v12 = a4;
  v11 = 0;
  v11 = ot::Tlv::ParsedInfo::FindIn(v9, this, a2);
  if (!v11)
  {
    v8 = v15;
    Offset = ot::OffsetRange::GetOffset(&v10);
    return ot::Tlv::ReadStringTlv(v8, Offset, v13, *v12, v6);
  }

  return v11;
}

uint64_t ot::Tlv::FindTlv(ot::Tlv *this, const ot::Message *a2, void *a3, ot::OffsetRange *a4)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  TlvValueOffsetRange = 0;
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(this, a2, &v5, a4);
  if (!TlvValueOffsetRange)
  {
    return ot::Message::Read(v10, &v5, v8, v7);
  }

  return TlvValueOffsetRange;
}

uint64_t ot::Tlv::AppendStringTlv(ot::Tlv *this, ot::Message *a2, unsigned __int8 a3, ot *a4, const char *a5)
{
  v8 = a2;
  if (a4)
  {
    v6 = ot::StringLength(a4, a3);
  }

  else
  {
    v6 = 0;
  }

  return ot::Tlv::AppendTlv(this, v8, a4, v6);
}

uint64_t ot::Message::Append<ot::Tlv>(ot::Message *a1, const void *a2)
{
  return ot::Message::AppendBytes(a1, a2, 2u);
}

{
  return ot::Message::Append<ot::Tlv>(a1, a2);
}

ot::Tlv *ot::Tlv::FindTlv(ot::Tlv *this, const void *a2, unsigned __int8 a3)
{
  v7 = (this + a2);
  for (i = this; i < v7; i = ot::Tlv::GetNext(i))
  {
    if ((i + 2) > v7)
    {
      return 0;
    }

    if (ot::Tlv::IsExtended(i))
    {
      ot::As<ot::ExtendedTlv>();
      v6 = v3 + 4;
      ot::As<ot::ExtendedTlv>();
      if (v6 > v4)
      {
        return 0;
      }
    }

    if (ot::Tlv::GetNext(i) > v7)
    {
      return 0;
    }

    if (ot::Tlv::GetType(i) == a3)
    {
      return i;
    }
  }

  return 0;
}

uint64_t ot::Tlv::GetNext(ot::Tlv *this)
{
  return this + ot::Tlv::GetSize(this);
}

{
  return ot::Tlv::GetNext(this);
}

ot::TrickleTimer *ot::TrickleTimer::TrickleTimer(ot::TrickleTimer *this, ot::Instance *a2, void (*a3)(ot::TrickleTimer *))
{
  ot::TimerMilli::TimerMilli(this, a2, ot::TrickleTimer::HandleTimer);
  result = this;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 6) = a3;
  *(this + 56) = 0;
  *(this + 57) = 0;
  return result;
}

{
  ot::TrickleTimer::TrickleTimer(this, a2, a3);
  return this;
}

uint64_t ot::TrickleTimer::GetStartTimeOfCurrentInterval(ot::TrickleTimer *this)
{
  FireTime = ot::Timer::GetFireTime(this);
  if (*(this + 56) == 1)
  {
LABEL_6:
    ot::Time::operator-=(&FireTime, *(this + 8));
    return FireTime;
  }

  if (*(this + 57))
  {
    if (*(this + 57) != 1)
    {
      return FireTime;
    }

    goto LABEL_6;
  }

  ot::Time::operator-=(&FireTime, *(this + 9));
  return FireTime;
}

_DWORD *ot::Time::operator-=(_DWORD *result, int a2)
{
  *result -= a2;
  return result;
}

{
  return ot::Time::operator-=(result, a2);
}

uint64_t ot::TrickleTimer::SetIntervalMin(ot::TrickleTimer *this, int a2)
{
  result = ot::TrickleTimer::IsRunning(this);
  if (result)
  {
    *(this + 6) = a2;
    if (*(this + 7) < *(this + 6))
    {
      return ot::TrickleTimer::SetIntervalMax(this, *(this + 6));
    }
  }

  return result;
}

BOOL ot::TrickleTimer::IsRunning(ot::TrickleTimer *this)
{
  return ot::Timer::IsRunning(this);
}

{
  return ot::TrickleTimer::IsRunning(this);
}

uint64_t ot::TrickleTimer::SetIntervalMax(ot::TrickleTimer *this, unsigned int a2)
{
  v7 = this;
  v6 = a2;
  result = ot::TrickleTimer::IsRunning(this);
  if (result)
  {
    result = ot::Max<unsigned int>(*(this + 6), v6);
    v6 = result;
    if (result != *(this + 7))
    {
      *(this + 7) = v6;
      if (*(this + 7) < *(this + 8))
      {
        v4[0] = ot::TrickleTimer::GetStartTimeOfCurrentInterval(this);
        result = ot::Time::operator+(v4, *(this + 7));
        v4[1] = result;
        v5 = result;
        if (*(this + 56) == 1)
        {
          return ot::TimerMilli::FireAt(this, v5);
        }

        *(this + 8) = v6;
        if (*(this + 57))
        {
          if (*(this + 57) != 1)
          {
            return result;
          }

          return ot::TimerMilli::FireAt(this, v5);
        }

        if (v6 < *(this + 9))
        {
          *(this + 9) = v6;
          return ot::TimerMilli::FireAt(this, v5);
        }
      }
    }
  }

  return result;
}

uint64_t ot::TrickleTimer::Start(uint64_t a1, char a2, unsigned int a3, unsigned int a4, __int16 a5)
{
  v7 = 0;
  if (a4 >= a3)
  {
    v7 = a3 != 0;
  }

  if (!v7)
  {
    __assert_rtn("Start", "trickle_timer.cpp", 211, "(aIntervalMax >= aIntervalMin) && (aIntervalMin > 0)");
  }

  *(a1 + 24) = a3;
  *(a1 + 28) = a4;
  *(a1 + 40) = a5;
  *(a1 + 56) = a2;
  *(a1 + 32) = ot::Random::NonCrypto::GetUint32InRange(*(a1 + 24), *(a1 + 28) + 1);
  return ot::TrickleTimer::StartNewInterval(a1);
}

uint64_t ot::TrickleTimer::StartNewInterval(ot::TrickleTimer *this)
{
  if (*(this + 56))
  {
    if (*(this + 56) == 1)
    {
      *(this + 9) = *(this + 8);
    }
  }

  else
  {
    if (*(this + 8) / 2u >= *(this + 8))
    {
      Uint32InRange = *(this + 8) / 2u;
    }

    else
    {
      Uint32InRange = ot::Random::NonCrypto::GetUint32InRange((*(this + 8) / 2u), *(this + 8));
    }

    *(this + 9) = Uint32InRange;
    *(this + 21) = 0;
    *(this + 57) = 0;
  }

  return ot::TimerMilli::Start(this, *(this + 9));
}

uint64_t ot::TrickleTimer::IndicateConsistent(uint64_t this)
{
  if (*(this + 42) != 0xFFFF)
  {
    ++*(this + 42);
  }

  return this;
}

uint64_t ot::TrickleTimer::IndicateInconsistent(uint64_t this)
{
  v1 = this;
  if (!*(this + 56))
  {
    this = ot::TrickleTimer::IsRunning(this);
    if ((this & 1) != 0 && *(v1 + 8) != *(v1 + 6))
    {
      *(v1 + 8) = *(v1 + 6);
      return ot::TrickleTimer::StartNewInterval(v1);
    }
  }

  return this;
}

uint64_t ot::TrickleTimer::HandleTimer(ot::TrickleTimer *this)
{
  if (*(this + 56))
  {
    if (*(this + 56) == 1)
    {
      *(this + 8) = ot::Random::NonCrypto::GetUint32InRange(*(this + 6), *(this + 7) + 1);
      ot::TrickleTimer::StartNewInterval(this);
    }

    return (*(this + 6))();
  }

  if (!*(this + 57))
  {
    *(this + 57) = 1;
    result = ot::TimerMilli::Start(this, *(this + 8) - *(this + 9));
    if (*(this + 21) >= *(this + 20))
    {
      return result;
    }

    return (*(this + 6))();
  }

  if (*(this + 57) != 1)
  {
    return (*(this + 6))();
  }

  if (*(this + 8))
  {
    if (*(this + 8) > (*(this + 7) - *(this + 8)))
    {
      *(this + 8) = *(this + 7);
    }

    else
    {
      *(this + 8) *= 2;
    }
  }

  else
  {
    *(this + 8) = 1;
  }

  return ot::TrickleTimer::StartNewInterval(this);
}

uint64_t ot::Crypto::AesCcm::SetKey(ot::Crypto::AesCcm *this, const unsigned __int8 *a2, __int16 a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  ot::Crypto::Key::Set(v5, a2, a3);
  return ot::Crypto::AesCcm::SetKey(this, v5);
}

uint64_t ot::Crypto::AesCcm::SetKey(ot::Crypto::AesCcm *this, const ot::Crypto::Key *a2)
{
  return ot::Crypto::AesEcb::SetKey(this, a2);
}

{
  return ot::Crypto::AesCcm::SetKey(this, a2);
}

uint64_t ot::Crypto::AesCcm::SetKey(ot::Crypto::AesCcm *this, const ot::Mac::KeyMaterial *a2)
{
  v6 = this;
  v5 = a2;
  ot::Mac::KeyMaterial::ConvertToCryptoKey(a2, v4);
  return ot::Crypto::AesCcm::SetKey(this, v4);
}

void ot::Crypto::AesCcm::Init(ot::Crypto::AesCcm *this, unsigned int a2, unsigned int a3, unsigned __int8 a4, const void *a5, unsigned __int8 a6)
{
  v17 = a6;
  v14 = 0;
  v9 = 0;
  if ((a4 & 1) == 0)
  {
    v9 = 0;
    if (a4 >= 4u)
    {
      v9 = a4 <= 0x10u;
    }
  }

  if (!v9)
  {
    __assert_rtn("Init", "aes_ccm.cpp", 72, "((aTagLength & 0x1) == 0) && (kMinTagLength <= aTagLength) && (aTagLength <= kMaxTagLength)");
  }

  v11 = 0;
  for (i = a3; i; i >>= 8)
  {
    ++v11;
  }

  if (v11 <= 1u)
  {
    v11 = 2;
  }

  if (a6 > 0xDu)
  {
    v17 = 13;
  }

  if (v11 < 15 - v17)
  {
    v11 = 15 - v17;
  }

  if (v17 > 15 - v11)
  {
    v17 = 15 - v11;
  }

  *(this + 304) = (8 * ((a4 - 2) >> 1)) | ((a2 != 0) << 6) | (v11 - 1);
  memcpy(this + 305, a5, v17);
  v13 = a3;
  for (j = 15; j > v17; --j)
  {
    *(this + j + 304) = v13;
    v13 >>= 8;
  }

  ot::Crypto::AesEcb::Encrypt(this, this + 304, this + 304);
  if (a2)
  {
    if (a2 >= 0xFF00)
    {
      *(this + 304) = ~*(this + 304);
      *(this + 305) ^= 0xFEu;
      *(this + 306) ^= HIBYTE(a2);
      v14 = 4;
      *(this + 307) ^= BYTE2(a2);
    }

    v6 = v14;
    v15 = v14 + 1;
    *(this + v6 + 304) ^= BYTE1(a2);
    v7 = v15;
    v14 = v15 + 1;
    *(this + v7 + 304) ^= a2;
  }

  *(this + 320) = v11 - 1;
  memcpy(this + 321, a5, v17);
  bzero(this + v17 + 321, 15 - v17);
  *(this + 372) = v17;
  *(this + 88) = a2;
  *(this + 89) = 0;
  *(this + 90) = a3;
  *(this + 91) = 0;
  *(this + 184) = v14;
  *(this + 185) = 16;
  *(this + 373) = a4;
}

ot::Crypto::AesEcb *ot::Crypto::AesCcm::Header(ot::Crypto::AesEcb *this, _BYTE *a2, unsigned int a3)
{
  v5 = this;
  if (*(this + 89) + a3 > *(this + 88))
  {
    __assert_rtn("Header", "aes_ccm.cpp", 163, "mHeaderCur + aHeaderLength <= mHeaderLength");
  }

  for (i = 0; i < a3; ++i)
  {
    if (*(v5 + 184) == 16)
    {
      this = ot::Crypto::AesEcb::Encrypt(v5, v5 + 304, v5 + 304);
      *(v5 + 184) = 0;
    }

    v3 = a2[i];
    v4 = (*(v5 + 184))++;
    *(v5 + v4 + 304) ^= v3;
  }

  *(v5 + 89) += a3;
  if (*(v5 + 89) == *(v5 + 88))
  {
    if (*(v5 + 184))
    {
      this = ot::Crypto::AesEcb::Encrypt(v5, v5 + 304, v5 + 304);
    }

    *(v5 + 184) = 0;
  }

  return this;
}

void ot::Crypto::AesCcm::Payload(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char a5)
{
  if (*(a1 + 364) + a4 > *(a1 + 360))
  {
    __assert_rtn("Payload", "aes_ccm.cpp", 197, "mPlainTextCur + aLength <= mPlainTextLength");
  }

  for (i = 0; i < a4; ++i)
  {
    if (*(a1 + 370) == 16)
    {
      for (j = 15; j > *(a1 + 372); --j)
      {
        v5 = (a1 + 320 + j);
        v6 = *v5 + 1;
        *v5 = v6;
        if (v6)
        {
          break;
        }
      }

      ot::Crypto::AesEcb::Encrypt(a1, (a1 + 320), (a1 + 336));
      *(a1 + 370) = 0;
    }

    if (a5)
    {
      v8 = *(a3 + i);
      v9 = (*(a1 + 370))++;
      v14 = v8 ^ *(a1 + 336 + v9);
      *(a2 + i) = v14;
    }

    else
    {
      v14 = *(a2 + i);
      v7 = (*(a1 + 370))++;
      *(a3 + i) = v14 ^ *(a1 + 336 + v7);
    }

    if (*(a1 + 368) == 16)
    {
      ot::Crypto::AesEcb::Encrypt(a1, (a1 + 304), (a1 + 304));
      *(a1 + 368) = 0;
    }

    v10 = (*(a1 + 368))++;
    *(a1 + 304 + v10) ^= v14;
  }

  *(a1 + 364) += a4;
  if (*(a1 + 364) >= *(a1 + 360))
  {
    if (*(a1 + 368))
    {
      ot::Crypto::AesEcb::Encrypt(a1, (a1 + 304), (a1 + 304));
    }

    bzero((a1 + 320 + *(a1 + 372) + 1), 15 - *(a1 + 372));
  }
}

uint64_t ot::Crypto::AesCcm::Payload(uint64_t a1, ot::Message *a2, unsigned __int16 a3, unsigned __int16 a4, char a5)
{
  v16 = a1;
  v15 = a2;
  v14[1] = a3;
  v14[0] = a4;
  v13 = a5;
  ot::Message::GetFirstChunk(a2, a3, v14, v12);
  while (1)
  {
    result = ot::Data<(ot::DataLengthType)1>::GetLength(v12);
    if (result <= 0)
    {
      break;
    }

    ot::Message::MutableChunk::GetBytes(v12);
    v9 = v6;
    ot::Message::MutableChunk::GetBytes(v12);
    v10 = v7;
    Length = ot::Data<(ot::DataLengthType)1>::GetLength(v12);
    ot::Crypto::AesCcm::Payload(a1, v9, v10, Length, v13);
    ot::Message::GetNextChunk(v15, v14, v12);
  }

  return result;
}

uint64_t ot::Crypto::AesCcm::Finalize(ot::Crypto::AesCcm *this, _BYTE *a2)
{
  if (*(this + 91) != *(this + 90))
  {
    __assert_rtn("Finalize", "aes_ccm.cpp", 268, "mPlainTextCur == mPlainTextLength");
  }

  result = ot::Crypto::AesEcb::Encrypt(this, this + 320, this + 336);
  for (i = 0; i < *(this + 373); ++i)
  {
    a2[i] = *(this + i + 304) ^ *(this + i + 336);
  }

  return result;
}

uint64_t ot::Crypto::AesCcm::GenerateNonce(ot::Crypto::AesCcm *this, const ot::Mac::ExtAddress *a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5)
{
  v7 = a3;
  *a4 = *this;
  *v6 = a4 + 8;
  result = ot::BigEndian::WriteUint32(a2, (a4 + 8), a3);
  *(*v6 + 4) = v7;
  return result;
}

ot::Crypto::AesEcb *ot::Crypto::AesEcb::AesEcb(ot::Crypto::AesEcb *this)
{
  *this = this + 16;
  *(this + 4) = 288;
  if (j__otPlatCryptoAesInit(this))
  {
    __assert_rtn("AesEcb", "aes_ecb.cpp", 45, "false");
  }

  return this;
}

{
  ot::Crypto::AesEcb::AesEcb(this);
  return this;
}

uint64_t ot::Crypto::AesEcb::SetKey(ot::Crypto::AesEcb *this, const ot::Crypto::Key *a2)
{
  result = j__otPlatCryptoAesSetKey(this, a2);
  if (result)
  {
    __assert_rtn("SetKey", "aes_ecb.cpp", 48, "false");
  }

  return result;
}

uint64_t ot::Crypto::AesEcb::Encrypt(ot::Crypto::AesEcb *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = j__otPlatCryptoAesEncrypt(this, a2, a3);
  if (result)
  {
    __assert_rtn("Encrypt", "aes_ecb.cpp", 52, "false");
  }

  return result;
}

void ot::Crypto::AesEcb::~AesEcb(ot::Crypto::AesEcb *this)
{
  if (j__otPlatCryptoAesFree(this))
  {
    __assert_rtn("~AesEcb", "aes_ecb.cpp", 55, "false");
  }
}

{
  ot::Crypto::AesEcb::~AesEcb(this);
}

ot::Crypto::HmacSha256 *ot::Crypto::HmacSha256::HmacSha256(ot::Crypto::HmacSha256 *this)
{
  *this = this + 16;
  *(this + 4) = 24;
  if (j__otPlatCryptoHmacSha256Init(this))
  {
    __assert_rtn("HmacSha256", "hmac_sha256.cpp", 47, "false");
  }

  return this;
}

{
  ot::Crypto::HmacSha256::HmacSha256(this);
  return this;
}

void ot::Crypto::HmacSha256::~HmacSha256(ot::Crypto::HmacSha256 *this)
{
  if (j__otPlatCryptoHmacSha256Deinit(this))
  {
    __assert_rtn("~HmacSha256", "hmac_sha256.cpp", 50, "false");
  }
}

{
  ot::Crypto::HmacSha256::~HmacSha256(this);
}

uint64_t ot::Crypto::HmacSha256::Start(ot::Crypto::HmacSha256 *this, const ot::Crypto::Key *a2)
{
  result = j__otPlatCryptoHmacSha256Start(this, a2);
  if (result)
  {
    __assert_rtn("Start", "hmac_sha256.cpp", 52, "false");
  }

  return result;
}

uint64_t ot::Crypto::HmacSha256::Update(ot::Crypto::HmacSha256 *this, uint64_t a2, unsigned __int16 a3)
{
  result = j__otPlatCryptoHmacSha256Update(this, a2, a3);
  if (result)
  {
    __assert_rtn("Update", "hmac_sha256.cpp", 56, "false");
  }

  return result;
}

uint64_t ot::Crypto::HmacSha256::Finish(ot::Crypto::HmacSha256 *this, ot::Crypto::Sha256::Hash *a2)
{
  result = j__otPlatCryptoHmacSha256Finish(this);
  if (result)
  {
    __assert_rtn("Finish", "hmac_sha256.cpp", 61, "false");
  }

  return result;
}

uint64_t ot::Crypto::HmacSha256::Update(ot::Crypto::HmacSha256 *this, const ot::Message *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v11 = this;
  v10 = a2;
  v9[1] = a3;
  v9[0] = a4;
  ot::Message::GetFirstChunk(a2, a3, v9, v8);
  while (1)
  {
    result = ot::Data<(ot::DataLengthType)1>::GetLength(v8);
    if (result <= 0)
    {
      break;
    }

    Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(v8);
    Length = ot::Data<(ot::DataLengthType)1>::GetLength(v8);
    ot::Crypto::HmacSha256::Update(this, Bytes, Length);
    ot::Message::GetNextChunk(v10, v9, v8);
  }

  return result;
}

ot::Crypto::MbedTls *ot::Crypto::MbedTls::MbedTls(ot::Crypto::MbedTls *this)
{
  mbedtls_platform_set_calloc_free(ot::Heap::CAlloc, ot::Heap::Free);
  return this;
}

{
  ot::Crypto::MbedTls::MbedTls(this);
  return this;
}

uint64_t ot::Crypto::MbedTls::MapError(ot::Crypto::MbedTls *this)
{
  switch(this)
  {
    case 0xFFFF8100:
      return 3;
    case 0xFFFF8F00:
      return 7;
    case 0xFFFF9700:
      return 5;
    case 0xFFFF9780:
      return 3;
    case 0xFFFF9800:
      return 5;
    case 0xFFFFFFC0:
      return 8;
    case 0xFFFFFFC2:
      return 3;
    case 0xFFFFFFC4:
    case 0xFFFFFFC3:
      return 8;
    case 0xFFFFFFC8:
    case 0xFFFFFFCA:
      return 7;
    case 0xFFFFFFCC:
    case 0xFFFFFFE2:
    case 0xFFFFFFE4:
      return 8;
  }

  return this < 0;
}

uint64_t ot::Crypto::MbedTls::CryptoSecurePrng(ot::Crypto::MbedTls *this, ot::Random::Crypto *a2, unsigned __int8 *a3)
{
  ot::Random::Crypto::FillBuffer(a2, a3);
  IgnoreError();
  return 0;
}

ot::Crypto::Sha256 *ot::Crypto::Sha256::Sha256(ot::Crypto::Sha256 *this)
{
  *this = this + 16;
  *(this + 4) = 104;
  if (j__otPlatCryptoSha256Init(this))
  {
    __assert_rtn("Sha256", "sha256.cpp", 47, "false");
  }

  return this;
}

{
  ot::Crypto::Sha256::Sha256(this);
  return this;
}

void ot::Crypto::Sha256::~Sha256(ot::Crypto::Sha256 *this)
{
  if (j__otPlatCryptoSha256Deinit(this))
  {
    __assert_rtn("~Sha256", "sha256.cpp", 50, "false");
  }
}

{
  ot::Crypto::Sha256::~Sha256(this);
}

uint64_t ot::Crypto::Sha256::Start(ot::Crypto::Sha256 *this)
{
  result = j__otPlatCryptoSha256Start(this);
  if (result)
  {
    __assert_rtn("Start", "sha256.cpp", 52, "false");
  }

  return result;
}

uint64_t ot::Crypto::Sha256::Update(ot::Crypto::Sha256 *this, uint64_t a2, unsigned __int16 a3)
{
  result = j__otPlatCryptoSha256Update(this, a2, a3);
  if (result)
  {
    __assert_rtn("Update", "sha256.cpp", 56, "false");
  }

  return result;
}

uint64_t ot::Crypto::Sha256::Update(ot::Crypto::Sha256 *this, const ot::Message *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v11 = this;
  v10 = a2;
  v9[1] = a3;
  v9[0] = a4;
  ot::Message::GetFirstChunk(a2, a3, v9, v8);
  while (1)
  {
    result = ot::Data<(ot::DataLengthType)1>::GetLength(v8);
    if (result <= 0)
    {
      break;
    }

    Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(v8);
    Length = ot::Data<(ot::DataLengthType)1>::GetLength(v8);
    ot::Crypto::Sha256::Update(this, Bytes, Length);
    ot::Message::GetNextChunk(v10, v9, v8);
  }

  return result;
}

uint64_t ot::Crypto::Sha256::Finish(ot::Crypto::Sha256 *this, ot::Crypto::Sha256::Hash *a2)
{
  result = j__otPlatCryptoSha256Finish(this);
  if (result)
  {
    __assert_rtn("Finish", "sha256.cpp", 72, "false");
  }

  return result;
}

uint64_t ot::FactoryDiags::Diags::ProcessChannel(ot::FactoryDiags::Diags *this, char a2, ot::FactoryDiags::Diags **a3)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  if (otPlatDiagModeGet())
  {
    if (v10)
    {
      *v7 = 0;
      v8 = ot::FactoryDiags::Diags::ParseLong(*v9, v7, v3);
      if (!v8)
      {
        if (*v7 >= 11 && *v7 <= 25)
        {
          *(this + 32) = v7[0];
          v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
          ot::Radio::Receive(v4, *(this + 32));
          IgnoreError();
          otPlatDiagChannelSet(*(this + 32));
          ot::FactoryDiags::Diags::Output(this, "set channel to %d\r\nstatus 0x%02x\r\n", *(this + 32), v8);
        }

        else
        {
          v8 = 7;
        }
      }
    }

    else
    {
      ot::FactoryDiags::Diags::Output(this, "channel: %d\r\n", *(this + 32));
    }
  }

  else
  {
    v8 = 13;
  }

  ot::FactoryDiags::Diags::AppendErrorResult(this, v8);
  return v8;
}

uint64_t ot::FactoryDiags::Diags::ProcessPower(ot::FactoryDiags::Diags *this, char a2, ot::FactoryDiags::Diags **a3)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  if (otPlatDiagModeGet())
  {
    if (v10)
    {
      *v7 = 0;
      v8 = ot::FactoryDiags::Diags::ParseLong(*v9, v7, v3);
      if (!v8)
      {
        *(this + 33) = v7[0];
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
        v8 = ot::Radio::SetTransmitPower(v4, *(this + 33));
        if (!v8)
        {
          otPlatDiagTxPowerSet(*(this + 33));
          ot::FactoryDiags::Diags::Output(this, "set tx power to %d dBm\r\nstatus 0x%02x\r\n", *(this + 33), v8);
        }
      }
    }

    else
    {
      ot::FactoryDiags::Diags::Output(this, "tx power: %d dBm\r\n", *(this + 33));
    }
  }

  else
  {
    v8 = 13;
  }

  ot::FactoryDiags::Diags::AppendErrorResult(this, v8);
  return v8;
}

uint64_t ot::FactoryDiags::Diags::ProcessRadio(ot::FactoryDiags::Diags *this, char a2, const char **a3)
{
  v10 = 7;
  if (otPlatDiagModeGet())
  {
    if (a2)
    {
      if (!strcmp(*a3, "sleep"))
      {
        v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
        v10 = ot::Radio::Sleep(v3);
        if (!v10)
        {
          ot::FactoryDiags::Diags::Output(this, "set radio from receive to sleep \r\nstatus 0x%02x\r\n", 0);
        }
      }

      else if (!strcmp(*a3, "receive"))
      {
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
        v10 = ot::Radio::Receive(v4, *(this + 32));
        if (!v10)
        {
          v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
          v10 = ot::Radio::SetTransmitPower(v5, *(this + 33));
          if (!v10)
          {
            otPlatDiagChannelSet(*(this + 32));
            otPlatDiagTxPowerSet(*(this + 33));
            ot::FactoryDiags::Diags::Output(this, "set radio from sleep to receive on channel %d\r\nstatus 0x%02x\r\n", *(this + 32), 0);
          }
        }
      }

      else if (!strcmp(*a3, "state"))
      {
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
        State = ot::Radio::GetState(v6);
        v10 = 0;
        if (State)
        {
          switch(State)
          {
            case 1:
              ot::FactoryDiags::Diags::Output(this, "sleep\r\n");
              break;
            case 2:
              ot::FactoryDiags::Diags::Output(this, "receive\r\n");
              break;
            case 3:
              ot::FactoryDiags::Diags::Output(this, "transmit\r\n");
              break;
            default:
              ot::FactoryDiags::Diags::Output(this, "invalid\r\n");
              break;
          }
        }

        else
        {
          ot::FactoryDiags::Diags::Output(this, "disabled\r\n");
        }
      }

      ot::FactoryDiags::Diags::AppendErrorResult(this, v10);
    }

    else
    {
      v10 = 7;
      ot::FactoryDiags::Diags::AppendErrorResult(this, 7);
    }
  }

  else
  {
    v10 = 13;
    ot::FactoryDiags::Diags::AppendErrorResult(this, 13);
  }

  return v10;
}

uint64_t ot::FactoryDiags::Diags::ProcessLinkRaw(ot::FactoryDiags::Diags *this, char a2, const char **a3)
{
  v8 = 0;
  if (a2)
  {
    if (!strcmp(*a3, "start"))
    {
      Instance = ot::InstanceLocator::GetInstance(this);
      v8 = otPlatRadioEnable(Instance);
      if (!v8)
      {
        ot::FactoryDiags::Diags::Output(this, "raw link started\r\n");
      }
    }

    else if (!strcmp(*a3, "stop"))
    {
      ot::InstanceLocator::GetInstance(this);
      v8 = otPlatRadioDisable();
      if (!v8)
      {
        ot::FactoryDiags::Diags::Output(this, "raw link stopped\r\n");
      }
    }

    else
    {
      return 35;
    }
  }

  else
  {
    ot::InstanceLocator::GetInstance(this);
    IsEnabled = otPlatRadioIsEnabled();
    v4 = "enabled";
    if (!IsEnabled)
    {
      v4 = "disabled";
    }

    ot::FactoryDiags::Diags::Output(this, "raw link is %s\r\n", v4);
  }

  return v8;
}

uint64_t ot::FactoryDiags::Diags::ProcessRepeat(ot::FactoryDiags::Diags *this, unsigned __int8 a2, ot::FactoryDiags::Diags **a3)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  if (otPlatDiagModeGet())
  {
    if (v12)
    {
      if (!strcmp(*v11, "stop"))
      {
        ot::InstanceLocator::GetInstance(this);
        otPlatAlarmMilliStop();
        *(this + 36) = 0;
        ot::FactoryDiags::Diags::Output(this, "repeated packet transmission is stopped\r\nstatus 0x%02x\r\n", v10);
      }

      else
      {
        *v9 = 0;
        v10 = ot::FactoryDiags::Diags::ParseLong(*v11, v9, v3);
        if (!v10)
        {
          *(this + 6) = *v9;
          if (v12 < 2u)
          {
            if ((*(this + 35) & 1) == 0)
            {
              v10 = 7;
              goto LABEL_19;
            }

            *v9 = *(*(this + 2) + 8);
          }

          else
          {
            v10 = ot::FactoryDiags::Diags::ParseLong(v11[1], v9, v4);
            if (v10)
            {
              goto LABEL_19;
            }

            *(this + 35) = 0;
          }

          if (*v9 <= 127)
          {
            if (*v9 >= 3)
            {
              *(this + 34) = v9[0];
              *(this + 36) = 1;
              Now = otPlatAlarmMilliGetNow();
              Instance = ot::InstanceLocator::GetInstance(this);
              otPlatAlarmMilliStartAt(Instance, Now, *(this + 6));
              ot::FactoryDiags::Diags::Output(this, "sending packets of length %#x at the delay of %#x ms\r\nstatus 0x%02x\r\n", *(this + 34), *(this + 6), v10);
            }

            else
            {
              v10 = 7;
            }
          }

          else
          {
            v10 = 7;
          }
        }
      }
    }

    else
    {
      v10 = 7;
    }
  }

  else
  {
    v10 = 13;
  }

LABEL_19:
  ot::FactoryDiags::Diags::AppendErrorResult(this, v10);
  return v10;
}

uint64_t ot::FactoryDiags::Diags::ProcessSend(ot::FactoryDiags::Diags *this, unsigned __int8 a2, ot::FactoryDiags::Diags **a3)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  v9 = 0;
  *v8 = 0;
  if (otPlatDiagModeGet())
  {
    if (v11)
    {
      v4 = ot::FactoryDiags::Diags::ParseLong(*v10, v8, v3);
      v9 = v4;
      if (!v4)
      {
        *(this + 7) = *v8;
        if (v11 < 2u)
        {
          if ((*(this + 35) & 1) == 0)
          {
            v9 = 7;
            goto LABEL_18;
          }

          *v8 = *(*(this + 2) + 8);
        }

        else
        {
          if (ot::FactoryDiags::Diags::ParseLong(v10[1], v8, v5))
          {
            goto LABEL_18;
          }

          *(this + 35) = 0;
        }

        if (*v8 <= 127)
        {
          if (*v8 >= 3)
          {
            *(this + 34) = v8[0];
            ot::FactoryDiags::Diags::Output(this, "sending %#x packet(s), length %#x\r\nstatus 0x%02x\r\n", *(this + 7), *(this + 34), v9);
            ot::FactoryDiags::Diags::TransmitPacket(this);
          }

          else
          {
            v9 = 7;
          }
        }

        else
        {
          v9 = 7;
        }
      }
    }

    else
    {
      v9 = 7;
    }
  }

  else
  {
    v9 = 13;
  }

LABEL_18:
  ot::FactoryDiags::Diags::AppendErrorResult(this, v9);
  return v9;
}

uint64_t ot::FactoryDiags::Diags::ProcessStart(ot::FactoryDiags::Diags *this, unsigned __int8 a2, char **a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  if (ot::ThreadNetif::IsUp(v3))
  {
    v10 = 13;
    ot::FactoryDiags::Diags::AppendErrorResult(this, 13);
  }

  else
  {
    otPlatDiagChannelSet(*(this + 32));
    otPlatDiagTxPowerSet(*(this + 33));
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    ot::Radio::Enable(v4);
    IgnoreError();
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    ot::Radio::SetPromiscuous(v5, 1);
    ot::InstanceLocator::GetInstance(this);
    otPlatAlarmMilliStop();
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    v10 = ot::Radio::Receive(v6, *(this + 32));
    if (!v10)
    {
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      v10 = ot::Radio::SetTransmitPower(v7, *(this + 33));
      if (!v10)
      {
        otPlatDiagModeSet(1);
        ot::Clearable<ot::FactoryDiags::Diags::Stats>::Clear(this);
        ot::FactoryDiags::Diags::Output(this, "start diagnostics mode\r\nstatus 0x%02x\r\n", 0);
      }
    }

    ot::FactoryDiags::Diags::AppendErrorResult(this, v10);
  }

  return v10;
}

uint64_t ot::FactoryDiags::Diags::ProcessStats(ot::FactoryDiags::Diags *this, char a2, const char **a3)
{
  v5 = 0;
  if (otPlatDiagModeGet())
  {
    if (a2 == 1 && !strcmp(*a3, "clear"))
    {
      ot::Clearable<ot::FactoryDiags::Diags::Stats>::Clear(this);
      ot::FactoryDiags::Diags::Output(this, "stats cleared\r\n");
    }

    else
    {
      if (a2)
      {
        v5 = 7;
        ot::FactoryDiags::Diags::AppendErrorResult(this, 7);
        return v5;
      }

      ot::FactoryDiags::Diags::Output(this, "received packets: %d\r\nsent packets: %d\r\nfirst received packet: rssi=%d, lqi=%d\r\nlast received packet: rssi=%d, lqi=%d\r\n", *this, *(this + 1), *(this + 8), *(this + 9), *(this + 10), *(this + 11));
    }

    ot::FactoryDiags::Diags::AppendErrorResult(this, 0);
    return v5;
  }

  v5 = 13;
  ot::FactoryDiags::Diags::AppendErrorResult(this, 13);
  return v5;
}

uint64_t ot::FactoryDiags::Diags::ProcessStop(ot::FactoryDiags::Diags *this, unsigned __int8 a2, char **a3)
{
  v6 = 0;
  if (otPlatDiagModeGet())
  {
    ot::InstanceLocator::GetInstance(this);
    otPlatAlarmMilliStop();
    otPlatDiagModeSet(0);
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    ot::Radio::SetPromiscuous(v3, 0);
    ot::FactoryDiags::Diags::Output(this, "received packets: %d\r\nsent packets: %d\r\nfirst received packet: rssi=%d, lqi=%d\r\nlast received packet: rssi=%d, lqi=%d\r\n\nstop diagnostics mode\r\nstatus 0x%02x\r\n", *this, *(this + 1), *(this + 8), *(this + 9), *(this + 10), *(this + 11), 0);
    ot::FactoryDiags::Diags::AppendErrorResult(this, 0);
  }

  else
  {
    v6 = 13;
    ot::FactoryDiags::Diags::AppendErrorResult(this, 13);
  }

  return v6;
}

ot::FactoryDiags::Diags *ot::FactoryDiags::Diags::Diags(ot::FactoryDiags::Diags *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  *(this + 2) = ot::Radio::GetTransmitBuffer(v2);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 32) = 20;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  ot::Clearable<ot::FactoryDiags::Diags::Stats>::Clear(this);
  return this;
}

{
  ot::FactoryDiags::Diags::Diags(this, a2);
  return this;
}

uint64_t ot::Radio::GetTransmitBuffer(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetTransmitBuffer();
}

{
  return ot::Radio::GetTransmitBuffer(this);
}

uint64_t ot::Clearable<ot::FactoryDiags::Diags::Stats>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::FactoryDiags::Diags::Stats>(a1);
}

{
  return ot::Clearable<ot::FactoryDiags::Diags::Stats>::Clear(a1);
}

uint64_t ot::FactoryDiags::Diags::ProcessFrame(unsigned __int16 ***this, char a2, ot::Utils::CmdLineParser **a3, unsigned __int8 *a4)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  *v6 = 127;
  if (a2 == 1)
  {
    v7 = ot::Utils::CmdLineParser::ParseAsHexString(*v8, v6, *this[2], a4);
    if (!v7)
    {
      if (*v6 <= 0x7Fu)
      {
        if (*v6 >= 3u)
        {
          *(this[2] + 4) = *v6;
          *(this + 35) = 1;
        }

        else
        {
          v7 = 7;
        }
      }

      else
      {
        v7 = 7;
      }
    }
  }

  else
  {
    v7 = 7;
  }

  ot::FactoryDiags::Diags::AppendErrorResult(this, v7);
  return v7;
}

uint64_t ot::FactoryDiags::Diags::AppendErrorResult(uint64_t result, int a2)
{
  if (a2)
  {
    return ot::FactoryDiags::Diags::Output(result, "failed\r\nstatus %#x\r\n", a2);
  }

  return result;
}

uint64_t ot::FactoryDiags::Diags::Output(uint64_t this, const char *a2, ...)
{
  va_start(va, a2);
  if (*(this + 40))
  {
    return (*(this + 40))(a2, va, *(this + 48));
  }

  return this;
}

uint64_t ot::FactoryDiags::Diags::ParseLong(ot::FactoryDiags::Diags *this, char *a2, uint64_t *a3)
{
  v7 = this;
  v6 = a2;
  __endptr = 0;
  v3 = strtol(this, &__endptr, 0);
  *v6 = v3;
  if (*__endptr)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

uint64_t ot::Radio::Receive(ot::Radio *this, unsigned __int8 a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioReceive(InstancePtr, a2);
}

{
  return ot::Radio::Receive(this, a2);
}

uint64_t ot::FactoryDiags::Diags::ProcessUartDisable(ot::FactoryDiags::Diags *this, char a2, ot::FactoryDiags::Diags **a3)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  v9 = 0;
  if (otPlatDiagModeGet())
  {
    if (v11)
    {
      *v8 = 0;
      v9 = ot::FactoryDiags::Diags::ParseLong(*v10, v8, v3);
      if (!v9)
      {
        v7 = *v8;
        Instance = ot::InstanceLocator::GetInstance(this);
        v9 = otPlatVendorUartDisableStart(Instance, v7);
        if (!v9)
        {
          ot::FactoryDiags::Diags::Output(this, " Uart disabled for %d mSec\r\n", v7);
        }
      }
    }

    else
    {
      ot::FactoryDiags::Diags::Output(this, "missing argument for uart renable time in mSec:");
    }
  }

  else
  {
    v9 = 13;
  }

  ot::FactoryDiags::Diags::AppendErrorResult(this, v9);
  return v9;
}

uint64_t ot::Radio::SetTransmitPower(ot::Radio *this, signed __int8 a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioSetTransmitPower(InstancePtr, a2);
}

{
  return ot::Radio::SetTransmitPower(this, a2);
}

void ot::FactoryDiags::Diags::TransmitPacket(ot::FactoryDiags::Diags *this)
{
  *(*(this + 2) + 10) = *(this + 32);
  if ((*(this + 35) & 1) == 0)
  {
    *(*(this + 2) + 8) = *(this + 34);
    for (i = 0; i < *(this + 34); ++i)
    {
      *(**(this + 2) + i) = i;
    }
  }

  *(this + 37) = 1;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::Transmit(v1, *(this + 2));
  IgnoreError();
}

uint64_t ot::Radio::Enable(ot::Radio *this)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioEnable(InstancePtr);
}

{
  return ot::Radio::Enable(this);
}

uint64_t ot::Radio::SetPromiscuous(ot::Radio *this, char a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioSetPromiscuous(InstancePtr, a2 & 1);
}

{
  return ot::Radio::SetPromiscuous(this, a2);
}

uint64_t ot::Radio::Sleep(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioSleep();
}

{
  return ot::Radio::Sleep(this);
}

uint64_t ot::Radio::GetState(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetState();
}

{
  return ot::Radio::GetState(this);
}

void otPlatDiagAlarmFired(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::FactoryDiags::Diags>(v1);
  ot::FactoryDiags::Diags::AlarmFired(v2);
}

void ot::FactoryDiags::Diags::AlarmFired(ot::FactoryDiags::Diags *this)
{
  if (*(this + 36))
  {
    Now = otPlatAlarmMilliGetNow();
    ot::FactoryDiags::Diags::TransmitPacket(this);
    Instance = ot::InstanceLocator::GetInstance(this);
    otPlatAlarmMilliStartAt(Instance, Now, *(this + 6));
  }

  else
  {
    ot::InstanceLocator::GetInstance(this);
    otPlatDiagAlarmCallback();
  }
}

void ot::FactoryDiags::Diags::ReceiveDone(ot::InstanceLocator *a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    if (!*a1)
    {
      *(a1 + 8) = *(a2 + 29);
      *(a1 + 9) = *(a2 + 30);
    }

    *(a1 + 10) = *(a2 + 29);
    *(a1 + 11) = *(a2 + 30);
    ++*a1;
  }

  ot::InstanceLocator::GetInstance(a1);
  otPlatDiagRadioReceived();
}

void ot::FactoryDiags::Diags::TransmitDone(uint64_t a1, int a2)
{
  if (*(a1 + 37))
  {
    *(a1 + 37) = 0;
    if (!a2)
    {
      ++*(a1 + 4);
      if (*(a1 + 28) <= 1u)
      {
        return;
      }

      --*(a1 + 28);
    }

    if ((*(a1 + 36) & 1) == 0)
    {
      ot::FactoryDiags::Diags::TransmitPacket(a1);
    }
  }
}

uint64_t ot::FactoryDiags::Diags::ProcessContinuousWave(ot::FactoryDiags::Diags *this, char a2, const char **a3)
{
  v7 = 7;
  if (otPlatDiagModeGet())
  {
    if (a2)
    {
      if (!strcmp(*a3, "start"))
      {
        Instance = ot::InstanceLocator::GetInstance(this);
        v7 = otPlatDiagRadioTransmitCarrier(Instance, 1);
        ot::FactoryDiags::Diags::AppendErrorResult(this, v7);
      }

      else
      {
        if (!strcmp(*a3, "stop"))
        {
          v4 = ot::InstanceLocator::GetInstance(this);
          v7 = otPlatDiagRadioTransmitCarrier(v4, 0);
        }

        ot::FactoryDiags::Diags::AppendErrorResult(this, v7);
      }
    }

    else
    {
      v7 = 7;
      ot::FactoryDiags::Diags::AppendErrorResult(this, 7);
    }
  }

  else
  {
    v7 = 13;
    ot::FactoryDiags::Diags::AppendErrorResult(this, 13);
  }

  return v7;
}

uint64_t ot::FactoryDiags::Diags::ProcessStream(ot::FactoryDiags::Diags *this, char a2, const char **a3)
{
  v7 = 7;
  if (otPlatDiagModeGet())
  {
    if (a2)
    {
      if (!strcmp(*a3, "start"))
      {
        Instance = ot::InstanceLocator::GetInstance(this);
        v7 = otPlatDiagRadioTransmitStream(Instance, 1);
        ot::FactoryDiags::Diags::AppendErrorResult(this, v7);
      }

      else
      {
        if (!strcmp(*a3, "stop"))
        {
          v4 = ot::InstanceLocator::GetInstance(this);
          v7 = otPlatDiagRadioTransmitStream(v4, 0);
        }

        ot::FactoryDiags::Diags::AppendErrorResult(this, v7);
      }
    }

    else
    {
      v7 = 7;
      ot::FactoryDiags::Diags::AppendErrorResult(this, 7);
    }
  }

  else
  {
    v7 = 13;
    ot::FactoryDiags::Diags::AppendErrorResult(this, 13);
  }

  return v7;
}

uint64_t ot::FactoryDiags::Diags::GetPowerSettings(ot::InstanceLocator *a1, unsigned __int8 a2, uint64_t a3)
{
  *(a3 + 20) = 16;
  Instance = ot::InstanceLocator::GetInstance(a1);
  return otPlatDiagRadioGetPowerSettings(Instance, a2, a3, (a3 + 2), (a3 + 4), (a3 + 20));
}

uint64_t ot::FactoryDiags::Diags::ProcessPowerSettings(ot::FactoryDiags::Diags *this, char a2, ot::Utils::CmdLineParser **a3)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  PowerSettings = 7;
  i = 0;
  if (otPlatDiagModeGet())
  {
    if (v18)
    {
      if (v18 == 1)
      {
        PowerSettings = ot::Utils::CmdLineParser::ParseAsUint8(*v17, &i, v3);
        if (!PowerSettings)
        {
          if (i >= 0xBu && i <= 0x19u)
          {
            PowerSettings = ot::FactoryDiags::Diags::GetPowerSettings(this, i, v23);
            if (!PowerSettings)
            {
              v7 = *v23;
              v8 = *&v23[2];
              ot::FactoryDiags::Diags::RawPowerSetting::ToString(&v23[4], v20);
              v5 = ot::String<(unsigned short)33>::AsCString(v20);
              ot::FactoryDiags::Diags::Output(this, "TargetPower(0.01dBm): %d\r\nActualPower(0.01dBm): %d\r\nRawPowerSetting: %s\r\n", v7, v8, v5);
            }
          }

          else
          {
            PowerSettings = 7;
          }
        }
      }
    }

    else
    {
      v14 = 0;
      v13 = 0;
      ot::FactoryDiags::Diags::Output(this, "| StartCh | EndCh | TargetPower | ActualPower | RawPowerSetting |\r\n+---------+-------+-------------+-------------+-----------------+\r\n");
      for (i = 11; i <= 0x1Au; ++i)
      {
        if (i == 26)
        {
          v11 = 23;
        }

        else
        {
          v11 = ot::FactoryDiags::Diags::GetPowerSettings(this, i, v23);
        }

        PowerSettings = v11;
        if ((v14 & 1) != 0 && (ot::FactoryDiags::Diags::PowerSettings::operator!=(v23, v22) || PowerSettings))
        {
          v9 = v22[0];
          v10 = v22[1];
          ot::FactoryDiags::Diags::RawPowerSetting::ToString(&v22[2], v21);
          v4 = ot::String<(unsigned short)33>::AsCString(v21);
          ot::FactoryDiags::Diags::Output(this, "| %7u | %5u | %11d | %11d | %15s |\r\n", v13, i - 1, v9, v10, v4);
          v14 = 0;
        }

        if (!PowerSettings && (v14 & 1) == 0)
        {
          v13 = i;
          *v22 = *v23;
          *&v22[7] = *&v23[14];
          v14 = 1;
        }
      }

      PowerSettings = 0;
    }
  }

  else
  {
    PowerSettings = 13;
  }

  ot::FactoryDiags::Diags::AppendErrorResult(this, PowerSettings);
  return PowerSettings;
}

BOOL ot::FactoryDiags::Diags::PowerSettings::operator!=(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v3 = 1;
  if (*a1 == *a2)
  {
    v3 = 1;
    if (a1[1] == a2[1])
    {
      return ot::FactoryDiags::Diags::RawPowerSetting::operator!=(a1 + 2, a2 + 2);
    }
  }

  return v3;
}

{
  return ot::FactoryDiags::Diags::PowerSettings::operator!=(a1, a2);
}

ot::StringWriter *ot::FactoryDiags::Diags::RawPowerSetting::ToString@<X0>(ot::FactoryDiags::Diags::RawPowerSetting *this@<X0>, ot::StringWriter *a2@<X8>)
{
  ot::String<(unsigned short)33>::String(a2);
  return ot::StringWriter::AppendHexBytes(a2, this, *(this + 8));
}

{
  return ot::FactoryDiags::Diags::RawPowerSetting::ToString(this, a2);
}

uint64_t ot::FactoryDiags::Diags::GetRawPowerSetting(ot::FactoryDiags::Diags *this, ot::FactoryDiags::Diags::RawPowerSetting *a2)
{
  *(a2 + 8) = 16;
  Instance = ot::InstanceLocator::GetInstance(this);
  return otPlatDiagRadioGetRawPowerSetting(Instance, a2, a2 + 16);
}

uint64_t ot::FactoryDiags::Diags::ProcessRawPowerSetting(ot::FactoryDiags::Diags *this, char a2, const char **a3)
{
  if (otPlatDiagModeGet())
  {
    if (a2)
    {
      if (!strcmp(*a3, "enable"))
      {
        Instance = ot::InstanceLocator::GetInstance(this);
        RawPowerSetting = otPlatDiagRadioRawPowerSettingEnable(Instance, 1);
        ot::FactoryDiags::Diags::AppendErrorResult(this, RawPowerSetting);
        return RawPowerSetting;
      }

      if (!strcmp(*a3, "disable"))
      {
        v6 = ot::InstanceLocator::GetInstance(this);
        RawPowerSetting = otPlatDiagRadioRawPowerSettingEnable(v6, 0);
        ot::FactoryDiags::Diags::AppendErrorResult(this, RawPowerSetting);
        return RawPowerSetting;
      }

      v15 = 16;
      RawPowerSetting = ot::Utils::CmdLineParser::ParseAsHexString(*a3, &v15, v14, v5);
      if (!RawPowerSetting)
      {
        v7 = ot::InstanceLocator::GetInstance(this);
        RawPowerSetting = otPlatDiagRadioSetRawPowerSetting(v7, v14, v15);
      }
    }

    else
    {
      RawPowerSetting = ot::FactoryDiags::Diags::GetRawPowerSetting(this, v14);
      if (!RawPowerSetting)
      {
        ot::FactoryDiags::Diags::RawPowerSetting::ToString(v14, v13);
        v3 = ot::String<(unsigned short)33>::AsCString(v13);
        ot::FactoryDiags::Diags::Output(this, "%s\r\n", v3);
      }
    }

    ot::FactoryDiags::Diags::AppendErrorResult(this, RawPowerSetting);
    return RawPowerSetting;
  }

  RawPowerSetting = 13;
  ot::FactoryDiags::Diags::AppendErrorResult(this, 13);
  return RawPowerSetting;
}

uint64_t ot::FactoryDiags::Diags::ProcessGpio(ot::FactoryDiags::Diags *this, unsigned __int8 a2, char **a3)
{
  v16 = this;
  v15 = a2;
  v14 = a3;
  Mode = 7;
  *v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if (a2 == 2 && !strcmp(*v14, "get"))
  {
    Mode = ot::FactoryDiags::Diags::ParseLong(v14[1], v12, v3);
    if (!Mode)
    {
      v11 = v12[0];
      Mode = otPlatDiagGpioGet(v12[0], &v10);
      if (!Mode)
      {
        ot::FactoryDiags::Diags::Output(this, "%d\r\n", v10 & 1);
      }
    }
  }

  else if (v15 == 3 && !strcmp(*v14, "set"))
  {
    Mode = ot::FactoryDiags::Diags::ParseLong(v14[1], v12, v4);
    if (!Mode)
    {
      v11 = v12[0];
      Mode = ot::FactoryDiags::Diags::ParseBool(v14[2], &v10, v5);
      if (!Mode)
      {
        Mode = otPlatDiagGpioSet(v11, v10 & 1);
      }
    }
  }

  else if (v15 >= 2u && !strcmp(*v14, "mode"))
  {
    Mode = ot::FactoryDiags::Diags::ParseLong(v14[1], v12, v6);
    if (!Mode)
    {
      v11 = v12[0];
      if (v15 == 2)
      {
        Mode = otPlatDiagGpioGetMode(v11, &v9);
        if (!Mode)
        {
          if (v9)
          {
            if (v9 == 1)
            {
              ot::FactoryDiags::Diags::Output(this, "out\r\n");
            }
          }

          else
          {
            ot::FactoryDiags::Diags::Output(this, "in\r\n");
          }
        }
      }

      else if (v15 == 3 && !strcmp(v14[2], "in"))
      {
        Mode = otPlatDiagGpioSetMode(v11, 0);
      }

      else if (v15 == 3 && !strcmp(v14[2], "out"))
      {
        Mode = otPlatDiagGpioSetMode(v11, 1);
      }
    }
  }

  ot::FactoryDiags::Diags::AppendErrorResult(this, Mode);
  return Mode;
}

uint64_t ot::FactoryDiags::Diags::ParseBool(ot::FactoryDiags::Diags *this, char *a2, BOOL *a3)
{
  v7 = this;
  v6 = a2;
  v5 = 0;
  v4 = 0;
  v5 = ot::FactoryDiags::Diags::ParseLong(this, &v4, a3);
  if (!v5)
  {
    if (v4 < 2)
    {
      *v6 = v4 != 0;
    }

    else
    {
      return 6;
    }
  }

  return v5;
}

uint64_t ot::FactoryDiags::Diags::ParseCmd(ot::FactoryDiags::Diags *this, ot::Utils::CmdLineParser *a2, unsigned __int8 *a3, char **a4)
{
  v7 = ot::Utils::CmdLineParser::ParseCmd<(unsigned char)33>(a2, v10);
  if (!v7)
  {
    *a3 = ot::Utils::CmdLineParser::Arg::GetArgsLength(v10, v4);
    ot::Utils::CmdLineParser::Arg::CopyArgsToStringArray(v10, a4, v5);
  }

  return v7;
}

uint64_t ot::Utils::CmdLineParser::ParseCmd<(unsigned char)33>(ot::Utils::CmdLineParser *a1, char *a2)
{
  return ot::Utils::CmdLineParser::ParseCmd(a1, a2, 0x21);
}

{
  return ot::Utils::CmdLineParser::ParseCmd<(unsigned char)33>(a1, a2);
}

uint64_t ot::FactoryDiags::Diags::ProcessLine(ot::FactoryDiags::Diags *this, char *a2)
{
  v8 = this;
  __src = a2;
  v6 = 256;
  v5 = 0;
  memset(__b, 0, sizeof(__b));
  v4 = 0;
  if (ot::StringLength(__src, 0x100) < 256)
  {
    strcpy(__dst, __src);
    v5 = ot::FactoryDiags::Diags::ParseCmd(this, __dst, &v4, __b);
  }

  else
  {
    v5 = 3;
  }

  if (v5)
  {
    if (v5 == 3)
    {
      ot::FactoryDiags::Diags::Output(this, "failed: command string too long\r\n");
    }

    else if (v5 == 7)
    {
      ot::FactoryDiags::Diags::Output(this, "failed: command string contains too many arguments\r\n");
    }

    else
    {
      ot::FactoryDiags::Diags::Output(this, "failed to parse command string\r\n");
    }
  }

  else
  {
    return ot::FactoryDiags::Diags::ProcessCmd(this, v4, __b);
  }

  return v5;
}

uint64_t ot::FactoryDiags::Diags::ProcessCmd(ot::FactoryDiags::Diags *this, unsigned __int8 a2, const char **a3)
{
  v18 = 0;
  if (a2)
  {
    ot::InstanceLocator::GetInstance(this);
    if (otPlatRadioGetRcp2Vendor2Enabled())
    {
      for (i = &ot::FactoryDiags::Diags::sCommandsProxima; i != &ot::FactoryDiags::Diags::sCommands; i += 3)
      {
        if (!strcmp(*a3, *i))
        {
          v5 = i[2];
          v14 = (this + (v5 >> 1));
          if (v5)
          {
            v13 = *(*v14 + i[1]);
          }

          else
          {
            v13 = i[1];
          }

          if (a2 <= 1u)
          {
            v6 = (v13)(v14, (a2 - 1), 0);
          }

          else
          {
            v6 = (v13)(v14, (a2 - 1), a3 + 1);
          }

          v18 = v6;
          goto LABEL_29;
        }
      }
    }

    for (j = &ot::FactoryDiags::Diags::sCommands; ; j += 3)
    {
      if (j == ot::Mac::Mac::OperationToString(ot::Mac::Mac::Operation)::kOperationStrings)
      {
        Instance = ot::InstanceLocator::GetInstance(this);
        v18 = otPlatDiagProcess(Instance, a2, a3);
        goto LABEL_29;
      }

      if (!strcmp(*a3, *j))
      {
        break;
      }
    }

    v7 = j[2];
    v12 = (this + (v7 >> 1));
    if (v7)
    {
      v11 = *(*v12 + j[1]);
    }

    else
    {
      v11 = j[1];
    }

    if (a2 <= 1u)
    {
      v8 = (v11)(v12, (a2 - 1), 0);
    }

    else
    {
      v8 = (v11)(v12, (a2 - 1), a3 + 1);
    }

    v18 = v8;
  }

  else
  {
    v3 = otPlatDiagModeGet();
    v4 = "enabled";
    if ((v3 & 1) == 0)
    {
      v4 = "disabled";
    }

    ot::FactoryDiags::Diags::Output(this, "diagnostics mode is %s\r\n", v4);
  }

LABEL_29:
  if (v18 == 35 && a2 > 1u)
  {
    ot::FactoryDiags::Diags::Output(this, "diag feature '%s' is not supported\r\n", *a3);
  }

  return v18;
}