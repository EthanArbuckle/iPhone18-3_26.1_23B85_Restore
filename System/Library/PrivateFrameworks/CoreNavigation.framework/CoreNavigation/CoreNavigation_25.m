uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 96);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 96);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 96);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 96);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, *(v5 + 88), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_30:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, *(v5 + 90), a2, a4);
    if ((*(v5 + 96) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_31;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xC, *(v5 + 89), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_30;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return this;
  }

LABEL_31:
  v8 = *(v5 + 91);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xE, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if (v2)
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::default_instance_ + 8);
      }

      v6 = *(v5 + 36);
      if (*(v5 + 36))
      {
        v7 = (v6 << 31 >> 31) & 9;
        if ((v6 & 2) != 0)
        {
          v7 += 9;
        }

        if ((v6 & 4) != 0)
        {
          v6 = v7 + 9;
        }

        else
        {
          v6 = v7;
        }
      }

      *(v5 + 32) = v6;
      v3 = v6 + 2;
      v2 = *(this + 24);
    }

    else
    {
      v3 = 0;
    }

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
      v3 += 9;
    }

    if ((v2 & 0x20) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x40) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x80) != 0)
    {
      result = v3 + 9;
    }

    else
    {
      result = v3;
    }
  }

  else
  {
    result = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    v8 = result + 9;
    if ((v2 & 0x100) == 0)
    {
      v8 = result;
    }

    if ((v2 & 0x200) != 0)
    {
      v8 += 9;
    }

    v9.i64[0] = 0x200000002;
    v9.i64[1] = 0x200000002;
    result = (vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_1D0E7A2F0), v9)) + v8);
  }

  *(this + 23) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *this, const CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::Swap(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *this, CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *a2)
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
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
    v10 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v10;
    result = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = result;
    LOBYTE(v2) = *(this + 88);
    *(this + 88) = *(a2 + 88);
    *(a2 + 88) = v2;
    LOBYTE(v2) = *(this + 89);
    *(this + 89) = *(a2 + 89);
    *(a2 + 89) = v2;
    LOBYTE(v2) = *(this + 90);
    *(this + 90) = *(a2 + 90);
    *(a2 + 90) = v2;
    LOBYTE(v2) = *(this + 91);
    *(this + 91) = *(a2 + 91);
    *(a2 + 91) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v2;
    LODWORD(v2) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v2;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapVector::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::MapVector *CoreNavigation::CLP::LogEntry::PrivateData::MapVector::MapVector(CoreNavigation::CLP::LogEntry::PrivateData::MapVector *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapVector *a2)
{
  *this = &unk_1F4CDA608;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::MapVector::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapVector::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MapVector *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapVector *a2)
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
      *(this + 8) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v5, v6);
      v4 = *(a2 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 6);
    *(this + 8) |= 2u;
    *(this + 6) = v7;
    if ((*(a2 + 8) & 4) == 0)
    {
      return;
    }

LABEL_14:
    *(this + 8) |= 4u;
    v8 = *(this + 2);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::MergeFrom(v8, v9);
  }
}

void sub_1D0CD536C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapVector::~MapVector(CoreNavigation::CLP::LogEntry::PrivateData::MapVector *this)
{
  *this = &unk_1F4CDA608;
  CoreNavigation::CLP::LogEntry::PrivateData::MapVector::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MapVector::~MapVector(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapVector::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::MapVector *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapVector::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    if (*(this + 32))
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(this + 32);
      }
    }

    *(this + 24) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::Clear(this);
      }
    }
  }

  *(v1 + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapVector::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MapVector *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          v12 = *(this + 8);
          goto LABEL_39;
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

      *(this + 8) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v29 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29))
        {
          return 0;
        }
      }

      else
      {
        v29 = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v13 = *(a2 + 14);
      v14 = *(a2 + 15);
      *(a2 + 14) = v13 + 1;
      if (v13 >= v14)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
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

      v18 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v18 < v10 && *v18 == 16)
      {
        v11 = v18 + 1;
        *(a2 + 1) = v11;
LABEL_31:
        v28 = 0;
        if (v11 >= v10 || (v19 = *v11, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
          if (!result)
          {
            return result;
          }

          v19 = v28;
          v20 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v20 = v11 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 6) = v19;
        v12 = *(this + 8) | 2;
        *(this + 8) = v12;
        if (v20 < v10 && *v20 == 26)
        {
          *(a2 + 1) = v20 + 1;
LABEL_39:
          *(this + 8) = v12 | 4;
          v22 = *(this + 2);
          if (!v22)
          {
            operator new();
          }

          v30 = 0;
          v23 = *(a2 + 1);
          if (v23 >= *(a2 + 2) || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
            {
              return 0;
            }
          }

          else
          {
            v30 = *v23;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v26 = *(a2 + 14);
          v16 = __OFSUB__(v26, 1);
          v27 = v26 - 1;
          if (v27 < 0 == v16)
          {
            *(a2 + 14) = v27;
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

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_31;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapVector::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_9;
  }

  v7 = *(this + 8);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_9:
  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapVector::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MapVector *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_25;
  }

  if (*(this + 32))
  {
    v4 = *(this + 1);
    if (!v4)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v4 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 8);
    }

    v5 = *(v4 + 36);
    if (*(v4 + 36))
    {
      v6 = (v5 << 31 >> 31) & 9;
      if ((v5 & 2) != 0)
      {
        v6 += 9;
      }

      if ((v5 & 4) != 0)
      {
        v5 = v6 + 9;
      }

      else
      {
        v5 = v6;
      }
    }

    *(v4 + 32) = v5;
    v3 = (v5 + 2);
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  v7 = *(this + 6);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v8 = 2;
  }

  v3 = (v8 + v3);
LABEL_21:
  if ((v2 & 4) != 0)
  {
    v9 = *(this + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16);
    }

    v3 = v3 + CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::ByteSize(v9) + 2;
  }

LABEL_25:
  *(this + 7) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapVector::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MapVector *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::MapVector::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapVector::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MapVector *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapVector *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::MapVector::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapVector::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::MapVector *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *this)
{
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::TunnelBridgeAssistance(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *a2)
{
  *this = &unk_1F4CDA680;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      *(this + 12) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
      v4 = *(a2 + 12);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 2);
    *(this + 12) |= 2u;
    *(this + 2) = v8;
    v4 = *(a2 + 12);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }

LABEL_20:
    v9 = *(a2 + 3);
    *(this + 12) |= 4u;
    *(this + 3) = v9;
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }

LABEL_21:
    v10 = *(a2 + 4);
    *(this + 12) |= 8u;
    *(this + 4) = v10;
    v4 = *(a2 + 12);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }

LABEL_22:
    v11 = *(a2 + 40);
    *(this + 12) |= 0x10u;
    *(this + 40) = v11;
    v4 = *(a2 + 12);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }

LABEL_23:
    v12 = *(a2 + 41);
    *(this + 12) |= 0x20u;
    *(this + 41) = v12;
    v4 = *(a2 + 12);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_24:
    v13 = *(a2 + 42);
    *(this + 12) |= 0x40u;
    *(this + 42) = v13;
    if ((*(a2 + 12) & 0x80) == 0)
    {
      return;
    }

LABEL_12:
    v5 = *(a2 + 43);
    *(this + 12) |= 0x80u;
    *(this + 43) = v5;
  }
}

void sub_1D0CD5EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::~TunnelBridgeAssistance(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *this)
{
  *this = &unk_1F4CDA680;
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::~TunnelBridgeAssistance(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::Clear(uint64_t this)
{
  if (*(this + 48))
  {
    if (*(this + 48))
    {
      v1 = *(this + 8);
      if (v1)
      {
        if (*(v1 + 36))
        {
          *(v1 + 8) = 0;
          *(v1 + 16) = 0;
          *(v1 + 24) = 0;
        }

        *(v1 + 36) = 0;
      }
    }

    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 40) = 0;
    *(this + 32) = 0;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
              v14 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_77;
            }
          }

          else if (v6 == 8 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_85;
          }
        }

        else if (v6 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_61;
          }
        }

        else if (v6 == 6 && (TagFallback & 7) == 0)
        {
          v9 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_69;
        }

        goto LABEL_36;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if (v7 == 1)
          {
            goto LABEL_53;
          }
        }

        else if (v6 == 4 && v7 == 1)
        {
          goto LABEL_57;
        }

        goto LABEL_36;
      }

      if (v6 == 1)
      {
        break;
      }

      if (v6 == 2 && v7 == 1)
      {
        goto LABEL_49;
      }

LABEL_36:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 != 2)
    {
      goto LABEL_36;
    }

    *(this + 12) |= 1u;
    v11 = *(this + 1);
    if (!v11)
    {
      operator new();
    }

    v33[0] = 0;
    v12 = *(a2 + 1);
    if (v12 >= *(a2 + 2) || *v12 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v33))
      {
        return 0;
      }
    }

    else
    {
      v33[0] = *v12;
      *(a2 + 1) = v12 + 1;
    }

    v15 = *(a2 + 14);
    v16 = *(a2 + 15);
    *(a2 + 14) = v15 + 1;
    if (v15 >= v16)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v11, a2) || *(a2 + 36) != 1)
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

    v20 = *(a2 + 1);
    if (v20 < *(a2 + 2) && *v20 == 17)
    {
      *(a2 + 1) = v20 + 1;
LABEL_49:
      *v33 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v33) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = *v33;
      *(this + 12) |= 2u;
      v21 = *(a2 + 1);
      if (v21 < *(a2 + 2) && *v21 == 25)
      {
        *(a2 + 1) = v21 + 1;
LABEL_53:
        *v33 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v33) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v33;
        *(this + 12) |= 4u;
        v22 = *(a2 + 1);
        if (v22 < *(a2 + 2) && *v22 == 33)
        {
          *(a2 + 1) = v22 + 1;
LABEL_57:
          *v33 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v33) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = *v33;
          *(this + 12) |= 8u;
          v23 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v23 < v8 && *v23 == 40)
          {
            v13 = v23 + 1;
            *(a2 + 1) = v13;
LABEL_61:
            v33[0] = 0;
            if (v13 >= v8 || (v24 = *v13, (v24 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v33);
              if (!result)
              {
                return result;
              }

              v24 = v33[0];
              v25 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v25 = v13 + 1;
              *(a2 + 1) = v25;
            }

            *(this + 40) = v24 != 0;
            *(this + 12) |= 0x10u;
            if (v25 < v8 && *v25 == 48)
            {
              v9 = v25 + 1;
              *(a2 + 1) = v9;
LABEL_69:
              v33[0] = 0;
              if (v9 >= v8 || (v27 = *v9, (v27 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v33);
                if (!result)
                {
                  return result;
                }

                v27 = v33[0];
                v28 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                v28 = v9 + 1;
                *(a2 + 1) = v28;
              }

              *(this + 41) = v27 != 0;
              *(this + 12) |= 0x20u;
              if (v28 < v8 && *v28 == 56)
              {
                v14 = v28 + 1;
                *(a2 + 1) = v14;
LABEL_77:
                v33[0] = 0;
                if (v14 >= v8 || (v29 = *v14, (v29 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v33);
                  if (!result)
                  {
                    return result;
                  }

                  v29 = v33[0];
                  v30 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  v30 = v14 + 1;
                  *(a2 + 1) = v30;
                }

                *(this + 42) = v29 != 0;
                *(this + 12) |= 0x40u;
                if (v30 < v8 && *v30 == 64)
                {
                  v10 = v30 + 1;
                  *(a2 + 1) = v10;
LABEL_85:
                  v33[0] = 0;
                  if (v10 >= v8 || (v31 = *v10, (v31 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v33);
                    if (!result)
                    {
                      return result;
                    }

                    v31 = v33[0];
                    v32 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    v32 = v10 + 1;
                    *(a2 + 1) = v32;
                  }

                  *(this + 43) = v31 != 0;
                  *(this + 12) |= 0x80u;
                  if (v32 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 48);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 42), a2, a4);
    if ((*(v5 + 48) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 41), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return this;
  }

LABEL_19:
  v8 = *(v5 + 43);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    if (v2)
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::default_instance_ + 8);
      }

      v6 = *(v5 + 36);
      v7 = (v6 << 31 >> 31) & 9;
      if ((v6 & 2) != 0)
      {
        v7 += 9;
      }

      if ((v6 & 4) != 0)
      {
        v7 += 9;
      }

      if (*(v5 + 36))
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      *(v5 + 32) = v8;
      v3 = v8 + 2;
      v2 = *(this + 12);
    }

    else
    {
      v3 = 0;
    }

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

    v9.i64[0] = 0x200000002;
    v9.i64[1] = 0x200000002;
    result = (vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_1D0E7A300), v9)) + v3);
  }

  else
  {
    result = 0;
  }

  *(this + 11) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::Swap(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *this, CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *a2)
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
    result = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = result;
    LOBYTE(v2) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v2;
    LOBYTE(v2) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v2;
    LOBYTE(v2) = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v2;
    LOBYTE(v2) = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v2;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::TunnelBridgeNotification(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *a2)
{
  *this = &unk_1F4CDA6F8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *a2)
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
      *(this + 8) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v5, v6);
      v4 = *(a2 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 6);
    *(this + 8) |= 2u;
    *(this + 6) = v7;
    if ((*(a2 + 8) & 4) == 0)
    {
      return;
    }

