uint64_t ot::Mac::RxFrame::ProcessReceiveAesCcm(ot::Mac::RxFrame *this, const ot::Mac::ExtAddress *a2, const ot::Mac::KeyMaterial *a3)
{
  v43 = this;
  v42 = a2;
  v41 = a3;
  *&__n[1] = 0x800000000;
  HIBYTE(__n[0]) = 0;
  ot::Crypto::AesCcm::AesCcm(v45);
  if (ot::Mac::Frame::GetSecurityEnabled(this))
  {
    if (ot::Mac::Frame::GetSecurityLevel(this, __n + 1))
    {
      otLogDebgPlat("RxFrame::ProcessReceiveAesCcm Security error could not get securityLevel", v3, v4, v5, v6, v7, v8, v9, v31);
    }

    else if (ot::Mac::Frame::GetFrameCounter(this, &__n[1]))
    {
      otLogDebgPlat("RxFrame:ProcessReceiveAesCsm Security error could not get frameCounter", v10, v11, v12, v13, v14, v15, v16, v31);
    }

    else
    {
      ot::Crypto::AesCcm::GenerateNonce(v42, *&__n[1], HIBYTE(__n[0]), v47, v13);
      ot::Crypto::AesCcm::SetKey(v45, v41);
      FooterLength = ot::Mac::Frame::GetFooterLength(this);
      LOBYTE(__n[0]) = FooterLength - ot::Mac::Frame::GetFcsSize(this);
      HeaderLength = ot::Mac::Frame::GetHeaderLength(this);
      PayloadLength = ot::Mac::Frame::GetPayloadLength(this);
      ot::Crypto::AesCcm::Init(v45, HeaderLength, PayloadLength, __n[0], v47, 0xDu);
      Header = ot::Mac::Frame::GetHeader(this);
      v18 = ot::Mac::Frame::GetHeaderLength(this);
      ot::Crypto::AesCcm::Header(v45, Header, v18);
      ot::Mac::Frame::GetPayload(this);
      v37 = v19;
      ot::Mac::Frame::GetPayload(this);
      v38 = v20;
      v21 = ot::Mac::Frame::GetPayloadLength(this);
      ot::Crypto::AesCcm::Payload(v45, v37, v38, v21, 1);
      ot::Crypto::AesCcm::Finalize(v45, v46);
      ot::Mac::Frame::GetFooter(this);
      if (!memcmp(v46, v22, LOBYTE(__n[0])))
      {
        *&__n[3] = 0;
      }

      else
      {
        v33 = ot::ErrorToString(*&__n[3]);
        ot::Mac::ExtAddress::ToString(v42, v44);
        ot::String<(unsigned short)17>::AsCString(v44);
        ot::Mac::Frame::GetPayloadLength(this);
        ot::Mac::Frame::GetFooterLength(this);
        otLogDebgPlat("RxFrame::ProcessReceiveAesCcm Security error tag and GetFooter() mismatch: error:%s extAddr:%s frameCounter:%u tagLen:%d payloadLen:%d footerLen:%d secLevel:%d ", v23, v24, v25, v26, v27, v28, v29, v33);
      }
    }
  }

  else
  {
    *&__n[3] = 0;
  }

  v32 = *&__n[3];
  ot::Crypto::AesCcm::~AesCcm(v45);
  return v32;
}

ot::StringWriter *ot::Mac::Frame::ToInfoString@<X0>(ot::Mac::Frame *this@<X0>, ot::StringWriter *a2@<X8>)
{
  v20 = this;
  ot::String<(unsigned short)150>::String(a2);
  v19 = 0;
  Type = 0;
  ot::Mac::Address::Address(v17);
  ot::Mac::Address::Address(v16);
  v15 = 0;
  v12 = *(this + 4);
  Sequence = ot::Mac::Frame::GetSequence(this);
  ot::StringWriter::Append(a2, "len:%d, seqnum:%d, type:", v12, Sequence);
  Type = ot::Mac::Frame::GetType(this);
  if (Type)
  {
    switch(Type)
    {
      case 1u:
        ot::StringWriter::Append(a2, "Data");
        break;
      case 2u:
        ot::StringWriter::Append(a2, "Ack");
        break;
      case 3u:
        if (ot::Mac::Frame::GetCommandId(this, &v19))
        {
          v19 = -1;
        }

        if (v19 == 4)
        {
          ot::StringWriter::Append(a2, "Cmd(DataReq)");
        }

        else if (v19 == 7)
        {
          ot::StringWriter::Append(a2, "Cmd(BeaconReq)");
        }

        else
        {
          ot::StringWriter::Append(a2, "Cmd(%d)", v19);
        }

        break;
      case 5u:
        ot::StringWriter::Append(a2, "MP");
        break;
      default:
        ot::StringWriter::Append(a2, "%d", Type);
        break;
    }
  }

  else
  {
    ot::StringWriter::Append(a2, "Beacon");
  }

  ot::Mac::Frame::GetSrcAddr(this, v17);
  IgnoreError();
  ot::Mac::Frame::GetDstAddr(this, v16);
  IgnoreError();
  ot::Mac::Address::ToString(v17, v22);
  v8 = ot::String<(unsigned short)17>::AsCString(v22);
  ot::Mac::Address::ToString(v16, v21);
  v9 = ot::String<(unsigned short)17>::AsCString(v21);
  SecurityEnabled = ot::Mac::Frame::GetSecurityEnabled(this);
  v10 = ot::ToYesNo(SecurityEnabled);
  AckRequest = ot::Mac::Frame::GetAckRequest(this);
  v11 = ot::ToYesNo(AckRequest);
  FramePending = ot::Mac::Frame::GetFramePending(this);
  v6 = "yes";
  if (!FramePending)
  {
    v6 = "no";
  }

  ot::StringWriter::Append(a2, ", src:%s, dst:%s, sec:%s, ackreq:%s, fp:%s", v8, v9, v10, v11, v6);
  result = ot::Mac::Frame::GetSecurityEnabled(this);
  if (result)
  {
    ot::Mac::Frame::GetFrameCounter(this, &v15);
    return ot::StringWriter::Append(a2, ", fc:%u", v15);
  }

  return result;
}

uint64_t ot::String<(unsigned short)150>::String(uint64_t a1)
{
  ot::String<(unsigned short)150>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 150);
  return a1;
}

char *ot::Mac::ExtAddress::Set(char *a1, void *a2, char a3)
{
  return ot::Mac::ExtAddress::CopyAddress(a1, a2, a3);
}

{
  return ot::Mac::ExtAddress::Set(a1, a2, a3);
}

uint64_t ot::LittleEndian::WriteUint24(uint64_t this, uint64_t a2, unsigned __int8 *a3)
{
  *a2 = this;
  *(a2 + 2) = BYTE2(this);
  return this;
}

{
  return ot::LittleEndian::WriteUint24(this, a2, a3);
}

uint64_t ot::LittleEndian::ReadUint24(ot::LittleEndian *this, const unsigned __int8 *a2)
{
  return (*(this + 1) << 8) | *this | (*(this + 2) << 16);
}

{
  return ot::LittleEndian::ReadUint24(this, a2);
}

ot::Mac::TxFrames *ot::Mac::TxFrames::TxFrames(ot::Mac::TxFrames *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  v2 = ot::Instance::Get<ot::Mac::SubMac>(a2);
  TransmitFrame = ot::Mac::SubMac::GetTransmitFrame(v2);
  result = this;
  *this = TransmitFrame;
  return result;
}

{
  ot::Mac::TxFrames::TxFrames(this, a2);
  return this;
}

uint64_t ot::Mac::SubMac::GetTransmitFrame(ot::Mac::SubMac *this)
{
  return *(this + 4);
}

{
  return ot::Mac::SubMac::GetTransmitFrame(this);
}

ot::Mac::Links *ot::Mac::Links::Links(ot::Mac::Links *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Mac::SubMac::SubMac((this + 8), a2);
  ot::Mac::TxFrames::TxFrames((this + 232), a2);
  return this;
}

{
  ot::Mac::Links::Links(this, a2);
  return this;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::SubMac>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Mac::SubMac>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::SubMac>(a1);
}

uint64_t ot::Mac::Links::GetTemporaryMacKey(ot::Mac::Links *this, const ot::Mac::Frame *a2, int a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
  if (a3 == ot::KeyManager::GetCurrentKeySequence(v3) - 1)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::SubMac>(this);
    return ot::Mac::SubMac::GetPreviousMacKey(v4);
  }

  else
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
    if (a3 != ot::KeyManager::GetCurrentKeySequence(v5) + 1)
    {
      __assert_rtn("GetTemporaryMacKey", "mac_links.cpp", 231, "false");
    }

    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::SubMac>(this);
    return ot::Mac::SubMac::GetNextMacKey(v6);
  }
}

uint64_t ot::Mac::Links::SetMacFrameCounter(ot::Mac::Links *this, ot::Mac::TxFrame *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
  v3 = ot::KeyManager::Get154MacFrameCounter(v2);
  return ot::Mac::Frame::SetFrameCounter(a2, v3 + 5);
}

uint64_t ot::KeyManager::Get154MacFrameCounter(ot::KeyManager *this)
{
  return ot::Mac::LinkFrameCounters::Get154((this + 52));
}

{
  return ot::KeyManager::Get154MacFrameCounter(this);
}

uint64_t ot::Mac::LinkFrameCounters::Get154(ot::Mac::LinkFrameCounters *this)
{
  return *this;
}

{
  return ot::Mac::LinkFrameCounters::Get154(this);
}

uint64_t ot::FrameBuilder::Init(uint64_t this, void *a2, __int16 a3)
{
  *this = a2;
  *(this + 8) = 0;
  *(this + 10) = a3;
  return this;
}

uint64_t ot::FrameBuilder::AppendUint8(ot::FrameBuilder *this, char a2)
{
  v4 = this;
  v3 = a2;
  return ot::FrameBuilder::Append<unsigned char>(this, &v3);
}

uint64_t ot::FrameBuilder::Append<unsigned char>(ot::FrameBuilder *a1, const void *a2)
{
  return ot::FrameBuilder::AppendBytes(a1, a2, 1u);
}

{
  return ot::FrameBuilder::Append<unsigned char>(a1, a2);
}

uint64_t ot::FrameBuilder::AppendBigEndianUint16(ot::FrameBuilder *this, unsigned __int16 a2)
{
  v5 = this;
  v4[1] = a2;
  v4[0] = ot::BigEndian::HostSwap16(a2);
  return ot::FrameBuilder::Append<unsigned short>(this, v4);
}

uint64_t ot::FrameBuilder::Append<unsigned short>(ot::FrameBuilder *a1, const void *a2)
{
  return ot::FrameBuilder::AppendBytes(a1, a2, 2u);
}

{
  return ot::FrameBuilder::Append<unsigned short>(a1, a2);
}

uint64_t ot::FrameBuilder::AppendBigEndianUint32(ot::FrameBuilder *this, unsigned int a2)
{
  v5 = this;
  v4[1] = a2;
  v4[0] = ot::BigEndian::HostSwap32(a2);
  return ot::FrameBuilder::Append<unsigned int>(this, v4);
}

uint64_t ot::FrameBuilder::Append<unsigned int>(ot::FrameBuilder *a1, const void *a2)
{
  return ot::FrameBuilder::AppendBytes(a1, a2, 4u);
}

{
  return ot::FrameBuilder::Append<unsigned int>(a1, a2);
}

uint64_t ot::FrameBuilder::AppendLittleEndianUint16(ot::FrameBuilder *this, unsigned __int16 a2)
{
  v5 = this;
  v4[1] = a2;
  v4[0] = ot::LittleEndian::HostSwap16(a2);
  return ot::FrameBuilder::Append<unsigned short>(this, v4);
}

uint64_t ot::FrameBuilder::AppendLittleEndianUint32(ot::FrameBuilder *this, unsigned int a2)
{
  v5 = this;
  v4[1] = a2;
  v4[0] = ot::LittleEndian::HostSwap32(a2);
  return ot::FrameBuilder::Append<unsigned int>(this, v4);
}

uint64_t ot::FrameBuilder::AppendBytes(ot::FrameBuilder *this, const void *a2, unsigned __int16 a3)
{
  v5 = 0;
  if (ot::FrameBuilder::CanAppend(this, a3))
  {
    memcpy((*this + *(this + 4)), a2, a3);
    *(this + 4) += a3;
  }

  else
  {
    return 3;
  }

  return v5;
}

BOOL ot::FrameBuilder::CanAppend(ot::FrameBuilder *this, unsigned __int16 a2)
{
  return *(this + 4) + a2 <= *(this + 5);
}

{
  return ot::FrameBuilder::CanAppend(this, a2);
}

uint64_t ot::FrameBuilder::AppendMacAddress(ot::FrameBuilder *this, const ot::Mac::Address *a2)
{
  v7 = 0;
  Type = ot::Mac::Address::GetType(a2);
  if (Type)
  {
    if (Type == 1)
    {
      Short = ot::Mac::Address::GetShort(a2);
      return ot::FrameBuilder::AppendLittleEndianUint16(this, Short);
    }

    else if (Type == 2)
    {
      if (ot::FrameBuilder::CanAppend(this, 8u))
      {
        ot::Mac::Address::GetExtended(a2);
        ot::Mac::ExtAddress::CopyTo(v3, (*this + *(this + 4)), 1);
        *(this + 4) += 8;
      }

      else
      {
        return 3;
      }
    }
  }

  return v7;
}

uint64_t ot::FrameBuilder::AppendBytesFromMessage(ot::FrameBuilder *this, const ot::Message *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  if (ot::FrameBuilder::CanAppend(this, a4))
  {
    v6 = ot::Message::Read(a2, a3, (*this + *(this + 4)), a4);
    if (!v6)
    {
      *(this + 4) += a4;
    }
  }

  else
  {
    return 3;
  }

  return v6;
}

uint64_t ot::FrameBuilder::InsertBytes(ot::FrameBuilder *this, unsigned __int16 a2, const void *a3, unsigned __int16 a4)
{
  v6 = 0;
  if (a2 > *(this + 4))
  {
    __assert_rtn("InsertBytes", "frame_builder.cpp", 130, "aOffset <= mLength");
  }

  if (ot::FrameBuilder::CanAppend(this, a4))
  {
    memmove((*this + a2 + a4), (*this + a2), *(this + 4) - a2);
    memcpy((*this + a2), a3, a4);
    *(this + 4) += a4;
  }

  else
  {
    return 3;
  }

  return v6;
}

void *ot::FrameBuilder::RemoveBytes(ot::FrameBuilder *this, unsigned __int16 a2, unsigned __int16 a3)
{
  result = memmove((*this + a2), (*this + a2 + a3), *(this + 4) - a2 - a3);
  *(this + 4) -= a3;
  return result;
}

uint64_t ot::MeshCoP::NameData::CopyTo(ot::MeshCoP::NameData *this, char *a2, char a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  ot::MutableData<(ot::DataLengthType)0>::Init(v5, a2, a3);
  ot::MutableData<(ot::DataLengthType)0>::ClearBytes(v5);
  ot::MutableData<(ot::DataLengthType)0>::CopyBytesFrom(v5, this);
  IgnoreError();
  return ot::Data<(ot::DataLengthType)0>::GetLength(v5);
}

uint64_t ot::MutableData<(ot::DataLengthType)0>::Init(uint64_t a1, uint64_t a2, char a3)
{
  return ot::Data<(ot::DataLengthType)0>::Init(a1, a2, a3);
}

{
  return ot::MutableData<(ot::DataLengthType)0>::Init(a1, a2, a3);
}

void ot::MutableData<(ot::DataLengthType)0>::ClearBytes(uint64_t a1)
{
  ot::MutableData<(ot::DataLengthType)0>::GetBytes(a1);
  bzero(v1, *(a1 + 8));
}

{
  ot::MutableData<(ot::DataLengthType)0>::ClearBytes(a1);
}

uint64_t ot::MutableData<(ot::DataLengthType)0>::CopyBytesFrom(uint64_t *a1, uint64_t a2)
{
  Bytes = ot::Data<(ot::DataLengthType)0>::GetBytes(a2);
  Length = ot::Data<(ot::DataLengthType)0>::GetLength(a2);
  return ot::MutableData<(ot::DataLengthType)0>::CopyBytesFrom(a1, Bytes, Length);
}

{
  return ot::MutableData<(ot::DataLengthType)0>::CopyBytesFrom(a1, a2);
}

uint64_t ot::Data<(ot::DataLengthType)0>::GetLength(uint64_t a1)
{
  return *(a1 + 8);
}

{
  return ot::Data<(ot::DataLengthType)0>::GetLength(a1);
}

uint64_t ot::MeshCoP::NetworkName::GetAsData(ot::MeshCoP::NetworkName *this)
{
  v1 = ot::StringLength(this, 0x11);
  ot::MeshCoP::NameData::NameData(&v4, this, v1);
  return v4;
}

uint64_t ot::MeshCoP::NetworkName::Set(ot::MeshCoP::NetworkName *this, ot *a2)
{
  v8 = this;
  v7 = a2;
  v6 = 0;
  ot::MeshCoP::NameData::NameData(v5, a2, 17);
  if (ot::IsValidUtf8String(v7, v2))
  {
    return ot::MeshCoP::NetworkName::Set(this, v5);
  }

  else
  {
    return 7;
  }
}

uint64_t ot::MeshCoP::NetworkName::Set(ot::MeshCoP::NetworkName *this, const ot::MeshCoP::NameData *a2)
{
  v10 = this;
  v9 = a2;
  v8 = 0;
  v7 = *a2;
  Buffer = ot::MeshCoP::NameData::GetBuffer(&v7);
  Length = ot::MeshCoP::NameData::GetLength(&v7);
  v6 = ot::StringLength(Buffer, Length);
  if (v6 <= 0x10u)
  {
    ot::Data<(ot::DataLengthType)0>::SetLength(&v7, v6);
    if (!ot::Data<(ot::DataLengthType)0>::MatchesBytesIn(&v7, this) || *(this + v6))
    {
      ot::Data<(ot::DataLengthType)0>::CopyBytesTo(&v7, this);
      *(this + v6) = 0;
    }

    else
    {
      return 24;
    }
  }

  else
  {
    return 7;
  }

  return v8;
}

uint64_t ot::MeshCoP::NameData::GetBuffer(ot::MeshCoP::NameData *this)
{
  return ot::Data<(ot::DataLengthType)0>::GetBytes(this);
}

{
  return ot::MeshCoP::NameData::GetBuffer(this);
}

uint64_t ot::MeshCoP::NameData::GetLength(ot::MeshCoP::NameData *this)
{
  return ot::Data<(ot::DataLengthType)0>::GetLength(this);
}

{
  return ot::MeshCoP::NameData::GetLength(this);
}

uint64_t ot::Data<(ot::DataLengthType)0>::SetLength(uint64_t result, char a2)
{
  *(result + 8) = a2;
  return result;
}

{
  return ot::Data<(ot::DataLengthType)0>::SetLength(result, a2);
}

BOOL ot::Data<(ot::DataLengthType)0>::MatchesBytesIn(uint64_t a1, const void *a2)
{
  return memcmp(*a1, a2, *(a1 + 8)) == 0;
}

{
  return ot::Data<(ot::DataLengthType)0>::MatchesBytesIn(a1, a2);
}

void *ot::Data<(ot::DataLengthType)0>::CopyBytesTo(uint64_t a1, void *a2)
{
  return memcpy(a2, *a1, *(a1 + 8));
}

{
  return ot::Data<(ot::DataLengthType)0>::CopyBytesTo(a1, a2);
}

BOOL ot::MeshCoP::NetworkName::operator==(ot::MeshCoP::NetworkName *a1, ot::MeshCoP::NetworkName *a2)
{
  v8 = a1;
  v7 = a2;
  v6[0] = ot::MeshCoP::NetworkName::GetAsData(a1);
  v6[1] = v2;
  v5[0] = ot::MeshCoP::NetworkName::GetAsData(v7);
  v5[1] = v3;
  return ot::Data<(ot::DataLengthType)0>::operator==(v6, v5);
}

BOOL ot::Data<(ot::DataLengthType)0>::operator==(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (*(a1 + 8) == *(a2 + 8))
  {
    return ot::Data<(ot::DataLengthType)0>::MatchesBytesIn(a1, *a2);
  }

  return v3;
}

{
  return ot::Data<(ot::DataLengthType)0>::operator==(a1, a2);
}

ot::MeshCoP::NetworkNameManager *ot::MeshCoP::NetworkNameManager::NetworkNameManager(ot::MeshCoP::NetworkNameManager *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::MeshCoP::NetworkName::NetworkName(this);
  ot::MeshCoP::NetworkName::NetworkName((this + 17));
  ot::MeshCoP::NetworkNameManager::SetNetworkName(this, "OpenThread");
  IgnoreError();
  ot::MeshCoP::NetworkNameManager::SetDomainName(this, "DefaultDomain");
  IgnoreError();
  return this;
}

{
  ot::MeshCoP::NetworkNameManager::NetworkNameManager(this, a2);
  return this;
}

uint64_t ot::MeshCoP::NetworkNameManager::SetDomainName(ot::MeshCoP::NetworkNameManager *this, ot *a2)
{
  v4 = ot::MeshCoP::NetworkName::Set((this + 17), a2);
  if (v4 == 24)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t ot::MeshCoP::NetworkNameManager::SignalNetworkNameChange(ot::InstanceLocator *a1, unsigned int a2)
{
  v5 = a2;
  if (a2)
  {
    if (a2 == 24)
    {
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
      ot::Notifier::SignalIfFirst(v3, 0x10000);
      return 0;
    }
  }

  else
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
    ot::Notifier::Signal(v2, 0x10000);
  }

  return v5;
}

uint64_t ot::MeshCoP::NetworkNameManager::SetDomainName(ot::MeshCoP::NetworkNameManager *this, const ot::MeshCoP::NameData *a2)
{
  v4 = ot::MeshCoP::NetworkName::Set((this + 17), a2);
  if (v4 == 24)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t ot::Data<(ot::DataLengthType)0>::GetBytes(uint64_t a1)
{
  return *a1;
}

{
  return ot::Data<(ot::DataLengthType)0>::GetBytes(a1);
}

void ot::MutableData<(ot::DataLengthType)0>::GetBytes(uint64_t a1)
{
  ot::Data<(ot::DataLengthType)0>::GetBytes(a1);
  ot::AsNonConst<unsigned char>();
}

{
  ot::MutableData<(ot::DataLengthType)0>::GetBytes(a1);
}

uint64_t ot::MutableData<(ot::DataLengthType)0>::CopyBytesFrom(uint64_t *a1, const void *a2, unsigned __int8 a3)
{
  if (*(a1 + 8) < a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  v8 = v3;
  *(a1 + 8) = ot::Min<unsigned char>(*(a1 + 8), a3);
  v4 = *a1;
  ot::AsNonConst<unsigned char>();
  memcpy(v5, a2, *(a1 + 8));
  return v8;
}

{
  return ot::MutableData<(ot::DataLengthType)0>::CopyBytesFrom(a1, a2, a3);
}

ot::Random::NonCrypto *ot::Mac::GenerateRandomPanId(ot::Random::NonCrypto *this)
{
  do
  {
    this = ot::Random::NonCrypto::GetUint16(this);
  }

  while (this == 0xFFFF);
  return this;
}

_BYTE *ot::Mac::ExtAddress::GenerateRandom(ot::Mac::ExtAddress *this)
{
  ot::Random::Crypto::Fill<ot::Mac::ExtAddress>(this);
  IgnoreError();
  ot::Mac::ExtAddress::SetGroup(this, 0);
  return ot::Mac::ExtAddress::SetLocal(this, 1);
}

uint64_t ot::Random::Crypto::Fill<ot::Mac::ExtAddress>(ot::Random::Crypto *a1)
{
  return ot::Random::Crypto::FillBuffer(a1, 8);
}

{
  return ot::Random::Crypto::Fill<ot::Mac::ExtAddress>(a1);
}

char *ot::Mac::ExtAddress::CopyAddress(char *result, void *a2, char a3)
{
  v7 = result;
  if (a3)
  {
    if (a3 == 1)
    {
      v6 = a2 + 7;
      for (i = 8; i; --i)
      {
        v3 = v6--;
        v4 = v7++;
        *v4 = *v3;
      }
    }
  }

  else
  {
    *result = *a2;
  }

  return result;
}

ot::StringWriter *ot::Mac::Address::ToString@<X0>(ot::Mac::Address *this@<X0>, ot::StringWriter *a2@<X8>)
{
  ot::String<(unsigned short)17>::String(a2);
  if (*(this + 8) == 2)
  {
    ot::Mac::Address::GetExtended(this);
    return ot::StringWriter::AppendHexBytes(a2, v2, 8);
  }

  else if (*(this + 8))
  {
    Short = ot::Mac::Address::GetShort(this);
    return ot::StringWriter::Append(a2, "0x%04x", Short);
  }

  else
  {
    return ot::StringWriter::Append(a2, "None");
  }
}

uint64_t ot::Mac::PanIds::SetSource(uint64_t this, __int16 a2)
{
  *this = a2;
  *(this + 4) = 1;
  return this;
}

uint64_t ot::Mac::PanIds::SetDestination(uint64_t this, __int16 a2)
{
  *(this + 2) = a2;
  *(this + 5) = 1;
  return this;
}

__n128 ot::Mac::KeyMaterial::SetKey(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 ot::Mac::KeyMaterial::ExtractKey(ot::Mac::KeyMaterial *this, __n128 *a2)
{
  ot::Mac::KeyMaterial::GetKey(this);
  result = *v2;
  *a2 = *v2;
  return result;
}

uint64_t ot::Mac::KeyMaterial::ConvertToCryptoKey(ot::Mac::KeyMaterial *this, ot::Crypto::Key *a2)
{
  ot::Mac::KeyMaterial::GetKey(this);
  ot::Mac::Key::GetBytes(v2);
  return ot::Crypto::Key::Set(a2, v3, 16);
}

void ot::Mac::Key::GetBytes(ot::Mac::Key *this)
{
  ;
}

{
  ot::Mac::Key::GetBytes(this);
}

BOOL ot::Mac::KeyMaterial::operator==(ot::Mac::KeyMaterial *a1, ot::Mac::KeyMaterial *a2)
{
  ot::Mac::KeyMaterial::GetKey(a1);
  v5 = v2;
  ot::Mac::KeyMaterial::GetKey(a2);
  return ot::Equatable<ot::Mac::Key>::operator==(v5, v3);
}

BOOL ot::Equatable<ot::Mac::Key>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 0x10uLL) == 0;
}

{
  return ot::Equatable<ot::Mac::Key>::operator==(a1, a2);
}

ot::Mac::SubMac *ot::Mac::SubMac::SubMac(ot::Mac::SubMac *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  *this = ot::Radio::GetCaps(v2);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  *(this + 4) = ot::Radio::GetTransmitBuffer(v3);
  ot::Mac::SubMac::Callbacks::Callbacks((this + 40), a2);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 6);
  ot::Mac::KeyMaterial::KeyMaterial((this + 64));
  ot::Mac::KeyMaterial::KeyMaterial((this + 80));
  ot::Mac::KeyMaterial::KeyMaterial((this + 96));
  ot::TimerMicroIn<ot::Mac::SubMac,&ot::Mac::SubMac::HandleTimer>::TimerMicroIn((this + 136), a2);
  ot::TimerMicro::TimerMicro((this + 200), a2, ot::Mac::SubMac::HandleCslTimer);
  ot::Mac::CslAccuracy::Init(this + 184);
  ot::Mac::SubMac::Init(this);
  return this;
}

{
  ot::Mac::SubMac::SubMac(this, a2);
  return this;
}

void ot::Mac::SubMac::HandleTimer(ot::Mac::Frame **this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(this + 2);
  switch(v12)
  {
    case 3:
      goto LABEL_8;
    case 4:
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("SubMac", "Ack timer timed out", a3, a4, a5, a6, a7, a8, v9);
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      Channel = ot::Mac::Frame::GetChannel(this[4]);
      ot::Radio::Receive(v10, Channel);
      IgnoreError();
      ot::Mac::SubMac::HandleTransmitDone(this, this[4], 0, 0xEu);
      return;
    case 5:
      ot::Mac::SubMac::SampleRssi(this);
      return;
    case 6:
      ot::Mac::SubMac::StartCsmaBackoff(this);
      return;
    case 7:
LABEL_8:
      ot::Mac::SubMac::BeginTransmit(this);
      return;
    case 29:
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("SubMac", "Duplicated frame counter detected.", a3, a4, a5, a6, a7, a8, v9);
      break;
  }
}

uint64_t ot::Radio::GetCaps(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetCaps();
}

{
  return ot::Radio::GetCaps(this);
}

ot::TimerMilli *ot::TimerMicroIn<ot::Mac::SubMac,&ot::Mac::SubMac::HandleTimer>::TimerMicroIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMicroIn<ot::Mac::SubMac,&ot::Mac::SubMac::HandleTimer>::TimerMicroIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMicroIn<ot::Mac::SubMac,&ot::Mac::SubMac::HandleTimer>::HandleTimer);
  return a1;
}

_BYTE *ot::Mac::CslAccuracy::Init(_BYTE *this)
{
  *this = -1;
  this[1] = -1;
  return this;
}

{
  return ot::Mac::CslAccuracy::Init(this);
}

uint64_t ot::Mac::SubMac::Init(ot::Mac::SubMac *this)
{
  v4 = this;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 4) = -2;
  *(this + 5) = -2;
  ot::Clearable<ot::Mac::ExtAddress>::Clear((this + 12));
  *(this + 20) = *(this + 20) & 0xFE | 1;
  *(this + 21) = 127;
  ot::Time::Time(&v3, 0);
  *(this + 6) = v3;
  *(this + 117) = 0;
  *(this + 20) &= ~2u;
  ot::Mac::KeyMaterial::Clear((this + 64));
  ot::Mac::KeyMaterial::Clear((this + 80));
  ot::Mac::KeyMaterial::Clear((this + 96));
  *(this + 28) = 0;
  *(this + 116) = 0;
  ot::TimerMicro::Stop((this + 136));
  return ot::Mac::SubMac::CslInit(this);
}

void *ot::Clearable<ot::Mac::ExtAddress>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Mac::ExtAddress>(a1);
}

{
  return ot::Clearable<ot::Mac::ExtAddress>::Clear(a1);
}

void ot::Mac::SubMac::InitializeCSTPhase(ot::Mac::Frame **this)
{
  ot::Mac::Frame::GetThreadIe(this[4], 2u);
  if (v1)
  {
    v22 = (v1 + 2);
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (ot::Mle::Mle::IsCslPeripheralDetaching(v2))
    {
      ot::Mac::CstIe::SetPhase(v22, 0, v3);
      ot::Mac::CstIe::SetPeriod(v22, 0, v4);
      ot::Mac::Frame::SetCslIe(this[4], 0, 0);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("SubMac", "%s: Setting CST Phase/Period to 0, Needs Confirmation", v5, v6, v7, v8, v9, v10, "InitializeCSTPhase");
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      ot::Mle::Mle::SetPeripheralDetachState(v11, 0);
      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      ot::Mle::Mle::NeedsDetachConfirm(v12, 1);
    }

    else
    {
      ot::Mac::CstIe::SetPhase(v22, 0xFFFFu, v3);
      ot::Mac::CstIe::SetPeriod(v22, 0xFFFFu, v13);
      ot::Mac::Frame::SetCslIe(this[4], 0xFFFFu, 0xFFFFu);
    }
  }

  else
  {
    v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (ot::Mle::Mle::IsCslPeripheralDetaching(v14))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("SubMac", "%s: Detach is pending, but TX frame does not have CST IE to set it to 0 for link teardown", v15, v16, v17, v18, v19, v20, "InitializeCSTPhase");
    }
  }
}

uint64_t ot::Mac::CstIe::SetPhase(ot::Mac::CstIe *this, unsigned __int16 a2, unsigned __int8 *a3)
{
  return ot::LittleEndian::WriteUint16(a2, this + 2, a3);
}

{
  return ot::Mac::CstIe::SetPhase(this, a2, a3);
}

uint64_t ot::Mac::CstIe::SetPeriod(ot::Mac::CstIe *this, unsigned __int16 a2, unsigned __int8 *a3)
{
  return ot::LittleEndian::WriteUint16(a2, this + 3, a3);
}

{
  return ot::Mac::CstIe::SetPeriod(this, a2, a3);
}

uint64_t ot::Mle::Mle::SetPeripheralDetachState(uint64_t this, char a2)
{
  *(this + 856) = *(this + 856) & 0xFE | a2 & 1;
  return this;
}

{
  return ot::Mle::Mle::SetPeripheralDetachState(this, a2);
}

uint64_t ot::Mle::Mle::NeedsDetachConfirm(uint64_t this, char a2)
{
  *(this + 856) = *(this + 856) & 0xFD | (2 * (a2 & 1));
  return this;
}

{
  return ot::Mle::Mle::NeedsDetachConfirm(this, a2);
}

void ot::Mac::SubMac::SetPanId(ot::Mac::SubMac *this, __int16 a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::SetPanId(v2, a2);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("SubMac", "RadioPanId: 0x%04x", v3, v4, v5, v6, v7, v8, a2);
}

uint64_t ot::Radio::SetPanId(ot::Radio *this, unsigned __int16 a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioSetPanId(InstancePtr, a2);
}

{
  return ot::Radio::SetPanId(this, a2);
}

void ot::Mac::SubMac::SetShortAddress(ot::Mac::SubMac *this, __int16 a2)
{
  *(this + 4) = a2;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::SetShortAddress(v2, *(this + 4));
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("SubMac", "RadioShortAddress: 0x%04x", v3, v4, v5, v6, v7, v8, *(this + 4));
}

