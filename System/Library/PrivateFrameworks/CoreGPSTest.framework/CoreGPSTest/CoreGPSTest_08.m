void proto::gnss::Emergency::GpsAcqAssistance::CheckTypeAndMergeFrom(proto::gnss::Emergency::GpsAcqAssistance *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GpsAcqAssistance::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GpsAcqAssistance::CopyFrom(proto::gnss::Emergency::GpsAcqAssistance *this, const proto::gnss::Emergency::GpsAcqAssistance *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GpsAcqAssistance::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::GpsAcqAssistance::Swap(uint64_t this, proto::gnss::Emergency::GpsAcqAssistance *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v6;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v7 = v3[12];
    v3[12] = *(a2 + 12);
    *(a2 + 12) = v7;
    v8 = v3[13];
    v3[13] = *(a2 + 13);
    *(a2 + 13) = v8;
    v9 = v3[14];
    v3[14] = *(a2 + 14);
    *(a2 + 14) = v9;
    v10 = v3[15];
    v3[15] = *(a2 + 15);
    *(a2 + 15) = v10;
    v11 = v3[17];
    v3[17] = *(a2 + 17);
    *(a2 + 17) = v11;
    v12 = v3[16];
    v3[16] = *(a2 + 16);
    *(a2 + 16) = v12;
  }

  return this;
}

uint64_t proto::gnss::Emergency::CellFTAssistanceRequest::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::Emergency::CellFTAssistanceRequest *proto::gnss::Emergency::CellFTAssistanceRequest::CellFTAssistanceRequest(proto::gnss::Emergency::CellFTAssistanceRequest *this, const proto::gnss::Emergency::CellFTAssistanceRequest *a2)
{
  *this = &unk_28585F010;
  *(this + 1) = 0;
  *(this + 4) = 0;
  proto::gnss::Emergency::CellFTAssistanceRequest::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::CellFTAssistanceRequest::MergeFrom(proto::gnss::Emergency::CellFTAssistanceRequest *this, const proto::gnss::Emergency::CellFTAssistanceRequest *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 2);
    if (v4 >= 6)
    {
      __assert_rtn("set_network_type", "GnssEmergencyTypes.pb.h", 25389, "::proto::gnss::Emergency::ClsNetworkType_IsValid(value)");
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_24550B6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::CellFTAssistanceRequest::~CellFTAssistanceRequest(proto::gnss::Emergency::CellFTAssistanceRequest *this)
{
  *this = &unk_28585F010;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585F010;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585F010;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::CellFTAssistanceRequest::default_instance(proto::gnss::Emergency::CellFTAssistanceRequest *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::CellFTAssistanceRequest::default_instance_;
  if (!proto::gnss::Emergency::CellFTAssistanceRequest::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::CellFTAssistanceRequest::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::CellFTAssistanceRequest::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CellFTAssistanceRequest::MergePartialFromCodedStream(proto::gnss::Emergency::CellFTAssistanceRequest *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v9 = 0;
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v9);
        if (!result)
        {
          return result;
        }

        v7 = v9;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 <= 5)
      {
        *(this + 4) |= 1u;
        *(this + 2) = v7;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t proto::gnss::Emergency::CellFTAssistanceRequest::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::CellFTAssistanceRequest::ByteSize(proto::gnss::Emergency::CellFTAssistanceRequest *this)
{
  if (*(this + 16))
  {
    v3 = *(this + 2);
    if ((v3 & 0x80000000) != 0)
    {
      result = 11;
    }

    else if (v3 >= 0x80)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 3) = result;
  return result;
}

void proto::gnss::Emergency::CellFTAssistanceRequest::CheckTypeAndMergeFrom(proto::gnss::Emergency::CellFTAssistanceRequest *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::CellFTAssistanceRequest::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::CellFTAssistanceRequest::CopyFrom(proto::gnss::Emergency::CellFTAssistanceRequest *this, const proto::gnss::Emergency::CellFTAssistanceRequest *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::CellFTAssistanceRequest::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::CellFTAssistanceRequest *proto::gnss::Emergency::CellFTAssistanceRequest::Swap(proto::gnss::Emergency::CellFTAssistanceRequest *this, proto::gnss::Emergency::CellFTAssistanceRequest *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
  }

  return this;
}

void *proto::gnss::Emergency::CellFTAssistance::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gnss::Emergency::CellFTAssistance *proto::gnss::Emergency::CellFTAssistance::CellFTAssistance(proto::gnss::Emergency::CellFTAssistance *this, const proto::gnss::Emergency::CellFTAssistance *a2)
{
  *this = &unk_28585F088;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gnss::Emergency::CellFTAssistance::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::CellFTAssistance::MergeFrom(proto::gnss::Emergency::CellFTAssistance *this, const proto::gnss::Emergency::CellFTAssistance *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 2);
      if (v5 >= 0xA)
      {
        __assert_rtn("set_result", "GnssEmergencyTypes.pb.h", 25416, "::proto::gnss::Result_IsValid(value)");
      }

      *(this + 7) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      if (v6 >= 6)
      {
        __assert_rtn("set_network_type", "GnssEmergencyTypes.pb.h", 25439, "::proto::gnss::Emergency::ClsNetworkType_IsValid(value)");
      }

      *(this + 7) |= 2u;
      *(this + 3) = v6;
      v4 = *(a2 + 7);
    }

    if ((v4 & 4) != 0)
    {
      *(this + 7) |= 4u;
      v7 = *(this + 2);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 2);
      if (!v8)
      {
        v8 = *(proto::gnss::Emergency::CellFTAssistance::default_instance_ + 16);
      }

      proto::gnss::Emergency::CellTimeData::MergeFrom(v7, v8);
    }
  }
}

void sub_24550BD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::CellFTAssistance::~CellFTAssistance(proto::gnss::Emergency::CellFTAssistance *this)
{
  *this = &unk_28585F088;
  if (proto::gnss::Emergency::CellFTAssistance::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::CellFTAssistance::~CellFTAssistance(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Emergency::CellFTAssistance::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::CellFTAssistance::default_instance_ != this)
  {
    this = this[2];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::CellFTAssistance::default_instance(proto::gnss::Emergency::CellFTAssistance *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::CellFTAssistance::default_instance_;
  if (!proto::gnss::Emergency::CellFTAssistance::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::CellFTAssistance::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::CellFTAssistance::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 8) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = proto::gnss::Emergency::CellTimeData::Clear(this);
      }
    }
  }

  *(v1 + 28) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CellFTAssistance::MergePartialFromCodedStream(proto::gnss::Emergency::CellFTAssistance *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v4 = *(a2 + 1);
          if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v4 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v6 = TagFallback >> 3;
          v7 = TagFallback & 7;
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v7 == 2)
          {
            goto LABEL_36;
          }

LABEL_16:
          if (v7 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }

        if (v6 == 2)
        {
          break;
        }

        if (v6 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_16;
        }

        v24 = 0;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
          if (!result)
          {
            return result;
          }

          v9 = v24;
        }

        else
        {
          *(a2 + 1) = v8 + 1;
        }

        if (v9 <= 9)
        {
          *(this + 7) |= 1u;
          *(this + 2) = v9;
        }

        v13 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v13 < v10 && *v13 == 16)
        {
          v11 = v13 + 1;
          *(a2 + 1) = v11;
          goto LABEL_26;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
LABEL_26:
      v23 = 0;
      if (v11 >= v10 || (v14 = *v11, (v14 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23);
        if (!result)
        {
          return result;
        }

        v14 = v23;
      }

      else
      {
        *(a2 + 1) = v11 + 1;
      }

      if (v14 <= 5)
      {
        *(this + 7) |= 2u;
        *(this + 3) = v14;
      }

      v15 = *(a2 + 1);
    }

    while (v15 >= *(a2 + 2) || *v15 != 26);
    *(a2 + 1) = v15 + 1;
LABEL_36:
    *(this + 7) |= 4u;
    v16 = *(this + 2);
    if (!v16)
    {
      operator new();
    }

    v25 = 0;
    v17 = *(a2 + 1);
    if (v17 >= *(a2 + 2) || *v17 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25))
      {
        return 0;
      }
    }

    else
    {
      v25 = *v17;
      *(a2 + 1) = v17 + 1;
    }

    v18 = *(a2 + 14);
    v19 = *(a2 + 15);
    *(a2 + 14) = v18 + 1;
    if (v18 >= v19)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!proto::gnss::Emergency::CellTimeData::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v20 = *(a2 + 14);
    v21 = __OFSUB__(v20, 1);
    v22 = v20 - 1;
    if (v22 < 0 == v21)
    {
      *(a2 + 14) = v22;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t proto::gnss::Emergency::CellFTAssistance::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::CellFTAssistance::default_instance_ + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::CellFTAssistance::ByteSize(proto::gnss::Emergency::CellFTAssistance *this)
{
  LOBYTE(v2) = *(this + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_26;
  }

  if (*(this + 28))
  {
    v4 = *(this + 2);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 7);
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v5 = *(this + 3);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 7);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_19:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 2);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::CellFTAssistance::default_instance_ + 16);
    }

    v8 = proto::gnss::Emergency::CellTimeData::ByteSize(v7);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    }

    else
    {
      v10 = 1;
    }

    v3 = (v3 + v9 + v10 + 1);
  }

LABEL_26:
  *(this + 6) = v3;
  return v3;
}

void proto::gnss::Emergency::CellFTAssistance::CheckTypeAndMergeFrom(proto::gnss::Emergency::CellFTAssistance *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::CellFTAssistance::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::CellFTAssistance::CopyFrom(proto::gnss::Emergency::CellFTAssistance *this, const proto::gnss::Emergency::CellFTAssistance *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::CellFTAssistance::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::CellFTAssistance::Swap(uint64_t this, proto::gnss::Emergency::CellFTAssistance *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v4;
    LODWORD(v4) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v4;
    LODWORD(v4) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v4;
  }

  return this;
}

double proto::gnss::Emergency::NetworkReferenceLocation::SharedCtor(proto::gnss::Emergency::NetworkReferenceLocation *this)
{
  *(this + 7) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::NetworkReferenceLocation *proto::gnss::Emergency::NetworkReferenceLocation::NetworkReferenceLocation(proto::gnss::Emergency::NetworkReferenceLocation *this, const proto::gnss::Emergency::NetworkReferenceLocation *a2)
{
  *this = &unk_28585F100;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  proto::gnss::Emergency::NetworkReferenceLocation::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::NetworkReferenceLocation::~NetworkReferenceLocation(proto::gnss::Emergency::NetworkReferenceLocation *this)
{
  *this = &unk_28585F100;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585F100;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585F100;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::NetworkReferenceLocation::MergePartialFromCodedStream(proto::gnss::Emergency::NetworkReferenceLocation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v6 == 1)
        {
          if (v7 != 1)
          {
            goto LABEL_31;
          }

          v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 1) = v21;
          *(this + 15) |= 1u;
          v10 = *(a2 + 1);
          if (v10 < *(a2 + 2) && *v10 == 17)
          {
            *(a2 + 1) = v10 + 1;
            goto LABEL_34;
          }
        }

        else
        {
          if (v6 != 2)
          {
            if (v6 != 3 || v7 != 1)
            {
              goto LABEL_31;
            }

            goto LABEL_38;
          }

          if (v7 != 1)
          {
            goto LABEL_31;
          }

LABEL_34:
          v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 2) = v21;
          *(this + 15) |= 2u;
          v12 = *(a2 + 1);
          if (v12 < *(a2 + 2) && *v12 == 25)
          {
            *(a2 + 1) = v12 + 1;
LABEL_38:
            v21 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v21) & 1) == 0)
            {
              return 0;
            }

            *(this + 3) = v21;
            *(this + 15) |= 4u;
            v13 = *(a2 + 1);
            if (v13 < *(a2 + 2) && *v13 == 33)
            {
              *(a2 + 1) = v13 + 1;
              goto LABEL_42;
            }
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        if (v6 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_50;
          }
        }

        else if (v6 == 7 && (TagFallback & 7) == 0)
        {
          v9 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_58;
        }

        goto LABEL_31;
      }

      if (v6 != 4)
      {
        break;
      }

      if (v7 != 1)
      {
        goto LABEL_31;
      }

