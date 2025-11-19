void CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState *a2)
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

void sub_1D0D0D778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState *this)
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

void CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState *CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::GpsL2CSyncState(CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState *a2)
{
  *this = &unk_1F4CDCFC0;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 12) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
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

        goto LABEL_13;
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

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 10);
    *(this + 5) |= 4u;
    *(this + 10) = v8;
    v4 = *(a2 + 5);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 11);
    *(this + 5) |= 8u;
    *(this + 11) = v9;
    if ((*(a2 + 5) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 12);
    *(this + 5) |= 0x10u;
    *(this + 12) = v5;
  }
}

void sub_1D0D0DC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::~GpsL2CSyncState(CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState *this)
{
  *this = &unk_1F4CDCFC0;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::~GpsL2CSyncState(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 12) = 0;
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v9 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v24 = 0;
        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v12 >= v7 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
          if (!result)
          {
            return result;
          }

          v13 = v24;
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
          v9 = v14 + 1;
          *(a2 + 1) = v9;
LABEL_32:
          v24 = 0;
          if (v9 >= v7 || (v15 = *v9, (v15 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
            if (!result)
            {
              return result;
            }

            v15 = v24;
            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v16 = v9 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 9) = v15 != 0;
          *(this + 5) |= 2u;
          if (v16 < v7 && *v16 == 24)
          {
            v10 = v16 + 1;
            *(a2 + 1) = v10;
LABEL_40:
            v24 = 0;
            if (v10 >= v7 || (v17 = *v10, (v17 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
              if (!result)
              {
                return result;
              }

              v17 = v24;
              v18 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v18 = v10 + 1;
              *(a2 + 1) = v18;
            }

            *(this + 10) = v17 != 0;
            *(this + 5) |= 4u;
            if (v18 < v7 && *v18 == 32)
            {
              v11 = v18 + 1;
              *(a2 + 1) = v11;
              goto LABEL_48;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_40;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_48:
      v24 = 0;
      if (v11 >= v7 || (v19 = *v11, (v19 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
        if (!result)
        {
          return result;
        }

        v19 = v24;
        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v20 = v11 + 1;
        *(a2 + 1) = v20;
      }

      *(this + 11) = v19 != 0;
      *(this + 5) |= 8u;
      if (v20 < v7 && *v20 == 40)
      {
        v8 = v20 + 1;
        *(a2 + 1) = v8;
LABEL_56:
        v24 = 0;
        if (v8 >= v7 || (v21 = *v8, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
          if (!result)
          {
            return result;
          }

          v21 = v24;
          v22 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v22 = v8 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 12) = v21 != 0;
        *(this + 5) |= 0x10u;
        if (v22 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_56;
    }

LABEL_21:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_9;
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

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 11), a2, a4);
    if ((*(v5 + 20) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
  v6 = *(v5 + 20);
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
  v7 = *(v5 + 12);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState *this)
{
  LODWORD(v1) = 2 * (*(this + 5) & 1) + (*(this + 5) & 2) + ((*(this + 5) >> 1) & 2) + ((*(this + 5) >> 2) & 2) + ((*(this + 5) >> 3) & 2);
  if (*(this + 5))
  {
    v1 = v1;
  }

  else
  {
    v1 = 0;
  }

  *(this + 4) = v1;
  return v1;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState *a2)
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
    v7 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v7;
    v8 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v8;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState *CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::GpsL5SyncState(CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState *a2)
{
  *this = &unk_1F4CDD038;
  *(this + 1) = 0;
  *(this + 4) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState *a2)
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

void sub_1D0D0E4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState *this)
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

void CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState *CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::GlonassL1fSyncState(CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState *a2)
{
  *this = &unk_1F4CDD0B0;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 12) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
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

        goto LABEL_13;
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

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 10);
    *(this + 5) |= 4u;
    *(this + 10) = v8;
    v4 = *(a2 + 5);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 11);
    *(this + 5) |= 8u;
    *(this + 11) = v9;
    if ((*(a2 + 5) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 12);
    *(this + 5) |= 0x10u;
    *(this + 12) = v5;
  }
}

void sub_1D0D0E9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 12) = 0;
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_9;
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

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 11), a2, a4);
    if ((*(v5 + 20) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
  v6 = *(v5 + 20);
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
  v7 = *(v5 + 12);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState *this)
{
  LODWORD(v1) = 2 * (*(this + 5) & 1) + (*(this + 5) & 2) + ((*(this + 5) >> 1) & 2) + ((*(this + 5) >> 2) & 2) + ((*(this + 5) >> 3) & 2);
  if (*(this + 5))
  {
    v1 = v1;
  }

  else
  {
    v1 = 0;
  }

  *(this + 4) = v1;
  return v1;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState *a2)
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
    v7 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v7;
    v8 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v8;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState *CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::BeidouB1SyncState(CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState *a2)
{
  *this = &unk_1F4CDD128;
  *(this + 1) = 0;
  *(this + 4) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState *a2)
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

void sub_1D0D0EEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState *this)
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

void CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState *CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::BeidouB2SyncState(CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState *a2)
{
  *this = &unk_1F4CDD1A0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState *a2)
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

void sub_1D0D0F358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState *this)
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

void CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState *CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::GalileoE1SyncState(CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState *a2)
{
  *this = &unk_1F4CDD218;
  *(this + 1) = 0;
  *(this + 4) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState *a2)
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

void sub_1D0D0F7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState *this)
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

void CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::SharedCtor(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState *CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::GalileoE5SyncState(CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState *a2)
{
  *(this + 5) = 0;
  *(this + 6) = 0;
  *this = &unk_1F4CDD290;
  *(this + 1) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v4 = *(a2 + 6);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 8);
    *(this + 6) |= 1u;
    *(this + 8) = v8;
    v4 = *(a2 + 6);
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

  v9 = *(a2 + 9);
  *(this + 6) |= 2u;
  *(this + 9) = v9;
  v4 = *(a2 + 6);
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
  v10 = *(a2 + 10);
  *(this + 6) |= 4u;
  *(this + 10) = v10;
  v4 = *(a2 + 6);
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
  v11 = *(a2 + 11);
  *(this + 6) |= 8u;
  *(this + 11) = v11;
  v4 = *(a2 + 6);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v13 = *(a2 + 13);
    *(this + 6) |= 0x20u;
    *(this + 13) = v13;
    v4 = *(a2 + 6);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_23:
  v12 = *(a2 + 12);
  *(this + 6) |= 0x10u;
  *(this + 12) = v12;
  v4 = *(a2 + 6);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_25:
  v14 = *(a2 + 14);
  *(this + 6) |= 0x40u;
  *(this + 14) = v14;
  v4 = *(a2 + 6);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 15);
    *(this + 6) |= 0x80u;
    *(this + 15) = v5;
    v4 = *(a2 + 6);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 16);
      *(this + 6) |= 0x100u;
      *(this + 16) = v6;
      v4 = *(a2 + 6);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 17);
      *(this + 6) |= 0x200u;
      *(this + 17) = v7;
    }
  }
}

void sub_1D0D0FD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::Clear(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    *(this + 8) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = *(v5 + 24);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
  v6 = *(v5 + 24);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
  v6 = *(v5 + 24);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 11), a2, a4);
  v6 = *(v5 + 24);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 12), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 13), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 14), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 16), a2, a4);
    if ((*(v5 + 24) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 15), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return this;
  }

LABEL_21:
  v7 = *(v5 + 17);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    v2.i64[0] = 0x200000002;
    v2.i64[1] = 0x200000002;
    v3 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v1), xmmword_1D0E7A310), v2)) + 2 * (v1 & 1) + (v1 & 2) + ((v1 >> 5) & 2) + ((v1 >> 6) & 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = (v1 & 0xFF00) == 0;
  LODWORD(v5) = ((v1 >> 8) & 2) + ((v1 >> 7) & 2) + v3;
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = v5;
  }

  *(this + 5) = v5;
  return v5;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState *a2)
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
    v10 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v10;
    v11 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v11;
    v12 = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v12;
    v13 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v13;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::SharedCtor(uint64_t this)
{
  *(this + 12) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState *CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::SbasL1SyncState(CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState *a2)
{
  *this = &unk_1F4CDD308;
  *(this + 12) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
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
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 16) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 9);
    *(this + 4) |= 2u;
    *(this + 9) = v7;
    if ((*(a2 + 4) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 10);
    *(this + 4) |= 4u;
    *(this + 10) = v5;
  }
}

