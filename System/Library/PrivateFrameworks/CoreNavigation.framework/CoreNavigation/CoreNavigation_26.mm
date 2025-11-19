uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v14 = 0;
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v7 = v14;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 + 1 <= 7)
      {
        *(this + 5) |= 1u;
        *(this + 2) = v7;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v10 < v8 && *v10 == 16)
      {
        v9 = v10 + 1;
        *(a2 + 1) = v9;
LABEL_24:
        v13 = 0;
        if (v9 >= v8 || (v11 = *v9, (v11 & 0x80000000) != 0))
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
          *(a2 + 1) = v9 + 1;
        }

        if (v11 <= 3)
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
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_24;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v7, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    if (*(this + 20))
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
        if ((*(this + 5) & 2) == 0)
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
      if ((*(this + 20) & 2) == 0)
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

LABEL_19:
  *(this + 4) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::Swap(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *this, CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MagSample::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::MagSample *CoreNavigation::CLP::LogEntry::PrivateData::MagSample::MagSample(CoreNavigation::CLP::LogEntry::PrivateData::MagSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::MagSample *a2)
{
  *this = &unk_1F4CDAC20;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::MagSample::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::PrivateData::MagSample::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MagSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::MagSample *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (!v5)
  {
    return *&v4;
  }

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
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MagSample::default_instance_ + 8);
    }

    v4 = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
    v5 = *(a2 + 8);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_16:
      LODWORD(v4) = *(a2 + 5);
      *(this + 8) |= 4u;
      *(this + 5) = LODWORD(v4);
      if ((*(a2 + 8) & 8) != 0)
      {
        goto LABEL_8;
      }

      return *&v4;
    }
  }

  else if ((*(a2 + 32) & 2) == 0)
  {
    goto LABEL_6;
  }

  LODWORD(v4) = *(a2 + 4);
  *(this + 8) |= 2u;
  *(this + 4) = LODWORD(v4);
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v5 & 8) != 0)
  {
LABEL_8:
    LODWORD(v4) = *(a2 + 6);
    *(this + 8) |= 8u;
    *(this + 6) = LODWORD(v4);
  }

  return *&v4;
}

void sub_1D0CDF794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MagSample::~MagSample(CoreNavigation::CLP::LogEntry::PrivateData::MagSample *this)
{
  *this = &unk_1F4CDAC20;
  CoreNavigation::CLP::LogEntry::PrivateData::MagSample::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MagSample::~MagSample(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MagSample::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::MagSample *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::MagSample::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MagSample::Clear(uint64_t this)
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

    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MagSample::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MagSample *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 == 3)
        {
          if (v7 != 5)
          {
            goto LABEL_22;
          }

LABEL_38:
          v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v19) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v19;
          *(this + 8) |= 4u;
          v17 = *(a2 + 1);
          if (v17 < *(a2 + 2) && *v17 == 37)
          {
            *(a2 + 1) = v17 + 1;
            goto LABEL_42;
          }
        }

        else
        {
          if (v6 != 4 || v7 != 5)
          {
            goto LABEL_22;
          }

LABEL_42:
          v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v19) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v19;
          *(this + 8) |= 8u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v6 == 1)
      {
        break;
      }

      if (v6 == 2 && v7 == 5)
      {
        goto LABEL_34;
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
    v8 = *(this + 1);
    if (!v8)
    {
      operator new();
    }

    v19 = 0;
    v9 = *(a2 + 1);
    if (v9 >= *(a2 + 2) || *v9 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19))
      {
        return 0;
      }
    }

    else
    {
      v19 = *v9;
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
    if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
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
    if (v15 < *(a2 + 2) && *v15 == 21)
    {
      *(a2 + 1) = v15 + 1;
LABEL_34:
      v19 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v19) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = v19;
      *(this + 8) |= 2u;
      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 29)
      {
        *(a2 + 1) = v16 + 1;
        goto LABEL_38;
      }
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MagSample::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MagSample::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
      if ((*(v5 + 32) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 32);
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
  v8 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MagSample::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MagSample *this)
{
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    if (*(this + 32))
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::MagSample::default_instance_ + 8);
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
      v2 = *(this + 8);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 8) != 0)
    {
      result = v3 + 5;
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

  *(this + 7) = result;
  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::MagSample::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MagSample *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::MagSample::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::PrivateData::MagSample::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MagSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::MagSample *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::MagSample::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::MagSample::Swap(CoreNavigation::CLP::LogEntry::PrivateData::MagSample *this, CoreNavigation::CLP::LogEntry::PrivateData::MagSample *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 40) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::Magnetometer(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *this, const CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *a2)
{
  *(this + 5) = 0;
  *this = &unk_1F4CDAC98;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::MergeFrom(this, a2);
  return this;
}

void sub_1D0CDFFEC(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *this, const CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  sub_1D0CFEED8((this + 16), a2 + 16);
  if (*(a2 + 44))
  {
    *(this + 11) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v4);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::default_instance_ + 8);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
  }

  return result;
}

void sub_1D0CE0114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::~Magnetometer(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *this)
{
  *this = &unk_1F4CDAC98;
  CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::SharedDtor(this);
  sub_1D0B8CD0C(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::~Magnetometer(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::Clear(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *this)
{
  if (*(this + 44))
  {
    v2 = *(this + 1);
    if (v2)
    {
      if (*(v2 + 36))
      {
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      *(v2 + 36) = 0;
    }
  }

  result = sub_1D0C77384(this + 16);
  *(this + 11) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      *(this + 11) |= 1u;
      v7 = *(this + 1);
      if (!v7)
      {
        operator new();
      }

      v26 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26))
        {
          return 0;
        }
      }

      else
      {
        v26 = *v8;
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
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
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
        do
        {
          *(a2 + 1) = v14 + 1;
LABEL_27:
          v15 = *(this + 7);
          v16 = *(this + 6);
          if (v16 >= v15)
          {
            if (v15 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v15 = *(this + 7);
            }

            *(this + 7) = v15 + 1;
            operator new();
          }

          v17 = *(this + 2);
          *(this + 6) = v16 + 1;
          v18 = *(v17 + 8 * v16);
          v27 = 0;
          v19 = *(a2 + 1);
          if (v19 >= *(a2 + 2) || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
            {
              return 0;
            }
          }

          else
          {
            v27 = *v19;
            *(a2 + 1) = v19 + 1;
          }

          v20 = *(a2 + 14);
          v21 = *(a2 + 15);
          *(a2 + 14) = v20 + 1;
          if (v20 >= v21)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::MagSample::MergePartialFromCodedStream(v18, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v22 = *(a2 + 14);
          v12 = __OFSUB__(v22, 1);
          v23 = v22 - 1;
          if (v23 < 0 == v12)
          {
            *(a2 + 14) = v23;
          }

          v14 = *(a2 + 1);
          v24 = *(a2 + 2);
        }

        while (v14 < v24 && *v14 == 18);
        if (v14 == v24 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *this)
{
  if (*(this + 44))
  {
    v3 = *(this + 1);
    if (!v3)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v3 = *(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::default_instance_ + 8);
    }

    v4 = *(v3 + 36);
    if (*(v3 + 36))
    {
      v5 = (v4 << 31 >> 31) & 9;
      if ((v4 & 2) != 0)
      {
        v5 += 9;
      }

      if ((v4 & 4) != 0)
      {
        v4 = v5 + 9;
      }

      else
      {
        v4 = v5;
      }
    }

    *(v3 + 32) = v4;
    v2 = v4 + 2;
  }

  else
  {
    v2 = 0;
  }

  v6 = *(this + 6);
  v7 = (v6 + v2);
  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      v7 = v7 + CoreNavigation::CLP::LogEntry::PrivateData::MagSample::ByteSize(*(*(this + 2) + 8 * v8++)) + 1;
    }

    while (v8 < *(this + 6));
  }

  *(this + 10) = v7;
  return v7;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *this, const CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::MergeFrom(this, a2);
  }

  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::Swap(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *this, CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    v6 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Reset::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::Reset *CoreNavigation::CLP::LogEntry::PrivateData::Reset::Reset(CoreNavigation::CLP::LogEntry::PrivateData::Reset *this, const CoreNavigation::CLP::LogEntry::PrivateData::Reset *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDAD10;
  CoreNavigation::CLP::LogEntry::PrivateData::Reset::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Reset::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Reset *this, const CoreNavigation::CLP::LogEntry::PrivateData::Reset *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (*(a2 + 20))
  {
    *(this + 5) |= 1u;
    v5 = *(this + 1);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 1);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::Reset::default_instance_ + 8);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v5, v6);
  }

  return result;
}

