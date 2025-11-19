uint64_t CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::TropicalSavanna::protobuf_AddDesc_CoreNavigationCLPTropicalSavannaLogEntry_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::ByteSize(CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry *this)
{
  if (*(this + 20))
  {
    v3 = *(this + 1);
    if (!v3)
    {
      CoreNavigation::CLP::LogEntry::TropicalSavanna::protobuf_AddDesc_CoreNavigationCLPTropicalSavannaLogEntry_2eproto(0);
      v3 = *(CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::default_instance_ + 8);
    }

    v4 = CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::ByteSize(v3);
    v5 = v4;
    if (v4 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
    }

    else
    {
      v6 = 1;
    }

    result = (v5 + v6 + 1);
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::MergeFrom(CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint *this, const CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint *a2)
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
        CoreNavigation::CLP::LogEntry::TropicalSavanna::protobuf_AddDesc_CoreNavigationCLPTropicalSavannaLogEntry_2eproto(this);
        v6 = *(CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::MergeFrom(v5, v6);
      v4 = *(a2 + 9);
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
      CoreNavigation::CLP::LogEntry::TropicalSavanna::protobuf_AddDesc_CoreNavigationCLPTropicalSavannaLogEntry_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::MergeFrom(v7, v8);
    v4 = *(a2 + 9);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

LABEL_20:
      v10 = *(a2 + 7);
      if (v10 >= 3)
      {
        __assert_rtn("set_notification", "CoreNavigationCLPTropicalSavannaLogEntry.pb.h", 618, "::CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint_Notification_IsValid(value)");
      }

      *(this + 9) |= 8u;
      *(this + 7) = v10;
      return;
    }

LABEL_19:
    v9 = *(a2 + 6);
    *(this + 9) |= 4u;
    *(this + 6) = v9;
    if ((*(a2 + 9) & 8) == 0)
    {
      return;
    }

    goto LABEL_20;
  }
}

void sub_1D0C85324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::CopyFrom(CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry *this, const CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry *a2)
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

double CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::SharedCtor(CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp *CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::TimeStamp(CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp *this, const CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp *a2)
{
  *this = &unk_1F4CD72C0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::MergeFrom(CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp *this, const CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp *a2)
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

void sub_1D0C85570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::~TimeStamp(CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp *this)
{
  *this = &unk_1F4CD72C0;
  CoreNavigation::CLP::LogEntry::TropicalSavanna::protobuf_AddDesc_CoreNavigationCLPTropicalSavannaLogEntry_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::~TimeStamp(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::Clear(uint64_t this)
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

uint64_t CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::ByteSize(CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp *this)
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

double CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::CopyFrom(CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp *this, const CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::Swap(CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp *this, CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp *a2)
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

double CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::SharedCtor(CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint *CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::TropicalSavannaHint(CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint *this, const CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint *a2)
{
  *this = &unk_1F4CD7338;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::~TropicalSavannaHint(CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint *this)
{
  *this = &unk_1F4CD7338;
  CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::~TropicalSavannaHint(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::SharedDtor(CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint *this)
{
  CoreNavigation::CLP::LogEntry::TropicalSavanna::protobuf_AddDesc_CoreNavigationCLPTropicalSavannaLogEntry_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::default_instance_ != this)
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

uint64_t CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if ((TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_49;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v9 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_57;
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

      if (v6 != 1)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_22;
      }

      *(this + 9) |= 1u;
      v10 = *(this + 1);
      if (!v10)
      {
        operator new();
      }

      v31 = 0;
      v11 = *(a2 + 1);
      if (v11 >= *(a2 + 2) || *v11 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31))
        {
          return 0;
        }
      }

      else
      {
        v31 = *v11;
        *(a2 + 1) = v11 + 1;
      }

      v13 = *(a2 + 14);
      v14 = *(a2 + 15);
      *(a2 + 14) = v13 + 1;
      if (v13 >= v14)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::MergePartialFromCodedStream(v10, a2) || *(a2 + 36) != 1)
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
      if (v18 < *(a2 + 2) && *v18 == 18)
      {
        *(a2 + 1) = v18 + 1;
        goto LABEL_35;
      }
    }

    if (v6 != 2 || v7 != 2)
    {
      goto LABEL_22;
    }

LABEL_35:
    *(this + 9) |= 2u;
    v19 = *(this + 2);
    if (!v19)
    {
      operator new();
    }

    v32 = 0;
    v20 = *(a2 + 1);
    if (v20 >= *(a2 + 2) || *v20 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32))
      {
        return 0;
      }
    }

    else
    {
      v32 = *v20;
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
    if (!CoreNavigation::CLP::LogEntry::TropicalSavanna::TimeStamp::MergePartialFromCodedStream(v19, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v23 = *(a2 + 14);
    v16 = __OFSUB__(v23, 1);
    v24 = v23 - 1;
    if (v24 < 0 == v16)
    {
      *(a2 + 14) = v24;
    }

    v25 = *(a2 + 1);
    v8 = *(a2 + 2);
    if (v25 < v8 && *v25 == 24)
    {
      v12 = v25 + 1;
      *(a2 + 1) = v12;
LABEL_49:
      if (v12 >= v8 || (v26 = *v12, v26 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v27 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v26;
        v27 = v12 + 1;
        *(a2 + 1) = v27;
      }

      *(this + 9) |= 4u;
      if (v27 < v8 && *v27 == 32)
      {
        v9 = v27 + 1;
        *(a2 + 1) = v9;
LABEL_57:
        v30 = 0;
        if (v9 >= v8 || (v29 = *v9, (v29 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30);
          if (!result)
          {
            return result;
          }

          v29 = v30;
        }

        else
        {
          *(a2 + 1) = v9 + 1;
        }

        if (v29 <= 2)
        {
          *(this + 9) |= 8u;
          *(this + 7) = v29;
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
}

uint64_t CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::TropicalSavanna::protobuf_AddDesc_CoreNavigationCLPTropicalSavannaLogEntry_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
      {
        return this;
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
    CoreNavigation::CLP::LogEntry::TropicalSavanna::protobuf_AddDesc_CoreNavigationCLPTropicalSavannaLogEntry_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_13:
  v9 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v9, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::ByteSize(CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint *this)
{
  LOBYTE(v2) = *(this + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_37;
  }

  if ((*(this + 36) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    CoreNavigation::CLP::LogEntry::TropicalSavanna::protobuf_AddDesc_CoreNavigationCLPTropicalSavannaLogEntry_2eproto(this);
    v4 = *(CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::default_instance_ + 8);
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
  v2 = *(this + 9);
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v7 = *(this + 2);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::TropicalSavanna::protobuf_AddDesc_CoreNavigationCLPTropicalSavannaLogEntry_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::default_instance_ + 16);
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
    v3 = (v3 + v8 + 2);
    v2 = *(this + 9);
  }

LABEL_24:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_31;
  }

  v10 = *(this + 6);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 9);
  }

  else
  {
    v11 = 2;
  }

  v3 = (v11 + v3);
  if ((v2 & 8) != 0)
  {
LABEL_31:
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

    v3 = (v13 + v3);
  }

LABEL_37:
  *(this + 8) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::CopyFrom(CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint *this, const CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::protobuf_ShutdownFile_CoreNavigationCLPRavenLogEntry_2eproto(CoreNavigation::CLP::LogEntry::Raven *this)
{
  if (CoreNavigation::CLP::LogEntry::Raven::LogEntry::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::LogEntry::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::LogEntry::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::default_instance_);
  }

  result = CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp::default_instance_;
  if (CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp::default_instance_)
  {
    v2 = *(*CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp::default_instance_ + 8);

    return v2();
  }

  return result;
}

void CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto_impl(CoreNavigation::CLP::LogEntry::Raven *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreNavigation/shared/cnprotobuf/CoreNavigationCLPRavenLogEntry.pb.cc", a4);
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v4);
  operator new();
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::RavenPlatformInfo(uint64_t this)
{
  *(this + 48) = 0;
  *this = &unk_1F4CD74E8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  v1 = MEMORY[0x1E69E5958];
  *(this + 20) = 0;
  *(this + 24) = v1;
  *(this + 32) = v1;
  *(this + 40) = 0;
  return this;
}

{
  *(this + 48) = 0;
  *this = &unk_1F4CD74E8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  v1 = MEMORY[0x1E69E5958];
  *(this + 20) = 0;
  *(this + 24) = v1;
  *(this + 32) = v1;
  *(this + 40) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp::RavenPlatformInfo_TimeStamp(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp *this)
{
  *this = &unk_1F4CD7470;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4CD7470;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::LogEntry::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_;
  *(this + 16) = v1;
  return this;
}

void *CoreNavigation::CLP::LogEntry::Raven::LogEntry::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::Raven::LogEntry *CoreNavigation::CLP::LogEntry::Raven::LogEntry::LogEntry(CoreNavigation::CLP::LogEntry::Raven::LogEntry *this, const CoreNavigation::CLP::LogEntry::Raven::LogEntry *a2)
{
  *this = &unk_1F4CD73F8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::Raven::LogEntry::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::Raven::LogEntry::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::LogEntry *this, const CoreNavigation::CLP::LogEntry::Raven::LogEntry *a2)
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
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(this);
        v6 = *(CoreNavigation::CLP::LogEntry::Raven::LogEntry::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::Raven::RavenOutput::MergeFrom(v5, v6);
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
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(this);
        v8 = *(CoreNavigation::CLP::LogEntry::Raven::LogEntry::default_instance_ + 16);
      }

      CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::MergeFrom(v7, v8);
    }
  }
}

void sub_1D0C869A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::LogEntry::Clear(uint64_t this)
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
        this = CoreNavigation::CLP::LogEntry::Raven::RavenOutput::Clear(this);
        v2 = *(v1 + 28);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::Clear(this);
      }
    }
  }

  *(v1 + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 52);
  if (v1)
  {
    if (*(this + 52))
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
        v1 = *(this + 52);
      }
    }

    *(this + 16) = 0;
    *(this + 20) = 0;
    v3 = MEMORY[0x1E69E5958];
    if ((v1 & 8) != 0)
    {
      v4 = *(this + 24);
      if (v4 != MEMORY[0x1E69E5958])
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    if ((*(this + 52) & 0x10) != 0)
    {
      v5 = *(this + 32);
      if (v5 != v3)
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

    *(this + 40) = 0;
  }

  *(this + 52) = 0;
  return this;
}

void CoreNavigation::CLP::LogEntry::Raven::LogEntry::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::LogEntry *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Raven::LogEntry::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo *this, const CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 52))
  {
    *(this + 13) |= 1u;
    v5 = *(this + 1);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 1);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp::MergeFrom(v5, v6);
    v4 = *(a2 + 13);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 4);
    if ((CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_Hardware_IsValid(v7) & 1) == 0)
    {
      __assert_rtn("set_hardware", "CoreNavigationCLPRavenLogEntry.pb.h", 887, "::CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_Hardware_IsValid(value)");
    }

    *(this + 13) |= 2u;
    *(this + 4) = v7;
    v4 = *(a2 + 13);
  }

  if ((v4 & 4) != 0)
  {
    v8 = *(a2 + 20);
    *(this + 13) |= 4u;
    *(this + 20) = v8;
    v4 = *(a2 + 13);
  }

  v9 = MEMORY[0x1E69E5958];
  if ((v4 & 8) == 0)
  {
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_17;
    }

LABEL_23:
    v12 = *(a2 + 4);
    *(this + 13) |= 0x10u;
    v13 = *(this + 4);
    if (v13 == v9)
    {
      operator new();
    }

    std::string::operator=(v13, v12);
    v4 = *(a2 + 13);
    if ((v4 & 0x20) == 0)
    {
LABEL_18:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v10 = *(a2 + 3);
  *(this + 13) |= 8u;
  v11 = *(this + 3);
  if (v11 == v9)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v4 = *(a2 + 13);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_18;
  }

LABEL_26:
  v14 = *(a2 + 10);
  if (v14 >= 4)
  {
    __assert_rtn("set_product_category", "CoreNavigationCLPRavenLogEntry.pb.h", 1072, "::CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_ProductCategory_IsValid(value)");
  }

  *(this + 13) |= 0x20u;
  *(this + 10) = v14;
  if ((*(a2 + 13) & 0x40) != 0)
  {
LABEL_28:
    v15 = *(a2 + 11);
    if (v15 >= 3)
    {
      __assert_rtn("set_gnss_band_support", "CoreNavigationCLPRavenLogEntry.pb.h", 1095, "::CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_GnssBandSupport_IsValid(value)");
    }

    *(this + 13) |= 0x40u;
    *(this + 11) = v15;
  }
}