void sub_1D0D10370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::~SbasL1SyncState(CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState *this)
{
  *this = &unk_1F4CDD308;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::~SbasL1SyncState(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
    *(this + 10) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      *(this + 8) = v9 != 0;
      *(this + 4) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        v19 = 0;
        if (v11 >= v7 || (v13 = *v11, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19);
          if (!result)
          {
            return result;
          }

          v13 = v19;
          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 9) = v13 != 0;
        *(this + 4) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          v18 = 0;
          if (v12 >= v7 || (v15 = *v12, (v15 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v18);
            if (!result)
            {
              return result;
            }

            v15 = v18;
            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 10) = v15 != 0;
          *(this + 4) |= 4u;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
    if ((*(v5 + 16) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
  v6 = *(v5 + 16);
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
  v7 = *(v5 + 10);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState *this)
{
  LODWORD(v1) = 2 * (*(this + 4) & 1) + (*(this + 4) & 2) + ((*(this + 4) >> 1) & 2);
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

void CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState *a2)
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
    v5 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v6;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SyncState::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::SyncState *this)
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

CoreNavigation::CLP::LogEntry::PrivateData::SyncState *CoreNavigation::CLP::LogEntry::PrivateData::SyncState::SyncState(CoreNavigation::CLP::LogEntry::PrivateData::SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::SyncState *a2)
{
  *this = &unk_1F4CDD380;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::SyncState::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::SyncState::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::SyncState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    goto LABEL_50;
  }

  if (v4)
  {
    v5 = *(a2 + 22);
    if (v5 >= 0xD)
    {
      __assert_rtn("set_band", "CoreNavigationCLPGnssMeasApi.pb.h", 7930, "::CoreNavigation::CLP::LogEntry::PrivateData::Band_IsValid(value)");
    }

    *(this + 24) |= 1u;
    *(this + 22) = v5;
    v4 = *(a2 + 24);
  }

  if ((v4 & 2) != 0)
  {
    *(this + 24) |= 2u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::MergeFrom(v6, v7);
    v4 = *(a2 + 24);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  *(this + 24) |= 4u;
  v8 = *(this + 2);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 2);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 16);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::MergeFrom(v8, v9);
  v4 = *(a2 + 24);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_25:
  *(this + 24) |= 8u;
  v10 = *(this + 3);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 3);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 24);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::MergeFrom(v10, v11);
  v4 = *(a2 + 24);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_35:
    *(this + 24) |= 0x20u;
    v14 = *(this + 5);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 5);
    if (!v15)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 40);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::MergeFrom(v14, v15);
    v4 = *(a2 + 24);
    if ((v4 & 0x40) == 0)
    {
LABEL_13:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    }

    goto LABEL_40;
  }

LABEL_30:
  *(this + 24) |= 0x10u;
  v12 = *(this + 4);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 4);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 32);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergeFrom(v12, v13);
  v4 = *(a2 + 24);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_12:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_40:
  *(this + 24) |= 0x40u;
  v16 = *(this + 6);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 6);
  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 48);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::MergeFrom(v16, v17);
  v4 = *(a2 + 24);
  if ((v4 & 0x80) != 0)
  {
LABEL_45:
    *(this + 24) |= 0x80u;
    v18 = *(this + 7);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 7);
    if (!v19)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v19 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 56);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::MergeFrom(v18, v19);
    v4 = *(a2 + 24);
  }

LABEL_50:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    *(this + 24) |= 0x100u;
    v20 = *(this + 8);
    if (!v20)
    {
      operator new();
    }

    v21 = *(a2 + 8);
    if (!v21)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 64);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::MergeFrom(v20, v21);
    v4 = *(a2 + 24);
    if ((v4 & 0x200) == 0)
    {
LABEL_53:
      if ((v4 & 0x400) == 0)
      {
        return;
      }

      goto LABEL_65;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  *(this + 24) |= 0x200u;
  v22 = *(this + 9);
  if (!v22)
  {
    operator new();
  }

  v23 = *(a2 + 9);
  if (!v23)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 72);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::MergeFrom(v22, v23);
  if ((*(a2 + 24) & 0x400) != 0)
  {
LABEL_65:
    *(this + 24) |= 0x400u;
    v24 = *(this + 10);
    if (!v24)
    {
      operator new();
    }

    v25 = *(a2 + 10);
    if (!v25)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 80);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::MergeFrom(v24, v25);
  }
}

void sub_1D0D10FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SyncState::Clear(uint64_t this)
{
  v1 = *(this + 96);
  if (v1)
  {
    *(this + 88) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 16))
        {
          *(v2 + 8) = 0;
        }

        *(v2 + 16) = 0;
        v1 = *(this + 96);
      }
    }

    if ((v1 & 4) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 12) = 0;
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v1 = *(this + 96);
      }
    }

    if ((v1 & 8) != 0)
    {
      v4 = *(this + 24);
      if (v4)
      {
        if (*(v4 + 16))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 16) = 0;
        v1 = *(this + 96);
      }
    }

    if ((v1 & 0x10) != 0)
    {
      v5 = *(this + 32);
      if (v5)
      {
        if (*(v5 + 20))
        {
          *(v5 + 12) = 0;
          *(v5 + 8) = 0;
        }

        *(v5 + 20) = 0;
        v1 = *(this + 96);
      }
    }

    if ((v1 & 0x20) != 0)
    {
      v6 = *(this + 40);
      if (v6)
      {
        if (*(v6 + 16))
        {
          *(v6 + 8) = 0;
        }

        *(v6 + 16) = 0;
        v1 = *(this + 96);
      }
    }

    if ((v1 & 0x40) != 0)
    {
      v7 = *(this + 48);
      if (v7)
      {
        if (*(v7 + 16))
        {
          *(v7 + 8) = 0;
        }

        *(v7 + 16) = 0;
        v1 = *(this + 96);
      }
    }

    if ((v1 & 0x80) != 0)
    {
      v8 = *(this + 56);
      if (v8)
      {
        if (*(v8 + 16))
        {
          *(v8 + 8) = 0;
        }

        *(v8 + 16) = 0;
        v1 = *(this + 96);
      }
    }
  }

  if ((v1 & 0xFF00) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v9 = *(this + 64);
      if (v9)
      {
        v10 = *(v9 + 24);
        if (v10)
        {
          *(v9 + 8) = 0;
        }

        if ((v10 & 0xFF00) != 0)
        {
          *(v9 + 16) = 0;
        }

        *(v9 + 24) = 0;
        v1 = *(this + 96);
      }
    }

    if ((v1 & 0x200) != 0)
    {
      v11 = *(this + 72);
      if (v11)
      {
        if (*(v11 + 16))
        {
          *(v11 + 8) = 0;
          *(v11 + 10) = 0;
        }

        *(v11 + 16) = 0;
        v1 = *(this + 96);
      }
    }

    if ((v1 & 0x400) != 0)
    {
      v12 = *(this + 80);
      if (v12)
      {
        if (*(v12 + 16))
        {
          *(v12 + 8) = 0;
        }

        *(v12 + 16) = 0;
      }
    }
  }

  *(this + 96) = 0;
  return this;
}

unsigned int *CoreNavigation::CLP::LogEntry::PrivateData::SyncState::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[24];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, this[22], a2, a4);
    v6 = v5[24];
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

  v7 = *(v5 + 1);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = v5[24];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_17:
  v8 = *(v5 + 2);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = v5[24];
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
  v9 = *(v5 + 3);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = v5[24];
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
  v10 = *(v5 + 4);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  v6 = v5[24];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_26:
  v11 = *(v5 + 5);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v11, a2, a4);
  v6 = v5[24];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_29:
  v12 = *(v5 + 6);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v12, a2, a4);
  v6 = v5[24];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_32:
  v13 = *(v5 + 7);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v13, a2, a4);
  v6 = v5[24];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_35:
  v14 = *(v5 + 8);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v14, a2, a4);
  v6 = v5[24];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_41;
  }