void sub_1D0CE0AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Reset::~Reset(CoreNavigation::CLP::LogEntry::PrivateData::Reset *this)
{
  *this = &unk_1F4CDAD10;
  CoreNavigation::CLP::LogEntry::PrivateData::Reset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::Reset::~Reset(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Reset::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::Reset *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::Reset::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Reset::Clear(uint64_t this)
{
  if (*(this + 20))
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

  *(this + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Reset::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Reset *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback != 10)
      {
        break;
      }

      *(this + 5) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v14 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || *v7 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14))
        {
          return 0;
        }
      }

      else
      {
        v14 = *v7;
        *(a2 + 1) = v7 + 1;
      }

      v8 = *(a2 + 14);
      v9 = *(a2 + 15);
      *(a2 + 14) = v8 + 1;
      if (v8 >= v9)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v6, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v10 = *(a2 + 14);
      v11 = __OFSUB__(v10, 1);
      v12 = v10 - 1;
      if (v12 < 0 == v11)
      {
        *(a2 + 14) = v12;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Reset::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::Reset::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Reset::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::Reset *this)
{
  if (*(this + 20))
  {
    v3 = *(this + 1);
    if (!v3)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v3 = *(CoreNavigation::CLP::LogEntry::PrivateData::Reset::default_instance_ + 8);
    }

    v4 = *(v3 + 36);
    if (*(v3 + 36))
    {
      v5 = (v4 << 31 >> 31) & 9;
      if ((v4 & 2) != 0)
      {
        v5 += 9;
      }

      if ((v4 & 4) != 0)
      {
        v4 = v5 + 9;
      }

      else
      {
        v4 = v5;
      }
    }

    *(v3 + 32) = v4;
    result = (v4 + 2);
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Reset::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Reset *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::Reset::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::Reset::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::Reset *this, const CoreNavigation::CLP::LogEntry::PrivateData::Reset *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::Reset::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Reset::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::Reset *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::AccelerometerPace(CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *this, const CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *a2)
{
  *this = &unk_1F4CDAD88;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *this, const CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      result = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = result;
    if ((*(a2 + 9) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 3);
    *(this + 9) |= 4u;
    *(this + 3) = result;
  }

  return result;
}

void sub_1D0CE1220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::~AccelerometerPace(CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *this)
{
  *this = &unk_1F4CDAD88;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::~AccelerometerPace(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        if (v7 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v11) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v11;
        *(this + 9) |= 4u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || v7 != 1)
      {
        goto LABEL_20;
      }

      v11 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v11) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v11;
      *(this + 9) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 17)
      {
        *(a2 + 1) = v8 + 1;
LABEL_15:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v11) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v11;
        *(this + 9) |= 2u;
        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 25)
        {
          *(a2 + 1) = v9 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v7 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 36);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
    if ((*(v4 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v6 = *(v4 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v6, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *this)
{
  v1 = *(this + 36);
  if (*(this + 36))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 8) = v1;
  return v1;
}

double CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *this, const CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::Swap(CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *this, CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    result = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = result;
    v5 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v5;
    v6 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v6;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::FalseStepDetectorState(CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *this, const CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDAE00;
  CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *this, const CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v6 = *(a2 + 8);
      *(this + 5) |= 1u;
      *(this + 8) = v6;
      v4 = *(a2 + 5);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if ((*(a2 + 20) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 9);
    *(this + 5) |= 2u;
    *(this + 9) = v7;
    v4 = *(a2 + 5);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    v8 = *(a2 + 10);
    *(this + 5) |= 4u;
    *(this + 10) = v8;
    v4 = *(a2 + 5);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    v9 = *(a2 + 11);
    *(this + 5) |= 8u;
    *(this + 11) = v9;
    v4 = *(a2 + 5);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

LABEL_18:
    v10 = *(a2 + 12);
    *(this + 5) |= 0x10u;
    *(this + 12) = v10;
    v4 = *(a2 + 5);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }

LABEL_19:
    v11 = *(a2 + 13);
    *(this + 5) |= 0x20u;
    *(this + 13) = v11;
    v4 = *(a2 + 5);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_20:
    v12 = *(a2 + 14);
    *(this + 5) |= 0x40u;
    *(this + 14) = v12;
    if ((*(a2 + 5) & 0x80) == 0)
    {
      return;
    }

LABEL_12:
    v5 = *(a2 + 15);
    *(this + 5) |= 0x80u;
    *(this + 15) = v5;
  }
}

void sub_1D0CE1964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::~FalseStepDetectorState(CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *this)
{
  *this = &unk_1F4CDAE00;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::~FalseStepDetectorState(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 > 4)
      {
        if (TagFallback >> 3 > 6)
        {
          if (v6 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_83;
            }
          }

          else if (v6 == 8 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_91;
          }
        }

        else if (v6 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_67;
          }
        }

        else if (v6 == 6 && (TagFallback & 7) == 0)
        {
          v9 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_75;
        }

        goto LABEL_34;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_51;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_59;
        }

        goto LABEL_34;
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v33 = 0;
      v12 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v12 >= v7 || (v13 = *v12, (v13 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33);
        if (!result)
        {
          return result;
        }

        v13 = v33;
        v14 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v14 = v12 + 1;
        *(a2 + 1) = v14;
      }

      *(this + 8) = v13 != 0;
      *(this + 5) |= 1u;
      if (v14 < v7 && *v14 == 16)
      {
        v8 = v14 + 1;
        *(a2 + 1) = v8;
LABEL_43:
        v33 = 0;
        if (v8 >= v7 || (v18 = *v8, (v18 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33);
          if (!result)
          {
            return result;
          }

          v18 = v33;
          v19 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v19 = v8 + 1;
          *(a2 + 1) = v19;
        }

        *(this + 9) = v18 != 0;
        *(this + 5) |= 2u;
        if (v19 < v7 && *v19 == 24)
        {
          v16 = v19 + 1;
          *(a2 + 1) = v16;
LABEL_51:
          v33 = 0;
          if (v16 >= v7 || (v20 = *v16, (v20 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33);
            if (!result)
            {
              return result;
            }

            v20 = v33;
            v21 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v21 = v16 + 1;
            *(a2 + 1) = v21;
          }

          *(this + 10) = v20 != 0;
          *(this + 5) |= 4u;
          if (v21 < v7 && *v21 == 32)
          {
            v10 = v21 + 1;
            *(a2 + 1) = v10;
LABEL_59:
            v33 = 0;
            if (v10 >= v7 || (v22 = *v10, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33);
              if (!result)
              {
                return result;
              }

              v22 = v33;
              v23 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v23 = v10 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 11) = v22 != 0;
            *(this + 5) |= 8u;
            if (v23 < v7 && *v23 == 40)
            {
              v15 = v23 + 1;
              *(a2 + 1) = v15;
LABEL_67:
              v33 = 0;
              if (v15 >= v7 || (v24 = *v15, (v24 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33);
                if (!result)
                {
                  return result;
                }

                v24 = v33;
                v25 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                v25 = v15 + 1;
                *(a2 + 1) = v25;
              }

              *(this + 12) = v24 != 0;
              *(this + 5) |= 0x10u;
              if (v25 < v7 && *v25 == 48)
              {
                v9 = v25 + 1;
                *(a2 + 1) = v9;
LABEL_75:
                v33 = 0;
                if (v9 >= v7 || (v26 = *v9, (v26 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33);
                  if (!result)
                  {
                    return result;
                  }

                  v26 = v33;
                  v27 = *(a2 + 1);
                  v7 = *(a2 + 2);
                }

                else
                {
                  v27 = v9 + 1;
                  *(a2 + 1) = v27;
                }

                *(this + 13) = v26 != 0;
                *(this + 5) |= 0x20u;
                if (v27 < v7 && *v27 == 56)
                {
                  v17 = v27 + 1;
                  *(a2 + 1) = v17;
LABEL_83:
                  v33 = 0;
                  if (v17 >= v7 || (v28 = *v17, (v28 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33);
                    if (!result)
                    {
                      return result;
                    }

                    v28 = v33;
                    v29 = *(a2 + 1);
                    v7 = *(a2 + 2);
                  }

                  else
                  {
                    v29 = v17 + 1;
                    *(a2 + 1) = v29;
                  }

                  *(this + 14) = v28 != 0;
                  *(this + 5) |= 0x40u;
                  if (v29 < v7 && *v29 == 64)
                  {
                    v11 = v29 + 1;
                    *(a2 + 1) = v11;
LABEL_91:
                    v33 = 0;
                    if (v11 >= v7 || (v30 = *v11, (v30 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33);
                      if (!result)
                      {
                        return result;
                      }

                      v30 = v33;
                      v31 = *(a2 + 1);
                      v7 = *(a2 + 2);
                    }

                    else
                    {
                      v31 = v11 + 1;
                      *(a2 + 1) = v31;
                    }

                    *(this + 15) = v30 != 0;
                    *(this + 5) |= 0x80u;
                    if (v31 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_43;
    }

LABEL_34:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
  v6 = *(v5 + 20);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
  v6 = *(v5 + 20);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 11), a2, a4);
  v6 = *(v5 + 20);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 12), a2, a4);
  v6 = *(v5 + 20);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 14), a2, a4);
    if ((*(v5 + 20) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 13), a2, a4);
  v6 = *(v5 + 20);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return this;
  }

LABEL_17:
  v7 = *(v5 + 15);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *this)
{
  if (*(this + 5))
  {
    v2.i64[0] = 0x200000002;
    v2.i64[1] = 0x200000002;
    v1 = *(this + 5);
    v3 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v1), xmmword_1D0E7A310), v2)) + 2 * (v1 & 1) + (v1 & 2) + ((v1 >> 5) & 2) + ((v1 >> 6) & 2);
  }

  else
  {
    v3 = 0;
  }

  *(this + 4) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *this, const CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState *a2)
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
    v6 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v6;
    v7 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v7;
    v8 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v8;
    v9 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v9;
    v10 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v10;
    v11 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v11;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *this)
{
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  v2 = MEMORY[0x1E69E5958];
  *(this + 72) = 0u;
  *(this + 11) = v2;
  *(this + 48) = 0;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::StepCountEntry(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *this, const CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *a2)
{
  *this = &unk_1F4CDAE78;
  *(this + 18) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  v3 = MEMORY[0x1E69E5958];
  *(this + 72) = 0u;
  *(this + 11) = v3;
  *(this + 48) = 0;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 8) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *this, const CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *a2)
{
  v3 = this;
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v35);
  }

  v4 = *(a2 + 37);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    *(v3 + 37) |= 1u;
    v6 = *(v3 + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
    v4 = *(a2 + 37);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_33;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(v3 + 37) |= 2u;
  v8 = *(v3 + 2);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 2);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 16);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v8, v9);
  v4 = *(a2 + 37);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_33:
  *(v3 + 37) |= 4u;
  v10 = *(v3 + 3);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 3);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 24);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v10, v11);
  v4 = *(a2 + 37);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  v12 = *(a2 + 10);
  *(v3 + 37) |= 8u;
  *(v3 + 10) = v12;
  v4 = *(a2 + 37);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_40:
    v14 = *(a2 + 6);
    *(v3 + 37) |= 0x20u;
    *(v3 + 6) = v14;
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

    goto LABEL_41;
  }

LABEL_39:
  v13 = *(a2 + 4);
  *(v3 + 37) |= 0x10u;
  *(v3 + 4) = v13;
  v4 = *(a2 + 37);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_41:
  v15 = *(a2 + 11);
  *(v3 + 37) |= 0x40u;
  *(v3 + 11) = v15;
  v4 = *(a2 + 37);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 18);
    *(v3 + 37) |= 0x80u;
    *(v3 + 18) = v5;
    v4 = *(a2 + 37);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_57;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 7);
    *(v3 + 37) |= 0x100u;
    *(v3 + 7) = v16;
    v4 = *(a2 + 37);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_45;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v17 = *(a2 + 8);
  *(v3 + 37) |= 0x200u;
  *(v3 + 8) = v17;
  v4 = *(a2 + 37);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  v18 = *(a2 + 10);
  *(v3 + 37) |= 0x400u;
  *(v3 + 10) = v18;
  v4 = *(a2 + 37);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  v19 = *(a2 + 19);
  *(v3 + 37) |= 0x800u;
  *(v3 + 19) = v19;
  v4 = *(a2 + 37);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_47:
  v20 = *(a2 + 11);
  *(v3 + 37) |= 0x1000u;
  v21 = *(v3 + 11);
  if (v21 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  this = std::string::operator=(v21, v20);
  v4 = *(a2 + 37);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  v22 = *(a2 + 96);
  *(v3 + 37) |= 0x2000u;
  *(v3 + 96) = v22;
  v4 = *(a2 + 37);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

LABEL_51:
  v23 = *(a2 + 97);
  *(v3 + 37) |= 0x4000u;
  *(v3 + 97) = v23;
  v4 = *(a2 + 37);
  if ((v4 & 0x8000) == 0)
  {
    goto LABEL_57;
  }

LABEL_52:
  *(v3 + 37) |= 0x8000u;
  v24 = *(v3 + 13);
  if (!v24)
  {
    operator new();
  }

  v25 = *(a2 + 13);
  if (!v25)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 104);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::MergeFrom(v24, v25);
  v4 = *(a2 + 37);