LABEL_42:
      v21 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v21) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = v21;
      *(this + 15) |= 8u;
      v14 = *(a2 + 1);
      if (v14 < *(a2 + 2) && *v14 == 41)
      {
        *(a2 + 1) = v14 + 1;
LABEL_46:
        v21 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v21) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = v21;
        *(this + 15) |= 0x10u;
        v15 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v15 < v8 && *v15 == 48)
        {
          v11 = v15 + 1;
          *(a2 + 1) = v11;
LABEL_50:
          if (v11 >= v8 || (v16 = *v11, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 12) = v16;
            v17 = v11 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 15) |= 0x20u;
          if (v17 < v8 && *v17 == 56)
          {
            v9 = v17 + 1;
            *(a2 + 1) = v9;
LABEL_58:
            if (v9 >= v8 || (v19 = *v9, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
              if (!result)
              {
                return result;
              }

              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 13) = v19;
              v20 = v9 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 15) |= 0x40u;
            if (v20 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v6 == 5 && v7 == 1)
    {
      goto LABEL_46;
    }

LABEL_31:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t proto::gnss::Emergency::NetworkReferenceLocation::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 60);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 48), a2, a4);
    if ((*(v5 + 60) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_15:
  v7 = *(v5 + 52);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::NetworkReferenceLocation::ByteSize(proto::gnss::Emergency::NetworkReferenceLocation *this)
{
  v2 = *(this + 60);
  if (*(this + 60))
  {
    v3 = (v2 << 31 >> 31) & 9;
    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 8) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x10) != 0)
    {
      v4 = v3 + 9;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 0x20) != 0)
    {
      v5 = *(this + 12);
      if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(this + 15);
      }

      else
      {
        v6 = 2;
      }

      v4 = (v6 + v4);
    }

    if ((v2 & 0x40) != 0)
    {
      v7 = *(this + 13);
      if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      }

      else
      {
        v8 = 2;
      }

      v4 = (v8 + v4);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 14) = v4;
  return v4;
}

void proto::gnss::Emergency::NetworkReferenceLocation::CheckTypeAndMergeFrom(proto::gnss::Emergency::NetworkReferenceLocation *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::NetworkReferenceLocation::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::NetworkReferenceLocation::CopyFrom(proto::gnss::Emergency::NetworkReferenceLocation *this, const proto::gnss::Emergency::NetworkReferenceLocation *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::NetworkReferenceLocation::MergeFrom(this, a2);
  }
}

double proto::gnss::Emergency::NetworkReferenceLocation::Swap(proto::gnss::Emergency::NetworkReferenceLocation *this, proto::gnss::Emergency::NetworkReferenceLocation *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    result = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = result;
    v7 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v7;
    v8 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v8;
    v9 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v9;
    v10 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v10;
  }

  return result;
}

void *proto::gnss::Emergency::NetworkReferenceTime::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gnss::Emergency::NetworkReferenceTime *proto::gnss::Emergency::NetworkReferenceTime::NetworkReferenceTime(proto::gnss::Emergency::NetworkReferenceTime *this, const proto::gnss::Emergency::NetworkReferenceTime *a2)
{
  *this = &unk_28585F178;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gnss::Emergency::NetworkReferenceTime::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::NetworkReferenceTime::~NetworkReferenceTime(proto::gnss::Emergency::NetworkReferenceTime *this)
{
  *this = &unk_28585F178;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585F178;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585F178;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::NetworkReferenceTime::MergePartialFromCodedStream(proto::gnss::Emergency::NetworkReferenceTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v7 == 1)
        {
          goto LABEL_32;
        }

        goto LABEL_16;
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 7) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_24:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v14;
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 7) |= 2u;
        if (v15 < v8 && *v15 == 25)
        {
          *(a2 + 1) = v15 + 1;
LABEL_32:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 2) = v16;
          *(this + 7) |= 4u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_24;
    }

LABEL_16:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t proto::gnss::Emergency::NetworkReferenceTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v7, a3);
}

uint64_t proto::gnss::Emergency::NetworkReferenceTime::ByteSize(proto::gnss::Emergency::NetworkReferenceTime *this)
{
  LOBYTE(v2) = *(this + 28);
  if (!v2)
  {
    result = 0;
    goto LABEL_17;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    v6 = *(this + 3);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 7);
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
    goto LABEL_14;
  }

  v5 = *(this + 2);
  if (v5 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 7);
    if ((v2 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  if ((v2 & 4) != 0)
  {
    result = v3 + 9;
  }

  else
  {
    result = v3;
  }

LABEL_17:
  *(this + 6) = result;
  return result;
}

void proto::gnss::Emergency::NetworkReferenceTime::CheckTypeAndMergeFrom(proto::gnss::Emergency::NetworkReferenceTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::NetworkReferenceTime::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::NetworkReferenceTime::CopyFrom(proto::gnss::Emergency::NetworkReferenceTime *this, const proto::gnss::Emergency::NetworkReferenceTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::NetworkReferenceTime::MergeFrom(this, a2);
  }
}

double proto::gnss::Emergency::NetworkReferenceTime::Swap(proto::gnss::Emergency::NetworkReferenceTime *this, proto::gnss::Emergency::NetworkReferenceTime *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v5 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v5;
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
  }

  return result;
}

uint64_t proto::gnss::Emergency::Is801VelocityInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::Is801VelocityInfo *proto::gnss::Emergency::Is801VelocityInfo::Is801VelocityInfo(proto::gnss::Emergency::Is801VelocityInfo *this, const proto::gnss::Emergency::Is801VelocityInfo *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28585F1F0;
  *(this + 6) = 0;
  proto::gnss::Emergency::Is801VelocityInfo::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::Is801VelocityInfo::MergeFrom(proto::gnss::Emergency::Is801VelocityInfo *this, const proto::gnss::Emergency::Is801VelocityInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v6 = *(a2 + 2);
      *(this + 6) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 6);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 6) |= 2u;
    *(this + 3) = v7;
    if ((*(a2 + 6) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 4);
    *(this + 6) |= 4u;
    *(this + 4) = v5;
  }
}

void sub_24550D4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::Is801VelocityInfo::~Is801VelocityInfo(proto::gnss::Emergency::Is801VelocityInfo *this)
{
  *this = &unk_28585F1F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585F1F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585F1F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::Is801VelocityInfo::default_instance(proto::gnss::Emergency::Is801VelocityInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::Is801VelocityInfo::default_instance_;
  if (!proto::gnss::Emergency::Is801VelocityInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::Is801VelocityInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::Is801VelocityInfo::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Is801VelocityInfo::MergePartialFromCodedStream(proto::gnss::Emergency::Is801VelocityInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 6) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v13;
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 6) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v15;
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 6) |= 4u;
          if (v16 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_25;
    }

LABEL_16:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

unsigned int *proto::gnss::Emergency::Is801VelocityInfo::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[6];
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
    if ((v5[6] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
  v6 = v5[6];
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = v5[4];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::Is801VelocityInfo::ByteSize(proto::gnss::Emergency::Is801VelocityInfo *this)
{
  LOBYTE(v2) = *(this + 24);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if (*(this + 24))
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 6);
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 24) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 3);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 6);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 4);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
  }

LABEL_19:
  *(this + 5) = v3;
  return v3;
}