LABEL_38:
  v15 = *(v5 + 9);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v15, a2, a4);
  if ((v5[24] & 0x400) != 0)
  {
LABEL_41:
    v16 = *(v5 + 10);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 80);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v16, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SyncState::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::SyncState *this)
{
  v1 = this;
  v2 = *(this + 24);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_51;
  }

  if (v2)
  {
    this = *(this + 22);
    if ((this & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v3 = (this + 1);
      v2 = *(v1 + 24);
      if ((v2 & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_18;
    }
  }

  v4 = *(v1 + 1);
  if (!v4)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v4 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 8);
  }

  v5 = 2 * (*(v4 + 16) & 1) + (*(v4 + 16) & 2) + ((*(v4 + 16) >> 1) & 2) + ((*(v4 + 16) >> 2) & 2);
  if (!*(v4 + 16))
  {
    v5 = 0;
  }

  *(v4 + 12) = v5;
  v3 = (v3 + v5 + 2);
  v2 = *(v1 + 24);
LABEL_18:
  if ((v2 & 4) != 0)
  {
    v6 = *(v1 + 2);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 16);
    }

    this = CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::ByteSize(v6);
    v3 = (v3 + this + 2);
    v2 = *(v1 + 24);
    if ((v2 & 8) == 0)
    {
LABEL_20:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_20;
  }

  v7 = *(v1 + 3);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 24);
  }

  v8 = 2 * (*(v7 + 16) & 1) + (*(v7 + 16) & 2) + ((*(v7 + 16) >> 1) & 2) + ((*(v7 + 16) >> 2) & 2);
  if (!*(v7 + 16))
  {
    v8 = 0;
  }

  *(v7 + 12) = v8;
  v3 = (v3 + v8 + 2);
  v2 = *(v1 + 24);
  if ((v2 & 0x10) == 0)
  {
LABEL_21:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

LABEL_33:
  v9 = *(v1 + 4);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 32);
  }

  this = CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::ByteSize(v9);
  v3 = (v3 + this + 2);
  v2 = *(v1 + 24);
  if ((v2 & 0x20) == 0)
  {
LABEL_22:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

LABEL_36:
  v10 = *(v1 + 5);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 40);
  }

  v11 = 2 * (*(v10 + 16) & 1) + (*(v10 + 16) & 2) + ((*(v10 + 16) >> 1) & 2) + ((*(v10 + 16) >> 2) & 2);
  if (!*(v10 + 16))
  {
    v11 = 0;
  }

  *(v10 + 12) = v11;
  v3 = (v3 + v11 + 2);
  v2 = *(v1 + 24);
  if ((v2 & 0x40) == 0)
  {
LABEL_23:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_46;
  }

LABEL_41:
  v12 = *(v1 + 6);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 48);
  }

  v13 = 2 * (*(v12 + 16) & 1) + (*(v12 + 16) & 2) + ((*(v12 + 16) >> 1) & 2) + ((*(v12 + 16) >> 2) & 2);
  if (!*(v12 + 16))
  {
    v13 = 0;
  }

  *(v12 + 12) = v13;
  v3 = (v3 + v13 + 2);
  v2 = *(v1 + 24);
  if ((v2 & 0x80) != 0)
  {
LABEL_46:
    v14 = *(v1 + 7);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 56);
    }

    v15 = 2 * (*(v14 + 16) & 1) + (*(v14 + 16) & 2) + ((*(v14 + 16) >> 1) & 2) + ((*(v14 + 16) >> 2) & 2);
    if (!*(v14 + 16))
    {
      v15 = 0;
    }

    *(v14 + 12) = v15;
    v3 = (v3 + v15 + 2);
    v2 = *(v1 + 24);
  }

LABEL_51:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_69;
  }

  if ((v2 & 0x100) != 0)
  {
    v16 = *(v1 + 8);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 64);
    }

    this = CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::ByteSize(v16);
    v3 = (v3 + this + 2);
    v2 = *(v1 + 24);
    if ((v2 & 0x200) == 0)
    {
LABEL_54:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_64;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_54;
  }

  v17 = *(v1 + 9);
  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 72);
  }

  v18 = 2 * (*(v17 + 16) & 1) + (*(v17 + 16) & 2) + ((*(v17 + 16) >> 1) & 2);
  if (!*(v17 + 16))
  {
    v18 = 0;
  }

  *(v17 + 12) = v18;
  v3 = (v3 + v18 + 2);
  if ((*(v1 + 24) & 0x400) != 0)
  {
LABEL_64:
    v19 = *(v1 + 10);
    if (!v19)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v19 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 80);
    }

    v20 = 2 * (*(v19 + 16) & 1) + (*(v19 + 16) & 2) + ((*(v19 + 16) >> 1) & 2) + ((*(v19 + 16) >> 2) & 2);
    if (!*(v19 + 16))
    {
      v20 = 0;
    }

    *(v19 + 12) = v20;
    v3 = (v3 + v20 + 2);
  }

LABEL_69:
  *(v1 + 23) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::PrivateData::SyncState::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::SyncState::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SyncState::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::SyncState::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SyncState::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::SyncState *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 88);
    *(this + 88) = *(a2 + 22);
    *(a2 + 22) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v7;
    v8 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v8;
    v9 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v9;
    v10 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v10;
    v11 = *(this + 72);
    *(this + 72) = *(a2 + 9);
    *(a2 + 9) = v11;
    v12 = *(this + 80);
    *(this + 80) = *(a2 + 10);
    *(a2 + 10) = v12;
    LODWORD(v12) = *(this + 96);
    *(this + 96) = *(a2 + 24);
    *(a2 + 24) = v12;
    LODWORD(v12) = *(this + 92);
    *(this + 92) = *(a2 + 23);
    *(a2 + 23) = v12;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvTime::SharedCtor(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::SvTime *CoreNavigation::CLP::LogEntry::PrivateData::SvTime::SvTime(CoreNavigation::CLP::LogEntry::PrivateData::SvTime *this, const CoreNavigation::CLP::LogEntry::PrivateData::SvTime *a2)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDD3F8;
  *(this + 24) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::SvTime::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SvTime::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SvTime *this, const CoreNavigation::CLP::LogEntry::PrivateData::SvTime *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      result = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 8);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 8) |= 2u;
    *(this + 2) = result;
    if ((*(a2 + 8) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    v6 = *(a2 + 24);
    *(this + 8) |= 4u;
    *(this + 24) = v6;
  }

  return result;
}

void sub_1D0D11B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvTime::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvTime::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::SvTime *this)
{
  v1 = *(this + 8);
  v2 = ((v1 << 31) >> 31) & 9;
  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  v3 = v2 + ((v1 >> 1) & 2);
  if (*(this + 8))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(this + 7) = v4;
  return v4;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SvTime::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SvTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::SvTime::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::SvTime::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::SvTime *this, const CoreNavigation::CLP::LogEntry::PrivateData::SvTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::SvTime::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SvTime::Swap(CoreNavigation::CLP::LogEntry::PrivateData::SvTime *this, CoreNavigation::CLP::LogEntry::PrivateData::SvTime *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v4;
    v5 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::SharedCtor(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset *CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::FrequencyOffset(CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset *this, const CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset *a2)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDD470;
  *(this + 24) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset *this, const CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      result = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 8);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 8) |= 2u;
    *(this + 2) = result;
    if ((*(a2 + 8) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    v6 = *(a2 + 24);
    *(this + 8) |= 4u;
    *(this + 24) = v6;
  }

  return result;
}

void sub_1D0D11FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset *this)
{
  v1 = *(this + 8);
  v2 = ((v1 << 31) >> 31) & 9;
  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  v3 = v2 + ((v1 >> 1) & 2);
  if (*(this + 8))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(this + 7) = v4;
  return v4;
}

double CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset *this, const CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::Swap(CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset *this, CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v4;
    v5 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::SharedCtor(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::FrequencyOffsetFromPhaseTracking(CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this, const CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *a2)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDD4E8;
  *(this + 12) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this, const CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 8);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 8) |= 2u;
    *(this + 2) = v7;
    v4 = *(a2 + 8);
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
    v8 = *(a2 + 24);
    *(this + 8) |= 4u;
    *(this + 24) = v8;
    if ((*(a2 + 8) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 25);
    *(this + 8) |= 8u;
    *(this + 25) = v5;
  }
}

