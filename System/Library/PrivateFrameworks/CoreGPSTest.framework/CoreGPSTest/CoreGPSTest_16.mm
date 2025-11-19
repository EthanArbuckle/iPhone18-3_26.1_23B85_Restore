void proto::gpsd::LtlInfo::~LtlInfo(proto::gpsd::LtlInfo *this)
{
  *this = &unk_285863258;
  proto::gpsd::LtlInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285863258;
  proto::gpsd::LtlInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285863258;
  proto::gpsd::LtlInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gpsd::LtlInfo::SharedDtor(void *this)
{
  if (proto::gpsd::LtlInfo::default_instance_ != this)
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

    v4 = v1[4];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    this = v1[5];
    if (this)
    {
      v5 = *(*this + 8);

      return v5();
    }
  }

  return this;
}

uint64_t proto::gpsd::LtlInfo::MergePartialFromCodedStream(proto::gpsd::LtlInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
            v10 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v10 >= v8 || (v11 = *v10, (v11 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47);
              if (!result)
              {
                return result;
              }

              v11 = v47;
              v12 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v12 = v10 + 1;
              *(a2 + 1) = v12;
            }

            *(this + 8) = v11 != 0;
            *(this + 14) |= 1u;
            if (v12 < v8 && *v12 == 16)
            {
              v13 = v12 + 1;
              *(a2 + 1) = v13;
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
              v8 = *(a2 + 2);
              goto LABEL_47;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_30;
            }

            v13 = *(a2 + 1);
            v8 = *(a2 + 2);
LABEL_39:
            v47 = 0;
            if (v13 >= v8 || (v15 = *v13, (v15 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47);
              if (!result)
              {
                return result;
              }

              v15 = v47;
              v16 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v16 = v13 + 1;
              *(a2 + 1) = v16;
            }

            *(this + 3) = v15;
            *(this + 14) |= 2u;
            if (v16 < v8 && *v16 == 24)
            {
              v9 = v16 + 1;
              *(a2 + 1) = v9;
LABEL_47:
              v47 = 0;
              if (v9 >= v8 || (v17 = *v9, (v17 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47);
                if (!result)
                {
                  return result;
                }

                v17 = v47;
              }

              else
              {
                *(a2 + 1) = v9 + 1;
              }

              if (v17 <= 4)
              {
                *(this + 14) |= 4u;
                *(this + 12) = v17;
              }

              v18 = *(a2 + 1);
              if (v18 < *(a2 + 2) && *v18 == 34)
              {
                *(a2 + 1) = v18 + 1;
                goto LABEL_57;
              }
            }
          }
        }

        if (TagFallback >> 3 <= 5)
        {
          break;
        }

        if (v6 == 6)
        {
          if (v7 == 2)
          {
            goto LABEL_85;
          }

          goto LABEL_30;
        }

        if (v6 != 7 || v7 != 2)
        {
          goto LABEL_30;
        }

LABEL_99:
        *(this + 14) |= 0x40u;
        v41 = *(this + 5);
        if (!v41)
        {
          operator new();
        }

        v47 = 0;
        v42 = *(a2 + 1);
        if (v42 >= *(a2 + 2) || *v42 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
          {
            return 0;
          }
        }

        else
        {
          v47 = *v42;
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
        if (!proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::MergePartialFromCodedStream(v41, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v45 = *(a2 + 14);
        v24 = __OFSUB__(v45, 1);
        v46 = v45 - 1;
        if (v46 < 0 == v24)
        {
          *(a2 + 14) = v46;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v6 != 4)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_30;
      }

LABEL_57:
      *(this + 14) |= 8u;
      v19 = *(this + 2);
      if (!v19)
      {
        operator new();
      }

      v47 = 0;
      v20 = *(a2 + 1);
      if (v20 >= *(a2 + 2) || *v20 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
        {
          return 0;
        }
      }

      else
      {
        v47 = *v20;
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
      if (!proto::gpsd::LtlInfo_LtlInitialParams::MergePartialFromCodedStream(v19, a2) || *(a2 + 36) != 1)
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
      if (v26 < *(a2 + 2) && *v26 == 42)
      {
        *(a2 + 1) = v26 + 1;
LABEL_71:
        *(this + 14) |= 0x10u;
        v27 = *(this + 3);
        if (!v27)
        {
          operator new();
        }

        v47 = 0;
        v28 = *(a2 + 1);
        if (v28 >= *(a2 + 2) || *v28 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
          {
            return 0;
          }
        }

        else
        {
          v47 = *v28;
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
        if (!proto::gpsd::LtlInfo_LtlLutParams::MergePartialFromCodedStream(v27, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v31 = *(a2 + 14);
        v24 = __OFSUB__(v31, 1);
        v32 = v31 - 1;
        if (v32 < 0 == v24)
        {
          *(a2 + 14) = v32;
        }

        v33 = *(a2 + 1);
        if (v33 < *(a2 + 2) && *v33 == 50)
        {
          *(a2 + 1) = v33 + 1;
LABEL_85:
          *(this + 14) |= 0x20u;
          v34 = *(this + 4);
          if (!v34)
          {
            operator new();
          }

          v47 = 0;
          v35 = *(a2 + 1);
          if (v35 >= *(a2 + 2) || *v35 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
            {
              return 0;
            }
          }

          else
          {
            v47 = *v35;
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
          if (!proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::MergePartialFromCodedStream(v34, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v38 = *(a2 + 14);
          v24 = __OFSUB__(v38, 1);
          v39 = v38 - 1;
          if (v39 < 0 == v24)
          {
            *(a2 + 14) = v39;
          }

          v40 = *(a2 + 1);
          if (v40 < *(a2 + 2) && *v40 == 58)
          {
            *(a2 + 1) = v40 + 1;
            goto LABEL_99;
          }
        }
      }
    }

    if (v6 == 5 && v7 == 2)
    {
      goto LABEL_71;
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

uint64_t proto::gpsd::LtlInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = *(v5 + 56);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 48), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_12:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(proto::gpsd::LtlInfo::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_15:
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(proto::gpsd::LtlInfo::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(v5 + 32);
  if (!v9)
  {
    v9 = *(proto::gpsd::LtlInfo::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  if ((*(v5 + 56) & 0x40) != 0)
  {
LABEL_21:
    v10 = *(v5 + 40);
    if (!v10)
    {
      v10 = *(proto::gpsd::LtlInfo::default_instance_ + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v10, a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::LtlInfo::ByteSize(proto::gpsd::LtlInfo *this)
{
  v2 = *(this + 14);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_46;
  }

  v3 = 2 * (v2 & 1u);
  if ((v2 & 2) != 0)
  {
    v4 = *(this + 3);
    if ((v4 & 0x80000000) != 0)
    {
      v5 = 11;
    }

    else if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 14);
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
    if ((v2 & 4) == 0)
    {
LABEL_4:
      if ((v2 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_22;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_4;
  }

  v6 = *(this + 12);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = *(this + 14);
  }

  else
  {
    v7 = 2;
  }

  v3 = (v7 + v3);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_22:
  v8 = *(this + 2);
  if (!v8)
  {
    v8 = *(proto::gpsd::LtlInfo::default_instance_ + 16);
  }

  v9 = proto::gpsd::LtlInfo_LtlInitialParams::ByteSize(v8);
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
  v2 = *(this + 14);
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_28:
  v12 = *(this + 3);
  if (!v12)
  {
    v12 = *(proto::gpsd::LtlInfo::default_instance_ + 24);
  }

  v13 = proto::gpsd::LtlInfo_LtlLutParams::ByteSize(v12);
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
  v2 = *(this + 14);
  if ((v2 & 0x20) == 0)
  {
LABEL_7:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }

LABEL_34:
  v16 = *(this + 4);
  if (!v16)
  {
    v16 = *(proto::gpsd::LtlInfo::default_instance_ + 32);
  }

  v17 = proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::ByteSize(v16);
  v18 = v17;
  if (v17 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
  }

  else
  {
    v19 = 1;
  }

  v3 = (v3 + v18 + v19 + 1);
  if ((*(this + 14) & 0x40) != 0)
  {
LABEL_40:
    v20 = *(this + 5);
    if (!v20)
    {
      v20 = *(proto::gpsd::LtlInfo::default_instance_ + 40);
    }

    v21 = proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::ByteSize(v20);
    v22 = v21;
    if (v21 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
    }

    else
    {
      v23 = 1;
    }

    v3 = (v3 + v22 + v23 + 1);
  }

LABEL_46:
  *(this + 13) = v3;
  return v3;
}

void proto::gpsd::LtlInfo::CheckTypeAndMergeFrom(proto::gpsd::LtlInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::LtlInfo::MergeFrom(this, lpsrc);
}

void proto::gpsd::LtlInfo::CopyFrom(proto::gpsd::LtlInfo *this, const proto::gpsd::LtlInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::LtlInfo::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::LtlInfo::Swap(uint64_t this, proto::gpsd::LtlInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v4;
    v5 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v5;
    v6 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v6;
    v7 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v7;
    v8 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v8;
    LODWORD(v8) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v8;
    LODWORD(v8) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v8;
  }

  return this;
}

uint64_t proto::gpsd::Exception::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gpsd::Exception *proto::gpsd::Exception::Exception(proto::gpsd::Exception *this, const proto::gpsd::Exception *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2858632D0;
  *(this + 6) = 0;
  proto::gpsd::Exception::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::Exception::~Exception(proto::gpsd::Exception *this)
{
  *this = &unk_2858632D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858632D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858632D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::Exception::MergePartialFromCodedStream(proto::gpsd::Exception *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      *(this + 2) = v9;
      *(this + 6) |= 1u;
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

        *(this + 3) = v13;
        *(this + 6) |= 2u;
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

          *(this + 4) = v15;
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

unsigned int *proto::gpsd::Exception::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v5[3], a2, a4);
    if ((v5[6] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, this[2], a2, a4);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, v7, a2, a4);
}

uint64_t proto::gpsd::Exception::ByteSize(proto::gpsd::Exception *this)
{
  LOBYTE(v2) = *(this + 24);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_26;
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

    v3 = (v8 + v3);
  }

LABEL_26:
  *(this + 5) = v3;
  return v3;
}

void proto::gpsd::Exception::CheckTypeAndMergeFrom(proto::gpsd::Exception *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::Exception::MergeFrom(this, lpsrc);
}

void proto::gpsd::Exception::CopyFrom(proto::gpsd::Exception *this, const proto::gpsd::Exception *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::Exception::MergeFrom(this, a2);
  }
}

proto::gpsd::Exception *proto::gpsd::Exception::Swap(proto::gpsd::Exception *this, proto::gpsd::Exception *a2)
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

double proto::gpsd::AskBasebandReset::SharedCtor(proto::gpsd::AskBasebandReset *this)
{
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 3) = MEMORY[0x277D82C30];
  *(this + 4) = 0;
  return result;
}

proto::gpsd::AskBasebandReset *proto::gpsd::AskBasebandReset::AskBasebandReset(proto::gpsd::AskBasebandReset *this, const proto::gpsd::AskBasebandReset *a2)
{
  *this = &unk_285863348;
  *(this + 1) = 0;
  v3 = MEMORY[0x277D82C30];
  *(this + 2) = 0;
  *(this + 3) = v3;
  *(this + 4) = 0;
  proto::gpsd::AskBasebandReset::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::AskBasebandReset::~AskBasebandReset(proto::gpsd::AskBasebandReset *this)
{
  *this = &unk_285863348;
  proto::gpsd::AskBasebandReset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285863348;
  proto::gpsd::AskBasebandReset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285863348;
  proto::gpsd::AskBasebandReset::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::AskBasebandReset::SharedDtor(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 != MEMORY[0x277D82C30] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x245D6AEE0);
  }

  return this;
}

uint64_t proto::gpsd::AskBasebandReset::MergePartialFromCodedStream(proto::gpsd::AskBasebandReset *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  do
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
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v8 != 2)
          {
            goto LABEL_21;
          }

          v14 = *(this + 9);
LABEL_30:
          *(this + 9) = v14 | 4;
          if (*(this + 3) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }

        if (v7 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_17:
        v16 = 0;
        if (v11 >= v9 || (v12 = *v11, (v12 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v16);
          if (!result)
          {
            return result;
          }

          v12 = v16;
          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 2) = v12;
        v14 = *(this + 9) | 2;
        *(this + 9) = v14;
        if (v13 < v9 && *v13 == 26)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_30;
        }
      }

      if (v7 != 1 || v8 != 1)
      {
        break;
      }

      v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v16;
      *(this + 9) |= 1u;
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v10 < v9 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
        goto LABEL_17;
      }
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t proto::gpsd::AskBasebandReset::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(2, *(v5 + 16), a2, a4);
    if ((*(v5 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
  v6 = *(v5 + 36);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t proto::gpsd::AskBasebandReset::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  v2 = *(this + 36);
  if (*(this + 36))
  {
    v3 = (v2 << 31 >> 31) & 9;
    if ((v2 & 2) != 0)
    {
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[2]) + 1;
      v2 = *(this + 9);
    }

    if ((v2 & 4) != 0)
    {
      v4 = this[3];
      v5 = *(v4 + 23);
      v6 = v5;
      v7 = *(v4 + 1);
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
        v7 = *(v4 + 1);
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

      v3 = (v3 + v9 + v5 + 1);
    }
  }

  else
  {
    v3 = 0;
  }

  *(this + 8) = v3;
  return v3;
}

void proto::gpsd::AskBasebandReset::CheckTypeAndMergeFrom(proto::gpsd::AskBasebandReset *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::AskBasebandReset::MergeFrom(this, lpsrc);
}

void proto::gpsd::AskBasebandReset::CopyFrom(proto::gpsd::AskBasebandReset *this, const proto::gpsd::AskBasebandReset *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::AskBasebandReset::MergeFrom(this, a2);
  }
}

double proto::gpsd::AskBasebandReset::Swap(proto::gpsd::AskBasebandReset *this, proto::gpsd::AskBasebandReset *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    v3 = *(this + 3);
    v4 = *(a2 + 3);
    *(this + 2) = *(a2 + 2);
    *(this + 3) = v4;
    result = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = result;
    *(a2 + 2) = v2;
    *(a2 + 3) = v3;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return result;
}

void *proto::gpsd::LogEntry::SharedCtor(void *this)
{
  v1 = MEMORY[0x277D82C30];
  this[1] = 0;
  this[2] = v1;
  this[5] = 0;
  this[6] = 0;
  this[3] = 0;
  this[4] = 0;
  return this;
}

proto::gpsd::LogEntry *proto::gpsd::LogEntry::LogEntry(proto::gpsd::LogEntry *this, const proto::gpsd::LogEntry *a2)
{
  *(this + 6) = 0;
  *this = &unk_2858633C0;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x277D82C30];
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  proto::gpsd::LogEntry::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::LogEntry::MergeFrom(proto::gpsd::LogEntry *this, const proto::gpsd::LogEntry *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 52))
  {
    v5 = *(a2 + 1);
    *(this + 13) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 13);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(this + 13) |= 4u;
      v8 = *(this + 3);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 3);
      if (!v9)
      {
        v9 = *(proto::gpsd::LogEntry::default_instance_ + 24);
      }

      proto::gpsd::Request::MergeFrom(v8, v9);
      v4 = *(a2 + 13);
      if ((v4 & 8) == 0)
      {
LABEL_8:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_24;
      }

      goto LABEL_19;
    }
  }

  else if ((*(a2 + 52) & 2) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(a2 + 2);
  *(this + 13) |= 2u;
  v7 = *(this + 2);
  if (v7 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v7, v6);
  v4 = *(a2 + 13);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_19:
  *(this + 13) |= 8u;
  v10 = *(this + 4);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 4);
  if (!v11)
  {
    v11 = *(proto::gpsd::LogEntry::default_instance_ + 32);
  }

  proto::gpsd::Response::MergeFrom(v10, v11);
  if ((*(a2 + 13) & 0x10) != 0)
  {
LABEL_24:
    *(this + 13) |= 0x10u;
    v12 = *(this + 5);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 5);
    if (!v13)
    {
      v13 = *(proto::gpsd::LogEntry::default_instance_ + 40);
    }

    proto::gpsd::Indication::MergeFrom(v12, v13);
  }
}

void sub_245565638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::LogEntry::~LogEntry(proto::gpsd::LogEntry *this)
{
  *this = &unk_2858633C0;
  proto::gpsd::LogEntry::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858633C0;
  proto::gpsd::LogEntry::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858633C0;
  proto::gpsd::LogEntry::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gpsd::LogEntry::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x245D6AEE0](v2, 0x1012C40EC159624);
  }

  if (proto::gpsd::LogEntry::default_instance_ != v1)
  {
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

    this = v1[5];
    if (this)
    {
      v6 = *(*this + 8);

      return v6();
    }
  }

  return this;
}

uint64_t proto::gpsd::LogEntry::default_instance(proto::gpsd::LogEntry *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::LogEntry::default_instance_;
  if (!proto::gpsd::LogEntry::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::LogEntry::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::LogEntry::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 52);
  if (v2)
  {
    *(this + 8) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 16);
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

    v4 = *(this + 52);
    if ((v4 & 4) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = proto::gpsd::Request::Clear(this);
        v4 = *(v1 + 52);
      }
    }

    if ((v4 & 8) != 0)
    {
      v5 = *(v1 + 32);
      if (v5)
      {
        if (*(v5 + 28))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 28) = 0;
        v4 = *(v1 + 52);
      }
    }

    if ((v4 & 0x10) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = proto::gpsd::Indication::Clear(this);
      }
    }
  }

  *(v1 + 52) = 0;
  return this;
}

uint64_t proto::gpsd::LogEntry::MergePartialFromCodedStream(proto::gpsd::LogEntry *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 <= 4)
          {
            break;
          }

          if (v7 == 5)
          {
            if (v8 != 2)
            {
              goto LABEL_22;
            }

            goto LABEL_39;
          }

          if (v7 == 6)
          {
            if (v8 != 2)
            {
              goto LABEL_22;
            }

LABEL_53:
            *(this + 13) |= 8u;
            v24 = *(this + 4);
            if (!v24)
            {
              operator new();
            }

            v38 = 0;
            v25 = *(a2 + 1);
            if (v25 >= *(a2 + 2) || *v25 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38))
              {
                return 0;
              }
            }

            else
            {
              v38 = *v25;
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
            if (!proto::gpsd::Response::MergePartialFromCodedStream(v24, a2) || *(a2 + 36) != 1)
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

            v30 = *(a2 + 1);
            if (v30 < *(a2 + 2) && *v30 == 58)
            {
              *(a2 + 1) = v30 + 1;
              goto LABEL_67;
            }
          }

          else
          {
            if (v7 != 7 || v8 != 2)
            {
              goto LABEL_22;
            }

LABEL_67:
            *(this + 13) |= 0x10u;
            v31 = *(this + 5);
            if (!v31)
            {
              operator new();
            }

            v39 = 0;
            v32 = *(a2 + 1);
            if (v32 >= *(a2 + 2) || *v32 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39))
              {
                return 0;
              }
            }

            else
            {
              v39 = *v32;
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
            if (!proto::gpsd::Indication::MergePartialFromCodedStream(v31, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v35 = *(a2 + 14);
            v21 = __OFSUB__(v35, 1);
            v36 = v35 - 1;
            if (v36 < 0 == v21)
            {
              *(a2 + 14) = v36;
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

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 >= v10 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        v9 = *(this + 13) | 1;
        *(this + 13) = v9;
        if (v13 < v10 && *v13 == 18)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_33;
        }
      }

      if (v7 != 2 || v8 != 2)
      {
        break;
      }

      v9 = *(this + 13);
LABEL_33:
      *(this + 13) = v9 | 2;
      if (*(this + 2) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v15 = *(a2 + 1);
      if (v15 < *(a2 + 2) && *v15 == 42)
      {
        *(a2 + 1) = v15 + 1;
LABEL_39:
        *(this + 13) |= 4u;
        v16 = *(this + 3);
        if (!v16)
        {
          operator new();
        }

        v37 = 0;
        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37))
          {
            return 0;
          }
        }

        else
        {
          v37 = *v17;
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
        if (!proto::gpsd::Request::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
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
        if (v23 < *(a2 + 2) && *v23 == 50)
        {
          *(a2 + 1) = v23 + 1;
          goto LABEL_53;
        }
      }
    }

LABEL_22:
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

uint64_t proto::gpsd::LogEntry::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
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

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 52);
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
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(proto::gpsd::LogEntry::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  v6 = *(v5 + 52);
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
  v9 = *(v5 + 32);
  if (!v9)
  {
    v9 = *(proto::gpsd::LogEntry::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  if ((*(v5 + 52) & 0x10) != 0)
  {
LABEL_15:
    v10 = *(v5 + 40);
    if (!v10)
    {
      v10 = *(proto::gpsd::LogEntry::default_instance_ + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v10, a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::LogEntry::ByteSize(proto::gpsd::LogEntry *this)
{
  LOBYTE(v2) = *(this + 52);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_38;
  }

  if (*(this + 52))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 13);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v4 = *(this + 2);
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
    v2 = *(this + 13);
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

  v3 = (v3 + v9 + v5 + 1);
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v10 = *(this + 3);
    if (!v10)
    {
      v10 = *(proto::gpsd::LogEntry::default_instance_ + 24);
    }

    v11 = proto::gpsd::Request::ByteSize(v10);
    v12 = v11;
    if (v11 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
    }

    else
    {
      v13 = 1;
    }

    v3 = (v3 + v12 + v13 + 1);
    v2 = *(this + 13);
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v14 = *(this + 4);
  if (!v14)
  {
    v14 = *(proto::gpsd::LogEntry::default_instance_ + 32);
  }

  v15 = proto::gpsd::Response::ByteSize(v14);
  v16 = v15;
  if (v15 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
  }

  else
  {
    v17 = 1;
  }

  v3 = (v3 + v16 + v17 + 1);
  if ((*(this + 13) & 0x10) != 0)
  {
LABEL_32:
    v18 = *(this + 5);
    if (!v18)
    {
      v18 = *(proto::gpsd::LogEntry::default_instance_ + 40);
    }

    v19 = proto::gpsd::Indication::ByteSize(v18);
    v20 = v19;
    if (v19 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
    }

    else
    {
      v21 = 1;
    }

    v3 = (v3 + v20 + v21 + 1);
  }

LABEL_38:
  *(this + 12) = v3;
  return v3;
}

void proto::gpsd::LogEntry::CheckTypeAndMergeFrom(proto::gpsd::LogEntry *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::LogEntry::MergeFrom(this, lpsrc);
}

void proto::gpsd::LogEntry::CopyFrom(proto::gpsd::LogEntry *this, const proto::gpsd::LogEntry *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::LogEntry::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::LogEntry::Swap(uint64_t this, proto::gpsd::LogEntry *a2)
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
    v7 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v7;
    LODWORD(v7) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v7;
    LODWORD(v7) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v7;
  }

  return this;
}

uint64_t proto::gpsd::StartContext::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gpsd::StartContext *proto::gpsd::StartContext::StartContext(proto::gpsd::StartContext *this, const proto::gpsd::StartContext *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_285863438;
  *(this + 6) = 0;
  proto::gpsd::StartContext::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::StartContext::~StartContext(proto::gpsd::StartContext *this)
{
  *this = &unk_285863438;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285863438;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285863438;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gpsd::StartContext::MergePartialFromCodedStream(proto::gpsd::StartContext *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        *(this + 16) = v13 != 0;
        *(this + 6) |= 1u;
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

          *(this + 17) = v15 != 0;
          *(this + 6) |= 2u;
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

            *(this + 18) = v17 != 0;
            *(this + 6) |= 4u;
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v19;
        v20 = v11 + 1;
        *(a2 + 1) = v20;
      }

      *(this + 6) |= 8u;
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

        *(this + 19) = v21 != 0;
        *(this + 6) |= 0x10u;
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

uint64_t proto::gpsd::StartContext::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 17), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 8), a2, a4);
    if ((*(v5 + 24) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 18), a2, a4);
  v6 = *(v5 + 24);
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
  v7 = *(v5 + 19);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t proto::gpsd::StartContext::ByteSize(proto::gpsd::StartContext *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = 2 * (v2 & 1) + (v2 & 2) + ((v2 >> 1) & 2);
    if ((v2 & 8) != 0)
    {
      v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v2 = *(this + 6);
    }

    result = ((v2 >> 3) & 2) + v3;
  }

  else
  {
    result = 0;
  }

  *(this + 5) = result;
  return result;
}

void proto::gpsd::StartContext::CheckTypeAndMergeFrom(proto::gpsd::StartContext *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::StartContext::MergeFrom(this, lpsrc);
}

void proto::gpsd::StartContext::CopyFrom(proto::gpsd::StartContext *this, const proto::gpsd::StartContext *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::StartContext::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::StartContext::Swap(uint64_t this, proto::gpsd::StartContext *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    v3 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v3;
    v4 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v4;
    v5 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v5;
    LOBYTE(v5) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v5;
    LODWORD(v5) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v5;
    LODWORD(v5) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v5;
  }

  return this;
}

uint64_t GpsdSessionHandlerManager::instance(GpsdSessionHandlerManager *this)
{
  result = GpsdSessionHandlerManager::fInstance;
  if (!GpsdSessionHandlerManager::fInstance)
  {
    if (GpsdSessionHandlerManager::instance(void)::pred != -1)
    {
      dispatch_once(&GpsdSessionHandlerManager::instance(void)::pred, &__block_literal_global_1);
    }

    return GpsdSessionHandlerManager::fInstance;
  }

  return result;
}

void ___ZN25GpsdSessionHandlerManager8instanceEv_block_invoke()
{
  GpsdSessionHandlerManagerStaticMemory = 0;
  *algn_27EE14C28 = 0;
  qword_27EE14C30 = 0;
  GpsdSessionHandlerManager::fInstance = &GpsdSessionHandlerManagerStaticMemory;
}

void GpsdSessionHandlerManager::instanceDelete(GpsdSessionHandlerManager *this)
{
  if (GpsdSessionHandlerManager::fInstance)
  {
    GpsdSessionHandlerManager::fInstance = 0;
  }

  else
  {
    v5 = v1;
    v6 = v2;
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&dword_2454AA000, v3, OS_LOG_TYPE_FAULT, "GpsdSessionHandlerManager,instanceDelete,nullptr", v4, 2u);
    }
  }
}