void ot::Mac::SubMac::SetAlternateShortAddress(ot::Mac::SubMac *this, unsigned __int16 a2)
{
  if (*(this + 5) != a2)
  {
    *(this + 5) = a2;
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    ot::Radio::SetAlternateShortAddress(v2, *(this + 5));
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("SubMac", "RadioAlternateShortAddress: 0x%04x", v3, v4, v5, v6, v7, v8, *(this + 5));
  }
}

uint64_t ot::Radio::SetAlternateShortAddress(ot::Radio *this, unsigned __int16 a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioSetAlternateShortAddress(InstancePtr, a2);
}

{
  return ot::Radio::SetAlternateShortAddress(this, a2);
}

void ot::Mac::SubMac::SetExtAddress(ot::Mac::SubMac *this, const ot::Mac::ExtAddress *a2)
{
  v31 = this;
  v30 = a2;
  v27 = this;
  *(this + 12) = *a2;
  v26 = v34;
  ot::Mac::ExtAddress::Set(v34, v30, 1);
  v25[10] = v33;
  ot::Mac::ExtAddress::ToString((v27 + 12), v33);
  v2 = ot::String<(unsigned short)17>::AsCString(v33);
  v3 = *v30;
  v4 = *(v30 + 1);
  v5 = *(v30 + 2);
  v6 = *(v30 + 3);
  v7 = *(v30 + 4);
  v8 = *(v30 + 5);
  v9 = *(v30 + 6);
  v10 = *(v30 + 7);
  v25[11] = v25;
  v25[1] = v3;
  v25[2] = v4;
  v25[3] = v5;
  v25[4] = v6;
  v25[5] = v7;
  v25[6] = v8;
  v25[7] = v9;
  v25[8] = v10;
  v29 = "SubMac";
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("SubMac", "RadioExtAddress1: %s 0[%d] 1[%d] 2[%d] 3[%d] 4[%d] 5[%d] 6[%d] 7[%d]", v11, v12, v13, v14, v15, v16, v2);
  v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(v27);
  ot::Radio::SetExtendedAddress(v17, v26);
  v28 = v32;
  ot::Mac::ExtAddress::ToString((v27 + 12), v32);
  v18 = ot::String<(unsigned short)17>::AsCString(v28);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>(v29, "RadioExtAddress: %s", v19, v20, v21, v22, v23, v24, v18);
}

void ot::Mac::SubMac::SetRxOnWhenIdle(ot::Mac::SubMac *this, char a2)
{
  *(this + 20) = *(this + 20) & 0xFE | a2 & 1;
  if (ot::Mac::SubMac::RadioSupportsRxOnWhenIdle(this))
  {
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    v9 = *(this + 20) & 1;
    ot::Radio::SetRxOnWhenIdle(v8);
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)5>("SubMac", "RxOnWhenIdle: %d", v2, v3, v4, v5, v6, v7, *(this + 20) & 1);
}

BOOL ot::Mac::SubMac::RadioSupportsRxOnWhenIdle(ot::Mac::SubMac *this)
{
  return (*this & 0x100) != 0;
}

{
  return ot::Mac::SubMac::RadioSupportsRxOnWhenIdle(this);
}

void ot::Radio::SetRxOnWhenIdle(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  j__otPlatRadioSetRxOnWhenIdle();
}

{
  ot::Radio::SetRxOnWhenIdle(this);
}

uint64_t ot::Mac::SubMac::Enable(ot::Mac::SubMac *this)
{
  v5 = 0;
  if (!*(this + 2))
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    v5 = ot::Radio::Enable(v1);
    if (!v5)
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      v5 = ot::Radio::Sleep(v2);
      if (!v5)
      {
        ot::Mac::SubMac::SetState(this, 1u);
      }
    }
  }

  if (v5)
  {
    __assert_rtn("Enable", "sub_mac.cpp", 300, "false");
  }

  return 0;
}

void ot::Mac::SubMac::SetState(uint64_t a1, unsigned __int8 a2)
{
  if (*(a1 + 2) != a2)
  {
    v8 = ot::Mac::SubMac::StateToString(*(a1 + 2));
    ot::Mac::SubMac::StateToString(a2);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("SubMac", "RadioState: %s -> %s", v2, v3, v4, v5, v6, v7, v8);
    *(a1 + 2) = a2;
  }
}

uint64_t ot::Mac::SubMac::Disable(ot::Mac::SubMac *this)
{
  ot::TimerMicro::Stop((this + 200));
  ot::TimerMicro::Stop((this + 136));
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  v5 = ot::Radio::Sleep(v1);
  if (!v5)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    v5 = ot::Radio::Disable(v2);
    if (!v5)
    {
      ot::Mac::SubMac::SetState(this, 0);
    }
  }

  return v5;
}

uint64_t ot::Radio::Disable(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioDisable();
}

{
  return ot::Radio::Disable(this);
}

uint64_t ot::Mac::SubMac::Sleep(ot::Mac::SubMac *this)
{
  v11 = 0;
  if (ot::Mac::SubMac::ShouldHandleTransitionToSleep(this))
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    v11 = ot::Radio::Sleep(v1);
  }

  if (v11)
  {
    v2 = ot::ErrorToString(v11);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("SubMac", "RadioSleep() failed, error: %s", v3, v4, v5, v6, v7, v8, v2);
  }

  else
  {
    ot::Mac::SubMac::SetState(this, 1u);
  }

  return v11;
}

BOOL ot::Mac::SubMac::ShouldHandleTransitionToSleep(ot::Mac::SubMac *this)
{
  LOBYTE(v2) = 1;
  if ((*(this + 20) & 1) == 0)
  {
    return !ot::Mac::SubMac::RadioSupportsRxOnWhenIdle(this);
  }

  return v2;
}

uint64_t ot::Mac::SubMac::Receive(ot::Mac::SubMac *this, unsigned __int8 a2)
{
  if ((*(this + 20) & 2) != 0)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    v13 = ot::Radio::Sleep(v2);
  }

  else
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    v13 = ot::Radio::Receive(v3, a2);
  }

  if (v13)
  {
    v4 = ot::ErrorToString(v13);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("SubMac", "RadioReceive() failed, error: %s", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    ot::Mac::SubMac::SetState(this, 2u);
  }

  return v13;
}

void ot::Mac::SubMac::HandleReceiveDone(uint64_t a1, ot::Mac::Frame *a2, int a3)
{
  v6[1] = a1;
  v6[0] = a2;
  v5 = a3;
  if (ot::CallbackBase<void (*)(otRadioFrame const*,BOOL,void *)>::IsSet((a1 + 48)) && v6[0] && !v5)
  {
    v4 = 0;
    ot::Callback<void (*)(otRadioFrame const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Mac::RxFrame *&,BOOL>(a1 + 48, v6, &v4);
  }

  if (!ot::Mac::SubMac::ShouldHandleTransmitSecurity(a1) && v6[0] && (*(v6[0] + 31) & 2) != 0)
  {
    ot::Mac::SubMac::SignalFrameCounterUsed(a1, *(v6[0] + 6), *(v6[0] + 28));
  }

  ot::Mac::SubMac::UpdateCslLastSyncTimestamp(a1, v6[0], v5);
  if ((*(a1 + 20) & 2) == 0)
  {
    ot::Mac::SubMac::Callbacks::ReceiveDone((a1 + 40), v6[0], v5);
  }
}

BOOL ot::CallbackBase<void (*)(otRadioFrame const*,BOOL,void *)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(otRadioFrame const*,BOOL,void *)>::IsSet(a1);
}

uint64_t ot::Callback<void (*)(otRadioFrame const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Mac::RxFrame *&,BOOL>(uint64_t a1, void *a2, _BYTE *a3)
{
  return (*a1)(*a2, *a3 & 1, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otRadioFrame const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Mac::RxFrame *&,BOOL>(a1, a2, a3);
}

BOOL ot::Mac::SubMac::ShouldHandleTransmitSecurity(ot::Mac::SubMac *this)
{
  if (ot::Mac::SubMac::RadioSupportsTransmitSecurity(this))
  {
    return 0;
  }

  else
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(this);
    return !ot::Mac::LinkRaw::IsEnabled(v1);
  }
}

void ot::Mac::SubMac::SignalFrameCounterUsed(ot::Mac::SubMac *this, unsigned int a2, char a3)
{
  if (a3 == *(this + 116))
  {
    ot::Mac::SubMac::Callbacks::FrameCounterUsed((this + 40), a2);
    if (*(this + 28) <= a2)
    {
      *(this + 28) = a2 + 1;
    }
  }
}

uint64_t ot::Mac::SubMac::Send(ot::Mac::SubMac *this)
{
  v17 = this;
  v16 = 0;
  if (*(this + 2) == 5)
  {
    return 13;
  }

  else
  {
    ot::InstanceLocator::GetInstance(this);
    if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) != 0 && (v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this), ot::Mle::Mle::IsSleepyRouter(v1)) && ((v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this), ot::Mle::Mle::IsRouter(v2)) || (v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this), ot::Mle::Mle::IsLeader(v3))) && (v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this), !ot::Mle::Mle::IsCslPeripheralDetached(v4)) && (ot::Mac::Address::Address(v15), ot::Mac::Frame::GetDstAddr(*(this + 4), v15), ot::Mac::Address::IsBroadcast(v15)))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("SubMac", "%s: Dropping broadcast for sleepy router", v5, v6, v7, v8, v9, v10, "Send");
      ot::Mac::SubMac::Callbacks::TransmitDone((this + 40), *(this + 4), 0, 0);
    }

    else if ((*(this + 20) & 2) != 0)
    {
      v13 = *(this + 4);
      if (ot::Mac::Frame::GetAckRequest(v13))
      {
        v11 = 14;
      }

      else
      {
        v11 = 0;
      }

      ot::Mac::SubMac::Callbacks::TransmitDone((this + 40), v13, 0, v11);
    }

    else
    {
      ot::Mac::SubMac::ProcessTransmitSecurity(this);
      *(this + 3) = 0;
      *(this + 6) = 0;
      *(this + 117) = 0;
      *(this + 5) = 0;
      *(this + 4) = 0;
      ot::Mac::SubMac::StartCsmaBackoff(this);
    }
  }

  return v16;
}

BOOL ot::Mle::Mle::IsRouter(ot::Mle::Mle *this)
{
  return *(this + 130) == 3;
}

{
  return ot::Mle::Mle::IsRouter(this);
}

void ot::Mac::SubMac::ProcessTransmitSecurity(ot::Mac::SubMac *this)
{
  v7 = this;
  ExtAddress = 0;
  v5 = 0;
  if (ot::Mac::Frame::GetSecurityEnabled(*(this + 4)) && (ot::Mac::TxFrame::IsSecurityProcessed(*(this + 4)) & 1) == 0 && !ot::Mac::Frame::GetKeyIdMode(*(this + 4), &v5))
  {
    if ((ot::Mac::TxFrame::IsHeaderUpdated(*(this + 4)) & 1) == 0)
    {
      ot::Mac::Frame::SetKeyId(*(this + 4), *(this + 116));
    }

    if (ot::Mac::SubMac::ShouldHandleTransmitSecurity(this))
    {
      if (ot::Mac::Frame::IsWakeupFrame(*(this + 4)))
      {
        if (v5 != 16)
        {
          return;
        }
      }

      else if (v5 != 8)
      {
        return;
      }

      v2 = *(this + 4);
      CurrentMacKey = ot::Mac::SubMac::GetCurrentMacKey(this);
      ot::Mac::TxFrame::SetAesKey(v2, CurrentMacKey);
      if ((ot::Mac::TxFrame::IsHeaderUpdated(*(this + 4)) & 1) == 0)
      {
        FrameCounter = ot::Mac::SubMac::GetFrameCounter(this);
        ot::Mac::Frame::SetFrameCounter(*(this + 4), FrameCounter);
        ot::Mac::SubMac::SignalFrameCounterUsed(this, FrameCounter, *(this + 116));
      }

      ExtAddress = ot::Mac::SubMac::GetExtAddress(this);
      ot::Mac::TxFrame::ProcessTransmitAesCcm(*(this + 4), ExtAddress);
    }
  }
}

void ot::Mac::SubMac::StartCsmaBackoff(ot::Mac::SubMac *this)
{
  v7 = this;
  v6 = *(this + 3) + 3;
  if (!*(*(this + 4) + 36))
  {
    ot::Mac::SubMac::SetState(this, 3u);
    if (ot::Mac::SubMac::ShouldHandleCsmaBackOff(this))
    {
      v6 = ot::Min<unsigned char>(v6, 5u);
      ot::Mac::SubMac::StartTimerForBackoff(this, v6);
      return;
    }

LABEL_8:
    ot::Mac::SubMac::BeginTransmit(this);
    return;
  }

  ot::Mac::SubMac::SetState(this, 7u);
  if (!ot::Mac::SubMac::ShouldHandleTransmitTargetTime(this))
  {
    goto LABEL_8;
  }

  v5 = 0;
  ot::Time::Time(&v5, *(*(this + 4) + 32));
  v4 = 0;
  ot::InstanceLocator::GetInstance(this);
  Now = otPlatRadioGetNow();
  ot::Time::Time(&v4, Now);
  ot::Time::operator+=(&v5, *(*(this + 4) + 36) - 328);
  if (ot::Time::operator<(&v4, &v5))
  {
    v2 = ot::Time::operator-(&v5, &v4);
    ot::Mac::SubMac::StartTimer(this, v2);
  }

  else
  {
    ot::Mac::SubMac::BeginTransmit(this);
  }
}

BOOL ot::Mac::SubMac::ShouldHandleTransmitTargetTime(ot::Mac::SubMac *this)
{
  if (ot::Mac::SubMac::RadioSupportsTransmitTiming(this))
  {
    return 0;
  }

  else
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(this);
    return !ot::Mac::LinkRaw::IsEnabled(v1);
  }
}

_DWORD *ot::Time::operator+=(_DWORD *result, int a2)
{
  *result += a2;
  return result;
}

{
  return ot::Time::operator+=(result, a2);
}

_BYTE *ot::Mac::SubMac::BeginTransmit(_BYTE *this)
{
  v9 = this;
  v5 = this;
  v8 = 0;
  if (this[2] == 3 || this[2] == 7)
  {
    if ((*this & 0x10) == 0)
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      Channel = ot::Mac::Frame::GetChannel(*(v5 + 4));
      if (ot::Radio::Receive(v4, Channel))
      {
        __assert_rtn("BeginTransmit", "sub_mac.cpp", 668, "false");
      }
    }

    ot::Mac::SubMac::SetState(v5, 4u);
    if (ot::CallbackBase<void (*)(otRadioFrame const*,BOOL,void *)>::IsSet(v5 + 6))
    {
      v7 = *(v5 + 4);
      v6 = 1;
      ot::Callback<void (*)(otRadioFrame const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Mac::TxFrame *,BOOL>(v5 + 48, &v7, &v6);
    }

    ot::Mac::SubMac::InitializeCSTPhase(v5);
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(v5);
    this = ot::Radio::Transmit(v2, *(v5 + 4));
    v8 = this;
    if (this == 13 && *(*(v5 + 4) + 36))
    {
      *(*(v5 + 4) + 36) = 0;
      *(*(v5 + 4) + 32) = 0;
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(v5);
      this = ot::Radio::Transmit(v3, *(v5 + 4));
      v8 = this;
    }

    if (v8)
    {
      __assert_rtn("BeginTransmit", "sub_mac.cpp", 698, "false");
    }
  }

  return this;
}

BOOL ot::Mac::SubMac::ShouldHandleCsmaBackOff(ot::Mac::SubMac *this)
{
  if (ot::Mac::SubMac::RadioSupportsCsmaBackoff(this))
  {
    return 0;
  }

  else
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(this);
    return !ot::Mac::LinkRaw::IsEnabled(v1);
  }
}

void ot::Mac::SubMac::StartTimerForBackoff(ot::Mac::Frame **this, char a2)
{
  v13 = 320 * ot::Random::NonCrypto::GetUint32InRange(0, 1 << a2);
  if (*(this + 20))
  {
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    Channel = ot::Mac::Frame::GetChannel(this[4]);
    ot::Radio::Receive(v11, Channel);
  }

  else
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    ot::Radio::Sleep(v3);
  }

  IgnoreError();
  ot::Mac::SubMac::StartTimer(this, v13);
  if (*(this + 2) == 6)
  {
    v4 = ot::ToUlong(v13);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("SubMac", "Delaying retx for %lu usec (be=%u)", v5, v6, v7, v8, v9, v10, v4);
  }
}

uint64_t ot::Callback<void (*)(otRadioFrame const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Mac::TxFrame *,BOOL>(uint64_t a1, void *a2, _BYTE *a3)
{
  return (*a1)(*a2, *a3 & 1, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otRadioFrame const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Mac::TxFrame *,BOOL>(a1, a2, a3);
}

uint64_t ot::Mac::SubMac::HandleTransmitStarted(ot::Mac::SubMac *this, ot::Mac::TxFrame *a2)
{
  result = ot::Mac::SubMac::ShouldHandleAckTimeout(this);
  if (result)
  {
    result = ot::Mac::Frame::GetAckRequest(a2);
    if (result)
    {
      return ot::Mac::SubMac::StartTimer(this, 0x3E80u);
    }
  }

  return result;
}

BOOL ot::Mac::SubMac::ShouldHandleAckTimeout(ot::Mac::SubMac *this)
{
  if (ot::Mac::SubMac::RadioSupportsAckTimeout(this))
  {
    return 0;
  }

  else
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(this);
    return !ot::Mac::LinkRaw::IsEnabled(v1);
  }
}

void ot::Mac::SubMac::HandleTransmitDone(uint64_t a1, ot::Mac::TxFrame *a2, ot::Mac::RxFrame *a3, unsigned int a4)
{
  v38 = a1;
  v37 = a2;
  v36 = a3;
  v35 = a4;
  v34 = 1;
  v33 = 0;
  v32 = 0;
  v31 = -1;
  ot::TimerMicro::Stop((a1 + 136));
  if (!v35)
  {
LABEL_10:
    if (ot::Mac::TxFrame::IsCsmaCaEnabled(v37))
    {
      Channel = ot::Mac::Frame::GetChannel(v37);
      ot::Mac::SubMac::Callbacks::RecordCcaStatus((a1 + 40), v34 & 1, Channel);
    }

    ot::Mac::SubMac::UpdateCslLastSyncTimestamp(a1, v37, v36);
    goto LABEL_18;
  }

  if (v35 != 5)
  {
    if (v35 == 11)
    {
      goto LABEL_18;
    }

    if (v35 != 14)
    {
      if (v35 != 15)
      {
        if (v35 != 29)
        {
          v11 = ot::ErrorToString(v35);
          ot::Logger::LogAtLevel<(ot::LogLevel)2>("SubMac", "SubMac::HandleTransmitDone Unhandled error=%s", v12, v13, v14, v15, v16, v17, v11);
          __assert_rtn("HandleTransmitDone", "sub_mac.cpp", 830, "false");
        }

        ot::Logger::LogAtLevel<(ot::LogLevel)2>("SubMac", "Duplicated frame counter detected.", v4, v5, v6, v7, v8, v9, v24);
        goto LABEL_18;
      }

      v34 = 0;
    }

    goto LABEL_10;
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)2>("SubMac", "Radio access not granted by the external device.", v4, v5, v6, v7, v8, v9, v24);
  if (ot::Mac::Frame::GetKeyIdMode(v37, &v31) || v31)
  {
    v32 = 1;
  }

  v35 = 15;
LABEL_18:
  if (ot::CallbackBase<void (*)(otRadioFrame const*,BOOL,void *)>::IsSet((a1 + 48)))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("SubMac", "%s:%d: mPcapCallback", v18, v19, v20, v21, v22, v23, "void ot::Mac::SubMac::HandleTransmitDone(TxFrame &, RxFrame *, Error)");
    v30 = v37;
    v29 = 0;
    ot::Callback<void (*)(otRadioFrame const*,BOOL,void *),(ot::CallbackContextPosition)1>::Invoke<ot::Mac::TxFrame *,BOOL>(a1 + 48, &v30, &v29);
  }

  ot::Mac::SubMac::SignalFrameCounterUsedOnTxDone(a1, v37);
  if (v34 & 1) != 0 || !ot::Mac::SubMac::ShouldHandleCsmaBackOff(a1) || (v27 = *(a1 + 3), v27 >= ot::Mac::TxFrame::GetMaxCsmaBackoffs(v37)) || (v32)
  {
    *(a1 + 3) = 0;
    if (v35 == 14)
    {
      ++*(a1 + 4);
    }

    else if (v35 == 15)
    {
      ++*(a1 + 5);
    }

    v26 = 0;
    if (v35)
    {
      v26 = 0;
      if (ot::Mac::SubMac::ShouldHandleRetries(a1))
      {
        v25 = *(a1 + 6);
        v26 = v25 < ot::Mac::TxFrame::GetMaxFrameRetries(v37);
      }
    }

    v33 = v26;
    ot::Mac::SubMac::Callbacks::RecordFrameTransmitStatus((a1 + 40), v37, v35, *(a1 + 6), v26);
    if (v33)
    {
      ++*(a1 + 6);
      ot::Mac::TxFrame::SetIsARetransmission(v37, 1);
      if (v35 == 14)
      {
        ot::Mac::SubMac::SetState(a1, 6u);
        ot::Mac::SubMac::StartTimerForBackoff(a1, *(a1 + 117));
        *(a1 + 117) = ot::Min<unsigned char>(*(a1 + 117) + 1, 5u);
      }

      else
      {
        ot::Mac::SubMac::StartCsmaBackoff(a1);
      }
    }

    else
    {
      if (ot::Mac::SubMac::ShouldHandleRetries(a1))
      {
        ot::Mac::TxFrame::SetTxRetryCount(v37, *(a1 + 6));
      }

      ot::Mac::SubMac::SetState(a1, 2u);
      ot::Mac::SubMac::Callbacks::TransmitDone((a1 + 40), v37, v36, v35);
    }
  }

  else
  {
    ++*(a1 + 3);
    ot::Mac::SubMac::StartCsmaBackoff(a1);
  }
}

uint64_t ot::Mac::TxFrame::IsCsmaCaEnabled(ot::Mac::TxFrame *this)
{
  return (*(this + 45) >> 2) & 1;
}

{
  return ot::Mac::TxFrame::IsCsmaCaEnabled(this);
}

void ot::Mac::SubMac::SignalFrameCounterUsedOnTxDone(ot::Mac::SubMac *this, const ot::Mac::TxFrame *a2)
{
  v10 = this;
  v9 = a2;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (ot::Mac::Frame::GetType(a2) == 5 && !ot::Mac::Frame::GetFrameCounter(v9, &v6))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    ot::Radio::SetMacFrameCounter(v2, v6 + 1);
  }

  if (!ot::Mac::SubMac::ShouldHandleTransmitSecurity(this) && ot::Mac::Frame::GetSecurityEnabled(v9) && (ot::Mac::TxFrame::IsHeaderUpdated(v9) & 1) != 0)
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(this);
    IsEnabled = ot::Mac::LinkRaw::IsEnabled(v3);
    if (ot::Mac::Frame::GetKeyIdMode(v9, &v8))
    {
      if (!IsEnabled)
      {
        __assert_rtn("SignalFrameCounterUsedOnTxDone", "sub_mac.cpp", 954, "allowError");
      }
    }

    else
    {
      if (ot::Mac::Frame::GetType(v9) == 5)
      {
        if (v8 != 16)
        {
          return;
        }
      }

      else if (v8 != 8)
      {
        return;
      }

      if (ot::Mac::Frame::GetFrameCounter(v9, &v6))
      {
        if (!IsEnabled)
        {
          __assert_rtn("SignalFrameCounterUsedOnTxDone", "sub_mac.cpp", 969, "allowError");
        }
      }

      else if (ot::Mac::Frame::GetKeyId(v9, &v7))
      {
        if (!IsEnabled)
        {
          __assert_rtn("SignalFrameCounterUsedOnTxDone", "sub_mac.cpp", 970, "allowError");
        }
      }

      else
      {
        ot::Mac::SubMac::SignalFrameCounterUsed(this, v6, v7);
      }
    }
  }
}

uint64_t ot::Mac::TxFrame::GetMaxCsmaBackoffs(ot::Mac::TxFrame *this)
{
  return *(this + 40);
}

{
  return ot::Mac::TxFrame::GetMaxCsmaBackoffs(this);
}

BOOL ot::Mac::SubMac::ShouldHandleRetries(ot::Mac::SubMac *this)
{
  if (ot::Mac::SubMac::RadioSupportsRetries(this))
  {
    return 0;
  }

  else
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(this);
    return !ot::Mac::LinkRaw::IsEnabled(v1);
  }
}

uint64_t ot::Mac::TxFrame::SetTxRetryCount(uint64_t this, char a2)
{
  *(this + 42) = a2;
  return this;
}

{
  return ot::Mac::TxFrame::SetTxRetryCount(this, a2);
}

uint64_t ot::Radio::SetMacFrameCounter(ot::Radio *this, unsigned int a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioSetMacFrameCounter(InstancePtr, a2);
}

{
  return ot::Radio::SetMacFrameCounter(this, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Mac::LinkRaw>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(a1);
}

uint64_t ot::Mac::SubMac::GetRssi(ot::Mac::SubMac *this)
{
  if ((*(this + 20) & 2) != 0)
  {
    return 127;
  }

  else
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    return ot::Radio::GetRssi(v1);
  }
}

uint64_t ot::Radio::GetRssi(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetRssi();
}

{
  return ot::Radio::GetRssi(this);
}

uint64_t ot::Radio::GetReceiveSensitivity(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetReceiveSensitivity();
}

{
  return ot::Radio::GetReceiveSensitivity(this);
}

uint64_t ot::Mac::SubMac::EnergyScan(ot::Mac::SubMac *this, unsigned __int8 a2, unsigned __int16 a3)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v11 = 0;
  v8 = *(this + 2);
  if (*(this + 2) && (v8 == 2 || v8 == 1 || (v8 - 3) > 4))
  {
    if ((*(this + 20) & 2) != 0)
    {
      ot::Mac::SubMac::HandleEnergyScanDone(this, 127);
    }

    else if (ot::Mac::SubMac::RadioSupportsEnergyScan(this))
    {
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      ot::Radio::EnergyScan(v3, v13, v12);
      IgnoreError();
      ot::Mac::SubMac::SetState(this, 5u);
    }

    else if (ot::Mac::SubMac::ShouldHandleEnergyScan(this))
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
      if (ot::Radio::Receive(v4, v13))
      {
        __assert_rtn("EnergyScan", "sub_mac.cpp", 1039, "false");
      }

      ot::Mac::SubMac::SetState(this, 5u);
      *(this + 21) = 127;
      Now = ot::TimerMilli::GetNow(v5);
      v10 = ot::Time::operator+(&Now, v12);
      *(this + 6) = v10;
      ot::Mac::SubMac::StartTimer(this, 0);
    }

    else
    {
      return 12;
    }
  }

  else
  {
    return 13;
  }

  return v11;
}

BOOL ot::Mac::SubMac::RadioSupportsEnergyScan(ot::Mac::SubMac *this)
{
  return (*this & 2) != 0;
}

{
  return ot::Mac::SubMac::RadioSupportsEnergyScan(this);
}

uint64_t ot::Radio::EnergyScan(ot::Radio *this, char a2, unsigned __int16 a3)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioEnergyScan(InstancePtr, a2, a3);
}

{
  return ot::Radio::EnergyScan(this, a2, a3);
}

BOOL ot::Mac::SubMac::ShouldHandleEnergyScan(ot::Mac::SubMac *this)
{
  if (ot::Mac::SubMac::RadioSupportsEnergyScan(this))
  {
    return 0;
  }

  else
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(this);
    return !ot::Mac::LinkRaw::IsEnabled(v1);
  }
}

uint64_t ot::Mac::SubMac::SampleRssi(ot::Mac::SubMac *this)
{
  v7 = this;
  if (ot::Mac::SubMac::RadioSupportsEnergyScan(this))
  {
    __assert_rtn("SampleRssi", "sub_mac.cpp", 1057, "!RadioSupportsEnergyScan()");
  }

  Rssi = ot::Mac::SubMac::GetRssi(this);
  v6 = Rssi;
  if (Rssi != 127 && (*(this + 21) == 127 || v6 > *(this + 21)))
  {
    *(this + 21) = v6;
  }

  Now = ot::TimerMilli::GetNow(Rssi);
  if (!ot::Time::operator<(&Now, this + 6))
  {
    return ot::Mac::SubMac::HandleEnergyScanDone(this, *(this + 21));
  }

  FireTime = ot::Timer::GetFireTime((this + 136));
  return ot::Mac::SubMac::StartTimerAt(this, FireTime, 0x80u);
}

BOOL ot::Mac::SubMac::RadioSupportsTransmitSecurity(ot::Mac::SubMac *this)
{
  return (*this & 0x20) != 0;
}

{
  return ot::Mac::SubMac::RadioSupportsTransmitSecurity(this);
}

BOOL ot::Mac::SubMac::RadioSupportsCsmaBackoff(ot::Mac::SubMac *this)
{
  return (*this & 0xC) != 0;
}

{
  return ot::Mac::SubMac::RadioSupportsCsmaBackoff(this);
}

BOOL ot::Mac::SubMac::RadioSupportsAckTimeout(ot::Mac::SubMac *this)
{
  return (*this & 1) != 0;
}

{
  return ot::Mac::SubMac::RadioSupportsAckTimeout(this);
}

BOOL ot::Mac::SubMac::RadioSupportsRetries(ot::Mac::SubMac *this)
{
  return (*this & 4) != 0;
}

{
  return ot::Mac::SubMac::RadioSupportsRetries(this);
}

BOOL ot::Mac::SubMac::RadioSupportsTransmitTiming(ot::Mac::SubMac *this)
{
  return (*this & 0x40) != 0;
}

{
  return ot::Mac::SubMac::RadioSupportsTransmitTiming(this);
}

uint64_t ot::Mac::SubMac::SetMacKey(ot::Mac::SubMac *this, unsigned __int8 a2, unsigned __int8 a3, const ot::Mac::KeyMaterial *a4, const ot::Mac::KeyMaterial *a5, const ot::Mac::KeyMaterial *a6)
{
  if (a2)
  {
    if (a2 == 8)
    {
      *(this + 116) = a3;
      *(this + 4) = *a4;
      *(this + 5) = *a5;
      *(this + 6) = *a6;
    }

    else if (a2 != 16)
    {
      __assert_rtn("SetMacKey", "sub_mac.cpp", 1270, "false");
    }
  }

  result = ot::Mac::SubMac::ShouldHandleTransmitSecurity(this);
  if ((result & 1) == 0)
  {
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    return ot::Radio::SetMacKey(v7, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t ot::Radio::SetMacKey(ot::Radio *this, unsigned __int8 a2, unsigned __int8 a3, const ot::Mac::KeyMaterial *a4, const ot::Mac::KeyMaterial *a5, const ot::Mac::KeyMaterial *a6)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioSetMacKey(InstancePtr, a2, a3, a4, a5, a6);
}

{
  return ot::Radio::SetMacKey(this, a2, a3, a4, a5, a6);
}

uint64_t ot::Mac::SubMac::SetFrameCounter(ot::Mac::SubMac *this, unsigned int a2, char a3)
{
  if ((a3 & 1) == 0 || a2 > *(this + 28))
  {
    *(this + 28) = a2;
  }

  result = ot::Mac::SubMac::ShouldHandleTransmitSecurity(this);
  if ((result & 1) == 0)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    if (a3)
    {
      return ot::Radio::SetMacFrameCounterIfLarger(v4, a2);
    }

    else
    {
      return ot::Radio::SetMacFrameCounter(v4, a2);
    }
  }

  return result;
}

uint64_t ot::Radio::SetMacFrameCounterIfLarger(ot::Radio *this, unsigned int a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioSetMacFrameCounterIfLarger(InstancePtr, a2);
}

{
  return ot::Radio::SetMacFrameCounterIfLarger(this, a2);
}

void *ot::ClearAllBytes<ot::Mac::ExtAddress>(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Mac::ExtAddress>(result);
}

ot::Appender *ot::Appender::Appender(ot::Appender *this, ot::Message *a2)
{
  *this = 0;
  *(this + 1) = a2;
  Length = ot::Message::GetLength(a2);
  result = this;
  *(this + 8) = Length;
  return result;
}

{
  ot::Appender::Appender(this, a2);
  return this;
}

ot::Appender *ot::Appender::Appender(ot::Appender *this, unsigned __int8 *a2, __int16 a3)
{
  *this = 1;
  ot::FrameBuilder::Init(this + 8, a2, a3);
  return this;
}

{
  ot::Appender::Appender(this, a2, a3);
  return this;
}

uint64_t ot::Appender::AppendBytes(ot::Message **this, void *a2, unsigned __int16 a3)
{
  v4 = 0;
  if (*this)
  {
    if (*this == 1)
    {
      return ot::FrameBuilder::AppendBytes((this + 1), a2, a3);
    }
  }

  else
  {
    return ot::Message::AppendBytes(this[1], a2, a3);
  }

  return v4;
}

uint64_t ot::Appender::GetAppendedLength(ot::Message **this)
{
  v2 = 0;
  if (*this)
  {
    if (*this == 1)
    {
      return ot::FrameBuilder::GetLength((this + 1));
    }
  }

  else
  {
    return (ot::Message::GetLength(this[1]) - *(this + 8));
  }

  return v2;
}

uint64_t ot::Appender::GetAsData(uint64_t a1, uint64_t a2)
{
  Bytes = ot::FrameBuilder::GetBytes((a1 + 8));
  Length = ot::FrameBuilder::GetLength((a1 + 8));
  return ot::Data<(ot::DataLengthType)1>::Init(a2, Bytes, Length);
}

uint64_t ot::FrameBuilder::GetBytes(ot::FrameBuilder *this)
{
  return *this;
}

{
  return ot::FrameBuilder::GetBytes(this);
}

ot::Mac::SubMac::Callbacks *ot::Mac::SubMac::Callbacks::Callbacks(ot::Mac::SubMac::Callbacks *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  return this;
}

{
  ot::Mac::SubMac::Callbacks::Callbacks(this, a2);
  return this;
}

void ot::Mac::SubMac::Callbacks::ReceiveDone(ot::InstanceLocator *a1, ot::Mac::Frame *a2, int a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(a1);
  if (ot::Mac::LinkRaw::IsEnabled(v3))
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(a1);
    ot::Mac::LinkRaw::InvokeReceiveDone(v4, a2, a3);
  }

  else
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
    ot::Mac::Mac::HandleReceivedFrame(v5, a2, a3);
  }
}