void sub_1D0D12458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::~FrequencyOffsetFromPhaseTracking(CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this)
{
  *this = &unk_1F4CDD4E8;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::~FrequencyOffsetFromPhaseTracking(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        if (v6 != 3)
        {
          if (v6 == 4 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_25;
        }

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_29:
        v18[0] = 0;
        if (v12 >= v8 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v18);
          if (!result)
          {
            return result;
          }

          v13 = v18[0];
          v14 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 24) = v13 != 0;
        *(this + 8) |= 4u;
        if (v14 < v8 && *v14 == 32)
        {
          v9 = v14 + 1;
          *(a2 + 1) = v9;
LABEL_37:
          v18[0] = 0;
          if (v9 >= v8 || (v16 = *v9, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v18);
            if (!result)
            {
              return result;
            }

            v16 = v18[0];
            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v17 = v9 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 25) = v16 != 0;
          *(this + 8) |= 8u;
          if (v17 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

      if (v7 != 1)
      {
        goto LABEL_25;
      }

      *v18 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v18) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v18;
      *(this + 8) |= 1u;
      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 17)
      {
        *(a2 + 1) = v10 + 1;
LABEL_20:
        *v18 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v18) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v18;
        *(this + 8) |= 2u;
        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v11 < v8 && *v11 == 24)
        {
          v12 = v11 + 1;
          *(a2 + 1) = v12;
          goto LABEL_29;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 24), a2, a4);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
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
  v7 = *(v5 + 25);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this)
{
  v1 = *(this + 8);
  v2 = ((v1 << 31) >> 31) & 9;
  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  v3 = ((v1 >> 2) & 2) + ((v1 >> 1) & 2) + v2;
  if (*(this + 8))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(this + 7) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this, const CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::Swap(CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this, CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v4;
    v5 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v5;
    v6 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v6;
    v7 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v7;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking *this)
{
  *(this + 11) = 0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking *CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::PhaseTracking(CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking *this, const CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking *a2)
{
  *this = &unk_1F4CDD560;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking *this, const CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v5) = *(a2 + 48);
  if (v5)
  {
    if (*(a2 + 48))
    {
      v7 = *(a2 + 1);
      *(this + 12) |= 1u;
      *(this + 1) = v7;
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

    v8 = *(a2 + 2);
    *(this + 12) |= 2u;
    *(this + 2) = v8;
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
    v6 = *(a2 + 40);
    *(this + 12) |= 0x10u;
    *(this + 40) = v6;
  }

  return result;
}

void sub_1D0D12C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::Clear(uint64_t this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking *this)
{
  v2 = *(this + 12);
  if (!v2)
  {
    result = 0;
    goto LABEL_13;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v2 = *(this + 12);
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 12);
  }

LABEL_8:
  v5 = v3 + 9;
  if ((v2 & 4) == 0)
  {
    v5 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v5 += 9;
  }

  result = v5 + ((v2 >> 3) & 2);
LABEL_13:
  *(this + 11) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking *this, const CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::Swap(CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking *this, CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking *a2)
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
    LOBYTE(v3) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v3;
    LODWORD(v3) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v3;
    LODWORD(v3) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v3;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak *CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::SignalCorrelationPeak(CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, const CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak *a2)
{
  *this = &unk_1F4CDD5D8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, const CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
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
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 8);
      }

      result = CoreNavigation::CLP::LogEntry::PrivateData::SvTime::MergeFrom(v6, v7);
      v5 = *(a2 + 8);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 8) |= 2u;
    v8 = *(this + 2);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 16);
    }

    result = CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(v8, v9);
    if ((*(a2 + 8) & 4) != 0)
    {
LABEL_7:
      LODWORD(result) = *(a2 + 6);
      *(this + 8) |= 4u;
      *(this + 6) = LODWORD(result);
    }
  }

  return result;
}

void sub_1D0D1325C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 32);
  if (v1)
  {
    if (*(this + 32))
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 32))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 32) = 0;
        v1 = *(this + 32);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 32))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 32) = 0;
      }
    }

    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 32);
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
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  if ((*(v5 + 32) & 4) != 0)
  {
LABEL_11:
    v9 = *(v5 + 24);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, v9, a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    result = 0;
    goto LABEL_25;
  }

  if (*(this + 32))
  {
    v5 = *(this + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 8);
    }

    v6 = *(v5 + 32);
    v7 = ((v6 << 31) >> 31) & 9;
    if ((v6 & 2) != 0)
    {
      v7 += 9;
    }

    v8 = v7 + ((v6 >> 1) & 2);
    if (*(v5 + 32))
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    *(v5 + 28) = v9;
    v3 = v9 + 2;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  v3 = 0;
  if ((*(this + 32) & 2) != 0)
  {
LABEL_14:
    v10 = *(this + 2);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 16);
    }

    v11 = *(v10 + 32);
    v12 = ((v11 << 31) >> 31) & 9;
    if ((v11 & 2) != 0)
    {
      v12 += 9;
    }

    v13 = v12 + ((v11 >> 1) & 2);
    if (*(v10 + 32))
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    *(v10 + 28) = v14;
    v3 += v14 + 2;
    v2 = *(this + 8);
  }

LABEL_22:
  if ((v2 & 4) != 0)
  {
    result = v3 + 5;
  }

  else
  {
    result = v3;
  }

LABEL_25:
  *(this + 7) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, const CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::Swap(CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    LODWORD(v3) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime *CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::FullSvTime(CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime *this, const CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime *a2)
{
  *this = &unk_1F4CDD650;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime *this, const CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

LABEL_10:
        v7 = *(a2 + 6);
        if (v7 >= 6)
        {
          __assert_rtn("set_full_sv_time_source", "CoreNavigationCLPGnssMeasApi.pb.h", 8877, "::CoreNavigation::CLP::LogEntry::PrivateData::FullSvTimeSource_IsValid(value)");
        }

        *(this + 8) |= 4u;
        *(this + 6) = v7;
        return;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 2);
    *(this + 8) |= 2u;
    *(this + 2) = v6;
    if ((*(a2 + 8) & 4) == 0)
    {
      return;
    }

    goto LABEL_10;
  }
}

