uint64_t proto::gnss::Emergency::GpsReferenceTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 68);
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
  v6 = *(v5 + 68);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  if ((*(v5 + 68) & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  }

LABEL_6:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  v8 = *(v5 + 68);
  if ((v8 & 0x20) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 48), a2, a4);
    v8 = *(v5 + 68);
    if ((v8 & 0x40) == 0)
    {
LABEL_11:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_12;
      }

LABEL_20:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(v5 + 56), a2, a4);
      if ((*(v5 + 68) & 0x100) == 0)
      {
        return this;
      }

      goto LABEL_21;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, *(v5 + 52), a2, a4);
  v8 = *(v5 + 68);
  if ((v8 & 0x80) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((v8 & 0x100) == 0)
  {
    return this;
  }

LABEL_21:
  v9 = *(v5 + 60);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v9, a2, a4);
}

uint64_t proto::gnss::Emergency::GpsReferenceTime::ByteSize(proto::gnss::Emergency::GpsReferenceTime *this)
{
  v2 = *(this + 17);
  if (!v2)
  {
    v3 = 0;
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (v2)
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 17);
      if ((v2 & 2) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_15;
    }
  }

  v5 = *(this + 3);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 17);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_15:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 4);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(this + 17);
    }

    else
    {
      v8 = 2;
    }

    v3 += v8;
    if ((v2 & 8) == 0)
    {
LABEL_17:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_17;
  }

  v9 = *(this + 5);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(this + 17);
  }

  else
  {
    v10 = 2;
  }

  v3 += v10;
  if ((v2 & 0x20) == 0)
  {
LABEL_18:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_30:
  v11 = *(this + 12);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(this + 17);
  }

  else
  {
    v12 = 2;
  }

  v3 += v12;
  if ((v2 & 0x40) == 0)
  {
LABEL_19:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_34:
  v13 = *(this + 13);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = *(this + 17);
  }

  else
  {
    v14 = 2;
  }

  v3 += v14;
  if ((v2 & 0x80) == 0)
  {
LABEL_20:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

LABEL_40:
  v15 = *(this + 14);
  if ((v15 & 0x80000000) != 0)
  {
    v16 = 11;
  }

  else if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = *(this + 17);
  }

  else
  {
    v16 = 2;
  }

  v3 += v16;
  if ((v2 & 0x100) != 0)
  {
LABEL_46:
    v17 = *(this + 15);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    }

    else
    {
      v18 = 2;
    }

    v3 += v18;
  }

LABEL_50:
  v19 = *(this + 8);
  v20 = (v19 + v3);
  if (v19 >= 1)
  {
    v21 = 0;
    do
    {
      v22 = proto::gnss::Emergency::TowAssist::ByteSize(*(*(this + 3) + 8 * v21));
      v23 = v22;
      if (v22 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      }

      else
      {
        v24 = 1;
      }

      v20 = (v23 + v20 + v24);
      ++v21;
    }

    while (v21 < *(this + 8));
  }

  *(this + 16) = v20;
  return v20;
}

void proto::gnss::Emergency::GpsReferenceTime::CheckTypeAndMergeFrom(proto::gnss::Emergency::GpsReferenceTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GpsReferenceTime::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GpsReferenceTime::CopyFrom(proto::gnss::Emergency::GpsReferenceTime *this, const proto::gnss::Emergency::GpsReferenceTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GpsReferenceTime::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GpsReferenceTime *proto::gnss::Emergency::GpsReferenceTime::Swap(proto::gnss::Emergency::GpsReferenceTime *this, proto::gnss::Emergency::GpsReferenceTime *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v7;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v8 = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v8;
    v9 = *(v3 + 13);
    *(v3 + 13) = *(a2 + 13);
    *(a2 + 13) = v9;
    v10 = *(v3 + 14);
    *(v3 + 14) = *(a2 + 14);
    *(a2 + 14) = v10;
    v11 = *(v3 + 15);
    *(v3 + 15) = *(a2 + 15);
    *(a2 + 15) = v11;
    v12 = *(v3 + 17);
    *(v3 + 17) = *(a2 + 17);
    *(a2 + 17) = v12;
    v13 = *(v3 + 16);
    *(v3 + 16) = *(a2 + 16);
    *(a2 + 16) = v13;
  }

  return this;
}

double proto::gnss::Emergency::ReferenceLocation::SharedCtor(proto::gnss::Emergency::ReferenceLocation *this)
{
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::ReferenceLocation *proto::gnss::Emergency::ReferenceLocation::ReferenceLocation(proto::gnss::Emergency::ReferenceLocation *this, const proto::gnss::Emergency::ReferenceLocation *a2)
{
  *this = &unk_28585EC50;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  proto::gnss::Emergency::ReferenceLocation::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::ReferenceLocation::MergeFrom(proto::gnss::Emergency::ReferenceLocation *this, const proto::gnss::Emergency::ReferenceLocation *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  v4 = *(a2 + 17);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 2);
    *(this + 17) |= 1u;
    *(this + 2) = v7;
    v4 = *(a2 + 17);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 3);
  *(this + 17) |= 2u;
  *(this + 3) = v8;
  v4 = *(a2 + 17);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = *(a2 + 4);
  *(this + 17) |= 4u;
  *(this + 4) = v9;
  v4 = *(a2 + 17);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = *(a2 + 5);
  *(this + 17) |= 8u;
  *(this + 5) = v10;
  v4 = *(a2 + 17);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_27:
    v12 = *(a2 + 7);
    *(this + 17) |= 0x20u;
    *(this + 7) = v12;
    v4 = *(a2 + 17);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_26:
  v11 = *(a2 + 6);
  *(this + 17) |= 0x10u;
  *(this + 6) = v11;
  v4 = *(a2 + 17);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_28:
  v13 = *(a2 + 8);
  *(this + 17) |= 0x40u;
  *(this + 8) = v13;
  v4 = *(a2 + 17);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 9);
    *(this + 17) |= 0x80u;
    *(this + 9) = v5;
    v4 = *(a2 + 17);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 10);
    *(this + 17) |= 0x100u;
    *(this + 10) = v14;
    v4 = *(a2 + 17);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_32;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 11);
  *(this + 17) |= 0x200u;
  *(this + 11) = v15;
  v4 = *(a2 + 17);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = *(a2 + 12);
  *(this + 17) |= 0x400u;
  *(this + 12) = v16;
  v4 = *(a2 + 17);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_33:
  v17 = *(a2 + 13);
  if (v17 >= 6)
  {
    __assert_rtn("set_session_protocol", "GnssEmergencyTypes.pb.h", 23656, "::proto::gnss::Emergency::SessionProtocol_IsValid(value)");
  }

  *(this + 17) |= 0x800u;
  *(this + 13) = v17;
  v4 = *(a2 + 17);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

LABEL_35:
  v18 = *(a2 + 14);
  if (v18 >= 7)
  {
    __assert_rtn("set_pos_protocol", "GnssEmergencyTypes.pb.h", 23679, "::proto::gnss::Emergency::PosProtocol_IsValid(value)");
  }

  *(this + 17) |= 0x1000u;
  *(this + 14) = v18;
  if ((*(a2 + 17) & 0x2000) != 0)
  {
LABEL_20:
    v6 = *(a2 + 15);
    *(this + 17) |= 0x2000u;
    *(this + 15) = v6;
  }
}