void ot::Mac::SubMac::Callbacks::TransmitDone(ot::InstanceLocator *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(a1);
  if (ot::Mac::LinkRaw::IsEnabled(v4))
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(a1);
    ot::Mac::LinkRaw::InvokeTransmitDone(v5, a2, a3, a4);
  }

  else
  {
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
    ot::Mac::Mac::HandleTransmitDone(v6, a2, a3, a4);
  }
}

uint64_t ot::Mac::SubMac::Callbacks::EnergyScanDone(ot::Mac::SubMac::Callbacks *this, char a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(this);
  if (ot::Mac::LinkRaw::IsEnabled(v2))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::LinkRaw>(this);
    return ot::Mac::LinkRaw::InvokeEnergyScanDone(v3, a2);
  }

  else
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    return ot::Mac::Mac::EnergyScanDone(v5, a2);
  }
}

ot::AnnounceBeginClient *ot::AnnounceBeginClient::AnnounceBeginClient(ot::AnnounceBeginClient *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  return this;
}

{
  ot::AnnounceBeginClient::AnnounceBeginClient(this, a2);
  return this;
}

uint64_t ot::AnnounceBeginClient::SendRequest(ot::AnnounceBeginClient *this, unsigned int a2, unsigned __int8 a3, unsigned __int16 a4, const ot::Ip6::Address *a5)
{
  v27 = this;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5;
  inited = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v21, Instance);
  v20 = 0;
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(this);
  if (ot::MeshCoP::Commissioner::IsActive(v6))
  {
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
    v20 = ot::Coap::CoapBase::NewPriorityMessage(v7);
    if (v20)
    {
      inited = ot::Coap::Message::InitAsPost(v20, v23, 0xAu);
      if (!inited)
      {
        inited = ot::Coap::Message::SetPayloadMarker(v20);
        if (!inited)
        {
          v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(this);
          SessionId = ot::MeshCoP::Commissioner::GetSessionId(v8);
          inited = ot::Tlv::Append<ot::MeshCoP::CommissionerSessionIdTlv>(v20, SessionId);
          if (!inited)
          {
            inited = ot::MeshCoP::ChannelMaskTlv::AppendTo(v20, v26);
            if (!inited)
            {
              inited = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)54,unsigned char>>(v20, v25);
              if (!inited)
              {
                inited = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)55,unsigned short>>(v20, v24);
                if (!inited)
                {
                  ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(v21, v23);
                  v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
                  inited = ot::Coap::CoapBase::SendMessage(v10, v20, v21);
                  if (!inited)
                  {
                    v11 = ot::UriToString<(ot::Uri)10>();
                    ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshCoP", "Sent %s", v12, v13, v14, v15, v16, v17, v11);
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

  if (inited && v20)
  {
    ot::Message::Free(v20);
  }

  return inited;
}

ot::Tmf::MessageInfo *ot::Tmf::MessageInfo::MessageInfo(ot::Tmf::MessageInfo *this, ot::Instance *a2)
{
  ot::Tmf::MessageInfo::MessageInfo(this, a2);
  return this;
}

{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Ip6::MessageInfo::MessageInfo(this);
  ot::Ip6::MessageInfo::SetPeerPort(this, 61631);
  return this;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::Commissioner>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(a1);
}

BOOL ot::MeshCoP::Commissioner::IsActive(ot::MeshCoP::Commissioner *this)
{
  return *(this + 554) == 2;
}

{
  return ot::MeshCoP::Commissioner::IsActive(this);
}

uint64_t ot::Tlv::Append<ot::MeshCoP::CommissionerSessionIdTlv>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 11, a2);
}

{
  return ot::Tlv::Append<ot::MeshCoP::CommissionerSessionIdTlv>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)54,unsigned char>>(uint64_t a1, unsigned __int8 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned char>(a1, 54, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)54,unsigned char>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)55,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 55, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)55,unsigned short>>(a1, a2);
}

void ot::Logger::LogVarArgs(ot *a1, unsigned __int8 a2, const char *a3, va_list a4)
{
  ot::String<(unsigned short)1024>::String(v21);
  if (*a1 == 82 && *(a1 + 1) == 99 && *(a1 + 2) == 112)
  {
    logging_obg = log_get_logging_obg("com.apple.rcp", "default");
    v13 = logging_obg;
  }

  else
  {
    logging_obg = log_get_logging_obg("com.apple.openthread", "default");
    v13 = logging_obg;
  }

  v5 = ot::Instance::Get(logging_obg);
  v6 = ot::Instance::Get<ot::Uptime>(v5);
  Uptime = ot::Uptime::GetUptime(v6);
  ot::Uptime::UptimeToString(Uptime, v21, 1);
  v8 = ot::StringWriter::Append(v21, " ");
  if (ot::Instance::GetLogLevel(v8) >= a2)
  {
    ot::StringWriter::Append(v21, "[%c] ", ot::Logger::LogVarArgs(char const*,ot::LogLevel,char const*,char *)::kLevelChars[a2]);
    v9 = ot::StringLength(a1, 0xE);
    ot::StringWriter::Append(v21, "%.*s%s: ", 14, a1, &ot::Logger::LogVarArgs(char const*,ot::LogLevel,char const*,char *)::kModuleNamePadding[v9]);
    ot::StringWriter::AppendVarArgs(v21, a3, a4);
    ot::StringWriter::Append(v21, "%s", "");
    if (a2 <= 2u)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v10 = ot::String<(unsigned short)1024>::AsCString(v21);
        __os_log_helper_16_3_1_8_33(v20, v10);
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{private}s", v20, 0xCu);
      }
    }

    else if (a2 != 4 && a2 != 3)
    {
      if (a2 != 5)
      {
        __assert_rtn("LogVarArgs", "log.cpp", 184, "false");
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v12 = ot::String<(unsigned short)1024>::AsCString(v21);
        __os_log_helper_16_3_1_8_33(v18, v12);
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{private}s", v18, 0xCu);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v11 = ot::String<(unsigned short)1024>::AsCString(v21);
      __os_log_helper_16_3_1_8_33(v19, v11);
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{private}s", v19, 0xCu);
    }
  }
}

void ot::Logger::LogAtLevel<(ot::LogLevel)1>(ot *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  ot::Logger::LogVarArgs(a1, 1u, a2, &a9);
}

{
  ot::Logger::LogAtLevel<(ot::LogLevel)1>(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void ot::Logger::LogAtLevel<(ot::LogLevel)2>(ot *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  ot::Logger::LogVarArgs(a1, 2u, a2, &a9);
}

{
  ot::Logger::LogAtLevel<(ot::LogLevel)2>(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void ot::Logger::LogAtLevel<(ot::LogLevel)3>(ot *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  ot::Logger::LogVarArgs(a1, 3u, a2, &a9);
}

{
  ot::Logger::LogAtLevel<(ot::LogLevel)3>(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void ot::Logger::LogAtLevel<(ot::LogLevel)4>(ot *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  ot::Logger::LogVarArgs(a1, 4u, a2, &a9);
}

{
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void ot::Logger::LogAtLevel<(ot::LogLevel)5>(ot *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  ot::Logger::LogVarArgs(a1, 5u, a2, &a9);
}

{
  ot::Logger::LogAtLevel<(ot::LogLevel)5>(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t ot::Logger::DumpInModule(ot::Instance *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  result = otLoggingGetLevel(a1);
  if (result >= a2)
  {
    v16 = a4;
    v17 = a5;
    v18 = a3;
    v19[37] = 0;
    while (1)
    {
      result = ot::GenerateNextHexDumpLine(&v16);
      if (result)
      {
        break;
      }

      ot::Logger::LogInModule(a1, a2, "%s", v6, v7, v8, v9, v10, v19);
    }
  }

  return result;
}

uint64_t ot::Logger::DumpAtLevel<(ot::LogLevel)5>(ot::Instance *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  return ot::Logger::DumpInModule(a1, 5u, a2, a3, a4);
}

{
  return ot::Logger::DumpAtLevel<(ot::LogLevel)5>(a1, a2, a3, a4);
}

uint64_t ot::String<(unsigned short)1024>::String(uint64_t a1)
{
  ot::String<(unsigned short)1024>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 1024);
  return a1;
}

uint64_t ot::String<(unsigned short)1024>::AsCString(uint64_t a1)
{
  return a1 + 12;
}

{
  return ot::String<(unsigned short)1024>::AsCString(a1);
}

uint64_t __os_log_helper_16_3_1_8_33(uint64_t result, uint64_t a2)
{
  *result = 3;
  *(result + 1) = 1;
  *(result + 2) = 33;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void ot::Logger::LogOnError(ot *a1, int a2, char a3)
{
  if (a2)
  {
    ot::ErrorToString(a2);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>(a1, "Failed to %s: %s", v3, v4, v5, v6, v7, v8, a3);
  }
}

uint64_t ot::GenerateNextHexDumpLine(uint64_t a1)
{
  v20 = a1;
  v19 = 0;
  v18 = -3;
  v17 = -2;
  v16 = -1;
  v15 = 72;
  v14 = 10;
  v13 = 16;
  v12 = 0;
  ot::StringWriter::StringWriter(v11, (a1 + 24), 73);
  v3 = *(v20 + 98);
  if (*(v20 + 98))
  {
    switch(v3)
    {
      case 0xFFFD:
        *(v20 + 98) = 0;
        break;
      case 0xFFFE:
        ot::StringWriter::AppendCharMultipleTimes(v11, 45, 72);
        *(v20 + 98) = -1;
        return v12;
      case 0xFFFF:
        return 23;
    }

    v9 = *(v20 + 98);
    v8 = v9 + 16;
    ot::StringWriter::Append(v11, "|");
    for (i = v9; i < v8; ++i)
    {
      if (i >= *(v20 + 8))
      {
        ot::StringWriter::Append(v11, "   ");
      }

      else
      {
        ot::StringWriter::Append(v11, " %02X", *(*v20 + i));
      }

      if (i % 8 == 7)
      {
        ot::StringWriter::Append(v11, " |");
      }
    }

    ot::StringWriter::Append(v11, " ");
    for (_c_2 = v9; _c_2 < v8; ++_c_2)
    {
      _c_1 = 32;
      if (_c_2 < *(v20 + 8))
      {
        _c = *(*v20 + _c_2);
        if (_c < 0x7Fu && isprint(_c))
        {
          v2 = _c;
        }

        else
        {
          v2 = 46;
        }

        _c_1 = v2;
      }

      ot::StringWriter::Append(v11, "%c", _c_1);
    }

    ot::StringWriter::Append(v11, " |");
    *(v20 + 98) = v8;
    if (*(v20 + 98) >= *(v20 + 8))
    {
      *(v20 + 98) = -2;
    }
  }

  else
  {
    v10 = ot::StringLength(*(v20 + 16), 0x3E) + 10;
    ot::StringWriter::AppendCharMultipleTimes(v11, 61, (72 - v10) / 2);
    ot::StringWriter::Append(v11, "[%s len=%03u]", *(v20 + 16), *(v20 + 8));
    ot::StringWriter::AppendCharMultipleTimes(v11, 61, 72 - v10 - (72 - v10) / 2);
    *(v20 + 98) = -3;
  }

  return v12;
}

int isprint(int _c)
{
  return __istype(_c, 0x40000uLL);
}

{
  return isprint(_c);
}

uint64_t ot::MeshCoP::BorderAgent::ForwardContext::Init(ot::MeshCoP::BorderAgent::ForwardContext *this, ot::Instance *a2, const ot::Coap::Message *a3, char a4, char a5)
{
  ot::InstanceLocatorInit::Init(this, a2);
  *this = ot::Coap::Message::GetMessageId(a3);
  *(this + 2) = *(this + 2) & 0xFE | a4 & 1;
  *(this + 2) = *(this + 2) & 0xFD | (2 * (a5 & 1));
  *(this + 2) = *(this + 2) & 0x3F | ((ot::Coap::Message::GetType(a3) & 3) << 6);
  *(this + 2) = *(this + 2) & 0xC3 | (4 * (ot::Coap::Message::GetTokenLength(a3) & 0xF));
  Token = ot::Coap::Message::GetToken(a3);
  memcpy(this + 3, Token, (*(this + 2) >> 2) & 0xF);
  return 0;
}

void ot::MeshCoP::BorderAgent::HandleTimeout(ot::MeshCoP::BorderAgent *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
  if (ot::Coap::CoapSecure::IsConnected(v1))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
    ot::Coap::CoapSecure::Disconnect(v2);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("BorderAgent", "Reset commissioner session", v3, v4, v5, v6, v7, v8, this);
  }
}

void ot::InstanceLocatorInit::Init(ot::InstanceLocatorInit *this, ot::Instance *a2)
{
  ;
}

{
  ot::InstanceLocatorInit::Init(this, a2);
}

uint64_t ot::MeshCoP::BorderAgent::ForwardContext::ToHeader(ot::MeshCoP::BorderAgent::ForwardContext *this, ot::Coap::Message *a2, char a3)
{
  if (*(this + 2) >> 6 == 1 || (*(this + 2) & 2) != 0)
  {
    ot::Coap::Message::Init(a2, 1, a3);
  }

  else
  {
    ot::Coap::Message::Init(a2, 2, a3);
  }

  if ((*(this + 2) & 2) == 0)
  {
    ot::Coap::Message::SetMessageId(a2, *this);
  }

  return ot::Coap::Message::SetToken(a2, this + 3, (*(this + 2) >> 2) & 0xF);
}

uint64_t ot::MeshCoP::BorderAgent::CoapCodeFromError(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 6)
    {
      return 0x80;
    }

    else
    {
      return -96;
    }
  }

  else
  {
    return 68;
  }
}

void ot::MeshCoP::BorderAgent::SendErrorMessage(ot::InstanceLocator *a1, ot::MeshCoP::BorderAgent::ForwardContext *a2, int a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
  v6 = ot::Coap::CoapBase::NewPriorityMessage(v3);
  if (v6)
  {
    v4 = ot::MeshCoP::BorderAgent::CoapCodeFromError(a1, a3);
    v7 = ot::MeshCoP::BorderAgent::ForwardContext::ToHeader(a2, v6, v4);
    if (!v7)
    {
      v7 = ot::MeshCoP::BorderAgent::SendMessage(a1, v6);
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

  ot::Logger::LogOnError("BorderAgent", v7, "send error CoAP message");
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Tmf::SecureAgent>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
}

uint64_t ot::MeshCoP::BorderAgent::SendMessage(ot::MeshCoP::BorderAgent *this, ot::Coap::Message *a2)
{
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
  MessageInfo = ot::Coap::CoapSecure::GetMessageInfo(v2);
  return ot::Coap::CoapSecure::SendMessage(v6, a2, MessageInfo, 0, 0);
}

void ot::MeshCoP::BorderAgent::SendErrorMessage(ot::InstanceLocator *a1, ot::Coap::Message *a2, char a3, int a4)
{
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
  v9 = ot::Coap::CoapBase::NewPriorityMessage(v4);
  if (v9)
  {
    if (ot::Coap::Message::IsNonConfirmable(a2) || (a3 & 1) != 0)
    {
      v5 = ot::MeshCoP::BorderAgent::CoapCodeFromError(a1, a4);
      ot::Coap::Message::Init(v9, 1, v5);
    }

    else
    {
      v6 = ot::MeshCoP::BorderAgent::CoapCodeFromError(a1, a4);
      ot::Coap::Message::Init(v9, 2, v6);
    }

    if ((a3 & 1) == 0)
    {
      MessageId = ot::Coap::Message::GetMessageId(a2);
      ot::Coap::Message::SetMessageId(v9, MessageId);
    }

    v10 = ot::Coap::Message::SetTokenFromMessage(v9, a2);
    if (!v10)
    {
      v10 = ot::MeshCoP::BorderAgent::SendMessage(a1, v9);
    }
  }

  else
  {
    v10 = 3;
  }

  if (v10 && v9)
  {
    ot::Message::Free(v9);
  }

  ot::Logger::LogOnError("BorderAgent", v10, "send error CoAP message");
}

uint64_t ot::Coap::CoapSecure::GetMessageInfo(ot::Coap::CoapSecure *this)
{
  return ot::MeshCoP::SecureTransport::GetMessageInfo((this + 144));
}

{
  return ot::Coap::CoapSecure::GetMessageInfo(this);
}

unsigned __int16 *ot::MeshCoP::BorderAgent::HandleCoapResponse(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  ot::OwnedPtr<ot::Message>::OwnedPtr(v10, a1);
  v4 = ot::Ptr<ot::MeshCoP::BorderAgent::ForwardContext>::operator->(v10);
  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(v4);
  v8 = ot::Ptr<ot::MeshCoP::BorderAgent::ForwardContext>::Get(v10);
  ot::AsCoapMessagePtr();
  ot::MeshCoP::BorderAgent::HandleCoapResponse(v9, v8, v5, v11);
  return ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::~OwnedPtr(v10, v6);
}

uint64_t ot::Ptr<ot::MeshCoP::BorderAgent::ForwardContext>::operator->(uint64_t a1)
{
  return *a1;
}

{
  return ot::Ptr<ot::MeshCoP::BorderAgent::ForwardContext>::operator->(a1);
}

void ot::MeshCoP::BorderAgent::HandleCoapResponse(uint64_t a1, ot::MeshCoP::BorderAgent::ForwardContext *a2, ot::Coap::Message *a3, int a4)
{
  v37 = a1;
  v36 = a2;
  v35 = a3;
  v34 = a4;
  v33 = 0;
  v32 = a4;
  if (!a4)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
    v33 = ot::Coap::CoapBase::NewPriorityMessage(v4);
    if (!v33)
    {
      v32 = 3;
      goto LABEL_14;
    }

    if ((ot::MeshCoP::BorderAgent::ForwardContext::IsPetition(v36) & 1) != 0 && ot::Coap::Message::GetCode(v35) == 68)
    {
      v31 = 0;
      v32 = ot::Tlv::Find<ot::MeshCoP::StateTlv>(v35, &v31);
      if (v32)
      {
        goto LABEL_14;
      }

      if (v31 == 1)
      {
        *v30 = 0;
        v32 = ot::Tlv::Find<ot::MeshCoP::CommissionerSessionIdTlv>(v35, v30);
        if (v32)
        {
          goto LABEL_14;
        }

        v27 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
        v26 = *v30;
        Address = ot::Ip6::Netif::UnicastAddress::GetAddress((a1 + 32));
        ot::Mle::Mle::GetCommissionerAloc(v27, v26, Address);
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
        ot::Ip6::Netif::AddUnicastAddress(v6, (a1 + 32));
        v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Udp>(a1);
        ot::Ip6::Udp::AddReceiver(v7, (a1 + 8));
        IgnoreError();
        *a1 = 3;
        v28 = v30[0];
        v8 = ot::Ip6::Netif::UnicastAddress::GetAddress((a1 + 32));
        ot::Ip6::Address::ToString(v8, v38);
        ot::String<(unsigned short)40>::AsCString(v38);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Commissioner accepted - SessionId:%u ALOC:%s", v9, v10, v11, v12, v13, v14, v28);
      }
    }

    v25 = v36;
    v24 = v33;
    Code = ot::Coap::Message::GetCode(v35);
    v32 = ot::MeshCoP::BorderAgent::ForwardContext::ToHeader(v25, v24, Code);
    if (!v32)
    {
      Length = ot::Message::GetLength(v35);
      if (Length <= ot::Message::GetOffset(v35) || (v32 = ot::Coap::Message::SetPayloadMarker(v33)) == 0)
      {
        v32 = ot::MeshCoP::BorderAgent::ForwardToCommissioner(a1, v33, v35);
      }
    }
  }

LABEL_14:
  if (v32)
  {
    if (v33)
    {
      ot::Message::Free(v33);
    }

    MessageId = ot::MeshCoP::BorderAgent::ForwardContext::GetMessageId(v36);
    ot::ErrorToString(v32);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("BorderAgent", "Commissioner request[%u] failed: %s", v16, v17, v18, v19, v20, v21, MessageId);
    ot::MeshCoP::BorderAgent::SendErrorMessage(a1, v36, v32);
  }
}

uint64_t ot::Ptr<ot::MeshCoP::BorderAgent::ForwardContext>::Get(uint64_t a1)
{
  return *a1;
}

{
  return ot::Ptr<ot::MeshCoP::BorderAgent::ForwardContext>::Get(a1);
}

unsigned __int16 *ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::~OwnedPtr(unsigned __int16 *a1, void *a2)
{
  ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::~OwnedPtr(a1, a2);
  return a1;
}

{
  ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::Delete(a1, a2);
  return a1;
}

uint64_t ot::MeshCoP::BorderAgent::ForwardContext::IsPetition(ot::MeshCoP::BorderAgent::ForwardContext *this)
{
  return *(this + 2) & 1;
}

{
  return ot::MeshCoP::BorderAgent::ForwardContext::IsPetition(this);
}

uint64_t ot::Tlv::Find<ot::MeshCoP::StateTlv>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned char>(a1, 0x10u, a2);
}

{
  return ot::Tlv::Find<ot::MeshCoP::StateTlv>(a1, a2);
}

uint64_t ot::Tlv::Find<ot::MeshCoP::CommissionerSessionIdTlv>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0xBu, a2);
}

{
  return ot::Tlv::Find<ot::MeshCoP::CommissionerSessionIdTlv>(a1, a2);
}

uint64_t ot::MeshCoP::BorderAgent::ForwardToCommissioner(ot::MeshCoP::BorderAgent *this, ot::Coap::Message *a2, const ot::Message *a3)
{
  v16 = this;
  v15 = a2;
  v14 = a3;
  appended = 0;
  ot::OffsetRange::InitFromMessageOffsetToEnd(v12, a3);
  appended = ot::Message::AppendBytesFromMessage(v15, v14, v12);
  if (!appended)
  {
    appended = ot::MeshCoP::BorderAgent::SendMessage(this, v15);
    if (!appended)
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Sent to commissioner", v3, v4, v5, v6, v7, v8, v10);
    }
  }

  ot::Logger::LogOnError("BorderAgent", appended, "send to commissioner");
  return appended;
}

uint64_t ot::MeshCoP::BorderAgent::ForwardContext::GetMessageId(ot::MeshCoP::BorderAgent::ForwardContext *this)
{
  return *this;
}

{
  return ot::MeshCoP::BorderAgent::ForwardContext::GetMessageId(this);
}

ot::MeshCoP::BorderAgent *ot::MeshCoP::BorderAgent::BorderAgent(ot::MeshCoP::BorderAgent *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 0;
  *(this + 1) = 0;
  ot::Ip6::Udp::Receiver::Receiver(this + 1, ot::MeshCoP::BorderAgent::HandleUdpReceive, this);
  ot::TimerMilliIn<ot::MeshCoP::BorderAgent,&ot::MeshCoP::BorderAgent::HandleTimeout>::TimerMilliIn((this + 64), a2);
  *(this + 104) = 0;
  ot::Ip6::Netif::UnicastAddress::InitAsThreadOriginMeshLocal((this + 32));
  return this;
}

{
  ot::MeshCoP::BorderAgent::BorderAgent(this, a2);
  return this;
}

BOOL ot::MeshCoP::BorderAgent::HandleUdpReceive(ot::MeshCoP::BorderAgent *a1, uint64_t a2, uint64_t a3)
{
  v5 = ot::AsCoreType<otMessage>(a2);
  v3 = ot::AsCoreType<otMessageInfo>(a3);
  return ot::MeshCoP::BorderAgent::HandleUdpReceive(a1, v5, v3);
}

ot::TimerMilli *ot::TimerMilliIn<ot::MeshCoP::BorderAgent,&ot::MeshCoP::BorderAgent::HandleTimeout>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::MeshCoP::BorderAgent,&ot::MeshCoP::BorderAgent::HandleTimeout>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::MeshCoP::BorderAgent,&ot::MeshCoP::BorderAgent::HandleTimeout>::HandleTimer);
  return a1;
}

uint64_t ot::MeshCoP::BorderAgent::GetId(uint64_t a1, _OWORD *a2)
{
  v8 = 0;
  if (*(a1 + 104))
  {
    v8 = 0;
  }

  else
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(a1);
    if (!ot::Settings::Read<ot::SettingsBase::BorderAgentId>(v2, v10) || (ot::SettingsBase::BorderAgentId::GetId(v10), ot::Random::NonCrypto::Fill<otBorderAgentId>(v3), v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(a1), (v8 = ot::Settings::Save<ot::SettingsBase::BorderAgentId>(v4, v10)) == 0))
    {
      ot::SettingsBase::BorderAgentId::GetId(v10);
      *(a1 + 88) = *v5;
      *(a1 + 104) = 1;
    }
  }

  if (!v8)
  {
    *a2 = *(a1 + 88);
  }

  return v8;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Settings>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(a1);
}

uint64_t ot::Settings::Read<ot::SettingsBase::BorderAgentId>(ot::InstanceLocator *a1, ot::SettingsBase::BorderAgentId *a2)
{
  ot::SettingsBase::BorderAgentId::Init(a2);
  return ot::Settings::ReadEntry(a1, 0x11u, a2, 0x10u);
}

{
  return ot::Settings::Read<ot::SettingsBase::BorderAgentId>(a1, a2);
}

ot::Random::NonCrypto *ot::Random::NonCrypto::Fill<otBorderAgentId>(ot::Random::NonCrypto *a1)
{
  return ot::Random::NonCrypto::FillBuffer(a1, 0x10);
}

{
  return ot::Random::NonCrypto::Fill<otBorderAgentId>(a1);
}

uint64_t ot::Settings::Save<ot::SettingsBase::BorderAgentId>(ot::InstanceLocator *a1, ot::SettingsBase::NetworkInfo *a2)
{
  return ot::Settings::SaveEntry(a1, 17, a2, v3, 0x10u);
}

{
  return ot::Settings::Save<ot::SettingsBase::BorderAgentId>(a1, a2);
}

uint64_t ot::MeshCoP::BorderAgent::SetId(uint64_t a1, __n128 *a2)
{
  ot::SettingsBase::BorderAgentId::SetId(&v7, a2);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(a1);
  v5 = ot::Settings::Save<ot::SettingsBase::BorderAgentId>(v2, &v7);
  if (!v5)
  {
    *(a1 + 88) = *a2;
    *(a1 + 104) = 1;
  }

  return v5;
}

__n128 ot::SettingsBase::BorderAgentId::SetId(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)32>(_WORD *a1, ot::Tlv *a2, uint64_t a3)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  TlvValueOffsetRange = 0;
  v23 = 0;
  ot::Ip6::MessageInfo::MessageInfo(v22);
  if (*a1)
  {
    TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(v26, 0x30, &v21, v3);
    if (!TlvValueOffsetRange)
    {
      TlvValueOffsetRange = ot::Message::Read<ot::MeshCoP::UdpEncapsulationTlvHeader>(v26, &v21, v20);
      if (!TlvValueOffsetRange)
      {
        ot::OffsetRange::AdvanceOffset(&v21, 4u);
        if (ot::MeshCoP::UdpEncapsulationTlvHeader::GetSourcePort(v20) > 0 && ot::MeshCoP::UdpEncapsulationTlvHeader::GetDestinationPort(v20) > 0)
        {
          v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Udp>(a1);
          v23 = ot::Ip6::Udp::NewMessage(v4);
          if (v23)
          {
            TlvValueOffsetRange = ot::Message::AppendBytesFromMessage(v23, v26, &v21);
            if (!TlvValueOffsetRange)
            {
              SourcePort = ot::MeshCoP::UdpEncapsulationTlvHeader::GetSourcePort(v20);
              ot::Ip6::MessageInfo::SetSockPort(v22, SourcePort);
              Address = ot::Ip6::Netif::UnicastAddress::GetAddress((a1 + 16));
              ot::Ip6::MessageInfo::SetSockAddr(v22, Address);
              DestinationPort = ot::MeshCoP::UdpEncapsulationTlvHeader::GetDestinationPort(v20);
              ot::Ip6::MessageInfo::SetPeerPort(v22, DestinationPort);
              v18 = v26;
              PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v22);
              TlvValueOffsetRange = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)49,ot::Ip6::Address>>(v18, PeerAddr);
              if (!TlvValueOffsetRange)
              {
                v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Udp>(a1);
                TlvValueOffsetRange = ot::Ip6::Udp::SendDatagram(v9, v23, v22);
                if (!TlvValueOffsetRange)
                {
                  a1[1] = ot::MeshCoP::UdpEncapsulationTlvHeader::GetSourcePort(v20);
                  v10 = ot::Ip6::MessageInfo::GetPeerAddr(v22);
                  ot::Ip6::Address::ToString(v10, v28);
                  v11 = ot::String<(unsigned short)40>::AsCString(v28);
                  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Proxy transmit sent to %s", v12, v13, v14, v15, v16, v17, v11);
                }
              }
            }
          }

          else
          {
            TlvValueOffsetRange = 3;
          }
        }

        else
        {
          TlvValueOffsetRange = 2;
        }
      }
    }
  }

  if (TlvValueOffsetRange && v23)
  {
    ot::Message::Free(v23);
  }

  ot::Logger::LogOnError("BorderAgent", TlvValueOffsetRange, "send proxy stream");
}

uint64_t ot::Message::Read<ot::MeshCoP::UdpEncapsulationTlvHeader>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 4u);
}

{
  return ot::Message::Read<ot::MeshCoP::UdpEncapsulationTlvHeader>(a1, a2, a3);
}

uint64_t ot::MeshCoP::UdpEncapsulationTlvHeader::GetSourcePort(ot::MeshCoP::UdpEncapsulationTlvHeader *this)
{
  return ot::BigEndian::HostSwap16(*this);
}

{
  return ot::MeshCoP::UdpEncapsulationTlvHeader::GetSourcePort(this);
}

uint64_t ot::MeshCoP::UdpEncapsulationTlvHeader::GetDestinationPort(ot::MeshCoP::UdpEncapsulationTlvHeader *this)
{
  return ot::BigEndian::HostSwap16(*(this + 1));
}

{
  return ot::MeshCoP::UdpEncapsulationTlvHeader::GetDestinationPort(this);
}

uint64_t ot::Ip6::MessageInfo::SetSockPort(uint64_t this, __int16 a2)
{
  *(this + 32) = a2;
  return this;
}

{
  return ot::Ip6::MessageInfo::SetSockPort(this, a2);
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)49,ot::Ip6::Address>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::FindTlv(a1, 0x31, a2, 0x10);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)49,ot::Ip6::Address>>(a1, a2);
}

BOOL ot::MeshCoP::BorderAgent::HandleUdpReceive(ot::MeshCoP::BorderAgent *this, const ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v36 = this;
  v35 = a2;
  v34 = a3;
  appended = 0;
  v32 = 0;
  SockAddr = ot::Ip6::MessageInfo::GetSockAddr(a3);
  Address = ot::Ip6::Netif::UnicastAddress::GetAddress((this + 32));
  if (ot::Unequatable<ot::Ip6::Address>::operator!=(SockAddr, Address))
  {
    v4 = ot::Ip6::MessageInfo::GetSockAddr(v34);
    ot::Ip6::Address::ToString(v4, v38);
    v26 = ot::String<(unsigned short)40>::AsCString(v38);
    v5 = ot::Ip6::Netif::UnicastAddress::GetAddress((this + 32));
    ot::Ip6::Address::ToString(v5, v37);
    ot::String<(unsigned short)40>::AsCString(v37);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("BorderAgent", "Filtered out message for commissioner: dest %s != %s (ALOC)", v6, v7, v8, v9, v10, v11, v26);
    appended = 22;
  }

  else if (ot::Message::GetLength(v35) > 0)
  {
    v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
    v32 = ot::Coap::CoapBase::NewPriorityNonConfirmablePostMessage(v12, 0x1Fu);
    if (v32)
    {
      ot::OffsetRange::InitFromMessageOffsetToEnd(v29, v35);
      ot::MeshCoP::ExtendedTlv::SetType(v31, 48);
      Length = ot::OffsetRange::GetLength(v29);
      ot::ExtendedTlv::SetLength(v31, Length + 4);
      appended = ot::Message::Append<ot::MeshCoP::ExtendedTlv>(v32, v31);
      if (!appended)
      {
        PeerPort = ot::Ip6::MessageInfo::GetPeerPort(v34);
        ot::MeshCoP::UdpEncapsulationTlvHeader::SetSourcePort(v30, PeerPort);
        SockPort = ot::Ip6::MessageInfo::GetSockPort(v34);
        ot::MeshCoP::UdpEncapsulationTlvHeader::SetDestinationPort(v30, SockPort);
        appended = ot::Message::Append<ot::MeshCoP::UdpEncapsulationTlvHeader>(v32, v30);
        if (!appended)
        {
          appended = ot::Message::AppendBytesFromMessage(v32, v35, v29);
          if (!appended)
          {
            v25 = v32;
            PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v34);
            appended = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)49,ot::Ip6::Address>>(v25, PeerAddr);
            if (!appended)
            {
              appended = ot::MeshCoP::BorderAgent::SendMessage(this, v32);
              if (!appended)
              {
                ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Sent to commissioner on ProxyRx (c/ur)", v17, v18, v19, v20, v21, v22, v24);
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

  else
  {
    appended = 0;
  }

  if (appended && v32)
  {
    ot::Message::Free(v32);
  }

  if (appended != 22)
  {
    ot::Logger::LogOnError("BorderAgent", appended, "notify commissioner on ProxyRx (c/ur)");
  }

  return appended != 22;
}

_BYTE *ot::MeshCoP::ExtendedTlv::SetType(_BYTE *a1, char a2)
{
  return ot::Tlv::SetType(a1, a2);
}

{
  return ot::MeshCoP::ExtendedTlv::SetType(a1, a2);
}

uint64_t ot::ExtendedTlv::SetLength(ot::ExtendedTlv *this, unsigned __int16 a2)
{
  ot::Tlv::SetLength(this, 255);
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::ExtendedTlv::SetLength(this, a2);
}

uint64_t ot::Message::Append<ot::MeshCoP::ExtendedTlv>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 4u);
}

{
  return ot::Message::Append<ot::MeshCoP::ExtendedTlv>(a1, a2);
}

uint64_t ot::MeshCoP::UdpEncapsulationTlvHeader::SetSourcePort(ot::MeshCoP::UdpEncapsulationTlvHeader *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *this = result;
  return result;
}

{
  return ot::MeshCoP::UdpEncapsulationTlvHeader::SetSourcePort(this, a2);
}

uint64_t ot::MeshCoP::UdpEncapsulationTlvHeader::SetDestinationPort(ot::MeshCoP::UdpEncapsulationTlvHeader *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::MeshCoP::UdpEncapsulationTlvHeader::SetDestinationPort(this, a2);
}

uint64_t ot::Message::Append<ot::MeshCoP::UdpEncapsulationTlvHeader>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 4u);
}

{
  return ot::Message::Append<ot::MeshCoP::UdpEncapsulationTlvHeader>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)49,ot::Ip6::Address>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 0x31, a2, 0x10);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)49,ot::Ip6::Address>>(a1, a2);
}

void ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)29>(ot::InstanceLocator *a1, const ot::Message *a2)
{
  v11 = 0;
  v10 = 0;
  if (*a1)
  {
    if (ot::Coap::Message::IsNonConfirmablePostRequest(a2))
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
      v11 = ot::Coap::CoapBase::NewPriorityNonConfirmablePostMessage(v2, 0x1Du);
      if (v11)
      {
        v10 = ot::MeshCoP::BorderAgent::ForwardToCommissioner(a1, v11, a2);
        if (!v10)
        {
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Sent to commissioner on RelayRx (c/rx)", v3, v4, v5, v6, v7, v8, a1);
        }
      }

      else
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 2;
    }
  }

  if (v10)
  {
    if (v11)
    {
      ot::Message::Free(v11);
    }
  }
}

uint64_t ot::MeshCoP::BorderAgent::ForwardToLeader(ot::InstanceLocator *a1, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, unsigned __int8 a4)
{
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v30 = a4;
  appended = 0;
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v28);
  Instance = ot::InstanceLocator::GetInstance(a1);
  ot::Tmf::MessageInfo::MessageInfo(v27, Instance);
  v26 = 0;
  v25 = 0;
  v24 = 0;
  if (*a1)
  {
    if (v30 == 23)
    {
      v24 = 1;
    }

    else if (v30 == 24)
    {
      v25 = 1;
      v24 = 1;
    }

    if ((v24 & 1) == 0 || (v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1), (appended = ot::Coap::CoapBase::SendAck(v5, v32, v31)) == 0))
    {
      v6 = ot::InstanceLocator::GetInstance(a1);
      v7 = ot::Heap::Allocatable<ot::MeshCoP::BorderAgent::ForwardContext>::AllocateAndInit<ot::Instance &,ot::Coap::Message const&,BOOL &,BOOL &>(v6, v32, &v25, &v24);
      ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::Reset(&v28, v7);
      if (ot::Ptr<ot::MeshCoP::BorderAgent::ForwardContext>::IsNull(&v28))
      {
        appended = 3;
      }

      else
      {
        v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
        v26 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v8, v30);
        if (v26)
        {
          ot::OffsetRange::InitFromMessageOffsetToEnd(v23, v32);
          appended = ot::Message::AppendBytesFromMessage(v26, v32, v23);
          if (!appended)
          {
            ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderAloc(v27);
            ot::Tmf::MessageInfo::SetSockPortToTmf(v27);
            v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
            v20 = v26;
            v9 = ot::Ptr<ot::MeshCoP::BorderAgent::ForwardContext>::Get(&v28);
            appended = ot::Coap::CoapBase::SendMessage(v21, v20, v27, ot::MeshCoP::BorderAgent::HandleCoapResponse, v9);
            if (!appended)
            {
              ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::Release(&v28);
              v10 = ot::PathForUri(v30);
              ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Forwarded request to leader on %s", v11, v12, v13, v14, v15, v16, v10);
            }
          }
        }

        else
        {
          appended = 3;
        }
      }
    }
  }

  ot::Logger::LogOnError("BorderAgent", appended, "forward to leader");
  if (appended)
  {
    if (v26)
    {
      ot::Message::Free(v26);
    }

    ot::MeshCoP::BorderAgent::SendErrorMessage(a1, v32, v24 & 1, appended);
  }

  v19 = appended;
  ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::~OwnedPtr(&v28, v17);
  return v19;
}

void ot::MeshCoP::BorderAgent::HandleTmfDatasetGet(ot::InstanceLocator *a1, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, char a4)
{
  v16 = 0;
  Request = 0;
  if (*a1 == 3)
  {
    if (a4)
    {
      v4 = 26;
    }

    else
    {
      v4 = 11;
    }

    ot::MeshCoP::BorderAgent::ForwardToLeader(a1, a2, a3, v4);
    IgnoreError();
  }

  else
  {
    if (a4)
    {
      active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
    }

    else
    {
      active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
    }

    Request = ot::MeshCoP::DatasetManager::ProcessGetRequest(active, a2, 1);
    if (!Request)
    {
      v16 = 6;
      ot::Logger::LogOnError("BorderAgent", 6, "send Active/PendingGet response");
      goto LABEL_14;
    }

    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
    v16 = ot::Coap::CoapSecure::SendMessage(v6, Request, a3, 0, 0);
    if (!v16)
    {
      v7 = ot::MeshCoP::Dataset::TypeToString(a4);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Sent %sGet response to non-active commissioner", v8, v9, v10, v11, v12, v13, v7);
    }
  }

  ot::Logger::LogOnError("BorderAgent", v16, "send Active/PendingGet response");
LABEL_14:
  if (v16)
  {
    if (Request)
    {
      ot::Message::Free(Request);
    }
  }
}

ot::InstanceLocator *ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)14>(ot::InstanceLocator *result, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v3 = result;
  if (*result)
  {
    result = ot::MeshCoP::BorderAgent::ForwardToLeader(result, a2, a3, 0x17u);
    if (!result)
    {
      return ot::TimerMilli::Start((v3 + 64), 0xC350u);
    }
  }

  return result;
}

void ot::MeshCoP::BorderAgent::HandleTmf<(ot::Uri)30>(ot::InstanceLocator *a1, ot::Coap::Message *a2, uint64_t a3)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  appended = 0;
  v17 = 0;
  v16 = 0;
  Instance = ot::InstanceLocator::GetInstance(a1);
  ot::Tmf::MessageInfo::MessageInfo(v15, Instance);
  if (*a1)
  {
    if (ot::Coap::Message::IsNonConfirmablePostRequest(v20))
    {
      appended = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)20,unsigned short>>(v20, &v17);
      if (!appended)
      {
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
        v16 = ot::Coap::CoapBase::NewPriorityNonConfirmablePostMessage(v4, 0x1Eu);
        if (v16)
        {
          ot::OffsetRange::InitFromMessageOffsetToEnd(v14, v20);
          appended = ot::Message::AppendBytesFromMessage(v16, v20, v14);
          if (!appended)
          {
            ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(v15, v17);
            ot::Tmf::MessageInfo::SetSockPortToTmf(v15);
            v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
            appended = ot::Coap::CoapBase::SendMessage(v5, v16, v15);
            if (!appended)
            {
              ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Sent to joiner router request on RelayTx (c/tx)", v6, v7, v8, v9, v10, v11, v12);
            }
          }
        }

        else
        {
          appended = 3;
        }
      }
    }
  }

  if (appended && v16)
  {
    ot::Message::Free(v16);
  }

  ot::Logger::LogOnError("BorderAgent", appended, "send to joiner router request RelayTx (c/tx)");
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)20,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0x14u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)20,unsigned short>>(a1, a2);
}

uint64_t ot::Tmf::MessageInfo::SetSockPortToTmf(ot::Tmf::MessageInfo *this)
{
  return ot::Ip6::MessageInfo::SetSockPort(this, 61631);
}

{
  return ot::Tmf::MessageInfo::SetSockPortToTmf(this);
}

unsigned __int16 *ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::Reset(unsigned __int16 *result, void *a2)
{
  v2 = result;
  if (*result != a2)
  {
    result = ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::Delete(result, a2);
    *v2 = a2;
  }

  return result;
}

{
  return ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::Reset(result, a2);
}

ot::MeshCoP::BorderAgent::ForwardContext *ot::Heap::Allocatable<ot::MeshCoP::BorderAgent::ForwardContext>::AllocateAndInit<ot::Instance &,ot::Coap::Message const&,BOOL &,BOOL &>(ot::Instance *a1, const ot::Coap::Message *a2, _BYTE *a3, _BYTE *a4)
{
  v7 = ot::Heap::CAlloc(1, 12);
  v6 = 0;
  if (v7)
  {
    *v7 = 0;
    *(v7 + 2) = 0;
    std::allocator<char>::allocator[abi:dn200100](v7);
    v6 = v7;
    if (ot::MeshCoP::BorderAgent::ForwardContext::Init(v7, a1, a2, *a3 & 1, *a4 & 1))
    {
      ot::Heap::Allocatable<ot::MeshCoP::BorderAgent::ForwardContext>::Free(v7, v4);
      return 0;
    }
  }

  return v6;
}

{
  return ot::Heap::Allocatable<ot::MeshCoP::BorderAgent::ForwardContext>::AllocateAndInit<ot::Instance &,ot::Coap::Message const&,BOOL &,BOOL &>(a1, a2, a3, a4);
}

BOOL ot::Ptr<ot::MeshCoP::BorderAgent::ForwardContext>::IsNull(void *a1)
{
  return *a1 == 0;
}

{
  return ot::Ptr<ot::MeshCoP::BorderAgent::ForwardContext>::IsNull(a1);
}

uint64_t ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::Release(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  return v2;
}

{
  return ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::Release(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
}

uint64_t ot::MeshCoP::BorderAgent::HandleConnected(ot::MeshCoP::BorderAgent *this, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Commissioner connected", a3, a4, a5, a6, a7, a8, v11);
    *this = 2;
    return ot::TimerMilli::Start((this + 64), 0xC350u);
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Commissioner disconnected", a3, a4, a5, a6, a7, a8, v11);
    v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Udp>(this);
    ot::Ip6::Udp::RemoveReceiver(v9, (this + 8));
    IgnoreError();
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
    result = ot::Ip6::Netif::RemoveUnicastAddress(v10, (this + 32));
    *this = 1;
    *(this + 1) = 0;
  }

  return result;
}

uint64_t ot::Coap::CoapSecure::GetUdpPort(ot::Coap::CoapSecure *this)
{
  return ot::MeshCoP::SecureTransport::GetUdpPort((this + 144));
}

{
  return ot::Coap::CoapSecure::GetUdpPort(this);
}

uint64_t ot::MeshCoP::BorderAgent::Start(ot::MeshCoP::BorderAgent *this, __int16 a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
  ot::KeyManager::GetPskc(v2, &v7);
  v5 = ot::MeshCoP::BorderAgent::Start(this, a2, &v7, 0x10u);
  ot::Clearable<ot::Pskc>::Clear(&v7);
  return v5;
}

uint64_t ot::MeshCoP::BorderAgent::Start(ot::MeshCoP::BorderAgent *this, __int16 a2, const unsigned __int8 *a3, unsigned __int8 a4)
{
  v16 = 0;
  if (!*this)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
    v16 = ot::Coap::CoapSecure::Start(v4, a2);
    if (!v16)
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
      v16 = ot::Coap::CoapSecure::SetPsk(v5, a3, a4);
      if (!v16)
      {
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
        ot::Coap::CoapSecure::SetConnectedCallback(v6, ot::MeshCoP::BorderAgent::HandleConnected, this);
        *this = 1;
        *(this + 1) = 0;
        UdpPort = ot::MeshCoP::BorderAgent::GetUdpPort(this);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Border Agent start listening on port %u", v8, v9, v10, v11, v12, v13, UdpPort);
      }
    }
  }

  ot::Logger::LogOnError("BorderAgent", v16, "start agent");
  return v16;
}

void *ot::Clearable<ot::Pskc>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Pskc>(a1);
}

{
  return ot::Clearable<ot::Pskc>::Clear(a1);
}

uint64_t ot::Coap::CoapSecure::SetPsk(ot::Coap::CoapSecure *this, const unsigned __int8 *a2, unsigned __int8 a3)
{
  return ot::MeshCoP::SecureTransport::SetPsk((this + 144), a2, a3);
}

{
  return ot::Coap::CoapSecure::SetPsk(this, a2, a3);
}

void *ot::Coap::CoapSecure::SetConnectedCallback(ot::Coap::CoapSecure *this, void (*a2)(BOOL, void *), uint64_t a3)
{
  return ot::CallbackBase<void (*)(BOOL,void *)>::Set(this + 143, a2, a3);
}

{
  return ot::Coap::CoapSecure::SetConnectedCallback(this, a2, a3);
}

void **ot::Coap::CoapSecure::Disconnect(void **this)
{
  return ot::MeshCoP::SecureTransport::Disconnect(this + 18);
}

{
  return ot::Coap::CoapSecure::Disconnect(this);
}

void ot::MeshCoP::BorderAgent::Stop(ot::MeshCoP::BorderAgent *this)
{
  if (*this)
  {
    ot::TimerMilli::Stop((this + 64));
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
    ot::Coap::CoapSecure::Stop(v1);
    *this = 0;
    *(this + 1) = 0;
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("BorderAgent", "Border Agent stopped", v2, v3, v4, v5, v6, v7, this);
  }
}

void *ot::Ip6::Udp::Receiver::Receiver(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = a2;
  result[2] = a3;
  return result;
}

uint64_t ot::Instance::Get<ot::Tmf::SecureAgent>(uint64_t a1)
{
  return a1 + 145008;
}

{
  return ot::Instance::Get<ot::Tmf::SecureAgent>(a1);
}

unsigned __int16 *ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::Delete(unsigned __int16 *result, void *a2)
{
  if (*result)
  {
    return ot::Heap::Allocatable<ot::MeshCoP::BorderAgent::ForwardContext>::Free(*result, a2);
  }

  return result;
}

{
  return ot::OwnedPtr<ot::MeshCoP::BorderAgent::ForwardContext>::Delete(result, a2);
}

unsigned __int16 *ot::Heap::Allocatable<ot::MeshCoP::BorderAgent::ForwardContext>::Free(ot::Heap *a1, void *a2)
{
  return ot::Heap::Free(a1, a2);
}

{
  return ot::Heap::Allocatable<ot::MeshCoP::BorderAgent::ForwardContext>::Free(a1, a2);
}

uint64_t ot::Instance::Get<ot::Settings>(uint64_t a1)
{
  return a1 + 200;
}

{
  return ot::Instance::Get<ot::Settings>(a1);
}

void *ot::SettingsBase::BorderAgentId::Init(ot::SettingsBase::BorderAgentId *this)
{
  return ot::ClearAllBytes<otBorderAgentId>(this);
}

{
  return ot::SettingsBase::BorderAgentId::Init(this);
}

void *ot::ClearAllBytes<otBorderAgentId>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

{
  return ot::ClearAllBytes<otBorderAgentId>(result);
}

void *ot::ClearAllBytes<ot::Pskc>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Pskc>(result);
}

ot::MeshCoP::Commissioner *ot::MeshCoP::Commissioner::Commissioner(ot::MeshCoP::Commissioner *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *(this + 32) = 0;
  *(this + 136) = 0;
  *(this + 137) = 0;
  *(this + 138) = 0;
  *(this + 278) = 0;
  ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleJoinerExpirationTimer>::TimerMilliIn((this + 280), a2);
  ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleTimer>::TimerMilliIn((this + 304), a2);
  ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleJoinerSessionTimer>::TimerMilliIn((this + 328), a2);
  ot::AnnounceBeginClient::AnnounceBeginClient((this + 352), a2);
  ot::EnergyScanClient::EnergyScanClient((this + 360), a2);
  ot::PanIdQueryClient::PanIdQueryClient((this + 376), a2);
  *(this + 554) = 0;
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 70);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 72);
  ot::ClearAllBytes<ot::MeshCoP::Commissioner::Joiner [4]>(this);
  ot::Ip6::Netif::UnicastAddress::InitAsThreadOriginMeshLocal((this + 392));
  *(this + 205) &= ~1u;
  ot::MeshCoP::Commissioner::SetId(this, "OpenThread Commissioner");
  IgnoreError();
  result = this;
  *(this + 424) = 0;
  return result;
}

{
  ot::MeshCoP::Commissioner::Commissioner(this, a2);
  return this;
}

uint64_t ot::MeshCoP::Commissioner::HandleJoinerExpirationTimer(ot::MeshCoP::Commissioner *this)
{
  v17 = this;
  ot::NextFireTime::NextFireTime(&v16);
  v15 = this;
  v14 = this;
  v13 = (this + 256);
  while (v14 != v13)
  {
    v12 = v14;
    if (*(v14 + 57))
    {
      v9 = v12;
      Now = ot::NextFireTime::GetNow(&v16);
      if (ot::Time::operator<=(v9, &Now))
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)5>("Commissioner", "removing joiner due to timeout or successfully joined", v1, v2, v3, v4, v5, v6, v8);
        ot::MeshCoP::Commissioner::RemoveJoinerEntry(this, v12);
      }

      else
      {
        ot::NextFireTime::UpdateIfEarlier(&v16, *v12);
      }
    }

    v14 = (v14 + 64);
  }

  return ot::TimerMilli::FireAtIfEarlier((this + 280), &v16);
}

void ot::MeshCoP::Commissioner::HandleTimer(ot::MeshCoP::Commissioner *this)
{
  v1 = *(this + 554);
  if (*(this + 554))
  {
    if (v1 == 1)
    {
      ot::MeshCoP::Commissioner::SendPetition(this);
      IgnoreError();
    }

    else if (v1 == 2)
    {
      ot::MeshCoP::Commissioner::SendKeepAlive(this);
    }
  }
}

void **ot::MeshCoP::Commissioner::HandleJoinerSessionTimer(unsigned __int8 **this)
{
  if (this[32])
  {
    ot::MeshCoP::Commissioner::LogJoinerEntry(this, "Timed out session with", this[32]);
  }

  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(this);
  return ot::Coap::CoapSecure::Disconnect(v1);
}

ot::TimerMilli *ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleJoinerExpirationTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleJoinerExpirationTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleJoinerExpirationTimer>::HandleTimer);
  return a1;
}

ot::TimerMilli *ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleTimer>::HandleTimer);
  return a1;
}

ot::TimerMilli *ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleJoinerSessionTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleJoinerSessionTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::MeshCoP::Commissioner,&ot::MeshCoP::Commissioner::HandleJoinerSessionTimer>::HandleTimer);
  return a1;
}

void *ot::ClearAllBytes<ot::MeshCoP::Commissioner::Joiner [4]>(void *a1)
{
  return memset(a1, 0, 0x100uLL);
}

{
  return ot::ClearAllBytes<ot::MeshCoP::Commissioner::Joiner [4]>(a1);
}

uint64_t ot::MeshCoP::Commissioner::SetId(ot::MeshCoP::Commissioner *this, ot *a2)
{
  if (ot::MeshCoP::Commissioner::IsDisabled(this))
  {
    return ot::StringCopy<(unsigned short)65>(this + 489, a2, 1);
  }

  else
  {
    return 13;
  }
}

void *ot::MeshCoP::Commissioner::SetState(uint64_t a1, unsigned __int8 a2)
{
  v15 = a1;
  v14 = a2;
  v13 = *(a1 + 554);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
  result = ot::Notifier::Update<ot::MeshCoP::Commissioner::State>(v2, (a1 + 554), &v14, 0x800000);
  if (!result)
  {
    v10 = ot::MeshCoP::Commissioner::StateToString(v13);
    ot::MeshCoP::Commissioner::StateToString(v14);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "State: %s -> %s", v4, v5, v6, v7, v8, v9, v10);
    v12 = ot::MapEnum<ot::MeshCoP::Commissioner::State>(*(a1 + 554));
    return ot::Callback<void (*)(otCommissionerState,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otCommissionerState>((a1 + 560), &v12);
  }

  return result;
}

uint64_t ot::Notifier::Update<ot::MeshCoP::Commissioner::State>(void *a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
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
  return ot::Notifier::Update<ot::MeshCoP::Commissioner::State>(a1, a2, a3, a4);
}

void *ot::Callback<void (*)(otCommissionerState,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otCommissionerState>(void *result, unsigned int *a2)
{
  if (*result)
  {
    return ot::Callback<void (*)(otCommissionerState,void *),(ot::CallbackContextPosition)1>::Invoke<otCommissionerState>(result, a2);
  }

  return result;
}

{
  return ot::Callback<void (*)(otCommissionerState,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otCommissionerState>(result, a2);
}

uint64_t ot::MeshCoP::Commissioner::SignalJoinerEvent(void *a1, unsigned __int8 a2, uint64_t a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  result = ot::CallbackBase<void (*)(otCommissionerJoinerEvent,otJoinerInfo const*,otExtAddress const*,void *)>::IsSet(a1 + 72);
  if ((result & 1) != 0 && v11)
  {
    ot::MeshCoP::Commissioner::Joiner::CopyToJoinerInfo(v11, v15);
    if (*(v11 + 57) == 2)
    {
      ot::MeshCoP::ComputeJoinerId((v11 + 8), v14, v4);
    }

    else if (v11 == a1[32])
    {
      ot::Ip6::InterfaceIdentifier::ConvertToExtAddress((a1 + 33), v14);
    }

    else
    {
      v10 = 1;
    }

    v9 = ot::MapEnum<ot::MeshCoP::Commissioner::JoinerEvent>(v12);
    v8 = v15;
    if (v10)
    {
      v5 = 0;
    }

    else
    {
      v5 = v14;
    }

    v7 = v5;
    return ot::Callback<void (*)(otCommissionerJoinerEvent,otJoinerInfo const*,otExtAddress const*,void *),(ot::CallbackContextPosition)1>::Invoke<otCommissionerJoinerEvent,otJoinerInfo*,ot::Mac::ExtAddress *>((a1 + 72), &v9, &v8, &v7);
  }

  return result;
}

BOOL ot::CallbackBase<void (*)(otCommissionerJoinerEvent,otJoinerInfo const*,otExtAddress const*,void *)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(otCommissionerJoinerEvent,otJoinerInfo const*,otExtAddress const*,void *)>::IsSet(a1);
}

uint64_t ot::MeshCoP::Commissioner::Joiner::CopyToJoinerInfo(uint64_t a1, char *a2)
{
  v8 = a1;
  v7 = a2;
  result = ot::ClearAllBytes<otJoinerInfo>(a2);
  v5 = *(a1 + 57);
  if (*(a1 + 57))
  {
    switch(v5)
    {
      case 1:
        *v7 = 0;
        break;
      case 2:
        *v7 = 1;
        *(v7 + 1) = *(a1 + 8);
        break;
      case 3:
        *v7 = 2;
        *(v7 + 8) = *(a1 + 8);
        break;
    }

    v3 = memcpy(v7 + 24, (a1 + 24), 0x21uLL);
    Now = ot::TimerMilli::GetNow(v3);
    result = ot::Time::operator-(a1, &Now);
    *(v7 + 15) = result;
  }

  return result;
}

uint64_t ot::Callback<void (*)(otCommissionerJoinerEvent,otJoinerInfo const*,otExtAddress const*,void *),(ot::CallbackContextPosition)1>::Invoke<otCommissionerJoinerEvent,otJoinerInfo*,ot::Mac::ExtAddress *>(uint64_t a1, unsigned int *a2, void *a3, void *a4)
{
  return (*a1)(*a2, *a3, *a4, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otCommissionerJoinerEvent,otJoinerInfo const*,otExtAddress const*,void *),(ot::CallbackContextPosition)1>::Invoke<otCommissionerJoinerEvent,otJoinerInfo*,ot::Mac::ExtAddress *>(a1, a2, a3, a4);
}

uint64_t ot::MapEnum<ot::MeshCoP::Commissioner::JoinerEvent>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<ot::MeshCoP::Commissioner::JoinerEvent>(result);
}

uint64_t ot::MeshCoP::Commissioner::HandleSecureAgentConnected(ot::MeshCoP::Commissioner *this, char a2)
{
  if ((a2 & 1) == 0)
  {
    ot::TimerMilli::Stop((this + 328));
  }

  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  return ot::MeshCoP::Commissioner::SignalJoinerEvent(this, v2, *(this + 32));
}

ot::MeshCoP::Commissioner *ot::MeshCoP::Commissioner::GetUnusedJoinerEntry(ot::MeshCoP::Commissioner *this)
{
  v3 = 0;
  for (i = this; i != (this + 256); i = (i + 64))
  {
    if (!*(i + 57))
    {
      return i;
    }
  }

  return v3;
}

ot::MeshCoP::Commissioner *ot::MeshCoP::Commissioner::FindJoinerEntry(ot::MeshCoP::Commissioner *this, const ot::Mac::ExtAddress *a2)
{
  v6 = 0;
  v5 = this;
  v4 = (this + 256);
  while (v5 != v4)
  {
    v3 = *(v5 + 57);
    if (*(v5 + 57))
    {
      if (v3 == 1)
      {
        if (!a2)
        {
          return v5;
        }
      }

      else if (v3 == 2 && a2 && ot::Equatable<ot::Mac::ExtAddress>::operator==(v5 + 8, a2))
      {
        return v5;
      }
    }

    v5 = (v5 + 64);
  }

  return v6;
}

ot::MeshCoP::Commissioner *ot::MeshCoP::Commissioner::FindJoinerEntry(ot::MeshCoP::Commissioner *this, const ot::MeshCoP::JoinerDiscerner *a2)
{
  v5 = 0;
  v4 = this;
  v3 = (this + 256);
  while (v4 != v3)
  {
    if (*(v4 + 57) == 3 && ot::MeshCoP::JoinerDiscerner::operator==(a2, v4 + 8))
    {
      return v4;
    }

    v4 = (v4 + 64);
  }

  return v5;
}

ot::MeshCoP::Commissioner *ot::MeshCoP::Commissioner::FindBestMatchingJoinerEntry(ot::MeshCoP::Commissioner *this, const ot::Mac::ExtAddress *a2, ot::Mac::ExtAddress *a3)
{
  v8 = 0;
  v7 = this;
  v6 = (this + 256);
  while (v7 != v6)
  {
    v5 = *(v7 + 57);
    if (*(v7 + 57))
    {
      if (v5 == 1)
      {
        if (!v8)
        {
          v8 = v7;
        }
      }

      else if (v5 == 2)
      {
        ot::MeshCoP::ComputeJoinerId((v7 + 8), v10, a3);
        if (ot::Equatable<ot::Mac::ExtAddress>::operator==(v10, a2))
        {
          return v7;
        }
      }

      else if (v5 == 3 && ot::MeshCoP::JoinerDiscerner::Matches((v7 + 8), a2))
      {
        if (!v8 || *(v8 + 57) == 3 && (Length = ot::MeshCoP::JoinerDiscerner::GetLength((v8 + 8)), Length < ot::MeshCoP::JoinerDiscerner::GetLength((v7 + 8))))
        {
          v8 = v7;
        }
      }
    }

    v7 = (v7 + 64);
  }

  return v8;
}

uint64_t ot::MeshCoP::JoinerDiscerner::GetLength(ot::MeshCoP::JoinerDiscerner *this)
{
  return *(this + 8);
}

{
  return ot::MeshCoP::JoinerDiscerner::GetLength(this);
}

uint64_t ot::MeshCoP::Commissioner::RemoveJoinerEntry(ot::MeshCoP::Commissioner *a1, _BYTE *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  a2[57] = 0;
  if (a2 == *(a1 + 32))
  {
    *(a1 + 32) = 0;
  }

  ot::MeshCoP::Commissioner::SendCommissionerSet(a1);
  ot::MeshCoP::Commissioner::LogJoinerEntry(a1, "Removed", __dst);
  return ot::MeshCoP::Commissioner::SignalJoinerEvent(a1, 4u, __dst);
}

void ot::MeshCoP::Commissioner::SendCommissionerSet(ot::MeshCoP::Commissioner *this)
{
  if (*(this + 554) == 2)
  {
    ot::Clearable<ot::MeshCoP::CommissioningDataset>::Clear(v4);
    ot::MeshCoP::CommissioningDataset::SetSessionId(v4, *(this + 138));
    updated = ot::MeshCoP::CommissioningDataset::UpdateSteeringData(v4);
    ot::MeshCoP::Commissioner::ComputeBloomFilter(this, updated);
    v3 = ot::MeshCoP::Commissioner::SendMgmtCommissionerSetRequest(this, v4, 0, 0);
    ot::Logger::LogOnError("Commissioner", v3, "send MGMT_COMMISSIONER_SET.req");
  }

  else
  {
    ot::Logger::LogOnError("Commissioner", 13, "send MGMT_COMMISSIONER_SET.req");
  }
}

void ot::MeshCoP::Commissioner::LogJoinerEntry(uint64_t a1, char a2, unsigned __int8 *a3)
{
  v21 = a3[57];
  if (a3[57])
  {
    switch(v21)
    {
      case 1:
        ot::MeshCoP::JoinerPskd::GetAsCString((a3 + 24));
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "%s Joiner (any, %s)", v3, v4, v5, v6, v7, v8, a2);
        break;
      case 2:
        ot::Mac::ExtAddress::ToString((a3 + 8), v25);
        ot::String<(unsigned short)17>::AsCString(v25);
        ot::MeshCoP::JoinerPskd::GetAsCString((a3 + 24));
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "%s Joiner (eui64:%s, %s)", v9, v10, v11, v12, v13, v14, a2);
        break;
      case 3:
        ot::MeshCoP::JoinerDiscerner::ToString((a3 + 8), v24);
        ot::String<(unsigned short)45>::AsCString(v24);
        ot::MeshCoP::JoinerPskd::GetAsCString((a3 + 24));
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "%s Joiner (disc:%s, %s)", v15, v16, v17, v18, v19, v20, a2);
        break;
    }
  }
}

uint64_t ot::MeshCoP::Commissioner::Start(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
  if (ot::Mle::Mle::IsAttached(v4))
  {
    if (*(a1 + 554))
    {
      v17 = 24;
    }

    else
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(a1);
      ot::MeshCoP::BorderAgent::Stop(v5);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
      v17 = ot::Coap::CoapSecure::Start(v6, ot::MeshCoP::Commissioner::SendRelayTransmit, a1);
      if (!v17)
      {
        v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
        ot::Coap::CoapSecure::SetConnectedCallback(v7, ot::MeshCoP::Commissioner::HandleSecureAgentConnected, a1);
        ot::CallbackBase<void (*)(otCommissionerState,void *)>::Set((a1 + 560), a2, a4);
        ot::CallbackBase<void (*)(otCommissionerJoinerEvent,otJoinerInfo const*,otExtAddress const*,void *)>::Set((a1 + 576), a3, a4);
        *(a1 + 278) = 0;
        v17 = ot::MeshCoP::Commissioner::SendPetition(a1);
        if (!v17)
        {
          ot::MeshCoP::Commissioner::SetState(a1, 1u);
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "start commissioner %s", v8, v9, v10, v11, v12, v13, a1 - 23);
        }
      }
    }
  }

  else
  {
    v17 = 13;
  }

  if (v17 && v17 != 24)
  {
    v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
    ot::Coap::CoapSecure::Stop(v14);
    ot::Logger::LogOnError("Commissioner", v17, "start commissioner");
  }

  return v17;
}

void *ot::CallbackBase<void (*)(otCommissionerState,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otCommissionerState,void *)>::Set(result, a2, a3);
}

void *ot::CallbackBase<void (*)(otCommissionerJoinerEvent,otJoinerInfo const*,otExtAddress const*,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otCommissionerJoinerEvent,otJoinerInfo const*,otExtAddress const*,void *)>::Set(result, a2, a3);
}