LABEL_57:
  if ((v4 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v4 & 0x10000) != 0)
  {
    v26 = *(a2 + 25);
    *(v3 + 37) |= 0x10000u;
    *(v3 + 25) = v26;
    v4 = *(a2 + 37);
    if ((v4 & 0x20000) == 0)
    {
LABEL_60:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_69;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_60;
  }

  v27 = *(a2 + 28);
  *(v3 + 37) |= 0x20000u;
  *(v3 + 28) = v27;
  v4 = *(a2 + 37);
  if ((v4 & 0x40000) == 0)
  {
LABEL_61:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_70;
  }

LABEL_69:
  v28 = *(a2 + 29);
  *(v3 + 37) |= 0x40000u;
  *(v3 + 29) = v28;
  v4 = *(a2 + 37);
  if ((v4 & 0x80000) == 0)
  {
LABEL_62:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_71;
  }

LABEL_70:
  v29 = *(a2 + 30);
  *(v3 + 37) |= 0x80000u;
  *(v3 + 30) = v29;
  v4 = *(a2 + 37);
  if ((v4 & 0x100000) == 0)
  {
LABEL_63:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_72;
  }

LABEL_71:
  v30 = *(a2 + 31);
  *(v3 + 37) |= 0x100000u;
  *(v3 + 31) = v30;
  v4 = *(a2 + 37);
  if ((v4 & 0x200000) == 0)
  {
LABEL_64:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_73;
  }

LABEL_72:
  v31 = *(a2 + 32);
  *(v3 + 37) |= 0x200000u;
  *(v3 + 32) = v31;
  v4 = *(a2 + 37);
  if ((v4 & 0x400000) == 0)
  {
LABEL_65:
    if ((v4 & 0x800000) == 0)
    {
      return;
    }

    goto LABEL_75;
  }

LABEL_73:
  v32 = *(a2 + 33);
  if (v32 >= 6)
  {
    __assert_rtn("set_distance_source", "CoreNavigationCLPPrivateDataShared.pb.h", 23332, "::CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry_DistanceSourceType_IsValid(value)");
  }

  *(v3 + 37) |= 0x400000u;
  *(v3 + 33) = v32;
  if ((*(a2 + 37) & 0x800000) != 0)
  {
LABEL_75:
    *(v3 + 37) |= 0x800000u;
    v33 = *(v3 + 17);
    if (!v33)
    {
      operator new();
    }

    v34 = *(a2 + 17);
    if (!v34)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v34 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 136);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::MergeFrom(v33, v34);
  }
}

void sub_1D0CE29D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::~StepCountEntry(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *this)
{
  *this = &unk_1F4CDAE78;
  CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::~StepCountEntry(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *this)
{
  v1 = this;
  v2 = *(this + 11);
  if (v2 != MEMORY[0x1E69E5958] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x1D387ECA0](v2, 0x1012C40EC159624);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ != v1)
  {
    v4 = *(v1 + 1);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v1 + 2);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(v1 + 3);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(v1 + 13);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(v1 + 17);
    if (v8)
    {
      v9 = *(*v8 + 8);

      v9();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::Clear(uint64_t this)
{
  v1 = *(this + 148);
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
        v1 = *(this + 148);
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
        v1 = *(this + 148);
      }
    }

    if ((v1 & 4) != 0)
    {
      v4 = *(this + 24);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
        v1 = *(this + 148);
      }
    }

    *(this + 72) = 0;
    *(this + 40) = 0;
    *(this + 48) = 0;
    *(this + 32) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 80) = 0;
    *(this + 76) = 0;
    *(this + 56) = 0;
    *(this + 64) = 0;
    if ((v1 & 0x1000) != 0)
    {
      v5 = *(this + 88);
      if (v5 != MEMORY[0x1E69E5958])
      {
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    *(this + 96) = 0;
    v1 = *(this + 148);
    if ((v1 & 0x8000) != 0)
    {
      v6 = *(this + 104);
      if (v6)
      {
        if (*(v6 + 36))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
        }

        *(v6 + 36) = 0;
        v1 = *(this + 148);
      }
    }
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 100) = 0;
    *(this + 120) = 0;
    *(this + 128) = 0;
    *(this + 112) = 0;
    if ((v1 & 0x800000) != 0)
    {
      v7 = *(this + 136);
      if (v7)
      {
        if (*(v7 + 20))
        {
          *(v7 + 8) = 0;
        }

        *(v7 + 20) = 0;
      }
    }
  }

  *(this + 148) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x1E69E5958];
  while (2)
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

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 2)
        {
          goto LABEL_59;
        }

        *(this + 37) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v96[0] = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v96))
          {
            return 0;
          }
        }

        else
        {
          v96[0] = *v9;
          *(a2 + 1) = v9 + 1;
        }

        v30 = *(a2 + 14);
        v31 = *(a2 + 15);
        *(a2 + 14) = v30 + 1;
        if (v30 >= v31)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v32 = *(a2 + 14);
        v33 = __OFSUB__(v32, 1);
        v34 = v32 - 1;
        if (v34 < 0 == v33)
        {
          *(a2 + 14) = v34;
        }

        v35 = *(a2 + 1);
        if (v35 >= *(a2 + 2) || *v35 != 18)
        {
          continue;
        }

        *(a2 + 1) = v35 + 1;
        goto LABEL_71;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_59;
        }

LABEL_71:
        *(this + 37) |= 2u;
        v36 = *(this + 2);
        if (!v36)
        {
          operator new();
        }

        v96[0] = 0;
        v37 = *(a2 + 1);
        if (v37 >= *(a2 + 2) || *v37 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v96))
          {
            return 0;
          }
        }

        else
        {
          v96[0] = *v37;
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
        if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v36, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v40 = *(a2 + 14);
        v33 = __OFSUB__(v40, 1);
        v41 = v40 - 1;
        if (v41 < 0 == v33)
        {
          *(a2 + 14) = v41;
        }

        v42 = *(a2 + 1);
        if (v42 >= *(a2 + 2) || *v42 != 26)
        {
          continue;
        }

        *(a2 + 1) = v42 + 1;
LABEL_85:
        *(this + 37) |= 4u;
        v43 = *(this + 3);
        if (!v43)
        {
          operator new();
        }

        v96[0] = 0;
        v44 = *(a2 + 1);
        if (v44 >= *(a2 + 2) || *v44 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v96))
          {
            return 0;
          }
        }

        else
        {
          v96[0] = *v44;
          *(a2 + 1) = v44 + 1;
        }

        v45 = *(a2 + 14);
        v46 = *(a2 + 15);
        *(a2 + 14) = v45 + 1;
        if (v45 >= v46)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v43, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v47 = *(a2 + 14);
        v33 = __OFSUB__(v47, 1);
        v48 = v47 - 1;
        if (v48 < 0 == v33)
        {
          *(a2 + 14) = v48;
        }

        v49 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v49 >= v18 || *v49 != 32)
        {
          continue;
        }

        v19 = v49 + 1;
        *(a2 + 1) = v19;
LABEL_99:
        if (v19 >= v18 || (v50 = *v19, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v51 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v50;
          v51 = v19 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 37) |= 8u;
        if (v51 >= v18 || *v51 != 41)
        {
          continue;
        }

        *(a2 + 1) = v51 + 1;
LABEL_107:
        *v96 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v96) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v96;
        *(this + 37) |= 0x10u;
        v53 = *(a2 + 1);
        if (v53 >= *(a2 + 2) || *v53 != 49)
        {
          continue;
        }

        *(a2 + 1) = v53 + 1;
LABEL_111:
        *v96 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v96) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v96;
        *(this + 37) |= 0x20u;
        v54 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v54 >= v20 || *v54 != 56)
        {
          continue;
        }

        v26 = v54 + 1;
        *(a2 + 1) = v26;
LABEL_115:
        if (v26 >= v20 || (v55 = *v26, v55 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v56 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v55;
          v56 = v26 + 1;
          *(a2 + 1) = v56;
        }

        *(this + 37) |= 0x40u;
        if (v56 >= v20 || *v56 != 64)
        {
          continue;
        }

        v21 = v56 + 1;
        *(a2 + 1) = v21;
LABEL_123:
        if (v21 >= v20 || (v57 = *v21, v57 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v58 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v57;
          v58 = v21 + 1;
          *(a2 + 1) = v58;
        }

        *(this + 37) |= 0x80u;
        if (v58 >= v20 || *v58 != 73)
        {
          continue;
        }

        *(a2 + 1) = v58 + 1;
LABEL_131:
        *v96 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v96) & 1) == 0)
        {
          return 0;
        }

        *(this + 7) = *v96;
        *(this + 37) |= 0x100u;
        v59 = *(a2 + 1);
        if (v59 >= *(a2 + 2) || *v59 != 81)
        {
          continue;
        }

        *(a2 + 1) = v59 + 1;
LABEL_135:
        *v96 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v96) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = *v96;
        *(this + 37) |= 0x200u;
        v60 = *(a2 + 1);
        if (v60 >= *(a2 + 2) || *v60 != 89)
        {
          continue;
        }

        *(a2 + 1) = v60 + 1;
LABEL_139:
        *v96 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v96) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = *v96;
        *(this + 37) |= 0x400u;
        v61 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v61 >= v14 || *v61 != 96)
        {
          continue;
        }

        v15 = v61 + 1;
        *(a2 + 1) = v15;