LABEL_14:
    *(this + 8) |= 4u;
    v8 = *(this + 2);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::MergeFrom(v8, v9);
  }
}

void sub_1D0CD6BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::~TunnelBridgeNotification(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *this)
{
  *this = &unk_1F4CDA6F8;
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::~TunnelBridgeNotification(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    if (*(this + 32))
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(this + 32);
      }
    }

    *(this + 24) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::Clear(this);
      }
    }
  }

  *(v1 + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          v12 = *(this + 8);
          goto LABEL_39;
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

      *(this + 8) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v29 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29))
        {
          return 0;
        }
      }

      else
      {
        v29 = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v13 = *(a2 + 14);
      v14 = *(a2 + 15);
      *(a2 + 14) = v13 + 1;
      if (v13 >= v14)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
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

      v18 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v18 < v10 && *v18 == 16)
      {
        v11 = v18 + 1;
        *(a2 + 1) = v11;
LABEL_31:
        v28 = 0;
        if (v11 >= v10 || (v19 = *v11, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
          if (!result)
          {
            return result;
          }

          v19 = v28;
          v20 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v20 = v11 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 6) = v19;
        v12 = *(this + 8) | 2;
        *(this + 8) = v12;
        if (v20 < v10 && *v20 == 26)
        {
          *(a2 + 1) = v20 + 1;
LABEL_39:
          *(this + 8) = v12 | 4;
          v22 = *(this + 2);
          if (!v22)
          {
            operator new();
          }

          v30 = 0;
          v23 = *(a2 + 1);
          if (v23 >= *(a2 + 2) || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
            {
              return 0;
            }
          }

          else
          {
            v30 = *v23;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v26 = *(a2 + 14);
          v16 = __OFSUB__(v26, 1);
          v27 = v26 - 1;
          if (v27 < 0 == v16)
          {
            *(a2 + 14) = v27;
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

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_31;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_9;
  }

  v7 = *(this + 8);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_9:
  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_25;
  }

  if (*(this + 32))
  {
    v4 = *(this + 1);
    if (!v4)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v4 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 8);
    }

    v5 = *(v4 + 36);
    if (*(v4 + 36))
    {
      v6 = (v5 << 31 >> 31) & 9;
      if ((v5 & 2) != 0)
      {
        v6 += 9;
      }

      if ((v5 & 4) != 0)
      {
        v5 = v6 + 9;
      }

      else
      {
        v5 = v6;
      }
    }

    *(v4 + 32) = v5;
    v3 = (v5 + 2);
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  v7 = *(this + 6);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v8 = 2;
  }

  v3 = (v8 + v3);
LABEL_21:
  if ((v2 & 4) != 0)
  {
    v9 = *(this + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
    }

    v3 = v3 + CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::ByteSize(v9) + 2;
  }

LABEL_25:
  *(this + 7) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *this)
{
  *(this + 69) = 0;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::TunnelEndPointAssistance(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *a2)
{
  *this = &unk_1F4CDA770;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 69) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  v5 = *(a2 + 31);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(this + 31) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::default_instance_ + 8);
    }

    result = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
    v5 = *(a2 + 31);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  result = *(a2 + 2);
  *(this + 31) |= 2u;
  *(this + 2) = result;
  v5 = *(a2 + 31);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = *(a2 + 3);
  *(this + 31) |= 4u;
  *(this + 3) = result;
  v5 = *(a2 + 31);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = *(a2 + 4);
  *(this + 31) |= 8u;
  *(this + 4) = result;
  v5 = *(a2 + 31);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_32:
    result = *(a2 + 6);
    *(this + 31) |= 0x20u;
    *(this + 6) = result;
    v5 = *(a2 + 31);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_31:
  result = *(a2 + 5);
  *(this + 31) |= 0x10u;
  *(this + 5) = result;
  v5 = *(a2 + 31);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_33:
  v8 = *(a2 + 18);
  if (v8 >= 3)
  {
    __assert_rtn("set_reference_frame", "CoreNavigationCLPPrivateDataShared.pb.h", 20659, "::CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationReferenceFrameType_IsValid(value)");
  }

  *(this + 31) |= 0x40u;
  *(this + 18) = v8;
  v5 = *(a2 + 31);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 7);
    *(this + 31) |= 0x80u;
    *(this + 7) = result;
    v5 = *(a2 + 31);
  }

LABEL_13:
  if ((v5 & 0xFF00) == 0)
  {
    return result;
  }

  if ((v5 & 0x100) != 0)
  {
    result = *(a2 + 8);
    *(this + 31) |= 0x100u;
    *(this + 8) = result;
    v5 = *(a2 + 31);
    if ((v5 & 0x200) == 0)
    {
LABEL_16:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_38;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  result = *(a2 + 10);
  *(this + 31) |= 0x200u;
  *(this + 10) = result;
  v5 = *(a2 + 31);
  if ((v5 & 0x400) == 0)
  {
LABEL_17:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  v9 = *(a2 + 76);
  *(this + 31) |= 0x400u;
  *(this + 76) = v9;
  v5 = *(a2 + 31);
  if ((v5 & 0x800) == 0)
  {
LABEL_18:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 11);
  *(this + 31) |= 0x800u;
  *(this + 11) = result;
  v5 = *(a2 + 31);
  if ((v5 & 0x1000) == 0)
  {
LABEL_19:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = *(a2 + 12);
  *(this + 31) |= 0x1000u;
  *(this + 12) = result;
  v5 = *(a2 + 31);
  if ((v5 & 0x2000) == 0)
  {
LABEL_20:
    if ((v5 & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_41:
  result = *(a2 + 13);
  *(this + 31) |= 0x2000u;
  *(this + 13) = result;
  if ((*(a2 + 31) & 0x4000) != 0)
  {
LABEL_21:
    result = *(a2 + 14);
    *(this + 31) |= 0x4000u;
    *(this + 14) = result;
  }

  return result;
}

void sub_1D0CD78A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::~TunnelEndPointAssistance(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *this)
{
  *this = &unk_1F4CDA770;
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::~TunnelEndPointAssistance(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::Clear(uint64_t this)
{
  v1 = *(this + 124);
  if (v1)
  {
    if (v1)
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 36) = 0;
        v1 = *(this + 124);
      }
    }

    *(this + 72) = 0;
    *(this + 16) = 0u;
    *(this + 32) = 0u;
    *(this + 48) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 64) = 0;
    *(this + 76) = 0;
    *(this + 80) = 0u;
    *(this + 96) = 0u;
    *(this + 112) = 0;
  }

  *(this + 124) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

    v6 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v6 != 2)
        {
          goto LABEL_40;
        }

        *(this + 31) |= 1u;
        v7 = *(this + 1);
        if (!v7)
        {
          operator new();
        }

        v35[0] = 0;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || *v8 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v35))
          {
            return 0;
          }
        }

        else
        {
          v35[0] = *v8;
          *(a2 + 1) = v8 + 1;
        }

        v13 = *(a2 + 14);
        v14 = *(a2 + 15);
        *(a2 + 14) = v13 + 1;
        if (v13 >= v14)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
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

        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 != 17)
        {
          continue;
        }

        *(a2 + 1) = v18 + 1;
        goto LABEL_52;
      case 2u:
        if (v6 != 1)
        {
          goto LABEL_40;
        }

LABEL_52:
        *v35 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v35) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v35;
        *(this + 31) |= 2u;
        v19 = *(a2 + 1);
        if (v19 >= *(a2 + 2) || *v19 != 25)
        {
          continue;
        }

        *(a2 + 1) = v19 + 1;
LABEL_56:
        *v35 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v35) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v35;
        *(this + 31) |= 4u;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 != 33)
        {
          continue;
        }

        *(a2 + 1) = v20 + 1;
LABEL_60:
        *v35 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v35) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v35;
        *(this + 31) |= 8u;
        v21 = *(a2 + 1);
        if (v21 >= *(a2 + 2) || *v21 != 41)
        {
          continue;
        }

        *(a2 + 1) = v21 + 1;
LABEL_64:
        *v35 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v35) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v35;
        *(this + 31) |= 0x10u;
        v22 = *(a2 + 1);
        if (v22 >= *(a2 + 2) || *v22 != 49)
        {
          continue;
        }

        *(a2 + 1) = v22 + 1;
LABEL_68:
        *v35 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v35) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v35;
        *(this + 31) |= 0x20u;
        v23 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v23 >= v9 || *v23 != 56)
        {
          continue;
        }

        v10 = v23 + 1;
        *(a2 + 1) = v10;
LABEL_72:
        v35[0] = 0;
        if (v10 >= v9 || (v24 = *v10, (v24 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v35);
          if (!result)
          {
            return result;
          }

          v24 = v35[0];
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v24 <= 2)
        {
          *(this + 31) |= 0x40u;
          *(this + 18) = v24;
        }

        v26 = *(a2 + 1);
        if (v26 >= *(a2 + 2) || *v26 != 65)
        {
          continue;
        }

        *(a2 + 1) = v26 + 1;
LABEL_82:
        *v35 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v35) & 1) == 0)
        {
          return 0;
        }

        *(this + 7) = *v35;
        *(this + 31) |= 0x80u;
        v27 = *(a2 + 1);
        if (v27 >= *(a2 + 2) || *v27 != 73)
        {
          continue;
        }

        *(a2 + 1) = v27 + 1;