void sub_1D0C86E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Raven::LogEntry::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::LogEntry *this, const CoreNavigation::CLP::LogEntry::Raven::LogEntry *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Raven::LogEntry::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::LogEntry::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::Raven::LogEntry *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_Hardware_IsValid(CoreNavigation::CLP::LogEntry::Raven *this)
{
  v1 = this;
  result = 1;
  if (v1 <= 49)
  {
    if (v1 < 0x30)
    {
      return result;
    }

    return 0;
  }

  if (v1 > 2007000)
  {
    if ((v1 - 3003018) < 6 || (v1 - 4001002) < 3 || v1 == 2007001)
    {
      return result;
    }

    return 0;
  }

  if (((v1 - 50) > 0x32 || ((1 << (v1 - 50)) & 0x4001FFFFFFFFFLL) == 0) && v1 != 200)
  {
    return 0;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp::SharedCtor(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp *CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp::RavenPlatformInfo_TimeStamp(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp *this, const CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp *a2)
{
  *this = &unk_1F4CD7470;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp *this, const CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp *a2)
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

void sub_1D0C87188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp::~RavenPlatformInfo_TimeStamp(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp *this)
{
  *this = &unk_1F4CD7470;
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp::~RavenPlatformInfo_TimeStamp(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp::Clear(uint64_t this)
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

uint64_t CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp::ByteSize(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp *this)
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

double CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp *this, const CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp::Swap(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp *this, CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp *a2)
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

double CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::SharedCtor(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo *this)
{
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  v1 = MEMORY[0x1E69E5958];
  *(this + 3) = MEMORY[0x1E69E5958];
  *(this + 4) = v1;
  result = 0.0;
  *(this + 40) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo *CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::RavenPlatformInfo(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo *this, const CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo *a2)
{
  *(this + 6) = 0;
  *this = &unk_1F4CD74E8;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  v3 = MEMORY[0x1E69E5958];
  *(this + 3) = MEMORY[0x1E69E5958];
  *(this + 4) = v3;
  *(this + 5) = 0;
  CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::~RavenPlatformInfo(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo *this)
{
  *this = &unk_1F4CD74E8;
  CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::~RavenPlatformInfo(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo *this)
{
  v1 = this;
  v2 = *(this + 3);
  v3 = MEMORY[0x1E69E5958];
  if (v2 != MEMORY[0x1E69E5958] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x1D387ECA0](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 4);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x1D387ECA0](v5, 0x1012C40EC159624);
  }

  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::default_instance_ != v1)
  {
    v7 = *(v1 + 1);
    if (v7)
    {
      v8 = *(*v7 + 8);

      v8();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x1E69E5958];
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
        if (TagFallback >> 3 <= 3)
        {
          break;
        }

        if (TagFallback >> 3 > 5)
        {
          if (v7 == 6)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v16 = *(a2 + 2);
              goto LABEL_76;
            }
          }

          else if (v7 == 7 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_86;
          }

          goto LABEL_33;
        }

        if (v7 == 4)
        {
          if (v8 != 2)
          {
            goto LABEL_33;
          }

          v15 = *(this + 13);
LABEL_64:
          *(this + 13) = v15 | 8;
          if (*(this + 3) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v31 = *(a2 + 1);
          if (v31 < *(a2 + 2) && *v31 == 42)
          {
            *(a2 + 1) = v31 + 1;
LABEL_70:
            *(this + 13) |= 0x10u;
            if (*(this + 4) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v32 = *(a2 + 1);
            v16 = *(a2 + 2);
            if (v32 < v16 && *v32 == 48)
            {
              v17 = v32 + 1;
              *(a2 + 1) = v17;
LABEL_76:
              v36 = 0;
              if (v17 >= v16 || (v33 = *v17, (v33 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
                if (!result)
                {
                  return result;
                }

                v33 = v36;
              }

              else
              {
                *(a2 + 1) = v17 + 1;
              }

              if (v33 <= 3)
              {
                *(this + 13) |= 0x20u;
                *(this + 10) = v33;
              }

              v34 = *(a2 + 1);
              v11 = *(a2 + 2);
              if (v34 < v11 && *v34 == 56)
              {
                v12 = v34 + 1;
                *(a2 + 1) = v12;
LABEL_86:
                v36 = 0;
                if (v12 >= v11 || (v35 = *v12, (v35 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
                  if (!result)
                  {
                    return result;
                  }

                  v35 = v36;
                }

                else
                {
                  *(a2 + 1) = v12 + 1;
                }

                if (v35 <= 2)
                {
                  *(this + 13) |= 0x40u;
                  *(this + 11) = v35;
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
        }

        else
        {
          if (v7 == 5 && v8 == 2)
          {
            goto LABEL_70;
          }

LABEL_33:
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

      if (v7 == 1)
      {
        break;
      }

      if (v7 != 2)
      {
        if (v7 != 3 || (TagFallback & 7) != 0)
        {
          goto LABEL_33;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_56;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_33;
      }

      v19 = *(a2 + 1);
      v18 = *(a2 + 2);
LABEL_46:
      v36 = 0;
      if (v19 >= v18 || (v26 = *v19, (v26 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
        if (!result)
        {
          return result;
        }

        v26 = v36;
      }

      else
      {
        *(a2 + 1) = v19 + 1;
      }

      if (CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_Hardware_IsValid(v26))
      {
        *(this + 13) |= 2u;
        *(this + 4) = v26;
      }

      v28 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v28 < v9 && *v28 == 24)
      {
        v10 = v28 + 1;
        *(a2 + 1) = v10;
LABEL_56:
        v36 = 0;
        if (v10 >= v9 || (v29 = *v10, (v29 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
          if (!result)
          {
            return result;
          }

          v29 = v36;
          v30 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v30 = v10 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 20) = v29 != 0;
        v15 = *(this + 13) | 4;
        *(this + 13) = v15;
        if (v30 < v9 && *v30 == 34)
        {
          *(a2 + 1) = v30 + 1;
          goto LABEL_64;
        }
      }
    }

    if (v8 != 2)
    {
      goto LABEL_33;
    }

    *(this + 13) |= 1u;
    v13 = *(this + 1);
    if (!v13)
    {
      operator new();
    }

    v36 = 0;
    v14 = *(a2 + 1);
    if (v14 >= *(a2 + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
      {
        return 0;
      }
    }

    else
    {
      v36 = *v14;
      *(a2 + 1) = v14 + 1;
    }

    v20 = *(a2 + 14);
    v21 = *(a2 + 15);
    *(a2 + 14) = v20 + 1;
    if (v20 >= v21)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo_TimeStamp::MergePartialFromCodedStream(v13, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v22 = *(a2 + 14);
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v24 < 0 == v23)
    {
      *(a2 + 14) = v24;
    }

    v25 = *(a2 + 1);
    v18 = *(a2 + 2);
    if (v25 < v18 && *v25 == 16)
    {
      v19 = v25 + 1;
      *(a2 + 1) = v19;
      goto LABEL_46;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 52);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
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

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 52);
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
  v8 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 40), a2, a4);
    if ((*(v5 + 52) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  v9 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 52);
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
  v10 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, v10, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::ByteSize(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo *this)
{
  v2 = *(this + 13);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_56;
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
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(this);
    v5 = *(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::default_instance_ + 8);
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
  v2 = *(this + 13);
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
      v2 = *(this + 13);
    }

    else
    {
      v9 = 2;
    }

    v3 += v9;
  }

LABEL_21:
  v4 = ((v2 >> 1) & 2) + v3;
  if ((v2 & 8) != 0)
  {
    v10 = *(this + 3);
    v11 = *(v10 + 23);
    v12 = v11;
    v13 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v14 = *(v10 + 23);
    }

    else
    {
      v14 = v13;
    }

    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      v11 = *(v10 + 23);
      v13 = *(v10 + 8);
      v2 = *(this + 13);
      v12 = *(v10 + 23);
    }

    else
    {
      v15 = 1;
    }

    if (v12 < 0)
    {
      v11 = v13;
    }

    v4 = (v4 + v15 + v11 + 1);
    if ((v2 & 0x10) == 0)
    {
LABEL_23:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_44;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_23;
  }

  v16 = *(this + 4);
  v17 = *(v16 + 23);
  v18 = v17;
  v19 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = v19;
  }

  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
    v17 = *(v16 + 23);
    v19 = *(v16 + 8);
    v2 = *(this + 13);
    v18 = *(v16 + 23);
  }

  else
  {
    v21 = 1;
  }

  if (v18 < 0)
  {
    v17 = v19;
  }

  v4 = (v4 + v21 + v17 + 1);
  if ((v2 & 0x20) == 0)
  {
LABEL_24:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_50;
  }

LABEL_44:
  v22 = *(this + 10);
  if ((v22 & 0x80000000) != 0)
  {
    v23 = 11;
  }

  else if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v23 = 2;
  }

  v4 = (v23 + v4);
  if ((v2 & 0x40) != 0)
  {
LABEL_50:
    v24 = *(this + 11);
    if ((v24 & 0x80000000) != 0)
    {
      v25 = 11;
    }

    else if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    }

    else
    {
      v25 = 2;
    }

    v4 = (v25 + v4);
  }

LABEL_56:
  *(this + 12) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::CopyFrom(CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo *this, const CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LOBYTE(v2) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v2;
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v4;
    LODWORD(v4) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v4;
    LODWORD(v4) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v4;
    LODWORD(v4) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v4;
    LODWORD(v4) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v4;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_ShutdownFile_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData *this)
{
  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::default_instance_);
  }

  result = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::default_instance_;
  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::default_instance_)
  {
    v2 = *(*CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::default_instance_ + 8);

    return v2();
  }

  return result;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto_impl(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreNavigation/shared/cnprotobuf/CoreNavigationCLPGnssMsmtAnalysisToolData.pb.cc", a4);
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v4);
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v5);
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(v6);
  operator new();
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::RavenUserActivityEstimate(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate *this)
{
  *this = &unk_1F4CD75A8;
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
  *this = &unk_1F4CD75A8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::GnssMsmtAnalysisToolDataCapture(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture *this)
{
  *this = &unk_1F4CD7620;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 44) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 50) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 56) = 0;
  *(this + 29) = 0;
  *(this + 60) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  *(this + 100) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 38) = 0;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  return result;
}

{
  *this = &unk_1F4CD7620;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 44) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 50) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 56) = 0;
  *(this + 29) = 0;
  *(this + 60) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  *(this + 100) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 38) = 0;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::SatelliteVisibility(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility *this)
{
  *this = &unk_1F4CD7698;
  *(this + 1) = 0;
  *(this + 32) = 0;
  *(this + 1) = 0u;
  *&result = 2;
  *(this + 36) = 2;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_1F4CD7698;
  *(this + 1) = 0;
  *(this + 32) = 0;
  *(this + 1) = 0u;
  *&result = 2;
  *(this + 36) = 2;
  *(this + 11) = 0;
  return result;
}

void *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::PerBandMeasurementCount(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD7710;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD7710;
  return this;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::TimeStamps(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps *this)
{
  *this = &unk_1F4CD7788;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = &unk_1F4CD7788;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets::ClockOffsets(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets *this)
{
  *this = &unk_1F4CD7800;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = &unk_1F4CD7800;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::MeasurementData(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData *this)
{
  *this = &unk_1F4CD7878;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 31) = 0;
  return result;
}

{
  *this = &unk_1F4CD7878;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 31) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::SatelliteState(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState *this)
{
  *this = &unk_1F4CD78F0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4CD78F0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::UserToSatelliteState(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState *this)
{
  *this = &unk_1F4CD7968;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4CD7968;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::PerConstellationCounts(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts *this)
{
  *this = &unk_1F4CD79E0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_1F4CD79E0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::GnssPreprocessedMeasurementsEvent(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent *this)
{
  *this = &unk_1F4CD7A58;
  *(this + 84) = 0;
  *(this + 80) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return result;
}

{
  *this = &unk_1F4CD7A58;
  *(this + 84) = 0;
  *(this + 80) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return result;
}

void *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::CNTimeSpan(void *this)
{
  *this = &unk_1F4CD7AD0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CD7AD0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::GnssReceiverClockModel(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel *this)
{
  *this = &unk_1F4CD7B48;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4CD7B48;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::GnssSvAndMeasurementData(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData *this)
{
  *this = &unk_1F4CD7BC0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return result;
}

{
  *this = &unk_1F4CD7BC0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::PolynomialEphemerides(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides *this)
{
  *this = &unk_1F4CD7C38;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  return result;
}

{
  *this = &unk_1F4CD7C38;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::GnssObservable(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *this)
{
  *this = &unk_1F4CD7CB0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 86) = 0u;
  *(this + 13) = 0;
  *(this + 14) = 0;
  return result;
}

{
  *this = &unk_1F4CD7CB0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 86) = 0u;
  *(this + 13) = 0;
  *(this + 14) = 0;
  return result;
}

void *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::GNSSSatelliteID(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD7D28;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD7D28;
  return this;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::MeasurementCorrections(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections *this)
{
  *this = &unk_1F4CD7DA0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_1F4CD7DA0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

void *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::default_instance_;
  this[2] = v1;
  v2 = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::default_instance_;
  this[3] = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::default_instance_;
  this[4] = v2;
  this[5] = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::default_instance_;
  v3 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::default_instance_;
  this[9] = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::default_instance_;
  this[10] = v3;
  this[11] = v3;
  v4 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::default_instance_;
  this[15] = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::default_instance_;
  this[16] = v4;
  return this;
}

void *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::default_instance_;
  this[2] = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::default_instance_;
  this[3] = v1;
  v2 = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::default_instance_;
  this[4] = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::default_instance_;
  this[5] = v2;
  return this;
}

void *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::PrivateData::SvId::default_instance_;
  this[2] = v1;
  v2 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::default_instance_;
  this[5] = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::default_instance_;
  this[6] = v2;
  return this;
}

void *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::default_instance_;
  this[2] = v1;
  v2 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets::default_instance_;
  this[3] = v1;
  this[4] = v2;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::default_instance_;
  *(this + 24) = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::default_instance_;
  *(this + 32) = v1;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::InitAsDefaultInstance(uint64_t this)
{
  *(this + 8) = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::default_instance_;
  *(this + 48) = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::default_instance_;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::default_instance_;
  *(this + 16) = v1;
  return this;
}

void *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::default_instance_;
  this[2] = v1;
  this[3] = v1;
  this[4] = v1;
  return this;
}

void *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::default_instance_;
  this[2] = v1;
  this[7] = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::default_instance_;
  return this;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData *this)
{
  v1 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0C894CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::SharedCtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate *this)
{
  result = 0.0;
  *(this + 84) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::RavenUserActivityEstimate(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate *a2)
{
  *this = &unk_1F4CD75A8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  v5 = *(a2 + 24);
  if (!v5)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    v6 = *(a2 + 22);
    if (v6 >= 0xA)
    {
      __assert_rtn("set_user_activity", "CoreNavigationCLPGnssMsmtAnalysisToolData.pb.h", 3016, "::CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity_UserActivityType_IsValid(value)");
    }

    *(this + 24) |= 1u;
    *(this + 22) = v6;
    v5 = *(a2 + 24);
  }

  if ((v5 & 2) != 0)
  {
    result = *(a2 + 1);
    *(this + 24) |= 2u;
    *(this + 1) = result;
    v5 = *(a2 + 24);
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

  result = *(a2 + 2);
  *(this + 24) |= 4u;
  *(this + 2) = result;
  v5 = *(a2 + 24);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = *(a2 + 3);
  *(this + 24) |= 8u;
  *(this + 3) = result;
  v5 = *(a2 + 24);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_28:
    result = *(a2 + 5);
    *(this + 24) |= 0x20u;
    *(this + 5) = result;
    v5 = *(a2 + 24);
    if ((v5 & 0x40) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = *(a2 + 4);
  *(this + 24) |= 0x10u;
  *(this + 4) = result;
  v5 = *(a2 + 24);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_12:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_29:
  result = *(a2 + 6);
  *(this + 24) |= 0x40u;
  *(this + 6) = result;
  v5 = *(a2 + 24);
  if ((v5 & 0x80) != 0)
  {
LABEL_14:
    result = *(a2 + 7);
    *(this + 24) |= 0x80u;
    *(this + 7) = result;
    v5 = *(a2 + 24);
  }

LABEL_15:
  if ((v5 & 0xFF00) == 0)
  {
    return result;
  }

  if ((v5 & 0x100) != 0)
  {
    result = *(a2 + 8);
    *(this + 24) |= 0x100u;
    *(this + 8) = result;
    v5 = *(a2 + 24);
    if ((v5 & 0x200) == 0)
    {
LABEL_18:
      if ((v5 & 0x400) == 0)
      {
        return result;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  result = *(a2 + 9);
  *(this + 24) |= 0x200u;
  *(this + 9) = result;
  if ((*(a2 + 24) & 0x400) != 0)
  {
LABEL_19:
    result = *(a2 + 10);
    *(this + 24) |= 0x400u;
    *(this + 10) = result;
  }

  return result;
}

void sub_1D0C897D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::~RavenUserActivityEstimate(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate *this)
{
  *this = &unk_1F4CD75A8;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::~RavenUserActivityEstimate(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::Clear(uint64_t this)
{
  v1 = *(this + 96);
  if (v1)
  {
    *(this + 88) = 0;
    *(this + 8) = 0u;
    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 56) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 64) = 0;
    *(this + 72) = 0;
    *(this + 80) = 0;
  }

  *(this + 96) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
              if (v6 != 2 || v7 != 1)
              {
                goto LABEL_43;
              }

              goto LABEL_53;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v21[0] = 0;
            v8 = *(a2 + 1);
            if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v21);
              if (!result)
              {
                return result;
              }

              v9 = v21[0];
            }

            else
            {
              *(a2 + 1) = v8 + 1;
            }

            if (v9 <= 9)
            {
              *(this + 24) |= 1u;
              *(this + 22) = v9;
            }

            v11 = *(a2 + 1);
            if (v11 < *(a2 + 2) && *v11 == 17)
            {
              *(a2 + 1) = v11 + 1;
LABEL_53:
              *v21 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v21) & 1) == 0)
              {
                return 0;
              }

              *(this + 1) = *v21;
              *(this + 24) |= 2u;
              v12 = *(a2 + 1);
              if (v12 < *(a2 + 2) && *v12 == 25)
              {
                *(a2 + 1) = v12 + 1;
LABEL_57:
                *v21 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v21) & 1) == 0)
                {
                  return 0;
                }

                *(this + 2) = *v21;
                *(this + 24) |= 4u;
                v13 = *(a2 + 1);
                if (v13 < *(a2 + 2) && *v13 == 33)
                {
                  *(a2 + 1) = v13 + 1;
                  goto LABEL_61;
                }
              }
            }
          }

          else
          {
            if (v6 == 3)
            {
              if (v7 != 1)
              {
                goto LABEL_43;
              }

              goto LABEL_57;
            }

            if (v6 != 4)
            {
              if (v6 != 5 || v7 != 1)
              {
                goto LABEL_43;
              }

              goto LABEL_65;
            }

            if (v7 != 1)
            {
              goto LABEL_43;
            }

LABEL_61:
            *v21 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v21) & 1) == 0)
            {
              return 0;
            }

            *(this + 3) = *v21;
            *(this + 24) |= 8u;
            v14 = *(a2 + 1);
            if (v14 < *(a2 + 2) && *v14 == 41)
            {
              *(a2 + 1) = v14 + 1;
LABEL_65:
              *v21 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v21) & 1) == 0)
              {
                return 0;
              }

              *(this + 4) = *v21;
              *(this + 24) |= 0x10u;
              v15 = *(a2 + 1);
              if (v15 < *(a2 + 2) && *v15 == 49)
              {
                *(a2 + 1) = v15 + 1;
LABEL_69:
                *v21 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v21) & 1) == 0)
                {
                  return 0;
                }

                *(this + 5) = *v21;
                *(this + 24) |= 0x20u;
                v16 = *(a2 + 1);
                if (v16 < *(a2 + 2) && *v16 == 57)
                {
                  *(a2 + 1) = v16 + 1;
                  goto LABEL_73;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 8)
        {
          break;
        }

        if (v6 == 9)
        {
          if (v7 != 1)
          {
            goto LABEL_43;
          }

LABEL_81:
          *v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 8) = *v21;
          *(this + 24) |= 0x100u;
          v19 = *(a2 + 1);
          if (v19 < *(a2 + 2) && *v19 == 81)
          {
            *(a2 + 1) = v19 + 1;
LABEL_85:
            *v21 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v21) & 1) == 0)
            {
              return 0;
            }

            *(this + 9) = *v21;
            *(this + 24) |= 0x200u;
            v20 = *(a2 + 1);
            if (v20 < *(a2 + 2) && *v20 == 89)
            {
              *(a2 + 1) = v20 + 1;
              goto LABEL_89;
            }
          }
        }

        else
        {
          if (v6 == 10)
          {
            if (v7 == 1)
            {
              goto LABEL_85;
            }

            goto LABEL_43;
          }

          if (v6 != 11 || v7 != 1)
          {
            goto LABEL_43;
          }

LABEL_89:
          *v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 10) = *v21;
          *(this + 24) |= 0x400u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v6 == 6)
      {
        if (v7 != 1)
        {
          goto LABEL_43;
        }

        goto LABEL_69;
      }

      if (v6 != 7)
      {
        break;
      }

      if (v7 != 1)
      {
        goto LABEL_43;
      }