void sub_245503308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::ReferenceLocation::~ReferenceLocation(proto::gnss::Emergency::ReferenceLocation *this)
{
  *this = &unk_28585EC50;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585EC50;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585EC50;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::ReferenceLocation::default_instance(proto::gnss::Emergency::ReferenceLocation *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::ReferenceLocation::default_instance_;
  if (!proto::gnss::Emergency::ReferenceLocation::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::ReferenceLocation::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::ReferenceLocation::Clear(uint64_t this)
{
  v1 = *(this + 68);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
    *(this + 48) = 0;
    *(this + 56) = 0;
  }

  *(this + 68) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::ReferenceLocation::MergePartialFromCodedStream(proto::gnss::Emergency::ReferenceLocation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_36;
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
LABEL_42:
            *(this + 17) |= 1u;
            if (v9 < v6 && *v9 == 16)
            {
              v18 = v9 + 1;
              *(a2 + 1) = v18;
              goto LABEL_45;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (result)
        {
          v9 = *(a2 + 1);
          v6 = *(a2 + 2);
          goto LABEL_42;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v18 = *(a2 + 1);
        v6 = *(a2 + 2);
LABEL_45:
        if (v18 >= v6 || (v25 = *v18, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v26 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v25;
          v26 = v18 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 17) |= 2u;
        if (v26 >= v6 || *v26 != 24)
        {
          continue;
        }

        v15 = v26 + 1;
        *(a2 + 1) = v15;
LABEL_53:
        if (v15 >= v6 || (v27 = *v15, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v27;
          v28 = v15 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 17) |= 4u;
        if (v28 >= v6 || *v28 != 32)
        {
          continue;
        }

        v16 = v28 + 1;
        *(a2 + 1) = v16;
LABEL_61:
        if (v16 >= v6 || (v29 = *v16, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v29;
          v30 = v16 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 17) |= 8u;
        if (v30 >= v6 || *v30 != 40)
        {
          continue;
        }

        v11 = v30 + 1;
        *(a2 + 1) = v11;
LABEL_69:
        v52 = 0;
        if (v11 >= v6 || (v31 = *v11, (v31 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52);
          if (!result)
          {
            return result;
          }

          v31 = v52;
          v32 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v32 = v11 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 6) = v31;
        *(this + 17) |= 0x10u;
        if (v32 >= v6 || *v32 != 48)
        {
          continue;
        }

        v19 = v32 + 1;
        *(a2 + 1) = v19;
LABEL_77:
        if (v19 >= v6 || (v33 = *v19, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v33;
          v34 = v19 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 17) |= 0x20u;
        if (v34 >= v6 || *v34 != 56)
        {
          continue;
        }

        v22 = v34 + 1;
        *(a2 + 1) = v22;
LABEL_85:
        if (v22 >= v6 || (v35 = *v22, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v35;
          v36 = v22 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 17) |= 0x40u;
        if (v36 >= v6 || *v36 != 64)
        {
          continue;
        }

        v17 = v36 + 1;
        *(a2 + 1) = v17;
LABEL_93:
        if (v17 >= v6 || (v37 = *v17, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v37;
          v38 = v17 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 17) |= 0x80u;
        if (v38 >= v6 || *v38 != 72)
        {
          continue;
        }

        v24 = v38 + 1;
        *(a2 + 1) = v24;
LABEL_101:
        if (v24 >= v6 || (v39 = *v24, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v40 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v39;
          v40 = v24 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 17) |= 0x100u;
        if (v40 >= v6 || *v40 != 80)
        {
          continue;
        }

        v14 = v40 + 1;
        *(a2 + 1) = v14;
LABEL_109:
        if (v14 >= v6 || (v41 = *v14, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v41;
          v42 = v14 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 17) |= 0x200u;
        if (v42 >= v6 || *v42 != 88)
        {
          continue;
        }

        v23 = v42 + 1;
        *(a2 + 1) = v23;
LABEL_117:
        if (v23 >= v6 || (v43 = *v23, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v43;
          v44 = v23 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 17) |= 0x400u;
        if (v44 >= v6 || *v44 != 96)
        {
          continue;
        }

        v10 = v44 + 1;
        *(a2 + 1) = v10;
LABEL_125:
        v54 = 0;
        if (v10 >= v6 || (v45 = *v10, (v45 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v54);
          if (!result)
          {
            return result;
          }

          v45 = v54;
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v45 <= 5)
        {
          *(this + 17) |= 0x800u;
          *(this + 13) = v45;
        }

        v46 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v46 >= v12 || *v46 != 104)
        {
          continue;
        }

        v13 = v46 + 1;
        *(a2 + 1) = v13;
LABEL_135:
        v53 = 0;
        if (v13 >= v12 || (v47 = *v13, (v47 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
          if (!result)
          {
            return result;
          }

          v47 = v53;
        }

        else
        {
          *(a2 + 1) = v13 + 1;
        }

        if (v47 <= 6)
        {
          *(this + 17) |= 0x1000u;
          *(this + 14) = v47;
        }

        v48 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v48 >= v20 || *v48 != 112)
        {
          continue;
        }

        v21 = v48 + 1;
        *(a2 + 1) = v21;
LABEL_145:
        if (v21 >= v20 || (v49 = *v21, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v49;
          v50 = v21 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 17) |= 0x2000u;
        if (v50 != v20 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
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
          goto LABEL_36;
        }

        v15 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_53;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v16 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_61;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v11 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_69;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v19 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_77;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v22 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_85;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v17 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_93;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v24 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_101;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v14 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_109;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v23 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_117;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v10 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_125;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_135;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_145;
      default:
LABEL_36:
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

unsigned int *proto::gnss::Emergency::ReferenceLocation::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[17];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[17];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[17];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[17];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, v5[6], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[8], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[9], a2, a4);
  v6 = v5[17];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[10], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[11], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[12], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, v5[14], a2, a4);
    if ((v5[17] & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, v5[13], a2, a4);
  v6 = v5[17];
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return this;
  }

LABEL_29:
  v7 = v5[15];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::ReferenceLocation::ByteSize(proto::gnss::Emergency::ReferenceLocation *this)
{
  v2 = *(this + 17);
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
      v2 = *(this + 17);
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
    v2 = *(this + 17);
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
      v2 = *(this + 17);
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
    v2 = *(this + 17);
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
  v11 = *(this + 6);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 11;
  }

  else if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(this + 17);
  }

  else
  {
    v12 = 2;
  }

  v3 = (v12 + v3);
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
  v13 = *(this + 7);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = *(this + 17);
  }

  else
  {
    v14 = 2;
  }

  v3 = (v14 + v3);
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
  v15 = *(this + 8);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = *(this + 17);
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
      v2 = *(this + 17);
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
    goto LABEL_83;
  }

  if ((v2 & 0x100) != 0)
  {
    v19 = *(this + 10);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v2 = *(this + 17);
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

      goto LABEL_63;
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
    v2 = *(this + 17);
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

    goto LABEL_67;
  }

LABEL_63:
  v23 = *(this + 12);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v2 = *(this + 17);
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

    goto LABEL_73;
  }

LABEL_67:
  v25 = *(this + 13);
  if ((v25 & 0x80000000) != 0)
  {
    v26 = 11;
  }

  else if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v2 = *(this + 17);
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
      goto LABEL_83;
    }

    goto LABEL_79;
  }

LABEL_73:
  v27 = *(this + 14);
  if ((v27 & 0x80000000) != 0)
  {
    v28 = 11;
  }

  else if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v2 = *(this + 17);
  }

  else
  {
    v28 = 2;
  }

  v3 = (v28 + v3);
  if ((v2 & 0x2000) != 0)
  {
LABEL_79:
    v29 = *(this + 15);
    if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    }

    else
    {
      v30 = 2;
    }

    v3 = (v30 + v3);
  }

LABEL_83:
  *(this + 16) = v3;
  return v3;
}

void proto::gnss::Emergency::ReferenceLocation::CheckTypeAndMergeFrom(proto::gnss::Emergency::ReferenceLocation *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::ReferenceLocation::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::ReferenceLocation::CopyFrom(proto::gnss::Emergency::ReferenceLocation *this, const proto::gnss::Emergency::ReferenceLocation *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::ReferenceLocation::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::ReferenceLocation *proto::gnss::Emergency::ReferenceLocation::Swap(proto::gnss::Emergency::ReferenceLocation *this, proto::gnss::Emergency::ReferenceLocation *a2)
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
    v16 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v16;
    v17 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v17;
  }

  return this;
}

double proto::gnss::Emergency::GpsEphemeris::SharedCtor(proto::gnss::Emergency::GpsEphemeris *this)
{
  *(this + 38) = 0;
  result = 0.0;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::GpsEphemeris *proto::gnss::Emergency::GpsEphemeris::GpsEphemeris(proto::gnss::Emergency::GpsEphemeris *this, const proto::gnss::Emergency::GpsEphemeris *a2)
{
  *this = &unk_28585ECC8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  proto::gnss::Emergency::GpsEphemeris::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GpsEphemeris::MergeFrom(proto::gnss::Emergency::GpsEphemeris *this, const proto::gnss::Emergency::GpsEphemeris *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v40);
  }

  v4 = *(a2 + 37);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v11 = *(a2 + 2);
    *(this + 37) |= 1u;
    *(this + 2) = v11;
    v4 = *(a2 + 37);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_50;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(a2 + 3);
  *(this + 37) |= 2u;
  *(this + 3) = v12;
  v4 = *(a2 + 37);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  v13 = *(a2 + 4);
  *(this + 37) |= 4u;
  *(this + 4) = v13;
  v4 = *(a2 + 37);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  v14 = *(a2 + 5);
  *(this + 37) |= 8u;
  *(this + 5) = v14;
  v4 = *(a2 + 37);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_53:
    v16 = *(a2 + 7);
    *(this + 37) |= 0x20u;
    *(this + 7) = v16;
    v4 = *(a2 + 37);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_54;
  }

LABEL_52:
  v15 = *(a2 + 6);
  *(this + 37) |= 0x10u;
  *(this + 6) = v15;
  v4 = *(a2 + 37);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_54:
  v17 = *(a2 + 8);
  *(this + 37) |= 0x40u;
  *(this + 8) = v17;
  v4 = *(a2 + 37);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 9);
    *(this + 37) |= 0x80u;
    *(this + 9) = v5;
    v4 = *(a2 + 37);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    v18 = *(a2 + 10);
    *(this + 37) |= 0x100u;
    *(this + 10) = v18;
    v4 = *(a2 + 37);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_58;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v19 = *(a2 + 11);
  *(this + 37) |= 0x200u;
  *(this + 11) = v19;
  v4 = *(a2 + 37);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  v20 = *(a2 + 12);
  *(this + 37) |= 0x400u;
  *(this + 12) = v20;
  v4 = *(a2 + 37);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  v21 = *(a2 + 13);
  *(this + 37) |= 0x800u;
  *(this + 13) = v21;
  v4 = *(a2 + 37);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  v22 = *(a2 + 14);
  *(this + 37) |= 0x1000u;
  *(this + 14) = v22;
  v4 = *(a2 + 37);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  v23 = *(a2 + 15);
  *(this + 37) |= 0x2000u;
  *(this + 15) = v23;
  v4 = *(a2 + 37);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_62:
  v24 = *(a2 + 16);
  *(this + 37) |= 0x4000u;
  *(this + 16) = v24;
  v4 = *(a2 + 37);
  if ((v4 & 0x8000) != 0)
  {
LABEL_22:
    v6 = *(a2 + 17);
    *(this + 37) |= 0x8000u;
    *(this + 17) = v6;
    v4 = *(a2 + 37);
  }

LABEL_23:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_33;
  }

  if ((v4 & 0x10000) != 0)
  {
    v25 = *(a2 + 18);
    *(this + 37) |= 0x10000u;
    *(this + 18) = v25;
    v4 = *(a2 + 37);
    if ((v4 & 0x20000) == 0)
    {
LABEL_26:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_66;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v26 = *(a2 + 19);
  *(this + 37) |= 0x20000u;
  *(this + 19) = v26;
  v4 = *(a2 + 37);
  if ((v4 & 0x40000) == 0)
  {
LABEL_27:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_67;
  }

LABEL_66:
  v27 = *(a2 + 20);
  *(this + 37) |= 0x40000u;
  *(this + 20) = v27;
  v4 = *(a2 + 37);
  if ((v4 & 0x80000) == 0)
  {
LABEL_28:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_68;
  }

LABEL_67:
  v28 = *(a2 + 21);
  *(this + 37) |= 0x80000u;
  *(this + 21) = v28;
  v4 = *(a2 + 37);
  if ((v4 & 0x100000) == 0)
  {
LABEL_29:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_69;
  }

LABEL_68:
  v29 = *(a2 + 22);
  *(this + 37) |= 0x100000u;
  *(this + 22) = v29;
  v4 = *(a2 + 37);
  if ((v4 & 0x200000) == 0)
  {
LABEL_30:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_70;
  }

LABEL_69:
  v30 = *(a2 + 23);
  *(this + 37) |= 0x200000u;
  *(this + 23) = v30;
  v4 = *(a2 + 37);
  if ((v4 & 0x400000) == 0)
  {
LABEL_31:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_70:
  v31 = *(a2 + 24);
  *(this + 37) |= 0x400000u;
  *(this + 24) = v31;
  v4 = *(a2 + 37);
  if ((v4 & 0x800000) != 0)
  {
LABEL_32:
    v7 = *(a2 + 25);
    *(this + 37) |= 0x800000u;
    *(this + 25) = v7;
    v4 = *(a2 + 37);
  }

LABEL_33:
  if (!HIBYTE(v4))
  {
    goto LABEL_42;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v32 = *(a2 + 26);
    *(this + 37) |= 0x1000000u;
    *(this + 26) = v32;
    v4 = *(a2 + 37);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_36:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_74;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_36;
  }

  v33 = *(a2 + 27);
  *(this + 37) |= 0x2000000u;
  *(this + 27) = v33;
  v4 = *(a2 + 37);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_37:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_75;
  }

LABEL_74:
  v34 = *(a2 + 28);
  *(this + 37) |= 0x4000000u;
  *(this + 28) = v34;
  v4 = *(a2 + 37);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_38:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_76;
  }

LABEL_75:
  v35 = *(a2 + 29);
  *(this + 37) |= 0x8000000u;
  *(this + 29) = v35;
  v4 = *(a2 + 37);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_39:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_77;
  }

LABEL_76:
  v36 = *(a2 + 30);
  *(this + 37) |= 0x10000000u;
  *(this + 30) = v36;
  v4 = *(a2 + 37);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_40:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_78:
    v38 = *(a2 + 32);
    *(this + 37) |= 0x40000000u;
    *(this + 32) = v38;
    if ((*(a2 + 37) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_79;
  }

LABEL_77:
  v37 = *(a2 + 31);
  *(this + 37) |= 0x20000000u;
  *(this + 31) = v37;
  v4 = *(a2 + 37);
  if ((v4 & 0x40000000) != 0)
  {
    goto LABEL_78;
  }

LABEL_41:
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

LABEL_79:
  v39 = *(a2 + 33);
  *(this + 37) |= 0x80000000;
  *(this + 33) = v39;
LABEL_42:
  LOBYTE(v8) = *(a2 + 152);
  if (v8)
  {
    if (*(a2 + 152))
    {
      v9 = *(a2 + 34);
      *(this + 38) |= 1u;
      *(this + 34) = v9;
      v8 = *(a2 + 38);
    }

    if ((v8 & 2) != 0)
    {
      v10 = *(a2 + 35);
      *(this + 38) |= 2u;
      *(this + 35) = v10;
    }
  }
}

void sub_2455047F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsEphemeris::~GpsEphemeris(proto::gnss::Emergency::GpsEphemeris *this)
{
  *this = &unk_28585ECC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585ECC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585ECC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::GpsEphemeris::default_instance(proto::gnss::Emergency::GpsEphemeris *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GpsEphemeris::default_instance_;
  if (!proto::gnss::Emergency::GpsEphemeris::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GpsEphemeris::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GpsEphemeris::Clear(uint64_t this)
{
  v1 = *(this + 148);
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
    *(this + 88) = 0u;
    *(this + 72) = 0u;
  }

  if (HIBYTE(v1))
  {
    *(this + 120) = 0u;
    *(this + 104) = 0u;
  }

  if (*(this + 152))
  {
    *(this + 136) = 0;
  }

  *(this + 148) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GpsEphemeris::MergePartialFromCodedStream(proto::gnss::Emergency::GpsEphemeris *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_76;
        }

        v111 = 0;
        v7 = *(a2 + 1);
        v6 = *(a2 + 2);
        if (v7 < v6)
        {
          v8 = *v7;
          if ((v8 & 0x80000000) == 0)
          {
            v9 = v7 + 1;
            *(a2 + 1) = v9;
LABEL_82:
            *(this + 2) = v8;
            *(this + 37) |= 1u;
            if (v9 < v6 && *v9 == 16)
            {
              v25 = v9 + 1;
              *(a2 + 1) = v25;
              goto LABEL_85;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v111);
        if (result)
        {
          v8 = v111;
          v9 = *(a2 + 1);
          v6 = *(a2 + 2);
          goto LABEL_82;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v25 = *(a2 + 1);
        v6 = *(a2 + 2);
LABEL_85:
        v111 = 0;
        if (v25 >= v6 || (v44 = *v25, (v44 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v111);
          if (!result)
          {
            return result;
          }

          v44 = v111;
          v45 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v45 = v25 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 3) = v44;
        *(this + 37) |= 2u;
        if (v45 >= v6 || *v45 != 24)
        {
          continue;
        }

        v21 = v45 + 1;
        *(a2 + 1) = v21;
LABEL_93:
        if (v21 >= v6 || (v46 = *v21, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v46;
          v47 = v21 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 37) |= 4u;
        if (v47 >= v6 || *v47 != 32)
        {
          continue;
        }

        v23 = v47 + 1;
        *(a2 + 1) = v23;
LABEL_101:
        if (v23 >= v6 || (v48 = *v23, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v49 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v48;
          v49 = v23 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 37) |= 8u;
        if (v49 >= v6 || *v49 != 40)
        {
          continue;
        }

        v16 = v49 + 1;
        *(a2 + 1) = v16;
LABEL_109:
        v111 = 0;
        if (v16 >= v6 || (v50 = *v16, (v50 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v111);
          if (!result)
          {
            return result;
          }

          v50 = v111;
          v51 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v51 = v16 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 6) = v50;
        *(this + 37) |= 0x10u;
        if (v51 >= v6 || *v51 != 48)
        {
          continue;
        }

        v29 = v51 + 1;
        *(a2 + 1) = v29;
LABEL_117:
        v111 = 0;
        if (v29 >= v6 || (v52 = *v29, (v52 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v111);
          if (!result)
          {
            return result;
          }

          v52 = v111;
          v53 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v53 = v29 + 1;
          *(a2 + 1) = v53;
        }

        *(this + 7) = v52;
        *(this + 37) |= 0x20u;
        if (v53 >= v6 || *v53 != 56)
        {
          continue;
        }

        v32 = v53 + 1;
        *(a2 + 1) = v32;
LABEL_125:
        v111 = 0;
        if (v32 >= v6 || (v54 = *v32, (v54 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v111);
          if (!result)
          {
            return result;
          }

          v54 = v111;
          v55 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v55 = v32 + 1;
          *(a2 + 1) = v55;
        }

        *(this + 8) = v54;
        *(this + 37) |= 0x40u;
        if (v55 >= v6 || *v55 != 64)
        {
          continue;
        }

        v24 = v55 + 1;
        *(a2 + 1) = v24;
LABEL_133:
        v111 = 0;
        if (v24 >= v6 || (v56 = *v24, (v56 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v111);
          if (!result)
          {
            return result;
          }

          v56 = v111;
          v57 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v57 = v24 + 1;
          *(a2 + 1) = v57;
        }

        *(this + 9) = v56;
        *(this + 37) |= 0x80u;
        if (v57 >= v6 || *v57 != 72)
        {
          continue;
        }

        v35 = v57 + 1;
        *(a2 + 1) = v35;
LABEL_141:
        if (v35 >= v6 || (v58 = *v35, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v59 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v58;
          v59 = v35 + 1;
          *(a2 + 1) = v59;
        }

        *(this + 37) |= 0x100u;
        if (v59 >= v6 || *v59 != 80)
        {
          continue;
        }

        v18 = v59 + 1;
        *(a2 + 1) = v18;
LABEL_149:
        if (v18 >= v6 || (v60 = *v18, v60 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v61 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v60;
          v61 = v18 + 1;
          *(a2 + 1) = v61;
        }

        *(this + 37) |= 0x200u;
        if (v61 >= v6 || *v61 != 88)
        {
          continue;
        }

        v34 = v61 + 1;
        *(a2 + 1) = v34;
LABEL_157:
        v111 = 0;
        if (v34 >= v6 || (v62 = *v34, (v62 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v111);
          if (!result)
          {
            return result;
          }

          v62 = v111;
          v63 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v63 = v34 + 1;
          *(a2 + 1) = v63;
        }

        *(this + 12) = v62;
        *(this + 37) |= 0x400u;
        if (v63 >= v6 || *v63 != 96)
        {
          continue;
        }

        v15 = v63 + 1;
        *(a2 + 1) = v15;
LABEL_165:
        v111 = 0;
        if (v15 >= v6 || (v64 = *v15, (v64 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v111);
          if (!result)
          {
            return result;
          }

          v64 = v111;
          v65 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v65 = v15 + 1;
          *(a2 + 1) = v65;
        }

        *(this + 13) = v64;
        *(this + 37) |= 0x800u;
        if (v65 >= v6 || *v65 != 104)
        {
          continue;
        }

        v17 = v65 + 1;
        *(a2 + 1) = v17;
LABEL_173:
        v111 = 0;
        if (v17 >= v6 || (v66 = *v17, (v66 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v111);
          if (!result)
          {
            return result;
          }

          v66 = v111;
          v67 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v67 = v17 + 1;
          *(a2 + 1) = v67;
        }

        *(this + 14) = v66;
        *(this + 37) |= 0x1000u;
        if (v67 >= v6 || *v67 != 112)
        {
          continue;
        }

        v31 = v67 + 1;
        *(a2 + 1) = v31;
LABEL_181:
        v111 = 0;
        if (v31 >= v6 || (v68 = *v31, (v68 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v111);
          if (!result)
          {
            return result;
          }

          v68 = v111;
          v69 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v69 = v31 + 1;
          *(a2 + 1) = v69;
        }

        *(this + 15) = v68;
        *(this + 37) |= 0x2000u;
        if (v69 >= v6 || *v69 != 120)
        {
          continue;
        }

        v13 = v69 + 1;
        *(a2 + 1) = v13;
LABEL_189:
        v111 = 0;
        if (v13 >= v6 || (v70 = *v13, (v70 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v111);
          if (!result)
          {
            return result;
          }

          v70 = v111;
          v71 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v71 = (v13 + 1);
          *(a2 + 1) = v71;
        }

        *(this + 16) = v70;
        *(this + 37) |= 0x4000u;
        if (v6 - v71 < 2 || *v71 != 128 || v71[1] != 1)
        {
          continue;
        }

        v22 = (v71 + 2);
        *(a2 + 1) = v22;
LABEL_198:
        if (v22 >= v6 || (v72 = *v22, v72 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v73 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v72;
          v73 = (v22 + 1);
          *(a2 + 1) = v73;
        }

        *(this + 37) |= 0x8000u;
        if (v6 - v73 < 2 || *v73 != 136 || v73[1] != 1)
        {
          continue;
        }

        v12 = (v73 + 2);
        *(a2 + 1) = v12;
LABEL_207:
        v111 = 0;
        if (v12 >= v6 || (v74 = *v12, (v74 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v111);
          if (!result)
          {
            return result;
          }

          v74 = v111;
          v75 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v75 = (v12 + 1);
          *(a2 + 1) = v75;
        }

        *(this + 18) = v74;
        *(this + 37) |= 0x10000u;
        if (v6 - v75 < 2 || *v75 != 144 || v75[1] != 1)
        {
          continue;
        }

        v27 = (v75 + 2);
        *(a2 + 1) = v27;
LABEL_216:
        v111 = 0;
        if (v27 >= v6 || (v76 = *v27, (v76 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v111);
          if (!result)
          {
            return result;
          }

          v76 = v111;
          v77 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v77 = (v27 + 1);
          *(a2 + 1) = v77;
        }

        *(this + 19) = v76;
        *(this + 37) |= 0x20000u;
        if (v6 - v77 < 2 || *v77 != 152 || v77[1] != 1)
        {
          continue;
        }

        v33 = (v77 + 2);
        *(a2 + 1) = v33;
LABEL_225:
        v111 = 0;
        if (v33 >= v6 || (v78 = *v33, (v78 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v111);
          if (!result)
          {
            return result;
          }

          v78 = v111;
          v79 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v79 = (v33 + 1);
          *(a2 + 1) = v79;
        }

        *(this + 20) = v78;
        *(this + 37) |= 0x40000u;
        if (v6 - v79 < 2 || *v79 != 160 || v79[1] != 1)
        {
          continue;
        }

        v39 = (v79 + 2);
        *(a2 + 1) = v39;
LABEL_234:
        v111 = 0;
        if (v39 >= v6 || (v80 = *v39, (v80 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v111);
          if (!result)
          {
            return result;
          }

          v80 = v111;
          v81 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v81 = (v39 + 1);
          *(a2 + 1) = v81;
        }

        *(this + 21) = v80;
        *(this + 37) |= 0x80000u;
        if (v6 - v81 < 2 || *v81 != 168 || v81[1] != 1)
        {
          continue;
        }

        v28 = (v81 + 2);
        *(a2 + 1) = v28;
LABEL_243:
        if (v28 >= v6 || (v82 = *v28, v82 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v83 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v82;
          v83 = (v28 + 1);
          *(a2 + 1) = v83;
        }

        *(this + 37) |= 0x100000u;
        if (v6 - v83 < 2 || *v83 != 176 || v83[1] != 1)
        {
          continue;
        }

        v30 = (v83 + 2);
        *(a2 + 1) = v30;
LABEL_252:
        if (v30 >= v6 || (v84 = *v30, v84 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
          if (!result)
          {
            return result;
          }

          v85 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 23) = v84;
          v85 = (v30 + 1);
          *(a2 + 1) = v85;
        }

        *(this + 37) |= 0x200000u;
        if (v6 - v85 < 2 || *v85 != 184 || v85[1] != 1)
        {
          continue;
        }

        v38 = (v85 + 2);
        *(a2 + 1) = v38;
LABEL_261:
        if (v38 >= v6 || (v86 = *v38, v86 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
          if (!result)
          {
            return result;
          }

          v87 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 24) = v86;
          v87 = (v38 + 1);
          *(a2 + 1) = v87;
        }

        *(this + 37) |= 0x400000u;
        if (v6 - v87 < 2 || *v87 != 192 || v87[1] != 1)
        {
          continue;
        }

        v40 = (v87 + 2);
        *(a2 + 1) = v40;
LABEL_270:
        v111 = 0;
        if (v40 >= v6 || (v88 = *v40, (v88 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v111);
          if (!result)
          {
            return result;
          }

          v88 = v111;
          v89 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v89 = (v40 + 1);
          *(a2 + 1) = v89;
        }

        *(this + 25) = v88;
        *(this + 37) |= 0x800000u;
        if (v6 - v89 < 2 || *v89 != 200 || v89[1] != 1)
        {
          continue;
        }

        v20 = (v89 + 2);
        *(a2 + 1) = v20;
LABEL_279:
        v10 = *(a2 + 2);
        if (v20 >= v10 || (v90 = *v20, v90 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
          if (!result)
          {
            return result;
          }

          v91 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 26) = v90;
          v91 = (v20 + 1);
          *(a2 + 1) = v91;
        }

        *(this + 37) |= 0x1000000u;
        if (v10 - v91 < 2 || *v91 != 208 || v91[1] != 1)
        {
          continue;
        }

        v19 = (v91 + 2);
        *(a2 + 1) = v19;
LABEL_288:
        if (v19 >= v10 || (v92 = *v19, v92 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 27);
          if (!result)
          {
            return result;
          }

          v93 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 27) = v92;
          v93 = (v19 + 1);
          *(a2 + 1) = v93;
        }

        *(this + 37) |= 0x2000000u;
        if (v10 - v93 < 2 || *v93 != 216 || v93[1] != 1)
        {
          continue;
        }

        v43 = (v93 + 2);
        *(a2 + 1) = v43;
LABEL_297:
        if (v43 >= v10 || (v94 = *v43, v94 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
          if (!result)
          {
            return result;
          }

          v95 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 28) = v94;
          v95 = (v43 + 1);
          *(a2 + 1) = v95;
        }

        *(this + 37) |= 0x4000000u;
        if (v10 - v95 < 2 || *v95 != 224 || v95[1] != 1)
        {
          continue;
        }

        v11 = (v95 + 2);
        *(a2 + 1) = v11;
LABEL_306:
        v111 = 0;
        if (v11 >= v10 || (v96 = *v11, (v96 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v111);
          if (!result)
          {
            return result;
          }

          v96 = v111;
          v97 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v97 = (v11 + 1);
          *(a2 + 1) = v97;
        }

        *(this + 29) = v96;
        *(this + 37) |= 0x8000000u;
        if (v10 - v97 < 2 || *v97 != 232 || v97[1] != 1)
        {
          continue;
        }

        v41 = (v97 + 2);
        *(a2 + 1) = v41;
LABEL_315:
        if (v41 >= v10 || (v98 = *v41, v98 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
          if (!result)
          {
            return result;
          }

          v99 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 30) = v98;
          v99 = (v41 + 1);
          *(a2 + 1) = v99;
        }

        *(this + 37) |= 0x10000000u;
        if (v10 - v99 < 2 || *v99 != 240 || v99[1] != 1)
        {
          continue;
        }

        v42 = (v99 + 2);
        *(a2 + 1) = v42;
LABEL_324:
        if (v42 >= v10 || (v100 = *v42, v100 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
          if (!result)
          {
            return result;
          }

          v101 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 31) = v100;
          v101 = (v42 + 1);
          *(a2 + 1) = v101;
        }

        *(this + 37) |= 0x20000000u;
        if (v10 - v101 < 2 || *v101 != 248 || v101[1] != 1)
        {
          continue;
        }

        v36 = (v101 + 2);
        *(a2 + 1) = v36;
LABEL_333:
        if (v36 >= v10 || (v102 = *v36, v102 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
          if (!result)
          {
            return result;
          }

          v103 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 32) = v102;
          v103 = (v36 + 1);
          *(a2 + 1) = v103;
        }

        *(this + 37) |= 0x40000000u;
        if (v10 - v103 < 2 || *v103 != 128 || v103[1] != 2)
        {
          continue;
        }

        v26 = (v103 + 2);
        *(a2 + 1) = v26;
LABEL_342:
        if (v26 >= v10 || (v104 = *v26, v104 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 33);
          if (!result)
          {
            return result;
          }

          v105 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 33) = v104;
          v105 = (v26 + 1);
          *(a2 + 1) = v105;
        }

        *(this + 37) |= 0x80000000;
        if (v10 - v105 < 2 || *v105 != 136 || v105[1] != 2)
        {
          continue;
        }

        v37 = (v105 + 2);
        *(a2 + 1) = v37;
LABEL_351:
        if (v37 >= v10 || (v106 = *v37, v106 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 34);
          if (!result)
          {
            return result;
          }

          v107 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 34) = v106;
          v107 = (v37 + 1);
          *(a2 + 1) = v107;
        }

        *(this + 38) |= 1u;
        if (v10 - v107 < 2 || *v107 != 144 || v107[1] != 2)
        {
          continue;
        }

        v14 = (v107 + 2);
        *(a2 + 1) = v14;
LABEL_360:
        if (v14 >= v10 || (v108 = *v14, v108 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 35);
          if (!result)
          {
            return result;
          }

          v109 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 35) = v108;
          v109 = v14 + 1;
          *(a2 + 1) = v109;
        }

        *(this + 38) |= 2u;
        if (v109 != v10 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
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
          goto LABEL_76;
        }

        v21 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_93;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v23 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_101;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v16 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_109;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v29 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_117;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v32 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_125;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v24 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_133;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v35 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_141;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v18 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_149;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v34 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_157;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v15 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_165;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v17 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_173;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v31 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_181;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v13 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_189;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v22 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_198;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v12 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_207;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v27 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_216;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v33 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_225;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v39 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_234;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v28 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_243;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v30 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_252;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v38 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_261;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v40 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_270;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v20 = *(a2 + 1);
        goto LABEL_279;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v19 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_288;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v43 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_297;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_306;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v41 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_315;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v42 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_324;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v36 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_333;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v26 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_342;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v37 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_351;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_76;
        }

        v14 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_360;
      default:
LABEL_76:
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

unsigned int *proto::gnss::Emergency::GpsEphemeris::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[37];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, this[2], a2, a4);
    v6 = v5[37];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v5[3], a2, a4);
  v6 = v5[37];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[37];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, v5[6], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, v5[7], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, v5[8], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, v5[9], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[10], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[11], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, v5[12], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, v5[13], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xD, v5[14], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xE, v5[15], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xF, v5[16], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, v5[17], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x11, v5[18], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x12, v5[19], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x13, v5[20], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x14, v5[21], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, v5[22], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, v5[23], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, v5[24], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x18, v5[25], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, v5[26], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, v5[27], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, v5[28], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x1C, v5[29], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, v5[30], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_67:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, v5[32], a2, a4);
    if ((v5[37] & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_68;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, v5[31], a2, a4);
  v6 = v5[37];
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_67;
  }

LABEL_32:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, v5[33], a2, a4);
LABEL_33:
  v7 = v5[38];
  if (v7)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, v5[34], a2, a4);
    v7 = v5[38];
  }

  if ((v7 & 2) != 0)
  {
    v8 = v5[35];

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22, v8, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::GpsEphemeris::ByteSize(proto::gnss::Emergency::GpsEphemeris *this)
{
  v2 = *(this + 37);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_58;
  }

  if (v2)
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
      v2 = *(this + 37);
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
    if ((v2 & 2) == 0)
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
    v2 = *(this + 37);
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
      v2 = *(this + 37);
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_21:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_21;
  }

  v9 = *(this + 5);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(this + 37);
  }

  else
  {
    v10 = 2;
  }

  v3 = (v10 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_22:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_34:
  v11 = *(this + 6);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 11;
  }

  else if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(this + 37);
  }

  else
  {
    v12 = 2;
  }

  v3 = (v12 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_23:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_46;
  }

LABEL_40:
  v13 = *(this + 7);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = *(this + 37);
  }

  else
  {
    v14 = 2;
  }

  v3 = (v14 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_24:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

LABEL_46:
  v15 = *(this + 8);
  if ((v15 & 0x80000000) != 0)
  {
    v16 = 11;
  }

  else if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = *(this + 37);
  }

  else
  {
    v16 = 2;
  }

  v3 = (v16 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_52:
    v17 = *(this + 9);
    if ((v17 & 0x80000000) != 0)
    {
      v18 = 11;
    }

    else if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v2 = *(this + 37);
    }

    else
    {
      v18 = 2;
    }

    v3 = (v18 + v3);
  }

LABEL_58:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_110;
  }

  if ((v2 & 0x100) != 0)
  {
    v19 = *(this + 10);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v2 = *(this + 37);
    }

    else
    {
      v20 = 2;
    }

    v3 = (v20 + v3);
    if ((v2 & 0x200) == 0)
    {
LABEL_61:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_76;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_61;
  }

  v21 = *(this + 11);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v2 = *(this + 37);
  }

  else
  {
    v22 = 2;
  }

  v3 = (v22 + v3);
  if ((v2 & 0x400) == 0)
  {
LABEL_62:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_82;
  }

LABEL_76:
  v23 = *(this + 12);
  if ((v23 & 0x80000000) != 0)
  {
    v24 = 11;
  }

  else if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v2 = *(this + 37);
  }

  else
  {
    v24 = 2;
  }

  v3 = (v24 + v3);
  if ((v2 & 0x800) == 0)
  {
LABEL_63:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_88;
  }

LABEL_82:
  v25 = *(this + 13);
  if ((v25 & 0x80000000) != 0)
  {
    v26 = 11;
  }

  else if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v2 = *(this + 37);
  }

  else
  {
    v26 = 2;
  }

  v3 = (v26 + v3);
  if ((v2 & 0x1000) == 0)
  {
LABEL_64:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_94;
  }

LABEL_88:
  v27 = *(this + 14);
  if ((v27 & 0x80000000) != 0)
  {
    v28 = 11;
  }

  else if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v2 = *(this + 37);
  }

  else
  {
    v28 = 2;
  }

  v3 = (v28 + v3);
  if ((v2 & 0x2000) == 0)
  {
LABEL_65:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_100;
  }

LABEL_94:
  v29 = *(this + 15);
  if ((v29 & 0x80000000) != 0)
  {
    v30 = 11;
  }

  else if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    v2 = *(this + 37);
  }

  else
  {
    v30 = 2;
  }

  v3 = (v30 + v3);
  if ((v2 & 0x4000) == 0)
  {
LABEL_66:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_106;
  }

LABEL_100:
  v31 = *(this + 16);
  if ((v31 & 0x80000000) != 0)
  {
    v32 = 11;
  }

  else if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
    v2 = *(this + 37);
  }

  else
  {
    v32 = 2;
  }

  v3 = (v32 + v3);
  if ((v2 & 0x8000) != 0)
  {
LABEL_106:
    v33 = *(this + 17);
    if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
      v2 = *(this + 37);
    }

    else
    {
      v34 = 3;
    }

    v3 = (v34 + v3);
  }

LABEL_110:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_162;
  }

  if ((v2 & 0x10000) != 0)
  {
    v35 = *(this + 18);
    if ((v35 & 0x80000000) != 0)
    {
      v36 = 12;
    }

    else if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
      v2 = *(this + 37);
    }

    else
    {
      v36 = 3;
    }

    v3 = (v36 + v3);
    if ((v2 & 0x20000) == 0)
    {
LABEL_113:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_132;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_113;
  }

  v37 = *(this + 19);
  if ((v37 & 0x80000000) != 0)
  {
    v38 = 12;
  }

  else if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
    v2 = *(this + 37);
  }

  else
  {
    v38 = 3;
  }

  v3 = (v38 + v3);
  if ((v2 & 0x40000) == 0)
  {
LABEL_114:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_138;
  }

LABEL_132:
  v39 = *(this + 20);
  if ((v39 & 0x80000000) != 0)
  {
    v40 = 12;
  }

  else if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
    v2 = *(this + 37);
  }

  else
  {
    v40 = 3;
  }

  v3 = (v40 + v3);
  if ((v2 & 0x80000) == 0)
  {
LABEL_115:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_144;
  }

LABEL_138:
  v41 = *(this + 21);
  if ((v41 & 0x80000000) != 0)
  {
    v42 = 12;
  }

  else if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
    v2 = *(this + 37);
  }

  else
  {
    v42 = 3;
  }

  v3 = (v42 + v3);
  if ((v2 & 0x100000) == 0)
  {
LABEL_116:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_148;
  }

LABEL_144:
  v43 = *(this + 22);
  if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
    v2 = *(this + 37);
  }

  else
  {
    v44 = 3;
  }

  v3 = (v44 + v3);
  if ((v2 & 0x200000) == 0)
  {
LABEL_117:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_152;
  }

LABEL_148:
  v45 = *(this + 23);
  if (v45 >= 0x80)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
    v2 = *(this + 37);
  }

  else
  {
    v46 = 3;
  }

  v3 = (v46 + v3);
  if ((v2 & 0x400000) == 0)
  {
LABEL_118:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_156;
  }

LABEL_152:
  v47 = *(this + 24);
  if (v47 >= 0x80)
  {
    v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47) + 2;
    v2 = *(this + 37);
  }

  else
  {
    v48 = 3;
  }

  v3 = (v48 + v3);
  if ((v2 & 0x800000) != 0)
  {
LABEL_156:
    v49 = *(this + 25);
    if ((v49 & 0x80000000) != 0)
    {
      v50 = 12;
    }

    else if (v49 >= 0x80)
    {
      v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49) + 2;
      v2 = *(this + 37);
    }

    else
    {
      v50 = 3;
    }

    v3 = (v50 + v3);
  }

LABEL_162:
  if (!HIBYTE(v2))
  {
    goto LABEL_206;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v51 = *(this + 26);
    if (v51 >= 0x80)
    {
      v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51) + 2;
      v2 = *(this + 37);
    }

    else
    {
      v52 = 3;
    }

    v3 = (v52 + v3);
    if ((v2 & 0x2000000) == 0)
    {
LABEL_165:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_166;
      }

      goto LABEL_180;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_165;
  }

  v53 = *(this + 27);
  if (v53 >= 0x80)
  {
    v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53) + 2;
    v2 = *(this + 37);
  }

  else
  {
    v54 = 3;
  }

  v3 = (v54 + v3);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_166:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_184;
  }