LABEL_86:
        *v35 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v35) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = *v35;
        *(this + 31) |= 0x100u;
        v28 = *(a2 + 1);
        if (v28 >= *(a2 + 2) || *v28 != 81)
        {
          continue;
        }

        *(a2 + 1) = v28 + 1;
LABEL_90:
        *v35 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v35) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = *v35;
        *(this + 31) |= 0x200u;
        v29 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v29 >= v11 || *v29 != 88)
        {
          continue;
        }

        v12 = v29 + 1;
        *(a2 + 1) = v12;
LABEL_94:
        v35[0] = 0;
        if (v12 >= v11 || (v30 = *v12, (v30 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v35);
          if (!result)
          {
            return result;
          }

          v30 = v35[0];
          v31 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v31 = v12 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 76) = v30 != 0;
        *(this + 31) |= 0x400u;
        if (v31 >= v11 || *v31 != 97)
        {
          continue;
        }

        *(a2 + 1) = v31 + 1;
LABEL_102:
        *v35 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v35) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = *v35;
        *(this + 31) |= 0x800u;
        v32 = *(a2 + 1);
        if (v32 >= *(a2 + 2) || *v32 != 105)
        {
          continue;
        }

        *(a2 + 1) = v32 + 1;
LABEL_106:
        *v35 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v35) & 1) == 0)
        {
          return 0;
        }

        *(this + 12) = *v35;
        *(this + 31) |= 0x1000u;
        v33 = *(a2 + 1);
        if (v33 >= *(a2 + 2) || *v33 != 113)
        {
          continue;
        }

        *(a2 + 1) = v33 + 1;
LABEL_110:
        *v35 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v35) & 1) == 0)
        {
          return 0;
        }

        *(this + 13) = *v35;
        *(this + 31) |= 0x2000u;
        v34 = *(a2 + 1);
        if (v34 >= *(a2 + 2) || *v34 != 121)
        {
          continue;
        }

        *(a2 + 1) = v34 + 1;
LABEL_114:
        *v35 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v35))
        {
          *(this + 14) = *v35;
          *(this + 31) |= 0x4000u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          continue;
        }

        return 0;
      case 3u:
        if (v6 == 1)
        {
          goto LABEL_56;
        }

        goto LABEL_40;
      case 4u:
        if (v6 == 1)
        {
          goto LABEL_60;
        }

        goto LABEL_40;
      case 5u:
        if (v6 == 1)
        {
          goto LABEL_64;
        }

        goto LABEL_40;
      case 6u:
        if (v6 == 1)
        {
          goto LABEL_68;
        }

        goto LABEL_40;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_72;
      case 8u:
        if (v6 == 1)
        {
          goto LABEL_82;
        }

        goto LABEL_40;
      case 9u:
        if (v6 != 1)
        {
          goto LABEL_40;
        }

        goto LABEL_86;
      case 0xAu:
        if (v6 == 1)
        {
          goto LABEL_90;
        }

        goto LABEL_40;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_94;
      case 0xCu:
        if (v6 == 1)
        {
          goto LABEL_102;
        }

        goto LABEL_40;
      case 0xDu:
        if (v6 == 1)
        {
          goto LABEL_106;
        }

        goto LABEL_40;
      case 0xEu:
        if (v6 == 1)
        {
          goto LABEL_110;
        }

        goto LABEL_40;
      case 0xFu:
        if (v6 == 1)
        {
          goto LABEL_114;
        }

        goto LABEL_40;
      default:
LABEL_40:
        if (v6 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 124);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 124);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 124);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 124);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 124);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 124);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 124);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, *(v5 + 72), a2, a4);
  v6 = *(v5 + 124);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 56), a3);
  v6 = *(v5 + 124);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 64), a3);
  v6 = *(v5 + 124);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 124);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, *(v5 + 76), a2, a4);
  v6 = *(v5 + 124);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 88), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

LABEL_32:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 104), a3);
    if ((*(v5 + 124) & 0x4000) == 0)
    {
      return this;
    }

    goto LABEL_33;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 96), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x2000) != 0)
  {
    goto LABEL_32;
  }

LABEL_15:
  if ((v6 & 0x4000) == 0)
  {
    return this;
  }

LABEL_33:
  v8 = *(v5 + 112);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *this)
{
  v2 = *(this + 31);
  if (v2)
  {
    if (v2)
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::default_instance_ + 8);
      }

      v6 = *(v5 + 36);
      if (*(v5 + 36))
      {
        v7 = (v6 << 31 >> 31) & 9;
        if ((v6 & 2) != 0)
        {
          v7 += 9;
        }

        if ((v6 & 4) != 0)
        {
          v6 = v7 + 9;
        }

        else
        {
          v6 = v7;
        }
      }

      *(v5 + 32) = v6;
      v3 = v6 + 2;
      v2 = *(this + 31);
    }

    else
    {
      v3 = 0;
    }

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
      v3 += 9;
    }

    if ((v2 & 0x20) != 0)
    {
      v8 = v3 + 9;
    }

    else
    {
      v8 = v3;
    }

    if ((v2 & 0x40) != 0)
    {
      v9 = *(this + 18);
      if ((v9 & 0x80000000) != 0)
      {
        v10 = 11;
      }

      else if (v9 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
        v2 = *(this + 31);
      }

      else
      {
        v10 = 2;
      }

      v8 += v10;
    }

    if ((v2 & 0x80) != 0)
    {
      result = v8 + 9;
    }

    else
    {
      result = v8;
    }
  }

  else
  {
    result = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    v11 = result + 9;
    if ((v2 & 0x100) == 0)
    {
      v11 = result;
    }

    if ((v2 & 0x200) != 0)
    {
      v11 += 9;
    }

    v12 = v11 + ((v2 >> 9) & 2);
    if ((v2 & 0x800) != 0)
    {
      v12 += 9;
    }

    if ((v2 & 0x1000) != 0)
    {
      v12 += 9;
    }

    if ((v2 & 0x2000) != 0)
    {
      v12 += 9;
    }

    if ((v2 & 0x4000) != 0)
    {
      result = v12 + 9;
    }

    else
    {
      result = v12;
    }
  }

  *(this + 30) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::Swap(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *this, CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *a2)
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
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    LODWORD(v2) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v2;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
    v10 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v10;
    LOBYTE(v2) = *(this + 76);
    *(this + 76) = *(a2 + 76);
    *(a2 + 76) = v2;
    v11 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v11;
    v12 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v12;
    v13 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v13;
    result = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = result;
    LODWORD(v2) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v2;
    LODWORD(v2) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v2;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::TunnelEndPoint(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *a2)
{
  *this = &unk_1F4CDA7E8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      *(this + 8) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_ + 8);
      }

      result = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
      v5 = *(a2 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 6);
    *(this + 8) |= 2u;
    *(this + 6) = v8;
    if ((*(a2 + 8) & 4) == 0)
    {
      return result;
    }

LABEL_14:
    *(this + 8) |= 4u;
    v9 = *(this + 2);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 2);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_ + 16);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::MergeFrom(v9, v10);
  }

  return result;
}

void sub_1D0CD8998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::~TunnelEndPoint(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *this)
{
  *this = &unk_1F4CDA7E8;
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::~TunnelEndPoint(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    if (*(this + 32))
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(this + 32);
      }
    }

    *(this + 24) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::Clear(this);
      }
    }
  }

  *(v1 + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          v12 = *(this + 8);
          goto LABEL_39;
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

      *(this + 8) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v29 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29))
        {
          return 0;
        }
      }

      else
      {
        v29 = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v13 = *(a2 + 14);
      v14 = *(a2 + 15);
      *(a2 + 14) = v13 + 1;
      if (v13 >= v14)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
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

      v18 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v18 < v10 && *v18 == 16)
      {
        v11 = v18 + 1;
        *(a2 + 1) = v11;
LABEL_31:
        v28 = 0;
        if (v11 >= v10 || (v19 = *v11, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
          if (!result)
          {
            return result;
          }

          v19 = v28;
          v20 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v20 = v11 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 6) = v19;
        v12 = *(this + 8) | 2;
        *(this + 8) = v12;
        if (v20 < v10 && *v20 == 26)
        {
          *(a2 + 1) = v20 + 1;
LABEL_39:
          *(this + 8) = v12 | 4;
          v22 = *(this + 2);
          if (!v22)
          {
            operator new();
          }

          v30 = 0;
          v23 = *(a2 + 1);
          if (v23 >= *(a2 + 2) || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
            {
              return 0;
            }
          }

          else
          {
            v30 = *v23;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v26 = *(a2 + 14);
          v16 = __OFSUB__(v26, 1);
          v27 = v26 - 1;
          if (v27 < 0 == v16)
          {
            *(a2 + 14) = v27;
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

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_31;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_9;
  }

  v7 = *(this + 8);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_9:
  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_ + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_28;
  }

  if (*(this + 32))
  {
    v4 = *(this + 1);
    if (!v4)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v4 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_ + 8);
    }

    v5 = *(v4 + 36);
    if (*(v4 + 36))
    {
      v6 = (v5 << 31 >> 31) & 9;
      if ((v5 & 2) != 0)
      {
        v6 += 9;
      }

      if ((v5 & 4) != 0)
      {
        v5 = v6 + 9;
      }

      else
      {
        v5 = v6;
      }
    }

    *(v4 + 32) = v5;
    v3 = (v5 + 2);
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  v7 = *(this + 6);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v8 = 2;
  }

  v3 = (v8 + v3);
LABEL_21:
  if ((v2 & 4) != 0)
  {
    v9 = *(this + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_ + 16);
    }

    v10 = CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::ByteSize(v9);
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
  }

LABEL_28:
  *(this + 7) = v3;
  return v3;
}

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::MapsRouteHintData(CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *a2)
{
  *this = &unk_1F4CDA860;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 52);
  if (v5)
  {
    if (*(a2 + 52))
    {
      v6 = *(a2 + 1);
      *(this + 13) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 13);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 13) |= 2u;
    *(this + 2) = result;
    v5 = *(a2 + 13);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    result = *(a2 + 3);
    *(this + 13) |= 4u;
    *(this + 3) = result;
    v5 = *(a2 + 13);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_14:
    result = *(a2 + 4);
    *(this + 13) |= 8u;
    *(this + 4) = result;
    if ((*(a2 + 13) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    result = *(a2 + 5);
    *(this + 13) |= 0x10u;
    *(this + 5) = result;
  }

  return result;
}

void sub_1D0CD946C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::~MapsRouteHintData(CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *this)
{
  *this = &unk_1F4CDA860;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::~MapsRouteHintData(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::Clear(uint64_t this)
{
  if (*(this + 52))
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 == 3)
        {
          if (v7 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_36;
        }

        if (v6 == 4)
        {
          if (v7 != 1)
          {
            goto LABEL_21;
          }

LABEL_40:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = v16;
          *(this + 13) |= 8u;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 41)
          {
            *(a2 + 1) = v15 + 1;
            goto LABEL_44;
          }
        }

        else
        {
          if (v6 != 5 || v7 != 1)
          {
            goto LABEL_21;
          }

LABEL_44:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v16;
          *(this + 13) |= 0x10u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v16 = 0;
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x8000000000000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v16);
        if (!result)
        {
          return result;
        }

        v10 = v16;
        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 1) = v10;
      *(this + 13) |= 1u;
      if (v11 < v8 && *v11 == 17)
      {
        *(a2 + 1) = v11 + 1;
LABEL_32:
        v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v16;
        *(this + 13) |= 2u;
        v13 = *(a2 + 1);
        if (v13 < *(a2 + 2) && *v13 == 25)
        {
          *(a2 + 1) = v13 + 1;
LABEL_36:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v16;
          *(this + 13) |= 4u;
          v14 = *(a2 + 1);
          if (v14 < *(a2 + 2) && *v14 == 33)
          {
            *(a2 + 1) = v14 + 1;
            goto LABEL_40;
          }
        }
      }
    }

    if (v6 == 2 && v7 == 1)
    {
      goto LABEL_32;
    }