LABEL_73:
      *v21 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v21) & 1) == 0)
      {
        return 0;
      }

      *(this + 6) = *v21;
      *(this + 24) |= 0x40u;
      v17 = *(a2 + 1);
      if (v17 < *(a2 + 2) && *v17 == 65)
      {
        *(a2 + 1) = v17 + 1;
LABEL_77:
        *v21 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v21) & 1) == 0)
        {
          return 0;
        }

        *(this + 7) = *v21;
        *(this + 24) |= 0x80u;
        v18 = *(a2 + 1);
        if (v18 < *(a2 + 2) && *v18 == 73)
        {
          *(a2 + 1) = v18 + 1;
          goto LABEL_81;
        }
      }
    }

    if (v6 == 8 && v7 == 1)
    {
      goto LABEL_77;
    }

LABEL_43:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 96);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 88), a2, a4);
    v6 = *(v5 + 96);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 96);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 40), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 48), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 56), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 72), a3);
    if ((*(v5 + 96) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 64), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v6 & 0x400) == 0)
  {
    return this;
  }

LABEL_23:
  v7 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, v7, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if (v2)
    {
      v4 = *(this + 22);
      if ((v4 & 0x80000000) != 0)
      {
        v3 = 11;
      }

      else if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        v2 = *(this + 24);
      }

      else
      {
        v3 = 2;
      }
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
      v3 += 9;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = v3 + 9;
  if ((v2 & 0x100) == 0)
  {
    v5 = v3;
  }

  if ((v2 & 0x200) != 0)
  {
    v5 += 9;
  }

  if ((v2 & 0x400) != 0)
  {
    v5 += 9;
  }

  if ((v2 & 0xFF00) != 0)
  {
    result = v5;
  }

  else
  {
    result = v3;
  }

  *(this + 23) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::Swap(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate *this, CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v2;
    v3 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v3;
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
    v8 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v8;
    v9 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v9;
    v10 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v10;
    v11 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v11;
    result = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = result;
    v13 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v13;
    v14 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v14;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::SharedCtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture *this)
{
  *(this + 29) = 0;
  *(this + 60) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::GnssMsmtAnalysisToolDataCapture(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture *a2)
{
  *this = &unk_1F4CD7620;
  *(this + 21) = 0;
  *(this + 44) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 50) = 0;
  *(this + 23) = 0;
  *(this + 27) = 0;
  *(this + 56) = 0;
  *(this + 26) = 0;
  *(this + 29) = 0;
  *(this + 60) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  *(this + 100) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  *(this + 120) = 0u;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::MergeFrom(this, a2);
  return this;
}