void GpsdSessionHandlerManager::addEventHandler(GpsdSessionHandlerManager *this, GpsdSessionHandler *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = *(this + 1);
    v4 = *(this + 2);
    if (v5 >= v4)
    {
      v8 = *this;
      v9 = v5 - *this;
      v10 = v9 >> 3;
      v11 = (v9 >> 3) + 1;
      if (v11 >> 61)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v12 = v4 - v8;
      if (v12 >> 2 > v11)
      {
        v11 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (!(v13 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v10) = a2;
      v6 = 8 * v10 + 8;
      memcpy(0, v8, v9);
      *this = 0;
      *(this + 1) = v6;
      *(this + 2) = 0;
      if (v8)
      {
        operator delete(v8);
      }
    }

    else
    {
      *v5 = a2;
      v6 = (v5 + 1);
    }

    *(this + 1) = v6;
    v14 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v15 = (v6 - *this) >> 3;
      v17 = 134349312;
      v18 = a2;
      v19 = 2050;
      v20 = v15;
      _os_log_impl(&dword_2454AA000, v14, OS_LOG_TYPE_DEFAULT, "GpsdSessionHandlerManager,addEventHandler,%{public}p,size,%{public}zu", &v17, 0x16u);
    }
  }

  else
  {
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v17) = 0;
      _os_log_fault_impl(&dword_2454AA000, v7, OS_LOG_TYPE_FAULT, "GpsdSessionHandlerManager,addEventHandler,nullptr", &v17, 2u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void GpsdSessionHandlerManager::removeEventHandler(GpsdSessionHandler ***this, GpsdSessionHandler *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *this;
    v5 = this[1];
    if (*this != v5)
    {
      while (*v4 != a2)
      {
        if (++v4 == v5)
        {
          goto LABEL_16;
        }
      }

      if (v4 != v5)
      {
        v7 = v4 + 1;
        if (v4 + 1 != v5)
        {
          do
          {
            if (*v7 != a2)
            {
              *v4++ = *v7;
            }

            ++v7;
          }

          while (v7 != v5);
          v5 = this[1];
        }
      }
    }

    if (v4 != v5)
    {
      v5 = v4;
      this[1] = v4;
    }

LABEL_16:
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v5 - *this;
      v11 = 134349312;
      v12 = a2;
      v13 = 2050;
      v14 = v9;
      _os_log_impl(&dword_2454AA000, v8, OS_LOG_TYPE_DEFAULT, "GpsdSessionHandlerManager,removeEventHandler,%{public}p,size,%{public}zu", &v11, 0x16u);
    }
  }

  else
  {
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v11) = 0;
      _os_log_fault_impl(&dword_2454AA000, v6, OS_LOG_TYPE_FAULT, "GpsdSessionHandlerManager,removeEventHandler,nullptr", &v11, 2u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void GpsdSessionHandler::GpsdSessionHandler(GpsdSessionHandler *this)
{
  *this = &unk_2858638D8;
  v2 = GpsdSessionHandlerManager::instance(this);
  GpsdSessionHandlerManager::addEventHandler(v2, this);
}

void GpsdSessionHandler::~GpsdSessionHandler(GpsdSessionHandler *this)
{
  *this = &unk_2858638D8;
  v2 = GpsdSessionHandlerManager::instance(this);
  GpsdSessionHandlerManager::removeEventHandler(v2, this);
}

void GpsdSessionMonitor::setExplicitState(GpsdSessionMonitor *this, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v7[0] = 67240448;
    v7[1] = v5;
    v8 = 1026;
    v9 = a2;
    _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEFAULT, "GpsdSessionMonitor,setExplicitState,current,%{public}d,new,%{public}d", v7, 0xEu);
  }

  *(this + 8) = a2;
  v6 = *MEMORY[0x277D85DE8];
}

void GpsdSessionMonitor::update(GpsdSessionMonitor *this)
{
  if (!*(this + 2))
  {
    GpsdSessionMonitor::start(this);
  }

  *(this + 8) = 0;
  if ((*(this + 8) & 1) == 0)
  {
    v2 = *(*(this + 3) + 8);
    v3 = dispatch_time(0, 10000000000);

    dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  }
}

uint64_t GpsdSessionMonitor::start(uint64_t this)
{
  if (!*(this + 16))
  {
    v1 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v1, OS_LOG_TYPE_DEFAULT, "GpsdSessionMonitor,takeOsTransaction", buf, 2u);
    }

    operator new();
  }

  return this;
}

void GpsdSessionMonitor::autoRelease(GpsdSessionMonitor *this)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(this + 8) == 1)
  {
    v1 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      v2 = "GpsdSessionMonitor,autoRelease,inSession,return";
      v3 = v1;
      v4 = 2;
LABEL_12:
      _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_DEFAULT, v2, &v17, v4);
    }
  }

  else
  {
    v6 = *(this + 2);
    if (v6 && (v7 = *(this + 3)) != 0)
    {
      v8 = *(this + 8);
      *(this + 8) = v8 + 1;
      v9 = GpsdLogObjectGeneral;
      v10 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
      if (v8 > 1)
      {
        if (v10)
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_2454AA000, v9, OS_LOG_TYPE_DEFAULT, "GpsdSessionMonitor,autoRelease,confirmed", &v17, 2u);
        }

        GpsdSessionMonitor::stop(this);
      }

      else
      {
        if (v10)
        {
          v17 = 67240448;
          *v18 = v8 + 1;
          *&v18[4] = 1026;
          *&v18[6] = 3;
          _os_log_impl(&dword_2454AA000, v9, OS_LOG_TYPE_DEFAULT, "GpsdSessionMonitor,autoRelease,confirming,%{public}d/%{public}d", &v17, 0xEu);
          v7 = *(this + 3);
        }

        v11 = *(v7 + 8);
        v12 = dispatch_time(0, 10000000000);
        dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      }
    }

    else
    {
      v13 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(this + 3);
        v15 = *(this + 8);
        v17 = 134349568;
        *v18 = v6;
        *&v18[8] = 2050;
        v19 = v14;
        v20 = 1026;
        v21 = v15;
        v2 = "GpsdSessionMonitor,autoRelease,nullptr,os,%{public}p,timer,%{public}p,inactive,%{public}d";
        v3 = v13;
        v4 = 28;
        goto LABEL_12;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void GpsdSessionMonitor::stop(GpsdSessionMonitor *this)
{
  if (*(this + 8) == 1)
  {
    v1 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v1, OS_LOG_TYPE_DEFAULT, "GpsdSessionMonitor,stop,sessionOveralop,ignore", buf, 2u);
    }
  }

  else
  {
    v3 = (this + 16);
    if (*(this + 2))
    {
      v4 = GpsdSessionHandlerManager::instance(this);
      v5 = *v4;
      v6 = *(v4 + 8);
      while (v5 != v6)
      {
        v7 = *v5++;
        (*(*v7 + 24))(v7);
      }

      v8 = *(this + 3);
      *(this + 3) = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      v9 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_2454AA000, v9, OS_LOG_TYPE_DEFAULT, "GpsdSessionMonitor,releaseOsTransaction", v11, 2u);
      }

      std::unique_ptr<gpsd::util::OsTransaction>::reset[abi:ne200100](v3, 0);
    }

    else
    {
      v10 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
      {
        *v12 = 0;
        _os_log_fault_impl(&dword_2454AA000, v10, OS_LOG_TYPE_FAULT, "GpsdSessionMonitor,fOsTransaction,null", v12, 2u);
      }
    }
  }
}

id **std::unique_ptr<gpsd::util::OsTransaction>::reset[abi:ne200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;

    JUMPOUT(0x245D6AEE0);
  }

  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

dispatch_queue_t GpsdRuntime::dispatchQueueInit(GpsdRuntime *this, const std::string::value_type *a2, const char *a3)
{
  v4 = this;
  v31 = *MEMORY[0x277D85DE8];
  v5 = std::string::basic_string[abi:ne200100]<0>(buf, "com.apple.gpsd.");
  v6 = std::string::append(v5, a2);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v25 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE3(v30) < 0)
  {
    operator delete(*buf);
  }

  v8 = dispatch_queue_attr_make_with_qos_class(0, v4, 0);
  if (!v8)
  {
    v9 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      v10 = __p;
      if (v25 < 0)
      {
        v10 = __p[0];
      }

      *buf = 136446210;
      *&buf[4] = v10;
      _os_log_impl(&dword_2454AA000, v9, OS_LOG_TYPE_DEFAULT, "dispatchQueueInit,nullattr,%{public}s", buf, 0xCu);
    }
  }

  if (v25 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  v12 = dispatch_queue_create(v11, v8);
  if (!v12)
  {
    v16 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v17 = __p;
      if (v25 < 0)
      {
        v17 = __p[0];
      }

      *buf = 136446210;
      *&buf[4] = v17;
      _os_log_error_impl(&dword_2454AA000, v16, OS_LOG_TYPE_ERROR, "dispatchQueueInit,queue,null,%{public}s", buf, 0xCu);
      v16 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdRuntime.cpp";
      v27 = 1026;
      v28 = 23;
      v29 = 2082;
      v30 = "dispatchQueueInit";
      _os_log_error_impl(&dword_2454AA000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v22, "assert");
    std::string::basic_string[abi:ne200100]<0>(v20, "dispatchQueueInit");
    std::string::basic_string[abi:ne200100]<0>(v18, "dispatchQueueInit,queue,null,%{public}s");
    gpsd::util::triggerDiagnosticReport(v22, v20, v18);
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    __assert_rtn("dispatchQueueInit", "GpsdRuntime.cpp", 23, "false && dispatchQueueInit,queue,null,%{public}s");
  }

  v13 = v12;
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_245567BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t GpsdRuntime::bounceExit(NSObject **a1, uint64_t *a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v13[0] = &unk_285863998;
  v13[3] = v13;
  GpsdRuntime::asyncDevice(a1, v13);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v13);
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    *buf = 136446466;
    v10 = v5;
    v11 = 1026;
    v12 = 100;
    _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEFAULT, "#runtime,bounceExit,reason,%{public}s,delay,%{public}d", buf, 0x12u);
  }

  v8[0] = &unk_285863A28;
  v8[3] = v8;
  GpsdRuntime::asyncDevice(a1, v8, 100);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t GpsdRuntime::asyncDevice(NSObject **a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN11GpsdRuntime11asyncDeviceENSt3__18functionIFvvEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_7;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v6, a2);
  dispatch_async(v2, block);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t GpsdRuntime::asyncDevice(NSObject **a1, uint64_t a2, uint64_t a3)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v5 = dispatch_time(0, 1000000 * a3);
  v6 = *a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN11GpsdRuntime11asyncDeviceENSt3__18functionIFvvEEEx_block_invoke;
  block[3] = &__block_descriptor_tmp_9;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v10, a2);
  dispatch_after(v5, v6, block);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v10);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void GpsdRuntime::forceExit(GpsdRuntime *this, const char *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = GpsdLogObjectWarning;
  if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = a2;
    _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_DEFAULT, "#runtime,forceExit,reason,%{public}s", &v4, 0xCu);
  }

  _Exit(-1);
}

uint64_t ___ZN11GpsdRuntime11asyncDeviceENSt3__18functionIFvvEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t ___ZN11GpsdRuntime11asyncDeviceENSt3__18functionIFvvEEEx_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t GpsdRuntime::instance(GpsdRuntime *this)
{
  result = GpsdRuntime::fInstance;
  if (!GpsdRuntime::fInstance)
  {
    if (GpsdRuntime::instance(void)::pred != -1)
    {
      dispatch_once(&GpsdRuntime::instance(void)::pred, &__block_literal_global_2);
    }

    return GpsdRuntime::fInstance;
  }

  return result;
}

void ___ZN11GpsdRuntime8instanceEv_block_invoke()
{
  GpsdRuntimeStaticMemory = 0;
  unk_27EE14C50 = 0;
  qword_27EE14C58 = 0;
  GpsdRuntime::GpsdRuntime(&GpsdRuntimeStaticMemory);
  GpsdRuntime::fInstance = v0;
}

void GpsdRuntime::instanceDelete(GpsdRuntime *this)
{
  if (GpsdRuntime::fInstance)
  {
    GpsdRuntime::fInstance = 0;
  }

  else
  {
    v5 = v1;
    v6 = v2;
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&dword_2454AA000, v3, OS_LOG_TYPE_FAULT, "GpsdRuntime,instanceDelete,nullptr", v4, 2u);
    }
  }
}

void GpsdRuntime::GpsdRuntime(GpsdRuntime *this)
{
  v2 = GpsdPreferences::instance(0);
  v3 = GpsdPreferences::maxSchedulerQos(v2);
  *this = GpsdRuntime::dispatchQueueInit(v3, "deviceQueue", v4);
  v5 = GpsdPreferences::instance(0);
  v6 = GpsdPreferences::maxSchedulerQos(v5);
  *(this + 1) = GpsdRuntime::dispatchQueueInit(v6, "highPriorityQueue", v7);
  *(this + 2) = GpsdRuntime::dispatchQueueInit(0x15, "defaultPriorityQueue", v8);
}

uint64_t std::__function::__func<GpsdRuntime::bounceExit(std::string const&)::$_0,std::allocator<GpsdRuntime::bounceExit(std::string const&)::$_0>,void ()(void)>::operator()(GpsdSessionHandlerManager *a1)
{
  result = GpsdSessionHandlerManager::instance(a1);
  v2 = *result;
  v3 = *(result + 8);
  while (v2 != v3)
  {
    v4 = *v2++;
    result = (*(*v4 + 24))(v4);
  }

  return result;
}

uint64_t std::__function::__func<GpsdRuntime::bounceExit(std::string const&)::$_0,std::allocator<GpsdRuntime::bounceExit(std::string const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<GpsdRuntime::bounceExit(std::string const&)::$_1,std::allocator<GpsdRuntime::bounceExit(std::string const&)::$_1>,void ()(void)>::operator()()
{
  v0 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2454AA000, v0, OS_LOG_TYPE_DEFAULT, "#runtime,bounceExit,exitNow", v1, 2u);
  }

  _Exit(-1);
}

uint64_t std::__function::__func<GpsdRuntime::bounceExit(std::string const&)::$_1,std::allocator<GpsdRuntime::bounceExit(std::string const&)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL deleteFile(const char *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = unlink(a1);
  if (v2)
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v6 = *__error();
      v7 = 136446466;
      v8 = a1;
      v9 = 1026;
      v10 = v6;
      _os_log_error_impl(&dword_2454AA000, v3, OS_LOG_TYPE_ERROR, "VendorLogger,deleteFile could not unlink,%{public}s,%{public}d", &v7, 0x12u);
    }
  }

  result = v2 == 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL getFileModificationTimeAndSize(const char *a1, timespec *a2, uint64_t *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = stat(a1, &v11);
  if (v6)
  {
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v8 = *__error();
      *buf = 136446466;
      v13 = a1;
      v14 = 1026;
      v15 = v8;
      _os_log_error_impl(&dword_2454AA000, v7, OS_LOG_TYPE_ERROR, "VendorLogger,getFileModificationTime could not stat,%{public}s,%{public}d", buf, 0x12u);
    }
  }

  else
  {
    *a2 = v11.st_mtimespec;
    *a3 = v11.st_size;
  }

  result = v6 == 0;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void VendorLogger::copyLatestLogsToPath(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = GpsdPreferences::instance(0);
  GpsdPreferences::vendorLogDirectory(v8, &v34);
  size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v34.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v11 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v12 = "VendorLogger,copyLatestLogsToPath, null source dirpath, cannot copy latest logs";
LABEL_21:
    v18 = v11;
    v19 = 2;
LABEL_22:
    _os_log_error_impl(&dword_2454AA000, v18, OS_LOG_TYPE_ERROR, v12, buf, v19);
    goto LABEL_41;
  }

  if (*(a2 + 23) < 0)
  {
    if (!*(a2 + 8))
    {
LABEL_19:
      v11 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      *buf = 0;
      v12 = "VendorLogger,copyLatestLogsToPath, null destination dirpath, cannot copy latest logs";
      goto LABEL_21;
    }

    v10 = *a2;
  }

  else
  {
    v10 = a2;
    if (!*(a2 + 23))
    {
      goto LABEL_19;
    }
  }

  if (!mkdir(v10, 0x1F8u))
  {
    v20 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      goto LABEL_36;
    }

    if (*(a2 + 23) >= 0)
    {
      v21 = a2;
    }

    else
    {
      v21 = *a2;
    }

    *buf = 136446466;
    v36 = v21;
    v37 = 1026;
    v38 = 504;
    v22 = "VendorLogger,copyLatestLogsToPath,created directory,%{public}s,permissions,%{public}x";
    v23 = v20;
    v24 = 18;