uint64_t ot::MeshCoP::Commissioner::SendPetition(ot::MeshCoP::Commissioner *this)
{
  v19 = this;
  v18 = 0;
  v17 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v16, Instance);
  ++*(this + 278);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v17 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v2, 0x18u);
  if (v17)
  {
    v18 = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)10,(unsigned char)64>>(v17, (this + 489), v3, v4, v5);
    if (!v18)
    {
      ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderAloc(v16);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
      v18 = ot::Coap::CoapBase::SendMessage(v6, v17, v16, ot::MeshCoP::Commissioner::HandleLeaderPetitionResponse, this);
      if (!v18)
      {
        v7 = ot::UriToString<(ot::Uri)24>();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Sent %s", v8, v9, v10, v11, v12, v13, v7);
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

  return v18;
}

uint64_t ot::MeshCoP::Commissioner::Stop(_BYTE *a1, char a2)
{
  v8 = 0;
  v7 = 0;
  if (a1[554])
  {
    ot::TimerMilli::Stop((a1 + 328));
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
    ot::Coap::CoapSecure::Stop(v2);
    if (a1[554] == 2)
    {
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
      ot::Ip6::Netif::RemoveUnicastAddress(v3, (a1 + 392));
      ot::MeshCoP::Commissioner::ClearJoiners(a1);
      v7 = 1;
    }

    else if (a1[554] == 1)
    {
      a1[278] = 0;
    }

    ot::TimerMilli::Stop((a1 + 304));
    ot::MeshCoP::Commissioner::SetState(a1, 0);
    if ((v7 & 1) != 0 && !a2)
    {
      ot::MeshCoP::Commissioner::SendKeepAlive(a1);
    }

    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::BorderAgent>(a1);
    ot::MeshCoP::BorderAgent::Start(v4);
  }

  else
  {
    v8 = 24;
  }

  if (v8 != 24)
  {
    ot::Logger::LogOnError("Commissioner", v8, "stop commissioner");
  }

  return v8;
}

void ot::MeshCoP::Commissioner::ClearJoiners(ot::MeshCoP::Commissioner *this)
{
  for (i = this; i != (this + 256); i = (i + 64))
  {
    *(i + 57) = 0;
  }

  ot::MeshCoP::Commissioner::SendCommissionerSet(this);
}

void ot::MeshCoP::BorderAgent::Start(ot::MeshCoP::BorderAgent *this)
{
  ot::MeshCoP::BorderAgent::Start(this, 0);
  IgnoreError();
}

{
  ot::MeshCoP::BorderAgent::Start(this);
}

BOOL ot::MeshCoP::Commissioner::IsDisabled(ot::MeshCoP::Commissioner *this)
{
  return *(this + 554) == 0;
}

{
  return ot::MeshCoP::Commissioner::IsDisabled(this);
}

uint64_t ot::StringCopy<(unsigned short)65>(_BYTE *a1, ot *a2, char a3)
{
  return ot::StringCopy(a1, 0x41u, a2, a3);
}

{
  return ot::StringCopy<(unsigned short)65>(a1, a2, a3);
}

void *ot::MeshCoP::Commissioner::ComputeBloomFilter(ot::MeshCoP::Commissioner *this, ot::MeshCoP::SteeringData *a2)
{
  result = ot::MeshCoP::SteeringData::Init(a2, 0x10u);
  for (i = this; i != (this + 256); i += 64)
  {
    v4 = i[57];
    if (i[57])
    {
      switch(v4)
      {
        case 1:
          return ot::MeshCoP::SteeringData::SetToPermitAllJoiners(a2);
        case 2:
          ot::MeshCoP::ComputeJoinerId((i + 8), v8, v3);
          result = ot::MeshCoP::SteeringData::UpdateBloomFilter(a2, v8);
          break;
        case 3:
          result = ot::MeshCoP::SteeringData::UpdateBloomFilter(a2, (i + 8));
          break;
      }
    }
  }

  return result;
}

uint64_t ot::Clearable<ot::MeshCoP::CommissioningDataset>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::MeshCoP::CommissioningDataset>(a1);
}

{
  return ot::Clearable<ot::MeshCoP::CommissioningDataset>::Clear(a1);
}

uint64_t ot::MeshCoP::CommissioningDataset::SetSessionId(uint64_t this, __int16 a2)
{
  *(this + 24) = *(this + 24) & 0xFD | 2;
  *(this + 2) = a2;
  return this;
}

{
  return ot::MeshCoP::CommissioningDataset::SetSessionId(this, a2);
}

uint64_t ot::MeshCoP::CommissioningDataset::UpdateSteeringData(ot::MeshCoP::CommissioningDataset *this)
{
  *(this + 24) = *(this + 24) & 0xFB | 4;
  return this + 4;
}

{
  return ot::MeshCoP::CommissioningDataset::UpdateSteeringData(this);
}

uint64_t ot::MeshCoP::Commissioner::SendMgmtCommissionerSetRequest(ot::MeshCoP::Commissioner *this, const ot::MeshCoP::CommissioningDataset *a2, char *a3, unsigned __int8 a4)
{
  v32 = this;
  v31 = a2;
  v30 = a3;
  v29 = a4;
  appended = 0;
  v27 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v26, Instance);
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v27 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v5, 0x11u);
  if (v27)
  {
    if ((ot::MeshCoP::CommissioningDataset::IsLocatorSet(v31) & 1) == 0 || (v23 = v27, Locator = ot::MeshCoP::CommissioningDataset::GetLocator(v31), (appended = ot::Tlv::Append<ot::MeshCoP::BorderAgentLocatorTlv>(v23, Locator)) == 0))
    {
      if ((ot::MeshCoP::CommissioningDataset::IsSessionIdSet(v31) & 1) == 0 || (v22 = v27, SessionId = ot::MeshCoP::CommissioningDataset::GetSessionId(v31), (appended = ot::Tlv::Append<ot::MeshCoP::CommissionerSessionIdTlv>(v22, SessionId)) == 0))
      {
        if ((ot::MeshCoP::CommissioningDataset::IsSteeringDataSet(v31) & 1) == 0 || (SteeringData = ot::MeshCoP::CommissioningDataset::GetSteeringData(v31), v21 = v27, Data = ot::MeshCoP::SteeringData::GetData(SteeringData), Length = ot::MeshCoP::SteeringData::GetLength(SteeringData), (appended = ot::Tlv::Append<ot::MeshCoP::SteeringDataTlv>(v21, Data, Length)) == 0))
        {
          if ((ot::MeshCoP::CommissioningDataset::IsJoinerUdpPortSet(v31) & 1) == 0 || (v19 = v27, JoinerUdpPort = ot::MeshCoP::CommissioningDataset::GetJoinerUdpPort(v31), (appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(v19, JoinerUdpPort)) == 0))
          {
            if (!v29 || (appended = ot::Message::AppendBytes(v27, v30, v29)) == 0)
            {
              ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderAloc(v26);
              v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
              appended = ot::Coap::CoapBase::SendMessage(v10, v27, v26, ot::MeshCoP::Commissioner::HandleMgmtCommissionerSetResponse, this);
              if (!appended)
              {
                v11 = ot::UriToString<(ot::Uri)17>();
                ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Sent %s to leader", v12, v13, v14, v15, v16, v17, v11);
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

  if (appended && v27)
  {
    ot::Message::Free(v27);
  }

  return appended;
}

uint64_t ot::MeshCoP::Commissioner::AddJoiner(ot::MeshCoP::Commissioner *this, const ot::Mac::ExtAddress *a2, const ot::MeshCoP::JoinerDiscerner *a3, ot *a4, unsigned int a5)
{
  v17 = this;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = 0;
  JoinerEntry = 0;
  if (*(this + 554) == 2)
  {
    if (v15)
    {
      if (!ot::MeshCoP::JoinerDiscerner::IsValid(v15))
      {
        return 7;
      }

      JoinerEntry = ot::MeshCoP::Commissioner::FindJoinerEntry(this, v15);
    }

    else
    {
      JoinerEntry = ot::MeshCoP::Commissioner::FindJoinerEntry(this, v16);
    }

    if (!JoinerEntry)
    {
      JoinerEntry = ot::MeshCoP::Commissioner::GetUnusedJoinerEntry(this);
    }

    if (JoinerEntry)
    {
      v5 = ot::MeshCoP::JoinerPskd::SetFrom((JoinerEntry + 24), v14);
      v12 = v5;
      if (!v5)
      {
        if (v15)
        {
          *(JoinerEntry + 57) = 3;
          *(JoinerEntry + 8) = *v15;
        }

        else if (v16)
        {
          *(JoinerEntry + 57) = 2;
          *(JoinerEntry + 1) = *v16;
        }

        else
        {
          *(JoinerEntry + 57) = 1;
        }

        Now = ot::TimerMilli::GetNow(v5);
        v6 = ot::Time::SecToMsec(v13);
        v10 = ot::Time::operator+(&Now, v6);
        *JoinerEntry = v10;
        ot::TimerMilli::FireAtIfEarlier(this + 70, *JoinerEntry);
        ot::MeshCoP::Commissioner::SendCommissionerSet(this);
        ot::MeshCoP::Commissioner::LogJoinerEntry(this, "Added", JoinerEntry);
      }
    }

    else
    {
      return 3;
    }
  }

  else
  {
    return 13;
  }

  return v12;
}

BOOL ot::MeshCoP::JoinerDiscerner::IsValid(ot::MeshCoP::JoinerDiscerner *this)
{
  v2 = 0;
  if (*(this + 8))
  {
    return *(this + 8) <= 0x40u;
  }

  return v2;
}

{
  return ot::MeshCoP::JoinerDiscerner::IsValid(this);
}

void *ot::ClearAllBytes<otJoinerInfo>(void *a1)
{
  return memset(a1, 0, 0x40uLL);
}

{
  return ot::ClearAllBytes<otJoinerInfo>(a1);
}

uint64_t ot::MeshCoP::Commissioner::GetNextJoinerInfo(uint64_t a1, _WORD *a2, char *a3)
{
  v8 = 0;
  while (1)
  {
    v5 = *a2;
    if (v5 >= ot::GetArrayLength<ot::MeshCoP::Commissioner::Joiner,(unsigned short)4>())
    {
      break;
    }

    v3 = (*a2)++;
    v7 = a1 + (v3 << 6);
    if (*(v7 + 57))
    {
      ot::MeshCoP::Commissioner::Joiner::CopyToJoinerInfo(v7, a3);
      return v8;
    }
  }

  return 23;
}

uint64_t ot::GetArrayLength<ot::MeshCoP::Commissioner::Joiner,(unsigned short)4>()
{
  return 4;
}

{
  return ot::GetArrayLength<ot::MeshCoP::Commissioner::Joiner,(unsigned short)4>();
}

uint64_t ot::MeshCoP::Commissioner::RemoveJoiner(ot::MeshCoP::Commissioner *this, const ot::Mac::ExtAddress *a2, const ot::MeshCoP::JoinerDiscerner *a3, unsigned int a4)
{
  v7 = 0;
  if (*(this + 554) == 2)
  {
    if (a3)
    {
      if (!ot::MeshCoP::JoinerDiscerner::IsValid(a3))
      {
        return 7;
      }

      JoinerEntry = ot::MeshCoP::Commissioner::FindJoinerEntry(this, a3);
    }

    else
    {
      JoinerEntry = ot::MeshCoP::Commissioner::FindJoinerEntry(this, a2);
    }

    if (JoinerEntry)
    {
      ot::MeshCoP::Commissioner::RemoveJoiner(this, JoinerEntry, a4);
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

  return v7;
}

uint64_t ot::MeshCoP::Commissioner::RemoveJoiner(int *a1, int *a2, unsigned int a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  if (!a3)
  {
    return ot::MeshCoP::Commissioner::RemoveJoinerEntry(a1, v9);
  }

  v7 = 0;
  Now = ot::TimerMilli::GetNow(a1);
  v3 = ot::Time::SecToMsec(v8);
  v7 = ot::Time::operator+(&Now, v3);
  result = ot::Time::operator>(v9, &v7);
  if (result)
  {
    *v9 = v7;
    return ot::TimerMilli::FireAtIfEarlier(a1 + 70, v7);
  }

  return result;
}

BOOL ot::Time::operator<=(int *a1, int *a2)
{
  return ot::Time::operator>=(a2, a1);
}

{
  return ot::Time::operator<=(a1, a2);
}

uint64_t ot::MeshCoP::Commissioner::SendMgmtCommissionerGetRequest(ot::MeshCoP::Commissioner *this, char *a2, unsigned __int8 a3)
{
  v21 = this;
  v20 = a2;
  v19 = a3;
  appended = 0;
  v17 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v16, Instance);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v17 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v4, 0xFu);
  if (v17)
  {
    if (!v19 || (ot::MeshCoP::Tlv::SetType(v15, 13), ot::Tlv::SetLength(v15, v19), (appended = ot::Message::Append<ot::MeshCoP::Tlv>(v17, v15)) == 0) && (appended = ot::Message::AppendBytes(v17, v20, v19)) == 0)
    {
      ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderAloc(v16);
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
      appended = ot::Coap::CoapBase::SendMessage(v5, v17, v16, ot::MeshCoP::Commissioner::HandleMgmtCommissionerGetResponse, this);
      if (!appended)
      {
        v6 = ot::UriToString<(ot::Uri)15>();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Sent %s to leader", v7, v8, v9, v10, v11, v12, v6);
      }
    }
  }

  else
  {
    appended = 3;
  }

  if (appended && v17)
  {
    ot::Message::Free(v17);
  }

  return appended;
}

_BYTE *ot::MeshCoP::Tlv::SetType(_BYTE *a1, char a2)
{
  return ot::Tlv::SetType(a1, a2);
}

{
  return ot::MeshCoP::Tlv::SetType(a1, a2);
}

uint64_t ot::Message::Append<ot::MeshCoP::Tlv>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 2u);
}

{
  return ot::Message::Append<ot::MeshCoP::Tlv>(a1, a2);
}

void ot::MeshCoP::Commissioner::HandleMgmtCommissionerGetResponse(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  ot::AsCoapMessagePtr();
  v6 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  ot::MeshCoP::Commissioner::HandleMgmtCommissionerGetResponse(a1, v6, v5, a4);
}

void ot::MeshCoP::Commissioner::HandleMgmtCommissionerGetResponse(uint64_t a1, ot::Coap::Message *a2, uint64_t a3, int a4)
{
  if (!a4 && ot::Coap::Message::GetCode(a2) == 68)
  {
    v4 = ot::UriToString<(ot::Uri)15>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Received %s response", v5, v6, v7, v8, v9, v10, v4);
  }
}

uint64_t ot::MeshCoP::CommissioningDataset::IsLocatorSet(ot::MeshCoP::CommissioningDataset *this)
{
  return *(this + 24) & 1;
}

{
  return ot::MeshCoP::CommissioningDataset::IsLocatorSet(this);
}

uint64_t ot::Tlv::Append<ot::MeshCoP::BorderAgentLocatorTlv>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 9, a2);
}

{
  return ot::Tlv::Append<ot::MeshCoP::BorderAgentLocatorTlv>(a1, a2);
}

uint64_t ot::MeshCoP::CommissioningDataset::GetLocator(ot::MeshCoP::CommissioningDataset *this)
{
  return *this;
}

{
  return ot::MeshCoP::CommissioningDataset::GetLocator(this);
}

uint64_t ot::MeshCoP::CommissioningDataset::IsSessionIdSet(ot::MeshCoP::CommissioningDataset *this)
{
  return (*(this + 24) >> 1) & 1;
}

{
  return ot::MeshCoP::CommissioningDataset::IsSessionIdSet(this);
}

uint64_t ot::MeshCoP::CommissioningDataset::GetSessionId(ot::MeshCoP::CommissioningDataset *this)
{
  return *(this + 1);
}

{
  return ot::MeshCoP::CommissioningDataset::GetSessionId(this);
}

uint64_t ot::MeshCoP::CommissioningDataset::IsSteeringDataSet(ot::MeshCoP::CommissioningDataset *this)
{
  return (*(this + 24) >> 2) & 1;
}

{
  return ot::MeshCoP::CommissioningDataset::IsSteeringDataSet(this);
}

uint64_t ot::MeshCoP::CommissioningDataset::GetSteeringData(ot::MeshCoP::CommissioningDataset *this)
{
  return this + 4;
}

{
  return ot::MeshCoP::CommissioningDataset::GetSteeringData(this);
}

uint64_t ot::Tlv::Append<ot::MeshCoP::SteeringDataTlv>(ot::Tlv *a1, void *a2, unsigned __int8 a3)
{
  return ot::Tlv::AppendTlv(a1, 8, a2, a3);
}

{
  return ot::Tlv::Append<ot::MeshCoP::SteeringDataTlv>(a1, a2, a3);
}

uint64_t ot::MeshCoP::SteeringData::GetData(ot::MeshCoP::SteeringData *this)
{
  return this + 1;
}

{
  return this + 1;
}

{
  return ot::MeshCoP::SteeringData::GetData(this);
}

{
  return ot::MeshCoP::SteeringData::GetData(this);
}

uint64_t ot::MeshCoP::SteeringData::GetLength(ot::MeshCoP::SteeringData *this)
{
  return *this;
}

{
  return ot::MeshCoP::SteeringData::GetLength(this);
}

uint64_t ot::MeshCoP::CommissioningDataset::IsJoinerUdpPortSet(ot::MeshCoP::CommissioningDataset *this)
{
  return (*(this + 24) >> 3) & 1;
}

{
  return ot::MeshCoP::CommissioningDataset::IsJoinerUdpPortSet(this);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 18, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(a1, a2);
}

uint64_t ot::MeshCoP::CommissioningDataset::GetJoinerUdpPort(ot::MeshCoP::CommissioningDataset *this)
{
  return *(this + 11);
}

{
  return ot::MeshCoP::CommissioningDataset::GetJoinerUdpPort(this);
}

void ot::MeshCoP::Commissioner::HandleMgmtCommissionerSetResponse(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  ot::AsCoapMessagePtr();
  v6 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  ot::MeshCoP::Commissioner::HandleMgmtCommissionerSetResponse(a1, v6, v5, a4);
}

void ot::MeshCoP::Commissioner::HandleMgmtCommissionerSetResponse(uint64_t a1, ot::Coap::Message *a2, uint64_t a3, int a4)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v11 = 0;
  v12 = a4;
  if (!a4 && (ot::Coap::Message::GetCode(v15) != 68 || ot::Tlv::Find<ot::MeshCoP::StateTlv>(v15, &v11) || !v11))
  {
    v12 = 6;
  }

  v10 = ot::UriToString<(ot::Uri)17>();
  if (v12)
  {
    ot::ErrorToString(v12);
  }

  else
  {
    ot::MeshCoP::StateTlv::StateToString(v11);
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Received %s response: %s", v4, v5, v6, v7, v8, v9, v10);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)10,(unsigned char)64>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0xA, 0x40u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)10,(unsigned char)64>>(a1, a2, a3, a4, a5);
}

void ot::MeshCoP::Commissioner::HandleLeaderPetitionResponse(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  ot::AsCoapMessagePtr();
  v6 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  ot::MeshCoP::Commissioner::HandleLeaderPetitionResponse(a1, v6, v5, a4);
}

void ot::MeshCoP::Commissioner::HandleLeaderPetitionResponse(uint64_t a1, ot::Coap::Message *a2, uint64_t a3, int a4)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = 0;
  v18 = 0;
  if (*(a1 + 554) != 2)
  {
    if (!v20 && ot::Coap::Message::GetCode(v22) == 68)
    {
      v4 = ot::UriToString<(ot::Uri)24>();
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Received %s response", v5, v6, v7, v8, v9, v10, v4);
      if (!ot::Tlv::Find<ot::MeshCoP::StateTlv>(v22, &v19))
      {
        if (v19 == 1)
        {
          if (!ot::Tlv::Find<ot::MeshCoP::CommissionerSessionIdTlv>(v22, (a1 + 276)))
          {
            if (*(a1 + 554))
            {
              v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
              v15 = *(a1 + 276);
              Address = ot::Ip6::Netif::UnicastAddress::GetAddress((a1 + 392));
              ot::Mle::Mle::GetCommissionerAloc(v16, v15, Address);
              v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
              ot::Ip6::Netif::AddUnicastAddress(v12, (a1 + 392));
              ot::MeshCoP::Commissioner::SetState(a1, 2u);
              *(a1 + 278) = 0;
              v13 = ot::Time::SecToMsec(0x32);
              ot::TimerMilli::Start((a1 + 304), v13 / 2);
            }

            else
            {
              ot::MeshCoP::Commissioner::SendKeepAlive(a1, *(a1 + 276));
            }
          }
        }

        else
        {
          ot::MeshCoP::Commissioner::Stop(a1, 1);
          IgnoreError();
        }
      }
    }

    else
    {
      v18 = *(a1 + 554) == 1;
    }
  }

  if (v18)
  {
    if (*(a1 + 278) < 2u)
    {
      v14 = ot::Time::SecToMsec(1);
      ot::TimerMilli::Start((a1 + 304), v14);
    }

    else
    {
      ot::MeshCoP::Commissioner::Stop(a1, 1);
      IgnoreError();
    }
  }
}

void ot::MeshCoP::Commissioner::SendKeepAlive(ot::MeshCoP::Commissioner *this, unsigned __int16 a2)
{
  v18 = this;
  v17 = a2;
  v16 = 0;
  v15 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v14, Instance);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v15 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v3, 0x17u);
  if (v15)
  {
    if (*(this + 554) == 2)
    {
      v4 = 1;
    }

    else
    {
      v4 = -1;
    }

    v16 = ot::Tlv::Append<ot::MeshCoP::StateTlv>(v15, v4);
    if (!v16)
    {
      v16 = ot::Tlv::Append<ot::MeshCoP::CommissionerSessionIdTlv>(v15, v17);
      if (!v16)
      {
        ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderAloc(v14);
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
        v16 = ot::Coap::CoapBase::SendMessage(v5, v15, v14, ot::MeshCoP::Commissioner::HandleLeaderKeepAliveResponse, this);
        if (!v16)
        {
          v6 = ot::UriToString<(ot::Uri)23>();
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Sent %s", v7, v8, v9, v10, v11, v12, v6);
        }
      }
    }
  }

  else
  {
    v16 = 3;
  }

  if (v16 && v15)
  {
    ot::Message::Free(v15);
  }

  ot::Logger::LogOnError("Commissioner", v16, "send keep alive");
}

uint64_t ot::Tlv::Append<ot::MeshCoP::StateTlv>(uint64_t a1, unsigned __int8 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned char>(a1, 16, a2);
}

{
  return ot::Tlv::Append<ot::MeshCoP::StateTlv>(a1, a2);
}

void ot::MeshCoP::Commissioner::HandleLeaderKeepAliveResponse(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  ot::AsCoapMessagePtr();
  v6 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  ot::MeshCoP::Commissioner::HandleLeaderKeepAliveResponse(a1, v6, v5, a4);
}

void ot::MeshCoP::Commissioner::HandleLeaderKeepAliveResponse(uint64_t a1, ot::Coap::Message *a2, uint64_t a3, int a4)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = 0;
  if (*(a1 + 554) == 2)
  {
    if (!v14 && ot::Coap::Message::GetCode(v16) == 68)
    {
      v4 = ot::UriToString<(ot::Uri)23>();
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Received %s response", v5, v6, v7, v8, v9, v10, v4);
      if (!ot::Tlv::Find<ot::MeshCoP::StateTlv>(v16, &v13))
      {
        if (v13 == 1)
        {
          v11 = ot::Time::SecToMsec(0x32);
          ot::TimerMilli::Start((a1 + 304), v11 / 2);
        }

        else
        {
          ot::MeshCoP::Commissioner::Stop(a1, 1);
          IgnoreError();
        }
      }
    }

    else
    {
      ot::MeshCoP::Commissioner::Stop(a1, 1);
      IgnoreError();
    }
  }
}

void ot::MeshCoP::Commissioner::HandleTmf<(ot::Uri)29>(uint64_t a1, ot::Tlv *a2, uint64_t a3)
{
  v46 = a1;
  v45 = a2;
  v44 = a3;
  TlvValueOffsetRange = 0;
  v42 = 0;
  v40 = 0;
  ot::Ip6::MessageInfo::MessageInfo(v39);
  if (*(a1 + 554) != 2)
  {
    TlvValueOffsetRange = 13;
    return;
  }

  if (ot::Coap::Message::IsNonConfirmablePostRequest(v45))
  {
    TlvValueOffsetRange = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(v45, &v42);
    if (!TlvValueOffsetRange)
    {
      TlvValueOffsetRange = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)19,ot::Ip6::InterfaceIdentifier>>(v45, &v41);
      if (!TlvValueOffsetRange)
      {
        TlvValueOffsetRange = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)20,unsigned short>>(v45, &v40);
        if (!TlvValueOffsetRange)
        {
          TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(v45, 0x11, &v38, v3);
          if (!TlvValueOffsetRange)
          {
            v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
            if (ot::Coap::CoapSecure::IsConnectionActive(v4))
            {
              if (ot::Unequatable<ot::Ip6::InterfaceIdentifier>::operator!=((a1 + 264), &v41))
              {
                v35 = ot::UriToString<(ot::Uri)29>();
                ot::Ip6::InterfaceIdentifier::ToString(&v41, v49);
                ot::String<(unsigned short)17>::AsCString(v49);
                ot::Ip6::InterfaceIdentifier::ToString((a1 + 264), v48);
                ot::String<(unsigned short)17>::AsCString(v48);
                v31 = *(a1 + 274);
                ot::Logger::LogAtLevel<(ot::LogLevel)3>("Commissioner", "Ignore %s (%s, 0x%04x), session in progress with (%s, 0x%04x)", v7, v8, v9, v10, v11, v12, v35);
                return;
              }
            }

            else
            {
              *(a1 + 264) = v41;
              ot::Ip6::InterfaceIdentifier::ConvertToExtAddress((a1 + 264), v50);
              BestMatchingJoinerEntry = ot::MeshCoP::Commissioner::FindBestMatchingJoinerEntry(a1, v50, v5);
              if (!BestMatchingJoinerEntry)
              {
                return;
              }

              v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
              ot::Coap::CoapSecure::SetPsk(v6, (BestMatchingJoinerEntry + 24));
              *(a1 + 256) = BestMatchingJoinerEntry;
              ot::TimerMilli::Start((a1 + 328), 0x7530u);
              ot::MeshCoP::Commissioner::LogJoinerEntry(a1, "Starting new session with", BestMatchingJoinerEntry);
              ot::MeshCoP::Commissioner::SignalJoinerEvent(a1, 0, BestMatchingJoinerEntry);
            }

            *(a1 + 272) = v42;
            *(a1 + 274) = v40;
            v33 = ot::UriToString<(ot::Uri)29>();
            ot::Ip6::InterfaceIdentifier::ToString((a1 + 264), v47);
            ot::String<(unsigned short)17>::AsCString(v47);
            v30 = *(a1 + 274);
            ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Received %s (%s, 0x%04x)", v13, v14, v15, v16, v17, v18, v33);
            v34 = v45;
            Offset = ot::OffsetRange::GetOffset(&v38);
            ot::Message::SetOffset(v34, Offset);
            v32 = v45;
            EndOffset = ot::OffsetRange::GetEndOffset(&v38);
            TlvValueOffsetRange = ot::Message::SetLength(v32, EndOffset);
            if (!TlvValueOffsetRange)
            {
              v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
              MeshLocalEid = ot::Mle::Mle::GetMeshLocalEid(v21);
              ot::Ip6::MessageInfo::SetPeerAddr(v39, MeshLocalEid);
              PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v39);
              ot::Ip6::Address::SetIid(PeerAddr, (a1 + 264));
              ot::Ip6::MessageInfo::SetPeerPort(v39, *(a1 + 272));
              v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
              ot::Coap::CoapSecure::HandleUdpReceive(v24, v45, v39, v25, v26, v27, v28, v29);
            }
          }
        }
      }
    }
  }
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0x12u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(a1, a2);
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)19,ot::Ip6::InterfaceIdentifier>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::FindTlv(a1, 0x13, a2, 8);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)19,ot::Ip6::InterfaceIdentifier>>(a1, a2);
}

BOOL ot::Coap::CoapSecure::IsConnectionActive(ot::Coap::CoapSecure *this)
{
  return ot::MeshCoP::SecureTransport::IsConnectionActive((this + 144));
}

{
  return ot::Coap::CoapSecure::IsConnectionActive(this);
}

unsigned __int8 *ot::Coap::CoapSecure::HandleUdpReceive(ot::Coap::CoapSecure *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return ot::MeshCoP::SecureTransport::HandleReceive(this + 144, a2, a3, a4, a5, a6, a7, a8);
}

{
  return ot::Coap::CoapSecure::HandleUdpReceive(this, a2, a3, a4, a5, a6, a7, a8);
}

void ot::MeshCoP::Commissioner::HandleTmf<(ot::Uri)18>(ot::InstanceLocator *a1, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  if (*(a1 + 554) == 2 && ot::Coap::Message::IsConfirmablePostRequest(a2))
  {
    v3 = ot::UriToString<(ot::Uri)18>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Received %s", v4, v5, v6, v7, v8, v9, v3);
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
    if (!ot::Coap::CoapBase::SendEmptyAck(v10, a2, a3))
    {
      v11 = ot::UriToString<(ot::Uri)18>();
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Sent %s ack", v12, v13, v14, v15, v16, v17, v11);
    }
  }
}

void ot::MeshCoP::Commissioner::HandleTmf<(ot::Uri)22>(uint64_t a1, ot::Tlv *a2)
{
  v14 = 1;
  memset(__b, 0, sizeof(__b));
  if (*(a1 + 554) == 2)
  {
    v2 = ot::UriToString<(ot::Uri)22>();
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Received %s", v3, v4, v5, v6, v7, v8, v2);
    v12 = ot::Tlv::Find<ot::StringTlvInfo<(unsigned char)32,(unsigned char)64>>(a2, __b, v9, v10, v11);
    if (v12)
    {
      if (v12 != 23)
      {
        return;
      }
    }

    else if (!ot::StringMatch(__b, (a1 + 424), 0))
    {
      v14 = -1;
    }

    ot::MeshCoP::Commissioner::SendJoinFinalizeResponse(a1, a2, v14);
  }
}

uint64_t ot::Tlv::Find<ot::StringTlvInfo<(unsigned char)32,(unsigned char)64>>(ot::Tlv *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  return ot::Tlv::FindStringTlv(a1, 0x20, 0x40u, a2, a5);
}

{
  return ot::Tlv::Find<ot::StringTlvInfo<(unsigned char)32,(unsigned char)64>>(a1, a2, a3, a4, a5);
}

void ot::MeshCoP::Commissioner::SendJoinFinalizeResponse(uint64_t a1, const ot::Coap::Message *a2, unsigned __int8 a3)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = 0;
  ot::Ip6::MessageInfo::MessageInfo(v18);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
  v17 = ot::Coap::CoapBase::NewPriorityResponseMessage(v3, v21);
  if (v17)
  {
    Length = ot::Message::GetLength(v17);
    ot::Message::SetOffset(v17, Length);
    ot::Message::SetSubType(v17, 7);
    v19 = ot::Tlv::Append<ot::MeshCoP::StateTlv>(v17, v20);
    if (!v19)
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
      MeshLocalEid = ot::Mle::Mle::GetMeshLocalEid(v5);
      ot::Ip6::MessageInfo::SetPeerAddr(v18, MeshLocalEid);
      PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v18);
      ot::Ip6::Address::SetIid(PeerAddr, (a1 + 264));
      ot::Ip6::MessageInfo::SetPeerPort(v18, *(a1 + 272));
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::SecureAgent>(a1);
      v19 = ot::Coap::CoapSecure::SendMessage(v8, v17, v18, 0, 0);
      if (!v19)
      {
        ot::MeshCoP::Commissioner::SignalJoinerEvent(a1, 2u, *(a1 + 256));
        if (*(a1 + 256) && *(*(a1 + 256) + 57) != 1)
        {
          ot::MeshCoP::Commissioner::RemoveJoiner(a1, *(a1 + 256), 0x14u);
        }

        v9 = ot::UriToString<(ot::Uri)22>();
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("Commissioner", "Sent %s response", v10, v11, v12, v13, v14, v15, v9);
      }
    }
  }

  else
  {
    v19 = 3;
  }

  if (v19)
  {
    if (v17)
    {
      ot::Message::Free(v17);
    }
  }
}

uint64_t ot::MeshCoP::Commissioner::SendRelayTransmit(ot::MeshCoP::Commissioner *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  appended = 0;
  v14 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v13, Instance);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
  ot::KeyManager::ExtractKek(v4, &v20);
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
  v14 = ot::Coap::CoapBase::NewPriorityNonConfirmablePostMessage(v5, 0x1Eu);
  if (v14)
  {
    appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)18,unsigned short>>(v14, *(this + 136));
    if (!appended)
    {
      appended = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)19,ot::Ip6::InterfaceIdentifier>>(v14, this + 264);
      if (!appended)
      {
        appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)20,unsigned short>>(v14, *(this + 137));
        if (!appended && (ot::Message::GetSubType(v18) != 7 || (appended = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)21,ot::Mac::Key>>(v14, &v20)) == 0))
        {
          ot::MeshCoP::ExtendedTlv::SetType(v15, 17);
          Length = ot::Message::GetLength(v18);
          ot::ExtendedTlv::SetLength(v15, Length);
          appended = ot::Message::Append<ot::MeshCoP::ExtendedTlv>(v14, v15);
          if (!appended)
          {
            v11 = v14;
            v10 = v18;
            v7 = ot::Message::GetLength(v18);
            appended = ot::Message::AppendBytesFromMessage(v11, v10, 0, v7);
            if (!appended)
            {
              ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrTo(v13, *(this + 137));
              v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
              appended = ot::Coap::CoapBase::SendMessage(v8, v14, v13);
              if (!appended)
              {
                ot::Message::Free(v18);
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

  if (appended && v14)
  {
    ot::Message::Free(v14);
  }

  return appended;
}

double ot::KeyManager::ExtractKek(ot::KeyManager *this, __n128 *a2)
{
  *&result = ot::Mac::KeyMaterial::ExtractKey((this + 120), a2).n128_u64[0];
  return result;
}

{
  return ot::KeyManager::ExtractKek(this, a2);
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)19,ot::Ip6::InterfaceIdentifier>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 0x13, a2, 8);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)19,ot::Ip6::InterfaceIdentifier>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)20,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 20, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)20,unsigned short>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)21,ot::Mac::Key>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 0x15, a2, 0x10);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)21,ot::Mac::Key>>(a1, a2);
}

BOOL ot::MeshCoP::SecureTransport::IsConnectionActive(ot::MeshCoP::SecureTransport *this)
{
  return *this >= 3u;
}

{
  return ot::MeshCoP::SecureTransport::IsConnectionActive(this);
}