void sub_1D0C8A3D4(_Unwind_Exception *a1)
{
  v6 = v3;
  sub_1D0B8CD0C(v6);
  sub_1D0B8CD0C(v4);
  sub_1D0B8CD0C(v2);
  sub_1D0B8CD0C(v5);
  sub_1D0B8CD0C(v1 + 12);
  sub_1D0B8CD0C(v1 + 6);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v51);
  }

  v4 = *(this + 14);
  v5 = *(a2 + 14);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
  LODWORD(v6) = *(a2 + 14);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v51);
      }

      v8 = *(*(a2 + 6) + 8 * v7);
      v9 = *(this + 15);
      v10 = *(this + 14);
      if (v10 >= v9)
      {
        if (v9 == *(this + 16))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
          v9 = *(this + 15);
        }

        *(this + 15) = v9 + 1;
        operator new();
      }

      v11 = *(this + 6);
      *(this + 14) = v10 + 1;
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 14);
    }

    while (v7 < v6);
  }

  v12 = *(this + 26);
  v13 = *(a2 + 26);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96));
  LODWORD(v14) = *(a2 + 26);
  if (v14 >= 1)
  {
    v15 = 0;
    do
    {
      if (v15 >= v14)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v51);
      }

      v16 = *(*(a2 + 12) + 8 * v15);
      v17 = *(this + 27);
      v18 = *(this + 26);
      if (v18 >= v17)
      {
        if (v17 == *(this + 28))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96));
          v17 = *(this + 27);
        }

        *(this + 27) = v17 + 1;
        operator new();
      }

      v19 = *(this + 12);
      *(this + 26) = v18 + 1;
      CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergeFrom(*(v19 + 8 * v18), v16);
      ++v15;
      v14 = *(a2 + 26);
    }

    while (v15 < v14);
  }

  sub_1D0C9C2CC((this + 136), a2 + 136);
  sub_1D0C9C2CC((this + 160), a2 + 160);
  sub_1D0C9C2CC((this + 184), a2 + 184);
  v20 = *(this + 54);
  v21 = *(a2 + 54);
  v22 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 208));
  LODWORD(v23) = *(a2 + 54);
  if (v23 >= 1)
  {
    v24 = 0;
    do
    {
      if (v24 >= v23)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v51);
      }

      v25 = *(*(a2 + 26) + 8 * v24);
      v26 = *(this + 55);
      v27 = *(this + 54);
      if (v27 >= v26)
      {
        if (v26 == *(this + 56))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 208));
          v26 = *(this + 55);
        }

        *(this + 55) = v26 + 1;
        operator new();
      }

      v28 = *(this + 26);
      *(this + 54) = v27 + 1;
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::MergeFrom(*(v28 + 8 * v27), v25);
      ++v24;
      v23 = *(a2 + 54);
    }

    while (v24 < v23);
  }

  v29 = *(a2 + 60);
  if (!v29)
  {
    goto LABEL_77;
  }

  if (v29)
  {
    *(this + 60) |= 1u;
    v30 = *(this + 1);
    if (!v30)
    {
      operator new();
    }

    v31 = *(a2 + 1);
    if (!v31)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(v22);
      v31 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::MergeFrom(v30, v31);
    v29 = *(a2 + 60);
    if ((v29 & 2) == 0)
    {
LABEL_36:
      if ((v29 & 4) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_52;
    }
  }

  else if ((v29 & 2) == 0)
  {
    goto LABEL_36;
  }

  *(this + 60) |= 2u;
  v32 = *(this + 2);
  if (!v32)
  {
    operator new();
  }

  v33 = *(a2 + 2);
  if (!v33)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(v22);
    v33 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 16);
  }

  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets::MergeFrom(v32, v33);
  v29 = *(a2 + 60);
  if ((v29 & 4) == 0)
  {
LABEL_37:
    if ((v29 & 8) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_57;
  }

LABEL_52:
  *(this + 60) |= 4u;
  v34 = *(this + 3);
  if (!v34)
  {
    operator new();
  }

  v35 = *(a2 + 3);
  if (!v35)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(v22);
    v35 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 24);
  }

  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::MergeFrom(v34, v35);
  v29 = *(a2 + 60);
  if ((v29 & 8) == 0)
  {
LABEL_38:
    if ((v29 & 0x10) == 0)
    {
      goto LABEL_39;
    }

LABEL_62:
    *(this + 60) |= 0x10u;
    v38 = *(this + 5);
    if (!v38)
    {
      operator new();
    }

    v39 = *(a2 + 5);
    if (!v39)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(v22);
      v39 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 40);
    }

    CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::MergeFrom(v38, v39);
    v29 = *(a2 + 60);
    if ((v29 & 0x40) == 0)
    {
LABEL_40:
      if ((v29 & 0x80) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_72;
    }

    goto LABEL_67;
  }

LABEL_57:
  *(this + 60) |= 8u;
  v36 = *(this + 4);
  if (!v36)
  {
    operator new();
  }

  v37 = *(a2 + 4);
  if (!v37)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(v22);
    v37 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 32);
  }

  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::MergeFrom(v36, v37);
  v29 = *(a2 + 60);
  if ((v29 & 0x10) != 0)
  {
    goto LABEL_62;
  }

LABEL_39:
  if ((v29 & 0x40) == 0)
  {
    goto LABEL_40;
  }

LABEL_67:
  *(this + 60) |= 0x40u;
  v40 = *(this + 9);
  if (!v40)
  {
    operator new();
  }

  v41 = *(a2 + 9);
  if (!v41)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(v22);
    v41 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 72);
  }

  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::MergeFrom(v40, v41);
  v29 = *(a2 + 60);
  if ((v29 & 0x80) != 0)
  {
LABEL_72:
    *(this + 60) |= 0x80u;
    v42 = *(this + 10);
    if (!v42)
    {
      operator new();
    }

    v43 = *(a2 + 10);
    if (!v43)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(v22);
      v43 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 80);
    }

    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::MergeFrom(v42, v43);
    v29 = *(a2 + 60);
  }

LABEL_77:
  if ((v29 & 0xFF00) == 0)
  {
    return;
  }

  if ((v29 & 0x100) != 0)
  {
    *(this + 60) |= 0x100u;
    v44 = *(this + 11);
    if (!v44)
    {
      operator new();
    }

    v45 = *(a2 + 11);
    if (!v45)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(v22);
      v45 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 88);
    }

    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::MergeFrom(v44, v45);
    v29 = *(a2 + 60);
    if ((v29 & 0x400) == 0)
    {
LABEL_80:
      if ((v29 & 0x800) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_93;
    }
  }

  else if ((v29 & 0x400) == 0)
  {
    goto LABEL_80;
  }

  *(this + 60) |= 0x400u;
  v46 = *(this + 15);
  if (!v46)
  {
    operator new();
  }

  v47 = *(a2 + 15);
  if (!v47)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(v22);
    v47 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 120);
  }

  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::MergeFrom(v46, v47);
  v29 = *(a2 + 60);
  if ((v29 & 0x800) == 0)
  {
LABEL_81:
    if ((v29 & 0x1000) == 0)
    {
      return;
    }

    goto LABEL_98;
  }

LABEL_93:
  *(this + 60) |= 0x800u;
  v48 = *(this + 16);
  if (!v48)
  {
    operator new();
  }

  v49 = *(a2 + 16);
  if (!v49)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(v22);
    v49 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 128);
  }

  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::MergeFrom(v48, v49);
  if ((*(a2 + 60) & 0x1000) != 0)
  {
LABEL_98:
    v50 = *(a2 + 58);
    if (v50 >= 8)
    {
      __assert_rtn("set_raven_signal_environment_estimate", "CoreNavigationCLPGnssMsmtAnalysisToolData.pb.h", 3733, "::CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity_SignalEnvironmentType_IsValid(value)");
    }

    *(this + 60) |= 0x1000u;
    *(this + 58) = v50;
  }
}

void sub_1D0C8AEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::~GnssMsmtAnalysisToolDataCapture(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture *this)
{
  *this = &unk_1F4CD7620;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::SharedDtor(this);
  sub_1D0B8CD0C(this + 26);
  sub_1D0B8CD0C(this + 23);
  sub_1D0B8CD0C(this + 20);
  sub_1D0B8CD0C(this + 17);
  sub_1D0B8CD0C(this + 12);
  sub_1D0B8CD0C(this + 6);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::~GnssMsmtAnalysisToolDataCapture(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::SharedDtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture *this)
{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ != this)
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

    v4 = *(this + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 4);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 5);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 9);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(this + 10);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(this + 11);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = *(this + 15);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = *(this + 16);
    if (v11)
    {
      v12 = *(*v11 + 8);

      v12();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::Clear(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture *this)
{
  v2 = *(this + 60);
  if (v2)
  {
    if (v2)
    {
      v3 = *(this + 1);
      if (v3)
      {
        CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::Clear(v3);
        v2 = *(this + 60);
      }
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(this + 2);
      if (v4)
      {
        if (*(v4 + 48))
        {
          *(v4 + 40) = 0;
          *(v4 + 24) = 0u;
          *(v4 + 8) = 0u;
        }

        *(v4 + 48) = 0;
        v2 = *(this + 60);
      }
    }

    if ((v2 & 4) != 0)
    {
      v5 = *(this + 3);
      if (v5)
      {
        CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::Clear(v5);
        v2 = *(this + 60);
      }
    }

    if ((v2 & 8) != 0)
    {
      v6 = *(this + 4);
      if (v6)
      {
        CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::Clear(v6);
        v2 = *(this + 60);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v7 = *(this + 5);
      if (v7)
      {
        CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::Clear(v7);
        v2 = *(this + 60);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v8 = *(this + 9);
      if (v8)
      {
        if (*(v8 + 40))
        {
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
          *(v8 + 32) = 0;
          *(v8 + 24) = 0;
        }

        *(v8 + 40) = 0;
        v2 = *(this + 60);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      v9 = *(this + 10);
      if (v9)
      {
        if (*(v9 + 40))
        {
          *(v9 + 8) = 0;
          *(v9 + 16) = 0;
          *(v9 + 32) = 0;
          *(v9 + 24) = 0;
        }

        *(v9 + 40) = 0;
        v2 = *(this + 60);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v10 = *(this + 11);
      if (v10)
      {
        if (*(v10 + 40))
        {
          *(v10 + 8) = 0;
          *(v10 + 16) = 0;
          *(v10 + 32) = 0;
          *(v10 + 24) = 0;
        }

        *(v10 + 40) = 0;
        v2 = *(this + 60);
      }
    }

    if ((v2 & 0x400) != 0)
    {
      v11 = *(this + 15);
      if (v11)
      {
        CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::Clear(v11);
        v2 = *(this + 60);
      }
    }

    if ((v2 & 0x800) != 0)
    {
      v12 = *(this + 16);
      if (v12)
      {
        v13 = *(v12 + 96);
        if (v13)
        {
          *(v12 + 88) = 0;
          *(v12 + 8) = 0u;
          *(v12 + 24) = 0u;
          *(v12 + 40) = 0u;
          *(v12 + 56) = 0;
        }

        if ((v13 & 0xFF00) != 0)
        {
          *(v12 + 64) = 0;
          *(v12 + 72) = 0;
          *(v12 + 80) = 0;
        }

        *(v12 + 96) = 0;
      }
    }

    *(this + 58) = 0;
  }

  if (*(this + 14) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = *(*(this + 6) + 8 * v14);
      (*(*v15 + 32))(v15);
      ++v14;
    }

    while (v14 < *(this + 14));
  }

  *(this + 14) = 0;
  sub_1D0C77384(this + 96);
  sub_1D0C77384(this + 136);
  sub_1D0C77384(this + 160);
  result = sub_1D0C77384(this + 184);
  if (*(this + 54) >= 1)
  {
    v17 = 0;
    do
    {
      v18 = *(*(this + 26) + 8 * v17);
      result = (*(*v18 + 32))(v18);
      ++v17;
    }

    while (v17 < *(this + 54));
  }

  *(this + 54) = 0;
  *(this + 60) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 60);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 16) = 0;
          *(v2 + 8) = 0;
        }

        *(v2 + 24) = 0;
        v1 = *(this + 60);
      }
    }

    if ((v1 & 4) != 0)
    {
      v3 = *(this + 24);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 28) = 0;
        v1 = *(this + 60);
      }
    }

    if ((v1 & 8) != 0)
    {
      v4 = *(this + 32);
      if (v4)
      {
        if (*(v4 + 28))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        *(v4 + 28) = 0;
        v1 = *(this + 60);
      }
    }

    if ((v1 & 0x10) != 0)
    {
      v5 = *(this + 40);
      if (v5)
      {
        if (*(v5 + 28))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 28) = 0;
      }
    }

    *(this + 48) = 0;
  }

  *(this + 60) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets::Clear(uint64_t this)
{
  if (*(this + 48))
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 32) = 0;
    *(this + 24) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 88);
  if (v2)
  {
    if (*(this + 88))
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 28) = 0;
        v2 = *(this + 88);
      }
    }

    *(this + 80) = 0;
    *(this + 16) = 0u;
    *(this + 32) = 0u;
    if ((v2 & 0x40) != 0)
    {
      v4 = *(this + 48);
      if (v4)
      {
        if (*(v4 + 44))
        {
          *(v4 + 24) = 0uLL;
          *(v4 + 8) = 0uLL;
        }

        *(v4 + 44) = 0;
      }
    }
  }

  if (*(this + 64) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(v1 + 56) + 8 * v5);
      this = (*(*v6 + 32))(v6);
      ++v5;
    }

    while (v5 < *(v1 + 64));
  }

  *(v1 + 64) = 0;
  *(v1 + 88) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