LABEL_35:
    _os_log_impl(&dword_2454AA000, v23, OS_LOG_TYPE_INFO, v22, buf, v24);
LABEL_36:
    v27 = *(a1 + 856);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 1174405120;
    block[2] = ___ZN12VendorLogger20copyLatestLogsToPathERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEij_block_invoke;
    block[3] = &__block_descriptor_tmp_8;
    block[4] = a1;
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v34;
    }

    v31 = a2;
    v32 = a4;
    v33 = a3;
    dispatch_sync(v27, block);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_41;
  }

  v13 = *__error();
  if (v13 == 17)
  {
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    v15 = chmod(v14, 0x1F8u);
    v16 = GpsdLogObjectGeneral;
    if (v15)
    {
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      v17 = *__error();
      *buf = 67240192;
      LODWORD(v36) = v17;
      v12 = "VendorLogger,copyLatestLogsToPath,chmod failed,%{public}d";
      v18 = v16;
      v19 = 8;
      goto LABEL_22;
    }

    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      goto LABEL_36;
    }

    *buf = 67240192;
    LODWORD(v36) = 504;
    v22 = "VendorLogger,copyLatestLogsToPath,directory exists,permissions,%{public}x";
    v23 = v16;
    v24 = 8;
    goto LABEL_35;
  }

  v25 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v26 = a2;
    }

    else
    {
      v26 = *a2;
    }

    *buf = 136446466;
    v36 = v26;
    v37 = 1026;
    v38 = v13;
    v12 = "VendorLogger,copyLatestLogsToPath,could not create directory,%{public}s, error,%{public}d";
    v18 = v25;
    v19 = 18;
    goto LABEL_22;
  }

LABEL_41:
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_24556898C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN12VendorLogger20copyLatestLogsToPathERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEij_block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  VendorLogger::closeLogFile(v2);
  v49 = 0;
  v50 = 0;
  v51 = 0;
  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = a1 + 40;
  }

  gpsd::util::enumerateFiles(v3, v2 + 2, &v49);
  v4 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v50 - v49) >> 3));
  if (v50 == v49)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,false>(v49, v50, v5, 1);
  v47 = 0;
  v7 = v49;
  v6 = v50;
  v8 = &GpsdLogObjectGeneral;
  if (v49 != v50)
  {
    v46 = 0;
    while (1)
    {
      if (*(a1 + 63) >= 0)
      {
        v9 = *(a1 + 63);
      }

      else
      {
        v9 = *(a1 + 48);
      }

      std::string::basic_string[abi:ne200100](&v53, v9 + 1);
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v53;
      }

      else
      {
        v10 = v53.__r_.__value_.__r.__words[0];
      }

      if (v9)
      {
        if (*(a1 + 63) >= 0)
        {
          v11 = (a1 + 40);
        }

        else
        {
          v11 = *(a1 + 40);
        }

        memmove(v10, v11, v9);
      }

      *(&v10->__r_.__value_.__l.__data_ + v9) = 47;
      v12 = *(v7 + 23);
      if (v12 >= 0)
      {
        v13 = v7;
      }

      else
      {
        v13 = *v7;
      }

      if (v12 >= 0)
      {
        v14 = *(v7 + 23);
      }

      else
      {
        v14 = *(v7 + 8);
      }

      v15 = std::string::append(&v53, v13, v14);
      v16 = *&v15->__r_.__value_.__l.__data_;
      v55 = v15->__r_.__value_.__r.__words[2];
      *buf = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (v55 >= 0)
      {
        v17 = buf;
      }

      else
      {
        v17 = *buf;
      }

      if (!getFileModificationTimeAndSize(v17, &v48, &v47))
      {
        goto LABEL_78;
      }

      if (v47 <= *(a1 + 72))
      {
        v39 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
        {
          if (v55 >= 0)
          {
            v40 = buf;
          }

          else
          {
            v40 = *buf;
          }

          LODWORD(v53.__r_.__value_.__l.__data_) = 136446210;
          *(v53.__r_.__value_.__r.__words + 4) = v40;
          _os_log_impl(&dword_2454AA000, v39, OS_LOG_TYPE_INFO, "VendorLogger,copyLatestLogsToPath, skipped file,%{public}s", &v53, 0xCu);
        }

        v38 = 3;
        goto LABEL_79;
      }

      v18 = v8;
      v19 = *(a1 + 64);
      if (*(v19 + 23) >= 0)
      {
        v20 = *(v19 + 23);
      }

      else
      {
        v20 = v19[1];
      }

      std::string::basic_string[abi:ne200100](&v52, v20 + 1);
      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v52;
      }

      else
      {
        v21 = v52.__r_.__value_.__r.__words[0];
      }

      if (v20)
      {
        if (*(v19 + 23) >= 0)
        {
          v22 = v19;
        }

        else
        {
          v22 = *v19;
        }

        memmove(v21, v22, v20);
      }

      *(&v21->__r_.__value_.__l.__data_ + v20) = 47;
      v23 = *(v7 + 23);
      if (v23 >= 0)
      {
        v24 = v7;
      }

      else
      {
        v24 = *v7;
      }

      if (v23 >= 0)
      {
        v25 = *(v7 + 23);
      }

      else
      {
        v25 = *(v7 + 8);
      }

      v26 = std::string::append(&v52, v24, v25);
      v28 = *&v26->__r_.__value_.__l.__data_;
      v53.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v53.__r_.__value_.__l.__data_ = v28;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      v8 = v18;
      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      v29 = v55 >= 0 ? buf : *buf;
      v30 = (v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v53 : v53.__r_.__value_.__r.__words[0];
      v31 = gpsd::util::copyFile(v29, v30, v27);
      v32 = *v18;
      if (v31)
      {
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
        {
          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v33 = &v53;
          }

          else
          {
            v33 = v53.__r_.__value_.__r.__words[0];
          }

          LODWORD(v52.__r_.__value_.__l.__data_) = 136446210;
          *(v52.__r_.__value_.__r.__words + 4) = v33;
          _os_log_impl(&dword_2454AA000, v32, OS_LOG_TYPE_INFO, "VendorLogger,copyLatestLogsToPath, copied %{public}s", &v52, 0xCu);
        }

        v34 = *(a1 + 76);
        v35 = ++v46 < v34;
        v36 = v46 >= v34;
        v37 = v35;
        v38 = 2 * v36;
      }

      else
      {
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
        {
          if (v55 >= 0)
          {
            v41 = buf;
          }

          else
          {
            v41 = *buf;
          }

          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v42 = &v53;
          }

          else
          {
            v42 = v53.__r_.__value_.__r.__words[0];
          }

          LODWORD(v52.__r_.__value_.__l.__data_) = 136446466;
          *(v52.__r_.__value_.__r.__words + 4) = v41;
          WORD2(v52.__r_.__value_.__r.__words[1]) = 2082;
          *(&v52.__r_.__value_.__r.__words[1] + 6) = v42;
          _os_log_error_impl(&dword_2454AA000, v32, OS_LOG_TYPE_ERROR, "VendorLogger,copyLatestLogsToPath, failed src,%{public}s, dest,%{public}s", &v52, 0x16u);
        }

        v37 = 0;
        v38 = 2;
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (v37)
      {
        goto LABEL_78;
      }

LABEL_79:
      if (SHIBYTE(v55) < 0)
      {
        operator delete(*buf);
      }

      if (v38 == 3 || !v38)
      {
        v7 += 24;
        if (v7 != v6)
        {
          continue;
        }
      }

      goto LABEL_95;
    }

    operator delete(v53.__r_.__value_.__l.__data_);
    if (!v37)
    {
      goto LABEL_79;
    }

LABEL_78:
    v38 = 0;
    goto LABEL_79;
  }

  v46 = 0;
LABEL_95:
  v43 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v44 = *(a1 + 76);
    *buf = 67240448;
    *&buf[4] = v46;
    *&buf[8] = 1026;
    *&buf[10] = v44;
    _os_log_impl(&dword_2454AA000, v43, OS_LOG_TYPE_DEFAULT, "VendorLogger,copyLatestLogsToPath, Copied,%{public}d, RequestedMax,%{public}d", buf, 0xEu);
  }

  *buf = &v49;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  v45 = *MEMORY[0x277D85DE8];
}

void sub_245568E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  *(v33 - 128) = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v33 - 128));
  _Unwind_Resume(a1);
}

void VendorLogger::closeLogFile(VendorLogger *this)
{
  v36 = *MEMORY[0x277D85DE8];
  VendorLogger::flushCompression(this);
  *(this + 868) = 0;
  if (*(this + 48))
  {
    std::ostream::flush();
    if (!std::filebuf::close())
    {
      std::ios_base::clear((this + *(*(this + 32) - 24) + 256), *(this + *(*(this + 32) - 24) + 288) | 4);
    }

    v2 = (this + 824);
    if (*(this + 847) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, *(this + 103), *(this + 104));
    }

    else
    {
      *&buf.__r_.__value_.__l.__data_ = *&v2->__pn_.__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = *(this + 105);
    }

    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v29, this + 5, this + 11);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 8, this + 11);
    size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = buf.__r_.__value_.__l.__size_;
    }

    if ((v30 & 0x80u) == 0)
    {
      v6 = v29;
    }

    else
    {
      v6 = v29[0];
    }

    if ((v30 & 0x80u) == 0)
    {
      v7 = v30;
    }

    else
    {
      v7 = v29[1];
    }

    if (v7)
    {
      if (size >= v7)
      {
        v20 = p_buf + size;
        v21 = *v6;
        v22 = p_buf;
        do
        {
          v23 = size - v7;
          if (v23 == -1)
          {
            break;
          }

          v24 = memchr(v22, v21, v23 + 1);
          if (!v24)
          {
            break;
          }

          v25 = v24;
          if (!memcmp(v24, v6, v7))
          {
            if (v25 != v20)
            {
              v9 = v25 - p_buf;
              if (v25 - p_buf != -1)
              {
                goto LABEL_25;
              }
            }

            break;
          }

          v22 = (v25 + 1);
          size = v20 - (v25 + 1);
        }

        while (size >= v7);
      }

      v8 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 136446210;
        v33 = p_buf;
        _os_log_impl(&dword_2454AA000, v8, OS_LOG_TYPE_DEFAULT, "VendorLogger,closeLogFile,Could not archive,%{public}s", v32, 0xCu);
      }
    }

    else
    {
      v9 = 0;
LABEL_25:
      if ((v28 & 0x80u) == 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      if ((v28 & 0x80u) == 0)
      {
        v11 = v28;
      }

      else
      {
        v11 = __p[1];
      }

      std::string::replace(&buf, v9, v7, v10, v11);
      v12 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v14 = (this + 824);
        if (*(this + 847) < 0)
        {
          v14 = v2->__pn_.__r_.__value_.__r.__words[0];
        }

        v15 = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v15 = buf.__r_.__value_.__r.__words[0];
        }

        *v32 = 136446466;
        v33 = v14;
        v34 = 2082;
        v35 = v15;
        _os_log_impl(&dword_2454AA000, v12, OS_LOG_TYPE_DEFAULT, "VendorLogger,closeLogFile,Archiving,Old name,%{public}s,New name,%{public}s", v32, 0x16u);
      }

      if (*(this + 847) < 0)
      {
        v2 = v2->__pn_.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &buf;
      }

      else
      {
        v16 = buf.__r_.__value_.__r.__words[0];
      }

      rename(v2, v16, v13);
      if (v17)
      {
        v18 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          v26 = *__error();
          *v32 = 67240192;
          LODWORD(v33) = v26;
          _os_log_error_impl(&dword_2454AA000, v18, OS_LOG_TYPE_ERROR, "VendorLogger,closeLogFile,rename failed,%{public}d", v32, 8u);
        }
      }
    }

    if (*(this + 847) < 0)
    {
      **(this + 103) = 0;
      *(this + 104) = 0;
    }

    else
    {
      *(this + 824) = 0;
      *(this + 847) = 0;
    }

    if (v28 < 0)
    {
      operator delete(__p[0]);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_INFO, "VendorLogger,closeLogFile,No output to close", &buf, 2u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2455692D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

const char *algorithmName(int a1)
{
  if (a1 > 773)
  {
    if (a1 != 774)
    {
      if (a1 == 2049)
      {
        return "lzfse";
      }

      return "unk";
    }

    return "lzma";
  }

  else
  {
    if (a1 != 256)
    {
      if (a1 == 517)
      {
        return "zlib";
      }

      return "unk";
    }

    return "lz4";
  }
}

void VendorLogger::VendorLogger(VendorLogger *this, const VendorLogger::Config *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  *this = &unk_285863B90;
  v4 = (this + 8);
  *(this + 1) = &unk_2858638D8;
  v5 = GpsdSessionHandlerManager::instance(this);
  GpsdSessionHandlerManager::addEventHandler(v5, v4);
  *this = &unk_285863AD8;
  *(this + 1) = &unk_285863B18;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(this + 4) = *(a2 + 2);
    *(this + 1) = v6;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v7 = *(a2 + 24);
    *(this + 7) = *(a2 + 5);
    *(this + 40) = v7;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v8 = *(a2 + 3);
    *(this + 10) = *(a2 + 8);
    *(this + 4) = v8;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v9 = *(a2 + 72);
    *(this + 13) = *(a2 + 11);
    *(this + 88) = v9;
  }

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external((this + 112), *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v10 = *(a2 + 6);
    *(this + 16) = *(a2 + 14);
    *(this + 7) = v10;
  }

  v11 = *(a2 + 120);
  v12 = *(a2 + 136);
  v13 = *(a2 + 19);
  *(this + 22) = 0;
  *(this + 21) = v13;
  *(this + 152) = v12;
  *(this + 136) = v11;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 60) = 2049;
  *(this + 122) = 0;
  *(this + 31) = 0;
  *(this + 90) = 0;
  v14 = MEMORY[0x277D82860] + 64;
  *(this + 84) = MEMORY[0x277D82860] + 64;
  v15 = *(MEMORY[0x277D82810] + 16);
  v16 = *(MEMORY[0x277D82810] + 8);
  *(this + 32) = v16;
  *(this + *(v16 - 24) + 256) = v15;
  v17 = (this + *(*(this + 32) - 24) + 256);
  std::ios_base::init(v17, this + 264);
  v18 = MEMORY[0x277D82860] + 24;
  v17[1].__vftable = 0;
  v17[1].__fmtflags_ = -1;
  *(this + 32) = v18;
  *(this + 84) = v14;
  v19 = MEMORY[0x245D6AC40](this + 264);
  *(this + 853) = 0u;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 109) = 0;
  *(this + 111) = 0;
  *(this + 110) = 0;
  v20 = GpsdRuntime::instance(v19);
  *(this + 106) = *v20;
  v21 = *(GpsdRuntime::instance(v20) + 16);
  *(this + 107) = v21;
  if (!v21)
  {
    v31 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v31, OS_LOG_TYPE_ERROR, "#gvl,fQueue,null", buf, 2u);
      v31 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v47 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdVendorLogger.cpp";
      v48 = 1026;
      v49 = 150;
      v50 = 2082;
      v51 = "VendorLogger";
      _os_log_error_impl(&dword_2454AA000, v31, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v45, "assert");
    std::string::basic_string[abi:ne200100]<0>(v43, "VendorLogger");
    std::string::basic_string[abi:ne200100]<0>(__p, "#gvl,fQueue,null");
    gpsd::util::triggerDiagnosticReport(v45, v43, __p);
    if (v42 < 0)
    {
      operator delete(__p[0]);
    }

    if (v44 < 0)
    {
      operator delete(v43[0]);
    }

    v32 = "false && #gvl,fQueue,null";
    v33 = 150;
    if (v45[23] < 0)
    {
      v34 = v45;
LABEL_60:
      operator delete(*v34);
    }

LABEL_61:
    __assert_rtn("VendorLogger", "GpsdVendorLogger.cpp", v33, v32);
  }

  v22 = GpsdPreferences::instance(0);
  if (!GpsdPreferences::getLogLevel(v22))
  {
    v35 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v35, OS_LOG_TYPE_ERROR, "#gvl,ctor,isLoggingToFileEnabled,false", buf, 2u);
      v35 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v47 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdVendorLogger.cpp";
      v48 = 1026;
      v49 = 151;
      v50 = 2082;
      v51 = "VendorLogger";
      _os_log_error_impl(&dword_2454AA000, v35, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v40, "assert");
    std::string::basic_string[abi:ne200100]<0>(v38, "VendorLogger");
    std::string::basic_string[abi:ne200100]<0>(v36, "#gvl,ctor,isLoggingToFileEnabled,false");
    gpsd::util::triggerDiagnosticReport(v40, v38, v36);
    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    v32 = "false && #gvl,ctor,isLoggingToFileEnabled,false";
    v33 = 151;
    if ((v40[23] & 0x80000000) != 0)
    {
      v34 = v40;
      goto LABEL_60;
    }

    goto LABEL_61;
  }

  v23 = GpsdPreferences::instance(0);
  if (GpsdPreferences::vendorLogLz4(v23))
  {
    v24 = 256;
LABEL_24:
    *(this + 244) = 1;
    *(this + 60) = v24;
    goto LABEL_25;
  }

  v25 = GpsdPreferences::instance(0);
  if (GpsdPreferences::vendorLogLzfse(v25))
  {
    v24 = 2049;
    goto LABEL_24;
  }

  v26 = GpsdPreferences::instance(0);
  if (GpsdPreferences::vendorLogZlib(v26))
  {
    v24 = 517;
    goto LABEL_24;
  }

  if ((*(this + 244) & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_25:
  v27 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v28 = *(this + 60);
    if (v28 > 773)
    {
      if (v28 == 774)
      {
        v29 = "lzma";
        goto LABEL_38;
      }

      if (v28 == 2049)
      {
        v29 = "lzfse";
        goto LABEL_38;
      }
    }

    else
    {
      if (v28 == 256)
      {
        v29 = "lz4";
        goto LABEL_38;
      }

      if (v28 == 517)
      {
        v29 = "zlib";
LABEL_38:
        *buf = 136446210;
        v47 = v29;
        _os_log_impl(&dword_2454AA000, v27, OS_LOG_TYPE_INFO, "VendorLogger,compression enabled,%{public}s", buf, 0xCu);
        goto LABEL_39;
      }
    }

    v29 = "unk";
    goto LABEL_38;
  }

LABEL_39:
  v30 = *MEMORY[0x277D85DE8];
}

void sub_245569AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v44 + 111) < 0)
  {
    operator delete(*(v44 + 88));
  }

  if (*(v44 + 87) < 0)
  {
    operator delete(*(v44 + 64));
  }

  if (*(v44 + 63) < 0)
  {
    operator delete(*(v44 + 40));
  }

  if (*(v44 + 39) < 0)
  {
    operator delete(*(v44 + 16));
  }

  GpsdSessionHandler::~GpsdSessionHandler(v45);
  _Unwind_Resume(a1);
}

void VendorLogger::Config::~Config(void **this)
{
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t VendorLogger::generateDefaultConfig@<X0>(uint64_t a1@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a1, "gpsd");
  std::string::basic_string[abi:ne200100]<0>((a1 + 24), "o");
  std::string::basic_string[abi:ne200100]<0>((a1 + 48), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 72), "log");
  *(a1 + 96) = 0u;
  v3 = (a1 + 96);
  *(a1 + 141) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 152) = -1;
  v4 = GpsdPreferences::instance(0);
  GpsdPreferences::vendorLogRetentionDays(v4);
  *(a1 + 120) = ((v5 * 24.0) * 3600.0);
  v6 = GpsdPreferences::instance(0);
  *(a1 + 128) = GpsdPreferences::vendorLogRotationSizeMB(v6) << 20;
  v7 = GpsdPreferences::instance(0);
  *(a1 + 136) = GpsdPreferences::vendorLogMaxDirectorySizeMB(v7) << 20;
  v8 = GpsdPreferences::instance(0);
  *(a1 + 144) = GpsdPreferences::vendorLogMaxNumberOfFiles(v8);
  v9 = GpsdPreferences::instance(0);
  *(a1 + 148) = GpsdPreferences::vendorLogPrefixWithTimestamp(v9);
  v10 = GpsdPreferences::instance(0);
  GpsdPreferences::vendorLogDirectory(v10, &v13);
  if (*(a1 + 119) < 0)
  {
    operator delete(*v3);
  }

  *v3 = v13;
  *(a1 + 112) = v14;
  v11 = GpsdPreferences::instance(0);
  result = GpsdPreferences::vendorLogBufferSizeAllowedKB(v11);
  *(a1 + 152) = result << 10;
  return result;
}