LABEL_143:
        v96[0] = 0;
        if (v15 >= v14 || (v62 = *v15, (v62 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v96);
          if (!result)
          {
            return result;
          }

          v62 = v96[0];
          v63 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          v63 = v15 + 1;
          *(a2 + 1) = v63;
        }

        *(this + 19) = v62;
        v16 = *(this + 37) | 0x800;
        *(this + 37) = v16;
        if (v63 >= v14 || *v63 != 106)
        {
          continue;
        }

        *(a2 + 1) = v63 + 1;
LABEL_151:
        *(this + 37) = v16 | 0x1000;
        if (*(this + 11) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v64 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v64 >= v12 || *v64 != 112)
        {
          continue;
        }

        v25 = v64 + 1;
        *(a2 + 1) = v25;
LABEL_157:
        v96[0] = 0;
        if (v25 >= v12 || (v65 = *v25, (v65 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v96);
          if (!result)
          {
            return result;
          }

          v65 = v96[0];
          v66 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v66 = v25 + 1;
          *(a2 + 1) = v66;
        }

        *(this + 96) = v65 != 0;
        *(this + 37) |= 0x2000u;
        if (v66 >= v12 || *v66 != 120)
        {
          continue;
        }

        v13 = v66 + 1;
        *(a2 + 1) = v13;
LABEL_165:
        v96[0] = 0;
        if (v13 >= v12 || (v67 = *v13, (v67 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v96);
          if (!result)
          {
            return result;
          }

          v67 = v96[0];
          v68 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v68 = (v13 + 1);
          *(a2 + 1) = v68;
        }

        *(this + 97) = v67 != 0;
        v17 = *(this + 37) | 0x4000;
        *(this + 37) = v17;
        if (v12 - v68 < 2 || *v68 != 130 || v68[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v68 + 2;
LABEL_174:
        *(this + 37) = v17 | 0x8000;
        v69 = *(this + 13);
        if (!v69)
        {
          operator new();
        }

        v96[0] = 0;
        v70 = *(a2 + 1);
        if (v70 >= *(a2 + 2) || *v70 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v96))
          {
            return 0;
          }
        }

        else
        {
          v96[0] = *v70;
          *(a2 + 1) = v70 + 1;
        }

        v71 = *(a2 + 14);
        v72 = *(a2 + 15);
        *(a2 + 14) = v71 + 1;
        if (v71 >= v72)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::MergePartialFromCodedStream(v69, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v73 = *(a2 + 14);
        v33 = __OFSUB__(v73, 1);
        v74 = v73 - 1;
        if (v74 < 0 == v33)
        {
          *(a2 + 14) = v74;
        }

        v75 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v10 - v75 <= 1 || *v75 != 136 || v75[1] != 1)
        {
          continue;
        }

        v11 = (v75 + 2);
        *(a2 + 1) = v11;
LABEL_189:
        if (v11 >= v10 || (v76 = *v11, v76 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
          if (!result)
          {
            return result;
          }

          v77 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 25) = v76;
          v77 = (v11 + 1);
          *(a2 + 1) = v77;
        }

        *(this + 37) |= 0x10000u;
        if (v10 - v77 < 2 || *v77 != 144 || v77[1] != 1)
        {
          continue;
        }

        v22 = (v77 + 2);
        *(a2 + 1) = v22;
LABEL_198:
        if (v22 >= v10 || (v78 = *v22, v78 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
          if (!result)
          {
            return result;
          }

          v79 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 28) = v78;
          v79 = (v22 + 1);
          *(a2 + 1) = v79;
        }

        *(this + 37) |= 0x20000u;
        if (v10 - v79 < 2 || *v79 != 152 || v79[1] != 1)
        {
          continue;
        }

        v27 = (v79 + 2);
        *(a2 + 1) = v27;
LABEL_207:
        if (v27 >= v10 || (v80 = *v27, v80 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 29);
          if (!result)
          {
            return result;
          }

          v81 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 29) = v80;
          v81 = (v27 + 1);
          *(a2 + 1) = v81;
        }

        *(this + 37) |= 0x40000u;
        if (v10 - v81 < 2 || *v81 != 160 || v81[1] != 1)
        {
          continue;
        }

        v29 = (v81 + 2);
        *(a2 + 1) = v29;
LABEL_216:
        if (v29 >= v10 || (v82 = *v29, v82 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
          if (!result)
          {
            return result;
          }

          v83 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 30) = v82;
          v83 = (v29 + 1);
          *(a2 + 1) = v83;
        }

        *(this + 37) |= 0x80000u;
        if (v10 - v83 < 2 || *v83 != 168 || v83[1] != 1)
        {
          continue;
        }

        v23 = (v83 + 2);
        *(a2 + 1) = v23;
LABEL_225:
        if (v23 >= v10 || (v84 = *v23, v84 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
          if (!result)
          {
            return result;
          }

          v85 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 31) = v84;
          v85 = (v23 + 1);
          *(a2 + 1) = v85;
        }

        *(this + 37) |= 0x100000u;
        if (v10 - v85 < 2 || *v85 != 176 || v85[1] != 1)
        {
          continue;
        }

        v24 = (v85 + 2);
        *(a2 + 1) = v24;
LABEL_234:
        if (v24 >= v10 || (v86 = *v24, v86 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
          if (!result)
          {
            return result;
          }

          v87 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 32) = v86;
          v87 = (v24 + 1);
          *(a2 + 1) = v87;
        }

        *(this + 37) |= 0x200000u;
        if (v10 - v87 < 2 || *v87 != 184 || v87[1] != 1)
        {
          continue;
        }

        v28 = (v87 + 2);
        *(a2 + 1) = v28;
LABEL_243:
        v96[0] = 0;
        if (v28 >= v10 || (v88 = *v28, (v88 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v96);
          if (!result)
          {
            return result;
          }

          v88 = v96[0];
        }

        else
        {
          *(a2 + 1) = v28 + 1;
        }

        if (v88 <= 5)
        {
          *(this + 37) |= 0x400000u;
          *(this + 33) = v88;
        }

        v89 = *(a2 + 1);
        if (*(a2 + 4) - v89 < 2 || *v89 != 194 || v89[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v89 + 2;
LABEL_254:
        *(this + 37) |= 0x800000u;
        v90 = *(this + 17);
        if (!v90)
        {
          operator new();
        }

        v96[0] = 0;
        v91 = *(a2 + 1);
        if (v91 >= *(a2 + 2) || *v91 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v96))
          {
            return 0;
          }
        }

        else
        {
          v96[0] = *v91;
          *(a2 + 1) = v91 + 1;
        }

        v92 = *(a2 + 14);
        v93 = *(a2 + 15);
        *(a2 + 14) = v92 + 1;
        if (v92 < v93)
        {
          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::MergePartialFromCodedStream(v90, a2))
          {
            if (*(a2 + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v94 = *(a2 + 14);
              v33 = __OFSUB__(v94, 1);
              v95 = v94 - 1;
              if (v95 < 0 == v33)
              {
                *(a2 + 14) = v95;
              }

              if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }

              continue;
            }
          }
        }

        return 0;
      case 3u:
        if (v7 == 2)
        {
          goto LABEL_85;
        }

        goto LABEL_59;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_99;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_107;
        }

        goto LABEL_59;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_111;
        }

        goto LABEL_59;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v26 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_115;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_123;
      case 9u:
        if (v7 == 1)
        {
          goto LABEL_131;
        }

        goto LABEL_59;
      case 0xAu:
        if (v7 == 1)
        {
          goto LABEL_135;
        }

        goto LABEL_59;
      case 0xBu:
        if (v7 == 1)
        {
          goto LABEL_139;
        }

        goto LABEL_59;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_143;
      case 0xDu:
        if (v7 != 2)
        {
          goto LABEL_59;
        }

        v16 = *(this + 37);
        goto LABEL_151;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v25 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_157;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_165;
      case 0x10u:
        if (v7 != 2)
        {
          goto LABEL_59;
        }

        v17 = *(this + 37);
        goto LABEL_174;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_189;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v22 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_198;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v27 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_207;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v29 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_216;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v23 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_225;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v24 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_234;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_59;
        }

        v28 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_243;
      case 0x18u:
        if (v7 != 2)
        {
          goto LABEL_59;
        }

        goto LABEL_254;
      default:
LABEL_59:
        if (v7 == 4)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 148);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 148);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_32:
  v9 = *(v5 + 24);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 148);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 148);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 44), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 72), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 56), a3);
  v6 = *(v5 + 148);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 64), a3);
  v6 = *(v5 + 148);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 80), a3);
  v6 = *(v5 + 148);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, *(v5 + 76), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  v10 = *(v5 + 88);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 148);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xE, *(v5 + 96), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xF, *(v5 + 97), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_47:
  v11 = *(v5 + 104);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 104);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v11, a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 100), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 112), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 116), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 120), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 124), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

LABEL_56:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x17, *(v5 + 132), a2, a4);
    if ((*(v5 + 148) & 0x800000) == 0)
    {
      return this;
    }

    goto LABEL_57;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 128), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x400000) != 0)
  {
    goto LABEL_56;
  }

LABEL_24:
  if ((v6 & 0x800000) == 0)
  {
    return this;
  }

LABEL_57:
  v12 = *(v5 + 136);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 136);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, v12, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::ByteSize(uint64_t this)
{
  v1 = this;
  v2 = *(this + 148);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_55;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(this + 8);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 8);
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
  v2 = *(v1 + 148);
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v8 = *(v1 + 16);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 16);
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
    v2 = *(v1 + 148);
  }

LABEL_24:
  if ((v2 & 4) != 0)
  {
    v11 = *(v1 + 24);
    if (!v11)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 24);
    }

    v12 = *(v11 + 36);
    if (*(v11 + 36))
    {
      v13 = (v12 << 31 >> 31) & 9;
      if ((v12 & 2) != 0)
      {
        v13 += 9;
      }

      if ((v12 & 4) != 0)
      {
        v12 = v13 + 9;
      }

      else
      {
        v12 = v13;
      }
    }

    *(v11 + 32) = v12;
    v3 += v12 + 2;
    v2 = *(v1 + 148);
    if ((v2 & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  if ((v2 & 8) != 0)
  {
LABEL_36:
    this = *(v1 + 40);
    if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v14 = this + 1;
      v2 = *(v1 + 148);
    }

    else
    {
      v14 = 2;
    }

    v3 += v14;
  }

LABEL_40:
  v15 = v3 + 9;
  if ((v2 & 0x10) == 0)
  {
    v15 = v3;
  }

  if ((v2 & 0x20) != 0)
  {
    v4 = v15 + 9;
  }

  else
  {
    v4 = v15;
  }

  if ((v2 & 0x40) != 0)
  {
    this = *(v1 + 44);
    if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v16 = this + 1;
      v2 = *(v1 + 148);
    }

    else
    {
      v16 = 2;
    }

    v4 = (v16 + v4);
  }

  if ((v2 & 0x80) != 0)
  {
    this = *(v1 + 72);
    if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v17 = this + 1;
      v2 = *(v1 + 148);
    }

    else
    {
      v17 = 2;
    }

    v4 = (v17 + v4);
  }