LABEL_1:
    v4 = *(a2 + 1);
    if (v4 < *(a2 + 2))
    {
      TagFallback = *v4;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }

        goto LABEL_6;
      }
    }

    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
    *(a2 + 8) = TagFallback;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v6 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v6 != 2)
        {
          goto LABEL_44;
        }

        *(this + 60) |= 1u;
        v7 = *(this + 1);
        if (!v7)
        {
          operator new();
        }

        v143 = 0;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || *v8 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v143))
          {
            return 0;
          }
        }

        else
        {
          v143 = *v8;
          *(a2 + 1) = v8 + 1;
        }

        v11 = *(a2 + 14);
        v12 = *(a2 + 15);
        *(a2 + 14) = v11 + 1;
        if (v11 >= v12)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
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
        if (v16 >= *(a2 + 2) || *v16 != 18)
        {
          continue;
        }

        *(a2 + 1) = v16 + 1;
        goto LABEL_56;
      case 2u:
        if (v6 != 2)
        {
          goto LABEL_44;
        }

LABEL_56:
        *(this + 60) |= 2u;
        v17 = *(this + 2);
        if (!v17)
        {
          operator new();
        }

        v143 = 0;
        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v143))
          {
            return 0;
          }
        }

        else
        {
          v143 = *v18;
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
        if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets::MergePartialFromCodedStream(v17, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v21 = *(a2 + 14);
        v14 = __OFSUB__(v21, 1);
        v22 = v21 - 1;
        if (v22 < 0 == v14)
        {
          *(a2 + 14) = v22;
        }

        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2) || *v23 != 26)
        {
          continue;
        }

        *(a2 + 1) = v23 + 1;
LABEL_70:
        *(this + 60) |= 4u;
        v24 = *(this + 3);
        if (!v24)
        {
          operator new();
        }

        v143 = 0;
        v25 = *(a2 + 1);
        if (v25 >= *(a2 + 2) || *v25 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v143))
          {
            return 0;
          }
        }

        else
        {
          v143 = *v25;
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
        if (!CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::MergePartialFromCodedStream(v24, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v28 = *(a2 + 14);
        v14 = __OFSUB__(v28, 1);
        v29 = v28 - 1;
        if (v29 < 0 == v14)
        {
          *(a2 + 14) = v29;
        }

        v30 = *(a2 + 1);
        if (v30 >= *(a2 + 2) || *v30 != 34)
        {
          continue;
        }

        *(a2 + 1) = v30 + 1;
LABEL_84:
        *(this + 60) |= 8u;
        v31 = *(this + 4);
        if (!v31)
        {
          operator new();
        }

        v143 = 0;
        v32 = *(a2 + 1);
        if (v32 >= *(a2 + 2) || *v32 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v143))
          {
            return 0;
          }
        }

        else
        {
          v143 = *v32;
          *(a2 + 1) = v32 + 1;
        }

        v33 = *(a2 + 14);
        v34 = *(a2 + 15);
        *(a2 + 14) = v33 + 1;
        if (v33 >= v34)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::MergePartialFromCodedStream(v31, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v35 = *(a2 + 14);
        v14 = __OFSUB__(v35, 1);
        v36 = v35 - 1;
        if (v36 < 0 == v14)
        {
          *(a2 + 14) = v36;
        }

        v37 = *(a2 + 1);
        if (v37 >= *(a2 + 2) || *v37 != 42)
        {
          continue;
        }

        *(a2 + 1) = v37 + 1;
LABEL_98:
        *(this + 60) |= 0x10u;
        v38 = *(this + 5);
        if (!v38)
        {
          operator new();
        }

        v143 = 0;
        v39 = *(a2 + 1);
        if (v39 >= *(a2 + 2) || *v39 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v143))
          {
            return 0;
          }
        }

        else
        {
          v143 = *v39;
          *(a2 + 1) = v39 + 1;
        }

        v40 = *(a2 + 14);
        v41 = *(a2 + 15);
        *(a2 + 14) = v40 + 1;
        if (v40 >= v41)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::MergePartialFromCodedStream(v38, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v42 = *(a2 + 14);
        v14 = __OFSUB__(v42, 1);
        v43 = v42 - 1;
        if (v43 < 0 == v14)
        {
          *(a2 + 14) = v43;
        }

        v44 = *(a2 + 1);
        if (v44 >= *(a2 + 2) || *v44 != 50)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v44 + 1;
LABEL_112:
          v45 = *(this + 15);
          v46 = *(this + 14);
          if (v46 >= v45)
          {
            if (v45 == *(this + 16))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
              v45 = *(this + 15);
            }

            *(this + 15) = v45 + 1;
            operator new();
          }

          v47 = *(this + 6);
          *(this + 14) = v46 + 1;
          v48 = *(v47 + 8 * v46);
          v143 = 0;
          v49 = *(a2 + 1);
          if (v49 >= *(a2 + 2) || *v49 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v143))
            {
              return 0;
            }
          }

          else
          {
            v143 = *v49;
            *(a2 + 1) = v49 + 1;
          }

          v50 = *(a2 + 14);
          v51 = *(a2 + 15);
          *(a2 + 14) = v50 + 1;
          if (v50 >= v51)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::MergePartialFromCodedStream(v48, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v52 = *(a2 + 14);
          v14 = __OFSUB__(v52, 1);
          v53 = v52 - 1;
          if (v53 < 0 == v14)
          {
            *(a2 + 14) = v53;
          }

          v44 = *(a2 + 1);
          if (v44 >= *(a2 + 2))
          {
            goto LABEL_1;
          }

          v54 = *v44;
        }

        while (v54 == 50);
        if (v54 != 58)
        {
          continue;
        }

        *(a2 + 1) = v44 + 1;
LABEL_130:
        *(this + 60) |= 0x40u;
        v55 = *(this + 9);
        if (!v55)
        {
          operator new();
        }

        v143 = 0;
        v56 = *(a2 + 1);
        if (v56 >= *(a2 + 2) || *v56 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v143))
          {
            return 0;
          }
        }

        else
        {
          v143 = *v56;
          *(a2 + 1) = v56 + 1;
        }

        v57 = *(a2 + 14);
        v58 = *(a2 + 15);
        *(a2 + 14) = v57 + 1;
        if (v57 >= v58)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::MergePartialFromCodedStream(v55, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v59 = *(a2 + 14);
        v14 = __OFSUB__(v59, 1);
        v60 = v59 - 1;
        if (v60 < 0 == v14)
        {
          *(a2 + 14) = v60;
        }

        v61 = *(a2 + 1);
        if (v61 >= *(a2 + 2) || *v61 != 66)
        {
          continue;
        }

        *(a2 + 1) = v61 + 1;
LABEL_144:
        *(this + 60) |= 0x80u;
        v62 = *(this + 10);
        if (!v62)
        {
          operator new();
        }

        v143 = 0;
        v63 = *(a2 + 1);
        if (v63 >= *(a2 + 2) || *v63 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v143))
          {
            return 0;
          }
        }

        else
        {
          v143 = *v63;
          *(a2 + 1) = v63 + 1;
        }

        v64 = *(a2 + 14);
        v65 = *(a2 + 15);
        *(a2 + 14) = v64 + 1;
        if (v64 >= v65)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::MergePartialFromCodedStream(v62, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v66 = *(a2 + 14);
        v14 = __OFSUB__(v66, 1);
        v67 = v66 - 1;
        if (v67 < 0 == v14)
        {
          *(a2 + 14) = v67;
        }

        v68 = *(a2 + 1);
        if (v68 >= *(a2 + 2) || *v68 != 74)
        {
          continue;
        }

        *(a2 + 1) = v68 + 1;
LABEL_158:
        *(this + 60) |= 0x100u;
        v69 = *(this + 11);
        if (!v69)
        {
          operator new();
        }

        v143 = 0;
        v70 = *(a2 + 1);
        if (v70 >= *(a2 + 2) || *v70 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v143))
          {
            return 0;
          }
        }

        else
        {
          v143 = *v70;
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
        if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::MergePartialFromCodedStream(v69, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v73 = *(a2 + 14);
        v14 = __OFSUB__(v73, 1);
        v74 = v73 - 1;
        if (v74 < 0 == v14)
        {
          *(a2 + 14) = v74;
        }

        v75 = *(a2 + 1);
        if (v75 >= *(a2 + 2) || *v75 != 82)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v75 + 1;
LABEL_172:
          v76 = *(this + 27);
          v77 = *(this + 26);
          if (v77 >= v76)
          {
            if (v76 == *(this + 28))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96));
              v76 = *(this + 27);
            }

            *(this + 27) = v76 + 1;
            operator new();
          }

          v78 = *(this + 12);
          *(this + 26) = v77 + 1;
          v79 = *(v78 + 8 * v77);
          v143 = 0;
          v80 = *(a2 + 1);
          if (v80 >= *(a2 + 2) || *v80 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v143))
            {
              return 0;
            }
          }

          else
          {
            v143 = *v80;
            *(a2 + 1) = v80 + 1;
          }

          v81 = *(a2 + 14);
          v82 = *(a2 + 15);
          *(a2 + 14) = v81 + 1;
          if (v81 >= v82)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergePartialFromCodedStream(v79, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v83 = *(a2 + 14);
          v14 = __OFSUB__(v83, 1);
          v84 = v83 - 1;
          if (v84 < 0 == v14)
          {
            *(a2 + 14) = v84;
          }

          v75 = *(a2 + 1);
          if (v75 >= *(a2 + 2))
          {
            goto LABEL_1;
          }

          v85 = *v75;
        }

        while (v85 == 82);
        if (v85 != 90)
        {
          continue;
        }

        *(a2 + 1) = v75 + 1;