LABEL_21:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
    if ((*(v5 + 52) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 52);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, v7, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *this)
{
  LOBYTE(v2) = *(this + 52);
  if (v2)
  {
    if (*(this + 52))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v2 = *(this + 13);
    }

    else
    {
      v3 = 0;
    }

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
      result = v3 + 9;
    }

    else
    {
      result = v3;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 12) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::Swap(CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *this, CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *a2)
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
    LODWORD(v2) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::SharedCtor(void *this)
{
  this[7] = 0;
  this[2] = 0;
  this[3] = 0;
  this[1] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::MapMatchingRouteHint(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *a2)
{
  *this = &unk_1F4CDA8D8;
  *(this + 7) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::MergeFrom(this, a2);
  return this;
}

void sub_1D0CD9BE4(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 4);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v4 = *(this + 10);
  v5 = *(a2 + 10);
  v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
  LODWORD(v7) = *(a2 + 10);
  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      if (v8 >= v7)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
      }

      v9 = *(*(a2 + 4) + 8 * v8);
      v10 = *(this + 11);
      v11 = *(this + 10);
      if (v11 >= v10)
      {
        if (v10 == *(this + 12))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
          v10 = *(this + 11);
        }

        *(this + 11) = v10 + 1;
        operator new();
      }

      v12 = *(this + 4);
      *(this + 10) = v11 + 1;
      CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::MergeFrom(*(v12 + 8 * v11), v9);
      ++v8;
      v7 = *(a2 + 10);
    }

    while (v8 < v7);
  }

  LOBYTE(v13) = *(a2 + 60);
  if (!v13)
  {
    return;
  }

  if ((*(a2 + 60) & 1) == 0)
  {
    if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_24:
    *(this + 15) |= 2u;
    v16 = *(this + 2);
    if (!v16)
    {
      operator new();
    }

    v17 = *(a2 + 2);
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v6);
      v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v16, v17);
    v13 = *(a2 + 15);
    if ((v13 & 4) == 0)
    {
LABEL_17:
      if ((v13 & 8) == 0)
      {
        return;
      }

      goto LABEL_31;
    }

    goto LABEL_29;
  }

  *(this + 15) |= 1u;
  v14 = *(this + 1);
  if (!v14)
  {
    operator new();
  }

  v15 = *(a2 + 1);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v6);
    v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::default_instance_ + 8);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v14, v15);
  v13 = *(a2 + 15);
  if ((v13 & 2) != 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((v13 & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_29:
  v18 = *(a2 + 6);
  if (v18 >= 7)
  {
    __assert_rtn("set_route_type", "CoreNavigationCLPPrivateDataShared.pb.h", 21170, "::CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint_RoutingType_IsValid(value)");
  }

  *(this + 15) |= 4u;
  *(this + 6) = v18;
  if ((*(a2 + 15) & 8) != 0)
  {
LABEL_31:
    v19 = *(a2 + 7);
    if (v19 >= 7)
    {
      __assert_rtn("set_step_type", "CoreNavigationCLPPrivateDataShared.pb.h", 21193, "::CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint_RoutingType_IsValid(value)");
    }

    *(this + 15) |= 8u;
    *(this + 7) = v19;
  }
}

void sub_1D0CD9F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::Clear(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *this)
{
  LOBYTE(v2) = *(this + 60);
  if (v2)
  {
    if (*(this + 60))
    {
      v3 = *(this + 1);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(this + 15);
      }
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(this + 2);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
      }
    }

    *(this + 3) = 0;
  }

  result = sub_1D0C77384(this + 32);
  *(this + 15) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    v8 = *(this + 8);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v8, a2, a4);
    v6 = *(v5 + 60);
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

  v9 = *(v5 + 16);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v9, a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
  if ((*(v5 + 60) & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 28), a2, a4);
  }

LABEL_6:
  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *this)
{
  LOBYTE(v2) = *(this + 60);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_39;
  }

  if ((*(this + 60) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 60) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v4 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::default_instance_ + 8);
  }

  v5 = *(v4 + 36);
  if (*(v4 + 36))
  {
    v6 = (v5 << 31 >> 31) & 9;
    if ((v5 & 2) != 0)
    {
      v6 += 9;
    }

    if ((v5 & 4) != 0)
    {
      v5 = v6 + 9;
    }

    else
    {
      v5 = v6;
    }
  }

  *(v4 + 32) = v5;
  v3 = v5 + 2;
  v2 = *(this + 15);
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v7 = *(this + 2);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::default_instance_ + 16);
    }

    v8 = *(v7 + 36);
    if (*(v7 + 36))
    {
      v9 = (v8 << 31 >> 31) & 9;
      if ((v8 & 2) != 0)
      {
        v9 += 9;
      }

      if ((v8 & 4) != 0)
      {
        v8 = v9 + 9;
      }

      else
      {
        v8 = v9;
      }
    }

    *(v7 + 32) = v8;
    v3 += v8 + 2;
    v2 = *(this + 15);
  }

LABEL_24:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v10 = *(this + 6);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 11;
  }

  else if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v11 = 2;
  }

  v3 += v11;
  if ((v2 & 8) != 0)
  {
LABEL_33:
    v12 = *(this + 7);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    }

    else
    {
      v13 = 2;
    }

    v3 += v13;
  }