void VendorLogger::~VendorLogger(VendorLogger *this)
{
  *this = &unk_285863AD8;
  v2 = (this + 8);
  *(this + 1) = &unk_285863B18;
  v3 = *(this + 107);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN12VendorLoggerD2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_14;
  block[4] = this;
  dispatch_sync(v3, block);
  std::unique_ptr<VendorLogger::MemoryStat>::reset[abi:ne200100](this + 111, 0);
  if (*(this + 847) < 0)
  {
    operator delete(*(this + 103));
  }

  v4 = MEMORY[0x277D82810];
  v5 = *MEMORY[0x277D82810];
  *(this + 32) = *MEMORY[0x277D82810];
  *(this + *(v5 - 24) + 256) = *(v4 + 24);
  MEMORY[0x245D6AC50](this + 264);
  std::ostream::~ostream();
  MEMORY[0x245D6AE70](this + 672);
  v6 = *(this + 22);
  if (v6)
  {
    *(this + 23) = v6;
    operator delete(v6);
  }

  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  *(this + 1) = &unk_2858638D8;
  v7 = GpsdSessionHandlerManager::instance(v6);
  GpsdSessionHandlerManager::removeEventHandler(v7, v2);
}

{
  VendorLogger::~VendorLogger(this);

  JUMPOUT(0x245D6AEE0);
}

void non-virtual thunk toVendorLogger::~VendorLogger(VendorLogger *this)
{
  VendorLogger::~VendorLogger((this - 8));
}

{
  VendorLogger::~VendorLogger((this - 8));

  JUMPOUT(0x245D6AEE0);
}

void VendorLogger::flushCompression(compression_stream *this)
{
  v28 = *MEMORY[0x277D85DE8];
  if (BYTE4(this[6].dst_ptr) == 1 && BYTE5(this[6].dst_ptr) == 1)
  {
    v2 = GpsdLogObjectGeneral;
    do
    {
      while (1)
      {
        v17 = 0;
        this[5].src_ptr = &v17;
        this[5].src_size = 0;
        src_ptr = this[4].src_ptr;
        v4 = this[4].src_size - src_ptr;
        this[5].dst_ptr = src_ptr;
        this[5].dst_size = v4;
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349824;
          v19 = &v17;
          v20 = 2050;
          v21 = 0;
          v22 = 2050;
          v23 = src_ptr;
          v24 = 2050;
          v25 = v4;
          _os_log_debug_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEBUG, "VendorLogger,flushCompression,before,%{public}p,%{public}zu,%{public}p,%{public}zu", buf, 0x2Au);
        }

        v5 = compression_stream_process(this + 5, 1);
        if (v5 > COMPRESSION_STATUS_END)
        {
          v10 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2454AA000, v10, OS_LOG_TYPE_ERROR, "VendorLogger,flushCompression,failed to finalize stream", buf, 2u);
          }
        }

        else
        {
          v6 = this[4].src_size - this[4].src_ptr;
          dst_size = this[5].dst_size;
          v8 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v19 = (v6 - dst_size);
            _os_log_debug_impl(&dword_2454AA000, v8, OS_LOG_TYPE_DEBUG, "VendorLogger,flushCompression,flushed bytes,%{public}zu", buf, 0xCu);
          }

          if (v6 != dst_size)
          {
            v9 = this[4].src_ptr;
            std::ostream::write();
          }
        }

        v2 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
        {
          break;
        }

        if (v5)
        {
          goto LABEL_17;
        }
      }

      v11 = this[5].src_ptr;
      src_size = this[5].src_size;
      dst_ptr = this[5].dst_ptr;
      v14 = this[5].dst_size;
      *buf = 134350080;
      v19 = v11;
      v20 = 2050;
      v21 = src_size;
      v22 = 2050;
      v23 = dst_ptr;
      v24 = 2050;
      v25 = v14;
      v26 = 1026;
      v27 = v5;
      _os_log_debug_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEBUG, "VendorLogger,flushCompression,after,%{public}p,%{public}zu,%{public}p,%{public}zu,status,%{public}d", buf, 0x30u);
      v2 = GpsdLogObjectGeneral;
    }

    while (v5 == COMPRESSION_STATUS_OK);
LABEL_17:
    BYTE5(this[6].dst_ptr) = 0;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEBUG, "VendorLogger,flushCompression,destroying", buf, 2u);
    }

    if (compression_stream_destroy(this + 5))
    {
      v15 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2454AA000, v15, OS_LOG_TYPE_ERROR, "VendorLogger,flushCompression,failed to destroy stream", buf, 2u);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  result = std::string::basic_string[abi:ne200100](a1, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void VendorLogger::pruneLogFiles(VendorLogger *this)
{
  v65 = *MEMORY[0x277D85DE8];
  if (clock_gettime(_CLOCK_REALTIME, &__tp))
  {
    v1 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v45 = *__error();
      LODWORD(v59.__r_.__value_.__l.__data_) = 67240192;
      HIDWORD(v59.__r_.__value_.__r.__words[0]) = v45;
      _os_log_error_impl(&dword_2454AA000, v1, OS_LOG_TYPE_ERROR, "VendorLogger,pruneLogFiles,clock_gettime failed,%{public}d", &v59, 8u);
    }
  }

  tv_sec = __tp.tv_sec;
  v3 = *(this + 17);
  if (v3 >= __tp.tv_sec)
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v59.__r_.__value_.__l.__data_) = 134349056;
      *(v59.__r_.__value_.__r.__words + 4) = tv_sec;
      _os_log_error_impl(&dword_2454AA000, v4, OS_LOG_TYPE_ERROR, "VendorLogger,pruneLogFiles,timespecNow too small to use,%{public}ld", &v59, 0xCu);
      v3 = *(this + 17);
    }
  }

  v5 = GpsdPreferences::instance(0);
  GpsdPreferences::vendorLogDirectory(v5, &v55);
  if (v57 < 0)
  {
    if (v56)
    {
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v6 = v55;
      goto LABEL_12;
    }

LABEL_90:
    v43 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v59.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_2454AA000, v43, OS_LOG_TYPE_DEFAULT, "VendorLogger.pruneLogFiles: null path, cannot delete old logs", &v59, 2u);
    }

    goto LABEL_92;
  }

  if (!v57)
  {
    goto LABEL_90;
  }

  v52 = 0;
  v53 = 0;
  v6 = &v55;
  v54 = 0;
LABEL_12:
  gpsd::util::enumerateFiles(v6, this + 2, &v52);
  v7 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v53 - v52) >> 3));
  if (v53 == v52)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,false>(v52, v53, v8, 1);
  v50 = 0;
  v9 = v52;
  v10 = v53;
  if (v52 != v53)
  {
    v11 = 0;
    v12 = 0;
    v47 = tv_sec - v3;
    while (1)
    {
      if ((v57 & 0x80u) == 0)
      {
        v13 = v57;
      }

      else
      {
        v13 = v56;
      }

      std::string::basic_string[abi:ne200100](&v59, v13 + 1);
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v59;
      }

      else
      {
        v14 = v59.__r_.__value_.__r.__words[0];
      }

      if (v13)
      {
        if ((v57 & 0x80u) == 0)
        {
          v15 = &v55;
        }

        else
        {
          v15 = v55;
        }

        memmove(v14, v15, v13);
      }

      *(&v14->__r_.__value_.__l.__data_ + v13) = 47;
      v16 = *(v9 + 23);
      if (v16 >= 0)
      {
        v17 = v9;
      }

      else
      {
        v17 = *v9;
      }

      if (v16 >= 0)
      {
        v18 = *(v9 + 23);
      }

      else
      {
        v18 = *(v9 + 8);
      }

      v19 = std::string::append(&v59, v17, v18);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v49 = v19->__r_.__value_.__r.__words[2];
      *__p = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      if (v49 >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      if (!getFileModificationTimeAndSize(v21, &v51, &v50))
      {
        goto LABEL_76;
      }

      v22 = v50;
      v23 = v50 + v11;
      v24 = GpsdLogObjectGeneral;
      v25 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
      v26 = v51.tv_sec;
      if (v25)
      {
        if (v49 >= 0)
        {
          v41 = __p;
        }

        else
        {
          v41 = __p[0];
        }

        LODWORD(v59.__r_.__value_.__l.__data_) = 136447234;
        *(v59.__r_.__value_.__r.__words + 4) = v41;
        WORD2(v59.__r_.__value_.__r.__words[1]) = 2050;
        *(&v59.__r_.__value_.__r.__words[1] + 6) = v51.tv_sec;
        HIWORD(v59.__r_.__value_.__r.__words[2]) = 2050;
        v60 = v47;
        v61 = 2050;
        v62 = v22;
        v63 = 2050;
        v64 = v23;
        _os_log_debug_impl(&dword_2454AA000, v24, OS_LOG_TYPE_DEBUG, "VendorLogger,pruneLogFiles,looking at,%{public}s,modTime,%{public}ld,floorTime,%{public}ld,size,%{public}lld,new total,%{public}lld", &v59, 0x34u);
      }

      if (v26 < v47)
      {
        if (v49 >= 0)
        {
          v27 = __p;
        }

        else
        {
          v27 = __p[0];
        }

        deleteFile(v27);
        v28 = GpsdLogObjectGeneral;
        if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_75;
        }

        if (v49 >= 0)
        {
          v29 = __p;
        }

        else
        {
          v29 = __p[0];
        }

        LODWORD(v59.__r_.__value_.__l.__data_) = 136446722;
        *(v59.__r_.__value_.__r.__words + 4) = v29;
        WORD2(v59.__r_.__value_.__r.__words[1]) = 2050;
        *(&v59.__r_.__value_.__r.__words[1] + 6) = v26;
        HIWORD(v59.__r_.__value_.__r.__words[2]) = 2050;
        v60 = v47;
        v30 = v28;
        v31 = "VendorLogger,pruneLogFiles,deleted due to age,%{public}s,fileTime,%{public}ld,targetTime,%{public}ld";
        v32 = 32;
        goto LABEL_74;
      }

      if (v12 >= *(this + 40))
      {
        break;
      }

      if (v22)
      {
        if (v23 <= *(this + 19))
        {
          ++v12;
          v11 = v23;
        }

        else
        {
          if (v49 >= 0)
          {
            v33 = __p;
          }

          else
          {
            v33 = __p[0];
          }

          deleteFile(v33);
          v34 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
          {
            if (v49 >= 0)
            {
              v42 = __p;
            }

            else
            {
              v42 = __p[0];
            }

            LODWORD(v59.__r_.__value_.__l.__data_) = 136446210;
            *(v59.__r_.__value_.__r.__words + 4) = v42;
            _os_log_debug_impl(&dword_2454AA000, v34, OS_LOG_TYPE_DEBUG, "VendorLogger,pruneLogFiles,deleted due to size,%{public}s", &v59, 0xCu);
          }

          ++v12;
          v11 = v23;
        }

        goto LABEL_76;
      }

      if (v49 >= 0)
      {
        v38 = __p;
      }

      else
      {
        v38 = __p[0];
      }

      deleteFile(v38);
      v39 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        if (v49 >= 0)
        {
          v40 = __p;
        }

        else
        {
          v40 = __p[0];
        }

        LODWORD(v59.__r_.__value_.__l.__data_) = 136446210;
        *(v59.__r_.__value_.__r.__words + 4) = v40;
        v30 = v39;
        v31 = "VendorLogger,pruneLogFiles,deleted due to zero size,%{public}s";
        v32 = 12;
LABEL_74:
        _os_log_debug_impl(&dword_2454AA000, v30, OS_LOG_TYPE_DEBUG, v31, &v59, v32);
      }

LABEL_75:
      ++v12;
LABEL_76:
      if (SHIBYTE(v49) < 0)
      {
        operator delete(__p[0]);
      }

      v9 += 24;
      if (v9 == v10)
      {
        goto LABEL_89;
      }
    }

    if (v49 >= 0)
    {
      v35 = __p;
    }

    else
    {
      v35 = __p[0];
    }

    deleteFile(v35);
    v36 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_75;
    }

    if (v49 >= 0)
    {
      v37 = __p;
    }

    else
    {
      v37 = __p[0];
    }

    LODWORD(v59.__r_.__value_.__l.__data_) = 136446466;
    *(v59.__r_.__value_.__r.__words + 4) = v37;
    WORD2(v59.__r_.__value_.__r.__words[1]) = 1026;
    *(&v59.__r_.__value_.__r.__words[1] + 6) = v12 + 1;
    v30 = v36;
    v31 = "VendorLogger,pruneLogFiles,deleted due to num files,%{public}s,num files,%{public}d";
    v32 = 18;
    goto LABEL_74;
  }

LABEL_89:
  v59.__r_.__value_.__r.__words[0] = &v52;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v59);
LABEL_92:
  if (v57 < 0)
  {
    operator delete(v55);
  }

  v44 = *MEMORY[0x277D85DE8];
}

void sub_24556AB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  *(v37 - 176) = &a29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v37 - 176));
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void VendorLogger::ensureLogFileIsOpen(VendorLogger *this)
{
  if ((*(this + 868) & 1) == 0)
  {
    VendorLogger::openNewLogFile(this);
  }
}

void VendorLogger::openNewLogFile(VendorLogger *this)
{
  v8 = *MEMORY[0x277D85DE8];
  VendorLogger::ensureDirectoryExists(this);
  if (*(this + 868) == 1)
  {
    VendorLogger::closeLogFile(this);
    VendorLogger::pruneLogFiles(this);
  }

  VendorLogger::initCompression(this);
  VendorLogger::generateFilename(this, &v6);
  v2 = (this + 824);
  if (*(this + 847) < 0)
  {
    operator delete(*v2);
  }

  *v2 = v6;
  *(this + 105) = v7;
  std::ofstream::open();
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 847) < 0)
    {
      v2 = *v2;
    }

    LODWORD(v6) = 136446210;
    *(&v6 + 4) = v2;
    _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_DEFAULT, "VendorLogger,opening,%{public}s", &v6, 0xCu);
  }

  if (!*(this + 48))
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6) = 0;
      _os_log_error_impl(&dword_2454AA000, v4, OS_LOG_TYPE_ERROR, "VendorLogger,failed to open", &v6, 2u);
    }
  }

  *(this + 868) = 1;
  v5 = *MEMORY[0x277D85DE8];
}

void VendorLogger::ensureLogFileIsClosed(VendorLogger *this)
{
  if (*(this + 868) == 1)
  {
    VendorLogger::closeLogFile(this);

    VendorLogger::pruneLogFiles(this);
  }
}

void VendorLogger::ensureDirectoryExists(VendorLogger *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = this + 112;
  v3 = *(this + 135);
  v4 = this + 112;
  if (v3 < 0)
  {
    v4 = *v2;
  }

  if (mkdir(v4, 0x1F8u))
  {
    v5 = *__error();
    if (v5 == 17)
    {
      if (*(this + 135) < 0)
      {
        v2 = *v2;
      }

      v6 = chmod(v2, 0x1F8u);
      v7 = GpsdLogObjectGeneral;
      if (v6)
      {
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          v8 = *__error();
          v15 = 67240192;
          LODWORD(v16) = v8;
          v9 = "VendorLogger,chmod failed,%{public}d";
          v10 = v7;
          v11 = 8;
LABEL_18:
          _os_log_error_impl(&dword_2454AA000, v10, OS_LOG_TYPE_ERROR, v9, &v15, v11);
        }
      }

      else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        v15 = 67240192;
        LODWORD(v16) = 504;
        _os_log_debug_impl(&dword_2454AA000, v7, OS_LOG_TYPE_DEBUG, "VendorLogger,directory exists,permissions,%{public}x", &v15, 8u);
      }
    }

    else
    {
      v13 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        if (*(this + 135) < 0)
        {
          v2 = *v2;
        }

        v15 = 136446466;
        v16 = v2;
        v17 = 1026;
        v18 = v5;
        v9 = "VendorLogger,could not create directory,%{public}s,%{public}d";
        v10 = v13;
        v11 = 18;
        goto LABEL_18;
      }
    }
  }

  else
  {
    v12 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      if (*(this + 135) < 0)
      {
        v2 = *v2;
      }

      v15 = 136446466;
      v16 = v2;
      v17 = 1026;
      v18 = 504;
      _os_log_impl(&dword_2454AA000, v12, OS_LOG_TYPE_INFO, "VendorLogger,created directory,%{public}s,permissions,%{public}x", &v15, 0x12u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void VendorLogger::initCompression(VendorLogger *this)
{
  if (*(this + 244) == 1)
  {
    v10 = v1;
    v11 = v2;
    *(this + 31) = 0;
    v4 = *(this + 22);
    v5 = *(this + 23) - v4;
    if (v5 >> 15)
    {
      if (v5 != 0x8000)
      {
        *(this + 23) = v4 + 0x8000;
      }
    }

    else
    {
      std::vector<unsigned char>::__append(this + 22, 0x8000 - v5);
    }

    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2454AA000, v6, OS_LOG_TYPE_DEBUG, "VendorLogger,initCompression", buf, 2u);
    }

    if (compression_stream_init(this + 5, COMPRESSION_STREAM_ENCODE, *(this + 60)))
    {
      v7 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_error_impl(&dword_2454AA000, v7, OS_LOG_TYPE_ERROR, "VendorLogger,initCompression,Could not init stream", v8, 2u);
      }

      *(this + 244) = 0;
      *(this + 23) = *(this + 22);
    }

    else
    {
      *(this + 245) = 1;
    }
  }
}

void VendorLogger::generateFilename(VendorLogger *this@<X0>, uint64_t a2@<X8>)
{
  v56 = *MEMORY[0x277D85DE8];
  snprintf(__str, 8uLL, "%03d", *(this + 216));
  ++*(this + 216);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  VendorLogger::isoTimestampString(v52);
  std::string::basic_string[abi:ne200100]<0>(v50, __str);
  if (*GpsdPreferences::instance(0) == 3)
  {
    MEMORY[0x245D6AB60](v52, "unittest");
    MEMORY[0x245D6AB60](v50, "000");
  }

  if (*(this + 135) >= 0)
  {
    v4 = *(this + 135);
  }

  else
  {
    v4 = *(this + 15);
  }

  v5 = &v43;
  std::string::basic_string[abi:ne200100](&v43, v4 + 1);
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v43.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if (*(this + 135) >= 0)
    {
      v6 = this + 112;
    }

    else
    {
      v6 = *(this + 14);
    }

    memmove(v5, v6, v4);
  }

  *(&v5->__r_.__value_.__l.__data_ + v4) = 47;
  v7 = *(this + 39);
  if (v7 >= 0)
  {
    v8 = this + 16;
  }

  else
  {
    v8 = *(this + 2);
  }

  if (v7 >= 0)
  {
    v9 = *(this + 39);
  }

  else
  {
    v9 = *(this + 3);
  }

  v10 = std::string::append(&v43, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if ((v53 & 0x80u) == 0)
  {
    v12 = v52;
  }

  else
  {
    v12 = v52[0];
  }

  if ((v53 & 0x80u) == 0)
  {
    v13 = v53;
  }

  else
  {
    v13 = v52[1];
  }

  v14 = std::string::append(&v44, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v45, "_");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (v51 >= 0)
  {
    v18 = v50;
  }

  else
  {
    v18 = v50[0];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v18);
  if ((v42 & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if ((v42 & 0x80u) == 0)
  {
    v20 = v42;
  }

  else
  {
    v20 = __p[1];
  }

  v21 = std::string::append(&v46, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v47, ".");
  v24 = *&v23->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = *(this + 63);
  if (v25 >= 0)
  {
    v26 = this + 40;
  }

  else
  {
    v26 = *(this + 5);
  }

  if (v25 >= 0)
  {
    v27 = *(this + 63);
  }

  else
  {
    v27 = *(this + 6);
  }

  v28 = std::string::append(&v48, v26, v27);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = *(this + 111);
  if (v30 >= 0)
  {
    v31 = this + 88;
  }

  else
  {
    v31 = *(this + 11);
  }

  if (v30 >= 0)
  {
    v32 = *(this + 111);
  }

  else
  {
    v32 = *(this + 12);
  }

  v33 = std::string::append(&v49, v31, v32);
  v34 = v33->__r_.__value_.__r.__words[0];
  v54[0] = v33->__r_.__value_.__l.__size_;
  *(v54 + 7) = *(&v33->__r_.__value_.__r.__words[1] + 7);
  v35 = HIBYTE(v33->__r_.__value_.__r.__words[2]);
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v36 = SHIBYTE(v49.__r_.__value_.__r.__words[2]);
  *(a2 + 15) = *(v54 + 7);
  v37 = v54[0];
  *a2 = v34;
  *(a2 + 8) = v37;
  *(a2 + 23) = v35;
  if (v36 < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (*(this + 244) == 1)
  {
    std::string::append(a2, ".");
    v38 = *(this + 60);
    if (v38 > 773)
    {
      if (v38 == 774)
      {
        v39 = "lzma";
        goto LABEL_73;
      }

      if (v38 == 2049)
      {
        v39 = "lzfse";
        goto LABEL_73;
      }
    }

    else
    {
      if (v38 == 256)
      {
        v39 = "lz4";
        goto LABEL_73;
      }

      if (v38 == 517)
      {
        v39 = "zlib";
LABEL_73:
        std::string::append(a2, v39);
        goto LABEL_74;
      }
    }

    v39 = "unk";
    goto LABEL_73;
  }

LABEL_74:
  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  v40 = *MEMORY[0x277D85DE8];
}

void sub_24556B518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (*(v57 - 137) < 0)
  {
    operator delete(*(v57 - 160));
  }

  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v57 - 105) < 0)
  {
    operator delete(*(v57 - 128));
  }

  if (*(v57 - 81) < 0)
  {
    operator delete(*(v57 - 104));
  }

  if (*(v56 + 23) < 0)
  {
    operator delete(*v56);
  }

  _Unwind_Resume(exception_object);
}