void proto::gnss::Emergency::Is801VelocityInfo::CheckTypeAndMergeFrom(proto::gnss::Emergency::Is801VelocityInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::Is801VelocityInfo::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::Is801VelocityInfo::CopyFrom(proto::gnss::Emergency::Is801VelocityInfo *this, const proto::gnss::Emergency::Is801VelocityInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::Is801VelocityInfo::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::Is801VelocityInfo *proto::gnss::Emergency::Is801VelocityInfo::Swap(proto::gnss::Emergency::Is801VelocityInfo *this, proto::gnss::Emergency::Is801VelocityInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
  }

  return this;
}

uint64_t proto::gnss::Emergency::Is801ClockInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::Emergency::Is801ClockInfo *proto::gnss::Emergency::Is801ClockInfo::Is801ClockInfo(proto::gnss::Emergency::Is801ClockInfo *this, const proto::gnss::Emergency::Is801ClockInfo *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28585F268;
  proto::gnss::Emergency::Is801ClockInfo::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::Is801ClockInfo::MergeFrom(proto::gnss::Emergency::Is801ClockInfo *this, const proto::gnss::Emergency::Is801ClockInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 2);
      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_24550DC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::Is801ClockInfo::~Is801ClockInfo(proto::gnss::Emergency::Is801ClockInfo *this)
{
  *this = &unk_28585F268;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585F268;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585F268;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::Is801ClockInfo::default_instance(proto::gnss::Emergency::Is801ClockInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::Is801ClockInfo::default_instance_;
  if (!proto::gnss::Emergency::Is801ClockInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::Is801ClockInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::Is801ClockInfo::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Is801ClockInfo::MergePartialFromCodedStream(proto::gnss::Emergency::Is801ClockInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, v8 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v8;
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 5) |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(a2 + 1) = v10;
LABEL_22:
        if (v10 >= v6 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 5) |= 2u;
        if (v12 == v6 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v6 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gnss::Emergency::Is801ClockInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::Is801ClockInfo::ByteSize(proto::gnss::Emergency::Is801ClockInfo *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    if (*(this + 20))
    {
      v4 = *(this + 2);
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 5) & 2) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    v5 = *(this + 3);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 = (v6 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_14:
  *(this + 4) = v3;
  return v3;
}

void proto::gnss::Emergency::Is801ClockInfo::CheckTypeAndMergeFrom(proto::gnss::Emergency::Is801ClockInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::Is801ClockInfo::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::Is801ClockInfo::CopyFrom(proto::gnss::Emergency::Is801ClockInfo *this, const proto::gnss::Emergency::Is801ClockInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::Is801ClockInfo::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::Is801ClockInfo *proto::gnss::Emergency::Is801ClockInfo::Swap(proto::gnss::Emergency::Is801ClockInfo *this, proto::gnss::Emergency::Is801ClockInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

uint64_t proto::gnss::Emergency::Is801HeightInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::Emergency::Is801HeightInfo *proto::gnss::Emergency::Is801HeightInfo::Is801HeightInfo(proto::gnss::Emergency::Is801HeightInfo *this, const proto::gnss::Emergency::Is801HeightInfo *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28585F2E0;
  proto::gnss::Emergency::Is801HeightInfo::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::Is801HeightInfo::MergeFrom(proto::gnss::Emergency::Is801HeightInfo *this, const proto::gnss::Emergency::Is801HeightInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 2);
      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_24550E298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::Is801HeightInfo::~Is801HeightInfo(proto::gnss::Emergency::Is801HeightInfo *this)
{
  *this = &unk_28585F2E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585F2E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585F2E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::Is801HeightInfo::default_instance(proto::gnss::Emergency::Is801HeightInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::Is801HeightInfo::default_instance_;
  if (!proto::gnss::Emergency::Is801HeightInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::Is801HeightInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::Is801HeightInfo::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Is801HeightInfo::MergePartialFromCodedStream(proto::gnss::Emergency::Is801HeightInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, v8 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v8;
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 5) |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(a2 + 1) = v10;
LABEL_22:
        if (v10 >= v6 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 5) |= 2u;
        if (v12 == v6 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v6 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gnss::Emergency::Is801HeightInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::Is801HeightInfo::ByteSize(proto::gnss::Emergency::Is801HeightInfo *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    if (*(this + 20))
    {
      v4 = *(this + 2);
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 5) & 2) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    v5 = *(this + 3);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 = (v6 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_14:
  *(this + 4) = v3;
  return v3;
}

void proto::gnss::Emergency::Is801HeightInfo::CheckTypeAndMergeFrom(proto::gnss::Emergency::Is801HeightInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::Is801HeightInfo::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::Is801HeightInfo::CopyFrom(proto::gnss::Emergency::Is801HeightInfo *this, const proto::gnss::Emergency::Is801HeightInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::Is801HeightInfo::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::Is801HeightInfo *proto::gnss::Emergency::Is801HeightInfo::Swap(proto::gnss::Emergency::Is801HeightInfo *this, proto::gnss::Emergency::Is801HeightInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

double proto::gnss::Emergency::Is801LocationInd::SharedCtor(proto::gnss::Emergency::Is801LocationInd *this)
{
  *(this + 15) = 0;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 55) = 0;
  return result;
}

proto::gnss::Emergency::Is801LocationInd *proto::gnss::Emergency::Is801LocationInd::Is801LocationInd(proto::gnss::Emergency::Is801LocationInd *this, const proto::gnss::Emergency::Is801LocationInd *a2)
{
  *this = &unk_28585F358;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 55) = 0;
  proto::gnss::Emergency::Is801LocationInd::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::Is801LocationInd::MergeFrom(proto::gnss::Emergency::Is801LocationInd *this, const proto::gnss::Emergency::Is801LocationInd *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v4 = *(a2 + 16);
  if (v4)
  {
    if (v4)
    {
      v8 = *(a2 + 2);
      *(this + 16) |= 1u;
      *(this + 2) = v8;
      v4 = *(a2 + 16);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_26;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    v9 = *(a2 + 3);
    *(this + 16) |= 2u;
    *(this + 3) = v9;
    v4 = *(a2 + 16);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_26:
    v10 = *(a2 + 4);
    *(this + 16) |= 4u;
    *(this + 4) = v10;
    v4 = *(a2 + 16);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

LABEL_27:
    v11 = *(a2 + 5);
    *(this + 16) |= 8u;
    *(this + 5) = v11;
    v4 = *(a2 + 16);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }

LABEL_28:
    v12 = *(a2 + 6);
    *(this + 16) |= 0x10u;
    *(this + 6) = v12;
    v4 = *(a2 + 16);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_29:
    v13 = *(a2 + 7);
    if (v13 >= 4)
    {
      __assert_rtn("set_fix_type", "GnssEmergencyTypes.pb.h", 26012, "::proto::gnss::Emergency::FixType_IsValid(value)");
    }

    *(this + 16) |= 0x20u;
    *(this + 7) = v13;
    v4 = *(a2 + 16);
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v5 = *(a2 + 56);
    *(this + 16) |= 0x40u;
    *(this + 56) = v5;
    v4 = *(a2 + 16);
LABEL_12:
    if ((v4 & 0x80) != 0)
    {
      *(this + 16) |= 0x80u;
      v6 = *(this + 4);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 4);
      if (!v7)
      {
        v7 = *(proto::gnss::Emergency::Is801LocationInd::default_instance_ + 32);
      }

      proto::gnss::Emergency::Is801VelocityInfo::MergeFrom(v6, v7);
      v4 = *(a2 + 16);
    }
  }

  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 57);
    *(this + 16) |= 0x100u;
    *(this + 57) = v14;
    v4 = *(a2 + 16);
    if ((v4 & 0x200) == 0)
    {
LABEL_21:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_22;
      }

LABEL_38:
      v17 = *(a2 + 58);
      *(this + 16) |= 0x400u;
      *(this + 58) = v17;
      if ((*(a2 + 16) & 0x800) == 0)
      {
        return;
      }

      goto LABEL_39;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  *(this + 16) |= 0x200u;
  v15 = *(this + 5);
  if (!v15)
  {
    operator new();
  }

  v16 = *(a2 + 5);
  if (!v16)
  {
    v16 = *(proto::gnss::Emergency::Is801LocationInd::default_instance_ + 40);
  }

  proto::gnss::Emergency::Is801ClockInfo::MergeFrom(v15, v16);
  v4 = *(a2 + 16);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_38;
  }

LABEL_22:
  if ((v4 & 0x800) == 0)
  {
    return;
  }

LABEL_39:
  *(this + 16) |= 0x800u;
  v18 = *(this + 6);
  if (!v18)
  {
    operator new();
  }

  v19 = *(a2 + 6);
  if (!v19)
  {
    v19 = *(proto::gnss::Emergency::Is801LocationInd::default_instance_ + 48);
  }

  proto::gnss::Emergency::Is801HeightInfo::MergeFrom(v18, v19);
}

void sub_24550EBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::Is801LocationInd::~Is801LocationInd(proto::gnss::Emergency::Is801LocationInd *this)
{
  *this = &unk_28585F358;
  proto::gnss::Emergency::Is801LocationInd::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585F358;
  proto::gnss::Emergency::Is801LocationInd::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585F358;
  proto::gnss::Emergency::Is801LocationInd::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Emergency::Is801LocationInd::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::Is801LocationInd::default_instance_ != this)
  {
    v1 = this;
    v2 = this[4];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[5];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    this = v1[6];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::Is801LocationInd::default_instance(proto::gnss::Emergency::Is801LocationInd *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::Is801LocationInd::default_instance_;
  if (!proto::gnss::Emergency::Is801LocationInd::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::Is801LocationInd::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::Is801LocationInd::Clear(uint64_t this)
{
  v1 = *(this + 64);
  if (v1)
  {
    *(this + 56) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 8) = 0;
    if ((v1 & 0x80) != 0)
    {
      v2 = *(this + 32);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
        v1 = *(this + 64);
      }
    }
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 57) = 0;
    if ((v1 & 0x200) != 0)
    {
      v3 = *(this + 40);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v1 = *(this + 64);
      }
    }

    *(this + 58) = 0;
    if ((v1 & 0x800) != 0)
    {
      v4 = *(this + 48);
      if (v4)
      {
        if (*(v4 + 20))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 20) = 0;
      }
    }
  }

  *(this + 64) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Is801LocationInd::MergePartialFromCodedStream(proto::gnss::Emergency::Is801LocationInd *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v4 = *(a2 + 1);
            if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
            {
              TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
              *(a2 + 8) = TagFallback;
              if (!TagFallback)
              {
                return 1;
              }
            }

            else
            {
              *(a2 + 8) = TagFallback;
              *(a2 + 1) = v4 + 1;
              if (!TagFallback)
              {
                return 1;
              }
            }

            v6 = TagFallback >> 3;
            v7 = TagFallback & 7;
            if (TagFallback >> 3 > 6)
            {
              break;
            }

            if (TagFallback >> 3 > 3)
            {
              if (v6 == 4)
              {
                if ((TagFallback & 7) == 0)
                {
                  v19 = *(a2 + 1);
                  v8 = *(a2 + 2);
                  goto LABEL_71;
                }
              }

              else if (v6 == 5)
              {
                if ((TagFallback & 7) == 0)
                {
                  v23 = *(a2 + 1);
                  v8 = *(a2 + 2);
                  goto LABEL_79;
                }
              }

              else if (v6 == 6 && (TagFallback & 7) == 0)
              {
                v12 = *(a2 + 1);
                v8 = *(a2 + 2);
                goto LABEL_87;
              }

              goto LABEL_46;
            }

            if (v6 == 1)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_46;
              }

              v14 = *(a2 + 1);
              v8 = *(a2 + 2);
              if (v14 >= v8 || (v15 = *v14, v15 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
                if (!result)
                {
                  return result;
                }

                v16 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 2) = v15;
                v16 = v14 + 1;
                *(a2 + 1) = v16;
              }

              *(this + 16) |= 1u;
              if (v16 < v8 && *v16 == 16)
              {
                v21 = v16 + 1;
                *(a2 + 1) = v21;
                goto LABEL_55;
              }
            }

            else if (v6 == 2)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_46;
              }

              v21 = *(a2 + 1);
              v8 = *(a2 + 2);
LABEL_55:
              if (v21 >= v8 || (v27 = *v21, v27 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v28 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v27;
                v28 = v21 + 1;
                *(a2 + 1) = v28;
              }

              *(this + 16) |= 2u;
              if (v28 < v8 && *v28 == 24)
              {
                v9 = v28 + 1;
                *(a2 + 1) = v9;
LABEL_63:
                if (v9 >= v8 || (v29 = *v9, v29 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
                  if (!result)
                  {
                    return result;
                  }

                  v30 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  *(this + 4) = v29;
                  v30 = v9 + 1;
                  *(a2 + 1) = v30;
                }

                *(this + 16) |= 4u;
                if (v30 < v8 && *v30 == 32)
                {
                  v19 = v30 + 1;
                  *(a2 + 1) = v19;
LABEL_71:
                  if (v19 >= v8 || (v31 = *v19, v31 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
                    if (!result)
                    {
                      return result;
                    }

                    v32 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 5) = v31;
                    v32 = v19 + 1;
                    *(a2 + 1) = v32;
                  }

                  *(this + 16) |= 8u;
                  if (v32 < v8 && *v32 == 40)
                  {
                    v23 = v32 + 1;
                    *(a2 + 1) = v23;
LABEL_79:
                    if (v23 >= v8 || (v33 = *v23, v33 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
                      if (!result)
                      {
                        return result;
                      }

                      v34 = *(a2 + 1);
                      v8 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 6) = v33;
                      v34 = v23 + 1;
                      *(a2 + 1) = v34;
                    }

                    *(this + 16) |= 0x10u;
                    if (v34 < v8 && *v34 == 48)
                    {
                      v12 = v34 + 1;
                      *(a2 + 1) = v12;
LABEL_87:
                      v64 = 0;
                      if (v12 >= v8 || (v35 = *v12, (v35 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64);
                        if (!result)
                        {
                          return result;
                        }

                        v35 = v64;
                      }

                      else
                      {
                        *(a2 + 1) = v12 + 1;
                      }

                      if (v35 <= 3)
                      {
                        *(this + 16) |= 0x20u;
                        *(this + 7) = v35;
                      }

                      v36 = *(a2 + 1);
                      v17 = *(a2 + 2);
                      if (v36 < v17 && *v36 == 56)
                      {
                        v18 = v36 + 1;
                        *(a2 + 1) = v18;
LABEL_97:
                        v64 = 0;
                        if (v18 >= v17 || (v37 = *v18, (v37 & 0x80000000) != 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64);
                          if (!result)
                          {
                            return result;
                          }

                          v37 = v64;
                          v38 = *(a2 + 1);
                          v17 = *(a2 + 2);
                        }

                        else
                        {
                          v38 = v18 + 1;
                          *(a2 + 1) = v38;
                        }

                        *(this + 56) = v37 != 0;
                        v22 = *(this + 16) | 0x40;
                        *(this + 16) = v22;
                        if (v38 < v17 && *v38 == 66)
                        {
                          *(a2 + 1) = v38 + 1;
                          goto LABEL_105;
                        }
                      }
                    }
                  }
                }
              }
            }

            else
            {
              if (v6 == 3 && (TagFallback & 7) == 0)
              {
                v9 = *(a2 + 1);
                v8 = *(a2 + 2);
                goto LABEL_63;
              }

LABEL_46:
              if (v7 == 4)
              {
                return 1;
              }

              if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
              {
                return 0;
              }
            }
          }

          if (TagFallback >> 3 > 9)
          {
            break;
          }

          if (v6 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v17 = *(a2 + 2);
              goto LABEL_97;
            }

            goto LABEL_46;
          }

          if (v6 != 8)
          {
            if (v6 == 9 && (TagFallback & 7) == 0)
            {
              v11 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_119;
            }

            goto LABEL_46;
          }

          if (v7 != 2)
          {
            goto LABEL_46;
          }

          v22 = *(this + 16);
LABEL_105:
          *(this + 16) = v22 | 0x80;
          v39 = *(this + 4);
          if (!v39)
          {
            operator new();
          }

          v64 = 0;
          v40 = *(a2 + 1);
          if (v40 >= *(a2 + 2) || *v40 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64))
            {
              return 0;
            }
          }

          else
          {
            v64 = *v40;
            *(a2 + 1) = v40 + 1;
          }

          v41 = *(a2 + 14);
          v42 = *(a2 + 15);
          *(a2 + 14) = v41 + 1;
          if (v41 >= v42)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!proto::gnss::Emergency::Is801VelocityInfo::MergePartialFromCodedStream(v39, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v43 = *(a2 + 14);
          v44 = __OFSUB__(v43, 1);
          v45 = v43 - 1;
          if (v45 < 0 == v44)
          {
            *(a2 + 14) = v45;
          }

          v46 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v46 < v10 && *v46 == 72)
          {
            v11 = v46 + 1;
            *(a2 + 1) = v11;
LABEL_119:
            v64 = 0;
            if (v11 >= v10 || (v47 = *v11, (v47 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64);
              if (!result)
              {
                return result;
              }

              v47 = v64;
              v48 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v48 = v11 + 1;
              *(a2 + 1) = v48;
            }

            *(this + 57) = v47 != 0;
            v20 = *(this + 16) | 0x100;
            *(this + 16) = v20;
            if (v48 < v10 && *v48 == 82)
            {
              *(a2 + 1) = v48 + 1;
              goto LABEL_127;
            }
          }
        }

        if (v6 != 10)
        {
          break;
        }

        if (v7 != 2)
        {
          goto LABEL_46;
        }

        v20 = *(this + 16);
LABEL_127:
        *(this + 16) = v20 | 0x200;
        v49 = *(this + 5);
        if (!v49)
        {
          operator new();
        }

        v64 = 0;
        v50 = *(a2 + 1);
        if (v50 >= *(a2 + 2) || *v50 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64))
          {
            return 0;
          }
        }

        else
        {
          v64 = *v50;
          *(a2 + 1) = v50 + 1;
        }

        v51 = *(a2 + 14);
        v52 = *(a2 + 15);
        *(a2 + 14) = v51 + 1;
        if (v51 >= v52)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::Is801ClockInfo::MergePartialFromCodedStream(v49, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v53 = *(a2 + 14);
        v44 = __OFSUB__(v53, 1);
        v54 = v53 - 1;
        if (v54 < 0 == v44)
        {
          *(a2 + 14) = v54;
        }

        v55 = *(a2 + 1);
        v24 = *(a2 + 2);
        if (v55 < v24 && *v55 == 88)
        {
          v25 = v55 + 1;
          *(a2 + 1) = v25;
          goto LABEL_141;
        }
      }

      if (v6 != 11)
      {
        if (v6 == 12 && v7 == 2)
        {
          v13 = *(this + 16);
          goto LABEL_149;
        }

        goto LABEL_46;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_46;
      }

      v25 = *(a2 + 1);
      v24 = *(a2 + 2);
LABEL_141:
      v64 = 0;
      if (v25 >= v24 || (v56 = *v25, (v56 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64);
        if (!result)
        {
          return result;
        }

        v56 = v64;
        v57 = *(a2 + 1);
        v24 = *(a2 + 2);
      }

      else
      {
        v57 = v25 + 1;
        *(a2 + 1) = v57;
      }

      *(this + 58) = v56 != 0;
      v13 = *(this + 16) | 0x400;
      *(this + 16) = v13;
    }

    while (v57 >= v24 || *v57 != 98);
    *(a2 + 1) = v57 + 1;
LABEL_149:
    *(this + 16) = v13 | 0x800;
    v58 = *(this + 6);
    if (!v58)
    {
      operator new();
    }

    v64 = 0;
    v59 = *(a2 + 1);
    if (v59 >= *(a2 + 2) || *v59 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64))
      {
        return 0;
      }
    }

    else
    {
      v64 = *v59;
      *(a2 + 1) = v59 + 1;
    }

    v60 = *(a2 + 14);
    v61 = *(a2 + 15);
    *(a2 + 14) = v60 + 1;
    if (v60 >= v61)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!proto::gnss::Emergency::Is801HeightInfo::MergePartialFromCodedStream(v58, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v62 = *(a2 + 14);
    v44 = __OFSUB__(v62, 1);
    v63 = v62 - 1;
    if (v63 < 0 == v44)
    {
      *(a2 + 14) = v63;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t proto::gnss::Emergency::Is801LocationInd::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 64);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 64);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 56), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_21:
  v7 = *(v5 + 32);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::Is801LocationInd::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v7, a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 57), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, *(v5 + 58), a2, a4);
    if ((*(v5 + 64) & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_25:
  v8 = *(v5 + 40);
  if (!v8)
  {
    v8 = *(proto::gnss::Emergency::Is801LocationInd::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v8, a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_28;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    return this;
  }

LABEL_29:
  v9 = *(v5 + 48);
  if (!v9)
  {
    v9 = *(proto::gnss::Emergency::Is801LocationInd::default_instance_ + 48);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v9, a2, a4);
}

uint64_t proto::gnss::Emergency::Is801LocationInd::ByteSize(proto::gnss::Emergency::Is801LocationInd *this)
{
  v2 = *(this + 16);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_44;
  }

  if (v2)
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 16);
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v7 = 2;
  }

  v3 += v7;
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v8 = *(this + 4);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v9 = 2;
    }

    v3 += v9;
    if ((v2 & 8) == 0)
    {
LABEL_16:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(this + 5);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v11 = 2;
  }

  v3 += v11;
  if ((v2 & 0x10) == 0)
  {
LABEL_17:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_31;
  }