LABEL_190:
        *(this + 60) |= 0x400u;
        v86 = *(this + 15);
        if (!v86)
        {
          operator new();
        }

        v143 = 0;
        v87 = *(a2 + 1);
        if (v87 >= *(a2 + 2) || *v87 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v143))
          {
            return 0;
          }
        }

        else
        {
          v143 = *v87;
          *(a2 + 1) = v87 + 1;
        }

        v88 = *(a2 + 14);
        v89 = *(a2 + 15);
        *(a2 + 14) = v88 + 1;
        if (v88 >= v89)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::MergePartialFromCodedStream(v86, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v90 = *(a2 + 14);
        v14 = __OFSUB__(v90, 1);
        v91 = v90 - 1;
        if (v91 < 0 == v14)
        {
          *(a2 + 14) = v91;
        }

        v92 = *(a2 + 1);
        if (v92 >= *(a2 + 2) || *v92 != 98)
        {
          continue;
        }

        *(a2 + 1) = v92 + 1;
LABEL_204:
        *(this + 60) |= 0x800u;
        v93 = *(this + 16);
        if (!v93)
        {
          operator new();
        }

        v143 = 0;
        v94 = *(a2 + 1);
        if (v94 >= *(a2 + 2) || *v94 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v143))
          {
            return 0;
          }
        }

        else
        {
          v143 = *v94;
          *(a2 + 1) = v94 + 1;
        }

        v95 = *(a2 + 14);
        v96 = *(a2 + 15);
        *(a2 + 14) = v95 + 1;
        if (v95 >= v96)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::MergePartialFromCodedStream(v93, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v97 = *(a2 + 14);
        v14 = __OFSUB__(v97, 1);
        v98 = v97 - 1;
        if (v98 < 0 == v14)
        {
          *(a2 + 14) = v98;
        }

        v99 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v99 < v9 && *v99 == 104)
        {
          v10 = v99 + 1;
          *(a2 + 1) = v10;
LABEL_218:
          v143 = 0;
          if (v10 >= v9 || (v100 = *v10, (v100 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v143);
            if (!result)
            {
              return result;
            }

            v100 = v143;
          }

          else
          {
            *(a2 + 1) = v10 + 1;
          }

          if (v100 <= 7)
          {
            *(this + 60) |= 0x1000u;
            *(this + 58) = v100;
          }

          v102 = *(a2 + 1);
          if (v102 < *(a2 + 2) && *v102 == 114)
          {
            do
            {
              *(a2 + 1) = v102 + 1;
LABEL_228:
              v103 = *(this + 37);
              v104 = *(this + 36);
              if (v104 >= v103)
              {
                if (v103 == *(this + 38))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 136));
                  v103 = *(this + 37);
                }

                *(this + 37) = v103 + 1;
                operator new();
              }

              v105 = *(this + 17);
              *(this + 36) = v104 + 1;
              v106 = *(v105 + 8 * v104);
              v143 = 0;
              v107 = *(a2 + 1);
              if (v107 >= *(a2 + 2) || *v107 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v143))
                {
                  return 0;
                }
              }

              else
              {
                v143 = *v107;
                *(a2 + 1) = v107 + 1;
              }

              v108 = *(a2 + 14);
              v109 = *(a2 + 15);
              *(a2 + 14) = v108 + 1;
              if (v108 >= v109)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::MergePartialFromCodedStream(v106, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v110 = *(a2 + 14);
              v14 = __OFSUB__(v110, 1);
              v111 = v110 - 1;
              if (v111 < 0 == v14)
              {
                *(a2 + 14) = v111;
              }

              v102 = *(a2 + 1);
              if (v102 >= *(a2 + 2))
              {
                goto LABEL_1;
              }

              v112 = *v102;
            }

            while (v112 == 114);
            if (v112 == 122)
            {
              do
              {
                *(a2 + 1) = v102 + 1;
LABEL_246:
                v113 = *(this + 43);
                v114 = *(this + 42);
                if (v114 >= v113)
                {
                  if (v113 == *(this + 44))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 160));
                    v113 = *(this + 43);
                  }

                  *(this + 43) = v113 + 1;
                  operator new();
                }

                v115 = *(this + 20);
                *(this + 42) = v114 + 1;
                v116 = *(v115 + 8 * v114);
                v143 = 0;
                v117 = *(a2 + 1);
                if (v117 >= *(a2 + 2) || *v117 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v143))
                  {
                    return 0;
                  }
                }

                else
                {
                  v143 = *v117;
                  *(a2 + 1) = v117 + 1;
                }

                v118 = *(a2 + 14);
                v119 = *(a2 + 15);
                *(a2 + 14) = v118 + 1;
                if (v118 >= v119)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::MergePartialFromCodedStream(v116, a2) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v120 = *(a2 + 14);
                v14 = __OFSUB__(v120, 1);
                v121 = v120 - 1;
                if (v121 < 0 == v14)
                {
                  *(a2 + 14) = v121;
                }

                v102 = *(a2 + 1);
                v122 = *(a2 + 2);
              }

              while (v102 < v122 && *v102 == 122);
              if (v122 - v102 >= 2)
              {
                v123 = *v102;
                do
                {
                  if (v123 != 130 || v102[1] != 1)
                  {
                    goto LABEL_1;
                  }

                  *(a2 + 1) = v102 + 2;
LABEL_267:
                  v124 = *(this + 49);
                  v125 = *(this + 48);
                  if (v125 >= v124)
                  {
                    if (v124 == *(this + 50))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 184));
                      v124 = *(this + 49);
                    }

                    *(this + 49) = v124 + 1;
                    operator new();
                  }

                  v126 = *(this + 23);
                  *(this + 48) = v125 + 1;
                  v127 = *(v126 + 8 * v125);
                  v143 = 0;
                  v128 = *(a2 + 1);
                  if (v128 >= *(a2 + 2) || *v128 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v143))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v143 = *v128;
                    *(a2 + 1) = v128 + 1;
                  }

                  v129 = *(a2 + 14);
                  v130 = *(a2 + 15);
                  *(a2 + 14) = v129 + 1;
                  if (v129 >= v130)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                  if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::MergePartialFromCodedStream(v127, a2) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v131 = *(a2 + 14);
                  v14 = __OFSUB__(v131, 1);
                  v132 = v131 - 1;
                  if (v132 < 0 == v14)
                  {
                    *(a2 + 14) = v132;
                  }

                  v102 = *(a2 + 1);
                  if (*(a2 + 4) - v102 <= 1)
                  {
                    goto LABEL_1;
                  }

                  v123 = *v102;
                }

                while (v123 != 138);
                if (v102[1] == 1)
                {
                  do
                  {
                    *(a2 + 1) = v102 + 2;
LABEL_285:
                    v133 = *(this + 55);
                    v134 = *(this + 54);
                    if (v134 >= v133)
                    {
                      if (v133 == *(this + 56))
                      {
                        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 208));
                        v133 = *(this + 55);
                      }

                      *(this + 55) = v133 + 1;
                      operator new();
                    }

                    v135 = *(this + 26);
                    *(this + 54) = v134 + 1;
                    v136 = *(v135 + 8 * v134);
                    v143 = 0;
                    v137 = *(a2 + 1);
                    if (v137 >= *(a2 + 2) || *v137 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v143))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v143 = *v137;
                      *(a2 + 1) = v137 + 1;
                    }

                    v138 = *(a2 + 14);
                    v139 = *(a2 + 15);
                    *(a2 + 14) = v138 + 1;
                    if (v138 >= v139)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                    if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::MergePartialFromCodedStream(v136, a2) || *(a2 + 36) != 1)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                    v140 = *(a2 + 14);
                    v14 = __OFSUB__(v140, 1);
                    v141 = v140 - 1;
                    if (v141 < 0 == v14)
                    {
                      *(a2 + 14) = v141;
                    }

                    v102 = *(a2 + 1);
                    v142 = *(a2 + 2);
                  }

                  while (v142 - v102 > 1 && *v102 == 138 && v102[1] == 1);
                  if (v102 == v142 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

        break;
      case 3u:
        if (v6 == 2)
        {
          goto LABEL_70;
        }

        goto LABEL_44;
      case 4u:
        if (v6 == 2)
        {
          goto LABEL_84;
        }

        goto LABEL_44;
      case 5u:
        if (v6 == 2)
        {
          goto LABEL_98;
        }

        goto LABEL_44;
      case 6u:
        if (v6 == 2)
        {
          goto LABEL_112;
        }

        goto LABEL_44;
      case 7u:
        if (v6 == 2)
        {
          goto LABEL_130;
        }

        goto LABEL_44;
      case 8u:
        if (v6 == 2)
        {
          goto LABEL_144;
        }

        goto LABEL_44;
      case 9u:
        if (v6 != 2)
        {
          goto LABEL_44;
        }

        goto LABEL_158;
      case 0xAu:
        if (v6 == 2)
        {
          goto LABEL_172;
        }

        goto LABEL_44;
      case 0xBu:
        if (v6 == 2)
        {
          goto LABEL_190;
        }

        goto LABEL_44;
      case 0xCu:
        if (v6 == 2)
        {
          goto LABEL_204;
        }

        goto LABEL_44;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_218;
      case 0xEu:
        if (v6 == 2)
        {
          goto LABEL_228;
        }

        goto LABEL_44;
      case 0xFu:
        if (v6 == 2)
        {
          goto LABEL_246;
        }

        goto LABEL_44;
      case 0x10u:
        if (v6 == 2)
        {
          goto LABEL_267;
        }

        goto LABEL_44;
      case 0x11u:
        if (v6 == 2)
        {
          goto LABEL_285;
        }

        goto LABEL_44;
      default:
LABEL_44:
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 240);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 240);
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
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 240);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  v9 = *(v5 + 24);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 240);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_16:
  v10 = *(v5 + 32);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  if ((*(v5 + 240) & 0x10) != 0)
  {
LABEL_19:
    v11 = *(v5 + 40);
    if (!v11)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v11 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 40);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  }

LABEL_22:
  if (*(v5 + 56) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, *(*(v5 + 48) + 8 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 56));
  }

  v13 = *(v5 + 240);
  if ((v13 & 0x40) != 0)
  {
    v14 = *(v5 + 72);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v14 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 72);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v14, a2, a4);
    v13 = *(v5 + 240);
    if ((v13 & 0x80) == 0)
    {
LABEL_27:
      if ((v13 & 0x100) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }
  }

  else if ((v13 & 0x80) == 0)
  {
    goto LABEL_27;
  }

  v15 = *(v5 + 80);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v15 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v15, a2, a4);
  if ((*(v5 + 240) & 0x100) != 0)
  {
LABEL_35:
    v16 = *(v5 + 88);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v16 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 88);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v16, a2, a4);
  }

LABEL_38:
  if (*(v5 + 104) >= 1)
  {
    v17 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, *(*(v5 + 96) + 8 * v17++), a2, a4);
    }

    while (v17 < *(v5 + 104));
  }

  v18 = *(v5 + 240);
  if ((v18 & 0x400) != 0)
  {
    v23 = *(v5 + 120);
    if (!v23)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v23 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 120);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v23, a2, a4);
    v18 = *(v5 + 240);
    if ((v18 & 0x800) == 0)
    {
LABEL_43:
      if ((v18 & 0x1000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }
  }

  else if ((v18 & 0x800) == 0)
  {
    goto LABEL_43;
  }

  v24 = *(v5 + 128);
  if (!v24)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v24 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 128);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v24, a2, a4);
  if ((*(v5 + 240) & 0x1000) != 0)
  {
LABEL_44:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, *(v5 + 232), a2, a4);
  }

LABEL_45:
  if (*(v5 + 144) >= 1)
  {
    v19 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, *(*(v5 + 136) + 8 * v19++), a2, a4);
    }

    while (v19 < *(v5 + 144));
  }

  if (*(v5 + 168) >= 1)
  {
    v20 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, *(*(v5 + 160) + 8 * v20++), a2, a4);
    }

    while (v20 < *(v5 + 168));
  }

  if (*(v5 + 192) >= 1)
  {
    v21 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, *(*(v5 + 184) + 8 * v21++), a2, a4);
    }

    while (v21 < *(v5 + 192));
  }

  if (*(v5 + 216) >= 1)
  {
    v22 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, *(*(v5 + 208) + 8 * v22++), a2, a4);
    }

    while (v22 < *(v5 + 216));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture *this)
{
  v2 = *(this + 60);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_54;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
    v4 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 8);
  }

  v5 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::ByteSize(v4);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    v7 = 1;
  }

  v3 = v6 + v7 + 1;
  v2 = *(this + 60);
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 2);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
      v8 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 16);
    }

    v9 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets::ByteSize(v8);
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
    v2 = *(this + 60);
  }

LABEL_18:
  if ((v2 & 4) != 0)
  {
    v12 = *(this + 3);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
      v12 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 24);
    }

    v13 = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::ByteSize(v12);
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
    v2 = *(this + 60);
    if ((v2 & 8) == 0)
    {
LABEL_20:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_36;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_20;
  }

  v16 = *(this + 4);
  if (!v16)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
    v16 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 32);
  }

  v17 = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::ByteSize(v16);
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
  v2 = *(this + 60);
  if ((v2 & 0x10) == 0)
  {
LABEL_21:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_36:
  v20 = *(this + 5);
  if (!v20)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
    v20 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 40);
  }

  v21 = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::ByteSize(v20);
  v22 = v21;
  if (v21 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
  }

  else
  {
    v23 = 1;
  }

  v3 += v22 + v23 + 1;
  v2 = *(this + 60);
  if ((v2 & 0x40) == 0)
  {
LABEL_22:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

LABEL_42:
  v24 = *(this + 9);
  if (!v24)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
    v24 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 72);
  }

  v25 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::ByteSize(v24);
  v26 = v25;
  if (v25 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
  }

  else
  {
    v27 = 1;
  }

  v3 += v26 + v27 + 1;
  v2 = *(this + 60);
  if ((v2 & 0x80) != 0)
  {
LABEL_48:
    v28 = *(this + 10);
    if (!v28)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
      v28 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 80);
    }

    v29 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::ByteSize(v28);
    v30 = v29;
    if (v29 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
    }

    else
    {
      v31 = 1;
    }

    v3 += v30 + v31 + 1;
    v2 = *(this + 60);
  }