VendorLogger::MemoryStat *VendorLogger::notifyStop(VendorLogger *this)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_INFO, "VendorLogger,notifyStop,received", buf, 2u);
  }

  v3 = *(this + 107);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN12VendorLogger10notifyStopEv_block_invoke;
  block[3] = &__block_descriptor_tmp_15;
  block[4] = this;
  dispatch_sync(v3, block);
  result = std::unique_ptr<VendorLogger::MemoryStat>::reset[abi:ne200100](this + 111, 0);
  atomic_store(0, this + 109);
  atomic_store(0, this + 110);
  return result;
}

void ___ZN12VendorLogger10notifyStopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 868) == 1)
  {
    VendorLogger::closeLogFile(*(a1 + 32));

    VendorLogger::pruneLogFiles(v1);
  }
}

VendorLogger::MemoryStat *std::unique_ptr<VendorLogger::MemoryStat>::reset[abi:ne200100](VendorLogger::MemoryStat **a1, VendorLogger::MemoryStat *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    VendorLogger::MemoryStat::~MemoryStat(result);

    JUMPOUT(0x245D6AEE0);
  }

  return result;
}

void VendorLogger::flush(VendorLogger *this)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "VendorLogger,flush,received", buf, 2u);
  }

  v3 = *(this + 107);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN12VendorLogger5flushEv_block_invoke;
  block[3] = &__block_descriptor_tmp_16_0;
  block[4] = this;
  dispatch_sync(v3, block);
}

uint64_t ___ZN12VendorLogger5flushEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  VendorLogger::flushCompression(v1);
  VendorLogger::initCompression(v1);

  return std::ostream::flush();
}

void VendorLogger::prepareForTermination(VendorLogger *this)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_DEFAULT, "VendorLogger,prepareForTermination,received", buf, 2u);
  }

  v3 = *(this + 107);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN12VendorLogger21prepareForTerminationEv_block_invoke;
  block[3] = &__block_descriptor_tmp_17;
  block[4] = this;
  dispatch_sync(v3, block);
}

void ___ZN12VendorLogger21prepareForTerminationEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 868) == 1)
  {
    VendorLogger::closeLogFile(*(a1 + 32));

    VendorLogger::pruneLogFiles(v1);
  }
}

void VendorLogger::log()
{
  v0[0] = 0;
  v0[1] = v0;
  v0[2] = 0x3002000000;
  v0[3] = __Block_byref_object_copy__0;
  v0[4] = __Block_byref_object_dispose__0;
  operator new();
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }
}

void ___ZN12VendorLogger3logEONSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
  v5 = v3;
  VendorLogger::logBounce(v1, &v5);
  v4 = v5;
  if (v5)
  {

    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }
}

void sub_24556BBC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void VendorLogger::logBounce(uint64_t a1, uint64_t *a2)
{
  VendorLogger::ensureMemoryStatExists(a1);
  shouldPauseLogging = VendorLogger::MemoryStat::shouldPauseLogging(*(a1 + 888), a2);
  if (!shouldPauseLogging)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3002000000;
    v10[3] = __Block_byref_object_copy__0;
    v5 = *a2;
    *a2 = 0;
    v10[4] = __Block_byref_object_dispose__0;
    v11 = v5;
    v6 = gpsd::util::getMachContinuousTimeNs(shouldPauseLogging) * 0.000000001;
    v7 = *(a1 + 856);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN12VendorLogger9logBounceENSt3__110unique_ptrINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_14default_deleteIS7_EEEE_block_invoke;
    block[3] = &unk_278E80818;
    block[4] = v10;
    block[5] = a1;
    *&block[6] = v6;
    dispatch_async(v7, block);
    _Block_object_dispose(v10, 8);
    v8 = v11;
    v11 = 0;
    if (v8)
    {
      std::default_delete<std::string>::operator()[abi:ne200100](v8);
    }
  }
}

void sub_24556BCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  _Block_object_dispose(&a17, 8);
  v23 = a22;
  a22 = 0;
  if (v23)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

uint64_t VendorLogger::ensureMemoryStatExists(uint64_t this)
{
  if (!*(this + 888))
  {
    operator new();
  }

  return this;
}

BOOL VendorLogger::MemoryStat::shouldPauseLogging(unint64_t *a1, uint64_t *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = atomic_load(a1[5]);
  v4 = v2 - v3;
  if (v2 >= v3)
  {
    if (a1[2] <= v4)
    {
      v8 = v2 - v3;
    }

    else
    {
      v8 = a1[2];
    }

    a1[2] = v8;
    v9 = *a1;
    v10 = *a2;
    v11 = *(*a2 + 23);
    v6 = v4 > *a1;
    if (v4 <= *a1)
    {
      if (v11 < 0)
      {
        v13 = (*(v10 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      else
      {
        v13 = 22;
      }

      a1[4] = v13 + v2;
      v14 = a1[3];
    }

    else
    {
      if (v11 < 0)
      {
        v12 = (*(v10 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      else
      {
        v12 = 22;
      }

      v14 = a1[3] + v12;
      a1[3] = v14;
    }

    v15 = v14 + v4;
    if (v14 + v4 > 0x100000 && v15 > a1[1] + 0x100000)
    {
      a1[1] = v15;
      v16 = GpsdLogObjectGeneral;
      v17 = 16 * (v4 > v9);
      if (os_log_type_enabled(GpsdLogObjectGeneral, v17))
      {
        v18 = atomic_load((a1[5] + 8));
        v21 = 134350592;
        v22 = v4 >> 10;
        v23 = 2050;
        v24 = v8 >> 10;
        v25 = 2050;
        v26 = v9 >> 10;
        v27 = 2050;
        v28 = v15 >> 10;
        v29 = 2050;
        v30 = v14;
        v31 = 1026;
        v32 = v4 > v9;
        v33 = 2050;
        v34 = v18;
        _os_log_impl(&dword_2454AA000, v16, v17, "VendorLogger,addtl memory,%{public}zu,KB,max,%{public}zu,KB,allowed,%{public}zu,KB,sum,%{public}zu,KB,dropped,%{public}zu,B,pause,%{public}d,backup,%{public}.3f,sec", &v21, 0x44u);
      }
    }
  }

  else
  {
    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      v21 = 134349312;
      v22 = v2;
      v23 = 2050;
      v24 = v3;
      _os_log_fault_impl(&dword_2454AA000, v5, OS_LOG_TYPE_FAULT, "VendorLogger,shouldPauseLogging,bufferSize,in,%{public}zu,out,%{public}zu", &v21, 0x16u);
    }

    v6 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v6;
}

void ___ZN12VendorLogger9logBounceENSt3__110unique_ptrINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_14default_deleteIS7_EEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
  v4 = v3;
  VendorLogger::binaryLogWorker(v1, &v4, *(a1 + 48));
  if (v3)
  {

    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }
}

void sub_24556C038(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void VendorLogger::binaryLogWorker(uint64_t a1, const unsigned __int8 **a2, double a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((*a2)[23] < 0)
  {
    v6 = (*(*a2 + 2) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v6 = 22;
  }

  atomic_fetch_add((a1 + 872), v6);
  v7 = gpsd::util::getMachContinuousTimeNs(a1) * 0.000000001 - a3;
  v8 = COERCE_DOUBLE(atomic_load((a1 + 880)));
  if (v7 <= v8)
  {
    v7 = v8;
  }

  atomic_store(*&v7, (a1 + 880));
  if ((*(a1 + 868) & 1) == 0)
  {
    VendorLogger::openNewLogFile(a1);
  }

  if (*(a1 + 244) == 1)
  {
    if (*(a1 + 164) == 1)
    {
      v9 = snprintf(__str, 0x10uLL, "%.3f,", a3);
      if (v9 >= 1)
      {
        VendorLogger::writeCompressed(a1, __str, v9);
      }
    }

    v10 = *a2;
    v11 = *(*a2 + 23);
    if (v11 < 0)
    {
      v10 = *v10;
      v11 = *(*a2 + 1);
    }

    VendorLogger::writeCompressed(a1, v10, v11);
  }

  else if ((*(a1 + 256 + *(*(a1 + 256) - 24) + 32) & 5) == 0)
  {
    if (*(a1 + 164) == 1 && snprintf(__str, 0x10uLL, "%.3f,", a3) >= 1)
    {
      v12 = strlen(__str);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 256), __str, v12);
    }

    if (((*a2)[23] & 0x8000000000000000) != 0)
    {
      v13 = **a2;
      v14 = *(*a2 + 1);
    }

    std::ostream::write();
  }

  v15 = *MEMORY[0x277D85DE8];
}

void forceDelaysTestCase(void)
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = GpsdPreferences::instance(0);
  v1 = GpsdPreferences::genericTestCase(v0);
  if (v1 == 1)
  {
    v2 = (gpsd::util::getMachContinuousTimeNs(v1) * 0.000000001);
    if (forceDelaysTestCase(void)::LastSleepMctSec != v2)
    {
      v3 = forceDelaysTestCase(void)::SleepIntervalSec;
      if (!(v2 % (forceDelaysTestCase(void)::SleepIntervalSec + 3)))
      {
        v4 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 67240448;
          v9 = v2;
          v10 = 1026;
          v11 = v3;
          _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEFAULT, "VendorLogger,debugonly,presleep,%{public}d,delay,%{public}d", &v8, 0xEu);
          v3 = forceDelaysTestCase(void)::SleepIntervalSec;
        }

        sleep(v3);
        v5 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 67240448;
          v9 = v2;
          v10 = 1026;
          v11 = forceDelaysTestCase(void)::SleepIntervalSec;
          _os_log_impl(&dword_2454AA000, v5, OS_LOG_TYPE_DEFAULT, "VendorLogger,debugonly,aftersleep,%{public}d,delay,%{public}d", &v8, 0xEu);
        }

        v6 = forceDelaysTestCase(void)::SleepIntervalSec;
        if (forceDelaysTestCase(void)::SleepIntervalSec >= 80)
        {
          v6 = 80;
        }

        forceDelaysTestCase(void)::SleepIntervalSec = v6 + 10;
      }
    }

    forceDelaysTestCase(void)::LastSleepMctSec = v2;
  }

  v7 = *MEMORY[0x277D85DE8];
}

void VendorLogger::writeCompressed(VendorLogger *this, const unsigned __int8 *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(this + 244) != 1)
  {
    goto LABEL_27;
  }

  if (*(this + 245))
  {
    v4 = *(this + 22);
    *(this + 25) = v4;
    *(this + 27) = a2;
    *(this + 28) = a3;
    *(this + 26) = *(this + 23) - v4;
    v5 = (this + 256);
    while (1)
    {
      v6 = compression_stream_process(this + 5, 0);
      if (v6)
      {
        break;
      }

      v7 = *(this + 23) - *(this + 22);
      v8 = *(this + 26);
      v9 = v7 - v8;
      if (v7 == v8)
      {
        if (!*(this + 28))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v7 < v8)
        {
          v10 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349312;
            v19 = v9;
            v20 = 2050;
            v21 = v7;
            _os_log_error_impl(&dword_2454AA000, v10, OS_LOG_TYPE_ERROR, "VendorLogger,Excessive bytes_to_print,%{public}zu,limit,%{public}zu", buf, 0x16u);
            v9 = *(this + 23) - *(this + 22);
          }

          else
          {
            v9 = v7;
          }
        }

        if ((*(this + *(*v5 - 24) + 288) & 5) != 0)
        {
          v11 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_2454AA000, v11, OS_LOG_TYPE_INFO, "VendorLogger,stream unavailable for compressed output", buf, 2u);
          }
        }

        else
        {
          std::ostream::write();
        }

        *(this + 31) += v9;
        v12 = *(this + 22);
        v13 = *(this + 23) - v12;
        *(this + 25) = v12;
        *(this + 26) = v13;
      }
    }

    if (v6 == COMPRESSION_STATUS_END)
    {
      v15 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v16 = "VendorLogger,writeCompressed,unexpected COMPRESSION_STATUS_END";
    }

    else
    {
      v15 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v16 = "VendorLogger,writeCompressed,unexpected COMPRESSION_STATUS_ERROR";
    }

    _os_log_error_impl(&dword_2454AA000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
LABEL_25:
    if (*(this + 31) > *(this + 18))
    {
      VendorLogger::openNewLogFile(this);
    }

    goto LABEL_27;
  }

  if ((VendorLogger::writeCompressed(unsigned char const*,unsigned long)::kWarningPrinted & 1) == 0)
  {
    v14 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2454AA000, v14, OS_LOG_TYPE_DEFAULT, "VendorLogger,log dropped since compression spun down", buf, 2u);
    }

    VendorLogger::writeCompressed(unsigned char const*,unsigned long)::kWarningPrinted = 1;
  }

LABEL_27:
  v17 = *MEMORY[0x277D85DE8];
}

void VendorLogger::MemoryStat::~MemoryStat(VendorLogger::MemoryStat *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v3 = *(this + 3);
    v4 = *(this + 2) >> 10;
    v5 = *this >> 10;
    v6 = *(this + 4);
    v7 = atomic_load(*(this + 5));
    v8 = atomic_load((*(this + 5) + 8));
    v10 = 134350336;
    v11 = v4;
    v12 = 2050;
    v13 = v5;
    v14 = 2050;
    v15 = v6;
    v16 = 2050;
    v17 = v7;
    v18 = 2050;
    v19 = v3;
    v20 = 2050;
    v21 = v8;
    _os_log_impl(&dword_2454AA000, v2, OS_LOG_TYPE_INFO, "VendorLogger,MemoryStat,dtor,sizeMax,%{public}zu,KB,allowed,%{public}zu,KB,buffer,in,%{public}zu,B,out,%{public}zu,B,dropped,%{public}zu,B,backup,%{public}.3f,sec", &v10, 0x3Eu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

_BYTE *VendorLogger::isoTimestampString@<X0>(_BYTE *a1@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = time(0);
  v3 = localtime(&v6);
  if (v6 < 0 || !v3)
  {
    strcpy(__s, "unknown_time");
  }

  else
  {
    strftime(__s, 0x20uLL, "%Y%m%dT_%H-%M-%S%z", v3);
  }

  result = std::string::basic_string[abi:ne200100]<0>(a1, __s);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,false>(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v199 = *MEMORY[0x277D85DE8];
LABEL_2:
  v6 = a2 - 24;
  v7 = a2 - 48;
  v193 = a2;
  v8 = a2 - 72;
  v9 = a1;
  while (1)
  {
    a1 = v9;
    v10 = v193;
    v11 = v193 - v9;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v193 - v9) >> 3);
    v13 = v12 - 2;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        goto LABEL_185;
      }

      if (v12 == 2)
      {
        if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, v9))
        {
          goto LABEL_185;
        }

LABEL_116:
        v129 = *v9;
        v196 = *(v9 + 16);
        v195 = v129;
        v130 = *v6;
        *(v9 + 16) = *(v6 + 16);
        *v9 = v130;
        v131 = v195;
        v132 = v196;
LABEL_117:
        *(v6 + 16) = v132;
        *v6 = v131;
        goto LABEL_185;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      v127 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v9 + 24), v9);
      v128 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, (v9 + 24));
      if (v127)
      {
        if (v128)
        {
          goto LABEL_116;
        }

        v188 = *v9;
        v196 = *(v9 + 16);
        v195 = v188;
        *v9 = *(v9 + 24);
        *(v9 + 16) = *(v9 + 40);
        *(v9 + 24) = v195;
        *(v9 + 40) = v196;
        if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, (v9 + 24)))
        {
          v131 = *(v9 + 24);
          v195 = v131;
          v132 = *(v9 + 40);
          v196 = v132;
          v189 = *(v6 + 16);
          *(v9 + 24) = *v6;
          *(v9 + 40) = v189;
          goto LABEL_117;
        }

LABEL_185:
        v190 = *MEMORY[0x277D85DE8];
        return;
      }

      if (!v128)
      {
        goto LABEL_185;
      }

      v195 = *(v9 + 24);
      v178 = v195;
      v196 = *(v9 + 40);
      v179 = v196;
      v180 = *(v6 + 16);
      *(v9 + 24) = *v6;
      *(v9 + 40) = v180;
      *(v6 + 16) = v179;
      *v6 = v178;
LABEL_173:
      if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v9 + 24), v9))
      {
        v181 = *v9;
        v196 = *(v9 + 16);
        v195 = v181;
        *v9 = *(v9 + 24);
        *(v9 + 16) = *(v9 + 40);
        *(v9 + 24) = v195;
        *(v9 + 40) = v196;
      }

      goto LABEL_185;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,0>(v9, (v9 + 24), (v9 + 48), (v9 + 72));
      if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, (v9 + 72)))
      {
        goto LABEL_185;
      }

      v195 = *(v9 + 72);
      v119 = v195;
      v196 = *(v9 + 88);
      v120 = v196;
      v121 = *(v6 + 16);
      *(v9 + 72) = *v6;
      *(v9 + 88) = v121;
      *(v6 + 16) = v120;
      *v6 = v119;
      if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v9 + 72), (v9 + 48)))
      {
        goto LABEL_185;
      }

      v122 = *(v9 + 64);
      v123 = *(v9 + 48);
      *(v9 + 48) = *(v9 + 72);
      *(v9 + 64) = *(v9 + 88);
      *(v9 + 72) = v123;
      *(v9 + 88) = v122;
      if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v9 + 48), (v9 + 24)))
      {
        goto LABEL_185;
      }

      v124 = *(v9 + 40);
      v125 = *(v9 + 24);
      *(v9 + 24) = *(v9 + 48);
      *(v9 + 40) = *(v9 + 64);
      *(v9 + 48) = v125;
      *(v9 + 64) = v124;
      goto LABEL_173;
    }