LABEL_55:
  if ((v2 & 0xFF00) != 0)
  {
    v18 = v4 + 9;
    if ((v2 & 0x100) == 0)
    {
      v18 = v4;
    }

    if ((v2 & 0x200) != 0)
    {
      v18 += 9;
    }

    if ((v2 & 0x400) != 0)
    {
      v19 = v18 + 9;
    }

    else
    {
      v19 = v18;
    }

    if ((v2 & 0x800) != 0)
    {
      this = *(v1 + 76);
      if ((this & 0x80000000) != 0)
      {
        v20 = 11;
      }

      else if (this >= 0x80)
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
        v20 = this + 1;
        v2 = *(v1 + 148);
      }

      else
      {
        v20 = 2;
      }

      v19 += v20;
    }

    if ((v2 & 0x1000) != 0)
    {
      v21 = *(v1 + 88);
      v22 = *(v21 + 23);
      v23 = v22;
      v24 = *(v21 + 8);
      if ((v22 & 0x80u) == 0)
      {
        v25 = *(v21 + 23);
      }

      else
      {
        v25 = v24;
      }

      if (v25 >= 0x80)
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
        v22 = *(v21 + 23);
        v24 = *(v21 + 8);
        v2 = *(v1 + 148);
        v23 = *(v21 + 23);
      }

      else
      {
        this = 1;
      }

      if (v23 < 0)
      {
        v22 = v24;
      }

      v19 += this + v22 + 1;
    }

    v4 = ((v2 >> 12) & 2) + ((v2 >> 13) & 2) + v19;
    if ((v2 & 0x8000) != 0)
    {
      v26 = *(v1 + 104);
      if (!v26)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 104);
      }

      v27 = *(v26 + 36);
      v28 = (v27 << 31 >> 31) & 9;
      if ((v27 & 2) != 0)
      {
        v28 += 9;
      }

      if ((v27 & 4) != 0)
      {
        v28 += 9;
      }

      if (*(v26 + 36))
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      *(v26 + 32) = v29;
      v4 = (v4 + v29 + 3);
      v2 = *(v1 + 148);
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v30 = *(v1 + 100);
      if (v30 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 2;
        v2 = *(v1 + 148);
      }

      else
      {
        v31 = 3;
      }

      v4 = (v31 + v4);
      if ((v2 & 0x20000) == 0)
      {
LABEL_94:
        if ((v2 & 0x40000) == 0)
        {
          goto LABEL_95;
        }

        goto LABEL_109;
      }
    }

    else if ((v2 & 0x20000) == 0)
    {
      goto LABEL_94;
    }

    v32 = *(v1 + 112);
    if (v32 >= 0x80)
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
      v2 = *(v1 + 148);
    }

    else
    {
      v33 = 3;
    }

    v4 = (v33 + v4);
    if ((v2 & 0x40000) == 0)
    {
LABEL_95:
      if ((v2 & 0x80000) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_113;
    }

LABEL_109:
    v34 = *(v1 + 116);
    if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
      v2 = *(v1 + 148);
    }

    else
    {
      v35 = 3;
    }

    v4 = (v35 + v4);
    if ((v2 & 0x80000) == 0)
    {
LABEL_96:
      if ((v2 & 0x100000) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_117;
    }

LABEL_113:
    v36 = *(v1 + 120);
    if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
      v2 = *(v1 + 148);
    }

    else
    {
      v37 = 3;
    }

    v4 = (v37 + v4);
    if ((v2 & 0x100000) == 0)
    {
LABEL_97:
      if ((v2 & 0x200000) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_121;
    }

LABEL_117:
    v38 = *(v1 + 124);
    if (v38 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
      v2 = *(v1 + 148);
    }

    else
    {
      v39 = 3;
    }

    v4 = (v39 + v4);
    if ((v2 & 0x200000) == 0)
    {
LABEL_98:
      if ((v2 & 0x400000) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_125;
    }

LABEL_121:
    v40 = *(v1 + 128);
    if (v40 >= 0x80)
    {
      v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 2;
      v2 = *(v1 + 148);
    }

    else
    {
      v41 = 3;
    }

    v4 = (v41 + v4);
    if ((v2 & 0x400000) == 0)
    {
LABEL_99:
      if ((v2 & 0x800000) == 0)
      {
        goto LABEL_134;
      }

LABEL_131:
      v44 = *(v1 + 136);
      if (!v44)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
        v44 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 136);
      }

      v4 = v4 + CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::ByteSize(v44) + 3;
      goto LABEL_134;
    }

LABEL_125:
    v42 = *(v1 + 132);
    if ((v42 & 0x80000000) != 0)
    {
      v43 = 12;
    }

    else if (v42 >= 0x80)
    {
      v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42) + 2;
      v2 = *(v1 + 148);
    }

    else
    {
      v43 = 3;
    }

    v4 = (v43 + v4);
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_131;
  }

LABEL_134:
  *(v1 + 144) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *this, const CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::Swap(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *this, CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *a2)
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
    LODWORD(v4) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
    LODWORD(v4) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v4;
    LODWORD(v4) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v4;
    v7 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v8;
    result = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = result;
    LODWORD(v4) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v4;
    v10 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v10;
    LOBYTE(v10) = *(this + 96);
    *(this + 96) = *(a2 + 96);
    *(a2 + 96) = v10;
    LOBYTE(v10) = *(this + 97);
    *(this + 97) = *(a2 + 97);
    *(a2 + 97) = v10;
    v11 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v11;
    LODWORD(v11) = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v11;
    LODWORD(v11) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v11;
    LODWORD(v11) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v11;
    LODWORD(v11) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v11;
    LODWORD(v11) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v11;
    LODWORD(v11) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v11;
    LODWORD(v11) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v11;
    v12 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v12;
    LODWORD(v12) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v12;
    LODWORD(v12) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v12;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::PedometerPathStraightness(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *this, const CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *a2)
{
  *this = &unk_1F4CDAEF0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *this, const CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      *(this + 11) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::default_instance_ + 8);
      }

      result = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
      v5 = *(a2 + 11);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 11) |= 2u;
    *(this + 2) = result;
    v5 = *(a2 + 11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_16;
    }

LABEL_15:
    result = *(a2 + 3);
    *(this + 11) |= 4u;
    *(this + 3) = result;
    if ((*(a2 + 11) & 8) == 0)
    {
      return result;
    }

LABEL_16:
    *(this + 11) |= 8u;
    v8 = *(this + 4);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 4);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::default_instance_ + 32);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v8, v9);
  }

  return result;
}

void sub_1D0CE4964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::~PedometerPathStraightness(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *this)
{
  *this = &unk_1F4CDAEF0;
  CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::~PedometerPathStraightness(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 4);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 44);
  if (v1)
  {
    if (*(this + 44))
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
        v1 = *(this + 44);
      }
    }

    *(this + 16) = 0;
    *(this + 24) = 0;
    if ((v1 & 8) != 0)
    {
      v3 = *(this + 32);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
      }
    }
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 != 3)
        {
          if (v6 == 4 && v7 == 2)
          {
            v8 = *(this + 11);
            goto LABEL_42;
          }

          goto LABEL_22;
        }

        if (v7 != 1)
        {
          goto LABEL_22;
        }

LABEL_38:
        *v26 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v26) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v26;
        v8 = *(this + 11) | 4;
        *(this + 11) = v8;
        v18 = *(a2 + 1);
        if (v18 < *(a2 + 2) && *v18 == 34)
        {
          *(a2 + 1) = v18 + 1;
LABEL_42:
          *(this + 11) = v8 | 8;
          v19 = *(this + 4);
          if (!v19)
          {
            operator new();
          }

          v26[0] = 0;
          v20 = *(a2 + 1);
          if (v20 >= *(a2 + 2) || *v20 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v26))
            {
              return 0;
            }
          }

          else
          {
            v26[0] = *v20;
            *(a2 + 1) = v20 + 1;
          }

          v21 = *(a2 + 14);
          v22 = *(a2 + 15);
          *(a2 + 14) = v21 + 1;
          if (v21 >= v22)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v19, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v23 = *(a2 + 14);
          v14 = __OFSUB__(v23, 1);
          v24 = v23 - 1;
          if (v24 < 0 == v14)
          {
            *(a2 + 14) = v24;
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

      if (v6 != 1)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_22;
      }

      *(this + 11) |= 1u;
      v9 = *(this + 1);
      if (!v9)
      {
        operator new();
      }

      v26[0] = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v26))
        {
          return 0;
        }
      }

      else
      {
        v26[0] = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v11 = *(a2 + 14);
      v12 = *(a2 + 15);
      *(a2 + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v13 = *(a2 + 14);
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v15 < 0 == v14)
      {
        *(a2 + 14) = v15;
      }

      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 17)
      {
        *(a2 + 1) = v16 + 1;
LABEL_34:
        *v26 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v26) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v26;
        *(this + 11) |= 2u;
        v17 = *(a2 + 1);
        if (v17 < *(a2 + 2) && *v17 == 25)
        {
          *(a2 + 1) = v17 + 1;
          goto LABEL_38;
        }
      }
    }

    if (v6 == 2 && v7 == 1)
    {
      goto LABEL_34;
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
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
      if ((*(v5 + 44) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 44);
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
  v8 = *(v5 + 32);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::default_instance_ + 32);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *this)
{
  LOBYTE(v2) = *(this + 44);
  if (v2)
  {
    if (*(this + 44))
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::default_instance_ + 8);
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
      v2 = *(this + 11);
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
      v4 = v3 + 9;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 8) != 0)
    {
      v8 = *(this + 4);
      if (!v8)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::default_instance_ + 32);
      }

      v9 = *(v8 + 36);
      v10 = (v9 << 31 >> 31) & 9;
      if ((v9 & 2) != 0)
      {
        v10 += 9;
      }

      if ((v9 & 4) != 0)
      {
        v10 += 9;
      }

      if (*(v8 + 36))
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      *(v8 + 32) = v11;
      v4 = (v4 + v11 + 2);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 10) = v4;
  return v4;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *this, const CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::Swap(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *this, CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    result = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = result;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    LODWORD(v5) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    LODWORD(v5) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v5;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCount::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::StepCount *CoreNavigation::CLP::LogEntry::PrivateData::StepCount::StepCount(CoreNavigation::CLP::LogEntry::PrivateData::StepCount *this, const CoreNavigation::CLP::LogEntry::PrivateData::StepCount *a2)
{
  *this = &unk_1F4CDAF68;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::StepCount::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::StepCount::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::StepCount *this, const CoreNavigation::CLP::LogEntry::PrivateData::StepCount *a2)
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
        v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCount::default_instance_ + 8);
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
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCount::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::MergeFrom(v8, v9);
  }
}