LABEL_180:
  v55 = *(this + 28);
  if (v55 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 2;
    v2 = *(this + 37);
  }

  else
  {
    v56 = 3;
  }

  v3 = (v56 + v3);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_167:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_190;
  }

LABEL_184:
  v57 = *(this + 29);
  if ((v57 & 0x80000000) != 0)
  {
    v58 = 12;
  }

  else if (v57 >= 0x80)
  {
    v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57) + 2;
    v2 = *(this + 37);
  }

  else
  {
    v58 = 3;
  }

  v3 = (v58 + v3);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_168:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_194;
  }

LABEL_190:
  v59 = *(this + 30);
  if (v59 >= 0x80)
  {
    v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59) + 2;
    v2 = *(this + 37);
  }

  else
  {
    v60 = 3;
  }

  v3 = (v60 + v3);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_169:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_198;
  }

LABEL_194:
  v61 = *(this + 31);
  if (v61 >= 0x80)
  {
    v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61) + 2;
    v2 = *(this + 37);
  }

  else
  {
    v62 = 3;
  }

  v3 = (v62 + v3);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_170:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_206;
    }

    goto LABEL_202;
  }

LABEL_198:
  v63 = *(this + 32);
  if (v63 >= 0x80)
  {
    v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63) + 2;
    v2 = *(this + 37);
  }

  else
  {
    v64 = 3;
  }

  v3 = (v64 + v3);
  if ((v2 & 0x80000000) != 0)
  {
LABEL_202:
    v65 = *(this + 33);
    if (v65 >= 0x80)
    {
      v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65) + 2;
    }

    else
    {
      v66 = 3;
    }

    v3 = (v66 + v3);
  }