LABEL_10:
    if (v11 <= 575)
    {
      v134 = (v9 + 24);
      v136 = v9 == v193 || v134 == v193;
      if (a4)
      {
        if (!v136)
        {
          v137 = 0;
          v138 = v9;
          do
          {
            v139 = v138;
            v138 = v134;
            if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v134, v139))
            {
              v140 = *v138;
              v196 = *(v138 + 16);
              v195 = v140;
              *(v138 + 8) = 0;
              *(v138 + 16) = 0;
              *v138 = 0;
              v141 = v137;
              while (1)
              {
                v142 = v9 + v141;
                *(v142 + 24) = *(v9 + v141);
                *(v142 + 40) = *(v9 + v141 + 16);
                *(v142 + 23) = 0;
                *v142 = 0;
                if (!v141)
                {
                  break;
                }

                v141 -= 24;
                if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v195, (v141 + v9)))
                {
                  v143 = v9 + v141 + 24;
                  goto LABEL_136;
                }
              }

              v143 = v9;
LABEL_136:
              v144 = v195;
              *(v143 + 16) = v196;
              *v143 = v144;
            }

            v134 = (v138 + 24);
            v137 += 24;
          }

          while (v138 + 24 != v193);
        }
      }

      else if (!v136)
      {
        v182 = v9 - 24;
        do
        {
          v183 = a1;
          a1 = v134;
          if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v134, v183))
          {
            v184 = *a1;
            v196 = *(a1 + 16);
            v195 = v184;
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
            *a1 = 0;
            v185 = v182;
            do
            {
              *(v185 + 48) = *(v185 + 24);
              *(v185 + 64) = *(v185 + 40);
              *(v185 + 47) = 0;
              *(v185 + 24) = 0;
              v186 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v195, v185);
              v185 -= 24;
            }

            while (v186);
            v187 = v195;
            *(v185 + 64) = v196;
            *(v185 + 48) = v187;
          }

          v134 = (a1 + 24);
          v182 += 24;
        }

        while (a1 + 24 != v193);
      }

      goto LABEL_185;
    }

    if (!a3)
    {
      if (v9 != v193)
      {
        v145 = v13 >> 1;
        v146 = v13 >> 1;
        do
        {
          v147 = v146;
          if (v145 >= v146)
          {
            v148 = (2 * v146) | 1;
            v149 = a1 + 24 * v148;
            if (2 * v146 + 2 < v12 && std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 24 * v148), (v149 + 24)))
            {
              v149 += 24;
              v148 = 2 * v147 + 2;
            }

            v150 = a1 + 24 * v147;
            if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v149, v150))
            {
              v151 = *v150;
              v196 = *(v150 + 16);
              v195 = v151;
              *(v150 + 8) = 0;
              *(v150 + 16) = 0;
              *v150 = 0;
              do
              {
                v152 = v149;
                v153 = *v149;
                *(v150 + 16) = *(v149 + 16);
                *v150 = v153;
                *(v149 + 23) = 0;
                *v149 = 0;
                if (v145 < v148)
                {
                  break;
                }

                v154 = (2 * v148) | 1;
                v149 = a1 + 24 * v154;
                v155 = 2 * v148 + 2;
                if (v155 < v12 && std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 24 * v154), (v149 + 24)))
                {
                  v149 += 24;
                  v154 = v155;
                }

                v150 = v152;
                v148 = v154;
              }

              while (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v149, &v195));
              v156 = v195;
              *(v152 + 16) = v196;
              *v152 = v156;
              v10 = v193;
            }
          }

          v146 = v147 - 1;
        }

        while (v147);
        v157 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
        do
        {
          v158 = 0;
          v159 = v10;
          v192 = *a1;
          *&v197 = *(a1 + 8);
          *(&v197 + 7) = *(a1 + 15);
          v194 = *(a1 + 23);
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          v160 = a1;
          do
          {
            v161 = v160 + 24 * v158;
            v162 = v161 + 24;
            v163 = (2 * v158) | 1;
            v164 = 2 * v158 + 2;
            if (v164 < v157)
            {
              v165 = v161 + 48;
              if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v161 + 24), (v161 + 48)))
              {
                v162 = v165;
                v163 = v164;
              }
            }

            v166 = *v162;
            *(v160 + 16) = *(v162 + 16);
            *v160 = v166;
            *(v162 + 23) = 0;
            *v162 = 0;
            v160 = v162;
            v158 = v163;
          }

          while (v163 <= (v157 - 2) / 2);
          v10 -= 3;
          if (v162 == v159 - 3)
          {
            *v162 = v192;
            v176 = *(&v197 + 7);
            *(v162 + 8) = v197;
            *(v162 + 15) = v176;
            *(v162 + 23) = v194;
          }

          else
          {
            v167 = *v10;
            *(v162 + 16) = *(v159 - 1);
            *v162 = v167;
            *(v159 - 3) = v192;
            v168 = v197;
            *(v159 - 9) = *(&v197 + 7);
            *(v159 - 2) = v168;
            *(v159 - 1) = v194;
            v169 = v162 - a1 + 24;
            if (v169 >= 25)
            {
              v170 = (-2 - 0x5555555555555555 * (v169 >> 3)) >> 1;
              v171 = a1 + 24 * v170;
              if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v171, v162))
              {
                v172 = *v162;
                v196 = *(v162 + 16);
                v195 = v172;
                *(v162 + 8) = 0;
                *(v162 + 16) = 0;
                *v162 = 0;
                do
                {
                  v173 = v171;
                  v174 = *v171;
                  *(v162 + 16) = *(v171 + 16);
                  *v162 = v174;
                  *(v171 + 23) = 0;
                  *v171 = 0;
                  if (!v170)
                  {
                    break;
                  }

                  v170 = (v170 - 1) >> 1;
                  v171 = a1 + 24 * v170;
                  v162 = v173;
                }

                while (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v171, &v195));
                v175 = v195;
                *(v173 + 16) = v196;
                *v173 = v175;
              }
            }
          }
        }

        while (v157-- > 2);
      }

      goto LABEL_185;
    }

    v14 = v12 >> 1;
    v15 = v9 + 24 * v14;
    if (v11 >= 0xC01)
    {
      v16 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 24 * v14), a1);
      v17 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, (a1 + 24 * v14));
      if (v16)
      {
        if (v17)
        {
          v18 = *a1;
          v196 = *(a1 + 16);
          v195 = v18;
          v19 = *v6;
          *(a1 + 16) = *(v6 + 16);
          *a1 = v19;
        }

        else
        {
          v36 = *a1;
          v196 = *(a1 + 16);
          v195 = v36;
          v37 = *v15;
          *(a1 + 16) = *(v15 + 16);
          *a1 = v37;
          v38 = v195;
          *(v15 + 16) = v196;
          *v15 = v38;
          if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, (a1 + 24 * v14)))
          {
            goto LABEL_28;
          }

          v39 = *v15;
          v196 = *(v15 + 16);
          v195 = v39;
          v40 = *v6;
          *(v15 + 16) = *(v6 + 16);
          *v15 = v40;
        }

        v41 = v195;
        *(v6 + 16) = v196;
        *v6 = v41;
      }

      else if (v17)
      {
        v24 = *v15;
        v196 = *(v15 + 16);
        v195 = v24;
        v25 = *v6;
        *(v15 + 16) = *(v6 + 16);
        *v15 = v25;
        v26 = v195;
        *(v6 + 16) = v196;
        *v6 = v26;
        if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 24 * v14), a1))
        {
          v27 = *a1;
          v196 = *(a1 + 16);
          v195 = v27;
          v28 = *v15;
          *(a1 + 16) = *(v15 + 16);
          *a1 = v28;
          v29 = v195;
          *(v15 + 16) = v196;
          *v15 = v29;
        }
      }

LABEL_28:
      v42 = a1 + 24 * v14 - 24;
      v43 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v42, (a1 + 24));
      v44 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v7, v42);
      if (v43)
      {
        if (v44)
        {
          v45 = *(a1 + 24);
          v195 = v45;
          v46 = *(a1 + 40);
          v196 = v46;
          v47 = *(v7 + 16);
          *(a1 + 24) = *v7;
          *(a1 + 40) = v47;
        }

        else
        {
          v195 = *(a1 + 24);
          v60 = v195;
          v196 = *(a1 + 40);
          v61 = v196;
          v62 = *(a1 + 24 * v14 - 8);
          *(a1 + 24) = *v42;
          *(a1 + 40) = v62;
          *(a1 + 24 * v14 - 8) = v61;
          *v42 = v60;
          if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v7, v42))
          {
            goto LABEL_40;
          }

          v63 = *v42;
          v196 = *(a1 + 24 * v14 - 8);
          v195 = v63;
          v64 = *v7;
          *(a1 + 24 * v14 - 8) = *(v7 + 16);
          *v42 = v64;
          v45 = v195;
          v46 = v196;
        }

        *(v7 + 16) = v46;
        *v7 = v45;
      }

      else if (v44)
      {
        v48 = *v42;
        v196 = *(a1 + 24 * v14 - 8);
        v195 = v48;
        v49 = *v7;
        *(a1 + 24 * v14 - 8) = *(v7 + 16);
        *v42 = v49;
        v50 = v195;
        *(v7 + 16) = v196;
        *v7 = v50;
        if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v42, (a1 + 24)))
        {
          v195 = *(a1 + 24);
          v51 = v195;
          v196 = *(a1 + 40);
          v52 = v196;
          v53 = *(a1 + 24 * v14 - 8);
          *(a1 + 24) = *v42;
          *(a1 + 40) = v53;
          *(a1 + 24 * v14 - 8) = v52;
          *v42 = v51;
        }
      }

LABEL_40:
      v65 = a1 + 24 * v14;
      v66 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v65 + 24), (a1 + 48));
      v67 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v8, (v65 + 24));
      if (!v66)
      {
        if (v67)
        {
          v71 = *(v65 + 24);
          v196 = *(v65 + 40);
          v195 = v71;
          v72 = *v8;
          *(v65 + 40) = *(v8 + 16);
          *(v65 + 24) = v72;
          v73 = v195;
          *(v8 + 16) = v196;
          *v8 = v73;
          if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v65 + 24), (a1 + 48)))
          {
            v195 = *(a1 + 48);
            v74 = v195;
            v196 = *(a1 + 64);
            v75 = v196;
            v76 = *(v65 + 40);
            *(a1 + 48) = *(v65 + 24);
            *(a1 + 64) = v76;
            *(v65 + 40) = v75;
            *(v65 + 24) = v74;
          }
        }

        goto LABEL_49;
      }

      if (v67)
      {
        v68 = *(a1 + 48);
        v195 = v68;
        v69 = *(a1 + 64);
        v196 = v69;
        v70 = *(v8 + 16);
        *(a1 + 48) = *v8;
        *(a1 + 64) = v70;
      }

      else
      {
        v195 = *(a1 + 48);
        v77 = v195;
        v196 = *(a1 + 64);
        v78 = v196;
        v79 = *(v65 + 40);
        *(a1 + 48) = *(v65 + 24);
        *(a1 + 64) = v79;
        *(v65 + 40) = v78;
        *(v65 + 24) = v77;
        if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v8, (v65 + 24)))
        {
LABEL_49:
          v82 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v15, v42);
          v83 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v65 + 24), v15);
          if (v82)
          {
            if (v83)
            {
              v84 = *v42;
              v196 = *(v42 + 16);
              v195 = v84;
              *v42 = *(v65 + 24);
              *(v42 + 16) = *(v65 + 40);
              v85 = v195;
              *(v65 + 40) = v196;
              *(v65 + 24) = v85;
              v10 = v193;
            }

            else
            {
              v90 = *v42;
              v196 = *(v42 + 16);
              v195 = v90;
              *v42 = *v15;
              *(v42 + 16) = *(v15 + 16);
              v91 = v195;
              *(v15 + 16) = v196;
              *v15 = v91;
              v10 = v193;
              if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v65 + 24), v15))
              {
                v92 = *v15;
                v196 = *(v15 + 16);
                v195 = v92;
                *v15 = *(v65 + 24);
                *(v15 + 16) = *(v65 + 40);
                v93 = v195;
                *(v65 + 40) = v196;
                *(v65 + 24) = v93;
              }
            }
          }

          else
          {
            v10 = v193;
            if (v83)
            {
              v86 = *v15;
              v196 = *(v15 + 16);
              v195 = v86;
              *v15 = *(v65 + 24);
              *(v15 + 16) = *(v65 + 40);
              v87 = v195;
              *(v65 + 40) = v196;
              *(v65 + 24) = v87;
              if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v15, v42))
              {
                v88 = *v42;
                v196 = *(v42 + 16);
                v195 = v88;
                *v42 = *v15;
                *(v42 + 16) = *(v15 + 16);
                v89 = v195;
                *(v15 + 16) = v196;
                *v15 = v89;
              }
            }
          }

          v94 = *a1;
          v196 = *(a1 + 16);
          v195 = v94;
          v95 = *v15;
          *(a1 + 16) = *(v15 + 16);
          *a1 = v95;
          v96 = v195;
          *(v15 + 16) = v196;
          *v15 = v96;
          goto LABEL_58;
        }

        v80 = *(v65 + 24);
        v196 = *(v65 + 40);
        v195 = v80;
        v81 = *v8;
        *(v65 + 40) = *(v8 + 16);
        *(v65 + 24) = v81;
        v68 = v195;
        v69 = v196;
      }

      *(v8 + 16) = v69;
      *v8 = v68;
      goto LABEL_49;
    }

    v20 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a1, (a1 + 24 * v14));
    v21 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, a1);
    if (!v20)
    {
      if (v21)
      {
        v30 = *a1;
        v196 = *(a1 + 16);
        v195 = v30;
        v31 = *v6;
        *(a1 + 16) = *(v6 + 16);
        *a1 = v31;
        v32 = v195;
        *(v6 + 16) = v196;
        *v6 = v32;
        if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a1, (a1 + 24 * v14)))
        {
          v33 = *v15;
          v196 = *(v15 + 16);
          v195 = v33;
          v34 = *a1;
          *(v15 + 16) = *(a1 + 16);
          *v15 = v34;
          v35 = v195;
          *(a1 + 16) = v196;
          *a1 = v35;
        }
      }

      goto LABEL_58;
    }

    if (v21)
    {
      v22 = *v15;
      v196 = *(v15 + 16);
      v195 = v22;
      v23 = *v6;
      *(v15 + 16) = *(v6 + 16);
      *v15 = v23;
    }

    else
    {
      v54 = *v15;
      v196 = *(v15 + 16);
      v195 = v54;
      v55 = *a1;
      *(v15 + 16) = *(a1 + 16);
      *v15 = v55;
      v56 = v195;
      *(a1 + 16) = v196;
      *a1 = v56;
      if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, a1))
      {
        goto LABEL_58;
      }

      v57 = *a1;
      v196 = *(a1 + 16);
      v195 = v57;
      v58 = *v6;
      *(a1 + 16) = *(v6 + 16);
      *a1 = v58;
    }

    v59 = v195;
    *(v6 + 16) = v196;
    *v6 = v59;
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 - 24), a1))
    {
      v97 = 0;
      v98 = *a1;
      v198 = *(a1 + 16);
      v197 = v98;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      do
      {
        v97 += 24;
      }

      while (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v97 + a1), &v197));
      v99 = a1 + v97;
      v100 = v10;
      if (v97 == 24)
      {
        v100 = v10;
        do
        {
          if (v99 >= v100)
          {
            break;
          }

          v100 -= 3;
        }

        while (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v100, &v197));
      }

      else
      {
        do
        {
          v100 -= 3;
        }

        while (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v100, &v197));
      }

      v9 = a1 + v97;
      if (v99 < v100)
      {
        v101 = v100;
        do
        {
          v102 = *v9;
          v196 = *(v9 + 16);
          v195 = v102;
          v103 = *v101;
          *(v9 + 16) = v101[2];
          *v9 = v103;
          v104 = v195;
          v101[2] = v196;
          *v101 = v104;
          do
          {
            v9 += 24;
          }

          while (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v9, &v197));
          do
          {
            v101 -= 3;
          }

          while (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v101, &v197));
        }

        while (v9 < v101);
      }

      v105 = (v9 - 24);
      if (v9 - 24 == a1)
      {
        if (*(v9 - 1) < 0)
        {
          operator delete(*a1);
        }
      }

      else
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v106 = *v105;
        *(a1 + 16) = *(v9 - 8);
        *a1 = v106;
        *(v9 - 1) = 0;
        *(v9 - 24) = 0;
      }

      v107 = v197;
      *(v9 - 8) = v198;
      *v105 = v107;
      if (v99 < v100)
      {
        goto LABEL_83;
      }

      v108 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *>(a1, v9 - 24);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *>(v9, v193))
      {
        a2 = v9 - 24;
        if (!v108)
        {
          goto LABEL_2;
        }

        goto LABEL_185;
      }

      if (!v108)
      {
LABEL_83:
        std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,false>(a1, v9 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v109 = *a1;
      v198 = *(a1 + 16);
      v197 = v109;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v197, v6))
      {
        v9 = a1;
        do
        {
          v9 += 24;
        }

        while (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v197, v9));
      }

      else
      {
        v110 = (a1 + 24);
        do
        {
          v9 = v110;
          if (v110 >= v10)
          {
            break;
          }

          v111 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v197, v110);
          v110 = (v9 + 24);
        }

        while (!v111);
      }

      v112 = v10;
      if (v9 < v10)
      {
        v112 = v10;
        do
        {
          v112 -= 3;
        }

        while (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v197, v112));
      }

      while (v9 < v112)
      {
        v113 = *v9;
        v196 = *(v9 + 16);
        v195 = v113;
        v114 = *v112;
        *(v9 + 16) = v112[2];
        *v9 = v114;
        v115 = v195;
        v112[2] = v196;
        *v112 = v115;
        do
        {
          v9 += 24;
        }

        while (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v197, v9));
        do
        {
          v112 -= 3;
        }

        while (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v197, v112));
      }

      v116 = (v9 - 24);
      if (v9 - 24 == a1)
      {
        if (*(v9 - 1) < 0)
        {
          operator delete(*a1);
        }
      }

      else
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v117 = *v116;
        *(a1 + 16) = *(v9 - 8);
        *a1 = v117;
        *(v9 - 1) = 0;
        *(v9 - 24) = 0;
      }

      a4 = 0;
      v118 = v197;
      *(v9 - 8) = v198;
      *v116 = v118;
    }
  }

  v133 = *MEMORY[0x277D85DE8];

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,0>(v9, (v9 + 24), (v9 + 48), v6);
}

BOOL std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(const void **a1, const void **a2)
{
  v2 = *(a1 + 23);
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v2 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  if (v2 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  v9 = memcmp(v5, v7, v8);
  if (v9)
  {
    return v9 < 0;
  }

  else
  {
    return v4 < v6;
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,0>(const void **a1, const void **a2, const void **a3, __int128 *a4)
{
  v8 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a2, a1);
  v9 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a3, a2);
  if (v8)
  {
    if (v9)
    {
      v10 = a1[2];
      v11 = *a1;
      v12 = a3[2];
      *a1 = *a3;
      a1[2] = v12;
LABEL_9:
      *a3 = v11;
      a3[2] = v10;
      goto LABEL_10;
    }

    v19 = a1[2];
    v20 = *a1;
    v21 = a2[2];
    *a1 = *a2;
    a1[2] = v21;
    *a2 = v20;
    a2[2] = v19;
    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a3, a2))
    {
      v10 = a2[2];
      v11 = *a2;
      v22 = a3[2];
      *a2 = *a3;
      a2[2] = v22;
      goto LABEL_9;
    }
  }

  else if (v9)
  {
    v13 = a2[2];
    v14 = *a2;
    v15 = a3[2];
    *a2 = *a3;
    a2[2] = v15;
    *a3 = v14;
    a3[2] = v13;
    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a2, a1))
    {
      v16 = a1[2];
      v17 = *a1;
      v18 = a2[2];
      *a1 = *a2;
      a1[2] = v18;
      *a2 = v17;
      a2[2] = v16;
    }
  }

LABEL_10:
  if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a4, a3))
  {
    v24 = a3[2];
    v25 = *a3;
    v26 = *(a4 + 2);
    *a3 = *a4;
    a3[2] = v26;
    *a4 = v25;
    *(a4 + 2) = v24;
    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a3, a2))
    {
      v27 = a2[2];
      v28 = *a2;
      v29 = a3[2];
      *a2 = *a3;
      a2[2] = v29;
      *a3 = v28;
      a3[2] = v27;
      if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a2, a1))
      {
        v30 = a1[2];
        result = *a1;
        v31 = a2[2];
        *a1 = *a2;
        a1[2] = v31;
        *a2 = result;
        a2[2] = v30;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *>(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 24;
        v14 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 24), a1);
        v15 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v5, (a1 + 24));
        if (v14)
        {
          if (!v15)
          {
            v33 = *(a1 + 16);
            v34 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v34;
            *(a1 + 40) = v33;
            if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v5, (a1 + 24)))
            {
              return 1;
            }

            v16 = *(a1 + 40);
            v17 = *(a1 + 24);
            v35 = *(v5 + 16);
            *(a1 + 24) = *v5;
            *(a1 + 40) = v35;
            goto LABEL_16;
          }

LABEL_15:
          v16 = *(a1 + 16);
          v17 = *a1;
          v18 = *(v5 + 16);
          *a1 = *v5;
          *(a1 + 16) = v18;
LABEL_16:
          *v5 = v17;
          *(v5 + 16) = v16;
          return 1;
        }

        if (!v15)
        {
          return 1;
        }

        v24 = *(a1 + 40);
        v25 = *(a1 + 24);
        v26 = *(v5 + 16);
        *(a1 + 24) = *v5;
        *(a1 + 40) = v26;
        *v5 = v25;
        *(v5 + 16) = v24;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,0>(a1, (a1 + 24), (a1 + 48), (a2 - 24));
        return 1;
      case 5:
        v6 = a2 - 24;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72));
        if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, (a1 + 72)))
        {
          return 1;
        }

        v7 = *(a1 + 88);
        v8 = *(a1 + 72);
        v9 = *(v6 + 16);
        *(a1 + 72) = *v6;
        *(a1 + 88) = v9;
        *v6 = v8;
        *(v6 + 16) = v7;
        if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 72), (a1 + 48)))
        {
          return 1;
        }

        v10 = *(a1 + 64);
        v11 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v11;
        *(a1 + 88) = v10;
        if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 48), (a1 + 24)))
        {
          return 1;
        }

        v12 = *(a1 + 40);
        v13 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v13;
        *(a1 + 64) = v12;
        break;
      default:
        goto LABEL_17;
    }

    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 24), a1))
    {
      v27 = *(a1 + 16);
      v28 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v28;
      *(a1 + 40) = v27;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 24;
    if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a2 - 24), a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v19 = (a1 + 48);
  v20 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 24), a1);
  v21 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 48), (a1 + 24));
  if (v20)
  {
    if (v21)
    {
      v22 = *(a1 + 16);
      v23 = *a1;
      *a1 = *v19;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v36 = *(a1 + 16);
      v37 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v37;
      *(a1 + 40) = v36;
      if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v22 = *(a1 + 40);
      v23 = *(a1 + 24);
      *(a1 + 24) = *v19;
      *(a1 + 40) = *(a1 + 64);
    }

    *v19 = v23;
    *(a1 + 64) = v22;
  }

  else if (v21)
  {
    v29 = *(a1 + 40);
    v30 = *(a1 + 24);
    *(a1 + 24) = *v19;
    *(a1 + 40) = *(a1 + 64);
    *v19 = v30;
    *(a1 + 64) = v29;
    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 24), a1))
    {
      v31 = *(a1 + 16);
      v32 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v32;
      *(a1 + 40) = v31;
    }
  }

LABEL_33:
  v38 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v38, v19))
    {
      v45 = *v38;
      v46 = *(v38 + 16);
      *(v38 + 8) = 0;
      *(v38 + 16) = 0;
      *v38 = 0;
      v41 = v39;
      while (1)
      {
        v42 = a1 + v41;
        *(v42 + 72) = *(a1 + v41 + 48);
        *(v42 + 88) = *(a1 + v41 + 64);
        *(v42 + 71) = 0;
        *(v42 + 48) = 0;
        if (v41 == -48)
        {
          break;
        }

        v41 -= 24;
        if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v45, (v42 + 24)))
        {
          v43 = a1 + v41 + 72;
          goto LABEL_41;
        }
      }

      v43 = a1;