void sub_1D0CE5518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::StepCount::~StepCount(CoreNavigation::CLP::LogEntry::PrivateData::StepCount *this)
{
  *this = &unk_1F4CDAF68;
  CoreNavigation::CLP::LogEntry::PrivateData::StepCount::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::StepCount::~StepCount(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::StepCount::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::StepCount *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::StepCount::default_instance_ != this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCount::Clear(uint64_t this)
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
        this = CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::Clear(this);
      }
    }
  }

  *(v1 + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCount::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::StepCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCount::default_instance_ + 8);
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
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCount::default_instance_ + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCount::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::StepCount *this)
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
      v4 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCount::default_instance_ + 8);
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
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCount::default_instance_ + 16);
    }

    v10 = CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::ByteSize(v9);
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

void CoreNavigation::CLP::LogEntry::PrivateData::StepCount::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::StepCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::StepCount::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::StepCount::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::StepCount *this, const CoreNavigation::CLP::LogEntry::PrivateData::StepCount *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::StepCount::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCount::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::StepCount *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MotionTypeVector3(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDAFE0;
  *(this + 6) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 24);
  if (v5)
  {
    if (*(a2 + 24))
    {
      result = *(a2 + 2);
      *(this + 6) |= 1u;
      *(this + 2) = result;
      v5 = *(a2 + 6);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 3);
    *(this + 6) |= 2u;
    *(this + 3) = result;
    if ((*(a2 + 6) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 4);
    *(this + 6) |= 4u;
    *(this + 4) = result;
  }

  return result;
}

void sub_1D0CE5FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::~MotionTypeVector3(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *this)
{
  *this = &unk_1F4CDAFE0;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::~MotionTypeVector3(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        if (v7 != 5)
        {
          goto LABEL_20;
        }

LABEL_23:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v11) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v11;
        *(this + 6) |= 4u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || v7 != 5)
      {
        goto LABEL_20;
      }

      v13 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v13) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = v13;
      *(this + 6) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 21)
      {
        *(a2 + 1) = v8 + 1;
LABEL_15:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v12;
        *(this + 6) |= 2u;
        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 29)
        {
          *(a2 + 1) = v9 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v7 == 5)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 24);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v4 + 12), a3);
    if ((*(v4 + 24) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 8), a3);
  v5 = *(v4 + 24);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v6 = *(v4 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, v6, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *this)
{
  v1 = *(this + 24);
  if (*(this + 24))
  {
    v2 = ((v1 << 31) >> 31) & 5;
    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 5;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 5) = v1;
  return v1;
}

float CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::Swap(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *this, CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3 *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    result = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = result;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::MotionTypeDoubleVector4(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *a2)
{
  *this = &unk_1F4CDB058;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      result = *(a2 + 1);
      *(this + 11) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 11);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 11) |= 2u;
    *(this + 2) = result;
    v5 = *(a2 + 11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_12:
    result = *(a2 + 3);
    *(this + 11) |= 4u;
    *(this + 3) = result;
    if ((*(a2 + 11) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 4);
    *(this + 11) |= 8u;
    *(this + 4) = result;
  }

  return result;
}

void sub_1D0CE6698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::~MotionTypeDoubleVector4(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *this)
{
  *this = &unk_1F4CDB058;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::~MotionTypeDoubleVector4(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (v7 == 1)
          {
            goto LABEL_28;
          }

          goto LABEL_25;
        }

        if (v6 != 4 || v7 != 1)
        {
          goto LABEL_25;
        }

LABEL_32:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v12;
        *(this + 11) |= 8u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if (v7 != 1)
      {
        goto LABEL_25;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v12;
      *(this + 11) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 17)
      {
        *(a2 + 1) = v8 + 1;
LABEL_20:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v12;
        *(this + 11) |= 2u;
        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 25)
        {
          *(a2 + 1) = v9 + 1;
LABEL_28:
          v12 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v12;
          *(this + 11) |= 4u;
          v10 = *(a2 + 1);
          if (v10 < *(a2 + 2) && *v10 == 33)
          {
            *(a2 + 1) = v10 + 1;
            goto LABEL_32;
          }
        }
      }
    }

    if (v6 == 2 && v7 == 1)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 44);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v5 = *(v4 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 24), a3);
      if ((*(v4 + 44) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
  v5 = *(v4 + 44);
  if ((v5 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v6 = *(v4 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, v6, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *this)
{
  v1 = *(this + 44);
  if (*(this + 44))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 8) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 10) = v1;
  return v1;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::Swap(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *this, CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *a2)
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
    v6 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v6;
    v7 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v7;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0xFFFFFFFF00000000;
  *(this + 40) = 0;
  *(this + 68) = 0;
  *(this + 60) = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::MotionTypeCompass(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *a2)
{
  *this = &unk_1F4CDB0D0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0xFFFFFFFF00000000;
  *(this + 40) = 0;
  *(this + 17) = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 60) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v5 = *(a2 + 17);
  if (v5)
  {
    if (v5)
    {
      *(this + 17) |= 1u;
      v7 = *(this + 1);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 1);
      if (!v8)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_ + 8);
      }

      *&result = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergeFrom(v7, v8);
      v5 = *(a2 + 17);
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

    *(this + 17) |= 2u;
    v9 = *(this + 2);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 2);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_ + 16);
    }

    *&result = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergeFrom(v9, v10);
    v5 = *(a2 + 17);
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
    LODWORD(result) = *(a2 + 6);
    *(this + 17) |= 4u;
    *(this + 6) = LODWORD(result);
    v5 = *(a2 + 17);
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
    LODWORD(result) = *(a2 + 7);
    *(this + 17) |= 8u;
    *(this + 7) = LODWORD(result);
    v5 = *(a2 + 17);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_32;
    }

LABEL_31:
    LODWORD(result) = *(a2 + 8);
    *(this + 17) |= 0x10u;
    *(this + 8) = LODWORD(result);
    v5 = *(a2 + 17);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_32:
    v11 = *(a2 + 9);
    if ((v11 + 1) >= 8)
    {
      __assert_rtn("set_calibration_level", "CoreNavigationCLPPrivateDataShared.pb.h", 23955, "::CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompassCalibrationLevel_IsValid(value)");
    }

    *(this + 17) |= 0x20u;
    *(this + 9) = v11;
    v5 = *(a2 + 17);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v6 = *(a2 + 40);
    *(this + 17) |= 0x40u;
    *(this + 40) = v6;
    v5 = *(a2 + 17);
LABEL_12:
    if ((v5 & 0x80) != 0)
    {
      LODWORD(result) = *(a2 + 11);
      *(this + 17) |= 0x80u;
      *(this + 11) = LODWORD(result);
      v5 = *(a2 + 17);
    }
  }

  if ((v5 & 0xFF00) == 0)
  {
    return result;
  }

  if ((v5 & 0x100) == 0)
  {
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_17;
    }

LABEL_36:
    LODWORD(result) = *(a2 + 13);
    *(this + 17) |= 0x200u;
    *(this + 13) = LODWORD(result);
    if ((*(a2 + 17) & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_37;
  }

  LODWORD(result) = *(a2 + 12);
  *(this + 17) |= 0x100u;
  *(this + 12) = LODWORD(result);
  v5 = *(a2 + 17);
  if ((v5 & 0x200) != 0)
  {
    goto LABEL_36;
  }

LABEL_17:
  if ((v5 & 0x400) == 0)
  {
    return result;
  }

LABEL_37:
  *(this + 17) |= 0x400u;
  v12 = *(this + 7);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 7);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_ + 56);
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::MergeFrom(v12, v13);
}