LABEL_39:
  v14 = *(this + 10);
  v15 = (v14 + v3);
  if (v14 >= 1)
  {
    v16 = 0;
    do
    {
      v17 = CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::ByteSize(*(*(this + 4) + 8 * v16));
      v18 = v17;
      if (v17 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
      }

      else
      {
        v19 = 1;
      }

      v15 = (v18 + v15 + v19);
      ++v16;
    }

    while (v16 < *(this + 10));
  }

  *(this + 14) = v15;
  return v15;
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v4;
    v5 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v5;
    LODWORD(v5) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v5;
    LODWORD(v5) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v5;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v6 = *(v3 + 60);
    *(v3 + 60) = *(a2 + 15);
    *(a2 + 15) = v6;
    v7 = *(v3 + 56);
    *(v3 + 56) = *(a2 + 14);
    *(a2 + 14) = v7;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::SharedCtor(uint64_t this)
{
  *(this + 48) = 0;
  *(this + 52) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::AccessoryVehicleSpeedNotification(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *this, const CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *a2)
{
  *this = &unk_1F4CDA950;
  *(this + 7) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0u;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::MergeFrom(this, a2);
  return this;
}

void sub_1D0CDA5D4(_Unwind_Exception *a1)
{
  v3 = v2;
  if (*v3)
  {
    MEMORY[0x1D387EC80](*v3, 0x1000C8000313F17);
  }

  v5 = *(v1 + 4);
  if (v5)
  {
    MEMORY[0x1D387EC80](v5, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *this, const CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *a2)
{
  v3 = this;
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 10);
  if (v4)
  {
    sub_1D0C773F4(v3 + 4, *(v3 + 10) + v4);
    this = memcpy((*(v3 + 4) + 8 * *(v3 + 10)), *(a2 + 4), 8 * *(a2 + 10));
    *(v3 + 10) += *(a2 + 10);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    sub_1D0C773F4(v3 + 7, *(v3 + 16) + v5);
    this = memcpy((*(v3 + 7) + 8 * *(v3 + 16)), *(a2 + 7), 8 * *(a2 + 16));
    *(v3 + 16) += *(a2 + 16);
  }

  v6 = *(a2 + 20);
  if (v6)
  {
    if (v6)
    {
      *(v3 + 20) |= 1u;
      v10 = *(v3 + 1);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 1);
      if (!v11)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v10, v11);
      v6 = *(a2 + 20);
      if ((v6 & 2) == 0)
      {
LABEL_10:
        if ((v6 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_30;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(v3 + 20) |= 2u;
    v12 = *(v3 + 2);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 2);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v12, v13);
    v6 = *(a2 + 20);
    if ((v6 & 4) == 0)
    {
LABEL_11:
      if ((v6 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_31;
    }

LABEL_30:
    v14 = *(a2 + 6);
    *(v3 + 20) |= 4u;
    *(v3 + 6) = v14;
    v6 = *(a2 + 20);
    if ((v6 & 8) == 0)
    {
LABEL_12:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

LABEL_31:
    v15 = *(a2 + 7);
    if (v15 >= 5)
    {
      __assert_rtn("set_transmission_state", "CoreNavigationCLPPrivateDataShared.pb.h", 21351, "::CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification_TransmissionStateType_IsValid(value)");
    }

    *(v3 + 20) |= 8u;
    *(v3 + 7) = v15;
    v6 = *(a2 + 20);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    v7 = *(a2 + 12);
    *(v3 + 20) |= 0x10u;
    *(v3 + 12) = v7;
    v6 = *(a2 + 20);
LABEL_14:
    if ((v6 & 0x80) != 0)
    {
      v8 = *(a2 + 52);
      *(v3 + 20) |= 0x80u;
      *(v3 + 52) = v8;
      v6 = *(a2 + 20);
    }
  }

  if ((v6 & 0x100) != 0)
  {
    v9 = *(a2 + 18);
    if (v9 >= 2)
    {
      __assert_rtn("set_sensor_type", "CoreNavigationCLPPrivateDataShared.pb.h", 21468, "::CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification_SensorType_IsValid(value)");
    }

    *(v3 + 20) |= 0x100u;
    *(v3 + 18) = v9;
  }
}

void sub_1D0CDA924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::~AccessoryVehicleSpeedNotification(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *this)
{
  *this = &unk_1F4CDA950;
  CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::SharedDtor(this);
  v2 = *(this + 7);
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::~AccessoryVehicleSpeedNotification(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::Clear(uint64_t this)
{
  v1 = *(this + 80);
  if (v1)
  {
    if (v1)
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 36) = 0;
        v1 = *(this + 80);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v1 = *(this + 80);
      }
    }

    *(this + 24) = 0;
    *(this + 48) = 0;
    *(this + 52) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 72) = 0;
  }

  *(this + 40) = 0;
  *(this + 64) = 0;
  *(this + 80) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 > 4)
      {
        break;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v6 != 3)
        {
          if (v6 != 4 || (TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_78;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_43;
        }

        v15 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_70:
        v63[0] = 0;
        if (v15 >= v10 || (v32 = *v15, (v32 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v63);
          if (!result)
          {
            return result;
          }

          v32 = v63[0];
          v33 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v33 = v15 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 6) = v32;
        *(this + 20) |= 4u;
        if (v33 < v10 && *v33 == 32)
        {
          v11 = v33 + 1;
          *(a2 + 1) = v11;
LABEL_78:
          v63[0] = 0;
          if (v11 >= v10 || (v34 = *v11, (v34 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v63);
            if (!result)
            {
              return result;
            }

            v34 = v63[0];
          }

          else
          {
            *(a2 + 1) = v11 + 1;
          }

          if (v34 <= 4)
          {
            *(this + 20) |= 8u;
            *(this + 7) = v34;
          }

          v35 = *(a2 + 1);
          v16 = *(a2 + 2);
          if (v35 < v16 && *v35 == 40)
          {
            v17 = v35 + 1;
            *(a2 + 1) = v17;
LABEL_88:
            v63[0] = 0;
            if (v17 >= v16 || (v36 = *v17, (v36 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v63);
              if (!result)
              {
                return result;
              }

              v36 = v63[0];
              v37 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              v37 = v17 + 1;
              *(a2 + 1) = v37;
            }

            *(this + 12) = v36;
            *(this + 20) |= 0x10u;
            if (v37 < v16 && *v37 == 49)
            {
              while (1)
              {
                *(a2 + 1) = v37 + 1;
LABEL_96:
                *v63 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v63) & 1) == 0)
                {
                  return 0;
                }

                v38 = *v63;
                v39 = *(this + 10);
                if (v39 == *(this + 11))
                {
                  sub_1D0C773F4(this + 4, v39 + 1);
                  v39 = *(this + 10);
                }

                v40 = *(this + 4);
                v41 = v39 + 1;
                *(this + 10) = v39 + 1;
                *(v40 + 8 * v39) = v38;
                v42 = *(a2 + 1);
                v43 = *(a2 + 4) - v42;
                if (v43 >= 1)
                {
                  v44 = v43 / 9u;
                  v45 = v44 >= *(this + 11) - v41 ? *(this + 11) - v41 : v44;
                  if (v45 >= 1)
                  {
                    v46 = 0;
                    while (*v42 == 49)
                    {
                      v47 = *(v42 + 1);
                      if (v41 >= *(this + 11))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v63);
                        v41 = *(this + 10);
                        v40 = *(this + 4);
                      }

                      *(this + 10) = v41 + 1;
                      *(v40 + 8 * v41) = v47;
                      ++v46;
                      v42 += 9;
                      ++v41;
                      if (v45 == v46)
                      {
                        goto LABEL_111;
                      }
                    }

                    if (!v46)
                    {
                      goto LABEL_112;
                    }

LABEL_111:
                    wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                  }
                }

LABEL_112:
                v37 = *(a2 + 1);
                if (v37 >= *(a2 + 2))
                {
                  break;
                }

                v48 = *v37;
                if (v48 != 49)
                {
                  if (v48 == 57)
                  {
                    while (1)
                    {
                      *(a2 + 1) = v37 + 1;
LABEL_116:
                      *v63 = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v63) & 1) == 0)
                      {
                        return 0;
                      }

                      v49 = *v63;
                      v50 = *(this + 16);
                      if (v50 == *(this + 17))
                      {
                        sub_1D0C773F4(this + 7, v50 + 1);
                        v50 = *(this + 16);
                      }

                      v51 = *(this + 7);
                      v52 = v50 + 1;
                      *(this + 16) = v50 + 1;
                      *(v51 + 8 * v50) = v49;
                      v53 = *(a2 + 1);
                      v54 = *(a2 + 4) - v53;
                      if (v54 >= 1)
                      {
                        v55 = v54 / 9u;
                        v56 = v55 >= *(this + 17) - v52 ? *(this + 17) - v52 : v55;
                        if (v56 >= 1)
                        {
                          v57 = 0;
                          while (*v53 == 57)
                          {
                            v58 = *(v53 + 1);
                            if (v52 >= *(this + 17))
                            {
                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v63);
                              v52 = *(this + 16);
                              v51 = *(this + 7);
                            }

                            *(this + 16) = v52 + 1;
                            *(v51 + 8 * v52) = v58;
                            ++v57;
                            v53 += 9;
                            ++v52;
                            if (v56 == v57)
                            {
                              goto LABEL_131;
                            }
                          }

                          if (!v57)
                          {
                            goto LABEL_132;
                          }

LABEL_131:
                          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                        }
                      }

LABEL_132:
                      v37 = *(a2 + 1);
                      v8 = *(a2 + 2);
                      if (v37 >= v8)
                      {
                        break;
                      }

                      v59 = *v37;
                      if (v59 != 57)
                      {
                        if (v59 != 64)
                        {
                          goto LABEL_1;
                        }

                        v18 = v37 + 1;
                        *(a2 + 1) = v18;
                        goto LABEL_136;
                      }
                    }
                  }

                  goto LABEL_1;
                }
              }
            }
          }
        }
      }

      else
      {
        if (v6 != 1)
        {
          if (v6 != 2 || v7 != 2)
          {
            goto LABEL_43;
          }

          goto LABEL_56;
        }

        if (v7 != 2)
        {
          goto LABEL_43;
        }

        *(this + 20) |= 1u;
        v13 = *(this + 1);
        if (!v13)
        {
          operator new();
        }

        v63[0] = 0;
        v14 = *(a2 + 1);
        if (v14 >= *(a2 + 2) || *v14 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v63))
          {
            return 0;
          }
        }

        else
        {
          v63[0] = *v14;
          *(a2 + 1) = v14 + 1;
        }

        v19 = *(a2 + 14);
        v20 = *(a2 + 15);
        *(a2 + 14) = v19 + 1;
        if (v19 >= v20)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v13, a2) || *(a2 + 36) != 1)
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

        v24 = *(a2 + 1);
        if (v24 < *(a2 + 2) && *v24 == 18)
        {
          *(a2 + 1) = v24 + 1;
LABEL_56:
          *(this + 20) |= 2u;
          v25 = *(this + 2);
          if (!v25)
          {
            operator new();
          }

          v63[0] = 0;
          v26 = *(a2 + 1);
          if (v26 >= *(a2 + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v63))
            {
              return 0;
            }
          }

          else
          {
            v63[0] = *v26;
            *(a2 + 1) = v26 + 1;
          }

          v27 = *(a2 + 14);
          v28 = *(a2 + 15);
          *(a2 + 14) = v27 + 1;
          if (v27 >= v28)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v25, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v29 = *(a2 + 14);
          v22 = __OFSUB__(v29, 1);
          v30 = v29 - 1;
          if (v30 < 0 == v22)
          {
            *(a2 + 14) = v30;
          }

          v31 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v31 < v10 && *v31 == 24)
          {
            v15 = v31 + 1;
            *(a2 + 1) = v15;
            goto LABEL_70;
          }
        }
      }
    }

    if (TagFallback >> 3 <= 6)
    {
      if (v6 != 5)
      {
        if (v6 != 6)
        {
          goto LABEL_43;
        }

        if (v7 != 1)
        {
          if (v7 == 2)
          {
            result = sub_1D0C99640(a2, this + 32);
            if (!result)
            {
              return result;
            }

            goto LABEL_112;
          }

          goto LABEL_43;
        }

        goto LABEL_96;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v17 = *(a2 + 1);
      v16 = *(a2 + 2);
      goto LABEL_88;
    }

    if (v6 == 7)
    {
      break;
    }

    if (v6 == 8)
    {
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v18 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_136:
      v63[0] = 0;
      if (v18 >= v8 || (v60 = *v18, (v60 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v63);
        if (!result)
        {
          return result;
        }

        v60 = v63[0];
        v61 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v61 = v18 + 1;
        *(a2 + 1) = v61;
      }

      *(this + 52) = v60 != 0;
      *(this + 20) |= 0x80u;
      if (v61 < v8 && *v61 == 72)
      {
        v9 = v61 + 1;
        *(a2 + 1) = v9;
LABEL_144:
        v63[0] = 0;
        if (v9 >= v8 || (v62 = *v9, (v62 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v63);
          if (!result)
          {
            return result;
          }

          v62 = v63[0];
        }

        else
        {
          *(a2 + 1) = v9 + 1;
        }

        if (v62 <= 1)
        {
          *(this + 20) |= 0x100u;
          *(this + 18) = v62;
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

    else
    {
      if (v6 == 9 && (TagFallback & 7) == 0)
      {
        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_144;
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

  if (v7 == 1)
  {
    goto LABEL_116;
  }

  if (v7 != 2)
  {
    goto LABEL_43;
  }

  result = sub_1D0C99640(a2, this + 56);
  if (result)
  {
    goto LABEL_132;
  }

  return result;
}

void sub_1D0CDB41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 80);
  if (v6)
  {
    v10 = *(this + 8);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v10, a2, a4);
    v6 = *(v5 + 80);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(v5 + 16);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v11, a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 28), a2, a4);
  if ((*(v5 + 80) & 0x10) != 0)
  {
LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 48), a2, a4);
  }

LABEL_7:
  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(*(v5 + 32) + 8 * v7++), a3);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(*(v5 + 56) + 8 * v8++), a3);
    }

    while (v8 < *(v5 + 64));
  }

  v9 = *(v5 + 80);
  if ((v9 & 0x80) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 52), a2, a4);
    v9 = *(v5 + 80);
  }

  if ((v9 & 0x100) != 0)
  {
    v12 = *(v5 + 72);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, v12, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    if (v2)
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_ + 8);
      }

      v6 = *(v5 + 36);
      if (*(v5 + 36))
      {
        v7 = (v6 << 31 >> 31) & 9;
        if ((v6 & 2) != 0)
        {
          v7 += 9;
        }

        if ((v6 & 4) != 0)
        {
          v6 = v7 + 9;
        }

        else
        {
          v6 = v7;
        }
      }

      *(v5 + 32) = v6;
      v3 = v6 + 2;
      v2 = *(this + 20);
      if ((v2 & 2) == 0)
      {
LABEL_25:
        if ((v2 & 4) != 0)
        {
          v11 = *(this + 6);
          if ((v11 & 0x80000000) != 0)
          {
            v12 = 11;
          }

          else if (v11 >= 0x80)
          {
            v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
            v2 = *(this + 20);
          }

          else
          {
            v12 = 2;
          }

          v3 += v12;
          if ((v2 & 8) == 0)
          {
LABEL_27:
            if ((v2 & 0x10) == 0)
            {
              goto LABEL_47;
            }

            goto LABEL_41;
          }
        }

        else if ((v2 & 8) == 0)
        {
          goto LABEL_27;
        }

        v13 = *(this + 7);
        if ((v13 & 0x80000000) != 0)
        {
          v14 = 11;
        }

        else if (v13 >= 0x80)
        {
          v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
          v2 = *(this + 20);
        }

        else
        {
          v14 = 2;
        }

        v3 += v14;
        if ((v2 & 0x10) == 0)
        {
LABEL_47:
          v4 = ((v2 >> 6) & 2) + v3;
          if ((v2 & 0x100) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_48;
        }

LABEL_41:
        v15 = *(this + 12);
        if ((v15 & 0x80000000) != 0)
        {
          v16 = 11;
        }

        else if (v15 >= 0x80)
        {
          v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
          v2 = *(this + 20);
        }

        else
        {
          v16 = 2;
        }

        v3 += v16;
        goto LABEL_47;
      }
    }

    else
    {
      v3 = 0;
      if ((v2 & 2) == 0)
      {
        goto LABEL_25;
      }
    }

    v8 = *(this + 2);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_ + 16);
    }

    v9 = *(v8 + 36);
    if (*(v8 + 36))
    {
      v10 = (v9 << 31 >> 31) & 9;
      if ((v9 & 2) != 0)
      {
        v10 += 9;
      }

      if ((v9 & 4) != 0)
      {
        v9 = v10 + 9;
      }

      else
      {
        v9 = v10;
      }
    }

    *(v8 + 32) = v9;
    v3 += v9 + 2;
    v2 = *(this + 20);
    goto LABEL_25;
  }

  v4 = 0;
  if ((v2 & 0x100) == 0)
  {
    goto LABEL_54;
  }