LABEL_41:
      *v43 = v45;
      *(v43 + 16) = v46;
      if (++v40 == 8)
      {
        return v38 + 24 == a2;
      }
    }

    v19 = v38;
    v39 += 24;
    v38 += 24;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

void std::default_delete<std::string>::operator()[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  JUMPOUT(0x245D6AEE0);
}

uint64_t gnss::Exception::instance(gnss::Exception *this)
{
  result = gnss::Exception::fInstance;
  if (!gnss::Exception::fInstance)
  {
    if (gnss::Exception::instance(void)::pred != -1)
    {
      dispatch_once(&gnss::Exception::instance(void)::pred, &__block_literal_global_3);
    }

    return gnss::Exception::fInstance;
  }

  return result;
}

double ___ZN4gnss9Exception8instanceEv_block_invoke()
{
  qword_27EE14C90 = 0;
  result = 0.0;
  gnss::ExceptionStaticMemory = 0u;
  unk_27EE14C80 = 0u;
  gnss::Exception::fInstance = &gnss::ExceptionStaticMemory;
  return result;
}

void gnss::Exception::instanceDelete(gnss::Exception *this)
{
  if (gnss::Exception::fInstance)
  {
    gnss::Exception::fInstance = 0;
  }

  else
  {
    v5 = v1;
    v6 = v2;
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&dword_2454AA000, v3, OS_LOG_TYPE_FAULT, "Exception,instanceDelete,nullptr", v4, 2u);
    }
  }
}

void gnss::Exception::set(uint64_t *a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a1 | (1 << a2);
  *a1 = v3;
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = gnss::Exception::toString(a2);
    v8 = 1026;
    v9 = a2;
    v10 = 2050;
    v11 = v3;
    _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_DEFAULT, "Exception::Type,set,type,%{public}s,%{public}d,%{public}llx", &v6, 0x1Cu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

{
  gnss::Exception::set(a1, a2);
  if (!a1[4])
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v4) = 0;
      _os_log_error_impl(&dword_2454AA000, v3, OS_LOG_TYPE_ERROR, "Exception::set,fSendIndication,nullptr", &v4, 2u);
    }
  }

  v4 = &unk_285862178;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v13 = MEMORY[0x277D82C30];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  LODWORD(v5) = 23;
  v18 = 0x400100000000;
  operator new();
}

const char *gnss::Exception::toString(int a1)
{
  if ((a1 - 1) > 9)
  {
    return "Unknown";
  }

  else
  {
    return off_278E80858[(a1 - 1)];
  }
}

void gnss::stringify(int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        v3 = "kDropped";
        goto LABEL_20;
      }

      if (a1 == 1)
      {
        v3 = "kSuccess";
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    if (a1 == 2)
    {
      v3 = "kAborted";
    }

    else
    {
      v3 = "kInUse";
    }

LABEL_20:

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
    return;
  }

  if (a1 <= 5)
  {
    if (a1 == 4)
    {
      v3 = "kInvalidArgument";
    }

    else
    {
      v3 = "kPermissionDenied";
    }

    goto LABEL_20;
  }

  switch(a1)
  {
    case 6:
      v3 = "kTimeout";
      goto LABEL_20;
    case 7:
      v3 = "kUnavailable";
      goto LABEL_20;
    case 8:
      v3 = "kCompletedWithFailure";
      goto LABEL_20;
  }

LABEL_23:
  std::to_string(&v6, a1);
  v4 = std::string::insert(&v6, 0, "unknown ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&v4->__r_.__value_.__l + 2);
  *a2 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_24556E518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnss::MeasurementData::fillIsUsableFlag(gnss::MeasurementData *this)
{
  result = GpsdPlatformInfo::instance(0);
  v3 = *(result + 8) - 103;
  v4 = v3 > 4;
  v5 = (1 << v3) & 0x19;
  if (!v4 && v5 != 0)
  {
    v7 = *(this + 19);
    for (i = *(this + 20); v7 != i; v7 += 176)
    {
      v9 = *(v7 + 56);
      if (v9 >= 5000.0)
      {
        *(v7 + 56) = -1082130432;
        v9 = -1.0;
      }

      v10 = *(v7 + 72);
      if (v10 >= 50.0)
      {
        *(v7 + 72) = 0xBFF0000000000000;
        v10 = -1.0;
      }

      v11 = v9 > 0.0 && *(v7 + 48) >= 0.0 || (*(v7 + 64) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v10 > 0.0;
      *(v7 + 173) = v11;
    }
  }

  return result;
}

void gnss::deviceVersionCheck(gnss *this)
{
  v1 = this;
  v22 = *MEMORY[0x277D85DE8];
  GnssDeviceVersion = getGnssDeviceVersion();
  v3 = GpsdLogObjectGeneral;
  v4 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    *buf = 134349570;
    v19 = 0x403911EB851EB852;
    v20 = 2050;
    *v21 = GnssDeviceVersion * 0.01;
    *&v21[8] = 2080;
    *&v21[10] = getVersionString();
    _os_log_impl(&dword_2454AA000, v3, OS_LOG_TYPE_DEFAULT, "#gdd,Local device version,%{public}.2f,Dylib device version,%{public}.2f,Dylib version string,%s", buf, 0x20u);
  }

  if (v1)
  {
    ProcessUptimeSec = gpsd::util::getProcessUptimeSec(v4);
    v6 = getGnssDeviceVersion();
    VersionString = getVersionString();
    printf("[%5.1f][TOOL] gnss::Device version %.2f, %s\n", ProcessUptimeSec, v6 * 0.01, VersionString);
    v8 = GpsdLogObjectGeneral;
    v9 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      v10 = gpsd::util::getProcessUptimeSec(v9);
      v11 = getGnssDeviceVersion();
      v12 = getVersionString();
      *buf = 134218498;
      v19 = *&v10;
      v20 = 2048;
      *v21 = v11 * 0.01;
      *&v21[8] = 2080;
      *&v21[10] = v12;
      _os_log_impl(&dword_2454AA000, v8, OS_LOG_TYPE_DEFAULT, "[%5.1f][TOOL] gnss::Device version %.2f, %s", buf, 0x20u);
    }
  }

  if (GnssDeviceVersion != 2507)
  {
    v14 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v14, OS_LOG_TYPE_ERROR, "gnss::Device version mismatch", buf, 2u);
      v14 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v19 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdUtil.cpp";
      v20 = 1026;
      *v21 = 83;
      *&v21[4] = 2082;
      *&v21[6] = "deviceVersionCheck";
      _os_log_error_impl(&dword_2454AA000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v17, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v16, "deviceVersionCheck");
    std::string::basic_string[abi:ne200100]<0>(&v15, "gnss::Device version mismatch");
    gpsd::util::triggerDiagnosticReport(&v17, &v16, &v15);
    std::string::~string(&v15);
    std::string::~string(&v16);
    std::string::~string(&v17);
    __assert_rtn("deviceVersionCheck", "GpsdUtil.cpp", 83, "false && gnss::Device version mismatch");
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_24556E8F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

double gpsd::util::getProcessUptimeSec(gpsd::util *this)
{
  if (!gpsd::util::getProcessUptimeSec(void)::sMachContTimeStartNs)
  {
    this = gpsd::util::getMachContinuousTimeNs(this);
    gpsd::util::getProcessUptimeSec(void)::sMachContTimeStartNs = this;
  }

  return (gpsd::util::getMachContinuousTimeNs(this) - gpsd::util::getProcessUptimeSec(void)::sMachContTimeStartNs) * 0.000000001;
}

uint64_t calculateGcd(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return a1;
  }

  do
  {
    v2 = a2;
    a2 = a1 % a2;
    LODWORD(a1) = v2;
  }

  while (a2);
  return v2;
}

unint64_t gpsd::util::getMachContinuousTimeNs(gpsd::util *this)
{
  {
    getTickToNsInfo();
  }

  v1 = mach_continuous_time();
  v2 = 8;
  if (!getTickToNsInfo(void)::info)
  {
    v2 = 0;
  }

  return ((v1 >> v2) * getTickToNsInfo(void)::info / getTickToNsInfo(void)::info) << v2;
}

void getTickToNsInfo(void)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!getTickToNsInfo(void)::info)
  {
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v2 = denom;
        denom = numer % denom;
        numer = v2;
      }

      while (denom);
    }

    else
    {
      v2 = info.numer;
      if (!info.numer)
      {
        v8 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2454AA000, v8, OS_LOG_TYPE_ERROR, "gcd result is zero", buf, 2u);
          v8 = GpsdLogObjectGeneral;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v22 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdUtil.cpp";
          v23 = 1026;
          *v24 = 110;
          *&v24[4] = 2082;
          *&v24[6] = "getTickToNsInfo";
          _os_log_error_impl(&dword_2454AA000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
        }

        std::string::basic_string[abi:ne200100]<0>(&v19, "assert");
        std::string::basic_string[abi:ne200100]<0>(&v18, "getTickToNsInfo");
        std::string::basic_string[abi:ne200100]<0>(&v17, "gcd result is zero");
        gpsd::util::triggerDiagnosticReport(&v19, &v18, &v17);
        std::string::~string(&v17);
        std::string::~string(&v18);
        std::string::~string(&v19);
        __assert_rtn("getTickToNsInfo", "GpsdUtil.cpp", 110, "false && gcd result is zero");
      }
    }

    getTickToNsInfo(void)::info = info.denom / v2;
    getTickToNsInfo(void)::info = info.numer / v2;
    if (v2 > info.denom)
    {
      v9 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2454AA000, v9, OS_LOG_TYPE_ERROR, "info.denominator is zero", buf, 2u);
        v9 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v22 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdUtil.cpp";
        v23 = 1026;
        *v24 = 113;
        *&v24[4] = 2082;
        *&v24[6] = "getTickToNsInfo";
        _os_log_error_impl(&dword_2454AA000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v16, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v15, "getTickToNsInfo");
      std::string::basic_string[abi:ne200100]<0>(&v14, "info.denominator is zero");
      gpsd::util::triggerDiagnosticReport(&v16, &v15, &v14);
      std::string::~string(&v14);
      std::string::~string(&v15);
      std::string::~string(&v16);
      __assert_rtn("getTickToNsInfo", "GpsdUtil.cpp", 113, "false && info.denominator is zero");
    }

    if (v2 > info.numer)
    {
      v10 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2454AA000, v10, OS_LOG_TYPE_ERROR, "info.numerator is zero", buf, 2u);
        v10 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v22 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdUtil.cpp";
        v23 = 1026;
        *v24 = 114;
        *&v24[4] = 2082;
        *&v24[6] = "getTickToNsInfo";
        _os_log_error_impl(&dword_2454AA000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v13, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v12, "getTickToNsInfo");
      std::string::basic_string[abi:ne200100]<0>(&v11, "info.numerator is zero");
      gpsd::util::triggerDiagnosticReport(&v13, &v12, &v11);
      std::string::~string(&v11);
      std::string::~string(&v12);
      std::string::~string(&v13);
      __assert_rtn("getTickToNsInfo", "GpsdUtil.cpp", 114, "false && info.numerator is zero");
    }

    v3 = info.numer / v2 * (info.denom / v2);
    if (v3 >= 0x17D)
    {
      getTickToNsInfo(void)::info = 1;
      v4 = GpsdLogObjectGeneral;
      if (v3 >> 10 > 0x5E)
      {
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2454AA000, v4, OS_LOG_TYPE_ERROR, "#gpsdUtil,Cannot protect against overflow in tick to ns", buf, 2u);
        }
      }

      else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2454AA000, v4, OS_LOG_TYPE_INFO, "#gpsdUtil,Reducing tick to ns precision to avoid overflow risk", buf, 2u);
      }
    }

    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      if (getTickToNsInfo(void)::info)
      {
        v7 = 8;
      }

      else
      {
        v7 = 0;
      }

      *buf = 134349568;
      v22 = getTickToNsInfo(void)::info;
      v23 = 2050;
      *v24 = getTickToNsInfo(void)::info;
      *&v24[8] = 1026;
      *&v24[10] = v7;
      _os_log_debug_impl(&dword_2454AA000, v5, OS_LOG_TYPE_DEBUG, "#gpsdUtil,Tick to ns info,Numerator,%{public}llu,Denominator,%{public}llu,PrecisionReductionBits,%{public}d", buf, 0x1Cu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_24556EFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gpsd::util::getMachContinuousTimeMs(gpsd::util *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_2, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_2))
  {
    getTickToMsInfo();
    __cxa_guard_release(&_MergedGlobals_2);
  }

  return mach_continuous_time() / qword_27EE14DB0;
}

void getTickToMsInfo(void)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!qword_27EE14DB0)
  {
    if ((atomic_load_explicit(&qword_27EE14DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE14DB8))
    {
      getTickToNsInfo();
      __cxa_guard_release(&qword_27EE14DB8);
    }

    v0 = 1000000 * getTickToNsInfo(void)::info / getTickToNsInfo(void)::info;
    qword_27EE14DB0 = v0;
    v1 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v8 = v0;
      _os_log_impl(&dword_2454AA000, v1, OS_LOG_TYPE_DEFAULT, "getTickToMsInfo,denominator,%{public}llu", buf, 0xCu);
      v0 = qword_27EE14DB0;
    }

    if (!v0)
    {
      v3 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2454AA000, v3, OS_LOG_TYPE_ERROR, "getTickToMsInfo,Cannot get ms from this platform", buf, 2u);
        v3 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v8 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdUtil.cpp";
        v9 = 1026;
        v10 = 152;
        v11 = 2082;
        v12 = "getTickToMsInfo";
        _os_log_error_impl(&dword_2454AA000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v6, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v5, "getTickToMsInfo");
      std::string::basic_string[abi:ne200100]<0>(&v4, "getTickToMsInfo,Cannot get ms from this platform");
      gpsd::util::triggerDiagnosticReport(&v6, &v5, &v4);
      std::string::~string(&v4);
      std::string::~string(&v5);
      std::string::~string(&v6);
      __assert_rtn("getTickToMsInfo", "GpsdUtil.cpp", 152, "false && getTickToMsInfo,Cannot get ms from this platform");
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

unint64_t gpsd::util::getMachAbsoluteTimeNs(gpsd::util *this)
{
  {
    getTickToNsInfo();
  }

  v1 = mach_absolute_time();
  v2 = 8;
  if (!getTickToNsInfo(void)::info)
  {
    v2 = 0;
  }

  return ((v1 >> v2) * getTickToNsInfo(void)::info / getTickToNsInfo(void)::info) << v2;
}

unint64_t gpsd::util::convertMachTimeInTicksToNs(unint64_t this)
{
  {
    getTickToNsInfo();
  }

  v2 = 8;
  if (!getTickToNsInfo(void)::info)
  {
    v2 = 0;
  }

  return ((this >> v2) * getTickToNsInfo(void)::info / getTickToNsInfo(void)::info) << v2;
}

unint64_t gpsd::util::convertNsToMachTimeInTicks(unint64_t this)
{
  {
    getTickToNsInfo();
  }

  v2 = 8;
  if (!getTickToNsInfo(void)::info)
  {
    v2 = 0;
  }

  return ((this >> v2) * getTickToNsInfo(void)::info / getTickToNsInfo(void)::info) << v2;
}

BOOL gpsd::util::getCurrentMachContinuousMinusMachAbsoluteTicks(gpsd::util *this, unint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (mach_get_times())
  {
    v3 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      _os_log_error_impl(&dword_2454AA000, v3, OS_LOG_TYPE_ERROR, "#gpsdUtil,mach_get_times failed", buf, 2u);
      result = 0;
    }
  }

  else
  {
    *this = 0;
    result = 1;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL gpsd::util::getCurrentMachContinuousMinusMachAbsoluteNanoseconds(gpsd::util *this, unint64_t *a2)
{
  v5 = 0;
  CurrentMachContinuousMinusMachAbsoluteTicks = gpsd::util::getCurrentMachContinuousMinusMachAbsoluteTicks(&v5, a2);
  if (CurrentMachContinuousMinusMachAbsoluteTicks)
  {
    *this = gpsd::util::convertMachTimeInTicksToNs(v5);
  }

  return CurrentMachContinuousMinusMachAbsoluteTicks;
}

uint64_t gpsd::util::fletcher16(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = a1[1] - *a1;
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *v1++;
      v4 += v5;
      v3 += v4;
      --v2;
    }

    while (v2);
  }

  else
  {
    LOBYTE(v4) = 0;
    v3 = 0;
  }

  return (v4 | (v3 << 8));
}

uint64_t gpsd::util::fletcher16(gpsd::util *this, const unsigned __int8 *a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *this;
      this = (this + 1);
      v3 += v4;
      v2 += v3;
      --a2;
    }

    while (a2);
  }

  else
  {
    LOBYTE(v3) = 0;
    v2 = 0;
  }

  return (v3 | (v2 << 8));
}

uint64_t gpsd::util::fletcher16(unsigned __int8 *a1)
{
  v1 = a1[23];
  if ((v1 & 0x80u) == 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 1);
  }

  if (v1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *v2++;
      v4 += v5;
      v3 += v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    LOBYTE(v4) = 0;
    v3 = 0;
  }

  return (v4 | (v3 << 8));
}

uint64_t gpsd::util::truncatedSha256(uint64_t a1)
{
  return gpsd::util::truncatedSha256(*a1, (*(a1 + 8) - *a1));
}

{
  if (*(a1 + 23) >= 0)
  {
    return gpsd::util::truncatedSha256(a1, *(a1 + 23));
  }

  else
  {
    return gpsd::util::truncatedSha256(*a1, *(a1 + 8));
  }
}

uint64_t gpsd::util::truncatedSha256(gpsd::util *this, const void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (CC_SHA256(this, a2, md))
  {
    result = bswap32(*md);
  }

  else
  {
    v5 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v7 = 134349312;
      v8 = this;
      v9 = 2050;
      v10 = a2;
      _os_log_error_impl(&dword_2454AA000, v5, OS_LOG_TYPE_ERROR, "#gpsdUtil,CC_SHA256 failed on,%{public}p,%{public}zu", &v7, 0x16u);
      result = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL gpsd::util::readFileIntoVector(uint64_t a1, uint64_t a2)
{
  v22[19] = *MEMORY[0x277D85DE8];
  std::ifstream::basic_ifstream(v19);
  v4 = v21;
  if (v21)
  {
    v5 = *&v20[*(v19[0] - 24) + 24];
    if (v5)
    {
      v14 = v21;
      v6 = v5[3];
      v7 = v5[4];
      if (v6 != v7)
      {
        goto LABEL_6;
      }

      if ((*(*v5 + 72))(v5) != -1)
      {
        v6 = v5[3];
        v7 = v5[4];
LABEL_6:
        if (v6 == v7)
        {
          (*(*v5 + 72))(v5);
        }

        else
        {
          v8 = *v6;
        }

        operator new();
      }

      v4 = v14;
    }

    v10 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v11 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v16 = a1;
      v17 = 2050;
      v18 = 0;
      _os_log_debug_impl(&dword_2454AA000, v11, OS_LOG_TYPE_DEBUG, "readFileIntoVector,%{public}s,size,%{public}zu", buf, 0x16u);
      if (!v10)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v10)
    {
LABEL_15:
      operator delete(v10);
    }
  }

  else
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = a1;
      _os_log_impl(&dword_2454AA000, v9, OS_LOG_TYPE_DEFAULT, "readFileIntoVector,failed to open %{public}s", buf, 0xCu);
    }
  }