LABEL_54:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_84;
  }

  if ((v2 & 0x100) != 0)
  {
    v32 = *(this + 11);
    if (!v32)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
      v32 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 88);
    }

    v33 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::ByteSize(v32);
    v34 = v33;
    if (v33 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
    }

    else
    {
      v35 = 1;
    }

    v3 += v34 + v35 + 1;
    v2 = *(this + 60);
    if ((v2 & 0x400) == 0)
    {
LABEL_57:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_72;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_57;
  }

  v36 = *(this + 15);
  if (!v36)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
    v36 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 120);
  }

  v37 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::ByteSize(v36);
  v38 = v37;
  if (v37 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
  }

  else
  {
    v39 = 1;
  }

  v3 += v38 + v39 + 1;
  v2 = *(this + 60);
  if ((v2 & 0x800) == 0)
  {
LABEL_58:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_78;
  }

LABEL_72:
  v40 = *(this + 16);
  if (!v40)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
    v40 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::default_instance_ + 128);
  }

  v41 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::RavenUserActivityEstimate::ByteSize(v40);
  v42 = v41;
  if (v41 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
  }

  else
  {
    v43 = 1;
  }

  v3 += v42 + v43 + 1;
  if ((*(this + 60) & 0x1000) != 0)
  {
LABEL_78:
    v44 = *(this + 58);
    if ((v44 & 0x80000000) != 0)
    {
      v45 = 11;
    }

    else if (v44 >= 0x80)
    {
      v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 1;
    }

    else
    {
      v45 = 2;
    }

    v3 += v45;
  }

LABEL_84:
  v46 = *(this + 14);
  v47 = v46 + v3;
  if (v46 >= 1)
  {
    v48 = 0;
    do
    {
      v49 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::ByteSize(*(*(this + 6) + 8 * v48));
      v50 = v49;
      if (v49 >= 0x80)
      {
        v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49);
      }

      else
      {
        v51 = 1;
      }

      v47 += v50 + v51;
      ++v48;
    }

    while (v48 < *(this + 14));
  }

  v52 = *(this + 26);
  v53 = v52 + v47;
  if (v52 >= 1)
  {
    v54 = 0;
    do
    {
      v55 = CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::ByteSize(*(*(this + 12) + 8 * v54));
      v56 = v55;
      if (v55 >= 0x80)
      {
        v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55);
      }

      else
      {
        v57 = 1;
      }

      v53 += v56 + v57;
      ++v54;
    }

    while (v54 < *(this + 26));
  }

  v58 = *(this + 36);
  v59 = v58 + v53;
  if (v58 >= 1)
  {
    v60 = 0;
    do
    {
      v61 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::ByteSize(*(*(this + 17) + 8 * v60));
      v62 = v61;
      if (v61 >= 0x80)
      {
        v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61);
      }

      else
      {
        v63 = 1;
      }

      v59 += v62 + v63;
      ++v60;
    }

    while (v60 < *(this + 36));
  }

  v64 = *(this + 42);
  v65 = v64 + v59;
  if (v64 >= 1)
  {
    v66 = 0;
    do
    {
      v67 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::ByteSize(*(*(this + 20) + 8 * v66));
      v68 = v67;
      if (v67 >= 0x80)
      {
        v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v67);
      }

      else
      {
        v69 = 1;
      }

      v65 += v68 + v69;
      ++v66;
    }

    while (v66 < *(this + 42));
  }

  v70 = *(this + 48);
  v71 = v65 + 2 * v70;
  if (v70 >= 1)
  {
    v72 = 0;
    do
    {
      v73 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::ByteSize(*(*(this + 23) + 8 * v72));
      v74 = v73;
      if (v73 >= 0x80)
      {
        v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v73);
      }

      else
      {
        v75 = 1;
      }

      v71 += v74 + v75;
      ++v72;
    }

    while (v72 < *(this + 48));
  }

  v76 = *(this + 54);
  v77 = (v71 + 2 * v76);
  if (v76 >= 1)
  {
    v78 = 0;
    do
    {
      v79 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::ByteSize(*(*(this + 26) + 8 * v78));
      v80 = v79;
      if (v79 >= 0x80)
      {
        v81 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v79);
      }

      else
      {
        v81 = 1;
      }

      v77 = (v80 + v77 + v81);
      ++v78;
    }

    while (v78 < *(this + 54));
  }

  *(this + 59) = v77;
  return v77;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  LOBYTE(v5) = *(a2 + 60);
  if (!v5)
  {
    return result;
  }

  if (*(a2 + 60))
  {
    v6 = *(a2 + 1);
    *(this + 15) |= 1u;
    *(this + 1) = v6;
    v5 = *(a2 + 15);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((*(a2 + 60) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 15) |= 2u;
  v7 = *(this + 2);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 2);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::default_instance_ + 16);
  }

  result = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::MergeFrom(v7, v8);
  v5 = *(a2 + 15);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_23:
    *(this + 15) |= 8u;
    v11 = *(this + 4);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 4);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::default_instance_ + 32);
    }

    result = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergeFrom(v11, v12);
    v5 = *(a2 + 15);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_18:
  *(this + 15) |= 4u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::default_instance_ + 24);
  }

  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::MergeFrom(v9, v10);
  v5 = *(a2 + 15);
  if ((v5 & 8) != 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_28:
  *(this + 15) |= 0x10u;
  v13 = *(this + 5);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 5);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::default_instance_ + 40);
  }

  result = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergeFrom(v13, v14);
  if ((*(a2 + 15) & 0x20) != 0)
  {
LABEL_10:
    result = *(a2 + 6);
    *(this + 15) |= 0x20u;
    *(this + 6) = result;
  }

  return result;
}

void sub_1D0C8D834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 48);
  if (v5)
  {
    if (*(a2 + 48))
    {
      result = *(a2 + 1);
      *(this + 12) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 12);
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

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 12) |= 2u;
    *(this + 2) = result;
    v5 = *(a2 + 12);
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
    *(this + 12) |= 4u;
    *(this + 3) = result;
    v5 = *(a2 + 12);
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
    *(this + 12) |= 8u;
    *(this + 4) = result;
    if ((*(a2 + 12) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    v6 = *(a2 + 10);
    *(this + 12) |= 0x10u;
    *(this + 10) = v6;
  }

  return result;
}

void sub_1D0C8D960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts *a2)
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
      v6 = *(a2 + 2);
      *(this + 10) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 10);
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

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 10) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 10);
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
    v8 = *(a2 + 4);
    *(this + 10) |= 4u;
    *(this + 4) = v8;
    v4 = *(a2 + 10);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    v9 = *(a2 + 5);
    *(this + 10) |= 8u;
    *(this + 5) = v9;
    v4 = *(a2 + 10);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    v10 = *(a2 + 6);
    *(this + 10) |= 0x10u;
    *(this + 6) = v10;
    v4 = *(a2 + 10);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_18:
    v11 = *(a2 + 7);
    *(this + 10) |= 0x20u;
    *(this + 7) = v11;
    if ((*(a2 + 10) & 0x40) == 0)
    {
      return;
    }

LABEL_11:
    v5 = *(a2 + 8);
    *(this + 10) |= 0x40u;
    *(this + 8) = v5;
  }
}

void sub_1D0C8DACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v4 = *(this + 16);
  v5 = *(a2 + 16);
  v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 56));
  LODWORD(v8) = *(a2 + 16);
  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      if (v9 >= v8)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
      }

      v10 = *(*(a2 + 7) + 8 * v9);
      v11 = *(this + 17);
      v12 = *(this + 16);
      if (v12 >= v11)
      {
        if (v11 == *(this + 18))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 56));
          v11 = *(this + 17);
        }

        *(this + 17) = v11 + 1;
        operator new();
      }

      v13 = *(this + 7);
      *(this + 16) = v12 + 1;
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::MergeFrom(*(v13 + 8 * v12), v10);
      ++v9;
      v8 = *(a2 + 16);
    }

    while (v9 < v8);
  }

  LOBYTE(v14) = *(a2 + 88);
  if (v14)
  {
    if (*(a2 + 88))
    {
      *(this + 22) |= 1u;
      v15 = *(this + 1);
      if (!v15)
      {
        operator new();
      }

      v16 = *(a2 + 1);
      if (!v16)
      {
        CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(v6);
        v16 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::default_instance_ + 8);
      }

      result = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::MergeFrom(v15, v16);
      v14 = *(a2 + 22);
      if ((v14 & 2) == 0)
      {
LABEL_16:
        if ((v14 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_28;
      }
    }

    else if ((*(a2 + 88) & 2) == 0)
    {
      goto LABEL_16;
    }

    result = *(a2 + 2);
    *(this + 22) |= 2u;
    *(this + 2) = result;
    v14 = *(a2 + 22);
    if ((v14 & 4) == 0)
    {
LABEL_17:
      if ((v14 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }

LABEL_28:
    result = *(a2 + 3);
    *(this + 22) |= 4u;
    *(this + 3) = result;
    v14 = *(a2 + 22);
    if ((v14 & 8) == 0)
    {
LABEL_18:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_30;
    }

LABEL_29:
    result = *(a2 + 4);
    *(this + 22) |= 8u;
    *(this + 4) = result;
    v14 = *(a2 + 22);
    if ((v14 & 0x10) == 0)
    {
LABEL_19:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_31;
    }

LABEL_30:
    result = *(a2 + 5);
    *(this + 22) |= 0x10u;
    *(this + 5) = result;
    v14 = *(a2 + 22);
    if ((v14 & 0x20) == 0)
    {
LABEL_20:
      if ((v14 & 0x40) == 0)
      {
        return result;
      }

      goto LABEL_32;
    }

LABEL_31:
    v17 = *(a2 + 80);
    *(this + 22) |= 0x20u;
    *(this + 80) = v17;
    if ((*(a2 + 22) & 0x40) == 0)
    {
      return result;
    }

LABEL_32:
    *(this + 22) |= 0x40u;
    v18 = *(this + 6);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 6);
    if (!v19)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(v6);
      v19 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::default_instance_ + 48);
    }

    return CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::MergeFrom(v18, v19);
  }

  return result;
}

void sub_1D0C8DE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::Swap(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture *this, CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    v5 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v5;
    v6 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v6;
    v7 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v7;
    v8 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v8;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v9 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v9;
    v10 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v10;
    v11 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v11;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v12 = *(v3 + 15);
    *(v3 + 15) = *(a2 + 15);
    *(a2 + 15) = v12;
    v13 = *(v3 + 16);
    *(v3 + 16) = *(a2 + 16);
    *(a2 + 16) = v13;
    LODWORD(v13) = *(v3 + 58);
    *(v3 + 58) = *(a2 + 58);
    *(a2 + 58) = v13;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v14 = *(v3 + 60);
    *(v3 + 60) = *(a2 + 60);
    *(a2 + 60) = v14;
    v15 = *(v3 + 59);
    *(v3 + 59) = *(a2 + 59);
    *(a2 + 59) = v15;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::SharedCtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility *this)
{
  *(this + 32) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0u;
  *&result = 2;
  *(this + 36) = 2;
  *(this + 11) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::SatelliteVisibility(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility *a2)
{
  *this = &unk_1F4CD7698;
  *(this + 1) = 0;
  *(this + 32) = 0;
  *(this + 1) = 0u;
  *(this + 36) = 2;
  *(this + 11) = 0;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      *(this + 11) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
        v6 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::MergeFrom(v5, v6);
      v4 = *(a2 + 11);
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

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 11) |= 2u;
    *(this + 2) = v7;
    v4 = *(a2 + 11);
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
    v8 = *(a2 + 3);
    *(this + 11) |= 4u;
    *(this + 3) = v8;
    v4 = *(a2 + 11);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_18:
      v10 = *(a2 + 9);
      if (v10 >= 3)
      {
        __assert_rtn("set_los_status", "CoreNavigationCLPGnssMsmtAnalysisToolData.pb.h", 3968, "::CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::LineOfSight_IsValid(value)");
      }

      *(this + 11) |= 0x10u;
      *(this + 9) = v10;
      return;
    }

LABEL_17:
    v9 = *(a2 + 32);
    *(this + 11) |= 8u;
    *(this + 32) = v9;
    if ((*(a2 + 11) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_18;
  }
}