LABEL_48:
  v17 = *(this + 18);
  if ((v17 & 0x80000000) != 0)
  {
    v18 = 11;
  }

  else if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
  }

  else
  {
    v18 = 2;
  }

  v4 += v18;
LABEL_54:
  result = 9 * (*(this + 16) + *(this + 10)) + v4;
  *(this + 19) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *this, const CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::Swap(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *this, CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    v5 = *(a2 + 5);
    *(a2 + 4) = v4;
    v6 = *(this + 5);
    *(this + 5) = v5;
    *(a2 + 5) = v6;
    v7 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    result = *(a2 + 8);
    *(a2 + 7) = v7;
    v9 = *(this + 8);
    *(this + 8) = result;
    *(a2 + 8) = v9;
    LOBYTE(v7) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v7;
    LODWORD(v7) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v7;
    LODWORD(v7) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v7;
    LODWORD(v7) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v7;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::SharedCtor(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::ReachabilityState(CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *this, const CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *a2)
{
  *(this + 5) = 0;
  *(this + 6) = 0;
  *this = &unk_1F4CDA9C8;
  *(this + 1) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *this, const CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 2);
      if (v5 >= 4 && v5 != 1001)
      {
        __assert_rtn("set_previous", "CoreNavigationCLPPrivateDataShared.pb.h", 21495, "::CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityType_IsValid(value)");
      }

      *(this + 6) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      if (v6 >= 4 && v6 != 1001)
      {
        __assert_rtn("set_current", "CoreNavigationCLPPrivateDataShared.pb.h", 21518, "::CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityType_IsValid(value)");
      }

      *(this + 6) |= 2u;
      *(this + 3) = v6;
      v4 = *(a2 + 6);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 16);
      *(this + 6) |= 4u;
      *(this + 16) = v7;
      v4 = *(a2 + 6);
    }

    if ((v4 & 8) != 0)
    {
      v8 = *(a2 + 17);
      *(this + 6) |= 8u;
      *(this + 17) = v8;
    }
  }
}

void sub_1D0CDBB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::~ReachabilityState(CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *this)
{
  *this = &unk_1F4CDA9C8;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::~ReachabilityState(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
            v9 = *(a2 + 2);
            goto LABEL_43;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_51;
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

      v22 = 0;
      v11 = *(a2 + 1);
      if (v11 >= *(a2 + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
        if (!result)
        {
          return result;
        }

        v12 = v22;
      }

      else
      {
        *(a2 + 1) = v11 + 1;
      }

      if (v12 < 4 || v12 == 1001)
      {
        *(this + 6) |= 1u;
        *(this + 2) = v12;
      }

      v14 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v14 < v7 && *v14 == 16)
      {
        v8 = v14 + 1;
        *(a2 + 1) = v8;
LABEL_32:
        v22 = 0;
        if (v8 >= v7 || (v15 = *v8, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
          if (!result)
          {
            return result;
          }

          v15 = v22;
        }

        else
        {
          *(a2 + 1) = v8 + 1;
        }

        if (v15 < 4 || v15 == 1001)
        {
          *(this + 6) |= 2u;
          *(this + 3) = v15;
        }

        v16 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v16 < v9 && *v16 == 24)
        {
          v13 = v16 + 1;
          *(a2 + 1) = v13;
LABEL_43:
          v22 = 0;
          if (v13 >= v9 || (v17 = *v13, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
            if (!result)
            {
              return result;
            }

            v17 = v22;
            v18 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v18 = v13 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 16) = v17 != 0;
          *(this + 6) |= 4u;
          if (v18 < v9 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_51:
            v22 = 0;
            if (v10 >= v9 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
              if (!result)
              {
                return result;
              }

              v19 = v22;
              v20 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v20 = v10 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 17) = v19 != 0;
            *(this + 6) |= 8u;
            if (v20 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_32;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 24);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 16), a2, a4);
      if ((*(v5 + 24) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 24);
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
  v7 = *(v5 + 17);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *this)
{
  v2 = *(this + 6);
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
          goto LABEL_19;
        }
      }

      else if (v5 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(this + 6);
        if ((v2 & 2) == 0)
        {
LABEL_19:
          result = ((v2 >> 1) & 2) + v3 + ((v2 >> 2) & 2);
          goto LABEL_20;
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

    v6 = *(this + 3);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 6);
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
    goto LABEL_19;
  }

  result = 0;
LABEL_20:
  *(this + 5) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *this, const CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    LOBYTE(v3) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v3;
    LOBYTE(v3) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v4;
    v5 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v5;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Battery::SharedCtor(uint64_t this)
{
  *(this + 8) = 0xBFF0000000000000;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 18) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::Battery *CoreNavigation::CLP::LogEntry::PrivateData::Battery::Battery(CoreNavigation::CLP::LogEntry::PrivateData::Battery *this, const CoreNavigation::CLP::LogEntry::PrivateData::Battery *a2)
{
  *this = &unk_1F4CDAA40;
  *(this + 1) = 0xBFF0000000000000;
  *(this + 8) = 0;
  *(this + 28) = 0;
  *(this + 20) = 0;
  *(this + 18) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::Battery::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::Battery::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Battery *this, const CoreNavigation::CLP::LogEntry::PrivateData::Battery *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v7 = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = v7;
      v4 = *(a2 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 16);
    *(this + 8) |= 2u;
    *(this + 16) = v8;
    v4 = *(a2 + 8);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    v9 = *(a2 + 17);
    *(this + 8) |= 4u;
    *(this + 17) = v9;
    v4 = *(a2 + 8);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_16:
    v10 = *(a2 + 5);
    if (v10 >= 5)
    {
      __assert_rtn("set_charger_type", "CoreNavigationCLPPrivateDataShared.pb.h", 21655, "::CoreNavigation::CLP::LogEntry::PrivateData::BatteryChargerType_IsValid(value)");
    }

    *(this + 8) |= 8u;
    *(this + 5) = v10;
    v4 = *(a2 + 8);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v5 = *(a2 + 18);
    *(this + 8) |= 0x10u;
    *(this + 18) = v5;
    v4 = *(a2 + 8);
LABEL_10:
    if ((v4 & 0x20) != 0)
    {
      v6 = *(a2 + 6);
      *(this + 8) |= 0x20u;
      *(this + 6) = v6;
    }
  }
}

void sub_1D0CDC4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Battery::~Battery(CoreNavigation::CLP::LogEntry::PrivateData::Battery *this)
{
  *this = &unk_1F4CDAA40;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::Battery::~Battery(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Battery::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0xBFF0000000000000;
    *(this + 16) = 0;
    *(this + 20) = 0;
    *(this + 18) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Battery::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Battery *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (v6 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v14 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_47;
            }
          }

          else if (v6 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_57;
            }
          }

          else if (v6 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_65;
          }

          goto LABEL_30;
        }

        if (v6 != 1)
        {
          break;
        }

        if (v7 != 1)
        {
          goto LABEL_30;
        }

        *v27 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v27;
        *(this + 8) |= 1u;
        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v12 < v8 && *v12 == 16)
        {
          v13 = v12 + 1;
          *(a2 + 1) = v13;
          goto LABEL_26;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v13 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_26:
      v27[0] = 0;
      if (v13 >= v8 || (v15 = *v13, (v15 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v27);
        if (!result)
        {
          return result;
        }

        v15 = v27[0];
        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v16 = v13 + 1;
        *(a2 + 1) = v16;
      }

      *(this + 16) = v15 != 0;
      *(this + 8) |= 2u;
      if (v16 < v8 && *v16 == 24)
      {
        v9 = v16 + 1;
        *(a2 + 1) = v9;
LABEL_39:
        v27[0] = 0;
        if (v9 >= v8 || (v19 = *v9, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v27);
          if (!result)
          {
            return result;
          }

          v19 = v27[0];
          v20 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v20 = v9 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 17) = v19 != 0;
        *(this + 8) |= 4u;
        if (v20 < v8 && *v20 == 32)
        {
          v14 = v20 + 1;
          *(a2 + 1) = v14;
LABEL_47:
          v27[0] = 0;
          if (v14 >= v8 || (v21 = *v14, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v27);
            if (!result)
            {
              return result;
            }

            v21 = v27[0];
          }

          else
          {
            *(a2 + 1) = v14 + 1;
          }

          if (v21 <= 4)
          {
            *(this + 8) |= 8u;
            *(this + 5) = v21;
          }

          v22 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v22 < v10 && *v22 == 40)
          {
            v17 = v22 + 1;
            *(a2 + 1) = v17;
LABEL_57:
            v27[0] = 0;
            if (v17 >= v10 || (v23 = *v17, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v27);
              if (!result)
              {
                return result;
              }

              v23 = v27[0];
              v24 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v24 = v17 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 18) = v23 != 0;
            *(this + 8) |= 0x10u;
            if (v24 < v10 && *v24 == 48)
            {
              v11 = v24 + 1;
              *(a2 + 1) = v11;
LABEL_65:
              v27[0] = 0;
              if (v11 >= v10 || (v25 = *v11, (v25 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v27);
                if (!result)
                {
                  return result;
                }

                v25 = v27[0];
                v26 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                v26 = v11 + 1;
                *(a2 + 1) = v26;
              }

              *(this + 6) = v25;
              *(this + 8) |= 0x20u;
              if (v26 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 3 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_39;
    }

LABEL_30:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Battery::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 32);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 32);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 17), a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 18), a2, a4);
    if ((*(v5 + 32) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 32);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Battery::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::Battery *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = (((v2 << 31) >> 31) & 9 | v2 & 2) + ((v2 >> 1) & 2);
    if ((v2 & 8) != 0)
    {
      v4 = *(this + 5);
      if ((v4 & 0x80000000) != 0)
      {
        v5 = 11;
      }

      else if (v4 >= 0x80)
      {
        v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        v2 = *(this + 8);
      }

      else
      {
        v5 = 2;
      }

      v3 += v5;
    }

    v6 = ((v2 >> 3) & 2) + v3;
    if ((v2 & 0x20) != 0)
    {
      v7 = *(this + 6);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      }

      else
      {
        v8 = 2;
      }

      v6 = (v8 + v6);
    }
  }

  else
  {
    v6 = 0;
  }

  *(this + 7) = v6;
  return v6;
}