uint64_t ot::Callback<void (*)(otCommissionerState,void *),(ot::CallbackContextPosition)1>::Invoke<otCommissionerState>(uint64_t a1, unsigned int *a2)
{
  return (*a1)(*a2, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otCommissionerState,void *),(ot::CallbackContextPosition)1>::Invoke<otCommissionerState>(a1, a2);
}

uint64_t ot::ClearAllBytes<ot::MeshCoP::CommissioningDataset>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::MeshCoP::CommissioningDataset>(result);
}

uint64_t ot::MeshCoP::Dataset::Info::GenerateRandom(ot::MeshCoP::Dataset::Info *this, ot::Instance *a2)
{
  v18 = this;
  v17 = a2;
  Random = 0;
  v2 = ot::Instance::Get<ot::Mac::Mac>(a2);
  v15 = *ot::Mac::Mac::GetSupportedChannelMask(v2);
  v3 = ot::Instance::Get<ot::Radio>(v17);
  PreferredChannelMask = ot::Radio::GetPreferredChannelMask(v3);
  ot::Mac::ChannelMask::ChannelMask(&v14, PreferredChannelMask);
  ot::StringWriter::StringWriter(v13, this + 48, 17);
  ot::Mac::ChannelMask::Intersect(&v14, &v15);
  if (ot::Mac::ChannelMask::IsEmpty(&v14))
  {
    v14 = v15;
  }

  ot::Clearable<ot::MeshCoP::Dataset::Info>::Clear(this);
  *this = 1;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 45) = ot::Mac::ChannelMask::ChooseRandomChannel(&v14);
  *(this + 29) = ot::Mac::ChannelMask::GetMask(&v15);
  v5 = *(this + 45);
  WakeupChannel = ot::Mac::ChannelMask::GetWakeupChannel(&v15);
  *(this + 46) = WakeupChannel;
  *(this + 44) = ot::Mac::GenerateRandomPanId(WakeupChannel);
  v7 = ot::AsCoreType<otSecurityPolicy>(this + 110);
  ot::SecurityPolicy::SetToDefault(v7);
  v8 = ot::AsCoreType<otNetworkKey>(this + 32);
  Random = ot::NetworkKey::GenerateRandom(v8);
  if (!Random)
  {
    v9 = ot::AsCoreType<otPskc>(this + 94);
    Random = ot::Pskc::GenerateRandom(v9);
    if (!Random)
    {
      Random = ot::Random::Crypto::Fill<otExtendedPanId>((this + 65));
      if (!Random)
      {
        v10 = ot::AsCoreType<otIp6NetworkPrefix>(this + 73);
        Random = ot::Ip6::NetworkPrefix::GenerateRandomUla(v10);
        if (!Random)
        {
          ot::StringWriter::Append(v13, "%s-%04x", "OpenThread", *(this + 44));
          *(this + 120) = 1;
          *(this + 122) = 1;
          *(this + 123) = 1;
          *(this + 124) = 1;
          *(this + 125) = 1;
          *(this + 127) = 1;
          *(this + 128) = 1;
          *(this + 132) = 1;
          *(this + 129) = 1;
          *(this + 130) = 1;
          *(this + 131) = 1;
        }
      }
    }
  }

  return Random;
}

uint64_t ot::Radio::GetPreferredChannelMask(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetPreferredChannelMask();
}

{
  return ot::Radio::GetPreferredChannelMask(this);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otSecurityPolicy>(uint64_t a1)
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

uint64_t ot::NetworkKey::GenerateRandom(ot::NetworkKey *this)
{
  return ot::Random::Crypto::Fill<ot::NetworkKey>(this);
}

{
  return ot::NetworkKey::GenerateRandom(this);
}

uint64_t ot::Pskc::GenerateRandom(ot::Pskc *this)
{
  return ot::Random::Crypto::Fill<ot::Pskc>(this);
}

{
  return ot::Pskc::GenerateRandom(this);
}

uint64_t ot::Random::Crypto::Fill<otExtendedPanId>(ot::Random::Crypto *a1)
{
  return ot::Random::Crypto::FillBuffer(a1, 8);
}

{
  return ot::Random::Crypto::Fill<otExtendedPanId>(a1);
}

ot::MeshCoP::Dataset *ot::MeshCoP::Dataset::Dataset(ot::MeshCoP::Dataset *this)
{
  *(this + 254) = 0;
  ot::Time::Time((this + 256), 0);
  ot::ClearAllBytes<unsigned char [254]>(this);
  return this;
}

{
  ot::MeshCoP::Dataset::Dataset(this);
  return this;
}

void *ot::ClearAllBytes<unsigned char [254]>(void *a1)
{
  return memset(a1, 0, 0xFEuLL);
}

{
  return ot::ClearAllBytes<unsigned char [254]>(a1);
}

uint64_t ot::MeshCoP::Dataset::ValidateTlvs(ot::MeshCoP::Dataset *this)
{
  v11 = 6;
  TlvsEnd = ot::MeshCoP::Dataset::GetTlvsEnd(this);
  if (*(this + 254) != 255)
  {
    ot::MeshCoP::Dataset::GetTlvsStart(this);
    for (i = v1; i < TlvsEnd; i = v6)
    {
      if (ot::Tlv::IsExtended(i))
      {
        return v11;
      }

      if (i + 2 > TlvsEnd)
      {
        return v11;
      }

      ot::MeshCoP::Tlv::GetNext(i);
      if (v3 > TlvsEnd)
      {
        return v11;
      }

      IsTlvValid = ot::MeshCoP::Dataset::IsTlvValid(i, v2);
      if ((IsTlvValid & 1) == 0)
      {
        return v11;
      }

      Type = ot::MeshCoP::Tlv::GetType(i);
      if (ot::Tlv::FindTlv(this, (i - this), Type))
      {
        return v11;
      }

      ot::MeshCoP::Tlv::GetNext(i);
    }

    return 0;
  }

  return v11;
}

uint64_t ot::MeshCoP::Dataset::GetTlvsEnd(ot::MeshCoP::Dataset *this)
{
  return this + *(this + 254);
}

{
  return this + *(this + 254);
}

{
  return ot::MeshCoP::Dataset::GetTlvsEnd(this);
}

{
  return ot::MeshCoP::Dataset::GetTlvsEnd(this);
}

void ot::MeshCoP::Dataset::GetTlvsStart(ot::MeshCoP::Dataset *this)
{
  ;
}

{
  ;
}

{
  ot::MeshCoP::Dataset::GetTlvsStart(this);
}

{
  ot::MeshCoP::Dataset::GetTlvsStart(this);
}

void ot::MeshCoP::Tlv::GetNext(ot::MeshCoP::Tlv *this)
{
  ot::Tlv::GetNext(this);
  ot::As<ot::MeshCoP::Tlv>();
}

{
  ot::MeshCoP::Tlv::GetNext(this);
}

uint64_t ot::MeshCoP::Dataset::IsTlvValid(ot::MeshCoP::Dataset *this, const ot::MeshCoP::Tlv *a2)
{
  IsValid = 1;
  v8 = 0;
  Type = ot::MeshCoP::Tlv::GetType(this);
  if (Type)
  {
    switch(Type)
    {
      case 1:
        v8 = 2;
        break;
      case 2:
        v8 = 8;
        break;
      case 3:
        ot::As<ot::MeshCoP::NetworkNameTlv>();
        IsValid = ot::MeshCoP::NetworkNameTlv::IsValid(v3);
        break;
      case 4:
        v8 = 16;
        break;
      case 5:
        v8 = 16;
        break;
      case 7:
        v8 = 8;
        break;
      case 12:
        ot::As<ot::MeshCoP::SecurityPolicyTlv>();
        IsValid = ot::MeshCoP::SecurityPolicyTlv::IsValid(v4);
        break;
      case 53:
        ot::As<ot::MeshCoP::ChannelMaskTlv>();
        IsValid = ot::MeshCoP::ChannelMaskTlv::IsValid(v5);
        break;
    }
  }

  else
  {
    if (ot::Tlv::GetLength(this) < 3uLL)
    {
      IsValid = 0;
      return IsValid & 1;
    }

    v2 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(this);
    IsValid = ot::Mle::ChannelTlvValue::IsValid(v2);
  }

  if (v8)
  {
    IsValid = ot::Tlv::GetLength(this) >= v8;
  }

  return IsValid & 1;
}

uint64_t ot::MeshCoP::Tlv::GetType(ot::MeshCoP::Tlv *this)
{
  return ot::Tlv::GetType(this);
}

{
  return ot::MeshCoP::Tlv::GetType(this);
}

uint64_t ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(uint64_t a1)
{
  return a1 + 2;
}

{
  return ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(a1);
}

void ot::As<ot::MeshCoP::NetworkNameTlv>()
{
  ;
}

{
  ;
}

{
  ot::As<ot::MeshCoP::NetworkNameTlv>();
}

{
  ot::As<ot::MeshCoP::NetworkNameTlv>();
}

void ot::As<ot::MeshCoP::SecurityPolicyTlv>()
{
  ;
}

{
  ;
}

{
  ot::As<ot::MeshCoP::SecurityPolicyTlv>();
}

{
  ot::As<ot::MeshCoP::SecurityPolicyTlv>();
}

void ot::As<ot::MeshCoP::ChannelMaskTlv>()
{
  ;
}

{
  ;
}

{
  ;
}

{
  ot::As<ot::MeshCoP::ChannelMaskTlv>();
}

{
  ot::As<ot::MeshCoP::ChannelMaskTlv>();
}

{
  ot::As<ot::MeshCoP::ChannelMaskTlv>();
}

uint64_t ot::MeshCoP::Dataset::ContainsAllTlvs(unsigned __int8 *a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = 1;
  for (i = 0; i < a3; ++i)
  {
    if (!ot::MeshCoP::Dataset::ContainsTlv(a1, *(a2 + i)))
    {
      v6 = 0;
      return v6 & 1;
    }
  }

  return v6 & 1;
}

BOOL ot::MeshCoP::Dataset::ContainsTlv(unsigned __int8 *a1, unsigned __int8 a2)
{
  ot::MeshCoP::Dataset::FindTlv(a1, a2);
  return v2 != 0;
}

{
  return ot::MeshCoP::Dataset::ContainsTlv(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::ContainsAllRequiredTlvsFor(unsigned __int8 *a1, char a2)
{
  v3 = 12;
  if (!a2)
  {
    v3 = 10;
  }

  return ot::MeshCoP::Dataset::ContainsAllTlvs(a1, &ot::MeshCoP::Dataset::ContainsAllRequiredTlvsFor(ot::MeshCoP::Dataset::Type)const::kDatasetTlvs, v3);
}

void ot::As<ot::MeshCoP::Tlv>()
{
  ;
}

{
  ot::As<ot::MeshCoP::Tlv>();
}

unint64_t ot::MeshCoP::Dataset::ConvertTo(ot::MeshCoP::Dataset *this, ot::MeshCoP::Dataset::Info *a2)
{
  v42 = this;
  v41 = a2;
  ot::Clearable<ot::MeshCoP::Dataset::Info>::Clear(a2);
  ot::MeshCoP::Dataset::GetTlvsStart(this);
  for (i = v2; ; i = v19)
  {
    v32 = i;
    result = ot::MeshCoP::Dataset::GetTlvsEnd(this);
    if (v32 >= result)
    {
      break;
    }

    switch(ot::MeshCoP::Tlv::GetType(i))
    {
      case 0u:
        v30 = v41;
        v6 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(i);
        Channel = ot::Mle::ChannelTlvValue::GetChannel(v6);
        ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)8>(v30, &Channel);
        break;
      case 1u:
        v23 = v41;
        v35 = ot::Tlv::ReadValueAs<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(i, v4);
        ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)7>(v23, &v35);
        break;
      case 2u:
        v27 = v41;
        v10 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(i);
        ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)4>(v27, v10);
        break;
      case 3u:
        ot::MeshCoP::Dataset::Info::Update<(ot::MeshCoP::Dataset::Component)3>(v41);
        v24 = v13;
        ot::As<ot::MeshCoP::NetworkNameTlv>();
        v36[0] = ot::MeshCoP::NetworkNameTlv::GetNetworkName(v14);
        v36[1] = v15;
        ot::MeshCoP::NetworkName::Set(v24, v36);
        IgnoreError();
        break;
      case 4u:
        v21 = v41;
        v17 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)4,ot::Pskc>>(i);
        ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)9>(v21, v17);
        break;
      case 5u:
        v25 = v41;
        v12 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(i);
        ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)2>(v25, v12);
        break;
      case 7u:
        v26 = v41;
        v11 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(i);
        ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)5>(v26, v11);
        break;
      case 0xCu:
        v20 = v41;
        ot::As<ot::MeshCoP::SecurityPolicyTlv>();
        SecurityPolicy = ot::MeshCoP::SecurityPolicyTlv::GetSecurityPolicy(v18);
        ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)10>(v20, &SecurityPolicy);
        break;
      case 0xEu:
        v31 = v41;
        v5 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(i);
        ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)0>(v31, v5);
        break;
      case 0x33u:
        v22 = v41;
        v16 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(i);
        ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)1>(v22, v16);
        break;
      case 0x34u:
        v28 = v41;
        v37 = ot::Tlv::ReadValueAs<ot::MeshCoP::DelayTimerTlv>(i, v4);
        ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)6>(v28, &v37);
        break;
      case 0x35u:
        v38 = 0;
        ot::As<ot::MeshCoP::ChannelMaskTlv>();
        if (!ot::MeshCoP::ChannelMaskTlv::ReadChannelMask(v9, &v38))
        {
          ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)11>(v41, &v38);
        }

        break;
      case 0x4Au:
        v29 = v41;
        ot::As<ot::MeshCoP::WakeupChannelTlv>();
        v8 = ot::MeshCoP::WakeupChannelTlv::GetChannel(v7);
        ot::MeshCoP::Dataset::Info::SetWakeupChannel(v29, v8);
        break;
      default:
        break;
    }

    ot::MeshCoP::Tlv::GetNext(i);
  }

  return result;
}

BOOL ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)0>(ot::MeshCoP::Dataset::Info *a1, ot::MeshCoP::Timestamp *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)0>(Components);
  return ot::MeshCoP::Timestamp::ConvertTo(a2, a1);
}

{
  return ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)0>(a1, a2);
}

uint64_t ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(uint64_t a1)
{
  return a1 + 2;
}

{
  return ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(a1);
}

void ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)8>(ot::MeshCoP::Dataset::Info *a1, __int16 *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)8>(Components);
  v5 = *a2;
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)8>(a1);
  ot::AsNonConst<unsigned short>();
  *v3 = v5;
}

{
  ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)8>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Info::SetWakeupChannel(uint64_t this, __int16 a2)
{
  *(this + 92) = a2;
  *(this + 132) = 1;
  return this;
}

{
  return ot::MeshCoP::Dataset::Info::SetWakeupChannel(this, a2);
}

void ot::As<ot::MeshCoP::WakeupChannelTlv>()
{
  ;
}

{
  ot::As<ot::MeshCoP::WakeupChannelTlv>();
}

uint64_t ot::MeshCoP::WakeupChannelTlv::GetChannel(ot::MeshCoP::WakeupChannelTlv *this)
{
  return ot::BigEndian::HostSwap16(*(this + 3));
}

{
  return ot::MeshCoP::WakeupChannelTlv::GetChannel(this);
}

void ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)11>(ot::MeshCoP::Dataset::Info *a1, int *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)11>(Components);
  v5 = *a2;
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)11>(a1);
  ot::AsNonConst<unsigned int>();
  *v3 = v5;
}

{
  ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)11>(a1, a2);
}

void ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)6>(ot::MeshCoP::Dataset::Info *a1, int *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)6>(Components);
  v5 = *a2;
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)6>(a1);
  ot::AsNonConst<unsigned int>();
  *v3 = v5;
}

{
  ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)6>(a1, a2);
}

uint64_t ot::Tlv::ReadValueAs<ot::MeshCoP::DelayTimerTlv>(uint64_t a1, const unsigned __int8 *a2)
{
  return ot::BigEndian::Read<unsigned int>((a1 + 2), a2);
}

{
  return ot::Tlv::ReadValueAs<ot::MeshCoP::DelayTimerTlv>(a1, a2);
}

void ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)4>(ot::MeshCoP::Dataset::Info *a1, void *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)4>(Components);
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)4>(a1);
  ot::AsNonConst<ot::MeshCoP::ExtendedPanId>();
  *v3 = *a2;
}

{
  ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)4>(a1, a2);
}

uint64_t ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(uint64_t a1)
{
  return a1 + 2;
}

{
  return ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(a1);
}

void ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)5>(ot::MeshCoP::Dataset::Info *a1, void *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)5>(Components);
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)5>(a1);
  ot::AsNonConst<ot::Ip6::NetworkPrefix>();
  *v3 = *a2;
}

{
  ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)5>(a1, a2);
}

uint64_t ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(uint64_t a1)
{
  return a1 + 2;
}

{
  return ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(a1);
}

__n128 ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)2>(ot::MeshCoP::Dataset::Info *a1, __n128 *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)2>(Components);
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)2>(a1);
  ot::AsNonConst<ot::NetworkKey>();
  result = *a2;
  *v4 = *a2;
  return result;
}

uint64_t ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(uint64_t a1)
{
  return a1 + 2;
}

{
  return ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(a1);
}

void ot::MeshCoP::Dataset::Info::Update<(ot::MeshCoP::Dataset::Component)3>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)3>(Components);
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)3>(a1);
  ot::AsNonConst<ot::MeshCoP::NetworkName>();
}

{
  ot::MeshCoP::Dataset::Info::Update<(ot::MeshCoP::Dataset::Component)3>(a1);
}

void ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)7>(ot::MeshCoP::Dataset::Info *a1, __int16 *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)7>(Components);
  v5 = *a2;
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)7>(a1);
  ot::AsNonConst<unsigned short>();
  *v3 = v5;
}

{
  ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)7>(a1, a2);
}

uint64_t ot::Tlv::ReadValueAs<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(uint64_t a1, const unsigned __int8 *a2)
{
  return ot::BigEndian::Read<unsigned short>((a1 + 2), a2);
}

{
  return ot::Tlv::ReadValueAs<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(a1, a2);
}

BOOL ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)1>(ot::MeshCoP::Dataset::Info *a1, ot::MeshCoP::Timestamp *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)1>(Components);
  return ot::MeshCoP::Timestamp::ConvertTo(a2, a1 + 16);
}

{
  return ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)1>(a1, a2);
}

uint64_t ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(uint64_t a1)
{
  return a1 + 2;
}

{
  return ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(a1);
}

__n128 ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)9>(ot::MeshCoP::Dataset::Info *a1, __n128 *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)9>(Components);
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)9>(a1);
  ot::AsNonConst<ot::Pskc>();
  result = *a2;
  *v4 = *a2;
  return result;
}

uint64_t ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)4,ot::Pskc>>(uint64_t a1)
{
  return a1 + 2;
}

{
  return ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)4,ot::Pskc>>(a1);
}

void ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)10>(ot::MeshCoP::Dataset::Info *a1, _DWORD *a2)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)10>(Components);
  ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)10>(a1);
  ot::AsNonConst<ot::SecurityPolicy>();
  *v3 = *a2;
}

{
  ot::MeshCoP::Dataset::Info::Set<(ot::MeshCoP::Dataset::Component)10>(a1, a2);
}

void *ot::MeshCoP::Dataset::ConvertTo(unsigned __int8 *a1, _BYTE *a2)
{
  result = memcpy(a2, a1, a1[254]);
  a2[254] = a1[254];
  return result;
}

uint64_t ot::MeshCoP::Dataset::SetFrom(ot::MeshCoP::Dataset *this, const ot::MeshCoP::Dataset *a2)
{
  memcpy(this, a2, *(a2 + 254));
  *(this + 254) = *(a2 + 254);
  result = ot::MeshCoP::Dataset::GetUpdateTime(a2);
  *(this + 64) = result;
  return result;
}

uint64_t ot::MeshCoP::Dataset::GetUpdateTime(ot::MeshCoP::Dataset *this)
{
  return *(this + 64);
}

{
  return ot::MeshCoP::Dataset::GetUpdateTime(this);
}

uint64_t ot::MeshCoP::Dataset::SetFrom(ot::MeshCoP::Dataset *this, const unsigned __int8 *a2, unsigned __int8 a3)
{
  v6 = 0;
  if (a3 == 255)
  {
    return 7;
  }

  else
  {
    *(this + 254) = a3;
    v3 = memcpy(this, a2, *(this + 254));
    *(this + 64) = ot::TimerMilli::GetNow(v3);
  }

  return v6;
}

void ot::MeshCoP::Dataset::SetFrom(ot::MeshCoP::Dataset *this, const ot::MeshCoP::Dataset::Info *a2)
{
  ot::MeshCoP::Dataset::Clear(this);
  ot::MeshCoP::Dataset::WriteTlvsFrom(this, a2);
  IgnoreError();
}

uint64_t ot::MeshCoP::Dataset::Clear(uint64_t this)
{
  *(this + 254) = 0;
  return this;
}

{
  return ot::MeshCoP::Dataset::Clear(this);
}

uint64_t ot::MeshCoP::Dataset::WriteTlvsFrom(ot::MeshCoP::Dataset *this, const ot::MeshCoP::Dataset::Info *a2)
{
  v25 = this;
  v24 = a2;
  v23 = 0;
  if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)0>(a2) & 1) == 0 || (ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)0>(v24, v22), (v23 = ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(this, v22)) == 0))
  {
    if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)1>(v24) & 1) == 0 || (ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)1>(v24, v21), (v23 = ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(this, v21)) == 0))
    {
      if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)6>(v24) & 1) == 0 || (v2 = ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)6>(v24), (v23 = ot::MeshCoP::Dataset::Write<ot::MeshCoP::DelayTimerTlv>(this, *v2)) == 0))
      {
        if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)8>(v24) & 1) == 0 || (v3 = ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)8>(v24), ot::Mle::ChannelTlvValue::SetChannelAndPage(v20, *v3), (v23 = ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(this, v20)) == 0))
        {
          if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)11>(v24) & 1) == 0 || (v4 = ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)11>(v24), ot::MeshCoP::ChannelMaskTlv::PrepareValue(v19, *v4), (v23 = ot::MeshCoP::Dataset::WriteTlv(this, 53, v19, v19[6])) == 0))
          {
            if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)4>(v24) & 1) == 0 || (v5 = ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)4>(v24), (v23 = ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(this, v5)) == 0))
            {
              if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)5>(v24) & 1) == 0 || (v6 = ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)5>(v24), (v23 = ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(this, v6)) == 0))
              {
                if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)2>(v24) & 1) == 0 || (v7 = ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)2>(v24), (v23 = ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(this, v7)) == 0))
                {
                  if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)3>(v24) & 1) == 0 || (v8 = ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)3>(v24), v18[0] = ot::MeshCoP::NetworkName::GetAsData(v8), v18[1] = v9, Buffer = ot::MeshCoP::NameData::GetBuffer(v18), Length = ot::MeshCoP::NameData::GetLength(v18), (v23 = ot::MeshCoP::Dataset::WriteTlv(this, 3, Buffer, Length)) == 0))
                  {
                    if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)7>(v24) & 1) == 0 || (v11 = ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)7>(v24), (v23 = ot::MeshCoP::Dataset::Write<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(this, *v11)) == 0))
                    {
                      if ((ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)9>(v24) & 1) == 0 || (v12 = ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)9>(v24), (v23 = ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)4,ot::Pskc>>(this, v12)) == 0))
                      {
                        if (ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)10>(v24))
                        {
                          ot::MeshCoP::SecurityPolicyTlv::Init(v17);
                          v13 = ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)10>(v24);
                          ot::MeshCoP::SecurityPolicyTlv::SetSecurityPolicy(v17, v13);
                          return ot::MeshCoP::Dataset::WriteTlv(this, v17);
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

  return v23;
}

uint64_t ot::MeshCoP::Dataset::SetFrom(ot::MeshCoP::Dataset *this, const ot::Message *a2, const ot::OffsetRange *a3)
{
  if (ot::OffsetRange::GetLength(a3) <= 254)
  {
    Length = ot::OffsetRange::GetLength(a3);
    v7 = ot::Message::Read(a2, a3, this, Length);
    if (!v7)
    {
      v4 = ot::OffsetRange::GetLength(a3);
      *(this + 254) = v4;
      *(this + 64) = ot::TimerMilli::GetNow(v4);
    }
  }

  else
  {
    return 7;
  }

  return v7;
}

uint64_t ot::MeshCoP::Dataset::WriteTlv(uint64_t a1, char a2, const void *a3, unsigned __int8 a4)
{
  *&v11[4] = 0;
  *v11 = (254 - *(a1 + 254));
  ot::MeshCoP::Dataset::FindTlv(a1, a2);
  v10 = v4;
  if (v4)
  {
    *v11 += ot::Tlv::GetLength(v4) + 2;
  }

  if (a4 + 2 > *v11)
  {
    *&v11[2] = 3;
  }

  else
  {
    ot::MeshCoP::Dataset::RemoveTlv(a1, v10);
    TlvsEnd = ot::MeshCoP::Dataset::GetTlvsEnd(a1);
    *(a1 + 254) += a4 + 2;
    ot::MeshCoP::Tlv::SetType(TlvsEnd, a2);
    ot::Tlv::SetLength(TlvsEnd, a4);
    Value = ot::Tlv::GetValue(TlvsEnd);
    v6 = memcpy(Value, a3, a4);
    *(a1 + 256) = ot::TimerMilli::GetNow(v6);
  }

  return *&v11[2];
}

void ot::MeshCoP::Dataset::FindTlv(uint64_t a1, unsigned __int8 a2)
{
  ot::AsConst<ot::MeshCoP::Dataset>();
  ot::MeshCoP::Dataset::FindTlv(v2, a2);
  ot::AsNonConst<ot::MeshCoP::Tlv>();
}

{
  ot::MeshCoP::Dataset::FindTlv(a1, a2);
}

void *ot::MeshCoP::Dataset::RemoveTlv(void *this, ot::MeshCoP::Tlv *a2)
{
  v2 = this;
  if (a2)
  {
    v3 = ot::Tlv::GetLength(a2) + 2;
    this = memmove(a2, a2 + v3, *(v2 + 254) - (v3 + (a2 - v2)));
    *(v2 + 254) -= v3;
  }

  return this;
}

uint64_t ot::MeshCoP::Dataset::WriteTlv(ot::MeshCoP::Dataset *this, const ot::MeshCoP::Tlv *a2)
{
  Type = ot::MeshCoP::Tlv::GetType(a2);
  Value = ot::Tlv::GetValue(a2);
  Length = ot::Tlv::GetLength(a2);
  return ot::MeshCoP::Dataset::WriteTlv(this, Type, Value, Length);
}

uint64_t ot::MeshCoP::Dataset::WriteTlvsFrom(ot::MeshCoP::Dataset *this, const ot::MeshCoP::Dataset *a2)
{
  v7 = ot::MeshCoP::Dataset::ValidateTlvs(a2);
  if (!v7)
  {
    ot::MeshCoP::Dataset::GetTlvsStart(a2);
    for (i = v2; i < ot::MeshCoP::Dataset::GetTlvsEnd(a2); i = v3)
    {
      v7 = ot::MeshCoP::Dataset::WriteTlv(this, i);
      if (v7)
      {
        break;
      }

      ot::MeshCoP::Tlv::GetNext(i);
    }
  }

  return v7;
}

uint64_t ot::MeshCoP::Dataset::WriteTlvsFrom(ot::MeshCoP::Dataset *this, const unsigned __int8 *a2, unsigned __int8 a3)
{
  ot::MeshCoP::Dataset::Dataset(v8);
  v5 = ot::MeshCoP::Dataset::SetFrom(v8, a2, a3);
  if (!v5)
  {
    return ot::MeshCoP::Dataset::WriteTlvsFrom(this, v8);
  }

  return v5;
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)0>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)0>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)0>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)0>(uint64_t a1, ot::MeshCoP::Timestamp *a2)
{
  return ot::MeshCoP::Timestamp::SetFrom(a2, a1);
}

{
  return ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)0>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(uint64_t a1, const void *a2)
{
  return ot::MeshCoP::Dataset::WriteTlv(a1, 14, a2, 8u);
}

{
  return ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)1>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)1>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)1>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)1>(uint64_t a1, ot::MeshCoP::Timestamp *a2)
{
  return ot::MeshCoP::Timestamp::SetFrom(a2, a1 + 16);
}

{
  return ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)1>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(uint64_t a1, const void *a2)
{
  return ot::MeshCoP::Dataset::WriteTlv(a1, 51, a2, 8u);
}

{
  return ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)6>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)6>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)6>(a1);
}

uint64_t ot::MeshCoP::Dataset::Write<ot::MeshCoP::DelayTimerTlv>(uint64_t a1, unsigned int a2)
{
  v5 = a1;
  v4[1] = a2;
  v4[0] = ot::BigEndian::HostSwap<unsigned int>(a2);
  return ot::MeshCoP::Dataset::WriteTlv(a1, 52, v4, 4u);
}

{
  return ot::MeshCoP::Dataset::Write<ot::MeshCoP::DelayTimerTlv>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)6>(uint64_t a1)
{
  return a1 + 84;
}

{
  return ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)6>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)8>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)8>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)8>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)8>(uint64_t a1)
{
  return a1 + 90;
}

{
  return ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)8>(a1);
}

uint64_t ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(uint64_t a1, const void *a2)
{
  return ot::MeshCoP::Dataset::WriteTlv(a1, 0, a2, 3u);
}

{
  return ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)11>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)11>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)11>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)11>(uint64_t a1)
{
  return a1 + 116;
}

{
  return ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)11>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)4>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)4>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)4>(a1);
}

uint64_t ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(uint64_t a1, const void *a2)
{
  return ot::MeshCoP::Dataset::WriteTlv(a1, 2, a2, 8u);
}

{
  return ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)4>(uint64_t a1)
{
  return ot::AsCoreType<otExtendedPanId>(a1 + 65);
}

{
  return ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)4>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)5>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)5>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)5>(a1);
}

uint64_t ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(uint64_t a1, const void *a2)
{
  return ot::MeshCoP::Dataset::WriteTlv(a1, 7, a2, 8u);
}

{
  return ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)5>(uint64_t a1)
{
  return a1 + 73;
}

{
  return ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)5>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)2>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)2>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)2>(a1);
}

uint64_t ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(uint64_t a1, const void *a2)
{
  return ot::MeshCoP::Dataset::WriteTlv(a1, 5, a2, 0x10u);
}

{
  return ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)2>(uint64_t a1)
{
  return ot::AsCoreType<otNetworkKey>(a1 + 32);
}

{
  return ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)2>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)3>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)3>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)3>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)3>(uint64_t a1)
{
  return ot::AsCoreType<otNetworkName>(a1 + 48);
}

{
  return ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)3>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)7>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)7>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)7>(a1);
}

uint64_t ot::MeshCoP::Dataset::Write<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  v5 = a1;
  v4[1] = a2;
  v4[0] = ot::BigEndian::HostSwap<unsigned short>(a2);
  return ot::MeshCoP::Dataset::WriteTlv(a1, 1, v4, 2u);
}

{
  return ot::MeshCoP::Dataset::Write<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)7>(uint64_t a1)
{
  return a1 + 88;
}

{
  return ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)7>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)9>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)9>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)9>(a1);
}

uint64_t ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)4,ot::Pskc>>(uint64_t a1, const void *a2)
{
  return ot::MeshCoP::Dataset::WriteTlv(a1, 4, a2, 0x10u);
}

{
  return ot::MeshCoP::Dataset::Write<ot::SimpleTlvInfo<(unsigned char)4,ot::Pskc>>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)9>(uint64_t a1)
{
  return ot::AsCoreType<otPskc>(a1 + 94);
}

{
  return ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)9>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)10>(ot::MeshCoP::Dataset::Info *a1)
{
  Components = ot::MeshCoP::Dataset::Info::GetComponents(a1);
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)10>(Components);
}

{
  return ot::MeshCoP::Dataset::Info::IsPresent<(ot::MeshCoP::Dataset::Component)10>(a1);
}

uint64_t ot::MeshCoP::SecurityPolicyTlv::Init(ot::MeshCoP::SecurityPolicyTlv *this)
{
  ot::MeshCoP::Tlv::SetType(this, 12);
  return ot::Tlv::SetLength(this, 4);
}

{
  return ot::MeshCoP::SecurityPolicyTlv::Init(this);
}

uint64_t ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)10>(uint64_t a1)
{
  return ot::AsCoreType<otSecurityPolicy>(a1 + 110);
}

{
  return ot::MeshCoP::Dataset::Info::Get<(ot::MeshCoP::Dataset::Component)10>(a1);
}

uint64_t ot::MeshCoP::Dataset::AppendTlvsFrom(ot::MeshCoP::Dataset *this, const unsigned __int8 *a2, unsigned __int8 a3)
{
  *&v5[4] = 0;
  *v5 = *(this + 254);
  if ((*v5 + a3) <= 0xFEu)
  {
    memcpy(this + *(this + 254), a2, a3);
    *(this + 254) += a3;
  }

  else
  {
    *&v5[2] = 3;
  }

  return *&v5[2];
}

uint64_t ot::MeshCoP::Dataset::ReadTimestamp(unsigned __int8 *a1, char a2, void *a3)
{
  v7 = 0;
  v3 = ot::MeshCoP::Dataset::TimestampTlvFor(a2);
  ot::MeshCoP::Dataset::FindTlv(a1, v3);
  if (v4)
  {
    *a3 = *ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(v4);
  }

  else
  {
    return 23;
  }

  return v7;
}

uint64_t ot::MeshCoP::Dataset::TimestampTlvFor(char a1)
{
  if (a1)
  {
    return 51;
  }

  else
  {
    return 14;
  }
}

{
  return ot::MeshCoP::Dataset::TimestampTlvFor(a1);
}