LABEL_27:
  v12 = *(this + 6);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v13 = 2;
  }

  v3 += v13;
  if ((v2 & 0x20) != 0)
  {
LABEL_31:
    v14 = *(this + 7);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v15 = 2;
    }

    v3 += v15;
  }

LABEL_37:
  v4 = ((v2 >> 5) & 2) + v3;
  if ((v2 & 0x80) != 0)
  {
    v16 = *(this + 4);
    if (!v16)
    {
      v16 = *(proto::gnss::Emergency::Is801LocationInd::default_instance_ + 32);
    }

    v17 = proto::gnss::Emergency::Is801VelocityInfo::ByteSize(v16);
    v18 = v17;
    if (v17 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
    }

    else
    {
      v19 = 1;
    }

    v4 = (v4 + v18 + v19 + 1);
    v2 = *(this + 16);
  }

LABEL_44:
  if ((v2 & 0xFF00) != 0)
  {
    v20 = ((v2 >> 7) & 2) + v4;
    if ((v2 & 0x200) != 0)
    {
      v21 = *(this + 5);
      if (!v21)
      {
        v21 = *(proto::gnss::Emergency::Is801LocationInd::default_instance_ + 40);
      }

      v22 = proto::gnss::Emergency::Is801ClockInfo::ByteSize(v21);
      v23 = v22;
      if (v22 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      }

      else
      {
        v24 = 1;
      }

      v20 += v23 + v24 + 1;
      v2 = *(this + 16);
    }

    v4 = ((v2 >> 9) & 2) + v20;
    if ((v2 & 0x800) != 0)
    {
      v25 = *(this + 6);
      if (!v25)
      {
        v25 = *(proto::gnss::Emergency::Is801LocationInd::default_instance_ + 48);
      }

      v26 = proto::gnss::Emergency::Is801HeightInfo::ByteSize(v25);
      v27 = v26;
      if (v26 >= 0x80)
      {
        v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
      }

      else
      {
        v28 = 1;
      }

      v4 = (v4 + v27 + v28 + 1);
    }
  }

  *(this + 15) = v4;
  return v4;
}

void proto::gnss::Emergency::Is801LocationInd::CheckTypeAndMergeFrom(proto::gnss::Emergency::Is801LocationInd *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::Is801LocationInd::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::Is801LocationInd::CopyFrom(proto::gnss::Emergency::Is801LocationInd *this, const proto::gnss::Emergency::Is801LocationInd *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::Is801LocationInd::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::Is801LocationInd::Swap(uint64_t this, proto::gnss::Emergency::Is801LocationInd *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v7;
    LOBYTE(v7) = *(this + 56);
    *(this + 56) = *(a2 + 56);
    *(a2 + 56) = v7;
    v8 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v8;
    LOBYTE(v8) = *(this + 57);
    *(this + 57) = *(a2 + 57);
    *(a2 + 57) = v8;
    v9 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v9;
    LOBYTE(v9) = *(this + 58);
    *(this + 58) = *(a2 + 58);
    *(a2 + 58) = v9;
    v10 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v10;
    LODWORD(v10) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v10;
    LODWORD(v10) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v10;
  }

  return this;
}

double proto::gnss::Emergency::MeasurementReportWithEstimate::SharedCtor(proto::gnss::Emergency::MeasurementReportWithEstimate *this)
{
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0;
  return result;
}

proto::gnss::Emergency::MeasurementReportWithEstimate *proto::gnss::Emergency::MeasurementReportWithEstimate::MeasurementReportWithEstimate(proto::gnss::Emergency::MeasurementReportWithEstimate *this, const proto::gnss::Emergency::MeasurementReportWithEstimate *a2)
{
  *this = &unk_28585F3D0;
  *(this + 6) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0;
  proto::gnss::Emergency::MeasurementReportWithEstimate::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::MeasurementReportWithEstimate::MergeFrom(proto::gnss::Emergency::MeasurementReportWithEstimate *this, const proto::gnss::Emergency::MeasurementReportWithEstimate *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 52))
  {
    v5 = *(a2 + 2);
    if (v5 >= 9)
    {
      __assert_rtn("set_result", "GnssEmergencyTypes.pb.h", 26231, "::proto::gnss::Emergency::ErrorCodes_IsValid(value)");
    }

    *(this + 13) |= 1u;
    *(this + 2) = v5;
    v4 = *(a2 + 13);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 3);
    *(this + 13) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 13);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  *(this + 13) |= 4u;
  v8 = *(this + 2);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 2);
  if (!v9)
  {
    v9 = *(proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ + 16);
  }

  proto::gnss::Emergency::SessionInfo::MergeFrom(v8, v9);
  v4 = *(a2 + 13);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_26:
    *(this + 13) |= 0x10u;
    v12 = *(this + 4);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 4);
    if (!v13)
    {
      v13 = *(proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ + 32);
    }

    proto::gnss::Emergency::Is801LocationInd::MergeFrom(v12, v13);
    v4 = *(a2 + 13);
    if ((v4 & 0x20) == 0)
    {
LABEL_12:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_21:
  *(this + 13) |= 8u;
  v10 = *(this + 3);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 3);
  if (!v11)
  {
    v11 = *(proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ + 24);
  }

  proto::gnss::Emergency::GpsMeasurements::MergeFrom(v10, v11);
  v4 = *(a2 + 13);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_31:
  v14 = *(a2 + 10);
  if (v14 >= 4)
  {
    __assert_rtn("set_aflt_action", "GnssEmergencyTypes.pb.h", 26402, "::proto::gnss::Emergency::AfltAction_IsValid(value)");
  }

  *(this + 13) |= 0x20u;
  *(this + 10) = v14;
  if ((*(a2 + 13) & 0x40) != 0)
  {
LABEL_13:
    v6 = *(a2 + 44);
    *(this + 13) |= 0x40u;
    *(this + 44) = v6;
  }
}