void sub_1D0D13818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::~FullSvTime(CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime *this)
{
  *this = &unk_1F4CDD650;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::~FullSvTime(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_20;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_24:
        v14[0] = 0;
        if (v11 >= v9 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v14);
          if (!result)
          {
            return result;
          }

          v12 = v14[0];
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v12 <= 5)
        {
          *(this + 8) |= 4u;
          *(this + 6) = v12;
        }

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

      *v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v14) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v14;
      *(this + 8) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 17)
      {
        *(a2 + 1) = v8 + 1;
LABEL_15:
        *v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v14) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v14;
        *(this + 8) |= 2u;
        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 < v9 && *v10 == 24)
        {
          v11 = v10 + 1;
          *(a2 + 1) = v11;
          goto LABEL_24;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime *this)
{
  v2 = *(this + 32);
  if (*(this + 32))
  {
    v3 = (v2 << 31 >> 31) & 9;
    if ((v2 & 2) != 0)
    {
      v4 = v3 + 9;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 4) != 0)
    {
      v5 = *(this + 6);
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

      v4 = (v6 + v4);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 7) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime *this, const CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::Swap(CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime *this, CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v4 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v4;
    v5 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage *CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::SvMeasurementUsage(CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage *this, const CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDD6C8;
  *(this + 6) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage *this, const CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage *a2)
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

void sub_1D0D13F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage *this)
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

float CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage *this, const CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::Swap(CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage *this, CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage *a2)
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

double CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension *this)
{
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v2 = MEMORY[0x1E69E5958];
  *(this + 9) = 0;
  *(this + 10) = v2;
  *(this + 14) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension *CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::MeasurementExtension(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension *this, const CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension *a2)
{
  *this = &unk_1F4CDD740;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  v3 = MEMORY[0x1E69E5958];
  *(this + 9) = 0;
  *(this + 10) = v3;
  *(this + 14) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::MergeFrom(this, a2);
  return this;
}

void sub_1D0D14320(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension *this, const CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v34);
  }

  v4 = *(this + 24);
  v5 = *(a2 + 24);
  v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88));
  LODWORD(v7) = *(a2 + 24);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v34);
      }

      v9 = *(*(a2 + 11) + 8 * v8);
      v10 = *(this + 25);
      v11 = *(this + 24);
      if (v11 >= v10)
      {
        if (v10 == *(this + 26))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88));
          v10 = *(this + 25);
        }

        *(this + 25) = v10 + 1;
        operator new();
      }

      v12 = *(this + 11);
      *(this + 24) = v11 + 1;
      CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergeFrom(*(v12 + 8 * v11), v9);
      ++v8;
      v7 = *(a2 + 24);
    }

    while (v8 < v7);
  }

  v13 = *(a2 + 29);
  if (!v13)
  {
    goto LABEL_23;
  }

  if (v13)
  {
    v18 = *(a2 + 2);
    *(this + 29) |= 1u;
    *(this + 2) = v18;
    v13 = *(a2 + 29);
    if ((v13 & 2) == 0)
    {
LABEL_16:
      if ((v13 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_39;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_16;
  }

  v19 = *(a2 + 3);
  *(this + 29) |= 2u;
  *(this + 3) = v19;
  v13 = *(a2 + 29);
  if ((v13 & 4) == 0)
  {
LABEL_17:
    if ((v13 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_39:
  *(this + 29) |= 4u;
  v20 = *(this + 2);
  if (!v20)
  {
    operator new();
  }

  v21 = *(a2 + 2);
  if (!v21)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v6);
    v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 16);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::MergeFrom(v20, v21);
  v13 = *(a2 + 29);
  if ((v13 & 8) == 0)
  {
LABEL_18:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_44:
  *(this + 29) |= 8u;
  v22 = *(this + 3);
  if (!v22)
  {
    operator new();
  }

  v23 = *(a2 + 3);
  if (!v23)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v6);
    v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 24);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::MergeFrom(v22, v23);
  v13 = *(a2 + 29);
  if ((v13 & 0x10) == 0)
  {
LABEL_19:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_54:
    *(this + 29) |= 0x20u;
    v26 = *(this + 5);
    if (!v26)
    {
      operator new();
    }

    v27 = *(a2 + 5);
    if (!v27)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v6);
      v27 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 40);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::MergeFrom(v26, v27);
    v13 = *(a2 + 29);
    if ((v13 & 0x40) == 0)
    {
LABEL_21:
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_49:
  *(this + 29) |= 0x10u;
  v24 = *(this + 4);
  if (!v24)
  {
    operator new();
  }

  v25 = *(a2 + 4);
  if (!v25)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v6);
    v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 32);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::MergeFrom(v24, v25);
  v13 = *(a2 + 29);
  if ((v13 & 0x20) != 0)
  {
    goto LABEL_54;
  }

LABEL_20:
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_59:
  v28 = *(a2 + 12);
  *(this + 29) |= 0x40u;
  *(this + 12) = v28;
  v13 = *(a2 + 29);
  if ((v13 & 0x80) != 0)
  {
LABEL_22:
    v14 = *(a2 + 13);
    *(this + 29) |= 0x80u;
    *(this + 13) = v14;
    v13 = *(a2 + 29);
  }

LABEL_23:
  if ((v13 & 0xFF00) == 0)
  {
    return;
  }

  if ((v13 & 0x100) != 0)
  {
    v15 = *(a2 + 14);
    if (v15 >= 7)
    {
      __assert_rtn("set_sv_time_detection_method", "CoreNavigationCLPGnssMeasApi.pb.h", 9230, "::CoreNavigation::CLP::LogEntry::PrivateData::MeasurementDetectionMethod_IsValid(value)");
    }

    *(this + 29) |= 0x100u;
    *(this + 14) = v15;
    v13 = *(a2 + 29);
  }

  if ((v13 & 0x200) != 0)
  {
    v16 = *(a2 + 15);
    if (v16 >= 7)
    {
      __assert_rtn("set_frequency_detection_method", "CoreNavigationCLPGnssMeasApi.pb.h", 9253, "::CoreNavigation::CLP::LogEntry::PrivateData::MeasurementDetectionMethod_IsValid(value)");
    }

    *(this + 29) |= 0x200u;
    *(this + 15) = v16;
    v13 = *(a2 + 29);
  }

  if ((v13 & 0x400) != 0)
  {
    v29 = *(a2 + 16);
    *(this + 29) |= 0x400u;
    *(this + 16) = v29;
    v13 = *(a2 + 29);
    if ((v13 & 0x800) == 0)
    {
LABEL_32:
      if ((v13 & 0x1000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_63;
    }
  }

  else if ((v13 & 0x800) == 0)
  {
    goto LABEL_32;
  }

  v30 = *(a2 + 17);
  *(this + 29) |= 0x800u;
  *(this + 17) = v30;
  v13 = *(a2 + 29);
  if ((v13 & 0x1000) == 0)
  {
LABEL_33:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  v31 = *(a2 + 18);
  *(this + 29) |= 0x1000u;
  *(this + 18) = v31;
  v13 = *(a2 + 29);
  if ((v13 & 0x2000) == 0)
  {
LABEL_34:
    if ((v13 & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_35;
  }

LABEL_64:
  v32 = *(a2 + 10);
  *(this + 29) |= 0x2000u;
  v33 = *(this + 10);
  if (v33 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v33, v32);
  if ((*(a2 + 29) & 0x4000) != 0)
  {
LABEL_35:
    v17 = *(a2 + 19);
    *(this + 29) |= 0x4000u;
    *(this + 19) = v17;
  }
}

void sub_1D0D148F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 116);
  if (v2)
  {
    *(this + 8) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 32))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 32) = 0;
        v2 = *(this + 116);
      }
    }

    if ((v2 & 8) != 0)
    {
      v4 = *(this + 24);
      if (v4)
      {
        if (*(v4 + 24))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        *(v4 + 24) = 0;
        v2 = *(this + 116);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v5 = *(this + 32);
      if (v5)
      {
        if (*(v5 + 24))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 24) = 0;
        v2 = *(this + 116);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v6 = *(this + 40);
      if (v6)
      {
        if (*(v6 + 24))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
        }

        *(v6 + 24) = 0;
        v2 = *(this + 116);
      }
    }

    *(this + 48) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 56) = 0;
    *(this + 64) = 0;
    *(this + 72) = 0;
    if ((v2 & 0x2000) != 0)
    {
      v7 = *(this + 80);
      if (v7 != MEMORY[0x1E69E5958])
      {
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 8) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }

    *(this + 76) = 0;
  }

  if (*(this + 96) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(v1 + 88) + 8 * v8);
      this = (*(*v9 + 32))(v9);
      ++v8;
    }

    while (v8 < *(v1 + 96));
  }

  *(v1 + 96) = 0;
  *(v1 + 116) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 116);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 8), a3);
    v6 = *(v5 + 116);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 12), a3);
  v6 = *(v5 + 116);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_23:
  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_26:
  v9 = *(v5 + 24);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_29:
  v10 = *(v5 + 32);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_32:
  v11 = *(v5 + 40);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v11, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 48), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 52), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 56), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 60), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 64), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xC, a2, *(v5 + 68), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xD, a2, *(v5 + 72), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_42:
  v12 = *(v5 + 80);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  if ((*(v5 + 116) & 0x4000) != 0)
  {
LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 76), a2, a4);
  }

LABEL_17:
  if (*(v5 + 96) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, *(*(v5 + 88) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 96));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::ByteSize(uint64_t this)
{
  v1 = this;
  v2 = *(this + 116);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_57;
  }

  if ((v2 & 2) != 0)
  {
    v3 = ((v2 << 31 >> 31) & 5) + 5;
  }

  else
  {
    v3 = (v2 << 31 >> 31) & 5;
  }

  if ((v2 & 4) != 0)
  {
    v4 = *(this + 16);
    if (!v4)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v4 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 16);
    }

    v5 = CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::ByteSize(v4);
    v6 = v5;
    if (v5 >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
    }

    else
    {
      this = 1;
    }

    v3 += v6 + this + 1;
    v2 = *(v1 + 116);
    if ((v2 & 8) == 0)
    {
LABEL_7:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_7;
  }

  v7 = *(v1 + 24);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 24);
  }

  v8 = *(v7 + 24);
  v9 = (v8 << 31 >> 31) & 5;
  if ((v8 & 2) != 0)
  {
    v9 += 5;
  }

  if ((v8 & 4) != 0)
  {
    v9 += 5;
  }

  if (*(v7 + 24))
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  *(v7 + 20) = v10;
  v3 += v10 + 2;
  v2 = *(v1 + 116);
  if ((v2 & 0x10) == 0)
  {
LABEL_8:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_29:
  v11 = *(v1 + 32);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 32);
  }

  v12 = *(v11 + 24);
  v13 = (v12 << 31 >> 31) & 5;
  if ((v12 & 2) != 0)
  {
    v13 += 5;
  }

  if ((v12 & 4) != 0)
  {
    v13 += 5;
  }

  if (*(v11 + 24))
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  *(v11 + 20) = v14;
  v3 += v14 + 2;
  v2 = *(v1 + 116);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_39:
  v15 = *(v1 + 40);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 40);
  }

  v16 = *(v15 + 24);
  v17 = (v16 << 31 >> 31) & 5;
  if ((v16 & 2) != 0)
  {
    v17 += 5;
  }

  if ((v16 & 4) != 0)
  {
    v17 += 5;
  }

  if (*(v15 + 24))
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  *(v15 + 20) = v18;
  v3 += v18 + 2;
  v2 = *(v1 + 116);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_53;
  }

LABEL_49:
  v19 = *(v1 + 48);
  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v2 = *(v1 + 116);
  }

  else
  {
    v20 = 2;
  }

  v3 += v20;
  if ((v2 & 0x80) != 0)
  {
LABEL_53:
    v21 = *(v1 + 52);
    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
      v2 = *(v1 + 116);
    }

    else
    {
      v22 = 2;
    }

    v3 += v22;
  }

LABEL_57:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_100;
  }

  if ((v2 & 0x100) == 0)
  {
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_60;
    }

LABEL_68:
    v25 = *(v1 + 60);
    if ((v25 & 0x80000000) != 0)
    {
      v26 = 11;
    }

    else if (v25 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
      v2 = *(v1 + 116);
    }

    else
    {
      v26 = 2;
    }

    v3 += v26;
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_74;
  }

  v23 = *(v1 + 56);
  if ((v23 & 0x80000000) != 0)
  {
    v24 = 11;
  }

  else if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v2 = *(v1 + 116);
  }

  else
  {
    v24 = 2;
  }

  v3 += v24;
  if ((v2 & 0x200) != 0)
  {
    goto LABEL_68;
  }