void sub_1D0CE70A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::~MotionTypeCompass(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *this)
{
  *this = &unk_1F4CDB0D0;
  CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::~MotionTypeCompass(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 7);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::Clear(uint64_t this)
{
  v1 = *(this + 68);
  if (v1)
  {
    if (v1)
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
        v1 = *(this + 68);
      }
    }

    if ((v1 & 2) != 0)
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
        v1 = *(this + 68);
      }
    }

    *(this + 24) = 0;
    *(this + 32) = 0xFFFFFFFF00000000;
    *(this + 40) = 0;
    *(this + 44) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    if ((v1 & 0x400) != 0)
    {
      v4 = *(this + 56);
      if (v4)
      {
        if (*(v4 + 44))
        {
          *(v4 + 24) = 0u;
          *(v4 + 8) = 0u;
        }

        *(v4 + 44) = 0;
      }
    }
  }

  *(this + 68) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
            if (TagFallback >> 3 > 5)
            {
              break;
            }

            if (TagFallback >> 3 <= 2)
            {
              if (v6 != 1)
              {
                if (v6 != 2 || v7 != 2)
                {
                  goto LABEL_45;
                }

                goto LABEL_57;
              }

              if (v7 != 2)
              {
                goto LABEL_45;
              }

              *(this + 17) |= 1u;
              v9 = *(this + 1);
              if (!v9)
              {
                operator new();
              }

              v45 = 0;
              v10 = *(a2 + 1);
              if (v10 >= *(a2 + 2) || *v10 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45))
                {
                  return 0;
                }
              }

              else
              {
                v45 = *v10;
                *(a2 + 1) = v10 + 1;
              }

              v15 = *(a2 + 14);
              v16 = *(a2 + 15);
              *(a2 + 14) = v15 + 1;
              if (v15 >= v16)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
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
              if (v20 < *(a2 + 2) && *v20 == 18)
              {
                *(a2 + 1) = v20 + 1;
LABEL_57:
                *(this + 17) |= 2u;
                v21 = *(this + 2);
                if (!v21)
                {
                  operator new();
                }

                v45 = 0;
                v22 = *(a2 + 1);
                if (v22 >= *(a2 + 2) || *v22 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45))
                  {
                    return 0;
                  }
                }

                else
                {
                  v45 = *v22;
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
                if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergePartialFromCodedStream(v21, a2) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v25 = *(a2 + 14);
                v18 = __OFSUB__(v25, 1);
                v26 = v25 - 1;
                if (v26 < 0 == v18)
                {
                  *(a2 + 14) = v26;
                }

                v27 = *(a2 + 1);
                if (v27 < *(a2 + 2) && *v27 == 29)
                {
                  *(a2 + 1) = v27 + 1;
LABEL_71:
                  v45 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v45) & 1) == 0)
                  {
                    return 0;
                  }

                  *(this + 6) = v45;
                  *(this + 17) |= 4u;
                  v28 = *(a2 + 1);
                  if (v28 < *(a2 + 2) && *v28 == 37)
                  {
                    *(a2 + 1) = v28 + 1;
                    goto LABEL_75;
                  }
                }
              }
            }

            else
            {
              if (v6 == 3)
              {
                if (v7 != 5)
                {
                  goto LABEL_45;
                }

                goto LABEL_71;
              }

              if (v6 != 4)
              {
                if (v6 != 5 || v7 != 5)
                {
                  goto LABEL_45;
                }

                goto LABEL_79;
              }

              if (v7 != 5)
              {
                goto LABEL_45;
              }

LABEL_75:
              v45 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v45) & 1) == 0)
              {
                return 0;
              }

              *(this + 7) = v45;
              *(this + 17) |= 8u;
              v29 = *(a2 + 1);
              if (v29 < *(a2 + 2) && *v29 == 45)
              {
                *(a2 + 1) = v29 + 1;
LABEL_79:
                v45 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v45) & 1) == 0)
                {
                  return 0;
                }

                *(this + 8) = v45;
                *(this + 17) |= 0x10u;
                v30 = *(a2 + 1);
                v13 = *(a2 + 2);
                if (v30 < v13 && *v30 == 48)
                {
                  v14 = v30 + 1;
                  *(a2 + 1) = v14;
LABEL_83:
                  v45 = 0;
                  if (v14 >= v13 || (v31 = *v14, (v31 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
                    if (!result)
                    {
                      return result;
                    }

                    v31 = v45;
                  }

                  else
                  {
                    *(a2 + 1) = v14 + 1;
                  }

                  if (v31 + 1 <= 7)
                  {
                    *(this + 17) |= 0x20u;
                    *(this + 9) = v31;
                  }

                  v33 = *(a2 + 1);
                  v11 = *(a2 + 2);
                  if (v33 < v11 && *v33 == 56)
                  {
                    v12 = v33 + 1;
                    *(a2 + 1) = v12;
                    goto LABEL_93;
                  }
                }
              }
            }
          }

          if (TagFallback >> 3 > 8)
          {
            break;
          }

          if (v6 == 6)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_45;
            }

            v14 = *(a2 + 1);
            v13 = *(a2 + 2);
            goto LABEL_83;
          }

          if (v6 == 7)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_45;
            }

            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
LABEL_93:
            v45 = 0;
            if (v12 >= v11 || (v34 = *v12, (v34 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
              if (!result)
              {
                return result;
              }

              v34 = v45;
              v35 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v35 = v12 + 1;
              *(a2 + 1) = v35;
            }

            *(this + 40) = v34 != 0;
            *(this + 17) |= 0x40u;
            if (v35 < v11 && *v35 == 69)
            {
              *(a2 + 1) = v35 + 1;
LABEL_101:
              v45 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v45) & 1) == 0)
              {
                return 0;
              }

              *(this + 11) = v45;
              *(this + 17) |= 0x80u;
              v36 = *(a2 + 1);
              if (v36 < *(a2 + 2) && *v36 == 77)
              {
                *(a2 + 1) = v36 + 1;
                goto LABEL_105;
              }
            }
          }

          else
          {
            if (v6 == 8 && v7 == 5)
            {
              goto LABEL_101;
            }

LABEL_45:
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

        if (v6 != 9)
        {
          break;
        }

        if (v7 != 5)
        {
          goto LABEL_45;
        }

LABEL_105:
        v45 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v45) & 1) == 0)
        {
          return 0;
        }

        *(this + 12) = v45;
        *(this + 17) |= 0x100u;
        v37 = *(a2 + 1);
        if (v37 < *(a2 + 2) && *v37 == 85)
        {
          *(a2 + 1) = v37 + 1;
          goto LABEL_109;
        }
      }

      if (v6 != 10)
      {
        if (v6 == 11 && v7 == 2)
        {
          v8 = *(this + 17);
          goto LABEL_113;
        }

        goto LABEL_45;
      }

      if (v7 != 5)
      {
        goto LABEL_45;
      }

LABEL_109:
      v45 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v45) & 1) == 0)
      {
        return 0;
      }

      *(this + 13) = v45;
      v8 = *(this + 17) | 0x200;
      *(this + 17) = v8;
      v38 = *(a2 + 1);
    }

    while (v38 >= *(a2 + 2) || *v38 != 90);
    *(a2 + 1) = v38 + 1;
LABEL_113:
    *(this + 17) = v8 | 0x400;
    v39 = *(this + 7);
    if (!v39)
    {
      operator new();
    }

    v45 = 0;
    v40 = *(a2 + 1);
    if (v40 >= *(a2 + 2) || *v40 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45))
      {
        return 0;
      }
    }

    else
    {
      v45 = *v40;
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
    if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::MergePartialFromCodedStream(v39, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v43 = *(a2 + 14);
    v18 = __OFSUB__(v43, 1);
    v44 = v43 - 1;
    if (v44 < 0 == v18)
    {
      *(a2 + 14) = v44;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 68);
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

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 68);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 68);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
  v6 = *(v5 + 68);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 68);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 40), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 44), a3);
  v6 = *(v5 + 68);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_26:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xA, a2, *(v5 + 52), a3);
    if ((*(v5 + 68) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, *(v5 + 48), a3);
  v6 = *(v5 + 68);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  if ((v6 & 0x400) == 0)
  {
    return this;
  }

LABEL_27:
  v9 = *(v5 + 56);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_ + 56);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v9, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *this)
{
  v2 = *(this + 17);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_41;
  }

  if (v2)
  {
    v5 = *(this + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_ + 8);
    }

    v6 = *(v5 + 24);
    if (*(v5 + 24))
    {
      v7 = (v6 << 31 >> 31) & 5;
      if ((v6 & 2) != 0)
      {
        v7 += 5;
      }

      if ((v6 & 4) != 0)
      {
        v6 = v7 + 5;
      }

      else
      {
        v6 = v7;
      }
    }

    *(v5 + 20) = v6;
    v3 = v6 + 2;
    v2 = *(this + 17);
    if ((v2 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v8 = *(this + 2);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_ + 16);
    }

    v9 = *(v8 + 24);
    if (*(v8 + 24))
    {
      v10 = (v9 << 31 >> 31) & 5;
      if ((v9 & 2) != 0)
      {
        v10 += 5;
      }

      if ((v9 & 4) != 0)
      {
        v9 = v10 + 5;
      }

      else
      {
        v9 = v10;
      }
    }

    *(v8 + 20) = v9;
    v3 += v9 + 2;
    v2 = *(this + 17);
  }

LABEL_24:
  v11 = v3 + 5;
  if ((v2 & 4) == 0)
  {
    v11 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v11 += 5;
  }

  if ((v2 & 0x10) != 0)
  {
    v12 = v11 + 5;
  }

  else
  {
    v12 = v11;
  }

  if ((v2 & 0x20) != 0)
  {
    v13 = *(this + 9);
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

    v12 += v14;
  }

  v15 = ((v2 >> 5) & 2) + v12;
  if ((v2 & 0x80) != 0)
  {
    v4 = v15 + 5;
  }

  else
  {
    v4 = v15;
  }

LABEL_41:
  if ((v2 & 0xFF00) != 0)
  {
    v16 = v4 + 5;
    if ((v2 & 0x100) == 0)
    {
      v16 = v4;
    }

    if ((v2 & 0x200) != 0)
    {
      v4 = v16 + 5;
    }

    else
    {
      v4 = v16;
    }

    if ((v2 & 0x400) != 0)
    {
      v17 = *(this + 7);
      if (!v17)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
        v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_ + 56);
      }

      v4 = v4 + CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::ByteSize(v17) + 2;
    }
  }

  *(this + 16) = v4;
  return v4;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::Swap(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *this, CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v4;
    v5 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v5;
    v6 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v6;
    LODWORD(v3) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v3;
    LOBYTE(v3) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v3;
    v7 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v7;
    v8 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v8;
    result = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = result;
    v10 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v10;
    LODWORD(v10) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v10;
    LODWORD(v10) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v10;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::SharedCtor(uint64_t this)
{
  *(this + 36) = 0;
  *(this + 40) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  *(this + 32) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::CompassTypeSample(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *a2)
{
  *(this + 9) = 0;
  *(this + 10) = 0;
  *this = &unk_1F4CDB148;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v5) = *(a2 + 40);
  if (!v5)
  {
    return *&v4;
  }

  if (*(a2 + 40))
  {
    *(this + 10) |= 1u;
    v7 = *(this + 1);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 1);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::default_instance_ + 8);
    }

    v4 = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v7, v8);
    v5 = *(a2 + 10);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a2 + 40) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 10) |= 2u;
  v9 = *(this + 2);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 2);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::default_instance_ + 16);
  }

  v4 = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::MergeFrom(v9, v10);
  v5 = *(a2 + 10);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    LODWORD(v4) = *(a2 + 7);
    *(this + 10) |= 8u;
    *(this + 7) = LODWORD(v4);
    if ((*(a2 + 10) & 0x10) != 0)
    {
      goto LABEL_9;
    }

    return *&v4;
  }

LABEL_21:
  LODWORD(v4) = *(a2 + 6);
  *(this + 10) |= 4u;
  *(this + 6) = LODWORD(v4);
  v5 = *(a2 + 10);
  if ((v5 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v5 & 0x10) != 0)
  {
LABEL_9:
    v6 = *(a2 + 32);
    *(this + 10) |= 0x10u;
    *(this + 32) = v6;
  }

  return *&v4;
}