uint64_t ot::MeshCoP::Dataset::IsSubsetOf(ot::MeshCoP::Dataset *this, const ot::MeshCoP::Dataset *a2)
{
  v11 = 0;
  ot::MeshCoP::Dataset::GetTlvsStart(this);
  for (i = v2; i < ot::MeshCoP::Dataset::GetTlvsEnd(this); i = v6)
  {
    if (ot::MeshCoP::Tlv::GetType(i) != 14 && ot::MeshCoP::Tlv::GetType(i) != 51 && ot::MeshCoP::Tlv::GetType(i) != 52)
    {
      Type = ot::MeshCoP::Tlv::GetType(i);
      ot::MeshCoP::Dataset::FindTlv(a2, Type);
      v9 = v4;
      if (!v4)
      {
        return v11 & 1;
      }

      Size = ot::Tlv::GetSize(i);
      if (memcmp(i, v9, Size))
      {
        return v11 & 1;
      }
    }

    ot::MeshCoP::Tlv::GetNext(i);
  }

  v11 = 1;
  return v11 & 1;
}

const char *ot::MeshCoP::Dataset::TypeToString(char a1)
{
  if (a1)
  {
    return "Pending";
  }

  else
  {
    return "Active";
  }
}

uint64_t ot::Random::Crypto::Fill<ot::NetworkKey>(ot::Random::Crypto *a1)
{
  return ot::Random::Crypto::FillBuffer(a1, 0x10);
}

{
  return ot::Random::Crypto::Fill<ot::NetworkKey>(a1);
}

uint64_t ot::Random::Crypto::Fill<ot::Pskc>(ot::Random::Crypto *a1)
{
  return ot::Random::Crypto::FillBuffer(a1, 0x10);
}

{
  return ot::Random::Crypto::Fill<ot::Pskc>(a1);
}

uint64_t ot::MeshCoP::Dataset::Info::GetComponents(ot::MeshCoP::Dataset::Info *this)
{
  return this + 120;
}

{
  return this + 120;
}

{
  return ot::MeshCoP::Dataset::Info::GetComponents(this);
}

{
  return ot::MeshCoP::Dataset::Info::GetComponents(this);
}

_BYTE *ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)0>(_BYTE *result)
{
  *result = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)0>(result);
}

uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)1>(uint64_t result)
{
  *(result + 1) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)1>(result);
}

void ot::AsNonConst<ot::MeshCoP::Tlv>()
{
  ;
}

{
  ot::AsNonConst<ot::MeshCoP::Tlv>();
}

void ot::AsConst<ot::MeshCoP::Dataset>()
{
  ;
}

{
  ot::AsConst<ot::MeshCoP::Dataset>();
}

uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)8>(uint64_t result)
{
  *(result + 8) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)8>(result);
}

void ot::AsNonConst<unsigned short>()
{
  ;
}

{
  ;
}

{
  ot::AsNonConst<unsigned short>();
}

{
  ot::AsNonConst<unsigned short>();
}

uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)11>(uint64_t result)
{
  *(result + 11) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)11>(result);
}

void ot::AsNonConst<unsigned int>()
{
  ;
}

{
  ot::AsNonConst<unsigned int>();
}

uint64_t ot::BigEndian::Read<unsigned int>(ot::BigEndian *a1, const unsigned __int8 *a2)
{
  return ot::BigEndian::ReadUint32(a1, a2);
}

{
  return ot::BigEndian::Read<unsigned int>(a1, a2);
}

uint64_t ot::BigEndian::ReadUint32(ot::BigEndian *this, const unsigned __int8 *a2)
{
  return _byteswap_ulong(*this);
}

{
  return ot::BigEndian::ReadUint32(this, a2);
}

uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)6>(uint64_t result)
{
  *(result + 6) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)6>(result);
}

uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)4>(uint64_t result)
{
  *(result + 4) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)4>(result);
}

void ot::AsNonConst<ot::MeshCoP::ExtendedPanId>()
{
  ;
}

{
  ot::AsNonConst<ot::MeshCoP::ExtendedPanId>();
}

uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)5>(uint64_t result)
{
  *(result + 5) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)5>(result);
}

void ot::AsNonConst<ot::Ip6::NetworkPrefix>()
{
  ;
}

{
  ot::AsNonConst<ot::Ip6::NetworkPrefix>();
}

uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)2>(uint64_t result)
{
  *(result + 2) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)2>(result);
}

void ot::AsNonConst<ot::NetworkKey>()
{
  ;
}

{
  ot::AsNonConst<ot::NetworkKey>();
}

uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)3>(uint64_t result)
{
  *(result + 3) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)3>(result);
}

void ot::AsNonConst<ot::MeshCoP::NetworkName>()
{
  ;
}

{
  ot::AsNonConst<ot::MeshCoP::NetworkName>();
}

uint64_t ot::BigEndian::Read<unsigned short>(ot::BigEndian *a1, const unsigned __int8 *a2)
{
  return ot::BigEndian::ReadUint16(a1, a2);
}

{
  return ot::BigEndian::Read<unsigned short>(a1, a2);
}

uint64_t ot::BigEndian::ReadUint16(ot::BigEndian *this, const unsigned __int8 *a2)
{
  v2 = *(this + 1) | (*this << 8);
  return _byteswap_ushort(*this);
}

{
  return ot::BigEndian::ReadUint16(this, a2);
}

uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)7>(uint64_t result)
{
  *(result + 7) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)7>(result);
}

uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)9>(uint64_t result)
{
  *(result + 9) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)9>(result);
}

void ot::AsNonConst<ot::Pskc>()
{
  ;
}

{
  ot::AsNonConst<ot::Pskc>();
}

uint64_t ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)10>(uint64_t result)
{
  *(result + 10) = 1;
  return result;
}

{
  return ot::MeshCoP::Dataset::Components::MarkAsPresent<(ot::MeshCoP::Dataset::Component)10>(result);
}

void ot::AsNonConst<ot::SecurityPolicy>()
{
  ;
}

{
  ot::AsNonConst<ot::SecurityPolicy>();
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)0>(_BYTE *a1)
{
  return *a1 & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)0>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)1>(uint64_t a1)
{
  return *(a1 + 1) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)1>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)6>(uint64_t a1)
{
  return *(a1 + 6) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)6>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)8>(uint64_t a1)
{
  return *(a1 + 8) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)8>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)11>(uint64_t a1)
{
  return *(a1 + 11) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)11>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)4>(uint64_t a1)
{
  return *(a1 + 4) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)4>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)5>(uint64_t a1)
{
  return *(a1 + 5) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)5>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)2>(uint64_t a1)
{
  return *(a1 + 2) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)2>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)3>(uint64_t a1)
{
  return *(a1 + 3) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)3>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)7>(uint64_t a1)
{
  return *(a1 + 7) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)7>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)9>(uint64_t a1)
{
  return *(a1 + 9) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)9>(a1);
}

uint64_t ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)10>(uint64_t a1)
{
  return *(a1 + 10) & 1;
}

{
  return ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)10>(a1);
}

BOOL otIp4IsAddressEqual(uint64_t a1, uint64_t a2)
{
  v4 = ot::AsCoreType<otIp4Address>(a1);
  v2 = ot::AsCoreType<otIp4Address>(a2);
  return ot::Equatable<ot::Ip4::Address>::operator==(v4, v2);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otIp4Address>(uint64_t a1)
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

BOOL ot::Equatable<ot::Ip4::Address>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 4uLL) == 0;
}

{
  return ot::Equatable<ot::Ip4::Address>::operator==(a1, a2);
}

void otIp4ExtractFromIp6Address(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = ot::AsCoreType<otIp4Address>(a3);
  v3 = ot::AsCoreType<otIp6Address>(a2);
  ot::Ip4::Address::ExtractFromIp6Address(v4, a1, v3);
}

uint64_t otIp4FromIp4MappedIp6Address(uint64_t a1, uint64_t a2)
{
  v4 = ot::AsCoreType<otIp4Address>(a2);
  v2 = ot::AsCoreType<otIp6Address>(a1);
  return ot::Ip4::Address::ExtractFromIp4MappedIp6Address(v4, v2);
}

void otIp4ToIp4MappedIp6Address(uint64_t a1, uint64_t a2)
{
  v3 = ot::AsCoreType<otIp6Address>(a2);
  v2 = ot::AsCoreType<otIp4Address>(a1);
  ot::Ip6::Address::SetToIp4Mapped(v3, v2);
}

uint64_t otIp4AddressFromString(const char *a1, uint64_t a2)
{
  if (!a1)
  {
    __assert_rtn("otIp4AddressFromString", "nat64_api.cpp", 155, "(aString) != nullptr");
  }

  v2 = ot::AsCoreType<otIp4Address>(a2);
  return ot::Ip4::Address::FromString(v2, a1, 0);
}

uint64_t otNat64SynthesizeIp6Address(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::NetworkData::Leader>(v3);
  if (ot::NetworkData::Leader::GetPreferredNat64Prefix(v4, v9))
  {
    return 13;
  }

  else
  {
    v8 = ot::AsCoreType<otIp6Address>(v11);
    Prefix = ot::NetworkData::ExternalRouteConfig::GetPrefix(v9);
    v5 = ot::AsCoreType<otIp4Address>(v12);
    ot::Ip6::Address::SynthesizeFromIp4Address(v8, Prefix, v5);
  }

  return v10;
}

uint64_t ot::NetworkData::ExternalRouteConfig::GetPrefix(ot::NetworkData::ExternalRouteConfig *this)
{
  return ot::AsCoreType<otIp6Prefix>(this);
}

{
  return ot::AsCoreType<otIp6Prefix>(this);
}

{
  return ot::NetworkData::ExternalRouteConfig::GetPrefix(this);
}

{
  return ot::NetworkData::ExternalRouteConfig::GetPrefix(this);
}

ot::StringWriter *otIp4AddressToString(uint64_t a1, char *a2, __int16 a3)
{
  if (!a2)
  {
    __assert_rtn("otIp4AddressToString", "nat64_api.cpp", 174, "(aBuffer) != nullptr");
  }

  v3 = ot::AsCoreType<otIp4Address>(a1);
  return ot::Ip4::Address::ToString(v3, a2, a3);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otIp4Cidr>(uint64_t a1)
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

ot::StringWriter *otIp4CidrToString(uint64_t a1, char *a2, __int16 a3)
{
  if (!a2)
  {
    __assert_rtn("otIp4CidrToString", "nat64_api.cpp", 183, "(aBuffer) != nullptr");
  }

  v3 = ot::AsCoreType<otIp4Cidr>(a1);
  return ot::Ip4::Cidr::ToString(v3, a2, a3);
}

uint64_t ot::MeshCoP::DatasetManager::DatasetManager(uint64_t a1, ot::Instance *a2, char a3, void (*a4)(ot::Timer *))
{
  ot::InstanceLocator::InstanceLocator(a1, a2);
  *a1 = a3;
  *(a1 + 1) &= ~1u;
  *(a1 + 1) &= ~2u;
  ot::Time::Time((a1 + 4), 0);
  ot::TimerMicro::TimerMicro((a1 + 24), a2, a4);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback((a1 + 48));
  ot::MeshCoP::Dataset::Dataset((a1 + 64));
  ot::MeshCoP::Timestamp::SetToInvalid(a1 + 8);
  ot::MeshCoP::Timestamp::SetToInvalid(a1 + 16);
  ot::MeshCoP::Dataset::Clear(a1 + 64);
  return a1;
}

{
  ot::MeshCoP::DatasetManager::DatasetManager(a1, a2, a3, a4);
  return a1;
}

uint64_t ot::MeshCoP::PendingDatasetManager::HandleDelayTimer(ot::MeshCoP::PendingDatasetManager *this)
{
  v16[1] = this;
  ot::MeshCoP::Dataset::Dataset(v19);
  if (!ot::MeshCoP::DatasetManager::Read(this, v19))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("DatasetManager", "Pending delay timer expired", v1, v2, v3, v4, v5, v6, v13);
    if (!ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(v19, v16))
    {
      active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
      Timestamp = ot::MeshCoP::DatasetManager::GetTimestamp(active);
      if (ot::MeshCoP::Timestamp::operator>(v16, Timestamp, v9))
      {
        v15 = 1;
      }

      else
      {
        if (ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(v19, &v18))
        {
          return ot::MeshCoP::DatasetManager::Clear(this);
        }

        v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
        ot::KeyManager::GetNetworkKey(v10, &v17);
        v15 = ot::Unequatable<ot::NetworkKey>::operator!=(&v17, &v18);
      }

      if (v15)
      {
        ot::MeshCoP::Dataset::RemoveTlv(v19, 0x33u);
        ot::MeshCoP::Dataset::RemoveTlv(v19, 0x34u);
        v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
        ot::MeshCoP::DatasetManager::Save(v11, v19, 1);
        IgnoreError();
      }
    }
  }

  return ot::MeshCoP::DatasetManager::Clear(this);
}

uint64_t ot::MeshCoP::DatasetManager::Restore(ot::MeshCoP::DatasetManager *this)
{
  ot::MeshCoP::Dataset::Dataset(v4);
  v3 = ot::MeshCoP::DatasetManager::Read(this, v4);
  ot::MeshCoP::DatasetManager::Restore(this, v4);
  return v3;
}

uint64_t ot::MeshCoP::DatasetManager::Read(ot::MeshCoP::DatasetManager *this, ot::MeshCoP::Dataset *a2)
{
  ot::MeshCoP::Dataset::Clear(a2);
  if (*(this + 318))
  {
    memcpy(a2, this + 64, 0x104uLL);
    v9 = 0;
    if (*this)
    {
      ot::MeshCoP::Dataset::FindTlv(a2, 0x34u);
      v8 = v3;
      if (!v3)
      {
        return v9;
      }

      v4 = ot::MeshCoP::DelayTimerTlv::CalculateRemainingDelay(v3, *(this + 1));
      v2 = ot::Tlv::WriteValueAs<ot::MeshCoP::DelayTimerTlv>(v8, v4, v5);
    }

    else
    {
      ot::MeshCoP::Dataset::RemoveTlv(a2, 0x33u);
      v2 = ot::MeshCoP::Dataset::RemoveTlv(a2, 0x34u);
    }

    *(a2 + 64) = ot::TimerMilli::GetNow(v2);
    return v9;
  }

  return 23;
}

uint64_t ot::MeshCoP::DatasetManager::Restore(ot::MeshCoP::DatasetManager *this, const ot::MeshCoP::Dataset *a2)
{
  ot::TimerMilli::Stop((this + 24));
  ot::MeshCoP::Timestamp::SetToInvalid(this + 16);
  ot::MeshCoP::Timestamp::SetToInvalid(this + 8);
  result = ot::MeshCoP::Dataset::GetLength(a2);
  if (result)
  {
    *(this + 1) = *(this + 1) & 0xFE | 1;
    if (!ot::MeshCoP::Dataset::ReadTimestamp(a2, *this, this + 1))
    {
      *(this + 2) = *(this + 1);
    }

    if (ot::MeshCoP::DatasetManager::IsActiveDataset(this))
    {
      ot::MeshCoP::DatasetManager::ApplyConfiguration(this, a2);
      IgnoreError();
    }

    return ot::MeshCoP::DatasetManager::SignalDatasetChange(this);
  }

  return result;
}

BOOL ot::MeshCoP::DatasetManager::IsActiveDataset(ot::MeshCoP::DatasetManager *this)
{
  return *this == 0;
}

{
  return ot::MeshCoP::DatasetManager::IsActiveDataset(this);
}

uint64_t ot::MeshCoP::DatasetManager::ApplyConfiguration(ot::MeshCoP::DatasetManager *this, const ot::MeshCoP::Dataset *a2)
{
  v53 = this;
  v52 = a2;
  v51 = ot::MeshCoP::Dataset::ValidateTlvs(a2);
  if (!v51)
  {
    ot::MeshCoP::Dataset::GetTlvsStart(v52);
    for (i = v2; ; i = v32)
    {
      v45 = i;
      if (v45 >= ot::MeshCoP::Dataset::GetTlvsEnd(v52))
      {
        break;
      }

      Type = ot::MeshCoP::Tlv::GetType(i);
      if (Type)
      {
        switch(Type)
        {
          case 1:
            v40 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
            v18 = ot::Tlv::ReadValueAs<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(i, v17);
            ot::Mac::Mac::SetPanId(v40, v18);
            break;
          case 2:
            v39 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ExtendedPanIdManager>(this);
            v19 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)2,ot::MeshCoP::ExtendedPanId>>(i);
            ot::MeshCoP::ExtendedPanIdManager::SetExtPanId(v39, v19);
            break;
          case 3:
            v38 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::NetworkNameManager>(this);
            ot::As<ot::MeshCoP::NetworkNameTlv>();
            v48[0] = ot::MeshCoP::NetworkNameTlv::GetNetworkName(v20);
            v48[1] = v21;
            ot::MeshCoP::NetworkNameManager::SetNetworkName(v38, v48);
            IgnoreError();
            break;
          case 4:
            v36 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
            v23 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)4,ot::Pskc>>(i);
            ot::KeyManager::SetPskc(v36, v23);
            break;
          case 5:
            v37 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
            v22 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(i);
            ot::KeyManager::SetNetworkKey(v37, v22);
            break;
          case 7:
            v35 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
            v24 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(i);
            ot::Mle::Mle::SetMeshLocalPrefix(v35, v24);
            break;
          case 12:
            v34 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
            ot::As<ot::MeshCoP::SecurityPolicyTlv>();
            SecurityPolicy = ot::MeshCoP::SecurityPolicyTlv::GetSecurityPolicy(v25);
            ot::KeyManager::SetSecurityPolicy(v34, &SecurityPolicy, v26, v27, v28, v29, v30, v31);
            break;
          case 74:
            v41 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
            ot::As<ot::MeshCoP::WakeupChannelTlv>();
            Channel = ot::MeshCoP::WakeupChannelTlv::GetChannel(v15);
            ot::Mac::Mac::SetWorChannel(v41, Channel);
            break;
        }
      }

      else
      {
        v3 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(i);
        v49 = ot::Mle::ChannelTlvValue::GetChannel(v3);
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        v51 = ot::Mac::Mac::SetPanChannel(v4, v49);
        if (v51)
        {
          v43 = v49;
          ot::ErrorToString(v51);
          ot::Logger::LogAtLevel<(ot::LogLevel)1>("DatasetManager", "Failed to set channel to %u when applying dataset: %s", v5, v6, v7, v8, v9, v10, v43);
        }

        ot::MeshCoP::Dataset::FindTlv(v52, 0x4Au);
        if (!v11)
        {
          v42 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
          v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
          SupportedChannelMask = ot::Mac::Mac::GetSupportedChannelMask(v12);
          WakeupChannel = ot::Mac::ChannelMask::GetWakeupChannel(SupportedChannelMask);
          ot::Mac::Mac::SetWorChannel(v42, WakeupChannel);
        }
      }

      ot::MeshCoP::Tlv::GetNext(i);
    }
  }

  return v51;
}

uint64_t ot::MeshCoP::DatasetManager::SignalDatasetChange(ot::MeshCoP::DatasetManager *this)
{
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
  if (ot::MeshCoP::DatasetManager::IsActiveDataset(this))
  {
    v1 = 0x10000000;
  }

  else
  {
    v1 = 0x20000000;
  }

  return ot::Notifier::Signal(v4, v1);
}

uint64_t ot::Tlv::WriteValueAs<ot::MeshCoP::DelayTimerTlv>(uint64_t a1, unsigned int a2, unsigned __int8 *a3)
{
  return ot::BigEndian::Write<unsigned int>(a2, (a1 + 2), a3);
}

{
  return ot::Tlv::WriteValueAs<ot::MeshCoP::DelayTimerTlv>(a1, a2, a3);
}

uint64_t ot::MeshCoP::DatasetManager::Read(ot::MeshCoP::DatasetManager *this, ot::MeshCoP::Dataset::Info *a2)
{
  ot::MeshCoP::Dataset::Dataset(v6);
  ot::Clearable<ot::MeshCoP::Dataset::Info>::Clear(a2);
  v4 = ot::MeshCoP::DatasetManager::Read(this, v6);
  if (!v4)
  {
    ot::MeshCoP::Dataset::ConvertTo(v6, a2);
  }

  return v4;
}

uint64_t ot::MeshCoP::DatasetManager::Read(ot::MeshCoP::DatasetManager *a1, _BYTE *a2)
{
  ot::MeshCoP::Dataset::Dataset(v6);
  ot::ClearAllBytes<otOperationalDatasetTlvs>(a2);
  v4 = ot::MeshCoP::DatasetManager::Read(a1, v6);
  if (!v4)
  {
    ot::MeshCoP::Dataset::ConvertTo(v6, a2);
  }

  return v4;
}

void *ot::ClearAllBytes<otOperationalDatasetTlvs>(void *a1)
{
  return memset(a1, 0, 0xFFuLL);
}

{
  return ot::ClearAllBytes<otOperationalDatasetTlvs>(a1);
}

uint64_t ot::MeshCoP::DatasetManager::ApplyConfiguration(ot::MeshCoP::DatasetManager *this)
{
  ot::MeshCoP::Dataset::Dataset(v4);
  v3 = ot::MeshCoP::DatasetManager::Read(this, v4);
  if (!v3)
  {
    return ot::MeshCoP::DatasetManager::ApplyConfiguration(this, v4);
  }

  return v3;
}

uint64_t ot::MeshCoP::DatasetManager::Clear(ot::MeshCoP::DatasetManager *this)
{
  ot::MeshCoP::Timestamp::SetToInvalid(this + 16);
  ot::MeshCoP::Timestamp::SetToInvalid(this + 8);
  *(this + 1) &= ~1u;
  ot::MeshCoP::Dataset::Clear(this + 64);
  ot::TimerMilli::Stop((this + 24));
  if (ot::MeshCoP::DatasetManager::IsPendingDataset(this))
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
    ot::TimerMilli::Stop((v1 + 328));
  }

  return ot::MeshCoP::DatasetManager::SignalDatasetChange(this);
}

BOOL ot::MeshCoP::DatasetManager::IsPendingDataset(ot::MeshCoP::DatasetManager *this)
{
  return *this == 1;
}

{
  return ot::MeshCoP::DatasetManager::IsPendingDataset(this);
}

uint64_t ot::MeshCoP::DatasetManager::Save(ot::MeshCoP::DatasetManager *this, const ot::MeshCoP::Dataset *a2, char a3)
{
  v8 = 0;
  if (ot::MeshCoP::Dataset::ReadTimestamp(a2, *this, this + 2) || !ot::MeshCoP::DatasetManager::IsActiveDataset(this) || (v8 = ot::MeshCoP::DatasetManager::ApplyConfiguration(this, a2)) == 0)
  {
    v7 = ot::MeshCoP::Timestamp::Compare((this + 16), (this + 8), v3);
    if (v7 > 0 || (a3 & 1) != 0)
    {
      ot::MeshCoP::DatasetManager::LocalSave(this, a2);
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
      ot::NetworkData::Leader::IncrementVersionAndStableVersion(v4);
    }

    else if (v7 < 0)
    {
      ot::TimerMilli::Start((this + 24), 0x1388u);
    }

    ot::MeshCoP::DatasetManager::SignalDatasetChange(this);
  }

  return v8;
}

void ot::MeshCoP::DatasetManager::LocalSave(ot::MeshCoP::DatasetManager *this, const ot::MeshCoP::Dataset *a2)
{
  if (ot::MeshCoP::Dataset::GetLength(a2))
  {
    memcpy(this + 64, a2, 0x104uLL);
    *(this + 1) = *(this + 1) & 0xFE | 1;
    v9 = ot::MeshCoP::Dataset::TypeToString(*this);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("DatasetManager", "%s dataset set", v10, v11, v12, v13, v14, v15, v9);
  }

  else
  {
    ot::MeshCoP::Dataset::Clear(this + 64);
    *(this + 1) &= ~1u;
    v2 = ot::MeshCoP::Dataset::TypeToString(*this);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("DatasetManager", "%s dataset deleted", v3, v4, v5, v6, v7, v8, v2);
  }

  Timestamp = ot::MeshCoP::Dataset::ReadTimestamp(a2, *this, this + 1);
  if (Timestamp)
  {
    Timestamp = ot::MeshCoP::Timestamp::SetToInvalid(this + 8);
  }

  *(this + 1) = ot::TimerMilli::GetNow(Timestamp);
  if (ot::MeshCoP::DatasetManager::IsPendingDataset(this))
  {
    v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
    ot::MeshCoP::PendingDatasetManager::StartDelayTimer(v17, a2);
  }
}

uint64_t ot::MeshCoP::DatasetManager::SaveLocal(ot::MeshCoP::DatasetManager *this, const ot::MeshCoP::Dataset::Info *a2)
{
  ot::MeshCoP::Dataset::Dataset(v5);
  ot::MeshCoP::Dataset::SetFrom(v5, a2);
  return ot::MeshCoP::DatasetManager::SaveLocal(this, v5);
}

uint64_t ot::MeshCoP::DatasetManager::SaveLocal(ot::MeshCoP::DatasetManager *this, const ot::MeshCoP::Dataset *a2)
{
  ot::MeshCoP::DatasetManager::LocalSave(this, a2);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  Role = ot::Mle::Mle::GetRole(v2);
  if (Role)
  {
    if (Role == 2 || Role == 3)
    {
      ot::MeshCoP::DatasetManager::SyncLocalWithLeader(this, a2);
    }

    else if (Role == 4)
    {
      ot::MeshCoP::DatasetManager::Restore(this, a2);
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
      ot::NetworkData::Leader::IncrementVersionAndStableVersion(v3);
    }
  }

  else
  {
    ot::MeshCoP::DatasetManager::Restore(this, a2);
  }

  return ot::MeshCoP::DatasetManager::SignalDatasetChange(this);
}

uint64_t ot::MeshCoP::DatasetManager::SaveLocal(ot::MeshCoP::DatasetManager *a1, uint64_t a2)
{
  v4 = 7;
  ot::MeshCoP::Dataset::Dataset(v6);
  if (!ot::MeshCoP::Dataset::SetFrom(v6, a2) && !ot::MeshCoP::Dataset::ValidateTlvs(v6))
  {
    ot::MeshCoP::DatasetManager::SaveLocal(a1, v6);
    return 0;
  }

  return v4;
}

void ot::MeshCoP::DatasetManager::SyncLocalWithLeader(ot::MeshCoP::DatasetManager *this, const ot::MeshCoP::Dataset *a2)
{
  v11 = this;
  v10 = a2;
  v9 = 0;
  if ((*(this + 1) & 2) != 0)
  {
    v9 = 5;
  }

  else
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    if (ot::Mle::Mle::IsChild(v2) || (v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this), ot::Mle::Mle::IsRouter(v4)))
    {
      if (ot::MeshCoP::Timestamp::operator<((this + 16), (this + 8), v3))
      {
        if (ot::MeshCoP::DatasetManager::IsActiveDataset(this) && (ot::MeshCoP::Dataset::Dataset(v12), v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this), ot::MeshCoP::DatasetManager::Read(v5, v12), IgnoreError(), !ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(v12, &v8)) && ot::MeshCoP::Timestamp::operator==(&v8, (this + 8), v6))
        {
          v9 = 13;
        }

        else
        {
          v9 = ot::MeshCoP::DatasetManager::SendSetRequest(this, v10);
        }
      }

      else
      {
        v9 = 24;
      }
    }

    else
    {
      v9 = 13;
    }
  }

  if (v9 == 3)
  {
    ot::TimerMilli::Start((this + 24), 0x1388u);
  }

  if (v9 != 24)
  {
    ot::Logger::LogOnError("DatasetManager", v9, "send Dataset set to leader");
  }
}

void ot::MeshCoP::PendingDatasetManager::StartDelayTimer(ot::MeshCoP::PendingDatasetManager *this, const ot::MeshCoP::Dataset *a2)
{
  v13 = this;
  v12 = a2;
  v11 = 0;
  ot::TimerMilli::Stop((this + 328));
  if (!ot::MeshCoP::Dataset::Read<ot::MeshCoP::DelayTimerTlv>(v12, &v11))
  {
    v11 = ot::Min<unsigned int>(v11, 0xF731400u);
    UpdateTime = ot::MeshCoP::Dataset::GetUpdateTime(v12);
    ot::TimerMilli::StartAt((this + 328), UpdateTime, v11);
    v2 = ot::ToUlong(v11);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("DatasetManager", "delay timer started %lu", v3, v4, v5, v6, v7, v8, v2);
  }
}

uint64_t ot::MeshCoP::DatasetManager::GetChannelMask(ot::MeshCoP::DatasetManager *this, ot::Mac::ChannelMask *a2)
{
  v14 = this;
  v13 = a2;
  v11 = 0;
  v10 = 0;
  ot::MeshCoP::Dataset::Dataset(v15);
  v12 = ot::MeshCoP::DatasetManager::Read(this, v15);
  if (!v12)
  {
    ot::MeshCoP::Dataset::FindTlv(v15, 0x35u);
    ot::As<ot::MeshCoP::ChannelMaskTlv>();
    v11 = v2;
    if (v2)
    {
      if (!ot::MeshCoP::ChannelMaskTlv::ReadChannelMask(v11, &v10))
      {
        v8 = v13;
        v7 = v10;
        v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        SupportedChannelMask = ot::Mac::Mac::GetSupportedChannelMask(v3);
        Mask = ot::Mac::ChannelMask::GetMask(SupportedChannelMask);
        ot::Mac::ChannelMask::SetMask(v8, v7 & Mask);
        if (ot::Mac::ChannelMask::IsEmpty(v13))
        {
          return 23;
        }
      }
    }

    else
    {
      return 23;
    }
  }

  return v12;
}

void ot::MeshCoP::DatasetManager::HandleTimer(ot::MeshCoP::DatasetManager *this)
{
  ot::MeshCoP::Dataset::Dataset(v2);
  if (!ot::MeshCoP::DatasetManager::Read(this, v2))
  {
    ot::MeshCoP::DatasetManager::SyncLocalWithLeader(this, v2);
  }
}

BOOL ot::MeshCoP::Timestamp::operator<(ot::MeshCoP::Timestamp *a1, const ot::MeshCoP::Timestamp *a2, const ot::MeshCoP::Timestamp *a3)
{
  return ot::MeshCoP::Timestamp::Compare(a1, a2, a3) < 0;
}

{
  return ot::MeshCoP::Timestamp::operator<(a1, a2, a3);
}

uint64_t ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(unsigned __int8 *a1, void *a2)
{
  ot::MeshCoP::Dataset::FindTlv(a1, 0xEu);
  if (v2)
  {
    *a2 = *ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(v2);
    return 0;
  }

  else
  {
    return 23;
  }
}

{
  return ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(a1, a2);
}

BOOL ot::MeshCoP::Timestamp::operator==(ot::MeshCoP::Timestamp *a1, const ot::MeshCoP::Timestamp *a2, const ot::MeshCoP::Timestamp *a3)
{
  return ot::MeshCoP::Timestamp::Compare(a1, a2, a3) == 0;
}

{
  return ot::MeshCoP::Timestamp::operator==(a1, a2, a3);
}

uint64_t ot::MeshCoP::DatasetManager::SendSetRequest(ot::MeshCoP::DatasetManager *this, const ot::MeshCoP::Dataset *a2)
{
  v22 = this;
  v21 = a2;
  appended = 0;
  v19 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::Tmf::MessageInfo::MessageInfo(v18, Instance);
  if ((*(this + 1) & 2) != 0)
  {
    appended = 24;
  }

  else
  {
    v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
    if (ot::MeshCoP::DatasetManager::IsActiveDataset(this))
    {
      v3 = 13;
    }

    else
    {
      v3 = 28;
    }

    v19 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v16, v3);
    if (v19)
    {
      v15 = v19;
      ot::MeshCoP::Dataset::GetBytes(v21);
      v14 = v4;
      Length = ot::MeshCoP::Dataset::GetLength(v21);
      appended = ot::Message::AppendBytes(v15, v14, Length);
      if (!appended)
      {
        ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderAloc(v18);
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
        appended = ot::Coap::CoapBase::SendMessage(v6, v19, v18, ot::MeshCoP::DatasetManager::HandleMgmtSetResponse, this);
        if (!appended)
        {
          *(this + 1) = *(this + 1) & 0xFD | 2;
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("DatasetManager", "Sent dataset set request to leader", v7, v8, v9, v10, v11, v12, v14);
        }
      }
    }

    else
    {
      appended = 3;
    }
  }

  if (appended && v19)
  {
    ot::Message::Free(v19);
  }

  return appended;
}

uint64_t ot::MeshCoP::DatasetManager::HandleMgmtSetResponse(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  ot::AsCoapMessagePtr();
  v11 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  return ot::MeshCoP::DatasetManager::HandleMgmtSetResponse(a1, v11, v5, a4, v6, v7, v8, v9);
}

uint64_t ot::MeshCoP::DatasetManager::HandleMgmtSetResponse(uint64_t a1, const ot::Message *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18[1] = a4;
  v17 = 0;
  v18[0] = a4;
  if (!a4)
  {
    if (!ot::Tlv::Find<ot::MeshCoP::StateTlv>(v20, &v17) && v17)
    {
      if (v17 == 255)
      {
        v18[0] = 37;
      }
    }

    else
    {
      v18[0] = 6;
    }
  }

  if (v18[0])
  {
    v15 = ot::ErrorToString(v18[0]);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("DatasetManager", "MGMT_SET finished: %s", v8, v9, v10, v11, v12, v13, v15);
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("DatasetManager", "MGMT_SET finished: %s", a3, a4, a5, a6, a7, a8, "Accepted");
  }

  *(a1 + 1) &= ~2u;
  ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::InvokeAndClearIfSet<otError&>((a1 + 48), v18);
  return ot::TimerMilli::Start((a1 + 24), 0x1388u);
}