LABEL_206:
  LOBYTE(v67) = *(this + 152);
  if (v67)
  {
    if (*(this + 152))
    {
      v68 = *(this + 34);
      if (v68 >= 0x80)
      {
        v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68) + 2;
        v67 = *(this + 38);
      }

      else
      {
        v69 = 3;
      }

      v3 = (v69 + v3);
    }

    if ((v67 & 2) != 0)
    {
      v70 = *(this + 35);
      if (v70 >= 0x80)
      {
        v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70) + 2;
      }

      else
      {
        v71 = 3;
      }

      v3 = (v71 + v3);
    }
  }

  *(this + 36) = v3;
  return v3;
}

void proto::gnss::Emergency::GpsEphemeris::CheckTypeAndMergeFrom(proto::gnss::Emergency::GpsEphemeris *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GpsEphemeris::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GpsEphemeris::CopyFrom(proto::gnss::Emergency::GpsEphemeris *this, const proto::gnss::Emergency::GpsEphemeris *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GpsEphemeris::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GpsEphemeris *proto::gnss::Emergency::GpsEphemeris::Swap(proto::gnss::Emergency::GpsEphemeris *this, proto::gnss::Emergency::GpsEphemeris *a2)
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
    v19 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v19;
    v20 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v20;
    v21 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v21;
    v22 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v22;
    v23 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v23;
    v24 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v24;
    v25 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v25;
    v26 = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v26;
    v27 = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v27;
    v28 = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v28;
    v29 = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v29;
    v30 = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v30;
    v31 = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v31;
    v32 = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v32;
    v33 = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v33;
    v34 = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v34;
    v35 = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v35;
    v36 = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v36;
    v37 = *(this + 38);
    *(this + 38) = *(a2 + 38);
    *(a2 + 38) = v37;
    v38 = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v38;
  }

  return this;
}