void CoreNavigation::CLP::LogEntry::PrivateData::Battery::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Battery *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::Battery::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Battery::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::Battery *this, const CoreNavigation::CLP::LogEntry::PrivateData::Battery *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::Battery::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::Battery::Swap(CoreNavigation::CLP::LogEntry::PrivateData::Battery *this, CoreNavigation::CLP::LogEntry::PrivateData::Battery *a2)
{
  if (a2 != this)
  {
    result = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = result;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v3;
    v4 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    LOBYTE(v5) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v5;
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *this)
{
  *(this + 7) = 0;
  *(this + 13) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 34) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::DeviceStatus(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *this, const CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *a2)
{
  *this = &unk_1F4CDAAB8;
  *(this + 7) = 0;
  *(this + 13) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 34) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *this, const CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
  }

  v4 = *(a2 + 15);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    *(this + 15) |= 1u;
    v7 = *(this + 1);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 1);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v7, v8);
    v4 = *(a2 + 15);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 4);
  *(this + 15) |= 2u;
  *(this + 4) = v9;
  v4 = *(a2 + 15);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_27:
  v10 = *(a2 + 5);
  if (v10 >= 0x14)
  {
    __assert_rtn("set_notification_data", "CoreNavigationCLPPrivateDataShared.pb.h", 21790, "::CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus_NotificationType_IsValid(value)");
  }

  *(this + 15) |= 4u;
  *(this + 5) = v10;
  v4 = *(a2 + 15);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_29:
  *(this + 15) |= 8u;
  v11 = *(this + 3);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 3);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_ + 24);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::MergeFrom(v11, v12);
  v4 = *(a2 + 15);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_39:
    v15 = *(a2 + 40);
    *(this + 15) |= 0x20u;
    *(this + 40) = v15;
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

    goto LABEL_40;
  }

LABEL_34:
  *(this + 15) |= 0x10u;
  v13 = *(this + 4);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 4);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_ + 32);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::Battery::MergeFrom(v13, v14);
  v4 = *(a2 + 15);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_39;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_40:
  v16 = *(a2 + 41);
  *(this + 15) |= 0x40u;
  *(this + 41) = v16;
  v4 = *(a2 + 15);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 42);
    *(this + 15) |= 0x80u;
    *(this + 42) = v5;
    v4 = *(a2 + 15);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v17 = *(a2 + 43);
    *(this + 15) |= 0x100u;
    *(this + 43) = v17;
    v4 = *(a2 + 15);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_44;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v18 = *(a2 + 48);
  *(this + 15) |= 0x200u;
  *(this + 48) = v18;
  v4 = *(a2 + 15);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  v19 = *(a2 + 11);
  *(this + 15) |= 0x400u;
  *(this + 11) = v19;
  v4 = *(a2 + 15);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_45:
  v20 = *(a2 + 13);
  *(this + 15) |= 0x800u;
  *(this + 13) = v20;
  if ((*(a2 + 15) & 0x1000) != 0)
  {
LABEL_19:
    v6 = *(a2 + 49);
    *(this + 15) |= 0x1000u;
    *(this + 49) = v6;
  }
}

void sub_1D0CDD150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::~DeviceStatus(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *this)
{
  *this = &unk_1F4CDAAB8;
  CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::~DeviceStatus(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 3);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 4);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::Clear(uint64_t this)
{
  v1 = *(this + 60);
  if (v1)
  {
    if (v1)
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 36) = 0;
        v1 = *(this + 60);
      }
    }

    *(this + 16) = 0;
    if ((v1 & 8) != 0)
    {
      v3 = *(this + 24);
      if (v3)
      {
        if (*(v3 + 24))
        {
          *(v3 + 16) = 0;
          *(v3 + 8) = 0;
        }

        *(v3 + 24) = 0;
        v1 = *(this + 60);
      }
    }

    if ((v1 & 0x10) != 0)
    {
      v4 = *(this + 32);
      if (v4)
      {
        if (*(v4 + 32))
        {
          *(v4 + 8) = 0xBFF0000000000000;
          *(v4 + 16) = 0;
          *(v4 + 20) = 0;
          *(v4 + 18) = 0;
        }

        *(v4 + 32) = 0;
        v1 = *(this + 60);
      }
    }

    *(this + 40) = 0;
    *(this + 42) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 52) = 0;
    *(this + 43) = 0;
    *(this + 46) = 0;
  }

  *(this + 60) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

    v6 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v6 != 2)
        {
          goto LABEL_36;
        }

        *(this + 15) |= 1u;
        v7 = *(this + 1);
        if (!v7)
        {
          operator new();
        }

        v62 = 0;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || *v8 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62))
          {
            return 0;
          }
        }

        else
        {
          v62 = *v8;
          *(a2 + 1) = v8 + 1;
        }

        v21 = *(a2 + 14);
        v22 = *(a2 + 15);
        *(a2 + 14) = v21 + 1;
        if (v21 >= v22)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v23 = *(a2 + 14);
        v24 = __OFSUB__(v23, 1);
        v25 = v23 - 1;
        if (v25 < 0 == v24)
        {
          *(a2 + 14) = v25;
        }

        v26 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v26 >= v13 || *v26 != 16)
        {
          continue;
        }

        v16 = v26 + 1;
        *(a2 + 1) = v16;
        goto LABEL_49;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v16 = *(a2 + 1);
        v13 = *(a2 + 2);
LABEL_49:
        v62 = 0;
        if (v16 >= v13 || (v27 = *v16, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62);
          if (!result)
          {
            return result;
          }

          v27 = v62;
          v28 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v28 = v16 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 4) = v27;
        *(this + 15) |= 2u;
        if (v28 >= v13 || *v28 != 24)
        {
          continue;
        }

        v14 = v28 + 1;
        *(a2 + 1) = v14;
LABEL_57:
        v62 = 0;
        if (v14 >= v13 || (v30 = *v14, (v30 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62);
          if (!result)
          {
            return result;
          }

          v30 = v62;
        }

        else
        {
          *(a2 + 1) = v14 + 1;
        }

        if (v30 <= 0x13)
        {
          *(this + 15) |= 4u;
          *(this + 5) = v30;
        }

        v31 = *(a2 + 1);
        if (v31 >= *(a2 + 2) || *v31 != 34)
        {
          continue;
        }

        *(a2 + 1) = v31 + 1;
LABEL_67:
        *(this + 15) |= 8u;
        v32 = *(this + 3);
        if (!v32)
        {
          operator new();
        }

        v62 = 0;
        v33 = *(a2 + 1);
        if (v33 >= *(a2 + 2) || *v33 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62))
          {
            return 0;
          }
        }

        else
        {
          v62 = *v33;
          *(a2 + 1) = v33 + 1;
        }

        v34 = *(a2 + 14);
        v35 = *(a2 + 15);
        *(a2 + 14) = v34 + 1;
        if (v34 >= v35)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::MergePartialFromCodedStream(v32, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v36 = *(a2 + 14);
        v24 = __OFSUB__(v36, 1);
        v37 = v36 - 1;
        if (v37 < 0 == v24)
        {
          *(a2 + 14) = v37;
        }

        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 != 42)
        {
          continue;
        }

        *(a2 + 1) = v38 + 1;
LABEL_81:
        *(this + 15) |= 0x10u;
        v39 = *(this + 4);
        if (!v39)
        {
          operator new();
        }

        v62 = 0;
        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62))
          {
            return 0;
          }
        }

        else
        {
          v62 = *v40;
          *(a2 + 1) = v40 + 1;
        }

        v41 = *(a2 + 14);
        v42 = *(a2 + 15);
        *(a2 + 14) = v41 + 1;
        if (v41 < v42)
        {
          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (CoreNavigation::CLP::LogEntry::PrivateData::Battery::MergePartialFromCodedStream(v39, a2))
          {
            if (*(a2 + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v43 = *(a2 + 14);
              v24 = __OFSUB__(v43, 1);
              v44 = v43 - 1;
              if (v44 < 0 == v24)
              {
                *(a2 + 14) = v44;
              }

              v45 = *(a2 + 1);
              v9 = *(a2 + 2);
              if (v45 < v9 && *v45 == 48)
              {
                v17 = v45 + 1;
                *(a2 + 1) = v17;
LABEL_95:
                v62 = 0;
                if (v17 >= v9 || (v46 = *v17, (v46 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62);
                  if (!result)
                  {
                    return result;
                  }

                  v46 = v62;
                  v47 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  v47 = v17 + 1;
                  *(a2 + 1) = v47;
                }

                *(this + 40) = v46 != 0;
                *(this + 15) |= 0x20u;
                if (v47 < v9 && *v47 == 56)
                {
                  v18 = v47 + 1;
                  *(a2 + 1) = v18;
LABEL_103:
                  v62 = 0;
                  if (v18 >= v9 || (v48 = *v18, (v48 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62);
                    if (!result)
                    {
                      return result;
                    }

                    v48 = v62;
                    v49 = *(a2 + 1);
                    v9 = *(a2 + 2);
                  }

                  else
                  {
                    v49 = v18 + 1;
                    *(a2 + 1) = v49;
                  }

                  *(this + 41) = v48 != 0;
                  *(this + 15) |= 0x40u;
                  if (v49 < v9 && *v49 == 64)
                  {
                    v15 = v49 + 1;
                    *(a2 + 1) = v15;
LABEL_111:
                    v62 = 0;
                    if (v15 >= v9 || (v50 = *v15, (v50 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62);
                      if (!result)
                      {
                        return result;
                      }

                      v50 = v62;
                      v51 = *(a2 + 1);
                      v9 = *(a2 + 2);
                    }

                    else
                    {
                      v51 = v15 + 1;
                      *(a2 + 1) = v51;
                    }

                    *(this + 42) = v50 != 0;
                    *(this + 15) |= 0x80u;
                    if (v51 < v9 && *v51 == 72)
                    {
                      v20 = v51 + 1;
                      *(a2 + 1) = v20;
LABEL_119:
                      v62 = 0;
                      if (v20 >= v9 || (v52 = *v20, (v52 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62);
                        if (!result)
                        {
                          return result;
                        }

                        v52 = v62;
                        v53 = *(a2 + 1);
                        v9 = *(a2 + 2);
                      }

                      else
                      {
                        v53 = v20 + 1;
                        *(a2 + 1) = v53;
                      }

                      *(this + 43) = v52 != 0;
                      *(this + 15) |= 0x100u;
                      if (v53 < v9 && *v53 == 80)
                      {
                        v12 = v53 + 1;
                        *(a2 + 1) = v12;
LABEL_127:
                        v62 = 0;
                        if (v12 >= v9 || (v54 = *v12, (v54 & 0x80000000) != 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62);
                          if (!result)
                          {
                            return result;
                          }

                          v54 = v62;
                          v55 = *(a2 + 1);
                          v9 = *(a2 + 2);
                        }

                        else
                        {
                          v55 = v12 + 1;
                          *(a2 + 1) = v55;
                        }

                        *(this + 48) = v54 != 0;
                        *(this + 15) |= 0x200u;
                        if (v55 < v9 && *v55 == 88)
                        {
                          v19 = v55 + 1;
                          *(a2 + 1) = v19;
LABEL_135:
                          v62 = 0;
                          if (v19 >= v9 || (v56 = *v19, (v56 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62);
                            if (!result)
                            {
                              return result;
                            }

                            v56 = v62;
                            v57 = *(a2 + 1);
                            v9 = *(a2 + 2);
                          }

                          else
                          {
                            v57 = v19 + 1;
                            *(a2 + 1) = v57;
                          }

                          *(this + 11) = v56;
                          *(this + 15) |= 0x400u;
                          if (v57 < v9 && *v57 == 96)
                          {
                            v10 = v57 + 1;
                            *(a2 + 1) = v10;
LABEL_143:
                            v62 = 0;
                            if (v10 >= v9 || (v58 = *v10, (v58 & 0x80000000) != 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62);
                              if (!result)
                              {
                                return result;
                              }

                              v58 = v62;
                              v59 = *(a2 + 1);
                              v9 = *(a2 + 2);
                            }

                            else
                            {
                              v59 = v10 + 1;
                              *(a2 + 1) = v59;
                            }

                            *(this + 13) = v58;
                            *(this + 15) |= 0x800u;
                            if (v59 < v9 && *v59 == 104)
                            {
                              v11 = v59 + 1;
                              *(a2 + 1) = v11;
LABEL_151:
                              v62 = 0;
                              if (v11 >= v9 || (v60 = *v11, (v60 & 0x80000000) != 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62);
                                if (!result)
                                {
                                  return result;
                                }

                                v60 = v62;
                                v61 = *(a2 + 1);
                                v9 = *(a2 + 2);
                              }

                              else
                              {
                                v61 = v11 + 1;
                                *(a2 + 1) = v61;
                              }

                              *(this + 49) = v60 != 0;
                              *(this + 15) |= 0x1000u;
                              if (v61 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
              }

              continue;
            }
          }
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_57;
      case 4u:
        if (v6 == 2)
        {
          goto LABEL_67;
        }

        goto LABEL_36;
      case 5u:
        if (v6 == 2)
        {
          goto LABEL_81;
        }

        goto LABEL_36;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v17 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_95;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v18 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_103;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v15 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_111;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v20 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_119;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_127;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v19 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_135;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_143;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_151;
      default:
LABEL_36:
        if (v6 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 60);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_20:
  v8 = *(v5 + 24);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_23:
  v9 = *(v5 + 32);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 41), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 42), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 43), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

LABEL_32:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, *(v5 + 52), a2, a4);
    if ((*(v5 + 60) & 0x1000) == 0)
    {
      return this;
    }

    goto LABEL_33;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 44), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_32;
  }

LABEL_13:
  if ((v6 & 0x1000) == 0)
  {
    return this;
  }

LABEL_33:
  v10 = *(v5 + 49);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, v10, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    result = 0;
    goto LABEL_44;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_ + 8);
  }

  v6 = *(v5 + 36);
  if (*(v5 + 36))
  {
    v7 = (v6 << 31 >> 31) & 9;
    if ((v6 & 2) != 0)
    {
      v7 += 9;
    }

    if ((v6 & 4) != 0)
    {
      v6 = v7 + 9;
    }

    else
    {
      v6 = v7;
    }
  }

  *(v5 + 32) = v6;
  v3 = v6 + 2;
  v2 = *(this + 15);
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v8 = *(this + 4);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v2 = *(this + 15);
    }

    else
    {
      v9 = 2;
    }

    v3 += v9;
  }

LABEL_21:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_23;
    }

LABEL_31:
    v12 = *(this + 3);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_ + 24);
    }

    v13 = CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::ByteSize(v12);
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
    v2 = *(this + 15);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_37;
  }

  v10 = *(this + 5);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 11;
  }

  else if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v11 = 2;
  }

  v3 += v11;
  if ((v2 & 8) != 0)
  {
    goto LABEL_31;
  }