void *ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::InvokeAndClearIfSet<otError&>(void *a1, unsigned int *a2)
{
  v5 = a1;
  v4 = a2;
  v3 = *a1;
  ot::CallbackBase<void (*)(otError,void *)>::Clear(a1);
  return ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&>(&v3, v4);
}

{
  return ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::InvokeAndClearIfSet<otError&>(a1, a2);
}

void ot::MeshCoP::DatasetManager::HandleGet(ot::MeshCoP::DatasetManager *this, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v16 = 0;
  Request = ot::MeshCoP::DatasetManager::ProcessGetRequest(this, a2, 0);
  if (Request)
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
    v16 = ot::Coap::CoapBase::SendMessage(v3, Request, a3);
    if (!v16)
    {
      IsActiveDataset = ot::MeshCoP::DatasetManager::IsActiveDataset(this);
      v5 = "active";
      if (!IsActiveDataset)
      {
        v5 = "pending";
      }

      v13 = v5;
      PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(a3);
      ot::Ip6::Address::ToString(PeerAddr, v18);
      ot::String<(unsigned short)40>::AsCString(v18);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("DatasetManager", "sent %s dataset get response to %s", v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (v16)
  {
    if (Request)
    {
      ot::Message::Free(Request);
    }
  }
}

ot::Message *ot::MeshCoP::DatasetManager::ProcessGetRequest(ot::MeshCoP::DatasetManager *a1, ot::Tlv *a2, char a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = 0;
  v16 = 0;
  ot::MeshCoP::Dataset::Dataset(v22);
  ot::MeshCoP::DatasetManager::TlvList::TlvList(v21);
  if (!ot::Tlv::FindTlvValueOffsetRange(v19, 0xD, &v15, v3))
  {
    while (!ot::OffsetRange::IsEmpty(&v15))
    {
      v14 = 0;
      ot::Message::Read<unsigned char>(v19, &v15, &v14);
      IgnoreError();
      ot::MeshCoP::DatasetManager::TlvList::Add(v21, v14);
      ot::OffsetRange::AdvanceOffset(&v15, 1u);
    }

    if (!ot::Array<unsigned char,(unsigned short)64,unsigned char>::IsEmpty(v21) && ot::MeshCoP::DatasetManager::IsPendingDataset(a1))
    {
      ot::MeshCoP::DatasetManager::TlvList::Add(v21, 0x34u);
    }
  }

  ot::MeshCoP::DatasetManager::Read(a1, v22);
  IgnoreError();
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  v16 = ot::Coap::CoapBase::NewPriorityResponseMessage(v4, v19);
  if (v16)
  {
    ot::MeshCoP::Dataset::GetTlvsStart(v22);
    for (i = v5; ; i = v7)
    {
      v9 = i;
      if (v9 >= ot::MeshCoP::Dataset::GetTlvsEnd(v22))
      {
        break;
      }

      v12 = 1;
      if (!ot::Array<unsigned char,(unsigned short)64,unsigned char>::IsEmpty(v21))
      {
        Type = ot::MeshCoP::Tlv::GetType(i);
        v12 = ot::Array<unsigned char,(unsigned short)64,unsigned char>::Contains(v21, &Type);
      }

      if (!v18 && ot::MeshCoP::Tlv::GetType(i) == 5)
      {
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(a1);
        if ((*(ot::KeyManager::GetSecurityPolicy(v6) + 2) & 1) == 0)
        {
          v12 = 0;
        }
      }

      if (v12)
      {
        v17 = ot::Tlv::AppendTo(i, v16);
        if (v17)
        {
          break;
        }
      }

      ot::MeshCoP::Tlv::GetNext(i);
    }
  }

  else
  {
    v17 = 3;
  }

  if (v17 && v16)
  {
    ot::Message::Free(v16);
    return 0;
  }

  return v16;
}

ot::MeshCoP::DatasetManager::TlvList *ot::MeshCoP::DatasetManager::TlvList::TlvList(ot::MeshCoP::DatasetManager::TlvList *this)
{
  ot::MeshCoP::DatasetManager::TlvList::TlvList(this);
  return this;
}

{
  ot::Array<unsigned char,(unsigned short)64,unsigned char>::Array(this);
  return this;
}

uint64_t ot::Message::Read<unsigned char>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 1u);
}

{
  return ot::Message::Read<unsigned char>(a1, a2, a3);
}

void ot::MeshCoP::DatasetManager::TlvList::Add(ot::MeshCoP::DatasetManager::TlvList *this, unsigned __int8 a2)
{
  v4 = this;
  v3 = a2;
  if (!ot::Array<unsigned char,(unsigned short)64,unsigned char>::Contains(this, &v3))
  {
    ot::Array<unsigned char,(unsigned short)64,unsigned char>::PushBack(this, &v3);
    IgnoreError();
  }
}

BOOL ot::Array<unsigned char,(unsigned short)64,unsigned char>::IsEmpty(uint64_t a1)
{
  return *(a1 + 64) == 0;
}

{
  return ot::Array<unsigned char,(unsigned short)64,unsigned char>::IsEmpty(a1);
}

BOOL ot::Array<unsigned char,(unsigned short)64,unsigned char>::Contains(uint64_t a1, unsigned __int8 *a2)
{
  return ot::Array<unsigned char,(unsigned short)64,unsigned char>::Find(a1, a2) != 0;
}

{
  return ot::Array<unsigned char,(unsigned short)64,unsigned char>::Contains(a1, a2);
}

uint64_t ot::KeyManager::GetSecurityPolicy(ot::KeyManager *this)
{
  return this + 140;
}

{
  return ot::KeyManager::GetSecurityPolicy(this);
}

uint64_t ot::MeshCoP::DatasetManager::SendSetRequest(ot::InstanceLocator *a1, const ot::MeshCoP::Dataset::Info *a2, const unsigned __int8 *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  ot::MeshCoP::Dataset::Dataset(v17);
  ot::MeshCoP::Dataset::SetFrom(v17, a2);
  appended = ot::MeshCoP::Dataset::AppendTlvsFrom(v17, a3, a4);
  if (!appended)
  {
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(a1);
    if (!ot::MeshCoP::Commissioner::IsActive(v6) || ot::MeshCoP::Dataset::ContainsTlv(v17, 0xBu) || (v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Commissioner>(a1), SessionId = ot::MeshCoP::Commissioner::GetSessionId(v7), (appended = ot::MeshCoP::Dataset::Write<ot::MeshCoP::CommissionerSessionIdTlv>(v17, SessionId)) == 0))
    {
      appended = ot::MeshCoP::DatasetManager::SendSetRequest(a1, v17);
      if (!appended)
      {
        ot::CallbackBase<void (*)(otError,void *)>::Set(a1 + 6, a5, a6);
      }
    }
  }

  return appended;
}

uint64_t ot::MeshCoP::Dataset::Write<ot::MeshCoP::CommissionerSessionIdTlv>(uint64_t a1, unsigned __int16 a2)
{
  v5 = a1;
  v4[1] = a2;
  v4[0] = ot::BigEndian::HostSwap<unsigned short>(a2);
  return ot::MeshCoP::Dataset::WriteTlv(a1, 11, v4, 2u);
}

{
  return ot::MeshCoP::Dataset::Write<ot::MeshCoP::CommissionerSessionIdTlv>(a1, a2);
}

void *ot::CallbackBase<void (*)(otError,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otError,void *)>::Set(result, a2, a3);
}

uint64_t ot::MeshCoP::DatasetManager::SendGetRequest(ot::InstanceLocator *a1, _BYTE *a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = a4;
  v27 = a5;
  appended = 0;
  v25 = 0;
  Instance = ot::InstanceLocator::GetInstance(a1);
  ot::Tmf::MessageInfo::MessageInfo(v24, Instance);
  ot::MeshCoP::DatasetManager::TlvList::TlvList(v32);
  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)0>(v30))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v32, 0xEu);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)1>(v30))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v32, 0x33u);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)2>(v30))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v32, 5u);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)3>(v30))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v32, 3u);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)4>(v30))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v32, 2u);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)5>(v30))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v32, 7u);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)6>(v30))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v32, 0x34u);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)7>(v30))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v32, 1u);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)8>(v30))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v32, 0);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)9>(v30))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v32, 4u);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)10>(v30))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v32, 0xCu);
  }

  if (ot::MeshCoP::Dataset::Components::IsPresent<(ot::MeshCoP::Dataset::Component)11>(v30))
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v32, 0x35u);
  }

  for (i = 0; i < v28; ++i)
  {
    ot::MeshCoP::DatasetManager::TlvList::Add(v32, *(v29 + i));
  }

  v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  if (ot::MeshCoP::DatasetManager::IsActiveDataset(a1))
  {
    v6 = 11;
  }

  else
  {
    v6 = 26;
  }

  v25 = ot::Coap::CoapBase::NewPriorityConfirmablePostMessage(v21, v6);
  if (v25)
  {
    if (ot::Array<unsigned char,(unsigned short)64,unsigned char>::IsEmpty(v32) || (v20 = v25, ot::Array<unsigned char,(unsigned short)64,unsigned char>::GetArrayBuffer(), v19 = v7, Length = ot::Array<unsigned char,(unsigned short)64,unsigned char>::GetLength(v32), (appended = ot::Tlv::AppendTlv(v20, 0xD, v19, Length)) == 0))
    {
      ot::Tmf::MessageInfo::SetSockAddrToRlocPeerAddrToLeaderAloc(v24);
      if (v27)
      {
        v9 = ot::AsCoreType<otIp6Address>(v27);
        ot::Ip6::MessageInfo::SetPeerAddr(v24, v9);
      }

      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
      appended = ot::Coap::CoapBase::SendMessage(v10, v25, v24);
      if (!appended)
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("DatasetManager", "sent dataset get request", v11, v12, v13, v14, v15, v16, v18);
      }
    }
  }

  else
  {
    appended = 3;
  }

  if (appended && v25)
  {
    ot::Message::Free(v25);
  }

  return appended;
}

void ot::Array<unsigned char,(unsigned short)64,unsigned char>::GetArrayBuffer()
{
  ;
}

{
  ot::Array<unsigned char,(unsigned short)64,unsigned char>::GetArrayBuffer();
}

uint64_t ot::Array<unsigned char,(unsigned short)64,unsigned char>::GetLength(uint64_t a1)
{
  return *(a1 + 64);
}

{
  return ot::Array<unsigned char,(unsigned short)64,unsigned char>::GetLength(a1);
}

uint64_t ot::Array<unsigned char,(unsigned short)64,unsigned char>::PushBack(uint64_t a1, char *a2)
{
  if (ot::Array<unsigned char,(unsigned short)64,unsigned char>::IsFull(a1))
  {
    return 3;
  }

  else
  {
    v2 = *a2;
    v3 = (*(a1 + 64))++;
    *(a1 + v3) = v2;
    return 0;
  }
}

{
  return ot::Array<unsigned char,(unsigned short)64,unsigned char>::PushBack(a1, a2);
}

ot::MeshCoP::ActiveDatasetManager *ot::MeshCoP::ActiveDatasetManager::ActiveDatasetManager(ot::MeshCoP::ActiveDatasetManager *this, ot::Instance *a2)
{
  ot::MeshCoP::DatasetManager::DatasetManager(this, a2, 0, ot::MeshCoP::ActiveDatasetManager::HandleTimer);
  return this;
}

{
  ot::MeshCoP::ActiveDatasetManager::ActiveDatasetManager(this, a2);
  return this;
}

BOOL ot::MeshCoP::ActiveDatasetManager::IsPartiallyComplete(ot::MeshCoP::ActiveDatasetManager *this)
{
  LOBYTE(v2) = 0;
  if (*(this + 1))
  {
    return !ot::MeshCoP::Timestamp::IsValid((this + 16));
  }

  return v2;
}

BOOL ot::MeshCoP::ActiveDatasetManager::IsComplete(ot::MeshCoP::ActiveDatasetManager *this)
{
  v2 = 0;
  if (*(this + 1))
  {
    return ot::MeshCoP::Timestamp::IsValid((this + 16));
  }

  return v2;
}

uint64_t ot::MeshCoP::ActiveDatasetManager::IsCommissioned(ot::MeshCoP::ActiveDatasetManager *this)
{
  ot::MeshCoP::Dataset::Dataset(v4);
  v3 = 0;
  if (!ot::MeshCoP::DatasetManager::Read(this, v4))
  {
    v3 = ot::MeshCoP::Dataset::ContainsAllTlvs(v4, &ot::MeshCoP::ActiveDatasetManager::IsCommissioned(void)const::kRequiredTlvs, 5u);
  }

  return v3 & 1;
}

void ot::MeshCoP::ActiveDatasetManager::HandleTimer(ot::MeshCoP::ActiveDatasetManager *this)
{
  ot::MeshCoP::DatasetManager::HandleTimer(this);
}

{
  ot::MeshCoP::ActiveDatasetManager::HandleTimer(this);
}

ot::MeshCoP::PendingDatasetManager *ot::MeshCoP::PendingDatasetManager::PendingDatasetManager(ot::MeshCoP::PendingDatasetManager *this, ot::Instance *a2)
{
  ot::MeshCoP::DatasetManager::DatasetManager(this, a2, 1, ot::MeshCoP::PendingDatasetManager::HandleTimer);
  ot::TimerMilliIn<ot::MeshCoP::PendingDatasetManager,&ot::MeshCoP::PendingDatasetManager::HandleDelayTimer>::TimerMilliIn((this + 328), a2);
  return this;
}

{
  ot::MeshCoP::PendingDatasetManager::PendingDatasetManager(this, a2);
  return this;
}

ot::TimerMilli *ot::TimerMilliIn<ot::MeshCoP::PendingDatasetManager,&ot::MeshCoP::PendingDatasetManager::HandleDelayTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::MeshCoP::PendingDatasetManager,&ot::MeshCoP::PendingDatasetManager::HandleDelayTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::MeshCoP::PendingDatasetManager,&ot::MeshCoP::PendingDatasetManager::HandleDelayTimer>::HandleTimer);
  return a1;
}

void ot::MeshCoP::PendingDatasetManager::StartDelayTimer(ot::MeshCoP::PendingDatasetManager *this)
{
  ot::MeshCoP::Dataset::Dataset(v2);
  ot::TimerMilli::Stop((this + 328));
  if (!ot::MeshCoP::DatasetManager::Read(this, v2))
  {
    ot::MeshCoP::PendingDatasetManager::StartDelayTimer(this, v2);
  }
}

uint64_t ot::MeshCoP::Dataset::Read<ot::MeshCoP::DelayTimerTlv>(unsigned __int8 *a1, _DWORD *a2)
{
  ot::MeshCoP::Dataset::FindTlv(a1, 0x34u);
  if (v2)
  {
    *a2 = ot::Tlv::ReadValueAs<ot::MeshCoP::DelayTimerTlv>(v2, v3);
    return 0;
  }

  else
  {
    return 23;
  }
}

{
  return ot::MeshCoP::Dataset::Read<ot::MeshCoP::DelayTimerTlv>(a1, a2);
}

BOOL ot::MeshCoP::Timestamp::operator>(ot::MeshCoP::Timestamp *a1, const ot::MeshCoP::Timestamp *a2, const ot::MeshCoP::Timestamp *a3)
{
  return ot::MeshCoP::Timestamp::Compare(a1, a2, a3) > 0;
}

{
  return ot::MeshCoP::Timestamp::operator>(a1, a2, a3);
}

uint64_t ot::MeshCoP::DatasetManager::GetTimestamp(ot::MeshCoP::DatasetManager *this)
{
  return this + 16;
}

{
  return ot::MeshCoP::DatasetManager::GetTimestamp(this);
}

uint64_t ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(unsigned __int8 *a1, _OWORD *a2)
{
  ot::MeshCoP::Dataset::FindTlv(a1, 5u);
  if (v2)
  {
    *a2 = *ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(v2);
    return 0;
  }

  else
  {
    return 23;
  }
}

{
  return ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(a1, a2);
}

BOOL ot::Unequatable<ot::NetworkKey>::operator!=(const void *a1, const void *a2)
{
  return !ot::Equatable<ot::NetworkKey>::operator==(a1, a2);
}

{
  return ot::Unequatable<ot::NetworkKey>::operator!=(a1, a2);
}

void ot::MeshCoP::PendingDatasetManager::HandleTimer(ot::MeshCoP::PendingDatasetManager *this)
{
  ot::MeshCoP::DatasetManager::HandleTimer(this);
}

{
  ot::MeshCoP::PendingDatasetManager::HandleTimer(this);
}

uint64_t ot::BigEndian::Write<unsigned int>(unsigned int a1, _BYTE *a2, unsigned __int8 *a3)
{
  return ot::BigEndian::WriteUint32(a1, a2, a3);
}

{
  return ot::BigEndian::Write<unsigned int>(a1, a2, a3);
}

void *ot::CallbackBase<void (*)(otError,void *)>::Clear(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::CallbackBase<void (*)(otError,void *)>::Clear(result);
}

void *ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&>(void *result, unsigned int *a2)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::Invoke<otError&>(result, a2);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&>(result, a2);
}

uint64_t ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::Invoke<otError&>(uint64_t a1, unsigned int *a2)
{
  return (*a1)(*a2, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,void *),(ot::CallbackContextPosition)1>::Invoke<otError&>(a1, a2);
}

unsigned __int8 *ot::Array<unsigned char,(unsigned short)64,unsigned char>::Find(uint64_t a1, unsigned __int8 *a2)
{
  v7 = 0;
  ot::Array<unsigned char,(unsigned short)64,unsigned char>::begin();
  v5 = v2;
  v4 = ot::Array<unsigned char,(unsigned short)64,unsigned char>::end(a1);
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
  return ot::Array<unsigned char,(unsigned short)64,unsigned char>::Find(a1, a2);
}

void ot::Array<unsigned char,(unsigned short)64,unsigned char>::begin()
{
  ;
}

{
  ot::Array<unsigned char,(unsigned short)64,unsigned char>::begin();
}

uint64_t ot::Array<unsigned char,(unsigned short)64,unsigned char>::end(uint64_t a1)
{
  return a1 + *(a1 + 64);
}

{
  return ot::Array<unsigned char,(unsigned short)64,unsigned char>::end(a1);
}

BOOL ot::Array<unsigned char,(unsigned short)64,unsigned char>::IsFull(uint64_t a1)
{
  v2 = *(a1 + 64);
  return v2 == ot::Array<unsigned char,(unsigned short)64,unsigned char>::GetMaxSize();
}

{
  return ot::Array<unsigned char,(unsigned short)64,unsigned char>::IsFull(a1);
}

uint64_t ot::Array<unsigned char,(unsigned short)64,unsigned char>::GetMaxSize()
{
  return 64;
}

{
  return ot::Array<unsigned char,(unsigned short)64,unsigned char>::GetMaxSize();
}

BOOL ot::Equatable<ot::NetworkKey>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 0x10uLL) == 0;
}

{
  return ot::Equatable<ot::NetworkKey>::operator==(a1, a2);
}

uint64_t ot::Ip4::Address::FromString(ot::Ip4::Address *this, const char *a2, unsigned __int8 *a3)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = 46;
  v7 = 6;
  v6 = a2;
  for (i = 0; !ot::StringParseUint8(&v6, (this + i), a3); ++i)
  {
    if (i == 3)
    {
      if (*v6 == v9)
      {
        return 0;
      }

      return v7;
    }

    if (*v6 != 46)
    {
      return v7;
    }

    ++v6;
  }

  return v7;
}

uint64_t ot::Ip4::Address::ExtractFromIp4MappedIp6Address(ot::Ip4::Address *this, const ot::Ip6::Address *a2)
{
  v5 = 0;
  if (ot::Ip6::Address::IsIp4Mapped(a2))
  {
    ot::Ip6::Address::GetBytes(a2);
    ot::Ip4::Address::SetBytes(this, (v2 + 12));
  }

  else
  {
    return 6;
  }

  return v5;
}

_DWORD *ot::Ip4::Address::SetBytes(_DWORD *this, const unsigned __int8 *a2)
{
  *this = *a2;
  return this;
}

{
  return ot::Ip4::Address::SetBytes(this, a2);
}

void ot::Ip4::Address::ExtractFromIp6Address(ot::Ip4::Address *this, unsigned __int8 a2, const ot::Ip6::Address *a3)
{
  if (!ot::Ip6::Prefix::IsValidNat64PrefixLength(a2))
  {
    __assert_rtn("ExtractFromIp6Address", "ip4_types.cpp", 106, "Ip6::Prefix::IsValidNat64PrefixLength(aPrefixLength)");
  }

  v7 = a2 / 8;
  for (i = this; i != (this + 4); i = (i + 1))
  {
    if (v7 == 8)
    {
      ++v7;
    }

    ot::Ip6::Address::GetBytes(a3);
    v3 = v7++;
    *i = *(v4 + v3);
  }
}

uint64_t ot::Ip4::Address::SynthesizeFromCidrAndHost(ot::Ip4::Address *this, const ot::Ip4::Cidr *a2, unsigned int a3)
{
  v5 = *a2;
  v6 = v5 & ot::Ip4::Cidr::SubnetMask(a2);
  v8 = ot::BigEndian::HostSwap32(a3);
  v3 = ot::Ip4::Cidr::HostMask(a2);
  result = v8;
  *this = v6 | v8 & v3;
  return result;
}

uint64_t ot::Ip4::Cidr::SubnetMask(ot::Ip4::Cidr *this)
{
  return ~ot::Ip4::Cidr::HostMask(this);
}

{
  return ot::Ip4::Cidr::SubnetMask(this);
}

uint64_t ot::Ip4::Cidr::HostMask(ot::Ip4::Cidr *this)
{
  return ot::BigEndian::HostSwap32((0xFFFFFFFFLL >> *(this + 4)));
}

{
  return ot::Ip4::Cidr::HostMask(this);
}

ot::StringWriter *ot::Ip4::Address::ToString(ot::Ip4::Address *this, char *a2, __int16 a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  ot::StringWriter::StringWriter(v5, a2, a3);
  return ot::Ip4::Address::ToString(this, v5);
}

uint64_t ot::Ip4::Cidr::FromString(ot::Ip4::Cidr *this, ot *a2)
{
  v10 = this;
  v9 = a2;
  v8 = 47;
  v7 = 32;
  v6 = 6;
  v5 = 0;
  v2 = ot::AsCoreType<otIp4Address>(this);
  if (!ot::Ip4::Address::FromString(v2, v9, 0x2F))
  {
    v5 = ot::StringFind(v9, 0x2F);
    if (v5)
    {
      v5 = (v5 + 1);
      if (!ot::StringParseUint8(&v5, (this + 4), 0x20) && !*v5)
      {
        return 0;
      }
    }
  }

  return v6;
}

ot::StringWriter *ot::Ip4::Cidr::ToString(ot::Ip4::Cidr *this, ot::StringWriter *a2)
{
  v2 = ot::AsCoreType<otIp4Address>(this);
  ot::Ip4::Address::ToString(v2, v7);
  v3 = ot::String<(unsigned short)17>::AsCString(v7);
  return ot::StringWriter::Append(a2, "%s/%d", v3, *(this + 4));
}

ot::StringWriter *ot::Ip4::Cidr::ToString(ot::Ip4::Cidr *this, char *a2, __int16 a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  ot::StringWriter::StringWriter(v5, a2, a3);
  return ot::Ip4::Cidr::ToString(this, v5);
}

uint64_t ot::String<(unsigned short)20>::String(uint64_t a1)
{
  ot::String<(unsigned short)20>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 20);
  return a1;
}

BOOL ot::Ip4::Cidr::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v7 = 0;
  if (a1[4] == a2[4])
  {
    ot::Ip4::Cidr::GetBytes(a1);
    v5 = v2;
    ot::Ip4::Cidr::GetBytes(a2);
    return ot::Ip6::Prefix::MatchLength(v5, v3, 4) >= a1[4];
  }

  return v7;
}

void ot::Ip4::Cidr::GetBytes(ot::Ip4::Cidr *this)
{
  ;
}

{
  ot::Ip4::Cidr::GetBytes(this);
}

uint64_t ot::Ip4::Cidr::Set(uint64_t this, const unsigned __int8 *a2, char a3)
{
  *this = *a2;
  *(this + 4) = a3;
  return this;
}

uint64_t ot::Ip4::Header::ParseFrom(ot::Ip4::Header *this, const ot::Message *a2)
{
  v5 = 6;
  if (!ot::Message::Read<ot::Ip4::Header>(a2, 0, this) && ot::Ip4::Header::IsValid(this))
  {
    TotalLength = ot::Ip4::Header::GetTotalLength(this);
    if (TotalLength == ot::Message::GetLength(a2))
    {
      return 0;
    }
  }

  return v5;
}

uint64_t ot::Message::Read<ot::Ip4::Header>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x14u);
}

{
  return ot::Message::Read<ot::Ip4::Header>(a1, a2, a3);
}

BOOL ot::Ip4::Header::IsValid(ot::Ip4::Header *this)
{
  return ot::Ip4::Header::IsVersion4(this);
}

{
  return ot::Ip4::Header::IsValid(this);
}

uint64_t ot::Ip4::Header::GetTotalLength(ot::Ip4::Header *this)
{
  return ot::BigEndian::HostSwap16(*(this + 1));
}

{
  return ot::Ip4::Header::GetTotalLength(this);
}

BOOL ot::Ip4::Header::IsVersion4(ot::Ip4::Header *this)
{
  return (*this & 0xF0) == 64;
}

{
  return ot::Ip4::Header::IsVersion4(this);
}

uint64_t ot::MeshCoP::DatasetManager::ProcessSetOrReplaceRequest(uint64_t a1, char a2, ot::Message *a3, ot::MeshCoP::Dataset *a4)
{
  v35 = a1;
  v34 = a2;
  v33 = a3;
  v32 = a4;
  v31 = 6;
  ot::MeshCoP::Dataset::Dataset(v39);
  v27 = 0;
  v26 = 0;
  v25 = 0;
  ot::Clearable<ot::MeshCoP::DatasetManager::RequestInfo>::Clear(v32);
  ot::OffsetRange::InitFromMessageOffsetToEnd(v30, v33);
  if (!ot::MeshCoP::Dataset::SetFrom(v39, v33, v30) && !ot::MeshCoP::Dataset::ValidateTlvs(v39) && !ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)14,ot::MeshCoP::Timestamp>>(v39, &v29))
  {
    if (ot::MeshCoP::DatasetManager::IsPendingDataset(a1))
    {
      if (ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(v39, &v24) || !ot::MeshCoP::Timestamp::operator>(&v24, (a1 + 8), v5))
      {
        return v31;
      }
    }

    else if (!ot::MeshCoP::Timestamp::operator>(&v29, (a1 + 8), v4))
    {
      return v31;
    }

    if (!ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(v39, v28))
    {
      Channel = ot::Mle::ChannelTlvValue::GetChannel(v28);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
      if (Channel != ot::Mac::Mac::GetPanChannel(v6))
      {
        *(v32 + 261) = 1;
      }
    }

    if (!ot::MeshCoP::Dataset::Read<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(v39, &v26))
    {
      v20 = v26;
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
      if (v20 != ot::Mac::Mac::GetPanId(v7))
      {
        *(v32 + 261) = 1;
      }
    }

    if (!ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(v39, &v38))
    {
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
      MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v8);
      if (ot::Unequatable<ot::Ip6::NetworkPrefix>::operator!=(&v38, MeshLocalPrefix))
      {
        *(v32 + 261) = 1;
      }
    }

    if (!ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)5,ot::NetworkKey>>(v39, &v37))
    {
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(a1);
      ot::KeyManager::GetNetworkKey(v10, &v36);
      if (ot::Unequatable<ot::NetworkKey>::operator!=(&v37, &v36))
      {
        *(v32 + 261) = 1;
        *(v32 + 262) = 1;
      }
    }

    if (!ot::MeshCoP::DatasetManager::IsPendingDataset(a1) || (*(v32 + 262) & 1) != 0 || (v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(a1), Timestamp = ot::MeshCoP::DatasetManager::GetTimestamp(v11), ot::MeshCoP::Timestamp::operator>(&v29, Timestamp, v13)))
    {
      if (!ot::MeshCoP::Dataset::Read<ot::MeshCoP::CommissionerSessionIdTlv>(v39, &v27))
      {
        v23 = 0;
        *(v32 + 260) = 1;
        ot::MeshCoP::Dataset::RemoveTlv(v39, 0xBu);
        v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
        if (ot::NetworkData::Leader::FindCommissioningSessionId(v14, &v23) || v23 != v27 || ot::MeshCoP::DatasetManager::IsActiveDataset(a1) && (*(v32 + 261) & 1) != 0)
        {
          return v31;
        }

        if (!v34)
        {
          active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
          ot::MeshCoP::DatasetManager::Read(active, v32);
          IgnoreError();
        }
      }

      if (v34 != 1 || (*(v32 + 260) & 1) != 0 && ot::MeshCoP::DatasetManager::IsActiveDataset(a1) && (ot::MeshCoP::Dataset::ContainsAllRequiredTlvsFor(v39, 0) & 1) != 0)
      {
        v31 = ot::MeshCoP::Dataset::WriteTlvsFrom(v32, v39);
        if (!v31 && !ot::MeshCoP::Dataset::Read<ot::MeshCoP::DelayTimerTlv>(v32, &v25))
        {
          v25 = ot::Min<unsigned int>(v25, 0xF731400u);
          if ((*(v32 + 262) & 1) != 0 && v25 < 0x493E0)
          {
            v25 = 300000;
          }

          else
          {
            v19 = v25;
            v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Leader>(a1);
            DelayTimerMinimal = ot::MeshCoP::Leader::GetDelayTimerMinimal(v16);
            v25 = ot::Max<unsigned int>(v19, DelayTimerMinimal);
          }

          ot::MeshCoP::Dataset::Write<ot::MeshCoP::DelayTimerTlv>(v32, v25);
          IgnoreError();
        }
      }
    }
  }

  return v31;
}

void ot::Clearable<ot::MeshCoP::DatasetManager::RequestInfo>::Clear(void *a1)
{
  ot::ClearAllBytes<ot::MeshCoP::DatasetManager::RequestInfo>(a1);
}

{
  ot::Clearable<ot::MeshCoP::DatasetManager::RequestInfo>::Clear(a1);
}

uint64_t ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(unsigned __int8 *a1, void *a2)
{
  ot::MeshCoP::Dataset::FindTlv(a1, 0x33u);
  if (v2)
  {
    *a2 = *ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(v2);
    return 0;
  }

  else
  {
    return 23;
  }
}

{
  return ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)51,ot::MeshCoP::Timestamp>>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(unsigned __int8 *a1, uint64_t a2)
{
  ot::MeshCoP::Dataset::FindTlv(a1, 0);
  if (v2)
  {
    v3 = ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(v2);
    *a2 = *v3;
    *(a2 + 2) = *(v3 + 2);
    return 0;
  }

  else
  {
    return 23;
  }
}

{
  return ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)0,ot::Mle::ChannelTlvValue>>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Read<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(unsigned __int8 *a1, _WORD *a2)
{
  ot::MeshCoP::Dataset::FindTlv(a1, 1u);
  if (v2)
  {
    *a2 = ot::Tlv::ReadValueAs<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(v2, v3);
    return 0;
  }

  else
  {
    return 23;
  }
}

{
  return ot::MeshCoP::Dataset::Read<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(unsigned __int8 *a1, void *a2)
{
  ot::MeshCoP::Dataset::FindTlv(a1, 7u);
  if (v2)
  {
    *a2 = *ot::Tlv::ReadValueAs<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(v2);
    return 0;
  }

  else
  {
    return 23;
  }
}

{
  return ot::MeshCoP::Dataset::Read<ot::SimpleTlvInfo<(unsigned char)7,ot::Ip6::NetworkPrefix>>(a1, a2);
}

uint64_t ot::MeshCoP::Dataset::Read<ot::MeshCoP::CommissionerSessionIdTlv>(unsigned __int8 *a1, _WORD *a2)
{
  ot::MeshCoP::Dataset::FindTlv(a1, 0xBu);
  if (v2)
  {
    *a2 = ot::Tlv::ReadValueAs<ot::MeshCoP::CommissionerSessionIdTlv>(v2, v3);
    return 0;
  }

  else
  {
    return 23;
  }
}

{
  return ot::MeshCoP::Dataset::Read<ot::MeshCoP::CommissionerSessionIdTlv>(a1, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Leader>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::Leader>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Leader>(a1);
}

uint64_t ot::MeshCoP::DatasetManager::HandleSetOrReplace(ot::InstanceLocator *a1, char a2, ot::Message *a3, const ot::Ip6::MessageInfo *a4)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = -1;
  ot::MeshCoP::DatasetManager::RequestInfo::RequestInfo(v20);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
  if (!ot::Mle::Mle::IsLeader(v4) || ot::MeshCoP::DatasetManager::ProcessSetOrReplaceRequest(a1, v18, v17, v20))
  {
    goto LABEL_11;
  }

  if (ot::MeshCoP::DatasetManager::IsActiveDataset(a1) && (v20[261] & 1) != 0)
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
    ot::MeshCoP::PendingDatasetManager::ApplyActiveDataset(v5, v20);
  }

  else
  {
    if (ot::MeshCoP::DatasetManager::Save(a1, v20))
    {
      goto LABEL_11;
    }

    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
    ot::NetworkData::Leader::IncrementVersionAndStableVersion(v6);
  }

  v15 = 1;
  if ((v20[260] & 1) == 0)
  {
    v14 = 0;
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
    if (!ot::NetworkData::Leader::FindCommissioningSessionId(v7, &v14))
    {
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
      ot::Mle::Mle::GetCommissionerAloc(v8, v14, &v13);
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::Leader>(a1);
      ot::MeshCoP::Leader::SendDatasetChanged(v9, &v13);
    }
  }

LABEL_11:
  ot::MeshCoP::DatasetManager::SendSetOrReplaceResponse(a1, v17, v16, v15);
  if (v15 == 1)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}