void *proto::gnss::Emergency::GpsNavigationModel::SharedCtor(void *this)
{
  this[4] = 0;
  this[5] = 0;
  this[6] = 0;
  return this;
}

proto::gnss::Emergency::GpsNavigationModel *proto::gnss::Emergency::GpsNavigationModel::GpsNavigationModel(proto::gnss::Emergency::GpsNavigationModel *this, const proto::gnss::Emergency::GpsNavigationModel *a2)
{
  *(this + 1) = 0;
  *this = &unk_28585ED40;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  proto::gnss::Emergency::GpsNavigationModel::MergeFrom(this, a2);
  return this;
}

void sub_2455069A4(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsNavigationModel::MergeFrom(proto::gnss::Emergency::GpsNavigationModel *this, const proto::gnss::Emergency::GpsNavigationModel *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnss::Emergency::GpsEphemeris>::TypeHandler>((this + 8), a2 + 8);
  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      v5 = *(a2 + 8);
      *(this + 13) |= 1u;
      *(this + 8) = v5;
      v4 = *(a2 + 13);
    }

    if ((v4 & 4) != 0)
    {
      v6 = *(a2 + 9);
      if (v6 >= 6)
      {
        __assert_rtn("set_session_protocol", "GnssEmergencyTypes.pb.h", 24527, "::proto::gnss::Emergency::SessionProtocol_IsValid(value)");
      }

      *(this + 13) |= 4u;
      *(this + 9) = v6;
      v4 = *(a2 + 13);
    }

    if ((v4 & 8) != 0)
    {
      v7 = *(a2 + 10);
      if (v7 >= 7)
      {
        __assert_rtn("set_pos_protocol", "GnssEmergencyTypes.pb.h", 24550, "::proto::gnss::Emergency::PosProtocol_IsValid(value)");
      }

      *(this + 13) |= 8u;
      *(this + 10) = v7;
      v4 = *(a2 + 13);
    }

    if ((v4 & 0x10) != 0)
    {
      v8 = *(a2 + 11);
      *(this + 13) |= 0x10u;
      *(this + 11) = v8;
    }
  }
}

void sub_245506B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsNavigationModel::~GpsNavigationModel(proto::gnss::Emergency::GpsNavigationModel *this)
{
  *this = &unk_28585ED40;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::GpsNavigationModel::~GpsNavigationModel(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::GpsNavigationModel::default_instance(proto::gnss::Emergency::GpsNavigationModel *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GpsNavigationModel::default_instance_;
  if (!proto::gnss::Emergency::GpsNavigationModel::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GpsNavigationModel::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GpsNavigationModel::Clear(proto::gnss::Emergency::GpsNavigationModel *this)
{
  if (*(this + 52))
  {
    *(this + 4) = 0;
    *(this + 5) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 8);
  *(this + 13) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::GpsNavigationModel::MergePartialFromCodedStream(proto::gnss::Emergency::GpsNavigationModel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_1:
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

          if (v6 != 1)
          {
            if (v6 != 2 || v7 != 2)
            {
              goto LABEL_21;
            }

            goto LABEL_32;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v14 = *(a2 + 1);
          v15 = *(a2 + 2);
          if (v14 >= v15 || (v16 = *v14, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v15 = *(a2 + 2);
          }

          else
          {
            *(this + 8) = v16;
            v17 = v14 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 13) |= 1u;
          if (v17 < v15 && *v17 == 18)
          {
            while (1)
            {
              *(a2 + 1) = v17 + 1;
LABEL_32:
              v19 = *(this + 5);
              v20 = *(this + 4);
              if (v20 >= v19)
              {
                if (v19 == *(this + 6))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
                  v19 = *(this + 5);
                }

                *(this + 5) = v19 + 1;
                operator new();
              }

              v21 = *(this + 1);
              *(this + 4) = v20 + 1;
              v22 = *(v21 + 8 * v20);
              v38 = 0;
              v23 = *(a2 + 1);
              if (v23 >= *(a2 + 2) || *v23 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38))
                {
                  return 0;
                }
              }

              else
              {
                v38 = *v23;
                *(a2 + 1) = v23 + 1;
              }

              v24 = *(a2 + 14);
              v25 = *(a2 + 15);
              *(a2 + 14) = v24 + 1;
              if (v24 >= v25)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!proto::gnss::Emergency::GpsEphemeris::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v26 = *(a2 + 14);
              v27 = __OFSUB__(v26, 1);
              v28 = v26 - 1;
              if (v28 < 0 == v27)
              {
                *(a2 + 14) = v28;
              }

              v17 = *(a2 + 1);
              v11 = *(a2 + 2);
              if (v17 >= v11)
              {
                break;
              }

              v29 = *v17;
              if (v29 != 18)
              {
                if (v29 != 24)
                {
                  goto LABEL_1;
                }

                v10 = v17 + 1;
                *(a2 + 1) = v10;
                goto LABEL_50;
              }
            }
          }
        }

        if (v6 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v10 = *(a2 + 1);
        v11 = *(a2 + 2);
LABEL_50:
        v37 = 0;
        if (v10 >= v11 || (v30 = *v10, (v30 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
          if (!result)
          {
            return result;
          }

          v30 = v37;
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v30 <= 5)
        {
          *(this + 13) |= 4u;
          *(this + 9) = v30;
        }

        v31 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v31 < v12 && *v31 == 32)
        {
          v13 = v31 + 1;
          *(a2 + 1) = v13;
          goto LABEL_60;
        }
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v13 = *(a2 + 1);
      v12 = *(a2 + 2);
LABEL_60:
      v36 = 0;
      if (v13 >= v12 || (v32 = *v13, (v32 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
        if (!result)
        {
          return result;
        }

        v32 = v36;
      }

      else
      {
        *(a2 + 1) = v13 + 1;
      }

      if (v32 <= 6)
      {
        *(this + 13) |= 8u;
        *(this + 10) = v32;
      }

      v33 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v33 < v8 && *v33 == 40)
      {
        v9 = v33 + 1;
        *(a2 + 1) = v9;
LABEL_70:
        if (v9 >= v8 || (v34 = *v9, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v34;
          v35 = v9 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 13) |= 0x10u;
        if (v35 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_70;
    }

LABEL_21:
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

uint64_t proto::gnss::Emergency::GpsNavigationModel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 52))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 32), a2, a4);
  }

  if (*(v5 + 16) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  v7 = *(v5 + 52);
  if ((v7 & 4) == 0)
  {
    if ((v7 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 40), a2, a4);
    if ((*(v5 + 52) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_12;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 36), a2, a4);
  v7 = *(v5 + 52);
  if ((v7 & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if ((v7 & 0x10) == 0)
  {
    return this;
  }

LABEL_12:
  v8 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v8, a2, a4);
}

uint64_t proto::gnss::Emergency::GpsNavigationModel::ByteSize(proto::gnss::Emergency::GpsNavigationModel *this)
{
  LOBYTE(v2) = *(this + 52);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_29;
  }

  if (*(this + 52))
  {
    v4 = *(this + 8);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 13);
      if ((v2 & 4) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 4) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 52) & 4) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(this + 9);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_16:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  v7 = *(this + 10);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v8 = 2;
  }

  v3 += v8;
  if ((v2 & 0x10) != 0)
  {
LABEL_25:
    v9 = *(this + 11);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    }

    else
    {
      v10 = 2;
    }

    v3 += v10;
  }

LABEL_29:
  v11 = *(this + 4);
  v12 = (v11 + v3);
  if (v11 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = proto::gnss::Emergency::GpsEphemeris::ByteSize(*(*(this + 1) + 8 * v13));
      v15 = v14;
      if (v14 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      }

      else
      {
        v16 = 1;
      }

      v12 = (v15 + v12 + v16);
      ++v13;
    }

    while (v13 < *(this + 4));
  }

  *(this + 12) = v12;
  return v12;
}