LABEL_60:
  if ((v2 & 0x400) != 0)
  {
LABEL_74:
    v27 = *(v1 + 64);
    if ((v27 & 0x80000000) != 0)
    {
      v28 = 11;
    }

    else if (v27 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
      v2 = *(v1 + 116);
    }

    else
    {
      v28 = 2;
    }

    v3 += v28;
  }

LABEL_80:
  v29 = v3 + 5;
  if ((v2 & 0x800) == 0)
  {
    v29 = v3;
  }

  if ((v2 & 0x1000) != 0)
  {
    v3 = v29 + 5;
  }

  else
  {
    v3 = v29;
  }

  if ((v2 & 0x2000) != 0)
  {
    v30 = *(v1 + 80);
    v31 = *(v30 + 23);
    v32 = v31;
    v33 = *(v30 + 8);
    if ((v31 & 0x80u) == 0)
    {
      v34 = *(v30 + 23);
    }

    else
    {
      v34 = v33;
    }

    if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34);
      v31 = *(v30 + 23);
      v33 = *(v30 + 8);
      v2 = *(v1 + 116);
      v32 = *(v30 + 23);
    }

    else
    {
      v35 = 1;
    }

    if (v32 < 0)
    {
      v31 = v33;
    }

    v3 += v35 + v31 + 1;
  }

  if ((v2 & 0x4000) != 0)
  {
    v36 = *(v1 + 76);
    if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 1;
    }

    else
    {
      v37 = 2;
    }

    v3 += v37;
  }

LABEL_100:
  v38 = *(v1 + 96);
  v39 = (v3 + 2 * v38);
  if (v38 >= 1)
  {
    v40 = 0;
    do
    {
      v39 = v39 + CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::ByteSize(*(*(v1 + 88) + 8 * v40++)) + 1;
    }

    while (v40 < *(v1 + 96));
  }

  *(v1 + 112) = v39;
  return v39;
}

void CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension *this, const CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension *a2)
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
    v7 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v7;
    v8 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v8;
    v9 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v9;
    LODWORD(v9) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v9;
    LODWORD(v9) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v9;
    LODWORD(v9) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v9;
    LODWORD(v9) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v9;
    LODWORD(v9) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v9;
    v10 = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v10;
    v11 = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v11;
    v12 = *(this + 80);
    *(this + 80) = *(a2 + 10);
    *(a2 + 10) = v12;
    LODWORD(v12) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v12;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v13 = *(v3 + 116);
    *(v3 + 116) = *(a2 + 29);
    *(a2 + 29) = v13;
    v14 = *(v3 + 112);
    *(v3 + 112) = *(a2 + 28);
    *(a2 + 28) = v14;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Measurement::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::Measurement *this)
{
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

CoreNavigation::CLP::LogEntry::PrivateData::Measurement *CoreNavigation::CLP::LogEntry::PrivateData::Measurement::Measurement(CoreNavigation::CLP::LogEntry::PrivateData::Measurement *this, const CoreNavigation::CLP::LogEntry::PrivateData::Measurement *a2)
{
  *this = &unk_1F4CDD7B8;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::Measurement::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::Measurement::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Measurement *this, const CoreNavigation::CLP::LogEntry::PrivateData::Measurement *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
  }

  v4 = *(a2 + 28);
  if (!v4)
  {
    goto LABEL_41;
  }

  if (v4)
  {
    *(this + 28) |= 1u;
    v5 = *(this + 1);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 1);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::SvId::MergeFrom(v5, v6);
    v4 = *(a2 + 28);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 28) |= 2u;
  v7 = *(this + 2);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 2);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 16);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::SyncState::MergeFrom(v7, v8);
  v4 = *(a2 + 28);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = *(a2 + 3);
  *(this + 28) |= 4u;
  *(this + 3) = v9;
  v4 = *(a2 + 28);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(a2 + 4);
  *(this + 28) |= 8u;
  *(this + 4) = v10;
  v4 = *(a2 + 28);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    *(this + 28) |= 0x20u;
    v12 = *(this + 6);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 6);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 48);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::SvTime::MergeFrom(v12, v13);
    v4 = *(a2 + 28);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_36;
    }

    goto LABEL_31;
  }

LABEL_25:
  v11 = *(a2 + 5);
  *(this + 28) |= 0x10u;
  *(this + 5) = v11;
  v4 = *(a2 + 28);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_31:
  *(this + 28) |= 0x40u;
  v14 = *(this + 7);
  if (!v14)
  {
    operator new();
  }

  v15 = *(a2 + 7);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 56);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(v14, v15);
  v4 = *(a2 + 28);
  if ((v4 & 0x80) != 0)
  {
LABEL_36:
    *(this + 28) |= 0x80u;
    v16 = *(this + 8);
    if (!v16)
    {
      operator new();
    }

    v17 = *(a2 + 8);
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 64);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::MergeFrom(v16, v17);
    v4 = *(a2 + 28);
  }

LABEL_41:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    *(this + 28) |= 0x100u;
    v18 = *(this + 9);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 9);
    if (!v19)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v19 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 72);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::MergeFrom(v18, v19);
    v4 = *(a2 + 28);
    if ((v4 & 0x200) == 0)
    {
LABEL_44:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_55;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_44;
  }

  v20 = *(a2 + 20);
  *(this + 28) |= 0x200u;
  *(this + 20) = v20;
  v4 = *(a2 + 28);
  if ((v4 & 0x400) == 0)
  {
LABEL_45:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_57;
  }

LABEL_55:
  v21 = *(a2 + 21);
  if (v21 >= 5)
  {
    __assert_rtn("set_multipath_indicator", "CoreNavigationCLPGnssMeasApi.pb.h", 9803, "::CoreNavigation::CLP::LogEntry::PrivateData::MultipathIndicator_IsValid(value)");
  }

  *(this + 28) |= 0x400u;
  *(this + 21) = v21;
  v4 = *(a2 + 28);
  if ((v4 & 0x800) == 0)
  {
LABEL_46:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_47;
    }

LABEL_62:
    v24 = *(a2 + 104);
    *(this + 28) |= 0x1000u;
    *(this + 104) = v24;
    if ((*(a2 + 28) & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_63;
  }

LABEL_57:
  *(this + 28) |= 0x800u;
  v22 = *(this + 11);
  if (!v22)
  {
    operator new();
  }

  v23 = *(a2 + 11);
  if (!v23)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 88);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(v22, v23);
  v4 = *(a2 + 28);
  if ((v4 & 0x1000) != 0)
  {
    goto LABEL_62;
  }

LABEL_47:
  if ((v4 & 0x2000) == 0)
  {
    return;
  }

LABEL_63:
  *(this + 28) |= 0x2000u;
  v25 = *(this + 12);
  if (!v25)
  {
    operator new();
  }

  v26 = *(a2 + 12);
  if (!v26)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 96);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergeFrom(v25, v26);
}

void sub_1D0D15A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Measurement::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 112);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::SvId::Clear(this);
        v2 = *(v1 + 112);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::SyncState::Clear(this);
        v2 = *(v1 + 112);
      }
    }

    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    if ((v2 & 0x20) != 0)
    {
      v3 = *(v1 + 48);
      if (v3)
      {
        if (*(v3 + 32))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 32) = 0;
        v2 = *(v1 + 112);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v4 = *(v1 + 56);
      if (v4)
      {
        if (*(v4 + 32))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 32) = 0;
        v2 = *(v1 + 112);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      v5 = *(v1 + 64);
      if (v5)
      {
        if (*(v5 + 48))
        {
          *(v5 + 40) = 0;
          *(v5 + 24) = 0u;
          *(v5 + 8) = 0u;
        }

        *(v5 + 48) = 0;
        v2 = *(v1 + 112);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      this = *(v1 + 72);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::Clear(this);
        v2 = *(v1 + 112);
      }
    }

    *(v1 + 80) = 0;
    if ((v2 & 0x800) != 0)
    {
      v6 = *(v1 + 88);
      if (v6)
      {
        if (*(v6 + 32))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
        }

        *(v6 + 32) = 0;
        v2 = *(v1 + 112);
      }
    }

    *(v1 + 104) = 0;
    if ((v2 & 0x2000) != 0)
    {
      v7 = *(v1 + 96);
      if (v7)
      {
        if (*(v7 + 32))
        {
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          *(v7 + 24) = 0;
        }

        *(v7 + 32) = 0;
      }
    }
  }

  *(v1 + 112) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Measurement::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 112);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 112);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_25:
  v9 = *(v5 + 48);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_28:
  v10 = *(v5 + 56);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v10, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_31:
  v11 = *(v5 + 64);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v11, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_34:
  v12 = *(v5 + 72);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v12, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 112);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 84), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_42:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, *(v5 + 104), a2, a4);
    if ((*(v5 + 112) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_43;
  }

LABEL_39:
  v13 = *(v5 + 88);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v13, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_42;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return this;
  }