LABEL_23:
  if ((v2 & 0x10) != 0)
  {
LABEL_37:
    v16 = *(this + 4);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_ + 32);
    }

    v17 = CoreNavigation::CLP::LogEntry::PrivateData::Battery::ByteSize(v16);
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
    v2 = *(this + 15);
  }

LABEL_43:
  result = ((v2 >> 4) & 2) + v3 + ((v2 >> 5) & 2) + ((v2 >> 6) & 2);
LABEL_44:
  if ((v2 & 0xFF00) != 0)
  {
    v20 = ((v2 >> 7) & 2) + result + ((v2 >> 8) & 2);
    if ((v2 & 0x400) != 0)
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

      v20 += v22;
    }

    if ((v2 & 0x800) != 0)
    {
      v23 = *(this + 13);
      if ((v23 & 0x80000000) != 0)
      {
        v24 = 11;
      }

      else if (v23 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
        v2 = *(this + 15);
      }

      else
      {
        v24 = 2;
      }

      v20 += v24;
    }

    result = ((v2 >> 11) & 2) + v20;
  }

  *(this + 14) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *this, const CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *a2)
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
    v4 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v4;
    LOBYTE(v4) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v4;
    LOBYTE(v4) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v4;
    LOBYTE(v4) = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v4;
    LOBYTE(v4) = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v4;
    LOBYTE(v4) = *(this + 48);
    *(this + 48) = *(a2 + 48);
    *(a2 + 48) = v4;
    LODWORD(v4) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v4;
    LODWORD(v4) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v4;
    LOBYTE(v4) = *(this + 49);
    *(this + 49) = *(a2 + 49);
    *(a2 + 49) = v4;
    LODWORD(v4) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v4;
    LODWORD(v4) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v4;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *this)
{
  *(this + 1) = 0;
  result = NAN;
  *(this + 1) = xmmword_1D0E7A2D0;
  *(this + 8) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::SignalEnvironment(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *this, const CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *a2)
{
  *this = &unk_1F4CDAB30;
  *(this + 1) = 0;
  *(this + 1) = xmmword_1D0E7A2D0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *this, const CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *a2)
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
      *(this + 8) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v5, v6);
      v4 = *(a2 + 8);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 4);
      if ((v7 + 1) >= 8)
      {
        __assert_rtn("set_coarse_signal_environment", "CoreNavigationCLPPrivateDataShared.pb.h", 22119, "::CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment_SignalEnvironmentType_IsValid(value)");
      }

      *(this + 8) |= 2u;
      *(this + 4) = v7;
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 5);
      if ((v8 + 1) >= 8)
      {
        __assert_rtn("set_high_resolution_signal_environment", "CoreNavigationCLPPrivateDataShared.pb.h", 22142, "::CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment_SignalEnvironmentType_IsValid(value)");
      }

      *(this + 8) |= 4u;
      *(this + 5) = v8;
      v4 = *(a2 + 8);
    }

    if ((v4 & 8) != 0)
    {
      v9 = *(a2 + 6);
      *(this + 8) |= 8u;
      *(this + 6) = v9;
    }
  }
}

void sub_1D0CDE5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::~SignalEnvironment(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *this)
{
  *this = &unk_1F4CDAB30;
  CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::~SignalEnvironment(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    if (*(this + 32))
    {
      v1 = *(this + 8);
      if (v1)
      {
        if (*(v1 + 36))
        {
          *(v1 + 8) = 0;
          *(v1 + 16) = 0;
          *(v1 + 24) = 0;
        }

        *(v1 + 36) = 0;
      }
    }

    *(this + 16) = -1;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(a2 + 1);
            v14 = *(a2 + 2);
            goto LABEL_45;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_55;
        }

        goto LABEL_22;
      }

      if (v6 == 1)
      {
        break;
      }

      if (v6 == 2 && (TagFallback & 7) == 0)
      {
        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_35;
      }

LABEL_22:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 != 2)
    {
      goto LABEL_22;
    }

    *(this + 8) |= 1u;
    v12 = *(this + 1);
    if (!v12)
    {
      operator new();
    }

    v29 = 0;
    v13 = *(a2 + 1);
    if (v13 >= *(a2 + 2) || *v13 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29))
      {
        return 0;
      }
    }

    else
    {
      v29 = *v13;
      *(a2 + 1) = v13 + 1;
    }

    v16 = *(a2 + 14);
    v17 = *(a2 + 15);
    *(a2 + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v12, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v18 = *(a2 + 14);
    v19 = __OFSUB__(v18, 1);
    v20 = v18 - 1;
    if (v20 < 0 == v19)
    {
      *(a2 + 14) = v20;
    }

    v21 = *(a2 + 1);
    v8 = *(a2 + 2);
    if (v21 < v8 && *v21 == 16)
    {
      v9 = v21 + 1;
      *(a2 + 1) = v9;
LABEL_35:
      v29 = 0;
      if (v9 >= v8 || (v22 = *v9, (v22 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
        if (!result)
        {
          return result;
        }

        v22 = v29;
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v22 + 1 <= 7)
      {
        *(this + 8) |= 2u;
        *(this + 4) = v22;
      }

      v24 = *(a2 + 1);
      v14 = *(a2 + 2);
      if (v24 < v14 && *v24 == 24)
      {
        v15 = v24 + 1;
        *(a2 + 1) = v15;
LABEL_45:
        v29 = 0;
        if (v15 >= v14 || (v25 = *v15, (v25 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
          if (!result)
          {
            return result;
          }

          v25 = v29;
        }

        else
        {
          *(a2 + 1) = v15 + 1;
        }

        if (v25 + 1 <= 7)
        {
          *(this + 8) |= 4u;
          *(this + 5) = v25;
        }

        v26 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v26 < v10 && *v26 == 32)
        {
          v11 = v26 + 1;
          *(a2 + 1) = v11;
LABEL_55:
          v29 = 0;
          if (v11 >= v10 || (v27 = *v11, (v27 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
            if (!result)
            {
              return result;
            }

            v27 = v29;
            v28 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            v28 = v11 + 1;
            *(a2 + 1) = v28;
          }

          *(this + 6) = v27;
          *(this + 8) |= 8u;
          if (v28 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = v5[8];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v5[5], a2, a4);
      if ((v5[8] & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[4], a2, a4);
  v6 = v5[8];
  if ((v6 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_11:
  v8 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_36;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v4 = *(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::default_instance_ + 8);
  }

  v5 = *(v4 + 36);
  if (*(v4 + 36))
  {
    v6 = (v5 << 31 >> 31) & 9;
    if ((v5 & 2) != 0)
    {
      v6 += 9;
    }

    if ((v5 & 4) != 0)
    {
      v5 = v6 + 9;
    }

    else
    {
      v5 = v6;
    }
  }

  *(v4 + 32) = v5;
  v3 = (v5 + 2);
  v2 = *(this + 8);
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v7 = *(this + 4);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(this + 8);
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
  }

LABEL_21:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  v9 = *(this + 5);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = 11;
  }

  else if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v10 = 2;
  }

  v3 = (v10 + v3);
  if ((v2 & 8) != 0)
  {
LABEL_30:
    v11 = *(this + 6);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    }

    else
    {
      v12 = 2;
    }

    v3 = (v12 + v3);
  }

LABEL_36:
  *(this + 7) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *this, const CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *a2)
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
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *this)
{
  *&result = 0xFFFFFFFFLL;
  *(this + 8) = xmmword_1D0E7A2E0;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::SignalEnvironmentInfo(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *a2)
{
  *this = &unk_1F4CDABA8;
  *(this + 8) = xmmword_1D0E7A2E0;
  CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *a2)
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
      if ((v5 + 1) >= 8)
      {
        __assert_rtn("set_type", "CoreNavigationCLPPrivateDataShared.pb.h", 22191, "::CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment_SignalEnvironmentType_IsValid(value)");
      }

      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      if (v6 >= 4)
      {
        __assert_rtn("set_fidelity_level", "CoreNavigationCLPPrivateDataShared.pb.h", 22214, "::CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentFidelityLevel_IsValid(value)");
      }

      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_1D0CDF01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::~SignalEnvironmentInfo(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *this)
{
  *this = &unk_1F4CDABA8;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::~SignalEnvironmentInfo(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0xFFFFFFFFLL;
  }

  *(this + 20) = 0;
  return this;
}