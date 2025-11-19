uint64_t proto::gnss::Emergency::GanssDataBitAssist::MergePartialFromCodedStream(proto::gnss::Emergency::GanssDataBitAssist *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_28;
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

        *(this + 12) |= 1u;
        if (v13 < v8 && *v13 == 16)
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
          goto LABEL_38;
        }
      }

      else if (v6 == 2)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_28;
        }

        v15 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_38:
        if (v15 >= v8 || (v18 = *v15, v18 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v19 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v18;
          v19 = v15 + 1;
          *(a2 + 1) = v19;
        }

        *(this + 12) |= 2u;
        if (v19 < v8 && *v19 == 24)
        {
          v9 = v19 + 1;
          *(a2 + 1) = v9;
LABEL_46:
          if (v9 >= v8 || (v20 = *v9, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v21 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v20;
            v21 = v9 + 1;
            *(a2 + 1) = v21;
          }

          *(this + 12) |= 4u;
          if (v21 < v8 && *v21 == 32)
          {
            v14 = v21 + 1;
            *(a2 + 1) = v14;
LABEL_54:
            if (v14 >= v8 || (v22 = *v14, v22 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v23 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v22;
              v23 = v14 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 12) |= 8u;
            if (v23 < v8 && *v23 == 40)
            {
              v16 = v23 + 1;
              *(a2 + 1) = v16;
LABEL_62:
              if (v16 >= v8 || (v24 = *v16, v24 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
                if (!result)
                {
                  return result;
                }

                v25 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 10) = v24;
                v25 = v16 + 1;
                *(a2 + 1) = v25;
              }

              *(this + 12) |= 0x10u;
              if (v25 < v8 && *v25 == 48)
              {
                goto LABEL_69;
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
          goto LABEL_46;
        }

LABEL_28:
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
        goto LABEL_54;
      }

      goto LABEL_28;
    }

    if (v6 == 5)
    {
      if ((TagFallback & 7) == 0)
      {
        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_62;
      }

      goto LABEL_28;
    }

    if (v6 != 6)
    {
      goto LABEL_28;
    }

    if ((TagFallback & 7) == 0)
    {
      v17 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_70;
    }

    if (v7 != 2)
    {
      goto LABEL_28;
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 24);
    if (!result)
    {
      return result;
    }

LABEL_87:
    v25 = *(a2 + 1);
    v8 = *(a2 + 2);
    if (v25 < v8 && *v25 == 48)
    {
      break;
    }

    if (v25 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }

LABEL_69:
  v17 = v25 + 1;
  *(a2 + 1) = v17;
LABEL_70:
  v36 = 0;
  if (v17 < v8 && (*v17 & 0x80000000) == 0)
  {
    v36 = *v17;
    *(a2 + 1) = v17 + 1;
    goto LABEL_74;
  }

  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
  {
LABEL_74:
    v26 = *(this + 8);
    if (v26 == *(this + 9))
    {
      wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 3, v26 + 1);
      v26 = *(this + 8);
    }

    v27 = v36;
    v28 = *(this + 3);
    *(this + 8) = v26 + 1;
    *(v28 + 4 * v26) = v27;
    v29 = *(this + 9) - *(this + 8);
    if (v29 >= 1)
    {
      v30 = v29 + 1;
      do
      {
        v31 = *(a2 + 1);
        v32 = *(a2 + 2);
        if (v31 >= v32 || *v31 != 48)
        {
          break;
        }

        *(a2 + 1) = v31 + 1;
        if ((v31 + 1) >= v32 || v31[1] < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
          {
            return 0;
          }
        }

        else
        {
          v36 = v31[1];
          *(a2 + 1) = v31 + 2;
        }

        v33 = *(this + 8);
        if (v33 >= *(this + 9))
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v37);
          v33 = *(this + 8);
        }

        v34 = v36;
        v35 = *(this + 3);
        *(this + 8) = v33 + 1;
        *(v35 + 4 * v33) = v34;
        --v30;
      }

      while (v30 > 1);
    }

    goto LABEL_87;
  }

  return 0;
}

void sub_2454F8458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t proto::gnss::Emergency::GanssDataBitAssist::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 48);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 48);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  if ((*(v5 + 48) & 0x10) != 0)
  {
LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 40), a2, a4);
  }

LABEL_7:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 24) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  return this;
}

uint64_t proto::gnss::Emergency::GanssDataBitAssist::ByteSize(proto::gnss::Emergency::GanssDataBitAssist *this)
{
  LOBYTE(v2) = *(this + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_30;
  }

  if (*(this + 48))
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 12);
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
    if ((*(this + 48) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 3);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 12);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 4);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(this + 12);
    }

    else
    {
      v8 = 2;
    }

    v3 += v8;
    if ((v2 & 8) == 0)
    {
LABEL_16:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
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
    v2 = *(this + 12);
  }

  else
  {
    v10 = 2;
  }

  v3 += v10;
  if ((v2 & 0x10) != 0)
  {
LABEL_26:
    v11 = *(this + 10);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    }

    else
    {
      v12 = 2;
    }

    v3 += v12;
  }

LABEL_30:
  v13 = *(this + 8);
  if (v13 < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(*(this + 3) + 4 * v14);
      if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
        v13 = *(this + 8);
      }

      else
      {
        v17 = 1;
      }

      v15 += v17;
      ++v14;
    }

    while (v14 < v13);
  }

  result = (v15 + v3 + v13);
  *(this + 11) = result;
  return result;
}

void proto::gnss::Emergency::GanssDataBitAssist::CheckTypeAndMergeFrom(proto::gnss::Emergency::GanssDataBitAssist *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GanssDataBitAssist::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GanssDataBitAssist::CopyFrom(proto::gnss::Emergency::GanssDataBitAssist *this, const proto::gnss::Emergency::GanssDataBitAssist *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GanssDataBitAssist::MergeFrom(this, a2);
  }
}