LABEL_16:
  v19[0] = *MEMORY[0x277D82808];
  *(v19 + *(v19[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x245D6AC50](v20);
  std::istream::~istream();
  MEMORY[0x245D6AE70](v22);
  v12 = *MEMORY[0x277D85DE8];
  return v4 != 0;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v3 = *(MEMORY[0x277D82808] + 16);
  v4 = *(MEMORY[0x277D82808] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x277D82858] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x245D6AC40](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_24556FF00(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x245D6AE70](v1);
  _Unwind_Resume(a1);
}

uint64_t gpsd::util::writeVectorToClassDFileWithRename(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v27 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  v5 = __p;
  std::string::basic_string[abi:ne200100](__p, v4 + 4);
  if (v20 < 0)
  {
    v5 = __p[0];
  }

  if (v4)
  {
    if (*(v2 + 23) >= 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = *v2;
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, ".tmp");
  if (!gpsd::util::writeVectorToClassDFile(a1, __p))
  {
    goto LABEL_20;
  }

  if (v20 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (*(v2 + 23) >= 0)
  {
    v9 = v2;
  }

  else
  {
    v9 = *v2;
  }

  rename(v8, v9, v7);
  v10 = GpsdLogObjectGeneral;
  if (v11)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      if (*(v2 + 23) < 0)
      {
        v2 = *v2;
      }

      v15 = *__error();
      v16 = __error();
      v17 = strerror(*v16);
      *buf = 136446722;
      v22 = v2;
      v23 = 1026;
      v24 = v15;
      v25 = 2082;
      v26 = v17;
      _os_log_error_impl(&dword_2454AA000, v10, OS_LOG_TYPE_ERROR, "writeVectorToClassDFileWithRename,renameFailed,%{public}s,err,%{public}d,%{public}s", buf, 0x1Cu);
    }

LABEL_20:
    v12 = 0;
    goto LABEL_21;
  }

  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    if (*(v2 + 23) >= 0)
    {
      v18 = v2;
    }

    else
    {
      v18 = *v2;
    }

    *buf = 136446210;
    v22 = v18;
    _os_log_debug_impl(&dword_2454AA000, v10, OS_LOG_TYPE_DEBUG, "writeVectorToClassDFileWithRename,success,%{public}s", buf, 0xCu);
  }

  v12 = 1;
LABEL_21:
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_245570148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL gpsd::util::writeVectorToClassDFile(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = fopen(v3, "wb+");
  if (!v4)
  {
    v10 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v15 = *__error();
      v17 = 67240192;
      v18 = v15;
      v12 = "#utilWriteVector,open failed,%{public}d";
      goto LABEL_15;
    }

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v6 = v4;
  gpsd::util::changeFileToClassD(v4, v5);
  v7 = fwrite(*a1, *(a1 + 8) - *a1, 1uLL, v6);
  v8 = v7 == 1;
  if (v7 != 1)
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v16 = *__error();
      v17 = 67240192;
      v18 = v16;
      _os_log_error_impl(&dword_2454AA000, v9, OS_LOG_TYPE_ERROR, "#utilWriteVector,write failed,%{public}d", &v17, 8u);
    }
  }

  if (fclose(v6))
  {
    v10 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v11 = *__error();
      v17 = 67240192;
      v18 = v11;
      v12 = "#utilWriteVector,close failed,%{public}d";
LABEL_15:
      _os_log_error_impl(&dword_2454AA000, v10, OS_LOG_TYPE_ERROR, v12, &v17, 8u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

void gpsd::util::changeFileToClassD(FILE *this, __sFILE *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this)
  {
    v2 = fileno(this);
    if (v2 == -1)
    {
      v4 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v11 = *__error();
        *buf = 67240192;
        v13 = v11;
        v6 = "#utilFileClass,fileno failed,%{public}d";
        goto LABEL_12;
      }
    }

    else
    {
      v3 = v2;
      if (fcntl(v2, 63) != 4)
      {
        if (fcntl(v3, 64, 4))
        {
          v4 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
          {
            v5 = *__error();
            *buf = 67240192;
            v13 = v5;
            v6 = "#utilFileClass,set class failed,%{public}d";
LABEL_12:
            v8 = v4;
            v9 = 8;
            goto LABEL_13;
          }
        }
      }
    }
  }

  else
  {
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "#utilFileClass,nullptr";
      v8 = v7;
      v9 = 2;
LABEL_13:
      _os_log_error_impl(&dword_2454AA000, v8, OS_LOG_TYPE_ERROR, v6, buf, v9);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

char *gpsd::util::getGpsWeekFromBuildDate(gpsd::util *this)
{
  result = gpsd::util::getGpsWeekFromBuildDate(void)::buildWeek;
  if (gpsd::util::getGpsWeekFromBuildDate(void)::buildWeek <= 0)
  {
    memset(&v4, 0, sizeof(v4));
    result = strptime("Oct 10 2025 21:36:40", "%b %d %Y %H:%M:%S", &v4);
    if (result)
    {
      v2 = mktime(&v4);
      if (v2 < 0)
      {
        return 0;
      }

      else
      {
        v3 = (v2 + -315964800.0 + -259200.0) / 604800.0;
        result = v3;
        gpsd::util::getGpsWeekFromBuildDate(void)::buildWeek = v3;
      }
    }
  }

  return result;
}

void gpsd::util::charToHex(gpsd::util *this@<X0>, const unsigned __int8 *a2@<X1>, int __c@<W2>, std::string *a4@<X8>)
{
  if (a2)
  {
    v8 = 0;
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
    do
    {
      if (__c)
      {
        if (v8)
        {
          std::string::push_back(a4, __c);
        }
      }

      std::string::push_back(a4, __const__ZN4gpsd4util9charToHexEPKhmc_charmap[v8[this] >> 4]);
      std::string::push_back(a4, __const__ZN4gpsd4util9charToHexEPKhmc_charmap[(v8++)[this] & 0xF]);
    }

    while (a2 != v8);
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a4, "EmptyBuffer");
  }
}

void sub_245570608(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void gpsd::util::charToHex(gpsd::util *this@<X0>, const unsigned __int8 *a2@<X1>, int a3@<W2>, std::string *a4@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  gpsd::util::charToHex(this, a2, a3, a4);
}

void gpsd::util::logBinaryBytes(gpsd::util *this, const unsigned __int8 *a2, uint64_t a3, const char *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        if (v8 >= 0x40)
        {
          v10 = 64;
        }

        else
        {
          v10 = v8;
        }

        gpsd::util::charToHex((this + v7), v10, 0, &__p);
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136446979;
        v15 = a3;
        v16 = 2050;
        v17 = a2;
        v18 = 2050;
        v19 = v7;
        v20 = 2081;
        v21 = p_p;
        _os_log_debug_impl(&dword_2454AA000, v9, OS_LOG_TYPE_DEBUG, "%{public}s,%{public}zu,%{public}zu,%{private}s", buf, 0x2Au);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v7 += 64;
      v8 -= 64;
    }

    while (v7 < a2);
  }

  v12 = *MEMORY[0x277D85DE8];
}

id vectorToNSArray(double **a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:a1[1] - *a1];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = [MEMORY[0x277CCABB0] numberWithDouble:*v3];
      [v2 addObject:v5];

      ++v3;
    }

    while (v3 != v4);
  }

  return v2;
}

_DWORD *GpsdPreferences::GpsdPreferences(_DWORD *a1, int a2)
{
  v73[77] = *MEMORY[0x277D85DE8];
  *a1 = a2;
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = fDefaults;
  fDefaults = v3;

  if (!a2)
  {
    [fDefaults addSuiteNamed:@"gpsd"];
  }

  [fDefaults addSuiteNamed:@"com.apple.coregps"];
  v5 = MEMORY[0x277CBEC28];
  v72[0] = @"ForceDisableGpsd";
  v72[1] = @"UseLegacyLibXpc";
  v73[0] = MEMORY[0x277CBEC28];
  v73[1] = MEMORY[0x277CBEC28];
  v72[2] = @"BigPowerSwitch";
  v6 = GpsdPlatformInfo::instance(0);
  v7 = MEMORY[0x277CBEC38];
  if (*(v6 + 8) == 201)
  {
    v8 = MEMORY[0x277CBEC38];
  }

  else
  {
    v8 = v5;
  }

  v73[2] = v8;
  v72[3] = @"BaudRate4M8";
  if (*(GpsdPlatformInfo::instance(0) + 8) == 201)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  v73[3] = v9;
  v72[4] = @"UsesAsyncCommRead";
  v10 = *(GpsdPlatformInfo::instance(0) + 8);
  if ((v10 - 301) < 2 || v10 == 202 || (v11 = v5, v10 == 107))
  {
    v11 = MEMORY[0x277CBEC38];
  }

  v73[4] = v11;
  v73[5] = &stru_285865850;
  v72[5] = @"ForceGnssDeviceLibraryName";
  v72[6] = @"EnableMeasurementApi";
  v73[6] = v7;
  v73[7] = v7;
  v72[7] = @"EnableXocalRequests";
  v72[8] = @"ForceEnableXocalLearning";
  v73[8] = v5;
  v73[9] = &unk_285865C30;
  v72[9] = @"MaxSchedulerQos";
  v72[10] = @"EnableBasebandReset";
  v12 = *(GpsdPlatformInfo::instance(0) + 8);
  if ((v12 - 301) < 2 || (v13 = v5, v12 == 202))
  {
    if (*(GpsdPlatformInfo::instance(0) + 8) == 202)
    {
      v13 = v7;
    }

    else
    {
      v13 = v5;
    }
  }

  v73[10] = v13;
  v72[11] = @"LogLevel";
  v14 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v73[11] = v14;
  v72[12] = @"SecondaryLogLevel";
  v15 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v73[12] = v15;
  v73[13] = &unk_285865C48;
  v72[13] = @"LogMask";
  v72[14] = @"PvtmTimeOut";
  v73[14] = &unk_285865C60;
  v73[15] = @"0x0";
  v72[15] = @"NmeaMaskOverride";
  v72[16] = @"VendorLogQA";
  v73[16] = v5;
  v73[17] = v5;
  v72[17] = @"VendorLogRestrictedCarry";
  v72[18] = @"VendorLogAllToOsLog";
  v73[18] = v5;
  v73[19] = v5;
  v72[19] = @"VendorLogForceCustomer";
  v72[20] = @"VendorLogLz4";
  v73[20] = v7;
  v73[21] = v5;
  v72[21] = @"VendorLogLzfse";
  v72[22] = @"VendorLogZlib";
  v73[22] = v5;
  v73[23] = @"/var/mobile/Library/Logs/gpsd";
  v72[23] = @"VendorLogDirectory";
  v72[24] = @"VendorLogPrefixWithTimestamp";
  v73[24] = v5;
  v73[25] = &unk_285865C78;
  v72[25] = @"VendorLogMaxDirectorySizeMB";
  v72[26] = @"VendorLogRotationSizeMB";
  v73[26] = &unk_285865C90;
  v73[27] = &unk_285865CA8;
  v72[27] = @"VendorLogMaxNumberOfFiles";
  v72[28] = @"VendorLogRetentionDays";
  v73[28] = &unk_285865D08;
  v73[29] = &unk_285865CC0;
  v72[29] = @"VendorLogBufferSizeAllowedKB";
  v72[30] = @"EnableProtobufBinaryLog";
  v73[30] = v5;
  v73[31] = @"/var/mobile/Library/Logs/gpsd";
  v72[31] = @"ProtobufLogDirectory";
  v72[32] = @"ProtobufLogRetentionDays";
  v73[32] = &unk_285865D18;
  v73[33] = v5;
  v72[33] = @"EnableInterfaceTelemetry";
  v72[34] = @"NvStoreFile";
  v73[34] = @"/var/db/gpsd/gps_nvstore.bin";
  v73[35] = @"/var/db/gpsd/longTermPredictions";
  v72[35] = @"LongTermPredictionsFile";
  v72[36] = @"ShortTermPredictionsFile";
  v73[36] = @"/var/db/gpsd/shortTermPredictions";
  v73[37] = @"/var/db/gpsd/rtistore";
  v72[37] = @"RTIFile";
  v72[38] = @"RavenOrbitFile";
  v73[38] = @"/var/db/gpsd/ravenorbitstore";
  v73[39] = v5;
  v72[39] = @"VerboseNvStore";
  v72[40] = @"VerboseCommDataSize";
  v73[40] = v5;
  v73[41] = v5;
  v72[41] = @"VerboseCommDataSniffer";
  v72[42] = @"PerformanceReportIntervalSeconds";
  v73[42] = &unk_285865C60;
  v73[43] = &unk_285865C48;
  v72[43] = @"RecoveryTestCase";
  v72[44] = @"GenericTestCase";
  v73[44] = &unk_285865C48;
  v73[45] = v7;
  v72[45] = @"EnableGps";
  v72[46] = @"EnableQzss";
  v73[46] = v7;
  v73[47] = v7;
  v72[47] = @"EnableGlonass";
  v72[48] = @"EnableGalileo";
  v73[48] = v7;
  v72[49] = @"EnableBeidou";
  v16 = *(GpsdPlatformInfo::instance(0) + 8);
  if (v16 == 201 || v16 == 103)
  {
    v18 = v5;
  }

  else
  {
    v18 = v7;
  }

  v73[49] = v18;
  v72[50] = @"EnableNavic";
  v19 = GpsdPlatformInfo::instance(0);
  if (GpsdPlatformInfo::supportsNavic(v19))
  {
    v20 = v7;
  }

  else
  {
    v20 = v5;
  }

  v73[50] = v20;
  v72[51] = @"EnableL5";
  if (*(GpsdPlatformInfo::instance(0) + 24))
  {
    v21 = v7;
  }

  else
  {
    v21 = v5;
  }

  v73[51] = v21;
  v72[52] = @"EnableCoexL5NotchFilter";
  v22 = GpsdPlatformInfo::instance(0);
  v23 = v5;
  if (*(v22 + 8) == 107)
  {
    v24 = GpsdPlatformInfo::instance(0);
    if (GpsdPlatformInfo::isPhone(v24))
    {
      v23 = v7;
    }

    else
    {
      v23 = v5;
    }
  }

  v73[52] = v23;
  v73[53] = v7;
  v72[53] = @"EnableCoexBitEnhancedFreqAsst";
  v72[54] = @"EnableCoexBitCdmaFineTimeAsst";
  v73[54] = v7;
  v73[55] = v7;
  v72[55] = @"EnableCoexBitBlankingGpsL1";
  v72[56] = @"EnableCoexBitBlankingGloL1";
  v73[56] = v5;
  v73[57] = v5;
  v72[57] = @"EnableCoexBitBlankingBdsB1I";
  v72[58] = @"CoexForceGpsL1Filter";
  v73[58] = &unk_285865C48;
  v73[59] = &unk_285865C48;
  v72[59] = @"CoexForceGloL1Filter";
  v72[60] = @"CoexForceB1IFilter";
  v73[60] = &unk_285865C48;
  v72[61] = @"CoexUseB14LteFilterSettingsForB13";
  if (*(GpsdPlatformInfo::instance(0) + 8) == 107)
  {
    v25 = v7;
  }

  else
  {
    v25 = v5;
  }

  v73[61] = v25;
  v73[62] = v7;
  v72[62] = @"EnableCoexBitStaticSpur";
  v72[63] = @"EnableCoexBitDynamicNotch";
  v72[64] = @"EnableCoexBitJammer";
  v73[63] = v5;
  v73[64] = v7;
  v72[65] = @"GroupDelayL1InCAChips";
  v26 = MEMORY[0x277CCABB0];
  v27 = *(GpsdPlatformInfo::instance(0) + 8);
  v28 = 0.036;
  if (v27 != 202)
  {
    v28 = 0.0;
  }

  if (v27 == 201)
  {
    v28 = -7.149;
  }

  v29 = [v26 numberWithDouble:v28];
  v73[65] = v29;
  v72[66] = @"ExternalToChipL5GroupDelayMeters";
  v30 = MEMORY[0x277CCABB0];
  v31 = GpsdPlatformInfo::instance(0);
  v32 = 0.0;
  if (*(v31 + 24) == 1)
  {
    v32 = *(v31 + 16);
  }

  v33 = [v30 numberWithDouble:v32];
  v73[66] = v33;
  v72[67] = @"GlonassPerFrequencyGroupDelayMeters";
  v34 = GpsdPlatformInfo::instance(0);
  GpsdPlatformInfo::glonassPerFrequencyGroupDelayMeters(v34, __p);
  v35 = vectorToNSArray(__p);
  v73[67] = v35;
  v72[68] = @"RavenExpected";
  v36 = GpsdPlatformInfo::instance(0);
  if (GpsdPlatformInfo::expectedToHaveRaven(v36))
  {
    v37 = v7;
  }

  else
  {
    v37 = v5;
  }

  v73[68] = v37;
  v72[69] = @"ForceFireExtensionsPlatform";
  v73[69] = &unk_285865C48;
  v72[70] = @"UseInternalEmergencyStack";
  v38 = *(GpsdPlatformInfo::instance(0) + 8);
  if ((v38 - 301) < 2 || v38 == 107)
  {
    v40 = v7;
  }

  else
  {
    v40 = v5;
  }

  v73[70] = v40;
  v72[71] = @"UseNewGnssDeviceManager";
  v73[71] = v5;
  v72[72] = @"HasXtalFreqJumpRisk";
  if (*(GpsdPlatformInfo::instance(0) + 8) == 107)
  {
    v41 = v7;
  }

  else
  {
    v41 = v5;
  }

  v73[72] = v41;
  v72[73] = @"AllowAssistanceTimeTo10Milliseconds";
  if ((*(GpsdPlatformInfo::instance(0) + 8) - 301) >= 2)
  {
    v42 = v5;
  }

  else
  {
    v42 = v7;
  }

  v73[73] = v42;
  v72[74] = @"DebugFeaturesBitmask";
  v73[74] = &unk_285865C48;
  v72[75] = @"DebugSettingsString";
  v73[75] = &stru_285865850;
  v72[76] = @"EnableReceivingFTA";
  v43 = GpsdPlatformInfo::instance(0);
  if (GpsdPlatformInfo::isEnableReceivingFineTimeAssistance(v43))
  {
    v44 = v7;
  }

  else
  {
    v44 = v5;
  }

  v73[76] = v44;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:77];

  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  [fDefaults registerDefaults:v45];
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"Library/Managed Preferences/mobile/gpsd.plist"];
  v47 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 138543618;
    *&__p[4] = @"Library/Managed Preferences/mobile/gpsd.plist";
    *&__p[12] = 2114;
    *&__p[14] = v46;
    _os_log_impl(&dword_2454AA000, v47, OS_LOG_TYPE_DEFAULT, "gpsd_plistpath: %{public}@ defaults %{public}@", __p, 0x16u);
  }

  if (v46)
  {
    v48 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&dword_2454AA000, v48, OS_LOG_TYPE_DEFAULT, "gpsd.plist exists", __p, 2u);
    }

    [fDefaults registerDefaults:v46];
  }

  has_internal_diagnostics = [fDefaults BOOLForKey:@"VendorLogForceCustomer"];
  if ((has_internal_diagnostics & 1) == 0)
  {
    if (*a1)
    {
      v69[0] = @"LogLevel";
      v50 = [MEMORY[0x277CCABB0] numberWithInt:8];
      v69[1] = @"VendorLogMaxDirectorySizeMB";
      v69[2] = @"VendorLogRotationSizeMB";
      v70[0] = v50;
      v70[1] = &unk_285865C00;
      v70[2] = &unk_285865C00;
      v70[3] = &unk_285865C18;
      v69[3] = @"VendorLogMaxNumberOfFiles";
      v69[4] = @"VendorLogAllToOsLog";
      if (*a1 == 1)
      {
        v51 = v5;
      }

      else
      {
        v51 = v7;
      }

      v70[4] = v51;
      v70[5] = v5;
      v69[5] = @"VendorLogLz4";
      v69[6] = @"VendorLogLzfse";
      v70[6] = v5;
      v70[7] = v5;
      v69[7] = @"VendorLogZlib";
      v69[8] = @"VerboseCommDataSize";
      v70[8] = v7;
      v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:9];

      [fDefaults registerDefaults:v52];
    }

    else if (([fDefaults BOOLForKey:@"VendorLogQA"] & 1) != 0 || objc_msgSend(fDefaults, "BOOLForKey:", @"VendorLogAllToOsLog"))
    {
      v53 = *(GpsdPlatformInfo::instance(0) + 8) - 103;
      if (v53 > 4)
      {
        v54 = 6;
      }

      else
      {
        v54 = dword_2455859B0[v53];
      }

      v67[0] = @"LogLevel";
      v55 = [MEMORY[0x277CCABB0] numberWithInt:v54];
      v68[0] = v55;
      v68[1] = &unk_285865C00;
      v67[1] = @"VendorLogMaxDirectorySizeMB";
      v67[2] = @"VendorLogRotationSizeMB";
      v68[2] = &unk_285865C00;
      v68[3] = &unk_285865C18;
      v67[3] = @"VendorLogMaxNumberOfFiles";
      v67[4] = @"EnableProtobufBinaryLog";
      v68[4] = v7;
      v68[5] = &unk_285865D08;
      v67[5] = @"ProtobufLogRetentionDays";
      v67[6] = @"EnableInterfaceTelemetry";
      v68[6] = v7;
      v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:7];

      [fDefaults registerDefaults:v52];
    }

    else if ([fDefaults BOOLForKey:@"VendorLogRestrictedCarry"])
    {
      v58 = *(GpsdPlatformInfo::instance(0) + 8) - 103;
      if (v58 >= 5)
      {
        v59 = 6;
      }

      else
      {
        v59 = dword_2455859B0[v58];
      }

      v65[0] = @"LogLevel";
      v61 = [MEMORY[0x277CCABB0] numberWithInt:v59];
      v66[0] = v61;
      v66[1] = v7;
      v65[1] = @"EnableInterfaceTelemetry";
      v65[2] = @"EnableProtobufBinaryLog";
      v66[2] = v7;
      v66[3] = &unk_285865CD8;
      v65[3] = @"VendorLogMaxDirectorySizeMB";
      v65[4] = @"VendorLogMaxNumberOfFiles";
      v66[4] = &unk_285865CF0;
      v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:5];

      [fDefaults registerDefaults:v52];
    }

    else
    {
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      if (!has_internal_diagnostics)
      {
        goto LABEL_82;
      }

      v63[0] = @"LogLevel";
      v60 = [MEMORY[0x277CCABB0] numberWithInt:5];
      v64[0] = v60;
      v64[1] = v7;
      v63[1] = @"EnableInterfaceTelemetry";
      v63[2] = @"EnableProtobufBinaryLog";
      v64[2] = v7;
      v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:3];

      [fDefaults registerDefaults:v52];
    }
  }

LABEL_82:
  GpsdPreferences::dumpSettingsToLog(has_internal_diagnostics);

  v56 = *MEMORY[0x277D85DE8];
  return a1;
}