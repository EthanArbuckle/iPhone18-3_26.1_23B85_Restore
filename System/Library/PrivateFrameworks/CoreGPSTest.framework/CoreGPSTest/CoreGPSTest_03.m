void proto::gnss::Emergency::ClsUtranCellTime::CheckTypeAndMergeFrom(proto::gnss::Emergency::ClsUtranCellTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::ClsUtranCellTime::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::ClsUtranCellTime::CopyFrom(proto::gnss::Emergency::ClsUtranCellTime *this, const proto::gnss::Emergency::ClsUtranCellTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::ClsUtranCellTime::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::ClsUtranCellTime::Swap(uint64_t this, proto::gnss::Emergency::ClsUtranCellTime *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return this;
}

uint64_t proto::gnss::Emergency::Plmn::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::Plmn *proto::gnss::Emergency::Plmn::Plmn(proto::gnss::Emergency::Plmn *this, const proto::gnss::Emergency::Plmn *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28585D120;
  *(this + 6) = 0;
  proto::gnss::Emergency::Plmn::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::Plmn::MergeFrom(proto::gnss::Emergency::Plmn *this, const proto::gnss::Emergency::Plmn *a2)
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

void sub_2454D9A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::Plmn::~Plmn(proto::gnss::Emergency::Plmn *this)
{
  *this = &unk_28585D120;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585D120;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585D120;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::Plmn::default_instance(proto::gnss::Emergency::Plmn *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::Plmn::default_instance_;
  if (!proto::gnss::Emergency::Plmn::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::Plmn::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::Plmn::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Plmn::MergePartialFromCodedStream(proto::gnss::Emergency::Plmn *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

unsigned int *proto::gnss::Emergency::Plmn::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gnss::Emergency::Plmn::ByteSize(proto::gnss::Emergency::Plmn *this)
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

void proto::gnss::Emergency::Plmn::CheckTypeAndMergeFrom(proto::gnss::Emergency::Plmn *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::Plmn::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::Plmn::CopyFrom(proto::gnss::Emergency::Plmn *this, const proto::gnss::Emergency::Plmn *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::Plmn::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::Plmn *proto::gnss::Emergency::Plmn::Swap(proto::gnss::Emergency::Plmn *this, proto::gnss::Emergency::Plmn *a2)
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

uint64_t proto::gnss::Emergency::SessionInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::SessionInfo *proto::gnss::Emergency::SessionInfo::SessionInfo(proto::gnss::Emergency::SessionInfo *this, const proto::gnss::Emergency::SessionInfo *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28585D198;
  *(this + 6) = 0;
  proto::gnss::Emergency::SessionInfo::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::SessionInfo::MergeFrom(proto::gnss::Emergency::SessionInfo *this, const proto::gnss::Emergency::SessionInfo *a2)
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
      v5 = *(a2 + 2);
      if (v5 >= 6)
      {
        __assert_rtn("set_session_protocol", "GnssEmergencyTypes.pb.h", 16154, "::proto::gnss::Emergency::SessionProtocol_IsValid(value)");
      }

      *(this + 6) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      if (v6 >= 7)
      {
        __assert_rtn("set_pos_protocol", "GnssEmergencyTypes.pb.h", 16177, "::proto::gnss::Emergency::PosProtocol_IsValid(value)");
      }

      *(this + 6) |= 2u;
      *(this + 3) = v6;
      v4 = *(a2 + 6);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 4);
      *(this + 6) |= 4u;
      *(this + 4) = v7;
    }
  }
}

void sub_2454DA248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::SessionInfo::~SessionInfo(proto::gnss::Emergency::SessionInfo *this)
{
  *this = &unk_28585D198;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585D198;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585D198;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::SessionInfo::default_instance(proto::gnss::Emergency::SessionInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::SessionInfo::default_instance_;
  if (!proto::gnss::Emergency::SessionInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::SessionInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::SessionInfo::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::SessionInfo::MergePartialFromCodedStream(proto::gnss::Emergency::SessionInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          v11 = *(a2 + 2);
          goto LABEL_37;
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

      v20 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20);
        if (!result)
        {
          return result;
        }

        v8 = v20;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 <= 5)
      {
        *(this + 6) |= 1u;
        *(this + 2) = v8;
      }

      v13 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v13 < v9 && *v13 == 16)
      {
        v10 = v13 + 1;
        *(a2 + 1) = v10;
LABEL_27:
        v19 = 0;
        if (v10 >= v9 || (v14 = *v10, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19);
          if (!result)
          {
            return result;
          }

          v14 = v19;
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v14 <= 6)
        {
          *(this + 6) |= 2u;
          *(this + 3) = v14;
        }

        v15 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v15 < v11 && *v15 == 24)
        {
          v12 = v15 + 1;
          *(a2 + 1) = v12;
LABEL_37:
          if (v12 >= v11 || (v16 = *v12, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v16;
            v17 = v12 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 6) |= 4u;
          if (v17 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_27;
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

unsigned int *proto::gnss::Emergency::SessionInfo::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[3], a2, a4);
    if ((v5[6] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, this[2], a2, a4);
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

uint64_t proto::gnss::Emergency::SessionInfo::ByteSize(proto::gnss::Emergency::SessionInfo *this)
{
  LOBYTE(v2) = *(this + 24);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_24;
  }

  if (*(this + 24))
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
      v2 = *(this + 6);
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
    if ((*(this + 24) & 2) == 0)
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
    v2 = *(this + 6);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_19:
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

LABEL_24:
  *(this + 5) = v3;
  return v3;
}

void proto::gnss::Emergency::SessionInfo::CheckTypeAndMergeFrom(proto::gnss::Emergency::SessionInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::SessionInfo::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::SessionInfo::CopyFrom(proto::gnss::Emergency::SessionInfo *this, const proto::gnss::Emergency::SessionInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::SessionInfo::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::SessionInfo *proto::gnss::Emergency::SessionInfo::Swap(proto::gnss::Emergency::SessionInfo *this, proto::gnss::Emergency::SessionInfo *a2)
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

double proto::gnss::Emergency::PositionRequest::SharedCtor(proto::gnss::Emergency::PositionRequest *this)
{
  result = 0.0;
  *(this + 68) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::PositionRequest *proto::gnss::Emergency::PositionRequest::PositionRequest(proto::gnss::Emergency::PositionRequest *this, const proto::gnss::Emergency::PositionRequest *a2)
{
  *this = &unk_28585D210;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  proto::gnss::Emergency::PositionRequest::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::PositionRequest::MergeFrom(proto::gnss::Emergency::PositionRequest *this, const proto::gnss::Emergency::PositionRequest *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(a2 + 20);
  if (!v4)
  {
    goto LABEL_16;
  }

  if (v4)
  {
    v5 = *(a2 + 2);
    *(this + 20) |= 1u;
    *(this + 2) = v5;
    v4 = *(a2 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 3);
    if (v6 >= 5)
    {
      __assert_rtn("set_method", "GnssEmergencyTypes.pb.h", 16248, "::proto::gnss::Emergency::MethodType_IsValid(value)");
    }

    *(this + 20) |= 2u;
    *(this + 3) = v6;
    v4 = *(a2 + 20);
  }

  if ((v4 & 4) != 0)
  {
    v17 = *(a2 + 4);
    *(this + 20) |= 4u;
    *(this + 4) = v17;
    v4 = *(a2 + 20);
    if ((v4 & 8) == 0)
    {
LABEL_11:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_40;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_11;
  }

  v18 = *(a2 + 5);
  *(this + 20) |= 8u;
  *(this + 5) = v18;
  v4 = *(a2 + 20);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_41:
    v20 = *(a2 + 7);
    *(this + 20) |= 0x20u;
    *(this + 7) = v20;
    v4 = *(a2 + 20);
    if ((v4 & 0x40) == 0)
    {
LABEL_14:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_40:
  v19 = *(a2 + 6);
  *(this + 20) |= 0x10u;
  *(this + 6) = v19;
  v4 = *(a2 + 20);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_41;
  }

LABEL_13:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_42:
  v21 = *(a2 + 8);
  *(this + 20) |= 0x40u;
  *(this + 8) = v21;
  v4 = *(a2 + 20);
  if ((v4 & 0x80) != 0)
  {
LABEL_15:
    v7 = *(a2 + 9);
    *(this + 20) |= 0x80u;
    *(this + 9) = v7;
    v4 = *(a2 + 20);
  }

LABEL_16:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v4 & 0x100) != 0)
  {
    v10 = *(a2 + 10);
    *(this + 20) |= 0x100u;
    *(this + 10) = v10;
    v4 = *(a2 + 20);
    if ((v4 & 0x200) == 0)
    {
LABEL_19:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_19;
  }

  v11 = *(a2 + 11);
  *(this + 20) |= 0x200u;
  *(this + 11) = v11;
  v4 = *(a2 + 20);
  if ((v4 & 0x400) == 0)
  {
LABEL_20:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_32;
  }

LABEL_31:
  v12 = *(a2 + 12);
  *(this + 20) |= 0x400u;
  *(this + 12) = v12;
  v4 = *(a2 + 20);
  if ((v4 & 0x800) == 0)
  {
LABEL_21:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_33;
  }

LABEL_32:
  v13 = *(a2 + 13);
  *(this + 20) |= 0x800u;
  *(this + 13) = v13;
  v4 = *(a2 + 20);
  if ((v4 & 0x1000) == 0)
  {
LABEL_22:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

LABEL_33:
  v14 = *(a2 + 14);
  *(this + 20) |= 0x1000u;
  *(this + 14) = v14;
  v4 = *(a2 + 20);
  if ((v4 & 0x2000) == 0)
  {
LABEL_23:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_35;
  }

LABEL_34:
  v15 = *(a2 + 15);
  *(this + 20) |= 0x2000u;
  *(this + 15) = v15;
  v4 = *(a2 + 20);
  if ((v4 & 0x4000) == 0)
  {
LABEL_24:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_35:
  v16 = *(a2 + 16);
  if (v16 >= 7)
  {
    __assert_rtn("set_pos_protocol", "GnssEmergencyTypes.pb.h", 16535, "::proto::gnss::Emergency::PosProtocol_IsValid(value)");
  }

  *(this + 20) |= 0x4000u;
  *(this + 16) = v16;
  v4 = *(a2 + 20);
  if ((v4 & 0x8000) != 0)
  {
LABEL_25:
    v8 = *(a2 + 17);
    *(this + 20) |= 0x8000u;
    *(this + 17) = v8;
    v4 = *(a2 + 20);
  }

LABEL_26:
  if ((v4 & 0x10000) != 0)
  {
    v9 = *(a2 + 18);
    *(this + 20) |= 0x10000u;
    *(this + 18) = v9;
  }
}

void sub_2454DAC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::PositionRequest::~PositionRequest(proto::gnss::Emergency::PositionRequest *this)
{
  *this = &unk_28585D210;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585D210;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585D210;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::PositionRequest::default_instance(proto::gnss::Emergency::PositionRequest *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::PositionRequest::default_instance_;
  if (!proto::gnss::Emergency::PositionRequest::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::PositionRequest::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::PositionRequest::Clear(uint64_t this)
{
  v1 = *(this + 80);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 56) = 0u;
    *(this + 40) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 72) = 0;
  }

  *(this + 80) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::PositionRequest::MergePartialFromCodedStream(proto::gnss::Emergency::PositionRequest *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (2)
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

    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v7 = *(a2 + 1);
        v6 = *(a2 + 2);
        if (v7 < v6)
        {
          v8 = *v7;
          if ((v8 & 0x80000000) == 0)
          {
            *(this + 2) = v8;
            v9 = v7 + 1;
            *(a2 + 1) = v9;
LABEL_48:
            *(this + 20) |= 1u;
            if (v9 < v6 && *v9 == 16)
            {
              v22 = v9 + 1;
              *(a2 + 1) = v22;
              goto LABEL_51;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (result)
        {
          v9 = *(a2 + 1);
          v6 = *(a2 + 2);
          goto LABEL_48;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v22 = *(a2 + 1);
        v6 = *(a2 + 2);
LABEL_51:
        v62 = 0;
        if (v22 >= v6 || (v28 = *v22, (v28 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62);
          if (!result)
          {
            return result;
          }

          v28 = v62;
        }

        else
        {
          *(a2 + 1) = v22 + 1;
        }

        if (v28 <= 4)
        {
          *(this + 20) |= 2u;
          *(this + 3) = v28;
        }

        v29 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v29 >= v12 || *v29 != 24)
        {
          continue;
        }

        v18 = v29 + 1;
        *(a2 + 1) = v18;
LABEL_61:
        if (v18 >= v12 || (v30 = *v18, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v31 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v30;
          v31 = v18 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 20) |= 4u;
        if (v31 >= v12 || *v31 != 32)
        {
          continue;
        }

        v20 = v31 + 1;
        *(a2 + 1) = v20;
LABEL_69:
        if (v20 >= v12 || (v32 = *v20, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v32;
          v33 = v20 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 20) |= 8u;
        if (v33 >= v12 || *v33 != 40)
        {
          continue;
        }

        v15 = v33 + 1;
        *(a2 + 1) = v15;
LABEL_77:
        if (v15 >= v12 || (v34 = *v15, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v34;
          v35 = v15 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 20) |= 0x10u;
        if (v35 >= v12 || *v35 != 48)
        {
          continue;
        }

        v23 = v35 + 1;
        *(a2 + 1) = v23;
LABEL_85:
        if (v23 >= v12 || (v36 = *v23, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v37 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v36;
          v37 = v23 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 20) |= 0x20u;
        if (v37 >= v12 || *v37 != 56)
        {
          continue;
        }

        v25 = v37 + 1;
        *(a2 + 1) = v25;
LABEL_93:
        if (v25 >= v12 || (v38 = *v25, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v38;
          v39 = v25 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 20) |= 0x40u;
        if (v39 >= v12 || *v39 != 64)
        {
          continue;
        }

        v21 = v39 + 1;
        *(a2 + 1) = v21;
LABEL_101:
        if (v21 >= v12 || (v40 = *v21, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v40;
          v41 = v21 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 20) |= 0x80u;
        if (v41 >= v12 || *v41 != 72)
        {
          continue;
        }

        v27 = v41 + 1;
        *(a2 + 1) = v27;
LABEL_109:
        if (v27 >= v12 || (v42 = *v27, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v42;
          v43 = v27 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 20) |= 0x100u;
        if (v43 >= v12 || *v43 != 80)
        {
          continue;
        }

        v17 = v43 + 1;
        *(a2 + 1) = v17;
LABEL_117:
        if (v17 >= v12 || (v44 = *v17, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v44;
          v45 = v17 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 20) |= 0x200u;
        if (v45 >= v12 || *v45 != 88)
        {
          continue;
        }

        v26 = v45 + 1;
        *(a2 + 1) = v26;
LABEL_125:
        if (v26 >= v12 || (v46 = *v26, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v46;
          v47 = v26 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 20) |= 0x400u;
        if (v47 >= v12 || *v47 != 96)
        {
          continue;
        }

        v14 = v47 + 1;
        *(a2 + 1) = v14;
LABEL_133:
        if (v14 >= v12 || (v48 = *v14, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v49 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v48;
          v49 = v14 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 20) |= 0x800u;
        if (v49 >= v12 || *v49 != 104)
        {
          continue;
        }

        v16 = v49 + 1;
        *(a2 + 1) = v16;
LABEL_141:
        if (v16 >= v12 || (v50 = *v16, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v51 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v50;
          v51 = v16 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 20) |= 0x1000u;
        if (v51 >= v12 || *v51 != 112)
        {
          continue;
        }

        v24 = v51 + 1;
        *(a2 + 1) = v24;
LABEL_149:
        if (v24 >= v12 || (v52 = *v24, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v53 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v52;
          v53 = v24 + 1;
          *(a2 + 1) = v53;
        }

        *(this + 20) |= 0x2000u;
        if (v53 >= v12 || *v53 != 120)
        {
          continue;
        }

        v13 = v53 + 1;
        *(a2 + 1) = v13;
LABEL_157:
        v61 = 0;
        if (v13 >= v12 || (v54 = *v13, (v54 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v61);
          if (!result)
          {
            return result;
          }

          v54 = v61;
        }

        else
        {
          *(a2 + 1) = v13 + 1;
        }

        if (v54 <= 6)
        {
          *(this + 20) |= 0x4000u;
          *(this + 16) = v54;
        }

        v55 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v10 - v55 < 2 || *v55 != 128 || v55[1] != 1)
        {
          continue;
        }

        v19 = (v55 + 2);
        *(a2 + 1) = v19;
LABEL_168:
        if (v19 >= v10 || (v56 = *v19, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v57 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v56;
          v57 = (v19 + 1);
          *(a2 + 1) = v57;
        }

        *(this + 20) |= 0x8000u;
        if (v10 - v57 < 2 || *v57 != 136 || v57[1] != 1)
        {
          continue;
        }

        v11 = (v57 + 2);
        *(a2 + 1) = v11;
LABEL_177:
        if (v11 >= v10 || (v58 = *v11, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v59 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v58;
          v59 = v11 + 1;
          *(a2 + 1) = v59;
        }

        *(this + 20) |= 0x10000u;
        if (v59 != v10 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v18 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_61;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v20 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_69;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v15 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_77;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v23 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_85;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v25 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_93;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v21 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_101;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v27 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_109;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v17 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_117;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v26 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_125;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v14 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_133;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v16 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_141;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v24 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_149;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_157;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v19 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_168;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_177;
      default:
LABEL_42:
        if ((TagFallback & 7) == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}

unsigned int *proto::gnss::Emergency::PositionRequest::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[20];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[20];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[3], a2, a4);
  v6 = v5[20];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[20];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[8], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[9], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[10], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[11], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[12], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, v5[13], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, v5[14], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, v5[15], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, v5[17], a2, a4);
    if ((v5[20] & 0x10000) == 0)
    {
      return this;
    }

    goto LABEL_35;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xF, v5[16], a2, a4);
  v6 = v5[20];
  if ((v6 & 0x8000) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v6 & 0x10000) == 0)
  {
    return this;
  }

LABEL_35:
  v7 = v5[18];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::PositionRequest::ByteSize(proto::gnss::Emergency::PositionRequest *this)
{
  v2 = *(this + 20);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_47;
  }

  if (v2)
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 20);
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
    if ((v2 & 2) == 0)
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
    v2 = *(this + 20);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 4);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(this + 20);
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v9 = *(this + 5);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(this + 20);
  }

  else
  {
    v10 = 2;
  }

  v3 = (v10 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_31:
  v11 = *(this + 6);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(this + 20);
  }

  else
  {
    v12 = 2;
  }

  v3 = (v12 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_20:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_35:
  v13 = *(this + 7);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = *(this + 20);
  }

  else
  {
    v14 = 2;
  }

  v3 = (v14 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_21:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

LABEL_39:
  v15 = *(this + 8);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = *(this + 20);
  }

  else
  {
    v16 = 2;
  }

  v3 = (v16 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_43:
    v17 = *(this + 9);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v2 = *(this + 20);
    }

    else
    {
      v18 = 2;
    }

    v3 = (v18 + v3);
  }

LABEL_47:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_56;
  }

  if ((v2 & 0x100) != 0)
  {
    v19 = *(this + 10);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v2 = *(this + 20);
    }

    else
    {
      v20 = 2;
    }

    v3 = (v20 + v3);
    if ((v2 & 0x200) == 0)
    {
LABEL_50:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_66;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_50;
  }

  v21 = *(this + 11);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v2 = *(this + 20);
  }

  else
  {
    v22 = 2;
  }

  v3 = (v22 + v3);
  if ((v2 & 0x400) == 0)
  {
LABEL_51:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_70;
  }

LABEL_66:
  v23 = *(this + 12);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v2 = *(this + 20);
  }

  else
  {
    v24 = 2;
  }

  v3 = (v24 + v3);
  if ((v2 & 0x800) == 0)
  {
LABEL_52:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_74;
  }

LABEL_70:
  v25 = *(this + 13);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v2 = *(this + 20);
  }

  else
  {
    v26 = 2;
  }

  v3 = (v26 + v3);
  if ((v2 & 0x1000) == 0)
  {
LABEL_53:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_78;
  }

LABEL_74:
  v27 = *(this + 14);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v2 = *(this + 20);
  }

  else
  {
    v28 = 2;
  }

  v3 = (v28 + v3);
  if ((v2 & 0x2000) == 0)
  {
LABEL_54:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_82;
  }

LABEL_78:
  v29 = *(this + 15);
  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    v2 = *(this + 20);
  }

  else
  {
    v30 = 2;
  }

  v3 = (v30 + v3);
  if ((v2 & 0x4000) == 0)
  {
LABEL_55:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_88;
  }

LABEL_82:
  v31 = *(this + 16);
  if ((v31 & 0x80000000) != 0)
  {
    v32 = 11;
  }

  else if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
    v2 = *(this + 20);
  }

  else
  {
    v32 = 2;
  }

  v3 = (v32 + v3);
  if ((v2 & 0x8000) == 0)
  {
LABEL_56:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_92;
  }

LABEL_88:
  v33 = *(this + 17);
  if (v33 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
    v2 = *(this + 20);
  }

  else
  {
    v34 = 3;
  }

  v3 = (v34 + v3);
  if ((v2 & 0x10000) != 0)
  {
LABEL_92:
    v35 = *(this + 18);
    if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
    }

    else
    {
      v36 = 3;
    }

    v3 = (v36 + v3);
  }

LABEL_96:
  *(this + 19) = v3;
  return v3;
}

void proto::gnss::Emergency::PositionRequest::CheckTypeAndMergeFrom(proto::gnss::Emergency::PositionRequest *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::PositionRequest::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::PositionRequest::CopyFrom(proto::gnss::Emergency::PositionRequest *this, const proto::gnss::Emergency::PositionRequest *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::PositionRequest::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::PositionRequest *proto::gnss::Emergency::PositionRequest::Swap(proto::gnss::Emergency::PositionRequest *this, proto::gnss::Emergency::PositionRequest *a2)
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
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v8;
    v9 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v9;
    v10 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v10;
    v11 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v11;
    v12 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v12;
    v13 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v13;
    v14 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v14;
    v15 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v15;
    v16 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v16;
    v17 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v17;
    v18 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v18;
    v19 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v19;
    v20 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v20;
  }

  return this;
}

void *proto::gnss::Emergency::UtranGpsTimeMeasured::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gnss::Emergency::UtranGpsTimeMeasured *proto::gnss::Emergency::UtranGpsTimeMeasured::UtranGpsTimeMeasured(proto::gnss::Emergency::UtranGpsTimeMeasured *this, const proto::gnss::Emergency::UtranGpsTimeMeasured *a2)
{
  *this = &unk_28585D288;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gnss::Emergency::UtranGpsTimeMeasured::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::UtranGpsTimeMeasured::MergeFrom(proto::gnss::Emergency::UtranGpsTimeMeasured *this, const proto::gnss::Emergency::UtranGpsTimeMeasured *a2)
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
      *(this + 7) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        v6 = *(proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_ + 8);
      }

      proto::gnss::Emergency::ClsUtranCellTime::MergeFrom(v5, v6);
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      *(this + 7) |= 2u;
      v7 = *(this + 2);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 2);
      if (!v8)
      {
        v8 = *(proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_ + 16);
      }

      proto::gnss::Emergency::ClsGpsCellTime::MergeFrom(v7, v8);
    }
  }
}

void sub_2454DBFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::UtranGpsTimeMeasured::~UtranGpsTimeMeasured(proto::gnss::Emergency::UtranGpsTimeMeasured *this)
{
  *this = &unk_28585D288;
  proto::gnss::Emergency::UtranGpsTimeMeasured::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585D288;
  proto::gnss::Emergency::UtranGpsTimeMeasured::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585D288;
  proto::gnss::Emergency::UtranGpsTimeMeasured::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Emergency::UtranGpsTimeMeasured::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    this = v1[2];
    if (this)
    {
      v3 = *(*this + 8);

      return v3();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance(proto::gnss::Emergency::UtranGpsTimeMeasured *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_;
  if (!proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::UtranGpsTimeMeasured::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 28);
  if (v2)
  {
    if (*(this + 28))
    {
      this = *(this + 8);
      if (this)
      {
        this = proto::gnss::Emergency::ClsUtranCellTime::Clear(this);
        v2 = *(v1 + 28);
      }
    }

    if ((v2 & 2) != 0)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
      }
    }
  }

  *(v1 + 28) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::UtranGpsTimeMeasured::MergePartialFromCodedStream(proto::gnss::Emergency::UtranGpsTimeMeasured *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v6 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v6 != 2)
      {
        goto LABEL_15;
      }

      *(this + 7) |= 1u;
      v7 = *(this + 1);
      if (!v7)
      {
        operator new();
      }

      v22 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
        {
          return 0;
        }
      }

      else
      {
        v22 = *v8;
        *(a2 + 1) = v8 + 1;
      }

      v9 = *(a2 + 14);
      v10 = *(a2 + 15);
      *(a2 + 14) = v9 + 1;
      if (v9 >= v10)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!proto::gnss::Emergency::ClsUtranCellTime::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v11 = *(a2 + 14);
      v12 = __OFSUB__(v11, 1);
      v13 = v11 - 1;
      if (v13 < 0 == v12)
      {
        *(a2 + 14) = v13;
      }

      v14 = *(a2 + 1);
      if (v14 < *(a2 + 2) && *v14 == 18)
      {
        *(a2 + 1) = v14 + 1;
LABEL_27:
        *(this + 7) |= 2u;
        v15 = *(this + 2);
        if (!v15)
        {
          operator new();
        }

        v23 = 0;
        v16 = *(a2 + 1);
        if (v16 >= *(a2 + 2) || *v16 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23))
          {
            return 0;
          }
        }

        else
        {
          v23 = *v16;
          *(a2 + 1) = v16 + 1;
        }

        v17 = *(a2 + 14);
        v18 = *(a2 + 15);
        *(a2 + 14) = v17 + 1;
        if (v17 >= v18)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::ClsGpsCellTime::MergePartialFromCodedStream(v15, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v19 = *(a2 + 14);
        v12 = __OFSUB__(v19, 1);
        v20 = v19 - 1;
        if (v20 < 0 == v12)
        {
          *(a2 + 14) = v20;
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

    if (v6 == 2)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (v6 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gnss::Emergency::UtranGpsTimeMeasured::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::UtranGpsTimeMeasured::ByteSize(proto::gnss::Emergency::UtranGpsTimeMeasured *this)
{
  if (!*(this + 28))
  {
    v2 = 0;
    goto LABEL_18;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    v3 = *(proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_ + 8);
  }

  v4 = proto::gnss::Emergency::ClsUtranCellTime::ByteSize(v3);
  v5 = v4;
  if (v4 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
  }

  else
  {
    v6 = 1;
  }

  v2 = (v5 + v6 + 1);
  if ((*(this + 7) & 2) != 0)
  {
LABEL_12:
    v7 = *(this + 2);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_ + 16);
    }

    v8 = proto::gnss::Emergency::ClsGpsCellTime::ByteSize(v7);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    }

    else
    {
      v10 = 1;
    }

    v2 = (v2 + v9 + v10 + 1);
  }

LABEL_18:
  *(this + 6) = v2;
  return v2;
}

void proto::gnss::Emergency::UtranGpsTimeMeasured::CheckTypeAndMergeFrom(proto::gnss::Emergency::UtranGpsTimeMeasured *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::UtranGpsTimeMeasured::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::UtranGpsTimeMeasured::CopyFrom(proto::gnss::Emergency::UtranGpsTimeMeasured *this, const proto::gnss::Emergency::UtranGpsTimeMeasured *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::UtranGpsTimeMeasured::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::UtranGpsTimeMeasured::Swap(uint64_t this, proto::gnss::Emergency::UtranGpsTimeMeasured *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
  }

  return this;
}

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredBased::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::Emergency::GeranGpsTimeMeasuredBased *proto::gnss::Emergency::GeranGpsTimeMeasuredBased::GeranGpsTimeMeasuredBased(proto::gnss::Emergency::GeranGpsTimeMeasuredBased *this, const proto::gnss::Emergency::GeranGpsTimeMeasuredBased *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28585D300;
  proto::gnss::Emergency::GeranGpsTimeMeasuredBased::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GeranGpsTimeMeasuredBased::MergeFrom(proto::gnss::Emergency::GeranGpsTimeMeasuredBased *this, const proto::gnss::Emergency::GeranGpsTimeMeasuredBased *a2)
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

void sub_2454DC958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GeranGpsTimeMeasuredBased::~GeranGpsTimeMeasuredBased(proto::gnss::Emergency::GeranGpsTimeMeasuredBased *this)
{
  *this = &unk_28585D300;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585D300;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585D300;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredBased::default_instance(proto::gnss::Emergency::GeranGpsTimeMeasuredBased *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GeranGpsTimeMeasuredBased::default_instance_;
  if (!proto::gnss::Emergency::GeranGpsTimeMeasuredBased::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GeranGpsTimeMeasuredBased::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredBased::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredBased::MergePartialFromCodedStream(proto::gnss::Emergency::GeranGpsTimeMeasuredBased *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredBased::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredBased::ByteSize(proto::gnss::Emergency::GeranGpsTimeMeasuredBased *this)
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

void proto::gnss::Emergency::GeranGpsTimeMeasuredBased::CheckTypeAndMergeFrom(proto::gnss::Emergency::GeranGpsTimeMeasuredBased *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GeranGpsTimeMeasuredBased::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GeranGpsTimeMeasuredBased::CopyFrom(proto::gnss::Emergency::GeranGpsTimeMeasuredBased *this, const proto::gnss::Emergency::GeranGpsTimeMeasuredBased *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GeranGpsTimeMeasuredBased::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GeranGpsTimeMeasuredBased *proto::gnss::Emergency::GeranGpsTimeMeasuredBased::Swap(proto::gnss::Emergency::GeranGpsTimeMeasuredBased *this, proto::gnss::Emergency::GeranGpsTimeMeasuredBased *a2)
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

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::GeranGpsTimeMeasuredAssisted(proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *this, const proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28585D378;
  proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::MergeFrom(proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *this, const proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *a2)
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

void sub_2454DCFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::~GeranGpsTimeMeasuredAssisted(proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *this)
{
  *this = &unk_28585D378;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585D378;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585D378;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::default_instance(proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::default_instance_;
  if (!proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::MergePartialFromCodedStream(proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::ByteSize(proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *this)
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

void proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::CheckTypeAndMergeFrom(proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::CopyFrom(proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *this, const proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::Swap(proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *this, proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted *a2)
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

double proto::gnss::Emergency::GpsTimeMeasured::SharedCtor(proto::gnss::Emergency::GpsTimeMeasured *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::GpsTimeMeasured *proto::gnss::Emergency::GpsTimeMeasured::GpsTimeMeasured(proto::gnss::Emergency::GpsTimeMeasured *this, const proto::gnss::Emergency::GpsTimeMeasured *a2)
{
  *this = &unk_28585D3F0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  proto::gnss::Emergency::GpsTimeMeasured::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GpsTimeMeasured::MergeFrom(proto::gnss::Emergency::GpsTimeMeasured *this, const proto::gnss::Emergency::GpsTimeMeasured *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      *(this + 9) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        v6 = *(proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 8);
      }

      proto::gnss::Emergency::UtranGpsTimeMeasured::MergeFrom(v5, v6);
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_18;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 9) |= 2u;
    v7 = *(this + 2);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 2);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 16);
    }

    proto::gnss::Emergency::GeranGpsTimeMeasuredBased::MergeFrom(v7, v8);
    if ((*(a2 + 9) & 4) != 0)
    {
LABEL_18:
      *(this + 9) |= 4u;
      v9 = *(this + 3);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 3);
      if (!v10)
      {
        v10 = *(proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 24);
      }

      proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::MergeFrom(v9, v10);
    }
  }
}

void sub_2454DD76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsTimeMeasured::~GpsTimeMeasured(proto::gnss::Emergency::GpsTimeMeasured *this)
{
  *this = &unk_28585D3F0;
  proto::gnss::Emergency::GpsTimeMeasured::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585D3F0;
  proto::gnss::Emergency::GpsTimeMeasured::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585D3F0;
  proto::gnss::Emergency::GpsTimeMeasured::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Emergency::GpsTimeMeasured::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::GpsTimeMeasured::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    this = v1[3];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::GpsTimeMeasured::default_instance(proto::gnss::Emergency::GpsTimeMeasured *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GpsTimeMeasured::default_instance_;
  if (!proto::gnss::Emergency::GpsTimeMeasured::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GpsTimeMeasured::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GpsTimeMeasured::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 36);
  if (v2)
  {
    if (*(this + 36))
    {
      this = *(this + 8);
      if (this)
      {
        this = proto::gnss::Emergency::UtranGpsTimeMeasured::Clear(this);
        v2 = *(v1 + 36);
      }
    }

    if ((v2 & 2) != 0)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v2 = *(v1 + 36);
      }
    }

    if ((v2 & 4) != 0)
    {
      v4 = *(v1 + 24);
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

  *(v1 + 36) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GpsTimeMeasured::MergePartialFromCodedStream(proto::gnss::Emergency::GpsTimeMeasured *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 == 3)
      {
        if (v7 == 2)
        {
          goto LABEL_44;
        }

        goto LABEL_18;
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || v7 != 2)
      {
        goto LABEL_18;
      }

      *(this + 9) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v30 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
        {
          return 0;
        }
      }

      else
      {
        v30 = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v10 = *(a2 + 14);
      v11 = *(a2 + 15);
      *(a2 + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!proto::gnss::Emergency::UtranGpsTimeMeasured::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v12 = *(a2 + 14);
      v13 = __OFSUB__(v12, 1);
      v14 = v12 - 1;
      if (v14 < 0 == v13)
      {
        *(a2 + 14) = v14;
      }

      v15 = *(a2 + 1);
      if (v15 < *(a2 + 2) && *v15 == 18)
      {
        *(a2 + 1) = v15 + 1;
LABEL_30:
        *(this + 9) |= 2u;
        v16 = *(this + 2);
        if (!v16)
        {
          operator new();
        }

        v31 = 0;
        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31))
          {
            return 0;
          }
        }

        else
        {
          v31 = *v17;
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
        if (!proto::gnss::Emergency::GeranGpsTimeMeasuredBased::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v20 = *(a2 + 14);
        v13 = __OFSUB__(v20, 1);
        v21 = v20 - 1;
        if (v21 < 0 == v13)
        {
          *(a2 + 14) = v21;
        }

        v22 = *(a2 + 1);
        if (v22 < *(a2 + 2) && *v22 == 26)
        {
          *(a2 + 1) = v22 + 1;
LABEL_44:
          *(this + 9) |= 4u;
          v23 = *(this + 3);
          if (!v23)
          {
            operator new();
          }

          v32 = 0;
          v24 = *(a2 + 1);
          if (v24 >= *(a2 + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32))
            {
              return 0;
            }
          }

          else
          {
            v32 = *v24;
            *(a2 + 1) = v24 + 1;
          }

          v25 = *(a2 + 14);
          v26 = *(a2 + 15);
          *(a2 + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::MergePartialFromCodedStream(v23, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v27 = *(a2 + 14);
          v13 = __OFSUB__(v27, 1);
          v28 = v27 - 1;
          if (v28 < 0 == v13)
          {
            *(a2 + 14) = v28;
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
    }

    if (v7 == 2)
    {
      goto LABEL_30;
    }

LABEL_18:
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

uint64_t proto::gnss::Emergency::GpsTimeMeasured::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        return this;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  if ((*(v5 + 36) & 4) != 0)
  {
LABEL_11:
    v9 = *(v5 + 24);
    if (!v9)
    {
      v9 = *(proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::GpsTimeMeasured::ByteSize(proto::gnss::Emergency::GpsTimeMeasured *this)
{
  LOBYTE(v2) = *(this + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_25;
  }

  if (*(this + 36))
  {
    v4 = *(this + 1);
    if (!v4)
    {
      v4 = *(proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 8);
    }

    v5 = proto::gnss::Emergency::UtranGpsTimeMeasured::ByteSize(v4);
    v6 = v5;
    if (v5 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
    }

    else
    {
      v7 = 1;
    }

    v3 = (v6 + v7 + 1);
    v2 = *(this + 9);
    if ((v2 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = 0;
  if ((*(this + 36) & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 2);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 16);
    }

    v9 = proto::gnss::Emergency::GeranGpsTimeMeasuredBased::ByteSize(v8);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v3 = (v3 + v10 + v11 + 1);
    v2 = *(this + 9);
  }

LABEL_18:
  if ((v2 & 4) != 0)
  {
    v12 = *(this + 3);
    if (!v12)
    {
      v12 = *(proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 24);
    }

    v13 = proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::ByteSize(v12);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    }

    else
    {
      v15 = 1;
    }

    v3 = (v3 + v14 + v15 + 1);
  }

LABEL_25:
  *(this + 8) = v3;
  return v3;
}

void proto::gnss::Emergency::GpsTimeMeasured::CheckTypeAndMergeFrom(proto::gnss::Emergency::GpsTimeMeasured *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GpsTimeMeasured::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GpsTimeMeasured::CopyFrom(proto::gnss::Emergency::GpsTimeMeasured *this, const proto::gnss::Emergency::GpsTimeMeasured *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GpsTimeMeasured::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::GpsTimeMeasured::Swap(uint64_t this, proto::gnss::Emergency::GpsTimeMeasured *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    LODWORD(v4) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v4;
    LODWORD(v4) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v4;
  }

  return this;
}

uint64_t proto::gnss::Emergency::GpsTimeMeasuredParams::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::GpsTimeMeasuredParams *proto::gnss::Emergency::GpsTimeMeasuredParams::GpsTimeMeasuredParams(proto::gnss::Emergency::GpsTimeMeasuredParams *this, const proto::gnss::Emergency::GpsTimeMeasuredParams *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28585D468;
  *(this + 6) = 0;
  proto::gnss::Emergency::GpsTimeMeasuredParams::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GpsTimeMeasuredParams::MergeFrom(proto::gnss::Emergency::GpsTimeMeasuredParams *this, const proto::gnss::Emergency::GpsTimeMeasuredParams *a2)
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
      if (v5 >= 6)
      {
        __assert_rtn("set_gps_time_measured_type", "GnssEmergencyTypes.pb.h", 16920, "::proto::gnss::Emergency::ClsNetworkType_IsValid(value)");
      }

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
        v7 = *(proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_ + 8);
      }

      proto::gnss::Emergency::GpsTimeMeasured::MergeFrom(v6, v7);
    }
  }
}

void sub_2454DE38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsTimeMeasuredParams::~GpsTimeMeasuredParams(proto::gnss::Emergency::GpsTimeMeasuredParams *this)
{
  *this = &unk_28585D468;
  if (proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_ != this)
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
  proto::gnss::Emergency::GpsTimeMeasuredParams::~GpsTimeMeasuredParams(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Emergency::GpsTimeMeasuredParams::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance(proto::gnss::Emergency::GpsTimeMeasuredParams *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_;
  if (!proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GpsTimeMeasuredParams::Clear(uint64_t this)
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
        this = proto::gnss::Emergency::GpsTimeMeasured::Clear(this);
      }
    }
  }

  *(v1 + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GpsTimeMeasuredParams::MergePartialFromCodedStream(proto::gnss::Emergency::GpsTimeMeasuredParams *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_23;
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

      v18 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v18);
        if (!result)
        {
          return result;
        }

        v8 = v18;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 <= 5)
      {
        *(this + 6) |= 1u;
        *(this + 4) = v8;
      }

      v10 = *(a2 + 1);
    }

    while (v10 >= *(a2 + 2) || *v10 != 18);
    *(a2 + 1) = v10 + 1;
LABEL_23:
    *(this + 6) |= 2u;
    v11 = *(this + 1);
    if (!v11)
    {
      operator new();
    }

    v19 = 0;
    v12 = *(a2 + 1);
    if (v12 >= *(a2 + 2) || *v12 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19))
      {
        return 0;
      }
    }

    else
    {
      v19 = *v12;
      *(a2 + 1) = v12 + 1;
    }

    v13 = *(a2 + 14);
    v14 = *(a2 + 15);
    *(a2 + 14) = v13 + 1;
    if (v13 >= v14)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!proto::gnss::Emergency::GpsTimeMeasured::MergePartialFromCodedStream(v11, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v15 = *(a2 + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(a2 + 14) = v17;
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

uint64_t proto::gnss::Emergency::GpsTimeMeasuredParams::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::GpsTimeMeasuredParams::ByteSize(proto::gnss::Emergency::GpsTimeMeasuredParams *this)
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
      v5 = *(proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_ + 8);
    }

    v6 = proto::gnss::Emergency::GpsTimeMeasured::ByteSize(v5);
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

void proto::gnss::Emergency::GpsTimeMeasuredParams::CheckTypeAndMergeFrom(proto::gnss::Emergency::GpsTimeMeasuredParams *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GpsTimeMeasuredParams::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GpsTimeMeasuredParams::CopyFrom(proto::gnss::Emergency::GpsTimeMeasuredParams *this, const proto::gnss::Emergency::GpsTimeMeasuredParams *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GpsTimeMeasuredParams::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::GpsTimeMeasuredParams::Swap(uint64_t this, proto::gnss::Emergency::GpsTimeMeasuredParams *a2)
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

uint64_t proto::gnss::Emergency::GpsTOD::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::GpsTOD *proto::gnss::Emergency::GpsTOD::GpsTOD(proto::gnss::Emergency::GpsTOD *this, const proto::gnss::Emergency::GpsTOD *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28585D4E0;
  *(this + 6) = 0;
  proto::gnss::Emergency::GpsTOD::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GpsTOD::MergeFrom(proto::gnss::Emergency::GpsTOD *this, const proto::gnss::Emergency::GpsTOD *a2)
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

void sub_2454DEBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsTOD::~GpsTOD(proto::gnss::Emergency::GpsTOD *this)
{
  *this = &unk_28585D4E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585D4E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585D4E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::GpsTOD::default_instance(proto::gnss::Emergency::GpsTOD *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GpsTOD::default_instance_;
  if (!proto::gnss::Emergency::GpsTOD::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GpsTOD::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GpsTOD::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GpsTOD::MergePartialFromCodedStream(proto::gnss::Emergency::GpsTOD *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

unsigned int *proto::gnss::Emergency::GpsTOD::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gnss::Emergency::GpsTOD::ByteSize(proto::gnss::Emergency::GpsTOD *this)
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

void proto::gnss::Emergency::GpsTOD::CheckTypeAndMergeFrom(proto::gnss::Emergency::GpsTOD *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GpsTOD::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GpsTOD::CopyFrom(proto::gnss::Emergency::GpsTOD *this, const proto::gnss::Emergency::GpsTOD *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GpsTOD::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GpsTOD *proto::gnss::Emergency::GpsTOD::Swap(proto::gnss::Emergency::GpsTOD *this, proto::gnss::Emergency::GpsTOD *a2)
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

double proto::gnss::Emergency::LocationInfo::SharedCtor(proto::gnss::Emergency::LocationInfo *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::LocationInfo *proto::gnss::Emergency::LocationInfo::LocationInfo(proto::gnss::Emergency::LocationInfo *this, const proto::gnss::Emergency::LocationInfo *a2)
{
  *this = &unk_28585D558;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  proto::gnss::Emergency::LocationInfo::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::LocationInfo::MergeFrom(proto::gnss::Emergency::LocationInfo *this, const proto::gnss::Emergency::LocationInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v8 = *(a2 + 2);
      *(this + 10) |= 1u;
      *(this + 2) = v8;
      v4 = *(a2 + 10);
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

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v9 = *(a2 + 3);
    *(this + 10) |= 2u;
    *(this + 3) = v9;
    v4 = *(a2 + 10);
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
    v10 = *(a2 + 4);
    *(this + 10) |= 4u;
    *(this + 4) = v10;
    v4 = *(a2 + 10);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_20:
    v11 = *(a2 + 5);
    if (v11 >= 4)
    {
      __assert_rtn("set_fix_type", "GnssEmergencyTypes.pb.h", 17125, "::proto::gnss::Emergency::FixType_IsValid(value)");
    }

    *(this + 10) |= 8u;
    *(this + 5) = v11;
    v4 = *(a2 + 10);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v5 = *(a2 + 8);
    *(this + 10) |= 0x10u;
    *(this + 8) = v5;
    v4 = *(a2 + 10);
LABEL_10:
    if ((v4 & 0x20) != 0)
    {
      *(this + 10) |= 0x20u;
      v6 = *(this + 3);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 3);
      if (!v7)
      {
        v7 = *(proto::gnss::Emergency::LocationInfo::default_instance_ + 24);
      }

      proto::gnss::Emergency::GpsTOD::MergeFrom(v6, v7);
    }
  }
}

void sub_2454DF454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::LocationInfo::~LocationInfo(proto::gnss::Emergency::LocationInfo *this)
{
  *this = &unk_28585D558;
  if (proto::gnss::Emergency::LocationInfo::default_instance_ != this)
  {
    v2 = *(this + 3);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::LocationInfo::~LocationInfo(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Emergency::LocationInfo::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::LocationInfo::default_instance_ != this)
  {
    this = this[3];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::LocationInfo::default_instance(proto::gnss::Emergency::LocationInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::LocationInfo::default_instance_;
  if (!proto::gnss::Emergency::LocationInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::LocationInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::LocationInfo::Clear(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    *(this + 32) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v1 & 0x20) != 0)
    {
      v2 = *(this + 24);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
      }
    }
  }

  *(this + 40) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::LocationInfo::MergePartialFromCodedStream(proto::gnss::Emergency::LocationInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
            goto LABEL_26;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8 || (v12 = *v11, v12 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v13 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v12;
            v13 = v11 + 1;
            *(a2 + 1) = v13;
          }

          *(this + 10) |= 1u;
          if (v13 < v8 && *v13 == 16)
          {
            v15 = v13 + 1;
            *(a2 + 1) = v15;
            goto LABEL_35;
          }
        }

        else if (v6 == 2)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_26;
          }

          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
LABEL_35:
          if (v15 >= v8 || (v19 = *v15, v19 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v20 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v19;
            v20 = v15 + 1;
            *(a2 + 1) = v20;
          }

          *(this + 10) |= 2u;
          if (v20 < v8 && *v20 == 24)
          {
            v9 = v20 + 1;
            *(a2 + 1) = v9;
LABEL_43:
            if (v9 >= v8 || (v21 = *v9, v21 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v22 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v21;
              v22 = v9 + 1;
              *(a2 + 1) = v22;
            }

            *(this + 10) |= 4u;
            if (v22 < v8 && *v22 == 32)
            {
              v14 = v22 + 1;
              *(a2 + 1) = v14;
LABEL_51:
              v34 = 0;
              if (v14 >= v8 || (v23 = *v14, (v23 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34);
                if (!result)
                {
                  return result;
                }

                v23 = v34;
              }

              else
              {
                *(a2 + 1) = v14 + 1;
              }

              if (v23 <= 3)
              {
                *(this + 10) |= 8u;
                *(this + 5) = v23;
              }

              v24 = *(a2 + 1);
              v16 = *(a2 + 2);
              if (v24 < v16 && *v24 == 40)
              {
                v17 = v24 + 1;
                *(a2 + 1) = v17;
                goto LABEL_61;
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
            goto LABEL_43;
          }

LABEL_26:
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

      if (v6 == 4)
      {
        if ((TagFallback & 7) == 0)
        {
          v14 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_51;
        }

        goto LABEL_26;
      }

      if (v6 != 5)
      {
        if (v6 == 6 && v7 == 2)
        {
          v10 = *(this + 10);
          goto LABEL_69;
        }

        goto LABEL_26;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_26;
      }

      v17 = *(a2 + 1);
      v16 = *(a2 + 2);
LABEL_61:
      if (v17 >= v16 || (v25 = *v17, v25 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
        if (!result)
        {
          return result;
        }

        v26 = *(a2 + 1);
        v16 = *(a2 + 2);
      }

      else
      {
        *(this + 8) = v25;
        v26 = v17 + 1;
        *(a2 + 1) = v26;
      }

      v10 = *(this + 10) | 0x10;
      *(this + 10) = v10;
    }

    while (v26 >= v16 || *v26 != 50);
    *(a2 + 1) = v26 + 1;
LABEL_69:
    *(this + 10) = v10 | 0x20;
    v27 = *(this + 3);
    if (!v27)
    {
      operator new();
    }

    v35 = 0;
    v28 = *(a2 + 1);
    if (v28 >= *(a2 + 2) || *v28 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35))
      {
        return 0;
      }
    }

    else
    {
      v35 = *v28;
      *(a2 + 1) = v28 + 1;
    }

    v29 = *(a2 + 14);
    v30 = *(a2 + 15);
    *(a2 + 14) = v29 + 1;
    if (v29 >= v30)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!proto::gnss::Emergency::GpsTOD::MergePartialFromCodedStream(v27, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v31 = *(a2 + 14);
    v32 = __OFSUB__(v31, 1);
    v33 = v31 - 1;
    if (v33 < 0 == v32)
    {
      *(a2 + 14) = v33;
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

uint64_t proto::gnss::Emergency::LocationInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 32), a2, a4);
    if ((*(v5 + 40) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::LocationInfo::default_instance_ + 24);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::LocationInfo::ByteSize(proto::gnss::Emergency::LocationInfo *this)
{
  LOBYTE(v2) = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_39;
  }

  if (*(this + 40))
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 10);
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
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 3);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 10);
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
      v2 = *(this + 10);
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_16:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_17;
      }

LABEL_29:
      v11 = *(this + 8);
      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
        v2 = *(this + 10);
      }

      else
      {
        v12 = 2;
      }

      v3 = (v12 + v3);
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

  v9 = *(this + 5);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = 11;
  }

  else if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(this + 10);
  }

  else
  {
    v10 = 2;
  }

  v3 = (v10 + v3);
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  v13 = *(this + 3);
  if (!v13)
  {
    v13 = *(proto::gnss::Emergency::LocationInfo::default_instance_ + 24);
  }

  v14 = proto::gnss::Emergency::GpsTOD::ByteSize(v13);
  v15 = v14;
  if (v14 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
  }

  else
  {
    v16 = 1;
  }

  v3 = (v3 + v15 + v16 + 1);
LABEL_39:
  *(this + 9) = v3;
  return v3;
}

void proto::gnss::Emergency::LocationInfo::CheckTypeAndMergeFrom(proto::gnss::Emergency::LocationInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::LocationInfo::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::LocationInfo::CopyFrom(proto::gnss::Emergency::LocationInfo *this, const proto::gnss::Emergency::LocationInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::LocationInfo::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::LocationInfo::Swap(uint64_t this, proto::gnss::Emergency::LocationInfo *a2)
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
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v6;
    v7 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v7;
    LODWORD(v7) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v7;
    LODWORD(v7) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v7;
  }

  return this;
}

uint64_t proto::gnss::Emergency::CellInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::CellInfo *proto::gnss::Emergency::CellInfo::CellInfo(proto::gnss::Emergency::CellInfo *this, const proto::gnss::Emergency::CellInfo *a2)
{
  *this = &unk_28585D5D0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  proto::gnss::Emergency::CellInfo::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::CellInfo::MergeFrom(proto::gnss::Emergency::CellInfo *this, const proto::gnss::Emergency::CellInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 2);
      *(this + 8) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 3);
    *(this + 8) |= 2u;
    *(this + 3) = v6;
    v4 = *(a2 + 8);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_11:
    v7 = *(a2 + 6);
    *(this + 8) |= 4u;
    *(this + 6) = v7;
    if ((*(a2 + 8) & 8) == 0)
    {
      return;
    }

LABEL_12:
    *(this + 8) |= 8u;
    v8 = *(this + 2);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 2);
    if (!v9)
    {
      v9 = *(proto::gnss::Emergency::CellInfo::default_instance_ + 16);
    }

    proto::gnss::Emergency::Plmn::MergeFrom(v8, v9);
  }
}

void sub_2454E005C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::CellInfo::~CellInfo(proto::gnss::Emergency::CellInfo *this)
{
  *this = &unk_28585D5D0;
  if (proto::gnss::Emergency::CellInfo::default_instance_ != this)
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
  proto::gnss::Emergency::CellInfo::~CellInfo(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Emergency::CellInfo::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::CellInfo::default_instance_ != this)
  {
    this = this[2];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::CellInfo::default_instance(proto::gnss::Emergency::CellInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::CellInfo::default_instance_;
  if (!proto::gnss::Emergency::CellInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::CellInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::CellInfo::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 24) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(this + 16);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
      }
    }
  }

  *(this + 32) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CellInfo::MergePartialFromCodedStream(proto::gnss::Emergency::CellInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_20;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8 || (v12 = *v11, v12 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v13 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v12;
            v13 = v11 + 1;
            *(a2 + 1) = v13;
          }

          *(this + 8) |= 1u;
          if (v13 < v8 && *v13 == 16)
          {
            v9 = v13 + 1;
            *(a2 + 1) = v9;
LABEL_29:
            if (v9 >= v8 || (v16 = *v9, v16 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v17 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v16;
              v17 = v9 + 1;
              *(a2 + 1) = v17;
            }

            *(this + 8) |= 2u;
            if (v17 < v8 && *v17 == 24)
            {
              v14 = v17 + 1;
              *(a2 + 1) = v14;
              goto LABEL_37;
            }
          }
        }

        else
        {
          if (v6 == 2 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_29;
          }

LABEL_20:
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

      if (v6 != 3)
      {
        if (v6 == 4 && v7 == 2)
        {
          v10 = *(this + 8);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v14 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_37:
      if (v14 >= v8 || (v18 = *v14, v18 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v19 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v18;
        v19 = v14 + 1;
        *(a2 + 1) = v19;
      }

      v10 = *(this + 8) | 4;
      *(this + 8) = v10;
    }

    while (v19 >= v8 || *v19 != 34);
    *(a2 + 1) = v19 + 1;
LABEL_45:
    *(this + 8) = v10 | 8;
    v20 = *(this + 2);
    if (!v20)
    {
      operator new();
    }

    v27 = 0;
    v21 = *(a2 + 1);
    if (v21 >= *(a2 + 2) || *v21 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
      {
        return 0;
      }
    }

    else
    {
      v27 = *v21;
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
    if (!proto::gnss::Emergency::Plmn::MergePartialFromCodedStream(v20, a2) || *(a2 + 36) != 1)
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

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t proto::gnss::Emergency::CellInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
      if ((*(v5 + 32) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::CellInfo::default_instance_ + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::CellInfo::ByteSize(proto::gnss::Emergency::CellInfo *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_27;
  }

  if (*(this + 32))
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 8);
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
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 3);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 6);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(this + 8);
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
    if ((v2 & 8) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_27;
  }

  v9 = *(this + 2);
  if (!v9)
  {
    v9 = *(proto::gnss::Emergency::CellInfo::default_instance_ + 16);
  }

  v10 = proto::gnss::Emergency::Plmn::ByteSize(v9);
  v11 = v10;
  if (v10 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
  }

  else
  {
    v12 = 1;
  }

  v3 = (v3 + v11 + v12 + 1);
LABEL_27:
  *(this + 7) = v3;
  return v3;
}

void proto::gnss::Emergency::CellInfo::CheckTypeAndMergeFrom(proto::gnss::Emergency::CellInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::CellInfo::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::CellInfo::CopyFrom(proto::gnss::Emergency::CellInfo *this, const proto::gnss::Emergency::CellInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::CellInfo::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::CellInfo::Swap(uint64_t this, proto::gnss::Emergency::CellInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v4;
    v5 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v5;
    LODWORD(v5) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v5;
    LODWORD(v5) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v5;
  }

  return this;
}

double proto::gnss::Emergency::UtranGanssTimeMeasured::SharedCtor(proto::gnss::Emergency::UtranGanssTimeMeasured *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::UtranGanssTimeMeasured *proto::gnss::Emergency::UtranGanssTimeMeasured::UtranGanssTimeMeasured(proto::gnss::Emergency::UtranGanssTimeMeasured *this, const proto::gnss::Emergency::UtranGanssTimeMeasured *a2)
{
  *this = &unk_28585D648;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  proto::gnss::Emergency::UtranGanssTimeMeasured::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::UtranGanssTimeMeasured::MergeFrom(proto::gnss::Emergency::UtranGanssTimeMeasured *this, const proto::gnss::Emergency::UtranGanssTimeMeasured *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 4);
    *(this + 9) |= 2u;
    *(this + 4) = v6;
    v4 = *(a2 + 9);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_11:
    v7 = *(a2 + 5);
    *(this + 9) |= 4u;
    *(this + 5) = v7;
    if ((*(a2 + 9) & 8) == 0)
    {
      return;
    }

LABEL_12:
    *(this + 9) |= 8u;
    v8 = *(this + 3);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 3);
    if (!v9)
    {
      v9 = *(proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_ + 24);
    }

    proto::gnss::Emergency::CellInfo::MergeFrom(v8, v9);
  }
}

void sub_2454E0AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::UtranGanssTimeMeasured::~UtranGanssTimeMeasured(proto::gnss::Emergency::UtranGanssTimeMeasured *this)
{
  *this = &unk_28585D648;
  if (proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_ != this)
  {
    v2 = *(this + 3);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::UtranGanssTimeMeasured::~UtranGanssTimeMeasured(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Emergency::UtranGanssTimeMeasured::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_ != this)
  {
    this = this[3];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance(proto::gnss::Emergency::UtranGanssTimeMeasured *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_;
  if (!proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::UtranGanssTimeMeasured::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v2 & 8) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = proto::gnss::Emergency::CellInfo::Clear(this);
      }
    }
  }

  *(v1 + 36) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::UtranGanssTimeMeasured::MergePartialFromCodedStream(proto::gnss::Emergency::UtranGanssTimeMeasured *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_20;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8 || (v12 = *v11, v12 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v13 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v12;
            v13 = v11 + 1;
            *(a2 + 1) = v13;
          }

          *(this + 9) |= 1u;
          if (v13 < v8 && *v13 == 16)
          {
            v9 = v13 + 1;
            *(a2 + 1) = v9;
LABEL_29:
            if (v9 >= v8 || (v16 = *v9, v16 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v17 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v16;
              v17 = v9 + 1;
              *(a2 + 1) = v17;
            }

            *(this + 9) |= 2u;
            if (v17 < v8 && *v17 == 24)
            {
              v14 = v17 + 1;
              *(a2 + 1) = v14;
              goto LABEL_37;
            }
          }
        }

        else
        {
          if (v6 == 2 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_29;
          }

LABEL_20:
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

      if (v6 != 3)
      {
        if (v6 == 4 && v7 == 2)
        {
          v10 = *(this + 9);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v14 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_37:
      if (v14 >= v8 || (v18 = *v14, v18 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
        if (!result)
        {
          return result;
        }

        v19 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 5) = v18;
        v19 = v14 + 1;
        *(a2 + 1) = v19;
      }

      v10 = *(this + 9) | 4;
      *(this + 9) = v10;
    }

    while (v19 >= v8 || *v19 != 34);
    *(a2 + 1) = v19 + 1;
LABEL_45:
    *(this + 9) = v10 | 8;
    v20 = *(this + 3);
    if (!v20)
    {
      operator new();
    }

    v27 = 0;
    v21 = *(a2 + 1);
    if (v21 >= *(a2 + 2) || *v21 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
      {
        return 0;
      }
    }

    else
    {
      v27 = *v21;
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
    if (!proto::gnss::Emergency::CellInfo::MergePartialFromCodedStream(v20, a2) || *(a2 + 36) != 1)
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

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t proto::gnss::Emergency::UtranGanssTimeMeasured::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_ + 24);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::UtranGanssTimeMeasured::ByteSize(proto::gnss::Emergency::UtranGanssTimeMeasured *this)
{
  LOBYTE(v2) = *(this + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_24;
  }

  if (*(this + 36))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 9);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 9);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 9);
    }

    else
    {
      v7 = 2;
    }

    v3 = (v7 + v3);
    if ((v2 & 8) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_24;
  }

  v8 = *(this + 3);
  if (!v8)
  {
    v8 = *(proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_ + 24);
  }

  v9 = proto::gnss::Emergency::CellInfo::ByteSize(v8);
  v10 = v9;
  if (v9 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
  }

  else
  {
    v11 = 1;
  }

  v3 = (v3 + v10 + v11 + 1);
LABEL_24:
  *(this + 8) = v3;
  return v3;
}

void proto::gnss::Emergency::UtranGanssTimeMeasured::CheckTypeAndMergeFrom(proto::gnss::Emergency::UtranGanssTimeMeasured *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::UtranGanssTimeMeasured::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::UtranGanssTimeMeasured::CopyFrom(proto::gnss::Emergency::UtranGanssTimeMeasured *this, const proto::gnss::Emergency::UtranGanssTimeMeasured *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::UtranGanssTimeMeasured::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::UtranGanssTimeMeasured::Swap(uint64_t this, proto::gnss::Emergency::UtranGanssTimeMeasured *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
  }

  return this;
}

void *proto::gnss::Emergency::GeranGanssTimeMeasured::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gnss::Emergency::GeranGanssTimeMeasured *proto::gnss::Emergency::GeranGanssTimeMeasured::GeranGanssTimeMeasured(proto::gnss::Emergency::GeranGanssTimeMeasured *this, const proto::gnss::Emergency::GeranGanssTimeMeasured *a2)
{
  *this = &unk_28585D6C0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gnss::Emergency::GeranGanssTimeMeasured::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GeranGanssTimeMeasured::MergeFrom(proto::gnss::Emergency::GeranGanssTimeMeasured *this, const proto::gnss::Emergency::GeranGanssTimeMeasured *a2)
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
      *(this + 7) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 7);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_10;
      }
    }

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 3);
    *(this + 7) |= 2u;
    *(this + 3) = v6;
    if ((*(a2 + 7) & 4) == 0)
    {
      return;
    }

LABEL_10:
    *(this + 7) |= 4u;
    v7 = *(this + 2);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 2);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_ + 16);
    }

    proto::gnss::Emergency::CellInfo::MergeFrom(v7, v8);
  }
}

void sub_2454E14D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GeranGanssTimeMeasured::~GeranGanssTimeMeasured(proto::gnss::Emergency::GeranGanssTimeMeasured *this)
{
  *this = &unk_28585D6C0;
  if (proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_ != this)
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
  proto::gnss::Emergency::GeranGanssTimeMeasured::~GeranGanssTimeMeasured(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Emergency::GeranGanssTimeMeasured::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_ != this)
  {
    this = this[2];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance(proto::gnss::Emergency::GeranGanssTimeMeasured *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_;
  if (!proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GeranGanssTimeMeasured::Clear(uint64_t this)
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
        this = proto::gnss::Emergency::CellInfo::Clear(this);
      }
    }
  }

  *(v1 + 28) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GeranGanssTimeMeasured::MergePartialFromCodedStream(proto::gnss::Emergency::GeranGanssTimeMeasured *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
            v13 = *(this + 7);
            goto LABEL_33;
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
          goto LABEL_25;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_25:
      if (v12 >= v8 || (v15 = *v12, v15 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
        if (!result)
        {
          return result;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 3) = v15;
        v16 = v12 + 1;
        *(a2 + 1) = v16;
      }

      v13 = *(this + 7) | 2;
      *(this + 7) = v13;
    }

    while (v16 >= v8 || *v16 != 26);
    *(a2 + 1) = v16 + 1;
LABEL_33:
    *(this + 7) = v13 | 4;
    v17 = *(this + 2);
    if (!v17)
    {
      operator new();
    }

    v24 = 0;
    v18 = *(a2 + 1);
    if (v18 >= *(a2 + 2) || *v18 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24))
      {
        return 0;
      }
    }

    else
    {
      v24 = *v18;
      *(a2 + 1) = v18 + 1;
    }

    v19 = *(a2 + 14);
    v20 = *(a2 + 15);
    *(a2 + 14) = v19 + 1;
    if (v19 >= v20)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!proto::gnss::Emergency::CellInfo::MergePartialFromCodedStream(v17, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v21 = *(a2 + 14);
    v22 = __OFSUB__(v21, 1);
    v23 = v21 - 1;
    if (v23 < 0 == v22)
    {
      *(a2 + 14) = v23;
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

uint64_t proto::gnss::Emergency::GeranGanssTimeMeasured::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_ + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::GeranGanssTimeMeasured::ByteSize(proto::gnss::Emergency::GeranGanssTimeMeasured *this)
{
  LOBYTE(v2) = *(this + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_21;
  }

  if (*(this + 28))
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 7);
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
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 3);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 7);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 2);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_ + 16);
    }

    v8 = proto::gnss::Emergency::CellInfo::ByteSize(v7);
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

LABEL_21:
  *(this + 6) = v3;
  return v3;
}

void proto::gnss::Emergency::GeranGanssTimeMeasured::CheckTypeAndMergeFrom(proto::gnss::Emergency::GeranGanssTimeMeasured *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GeranGanssTimeMeasured::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GeranGanssTimeMeasured::CopyFrom(proto::gnss::Emergency::GeranGanssTimeMeasured *this, const proto::gnss::Emergency::GeranGanssTimeMeasured *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GeranGanssTimeMeasured::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::GeranGanssTimeMeasured::Swap(uint64_t this, proto::gnss::Emergency::GeranGanssTimeMeasured *a2)
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

double proto::gnss::Emergency::ClsEutranCell::SharedCtor(proto::gnss::Emergency::ClsEutranCell *this)
{
  *(this + 7) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::ClsEutranCell *proto::gnss::Emergency::ClsEutranCell::ClsEutranCell(proto::gnss::Emergency::ClsEutranCell *this, const proto::gnss::Emergency::ClsEutranCell *a2)
{
  *this = &unk_28585D738;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  proto::gnss::Emergency::ClsEutranCell::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::ClsEutranCell::MergeFrom(proto::gnss::Emergency::ClsEutranCell *this, const proto::gnss::Emergency::ClsEutranCell *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 15);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 2);
    *(this + 15) |= 1u;
    *(this + 2) = v7;
    v4 = *(a2 + 15);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 3);
  *(this + 15) |= 2u;
  *(this + 3) = v8;
  v4 = *(a2 + 15);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(a2 + 4);
  *(this + 15) |= 4u;
  *(this + 4) = v9;
  v4 = *(a2 + 15);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a2 + 5);
  *(this + 15) |= 8u;
  *(this + 5) = v10;
  v4 = *(a2 + 15);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    v13 = *(a2 + 8);
    *(this + 15) |= 0x20u;
    *(this + 8) = v13;
    v4 = *(a2 + 15);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_23:
  *(this + 15) |= 0x10u;
  v11 = *(this + 3);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 3);
  if (!v12)
  {
    v12 = *(proto::gnss::Emergency::ClsEutranCell::default_instance_ + 24);
  }

  proto::gnss::Emergency::Plmn::MergeFrom(v11, v12);
  v4 = *(a2 + 15);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  v14 = *(a2 + 9);
  *(this + 15) |= 0x40u;
  *(this + 9) = v14;
  v4 = *(a2 + 15);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 10);
    *(this + 15) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(a2 + 15);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = *(a2 + 11);
    *(this + 15) |= 0x100u;
    *(this + 11) = v15;
    v4 = *(a2 + 15);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        return;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 12);
  *(this + 15) |= 0x200u;
  *(this + 12) = v16;
  if ((*(a2 + 15) & 0x400) == 0)
  {
    return;
  }

LABEL_17:
  v6 = *(a2 + 13);
  *(this + 15) |= 0x400u;
  *(this + 13) = v6;
}

void sub_2454E1F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::ClsEutranCell::~ClsEutranCell(proto::gnss::Emergency::ClsEutranCell *this)
{
  *this = &unk_28585D738;
  if (proto::gnss::Emergency::ClsEutranCell::default_instance_ != this)
  {
    v2 = *(this + 3);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::ClsEutranCell::~ClsEutranCell(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Emergency::ClsEutranCell::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::ClsEutranCell::default_instance_ != this)
  {
    this = this[3];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::ClsEutranCell::default_instance(proto::gnss::Emergency::ClsEutranCell *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::ClsEutranCell::default_instance_;
  if (!proto::gnss::Emergency::ClsEutranCell::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::ClsEutranCell::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::ClsEutranCell::Clear(uint64_t this)
{
  v1 = *(this + 60);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v1 & 0x10) != 0)
    {
      v2 = *(this + 24);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
        v1 = *(this + 60);
      }
    }

    *(this + 32) = 0;
    *(this + 40) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    *(this + 44) = 0;
  }

  *(this + 60) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::ClsEutranCell::MergePartialFromCodedStream(proto::gnss::Emergency::ClsEutranCell *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 5)
        {
          break;
        }

        if (TagFallback >> 3 > 8)
        {
          if (v6 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v22 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_114;
            }
          }

          else if (v6 == 10)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_122;
            }
          }

          else if (v6 == 11 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_130;
          }

          goto LABEL_43;
        }

        if (v6 == 6)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v21 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_90;
        }

        if (v6 == 7)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v18 = *(a2 + 1);
          v8 = *(a2 + 2);
LABEL_98:
          if (v18 >= v8 || (v40 = *v18, v40 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
            if (!result)
            {
              return result;
            }

            v41 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 9) = v40;
            v41 = v18 + 1;
            *(a2 + 1) = v41;
          }

          *(this + 15) |= 0x40u;
          if (v41 < v8 && *v41 == 64)
          {
            v9 = v41 + 1;
            *(a2 + 1) = v9;
LABEL_106:
            if (v9 >= v8 || (v42 = *v9, v42 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
              if (!result)
              {
                return result;
              }

              v43 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 10) = v42;
              v43 = v9 + 1;
              *(a2 + 1) = v43;
            }

            *(this + 15) |= 0x80u;
            if (v43 < v8 && *v43 == 72)
            {
              v22 = v43 + 1;
              *(a2 + 1) = v22;
LABEL_114:
              v50 = 0;
              if (v22 >= v8 || (v44 = *v22, (v44 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50);
                if (!result)
                {
                  return result;
                }

                v44 = v50;
                v45 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                v45 = v22 + 1;
                *(a2 + 1) = v45;
              }

              *(this + 11) = v44;
              *(this + 15) |= 0x100u;
              if (v45 < v8 && *v45 == 80)
              {
                v19 = v45 + 1;
                *(a2 + 1) = v19;
LABEL_122:
                if (v19 >= v8 || (v46 = *v19, v46 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                  if (!result)
                  {
                    return result;
                  }

                  v47 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  *(this + 12) = v46;
                  v47 = v19 + 1;
                  *(a2 + 1) = v47;
                }

                *(this + 15) |= 0x200u;
                if (v47 < v8 && *v47 == 88)
                {
                  v11 = v47 + 1;
                  *(a2 + 1) = v11;
LABEL_130:
                  if (v11 >= v8 || (v48 = *v11, v48 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                    if (!result)
                    {
                      return result;
                    }

                    v49 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 13) = v48;
                    v49 = v11 + 1;
                    *(a2 + 1) = v49;
                  }

                  *(this + 15) |= 0x400u;
                  if (v49 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
        }

        else
        {
          if (v6 == 8 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_106;
          }

LABEL_43:
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

      if (TagFallback >> 3 > 2)
      {
        break;
      }

      if (v6 != 1)
      {
        if (v6 != 2 || (TagFallback & 7) != 0)
        {
          goto LABEL_43;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_52;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v14 = *(a2 + 1);
      v12 = *(a2 + 2);
      if (v14 >= v12 || (v15 = *v14, v15 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v16 = *(a2 + 1);
        v12 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v15;
        v16 = v14 + 1;
        *(a2 + 1) = v16;
      }

      *(this + 15) |= 1u;
      if (v16 < v12 && *v16 == 16)
      {
        v13 = v16 + 1;
        *(a2 + 1) = v13;
LABEL_52:
        if (v13 >= v12 || (v24 = *v13, v24 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v25 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v24;
          v25 = v13 + 1;
          *(a2 + 1) = v25;
        }

        *(this + 15) |= 2u;
        if (v25 < v12 && *v25 == 24)
        {
          v20 = v25 + 1;
          *(a2 + 1) = v20;
LABEL_60:
          if (v20 >= v12 || (v26 = *v20, v26 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v27 = *(a2 + 1);
            v12 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v26;
            v27 = v20 + 1;
            *(a2 + 1) = v27;
          }

          *(this + 15) |= 4u;
          if (v27 < v12 && *v27 == 32)
          {
            v17 = v27 + 1;
            *(a2 + 1) = v17;
LABEL_68:
            if (v17 >= v12 || (v28 = *v17, v28 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v29 = *(a2 + 1);
              v12 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v28;
              v29 = v17 + 1;
              *(a2 + 1) = v29;
            }

            v10 = *(this + 15) | 8;
            *(this + 15) = v10;
            if (v29 < v12 && *v29 == 42)
            {
              *(a2 + 1) = v29 + 1;
              goto LABEL_76;
            }
          }
        }
      }
    }

    if (v6 == 3)
    {
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v20 = *(a2 + 1);
      v12 = *(a2 + 2);
      goto LABEL_60;
    }

    if (v6 == 4)
    {
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v17 = *(a2 + 1);
      v12 = *(a2 + 2);
      goto LABEL_68;
    }

    if (v6 != 5 || v7 != 2)
    {
      goto LABEL_43;
    }

    v10 = *(this + 15);
LABEL_76:
    *(this + 15) = v10 | 0x10;
    v30 = *(this + 3);
    if (!v30)
    {
      operator new();
    }

    v51 = 0;
    v31 = *(a2 + 1);
    if (v31 >= *(a2 + 2) || *v31 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51))
      {
        return 0;
      }
    }

    else
    {
      v51 = *v31;
      *(a2 + 1) = v31 + 1;
    }

    v32 = *(a2 + 14);
    v33 = *(a2 + 15);
    *(a2 + 14) = v32 + 1;
    if (v32 >= v33)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!proto::gnss::Emergency::Plmn::MergePartialFromCodedStream(v30, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v34 = *(a2 + 14);
    v35 = __OFSUB__(v34, 1);
    v36 = v34 - 1;
    if (v36 < 0 == v35)
    {
      *(a2 + 14) = v36;
    }

    v37 = *(a2 + 1);
    v8 = *(a2 + 2);
    if (v37 < v8 && *v37 == 48)
    {
      v21 = v37 + 1;
      *(a2 + 1) = v21;
LABEL_90:
      if (v21 >= v8 || (v38 = *v21, v38 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
        if (!result)
        {
          return result;
        }

        v39 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 8) = v38;
        v39 = v21 + 1;
        *(a2 + 1) = v39;
      }

      *(this + 15) |= 0x20u;
      if (v39 < v8 && *v39 == 56)
      {
        v18 = v39 + 1;
        *(a2 + 1) = v18;
        goto LABEL_98;
      }
    }
  }
}

uint64_t proto::gnss::Emergency::ClsEutranCell::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 60);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_17:
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::ClsEutranCell::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v7, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_24:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
    if ((*(v5 + 60) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_24;
  }

LABEL_11:
  if ((v6 & 0x400) == 0)
  {
    return this;
  }

LABEL_25:
  v8 = *(v5 + 52);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v8, a2, a4);
}

uint64_t proto::gnss::Emergency::ClsEutranCell::ByteSize(proto::gnss::Emergency::ClsEutranCell *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_47;
  }

  if (v2)
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 15);
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

  v5 = *(this + 3);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 15);
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
      v2 = *(this + 15);
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_16:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

  v9 = *(this + 5);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v10 = 2;
  }

  v3 = (v10 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_17:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_29:
  v11 = *(this + 3);
  if (!v11)
  {
    v11 = *(proto::gnss::Emergency::ClsEutranCell::default_instance_ + 24);
  }

  v12 = proto::gnss::Emergency::Plmn::ByteSize(v11);
  v13 = v12;
  if (v12 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
  }

  else
  {
    v14 = 1;
  }

  v3 = (v3 + v13 + v14 + 1);
  v2 = *(this + 15);
  if ((v2 & 0x20) == 0)
  {
LABEL_18:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_35:
  v15 = *(this + 8);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v16 = 2;
  }

  v3 = (v16 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_19:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

LABEL_39:
  v17 = *(this + 9);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v18 = 2;
  }

  v3 = (v18 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_43:
    v19 = *(this + 10);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v2 = *(this + 15);
    }

    else
    {
      v20 = 2;
    }

    v3 = (v20 + v3);
  }

LABEL_47:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_66;
  }

  if ((v2 & 0x100) != 0)
  {
    v21 = *(this + 11);
    if ((v21 & 0x80000000) != 0)
    {
      v22 = 11;
    }

    else if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
      v2 = *(this + 15);
    }

    else
    {
      v22 = 2;
    }

    v3 = (v22 + v3);
    if ((v2 & 0x200) == 0)
    {
LABEL_50:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_62;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_50;
  }

  v23 = *(this + 12);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v24 = 2;
  }

  v3 = (v24 + v3);
  if ((v2 & 0x400) != 0)
  {
LABEL_62:
    v25 = *(this + 13);
    if (v25 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    }

    else
    {
      v26 = 2;
    }

    v3 = (v26 + v3);
  }

LABEL_66:
  *(this + 14) = v3;
  return v3;
}

void proto::gnss::Emergency::ClsEutranCell::CheckTypeAndMergeFrom(proto::gnss::Emergency::ClsEutranCell *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::ClsEutranCell::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::ClsEutranCell::CopyFrom(proto::gnss::Emergency::ClsEutranCell *this, const proto::gnss::Emergency::ClsEutranCell *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::ClsEutranCell::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::ClsEutranCell::Swap(uint64_t this, proto::gnss::Emergency::ClsEutranCell *a2)
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
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v6;
    LODWORD(v6) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v6;
    LODWORD(v6) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v6;
    LODWORD(v6) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v6;
    LODWORD(v6) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v6;
    LODWORD(v6) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v6;
    LODWORD(v6) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v6;
    LODWORD(v6) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v6;
    LODWORD(v6) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v6;
  }

  return this;
}

double proto::gnss::Emergency::GanssTimeMeasured::SharedCtor(proto::gnss::Emergency::GanssTimeMeasured *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::GanssTimeMeasured *proto::gnss::Emergency::GanssTimeMeasured::GanssTimeMeasured(proto::gnss::Emergency::GanssTimeMeasured *this, const proto::gnss::Emergency::GanssTimeMeasured *a2)
{
  *this = &unk_28585D7B0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  proto::gnss::Emergency::GanssTimeMeasured::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GanssTimeMeasured::MergeFrom(proto::gnss::Emergency::GanssTimeMeasured *this, const proto::gnss::Emergency::GanssTimeMeasured *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      *(this + 9) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        v6 = *(proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 8);
      }

      proto::gnss::Emergency::UtranGanssTimeMeasured::MergeFrom(v5, v6);
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_18;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 9) |= 2u;
    v7 = *(this + 2);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 2);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 16);
    }

    proto::gnss::Emergency::GeranGanssTimeMeasured::MergeFrom(v7, v8);
    if ((*(a2 + 9) & 4) != 0)
    {
LABEL_18:
      *(this + 9) |= 4u;
      v9 = *(this + 3);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 3);
      if (!v10)
      {
        v10 = *(proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 24);
      }

      proto::gnss::Emergency::ClsEutranCell::MergeFrom(v9, v10);
    }
  }
}

void sub_2454E3030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssTimeMeasured::~GanssTimeMeasured(proto::gnss::Emergency::GanssTimeMeasured *this)
{
  *this = &unk_28585D7B0;
  proto::gnss::Emergency::GanssTimeMeasured::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585D7B0;
  proto::gnss::Emergency::GanssTimeMeasured::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585D7B0;
  proto::gnss::Emergency::GanssTimeMeasured::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Emergency::GanssTimeMeasured::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::GanssTimeMeasured::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    this = v1[3];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::GanssTimeMeasured::default_instance(proto::gnss::Emergency::GanssTimeMeasured *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GanssTimeMeasured::default_instance_;
  if (!proto::gnss::Emergency::GanssTimeMeasured::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GanssTimeMeasured::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssTimeMeasured::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 36);
  if (v2)
  {
    if (*(this + 36))
    {
      this = *(this + 8);
      if (this)
      {
        this = proto::gnss::Emergency::UtranGanssTimeMeasured::Clear(this);
        v2 = *(v1 + 36);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 16);
      if (this)
      {
        this = proto::gnss::Emergency::GeranGanssTimeMeasured::Clear(this);
        v2 = *(v1 + 36);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = proto::gnss::Emergency::ClsEutranCell::Clear(this);
      }
    }
  }

  *(v1 + 36) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GanssTimeMeasured::MergePartialFromCodedStream(proto::gnss::Emergency::GanssTimeMeasured *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 == 3)
      {
        if (v7 == 2)
        {
          goto LABEL_44;
        }

        goto LABEL_18;
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || v7 != 2)
      {
        goto LABEL_18;
      }

      *(this + 9) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v30 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
        {
          return 0;
        }
      }

      else
      {
        v30 = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v10 = *(a2 + 14);
      v11 = *(a2 + 15);
      *(a2 + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!proto::gnss::Emergency::UtranGanssTimeMeasured::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v12 = *(a2 + 14);
      v13 = __OFSUB__(v12, 1);
      v14 = v12 - 1;
      if (v14 < 0 == v13)
      {
        *(a2 + 14) = v14;
      }

      v15 = *(a2 + 1);
      if (v15 < *(a2 + 2) && *v15 == 18)
      {
        *(a2 + 1) = v15 + 1;
LABEL_30:
        *(this + 9) |= 2u;
        v16 = *(this + 2);
        if (!v16)
        {
          operator new();
        }

        v31 = 0;
        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31))
          {
            return 0;
          }
        }

        else
        {
          v31 = *v17;
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
        if (!proto::gnss::Emergency::GeranGanssTimeMeasured::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v20 = *(a2 + 14);
        v13 = __OFSUB__(v20, 1);
        v21 = v20 - 1;
        if (v21 < 0 == v13)
        {
          *(a2 + 14) = v21;
        }

        v22 = *(a2 + 1);
        if (v22 < *(a2 + 2) && *v22 == 26)
        {
          *(a2 + 1) = v22 + 1;
LABEL_44:
          *(this + 9) |= 4u;
          v23 = *(this + 3);
          if (!v23)
          {
            operator new();
          }

          v32 = 0;
          v24 = *(a2 + 1);
          if (v24 >= *(a2 + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32))
            {
              return 0;
            }
          }

          else
          {
            v32 = *v24;
            *(a2 + 1) = v24 + 1;
          }

          v25 = *(a2 + 14);
          v26 = *(a2 + 15);
          *(a2 + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!proto::gnss::Emergency::ClsEutranCell::MergePartialFromCodedStream(v23, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v27 = *(a2 + 14);
          v13 = __OFSUB__(v27, 1);
          v28 = v27 - 1;
          if (v28 < 0 == v13)
          {
            *(a2 + 14) = v28;
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
    }

    if (v7 == 2)
    {
      goto LABEL_30;
    }

LABEL_18:
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

uint64_t proto::gnss::Emergency::GanssTimeMeasured::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        return this;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  if ((*(v5 + 36) & 4) != 0)
  {
LABEL_11:
    v9 = *(v5 + 24);
    if (!v9)
    {
      v9 = *(proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::GanssTimeMeasured::ByteSize(proto::gnss::Emergency::GanssTimeMeasured *this)
{
  LOBYTE(v2) = *(this + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_25;
  }

  if (*(this + 36))
  {
    v4 = *(this + 1);
    if (!v4)
    {
      v4 = *(proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 8);
    }

    v5 = proto::gnss::Emergency::UtranGanssTimeMeasured::ByteSize(v4);
    v6 = v5;
    if (v5 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
    }

    else
    {
      v7 = 1;
    }

    v3 = (v6 + v7 + 1);
    v2 = *(this + 9);
    if ((v2 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = 0;
  if ((*(this + 36) & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 2);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 16);
    }

    v9 = proto::gnss::Emergency::GeranGanssTimeMeasured::ByteSize(v8);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v3 = (v3 + v10 + v11 + 1);
    v2 = *(this + 9);
  }

LABEL_18:
  if ((v2 & 4) != 0)
  {
    v12 = *(this + 3);
    if (!v12)
    {
      v12 = *(proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 24);
    }

    v13 = proto::gnss::Emergency::ClsEutranCell::ByteSize(v12);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    }

    else
    {
      v15 = 1;
    }

    v3 = (v3 + v14 + v15 + 1);
  }

LABEL_25:
  *(this + 8) = v3;
  return v3;
}

void proto::gnss::Emergency::GanssTimeMeasured::CheckTypeAndMergeFrom(proto::gnss::Emergency::GanssTimeMeasured *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GanssTimeMeasured::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GanssTimeMeasured::CopyFrom(proto::gnss::Emergency::GanssTimeMeasured *this, const proto::gnss::Emergency::GanssTimeMeasured *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GanssTimeMeasured::MergeFrom(this, a2);
  }
}