void sub_2455100CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::MeasurementReportWithEstimate::~MeasurementReportWithEstimate(proto::gnss::Emergency::MeasurementReportWithEstimate *this)
{
  *this = &unk_28585F3D0;
  proto::gnss::Emergency::MeasurementReportWithEstimate::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585F3D0;
  proto::gnss::Emergency::MeasurementReportWithEstimate::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585F3D0;
  proto::gnss::Emergency::MeasurementReportWithEstimate::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Emergency::MeasurementReportWithEstimate::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ != this)
  {
    v1 = this;
    v2 = this[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    this = v1[4];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance(proto::gnss::Emergency::MeasurementReportWithEstimate *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_;
  if (!proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::MeasurementReportWithEstimate::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 52);
  if (v2)
  {
    *(this + 8) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 24))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 24) = 0;
        v2 = *(this + 52);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = proto::gnss::Emergency::GpsMeasurements::Clear(this);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = proto::gnss::Emergency::Is801LocationInd::Clear(this);
      }
    }

    *(v1 + 40) = 0;
    *(v1 + 44) = 0;
  }

  *(v1 + 52) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::MeasurementReportWithEstimate::MergePartialFromCodedStream(proto::gnss::Emergency::MeasurementReportWithEstimate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v6 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v47 = 0;
          v11 = *(a2 + 1);
          if (v11 >= *(a2 + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47);
            if (!result)
            {
              return result;
            }

            v12 = v47;
          }

          else
          {
            *(a2 + 1) = v11 + 1;
          }

          if (v12 <= 8)
          {
            *(this + 13) |= 1u;
            *(this + 2) = v12;
          }

          v18 = *(a2 + 1);
          v15 = *(a2 + 2);
          if (v18 < v15 && *v18 == 16)
          {
            v16 = v18 + 1;
            *(a2 + 1) = v16;
            goto LABEL_41;
          }
        }

        else
        {
          if (v6 != 2)
          {
            if (v6 != 3 || v7 != 2)
            {
              goto LABEL_30;
            }

            v8 = *(this + 13);
            goto LABEL_49;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v16 = *(a2 + 1);
          v15 = *(a2 + 2);
LABEL_41:
          if (v16 >= v15 || (v19 = *v16, v19 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v20 = *(a2 + 1);
            v15 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v19;
            v20 = v16 + 1;
            *(a2 + 1) = v20;
          }

          v8 = *(this + 13) | 2;
          *(this + 13) = v8;
          if (v20 < v15 && *v20 == 26)
          {
            *(a2 + 1) = v20 + 1;
LABEL_49:
            *(this + 13) = v8 | 4;
            v21 = *(this + 2);
            if (!v21)
            {
              operator new();
            }

            v47 = 0;
            v22 = *(a2 + 1);
            if (v22 >= *(a2 + 2) || *v22 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
              {
                return 0;
              }
            }

            else
            {
              v47 = *v22;
              *(a2 + 1) = v22 + 1;
            }

            v23 = *(a2 + 14);
            v24 = *(a2 + 15);
            *(a2 + 14) = v23 + 1;
            if (v23 >= v24)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!proto::gnss::Emergency::SessionInfo::MergePartialFromCodedStream(v21, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v25 = *(a2 + 14);
            v26 = __OFSUB__(v25, 1);
            v27 = v25 - 1;
            if (v27 < 0 == v26)
            {
              *(a2 + 14) = v27;
            }

            v28 = *(a2 + 1);
            if (v28 < *(a2 + 2) && *v28 == 34)
            {
              *(a2 + 1) = v28 + 1;
              goto LABEL_63;
            }
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        if (v6 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v13 = *(a2 + 2);
            goto LABEL_91;
          }
        }

        else if (v6 == 7 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_101;
        }

        goto LABEL_30;
      }

      if (v6 != 4)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_30;
      }

LABEL_63:
      *(this + 13) |= 8u;
      v29 = *(this + 3);
      if (!v29)
      {
        operator new();
      }

      v47 = 0;
      v30 = *(a2 + 1);
      if (v30 >= *(a2 + 2) || *v30 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
        {
          return 0;
        }
      }

      else
      {
        v47 = *v30;
        *(a2 + 1) = v30 + 1;
      }

      v31 = *(a2 + 14);
      v32 = *(a2 + 15);
      *(a2 + 14) = v31 + 1;
      if (v31 >= v32)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!proto::gnss::Emergency::GpsMeasurements::MergePartialFromCodedStream(v29, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v33 = *(a2 + 14);
      v26 = __OFSUB__(v33, 1);
      v34 = v33 - 1;
      if (v34 < 0 == v26)
      {
        *(a2 + 14) = v34;
      }

      v35 = *(a2 + 1);
      if (v35 < *(a2 + 2) && *v35 == 42)
      {
        *(a2 + 1) = v35 + 1;
LABEL_77:
        *(this + 13) |= 0x10u;
        v36 = *(this + 4);
        if (!v36)
        {
          operator new();
        }

        v47 = 0;
        v37 = *(a2 + 1);
        if (v37 >= *(a2 + 2) || *v37 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
          {
            return 0;
          }
        }

        else
        {
          v47 = *v37;
          *(a2 + 1) = v37 + 1;
        }

        v38 = *(a2 + 14);
        v39 = *(a2 + 15);
        *(a2 + 14) = v38 + 1;
        if (v38 >= v39)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::Is801LocationInd::MergePartialFromCodedStream(v36, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v40 = *(a2 + 14);
        v26 = __OFSUB__(v40, 1);
        v41 = v40 - 1;
        if (v41 < 0 == v26)
        {
          *(a2 + 14) = v41;
        }

        v42 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v42 < v13 && *v42 == 48)
        {
          v14 = v42 + 1;
          *(a2 + 1) = v14;
LABEL_91:
          v47 = 0;
          if (v14 >= v13 || (v43 = *v14, (v43 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47);
            if (!result)
            {
              return result;
            }

            v43 = v47;
          }

          else
          {
            *(a2 + 1) = v14 + 1;
          }

          if (v43 <= 3)
          {
            *(this + 13) |= 0x20u;
            *(this + 10) = v43;
          }

          v44 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v44 < v9 && *v44 == 56)
          {
            v10 = v44 + 1;
            *(a2 + 1) = v10;
LABEL_101:
            v47 = 0;
            if (v10 >= v9 || (v45 = *v10, (v45 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47);
              if (!result)
              {
                return result;
              }

              v45 = v47;
              v46 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v46 = v10 + 1;
              *(a2 + 1) = v46;
            }

            *(this + 44) = v45 != 0;
            *(this + 13) |= 0x40u;
            if (v46 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v6 == 5 && v7 == 2)
    {
      goto LABEL_77;
    }

LABEL_30:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gnss::Emergency::MeasurementReportWithEstimate::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_11:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_14:
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 40), a2, a4);
    if ((*(v5 + 52) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_17:
  v9 = *(v5 + 32);
  if (!v9)
  {
    v9 = *(proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_21:
  v10 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, v10, a2, a4);
}

uint64_t proto::gnss::Emergency::MeasurementReportWithEstimate::ByteSize(proto::gnss::Emergency::MeasurementReportWithEstimate *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    if (v2)
    {
      v5 = *(this + 2);
      if ((v5 & 0x80000000) != 0)
      {
        v3 = 11;
        if ((v2 & 2) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (v5 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(this + 13);
        if ((v2 & 2) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((v2 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    v6 = *(this + 3);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 13);
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
LABEL_17:
    if ((v2 & 4) != 0)
    {
      v8 = *(this + 2);
      if (!v8)
      {
        v8 = *(proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ + 16);
      }

      v9 = proto::gnss::Emergency::SessionInfo::ByteSize(v8);
      v10 = v9;
      if (v9 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
      }

      else
      {
        v11 = 1;
      }

      v3 += v10 + v11 + 1;
      v2 = *(this + 13);
      if ((v2 & 8) == 0)
      {
LABEL_19:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_34;
      }
    }

    else if ((v2 & 8) == 0)
    {
      goto LABEL_19;
    }

    v12 = *(this + 3);
    if (!v12)
    {
      v12 = *(proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ + 24);
    }

    v13 = proto::gnss::Emergency::GpsMeasurements::ByteSize(v12);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    }

    else
    {
      v15 = 1;
    }

    v3 += v14 + v15 + 1;
    v2 = *(this + 13);
    if ((v2 & 0x10) == 0)
    {
LABEL_20:
      if ((v2 & 0x20) == 0)
      {
LABEL_46:
        result = ((v2 >> 5) & 2) + v3;
        goto LABEL_47;
      }

LABEL_40:
      v20 = *(this + 10);
      if ((v20 & 0x80000000) != 0)
      {
        v21 = 11;
      }

      else if (v20 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
        v2 = *(this + 13);
      }

      else
      {
        v21 = 2;
      }

      v3 += v21;
      goto LABEL_46;
    }

LABEL_34:
    v16 = *(this + 4);
    if (!v16)
    {
      v16 = *(proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ + 32);
    }

    v17 = proto::gnss::Emergency::Is801LocationInd::ByteSize(v16);
    v18 = v17;
    if (v17 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
    }

    else
    {
      v19 = 1;
    }

    v3 += v18 + v19 + 1;
    v2 = *(this + 13);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }

  result = 0;
LABEL_47:
  *(this + 12) = result;
  return result;
}

void proto::gnss::Emergency::MeasurementReportWithEstimate::CheckTypeAndMergeFrom(proto::gnss::Emergency::MeasurementReportWithEstimate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::MeasurementReportWithEstimate::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::MeasurementReportWithEstimate::CopyFrom(proto::gnss::Emergency::MeasurementReportWithEstimate *this, const proto::gnss::Emergency::MeasurementReportWithEstimate *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::MeasurementReportWithEstimate::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::MeasurementReportWithEstimate::Swap(uint64_t this, proto::gnss::Emergency::MeasurementReportWithEstimate *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v6;
    LODWORD(v6) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v6;
    LOBYTE(v6) = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v6;
    LODWORD(v6) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v6;
    LODWORD(v6) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v6;
  }

  return this;
}

uint64_t proto::gnss::Emergency::Cdma1xContext::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

proto::gnss::Emergency::Cdma1xContext *proto::gnss::Emergency::Cdma1xContext::Cdma1xContext(proto::gnss::Emergency::Cdma1xContext *this, const proto::gnss::Emergency::Cdma1xContext *a2)
{
  *this = &unk_28585F448;
  *(this + 1) = 0;
  *(this + 4) = 0;
  proto::gnss::Emergency::Cdma1xContext::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::Cdma1xContext::~Cdma1xContext(proto::gnss::Emergency::Cdma1xContext *this)
{
  *this = &unk_28585F448;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585F448;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585F448;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::Cdma1xContext::MergePartialFromCodedStream(proto::gnss::Emergency::Cdma1xContext *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v9 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v21 = 0;
      v10 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v10 >= v7 || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
        if (!result)
        {
          return result;
        }

        v11 = v21;
        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 8) = v11 != 0;
      *(this + 4) |= 1u;
      if (v12 < v7 && *v12 == 16)
      {
        v8 = v12 + 1;
        *(a2 + 1) = v8;
LABEL_29:
        v21 = 0;
        if (v8 >= v7 || (v14 = *v8, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
          if (!result)
          {
            return result;
          }

          v14 = v21;
          v15 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v15 = v8 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 9) = v14 != 0;
        *(this + 4) |= 2u;
        if (v15 < v7 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_37:
          v21 = 0;
          if (v13 >= v7 || (v16 = *v13, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
            if (!result)
            {
              return result;
            }

            v16 = v21;
            v17 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 10) = v16 != 0;
          *(this + 4) |= 4u;
          if (v17 < v7 && *v17 == 32)
          {
            v9 = v17 + 1;
            *(a2 + 1) = v9;
LABEL_45:
            v21 = 0;
            if (v9 >= v7 || (v18 = *v9, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
              if (!result)
              {
                return result;
              }

              v18 = v21;
              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v19 = v9 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 11) = v18 != 0;
            *(this + 4) |= 8u;
            if (v19 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gnss::Emergency::Cdma1xContext::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 16);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = *(v5 + 16);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
      if ((*(v5 + 16) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
  v6 = *(v5 + 16);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v5 + 11);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::Cdma1xContext::ByteSize(proto::gnss::Emergency::Cdma1xContext *this)
{
  LODWORD(v1) = 2 * (*(this + 4) & 1) + (*(this + 4) & 2) + ((*(this + 4) >> 1) & 2) + ((*(this + 4) >> 2) & 2);
  if (*(this + 4))
  {
    v1 = v1;
  }

  else
  {
    v1 = 0;
  }

  *(this + 3) = v1;
  return v1;
}

void proto::gnss::Emergency::Cdma1xContext::CheckTypeAndMergeFrom(proto::gnss::Emergency::Cdma1xContext *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::Cdma1xContext::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::Cdma1xContext::CopyFrom(proto::gnss::Emergency::Cdma1xContext *this, const proto::gnss::Emergency::Cdma1xContext *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::Cdma1xContext::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::Cdma1xContext::Swap(uint64_t this, proto::gnss::Emergency::Cdma1xContext *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v3;
    v4 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v4;
    v5 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    v6 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v7;
  }

  return this;
}

uint64_t *wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(uint64_t *result, int a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    v3 = *result;
    v4 = 2 * v2;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 4)
    {
      v4 = 4;
    }

    *(result + 3) = v4;
    operator new[]();
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnss::Emergency::LteCellInfo>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        operator new();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      proto::gnss::Emergency::LteCellInfo::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }
}

void sub_245511AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnss::Emergency::GsmCellInfo>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        operator new();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      proto::gnss::Emergency::GsmCellInfo::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }
}

void sub_245511C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnss::Emergency::WcdmaCellInfo>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        operator new();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      proto::gnss::Emergency::WcdmaCellInfo::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }
}

void sub_245511DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnss::Emergency::GpsEphemeris>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        operator new();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      proto::gnss::Emergency::GpsEphemeris::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }
}

void sub_245511F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CLP::LogEntry::PrivateData::protobuf_ShutdownFile_CLPGnssMeasApi_2eproto(CLP::LogEntry::PrivateData *this)
{
  if (CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance_ + 8))(CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GlonassId::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GlonassId::default_instance_ + 8))(CLP::LogEntry::PrivateData::GlonassId::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::ConstellationId::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::ConstellationId::default_instance_ + 8))(CLP::LogEntry::PrivateData::ConstellationId::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SvId::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SvId::default_instance_ + 8))(CLP::LogEntry::PrivateData::SvId::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_ + 8))(CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_ + 8))(CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_ + 8))(CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_ + 8))(CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_ + 8))(CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_ + 8))(CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_ + 8))(CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_ + 8))(CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_ + 8))(CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SyncState::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SyncState::default_instance_ + 8))(CLP::LogEntry::PrivateData::SyncState::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SvTime::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SvTime::default_instance_ + 8))(CLP::LogEntry::PrivateData::SvTime::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_ + 8))(CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_ + 8))(CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::PhaseTracking::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::PhaseTracking::default_instance_ + 8))(CLP::LogEntry::PrivateData::PhaseTracking::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 8))(CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::FullSvTime::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::FullSvTime::default_instance_ + 8))(CLP::LogEntry::PrivateData::FullSvTime::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_ + 8))(CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 8))(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::Measurement::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::Measurement::default_instance_ + 8))(CLP::LogEntry::PrivateData::Measurement::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_ + 8))(CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_ + 8))(CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_ + 8))(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::Clock::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::Clock::default_instance_ + 8))(CLP::LogEntry::PrivateData::Clock::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::MeasurementReport::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ + 8))(CLP::LogEntry::PrivateData::MeasurementReport::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_ + 8))(CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SvBandCorrections::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SvBandCorrections::default_instance_ + 8))(CLP::LogEntry::PrivateData::SvBandCorrections::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ + 8))(CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_ + 8))(CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SvInfo::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 8))(CLP::LogEntry::PrivateData::SvInfo::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::ReceiverBandCorrections::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::ReceiverBandCorrections::default_instance_ + 8))(CLP::LogEntry::PrivateData::ReceiverBandCorrections::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::LeapSecondChange::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::LeapSecondChange::default_instance_ + 8))(CLP::LogEntry::PrivateData::LeapSecondChange::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_ + 8))(CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_ + 8))(CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 8))(CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_ + 8))(CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 8))(CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_ + 8))(CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 8))(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 8))(CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_ + 8))(CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 8))(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_ + 8))(CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::SfcfXyz::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::SfcfXyz::default_instance_ + 8))(CLP::LogEntry::PrivateData::SfcfXyz::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 8))(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_);
  }

  if (CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_)
  {
    (*(*CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_ + 8))(CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_);
  }

  result = CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_;
  if (CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_)
  {
    v2 = *(*CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 8);

    return v2();
  }

  return result;
}

void CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(CLP::LogEntry::PrivateData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(void)::already_here & 1) == 0)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(void)::already_here = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "Sources/Protobuf/Generated/CLPGnssMeasApi.pb.cc", a4);
    operator new();
  }
}