LABEL_43:
  v14 = *(v5 + 96);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 96);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v14, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Measurement::ByteSize(uint64_t this)
{
  v1 = this;
  v2 = *(this + 112);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_50;
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

  v4 = *(this + 8);
  if (!v4)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
    v4 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 8);
  }

  v5 = CoreNavigation::CLP::LogEntry::PrivateData::SvId::ByteSize(v4);
  v6 = v5;
  if (v5 >= 0x80)
  {
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    this = 1;
  }

  v3 = (v6 + this + 1);
  v2 = *(v1 + 112);
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v7 = *(v1 + 16);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 16);
    }

    v8 = CoreNavigation::CLP::LogEntry::PrivateData::SyncState::ByteSize(v7);
    v9 = v8;
    if (v8 >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    }

    else
    {
      this = 1;
    }

    v3 = (v3 + v9 + this + 1);
    v2 = *(v1 + 112);
  }

LABEL_18:
  if ((v2 & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v1 + 24));
    v3 = (v3 + this + 1);
    v2 = *(v1 + 112);
    if ((v2 & 8) == 0)
    {
LABEL_20:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_20;
  }

  this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v1 + 32));
  v3 = (v3 + this + 1);
  v2 = *(v1 + 112);
  if ((v2 & 0x10) == 0)
  {
LABEL_21:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v1 + 40));
  v3 = (v3 + this + 1);
  v2 = *(v1 + 112);
  if ((v2 & 0x20) == 0)
  {
LABEL_22:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_36;
  }

LABEL_28:
  v10 = *(v1 + 48);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 48);
  }

  v11 = *(v10 + 32);
  v12 = ((v11 << 31) >> 31) & 9;
  if ((v11 & 2) != 0)
  {
    v12 += 9;
  }

  v13 = v12 + ((v11 >> 1) & 2);
  if (*(v10 + 32))
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  *(v10 + 28) = v14;
  v3 = (v3 + v14 + 2);
  v2 = *(v1 + 112);
  if ((v2 & 0x40) == 0)
  {
LABEL_23:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

LABEL_36:
  v15 = *(v1 + 56);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 56);
  }

  v16 = *(v15 + 32);
  v17 = ((v16 << 31) >> 31) & 9;
  if ((v16 & 2) != 0)
  {
    v17 += 9;
  }

  v18 = v17 + ((v16 >> 1) & 2);
  if (*(v15 + 32))
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  *(v15 + 28) = v19;
  v3 = (v3 + v19 + 2);
  v2 = *(v1 + 112);
  if ((v2 & 0x80) != 0)
  {
LABEL_44:
    v20 = *(v1 + 64);
    if (!v20)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 64);
    }

    v21 = CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::ByteSize(v20);
    v22 = v21;
    if (v21 >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
    }

    else
    {
      this = 1;
    }

    v3 = (v3 + v22 + this + 1);
    v2 = *(v1 + 112);
  }

LABEL_50:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v23 = *(v1 + 72);
      if (!v23)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
        v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 72);
      }

      v24 = CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::ByteSize(v23);
      v25 = v24;
      if (v24 >= 0x80)
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
      }

      else
      {
        this = 1;
      }

      LODWORD(v3) = v3 + v25 + this + 1;
      v2 = *(v1 + 112);
    }

    if ((v2 & 0x200) != 0)
    {
      LODWORD(v3) = v3 + 5;
    }

    if ((v2 & 0x400) != 0)
    {
      this = *(v1 + 84);
      if ((this & 0x80000000) != 0)
      {
        v26 = 11;
      }

      else if (this >= 0x80)
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
        v26 = this + 1;
        v2 = *(v1 + 112);
      }

      else
      {
        v26 = 2;
      }

      LODWORD(v3) = v26 + v3;
    }

    if ((v2 & 0x800) != 0)
    {
      v27 = *(v1 + 88);
      if (!v27)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
        v27 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 88);
      }

      v28 = *(v27 + 32);
      v29 = ((v28 << 31) >> 31) & 9;
      if ((v28 & 2) != 0)
      {
        v29 += 9;
      }

      v30 = v29 + ((v28 >> 1) & 2);
      if (*(v27 + 32))
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      *(v27 + 28) = v31;
      LODWORD(v3) = v3 + v31 + 2;
      v2 = *(v1 + 112);
    }

    v3 = ((v2 >> 11) & 2) + v3;
    if ((v2 & 0x2000) != 0)
    {
      v32 = *(v1 + 96);
      if (!v32)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
        v32 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 96);
      }

      v3 = v3 + CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::ByteSize(v32) + 2;
    }
  }

  *(v1 + 108) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::PrivateData::Measurement::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Measurement *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::Measurement::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Measurement::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::Measurement *this, const CoreNavigation::CLP::LogEntry::PrivateData::Measurement *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::Measurement::MergeFrom(this, a2);
  }
}

float CoreNavigation::CLP::LogEntry::PrivateData::Measurement::Swap(CoreNavigation::CLP::LogEntry::PrivateData::Measurement *this, CoreNavigation::CLP::LogEntry::PrivateData::Measurement *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    v4 = *(this + 3);
    v5 = *(a2 + 3);
    *(this + 2) = *(a2 + 2);
    *(this + 3) = v5;
    *(a2 + 2) = v3;
    *(a2 + 3) = v4;
    v6 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 5);
    v8 = *(this + 6);
    v9 = *(a2 + 6);
    *(this + 5) = *(a2 + 5);
    *(this + 6) = v9;
    *(a2 + 5) = v7;
    *(a2 + 6) = v8;
    v10 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v10;
    v11 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v11;
    v12 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v12;
    result = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = result;
    LODWORD(v12) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v12;
    v14 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v14;
    LOBYTE(v14) = *(this + 104);
    *(this + 104) = *(a2 + 104);
    *(a2 + 104) = v14;
    v15 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v15;
    LODWORD(v15) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v15;
    LODWORD(v15) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v15;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::SharedCtor(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel *CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::ReceiverClockModel(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel *this, const CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel *a2)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDD830;
  *(this + 24) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel *this, const CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      result = *(a2 + 2);
      *(this + 8) |= 1u;
      *(this + 2) = result;
      v5 = *(a2 + 8);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 3);
    *(this + 8) |= 2u;
    *(this + 3) = result;
    v5 = *(a2 + 8);
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
    result = *(a2 + 4);
    *(this + 8) |= 4u;
    *(this + 4) = result;
    v5 = *(a2 + 8);
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
    result = *(a2 + 5);
    *(this + 8) |= 8u;
    *(this + 5) = result;
    if ((*(a2 + 8) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    v6 = *(a2 + 24);
    *(this + 8) |= 0x10u;
    *(this + 24) = v6;
  }

  return result;
}

void sub_1D0D165D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::~ReceiverClockModel(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel *this)
{
  *this = &unk_1F4CDD830;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::~ReceiverClockModel(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (v6 != 2 || v7 != 5)
          {
            goto LABEL_21;
          }

          goto LABEL_28;
        }

        if (v7 != 5)
        {
          goto LABEL_21;
        }

        v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v17) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v17;
        *(this + 8) |= 1u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 21)
        {
          *(a2 + 1) = v10 + 1;
LABEL_28:
          v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v17;
          *(this + 8) |= 2u;
          v11 = *(a2 + 1);
          if (v11 < *(a2 + 2) && *v11 == 29)
          {
            *(a2 + 1) = v11 + 1;
LABEL_32:
            v17 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v17) & 1) == 0)
            {
              return 0;
            }

            *(this + 4) = v17;
            *(this + 8) |= 4u;
            v12 = *(a2 + 1);
            if (v12 < *(a2 + 2) && *v12 == 37)
            {
              *(a2 + 1) = v12 + 1;
              goto LABEL_36;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if (v7 != 5)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }

      if (v6 != 4)
      {
        break;
      }

      if (v7 != 5)
      {
        goto LABEL_21;
      }

LABEL_36:
      v17 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v17) & 1) == 0)
      {
        return 0;
      }

      *(this + 5) = v17;
      *(this + 8) |= 8u;
      v13 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v13 < v8 && *v13 == 40)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_40:
        v17 = 0;
        if (v9 >= v8 || (v14 = *v9, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v17);
          if (!result)
          {
            return result;
          }

          v14 = v17;
          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v15 = v9 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 24) = v14 != 0;
        *(this + 8) |= 0x10u;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 8), a3);
    v6 = *(v5 + 32);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 12), a3);
  v6 = *(v5 + 32);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 20), a3);
    if ((*(v5 + 32) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    v2 = ((v1 << 31) >> 31) & 5;
    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 5;
    }

    v3 = v2 + ((v1 >> 3) & 2);
  }

  else
  {
    v3 = 0;
  }

  *(this + 7) = v3;
  return v3;
}

float CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel *this, const CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::Swap(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel *this, CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel *a2)
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
    result = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = result;
    v6 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v6;
    v7 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections *CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::ReceiverClockCorrections(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, const CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections *a2)
{
  *this = &unk_1F4CDD8A8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, const CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 52);
  if (v5)
  {
    if (*(a2 + 52))
    {
      result = *(a2 + 1);
      *(this + 13) |= 1u;
      *(this + 1) = result;
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

void sub_1D0D16E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::Clear(uint64_t this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 52);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v5 = *(v4 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
  v5 = *(v4 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 32), a3);
    if ((*(v4 + 52) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 24), a3);
  v5 = *(v4 + 52);
  if ((v5 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v5 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v6 = *(v4 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, v6, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections *this)
{
  v1 = *(this + 52);
  if (*(this + 52))
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
      v2 += 9;
    }

    if ((v1 & 0x10) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 12) = v1;
  return v1;
}

double CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, const CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::Swap(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections *a2)
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
    v7 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v7;
    v8 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v8;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::ReceiverToGpsTimeConversion(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, const CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *a2)
{
  *this = &unk_1F4CDD920;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, const CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 40);
  if (v5)
  {
    if (*(a2 + 40))
    {
      v6 = *(a2 + 1);
      *(this + 10) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 10);
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

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    LODWORD(result) = *(a2 + 4);
    *(this + 10) |= 2u;
    *(this + 4) = LODWORD(result);
    v5 = *(a2 + 10);
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
    LODWORD(result) = *(a2 + 5);
    *(this + 10) |= 4u;
    *(this + 5) = LODWORD(result);
    v5 = *(a2 + 10);
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
    result = *(a2 + 3);
    *(this + 10) |= 8u;
    *(this + 3) = result;
    if ((*(a2 + 10) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    LODWORD(result) = *(a2 + 8);
    *(this + 10) |= 0x10u;
    *(this + 8) = LODWORD(result);
  }

  return result;
}

void sub_1D0D1737C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::Clear(uint64_t this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 24), a3);
    if ((*(v5 + 40) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 40);
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
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, v7, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this)
{
  LOBYTE(v2) = *(this + 40);
  if (v2)
  {
    if (*(this + 40))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v2 = *(this + 10);
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
      v3 += 9;
    }

    if ((v2 & 0x10) != 0)
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

  *(this + 9) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, const CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::Swap(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *a2)
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
    v5 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v5;
    result = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = result;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Clock::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::Clock *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::Clock *CoreNavigation::CLP::LogEntry::PrivateData::Clock::Clock(CoreNavigation::CLP::LogEntry::PrivateData::Clock *this, const CoreNavigation::CLP::LogEntry::PrivateData::Clock *a2)
{
  *this = &unk_1F4CDD998;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::Clock::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Clock::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Clock *this, const CoreNavigation::CLP::LogEntry::PrivateData::Clock *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (!v5)
  {
    return result;
  }

  if ((*(a2 + 44) & 1) == 0)
  {
    if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    *(this + 11) |= 2u;
    v7 = *(this + 2);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 2);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::Clock::default_instance_ + 16);
    }

    *&result = CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::MergeFrom(v7, v8);
    v5 = *(a2 + 11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v6 = *(a2 + 1);
  *(this + 11) |= 1u;
  *(this + 1) = v6;
  v5 = *(a2 + 11);
  if ((v5 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_15:
  *(this + 11) |= 4u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::Clock::default_instance_ + 24);
  }

  result = CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergeFrom(v9, v10);
  if ((*(a2 + 11) & 8) != 0)
  {
LABEL_20:
    *(this + 11) |= 8u;
    v11 = *(this + 4);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 4);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::Clock::default_instance_ + 32);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergeFrom(v11, v12);
  }

  return result;
}

void sub_1D0D17A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Clock::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 44);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
      if (v2)
      {
        if (*(v2 + 32))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 32) = 0;
        v1 = *(this + 44);
      }
    }

    if ((v1 & 4) != 0)
    {
      v3 = *(this + 24);
      if (v3)
      {
        if (*(v3 + 52))
        {
          *(v3 + 40) = 0;
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        *(v3 + 52) = 0;
        v1 = *(this + 44);
      }
    }

    if ((v1 & 8) != 0)
    {
      v4 = *(this + 32);
      if (v4)
      {
        if (*(v4 + 40))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 32) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 40) = 0;
      }
    }
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Clock::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 44);
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

  v7 = *(v5 + 16);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::Clock::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_10:
  v8 = *(v5 + 24);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::Clock::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  if ((*(v5 + 44) & 8) != 0)
  {
LABEL_13:
    v9 = *(v5 + 32);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::Clock::default_instance_ + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Clock::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::Clock *this)
{
  LOBYTE(v2) = *(this + 44);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_22;
  }

  if (*(this + 44))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 11);
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  v4 = *(this + 2);
  if (!v4)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
    v4 = *(CoreNavigation::CLP::LogEntry::PrivateData::Clock::default_instance_ + 16);
  }

  v3 = v3 + CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::ByteSize(v4) + 2;
  v2 = *(this + 11);
LABEL_10:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  v5 = *(this + 3);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
    v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::Clock::default_instance_ + 24);
  }

  v3 = v3 + CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::ByteSize(v5) + 2;
  if ((*(this + 11) & 8) != 0)
  {
LABEL_16:
    v6 = *(this + 4);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::Clock::default_instance_ + 32);
    }

    v7 = CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::ByteSize(v6);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    }

    else
    {
      v9 = 1;
    }

    v3 = (v3 + v8 + v9 + 1);
  }

LABEL_22:
  *(this + 10) = v3;
  return v3;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Clock::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Clock *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::Clock::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::Clock::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::Clock *this, const CoreNavigation::CLP::LogEntry::PrivateData::Clock *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::Clock::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Clock::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::Clock *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    v3 = *(this + 16);
    v4 = *(a2 + 2);
    *(this + 8) = *(a2 + 1);
    *(this + 16) = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v6;
    LODWORD(v6) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v6;
    LODWORD(v6) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v6;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 40) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport *CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::MeasurementReport(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport *this, const CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport *a2)
{
  *(this + 5) = 0;
  *this = &unk_1F4CDDA10;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::MergeFrom(this, a2);
  return this;
}

void sub_1D0D17F2C(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport *this, const CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(this + 6);
  v5 = *(a2 + 6);
  v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
  LODWORD(v8) = *(a2 + 6);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
      }

      v10 = *(*(a2 + 2) + 8 * v9);
      v11 = *(this + 7);
      v12 = *(this + 6);
      if (v12 >= v11)
      {
        if (v11 == *(this + 8))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
          v11 = *(this + 7);
        }

        *(this + 7) = v11 + 1;
        operator new();
      }

      v13 = *(this + 2);
      *(this + 6) = v12 + 1;
      CoreNavigation::CLP::LogEntry::PrivateData::Measurement::MergeFrom(*(v13 + 8 * v12), v10);
      ++v9;
      v8 = *(a2 + 6);
    }

    while (v9 < v8);
  }

  if (*(a2 + 44))
  {
    *(this + 11) |= 1u;
    v14 = *(this + 1);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 1);
    if (!v15)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v6);
      v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ + 8);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::Clock::MergeFrom(v14, v15);
  }

  return result;
}

void sub_1D0D181A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::Clear(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport *this)
{
  if (*(this + 44))
  {
    v2 = *(this + 1);
    if (v2)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::Clock::Clear(v2);
    }
  }

  result = sub_1D0C77384(this + 16);
  *(this + 11) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ + 8);
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport *this)
{
  if (*(this + 44))
  {
    v3 = *(this + 1);
    if (!v3)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v3 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ + 8);
    }

    v4 = CoreNavigation::CLP::LogEntry::PrivateData::Clock::ByteSize(v3);
    v5 = v4;
    if (v4 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
    }

    else
    {
      v6 = 1;
    }

    v2 = v5 + v6 + 1;
  }

  else
  {
    v2 = 0;
  }

  v7 = *(this + 6);
  v8 = (v7 + v2);
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = CoreNavigation::CLP::LogEntry::PrivateData::Measurement::ByteSize(*(*(this + 2) + 8 * v9));
      v11 = v10;
      if (v10 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      }

      else
      {
        v12 = 1;
      }

      v8 = (v11 + v8 + v12);
      ++v9;
    }

    while (v9 < *(this + 6));
  }

  *(this + 10) = v8;
  return v8;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport *this, const CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::MergeFrom(this, a2);
  }

  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport *CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::Swap(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport *this, CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport *a2)
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

double CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef *CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::Wgs84Ecef(CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef *this, const CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef *a2)
{
  *this = &unk_1F4CDDA88;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef *this, const CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef *a2)
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