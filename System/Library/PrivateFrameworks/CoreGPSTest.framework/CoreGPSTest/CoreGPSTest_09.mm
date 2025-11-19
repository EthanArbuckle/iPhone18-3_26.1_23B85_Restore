void sub_245517318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::GpsL1SyncState::~GpsL1SyncState(CLP::LogEntry::PrivateData::GpsL1SyncState *this)
{
  *this = &unk_28585FF88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585FF88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585FF88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance(CLP::LogEntry::PrivateData::GpsL1SyncState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GpsL1SyncState::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsL1SyncState::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GpsL1SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CLP::LogEntry::PrivateData::GpsL1SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CLP::LogEntry::PrivateData::GpsL1SyncState::ByteSize(CLP::LogEntry::PrivateData::GpsL1SyncState *this)
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

void CLP::LogEntry::PrivateData::GpsL1SyncState::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GpsL1SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::GpsL1SyncState::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::GpsL1SyncState::CopyFrom(CLP::LogEntry::PrivateData::GpsL1SyncState *this, const CLP::LogEntry::PrivateData::GpsL1SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::GpsL1SyncState::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::GpsL1SyncState::Swap(uint64_t this, CLP::LogEntry::PrivateData::GpsL1SyncState *a2)
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

uint64_t CLP::LogEntry::PrivateData::GpsL2CSyncState::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

CLP::LogEntry::PrivateData::GpsL2CSyncState *CLP::LogEntry::PrivateData::GpsL2CSyncState::GpsL2CSyncState(CLP::LogEntry::PrivateData::GpsL2CSyncState *this, const CLP::LogEntry::PrivateData::GpsL2CSyncState *a2)
{
  *this = &unk_285860000;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 12) = 0;
  CLP::LogEntry::PrivateData::GpsL2CSyncState::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::GpsL2CSyncState::MergeFrom(CLP::LogEntry::PrivateData::GpsL2CSyncState *this, const CLP::LogEntry::PrivateData::GpsL2CSyncState *a2)
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

void sub_245517B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::GpsL2CSyncState::~GpsL2CSyncState(CLP::LogEntry::PrivateData::GpsL2CSyncState *this)
{
  *this = &unk_285860000;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860000;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860000;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance(CLP::LogEntry::PrivateData::GpsL2CSyncState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GpsL2CSyncState::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 12) = 0;
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsL2CSyncState::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GpsL2CSyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CLP::LogEntry::PrivateData::GpsL2CSyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CLP::LogEntry::PrivateData::GpsL2CSyncState::ByteSize(CLP::LogEntry::PrivateData::GpsL2CSyncState *this)
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

void CLP::LogEntry::PrivateData::GpsL2CSyncState::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GpsL2CSyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::GpsL2CSyncState::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::GpsL2CSyncState::CopyFrom(CLP::LogEntry::PrivateData::GpsL2CSyncState *this, const CLP::LogEntry::PrivateData::GpsL2CSyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::GpsL2CSyncState::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::GpsL2CSyncState::Swap(uint64_t this, CLP::LogEntry::PrivateData::GpsL2CSyncState *a2)
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

uint64_t CLP::LogEntry::PrivateData::GpsL5SyncState::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

CLP::LogEntry::PrivateData::GpsL5SyncState *CLP::LogEntry::PrivateData::GpsL5SyncState::GpsL5SyncState(CLP::LogEntry::PrivateData::GpsL5SyncState *this, const CLP::LogEntry::PrivateData::GpsL5SyncState *a2)
{
  *this = &unk_285860078;
  *(this + 1) = 0;
  *(this + 4) = 0;
  CLP::LogEntry::PrivateData::GpsL5SyncState::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::GpsL5SyncState::MergeFrom(CLP::LogEntry::PrivateData::GpsL5SyncState *this, const CLP::LogEntry::PrivateData::GpsL5SyncState *a2)
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

void sub_2455183F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::GpsL5SyncState::~GpsL5SyncState(CLP::LogEntry::PrivateData::GpsL5SyncState *this)
{
  *this = &unk_285860078;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860078;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860078;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance(CLP::LogEntry::PrivateData::GpsL5SyncState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GpsL5SyncState::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsL5SyncState::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GpsL5SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CLP::LogEntry::PrivateData::GpsL5SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CLP::LogEntry::PrivateData::GpsL5SyncState::ByteSize(CLP::LogEntry::PrivateData::GpsL5SyncState *this)
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

void CLP::LogEntry::PrivateData::GpsL5SyncState::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GpsL5SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::GpsL5SyncState::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::GpsL5SyncState::CopyFrom(CLP::LogEntry::PrivateData::GpsL5SyncState *this, const CLP::LogEntry::PrivateData::GpsL5SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::GpsL5SyncState::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::GpsL5SyncState::Swap(uint64_t this, CLP::LogEntry::PrivateData::GpsL5SyncState *a2)
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

uint64_t CLP::LogEntry::PrivateData::GlonassL1fSyncState::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

CLP::LogEntry::PrivateData::GlonassL1fSyncState *CLP::LogEntry::PrivateData::GlonassL1fSyncState::GlonassL1fSyncState(CLP::LogEntry::PrivateData::GlonassL1fSyncState *this, const CLP::LogEntry::PrivateData::GlonassL1fSyncState *a2)
{
  *this = &unk_2858600F0;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 12) = 0;
  CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergeFrom(CLP::LogEntry::PrivateData::GlonassL1fSyncState *this, const CLP::LogEntry::PrivateData::GlonassL1fSyncState *a2)
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

void sub_245518C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::GlonassL1fSyncState::~GlonassL1fSyncState(CLP::LogEntry::PrivateData::GlonassL1fSyncState *this)
{
  *this = &unk_2858600F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858600F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858600F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance(CLP::LogEntry::PrivateData::GlonassL1fSyncState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GlonassL1fSyncState::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 12) = 0;
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GlonassL1fSyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CLP::LogEntry::PrivateData::GlonassL1fSyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CLP::LogEntry::PrivateData::GlonassL1fSyncState::ByteSize(CLP::LogEntry::PrivateData::GlonassL1fSyncState *this)
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

void CLP::LogEntry::PrivateData::GlonassL1fSyncState::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GlonassL1fSyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::GlonassL1fSyncState::CopyFrom(CLP::LogEntry::PrivateData::GlonassL1fSyncState *this, const CLP::LogEntry::PrivateData::GlonassL1fSyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::GlonassL1fSyncState::Swap(uint64_t this, CLP::LogEntry::PrivateData::GlonassL1fSyncState *a2)
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

uint64_t CLP::LogEntry::PrivateData::BeidouB1SyncState::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

CLP::LogEntry::PrivateData::BeidouB1SyncState *CLP::LogEntry::PrivateData::BeidouB1SyncState::BeidouB1SyncState(CLP::LogEntry::PrivateData::BeidouB1SyncState *this, const CLP::LogEntry::PrivateData::BeidouB1SyncState *a2)
{
  *this = &unk_285860168;
  *(this + 1) = 0;
  *(this + 4) = 0;
  CLP::LogEntry::PrivateData::BeidouB1SyncState::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::BeidouB1SyncState::MergeFrom(CLP::LogEntry::PrivateData::BeidouB1SyncState *this, const CLP::LogEntry::PrivateData::BeidouB1SyncState *a2)
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

void sub_2455194C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::BeidouB1SyncState::~BeidouB1SyncState(CLP::LogEntry::PrivateData::BeidouB1SyncState *this)
{
  *this = &unk_285860168;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860168;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860168;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance(CLP::LogEntry::PrivateData::BeidouB1SyncState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::BeidouB1SyncState::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::BeidouB1SyncState::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::BeidouB1SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CLP::LogEntry::PrivateData::BeidouB1SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CLP::LogEntry::PrivateData::BeidouB1SyncState::ByteSize(CLP::LogEntry::PrivateData::BeidouB1SyncState *this)
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

void CLP::LogEntry::PrivateData::BeidouB1SyncState::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::BeidouB1SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::BeidouB1SyncState::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::BeidouB1SyncState::CopyFrom(CLP::LogEntry::PrivateData::BeidouB1SyncState *this, const CLP::LogEntry::PrivateData::BeidouB1SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::BeidouB1SyncState::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::BeidouB1SyncState::Swap(uint64_t this, CLP::LogEntry::PrivateData::BeidouB1SyncState *a2)
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

uint64_t CLP::LogEntry::PrivateData::BeidouB2SyncState::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

CLP::LogEntry::PrivateData::BeidouB2SyncState *CLP::LogEntry::PrivateData::BeidouB2SyncState::BeidouB2SyncState(CLP::LogEntry::PrivateData::BeidouB2SyncState *this, const CLP::LogEntry::PrivateData::BeidouB2SyncState *a2)
{
  *this = &unk_2858601E0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  CLP::LogEntry::PrivateData::BeidouB2SyncState::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::BeidouB2SyncState::MergeFrom(CLP::LogEntry::PrivateData::BeidouB2SyncState *this, const CLP::LogEntry::PrivateData::BeidouB2SyncState *a2)
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

void sub_245519CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::BeidouB2SyncState::~BeidouB2SyncState(CLP::LogEntry::PrivateData::BeidouB2SyncState *this)
{
  *this = &unk_2858601E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858601E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858601E0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance(CLP::LogEntry::PrivateData::BeidouB2SyncState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::BeidouB2SyncState::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::BeidouB2SyncState::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::BeidouB2SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CLP::LogEntry::PrivateData::BeidouB2SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CLP::LogEntry::PrivateData::BeidouB2SyncState::ByteSize(CLP::LogEntry::PrivateData::BeidouB2SyncState *this)
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

void CLP::LogEntry::PrivateData::BeidouB2SyncState::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::BeidouB2SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::BeidouB2SyncState::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::BeidouB2SyncState::CopyFrom(CLP::LogEntry::PrivateData::BeidouB2SyncState *this, const CLP::LogEntry::PrivateData::BeidouB2SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::BeidouB2SyncState::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::BeidouB2SyncState::Swap(uint64_t this, CLP::LogEntry::PrivateData::BeidouB2SyncState *a2)
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

uint64_t CLP::LogEntry::PrivateData::GalileoE1SyncState::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

CLP::LogEntry::PrivateData::GalileoE1SyncState *CLP::LogEntry::PrivateData::GalileoE1SyncState::GalileoE1SyncState(CLP::LogEntry::PrivateData::GalileoE1SyncState *this, const CLP::LogEntry::PrivateData::GalileoE1SyncState *a2)
{
  *this = &unk_285860258;
  *(this + 1) = 0;
  *(this + 4) = 0;
  CLP::LogEntry::PrivateData::GalileoE1SyncState::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::GalileoE1SyncState::MergeFrom(CLP::LogEntry::PrivateData::GalileoE1SyncState *this, const CLP::LogEntry::PrivateData::GalileoE1SyncState *a2)
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

void sub_24551A4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::GalileoE1SyncState::~GalileoE1SyncState(CLP::LogEntry::PrivateData::GalileoE1SyncState *this)
{
  *this = &unk_285860258;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860258;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860258;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance(CLP::LogEntry::PrivateData::GalileoE1SyncState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GalileoE1SyncState::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GalileoE1SyncState::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GalileoE1SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CLP::LogEntry::PrivateData::GalileoE1SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CLP::LogEntry::PrivateData::GalileoE1SyncState::ByteSize(CLP::LogEntry::PrivateData::GalileoE1SyncState *this)
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

void CLP::LogEntry::PrivateData::GalileoE1SyncState::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GalileoE1SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::GalileoE1SyncState::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::GalileoE1SyncState::CopyFrom(CLP::LogEntry::PrivateData::GalileoE1SyncState *this, const CLP::LogEntry::PrivateData::GalileoE1SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::GalileoE1SyncState::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::GalileoE1SyncState::Swap(uint64_t this, CLP::LogEntry::PrivateData::GalileoE1SyncState *a2)
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

uint64_t CLP::LogEntry::PrivateData::GalileoE5SyncState::SharedCtor(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CLP::LogEntry::PrivateData::GalileoE5SyncState *CLP::LogEntry::PrivateData::GalileoE5SyncState::GalileoE5SyncState(CLP::LogEntry::PrivateData::GalileoE5SyncState *this, const CLP::LogEntry::PrivateData::GalileoE5SyncState *a2)
{
  *(this + 5) = 0;
  *(this + 6) = 0;
  *this = &unk_2858602D0;
  *(this + 1) = 0;
  *(this + 8) = 0;
  CLP::LogEntry::PrivateData::GalileoE5SyncState::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::GalileoE5SyncState::MergeFrom(CLP::LogEntry::PrivateData::GalileoE5SyncState *this, const CLP::LogEntry::PrivateData::GalileoE5SyncState *a2)
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

void sub_24551AD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::GalileoE5SyncState::~GalileoE5SyncState(CLP::LogEntry::PrivateData::GalileoE5SyncState *this)
{
  *this = &unk_2858602D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858602D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858602D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance(CLP::LogEntry::PrivateData::GalileoE5SyncState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GalileoE5SyncState::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::GalileoE5SyncState::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GalileoE5SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 5)
        {
          if (TagFallback >> 3 <= 7)
          {
            if (v6 == 6)
            {
              if ((TagFallback & 7) == 0)
              {
                v15 = *(a2 + 1);
                v7 = *(a2 + 2);
                goto LABEL_81;
              }
            }

            else if (v6 == 7 && (TagFallback & 7) == 0)
            {
              v11 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_89;
            }
          }

          else if (v6 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_97;
            }
          }

          else if (v6 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_105;
            }
          }

          else if (v6 == 10 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_113;
          }

          goto LABEL_40;
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_40;
          }

          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_49;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v39 = 0;
        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v12 >= v7 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
          if (!result)
          {
            return result;
          }

          v13 = v39;
          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) = v13 != 0;
        *(this + 6) |= 1u;
        if (v14 < v7 && *v14 == 16)
        {
          v10 = v14 + 1;
          *(a2 + 1) = v10;
LABEL_49:
          v39 = 0;
          if (v10 >= v7 || (v20 = *v10, (v20 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
            if (!result)
            {
              return result;
            }

            v20 = v39;
            v21 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v21 = v10 + 1;
            *(a2 + 1) = v21;
          }

          *(this + 9) = v20 != 0;
          *(this + 6) |= 2u;
          if (v21 < v7 && *v21 == 24)
          {
            v16 = v21 + 1;
            *(a2 + 1) = v16;
LABEL_57:
            v39 = 0;
            if (v16 >= v7 || (v22 = *v16, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
              if (!result)
              {
                return result;
              }

              v22 = v39;
              v23 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v23 = v16 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 10) = v22 != 0;
            *(this + 6) |= 4u;
            if (v23 < v7 && *v23 == 32)
            {
              v18 = v23 + 1;
              *(a2 + 1) = v18;
              goto LABEL_65;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_57;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_40;
      }

      v18 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_65:
      v39 = 0;
      if (v18 >= v7 || (v24 = *v18, (v24 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
        if (!result)
        {
          return result;
        }

        v24 = v39;
        v25 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v25 = v18 + 1;
        *(a2 + 1) = v25;
      }

      *(this + 11) = v24 != 0;
      *(this + 6) |= 8u;
      if (v25 < v7 && *v25 == 40)
      {
        v8 = v25 + 1;
        *(a2 + 1) = v8;
LABEL_73:
        v39 = 0;
        if (v8 >= v7 || (v26 = *v8, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
          if (!result)
          {
            return result;
          }

          v26 = v39;
          v27 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v27 = v8 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 12) = v26 != 0;
        *(this + 6) |= 0x10u;
        if (v27 < v7 && *v27 == 48)
        {
          v15 = v27 + 1;
          *(a2 + 1) = v15;
LABEL_81:
          v39 = 0;
          if (v15 >= v7 || (v28 = *v15, (v28 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
            if (!result)
            {
              return result;
            }

            v28 = v39;
            v29 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v29 = v15 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 13) = v28 != 0;
          *(this + 6) |= 0x20u;
          if (v29 < v7 && *v29 == 56)
          {
            v11 = v29 + 1;
            *(a2 + 1) = v11;
LABEL_89:
            v39 = 0;
            if (v11 >= v7 || (v30 = *v11, (v30 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
              if (!result)
              {
                return result;
              }

              v30 = v39;
              v31 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v31 = v11 + 1;
              *(a2 + 1) = v31;
            }

            *(this + 14) = v30 != 0;
            *(this + 6) |= 0x40u;
            if (v31 < v7 && *v31 == 64)
            {
              v17 = v31 + 1;
              *(a2 + 1) = v17;
LABEL_97:
              v39 = 0;
              if (v17 >= v7 || (v32 = *v17, (v32 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                if (!result)
                {
                  return result;
                }

                v32 = v39;
                v33 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                v33 = v17 + 1;
                *(a2 + 1) = v33;
              }

              *(this + 15) = v32 != 0;
              *(this + 6) |= 0x80u;
              if (v33 < v7 && *v33 == 72)
              {
                v19 = v33 + 1;
                *(a2 + 1) = v19;
LABEL_105:
                v39 = 0;
                if (v19 >= v7 || (v34 = *v19, (v34 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                  if (!result)
                  {
                    return result;
                  }

                  v34 = v39;
                  v35 = *(a2 + 1);
                  v7 = *(a2 + 2);
                }

                else
                {
                  v35 = v19 + 1;
                  *(a2 + 1) = v35;
                }

                *(this + 16) = v34 != 0;
                *(this + 6) |= 0x100u;
                if (v35 < v7 && *v35 == 80)
                {
                  v9 = v35 + 1;
                  *(a2 + 1) = v9;
LABEL_113:
                  v39 = 0;
                  if (v9 >= v7 || (v36 = *v9, (v36 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                    if (!result)
                    {
                      return result;
                    }

                    v36 = v39;
                    v37 = *(a2 + 1);
                    v7 = *(a2 + 2);
                  }

                  else
                  {
                    v37 = v9 + 1;
                    *(a2 + 1) = v37;
                  }

                  *(this + 17) = v36 != 0;
                  *(this + 6) |= 0x200u;
                  if (v37 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_73;
    }

LABEL_40:
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

uint64_t CLP::LogEntry::PrivateData::GalileoE5SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CLP::LogEntry::PrivateData::GalileoE5SyncState::ByteSize(CLP::LogEntry::PrivateData::GalileoE5SyncState *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    v2.i64[0] = 0x200000002;
    v2.i64[1] = 0x200000002;
    v3 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v1), xmmword_2455824F0), v2)) + 2 * (v1 & 1) + (v1 & 2) + ((v1 >> 5) & 2) + ((v1 >> 6) & 2);
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

void CLP::LogEntry::PrivateData::GalileoE5SyncState::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GalileoE5SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::GalileoE5SyncState::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::GalileoE5SyncState::CopyFrom(CLP::LogEntry::PrivateData::GalileoE5SyncState *this, const CLP::LogEntry::PrivateData::GalileoE5SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::GalileoE5SyncState::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::GalileoE5SyncState::Swap(uint64_t this, CLP::LogEntry::PrivateData::GalileoE5SyncState *a2)
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

uint64_t CLP::LogEntry::PrivateData::SbasL1SyncState::SharedCtor(uint64_t this)
{
  *(this + 12) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  return this;
}

CLP::LogEntry::PrivateData::SbasL1SyncState *CLP::LogEntry::PrivateData::SbasL1SyncState::SbasL1SyncState(CLP::LogEntry::PrivateData::SbasL1SyncState *this, const CLP::LogEntry::PrivateData::SbasL1SyncState *a2)
{
  *this = &unk_285860348;
  *(this + 12) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  CLP::LogEntry::PrivateData::SbasL1SyncState::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::SbasL1SyncState::MergeFrom(CLP::LogEntry::PrivateData::SbasL1SyncState *this, const CLP::LogEntry::PrivateData::SbasL1SyncState *a2)
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

void sub_24551B9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SbasL1SyncState::~SbasL1SyncState(CLP::LogEntry::PrivateData::SbasL1SyncState *this)
{
  *this = &unk_285860348;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860348;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860348;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance(CLP::LogEntry::PrivateData::SbasL1SyncState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SbasL1SyncState::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
    *(this + 10) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SbasL1SyncState::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SbasL1SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CLP::LogEntry::PrivateData::SbasL1SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CLP::LogEntry::PrivateData::SbasL1SyncState::ByteSize(CLP::LogEntry::PrivateData::SbasL1SyncState *this)
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

void CLP::LogEntry::PrivateData::SbasL1SyncState::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SbasL1SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::SbasL1SyncState::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::SbasL1SyncState::CopyFrom(CLP::LogEntry::PrivateData::SbasL1SyncState *this, const CLP::LogEntry::PrivateData::SbasL1SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::SbasL1SyncState::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::SbasL1SyncState::Swap(uint64_t this, CLP::LogEntry::PrivateData::SbasL1SyncState *a2)
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

double CLP::LogEntry::PrivateData::SyncState::SharedCtor(CLP::LogEntry::PrivateData::SyncState *this)
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

CLP::LogEntry::PrivateData::SyncState *CLP::LogEntry::PrivateData::SyncState::SyncState(CLP::LogEntry::PrivateData::SyncState *this, const CLP::LogEntry::PrivateData::SyncState *a2)
{
  *this = &unk_2858603C0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  CLP::LogEntry::PrivateData::SyncState::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::SyncState::MergeFrom(CLP::LogEntry::PrivateData::SyncState *this, const CLP::LogEntry::PrivateData::SyncState *a2)
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
      __assert_rtn("set_band", "CLPGnssMeasApi.pb.h", 7929, "::CLP::LogEntry::PrivateData::Band_IsValid(value)");
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
      v7 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 8);
    }

    CLP::LogEntry::PrivateData::GpsL1SyncState::MergeFrom(v6, v7);
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
    v9 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 16);
  }

  CLP::LogEntry::PrivateData::GpsL2CSyncState::MergeFrom(v8, v9);
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
    v11 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 24);
  }

  CLP::LogEntry::PrivateData::GpsL5SyncState::MergeFrom(v10, v11);
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
      v15 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 40);
    }

    CLP::LogEntry::PrivateData::BeidouB1SyncState::MergeFrom(v14, v15);
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
    v13 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 32);
  }

  CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergeFrom(v12, v13);
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
    v17 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 48);
  }

  CLP::LogEntry::PrivateData::BeidouB2SyncState::MergeFrom(v16, v17);
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
      v19 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 56);
    }

    CLP::LogEntry::PrivateData::GalileoE1SyncState::MergeFrom(v18, v19);
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
      v21 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 64);
    }

    CLP::LogEntry::PrivateData::GalileoE5SyncState::MergeFrom(v20, v21);
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
    v23 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 72);
  }

  CLP::LogEntry::PrivateData::SbasL1SyncState::MergeFrom(v22, v23);
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
      v25 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 80);
    }

    CLP::LogEntry::PrivateData::GpsL1SyncState::MergeFrom(v24, v25);
  }
}

void sub_24551C5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SyncState::~SyncState(CLP::LogEntry::PrivateData::SyncState *this)
{
  *this = &unk_2858603C0;
  CLP::LogEntry::PrivateData::SyncState::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858603C0;
  CLP::LogEntry::PrivateData::SyncState::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858603C0;
  CLP::LogEntry::PrivateData::SyncState::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::SyncState::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::SyncState::default_instance_ != this)
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

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[8];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[9];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    this = v1[10];
    if (this)
    {
      v11 = *(*this + 8);

      return v11();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::SyncState::default_instance(CLP::LogEntry::PrivateData::SyncState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SyncState::default_instance_;
  if (!CLP::LogEntry::PrivateData::SyncState::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SyncState::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SyncState::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::SyncState::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
                goto LABEL_43;
              }

              goto LABEL_53;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v82 = 0;
            v8 = *(a2 + 1);
            if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82);
              if (!result)
              {
                return result;
              }

              v9 = v82;
            }

            else
            {
              *(a2 + 1) = v8 + 1;
            }

            if (v9 <= 0xC)
            {
              *(this + 24) |= 1u;
              *(this + 22) = v9;
            }

            v11 = *(a2 + 1);
            if (v11 < *(a2 + 2) && *v11 == 18)
            {
              *(a2 + 1) = v11 + 1;
LABEL_53:
              *(this + 24) |= 2u;
              v12 = *(this + 1);
              if (!v12)
              {
                operator new();
              }

              v82 = 0;
              v13 = *(a2 + 1);
              if (v13 >= *(a2 + 2) || *v13 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
                {
                  return 0;
                }
              }

              else
              {
                v82 = *v13;
                *(a2 + 1) = v13 + 1;
              }

              v14 = *(a2 + 14);
              v15 = *(a2 + 15);
              *(a2 + 14) = v14 + 1;
              if (v14 >= v15)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CLP::LogEntry::PrivateData::GpsL1SyncState::MergePartialFromCodedStream(v12, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v16 = *(a2 + 14);
              v17 = __OFSUB__(v16, 1);
              v18 = v16 - 1;
              if (v18 < 0 == v17)
              {
                *(a2 + 14) = v18;
              }

              v19 = *(a2 + 1);
              if (v19 < *(a2 + 2) && *v19 == 26)
              {
                *(a2 + 1) = v19 + 1;
LABEL_67:
                *(this + 24) |= 4u;
                v20 = *(this + 2);
                if (!v20)
                {
                  operator new();
                }

                v82 = 0;
                v21 = *(a2 + 1);
                if (v21 >= *(a2 + 2) || *v21 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
                  {
                    return 0;
                  }
                }

                else
                {
                  v82 = *v21;
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
                if (!CLP::LogEntry::PrivateData::GpsL2CSyncState::MergePartialFromCodedStream(v20, a2) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v24 = *(a2 + 14);
                v17 = __OFSUB__(v24, 1);
                v25 = v24 - 1;
                if (v25 < 0 == v17)
                {
                  *(a2 + 14) = v25;
                }

                v26 = *(a2 + 1);
                if (v26 < *(a2 + 2) && *v26 == 34)
                {
                  *(a2 + 1) = v26 + 1;
                  goto LABEL_81;
                }
              }
            }
          }

          else
          {
            if (v6 == 3)
            {
              if (v7 != 2)
              {
                goto LABEL_43;
              }

              goto LABEL_67;
            }

            if (v6 != 4)
            {
              if (v6 != 5 || v7 != 2)
              {
                goto LABEL_43;
              }

              goto LABEL_95;
            }

            if (v7 != 2)
            {
              goto LABEL_43;
            }

LABEL_81:
            *(this + 24) |= 8u;
            v27 = *(this + 3);
            if (!v27)
            {
              operator new();
            }

            v82 = 0;
            v28 = *(a2 + 1);
            if (v28 >= *(a2 + 2) || *v28 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
              {
                return 0;
              }
            }

            else
            {
              v82 = *v28;
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
            if (!CLP::LogEntry::PrivateData::GpsL5SyncState::MergePartialFromCodedStream(v27, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v31 = *(a2 + 14);
            v17 = __OFSUB__(v31, 1);
            v32 = v31 - 1;
            if (v32 < 0 == v17)
            {
              *(a2 + 14) = v32;
            }

            v33 = *(a2 + 1);
            if (v33 < *(a2 + 2) && *v33 == 42)
            {
              *(a2 + 1) = v33 + 1;
LABEL_95:
              *(this + 24) |= 0x10u;
              v34 = *(this + 4);
              if (!v34)
              {
                operator new();
              }

              v82 = 0;
              v35 = *(a2 + 1);
              if (v35 >= *(a2 + 2) || *v35 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
                {
                  return 0;
                }
              }

              else
              {
                v82 = *v35;
                *(a2 + 1) = v35 + 1;
              }

              v36 = *(a2 + 14);
              v37 = *(a2 + 15);
              *(a2 + 14) = v36 + 1;
              if (v36 >= v37)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergePartialFromCodedStream(v34, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v38 = *(a2 + 14);
              v17 = __OFSUB__(v38, 1);
              v39 = v38 - 1;
              if (v39 < 0 == v17)
              {
                *(a2 + 14) = v39;
              }

              v40 = *(a2 + 1);
              if (v40 < *(a2 + 2) && *v40 == 50)
              {
                *(a2 + 1) = v40 + 1;
LABEL_109:
                *(this + 24) |= 0x20u;
                v41 = *(this + 5);
                if (!v41)
                {
                  operator new();
                }

                v82 = 0;
                v42 = *(a2 + 1);
                if (v42 >= *(a2 + 2) || *v42 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
                  {
                    return 0;
                  }
                }

                else
                {
                  v82 = *v42;
                  *(a2 + 1) = v42 + 1;
                }

                v43 = *(a2 + 14);
                v44 = *(a2 + 15);
                *(a2 + 14) = v43 + 1;
                if (v43 >= v44)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                if (!CLP::LogEntry::PrivateData::BeidouB1SyncState::MergePartialFromCodedStream(v41, a2) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v45 = *(a2 + 14);
                v17 = __OFSUB__(v45, 1);
                v46 = v45 - 1;
                if (v46 < 0 == v17)
                {
                  *(a2 + 14) = v46;
                }

                v47 = *(a2 + 1);
                if (v47 < *(a2 + 2) && *v47 == 58)
                {
                  *(a2 + 1) = v47 + 1;
                  goto LABEL_123;
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
          if (v7 != 2)
          {
            goto LABEL_43;
          }

LABEL_151:
          *(this + 24) |= 0x100u;
          v62 = *(this + 8);
          if (!v62)
          {
            operator new();
          }

          v82 = 0;
          v63 = *(a2 + 1);
          if (v63 >= *(a2 + 2) || *v63 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
            {
              return 0;
            }
          }

          else
          {
            v82 = *v63;
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
          if (!CLP::LogEntry::PrivateData::GalileoE5SyncState::MergePartialFromCodedStream(v62, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v66 = *(a2 + 14);
          v17 = __OFSUB__(v66, 1);
          v67 = v66 - 1;
          if (v67 < 0 == v17)
          {
            *(a2 + 14) = v67;
          }

          v68 = *(a2 + 1);
          if (v68 < *(a2 + 2) && *v68 == 82)
          {
            *(a2 + 1) = v68 + 1;
LABEL_165:
            *(this + 24) |= 0x200u;
            v69 = *(this + 9);
            if (!v69)
            {
              operator new();
            }

            v82 = 0;
            v70 = *(a2 + 1);
            if (v70 >= *(a2 + 2) || *v70 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
              {
                return 0;
              }
            }

            else
            {
              v82 = *v70;
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
            if (!CLP::LogEntry::PrivateData::SbasL1SyncState::MergePartialFromCodedStream(v69, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v73 = *(a2 + 14);
            v17 = __OFSUB__(v73, 1);
            v74 = v73 - 1;
            if (v74 < 0 == v17)
            {
              *(a2 + 14) = v74;
            }

            v75 = *(a2 + 1);
            if (v75 < *(a2 + 2) && *v75 == 90)
            {
              *(a2 + 1) = v75 + 1;
              goto LABEL_179;
            }
          }
        }

        else
        {
          if (v6 == 10)
          {
            if (v7 == 2)
            {
              goto LABEL_165;
            }

            goto LABEL_43;
          }

          if (v6 != 11 || v7 != 2)
          {
            goto LABEL_43;
          }

LABEL_179:
          *(this + 24) |= 0x400u;
          v76 = *(this + 10);
          if (!v76)
          {
            operator new();
          }

          v82 = 0;
          v77 = *(a2 + 1);
          if (v77 >= *(a2 + 2) || *v77 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
            {
              return 0;
            }
          }

          else
          {
            v82 = *v77;
            *(a2 + 1) = v77 + 1;
          }

          v78 = *(a2 + 14);
          v79 = *(a2 + 15);
          *(a2 + 14) = v78 + 1;
          if (v78 >= v79)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLP::LogEntry::PrivateData::GpsL1SyncState::MergePartialFromCodedStream(v76, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v80 = *(a2 + 14);
          v17 = __OFSUB__(v80, 1);
          v81 = v80 - 1;
          if (v81 < 0 == v17)
          {
            *(a2 + 14) = v81;
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

      if (v6 == 6)
      {
        if (v7 != 2)
        {
          goto LABEL_43;
        }

        goto LABEL_109;
      }

      if (v6 != 7)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_43;
      }

LABEL_123:
      *(this + 24) |= 0x40u;
      v48 = *(this + 6);
      if (!v48)
      {
        operator new();
      }

      v82 = 0;
      v49 = *(a2 + 1);
      if (v49 >= *(a2 + 2) || *v49 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
        {
          return 0;
        }
      }

      else
      {
        v82 = *v49;
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
      if (!CLP::LogEntry::PrivateData::BeidouB2SyncState::MergePartialFromCodedStream(v48, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v52 = *(a2 + 14);
      v17 = __OFSUB__(v52, 1);
      v53 = v52 - 1;
      if (v53 < 0 == v17)
      {
        *(a2 + 14) = v53;
      }

      v54 = *(a2 + 1);
      if (v54 < *(a2 + 2) && *v54 == 66)
      {
        *(a2 + 1) = v54 + 1;
LABEL_137:
        *(this + 24) |= 0x80u;
        v55 = *(this + 7);
        if (!v55)
        {
          operator new();
        }

        v82 = 0;
        v56 = *(a2 + 1);
        if (v56 >= *(a2 + 2) || *v56 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
          {
            return 0;
          }
        }

        else
        {
          v82 = *v56;
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
        if (!CLP::LogEntry::PrivateData::GalileoE1SyncState::MergePartialFromCodedStream(v55, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v59 = *(a2 + 14);
        v17 = __OFSUB__(v59, 1);
        v60 = v59 - 1;
        if (v60 < 0 == v17)
        {
          *(a2 + 14) = v60;
        }

        v61 = *(a2 + 1);
        if (v61 < *(a2 + 2) && *v61 == 74)
        {
          *(a2 + 1) = v61 + 1;
          goto LABEL_151;
        }
      }
    }

    if (v6 == 8 && v7 == 2)
    {
      goto LABEL_137;
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

uint64_t CLP::LogEntry::PrivateData::SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    v7 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 96);
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
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 96);
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
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 96);
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
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  v6 = *(v5 + 96);
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
  v11 = *(v5 + 40);
  if (!v11)
  {
    v11 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v11, a2, a4);
  v6 = *(v5 + 96);
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
  v12 = *(v5 + 48);
  if (!v12)
  {
    v12 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v12, a2, a4);
  v6 = *(v5 + 96);
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
  v13 = *(v5 + 56);
  if (!v13)
  {
    v13 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v13, a2, a4);
  v6 = *(v5 + 96);
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
  v14 = *(v5 + 64);
  if (!v14)
  {
    v14 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v14, a2, a4);
  v6 = *(v5 + 96);
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
  v15 = *(v5 + 72);
  if (!v15)
  {
    v15 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v15, a2, a4);
  if ((*(v5 + 96) & 0x400) != 0)
  {
LABEL_41:
    v16 = *(v5 + 80);
    if (!v16)
    {
      v16 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 80);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v16, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::SyncState::ByteSize(CLP::LogEntry::PrivateData::SyncState *this)
{
  v2 = *(this + 24);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_51;
  }

  if (v2)
  {
    v4 = *(this + 22);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 24);
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

  v5 = *(this + 1);
  if (!v5)
  {
    v5 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 8);
  }

  v6 = 2 * (*(v5 + 16) & 1) + (*(v5 + 16) & 2) + ((*(v5 + 16) >> 1) & 2) + ((*(v5 + 16) >> 2) & 2);
  if (!*(v5 + 16))
  {
    v6 = 0;
  }

  *(v5 + 12) = v6;
  v3 = (v3 + v6 + 2);
  v2 = *(this + 24);
LABEL_18:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 2);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 16);
    }

    v3 = v3 + CLP::LogEntry::PrivateData::GpsL2CSyncState::ByteSize(v7) + 2;
    v2 = *(this + 24);
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

  v8 = *(this + 3);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 24);
  }

  v9 = 2 * (*(v8 + 16) & 1) + (*(v8 + 16) & 2) + ((*(v8 + 16) >> 1) & 2) + ((*(v8 + 16) >> 2) & 2);
  if (!*(v8 + 16))
  {
    v9 = 0;
  }

  *(v8 + 12) = v9;
  v3 = (v3 + v9 + 2);
  v2 = *(this + 24);
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
  v10 = *(this + 4);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 32);
  }

  v3 = v3 + CLP::LogEntry::PrivateData::GlonassL1fSyncState::ByteSize(v10) + 2;
  v2 = *(this + 24);
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
  v11 = *(this + 5);
  if (!v11)
  {
    v11 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 40);
  }

  v12 = 2 * (*(v11 + 16) & 1) + (*(v11 + 16) & 2) + ((*(v11 + 16) >> 1) & 2) + ((*(v11 + 16) >> 2) & 2);
  if (!*(v11 + 16))
  {
    v12 = 0;
  }

  *(v11 + 12) = v12;
  v3 = (v3 + v12 + 2);
  v2 = *(this + 24);
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
  v13 = *(this + 6);
  if (!v13)
  {
    v13 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 48);
  }

  v14 = 2 * (*(v13 + 16) & 1) + (*(v13 + 16) & 2) + ((*(v13 + 16) >> 1) & 2) + ((*(v13 + 16) >> 2) & 2);
  if (!*(v13 + 16))
  {
    v14 = 0;
  }

  *(v13 + 12) = v14;
  v3 = (v3 + v14 + 2);
  v2 = *(this + 24);
  if ((v2 & 0x80) != 0)
  {
LABEL_46:
    v15 = *(this + 7);
    if (!v15)
    {
      v15 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 56);
    }

    v16 = 2 * (*(v15 + 16) & 1) + (*(v15 + 16) & 2) + ((*(v15 + 16) >> 1) & 2) + ((*(v15 + 16) >> 2) & 2);
    if (!*(v15 + 16))
    {
      v16 = 0;
    }

    *(v15 + 12) = v16;
    v3 = (v3 + v16 + 2);
    v2 = *(this + 24);
  }

LABEL_51:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_69;
  }

  if ((v2 & 0x100) != 0)
  {
    v17 = *(this + 8);
    if (!v17)
    {
      v17 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 64);
    }

    v3 = v3 + CLP::LogEntry::PrivateData::GalileoE5SyncState::ByteSize(v17) + 2;
    v2 = *(this + 24);
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

  v18 = *(this + 9);
  if (!v18)
  {
    v18 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 72);
  }

  v19 = 2 * (*(v18 + 16) & 1) + (*(v18 + 16) & 2) + ((*(v18 + 16) >> 1) & 2);
  if (!*(v18 + 16))
  {
    v19 = 0;
  }

  *(v18 + 12) = v19;
  v3 = (v3 + v19 + 2);
  if ((*(this + 24) & 0x400) != 0)
  {
LABEL_64:
    v20 = *(this + 10);
    if (!v20)
    {
      v20 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 80);
    }

    v21 = 2 * (*(v20 + 16) & 1) + (*(v20 + 16) & 2) + ((*(v20 + 16) >> 1) & 2) + ((*(v20 + 16) >> 2) & 2);
    if (!*(v20 + 16))
    {
      v21 = 0;
    }

    *(v20 + 12) = v21;
    v3 = (v3 + v21 + 2);
  }

LABEL_69:
  *(this + 23) = v3;
  return v3;
}

void CLP::LogEntry::PrivateData::SyncState::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SyncState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::SyncState::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::SyncState::CopyFrom(CLP::LogEntry::PrivateData::SyncState *this, const CLP::LogEntry::PrivateData::SyncState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::SyncState::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::SyncState::Swap(uint64_t this, CLP::LogEntry::PrivateData::SyncState *a2)
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

uint64_t CLP::LogEntry::PrivateData::SvTime::SharedCtor(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::SvTime *CLP::LogEntry::PrivateData::SvTime::SvTime(CLP::LogEntry::PrivateData::SvTime *this, const CLP::LogEntry::PrivateData::SvTime *a2)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_285860438;
  *(this + 24) = 0;
  CLP::LogEntry::PrivateData::SvTime::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::SvTime::MergeFrom(CLP::LogEntry::PrivateData::SvTime *this, const CLP::LogEntry::PrivateData::SvTime *a2)
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

void sub_24551E044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SvTime::~SvTime(CLP::LogEntry::PrivateData::SvTime *this)
{
  *this = &unk_285860438;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860438;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860438;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::SvTime::default_instance(CLP::LogEntry::PrivateData::SvTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SvTime::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvTime::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SvTime::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SvTime::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::SvTime::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SvTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        v15[0] = 0;
        if (v11 >= v9 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v15);
          if (!result)
          {
            return result;
          }

          v12 = v15[0];
          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 24) = v12 != 0;
        *(this + 8) |= 4u;
        if (v13 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

      *v15 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v15) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v15;
      *(this + 8) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 17)
      {
        *(a2 + 1) = v8 + 1;
LABEL_15:
        *v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v15) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v15;
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

uint64_t CLP::LogEntry::PrivateData::SvTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CLP::LogEntry::PrivateData::SvTime::ByteSize(CLP::LogEntry::PrivateData::SvTime *this)
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

double CLP::LogEntry::PrivateData::SvTime::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SvTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::SvTime::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::SvTime::CopyFrom(CLP::LogEntry::PrivateData::SvTime *this, const CLP::LogEntry::PrivateData::SvTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::SvTime::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::SvTime::Swap(CLP::LogEntry::PrivateData::SvTime *this, CLP::LogEntry::PrivateData::SvTime *a2)
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

uint64_t CLP::LogEntry::PrivateData::FrequencyOffset::SharedCtor(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::FrequencyOffset *CLP::LogEntry::PrivateData::FrequencyOffset::FrequencyOffset(CLP::LogEntry::PrivateData::FrequencyOffset *this, const CLP::LogEntry::PrivateData::FrequencyOffset *a2)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2858604B0;
  *(this + 24) = 0;
  CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(CLP::LogEntry::PrivateData::FrequencyOffset *this, const CLP::LogEntry::PrivateData::FrequencyOffset *a2)
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

void sub_24551E738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::FrequencyOffset::~FrequencyOffset(CLP::LogEntry::PrivateData::FrequencyOffset *this)
{
  *this = &unk_2858604B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858604B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858604B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::FrequencyOffset::default_instance(CLP::LogEntry::PrivateData::FrequencyOffset *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_;
  if (!CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::FrequencyOffset::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::FrequencyOffset::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::FrequencyOffset *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        v15[0] = 0;
        if (v11 >= v9 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v15);
          if (!result)
          {
            return result;
          }

          v12 = v15[0];
          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 24) = v12 != 0;
        *(this + 8) |= 4u;
        if (v13 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

      *v15 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v15) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v15;
      *(this + 8) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 17)
      {
        *(a2 + 1) = v8 + 1;
LABEL_15:
        *v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v15) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v15;
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

uint64_t CLP::LogEntry::PrivateData::FrequencyOffset::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CLP::LogEntry::PrivateData::FrequencyOffset::ByteSize(CLP::LogEntry::PrivateData::FrequencyOffset *this)
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

double CLP::LogEntry::PrivateData::FrequencyOffset::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::FrequencyOffset *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::FrequencyOffset::CopyFrom(CLP::LogEntry::PrivateData::FrequencyOffset *this, const CLP::LogEntry::PrivateData::FrequencyOffset *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::FrequencyOffset::Swap(CLP::LogEntry::PrivateData::FrequencyOffset *this, CLP::LogEntry::PrivateData::FrequencyOffset *a2)
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

uint64_t CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::SharedCtor(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::FrequencyOffsetFromPhaseTracking(CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this, const CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *a2)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_285860528;
  *(this + 12) = 0;
  CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergeFrom(CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this, const CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *a2)
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

void sub_24551EE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::~FrequencyOffsetFromPhaseTracking(CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this)
{
  *this = &unk_285860528;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860528;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860528;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance(CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_;
  if (!CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::ByteSize(CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this)
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

void CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::CopyFrom(CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this, const CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergeFrom(this, a2);
  }
}

double CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::Swap(CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *this, CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking *a2)
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

double CLP::LogEntry::PrivateData::PhaseTracking::SharedCtor(CLP::LogEntry::PrivateData::PhaseTracking *this)
{
  *(this + 11) = 0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  return result;
}

CLP::LogEntry::PrivateData::PhaseTracking *CLP::LogEntry::PrivateData::PhaseTracking::PhaseTracking(CLP::LogEntry::PrivateData::PhaseTracking *this, const CLP::LogEntry::PrivateData::PhaseTracking *a2)
{
  *this = &unk_2858605A0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  CLP::LogEntry::PrivateData::PhaseTracking::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::PhaseTracking::MergeFrom(CLP::LogEntry::PrivateData::PhaseTracking *this, const CLP::LogEntry::PrivateData::PhaseTracking *a2)
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

void sub_24551F658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::PhaseTracking::~PhaseTracking(CLP::LogEntry::PrivateData::PhaseTracking *this)
{
  *this = &unk_2858605A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858605A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858605A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::PhaseTracking::default_instance(CLP::LogEntry::PrivateData::PhaseTracking *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::PhaseTracking::default_instance_;
  if (!CLP::LogEntry::PrivateData::PhaseTracking::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::PhaseTracking::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::PhaseTracking::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::PhaseTracking::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::PhaseTracking *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (v6 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v12 >= v10 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 12) |= 1u;
        if (v14 < v10 && *v14 == 16)
        {
          v11 = v14 + 1;
          *(a2 + 1) = v11;
LABEL_32:
          if (v11 >= v10 || (v16 = *v11, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v11 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 12) |= 2u;
          if (v17 < v10 && *v17 == 25)
          {
            *(a2 + 1) = v17 + 1;
LABEL_40:
            *v22 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v22) & 1) == 0)
            {
              return 0;
            }

            *(this + 3) = *v22;
            *(this + 12) |= 4u;
            v18 = *(a2 + 1);
            if (v18 < *(a2 + 2) && *v18 == 33)
            {
              *(a2 + 1) = v18 + 1;
              goto LABEL_44;
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

        goto LABEL_40;
      }

      if (v6 != 4)
      {
        break;
      }

      if (v7 != 1)
      {
        goto LABEL_21;
      }

LABEL_44:
      *v22 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v22) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = *v22;
      *(this + 12) |= 8u;
      v19 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v19 < v8 && *v19 == 40)
      {
        v9 = v19 + 1;
        *(a2 + 1) = v9;
LABEL_48:
        v22[0] = 0;
        if (v9 >= v8 || (v20 = *v9, (v20 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v22);
          if (!result)
          {
            return result;
          }

          v20 = v22[0];
          v21 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v21 = v9 + 1;
          *(a2 + 1) = v21;
        }

        *(this + 40) = v20 != 0;
        *(this + 12) |= 0x10u;
        if (v21 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_48;
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

uint64_t CLP::LogEntry::PrivateData::PhaseTracking::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CLP::LogEntry::PrivateData::PhaseTracking::ByteSize(CLP::LogEntry::PrivateData::PhaseTracking *this)
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

double CLP::LogEntry::PrivateData::PhaseTracking::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::PhaseTracking *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::PhaseTracking::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::PhaseTracking::CopyFrom(CLP::LogEntry::PrivateData::PhaseTracking *this, const CLP::LogEntry::PrivateData::PhaseTracking *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::PhaseTracking::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::PhaseTracking::Swap(CLP::LogEntry::PrivateData::PhaseTracking *this, CLP::LogEntry::PrivateData::PhaseTracking *a2)
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

uint64_t CLP::LogEntry::PrivateData::SignalCorrelationPeak::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::SignalCorrelationPeak *CLP::LogEntry::PrivateData::SignalCorrelationPeak::SignalCorrelationPeak(CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, const CLP::LogEntry::PrivateData::SignalCorrelationPeak *a2)
{
  *this = &unk_285860618;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergeFrom(CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, const CLP::LogEntry::PrivateData::SignalCorrelationPeak *a2)
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
        v7 = *(CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 8);
      }

      result = CLP::LogEntry::PrivateData::SvTime::MergeFrom(v6, v7);
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
      v9 = *(CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 16);
    }

    result = CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(v8, v9);
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

void sub_24551FFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SignalCorrelationPeak::~SignalCorrelationPeak(CLP::LogEntry::PrivateData::SignalCorrelationPeak *this)
{
  *this = &unk_285860618;
  CLP::LogEntry::PrivateData::SignalCorrelationPeak::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860618;
  CLP::LogEntry::PrivateData::SignalCorrelationPeak::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860618;
  CLP::LogEntry::PrivateData::SignalCorrelationPeak::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::SignalCorrelationPeak::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ != this)
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

uint64_t CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance(CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_;
  if (!CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SignalCorrelationPeak::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (v7 == 5)
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

      *(this + 8) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v25 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25))
        {
          return 0;
        }
      }

      else
      {
        v25 = *v9;
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
      if (!CLP::LogEntry::PrivateData::SvTime::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
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
        *(this + 8) |= 2u;
        v16 = *(this + 2);
        if (!v16)
        {
          operator new();
        }

        v26 = 0;
        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26))
          {
            return 0;
          }
        }

        else
        {
          v26 = *v17;
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
        if (!CLP::LogEntry::PrivateData::FrequencyOffset::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
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
        if (v22 < *(a2 + 2) && *v22 == 29)
        {
          *(a2 + 1) = v22 + 1;
LABEL_44:
          v24 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v24) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v24;
          *(this + 8) |= 4u;
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

uint64_t CLP::LogEntry::PrivateData::SignalCorrelationPeak::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 8);
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
    v8 = *(CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 16);
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

uint64_t CLP::LogEntry::PrivateData::SignalCorrelationPeak::ByteSize(CLP::LogEntry::PrivateData::SignalCorrelationPeak *this)
{
  LOBYTE(v1) = *(this + 32);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_25;
  }

  if (*(this + 32))
  {
    v2 = *(this + 1);
    if (!v2)
    {
      v2 = *(CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 8);
    }

    v3 = *(v2 + 32);
    v4 = ((v3 << 31) >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    v5 = v4 + ((v3 >> 1) & 2);
    if (*(v2 + 32))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    *(v2 + 28) = v6;
    LODWORD(v2) = v6 + 2;
    v1 = *(this + 8);
    if ((v1 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  LODWORD(v2) = 0;
  if ((*(this + 32) & 2) != 0)
  {
LABEL_14:
    v7 = *(this + 2);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 16);
    }

    v8 = *(v7 + 32);
    v9 = ((v8 << 31) >> 31) & 9;
    if ((v8 & 2) != 0)
    {
      v9 += 9;
    }

    v10 = v9 + ((v8 >> 1) & 2);
    if (*(v7 + 32))
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    *(v7 + 28) = v11;
    LODWORD(v2) = v2 + v11 + 2;
    v1 = *(this + 8);
  }

LABEL_22:
  if ((v1 & 4) != 0)
  {
    v2 = (v2 + 5);
  }

  else
  {
    v2 = v2;
  }

LABEL_25:
  *(this + 7) = v2;
  return v2;
}

double CLP::LogEntry::PrivateData::SignalCorrelationPeak::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::SignalCorrelationPeak::CopyFrom(CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, const CLP::LogEntry::PrivateData::SignalCorrelationPeak *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergeFrom(this, a2);
  }

  return result;
}

float CLP::LogEntry::PrivateData::SignalCorrelationPeak::Swap(CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, CLP::LogEntry::PrivateData::SignalCorrelationPeak *a2)
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

uint64_t CLP::LogEntry::PrivateData::FullSvTime::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::FullSvTime *CLP::LogEntry::PrivateData::FullSvTime::FullSvTime(CLP::LogEntry::PrivateData::FullSvTime *this, const CLP::LogEntry::PrivateData::FullSvTime *a2)
{
  *this = &unk_285860690;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CLP::LogEntry::PrivateData::FullSvTime::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::FullSvTime::MergeFrom(CLP::LogEntry::PrivateData::FullSvTime *this, const CLP::LogEntry::PrivateData::FullSvTime *a2)
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
          __assert_rtn("set_full_sv_time_source", "CLPGnssMeasApi.pb.h", 8876, "::CLP::LogEntry::PrivateData::FullSvTimeSource_IsValid(value)");
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

void sub_245520A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::FullSvTime::~FullSvTime(CLP::LogEntry::PrivateData::FullSvTime *this)
{
  *this = &unk_285860690;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860690;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860690;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::FullSvTime::default_instance(CLP::LogEntry::PrivateData::FullSvTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::FullSvTime::default_instance_;
  if (!CLP::LogEntry::PrivateData::FullSvTime::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::FullSvTime::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::FullSvTime::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::FullSvTime::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::FullSvTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CLP::LogEntry::PrivateData::FullSvTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CLP::LogEntry::PrivateData::FullSvTime::ByteSize(CLP::LogEntry::PrivateData::FullSvTime *this)
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

void CLP::LogEntry::PrivateData::FullSvTime::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::FullSvTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::FullSvTime::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::FullSvTime::CopyFrom(CLP::LogEntry::PrivateData::FullSvTime *this, const CLP::LogEntry::PrivateData::FullSvTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::FullSvTime::MergeFrom(this, a2);
  }
}

double CLP::LogEntry::PrivateData::FullSvTime::Swap(CLP::LogEntry::PrivateData::FullSvTime *this, CLP::LogEntry::PrivateData::FullSvTime *a2)
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

uint64_t CLP::LogEntry::PrivateData::SvMeasurementUsage::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::SvMeasurementUsage *CLP::LogEntry::PrivateData::SvMeasurementUsage::SvMeasurementUsage(CLP::LogEntry::PrivateData::SvMeasurementUsage *this, const CLP::LogEntry::PrivateData::SvMeasurementUsage *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_285860708;
  *(this + 6) = 0;
  CLP::LogEntry::PrivateData::SvMeasurementUsage::MergeFrom(this, a2);
  return this;
}

float CLP::LogEntry::PrivateData::SvMeasurementUsage::MergeFrom(CLP::LogEntry::PrivateData::SvMeasurementUsage *this, const CLP::LogEntry::PrivateData::SvMeasurementUsage *a2)
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

void sub_245521168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SvMeasurementUsage::~SvMeasurementUsage(CLP::LogEntry::PrivateData::SvMeasurementUsage *this)
{
  *this = &unk_285860708;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860708;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860708;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance(CLP::LogEntry::PrivateData::SvMeasurementUsage *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SvMeasurementUsage::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvMeasurementUsage::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SvMeasurementUsage *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CLP::LogEntry::PrivateData::SvMeasurementUsage::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t CLP::LogEntry::PrivateData::SvMeasurementUsage::ByteSize(CLP::LogEntry::PrivateData::SvMeasurementUsage *this)
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

float CLP::LogEntry::PrivateData::SvMeasurementUsage::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SvMeasurementUsage *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::SvMeasurementUsage::MergeFrom(this, lpsrc);
}

float CLP::LogEntry::PrivateData::SvMeasurementUsage::CopyFrom(CLP::LogEntry::PrivateData::SvMeasurementUsage *this, const CLP::LogEntry::PrivateData::SvMeasurementUsage *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::SvMeasurementUsage::MergeFrom(this, a2);
  }

  return result;
}

float CLP::LogEntry::PrivateData::SvMeasurementUsage::Swap(CLP::LogEntry::PrivateData::SvMeasurementUsage *this, CLP::LogEntry::PrivateData::SvMeasurementUsage *a2)
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

double CLP::LogEntry::PrivateData::MeasurementExtension::SharedCtor(CLP::LogEntry::PrivateData::MeasurementExtension *this)
{
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v2 = MEMORY[0x277D82C30];
  *(this + 9) = 0;
  *(this + 10) = v2;
  *(this + 14) = 0;
  return result;
}

CLP::LogEntry::PrivateData::MeasurementExtension *CLP::LogEntry::PrivateData::MeasurementExtension::MeasurementExtension(CLP::LogEntry::PrivateData::MeasurementExtension *this, const CLP::LogEntry::PrivateData::MeasurementExtension *a2)
{
  *this = &unk_285860780;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  v3 = MEMORY[0x277D82C30];
  *(this + 9) = 0;
  *(this + 10) = v3;
  *(this + 14) = 0;
  CLP::LogEntry::PrivateData::MeasurementExtension::MergeFrom(this, a2);
  return this;
}

void sub_2455217B0(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::MeasurementExtension::MergeFrom(CLP::LogEntry::PrivateData::MeasurementExtension *this, const CLP::LogEntry::PrivateData::MeasurementExtension *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v33);
  }

  v4 = *(this + 24);
  v5 = *(a2 + 24);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88));
  LODWORD(v6) = *(a2 + 24);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v33);
      }

      v8 = *(*(a2 + 11) + 8 * v7);
      v9 = *(this + 25);
      v10 = *(this + 24);
      if (v10 >= v9)
      {
        if (v9 == *(this + 26))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88));
          v9 = *(this + 25);
        }

        *(this + 25) = v9 + 1;
        operator new();
      }

      v11 = *(this + 11);
      *(this + 24) = v10 + 1;
      CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 24);
    }

    while (v7 < v6);
  }

  v12 = *(a2 + 29);
  if (!v12)
  {
    goto LABEL_23;
  }

  if (v12)
  {
    v17 = *(a2 + 2);
    *(this + 29) |= 1u;
    *(this + 2) = v17;
    v12 = *(a2 + 29);
    if ((v12 & 2) == 0)
    {
LABEL_16:
      if ((v12 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_39;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_16;
  }

  v18 = *(a2 + 3);
  *(this + 29) |= 2u;
  *(this + 3) = v18;
  v12 = *(a2 + 29);
  if ((v12 & 4) == 0)
  {
LABEL_17:
    if ((v12 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_39:
  *(this + 29) |= 4u;
  v19 = *(this + 2);
  if (!v19)
  {
    operator new();
  }

  v20 = *(a2 + 2);
  if (!v20)
  {
    v20 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 16);
  }

  CLP::LogEntry::PrivateData::FullSvTime::MergeFrom(v19, v20);
  v12 = *(a2 + 29);
  if ((v12 & 8) == 0)
  {
LABEL_18:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_44:
  *(this + 29) |= 8u;
  v21 = *(this + 3);
  if (!v21)
  {
    operator new();
  }

  v22 = *(a2 + 3);
  if (!v22)
  {
    v22 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 24);
  }

  CLP::LogEntry::PrivateData::SvMeasurementUsage::MergeFrom(v21, v22);
  v12 = *(a2 + 29);
  if ((v12 & 0x10) == 0)
  {
LABEL_19:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_54:
    *(this + 29) |= 0x20u;
    v25 = *(this + 5);
    if (!v25)
    {
      operator new();
    }

    v26 = *(a2 + 5);
    if (!v26)
    {
      v26 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 40);
    }

    CLP::LogEntry::PrivateData::SvMeasurementUsage::MergeFrom(v25, v26);
    v12 = *(a2 + 29);
    if ((v12 & 0x40) == 0)
    {
LABEL_21:
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_49:
  *(this + 29) |= 0x10u;
  v23 = *(this + 4);
  if (!v23)
  {
    operator new();
  }

  v24 = *(a2 + 4);
  if (!v24)
  {
    v24 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 32);
  }

  CLP::LogEntry::PrivateData::SvMeasurementUsage::MergeFrom(v23, v24);
  v12 = *(a2 + 29);
  if ((v12 & 0x20) != 0)
  {
    goto LABEL_54;
  }

LABEL_20:
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_59:
  v27 = *(a2 + 12);
  *(this + 29) |= 0x40u;
  *(this + 12) = v27;
  v12 = *(a2 + 29);
  if ((v12 & 0x80) != 0)
  {
LABEL_22:
    v13 = *(a2 + 13);
    *(this + 29) |= 0x80u;
    *(this + 13) = v13;
    v12 = *(a2 + 29);
  }

LABEL_23:
  if ((v12 & 0xFF00) == 0)
  {
    return;
  }

  if ((v12 & 0x100) != 0)
  {
    v14 = *(a2 + 14);
    if (v14 >= 7)
    {
      __assert_rtn("set_sv_time_detection_method", "CLPGnssMeasApi.pb.h", 9229, "::CLP::LogEntry::PrivateData::MeasurementDetectionMethod_IsValid(value)");
    }

    *(this + 29) |= 0x100u;
    *(this + 14) = v14;
    v12 = *(a2 + 29);
  }

  if ((v12 & 0x200) != 0)
  {
    v15 = *(a2 + 15);
    if (v15 >= 7)
    {
      __assert_rtn("set_frequency_detection_method", "CLPGnssMeasApi.pb.h", 9252, "::CLP::LogEntry::PrivateData::MeasurementDetectionMethod_IsValid(value)");
    }

    *(this + 29) |= 0x200u;
    *(this + 15) = v15;
    v12 = *(a2 + 29);
  }

  if ((v12 & 0x400) != 0)
  {
    v28 = *(a2 + 16);
    *(this + 29) |= 0x400u;
    *(this + 16) = v28;
    v12 = *(a2 + 29);
    if ((v12 & 0x800) == 0)
    {
LABEL_32:
      if ((v12 & 0x1000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_63;
    }
  }

  else if ((v12 & 0x800) == 0)
  {
    goto LABEL_32;
  }

  v29 = *(a2 + 17);
  *(this + 29) |= 0x800u;
  *(this + 17) = v29;
  v12 = *(a2 + 29);
  if ((v12 & 0x1000) == 0)
  {
LABEL_33:
    if ((v12 & 0x2000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  v30 = *(a2 + 18);
  *(this + 29) |= 0x1000u;
  *(this + 18) = v30;
  v12 = *(a2 + 29);
  if ((v12 & 0x2000) == 0)
  {
LABEL_34:
    if ((v12 & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_35;
  }

LABEL_64:
  v31 = *(a2 + 10);
  *(this + 29) |= 0x2000u;
  v32 = *(this + 10);
  if (v32 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v32, v31);
  if ((*(a2 + 29) & 0x4000) != 0)
  {
LABEL_35:
    v16 = *(a2 + 19);
    *(this + 29) |= 0x4000u;
    *(this + 19) = v16;
  }
}

void sub_245521D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::MeasurementExtension::~MeasurementExtension(CLP::LogEntry::PrivateData::MeasurementExtension *this)
{
  *this = &unk_285860780;
  v2 = (this + 88);
  CLP::LogEntry::PrivateData::MeasurementExtension::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::PrivateData::MeasurementExtension::~MeasurementExtension(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::MeasurementExtension::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[10];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x245D6AEE0](v2, 0x1012C40EC159624);
  }

  if (CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ != v1)
  {
    v4 = v1[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[3];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[4];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    this = v1[5];
    if (this)
    {
      v7 = *(*this + 8);

      return v7();
    }
  }

  return this;
}