void sub_1D0CE82A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::~CompassTypeSample(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *this)
{
  *this = &unk_1F4CDB148;
  CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::~CompassTypeSample(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::default_instance_ != this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 40);
  if (v2)
  {
    if (*(this + 40))
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
        v2 = *(this + 40);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::Clear(this);
      }
    }

    *(v1 + 32) = 0;
    *(v1 + 24) = 0;
  }

  *(v1 + 40) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 == 3)
        {
          if (v7 != 5)
          {
            goto LABEL_21;
          }

          goto LABEL_52;
        }

        if (v6 == 4)
        {
          if (v7 != 5)
          {
            goto LABEL_21;
          }

LABEL_56:
          v30 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v30) & 1) == 0)
          {
            return 0;
          }

          *(this + 7) = v30;
          *(this + 10) |= 8u;
          v26 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v26 < v8 && *v26 == 40)
          {
            v9 = v26 + 1;
            *(a2 + 1) = v9;
LABEL_60:
            v30 = 0;
            if (v9 >= v8 || (v27 = *v9, (v27 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30);
              if (!result)
              {
                return result;
              }

              v27 = v30;
              v28 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v28 = v9 + 1;
              *(a2 + 1) = v28;
            }

            *(this + 32) = v27 != 0;
            *(this + 10) |= 0x10u;
            if (v28 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
          if (v6 == 5 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_60;
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

      if (v6 != 1)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_21;
      }

      *(this + 10) |= 1u;
      v10 = *(this + 1);
      if (!v10)
      {
        operator new();
      }

      v30 = 0;
      v11 = *(a2 + 1);
      if (v11 >= *(a2 + 2) || *v11 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
        {
          return 0;
        }
      }

      else
      {
        v30 = *v11;
        *(a2 + 1) = v11 + 1;
      }

      v12 = *(a2 + 14);
      v13 = *(a2 + 15);
      *(a2 + 14) = v12 + 1;
      if (v12 >= v13)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v10, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v14 = *(a2 + 14);
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v16 < 0 == v15)
      {
        *(a2 + 14) = v16;
      }

      v17 = *(a2 + 1);
      if (v17 < *(a2 + 2) && *v17 == 18)
      {
        *(a2 + 1) = v17 + 1;
        goto LABEL_38;
      }
    }

    if (v6 != 2 || v7 != 2)
    {
      goto LABEL_21;
    }

LABEL_38:
    *(this + 10) |= 2u;
    v18 = *(this + 2);
    if (!v18)
    {
      operator new();
    }

    v30 = 0;
    v19 = *(a2 + 1);
    if (v19 >= *(a2 + 2) || *v19 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
      {
        return 0;
      }
    }

    else
    {
      v30 = *v19;
      *(a2 + 1) = v19 + 1;
    }

    v20 = *(a2 + 14);
    v21 = *(a2 + 15);
    *(a2 + 14) = v20 + 1;
    if (v20 >= v21)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::MergePartialFromCodedStream(v18, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v22 = *(a2 + 14);
    v15 = __OFSUB__(v22, 1);
    v23 = v22 - 1;
    if (v23 < 0 == v15)
    {
      *(a2 + 14) = v23;
    }

    v24 = *(a2 + 1);
    if (v24 < *(a2 + 2) && *v24 == 29)
    {
      *(a2 + 1) = v24 + 1;
LABEL_52:
      v30 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v30) & 1) == 0)
      {
        return 0;
      }

      *(this + 6) = v30;
      *(this + 10) |= 4u;
      v25 = *(a2 + 1);
      if (v25 < *(a2 + 2) && *v25 == 37)
      {
        *(a2 + 1) = v25 + 1;
        goto LABEL_56;
      }
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 40);
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

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
    if ((*(v5 + 40) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 40);
  if ((v6 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_15:
  v9 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v9, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *this)
{
  v2 = *(this + 10);
  if (!v2)
  {
    result = 0;
    goto LABEL_26;
  }

  if (v2)
  {
    v5 = *(this + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::default_instance_ + 8);
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
    v2 = *(this + 10);
    if ((v2 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v8 = *(this + 2);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::default_instance_ + 16);
    }

    v9 = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::ByteSize(v8);
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
    v2 = *(this + 10);
  }

LABEL_21:
  v12 = v3 + 5;
  if ((v2 & 4) == 0)
  {
    v12 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v12 += 5;
  }

  result = v12 + ((v2 >> 3) & 2);
LABEL_26:
  *(this + 9) = result;
  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::Swap(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *this, CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v4;
    result = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = result;
    LOBYTE(v3) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v3;
    LODWORD(v3) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v3;
    LODWORD(v3) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v3;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Compass::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 40) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::Compass *CoreNavigation::CLP::LogEntry::PrivateData::Compass::Compass(CoreNavigation::CLP::LogEntry::PrivateData::Compass *this, const CoreNavigation::CLP::LogEntry::PrivateData::Compass *a2)
{
  *(this + 5) = 0;
  *this = &unk_1F4CDB1C0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::Compass::MergeFrom(this, a2);
  return this;
}

void sub_1D0CE8D64(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::PrivateData::Compass::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Compass *this, const CoreNavigation::CLP::LogEntry::PrivateData::Compass *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  sub_1D0CFF05C((this + 16), a2 + 16);
  if (*(a2 + 44))
  {
    *(this + 11) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v4);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::Compass::default_instance_ + 8);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
  }

  return result;
}

void sub_1D0CE8E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Compass::~Compass(CoreNavigation::CLP::LogEntry::PrivateData::Compass *this)
{
  *this = &unk_1F4CDB1C0;
  CoreNavigation::CLP::LogEntry::PrivateData::Compass::SharedDtor(this);
  sub_1D0B8CD0C(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::Compass::~Compass(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Compass::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::Compass *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::Compass::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Compass::Clear(CoreNavigation::CLP::LogEntry::PrivateData::Compass *this)
{
  if (*(this + 44))
  {
    v2 = *(this + 1);
    if (v2)
    {
      if (*(v2 + 36))
      {
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      *(v2 + 36) = 0;
    }
  }

  result = sub_1D0C77384(this + 16);
  *(this + 11) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Compass::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Compass *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      *(this + 11) |= 1u;
      v7 = *(this + 1);
      if (!v7)
      {
        operator new();
      }

      v26 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26))
        {
          return 0;
        }
      }

      else
      {
        v26 = *v8;
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
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
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
        do
        {
          *(a2 + 1) = v14 + 1;
LABEL_27:
          v15 = *(this + 7);
          v16 = *(this + 6);
          if (v16 >= v15)
          {
            if (v15 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v15 = *(this + 7);
            }

            *(this + 7) = v15 + 1;
            operator new();
          }

          v17 = *(this + 2);
          *(this + 6) = v16 + 1;
          v18 = *(v17 + 8 * v16);
          v27 = 0;
          v19 = *(a2 + 1);
          if (v19 >= *(a2 + 2) || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
            {
              return 0;
            }
          }

          else
          {
            v27 = *v19;
            *(a2 + 1) = v19 + 1;
          }

          v20 = *(a2 + 14);
          v21 = *(a2 + 15);
          *(a2 + 14) = v20 + 1;
          if (v20 >= v21)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::MergePartialFromCodedStream(v18, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v22 = *(a2 + 14);
          v12 = __OFSUB__(v22, 1);
          v23 = v22 - 1;
          if (v23 < 0 == v12)
          {
            *(a2 + 14) = v23;
          }

          v14 = *(a2 + 1);
          v24 = *(a2 + 2);
        }

        while (v14 < v24 && *v14 == 18);
        if (v14 == v24 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Compass::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::Compass::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Compass::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::Compass *this)
{
  if (*(this + 44))
  {
    v3 = *(this + 1);
    if (!v3)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v3 = *(CoreNavigation::CLP::LogEntry::PrivateData::Compass::default_instance_ + 8);
    }

    v4 = *(v3 + 36);
    if (*(v3 + 36))
    {
      v5 = (v4 << 31 >> 31) & 9;
      if ((v4 & 2) != 0)
      {
        v5 += 9;
      }

      if ((v4 & 4) != 0)
      {
        v4 = v5 + 9;
      }

      else
      {
        v4 = v5;
      }
    }

    *(v3 + 32) = v4;
    v2 = v4 + 2;
  }

  else
  {
    v2 = 0;
  }

  v6 = *(this + 6);
  v7 = (v6 + v2);
  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::ByteSize(*(*(this + 2) + 8 * v8));
      v10 = v9;
      if (v9 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
      }

      else
      {
        v11 = 1;
      }

      v7 = (v10 + v7 + v11);
      ++v8;
    }

    while (v8 < *(this + 6));
  }

  *(this + 10) = v7;
  return v7;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Compass::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Compass *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::Compass::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::Compass::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::Compass *this, const CoreNavigation::CLP::LogEntry::PrivateData::Compass *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::Compass::MergeFrom(this, a2);
  }

  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::Compass *CoreNavigation::CLP::LogEntry::PrivateData::Compass::Swap(CoreNavigation::CLP::LogEntry::PrivateData::Compass *this, CoreNavigation::CLP::LogEntry::PrivateData::Compass *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    v6 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion *this)
{
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = -1;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion *CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::MotionTypeDeviceMotion(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion *a2)
{
  *this = &unk_1F4CDB238;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = -1;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  v5 = *(a2 + 14);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(this + 14) |= 1u;
    v7 = *(this + 1);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 1);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 8);
    }

    v4 = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::MergeFrom(v7, v8);
    v5 = *(a2 + 14);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 14) |= 2u;
  v9 = *(this + 2);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 2);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 16);
  }

  *&v4 = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergeFrom(v9, v10);
  v5 = *(a2 + 14);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_26:
  *(this + 14) |= 4u;
  v11 = *(this + 3);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 3);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 24);
  }

  *&v4 = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergeFrom(v11, v12);
  v5 = *(a2 + 14);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_31:
  *(this + 14) |= 8u;
  v13 = *(this + 4);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 4);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 32);
  }

  *&v4 = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MergeFrom(v13, v14);
  v5 = *(a2 + 14);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_38:
    v16 = *(a2 + 44);
    *(this + 14) |= 0x20u;
    *(this + 44) = v16;
    v5 = *(a2 + 14);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_36:
  v15 = *(a2 + 10);
  if ((v15 + 1) >= 8)
  {
    __assert_rtn("set_magnetic_field_calibration_level", "CoreNavigationCLPPrivateDataShared.pb.h", 24505, "::CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompassCalibrationLevel_IsValid(value)");
  }

  *(this + 14) |= 0x10u;
  *(this + 10) = v15;
  v5 = *(a2 + 14);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_39:
  v17 = *(a2 + 45);
  *(this + 14) |= 0x40u;
  *(this + 45) = v17;
  v5 = *(a2 + 14);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    v6 = *(a2 + 46);
    *(this + 14) |= 0x80u;
    *(this + 46) = v6;
    v5 = *(a2 + 14);
  }

LABEL_13:
  if ((v5 & 0x100) != 0)
  {
    LODWORD(v4) = *(a2 + 12);
    *(this + 14) |= 0x100u;
    *(this + 12) = LODWORD(v4);
  }

  return *&v4;
}