double proto::gnss::Emergency::GanssDataBitAssist::Swap(proto::gnss::Emergency::GanssDataBitAssist *this, proto::gnss::Emergency::GanssDataBitAssist *a2)
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
    v6 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
    v7 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    result = *(a2 + 4);
    *(a2 + 3) = v7;
    v9 = *(this + 4);
    *(this + 4) = result;
    *(a2 + 4) = v9;
    LODWORD(v7) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v7;
    LODWORD(v7) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v7;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssStoredSatDataElem::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::Emergency::GanssStoredSatDataElem *proto::gnss::Emergency::GanssStoredSatDataElem::GanssStoredSatDataElem(proto::gnss::Emergency::GanssStoredSatDataElem *this, const proto::gnss::Emergency::GanssStoredSatDataElem *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28585E548;
  proto::gnss::Emergency::GanssStoredSatDataElem::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GanssStoredSatDataElem::MergeFrom(proto::gnss::Emergency::GanssStoredSatDataElem *this, const proto::gnss::Emergency::GanssStoredSatDataElem *a2)
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

void sub_2454F89C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssStoredSatDataElem::~GanssStoredSatDataElem(proto::gnss::Emergency::GanssStoredSatDataElem *this)
{
  *this = &unk_28585E548;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585E548;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585E548;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::GanssStoredSatDataElem::default_instance(proto::gnss::Emergency::GanssStoredSatDataElem *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GanssStoredSatDataElem::default_instance_;
  if (!proto::gnss::Emergency::GanssStoredSatDataElem::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GanssStoredSatDataElem::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssStoredSatDataElem::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GanssStoredSatDataElem::MergePartialFromCodedStream(proto::gnss::Emergency::GanssStoredSatDataElem *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t proto::gnss::Emergency::GanssStoredSatDataElem::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gnss::Emergency::GanssStoredSatDataElem::ByteSize(proto::gnss::Emergency::GanssStoredSatDataElem *this)
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

void proto::gnss::Emergency::GanssStoredSatDataElem::CheckTypeAndMergeFrom(proto::gnss::Emergency::GanssStoredSatDataElem *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GanssStoredSatDataElem::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GanssStoredSatDataElem::CopyFrom(proto::gnss::Emergency::GanssStoredSatDataElem *this, const proto::gnss::Emergency::GanssStoredSatDataElem *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GanssStoredSatDataElem::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GanssStoredSatDataElem *proto::gnss::Emergency::GanssStoredSatDataElem::Swap(proto::gnss::Emergency::GanssStoredSatDataElem *this, proto::gnss::Emergency::GanssStoredSatDataElem *a2)
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

void *proto::gnss::Emergency::GanssNavModelAddData::SharedCtor(void *this)
{
  this[6] = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

proto::gnss::Emergency::GanssNavModelAddData *proto::gnss::Emergency::GanssNavModelAddData::GanssNavModelAddData(proto::gnss::Emergency::GanssNavModelAddData *this, const proto::gnss::Emergency::GanssNavModelAddData *a2)
{
  *this = &unk_28585E5C0;
  *(this + 6) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  proto::gnss::Emergency::GanssNavModelAddData::MergeFrom(this, a2);
  return this;
}

void sub_2454F8F90(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v1 + 3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssNavModelAddData::MergeFrom(proto::gnss::Emergency::GanssNavModelAddData *this, const proto::gnss::Emergency::GanssNavModelAddData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
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
      proto::gnss::Emergency::GanssStoredSatDataElem::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 8);
    }

    while (v7 < v6);
  }

  LOBYTE(v12) = *(a2 + 52);
  if (v12)
  {
    if (*(a2 + 52))
    {
      v14 = *(a2 + 2);
      *(this + 13) |= 1u;
      *(this + 2) = v14;
      v12 = *(a2 + 13);
      if ((v12 & 2) == 0)
      {
LABEL_16:
        if ((v12 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_22;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_16;
    }

    v15 = *(a2 + 3);
    *(this + 13) |= 2u;
    *(this + 3) = v15;
    v12 = *(a2 + 13);
    if ((v12 & 4) == 0)
    {
LABEL_17:
      if ((v12 & 8) == 0)
      {
        return;
      }

      goto LABEL_18;
    }

LABEL_22:
    v16 = *(a2 + 4);
    *(this + 13) |= 4u;
    *(this + 4) = v16;
    if ((*(a2 + 13) & 8) == 0)
    {
      return;
    }

LABEL_18:
    v13 = *(a2 + 5);
    *(this + 13) |= 8u;
    *(this + 5) = v13;
  }
}

void sub_2454F91E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssNavModelAddData::~GanssNavModelAddData(proto::gnss::Emergency::GanssNavModelAddData *this)
{
  *this = &unk_28585E5C0;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::GanssNavModelAddData::~GanssNavModelAddData(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::GanssNavModelAddData::default_instance(proto::gnss::Emergency::GanssNavModelAddData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GanssNavModelAddData::default_instance_;
  if (!proto::gnss::Emergency::GanssNavModelAddData::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GanssNavModelAddData::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssNavModelAddData::Clear(proto::gnss::Emergency::GanssNavModelAddData *this)
{
  if (*(this + 52))
  {
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 24);
  *(this + 13) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::GanssNavModelAddData::MergePartialFromCodedStream(proto::gnss::Emergency::GanssNavModelAddData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_40;
        }

        if (v6 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
LABEL_48:
          if (v11 >= v8 || (v20 = *v11, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v21 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v20;
            v21 = v11 + 1;
            *(a2 + 1) = v21;
          }

          *(this + 13) |= 8u;
          if (v21 < v8 && *v21 == 42)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v6 != 5 || v7 != 2)
          {
            goto LABEL_21;
          }

          while (1)
          {
            v22 = *(this + 9);
            v23 = *(this + 8);
            if (v23 >= v22)
            {
              if (v22 == *(this + 10))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
                v22 = *(this + 9);
              }

              *(this + 9) = v22 + 1;
              operator new();
            }

            v24 = *(this + 3);
            *(this + 8) = v23 + 1;
            v25 = *(v24 + 8 * v23);
            v33 = 0;
            v26 = *(a2 + 1);
            if (v26 >= *(a2 + 2) || *v26 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33))
              {
                return 0;
              }
            }

            else
            {
              v33 = *v26;
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
            if (!proto::gnss::Emergency::GanssStoredSatDataElem::MergePartialFromCodedStream(v25, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v29 = *(a2 + 14);
            v30 = __OFSUB__(v29, 1);
            v31 = v29 - 1;
            if (v31 < 0 == v30)
            {
              *(a2 + 14) = v31;
            }

            v21 = *(a2 + 1);
            v32 = *(a2 + 2);
            if (v21 >= v32 || *v21 != 42)
            {
              break;
            }

LABEL_55:
            *(a2 + 1) = v21 + 1;
          }

          if (v21 == v32 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v12 >= v8 || (v13 = *v12, v13 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v13;
        v14 = v12 + 1;
        *(a2 + 1) = v14;
      }

      *(this + 13) |= 1u;
      if (v14 < v8 && *v14 == 16)
      {
        v9 = v14 + 1;
        *(a2 + 1) = v9;
LABEL_32:
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

        *(this + 13) |= 2u;
        if (v17 < v8 && *v17 == 24)
        {
          v10 = v17 + 1;
          *(a2 + 1) = v10;
LABEL_40:
          if (v10 >= v8 || (v18 = *v10, v18 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v19 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v18;
            v19 = v10 + 1;
            *(a2 + 1) = v19;
          }

          *(this + 13) |= 4u;
          if (v19 < v8 && *v19 == 32)
          {
            v11 = v19 + 1;
            *(a2 + 1) = v11;
            goto LABEL_48;
          }
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_32;
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

uint64_t proto::gnss::Emergency::GanssNavModelAddData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  if ((*(v5 + 52) & 8) != 0)
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

  return this;
}

uint64_t proto::gnss::Emergency::GanssNavModelAddData::ByteSize(proto::gnss::Emergency::GanssNavModelAddData *this)
{
  LOBYTE(v2) = *(this + 52);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_25;
  }

  if (*(this + 52))
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 13);
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
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 3);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_14:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v7 = *(this + 4);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v8 = 2;
  }

  v3 += v8;
  if ((v2 & 8) != 0)
  {
LABEL_21:
    v9 = *(this + 5);
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

LABEL_25:
  v11 = *(this + 8);
  v12 = (v11 + v3);
  if (v11 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = proto::gnss::Emergency::GanssStoredSatDataElem::ByteSize(*(*(this + 3) + 8 * v13));
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

    while (v13 < *(this + 8));
  }

  *(this + 12) = v12;
  return v12;
}

void proto::gnss::Emergency::GanssNavModelAddData::CheckTypeAndMergeFrom(proto::gnss::Emergency::GanssNavModelAddData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GanssNavModelAddData::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GanssNavModelAddData::CopyFrom(proto::gnss::Emergency::GanssNavModelAddData *this, const proto::gnss::Emergency::GanssNavModelAddData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GanssNavModelAddData::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GanssNavModelAddData *proto::gnss::Emergency::GanssNavModelAddData::Swap(proto::gnss::Emergency::GanssNavModelAddData *this, proto::gnss::Emergency::GanssNavModelAddData *a2)
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
    v8 = *(v3 + 13);
    *(v3 + 13) = *(a2 + 13);
    *(a2 + 13) = v8;
    v9 = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v9;
  }

  return this;
}

void *proto::gnss::Emergency::GanssAddAssistDataChoices::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gnss::Emergency::GanssAddAssistDataChoices *proto::gnss::Emergency::GanssAddAssistDataChoices::GanssAddAssistDataChoices(proto::gnss::Emergency::GanssAddAssistDataChoices *this, const proto::gnss::Emergency::GanssAddAssistDataChoices *a2)
{
  *this = &unk_28585E638;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gnss::Emergency::GanssAddAssistDataChoices::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GanssAddAssistDataChoices::MergeFrom(proto::gnss::Emergency::GanssAddAssistDataChoices *this, const proto::gnss::Emergency::GanssAddAssistDataChoices *a2)
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
      v6 = *(a2 + 2);
      *(this + 7) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 7);
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

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 7) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 7);
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
    v8 = *(a2 + 4);
    *(this + 7) |= 4u;
    *(this + 4) = v8;
    if ((*(a2 + 7) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 5);
    *(this + 7) |= 8u;
    *(this + 5) = v5;
  }
}

void sub_2454F9CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssAddAssistDataChoices::~GanssAddAssistDataChoices(proto::gnss::Emergency::GanssAddAssistDataChoices *this)
{
  *this = &unk_28585E638;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585E638;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585E638;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::GanssAddAssistDataChoices::default_instance(proto::gnss::Emergency::GanssAddAssistDataChoices *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GanssAddAssistDataChoices::default_instance_;
  if (!proto::gnss::Emergency::GanssAddAssistDataChoices::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GanssAddAssistDataChoices::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssAddAssistDataChoices::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GanssAddAssistDataChoices::MergePartialFromCodedStream(proto::gnss::Emergency::GanssAddAssistDataChoices *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v10 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v10 >= v7 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v11;
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 7) |= 1u;
      if (v12 < v7 && *v12 == 16)
      {
        v8 = v12 + 1;
        *(a2 + 1) = v8;
LABEL_29:
        if (v8 >= v7 || (v14 = *v8, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v14;
          v15 = v8 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 7) |= 2u;
        if (v15 < v7 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_37:
          if (v13 >= v7 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 7) |= 4u;
          if (v17 < v7 && *v17 == 32)
          {
            v9 = v17 + 1;
            *(a2 + 1) = v9;
LABEL_45:
            if (v9 >= v7 || (v18 = *v9, v18 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v18;
              v19 = v9 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 7) |= 8u;
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

unsigned int *proto::gnss::Emergency::GanssAddAssistDataChoices::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[7];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[7];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
      if ((v5[7] & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[7];
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
  v7 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::GanssAddAssistDataChoices::ByteSize(proto::gnss::Emergency::GanssAddAssistDataChoices *this)
{
  LOBYTE(v2) = *(this + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_25;
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v7 = *(this + 4);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v2 = *(this + 7);
  }

  else
  {
    v8 = 2;
  }

  v3 = (v8 + v3);
  if ((v2 & 8) != 0)
  {
LABEL_21:
    v9 = *(this + 5);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    }

    else
    {
      v10 = 2;
    }

    v3 = (v10 + v3);
  }

LABEL_25:
  *(this + 6) = v3;
  return v3;
}

void proto::gnss::Emergency::GanssAddAssistDataChoices::CheckTypeAndMergeFrom(proto::gnss::Emergency::GanssAddAssistDataChoices *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GanssAddAssistDataChoices::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GanssAddAssistDataChoices::CopyFrom(proto::gnss::Emergency::GanssAddAssistDataChoices *this, const proto::gnss::Emergency::GanssAddAssistDataChoices *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GanssAddAssistDataChoices::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GanssAddAssistDataChoices *proto::gnss::Emergency::GanssAddAssistDataChoices::Swap(proto::gnss::Emergency::GanssAddAssistDataChoices *this, proto::gnss::Emergency::GanssAddAssistDataChoices *a2)
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
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
  }

  return this;
}

double proto::gnss::Emergency::GanssAidRequestPerGanss::SharedCtor(proto::gnss::Emergency::GanssAidRequestPerGanss *this)
{
  *(this + 1) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return result;
}

proto::gnss::Emergency::GanssAidRequestPerGanss *proto::gnss::Emergency::GanssAidRequestPerGanss::GanssAidRequestPerGanss(proto::gnss::Emergency::GanssAidRequestPerGanss *this, const proto::gnss::Emergency::GanssAidRequestPerGanss *a2)
{
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *this = &unk_28585E6B0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  proto::gnss::Emergency::GanssAidRequestPerGanss::MergeFrom(this, a2);
  return this;
}

void sub_2454FA438(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssAidRequestPerGanss::MergeFrom(proto::gnss::Emergency::GanssAidRequestPerGanss *this, const proto::gnss::Emergency::GanssAidRequestPerGanss *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(this + 6);
  v5 = *(a2 + 6);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
  LODWORD(v6) = *(a2 + 6);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
      }

      v8 = *(*(a2 + 2) + 8 * v7);
      v9 = *(this + 7);
      v10 = *(this + 6);
      if (v10 >= v9)
      {
        if (v9 == *(this + 8))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
          v9 = *(this + 7);
        }

        *(this + 7) = v9 + 1;
        operator new();
      }

      v11 = *(this + 2);
      *(this + 6) = v10 + 1;
      proto::gnss::Emergency::GanssTimeModelElem::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 6);
    }

    while (v7 < v6);
  }

  LOBYTE(v12) = *(a2 + 72);
  if (!v12)
  {
    return;
  }

  if (*(a2 + 72))
  {
    v13 = *(a2 + 2);
    if (v13 >= 7)
    {
      __assert_rtn("set_ganss_id", "GnssEmergencyTypes.pb.h", 21956, "::proto::gnss::Emergency::LcsGanssId_IsValid(value)");
    }

    *(this + 18) |= 1u;
    *(this + 2) = v13;
    v12 = *(a2 + 18);
  }

  if ((v12 & 2) != 0)
  {
    v14 = *(a2 + 3);
    *(this + 18) |= 2u;
    *(this + 3) = v14;
    v12 = *(a2 + 18);
    if ((v12 & 4) == 0)
    {
LABEL_19:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_20;
      }

LABEL_25:
      *(this + 18) |= 0x10u;
      v16 = *(this + 5);
      if (!v16)
      {
        operator new();
      }

      v17 = *(a2 + 5);
      if (!v17)
      {
        v17 = *(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 40);
      }

      proto::gnss::Emergency::GanssDataBitAssist::MergeFrom(v16, v17);
      v12 = *(a2 + 18);
      if ((v12 & 0x20) == 0)
      {
LABEL_21:
        if ((v12 & 0x40) == 0)
        {
          return;
        }

        goto LABEL_35;
      }

      goto LABEL_30;
    }
  }

  else if ((v12 & 4) == 0)
  {
    goto LABEL_19;
  }

  v15 = *(a2 + 16);
  *(this + 18) |= 4u;
  *(this + 16) = v15;
  v12 = *(a2 + 18);
  if ((v12 & 0x10) != 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((v12 & 0x20) == 0)
  {
    goto LABEL_21;
  }

LABEL_30:
  *(this + 18) |= 0x20u;
  v18 = *(this + 6);
  if (!v18)
  {
    operator new();
  }

  v19 = *(a2 + 6);
  if (!v19)
  {
    v19 = *(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 48);
  }

  proto::gnss::Emergency::GanssNavModelAddData::MergeFrom(v18, v19);
  if ((*(a2 + 18) & 0x40) != 0)
  {
LABEL_35:
    *(this + 18) |= 0x40u;
    v20 = *(this + 7);
    if (!v20)
    {
      operator new();
    }

    v21 = *(a2 + 7);
    if (!v21)
    {
      v21 = *(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 56);
    }

    proto::gnss::Emergency::GanssAddAssistDataChoices::MergeFrom(v20, v21);
  }
}

void sub_2454FA808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssAidRequestPerGanss::~GanssAidRequestPerGanss(proto::gnss::Emergency::GanssAidRequestPerGanss *this)
{
  *this = &unk_28585E6B0;
  v2 = (this + 16);
  proto::gnss::Emergency::GanssAidRequestPerGanss::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::GanssAidRequestPerGanss::~GanssAidRequestPerGanss(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Emergency::GanssAidRequestPerGanss::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ != this)
  {
    v1 = this;
    v2 = this[5];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[6];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    this = v1[7];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance(proto::gnss::Emergency::GanssAidRequestPerGanss *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_;
  if (!proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssAidRequestPerGanss::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 72);
  if (v2)
  {
    *(this + 8) = 0;
    *(this + 64) = 0;
    if ((v2 & 0x10) != 0)
    {
      v3 = *(this + 40);
      if (v3)
      {
        if (*(v3 + 48))
        {
          *(v3 + 40) = 0;
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 32) = 0;
        *(v3 + 48) = 0;
        v2 = *(this + 72);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v4 = *(this + 48);
      if (v4)
      {
        if (*(v4 + 52))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v4 + 24);
        *(v4 + 52) = 0;
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v5 = *(v1 + 56);
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
  }

  if (*(v1 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v1 + 16) + 8 * v6);
      this = (*(*v7 + 32))(v7);
      ++v6;
    }

    while (v6 < *(v1 + 24));
  }

  *(v1 + 24) = 0;
  *(v1 + 72) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GanssAidRequestPerGanss::MergePartialFromCodedStream(proto::gnss::Emergency::GanssAidRequestPerGanss *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        v50 = 0;
        v10 = *(a2 + 1);
        if (v10 >= *(a2 + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50);
          if (!result)
          {
            return result;
          }

          v11 = v50;
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v11 <= 6)
        {
          *(this + 18) |= 1u;
          *(this + 2) = v11;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v14 < v8 && *v14 == 16)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_41:
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

          *(this + 18) |= 2u;
          if (v16 < v8 && *v16 == 24)
          {
            v9 = v16 + 1;
            *(a2 + 1) = v9;
            goto LABEL_49;
          }
        }
      }

      else
      {
        if (v6 == 2)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v12 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_41;
        }

        if (v6 != 3 || (TagFallback & 7) != 0)
        {
          goto LABEL_30;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_49:
        if (v9 >= v8 || (v17 = *v9, v17 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v18 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v17;
          v18 = v9 + 1;
          *(a2 + 1) = v18;
        }

        *(this + 18) |= 4u;
        if (v18 < v8 && *v18 == 34)
        {
          while (1)
          {
            *(a2 + 1) = v18 + 1;
LABEL_57:
            v19 = *(this + 7);
            v20 = *(this + 6);
            if (v20 >= v19)
            {
              if (v19 == *(this + 8))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
                v19 = *(this + 7);
              }

              *(this + 7) = v19 + 1;
              operator new();
            }

            v21 = *(this + 2);
            *(this + 6) = v20 + 1;
            v22 = *(v21 + 8 * v20);
            v50 = 0;
            v23 = *(a2 + 1);
            if (v23 >= *(a2 + 2) || *v23 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
              {
                return 0;
              }
            }

            else
            {
              v50 = *v23;
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
            if (!proto::gnss::Emergency::GanssTimeModelElem::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
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

            v18 = *(a2 + 1);
            if (v18 >= *(a2 + 2))
            {
              break;
            }

            v29 = *v18;
            if (v29 != 34)
            {
              if (v29 == 42)
              {
                *(a2 + 1) = v18 + 1;
LABEL_75:
                *(this + 18) |= 0x10u;
                v30 = *(this + 5);
                if (!v30)
                {
                  operator new();
                }

                v50 = 0;
                v31 = *(a2 + 1);
                if (v31 >= *(a2 + 2) || *v31 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
                  {
                    return 0;
                  }
                }

                else
                {
                  v50 = *v31;
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
                if (!proto::gnss::Emergency::GanssDataBitAssist::MergePartialFromCodedStream(v30, a2) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v34 = *(a2 + 14);
                v27 = __OFSUB__(v34, 1);
                v35 = v34 - 1;
                if (v35 < 0 == v27)
                {
                  *(a2 + 14) = v35;
                }

                v36 = *(a2 + 1);
                if (v36 < *(a2 + 2) && *v36 == 50)
                {
                  *(a2 + 1) = v36 + 1;
LABEL_89:
                  *(this + 18) |= 0x20u;
                  v37 = *(this + 6);
                  if (!v37)
                  {
                    operator new();
                  }

                  v50 = 0;
                  v38 = *(a2 + 1);
                  if (v38 >= *(a2 + 2) || *v38 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v50 = *v38;
                    *(a2 + 1) = v38 + 1;
                  }

                  v39 = *(a2 + 14);
                  v40 = *(a2 + 15);
                  *(a2 + 14) = v39 + 1;
                  if (v39 >= v40)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                  if (!proto::gnss::Emergency::GanssNavModelAddData::MergePartialFromCodedStream(v37, a2) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v41 = *(a2 + 14);
                  v27 = __OFSUB__(v41, 1);
                  v42 = v41 - 1;
                  if (v42 < 0 == v27)
                  {
                    *(a2 + 14) = v42;
                  }

                  v43 = *(a2 + 1);
                  if (v43 < *(a2 + 2) && *v43 == 58)
                  {
                    *(a2 + 1) = v43 + 1;
LABEL_103:
                    *(this + 18) |= 0x40u;
                    v44 = *(this + 7);
                    if (!v44)
                    {
                      operator new();
                    }

                    v50 = 0;
                    v45 = *(a2 + 1);
                    if (v45 >= *(a2 + 2) || *v45 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v50 = *v45;
                      *(a2 + 1) = v45 + 1;
                    }

                    v46 = *(a2 + 14);
                    v47 = *(a2 + 15);
                    *(a2 + 14) = v46 + 1;
                    if (v46 >= v47)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                    if (!proto::gnss::Emergency::GanssAddAssistDataChoices::MergePartialFromCodedStream(v44, a2) || *(a2 + 36) != 1)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                    v48 = *(a2 + 14);
                    v27 = __OFSUB__(v48, 1);
                    v49 = v48 - 1;
                    if (v49 < 0 == v27)
                    {
                      *(a2 + 14) = v49;
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

              goto LABEL_1;
            }
          }
        }
      }
    }

    if (TagFallback >> 3 > 5)
    {
      if (v6 == 6)
      {
        if (v7 == 2)
        {
          goto LABEL_89;
        }
      }

      else if (v6 == 7 && v7 == 2)
      {
        goto LABEL_103;
      }
    }

    else
    {
      if (v6 == 4)
      {
        if (v7 != 2)
        {
          goto LABEL_30;
        }

        goto LABEL_57;
      }

      if (v6 == 5 && v7 == 2)
      {
        goto LABEL_75;
      }
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

uint64_t proto::gnss::Emergency::GanssAidRequestPerGanss::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 72);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  if ((*(v5 + 72) & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 64), a2, a4);
  }

LABEL_5:
  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  v8 = *(v5 + 72);
  if ((v8 & 0x10) != 0)
  {
    v9 = *(v5 + 40);
    if (!v9)
    {
      v9 = *(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 40);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
    v8 = *(v5 + 72);
    if ((v8 & 0x20) == 0)
    {
LABEL_10:
      if ((v8 & 0x40) == 0)
      {
        return this;
      }

      goto LABEL_21;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_10;
  }

  v10 = *(v5 + 48);
  if (!v10)
  {
    v10 = *(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v10, a2, a4);
  if ((*(v5 + 72) & 0x40) != 0)
  {
LABEL_21:
    v11 = *(v5 + 56);
    if (!v11)
    {
      v11 = *(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 56);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v11, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::GanssAidRequestPerGanss::ByteSize(proto::gnss::Emergency::GanssAidRequestPerGanss *this)
{
  LOBYTE(v2) = *(this + 72);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_44;
  }

  if (*(this + 72))
  {
    v4 = *(this + 2);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 18);
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
    if ((*(this + 72) & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  v5 = *(this + 3);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_17:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 16);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(this + 18);
    }

    else
    {
      v8 = 2;
    }

    v3 += v8;
    if ((v2 & 0x10) == 0)
    {
LABEL_19:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_19;
  }

  v9 = *(this + 5);
  if (!v9)
  {
    v9 = *(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 40);
  }

  v10 = proto::gnss::Emergency::GanssDataBitAssist::ByteSize(v9);
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
  v2 = *(this + 18);
  if ((v2 & 0x20) == 0)
  {
LABEL_20:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

LABEL_32:
  v13 = *(this + 6);
  if (!v13)
  {
    v13 = *(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 48);
  }

  v14 = proto::gnss::Emergency::GanssNavModelAddData::ByteSize(v13);
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
  if ((*(this + 18) & 0x40) != 0)
  {
LABEL_38:
    v17 = *(this + 7);
    if (!v17)
    {
      v17 = *(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 56);
    }

    v18 = proto::gnss::Emergency::GanssAddAssistDataChoices::ByteSize(v17);
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
  }

LABEL_44:
  v21 = *(this + 6);
  v22 = (v21 + v3);
  if (v21 >= 1)
  {
    v23 = 0;
    do
    {
      v24 = proto::gnss::Emergency::GanssTimeModelElem::ByteSize(*(*(this + 2) + 8 * v23));
      v25 = v24;
      if (v24 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
      }

      else
      {
        v26 = 1;
      }

      v22 = (v25 + v22 + v26);
      ++v23;
    }

    while (v23 < *(this + 6));
  }

  *(this + 17) = v22;
  return v22;
}

void proto::gnss::Emergency::GanssAidRequestPerGanss::CheckTypeAndMergeFrom(proto::gnss::Emergency::GanssAidRequestPerGanss *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GanssAidRequestPerGanss::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GanssAidRequestPerGanss::CopyFrom(proto::gnss::Emergency::GanssAidRequestPerGanss *this, const proto::gnss::Emergency::GanssAidRequestPerGanss *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GanssAidRequestPerGanss::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GanssAidRequestPerGanss *proto::gnss::Emergency::GanssAidRequestPerGanss::Swap(proto::gnss::Emergency::GanssAidRequestPerGanss *this, proto::gnss::Emergency::GanssAidRequestPerGanss *a2)
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
    v6 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v6;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v7 = *(v3 + 5);
    *(v3 + 5) = *(a2 + 5);
    *(a2 + 5) = v7;
    v8 = *(v3 + 6);
    *(v3 + 6) = *(a2 + 6);
    *(a2 + 6) = v8;
    v9 = *(v3 + 7);
    *(v3 + 7) = *(a2 + 7);
    *(a2 + 7) = v9;
    LODWORD(v9) = *(v3 + 18);
    *(v3 + 18) = *(a2 + 18);
    *(a2 + 18) = v9;
    LODWORD(v9) = *(v3 + 17);
    *(v3 + 17) = *(a2 + 17);
    *(a2 + 17) = v9;
  }

  return this;
}

double proto::gnss::Emergency::GanssAssistanceRequest::SharedCtor(proto::gnss::Emergency::GanssAssistanceRequest *this)
{
  result = 0.0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  return result;
}

proto::gnss::Emergency::GanssAssistanceRequest *proto::gnss::Emergency::GanssAssistanceRequest::GanssAssistanceRequest(proto::gnss::Emergency::GanssAssistanceRequest *this, const proto::gnss::Emergency::GanssAssistanceRequest *a2)
{
  *this = &unk_28585E728;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  proto::gnss::Emergency::GanssAssistanceRequest::MergeFrom(this, a2);
  return this;
}

void sub_2454FB828(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v1 + 5);
  v3 = v1[2];
  if (v3)
  {
    MEMORY[0x245D6AEC0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssAssistanceRequest::MergeFrom(proto::gnss::Emergency::GanssAssistanceRequest *this, const proto::gnss::Emergency::GanssAssistanceRequest *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(this + 12);
  v6 = *(a2 + 12);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40));
  LODWORD(v7) = *(a2 + 12);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
      }

      v9 = *(*(a2 + 5) + 8 * v8);
      v10 = *(this + 13);
      v11 = *(this + 12);
      if (v11 >= v10)
      {
        if (v10 == *(this + 14))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40));
          v10 = *(this + 13);
        }

        *(this + 13) = v10 + 1;
        operator new();
      }

      v12 = *(this + 5);
      *(this + 12) = v11 + 1;
      proto::gnss::Emergency::GanssAidRequestPerGanss::MergeFrom(*(v12 + 8 * v11), v9);
      ++v8;
      v7 = *(a2 + 12);
    }

    while (v8 < v7);
  }

  LOBYTE(v13) = *(a2 + 72);
  if (v13)
  {
    if (*(a2 + 72))
    {
      v15 = *(a2 + 2);
      *(this + 18) |= 1u;
      *(this + 2) = v15;
      v13 = *(a2 + 18);
      if ((v13 & 2) == 0)
      {
LABEL_18:
        if ((v13 & 8) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_25;
      }
    }

    else if ((*(a2 + 72) & 2) == 0)
    {
      goto LABEL_18;
    }

    v16 = *(a2 + 3);
    *(this + 18) |= 2u;
    *(this + 3) = v16;
    v13 = *(a2 + 18);
    if ((v13 & 8) == 0)
    {
LABEL_19:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }

LABEL_25:
    v17 = *(a2 + 8);
    *(this + 18) |= 8u;
    *(this + 8) = v17;
    v13 = *(a2 + 18);
    if ((v13 & 0x10) == 0)
    {
LABEL_20:
      if ((v13 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_21;
    }

LABEL_26:
    v18 = *(a2 + 9);
    *(this + 18) |= 0x10u;
    *(this + 9) = v18;
    if ((*(a2 + 18) & 0x20) == 0)
    {
      return;
    }

LABEL_21:
    v14 = *(a2 + 16);
    *(this + 18) |= 0x20u;
    *(this + 16) = v14;
  }
}

void sub_2454FBB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GanssAssistanceRequest::~GanssAssistanceRequest(proto::gnss::Emergency::GanssAssistanceRequest *this)
{
  *this = &unk_28585E728;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 5);
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x245D6AEC0](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::GanssAssistanceRequest::~GanssAssistanceRequest(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::GanssAssistanceRequest::default_instance(proto::gnss::Emergency::GanssAssistanceRequest *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GanssAssistanceRequest::default_instance_;
  if (!proto::gnss::Emergency::GanssAssistanceRequest::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GanssAssistanceRequest::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssAssistanceRequest::Clear(proto::gnss::Emergency::GanssAssistanceRequest *this)
{
  if (*(this + 72))
  {
    *(this + 1) = 0;
    *(this + 4) = 0;
    *(this + 16) = 0;
  }

  *(this + 6) = 0;
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 40);
  *(this + 18) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::GanssAssistanceRequest::MergePartialFromCodedStream(proto::gnss::Emergency::GanssAssistanceRequest *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
            goto LABEL_32;
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

          *(this + 18) |= 1u;
          if (v13 < v8 && *v13 == 16)
          {
            v16 = v13 + 1;
            *(a2 + 1) = v16;
            goto LABEL_42;
          }
        }

        else
        {
          if (v6 != 2)
          {
            if (v6 == 3)
            {
              if ((TagFallback & 7) == 0)
              {
                v17 = *(a2 + 1);
                v8 = *(a2 + 2);
                goto LABEL_51;
              }

              if (v7 == 2)
              {
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline();
                if (!result)
                {
                  return result;
                }

                goto LABEL_60;
              }
            }

            goto LABEL_32;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_32;
          }

          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
LABEL_42:
          if (v16 >= v8 || (v18 = *v16, v18 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v19 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v18;
            v19 = (v16 + 1);
            *(a2 + 1) = v19;
          }

          *(this + 18) |= 2u;
          if (v19 < v8)
          {
            v20 = *v19;
            while (v20 == 24)
            {
              v17 = (v19 + 1);
              *(a2 + 1) = v17;
LABEL_51:
              v41 = 0;
              if (v17 >= v8 || (v21 = *v17, (v21 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v41);
                if (!result)
                {
                  return result;
                }

                v21 = v41;
              }

              else
              {
                *(a2 + 1) = v17 + 1;
              }

              if (v21 <= 6)
              {
                v22 = *(this + 6);
                if (v22 == *(this + 7))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 2, v22 + 1);
                  v22 = *(this + 6);
                }

                v23 = *(this + 2);
                *(this + 6) = v22 + 1;
                *(v23 + 4 * v22) = v21;
              }

LABEL_60:
              v19 = *(a2 + 1);
              v8 = *(a2 + 2);
              if (v19 >= v8)
              {
                break;
              }

              v20 = *v19;
              if (v20 == 32)
              {
                v14 = (v19 + 1);
                *(a2 + 1) = v14;
                goto LABEL_63;
              }
            }
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        break;
      }

      if (v6 == 4)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_32;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_63:
        if (v14 >= v8 || (v24 = *v14, v24 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v25 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v24;
          v25 = v14 + 1;
          *(a2 + 1) = v25;
        }

        *(this + 18) |= 8u;
        if (v25 < v8 && *v25 == 40)
        {
          v9 = v25 + 1;
          *(a2 + 1) = v9;
LABEL_71:
          if (v9 >= v8 || (v26 = *v9, v26 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
            if (!result)
            {
              return result;
            }

            v27 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 9) = v26;
            v27 = v9 + 1;
            *(a2 + 1) = v27;
          }

          *(this + 18) |= 0x10u;
          if (v27 < v8 && *v27 == 48)
          {
            v15 = v27 + 1;
            *(a2 + 1) = v15;
LABEL_79:
            if (v15 >= v8 || (v28 = *v15, v28 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
              if (!result)
              {
                return result;
              }

              v29 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 16) = v28;
              v29 = v15 + 1;
              *(a2 + 1) = v29;
            }

            *(this + 18) |= 0x20u;
            if (v29 < v8 && *v29 == 58)
            {
LABEL_86:
              *(a2 + 1) = v29 + 1;
              goto LABEL_87;
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
          goto LABEL_71;
        }

LABEL_32:
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

    if (v6 == 6)
    {
      if ((TagFallback & 7) == 0)
      {
        v15 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_79;
      }

      goto LABEL_32;
    }

    if (v6 != 7 || v7 != 2)
    {
      goto LABEL_32;
    }

LABEL_87:
    v30 = *(this + 13);
    v31 = *(this + 12);
    if (v31 >= v30)
    {
      if (v30 == *(this + 14))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40));
        v30 = *(this + 13);
      }

      *(this + 13) = v30 + 1;
      operator new();
    }

    v32 = *(this + 5);
    *(this + 12) = v31 + 1;
    v33 = *(v32 + 8 * v31);
    v42 = 0;
    v34 = *(a2 + 1);
    if (v34 >= *(a2 + 2) || *v34 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42))
      {
        return 0;
      }
    }

    else
    {
      v42 = *v34;
      *(a2 + 1) = v34 + 1;
    }

    v35 = *(a2 + 14);
    v36 = *(a2 + 15);
    *(a2 + 14) = v35 + 1;
    if (v35 >= v36)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!proto::gnss::Emergency::GanssAidRequestPerGanss::MergePartialFromCodedStream(v33, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v37 = *(a2 + 14);
    v38 = __OFSUB__(v37, 1);
    v39 = v37 - 1;
    if (v39 < 0 == v38)
    {
      *(a2 + 14) = v39;
    }

    v29 = *(a2 + 1);
    v40 = *(a2 + 2);
    if (v29 < v40 && *v29 == 58)
    {
      goto LABEL_86;
    }

    if (v29 == v40 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t proto::gnss::Emergency::GanssAssistanceRequest::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 72);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(*(v5 + 16) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  v8 = *(v5 + 72);
  if ((v8 & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 32), a2, a4);
    v8 = *(v5 + 72);
    if ((v8 & 0x10) == 0)
    {
LABEL_10:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v8 & 0x10) == 0)
  {
    goto LABEL_10;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 36), a2, a4);
  if ((*(v5 + 72) & 0x20) != 0)
  {
LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 64), a2, a4);
  }

LABEL_12:
  if (*(v5 + 48) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, *(*(v5 + 40) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 48));
  }

  return this;
}

uint64_t proto::gnss::Emergency::GanssAssistanceRequest::ByteSize(proto::gnss::Emergency::GanssAssistanceRequest *this)
{
  LOBYTE(v2) = *(this + 72);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_30;
  }

  if (*(this + 72))
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 18);
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
    if ((*(this + 72) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 3);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_14:
  if ((v2 & 8) != 0)
  {
    v7 = *(this + 8);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(this + 18);
    }

    else
    {
      v8 = 2;
    }

    v3 += v8;
    if ((v2 & 0x10) == 0)
    {
LABEL_16:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_16;
  }

  v9 = *(this + 9);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v10 = 2;
  }

  v3 += v10;
  if ((v2 & 0x20) != 0)
  {
LABEL_26:
    v11 = *(this + 16);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    }

    else
    {
      v12 = 2;
    }

    v3 += v12;
  }

LABEL_30:
  v13 = *(this + 6);
  if (v13 < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(*(this + 2) + 4 * v14);
      if ((v16 & 0x80000000) != 0)
      {
        v17 = 10;
      }

      else if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
        v13 = *(this + 6);
      }

      else
      {
        v17 = 1;
      }

      v15 += v17;
      ++v14;
    }

    while (v14 < v13);
  }

  v18 = *(this + 12);
  v19 = (v15 + v3 + v13 + v18);
  if (v18 >= 1)
  {
    v20 = 0;
    do
    {
      v21 = proto::gnss::Emergency::GanssAidRequestPerGanss::ByteSize(*(*(this + 5) + 8 * v20));
      v22 = v21;
      if (v21 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
      }

      else
      {
        v23 = 1;
      }

      v19 = (v22 + v19 + v23);
      ++v20;
    }

    while (v20 < *(this + 12));
  }

  *(this + 17) = v19;
  return v19;
}

void proto::gnss::Emergency::GanssAssistanceRequest::CheckTypeAndMergeFrom(proto::gnss::Emergency::GanssAssistanceRequest *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GanssAssistanceRequest::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GanssAssistanceRequest::CopyFrom(proto::gnss::Emergency::GanssAssistanceRequest *this, const proto::gnss::Emergency::GanssAssistanceRequest *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GanssAssistanceRequest::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::GanssAssistanceRequest::Swap(uint64_t this, proto::gnss::Emergency::GanssAssistanceRequest *a2)
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
    v7 = *(a2 + 3);
    *(a2 + 2) = v6;
    v8 = *(this + 24);
    *(this + 24) = v7;
    *(a2 + 3) = v8;
    LODWORD(v6) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v6;
    LODWORD(v6) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v6;
    LODWORD(v6) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v6;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v9 = *(v3 + 72);
    *(v3 + 72) = *(a2 + 18);
    *(a2 + 18) = v9;
    v10 = *(v3 + 68);
    *(v3 + 68) = *(a2 + 17);
    *(a2 + 17) = v10;
  }

  return this;
}

double proto::gnss::Emergency::AssistanceNeededReport::SharedCtor(proto::gnss::Emergency::AssistanceNeededReport *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::AssistanceNeededReport *proto::gnss::Emergency::AssistanceNeededReport::AssistanceNeededReport(proto::gnss::Emergency::AssistanceNeededReport *this, const proto::gnss::Emergency::AssistanceNeededReport *a2)
{
  *this = &unk_28585E7A0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  proto::gnss::Emergency::AssistanceNeededReport::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::AssistanceNeededReport::MergeFrom(proto::gnss::Emergency::AssistanceNeededReport *this, const proto::gnss::Emergency::AssistanceNeededReport *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 44))
  {
    v5 = *(a2 + 2);
    if (v5 >= 9)
    {
      __assert_rtn("set_result", "GnssEmergencyTypes.pb.h", 22344, "::proto::gnss::Emergency::ErrorCodes_IsValid(value)");
    }

    *(this + 11) |= 1u;
    *(this + 2) = v5;
    v4 = *(a2 + 11);
  }

  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    *(this + 11) |= 4u;
    v7 = *(this + 2);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 2);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 16);
    }

    proto::gnss::Emergency::SessionInfo::MergeFrom(v7, v8);
    v4 = *(a2 + 11);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v6 = *(a2 + 3);
  *(this + 11) |= 2u;
  *(this + 3) = v6;
  v4 = *(a2 + 11);
  if ((v4 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((v4 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_18:
  *(this + 11) |= 8u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    v10 = *(proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 24);
  }

  proto::gnss::Emergency::GpsAssistanceRequest::MergeFrom(v9, v10);
  if ((*(a2 + 11) & 0x10) != 0)
  {
LABEL_23:
    *(this + 11) |= 0x10u;
    v11 = *(this + 4);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 4);
    if (!v12)
    {
      v12 = *(proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 32);
    }

    proto::gnss::Emergency::GanssAssistanceRequest::MergeFrom(v11, v12);
  }
}

void sub_2454FC9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::AssistanceNeededReport::~AssistanceNeededReport(proto::gnss::Emergency::AssistanceNeededReport *this)
{
  *this = &unk_28585E7A0;
  proto::gnss::Emergency::AssistanceNeededReport::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585E7A0;
  proto::gnss::Emergency::AssistanceNeededReport::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585E7A0;
  proto::gnss::Emergency::AssistanceNeededReport::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Emergency::AssistanceNeededReport::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::AssistanceNeededReport::default_instance_ != this)
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

uint64_t proto::gnss::Emergency::AssistanceNeededReport::default_instance(proto::gnss::Emergency::AssistanceNeededReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::AssistanceNeededReport::default_instance_;
  if (!proto::gnss::Emergency::AssistanceNeededReport::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::AssistanceNeededReport::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::AssistanceNeededReport::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 44);
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
        v2 = *(this + 44);
      }
    }

    if ((v2 & 8) != 0)
    {
      v4 = *(this + 24);
      if (v4)
      {
        if (*(v4 + 64))
        {
          *(v4 + 56) = 0;
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        *(v4 + 32) = 0;
        *(v4 + 48) = 0;
        *(v4 + 64) = 0;
        v2 = *(this + 44);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(this + 32);
      if (this)
      {
        this = proto::gnss::Emergency::GanssAssistanceRequest::Clear(this);
      }
    }
  }

  *(v1 + 44) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::AssistanceNeededReport::MergePartialFromCodedStream(proto::gnss::Emergency::AssistanceNeededReport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (v7 != 2)
          {
            goto LABEL_21;
          }

          v10 = *(this + 11);
          goto LABEL_42;
        }

        if (v6 == 4)
        {
          if (v7 != 2)
          {
            goto LABEL_21;
          }

LABEL_56:
          *(this + 11) |= 8u;
          v25 = *(this + 3);
          if (!v25)
          {
            operator new();
          }

          v38 = 0;
          v26 = *(a2 + 1);
          if (v26 >= *(a2 + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38))
            {
              return 0;
            }
          }

          else
          {
            v38 = *v26;
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
          if (!proto::gnss::Emergency::GpsAssistanceRequest::MergePartialFromCodedStream(v25, a2) || *(a2 + 36) != 1)
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
          if (v31 < *(a2 + 2) && *v31 == 42)
          {
            *(a2 + 1) = v31 + 1;
            goto LABEL_70;
          }
        }

        else
        {
          if (v6 != 5 || v7 != 2)
          {
            goto LABEL_21;
          }

LABEL_70:
          *(this + 11) |= 0x10u;
          v32 = *(this + 4);
          if (!v32)
          {
            operator new();
          }

          v38 = 0;
          v33 = *(a2 + 1);
          if (v33 >= *(a2 + 2) || *v33 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38))
            {
              return 0;
            }
          }

          else
          {
            v38 = *v33;
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
          if (!proto::gnss::Emergency::GanssAssistanceRequest::MergePartialFromCodedStream(v32, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v36 = *(a2 + 14);
          v22 = __OFSUB__(v36, 1);
          v37 = v36 - 1;
          if (v37 < 0 == v22)
          {
            *(a2 + 14) = v37;
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

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v38 = 0;
      v11 = *(a2 + 1);
      if (v11 >= *(a2 + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38);
        if (!result)
        {
          return result;
        }

        v12 = v38;
      }

      else
      {
        *(a2 + 1) = v11 + 1;
      }

      if (v12 <= 8)
      {
        *(this + 11) |= 1u;
        *(this + 2) = v12;
      }

      v14 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v14 < v8 && *v14 == 16)
      {
        v9 = v14 + 1;
        *(a2 + 1) = v9;
LABEL_34:
        if (v9 >= v8 || (v15 = *v9, v15 < 0))
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
          v16 = v9 + 1;
          *(a2 + 1) = v16;
        }

        v10 = *(this + 11) | 2;
        *(this + 11) = v10;
        if (v16 < v8 && *v16 == 26)
        {
          *(a2 + 1) = v16 + 1;
LABEL_42:
          *(this + 11) = v10 | 4;
          v17 = *(this + 2);
          if (!v17)
          {
            operator new();
          }

          v38 = 0;
          v18 = *(a2 + 1);
          if (v18 >= *(a2 + 2) || *v18 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38))
            {
              return 0;
            }
          }

          else
          {
            v38 = *v18;
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
          if (!proto::gnss::Emergency::SessionInfo::MergePartialFromCodedStream(v17, a2) || *(a2 + 36) != 1)
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
          if (v24 < *(a2 + 2) && *v24 == 34)
          {
            *(a2 + 1) = v24 + 1;
            goto LABEL_56;
          }
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_34;
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

uint64_t proto::gnss::Emergency::AssistanceNeededReport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 44);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_9:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_12:
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
  if ((*(v5 + 44) & 0x10) != 0)
  {
LABEL_15:
    v9 = *(v5 + 32);
    if (!v9)
    {
      v9 = *(proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::AssistanceNeededReport::ByteSize(proto::gnss::Emergency::AssistanceNeededReport *this)
{
  LOBYTE(v2) = *(this + 44);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_39;
  }

  if (*(this + 44))
  {
    v4 = *(this + 2);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 11);
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
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  v5 = *(this + 3);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 11);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_17:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 2);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 16);
    }

    v8 = proto::gnss::Emergency::SessionInfo::ByteSize(v7);
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
    v2 = *(this + 11);
    if ((v2 & 8) == 0)
    {
LABEL_19:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_19;
  }

  v11 = *(this + 3);
  if (!v11)
  {
    v11 = *(proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 24);
  }

  v12 = proto::gnss::Emergency::GpsAssistanceRequest::ByteSize(v11);
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
  if ((*(this + 11) & 0x10) != 0)
  {
LABEL_33:
    v15 = *(this + 4);
    if (!v15)
    {
      v15 = *(proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 32);
    }

    v16 = proto::gnss::Emergency::GanssAssistanceRequest::ByteSize(v15);
    v17 = v16;
    if (v16 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
    }

    else
    {
      v18 = 1;
    }

    v3 = (v3 + v17 + v18 + 1);
  }

LABEL_39:
  *(this + 10) = v3;
  return v3;
}

void proto::gnss::Emergency::AssistanceNeededReport::CheckTypeAndMergeFrom(proto::gnss::Emergency::AssistanceNeededReport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::AssistanceNeededReport::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::AssistanceNeededReport::CopyFrom(proto::gnss::Emergency::AssistanceNeededReport *this, const proto::gnss::Emergency::AssistanceNeededReport *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::AssistanceNeededReport::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::AssistanceNeededReport::Swap(uint64_t this, proto::gnss::Emergency::AssistanceNeededReport *a2)
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
    LODWORD(v6) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v6;
    LODWORD(v6) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v6;
  }

  return this;
}

uint64_t proto::gnss::Emergency::EutranCellTime::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

proto::gnss::Emergency::EutranCellTime *proto::gnss::Emergency::EutranCellTime::EutranCellTime(proto::gnss::Emergency::EutranCellTime *this, const proto::gnss::Emergency::EutranCellTime *a2)
{
  *(this + 1) = 0;
  *this = &unk_28585E818;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  proto::gnss::Emergency::EutranCellTime::MergeFrom(this, a2);
  return this;
}

void sub_2454FD718(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::EutranCellTime::MergeFrom(proto::gnss::Emergency::EutranCellTime *this, const proto::gnss::Emergency::EutranCellTime *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  v4 = *(this + 4);
  v5 = *(a2 + 4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
  LODWORD(v6) = *(a2 + 4);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
      }

      v8 = *(*(a2 + 1) + 8 * v7);
      v9 = *(this + 5);
      v10 = *(this + 4);
      if (v10 >= v9)
      {
        if (v9 == *(this + 6))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
          v9 = *(this + 5);
        }

        *(this + 5) = v9 + 1;
        operator new();
      }

      v11 = *(this + 1);
      *(this + 4) = v10 + 1;
      proto::gnss::Emergency::ClsEutranCell::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 4);
    }

    while (v7 < v6);
  }

  if (*(a2 + 40))
  {
    v12 = *(a2 + 8);
    *(this + 10) |= 1u;
    *(this + 8) = v12;
  }
}

void sub_2454FD914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::EutranCellTime::~EutranCellTime(proto::gnss::Emergency::EutranCellTime *this)
{
  *this = &unk_28585E818;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::EutranCellTime::~EutranCellTime(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::EutranCellTime::default_instance(proto::gnss::Emergency::EutranCellTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::EutranCellTime::default_instance_;
  if (!proto::gnss::Emergency::EutranCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::EutranCellTime::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::EutranCellTime::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 40))
  {
    *(this + 32) = 0;
  }

  if (*(this + 16) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 8) + 8 * v2);
      this = (*(*v3 + 32))(v3);
      ++v2;
    }

    while (v2 < *(v1 + 16));
  }

  *(v1 + 16) = 0;
  *(v1 + 40) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::EutranCellTime::MergePartialFromCodedStream(proto::gnss::Emergency::EutranCellTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v7 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v7 >= v8 || (v9 = *v7, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 8) = v9;
        v10 = v7 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 10) |= 1u;
      if (v10 < v8 && *v10 == 18)
      {
        do
        {
          *(a2 + 1) = v10 + 1;
LABEL_21:
          v12 = *(this + 5);
          v13 = *(this + 4);
          if (v13 >= v12)
          {
            if (v12 == *(this + 6))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
              v12 = *(this + 5);
            }

            *(this + 5) = v12 + 1;
            operator new();
          }

          v14 = *(this + 1);
          *(this + 4) = v13 + 1;
          v15 = *(v14 + 8 * v13);
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
          if (!proto::gnss::Emergency::ClsEutranCell::MergePartialFromCodedStream(v15, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v19 = *(a2 + 14);
          v20 = __OFSUB__(v19, 1);
          v21 = v19 - 1;
          if (v21 < 0 == v20)
          {
            *(a2 + 14) = v21;
          }

          v10 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        while (v10 < v22 && *v10 == 18);
        if (v10 == v22 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_21;
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
}

uint64_t proto::gnss::Emergency::EutranCellTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 40))
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

  return this;
}

uint64_t proto::gnss::Emergency::EutranCellTime::ByteSize(proto::gnss::Emergency::EutranCellTime *this)
{
  if (*(this + 40))
  {
    v3 = *(this + 8);
    if (v3 >= 0x80)
    {
      v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 4);
  v5 = (v4 + v2);
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = proto::gnss::Emergency::ClsEutranCell::ByteSize(*(*(this + 1) + 8 * v6));
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      }

      else
      {
        v9 = 1;
      }

      v5 = (v8 + v5 + v9);
      ++v6;
    }

    while (v6 < *(this + 4));
  }

  *(this + 9) = v5;
  return v5;
}

void proto::gnss::Emergency::EutranCellTime::CheckTypeAndMergeFrom(proto::gnss::Emergency::EutranCellTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::EutranCellTime::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::EutranCellTime::CopyFrom(proto::gnss::Emergency::EutranCellTime *this, const proto::gnss::Emergency::EutranCellTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::EutranCellTime::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::EutranCellTime *proto::gnss::Emergency::EutranCellTime::Swap(proto::gnss::Emergency::EutranCellTime *this, proto::gnss::Emergency::EutranCellTime *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v5;
    v6 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v6;
  }

  return this;
}

double proto::gnss::Emergency::ClsGeranCellTime::SharedCtor(proto::gnss::Emergency::ClsGeranCellTime *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Emergency::ClsGeranCellTime *proto::gnss::Emergency::ClsGeranCellTime::ClsGeranCellTime(proto::gnss::Emergency::ClsGeranCellTime *this, const proto::gnss::Emergency::ClsGeranCellTime *a2)
{
  *this = &unk_28585E890;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  proto::gnss::Emergency::ClsGeranCellTime::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::ClsGeranCellTime::MergeFrom(proto::gnss::Emergency::ClsGeranCellTime *this, const proto::gnss::Emergency::ClsGeranCellTime *a2)
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

void sub_2454FE24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::ClsGeranCellTime::~ClsGeranCellTime(proto::gnss::Emergency::ClsGeranCellTime *this)
{
  *this = &unk_28585E890;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585E890;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585E890;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::ClsGeranCellTime::default_instance(proto::gnss::Emergency::ClsGeranCellTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::ClsGeranCellTime::default_instance_;
  if (!proto::gnss::Emergency::ClsGeranCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::ClsGeranCellTime::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::ClsGeranCellTime::Clear(uint64_t this)
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

uint64_t proto::gnss::Emergency::ClsGeranCellTime::MergePartialFromCodedStream(proto::gnss::Emergency::ClsGeranCellTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

          v11 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v11 >= v7 || (v12 = *v11, v12 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v13 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v12;
            v13 = v11 + 1;
            *(a2 + 1) = v13;
          }

          *(this + 10) |= 1u;
          if (v13 < v7 && *v13 == 16)
          {
            v16 = v13 + 1;
            *(a2 + 1) = v16;
            goto LABEL_39;
          }
        }

        else
        {
          if (v6 != 2)
          {
            if (v6 != 3 || (TagFallback & 7) != 0)
            {
              goto LABEL_30;
            }

            v9 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_47;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v16 = *(a2 + 1);
          v7 = *(a2 + 2);
LABEL_39:
          if (v16 >= v7 || (v17 = *v16, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v17;
            v18 = v16 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 10) |= 2u;
          if (v18 < v7 && *v18 == 24)
          {
            v9 = v18 + 1;
            *(a2 + 1) = v9;
LABEL_47:
            if (v9 >= v7 || (v19 = *v9, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v20 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v19;
              v20 = v9 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 10) |= 4u;
            if (v20 < v7 && *v20 == 32)
            {
              v14 = v20 + 1;
              *(a2 + 1) = v14;
              goto LABEL_55;
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
            v15 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_71;
          }
        }

        else if (v6 == 7 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_79;
        }

        goto LABEL_30;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v14 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_55:
      if (v14 >= v7 || (v21 = *v14, v21 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
        if (!result)
        {
          return result;
        }

        v22 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 5) = v21;
        v22 = v14 + 1;
        *(a2 + 1) = v22;
      }

      *(this + 10) |= 8u;
      if (v22 < v7 && *v22 == 40)
      {
        v8 = v22 + 1;
        *(a2 + 1) = v8;
LABEL_63:
        if (v8 >= v7 || (v23 = *v8, v23 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v24 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v23;
          v24 = v8 + 1;
          *(a2 + 1) = v24;
        }

        *(this + 10) |= 0x10u;
        if (v24 < v7 && *v24 == 48)
        {
          v15 = v24 + 1;
          *(a2 + 1) = v15;
LABEL_71:
          if (v15 >= v7 || (v25 = *v15, v25 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
            if (!result)
            {
              return result;
            }

            v26 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 7) = v25;
            v26 = v15 + 1;
            *(a2 + 1) = v26;
          }

          *(this + 10) |= 0x20u;
          if (v26 < v7 && *v26 == 56)
          {
            v10 = v26 + 1;
            *(a2 + 1) = v10;
LABEL_79:
            if (v10 >= v7 || (v27 = *v10, v27 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
              if (!result)
              {
                return result;
              }

              v28 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 8) = v27;
              v28 = v10 + 1;
              *(a2 + 1) = v28;
            }

            *(this + 10) |= 0x40u;
            if (v28 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_63;
    }

LABEL_30:
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

unsigned int *proto::gnss::Emergency::ClsGeranCellTime::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[10];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[10];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[10];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[10];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[10];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], a2, a4);
    if ((v5[10] & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], a2, a4);
  v6 = v5[10];
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
  v7 = v5[8];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::ClsGeranCellTime::ByteSize(proto::gnss::Emergency::ClsGeranCellTime *this)
{
  LOBYTE(v2) = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_40;
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

      goto LABEL_28;
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
    v2 = *(this + 10);
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

    goto LABEL_32;
  }

LABEL_28:
  v11 = *(this + 6);
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
LABEL_18:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

LABEL_32:
  v13 = *(this + 7);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = *(this + 10);
  }

  else
  {
    v14 = 2;
  }

  v3 = (v14 + v3);
  if ((v2 & 0x40) != 0)
  {
LABEL_36:
    v15 = *(this + 8);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    }

    else
    {
      v16 = 2;
    }

    v3 = (v16 + v3);
  }

LABEL_40:
  *(this + 9) = v3;
  return v3;
}

void proto::gnss::Emergency::ClsGeranCellTime::CheckTypeAndMergeFrom(proto::gnss::Emergency::ClsGeranCellTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::ClsGeranCellTime::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::ClsGeranCellTime::CopyFrom(proto::gnss::Emergency::ClsGeranCellTime *this, const proto::gnss::Emergency::ClsGeranCellTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::ClsGeranCellTime::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::ClsGeranCellTime *proto::gnss::Emergency::ClsGeranCellTime::Swap(proto::gnss::Emergency::ClsGeranCellTime *this, proto::gnss::Emergency::ClsGeranCellTime *a2)
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
    v9 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v9;
    v10 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v10;
  }

  return this;
}

uint64_t proto::gnss::Emergency::GpsTowCdmaCellTime::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::Emergency::GpsTowCdmaCellTime *proto::gnss::Emergency::GpsTowCdmaCellTime::GpsTowCdmaCellTime(proto::gnss::Emergency::GpsTowCdmaCellTime *this, const proto::gnss::Emergency::GpsTowCdmaCellTime *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28585E908;
  proto::gnss::Emergency::GpsTowCdmaCellTime::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GpsTowCdmaCellTime::MergeFrom(proto::gnss::Emergency::GpsTowCdmaCellTime *this, const proto::gnss::Emergency::GpsTowCdmaCellTime *a2)
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

void sub_2454FECC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsTowCdmaCellTime::~GpsTowCdmaCellTime(proto::gnss::Emergency::GpsTowCdmaCellTime *this)
{
  *this = &unk_28585E908;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585E908;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585E908;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::GpsTowCdmaCellTime::default_instance(proto::gnss::Emergency::GpsTowCdmaCellTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GpsTowCdmaCellTime::default_instance_;
  if (!proto::gnss::Emergency::GpsTowCdmaCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GpsTowCdmaCellTime::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GpsTowCdmaCellTime::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GpsTowCdmaCellTime::MergePartialFromCodedStream(proto::gnss::Emergency::GpsTowCdmaCellTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t proto::gnss::Emergency::GpsTowCdmaCellTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gnss::Emergency::GpsTowCdmaCellTime::ByteSize(proto::gnss::Emergency::GpsTowCdmaCellTime *this)
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

void proto::gnss::Emergency::GpsTowCdmaCellTime::CheckTypeAndMergeFrom(proto::gnss::Emergency::GpsTowCdmaCellTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::GpsTowCdmaCellTime::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::GpsTowCdmaCellTime::CopyFrom(proto::gnss::Emergency::GpsTowCdmaCellTime *this, const proto::gnss::Emergency::GpsTowCdmaCellTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::GpsTowCdmaCellTime::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::GpsTowCdmaCellTime *proto::gnss::Emergency::GpsTowCdmaCellTime::Swap(proto::gnss::Emergency::GpsTowCdmaCellTime *this, proto::gnss::Emergency::GpsTowCdmaCellTime *a2)
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

uint64_t proto::gnss::Emergency::CtsEutranCellTime::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::CtsEutranCellTime *proto::gnss::Emergency::CtsEutranCellTime::CtsEutranCellTime(proto::gnss::Emergency::CtsEutranCellTime *this, const proto::gnss::Emergency::CtsEutranCellTime *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28585E980;
  *(this + 6) = 0;
  proto::gnss::Emergency::CtsEutranCellTime::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::CtsEutranCellTime::MergeFrom(proto::gnss::Emergency::CtsEutranCellTime *this, const proto::gnss::Emergency::CtsEutranCellTime *a2)
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

void sub_2454FF368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::CtsEutranCellTime::~CtsEutranCellTime(proto::gnss::Emergency::CtsEutranCellTime *this)
{
  *this = &unk_28585E980;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585E980;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585E980;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::CtsEutranCellTime::default_instance(proto::gnss::Emergency::CtsEutranCellTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::CtsEutranCellTime::default_instance_;
  if (!proto::gnss::Emergency::CtsEutranCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::CtsEutranCellTime::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::CtsEutranCellTime::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CtsEutranCellTime::MergePartialFromCodedStream(proto::gnss::Emergency::CtsEutranCellTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

unsigned int *proto::gnss::Emergency::CtsEutranCellTime::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gnss::Emergency::CtsEutranCellTime::ByteSize(proto::gnss::Emergency::CtsEutranCellTime *this)
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

void proto::gnss::Emergency::CtsEutranCellTime::CheckTypeAndMergeFrom(proto::gnss::Emergency::CtsEutranCellTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::CtsEutranCellTime::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::CtsEutranCellTime::CopyFrom(proto::gnss::Emergency::CtsEutranCellTime *this, const proto::gnss::Emergency::CtsEutranCellTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::CtsEutranCellTime::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::CtsEutranCellTime *proto::gnss::Emergency::CtsEutranCellTime::Swap(proto::gnss::Emergency::CtsEutranCellTime *this, proto::gnss::Emergency::CtsEutranCellTime *a2)
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

void *proto::gnss::Emergency::CtsCdmaCellTime::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gnss::Emergency::CtsCdmaCellTime *proto::gnss::Emergency::CtsCdmaCellTime::CtsCdmaCellTime(proto::gnss::Emergency::CtsCdmaCellTime *this, const proto::gnss::Emergency::CtsCdmaCellTime *a2)
{
  *this = &unk_28585E9F8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gnss::Emergency::CtsCdmaCellTime::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::CtsCdmaCellTime::MergeFrom(proto::gnss::Emergency::CtsCdmaCellTime *this, const proto::gnss::Emergency::CtsCdmaCellTime *a2)
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
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        v7 = *(proto::gnss::Emergency::CtsCdmaCellTime::default_instance_ + 8);
      }

      proto::gnss::Emergency::GpsTowCdmaCellTime::MergeFrom(v6, v7);
      v4 = *(a2 + 7);
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

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 4);
    *(this + 7) |= 2u;
    *(this + 4) = v8;
    if ((*(a2 + 7) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 5);
    *(this + 7) |= 4u;
    *(this + 5) = v5;
  }
}

void sub_2454FFB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::CtsCdmaCellTime::~CtsCdmaCellTime(proto::gnss::Emergency::CtsCdmaCellTime *this)
{
  *this = &unk_28585E9F8;
  if (proto::gnss::Emergency::CtsCdmaCellTime::default_instance_ != this)
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
  proto::gnss::Emergency::CtsCdmaCellTime::~CtsCdmaCellTime(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Emergency::CtsCdmaCellTime::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::CtsCdmaCellTime::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::CtsCdmaCellTime::default_instance(proto::gnss::Emergency::CtsCdmaCellTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::CtsCdmaCellTime::default_instance_;
  if (!proto::gnss::Emergency::CtsCdmaCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::CtsCdmaCellTime::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::CtsCdmaCellTime::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    if (*(this + 28))
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
  }

  *(this + 28) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CtsCdmaCellTime::MergePartialFromCodedStream(proto::gnss::Emergency::CtsCdmaCellTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if ((TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_39;
        }

        goto LABEL_18;
      }

      if (v6 != 2)
      {
        break;
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

    if (v6 != 1 || v7 != 2)
    {
      goto LABEL_18;
    }

    *(this + 7) |= 1u;
    v8 = *(this + 1);
    if (!v8)
    {
      operator new();
    }

    v24 = 0;
    v9 = *(a2 + 1);
    if (v9 >= *(a2 + 2) || *v9 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24))
      {
        return 0;
      }
    }

    else
    {
      v24 = *v9;
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
    if (!proto::gnss::Emergency::GpsTowCdmaCellTime::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
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
      if (v11 >= v10 || (v19 = *v11, v19 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v20 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v19;
        v20 = v11 + 1;
        *(a2 + 1) = v20;
      }

      *(this + 7) |= 2u;
      if (v20 < v10 && *v20 == 24)
      {
        v12 = v20 + 1;
        *(a2 + 1) = v12;
LABEL_39:
        if (v12 >= v10 || (v22 = *v12, v22 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v23 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v22;
          v23 = v12 + 1;
          *(a2 + 1) = v23;
        }

        *(this + 7) |= 4u;
        if (v23 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t proto::gnss::Emergency::CtsCdmaCellTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
    if ((v5[7] & 4) == 0)
    {
      return this;
    }

    goto LABEL_9;
  }

  v7 = *(this + 8);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::CtsCdmaCellTime::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = v5[7];
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
  v8 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v8, a2, a4);
}

uint64_t proto::gnss::Emergency::CtsCdmaCellTime::ByteSize(proto::gnss::Emergency::CtsCdmaCellTime *this)
{
  LOBYTE(v2) = *(this + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_21;
  }

  if (*(this + 28))
  {
    v4 = *(this + 1);
    if (!v4)
    {
      v4 = *(proto::gnss::Emergency::CtsCdmaCellTime::default_instance_ + 8);
    }

    v5 = proto::gnss::Emergency::GpsTowCdmaCellTime::ByteSize(v4);
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
    v2 = *(this + 7);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v8 = *(this + 4);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 7);
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v10 = *(this + 5);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    }

    else
    {
      v11 = 2;
    }

    v3 = (v11 + v3);
  }

LABEL_21:
  *(this + 6) = v3;
  return v3;
}

void proto::gnss::Emergency::CtsCdmaCellTime::CheckTypeAndMergeFrom(proto::gnss::Emergency::CtsCdmaCellTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::CtsCdmaCellTime::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::CtsCdmaCellTime::CopyFrom(proto::gnss::Emergency::CtsCdmaCellTime *this, const proto::gnss::Emergency::CtsCdmaCellTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::CtsCdmaCellTime::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::CtsCdmaCellTime::Swap(uint64_t this, proto::gnss::Emergency::CtsCdmaCellTime *a2)
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
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return this;
}

void *proto::gnss::Emergency::CellTimeData::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gnss::Emergency::CellTimeData *proto::gnss::Emergency::CellTimeData::CellTimeData(proto::gnss::Emergency::CellTimeData *this, const proto::gnss::Emergency::CellTimeData *a2)
{
  *this = &unk_28585EA70;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gnss::Emergency::CellTimeData::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::CellTimeData::MergeFrom(proto::gnss::Emergency::CellTimeData *this, const proto::gnss::Emergency::CellTimeData *a2)
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
        v6 = *(proto::gnss::Emergency::CellTimeData::default_instance_ + 8);
      }

      proto::gnss::Emergency::CtsEutranCellTime::MergeFrom(v5, v6);
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
        v8 = *(proto::gnss::Emergency::CellTimeData::default_instance_ + 16);
      }

      proto::gnss::Emergency::CtsCdmaCellTime::MergeFrom(v7, v8);
    }
  }
}

void sub_245500488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::CellTimeData::~CellTimeData(proto::gnss::Emergency::CellTimeData *this)
{
  *this = &unk_28585EA70;
  proto::gnss::Emergency::CellTimeData::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585EA70;
  proto::gnss::Emergency::CellTimeData::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585EA70;
  proto::gnss::Emergency::CellTimeData::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Emergency::CellTimeData::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::CellTimeData::default_instance_ != this)
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

uint64_t proto::gnss::Emergency::CellTimeData::default_instance(proto::gnss::Emergency::CellTimeData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::CellTimeData::default_instance_;
  if (!proto::gnss::Emergency::CellTimeData::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::CellTimeData::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::CellTimeData::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 28);
  if (v2)
  {
    if (*(this + 28))
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 24))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 24) = 0;
        v2 = *(this + 28);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = proto::gnss::Emergency::CtsCdmaCellTime::Clear(this);
      }
    }
  }

  *(v1 + 28) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CellTimeData::MergePartialFromCodedStream(proto::gnss::Emergency::CellTimeData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (!proto::gnss::Emergency::CtsEutranCellTime::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
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
        if (!proto::gnss::Emergency::CtsCdmaCellTime::MergePartialFromCodedStream(v15, a2) || *(a2 + 36) != 1)
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

uint64_t proto::gnss::Emergency::CellTimeData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::CellTimeData::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::CellTimeData::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::CellTimeData::ByteSize(proto::gnss::Emergency::CellTimeData *this)
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
    v3 = *(proto::gnss::Emergency::CellTimeData::default_instance_ + 8);
  }

  v4 = proto::gnss::Emergency::CtsEutranCellTime::ByteSize(v3);
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
      v7 = *(proto::gnss::Emergency::CellTimeData::default_instance_ + 16);
    }

    v8 = proto::gnss::Emergency::CtsCdmaCellTime::ByteSize(v7);
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

void proto::gnss::Emergency::CellTimeData::CheckTypeAndMergeFrom(proto::gnss::Emergency::CellTimeData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::CellTimeData::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::CellTimeData::CopyFrom(proto::gnss::Emergency::CellTimeData *this, const proto::gnss::Emergency::CellTimeData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::CellTimeData::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::CellTimeData::Swap(uint64_t this, proto::gnss::Emergency::CellTimeData *a2)
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

uint64_t proto::gnss::Emergency::CellTimeAssistance::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::CellTimeAssistance *proto::gnss::Emergency::CellTimeAssistance::CellTimeAssistance(proto::gnss::Emergency::CellTimeAssistance *this, const proto::gnss::Emergency::CellTimeAssistance *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28585EAE8;
  *(this + 6) = 0;
  proto::gnss::Emergency::CellTimeAssistance::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::CellTimeAssistance::MergeFrom(proto::gnss::Emergency::CellTimeAssistance *this, const proto::gnss::Emergency::CellTimeAssistance *a2)
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
        __assert_rtn("set_cell_time_assistance_type", "GnssEmergencyTypes.pb.h", 23024, "::proto::gnss::Emergency::ClsNetworkType_IsValid(value)");
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
        v7 = *(proto::gnss::Emergency::CellTimeAssistance::default_instance_ + 8);
      }

      proto::gnss::Emergency::CellTimeData::MergeFrom(v6, v7);
    }
  }
}

void sub_245500EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::CellTimeAssistance::~CellTimeAssistance(proto::gnss::Emergency::CellTimeAssistance *this)
{
  *this = &unk_28585EAE8;
  if (proto::gnss::Emergency::CellTimeAssistance::default_instance_ != this)
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
  proto::gnss::Emergency::CellTimeAssistance::~CellTimeAssistance(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Emergency::CellTimeAssistance::SharedDtor(void *this)
{
  if (proto::gnss::Emergency::CellTimeAssistance::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::Emergency::CellTimeAssistance::default_instance(proto::gnss::Emergency::CellTimeAssistance *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::CellTimeAssistance::default_instance_;
  if (!proto::gnss::Emergency::CellTimeAssistance::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::CellTimeAssistance::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::CellTimeAssistance::Clear(uint64_t this)
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
        this = proto::gnss::Emergency::CellTimeData::Clear(this);
      }
    }
  }

  *(v1 + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CellTimeAssistance::MergePartialFromCodedStream(proto::gnss::Emergency::CellTimeAssistance *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
    if (!proto::gnss::Emergency::CellTimeData::MergePartialFromCodedStream(v11, a2) || *(a2 + 36) != 1)
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

uint64_t proto::gnss::Emergency::CellTimeAssistance::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      v7 = *(proto::gnss::Emergency::CellTimeAssistance::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::Emergency::CellTimeAssistance::ByteSize(proto::gnss::Emergency::CellTimeAssistance *this)
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
      v5 = *(proto::gnss::Emergency::CellTimeAssistance::default_instance_ + 8);
    }

    v6 = proto::gnss::Emergency::CellTimeData::ByteSize(v5);
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

void proto::gnss::Emergency::CellTimeAssistance::CheckTypeAndMergeFrom(proto::gnss::Emergency::CellTimeAssistance *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::CellTimeAssistance::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::CellTimeAssistance::CopyFrom(proto::gnss::Emergency::CellTimeAssistance *this, const proto::gnss::Emergency::CellTimeAssistance *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::CellTimeAssistance::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::CellTimeAssistance::Swap(uint64_t this, proto::gnss::Emergency::CellTimeAssistance *a2)
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

uint64_t proto::gnss::Emergency::TowAssist::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::Emergency::TowAssist *proto::gnss::Emergency::TowAssist::TowAssist(proto::gnss::Emergency::TowAssist *this, const proto::gnss::Emergency::TowAssist *a2)
{
  *this = &unk_28585EB60;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  proto::gnss::Emergency::TowAssist::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::TowAssist::MergeFrom(proto::gnss::Emergency::TowAssist *this, const proto::gnss::Emergency::TowAssist *a2)
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
      v6 = *(a2 + 2);
      *(this + 8) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 8);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 8) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 8);
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
    v8 = *(a2 + 4);
    *(this + 8) |= 4u;
    *(this + 4) = v8;
    v4 = *(a2 + 8);
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
    v9 = *(a2 + 5);
    *(this + 8) |= 8u;
    *(this + 5) = v9;
    if ((*(a2 + 8) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 6);
    *(this + 8) |= 0x10u;
    *(this + 6) = v5;
  }
}

void sub_24550175C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::TowAssist::~TowAssist(proto::gnss::Emergency::TowAssist *this)
{
  *this = &unk_28585EB60;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585EB60;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585EB60;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::TowAssist::default_instance(proto::gnss::Emergency::TowAssist *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::TowAssist::default_instance_;
  if (!proto::gnss::Emergency::TowAssist::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::TowAssist::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::TowAssist::Clear(uint64_t this)
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

uint64_t proto::gnss::Emergency::TowAssist::MergePartialFromCodedStream(proto::gnss::Emergency::TowAssist *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v12 >= v7 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) |= 1u;
        if (v14 < v7 && *v14 == 16)
        {
          v9 = v14 + 1;
          *(a2 + 1) = v9;
LABEL_32:
          if (v9 >= v7 || (v15 = *v9, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v15;
            v16 = v9 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 2u;
          if (v16 < v7 && *v16 == 24)
          {
            v10 = v16 + 1;
            *(a2 + 1) = v10;
LABEL_40:
            if (v10 >= v7 || (v17 = *v10, v17 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v18 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v17;
              v18 = v10 + 1;
              *(a2 + 1) = v18;
            }

            *(this + 8) |= 4u;
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
      if (v11 >= v7 || (v19 = *v11, v19 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
        if (!result)
        {
          return result;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 5) = v19;
        v20 = v11 + 1;
        *(a2 + 1) = v20;
      }

      *(this + 8) |= 8u;
      if (v20 < v7 && *v20 == 40)
      {
        v8 = v20 + 1;
        *(a2 + 1) = v8;
LABEL_56:
        if (v8 >= v7 || (v21 = *v8, v21 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v22 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v21;
          v22 = v8 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 8) |= 0x10u;
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

unsigned int *proto::gnss::Emergency::TowAssist::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[8];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[8];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[8];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
    if ((v5[8] & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[8];
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
  v7 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::TowAssist::ByteSize(proto::gnss::Emergency::TowAssist *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_30;
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
    v7 = *(this + 4);
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
LABEL_16:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
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
    v2 = *(this + 8);
  }

  else
  {
    v10 = 2;
  }

  v3 = (v10 + v3);
  if ((v2 & 0x10) != 0)
  {
LABEL_26:
    v11 = *(this + 6);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    }

    else
    {
      v12 = 2;
    }

    v3 = (v12 + v3);
  }

LABEL_30:
  *(this + 7) = v3;
  return v3;
}

void proto::gnss::Emergency::TowAssist::CheckTypeAndMergeFrom(proto::gnss::Emergency::TowAssist *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::TowAssist::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::TowAssist::CopyFrom(proto::gnss::Emergency::TowAssist *this, const proto::gnss::Emergency::TowAssist *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::TowAssist::MergeFrom(this, a2);
  }
}

proto::gnss::Emergency::TowAssist *proto::gnss::Emergency::TowAssist::Swap(proto::gnss::Emergency::TowAssist *this, proto::gnss::Emergency::TowAssist *a2)
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
    v7 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
  }

  return this;
}

void *proto::gnss::Emergency::GpsReferenceTime::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[7] = 0;
  this[8] = 0;
  this[6] = 0;
  return this;
}

proto::gnss::Emergency::GpsReferenceTime *proto::gnss::Emergency::GpsReferenceTime::GpsReferenceTime(proto::gnss::Emergency::GpsReferenceTime *this, const proto::gnss::Emergency::GpsReferenceTime *a2)
{
  *this = &unk_28585EBD8;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  proto::gnss::Emergency::GpsReferenceTime::MergeFrom(this, a2);
  return this;
}

void sub_245501FA4(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v1 + 3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsReferenceTime::MergeFrom(proto::gnss::Emergency::GpsReferenceTime *this, const proto::gnss::Emergency::GpsReferenceTime *a2)
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
      proto::gnss::Emergency::TowAssist::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 8);
    }

    while (v7 < v6);
  }

  v12 = *(a2 + 17);
  if (!v12)
  {
    goto LABEL_21;
  }

  if (v12)
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

      goto LABEL_26;
    }
  }

  else if ((v12 & 2) == 0)
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
    if ((v12 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

LABEL_26:
  v16 = *(a2 + 4);
  *(this + 17) |= 4u;
  *(this + 4) = v16;
  v12 = *(a2 + 17);
  if ((v12 & 8) == 0)
  {
LABEL_18:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

LABEL_27:
  v17 = *(a2 + 5);
  *(this + 17) |= 8u;
  *(this + 5) = v17;
  v12 = *(a2 + 17);
  if ((v12 & 0x20) == 0)
  {
LABEL_19:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

LABEL_28:
  v18 = *(a2 + 12);
  *(this + 17) |= 0x20u;
  *(this + 12) = v18;
  v12 = *(a2 + 17);
  if ((v12 & 0x40) != 0)
  {
LABEL_29:
    v19 = *(a2 + 13);
    if (v19 >= 6)
    {
      __assert_rtn("set_session_protocol", "GnssEmergencyTypes.pb.h", 23342, "::proto::gnss::Emergency::SessionProtocol_IsValid(value)");
    }

    *(this + 17) |= 0x40u;
    *(this + 13) = v19;
    v12 = *(a2 + 17);
    if ((v12 & 0x80) != 0)
    {
      goto LABEL_31;
    }

LABEL_21:
    if ((v12 & 0x100) == 0)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_20:
  if ((v12 & 0x80) == 0)
  {
    goto LABEL_21;
  }

LABEL_31:
  v20 = *(a2 + 14);
  if (v20 >= 7)
  {
    __assert_rtn("set_pos_protocol", "GnssEmergencyTypes.pb.h", 23365, "::proto::gnss::Emergency::PosProtocol_IsValid(value)");
  }

  *(this + 17) |= 0x80u;
  *(this + 14) = v20;
  if ((*(a2 + 17) & 0x100) != 0)
  {
LABEL_22:
    v13 = *(a2 + 15);
    *(this + 17) |= 0x100u;
    *(this + 15) = v13;
  }
}

void sub_2455022D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GpsReferenceTime::~GpsReferenceTime(proto::gnss::Emergency::GpsReferenceTime *this)
{
  *this = &unk_28585EBD8;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnss::Emergency::GpsReferenceTime::~GpsReferenceTime(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::GpsReferenceTime::default_instance(proto::gnss::Emergency::GpsReferenceTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GpsReferenceTime::default_instance_;
  if (!proto::gnss::Emergency::GpsReferenceTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GpsReferenceTime::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GpsReferenceTime::Clear(proto::gnss::Emergency::GpsReferenceTime *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 15) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 24);
  *(this + 17) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::GpsReferenceTime::MergePartialFromCodedStream(proto::gnss::Emergency::GpsReferenceTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v6 == 3)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v18 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_54;
            }

            if (v6 != 4 || (TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v12 = *(a2 + 1);
            v10 = *(a2 + 2);
LABEL_62:
            if (v12 >= v10 || (v27 = *v12, v27 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v28 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v27;
              v28 = v12 + 1;
              *(a2 + 1) = v28;
            }

            *(this + 17) |= 8u;
            if (v28 < v10 && *v28 == 42)
            {
              while (1)
              {
                *(a2 + 1) = v28 + 1;
LABEL_70:
                v29 = *(this + 9);
                v30 = *(this + 8);
                if (v30 >= v29)
                {
                  if (v29 == *(this + 10))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
                    v29 = *(this + 9);
                  }

                  *(this + 9) = v29 + 1;
                  operator new();
                }

                v31 = *(this + 3);
                *(this + 8) = v30 + 1;
                v32 = *(v31 + 8 * v30);
                v50 = 0;
                v33 = *(a2 + 1);
                if (v33 >= *(a2 + 2) || *v33 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
                  {
                    return 0;
                  }
                }

                else
                {
                  v50 = *v33;
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
                if (!proto::gnss::Emergency::TowAssist::MergePartialFromCodedStream(v32, a2) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v36 = *(a2 + 14);
                v37 = __OFSUB__(v36, 1);
                v38 = v36 - 1;
                if (v38 < 0 == v37)
                {
                  *(a2 + 14) = v38;
                }

                v28 = *(a2 + 1);
                v13 = *(a2 + 2);
                if (v28 >= v13)
                {
                  break;
                }

                v39 = *v28;
                if (v39 != 42)
                {
                  if (v39 != 48)
                  {
                    goto LABEL_1;
                  }

                  v14 = v28 + 1;
                  *(a2 + 1) = v14;
                  goto LABEL_88;
                }
              }
            }
          }

          else
          {
            if (v6 != 1)
            {
              if (v6 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v11 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v15 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v15 >= v10 || (v16 = *v15, v16 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
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
              v17 = v15 + 1;
              *(a2 + 1) = v17;
            }

            *(this + 17) |= 1u;
            if (v17 < v10 && *v17 == 16)
            {
              v11 = v17 + 1;
              *(a2 + 1) = v11;
LABEL_46:
              if (v11 >= v10 || (v23 = *v11, v23 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v24 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v23;
                v24 = v11 + 1;
                *(a2 + 1) = v24;
              }

              *(this + 17) |= 2u;
              if (v24 < v10 && *v24 == 24)
              {
                v18 = v24 + 1;
                *(a2 + 1) = v18;
LABEL_54:
                if (v18 >= v10 || (v25 = *v18, v25 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
                  if (!result)
                  {
                    return result;
                  }

                  v26 = *(a2 + 1);
                  v10 = *(a2 + 2);
                }

                else
                {
                  *(this + 4) = v25;
                  v26 = v18 + 1;
                  *(a2 + 1) = v26;
                }

                *(this + 17) |= 4u;
                if (v26 < v10 && *v26 == 32)
                {
                  v12 = v26 + 1;
                  *(a2 + 1) = v12;
                  goto LABEL_62;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 6)
        {
          break;
        }

        if (v6 == 7)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v19 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_96;
        }

        if (v6 != 8)
        {
          if (v6 == 9 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_116;
          }

          goto LABEL_37;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
LABEL_106:
        v48 = 0;
        if (v21 >= v20 || (v44 = *v21, (v44 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48);
          if (!result)
          {
            return result;
          }

          v44 = v48;
        }

        else
        {
          *(a2 + 1) = v21 + 1;
        }

        if (v44 <= 6)
        {
          *(this + 17) |= 0x80u;
          *(this + 14) = v44;
        }

        v45 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v45 < v8 && *v45 == 72)
        {
          v9 = v45 + 1;
          *(a2 + 1) = v9;
LABEL_116:
          if (v9 >= v8 || (v46 = *v9, v46 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
            if (!result)
            {
              return result;
            }

            v47 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 15) = v46;
            v47 = v9 + 1;
            *(a2 + 1) = v47;
          }

          *(this + 17) |= 0x100u;
          if (v47 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v6 == 5)
      {
        if (v7 != 2)
        {
          break;
        }

        goto LABEL_70;
      }

      if (v6 != 6 || (TagFallback & 7) != 0)
      {
        break;
      }

      v14 = *(a2 + 1);
      v13 = *(a2 + 2);
LABEL_88:
      if (v14 >= v13 || (v40 = *v14, v40 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
        if (!result)
        {
          return result;
        }

        v41 = *(a2 + 1);
        v13 = *(a2 + 2);
      }

      else
      {
        *(this + 12) = v40;
        v41 = v14 + 1;
        *(a2 + 1) = v41;
      }

      *(this + 17) |= 0x20u;
      if (v41 < v13 && *v41 == 56)
      {
        v19 = v41 + 1;
        *(a2 + 1) = v19;
LABEL_96:
        v49 = 0;
        if (v19 >= v13 || (v42 = *v19, (v42 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49);
          if (!result)
          {
            return result;
          }

          v42 = v49;
        }

        else
        {
          *(a2 + 1) = v19 + 1;
        }

        if (v42 <= 5)
        {
          *(this + 17) |= 0x40u;
          *(this + 13) = v42;
        }

        v43 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v43 < v20 && *v43 == 64)
        {
          v21 = v43 + 1;
          *(a2 + 1) = v21;
          goto LABEL_106;
        }
      }
    }

LABEL_37:
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