void proto::gnss::Emergency::GpsNavigationModel::CheckTypeAndMergeFrom(proto::gnss::Emergency::GpsNavigationModel *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GpsNavigationModel::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GpsNavigationModel::CopyFrom(proto::gnss::Emergency::GpsNavigationModel *this, const proto::gnss::Emergency::GpsNavigationModel *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GpsNavigationModel::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GpsNavigationModel *proto::gnss::Emergency::GpsNavigationModel::Swap(proto::gnss::Emergency::GpsNavigationModel *this, proto::gnss::Emergency::GpsNavigationModel *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v5;
    v6 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
    v7 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v7;
    v8 = *(v3 + 13);
    *(v3 + 13) = *(a2 + 13);
    *(a2 + 13) = v8;
    v9 = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v9;
  }

  return this;
}

uint64_t proto::gnss::Emergency::CplaneConfig::SharedCtor(uint64_t this)
{
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

proto::gnss::Emergency::CplaneConfig *proto::gnss::Emergency::CplaneConfig::CplaneConfig(proto::gnss::Emergency::CplaneConfig *this, const proto::gnss::Emergency::CplaneConfig *a2)
{
  *this = &unk_28585EDB8;
  *(this + 12) = 0;
  *(this + 8) = 0;
  proto::gnss::Emergency::CplaneConfig::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::CplaneConfig::MergeFrom(proto::gnss::Emergency::CplaneConfig *this, const proto::gnss::Emergency::CplaneConfig *a2)
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
    v4 = *(a2 + 8);
    *(this + 4) |= 1u;
    *(this + 8) = v4;
  }
}

void sub_2455075D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::CplaneConfig::~CplaneConfig(proto::gnss::Emergency::CplaneConfig *this)
{
  *this = &unk_28585EDB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585EDB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585EDB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::CplaneConfig::default_instance(proto::gnss::Emergency::CplaneConfig *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::CplaneConfig::default_instance_;
  if (!proto::gnss::Emergency::CplaneConfig::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::CplaneConfig::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::CplaneConfig::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CplaneConfig::MergePartialFromCodedStream(proto::gnss::Emergency::CplaneConfig *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v11 = 0;
      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v11);
        if (!result)
        {
          return result;
        }

        v8 = v11;
        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 8) = v8 != 0;
      *(this + 4) |= 1u;
      if (v9 == v6 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t proto::gnss::Emergency::CplaneConfig::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::CplaneConfig::ByteSize(proto::gnss::Emergency::CplaneConfig *this)
{
  if (*(this + 4))
  {
    v1 = 2 * (*(this + 4) & 1u);
  }

  else
  {
    v1 = 0;
  }

  *(this + 3) = v1;
  return v1;
}

void proto::gnss::Emergency::CplaneConfig::CheckTypeAndMergeFrom(proto::gnss::Emergency::CplaneConfig *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::CplaneConfig::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::CplaneConfig::CopyFrom(proto::gnss::Emergency::CplaneConfig *this, const proto::gnss::Emergency::CplaneConfig *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::CplaneConfig::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::CplaneConfig::Swap(uint64_t this, proto::gnss::Emergency::CplaneConfig *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v3;
    v4 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v4;
  }

  return this;
}

void *proto::gnss::Emergency::CplaneContext::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Cdma1xContext::default_instance(proto::gnss::Emergency::Cdma1xContext *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::Cdma1xContext::default_instance_;
  if (!proto::gnss::Emergency::Cdma1xContext::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::Cdma1xContext::default_instance_;
  }

  return result;
}

proto::gnss::Emergency::CplaneContext *proto::gnss::Emergency::CplaneContext::CplaneContext(proto::gnss::Emergency::CplaneContext *this, const proto::gnss::Emergency::CplaneContext *a2)
{
  *this = &unk_28585EE30;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gnss::Emergency::CplaneContext::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::CplaneContext::MergeFrom(proto::gnss::Emergency::CplaneContext *this, const proto::gnss::Emergency::CplaneContext *a2)
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
        v6 = *(proto::gnss::Emergency::CplaneContext::default_instance_ + 8);
      }

      proto::gnss::Emergency::Configuration::MergeFrom(v5, v6);
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
        v8 = *(proto::gnss::Emergency::CplaneContext::default_instance_ + 16);
      }

      proto::gnss::Emergency::Cdma1xContext::MergeFrom(v7, v8);
    }
  }
}

void sub_245507BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::CplaneContext::~CplaneContext(proto::gnss::Emergency::CplaneContext *this)
{
  *this = &unk_28585EE30;
  proto::gnss::Emergency::CplaneContext::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585EE30;
  proto::gnss::Emergency::CplaneContext::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585EE30;
  proto::gnss::Emergency::CplaneContext::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Emergency::CplaneContext::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::CplaneContext::default_instance_ != this)
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

uint64_t proto::gnss::Emergency::CplaneContext::default_instance(proto::gnss::Emergency::CplaneContext *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::CplaneContext::default_instance_;
  if (!proto::gnss::Emergency::CplaneContext::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::CplaneContext::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::CplaneContext::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 28);
  if (v1)
  {
    if (*(this + 28))
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 16) = 0;
          *(v2 + 8) = 0;
        }

        *(v2 + 24) = 0;
        v1 = *(this + 28);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 16))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 16) = 0;
      }
    }
  }

  *(this + 28) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Cdma1xContext::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CplaneContext::MergePartialFromCodedStream(proto::gnss::Emergency::CplaneContext *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (!proto::gnss::Emergency::Configuration::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
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
        if (!proto::gnss::Emergency::Cdma1xContext::MergePartialFromCodedStream(v15, a2) || *(a2 + 36) != 1)
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

uint64_t proto::gnss::Emergency::CplaneContext::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::CplaneContext::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::CplaneContext::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::CplaneContext::ByteSize(proto::gnss::Emergency::CplaneContext *this)
{
  if (!*(this + 28))
  {
    v1 = 0;
    goto LABEL_19;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v2 = *(this + 1);
  if (!v2)
  {
    v2 = *(proto::gnss::Emergency::CplaneContext::default_instance_ + 8);
  }

  v3 = 2 * (*(v2 + 24) & 1) + (*(v2 + 24) & 2);
  if ((*(v2 + 24) & 4) != 0)
  {
    v3 |= 9u;
  }

  if (*(v2 + 24))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(v2 + 20) = v4;
  v1 = (v4 + 2);
  if ((*(this + 7) & 2) != 0)
  {
LABEL_14:
    v5 = *(this + 2);
    if (!v5)
    {
      v5 = *(proto::gnss::Emergency::CplaneContext::default_instance_ + 16);
    }

    v6 = 2 * (*(v5 + 16) & 1) + (*(v5 + 16) & 2) + ((*(v5 + 16) >> 1) & 2) + ((*(v5 + 16) >> 2) & 2);
    if (!*(v5 + 16))
    {
      v6 = 0;
    }

    *(v5 + 12) = v6;
    v1 = (v1 + v6 + 2);
  }

LABEL_19:
  *(this + 6) = v1;
  return v1;
}

void proto::gnss::Emergency::CplaneContext::CheckTypeAndMergeFrom(proto::gnss::Emergency::CplaneContext *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::CplaneContext::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::Cdma1xContext::MergeFrom(proto::gnss::Emergency::Cdma1xContext *this, const proto::gnss::Emergency::Cdma1xContext *a2)
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

void sub_245508480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::CplaneContext::CopyFrom(proto::gnss::Emergency::CplaneContext *this, const proto::gnss::Emergency::CplaneContext *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::CplaneContext::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::CplaneContext::Swap(uint64_t this, proto::gnss::Emergency::CplaneContext *a2)
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

uint64_t proto::gnss::Emergency::EmergConfig::SharedCtor(uint64_t this)
{
  *(this + 36) = 0;
  *(this + 32) = 0;
  v1 = MEMORY[0x277D82C30];
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = v1;
  return this;
}

proto::gnss::Emergency::EmergConfig *proto::gnss::Emergency::EmergConfig::EmergConfig(proto::gnss::Emergency::EmergConfig *this, const proto::gnss::Emergency::EmergConfig *a2)
{
  *(this + 36) = 0;
  v3 = MEMORY[0x277D82C30];
  *(this + 32) = 0;
  *this = &unk_28585EEA8;
  *(this + 1) = v3;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gnss::Emergency::EmergConfig::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::EmergConfig::MergeFrom(proto::gnss::Emergency::EmergConfig *this, const proto::gnss::Emergency::EmergConfig *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v6 = *(a2 + 1);
    *(this + 10) |= 2u;
    v7 = *(this + 1);
    if (v7 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v7, v6);
    v4 = *(a2 + 10);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v5 = *(a2 + 32);
  *(this + 10) |= 1u;
  *(this + 32) = v5;
  v4 = *(a2 + 10);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_13:
  *(this + 10) |= 4u;
  v8 = *(this + 2);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 2);
  if (!v9)
  {
    v9 = *(proto::gnss::Emergency::EmergConfig::default_instance_ + 16);
  }

  proto::gnss::Emergency::CplaneConfig::MergeFrom(v8, v9);
  if ((*(a2 + 10) & 8) != 0)
  {
LABEL_18:
    *(this + 10) |= 8u;
    v10 = *(this + 3);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 3);
    if (!v11)
    {
      v11 = *(proto::gnss::Emergency::EmergConfig::default_instance_ + 24);
    }

    proto::gnss::Emergency::SuplConfig::MergeFrom(v10, v11);
  }
}

void sub_245508810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::EmergConfig::~EmergConfig(proto::gnss::Emergency::EmergConfig *this)
{
  *this = &unk_28585EEA8;
  proto::gnss::Emergency::EmergConfig::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585EEA8;
  proto::gnss::Emergency::EmergConfig::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585EEA8;
  proto::gnss::Emergency::EmergConfig::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Emergency::EmergConfig::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[1];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x245D6AEE0](v2, 0x1012C40EC159624);
  }

  if (proto::gnss::Emergency::EmergConfig::default_instance_ != v1)
  {
    v4 = v1[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    this = v1[3];
    if (this)
    {
      v5 = *(*this + 8);

      return v5();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::EmergConfig::default_instance(proto::gnss::Emergency::EmergConfig *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::EmergConfig::default_instance_;
  if (!proto::gnss::Emergency::EmergConfig::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::EmergConfig::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::EmergConfig::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 40);
  if (v2)
  {
    *(this + 32) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 8);
      if (v3 != MEMORY[0x277D82C30])
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    v4 = *(this + 40);
    if ((v4 & 4) != 0)
    {
      v5 = *(this + 16);
      if (v5)
      {
        if (*(v5 + 16))
        {
          *(v5 + 8) = 0;
        }

        *(v5 + 16) = 0;
        v4 = *(this + 40);
      }
    }

    if ((v4 & 8) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = proto::gnss::Emergency::SuplConfig::Clear(this);
      }
    }
  }

  *(v1 + 40) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::EmergConfig::MergePartialFromCodedStream(proto::gnss::Emergency::EmergConfig *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
            *(a2 + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v7 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_21;
            }

            v30 = 0;
            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v11 >= v10 || (v12 = *v11, (v12 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30);
              if (!result)
              {
                return result;
              }

              v12 = v30;
              v13 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v13 = v11 + 1;
              *(a2 + 1) = v13;
            }

            *(this + 32) = v12 != 0;
            v9 = *(this + 10) | 1;
            *(this + 10) = v9;
            if (v13 < v10 && *v13 == 18)
            {
              *(a2 + 1) = v13 + 1;
              goto LABEL_29;
            }
          }

          else
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_21;
            }

            v9 = *(this + 10);
LABEL_29:
            *(this + 10) = v9 | 2;
            if (*(this + 1) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v15 = *(a2 + 1);
            if (v15 < *(a2 + 2) && *v15 == 26)
            {
              *(a2 + 1) = v15 + 1;
              goto LABEL_35;
            }
          }
        }

        if (v7 != 3)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_21;
        }

LABEL_35:
        *(this + 10) |= 4u;
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
        if (!proto::gnss::Emergency::CplaneConfig::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
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

        v23 = *(a2 + 1);
        if (v23 < *(a2 + 2) && *v23 == 34)
        {
          *(a2 + 1) = v23 + 1;
          goto LABEL_49;
        }
      }

      if (v7 != 4 || v8 != 2)
      {
        break;
      }

LABEL_49:
      *(this + 10) |= 8u;
      v24 = *(this + 3);
      if (!v24)
      {
        operator new();
      }

      v32 = 0;
      v25 = *(a2 + 1);
      if (v25 >= *(a2 + 2) || *v25 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32))
        {
          return 0;
        }
      }

      else
      {
        v32 = *v25;
        *(a2 + 1) = v25 + 1;
      }

      v26 = *(a2 + 14);
      v27 = *(a2 + 15);
      *(a2 + 14) = v26 + 1;
      if (v26 >= v27)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!proto::gnss::Emergency::SuplConfig::MergePartialFromCodedStream(v24, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v28 = *(a2 + 14);
      v21 = __OFSUB__(v28, 1);
      v29 = v28 - 1;
      if (v29 < 0 == v21)
      {
        *(a2 + 14) = v29;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gnss::Emergency::EmergConfig::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 32), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 8);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_8:
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(proto::gnss::Emergency::EmergConfig::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  if ((*(v5 + 40) & 8) != 0)
  {
LABEL_11:
    v9 = *(v5 + 24);
    if (!v9)
    {
      v9 = *(proto::gnss::Emergency::EmergConfig::default_instance_ + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::EmergConfig::ByteSize(proto::gnss::Emergency::EmergConfig *this)
{
  v2 = *(this + 10);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_28;
  }

  v3 = 2 * (v2 & 1u);
  if ((v2 & 2) != 0)
  {
    v4 = *(this + 1);
    v5 = *(v4 + 23);
    v6 = v5;
    v7 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v8 = *(v4 + 23);
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v2 = *(this + 10);
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 1;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    v3 = (v9 + v3 + v5 + 1);
    if ((v2 & 4) == 0)
    {
LABEL_4:
      if ((v2 & 8) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_4;
  }

  v10 = *(this + 2);
  if (!v10)
  {
    v10 = *(proto::gnss::Emergency::EmergConfig::default_instance_ + 16);
  }

  if (*(v10 + 16))
  {
    v11 = 2 * (*(v10 + 16) & 1);
  }

  else
  {
    v11 = 0;
  }

  *(v10 + 12) = v11;
  v3 = (v3 + v11 + 2);
  if ((*(this + 10) & 8) != 0)
  {
LABEL_22:
    v12 = *(this + 3);
    if (!v12)
    {
      v12 = *(proto::gnss::Emergency::EmergConfig::default_instance_ + 24);
    }

    v13 = proto::gnss::Emergency::SuplConfig::ByteSize(v12);
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

LABEL_28:
  *(this + 9) = v3;
  return v3;
}

void proto::gnss::Emergency::EmergConfig::CheckTypeAndMergeFrom(proto::gnss::Emergency::EmergConfig *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::EmergConfig::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::EmergConfig::CopyFrom(proto::gnss::Emergency::EmergConfig *this, const proto::gnss::Emergency::EmergConfig *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::EmergConfig::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::EmergConfig::Swap(uint64_t this, proto::gnss::Emergency::EmergConfig *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    LODWORD(v5) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v5;
    LODWORD(v5) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v5;
  }

  return this;
}

double proto::gnss::Emergency::GpsAcqElement::SharedCtor(proto::gnss::Emergency::GpsAcqElement *this)
{
  result = 0.0;
  *(this + 52) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::GpsAcqElement *proto::gnss::Emergency::GpsAcqElement::GpsAcqElement(proto::gnss::Emergency::GpsAcqElement *this, const proto::gnss::Emergency::GpsAcqElement *a2)
{
  *this = &unk_28585EF20;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  proto::gnss::Emergency::GpsAcqElement::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GpsAcqElement::MergeFrom(proto::gnss::Emergency::GpsAcqElement *this, const proto::gnss::Emergency::GpsAcqElement *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v6 = *(a2 + 2);
    *(this + 16) |= 1u;
    *(this + 2) = v6;
    v4 = *(a2 + 16);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(a2 + 3);
  *(this + 16) |= 2u;
  *(this + 3) = v7;
  v4 = *(a2 + 16);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = *(a2 + 4);
  *(this + 16) |= 4u;
  *(this + 4) = v8;
  v4 = *(a2 + 16);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = *(a2 + 5);
  *(this + 16) |= 8u;
  *(this + 5) = v9;
  v4 = *(a2 + 16);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v11 = *(a2 + 7);
    *(this + 16) |= 0x20u;
    *(this + 7) = v11;
    v4 = *(a2 + 16);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_24:
  v10 = *(a2 + 6);
  *(this + 16) |= 0x10u;
  *(this + 6) = v10;
  v4 = *(a2 + 16);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_26:
  v12 = *(a2 + 8);
  *(this + 16) |= 0x40u;
  *(this + 8) = v12;
  v4 = *(a2 + 16);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 9);
    *(this + 16) |= 0x80u;
    *(this + 9) = v5;
    v4 = *(a2 + 16);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v13 = *(a2 + 10);
    *(this + 16) |= 0x100u;
    *(this + 10) = v13;
    v4 = *(a2 + 16);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_30;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v14 = *(a2 + 11);
  *(this + 16) |= 0x200u;
  *(this + 11) = v14;
  v4 = *(a2 + 16);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

LABEL_31:
    v16 = *(a2 + 13);
    *(this + 16) |= 0x800u;
    *(this + 13) = v16;
    if ((*(a2 + 16) & 0x1000) == 0)
    {
      return;
    }

    goto LABEL_32;
  }

LABEL_30:
  v15 = *(a2 + 12);
  *(this + 16) |= 0x400u;
  *(this + 12) = v15;
  v4 = *(a2 + 16);
  if ((v4 & 0x800) != 0)
  {
    goto LABEL_31;
  }

LABEL_18:
  if ((v4 & 0x1000) == 0)
  {
    return;
  }

LABEL_32:
  v17 = *(a2 + 14);
  if (v17 >= 7)
  {
    __assert_rtn("set_doppler_uncer_ext", "GnssEmergencyTypes.pb.h", 25157, "::proto::gnss::Emergency::GpsDopplerUncMpsExt_IsValid(value)");
  }

  *(this + 16) |= 0x1000u;
  *(this + 14) = v17;
}

void sub_2455095E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsAcqElement::~GpsAcqElement(proto::gnss::Emergency::GpsAcqElement *this)
{
  *this = &unk_28585EF20;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585EF20;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585EF20;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::GpsAcqElement::default_instance(proto::gnss::Emergency::GpsAcqElement *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GpsAcqElement::default_instance_;
  if (!proto::gnss::Emergency::GpsAcqElement::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GpsAcqElement::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GpsAcqElement::Clear(uint64_t this)
{
  v1 = *(this + 64);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
    *(this + 48) = 0;
    *(this + 56) = 0;
  }

  *(this + 64) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GpsAcqElement::MergePartialFromCodedStream(proto::gnss::Emergency::GpsAcqElement *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_34;
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
LABEL_40:
            *(this + 16) |= 1u;
            if (v9 < v6 && *v9 == 16)
            {
              v17 = v9 + 1;
              *(a2 + 1) = v17;
              goto LABEL_43;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (result)
        {
          v9 = *(a2 + 1);
          v6 = *(a2 + 2);
          goto LABEL_40;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v17 = *(a2 + 1);
        v6 = *(a2 + 2);
LABEL_43:
        if (v17 >= v6 || (v22 = *v17, v22 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v23 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v22;
          v23 = v17 + 1;
          *(a2 + 1) = v23;
        }

        *(this + 16) |= 2u;
        if (v23 >= v6 || *v23 != 24)
        {
          continue;
        }

        v14 = v23 + 1;
        *(a2 + 1) = v14;
LABEL_51:
        if (v14 >= v6 || (v24 = *v14, v24 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v25 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v24;
          v25 = v14 + 1;
          *(a2 + 1) = v25;
        }

        *(this + 16) |= 4u;
        if (v25 >= v6 || *v25 != 32)
        {
          continue;
        }

        v15 = v25 + 1;
        *(a2 + 1) = v15;
LABEL_59:
        if (v15 >= v6 || (v26 = *v15, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v26;
          v27 = v15 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 16) |= 8u;
        if (v27 >= v6 || *v27 != 40)
        {
          continue;
        }

        v11 = v27 + 1;
        *(a2 + 1) = v11;
LABEL_67:
        if (v11 >= v6 || (v28 = *v11, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v29 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v28;
          v29 = v11 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 16) |= 0x10u;
        if (v29 >= v6 || *v29 != 48)
        {
          continue;
        }

        v18 = v29 + 1;
        *(a2 + 1) = v18;
LABEL_75:
        if (v18 >= v6 || (v30 = *v18, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v31 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v30;
          v31 = v18 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 16) |= 0x20u;
        if (v31 >= v6 || *v31 != 56)
        {
          continue;
        }

        v19 = v31 + 1;
        *(a2 + 1) = v19;
LABEL_83:
        if (v19 >= v6 || (v32 = *v19, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v32;
          v33 = v19 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 16) |= 0x40u;
        if (v33 >= v6 || *v33 != 64)
        {
          continue;
        }

        v16 = v33 + 1;
        *(a2 + 1) = v16;
LABEL_91:
        if (v16 >= v6 || (v34 = *v16, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v34;
          v35 = v16 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 16) |= 0x80u;
        if (v35 >= v6 || *v35 != 72)
        {
          continue;
        }

        v21 = v35 + 1;
        *(a2 + 1) = v21;
LABEL_99:
        if (v21 >= v6 || (v36 = *v21, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v37 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v36;
          v37 = v21 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 16) |= 0x100u;
        if (v37 >= v6 || *v37 != 80)
        {
          continue;
        }

        v13 = v37 + 1;
        *(a2 + 1) = v13;
LABEL_107:
        if (v13 >= v6 || (v38 = *v13, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v38;
          v39 = v13 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 16) |= 0x200u;
        if (v39 >= v6 || *v39 != 88)
        {
          continue;
        }

        v20 = v39 + 1;
        *(a2 + 1) = v20;
LABEL_115:
        if (v20 >= v6 || (v40 = *v20, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v40;
          v41 = v20 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 16) |= 0x400u;
        if (v41 >= v6 || *v41 != 96)
        {
          continue;
        }

        v10 = v41 + 1;
        *(a2 + 1) = v10;
LABEL_123:
        if (v10 >= v6 || (v42 = *v10, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v42;
          v43 = v10 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 16) |= 0x800u;
        if (v43 >= v6 || *v43 != 104)
        {
          continue;
        }

        v12 = v43 + 1;
        *(a2 + 1) = v12;
LABEL_131:
        v46 = 0;
        if (v12 >= v6 || (v44 = *v12, (v44 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46);
          if (!result)
          {
            return result;
          }

          v44 = v46;
        }

        else
        {
          *(a2 + 1) = v12 + 1;
        }

        if (v44 <= 6)
        {
          *(this + 16) |= 0x1000u;
          *(this + 14) = v44;
        }

        if (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
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
          goto LABEL_34;
        }

        v14 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_51;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v15 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_59;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v11 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_67;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v18 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_75;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v19 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_83;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v16 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_91;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v21 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_99;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v13 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_107;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v20 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_115;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v10 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_123;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v12 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_131;
      default:
LABEL_34:
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

unsigned int *proto::gnss::Emergency::GpsAcqElement::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[16];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[16];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[16];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[16];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], a2, a4);
  v6 = v5[16];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], a2, a4);
  v6 = v5[16];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[8], a2, a4);
  v6 = v5[16];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[9], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[10], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[11], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, v5[13], a2, a4);
    if ((v5[16] & 0x1000) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[12], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v6 & 0x1000) == 0)
  {
    return this;
  }

LABEL_27:
  v7 = v5[14];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::GpsAcqElement::ByteSize(proto::gnss::Emergency::GpsAcqElement *this)
{
  v2 = *(this + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_45;
  }

  if (v2)
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
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

  v5 = *(this + 3);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 16);
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
      v2 = *(this + 16);
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
    v2 = *(this + 16);
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

    goto LABEL_33;
  }

LABEL_29:
  v11 = *(this + 6);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v12 = 2;
  }

  v3 = (v12 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_18:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_33:
  v13 = *(this + 7);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v14 = 2;
  }

  v3 = (v14 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_19:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_37:
  v15 = *(this + 8);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v16 = 2;
  }

  v3 = (v16 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_41:
    v17 = *(this + 9);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v18 = 2;
    }

    v3 = (v18 + v3);
  }

LABEL_45:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_74;
  }

  if ((v2 & 0x100) != 0)
  {
    v19 = *(this + 10);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v20 = 2;
    }

    v3 = (v20 + v3);
    if ((v2 & 0x200) == 0)
    {
LABEL_48:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_60;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_48;
  }

  v21 = *(this + 11);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v22 = 2;
  }

  v3 = (v22 + v3);
  if ((v2 & 0x400) == 0)
  {
LABEL_49:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_64;
  }

LABEL_60:
  v23 = *(this + 12);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v24 = 2;
  }

  v3 = (v24 + v3);
  if ((v2 & 0x800) == 0)
  {
LABEL_50:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_68;
  }

LABEL_64:
  v25 = *(this + 13);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v26 = 2;
  }

  v3 = (v26 + v3);
  if ((v2 & 0x1000) != 0)
  {
LABEL_68:
    v27 = *(this + 14);
    if ((v27 & 0x80000000) != 0)
    {
      v28 = 11;
    }

    else if (v27 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    }

    else
    {
      v28 = 2;
    }

    v3 = (v28 + v3);
  }

LABEL_74:
  *(this + 15) = v3;
  return v3;
}

void proto::gnss::Emergency::GpsAcqElement::CheckTypeAndMergeFrom(proto::gnss::Emergency::GpsAcqElement *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GpsAcqElement::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GpsAcqElement::CopyFrom(proto::gnss::Emergency::GpsAcqElement *this, const proto::gnss::Emergency::GpsAcqElement *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GpsAcqElement::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GpsAcqElement *proto::gnss::Emergency::GpsAcqElement::Swap(proto::gnss::Emergency::GpsAcqElement *this, proto::gnss::Emergency::GpsAcqElement *a2)
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
    v15 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v15;
    v16 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v16;
  }

  return this;
}

void *proto::gnss::Emergency::GpsAcqAssistance::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[7] = 0;
  this[8] = 0;
  this[6] = 0;
  return this;
}

proto::gnss::Emergency::GpsAcqAssistance *proto::gnss::Emergency::GpsAcqAssistance::GpsAcqAssistance(proto::gnss::Emergency::GpsAcqAssistance *this, const proto::gnss::Emergency::GpsAcqAssistance *a2)
{
  *this = &unk_28585EF98;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  proto::gnss::Emergency::GpsAcqAssistance::MergeFrom(this, a2);
  return this;
}

void sub_24550A4AC(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v1 + 3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsAcqAssistance::MergeFrom(proto::gnss::Emergency::GpsAcqAssistance *this, const proto::gnss::Emergency::GpsAcqAssistance *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
  }

  v4 = *(this + 8);
  v5 = *(a2 + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
  LODWORD(v6) = *(a2 + 8);
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if (v7 >= v6)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
      }

      v8 = *(*(a2 + 3) + 8 * v7);
      v9 = *(this + 9);
      v10 = *(this + 8);
      if (v10 >= v9)
      {
        if (v9 == *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
          v9 = *(this + 9);
        }

        *(this + 9) = v9 + 1;
        operator new();
      }

      v11 = *(this + 3);
      *(this + 8) = v10 + 1;
      proto::gnss::Emergency::GpsAcqElement::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 8);
    }

    while (v7 < v6);
  }

  LOBYTE(v12) = *(a2 + 68);
  if (!v12)
  {
    return;
  }

  if (*(a2 + 68))
  {
    v14 = *(a2 + 2);
    *(this + 17) |= 1u;
    *(this + 2) = v14;
    v12 = *(a2 + 17);
    if ((v12 & 2) == 0)
    {
LABEL_16:
      if ((v12 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  else if ((*(a2 + 68) & 2) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 3);
  *(this + 17) |= 2u;
  *(this + 3) = v15;
  v12 = *(a2 + 17);
  if ((v12 & 4) == 0)
  {
LABEL_17:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_25:
  *(this + 17) |= 4u;
  v16 = *(this + 2);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 2);
  if (!v17)
  {
    v17 = *(proto::gnss::Emergency::GpsAcqAssistance::default_instance_ + 16);
  }

  proto::gnss::Emergency::CellTimeAssistance::MergeFrom(v16, v17);
  v12 = *(a2 + 17);
  if ((v12 & 0x10) == 0)
  {
LABEL_18:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_19;
    }

LABEL_31:
    v19 = *(a2 + 13);
    if (v19 >= 6)
    {
      __assert_rtn("set_session_protocol", "GnssEmergencyTypes.pb.h", 25317, "::proto::gnss::Emergency::SessionProtocol_IsValid(value)");
    }

    *(this + 17) |= 0x20u;
    *(this + 13) = v19;
    v12 = *(a2 + 17);
    if ((v12 & 0x40) == 0)
    {
LABEL_20:
      if ((v12 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_30:
  v18 = *(a2 + 12);
  *(this + 17) |= 0x10u;
  *(this + 12) = v18;
  v12 = *(a2 + 17);
  if ((v12 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_19:
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_33:
  v20 = *(a2 + 14);
  if (v20 >= 7)
  {
    __assert_rtn("set_pos_protocol", "GnssEmergencyTypes.pb.h", 25340, "::proto::gnss::Emergency::PosProtocol_IsValid(value)");
  }

  *(this + 17) |= 0x40u;
  *(this + 14) = v20;
  if ((*(a2 + 17) & 0x80) != 0)
  {
LABEL_21:
    v13 = *(a2 + 15);
    *(this + 17) |= 0x80u;
    *(this + 15) = v13;
  }
}

void sub_24550A818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsAcqAssistance::~GpsAcqAssistance(proto::gnss::Emergency::GpsAcqAssistance *this)
{
  *this = &unk_28585EF98;
  if (proto::gnss::Emergency::GpsAcqAssistance::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::GpsAcqAssistance::~GpsAcqAssistance(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Emergency::GpsAcqAssistance::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::GpsAcqAssistance::default_instance_ != this)
  {
    this = this[2];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::GpsAcqAssistance::default_instance(proto::gnss::Emergency::GpsAcqAssistance *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GpsAcqAssistance::default_instance_;
  if (!proto::gnss::Emergency::GpsAcqAssistance::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GpsAcqAssistance::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GpsAcqAssistance::Clear(proto::gnss::Emergency::GpsAcqAssistance *this)
{
  v2 = *(this + 68);
  if (v2)
  {
    *(this + 1) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(this + 2);
      if (v3)
      {
        proto::gnss::Emergency::CellTimeAssistance::Clear(v3);
      }
    }

    *(this + 6) = 0;
    *(this + 7) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 24);
  *(this + 17) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::GpsAcqAssistance::MergePartialFromCodedStream(proto::gnss::Emergency::GpsAcqAssistance *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 4)
        {
          if (TagFallback >> 3 > 6)
          {
            if (v6 == 7)
            {
              if ((TagFallback & 7) == 0)
              {
                v20 = *(a2 + 1);
                v19 = *(a2 + 2);
                goto LABEL_101;
              }
            }

            else if (v6 == 8 && (TagFallback & 7) == 0)
            {
              v13 = *(a2 + 1);
              v12 = *(a2 + 2);
              goto LABEL_111;
            }
          }

          else if (v6 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_83;
            }
          }

          else if (v6 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_91;
          }

          goto LABEL_34;
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_34;
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

          *(this + 17) |= 1u;
          if (v16 < v8 && *v16 == 16)
          {
            v9 = v16 + 1;
            *(a2 + 1) = v9;
LABEL_43:
            if (v9 >= v8 || (v22 = *v9, v22 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v23 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v22;
              v23 = v9 + 1;
              *(a2 + 1) = v23;
            }

            v18 = *(this + 17) | 2;
            *(this + 17) = v18;
            if (v23 < v8 && *v23 == 26)
            {
              *(a2 + 1) = v23 + 1;
              goto LABEL_51;
            }
          }
        }

        else
        {
          if (v6 == 2 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_43;
          }

LABEL_34:
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
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_34;
      }

      v18 = *(this + 17);
LABEL_51:
      *(this + 17) = v18 | 4;
      v24 = *(this + 2);
      if (!v24)
      {
        operator new();
      }

      v50 = 0;
      v25 = *(a2 + 1);
      if (v25 >= *(a2 + 2) || *v25 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
        {
          return 0;
        }
      }

      else
      {
        v50 = *v25;
        *(a2 + 1) = v25 + 1;
      }

      v26 = *(a2 + 14);
      v27 = *(a2 + 15);
      *(a2 + 14) = v26 + 1;
      if (v26 >= v27)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!proto::gnss::Emergency::CellTimeAssistance::MergePartialFromCodedStream(v24, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v28 = *(a2 + 14);
      v29 = __OFSUB__(v28, 1);
      v30 = v28 - 1;
      if (v30 < 0 == v29)
      {
        *(a2 + 14) = v30;
      }

      v31 = *(a2 + 1);
      if (v31 < *(a2 + 2) && *v31 == 34)
      {
LABEL_64:
        *(a2 + 1) = v31 + 1;
        goto LABEL_65;
      }
    }

    if (v6 != 4 || v7 != 2)
    {
      goto LABEL_34;
    }

LABEL_65:
    v32 = *(this + 9);
    v33 = *(this + 8);
    if (v33 >= v32)
    {
      if (v32 == *(this + 10))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
        v32 = *(this + 9);
      }

      *(this + 9) = v32 + 1;
      operator new();
    }

    v34 = *(this + 3);
    *(this + 8) = v33 + 1;
    v35 = *(v34 + 8 * v33);
    v50 = 0;
    v36 = *(a2 + 1);
    if (v36 >= *(a2 + 2) || *v36 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
      {
        return 0;
      }
    }

    else
    {
      v50 = *v36;
      *(a2 + 1) = v36 + 1;
    }

    v37 = *(a2 + 14);
    v38 = *(a2 + 15);
    *(a2 + 14) = v37 + 1;
    if (v37 >= v38)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!proto::gnss::Emergency::GpsAcqElement::MergePartialFromCodedStream(v35, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v39 = *(a2 + 14);
    v29 = __OFSUB__(v39, 1);
    v40 = v39 - 1;
    if (v40 < 0 == v29)
    {
      *(a2 + 14) = v40;
    }

    v31 = *(a2 + 1);
    v10 = *(a2 + 2);
    if (v31 < v10)
    {
      v41 = *v31;
      if (v41 == 34)
      {
        goto LABEL_64;
      }

      if (v41 == 40)
      {
        v17 = v31 + 1;
        *(a2 + 1) = v17;
LABEL_83:
        if (v17 >= v10 || (v42 = *v17, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v42;
          v43 = v17 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 17) |= 0x10u;
        if (v43 < v10 && *v43 == 48)
        {
          v11 = v43 + 1;
          *(a2 + 1) = v11;
LABEL_91:
          v50 = 0;
          if (v11 >= v10 || (v44 = *v11, (v44 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50);
            if (!result)
            {
              return result;
            }

            v44 = v50;
          }

          else
          {
            *(a2 + 1) = v11 + 1;
          }

          if (v44 <= 5)
          {
            *(this + 17) |= 0x20u;
            *(this + 13) = v44;
          }

          v45 = *(a2 + 1);
          v19 = *(a2 + 2);
          if (v45 < v19 && *v45 == 56)
          {
            v20 = v45 + 1;
            *(a2 + 1) = v20;
LABEL_101:
            v50 = 0;
            if (v20 >= v19 || (v46 = *v20, (v46 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50);
              if (!result)
              {
                return result;
              }

              v46 = v50;
            }

            else
            {
              *(a2 + 1) = v20 + 1;
            }

            if (v46 <= 6)
            {
              *(this + 17) |= 0x40u;
              *(this + 14) = v46;
            }

            v47 = *(a2 + 1);
            v12 = *(a2 + 2);
            if (v47 < v12 && *v47 == 64)
            {
              v13 = v47 + 1;
              *(a2 + 1) = v13;
LABEL_111:
              if (v13 >= v12 || (v48 = *v13, v48 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
                if (!result)
                {
                  return result;
                }

                v49 = *(a2 + 1);
                v12 = *(a2 + 2);
              }

              else
              {
                *(this + 15) = v48;
                v49 = v13 + 1;
                *(a2 + 1) = v49;
              }

              *(this + 17) |= 0x80u;
              if (v49 == v12 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
  }
}

uint64_t proto::gnss::Emergency::GpsAcqAssistance::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 68);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  if ((*(v5 + 68) & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::GpsAcqAssistance::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
LABEL_10:
  if (*(v5 + 32) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 24) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 32));
  }

  v9 = *(v5 + 68);
  if ((v9 & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 48), a2, a4);
    v9 = *(v5 + 68);
    if ((v9 & 0x20) == 0)
    {
LABEL_15:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, *(v5 + 56), a2, a4);
      if ((*(v5 + 68) & 0x80) == 0)
      {
        return this;
      }

      goto LABEL_21;
    }
  }

  else if ((v9 & 0x20) == 0)
  {
    goto LABEL_15;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 52), a2, a4);
  v9 = *(v5 + 68);
  if ((v9 & 0x40) != 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  if ((v9 & 0x80) == 0)
  {
    return this;
  }

LABEL_21:
  v10 = *(v5 + 60);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v10, a2, a4);
}

uint64_t proto::gnss::Emergency::GpsAcqAssistance::ByteSize(proto::gnss::Emergency::GpsAcqAssistance *this)
{
  LOBYTE(v2) = *(this + 68);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_46;
  }

  if (*(this + 68))
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 17);
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
    if ((*(this + 68) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 3);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 17);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 2);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::GpsAcqAssistance::default_instance_ + 16);
    }

    v8 = proto::gnss::Emergency::CellTimeAssistance::ByteSize(v7);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    }

    else
    {
      v10 = 1;
    }

    v3 += v9 + v10 + 1;
    v2 = *(this + 17);
    if ((v2 & 0x10) == 0)
    {
LABEL_16:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_16;
  }

  v11 = *(this + 12);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(this + 17);
  }

  else
  {
    v12 = 2;
  }

  v3 += v12;
  if ((v2 & 0x20) == 0)
  {
LABEL_17:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_30:
  v13 = *(this + 13);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = *(this + 17);
  }

  else
  {
    v14 = 2;
  }

  v3 += v14;
  if ((v2 & 0x40) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

LABEL_36:
  v15 = *(this + 14);
  if ((v15 & 0x80000000) != 0)
  {
    v16 = 11;
  }

  else if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = *(this + 17);
  }

  else
  {
    v16 = 2;
  }

  v3 += v16;
  if ((v2 & 0x80) != 0)
  {
LABEL_42:
    v17 = *(this + 15);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    }

    else
    {
      v18 = 2;
    }

    v3 += v18;
  }

LABEL_46:
  v19 = *(this + 8);
  v20 = (v19 + v3);
  if (v19 >= 1)
  {
    v21 = 0;
    do
    {
      v22 = proto::gnss::Emergency::GpsAcqElement::ByteSize(*(*(this + 3) + 8 * v21));
      v23 = v22;
      if (v22 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      }

      else
      {
        v24 = 1;
      }

      v20 = (v23 + v20 + v24);
      ++v21;
    }

    while (v21 < *(this + 8));
  }

  *(this + 16) = v20;
  return v20;
}