void sub_1D0C8E2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::~SatelliteVisibility(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility *this)
{
  *this = &unk_1F4CD7698;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::~SatelliteVisibility(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::SharedDtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility *this)
{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    if (*(this + 44))
    {
      v1 = *(this + 8);
      if (v1)
      {
        if (*(v1 + 20))
        {
          *(v1 + 8) = 0;
        }

        *(v1 + 20) = 0;
      }
    }

    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 32) = 0;
    *(this + 36) = 2;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        goto LABEL_42;
      }

      if (v6 == 4)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v10 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_46:
        v25[0] = 0;
        if (v10 >= v8 || (v21 = *v10, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v25);
          if (!result)
          {
            return result;
          }

          v21 = v25[0];
          v22 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v22 = v10 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 32) = v21 != 0;
        *(this + 11) |= 8u;
        if (v22 < v8 && *v22 == 40)
        {
          v9 = v22 + 1;
          *(a2 + 1) = v9;
LABEL_54:
          v25[0] = 0;
          if (v9 >= v8 || (v24 = *v9, (v24 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v25);
            if (!result)
            {
              return result;
            }

            v24 = v25[0];
          }

          else
          {
            *(a2 + 1) = v9 + 1;
          }

          if (v24 <= 2)
          {
            *(this + 11) |= 0x10u;
            *(this + 9) = v24;
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
        if (v6 == 5 && (TagFallback & 7) == 0)
        {
          v9 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_54;
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
      if (v6 != 2 || v7 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_38;
    }

    if (v7 != 2)
    {
      goto LABEL_21;
    }

    *(this + 11) |= 1u;
    v11 = *(this + 1);
    if (!v11)
    {
      operator new();
    }

    v25[0] = 0;
    v12 = *(a2 + 1);
    if (v12 >= *(a2 + 2) || *v12 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v25))
      {
        return 0;
      }
    }

    else
    {
      v25[0] = *v12;
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
    if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::MergePartialFromCodedStream(v11, a2) || *(a2 + 36) != 1)
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
    if (v18 < *(a2 + 2) && *v18 == 17)
    {
      *(a2 + 1) = v18 + 1;
LABEL_38:
      *v25 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = *v25;
      *(this + 11) |= 2u;
      v19 = *(a2 + 1);
      if (v19 < *(a2 + 2) && *v19 == 25)
      {
        *(a2 + 1) = v19 + 1;
LABEL_42:
        *v25 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v25;
        *(this + 11) |= 4u;
        v20 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v20 < v8 && *v20 == 32)
        {
          v10 = v20 + 1;
          *(a2 + 1) = v10;
          goto LABEL_46;
        }
      }
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::default_instance_ + 8);
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

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 32), a2, a4);
    if ((*(v5 + 44) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 44);
  if ((v6 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_13:
  v8 = *(v5 + 36);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    if (v2)
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
        v5 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::default_instance_ + 8);
      }

      v6 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::ByteSize(v5);
      v7 = v6;
      if (v6 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
      }

      else
      {
        v8 = 1;
      }

      v3 = v7 + v8 + 1;
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
      v3 += 9;
    }

    v4 = v3 + ((v2 >> 2) & 2);
    if ((v2 & 0x10) != 0)
    {
      v9 = *(this + 9);
      if ((v9 & 0x80000000) != 0)
      {
        v10 = 11;
      }

      else if (v9 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      }

      else
      {
        v10 = 2;
      }

      v4 = (v10 + v4);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 10) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID *a2)
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
      if (v5 >= 7)
      {
        __assert_rtn("set_constellation", "CoreNavigationCLPGnssMsmtAnalysisToolData.pb.h", 6927, "::CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::Constellation_IsValid(value)");
      }

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

void sub_1D0C8EB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility::Swap(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility *this, CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteVisibility *a2)
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
    LOBYTE(v2) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v2;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::PerBandMeasurementCount(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CD7710;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount *a2)
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
      if (v5 >= 0xD)
      {
        __assert_rtn("set_gnss_band", "CoreNavigationCLPGnssMsmtAnalysisToolData.pb.h", 3995, "::CoreNavigation::CLP::LogEntry::PrivateData::Band_IsValid(value)");
      }

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

void sub_1D0C8EE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::~PerBandMeasurementCount(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount *this)
{
  *this = &unk_1F4CD7710;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::~PerBandMeasurementCount(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (v7 <= 0xC)
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
        v15 = 0;
        if (v9 >= v8 || (v11 = *v9, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
          if (!result)
          {
            return result;
          }

          v11 = v15;
          v12 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v12 = v9 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 3) = v11;
        *(this + 5) |= 2u;
        if (v12 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount *this)
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

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::Swap(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount *this, CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount *a2)
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

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::SharedCtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps *this)
{
  *(this + 7) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::TimeStamps(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps *a2)
{
  *this = &unk_1F4CD7788;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::~TimeStamps(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps *this)
{
  *this = &unk_1F4CD7788;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::~TimeStamps(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::SharedDtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps *this)
{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::default_instance_ != this)
  {
    v2 = *(this + 2);
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
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 5);
    if (v5)
    {
      v6 = *(*v5 + 8);

      v6();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
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

          if (v6 == 4)
          {
            if (v7 == 2)
            {
              goto LABEL_62;
            }

            goto LABEL_26;
          }

          if (v6 == 5)
          {
            if (v7 != 2)
            {
              goto LABEL_26;
            }

LABEL_76:
            *(this + 15) |= 0x10u;
            v36 = *(this + 5);
            if (!v36)
            {
              operator new();
            }

            v43[0] = 0;
            v37 = *(a2 + 1);
            if (v37 >= *(a2 + 2) || *v37 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v43))
              {
                return 0;
              }
            }

            else
            {
              v43[0] = *v37;
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
            if (!CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergePartialFromCodedStream(v36, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v40 = *(a2 + 14);
            v19 = __OFSUB__(v40, 1);
            v41 = v40 - 1;
            if (v41 < 0 == v19)
            {
              *(a2 + 14) = v41;
            }

            v42 = *(a2 + 1);
            if (v42 < *(a2 + 2) && *v42 == 49)
            {
              *(a2 + 1) = v42 + 1;
              goto LABEL_90;
            }
          }

          else
          {
            if (v6 != 6 || v7 != 1)
            {
              goto LABEL_26;
            }

LABEL_90:
            *v43 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v43) & 1) == 0)
            {
              return 0;
            }

            *(this + 6) = *v43;
            *(this + 15) |= 0x20u;
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
          goto LABEL_26;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v10;
          v11 = v9 + 1;
          *(a2 + 1) = v11;
        }

        v12 = *(this + 15) | 1;
        *(this + 15) = v12;
        if (v11 < v8 && *v11 == 18)
        {
          *(a2 + 1) = v11 + 1;
          goto LABEL_34;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_26;
      }

      v12 = *(this + 15);
LABEL_34:
      *(this + 15) = v12 | 2;
      v14 = *(this + 2);
      if (!v14)
      {
        operator new();
      }

      v43[0] = 0;
      v15 = *(a2 + 1);
      if (v15 >= *(a2 + 2) || *v15 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v43))
        {
          return 0;
        }
      }

      else
      {
        v43[0] = *v15;
        *(a2 + 1) = v15 + 1;
      }

      v16 = *(a2 + 14);
      v17 = *(a2 + 15);
      *(a2 + 14) = v16 + 1;
      if (v16 >= v17)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::MergePartialFromCodedStream(v14, a2) || *(a2 + 36) != 1)
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
      if (v21 < *(a2 + 2) && *v21 == 26)
      {
        *(a2 + 1) = v21 + 1;
LABEL_48:
        *(this + 15) |= 4u;
        v22 = *(this + 3);
        if (!v22)
        {
          operator new();
        }

        v43[0] = 0;
        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2) || *v23 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v43))
          {
            return 0;
          }
        }

        else
        {
          v43[0] = *v23;
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
        if (!CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v26 = *(a2 + 14);
        v19 = __OFSUB__(v26, 1);
        v27 = v26 - 1;
        if (v27 < 0 == v19)
        {
          *(a2 + 14) = v27;
        }

        v28 = *(a2 + 1);
        if (v28 < *(a2 + 2) && *v28 == 34)
        {
          *(a2 + 1) = v28 + 1;
LABEL_62:
          *(this + 15) |= 8u;
          v29 = *(this + 4);
          if (!v29)
          {
            operator new();
          }

          v43[0] = 0;
          v30 = *(a2 + 1);
          if (v30 >= *(a2 + 2) || *v30 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v43))
            {
              return 0;
            }
          }

          else
          {
            v43[0] = *v30;
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
          if (!CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergePartialFromCodedStream(v29, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v33 = *(a2 + 14);
          v19 = __OFSUB__(v33, 1);
          v34 = v33 - 1;
          if (v34 < 0 == v19)
          {
            *(a2 + 14) = v34;
          }

          v35 = *(a2 + 1);
          if (v35 < *(a2 + 2) && *v35 == 42)
          {
            *(a2 + 1) = v35 + 1;
            goto LABEL_76;
          }
        }
      }
    }

    if (v6 == 3 && v7 == 2)
    {
      goto LABEL_48;
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 60);
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

  v7 = *(v5 + 16);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_12:
  v8 = *(v5 + 24);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_15:
  v9 = *(v5 + 32);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_18:
  v10 = *(v5 + 40);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  if ((*(v5 + 60) & 0x20) != 0)
  {
LABEL_21:
    v11 = *(v5 + 48);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, v11, a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps *this)
{
  LOBYTE(v2) = *(this + 60);
  if (!v2)
  {
    result = 0;
    goto LABEL_38;
  }

  if (*(this + 60))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 15);
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 60) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v5 = *(this + 2);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
    v5 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::default_instance_ + 16);
  }

  v6 = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::ByteSize(v5);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v3 += v7 + v8 + 1;
  v2 = *(this + 15);
LABEL_13:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_23:
    v13 = *(this + 4);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
      v13 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::default_instance_ + 32);
    }

    v14 = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::ByteSize(v13);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
    }

    else
    {
      v16 = 1;
    }

    v3 += v15 + v16 + 1;
    v2 = *(this + 15);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v9 = *(this + 3);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
    v9 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::default_instance_ + 24);
  }

  v10 = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::ByteSize(v9);
  v11 = v10;
  if (v10 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
  }

  else
  {
    v12 = 1;
  }

  v3 += v11 + v12 + 1;
  v2 = *(this + 15);
  if ((v2 & 8) != 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  if ((v2 & 0x10) != 0)
  {
LABEL_29:
    v17 = *(this + 5);
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
      v17 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::default_instance_ + 40);
    }

    v18 = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::ByteSize(v17);
    v19 = v18;
    if (v18 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
    }

    else
    {
      v20 = 1;
    }

    v3 += v19 + v20 + 1;
    v2 = *(this + 15);
  }

LABEL_35:
  if ((v2 & 0x20) != 0)
  {
    result = v3 + 9;
  }

  else
  {
    result = v3;
  }

LABEL_38:
  *(this + 14) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps::Swap(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps *this, CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::TimeStamps *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v5 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v7;
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    LODWORD(v7) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v7;
    LODWORD(v7) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v7;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets::SharedCtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets *this)
{
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets::ClockOffsets(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets *a2)
{
  *this = &unk_1F4CD7800;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets::~ClockOffsets(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets *this)
{
  *this = &unk_1F4CD7800;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets::~ClockOffsets(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || v7 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_28;
        }

        if (v7 != 1)
        {
          goto LABEL_21;
        }

        *v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v17) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v17;
        *(this + 12) |= 1u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 17)
        {
          *(a2 + 1) = v10 + 1;
LABEL_28:
          *v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 2) = *v17;
          *(this + 12) |= 2u;
          v11 = *(a2 + 1);
          if (v11 < *(a2 + 2) && *v11 == 25)
          {
            *(a2 + 1) = v11 + 1;
LABEL_32:
            *v17 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v17) & 1) == 0)
            {
              return 0;
            }

            *(this + 3) = *v17;
            *(this + 12) |= 4u;
            v12 = *(a2 + 1);
            if (v12 < *(a2 + 2) && *v12 == 33)
            {
              *(a2 + 1) = v12 + 1;
              goto LABEL_36;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if (v7 != 1)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }

      if (v6 != 4)
      {
        break;
      }

      if (v7 != 1)
      {
        goto LABEL_21;
      }

LABEL_36:
      *v17 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v17) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = *v17;
      *(this + 12) |= 8u;
      v13 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v13 < v8 && *v13 == 40)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_40:
        v17[0] = 0;
        if (v9 >= v8 || (v14 = *v9, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v17);
          if (!result)
          {
            return result;
          }

          v14 = v17[0];
          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v15 = v9 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 10) = v14;
        *(this + 12) |= 0x10u;
        if (v15 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_40;
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 48);
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
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 48);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, v7, a2, a4);
}