void *CLP::LogEntry::PrivateData::GlonassSlotInfo::GlonassSlotInfo(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585FDA8;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585FDA8;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassId::GlonassId(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585FE20;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585FE20;
  *(this + 24) = 0;
  return this;
}

double CLP::LogEntry::PrivateData::ConstellationId::ConstellationId(CLP::LogEntry::PrivateData::ConstellationId *this)
{
  *this = &unk_28585FE98;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_28585FE98;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::SvId::SvId(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585FF10;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585FF10;
  *(this + 24) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsL1SyncState::GpsL1SyncState(uint64_t this)
{
  *this = &unk_28585FF88;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_28585FF88;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsL2CSyncState::GpsL2CSyncState(uint64_t this)
{
  *this = &unk_285860000;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_285860000;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsL5SyncState::GpsL5SyncState(uint64_t this)
{
  *this = &unk_285860078;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_285860078;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassL1fSyncState::GlonassL1fSyncState(uint64_t this)
{
  *this = &unk_2858600F0;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_2858600F0;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::BeidouB1SyncState::BeidouB1SyncState(uint64_t this)
{
  *this = &unk_285860168;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_285860168;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::BeidouB2SyncState::BeidouB2SyncState(uint64_t this)
{
  *this = &unk_2858601E0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_2858601E0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GalileoE1SyncState::GalileoE1SyncState(uint64_t this)
{
  *this = &unk_285860258;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_285860258;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GalileoE5SyncState::GalileoE5SyncState(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 24) = 0;
  *this = &unk_2858602D0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *(this + 20) = 0;
  *(this + 24) = 0;
  *this = &unk_2858602D0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SbasL1SyncState::SbasL1SyncState(uint64_t this)
{
  *this = &unk_285860348;
  *(this + 12) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_285860348;
  *(this + 12) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  return this;
}

double CLP::LogEntry::PrivateData::SyncState::SyncState(CLP::LogEntry::PrivateData::SyncState *this)
{
  *this = &unk_2858603C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  return result;
}

{
  *this = &unk_2858603C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::SvTime::SvTime(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285860438;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285860438;
  *(this + 24) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::FrequencyOffset::FrequencyOffset(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2858604B0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2858604B0;
  *(this + 24) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::FrequencyOffsetFromPhaseTracking(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285860528;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285860528;
  *(this + 24) = 0;
  return this;
}

double CLP::LogEntry::PrivateData::PhaseTracking::PhaseTracking(CLP::LogEntry::PrivateData::PhaseTracking *this)
{
  *this = &unk_2858605A0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  return result;
}

{
  *this = &unk_2858605A0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::SignalCorrelationPeak::SignalCorrelationPeak(uint64_t this)
{
  *this = &unk_285860618;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_285860618;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::FullSvTime::FullSvTime(uint64_t this)
{
  *this = &unk_285860690;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_285860690;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvMeasurementUsage::SvMeasurementUsage(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285860708;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285860708;
  *(this + 24) = 0;
  return this;
}

double CLP::LogEntry::PrivateData::MeasurementExtension::MeasurementExtension(CLP::LogEntry::PrivateData::MeasurementExtension *this)
{
  *this = &unk_285860780;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  v2 = MEMORY[0x277D82C30];
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 10) = v2;
  *(this + 14) = 0;
  return result;
}

{
  *this = &unk_285860780;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  v2 = MEMORY[0x277D82C30];
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 10) = v2;
  *(this + 14) = 0;
  return result;
}

double CLP::LogEntry::PrivateData::Measurement::Measurement(CLP::LogEntry::PrivateData::Measurement *this)
{
  *this = &unk_2858607F8;
  *(this + 27) = 0;
  *(this + 28) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0;
  return result;
}

{
  *this = &unk_2858607F8;
  *(this + 27) = 0;
  *(this + 28) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockModel::ReceiverClockModel(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285860870;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285860870;
  *(this + 24) = 0;
  return this;
}

double CLP::LogEntry::PrivateData::ReceiverClockCorrections::ReceiverClockCorrections(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this)
{
  *this = &unk_2858608E8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_2858608E8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::ReceiverToGpsTimeConversion(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this)
{
  *this = &unk_285860960;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_285860960;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

double CLP::LogEntry::PrivateData::Clock::Clock(CLP::LogEntry::PrivateData::Clock *this)
{
  *this = &unk_2858609D8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_2858609D8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReport::MeasurementReport(uint64_t this)
{
  *(this + 40) = 0;
  *this = &unk_285860A50;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *this = &unk_285860A50;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double CLP::LogEntry::PrivateData::Wgs84Ecef::Wgs84Ecef(CLP::LogEntry::PrivateData::Wgs84Ecef *this)
{
  *this = &unk_285860AC8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_285860AC8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double CLP::LogEntry::PrivateData::SvBandCorrections::SvBandCorrections(CLP::LogEntry::PrivateData::SvBandCorrections *this)
{
  *this = &unk_285860B40;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_285860B40;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

void *CLP::LogEntry::PrivateData::SvPositionAtTime::SvPositionAtTime(void *this)
{
  *this = &unk_285860BB8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_285860BB8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double CLP::LogEntry::PrivateData::PolynomialOrbit::PolynomialOrbit(CLP::LogEntry::PrivateData::PolynomialOrbit *this)
{
  *this = &unk_285860C30;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

{
  *this = &unk_285860C30;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

double CLP::LogEntry::PrivateData::SvInfo::SvInfo(CLP::LogEntry::PrivateData::SvInfo *this)
{
  *this = &unk_285860CA8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 108) = 0u;
  return result;
}

{
  *this = &unk_285860CA8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 108) = 0u;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverBandCorrections::ReceiverBandCorrections(uint64_t this)
{
  *this = &unk_285860D20;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_285860D20;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondChange::LeapSecondChange(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285860D98;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285860D98;
  *(this + 24) = 0;
  return this;
}

void *CLP::LogEntry::PrivateData::LeapSecondInfo::LeapSecondInfo(void *this)
{
  *this = &unk_285860E10;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_285860E10;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double CLP::LogEntry::PrivateData::GpsToUtcConversion::GpsToUtcConversion(CLP::LogEntry::PrivateData::GpsToUtcConversion *this)
{
  *this = &unk_285860E88;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_285860E88;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::GpsTimeInfo::GpsTimeInfo(uint64_t this)
{
  *this = &unk_285860F00;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_285860F00;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void *CLP::LogEntry::PrivateData::GlonassSubsecondConversion::GlonassSubsecondConversion(void *this)
{
  *this = &unk_285860F78;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_285860F78;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double CLP::LogEntry::PrivateData::GlonassTimeInfo::GlonassTimeInfo(CLP::LogEntry::PrivateData::GlonassTimeInfo *this)
{
  *this = &unk_285860FF0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_285860FF0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

double CLP::LogEntry::PrivateData::SubSecondConversion::SubSecondConversion(CLP::LogEntry::PrivateData::SubSecondConversion *this)
{
  *this = &unk_285861068;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_285861068;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double CLP::LogEntry::PrivateData::BeidouTimeInfo::BeidouTimeInfo(CLP::LogEntry::PrivateData::BeidouTimeInfo *this)
{
  *this = &unk_2858610E0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

{
  *this = &unk_2858610E0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

double CLP::LogEntry::PrivateData::GalileoTimeInfo::GalileoTimeInfo(CLP::LogEntry::PrivateData::GalileoTimeInfo *this)
{
  *this = &unk_285861158;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_285861158;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::NavicTimeInfo::NavicTimeInfo(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2858611D0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2858611D0;
  *(this + 24) = 0;
  return this;
}

double CLP::LogEntry::PrivateData::TimeConversionInfo::TimeConversionInfo(CLP::LogEntry::PrivateData::TimeConversionInfo *this)
{
  *this = &unk_285861248;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_285861248;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CLP::LogEntry::PrivateData::KlobucharModelParameters::KlobucharModelParameters(CLP::LogEntry::PrivateData::KlobucharModelParameters *this)
{
  *this = &unk_2858612C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_2858612C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CLP::LogEntry::PrivateData::SfcfXyz::SfcfXyz(CLP::LogEntry::PrivateData::SfcfXyz *this)
{
  *this = &unk_285861338;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_285861338;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::AntennaPhaseCenterSvOffset(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this)
{
  *this = &unk_2858613B0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_2858613B0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double CLP::LogEntry::PrivateData::ReceivedTimeStamp::ReceivedTimeStamp(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this)
{
  *this = &unk_285861428;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_285861428;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MeasurementReportCallbackContents(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this)
{
  *this = &unk_2858614A0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  return result;
}

{
  *this = &unk_2858614A0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  return result;
}

void CLP::LogEntry::PrivateData::GlonassId::InitAsDefaultInstance(CLP::LogEntry::PrivateData::GlonassId *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance_;
  }

  *(this + 1) = v5;
}

void CLP::LogEntry::PrivateData::ConstellationId::InitAsDefaultInstance(CLP::LogEntry::PrivateData::ConstellationId *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::GlonassId::default_instance_;
  if (!CLP::LogEntry::PrivateData::GlonassId::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::GlonassId::default_instance_;
  }

  *(this + 1) = v5;
}

void CLP::LogEntry::PrivateData::SvId::InitAsDefaultInstance(CLP::LogEntry::PrivateData::SvId *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::ConstellationId::default_instance_;
  if (!CLP::LogEntry::PrivateData::ConstellationId::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::ConstellationId::default_instance_;
  }

  *(this + 1) = v5;
}

CLP::LogEntry::PrivateData *CLP::LogEntry::PrivateData::SyncState::InitAsDefaultInstance(CLP::LogEntry::PrivateData *this)
{
  v1 = this;
  v2 = CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v2 = CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_;
  }

  *(v1 + 1) = v2;
  v3 = CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v3 = CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_;
  }

  *(v1 + 2) = v3;
  v4 = CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v4 = CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_;
  }

  *(v1 + 3) = v4;
  v5 = CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v5 = CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_;
  }

  *(v1 + 4) = v5;
  v6 = CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v6 = CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_;
  }

  *(v1 + 5) = v6;
  v7 = CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v7 = CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_;
  }

  *(v1 + 6) = v7;
  v8 = CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v8 = CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_;
  }

  *(v1 + 7) = v8;
  v9 = CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v9 = CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_;
  }

  *(v1 + 8) = v9;
  v10 = CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v10 = CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_;
  }

  *(v1 + 9) = v10;
  v11 = CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v11 = CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_;
  }

  *(v1 + 10) = v11;
  return this;
}

void CLP::LogEntry::PrivateData::SignalCorrelationPeak::InitAsDefaultInstance(CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::SvTime::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvTime::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::SvTime::default_instance_;
  }

  *(this + 1) = v5;
  v6 = CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_;
  if (!CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v6 = CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_;
  }

  *(this + 2) = v6;
}

CLP::LogEntry::PrivateData *CLP::LogEntry::PrivateData::MeasurementExtension::InitAsDefaultInstance(CLP::LogEntry::PrivateData *this)
{
  v1 = this;
  v2 = CLP::LogEntry::PrivateData::FullSvTime::default_instance_;
  if (!CLP::LogEntry::PrivateData::FullSvTime::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v2 = CLP::LogEntry::PrivateData::FullSvTime::default_instance_;
  }

  *(v1 + 2) = v2;
  v3 = CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_;
  if (CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_)
  {
    *(v1 + 3) = CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_;
LABEL_6:
    *(v1 + 4) = v3;
    goto LABEL_7;
  }

  this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
  v3 = CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_;
  *(v1 + 3) = CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_;
  if (v3)
  {
    goto LABEL_6;
  }

  this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
  v3 = CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_;
  *(v1 + 4) = CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_;
  if (!v3)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v3 = CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_;
  }

LABEL_7:
  *(v1 + 5) = v3;
  return this;
}

CLP::LogEntry::PrivateData *CLP::LogEntry::PrivateData::Measurement::InitAsDefaultInstance(CLP::LogEntry::PrivateData *this)
{
  v1 = this;
  v2 = CLP::LogEntry::PrivateData::SvId::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvId::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v2 = CLP::LogEntry::PrivateData::SvId::default_instance_;
  }

  *(v1 + 1) = v2;
  v3 = CLP::LogEntry::PrivateData::SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::SyncState::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v3 = CLP::LogEntry::PrivateData::SyncState::default_instance_;
  }

  *(v1 + 2) = v3;
  v4 = CLP::LogEntry::PrivateData::SvTime::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvTime::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v4 = CLP::LogEntry::PrivateData::SvTime::default_instance_;
  }

  *(v1 + 6) = v4;
  v5 = CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_;
  if (!CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v5 = CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_;
  }

  *(v1 + 7) = v5;
  v6 = CLP::LogEntry::PrivateData::PhaseTracking::default_instance_;
  if (!CLP::LogEntry::PrivateData::PhaseTracking::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v6 = CLP::LogEntry::PrivateData::PhaseTracking::default_instance_;
  }

  *(v1 + 8) = v6;
  v7 = CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_;
  if (!CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v7 = CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_;
  }

  *(v1 + 9) = v7;
  v8 = CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_;
  if (!CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v8 = CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_;
  }

  *(v1 + 11) = v8;
  v9 = CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_;
  if (!CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v9 = CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_;
  }

  *(v1 + 12) = v9;
  return this;
}

void CLP::LogEntry::PrivateData::Clock::InitAsDefaultInstance(CLP::LogEntry::PrivateData::Clock *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_;
  }

  *(this + 2) = v5;
  v6 = CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v6 = CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_;
  }

  *(this + 3) = v6;
  v7 = CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v7 = CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_;
  }

  *(this + 4) = v7;
}

void CLP::LogEntry::PrivateData::MeasurementReport::InitAsDefaultInstance(CLP::LogEntry::PrivateData::MeasurementReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::Clock::default_instance_;
  if (!CLP::LogEntry::PrivateData::Clock::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::Clock::default_instance_;
  }

  *(this + 1) = v5;
}

void CLP::LogEntry::PrivateData::SvPositionAtTime::InitAsDefaultInstance(CLP::LogEntry::PrivateData::SvPositionAtTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_;
  if (!CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_;
  }

  *(this + 2) = v5;
}

void CLP::LogEntry::PrivateData::SvInfo::InitAsDefaultInstance(CLP::LogEntry::PrivateData::SvInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::SvId::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvId::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::SvId::default_instance_;
  }

  *(this + 1) = v5;
  v6 = CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_;
  if (!CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v6 = CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_;
  }

  *(this + 16) = v6;
}

void CLP::LogEntry::PrivateData::LeapSecondInfo::InitAsDefaultInstance(CLP::LogEntry::PrivateData::LeapSecondInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::LeapSecondChange::default_instance_;
  if (!CLP::LogEntry::PrivateData::LeapSecondChange::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::LeapSecondChange::default_instance_;
  }

  *(this + 2) = v5;
}

void CLP::LogEntry::PrivateData::GpsTimeInfo::InitAsDefaultInstance(CLP::LogEntry::PrivateData::GpsTimeInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_;
  }

  *(this + 1) = v5;
  v6 = CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v6 = CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_;
  }

  *(this + 2) = v6;
}

void CLP::LogEntry::PrivateData::GlonassTimeInfo::InitAsDefaultInstance(CLP::LogEntry::PrivateData::GlonassTimeInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_;
  if (CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_)
  {
    *(this + 2) = CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_;
  }

  else
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_;
    *(this + 2) = CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_;
    if (!v5)
    {
      CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(v6, v7, v8, v9);
      v5 = CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_;
    }
  }

  *(this + 3) = v5;
}

CLP::LogEntry::PrivateData *CLP::LogEntry::PrivateData::BeidouTimeInfo::InitAsDefaultInstance(CLP::LogEntry::PrivateData *this)
{
  v1 = this;
  v2 = CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v2 = CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_;
  }

  *(v1 + 1) = v2;
  v3 = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  if (CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_)
  {
    *(v1 + 2) = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
LABEL_6:
    *(v1 + 3) = v3;
LABEL_7:
    *(v1 + 4) = v3;
    goto LABEL_8;
  }

  this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
  v3 = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  *(v1 + 2) = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  if (v3)
  {
    goto LABEL_6;
  }

  this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
  v3 = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  *(v1 + 3) = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  if (v3)
  {
    goto LABEL_7;
  }

  this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
  v3 = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  *(v1 + 4) = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  if (!v3)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v3 = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  }

LABEL_8:
  *(v1 + 5) = v3;
  return this;
}

void CLP::LogEntry::PrivateData::GalileoTimeInfo::InitAsDefaultInstance(CLP::LogEntry::PrivateData::GalileoTimeInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_;
  }

  *(this + 1) = v5;
  v6 = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  if (CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_)
  {
    *(this + 2) = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  }

  else
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v6 = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
    *(this + 2) = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
    if (!v6)
    {
      CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(v7, v8, v9, v10);
      v6 = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
    }
  }

  *(this + 3) = v6;
}

void CLP::LogEntry::PrivateData::NavicTimeInfo::InitAsDefaultInstance(CLP::LogEntry::PrivateData::NavicTimeInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  if (!CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  }

  *(this + 1) = v5;
}

CLP::LogEntry::PrivateData *CLP::LogEntry::PrivateData::TimeConversionInfo::InitAsDefaultInstance(CLP::LogEntry::PrivateData *this)
{
  v1 = this;
  v2 = CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v2 = CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_;
  }

  *(v1 + 1) = v2;
  v3 = CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v3 = CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_;
  }

  *(v1 + 2) = v3;
  v4 = CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v4 = CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_;
  }

  *(v1 + 3) = v4;
  v5 = CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v5 = CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_;
  }

  *(v1 + 4) = v5;
  v6 = CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v6 = CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_;
  }

  *(v1 + 5) = v6;
  return this;
}

void CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::InitAsDefaultInstance(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::PrivateData::SvId::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvId::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::PrivateData::SvId::default_instance_;
  }

  *(this + 1) = v5;
  v6 = CLP::LogEntry::PrivateData::SfcfXyz::default_instance_;
  if (!CLP::LogEntry::PrivateData::SfcfXyz::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v6 = CLP::LogEntry::PrivateData::SfcfXyz::default_instance_;
  }

  *(this + 3) = v6;
}

CLP::LogEntry::PrivateData *CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::InitAsDefaultInstance(CLP::LogEntry::PrivateData *this)
{
  v1 = this;
  v2 = CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v2 = CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_;
  }

  *(v1 + 1) = v2;
  v3 = CLP::LogEntry::PrivateData::MeasurementReport::default_instance_;
  if (!CLP::LogEntry::PrivateData::MeasurementReport::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v3 = CLP::LogEntry::PrivateData::MeasurementReport::default_instance_;
  }

  *(v1 + 2) = v3;
  v4 = CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v4 = CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_;
  }

  *(v1 + 9) = v4;
  v5 = CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_;
  if (!CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_)
  {
    this = CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this);
    v5 = CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_;
  }

  *(v1 + 12) = v5;
  return this;
}

BOOL CLP::LogEntry::PrivateData::SatelliteSystem_IsValid(CLP::LogEntry::PrivateData *this)
{
  v1 = this;
  result = 1;
  if (v1 - 4 > 0x3C || ((1 << (v1 - 4)) & 0x1000000010001011) == 0)
  {
    return v1 < 3;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GlonassSlotInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CLP::LogEntry::PrivateData::GlonassSlotInfo *CLP::LogEntry::PrivateData::GlonassSlotInfo::GlonassSlotInfo(CLP::LogEntry::PrivateData::GlonassSlotInfo *this, const CLP::LogEntry::PrivateData::GlonassSlotInfo *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28585FDA8;
  CLP::LogEntry::PrivateData::GlonassSlotInfo::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::GlonassSlotInfo::MergeFrom(CLP::LogEntry::PrivateData::GlonassSlotInfo *this, const CLP::LogEntry::PrivateData::GlonassSlotInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 2);
      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      if (v6 >= 5)
      {
        __assert_rtn("set_slot_source", "CLPGnssMeasApi.pb.h", 6606, "::CLP::LogEntry::PrivateData::GlonassSlotSource_IsValid(value)");
      }

      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_245514E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::GlonassSlotInfo::~GlonassSlotInfo(CLP::LogEntry::PrivateData::GlonassSlotInfo *this)
{
  *this = &unk_28585FDA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585FDA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585FDA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance(CLP::LogEntry::PrivateData::GlonassSlotInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GlonassSlotInfo::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassSlotInfo::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GlonassSlotInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, v8 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v8;
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 5) |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(a2 + 1) = v10;
LABEL_22:
        v13 = 0;
        if (v10 >= v6 || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v13);
          if (!result)
          {
            return result;
          }

          v11 = v13;
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v11 <= 4)
        {
          *(this + 5) |= 2u;
          *(this + 3) = v11;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v6 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CLP::LogEntry::PrivateData::GlonassSlotInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v7, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassSlotInfo::ByteSize(CLP::LogEntry::PrivateData::GlonassSlotInfo *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    if (*(this + 20))
    {
      v4 = *(this + 2);
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 5) & 2) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    v5 = *(this + 3);
    if ((v5 & 0x80000000) != 0)
    {
      v6 = 11;
    }

    else if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 = (v6 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_16:
  *(this + 4) = v3;
  return v3;
}

void CLP::LogEntry::PrivateData::GlonassSlotInfo::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GlonassSlotInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::GlonassSlotInfo::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::GlonassSlotInfo::CopyFrom(CLP::LogEntry::PrivateData::GlonassSlotInfo *this, const CLP::LogEntry::PrivateData::GlonassSlotInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::GlonassSlotInfo::MergeFrom(this, a2);
  }
}

CLP::LogEntry::PrivateData::GlonassSlotInfo *CLP::LogEntry::PrivateData::GlonassSlotInfo::Swap(CLP::LogEntry::PrivateData::GlonassSlotInfo *this, CLP::LogEntry::PrivateData::GlonassSlotInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassId::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::GlonassId *CLP::LogEntry::PrivateData::GlonassId::GlonassId(CLP::LogEntry::PrivateData::GlonassId *this, const CLP::LogEntry::PrivateData::GlonassId *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28585FE20;
  *(this + 6) = 0;
  CLP::LogEntry::PrivateData::GlonassId::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::GlonassId::MergeFrom(CLP::LogEntry::PrivateData::GlonassId *this, const CLP::LogEntry::PrivateData::GlonassId *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      *(this + 6) |= 2u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        v7 = *(CLP::LogEntry::PrivateData::GlonassId::default_instance_ + 8);
      }

      CLP::LogEntry::PrivateData::GlonassSlotInfo::MergeFrom(v6, v7);
    }
  }
}

void sub_2455154F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::GlonassId::~GlonassId(CLP::LogEntry::PrivateData::GlonassId *this)
{
  *this = &unk_28585FE20;
  if (CLP::LogEntry::PrivateData::GlonassId::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::PrivateData::GlonassId::~GlonassId(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::GlonassId::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::GlonassId::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassId::default_instance(CLP::LogEntry::PrivateData::GlonassId *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GlonassId::default_instance_;
  if (!CLP::LogEntry::PrivateData::GlonassId::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GlonassId::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GlonassId::Clear(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    *(this + 16) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 20))
        {
          *(v2 + 8) = 0;
        }

        *(v2 + 20) = 0;
      }
    }
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassId::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GlonassId *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    do
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v6 == 2)
        {
          v11 = *(this + 6);
          goto LABEL_22;
        }

LABEL_13:
        if (v6 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v20 = 0;
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20);
        if (!result)
        {
          return result;
        }

        v9 = v20;
        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 4) = v9;
      v11 = *(this + 6) | 1;
      *(this + 6) = v11;
    }

    while (v10 >= v7 || *v10 != 18);
    *(a2 + 1) = v10 + 1;
LABEL_22:
    *(this + 6) = v11 | 2;
    v13 = *(this + 1);
    if (!v13)
    {
      operator new();
    }

    v21 = 0;
    v14 = *(a2 + 1);
    if (v14 >= *(a2 + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21))
      {
        return 0;
      }
    }

    else
    {
      v21 = *v14;
      *(a2 + 1) = v14 + 1;
    }

    v15 = *(a2 + 14);
    v16 = *(a2 + 15);
    *(a2 + 14) = v15 + 1;
    if (v15 >= v16)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CLP::LogEntry::PrivateData::GlonassSlotInfo::MergePartialFromCodedStream(v13, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v17 = *(a2 + 14);
    v18 = __OFSUB__(v17, 1);
    v19 = v17 - 1;
    if (v19 < 0 == v18)
    {
      *(a2 + 14) = v19;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t CLP::LogEntry::PrivateData::GlonassId::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::GlonassId::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassId::ByteSize(CLP::LogEntry::PrivateData::GlonassId *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if (*(this + 24))
    {
      v4 = *(this + 4);
      if ((v4 & 0x80000000) != 0)
      {
        v3 = 11;
        if ((v2 & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v5 = *(this + 1);
    if (!v5)
    {
      v5 = *(CLP::LogEntry::PrivateData::GlonassId::default_instance_ + 8);
    }

    v6 = CLP::LogEntry::PrivateData::GlonassSlotInfo::ByteSize(v5);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
    }

    else
    {
      v8 = 1;
    }

    v3 = (v3 + v7 + v8 + 1);
  }

  else
  {
    v3 = 0;
  }

LABEL_19:
  *(this + 5) = v3;
  return v3;
}

void CLP::LogEntry::PrivateData::GlonassId::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GlonassId *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::GlonassId::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::GlonassId::CopyFrom(CLP::LogEntry::PrivateData::GlonassId *this, const CLP::LogEntry::PrivateData::GlonassId *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::GlonassId::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::GlonassId::Swap(uint64_t this, CLP::LogEntry::PrivateData::GlonassId *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

double CLP::LogEntry::PrivateData::ConstellationId::SharedCtor(CLP::LogEntry::PrivateData::ConstellationId *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::ConstellationId *CLP::LogEntry::PrivateData::ConstellationId::ConstellationId(CLP::LogEntry::PrivateData::ConstellationId *this, const CLP::LogEntry::PrivateData::ConstellationId *a2)
{
  *this = &unk_28585FE98;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CLP::LogEntry::PrivateData::ConstellationId::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::ConstellationId::MergeFrom(CLP::LogEntry::PrivateData::ConstellationId *this, const CLP::LogEntry::PrivateData::ConstellationId *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v6 = *(a2 + 4);
      *(this + 11) |= 1u;
      *(this + 4) = v6;
      v4 = *(a2 + 11);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 11) |= 2u;
    v7 = *(this + 1);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 1);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::ConstellationId::default_instance_ + 8);
    }

    CLP::LogEntry::PrivateData::GlonassId::MergeFrom(v7, v8);
    v4 = *(a2 + 11);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_19:
    v9 = *(a2 + 5);
    *(this + 11) |= 4u;
    *(this + 5) = v9;
    v4 = *(a2 + 11);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

LABEL_20:
    v10 = *(a2 + 6);
    *(this + 11) |= 8u;
    *(this + 6) = v10;
    v4 = *(a2 + 11);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }

LABEL_21:
    v11 = *(a2 + 7);
    *(this + 11) |= 0x10u;
    *(this + 7) = v11;
    v4 = *(a2 + 11);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_22:
    v12 = *(a2 + 8);
    *(this + 11) |= 0x20u;
    *(this + 8) = v12;
    if ((*(a2 + 11) & 0x40) == 0)
    {
      return;
    }

LABEL_11:
    v5 = *(a2 + 9);
    *(this + 11) |= 0x40u;
    *(this + 9) = v5;
  }
}

void sub_245515E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::ConstellationId::~ConstellationId(CLP::LogEntry::PrivateData::ConstellationId *this)
{
  *this = &unk_28585FE98;
  if (CLP::LogEntry::PrivateData::ConstellationId::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::PrivateData::ConstellationId::~ConstellationId(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::ConstellationId::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::ConstellationId::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::ConstellationId::default_instance(CLP::LogEntry::PrivateData::ConstellationId *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::ConstellationId::default_instance_;
  if (!CLP::LogEntry::PrivateData::ConstellationId::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::ConstellationId::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::ConstellationId::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 44);
  if (v2)
  {
    *(this + 16) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 8);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::GlonassId::Clear(this);
      }
    }

    *(v1 + 28) = 0;
    *(v1 + 20) = 0;
    *(v1 + 36) = 0;
  }

  *(v1 + 44) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::ConstellationId::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::ConstellationId *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 <= 3)
        {
          break;
        }

        if (TagFallback >> 3 > 5)
        {
          if (v6 == 6)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_77;
            }
          }

          else if (v6 == 7 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_85;
          }

          goto LABEL_30;
        }

        if (v6 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
LABEL_61:
          if (v16 >= v8 || (v30 = *v16, v30 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v31 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v30;
            v31 = v16 + 1;
            *(a2 + 1) = v31;
          }

          *(this + 11) |= 8u;
          if (v31 < v8 && *v31 == 40)
          {
            v9 = v31 + 1;
            *(a2 + 1) = v9;
LABEL_69:
            if (v9 >= v8 || (v32 = *v9, v32 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v33 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v32;
              v33 = v9 + 1;
              *(a2 + 1) = v33;
            }

            *(this + 11) |= 0x10u;
            if (v33 < v8 && *v33 == 48)
            {
              v17 = v33 + 1;
              *(a2 + 1) = v17;
LABEL_77:
              if (v17 >= v8 || (v34 = *v17, v34 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v35 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v34;
                v35 = v17 + 1;
                *(a2 + 1) = v35;
              }

              *(this + 11) |= 0x20u;
              if (v35 < v8 && *v35 == 56)
              {
                v11 = v35 + 1;
                *(a2 + 1) = v11;
LABEL_85:
                if (v11 >= v8 || (v36 = *v11, v36 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                  if (!result)
                  {
                    return result;
                  }

                  v37 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  *(this + 9) = v36;
                  v37 = v11 + 1;
                  *(a2 + 1) = v37;
                }

                *(this + 11) |= 0x40u;
                if (v37 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }
            }
          }
        }

        else
        {
          if (v6 == 5 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_69;
          }

LABEL_30:
          if (v7 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v13 = *(a2 + 1);
      v12 = *(a2 + 2);
      if (v13 >= v12 || (v14 = *v13, v14 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v15 = *(a2 + 1);
        v12 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v14;
        v15 = v13 + 1;
        *(a2 + 1) = v15;
      }

      v18 = *(this + 11) | 1;
      *(this + 11) = v18;
      if (v15 < v12 && *v15 == 18)
      {
        *(a2 + 1) = v15 + 1;
        goto LABEL_39;
      }
    }

    if (v6 != 2)
    {
      if (v6 != 3 || (TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_53;
    }

    if (v7 != 2)
    {
      goto LABEL_30;
    }

    v18 = *(this + 11);
LABEL_39:
    *(this + 11) = v18 | 2;
    v20 = *(this + 1);
    if (!v20)
    {
      operator new();
    }

    v38 = 0;
    v21 = *(a2 + 1);
    if (v21 >= *(a2 + 2) || *v21 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38))
      {
        return 0;
      }
    }

    else
    {
      v38 = *v21;
      *(a2 + 1) = v21 + 1;
    }

    v22 = *(a2 + 14);
    v23 = *(a2 + 15);
    *(a2 + 14) = v22 + 1;
    if (v22 >= v23)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CLP::LogEntry::PrivateData::GlonassId::MergePartialFromCodedStream(v20, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v24 = *(a2 + 14);
    v25 = __OFSUB__(v24, 1);
    v26 = v24 - 1;
    if (v26 < 0 == v25)
    {
      *(a2 + 14) = v26;
    }

    v27 = *(a2 + 1);
    v8 = *(a2 + 2);
    if (v27 < v8 && *v27 == 24)
    {
      v10 = v27 + 1;
      *(a2 + 1) = v10;
LABEL_53:
      if (v10 >= v8 || (v28 = *v10, v28 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
        if (!result)
        {
          return result;
        }

        v29 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 5) = v28;
        v29 = v10 + 1;
        *(a2 + 1) = v29;
      }

      *(this + 11) |= 4u;
      if (v29 < v8 && *v29 == 32)
      {
        v16 = v29 + 1;
        *(a2 + 1) = v16;
        goto LABEL_61;
      }
    }
  }
}

uint64_t CLP::LogEntry::PrivateData::ConstellationId::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    v7 = *(CLP::LogEntry::PrivateData::ConstellationId::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
    if ((*(v5 + 44) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_17:
  v8 = *(v5 + 36);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v8, a2, a4);
}

uint64_t CLP::LogEntry::PrivateData::ConstellationId::ByteSize(CLP::LogEntry::PrivateData::ConstellationId *this)
{
  LOBYTE(v2) = *(this + 44);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
  }

  if (*(this + 44))
  {
    v4 = *(this + 4);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 11);
      if ((v2 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(this + 1);
  if (!v5)
  {
    v5 = *(CLP::LogEntry::PrivateData::ConstellationId::default_instance_ + 8);
  }

  v6 = CLP::LogEntry::PrivateData::GlonassId::ByteSize(v5);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v3 = (v3 + v7 + v8 + 1);
  v2 = *(this + 11);
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v9 = *(this + 5);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v2 = *(this + 11);
    }

    else
    {
      v10 = 2;
    }

    v3 = (v10 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v11 = *(this + 6);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(this + 11);
  }

  else
  {
    v12 = 2;
  }

  v3 = (v12 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_30:
  v13 = *(this + 7);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = *(this + 11);
  }

  else
  {
    v14 = 2;
  }

  v3 = (v14 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_20:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_34:
  v15 = *(this + 8);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = *(this + 11);
  }

  else
  {
    v16 = 2;
  }

  v3 = (v16 + v3);
  if ((v2 & 0x40) != 0)
  {
LABEL_38:
    v17 = *(this + 9);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    }

    else
    {
      v18 = 2;
    }

    v3 = (v18 + v3);
  }

LABEL_42:
  *(this + 10) = v3;
  return v3;
}

void CLP::LogEntry::PrivateData::ConstellationId::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::ConstellationId *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::ConstellationId::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::ConstellationId::CopyFrom(CLP::LogEntry::PrivateData::ConstellationId *this, const CLP::LogEntry::PrivateData::ConstellationId *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::ConstellationId::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::ConstellationId::Swap(uint64_t this, CLP::LogEntry::PrivateData::ConstellationId *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v3;
    LODWORD(v3) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v3;
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvId::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::SvId *CLP::LogEntry::PrivateData::SvId::SvId(CLP::LogEntry::PrivateData::SvId *this, const CLP::LogEntry::PrivateData::SvId *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28585FF10;
  *(this + 6) = 0;
  CLP::LogEntry::PrivateData::SvId::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::SvId::MergeFrom(CLP::LogEntry::PrivateData::SvId *this, const CLP::LogEntry::PrivateData::SvId *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      *(this + 6) |= 2u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        v7 = *(CLP::LogEntry::PrivateData::SvId::default_instance_ + 8);
      }

      CLP::LogEntry::PrivateData::ConstellationId::MergeFrom(v6, v7);
    }
  }
}

void sub_245516AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SvId::~SvId(CLP::LogEntry::PrivateData::SvId *this)
{
  *this = &unk_28585FF10;
  if (CLP::LogEntry::PrivateData::SvId::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::PrivateData::SvId::~SvId(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::SvId::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::SvId::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvId::default_instance(CLP::LogEntry::PrivateData::SvId *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SvId::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvId::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SvId::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SvId::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 16) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 8);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::ConstellationId::Clear(this);
      }
    }
  }

  *(v1 + 24) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvId::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SvId *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    do
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v6 == 2)
        {
          v11 = *(this + 6);
          goto LABEL_22;
        }

LABEL_13:
        if (v6 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      v11 = *(this + 6) | 1;
      *(this + 6) = v11;
    }

    while (v10 >= v7 || *v10 != 18);
    *(a2 + 1) = v10 + 1;
LABEL_22:
    *(this + 6) = v11 | 2;
    v13 = *(this + 1);
    if (!v13)
    {
      operator new();
    }

    v20 = 0;
    v14 = *(a2 + 1);
    if (v14 >= *(a2 + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20))
      {
        return 0;
      }
    }

    else
    {
      v20 = *v14;
      *(a2 + 1) = v14 + 1;
    }

    v15 = *(a2 + 14);
    v16 = *(a2 + 15);
    *(a2 + 14) = v15 + 1;
    if (v15 >= v16)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CLP::LogEntry::PrivateData::ConstellationId::MergePartialFromCodedStream(v13, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v17 = *(a2 + 14);
    v18 = __OFSUB__(v17, 1);
    v19 = v17 - 1;
    if (v19 < 0 == v18)
    {
      *(a2 + 14) = v19;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t CLP::LogEntry::PrivateData::SvId::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::SvId::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvId::ByteSize(CLP::LogEntry::PrivateData::SvId *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if (*(this + 24))
    {
      v4 = *(this + 4);
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    v5 = *(this + 1);
    if (!v5)
    {
      v5 = *(CLP::LogEntry::PrivateData::SvId::default_instance_ + 8);
    }

    v6 = CLP::LogEntry::PrivateData::ConstellationId::ByteSize(v5);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
    }

    else
    {
      v8 = 1;
    }

    v3 = (v3 + v7 + v8 + 1);
  }

  else
  {
    v3 = 0;
  }

LABEL_16:
  *(this + 5) = v3;
  return v3;
}

void CLP::LogEntry::PrivateData::SvId::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SvId *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::SvId::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::SvId::CopyFrom(CLP::LogEntry::PrivateData::SvId *this, const CLP::LogEntry::PrivateData::SvId *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::SvId::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::SvId::Swap(uint64_t this, CLP::LogEntry::PrivateData::SvId *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsL1SyncState::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

CLP::LogEntry::PrivateData::GpsL1SyncState *CLP::LogEntry::PrivateData::GpsL1SyncState::GpsL1SyncState(CLP::LogEntry::PrivateData::GpsL1SyncState *this, const CLP::LogEntry::PrivateData::GpsL1SyncState *a2)
{
  *this = &unk_28585FF88;
  *(this + 1) = 0;
  *(this + 4) = 0;
  CLP::LogEntry::PrivateData::GpsL1SyncState::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::GpsL1SyncState::MergeFrom(CLP::LogEntry::PrivateData::GpsL1SyncState *this, const CLP::LogEntry::PrivateData::GpsL1SyncState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      v6 = *(a2 + 8);
      *(this + 4) |= 1u;
      *(this + 8) = v6;
      v4 = *(a2 + 4);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 16) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 9);
    *(this + 4) |= 2u;
    *(this + 9) = v7;
    v4 = *(a2 + 4);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_12:
    v8 = *(a2 + 10);
    *(this + 4) |= 4u;
    *(this + 10) = v8;
    if ((*(a2 + 4) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 11);
    *(this + 4) |= 8u;
    *(this + 11) = v5;
  }
}