uint64_t CLMicroLocationProto::TriggerEvent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 84);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
    v6 = *(v5 + 84);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 84);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 84);
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
  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
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
  v8 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
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
  v9 = *(v5 + 40);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 84);
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
  v10 = *(v5 + 48);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 84);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 29), a2, a4);
  v6 = *(v5 + 84);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 56), a2, a4);
  v6 = *(v5 + 84);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 60), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v11 = *(v5 + 64);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 84) & 0x1000) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 72), a2, a4);
  v6 = *(v5 + 84);
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
  v12 = *(v5 + 76);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, v12, a2, a4);
}

uint64_t CLMicroLocationProto::TriggerEvent::ByteSize(CLMicroLocationProto::TriggerEvent *this)
{
  v2 = *(this + 21);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_54;
  }

  if (v2)
  {
    v5 = *(this + 6);
    if ((v5 & 0x80000000) != 0)
    {
      v3 = 11;
    }

    else if (v5 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 21);
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

  v6 = v3 + ((v2 >> 1) & 2);
  if ((v2 & 8) != 0)
  {
    v7 = *(this + 2);
    v8 = *(v7 + 23);
    v9 = v8;
    v10 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v11 = *(v7 + 23);
    }

    else
    {
      v11 = v10;
    }

    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
      v8 = *(v7 + 23);
      v10 = *(v7 + 8);
      v2 = *(this + 21);
      v9 = *(v7 + 23);
    }

    else
    {
      v12 = 1;
    }

    if (v9 < 0)
    {
      v8 = v10;
    }

    v6 += v12 + v8 + 1;
    if ((v2 & 0x10) == 0)
    {
LABEL_14:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_15;
      }

LABEL_35:
      v19 = *(this + 5);
      v20 = *(v19 + 23);
      v21 = v20;
      v22 = *(v19 + 8);
      if ((v20 & 0x80u) == 0)
      {
        v23 = *(v19 + 23);
      }

      else
      {
        v23 = v22;
      }

      if (v23 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
        v20 = *(v19 + 23);
        v22 = *(v19 + 8);
        v2 = *(this + 21);
        v21 = *(v19 + 23);
      }

      else
      {
        v24 = 1;
      }

      if (v21 < 0)
      {
        v20 = v22;
      }

      v6 += v24 + v20 + 1;
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_44;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_14;
  }

  v13 = *(this + 4);
  v14 = *(v13 + 23);
  v15 = v14;
  v16 = *(v13 + 8);
  if ((v14 & 0x80u) == 0)
  {
    v17 = *(v13 + 23);
  }

  else
  {
    v17 = v16;
  }

  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
    v14 = *(v13 + 23);
    v16 = *(v13 + 8);
    v2 = *(this + 21);
    v15 = *(v13 + 23);
  }

  else
  {
    v18 = 1;
  }

  if (v15 < 0)
  {
    v14 = v16;
  }

  v6 += v18 + v14 + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_15:
  if ((v2 & 0x40) != 0)
  {
LABEL_44:
    v25 = *(this + 6);
    v26 = *(v25 + 23);
    v27 = v26;
    v28 = *(v25 + 8);
    if ((v26 & 0x80u) == 0)
    {
      v29 = *(v25 + 23);
    }

    else
    {
      v29 = v28;
    }

    if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
      v26 = *(v25 + 23);
      v28 = *(v25 + 8);
      v2 = *(this + 21);
      v27 = *(v25 + 23);
    }

    else
    {
      v30 = 1;
    }

    if (v27 < 0)
    {
      v26 = v28;
    }

    v6 += v30 + v26 + 1;
  }

LABEL_53:
  v4 = ((v2 >> 6) & 2) + v6;
LABEL_54:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_94;
  }

  if ((v2 & 0x100) != 0)
  {
    v31 = *(this + 14);
    if ((v31 & 0x80000000) != 0)
    {
      v32 = 11;
    }

    else if (v31 >= 0x80)
    {
      v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
      v2 = *(this + 21);
    }

    else
    {
      v32 = 2;
    }

    v4 = (v32 + v4);
    if ((v2 & 0x200) == 0)
    {
LABEL_57:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_73;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_57;
  }

  v33 = *(this + 15);
  if ((v33 & 0x80000000) != 0)
  {
    v34 = 11;
  }

  else if (v33 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 1;
    v2 = *(this + 21);
  }

  else
  {
    v34 = 2;
  }

  v4 = (v34 + v4);
  if ((v2 & 0x400) == 0)
  {
LABEL_58:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_79;
  }

LABEL_73:
  v35 = *(this + 18);
  if ((v35 & 0x80000000) != 0)
  {
    v36 = 11;
  }

  else if (v35 >= 0x80)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 1;
    v2 = *(this + 21);
  }

  else
  {
    v36 = 2;
  }

  v4 = (v36 + v4);
  if ((v2 & 0x800) == 0)
  {
LABEL_59:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_88;
  }

LABEL_79:
  v37 = *(this + 8);
  v38 = *(v37 + 23);
  v39 = v38;
  v40 = *(v37 + 8);
  if ((v38 & 0x80u) == 0)
  {
    v41 = *(v37 + 23);
  }

  else
  {
    v41 = v40;
  }

  if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
    v38 = *(v37 + 23);
    v40 = *(v37 + 8);
    v2 = *(this + 21);
    v39 = *(v37 + 23);
  }

  else
  {
    v42 = 1;
  }

  if (v39 < 0)
  {
    v38 = v40;
  }

  v4 = (v4 + v42 + v38 + 1);
  if ((v2 & 0x1000) != 0)
  {
LABEL_88:
    v43 = *(this + 19);
    if ((v43 & 0x80000000) != 0)
    {
      v44 = 11;
    }

    else if (v43 >= 0x80)
    {
      v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 1;
    }

    else
    {
      v44 = 2;
    }

    v4 = (v44 + v4);
  }

LABEL_94:
  *(this + 20) = v4;
  return v4;
}

void CLMicroLocationProto::TriggerEvent::CheckTypeAndMergeFrom(CLMicroLocationProto::TriggerEvent *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::TriggerEvent::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::LegacyClientStatusUpdate::~LegacyClientStatusUpdate(CLMicroLocationProto::LegacyClientStatusUpdate *this)
{
  *this = &unk_286A59358;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::LegacyClientStatusUpdate::~LegacyClientStatusUpdate(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::LegacyClientStatusUpdate::MergePartialFromCodedStream(CLMicroLocationProto::LegacyClientStatusUpdate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_43;
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

      if (v8 - 31 < 0x19 || v8 <= 0xE && ((1 << v8) & 0x76B6) != 0)
      {
        if (v8 - 31 >= 0x19 && (v8 > 0xE || ((1 << v8) & 0x76B6) == 0))
        {
          CLMicroLocationProto::LegacyClientStatusUpdate::MergeFrom();
        }

        *(this + 6) |= 1u;
        *(this + 2) = v8;
      }

      v13 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v13 < v9 && *v13 == 16)
      {
        v10 = v13 + 1;
        *(a2 + 1) = v10;
LABEL_32:
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

        if (v14 - 1 < 2 || v14 == 255)
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
LABEL_43:
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
      goto LABEL_32;
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

unsigned int *CLMicroLocationProto::LegacyClientStatusUpdate::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CLMicroLocationProto::LegacyClientStatusUpdate::ByteSize(CLMicroLocationProto::LegacyClientStatusUpdate *this)
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

void CLMicroLocationProto::LegacyClientStatusUpdate::CheckTypeAndMergeFrom(CLMicroLocationProto::LegacyClientStatusUpdate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::LegacyClientStatusUpdate::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::SpectatingMotionUpdate::~SpectatingMotionUpdate(CLMicroLocationProto::SpectatingMotionUpdate *this)
{
  *this = &unk_286A593D0;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::SpectatingMotionUpdate::~SpectatingMotionUpdate(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::SpectatingMotionUpdate::MergePartialFromCodedStream(CLMicroLocationProto::SpectatingMotionUpdate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (v7 - 31 < 0x19 || v7 <= 0xE && ((1 << v7) & 0x76B6) != 0)
      {
        if (v7 - 31 >= 0x19 && (v7 > 0xE || ((1 << v7) & 0x76B6) == 0))
        {
          CLMicroLocationProto::SpectatingMotionUpdate::MergeFrom();
        }

        *(this + 5) |= 1u;
        *(this + 2) = v7;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v10 < v8 && *v10 == 16)
      {
        v9 = v10 + 1;
        *(a2 + 1) = v9;
LABEL_29:
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

        *(this + 12) = v11 != 0;
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
      goto LABEL_29;
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

uint64_t CLMicroLocationProto::SpectatingMotionUpdate::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::SpectatingMotionUpdate::ByteSize(CLMicroLocationProto::SpectatingMotionUpdate *this)
{
  LOBYTE(v2) = *(this + 20);
  if (v2)
  {
    if (*(this + 20))
    {
      v5 = *(this + 2);
      if ((v5 & 0x80000000) != 0)
      {
        v3 = 11;
      }

      else if (v5 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(this + 5);
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

    result = (v2 & 2u) + v3;
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void CLMicroLocationProto::SpectatingMotionUpdate::CheckTypeAndMergeFrom(CLMicroLocationProto::SpectatingMotionUpdate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::SpectatingMotionUpdate::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::EnabledStateUpdate::~EnabledStateUpdate(CLMicroLocationProto::EnabledStateUpdate *this)
{
  *this = &unk_286A59448;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::EnabledStateUpdate::~EnabledStateUpdate(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::EnabledStateUpdate::MergePartialFromCodedStream(CLMicroLocationProto::EnabledStateUpdate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
                goto LABEL_37;
              }

              v10 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_69;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v14 = *(a2 + 1);
            v7 = *(a2 + 2);
LABEL_61:
            v36 = 0;
            if (v14 >= v7 || (v21 = *v14, (v21 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
              if (!result)
              {
                return result;
              }

              v21 = v36;
              v22 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v22 = v14 + 1;
              *(a2 + 1) = v22;
            }

            *(this + 13) = v21 != 0;
            *(this + 6) |= 4u;
            if (v22 < v7 && *v22 == 32)
            {
              v10 = v22 + 1;
              *(a2 + 1) = v10;
LABEL_69:
              v36 = 0;
              if (v10 >= v7 || (v23 = *v10, (v23 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
                if (!result)
                {
                  return result;
                }

                v23 = v36;
                v24 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                v24 = v10 + 1;
                *(a2 + 1) = v24;
              }

              *(this + 14) = v23 != 0;
              *(this + 6) |= 8u;
              if (v24 < v7 && *v24 == 40)
              {
                v16 = v24 + 1;
                *(a2 + 1) = v16;
                goto LABEL_77;
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

              v9 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_53;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v36 = 0;
            v12 = *(a2 + 1);
            if (v12 >= *(a2 + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
              if (!result)
              {
                return result;
              }

              v13 = v36;
            }

            else
            {
              *(a2 + 1) = v12 + 1;
            }

            if (v13 - 31 < 0x19 || v13 <= 0xE && ((1 << v13) & 0x76B6) != 0)
            {
              if (v13 - 31 >= 0x19 && (v13 > 0xE || ((1 << v13) & 0x76B6) == 0))
              {
                CLMicroLocationProto::EnabledStateUpdate::MergeFrom();
              }

              *(this + 6) |= 1u;
              *(this + 2) = v13;
            }

            v18 = *(a2 + 1);
            v7 = *(a2 + 2);
            if (v18 < v7 && *v18 == 16)
            {
              v9 = v18 + 1;
              *(a2 + 1) = v9;
LABEL_53:
              v36 = 0;
              if (v9 >= v7 || (v19 = *v9, (v19 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
                if (!result)
                {
                  return result;
                }

                v19 = v36;
                v20 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                v20 = v9 + 1;
                *(a2 + 1) = v20;
              }

              *(this + 12) = v19 != 0;
              *(this + 6) |= 2u;
              if (v20 < v7 && *v20 == 24)
              {
                v14 = v20 + 1;
                *(a2 + 1) = v14;
                goto LABEL_61;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v6 != 5)
        {
          if (v6 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v11 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_85;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_77:
        v36 = 0;
        if (v16 >= v7 || (v25 = *v16, (v25 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
          if (!result)
          {
            return result;
          }

          v25 = v36;
          v26 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v26 = v16 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 15) = v25 != 0;
        *(this + 6) |= 0x10u;
        if (v26 < v7 && *v26 == 48)
        {
          v11 = v26 + 1;
          *(a2 + 1) = v11;
LABEL_85:
          v36 = 0;
          if (v11 >= v7 || (v27 = *v11, (v27 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
            if (!result)
            {
              return result;
            }

            v27 = v36;
            v28 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v28 = v11 + 1;
            *(a2 + 1) = v28;
          }

          *(this + 16) = v27 != 0;
          *(this + 6) |= 0x20u;
          if (v28 < v7 && *v28 == 56)
          {
            v15 = v28 + 1;
            *(a2 + 1) = v15;
LABEL_93:
            v36 = 0;
            if (v15 >= v7 || (v29 = *v15, (v29 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
              if (!result)
              {
                return result;
              }

              v29 = v36;
              v30 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v30 = v15 + 1;
              *(a2 + 1) = v30;
            }

            *(this + 17) = v29 != 0;
            *(this + 6) |= 0x40u;
            if (v30 < v7 && *v30 == 64)
            {
              v17 = v30 + 1;
              *(a2 + 1) = v17;
              goto LABEL_101;
            }
          }
        }
      }

      if (v6 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v15 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_93;
      }

      if (v6 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v17 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_101:
      v36 = 0;
      if (v17 >= v7 || (v31 = *v17, (v31 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
        if (!result)
        {
          return result;
        }

        v31 = v36;
        v32 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v32 = v17 + 1;
        *(a2 + 1) = v32;
      }

      *(this + 18) = v31 != 0;
      *(this + 6) |= 0x80u;
      if (v32 < v7 && *v32 == 72)
      {
        v8 = v32 + 1;
        *(a2 + 1) = v8;
LABEL_109:
        v36 = 0;
        if (v8 >= v7 || (v33 = *v8, (v33 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
          if (!result)
          {
            return result;
          }

          v33 = v36;
          v34 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v34 = v8 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 19) = v33 != 0;
        *(this + 6) |= 0x100u;
        if (v34 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 9 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_109;
    }

LABEL_37:
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

uint64_t CLMicroLocationProto::EnabledStateUpdate::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 24);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 13), a2, a4);
  v6 = *(v5 + 24);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 14), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 15), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 16), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 18), a2, a4);
    if ((*(v5 + 24) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 17), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return this;
  }

LABEL_19:
  v7 = *(v5 + 19);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, v7, a2, a4);
}

uint64_t CLMicroLocationProto::EnabledStateUpdate::ByteSize(CLMicroLocationProto::EnabledStateUpdate *this)
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
      }

      else if (v5 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(this + 6);
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

    v6.i64[0] = 0x200000002;
    v6.i64[1] = 0x200000002;
    v4 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_25921EA90), v6)) + (v2 & 2) + ((v2 >> 5) & 2) + ((v2 >> 6) & 2) + v3;
  }

  else
  {
    v4 = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    v7 = (v2 >> 7) & 2;
  }

  else
  {
    v7 = 0;
  }

  result = (v7 + v4);
  *(this + 5) = result;
  return result;
}

void CLMicroLocationProto::EnabledStateUpdate::CheckTypeAndMergeFrom(CLMicroLocationProto::EnabledStateUpdate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::EnabledStateUpdate::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ScreenStateUpdate::~ScreenStateUpdate(CLMicroLocationProto::ScreenStateUpdate *this)
{
  *this = &unk_286A594C0;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ScreenStateUpdate::~ScreenStateUpdate(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ScreenStateUpdate::MergePartialFromCodedStream(CLMicroLocationProto::ScreenStateUpdate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (v7 - 31 < 0x19 || v7 <= 0xE && ((1 << v7) & 0x76B6) != 0)
      {
        if (v7 - 31 >= 0x19 && (v7 > 0xE || ((1 << v7) & 0x76B6) == 0))
        {
          CLMicroLocationProto::ScreenStateUpdate::MergeFrom();
        }

        *(this + 5) |= 1u;
        *(this + 2) = v7;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v10 < v8 && *v10 == 16)
      {
        v9 = v10 + 1;
        *(a2 + 1) = v9;
LABEL_29:
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

        *(this + 12) = v11 != 0;
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
      goto LABEL_29;
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

uint64_t CLMicroLocationProto::ScreenStateUpdate::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::ScreenStateUpdate::ByteSize(CLMicroLocationProto::ScreenStateUpdate *this)
{
  LOBYTE(v2) = *(this + 20);
  if (v2)
  {
    if (*(this + 20))
    {
      v5 = *(this + 2);
      if ((v5 & 0x80000000) != 0)
      {
        v3 = 11;
      }

      else if (v5 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(this + 5);
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

    result = (v2 & 2u) + v3;
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void CLMicroLocationProto::ScreenStateUpdate::CheckTypeAndMergeFrom(CLMicroLocationProto::ScreenStateUpdate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ScreenStateUpdate::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::CloudBackupExport::~CloudBackupExport(CLMicroLocationProto::CloudBackupExport *this)
{
  *this = &unk_286A59538;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::CloudBackupExport::~CloudBackupExport(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::CloudBackupExport::MergePartialFromCodedStream(CLMicroLocationProto::CloudBackupExport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v11);
        if (!result)
        {
          return result;
        }

        v7 = v11;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 - 31 < 0x19 || (v7 <= 0xE ? (v8 = ((1 << v7) & 0x76B6) == 0) : (v8 = 1), !v8))
      {
        if (v7 - 31 >= 0x19 && (v7 > 0xE || ((1 << v7) & 0x76B6) == 0))
        {
          CLMicroLocationProto::CloudBackupExport::MergeFrom();
        }

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

uint64_t CLMicroLocationProto::CloudBackupExport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::CloudBackupExport::ByteSize(CLMicroLocationProto::CloudBackupExport *this)
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

void CLMicroLocationProto::CloudBackupExport::CheckTypeAndMergeFrom(CLMicroLocationProto::CloudBackupExport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::CloudBackupExport::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::CloudBackupImport::~CloudBackupImport(CLMicroLocationProto::CloudBackupImport *this)
{
  *this = &unk_286A595B0;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::CloudBackupImport::~CloudBackupImport(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::CloudBackupImport::MergePartialFromCodedStream(CLMicroLocationProto::CloudBackupImport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v11);
        if (!result)
        {
          return result;
        }

        v7 = v11;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 - 31 < 0x19 || (v7 <= 0xE ? (v8 = ((1 << v7) & 0x76B6) == 0) : (v8 = 1), !v8))
      {
        if (v7 - 31 >= 0x19 && (v7 > 0xE || ((1 << v7) & 0x76B6) == 0))
        {
          CLMicroLocationProto::CloudBackupImport::MergeFrom();
        }

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

uint64_t CLMicroLocationProto::CloudBackupImport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::CloudBackupImport::ByteSize(CLMicroLocationProto::CloudBackupImport *this)
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

void CLMicroLocationProto::CloudBackupImport::CheckTypeAndMergeFrom(CLMicroLocationProto::CloudBackupImport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::CloudBackupImport::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::DataMigration::~DataMigration(CLMicroLocationProto::DataMigration *this)
{
  *this = &unk_286A59628;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::DataMigration::~DataMigration(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::DataMigration::MergePartialFromCodedStream(CLMicroLocationProto::DataMigration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v11);
        if (!result)
        {
          return result;
        }

        v7 = v11;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 - 31 < 0x19 || (v7 <= 0xE ? (v8 = ((1 << v7) & 0x76B6) == 0) : (v8 = 1), !v8))
      {
        if (v7 - 31 >= 0x19 && (v7 > 0xE || ((1 << v7) & 0x76B6) == 0))
        {
          CLMicroLocationProto::DataMigration::MergeFrom();
        }

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

uint64_t CLMicroLocationProto::DataMigration::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::DataMigration::ByteSize(CLMicroLocationProto::DataMigration *this)
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

void CLMicroLocationProto::DataMigration::CheckTypeAndMergeFrom(CLMicroLocationProto::DataMigration *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::DataMigration::MergeFrom(this, lpsrc);
}

CLMicroLocationProto::ChannelAndCount *CLMicroLocationProto::ChannelAndCount::ChannelAndCount(CLMicroLocationProto::ChannelAndCount *this, const CLMicroLocationProto::ChannelAndCount *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_286A596A0;
  *(this + 6) = 0;
  CLMicroLocationProto::ChannelAndCount::MergeFrom(this, a2);
  return this;
}

void CLMicroLocationProto::ChannelAndCount::MergeFrom(CLMicroLocationProto::ChannelAndCount *this, const CLMicroLocationProto::ChannelAndCount *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
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
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_25910DC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ChannelAndCount::~ChannelAndCount(CLMicroLocationProto::ChannelAndCount *this)
{
  *this = &unk_286A596A0;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ChannelAndCount::~ChannelAndCount(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ChannelAndCount::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ChannelAndCount::MergePartialFromCodedStream(CLMicroLocationProto::ChannelAndCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v8;
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 6) |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(a2 + 1) = v10;
LABEL_22:
        if (v10 >= v6 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 6) |= 2u;
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

uint64_t CLMicroLocationProto::ChannelAndCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::ChannelAndCount::ByteSize(CLMicroLocationProto::ChannelAndCount *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v4 = *(this + 4);
    if (v4 < 0x80)
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    if ((*(this + 6) & 2) != 0)
    {
LABEL_10:
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_11:
  *(this + 5) = v3;
  return v3;
}

void CLMicroLocationProto::ChannelAndCount::CheckTypeAndMergeFrom(CLMicroLocationProto::ChannelAndCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ChannelAndCount::MergeFrom(this, lpsrc);
}

CLMicroLocationProto::WifiHistogram *CLMicroLocationProto::WifiHistogram::WifiHistogram(CLMicroLocationProto::WifiHistogram *this, const CLMicroLocationProto::WifiHistogram *a2)
{
  *(this + 1) = 0;
  *this = &unk_286A59718;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  CLMicroLocationProto::WifiHistogram::MergeFrom(this, a2);
  return this;
}

void sub_25910E084(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::WifiHistogram::MergeFrom(CLMicroLocationProto::WifiHistogram *this, const CLMicroLocationProto::WifiHistogram *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ChannelAndCount>::TypeHandler>((this + 8), a2 + 8);
  if (*(a2 + 40))
  {
    v4 = *(a2 + 8);
    if (v4 >= 3)
    {
      CLMicroLocationProto::WifiHistogram::MergeFrom();
    }

    *(this + 10) |= 1u;
    *(this + 8) = v4;
  }
}

void sub_25910E148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::WifiHistogram::~WifiHistogram(CLMicroLocationProto::WifiHistogram *this)
{
  *this = &unk_286A59718;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::WifiHistogram::~WifiHistogram(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::WifiHistogram::Clear(CLMicroLocationProto::WifiHistogram *this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 8);
  *(this + 10) = 0;
  return result;
}

uint64_t CLMicroLocationProto::WifiHistogram::MergePartialFromCodedStream(CLMicroLocationProto::WifiHistogram *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v22 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
        if (!result)
        {
          return result;
        }

        v8 = v22;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 <= 2)
      {
        *(this + 10) |= 1u;
        *(this + 8) = v8;
      }

      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 18)
      {
        do
        {
          *(a2 + 1) = v10 + 1;
LABEL_23:
          v11 = *(this + 5);
          v12 = *(this + 4);
          if (v12 >= v11)
          {
            if (v11 == *(this + 6))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
              v11 = *(this + 5);
            }

            *(this + 5) = v11 + 1;
            operator new();
          }

          v13 = *(this + 1);
          *(this + 4) = v12 + 1;
          v14 = *(v13 + 8 * v12);
          v23 = 0;
          v15 = *(a2 + 1);
          if (v15 >= *(a2 + 2) || *v15 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23))
            {
              return 0;
            }
          }

          else
          {
            v23 = *v15;
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
          if (!CLMicroLocationProto::ChannelAndCount::MergePartialFromCodedStream(v14, a2) || *(a2 + 36) != 1)
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

          v10 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        while (v10 < v21 && *v10 == 18);
        if (v10 == v21 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
}

uint64_t CLMicroLocationProto::WifiHistogram::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 40))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 32), a2, a4);
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

uint64_t CLMicroLocationProto::WifiHistogram::ByteSize(CLMicroLocationProto::WifiHistogram *this)
{
  if (*(this + 40))
  {
    v3 = *(this + 8);
    if ((v3 & 0x80000000) != 0)
    {
      v2 = 11;
    }

    else if (v3 >= 0x80)
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
      v7 = CLMicroLocationProto::ChannelAndCount::ByteSize(*(*(this + 1) + 8 * v6));
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

void CLMicroLocationProto::WifiHistogram::CheckTypeAndMergeFrom(CLMicroLocationProto::WifiHistogram *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::WifiHistogram::MergeFrom(this, lpsrc);
}

CLMicroLocationProto::AnchorAppearanceConfiguration *CLMicroLocationProto::AnchorAppearanceConfiguration::AnchorAppearanceConfiguration(CLMicroLocationProto::AnchorAppearanceConfiguration *this, const CLMicroLocationProto::AnchorAppearanceConfiguration *a2)
{
  *(this + 2) = 1;
  *this = &unk_286A59790;
  *(this + 1) = 0;
  *(this + 6) = 0;
  CLMicroLocationProto::AnchorAppearanceConfiguration::MergeFrom(this, a2);
  return this;
}

void CLMicroLocationProto::AnchorAppearanceConfiguration::MergeFrom(CLMicroLocationProto::AnchorAppearanceConfiguration *this, const CLMicroLocationProto::AnchorAppearanceConfiguration *a2)
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
      if (v5 >= 3)
      {
        CLMicroLocationProto::AnchorAppearanceConfiguration::MergeFrom();
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
        CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
        v7 = *(CLMicroLocationProto::AnchorAppearanceConfiguration::default_instance_ + 8);
      }

      CLMicroLocationProto::anchorAppearancesVector::MergeFrom(v6, v7);
    }
  }
}

void sub_25910E8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration(CLMicroLocationProto::AnchorAppearanceConfiguration *this)
{
  *this = &unk_286A59790;
  CLMicroLocationProto::AnchorAppearanceConfiguration::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::AnchorAppearanceConfiguration::SharedDtor(CLMicroLocationProto::AnchorAppearanceConfiguration *this)
{
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  if (CLMicroLocationProto::AnchorAppearanceConfiguration::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CLMicroLocationProto::AnchorAppearanceConfiguration::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 16) = 1;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 8);
      if (v3)
      {
        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(v3 + 8);
        *(v3 + 36) = 0;
      }
    }
  }

  *(v1 + 24) = 0;
  return this;
}

uint64_t CLMicroLocationProto::AnchorAppearanceConfiguration::MergePartialFromCodedStream(CLMicroLocationProto::AnchorAppearanceConfiguration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (v8 <= 2)
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
    if (!CLMicroLocationProto::anchorAppearancesVector::MergePartialFromCodedStream(v11, a2) || *(a2 + 36) != 1)
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

unsigned int *CLMicroLocationProto::AnchorAppearanceConfiguration::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[6];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, this[4], a2, a4);
    v6 = v5[6];
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 1);
    if (!v7)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v7 = *(CLMicroLocationProto::AnchorAppearanceConfiguration::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::AnchorAppearanceConfiguration::ByteSize(CLMicroLocationProto::AnchorAppearanceConfiguration *this)
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
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v5 = *(CLMicroLocationProto::AnchorAppearanceConfiguration::default_instance_ + 8);
    }

    v6 = CLMicroLocationProto::anchorAppearancesVector::ByteSize(v5);
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

void CLMicroLocationProto::AnchorAppearanceConfiguration::CheckTypeAndMergeFrom(CLMicroLocationProto::AnchorAppearanceConfiguration *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::AnchorAppearanceConfiguration::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::AnchorValueStatisticsConfiguration::MergeFrom(CLMicroLocationProto::AnchorValueStatisticsConfiguration *this, const CLMicroLocationProto::AnchorValueStatisticsConfiguration *a2)
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
      v5 = *(a2 + 6);
      if (v5 >= 3)
      {
        CLMicroLocationProto::AnchorValueStatisticsConfiguration::MergeFrom();
      }

      *(this + 8) |= 1u;
      *(this + 6) = v5;
      v4 = *(a2 + 8);
    }

    if ((v4 & 2) != 0)
    {
      *(this + 8) |= 2u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
        v7 = *(CLMicroLocationProto::AnchorValueStatisticsConfiguration::default_instance_ + 8);
      }

      CLMicroLocationProto::ClusterAnchorValueStatisticsVector::MergeFrom(v6, v7);
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 2);
      *(this + 8) |= 4u;
      v9 = *(this + 2);
      if (v9 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v9, v8);
    }
  }
}

void sub_25910F05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::AnchorValueStatisticsConfiguration::~AnchorValueStatisticsConfiguration(CLMicroLocationProto::AnchorValueStatisticsConfiguration *this)
{
  *this = &unk_286A59808;
  CLMicroLocationProto::AnchorValueStatisticsConfiguration::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::AnchorValueStatisticsConfiguration::~AnchorValueStatisticsConfiguration(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::AnchorValueStatisticsConfiguration::SharedDtor(CLMicroLocationProto::AnchorValueStatisticsConfiguration *this)
{
  v1 = this;
  v2 = *(this + 2);
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  if (CLMicroLocationProto::AnchorValueStatisticsConfiguration::default_instance_ != v1)
  {
    v4 = *(v1 + 1);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t CLMicroLocationProto::AnchorValueStatisticsConfiguration::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    *(this + 24) = 2;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 8);
      if (v3)
      {
        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(v3 + 8);
        *(v3 + 36) = 0;
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 4) != 0)
    {
      v4 = *(v1 + 16);
      if (v4 != MEMORY[0x277D82C30])
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
  }

  *(v1 + 32) = 0;
  return this;
}

uint64_t CLMicroLocationProto::AnchorValueStatisticsConfiguration::MergePartialFromCodedStream(CLMicroLocationProto::AnchorValueStatisticsConfiguration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v8 != 2)
          {
            goto LABEL_17;
          }

LABEL_41:
          *(this + 8) |= 4u;
          if (*(this + 2) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
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

        if (v7 == 2)
        {
          break;
        }

        if (v7 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_17;
        }

        v21 = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
          if (!result)
          {
            return result;
          }

          v10 = v21;
        }

        else
        {
          *(a2 + 1) = v9 + 1;
        }

        if (v10 <= 2)
        {
          *(this + 8) |= 1u;
          *(this + 6) = v10;
        }

        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 18)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_27;
        }
      }

      if (v8 == 2)
      {
        break;
      }

LABEL_17:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

LABEL_27:
    *(this + 8) |= 2u;
    v13 = *(this + 1);
    if (!v13)
    {
      operator new();
    }

    v22 = 0;
    v14 = *(a2 + 1);
    if (v14 >= *(a2 + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
      {
        return 0;
      }
    }

    else
    {
      v22 = *v14;
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
    if (!CLMicroLocationProto::ClusterAnchorValueStatisticsVector::MergePartialFromCodedStream(v13, a2) || *(a2 + 36) != 1)
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
    if (v20 < *(a2 + 2) && *v20 == 26)
    {
      *(a2 + 1) = v20 + 1;
      goto LABEL_41;
    }
  }
}

unsigned int *CLMicroLocationProto::AnchorValueStatisticsConfiguration::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[8];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, this[6], a2, a4);
    v6 = v5[8];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
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

  v7 = *(v5 + 1);
  if (!v7)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v7 = *(CLMicroLocationProto::AnchorValueStatisticsConfiguration::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  if ((v5[8] & 4) != 0)
  {
LABEL_9:
    v8 = *(v5 + 2);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return this;
}

uint64_t CLMicroLocationProto::AnchorValueStatisticsConfiguration::ByteSize(CLMicroLocationProto::AnchorValueStatisticsConfiguration *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_29;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_13:
    v5 = *(this + 1);
    if (!v5)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v5 = *(CLMicroLocationProto::AnchorValueStatisticsConfiguration::default_instance_ + 8);
    }

    v6 = CLMicroLocationProto::ClusterAnchorValueStatisticsVector::ByteSize(v5);
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
    v2 = *(this + 8);
    goto LABEL_19;
  }

  v4 = *(this + 6);
  if ((v4 & 0x80000000) != 0)
  {
    v3 = 11;
    if ((v2 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 8);
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v3 = 2;
    if ((v2 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_19:
  if ((v2 & 4) != 0)
  {
    v9 = *(this + 2);
    v10 = *(v9 + 23);
    v11 = v10;
    v12 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v13 = *(v9 + 23);
    }

    else
    {
      v13 = v12;
    }

    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
      v10 = *(v9 + 23);
      v12 = *(v9 + 8);
      v11 = *(v9 + 23);
    }

    else
    {
      v14 = 1;
    }

    if (v11 < 0)
    {
      v10 = v12;
    }

    v3 = (v3 + v14 + v10 + 1);
  }

LABEL_29:
  *(this + 7) = v3;
  return v3;
}

void CLMicroLocationProto::AnchorValueStatisticsConfiguration::CheckTypeAndMergeFrom(CLMicroLocationProto::AnchorValueStatisticsConfiguration *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::AnchorValueStatisticsConfiguration::MergeFrom(this, lpsrc);
}

CLMicroLocationProto::Configuration *CLMicroLocationProto::Configuration::Configuration(CLMicroLocationProto::Configuration *this, const CLMicroLocationProto::Configuration *a2)
{
  *this = &unk_286A59880;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  CLMicroLocationProto::Configuration::MergeFrom(this, a2);
  return this;
}

void CLMicroLocationProto::Configuration::MergeFrom(CLMicroLocationProto::Configuration *this, const CLMicroLocationProto::Configuration *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    v5 = *(a2 + 10);
    if (v5 >= 3)
    {
      CLMicroLocationProto::Configuration::MergeFrom();
    }

    *(this + 12) |= 1u;
    *(this + 10) = v5;
    v4 = *(a2 + 12);
  }

  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    *(this + 12) |= 4u;
    v7 = *(this + 2);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 2);
    if (!v8)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v8 = *(CLMicroLocationProto::Configuration::default_instance_ + 16);
    }

    CLMicroLocationProto::WifiHistogram::MergeFrom(v7, v8);
    v4 = *(a2 + 12);
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

  v6 = *(a2 + 1);
  *(this + 12) |= 2u;
  *(this + 1) = v6;
  v4 = *(a2 + 12);
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
  *(this + 12) |= 8u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v10 = *(CLMicroLocationProto::Configuration::default_instance_ + 24);
  }

  CLMicroLocationProto::AnchorAppearanceConfiguration::MergeFrom(v9, v10);
  if ((*(a2 + 12) & 0x10) != 0)
  {
LABEL_23:
    *(this + 12) |= 0x10u;
    v11 = *(this + 4);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 4);
    if (!v12)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v12 = *(CLMicroLocationProto::Configuration::default_instance_ + 32);
    }

    CLMicroLocationProto::AnchorValueStatisticsConfiguration::MergeFrom(v11, v12);
  }
}

void sub_25910FAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::Configuration::~Configuration(CLMicroLocationProto::Configuration *this)
{
  *this = &unk_286A59880;
  CLMicroLocationProto::Configuration::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::Configuration::~Configuration(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::Configuration::SharedDtor(CLMicroLocationProto::Configuration *this)
{
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  if (CLMicroLocationProto::Configuration::default_instance_ != this)
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
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t CLMicroLocationProto::Configuration::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 48);
  if (v2)
  {
    *(this + 40) = 0;
    *(this + 8) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 40))
        {
          *(v3 + 32) = 0;
        }

        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(v3 + 8);
        *(v3 + 40) = 0;
        v2 = *(v1 + 48);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = CLMicroLocationProto::AnchorAppearanceConfiguration::Clear(this);
        v2 = *(v1 + 48);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = CLMicroLocationProto::AnchorValueStatisticsConfiguration::Clear(this);
      }
    }
  }

  *(v1 + 48) = 0;
  return this;
}

uint64_t CLMicroLocationProto::Configuration::MergePartialFromCodedStream(CLMicroLocationProto::Configuration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (v7 != 2)
          {
            goto LABEL_21;
          }

          v8 = *(this + 12);
          goto LABEL_38;
        }

        if (v6 == 5)
        {
          if (v7 != 2)
          {
            goto LABEL_21;
          }

LABEL_52:
          *(this + 12) |= 8u;
          v22 = *(this + 3);
          if (!v22)
          {
            operator new();
          }

          v35[0] = 0;
          v23 = *(a2 + 1);
          if (v23 >= *(a2 + 2) || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v35))
            {
              return 0;
            }
          }

          else
          {
            v35[0] = *v23;
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
          if (!CLMicroLocationProto::AnchorAppearanceConfiguration::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
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
          if (v28 < *(a2 + 2) && *v28 == 50)
          {
            *(a2 + 1) = v28 + 1;
            goto LABEL_66;
          }
        }

        else
        {
          if (v6 != 6 || v7 != 2)
          {
            goto LABEL_21;
          }

LABEL_66:
          *(this + 12) |= 0x10u;
          v29 = *(this + 4);
          if (!v29)
          {
            operator new();
          }

          v35[0] = 0;
          v30 = *(a2 + 1);
          if (v30 >= *(a2 + 2) || *v30 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v35))
            {
              return 0;
            }
          }

          else
          {
            v35[0] = *v30;
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
          if (!CLMicroLocationProto::AnchorValueStatisticsConfiguration::MergePartialFromCodedStream(v29, a2) || *(a2 + 36) != 1)
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

      v35[0] = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v35);
        if (!result)
        {
          return result;
        }

        v10 = v35[0];
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v10 <= 2)
      {
        *(this + 12) |= 1u;
        *(this + 10) = v10;
      }

      v12 = *(a2 + 1);
      if (v12 < *(a2 + 2) && *v12 == 17)
      {
        *(a2 + 1) = v12 + 1;
LABEL_34:
        *v35 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v35) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v35;
        v8 = *(this + 12) | 2;
        *(this + 12) = v8;
        v13 = *(a2 + 1);
        if (v13 < *(a2 + 2) && *v13 == 34)
        {
          *(a2 + 1) = v13 + 1;
LABEL_38:
          *(this + 12) = v8 | 4;
          v14 = *(this + 2);
          if (!v14)
          {
            operator new();
          }

          v35[0] = 0;
          v15 = *(a2 + 1);
          if (v15 >= *(a2 + 2) || *v15 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v35))
            {
              return 0;
            }
          }

          else
          {
            v35[0] = *v15;
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
          if (!CLMicroLocationProto::WifiHistogram::MergePartialFromCodedStream(v14, a2) || *(a2 + 36) != 1)
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
          if (v21 < *(a2 + 2) && *v21 == 42)
          {
            *(a2 + 1) = v21 + 1;
            goto LABEL_52;
          }
        }
      }
    }

    if (v6 == 2 && v7 == 1)
    {
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

unsigned int *CLMicroLocationProto::Configuration::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[12];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, this[10], a2, a4);
    v6 = v5[12];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 1), a3);
  v6 = v5[12];
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
  v7 = *(v5 + 2);
  if (!v7)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v7 = *(CLMicroLocationProto::Configuration::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  v6 = v5[12];
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
  v8 = *(v5 + 3);
  if (!v8)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v8 = *(CLMicroLocationProto::Configuration::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  if ((v5[12] & 0x10) != 0)
  {
LABEL_15:
    v9 = *(v5 + 4);
    if (!v9)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v9 = *(CLMicroLocationProto::Configuration::default_instance_ + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::Configuration::ByteSize(CLMicroLocationProto::Configuration *this)
{
  LOBYTE(v2) = *(this + 48);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_35;
  }

  if (*(this + 48))
  {
    v5 = *(this + 10);
    if ((v5 & 0x80000000) != 0)
    {
      v3 = 11;
    }

    else if (v5 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 12);
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
    v4 = v3 + 9;
  }

  else
  {
    v4 = v3;
  }

  if ((v2 & 4) != 0)
  {
    v6 = *(this + 2);
    if (!v6)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v6 = *(CLMicroLocationProto::Configuration::default_instance_ + 16);
    }

    v7 = CLMicroLocationProto::WifiHistogram::ByteSize(v6);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    }

    else
    {
      v9 = 1;
    }

    v4 = (v4 + v8 + v9 + 1);
    v2 = *(this + 12);
    if ((v2 & 8) == 0)
    {
LABEL_15:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_29;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_15;
  }

  v10 = *(this + 3);
  if (!v10)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v10 = *(CLMicroLocationProto::Configuration::default_instance_ + 24);
  }

  v11 = CLMicroLocationProto::AnchorAppearanceConfiguration::ByteSize(v10);
  v12 = v11;
  if (v11 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
  }

  else
  {
    v13 = 1;
  }

  v4 = (v4 + v12 + v13 + 1);
  if ((*(this + 12) & 0x10) != 0)
  {
LABEL_29:
    v14 = *(this + 4);
    if (!v14)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v14 = *(CLMicroLocationProto::Configuration::default_instance_ + 32);
    }

    v15 = CLMicroLocationProto::AnchorValueStatisticsConfiguration::ByteSize(v14);
    v16 = v15;
    if (v15 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
    }

    else
    {
      v17 = 1;
    }

    v4 = (v4 + v16 + v17 + 1);
  }

LABEL_35:
  *(this + 11) = v4;
  return v4;
}

void CLMicroLocationProto::Configuration::CheckTypeAndMergeFrom(CLMicroLocationProto::Configuration *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::Configuration::MergeFrom(this, lpsrc);
}

CLMicroLocationProto::RapportDevice *CLMicroLocationProto::RapportDevice::RapportDevice(CLMicroLocationProto::RapportDevice *this, const CLMicroLocationProto::RapportDevice *a2)
{
  v3 = MEMORY[0x277D82C30];
  *this = &unk_286A598F8;
  *(this + 1) = v3;
  *(this + 2) = v3;
  *(this + 3) = 0;
  CLMicroLocationProto::RapportDevice::MergeFrom(this, a2);
  return this;
}

void CLMicroLocationProto::RapportDevice::MergeFrom(CLMicroLocationProto::RapportDevice *this, const CLMicroLocationProto::RapportDevice *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    v5 = MEMORY[0x277D82C30];
    if (*(a2 + 28))
    {
      v6 = *(a2 + 1);
      *(this + 7) |= 1u;
      v7 = *(this + 1);
      if (v7 == v5)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v8 = *(a2 + 2);
      *(this + 7) |= 2u;
      v9 = *(this + 2);
      if (v9 == v5)
      {
        operator new();
      }

      std::string::operator=(v9, v8);
    }
  }
}

void sub_259110720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::RapportDevice::~RapportDevice(CLMicroLocationProto::RapportDevice *this)
{
  *this = &unk_286A598F8;
  CLMicroLocationProto::ServiceDelete::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::RapportDevice::~RapportDevice(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::RapportDevice::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    v1 = MEMORY[0x277D82C30];
    if (*(this + 28))
    {
      v2 = *(this + 8);
      if (v2 != MEMORY[0x277D82C30])
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    if ((*(this + 28) & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3 != v1)
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
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CLMicroLocationProto::RapportDevice::MergePartialFromCodedStream(CLMicroLocationProto::RapportDevice *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
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

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        goto LABEL_17;
      }

      *(this + 7) |= 1u;
      if (*(this + 1) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 18)
      {
        *(a2 + 1) = v9 + 1;
LABEL_20:
        *(this + 7) |= 2u;
        if (*(this + 2) == v4)
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
    }

    if (v7 == 2)
    {
      goto LABEL_20;
    }

LABEL_17:
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

uint64_t CLMicroLocationProto::RapportDevice::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2)
{
  v2 = this;
  v3 = *(this + 28);
  if (v3)
  {
    v4 = *(this + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v3 = *(v2 + 28);
  }

  if ((v3 & 2) != 0)
  {
    v5 = *(v2 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t CLMicroLocationProto::RapportDevice::ByteSize(CLMicroLocationProto::RapportDevice *this)
{
  LOBYTE(v2) = *(this + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_24;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

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
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v9 = v10 + 1;
    v2 = *(this + 7);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 2;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  v3 = (v9 + v5);
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v11 = *(this + 2);
    v12 = *(v11 + 23);
    v13 = v12;
    v14 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v15 = *(v11 + 23);
    }

    else
    {
      v15 = v14;
    }

    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      v12 = *(v11 + 23);
      v14 = *(v11 + 8);
      v13 = *(v11 + 23);
    }

    else
    {
      v16 = 1;
    }

    if (v13 < 0)
    {
      v12 = v14;
    }

    v3 = (v3 + v16 + v12 + 1);
  }

LABEL_24:
  *(this + 6) = v3;
  return v3;
}

void CLMicroLocationProto::RapportDevice::CheckTypeAndMergeFrom(CLMicroLocationProto::RapportDevice *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::RapportDevice::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::RapportDevice::CopyFrom(CLMicroLocationProto::RapportDevice *this, const CLMicroLocationProto::RapportDevice *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLMicroLocationProto::RapportDevice::MergeFrom(this, a2);
  }
}

void CLMicroLocationProto::ULLabelDataWiFi::MergeFrom(CLMicroLocationProto::ULLabelDataWiFi *this, const CLMicroLocationProto::ULLabelDataWiFi *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    *(this + 1) = v4;
  }
}

void sub_259110D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ULLabelDataWiFi::~ULLabelDataWiFi(CLMicroLocationProto::ULLabelDataWiFi *this)
{
  *this = &unk_286A59970;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ULLabelDataWiFi::~ULLabelDataWiFi(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ULLabelDataWiFi::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ULLabelDataWiFi::MergePartialFromCodedStream(CLMicroLocationProto::ULLabelDataWiFi *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (v7 >= v6 || (v8 = *v7, (v8 & 0x8000000000000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v11);
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

      *(this + 1) = v8;
      *(this + 5) |= 1u;
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

uint64_t CLMicroLocationProto::ULLabelDataWiFi::SerializeWithCachedSizes(uint64_t result, uint64_t a2)
{
  if (*(result + 20))
  {
    return MEMORY[0x2821F9CA0](1, *(result + 8), a2);
  }

  return result;
}

uint64_t CLMicroLocationProto::ULLabelDataWiFi::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 20))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void CLMicroLocationProto::ULLabelDataWiFi::CheckTypeAndMergeFrom(CLMicroLocationProto::ULLabelDataWiFi *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ULLabelDataWiFi::MergeFrom(this, lpsrc);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::PhotoFeatures>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_259111348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(uint64_t *result, int a2)
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

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::LocationSimilarityListElement>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_25911148C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ULROIPoint>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_25911159C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ULTrajectoryPoint>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_259111630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ULPositionedImage>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_2591116C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ChannelAndCount>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_259111758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t result)
{
  if (*(result + 8) >= 1)
  {
    v1 = 0;
    do
    {
      v2 = *(*result + 8 * v1);
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
      }

      else
      {
        *v2 = 0;
        *(v2 + 23) = 0;
      }

      ++v1;
    }

    while (v1 < *(result + 8));
  }

  *(result + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x259CA1F70);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::PhotoFeatures>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::PhotoFeatures>::TypeHandler>(a2, v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      CLMicroLocationProto::PhotoFeatures::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(int *a1)
{
  if (a1[3] >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*a1 + 8 * v2);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < a1[3]);
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x259CA1F70);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::LocationSimilarityListElement>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::LocationSimilarityListElement>::TypeHandler>(a2, v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      CLMicroLocationProto::LocationSimilarityListElement::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ULROIPoint>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ULROIPoint>::TypeHandler>(a2, v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      CLMicroLocationProto::ULROIPoint::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ULTrajectoryPoint>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ULTrajectoryPoint>::TypeHandler>(a2, v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      CLMicroLocationProto::ULTrajectoryPoint::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ULPositionedImage>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ULPositionedImage>::TypeHandler>(a2, v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      CLMicroLocationProto::ULPositionedImage::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ChannelAndCount>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ChannelAndCount>::TypeHandler>(a2, v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      CLMicroLocationProto::ChannelAndCount::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

uint64_t std::vector<ULBLEMeasurementDO>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    while (v4 != v6)
    {
      ULBLEMeasurementDO::operator=(v7, v4);
      v4 += 32;
      v7 += 32;
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t ULMeasurementFilters::filterInvalidMeasurements<ULUWBMeasurementDO>(uint64_t *a1, double *a2)
{
  v3 = std::remove_if[abi:ne200100]<std::__wrap_iter<ULUWBMeasurementDO *>,void ULMeasurementFilters::filterInvalidMeasurements<ULUWBMeasurementDO>(std::vector<ULUWBMeasurementDO> &,std::chrono::duration<long double,std::ratio<1l,1l>> const&)::{lambda(ULUWBMeasurementDO const&)#1}>(*a1, a1[1], a2);
  v4 = a1[1];

  return std::vector<ULUWBMeasurementDO>::erase(a1, v3, v4);
}

uint64_t std::vector<ULUWBMeasurementDO>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    while (v4 != v6)
    {
      ULUWBMeasurementDO::operator=(v7, v4);
      v4 += 32;
      v7 += 32;
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t std::remove_if[abi:ne200100]<std::__wrap_iter<ULUWBMeasurementDO *>,void ULMeasurementFilters::filterInvalidMeasurements<ULUWBMeasurementDO>(std::vector<ULUWBMeasurementDO> &,std::chrono::duration<long double,std::ratio<1l,1l>> const&)::{lambda(ULUWBMeasurementDO const&)#1}>(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (1)
    {
      v8 = cl::chrono::CFAbsoluteTimeClock::now();
      if (!ULMeasurementFilters::isValidMeasurement(v3, &v8, a3))
      {
        break;
      }

      v3 += 32;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 32; i != a2; i += 32)
      {
        v8 = cl::chrono::CFAbsoluteTimeClock::now();
        if (ULMeasurementFilters::isValidMeasurement(i, &v8, a3))
        {
          ULUWBMeasurementDO::operator=(v3, i);
          v3 += 32;
        }
      }
    }
  }

  return v3;
}

uint64_t ULMeasurementFilters::filterInvalidMeasurements<ULWiFiMeasurementDO>(uint64_t *a1, double *a2)
{
  v3 = std::remove_if[abi:ne200100]<std::__wrap_iter<ULWiFiMeasurementDO *>,void ULMeasurementFilters::filterInvalidMeasurements<ULWiFiMeasurementDO>(std::vector<ULWiFiMeasurementDO> &,std::chrono::duration<long double,std::ratio<1l,1l>> const&)::{lambda(ULWiFiMeasurementDO const&)#1}>(*a1, a1[1], a2);
  v4 = a1[1];

  return std::vector<ULWiFiMeasurementDO>::erase(a1, v3, v4);
}

uint64_t std::vector<ULWiFiMeasurementDO>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    while (v4 != v6)
    {
      ULWiFiMeasurementDO::operator=(v7, v4);
      v4 += 32;
      v7 += 32;
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t std::remove_if[abi:ne200100]<std::__wrap_iter<ULWiFiMeasurementDO *>,void ULMeasurementFilters::filterInvalidMeasurements<ULWiFiMeasurementDO>(std::vector<ULWiFiMeasurementDO> &,std::chrono::duration<long double,std::ratio<1l,1l>> const&)::{lambda(ULWiFiMeasurementDO const&)#1}>(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (1)
    {
      v7 = cl::chrono::CFAbsoluteTimeClock::now();
      if ((*(v3 + 8) & 0x80000000) == 0)
      {
        break;
      }

      if (v7 - *v3 > *a3 || (*(v3 + 28) & 0x40009000) != 0)
      {
        break;
      }

      v3 += 32;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 32; i != a2; i += 32)
      {
        v10 = cl::chrono::CFAbsoluteTimeClock::now();
        if ((*(i + 8) & 0x80000000) != 0 && v10 - *i <= *a3 && (*(i + 28) & 0x40009000) == 0)
        {
          ULWiFiMeasurementDO::operator=(v3, i);
          v3 += 32;
        }
      }
    }
  }

  return v3;
}

uint64_t ULMeasurementFilters::isValidMeasurement(uint64_t a1, double *a2, double *a3)
{
  if (*(a1 + 28))
  {
    v3 = (*(a1 + 8) + 100) >= 0x5B;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (*a2 - *a1 <= *a3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

BOOL ULMeasurementFilters::isValidMeasurement(uint64_t a1, double *a2, double *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8) > 0.0 && *(a1 + 28) == 2;
  if (v4 && *a2 - *a1 <= *a3)
  {
    result = 1;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULMeasurementFilters::isValidMeasurement();
    }

    v5 = logObject_MicroLocation_Default;
    result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 28);
      v10 = 134349312;
      v11 = v7;
      v12 = 512;
      v13 = v8;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEBUG, "Bad uwb range, range %{public}.2f, type %hd", &v10, 0x10u);
      result = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void ULMeasurementFilters::filterInvalidChannelMeasurements(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v4 = v3;
  v5 = v3 - *a1;
  if (v3 != *a1)
  {
    v7 = *a1 + 32;
    while (1)
    {
      LOBYTE(v14) = *(v7 - 6);
      v15 = *(v7 - 8);
      if (!std::__hash_table<ULWiFiScanChannel,std::hash<ULWiFiScanChannel>,std::equal_to<ULWiFiScanChannel>,std::allocator<ULWiFiScanChannel>>::find<ULWiFiScanChannel>(a2, &v14))
      {
        break;
      }

      v8 = v7 == v3;
      v7 += 32;
      if (v8)
      {
        goto LABEL_13;
      }
    }

    if (v7 - 32 != v3)
    {
      v4 = v7 - 32;
      while (v7 != v3)
      {
        LOBYTE(v14) = *(v7 + 26);
        v15 = *(v7 + 24);
        if (std::__hash_table<ULWiFiScanChannel,std::hash<ULWiFiScanChannel>,std::equal_to<ULWiFiScanChannel>,std::allocator<ULWiFiScanChannel>>::find<ULWiFiScanChannel>(a2, &v14))
        {
          ULWiFiMeasurementDO::operator=(v4, v7);
          v4 += 32;
        }

        v7 += 32;
      }
    }
  }

LABEL_13:
  std::vector<ULWiFiMeasurementDO>::erase(a1, v4, a1[1]);
  v9 = a1[1] - *a1;
  v10 = (v5 >> 5) - (v9 >> 5);
  if (v5 >> 5 != v9 >> 5)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULMeasurementFilters::filterInvalidChannelMeasurements();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v14 = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 1026;
      v19 = v10;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:wifi measurements with unexpected channel received, number of invalid measurements:%{public}u}", &v14, 0x18u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULMeasurementFilters::filterInvalidChannelMeasurements();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v14 = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 1026;
      v19 = v10;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "wifi measurements with unexpected channel received", "{msg%{public}.0s:wifi measurements with unexpected channel received, number of invalid measurements:%{public}u}", &v14, 0x18u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void ULMeasurementFilters::filterDuplicateAPs(void **a1, uint64_t *a2, uint64_t a3)
{
  v6 = +[ULDefaultsSingleton shared];
  v7 = [v6 defaultsDictionary];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiTimestampJitterThreshold"];
  v9 = [v7 objectForKey:v8];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v9 intValue];
  }

  else
  {
    v10 = [&unk_286A71D78 intValue];
  }

  v11 = v10;

  v23 = v11;
  v22 = 0;
  __p = *a1;
  CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::getLatestEvents(a3, &__p, &v22, &v20);
  if (v22 == 1)
  {
    operator new();
  }

  v12 = *a2;
  v13 = a2[1];
  v16 = 0;
  v17 = 0;
  v15 = 0;
  std::vector<ULWiFiMeasurementDO>::__init_with_size[abi:ne200100]<ULWiFiMeasurementDO*,ULWiFiMeasurementDO*>(&v15, v20, v21, (v21 - v20) >> 5);
  v18 = &v23;
  if (v12 != v13)
  {
    while ((ULMeasurementFilters::filterDuplicateAPs(std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,std::vector<ULWiFiMeasurementDO> &,CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>> const&)::$_0::operator()<ULWiFiMeasurementDO>(&v15, v12) & 1) == 0)
    {
      v12 += 32;
      if (v12 == v13)
      {
        v12 = v13;
        goto LABEL_17;
      }
    }

    if (v12 != v13)
    {
      for (i = v12 + 32; i != v13; i += 32)
      {
        if ((ULMeasurementFilters::filterDuplicateAPs(std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,std::vector<ULWiFiMeasurementDO> &,CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>> const&)::$_0::operator()<ULWiFiMeasurementDO>(&v15, i) & 1) == 0)
        {
          ULWiFiMeasurementDO::operator=(v12, i);
          v12 += 32;
        }
      }
    }
  }

LABEL_17:
  std::vector<ULWiFiMeasurementDO>::erase(a2, v12, a2[1]);
  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void *CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::getLatestEvents@<X0>(uint64_t a1@<X0>, double *a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  *a3 = 0;
  v7 = *(a1 + 8);
  v16 = v15;
  v15[1] = 0;
  if (v7 == (a1 + 16))
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = v7;
    do
    {
      v10 = *(v9 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v9 + 2);
          v12 = *v11 == v9;
          v9 = v11;
        }

        while (!v12);
      }

      ++v8;
      v9 = v11;
    }

    while (v11 != (a1 + 16));
  }

  v13 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,double,std::__identity,CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::getLatestEvents(double const&,BOOL &)::{lambda(std::_ClassicAlgPolicy const&,double const&)#1}>(v7, a2, v8);
  if (*(a1 + 8) == v13 && *(a1 + 56) == 1)
  {
    *a3 = 1;
  }

  return std::vector<ULWiFiMeasurementDO>::vector[abi:ne200100]<std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,0>(a4, v13, a1 + 16);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_83()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t *std::__hash_table<ULWiFiScanChannel,std::hash<ULWiFiScanChannel>,std::equal_to<ULWiFiScanChannel>,std::allocator<ULWiFiScanChannel>>::find<ULWiFiScanChannel>(void *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = v3 ^ (2 * v4);
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 ^ (2 * v4);
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v5 == v10)
    {
      if (*(result + 16) == v3 && *(result + 5) == v4)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ULMeasurementFilters::filterDuplicateAPs(std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,std::vector<ULWiFiMeasurementDO> &,CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>> const&)::$_0::operator()<ULWiFiMeasurementDO>(uint64_t *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v5 = *a1[3];
    do
    {
      if (CLMacAddress::operator==((a2 + 16), (v2 + 16)))
      {
        v6 = *v2 - *a2;
        if (v6 < 0.0)
        {
          v6 = -v6;
        }

        if (v6 * 1000.0 < v5)
        {
          if (*(a2 + 24) == *(v2 + 24) && *(a2 + 8) == *(v2 + 8) && *(a2 + 28) == *(v2 + 28))
          {
            result = 1;
            goto LABEL_20;
          }

          if (onceToken_MicroLocation_Default != -1)
          {
            ULMeasurementFilters::filterInvalidChannelMeasurements();
          }

          v7 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            CLMacAddress::toPrettyStr((a2 + 16), &__p);
            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 68289282;
            v13 = 0;
            v14 = 2082;
            v15 = "";
            v16 = 2082;
            v17 = p_p;
            _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning AP matches timestamp and mac in buffer, but values are not same, mac address:%{public, location:escape_only}s}", buf, 0x1Cu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      v2 += 32;
    }

    while (v2 != v3);
  }

  result = 0;
LABEL_20:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

double *std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,double,std::__identity,CLEventsBuffer<ULWiFiMeasurementDO,double,MeasDataObjectGetTime<ULWiFiMeasurementDO>>::getLatestEvents(double const&,BOOL &)::{lambda(std::_ClassicAlgPolicy const&,double const&)#1}>(double *a1, double *a2, unint64_t a3)
{
  if (a3)
  {
    v4 = a3;
    do
    {
      v6 = v4 >> 1;
      v11 = a1;
      std::__advance[abi:ne200100]<std::__tree_const_iterator<float,std::__tree_node<float,void *> *,long>>(&v11, v4 >> 1);
      v7 = v11;
      if (v11[4] < *a2)
      {
        v8 = *(v11 + 1);
        if (v8)
        {
          do
          {
            a1 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            a1 = *(v7 + 2);
            v9 = *a1 == v7;
            v7 = a1;
          }

          while (!v9);
        }

        v6 = v4 + ~v6;
      }

      v4 = v6;
    }

    while (v6);
  }

  return a1;
}

void *std::vector<ULWiFiMeasurementDO>::vector[abi:ne200100]<std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
    }

    while (v7 != a3);
  }

  std::vector<ULWiFiMeasurementDO>::__init_with_size[abi:ne200100]<std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>>(a1, a2, a3, v4);
  return a1;
}

uint64_t std::vector<ULWiFiMeasurementDO>::__init_with_size[abi:ne200100]<std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>,std::__tree_const_iterator<ULWiFiMeasurementDO,std::__tree_node<ULWiFiMeasurementDO,void *> *,long>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULWiFiMeasurementDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259112F58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ULMotionDetector::ULMotionDetector(ULMotionDetector *this)
{
  v8 = *MEMORY[0x277D85DE8];
  *this = &unk_286A5A170;
  *(this + 1) = &unk_286A5A228;
  *(this + 2) = &unk_286A5A268;
  *(this + 3) = &unk_286A5A2A8;
  *(this + 4) = &unk_286A5A2D8;
  *(this + 5) = &unk_286A5A308;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v1 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289282;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    v6 = 2082;
    v7 = "ULMotionDetector";
    _os_log_impl(&dword_258FE9000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULMotionDetector initialized, method:%{public, location:escape_only}s}", v3, 0x1Cu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t ULMotionDetector::setDependencies(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a2;
  *a2 = 0;
  v8 = a1[9];
  a1[9] = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *a3;
  *a3 = 0;
  v10 = a1[10];
  a1[10] = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *a4;
  *a4 = 0;
  result = a1[11];
  a1[11] = v11;
  if (result)
  {
    v13 = *(*result + 8);

    return v13();
  }

  return result;
}

void ULMotionDetector::addDelegate(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a1[6];
  v6 = a1[7];
  v4 = (a1 + 6);
  if (v5 == v6)
  {
LABEL_5:
    v8 = a1[8];
    if (v6 >= v8)
    {
      v10 = v6 - v5;
      if ((v10 + 1) >> 61)
      {
        std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
      }

      v11 = v8 - v5;
      v12 = v11 >> 2;
      if (v11 >> 2 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>>>(v4, v13);
      }

      v14 = (8 * v10);
      *v14 = a2;
      v9 = 8 * v10 + 8;
      v15 = a1[6];
      v16 = a1[7] - v15;
      v17 = v14 - v16;
      memcpy(v14 - v16, v15, v16);
      v18 = a1[6];
      a1[6] = v17;
      a1[7] = v9;
      a1[8] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v6 = a2;
      v9 = (v6 + 1);
    }

    a1[7] = v9;
    if (onceToken_MicroLocation_Default != -1)
    {
      ULMotionDetector::ULMotionDetector();
    }

    v19 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v21[0] = 68289282;
      v21[1] = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = "addDelegate";
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULMotionDetector: new delegate added, method:%{public, location:escape_only}s}", v21, 0x1Cu);
    }
  }

  else
  {
    v7 = v5;
    while (*v7 != a2)
    {
      if (++v7 == v6)
      {
        goto LABEL_5;
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t ULMotionDetector::startMotionBasedTriggers(ULMotionDetector *this)
{
  v10 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = "startMotionBasedTriggers";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Starting motion-based triggers, method:%{public, location:escape_only}s}", v5, 0x1Cu);
  }

  (*(**(this + 10) + 32))(*(this + 10));
  (*(**(this + 11) + 32))(*(this + 11));
  result = (*(**(this + 9) + 32))(*(this + 9));
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULMotionDetector::stopMotionBasedTriggers(ULMotionDetector *this)
{
  v10 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = "stopMotionBasedTriggers";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Stopping motion-based triggers, method:%{public, location:escape_only}s}", v5, 0x1Cu);
  }

  (*(**(this + 10) + 40))(*(this + 10));
  (*(**(this + 11) + 40))(*(this + 11));
  result = (*(**(this + 9) + 72))(*(this + 9));
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULMotionDetector::setMotionFence(ULMotionDetector *this)
{
  v10 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = "setMotionFence";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Set motion fence, method:%{public, location:escape_only}s}", v5, 0x1Cu);
  }

  result = (*(**(this + 10) + 16))(*(this + 10));
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULMotionDetector::clearMotionFence(ULMotionDetector *this)
{
  v10 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = "clearMotionFence";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Clear motion fence, method:%{public, location:escape_only}s}", v5, 0x1Cu);
  }

  result = (*(**(this + 10) + 24))(*(this + 10));
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULMotionDetector::startStopDetection(ULMotionDetector *this)
{
  v10 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = "startStopDetection";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Start stop detection, method:%{public, location:escape_only}s}", v5, 0x1Cu);
  }

  result = (*(**(this + 11) + 24))(*(this + 11));
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULMotionDetector::clearStopDetection(ULMotionDetector *this)
{
  v10 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = "clearStopDetection";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Clear stop detection, method:%{public, location:escape_only}s}", v5, 0x1Cu);
  }

  result = (*(**(this + 11) + 16))(*(this + 11));
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void ULMotionDetector::onMotionSMDetectedStartMotion(ULMotionDetector *this)
{
  v12 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289282;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "onMotionSMDetectedStartMotion";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Start motion detected, method:%{public, location:escape_only}s}", v7, 0x1Cu);
  }

  v4 = *(this + 6);
  v3 = *(this + 7);
  while (v4 != v3)
  {
    v5 = *v4++;
    (*(*v5 + 16))(v5);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t ULMotionDetector::onMotionSMDetectedStoppedMotion(ULMotionDetector *this)
{
  v13 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289282;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = "onMotionSMDetectedStoppedMotion";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Stop motion detected, reset fence, method:%{public, location:escape_only}s}", v8, 0x1Cu);
  }

  v3 = *(this + 6);
  v4 = *(this + 7);
  while (v3 != v4)
  {
    v5 = *v3++;
    (*(*v5 + 24))(v5);
  }

  result = (*(*this + 48))(this);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULMotionDetector::onMotionMeasurements(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = "onMotionMeasurements";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Received motion measurements, method:%{public, location:escape_only}s}", v5, 0x1Cu);
  }

  result = (*(**(a1 + 72) + 56))(*(a1 + 72));
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v10 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = "onMotionMeasurements";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Received motion measurements, method:%{public, location:escape_only}s}", v5, 0x1Cu);
  }

  result = (*(**(a1 + 72) + 56))(*(a1 + 72));
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t non-virtual thunk toULMotionDetector::onMotionMeasurements(uint64_t a1)
{
  return ULMotionDetector::onMotionMeasurements(a1 - 24);
}

{
  return ULMotionDetector::onMotionMeasurements(a1 - 32);
}

uint64_t ULMotionDetector::onStopMotionMeasurements(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = "onStopMotionMeasurements";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Received stop motion measurements, method:%{public, location:escape_only}s}", v5, 0x1Cu);
  }

  result = (*(**(a1 + 72) + 64))(*(a1 + 72));
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void ULMotionDetector::onFailureToReceiveGeofenceStatusReports(ULMotionDetector *this)
{
  v45 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v40, "onFailureToReceiveGeofenceStatusReports: ");
  std::string::basic_string[abi:ne200100]<0>(&v37, "");
  if ((*(**(this + 9) + 24))(*(this + 9)))
  {
    if (v39 < 0)
    {
      v38 = 21;
      v2 = v37;
    }

    else
    {
      v39 = 21;
      v2 = &v37;
    }

    qmemcpy(v2, "Restarting Geofence. ", 21);
    v4 = v2 + 21;
  }

  else
  {
    if (v39 < 0)
    {
      v38 = 18;
      v3 = v37;
    }

    else
    {
      v39 = 18;
      v3 = &v37;
    }

    *(v3 + 8) = 8238;
    *v3 = *"Ignoring failure. ";
    v4 = v3 + 18;
  }

  *v4 = 0;
  v5 = +[ULDefaultsSingleton shared];
  v6 = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaxTimeAllowedWithoutFenceStatusReport"];
  v8 = [v6 objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v8 doubleValue];
  }

  else
  {
    [&unk_286A71DA8 doubleValue];
  }

  v10 = v9;

  v11 = +[ULDefaultsSingleton shared];
  v12 = [v11 defaultsDictionary];

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaxDelayAfterFenceStatusReportTimerFires"];
  v14 = [v12 objectForKey:v13];
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v14 doubleValue];
  }

  else
  {
    [&unk_286A71D90 doubleValue];
  }

  v16 = v15;

  std::to_string(&v34, v10);
  v17 = std::string::insert(&v34, 0, " Running with FenceStatusTimeout: ", 0x22uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v43, "and RaceDelayTimeout: ", 0x16uLL);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, v16);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v23 = std::string::append(&v44, p_p, size);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v36 = v23->__r_.__value_.__r.__words[2];
  *v35 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v40, &v37, &v44);
  if (v36 >= 0)
  {
    v25 = v35;
  }

  else
  {
    v25 = v35[0];
  }

  if (v36 >= 0)
  {
    v26 = HIBYTE(v36);
  }

  else
  {
    v26 = v35[1];
  }

  v27 = std::string::append(&v44, v25, v26);
  v28 = v27->__r_.__value_.__r.__words[0];
  v43.__r_.__value_.__r.__words[0] = v27->__r_.__value_.__l.__size_;
  *(v43.__r_.__value_.__r.__words + 7) = *(&v27->__r_.__value_.__r.__words[1] + 7);
  v29 = HIBYTE(v27->__r_.__value_.__r.__words[2]);
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (v42 < 0)
  {
    operator delete(v40);
  }

  v40 = v28;
  *v41 = v43.__r_.__value_.__r.__words[0];
  *&v41[7] = *(v43.__r_.__value_.__r.__words + 7);
  v42 = v29;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::onFailureToReceiveGeofenceStatusReports();
  }

  v30 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    v31 = &v40;
    if (v42 < 0)
    {
      v31 = v40;
    }

    LODWORD(v44.__r_.__value_.__l.__data_) = 136315138;
    *(v44.__r_.__value_.__r.__words + 4) = v31;
    _os_log_impl(&dword_258FE9000, v30, OS_LOG_TYPE_ERROR, "%s", &v44, 0xCu);
  }

  CLMicroLocationErrorHandling::reportError(&v40);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
  }

  if (v39 < 0)
  {
    operator delete(v37);
  }

  if (v42 < 0)
  {
    operator delete(v40);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_2591144BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
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
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void ULMotionDetector::onMotionSMDetectedOngoingMotion(ULMotionDetector *this)
{
  v12 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289282;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "onMotionSMDetectedOngoingMotion";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:MotionSM detected ongoing motion, method:%{public, location:escape_only}s}", v7, 0x1Cu);
  }

  v4 = *(this + 6);
  v3 = *(this + 7);
  while (v4 != v3)
  {
    v5 = *v4++;
    (*(*v5 + 32))(v5);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void ULMotionDetector::onMotionSMResumedInMotion(ULMotionDetector *this)
{
  v12 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionDetector::ULMotionDetector();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289282;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "onMotionSMResumedInMotion";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:MotionSM detected resumed in motion, method:%{public, location:escape_only}s}", v7, 0x1Cu);
  }

  v4 = *(this + 6);
  v3 = *(this + 7);
  while (v4 != v3)
  {
    v5 = *v4++;
    (*(*v5 + 40))(v5);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void ULMotionDetector::~ULMotionDetector(ULMotionDetector *this)
{
  *this = &unk_286A5A170;
  *(this + 1) = &unk_286A5A228;
  *(this + 2) = &unk_286A5A268;
  *(this + 3) = &unk_286A5A2A8;
  *(this + 4) = &unk_286A5A2D8;
  *(this + 5) = &unk_286A5A308;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }
}

{
  *this = &unk_286A5A170;
  *(this + 1) = &unk_286A5A228;
  *(this + 2) = &unk_286A5A268;
  *(this + 3) = &unk_286A5A2A8;
  *(this + 4) = &unk_286A5A2D8;
  *(this + 5) = &unk_286A5A308;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toULMotionDetector::~ULMotionDetector(ULMotionDetector *this)
{
  *(this - 1) = &unk_286A5A170;
  *this = &unk_286A5A228;
  *(this + 1) = &unk_286A5A268;
  *(this + 2) = &unk_286A5A2A8;
  *(this + 3) = &unk_286A5A2D8;
  *(this + 4) = &unk_286A5A308;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;

    operator delete(v5);
  }
}

{
  *(this - 1) = &unk_286A5A170;
  *this = &unk_286A5A228;
  *(this + 1) = &unk_286A5A268;
  *(this + 2) = &unk_286A5A2A8;
  *(this + 3) = &unk_286A5A2D8;
  *(this + 4) = &unk_286A5A308;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x259CA1F90);
}

{
  *(this - 2) = &unk_286A5A170;
  *(this - 1) = &unk_286A5A228;
  *this = &unk_286A5A268;
  *(this + 1) = &unk_286A5A2A8;
  *(this + 2) = &unk_286A5A2D8;
  *(this + 3) = &unk_286A5A308;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;

    operator delete(v5);
  }
}

{
  *(this - 2) = &unk_286A5A170;
  *(this - 1) = &unk_286A5A228;
  *this = &unk_286A5A268;
  *(this + 1) = &unk_286A5A2A8;
  *(this + 2) = &unk_286A5A2D8;
  *(this + 3) = &unk_286A5A308;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x259CA1F90);
}

{
  *(this - 3) = &unk_286A5A170;
  *(this - 2) = &unk_286A5A228;
  *(this - 1) = &unk_286A5A268;
  *this = &unk_286A5A2A8;
  *(this + 1) = &unk_286A5A2D8;
  *(this + 2) = &unk_286A5A308;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;

    operator delete(v5);
  }
}

{
  *(this - 3) = &unk_286A5A170;
  *(this - 2) = &unk_286A5A228;
  *(this - 1) = &unk_286A5A268;
  *this = &unk_286A5A2A8;
  *(this + 1) = &unk_286A5A2D8;
  *(this + 2) = &unk_286A5A308;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x259CA1F90);
}

{
  *(this - 4) = &unk_286A5A170;
  *(this - 3) = &unk_286A5A228;
  *(this - 2) = &unk_286A5A268;
  *(this - 1) = &unk_286A5A2A8;
  *this = &unk_286A5A2D8;
  *(this + 1) = &unk_286A5A308;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    *(this + 3) = v5;

    operator delete(v5);
  }
}

{
  *(this - 4) = &unk_286A5A170;
  *(this - 3) = &unk_286A5A228;
  *(this - 2) = &unk_286A5A268;
  *(this - 1) = &unk_286A5A2A8;
  *this = &unk_286A5A2D8;
  *(this + 1) = &unk_286A5A308;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    *(this + 3) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x259CA1F90);
}

{
  *(this - 5) = &unk_286A5A170;
  *(this - 4) = &unk_286A5A228;
  *(this - 3) = &unk_286A5A268;
  *(this - 2) = &unk_286A5A2A8;
  *(this - 1) = &unk_286A5A2D8;
  *this = &unk_286A5A308;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;

    operator delete(v5);
  }
}

{
  *(this - 5) = &unk_286A5A170;
  *(this - 4) = &unk_286A5A228;
  *(this - 3) = &unk_286A5A268;
  *(this - 2) = &unk_286A5A2A8;
  *(this - 1) = &unk_286A5A2D8;
  *this = &unk_286A5A308;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x259CA1F90);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_84()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULMotionSM::setFence(ULMotionSM *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionSM::setFence();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "setFence";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:set fence, method:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  ULMotionSM::transitionLogic(this, 0);
  v3 = *MEMORY[0x277D85DE8];
}

void ULMotionSM::transitionLogic(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 8);
  if (v8 <= 1)
  {
    if (!v8)
    {
      ULMotionSM::transitionLogicIdle(a1, a2);
      v2 = 0;
      LOBYTE(v5) = 0;
      LOBYTE(v4) = 0;
      v3 = 0;
      goto LABEL_11;
    }

    if (v8 != 1)
    {
      goto LABEL_11;
    }

    v9 = ULMotionSM::transitionLogicGeofence(a1, a2);
    goto LABEL_10;
  }

  if (v8 == 2)
  {
    v9 = ULMotionSM::transitionLogicStopDetection(a1, a2);
LABEL_10:
    v2 = v9;
    v3 = 0;
    v5 = (v9 >> 8) & 1;
    LOBYTE(v4) = (v9 & 0xFFFF0000) != 0;
    goto LABEL_11;
  }

  if (v8 == 3)
  {
    v10 = ULMotionSM::transitionLogicPendingResumeStopDetection(a1, a2);
    v2 = v10;
    v5 = (v10 >> 8) & 1;
    v4 = HIWORD(v10) & 1;
    v3 = (v10 & 0xFF000000) != 0;
  }

LABEL_11:
  if (onceToken_MicroLocation_Default != -1)
  {
    ULMotionSM::setFence();
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    ULMotionSM::eventToStr(a2, v22);
    if (v23 >= 0)
    {
      v12 = v22;
    }

    else
    {
      v12 = v22[0];
    }

    ULMotionSM::stateToStr(v8, v20);
    v13 = v21;
    v14 = v20[0];
    ULMotionSM::stateToStr(*(a1 + 8), __p);
    v15 = v20;
    if (v13 < 0)
    {
      v15 = v14;
    }

    if (v19 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    *buf = 68290818;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    v28 = 2082;
    v29 = v12;
    v30 = 2082;
    v31 = v15;
    v32 = 2082;
    v33 = v16;
    v34 = 1026;
    v35 = v2 & 1;
    v36 = 1026;
    v37 = v5 & 1;
    v38 = 1026;
    v39 = v4 & 1;
    v40 = 1026;
    v41 = v3;
    _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:MotionSM::transitionLogic, event:%{public, location:escape_only}s, prevState:%{public, location:escape_only}s, currState:%{public, location:escape_only}s, startInMotion:%{public}hhd, ongoingInMotion:%{public}hhd, stopMotion:%{public}hhd, resumeInMotion:%{public}hhd}", buf, 0x48u);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }
  }

  if (v2)
  {
    (*(**(a1 + 16) + 16))(*(a1 + 16));
  }

  if (v5)
  {
    (*(**(a1 + 16) + 24))(*(a1 + 16));
  }

  if (v4)
  {
    (*(**(a1 + 16) + 32))(*(a1 + 16));
  }

  if (v3)
  {
    (*(**(a1 + 16) + 40))(*(a1 + 16));
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_259116198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL ULMotionSM::setFenceIfNotSet(ULMotionSM *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(this + 2);
  if (v1)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULMotionSM::setFence();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 68289282;
      v5[1] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 2082;
      v9 = "setFenceIfNotSet";
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:will not set fence since not at idle state, method:%{public, location:escape_only}s}", v5, 0x1Cu);
    }
  }

  else
  {
    (*(*this + 32))(this);
  }

  result = v1 == 0;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL ULMotionSM::recenterFence(ULMotionSM *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(this + 2);
  if (v1 == 1)
  {
    (*(*this + 32))(this);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULMotionSM::setFence();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 68289282;
      v5[1] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 2082;
      v9 = "recenterFence";
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:will not set fence since not at geofence state, method:%{public, location:escape_only}s}", v5, 0x1Cu);
    }
  }

  result = v1 == 1;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULMotionSM::transitionLogicIdle(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        *(a1 + 12) = 1;
      }
    }

    else
    {
      (*(**(a1 + 32) + 16))(*(a1 + 32));
      *(a1 + 8) = 1;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        *(a1 + 12) = 0;
        break;
      case 3:
        if (onceToken_MicroLocation_Default != -1)
        {
          ULMotionSM::setFence();
        }

        v7 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          v10 = 68289026;
          v11 = 0;
          v12 = 2082;
          v13 = "";
          _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MotionSM::transitionLogicIdle, shouldn't receive FenceCross at Idle state}", &v10, 0x12u);
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          ULMotionSM::transitionLogicIdle();
        }

        v4 = logObject_MicroLocation_Default;
        if (os_signpost_enabled(logObject_MicroLocation_Default))
        {
          v10 = 68289026;
          v11 = 0;
          v12 = 2082;
          v13 = "";
          v5 = "MotionSM::transitionLogicIdle, shouldn't receive FenceCross at Idle state";
          v6 = "{msg%{public}.0s:MotionSM::transitionLogicIdle, shouldn't receive FenceCross at Idle state}";
          goto LABEL_25;
        }

        break;
      case 4:
        if (onceToken_MicroLocation_Default != -1)
        {
          ULMotionSM::setFence();
        }

        v3 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          v10 = 68289026;
          v11 = 0;
          v12 = 2082;
          v13 = "";
          _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MotionSM::transitionLogicIdle, shouldn't receive StopMotion at Idle state}", &v10, 0x12u);
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          ULMotionSM::transitionLogicIdle();
        }

        v4 = logObject_MicroLocation_Default;
        if (os_signpost_enabled(logObject_MicroLocation_Default))
        {
          v10 = 68289026;
          v11 = 0;
          v12 = 2082;
          v13 = "";
          v5 = "MotionSM::transitionLogicIdle, shouldn't receive StopMotion at Idle state";
          v6 = "{msg%{public}.0s:MotionSM::transitionLogicIdle, shouldn't receive StopMotion at Idle state}";
LABEL_25:
          _os_signpost_emit_with_name_impl(&dword_258FE9000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v5, v6, &v10, 0x12u);
        }

        break;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ULMotionSM::transitionLogicGeofence(uint64_t a1, int a2)
{
  v3 = 0;
  v14 = *MEMORY[0x277D85DE8];
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = 0;
        v4 = 0;
        *(a1 + 12) = 1;
      }

      else
      {
        v4 = 0;
        if (a2 == 2)
        {
          v3 = 0;
          v4 = 0;
          *(a1 + 12) = 0;
        }
      }
    }

    else
    {
      (*(**(a1 + 32) + 32))(*(a1 + 32));
      (*(**(a1 + 32) + 16))(*(a1 + 32));
      v3 = 0;
      v4 = 0;
      *(a1 + 8) = 1;
    }

    goto LABEL_29;
  }

  if (a2 == 3)
  {
    if (*(a1 + 12) != 1)
    {
      goto LABEL_25;
    }

    if (ULSettings::get<ULSettings::MotionStopDetectionModuleEnable>())
    {
      v3 = 0;
      v4 = 1;
      v5 = 2;
LABEL_28:
      ULMotionSM::changeState(a1, 1, v5);
      goto LABEL_29;
    }

    if ((*(a1 + 12) & 1) == 0)
    {
LABEL_25:
      if (ULSettings::get<ULSettings::MotionStopDetectionModuleEnable>())
      {
        v4 = 0;
        v3 = 0x10000;
        v5 = 3;
        goto LABEL_28;
      }
    }

    v5 = 0;
    v4 = 0;
    v3 = 0x10000;
    goto LABEL_28;
  }

  if (a2 == 4)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULMotionSM::setFence();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v10 = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MotionSM::transitionLogicGeofence, shouldn't receive StopMotion at Geofence state}", &v10, 0x12u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULMotionSM::transitionLogicIdle();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v10 = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MotionSM::transitionLogicGeofence, shouldn't receive StopMotion at Geofence state", "{msg%{public}.0s:MotionSM::transitionLogicGeofence, shouldn't receive StopMotion at Geofence state}", &v10, 0x12u);
    }

    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = 0;
    if (a2 == 5)
    {
      (*(**(a1 + 32) + 32))(*(a1 + 32));
      v3 = 0;
      v4 = 0;
      *(a1 + 8) = 0;
    }
  }

LABEL_29:
  v8 = *MEMORY[0x277D85DE8];
  return v4 | v3;
}

uint64_t ULMotionSM::transitionLogicStopDetection(uint64_t a1, int a2)
{
  result = 0;
  v13 = *MEMORY[0x277D85DE8];
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        result = 256;
        break;
      case 4:
        (*(**(a1 + 32) + 40))(*(a1 + 32));
        *(a1 + 8) = 0;
        goto LABEL_29;
      case 5:
        (*(**(a1 + 32) + 40))(*(a1 + 32));
        result = 0;
        *(a1 + 8) = 0;
        break;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULMotionSM::setFence();
      }

      v6 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        v9 = 68289026;
        v10 = 0;
        v11 = 2082;
        v12 = "";
        _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MotionSM::transitionLogicStopDetection, shouldn't receive ScreenOn at StopDetection state}", &v9, 0x12u);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULMotionSM::transitionLogicIdle();
      }

      v7 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(logObject_MicroLocation_Default))
      {
        v9 = 68289026;
        v10 = 0;
        v11 = 2082;
        v12 = "";
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MotionSM::transitionLogicStopDetection, shouldn't receive ScreenOn at StopDetection state", "{msg%{public}.0s:MotionSM::transitionLogicStopDetection, shouldn't receive ScreenOn at StopDetection state}", &v9, 0x12u);
      }

      result = 0;
      *(a1 + 12) = 1;
    }

    else if (a2 == 2)
    {
      *(a1 + 12) = 0;
      (*(**(a1 + 32) + 40))(*(a1 + 32));
      *(a1 + 8) = 3;
LABEL_29:
      result = 0x10000;
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULMotionSM::setFence();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v9 = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MotionSM::transitionLogicStopDetection, shouldn't receive SetFence at StopDetection state}", &v9, 0x12u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULMotionSM::transitionLogicIdle();
    }

    v5 = logObject_MicroLocation_Default;
    result = os_signpost_enabled(logObject_MicroLocation_Default);
    if (result)
    {
      v9 = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MotionSM::transitionLogicStopDetection, shouldn't receive SetFence at StopDetection state", "{msg%{public}.0s:MotionSM::transitionLogicStopDetection, shouldn't receive SetFence at StopDetection state}", &v9, 0x12u);
      result = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULMotionSM::transitionLogicPendingResumeStopDetection(uint64_t a1, int a2)
{
  result = 0;
  v16 = *MEMORY[0x277D85DE8];
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        if (onceToken_MicroLocation_Default != -1)
        {
          ULMotionSM::setFence();
        }

        v9 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          v12 = 68289026;
          v13 = 0;
          v14 = 2082;
          v15 = "";
          _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive FenceCross at PendingResumeStopDetection state}", &v12, 0x12u);
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          ULMotionSM::transitionLogicIdle();
        }

        v5 = logObject_MicroLocation_Default;
        result = os_signpost_enabled(logObject_MicroLocation_Default);
        if (result)
        {
          v12 = 68289026;
          v13 = 0;
          v14 = 2082;
          v15 = "";
          v6 = "MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive FenceCross at PendingResumeStopDetection state";
          v7 = "{msg%{public}.0s:MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive FenceCross at PendingResumeStopDetection state}";
          goto LABEL_42;
        }

        break;
      case 4:
        if (onceToken_MicroLocation_Default != -1)
        {
          ULMotionSM::setFence();
        }

        v10 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          v12 = 68289026;
          v13 = 0;
          v14 = 2082;
          v15 = "";
          _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive StopMotion at PendingResumeStopDetection state}", &v12, 0x12u);
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          ULMotionSM::transitionLogicIdle();
        }

        v5 = logObject_MicroLocation_Default;
        result = os_signpost_enabled(logObject_MicroLocation_Default);
        if (result)
        {
          v12 = 68289026;
          v13 = 0;
          v14 = 2082;
          v15 = "";
          v6 = "MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive StopMotion at PendingResumeStopDetection state";
          v7 = "{msg%{public}.0s:MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive StopMotion at PendingResumeStopDetection state}";
          goto LABEL_42;
        }

        break;
      case 5:
        result = 0;
        *(a1 + 8) = 0;
        break;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      *(a1 + 12) = 1;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
      *(a1 + 8) = 2;
      result = 0x1000000;
    }

    else if (a2 == 2)
    {
      *(a1 + 12) = 0;
      if (onceToken_MicroLocation_Default != -1)
      {
        ULMotionSM::setFence();
      }

      v4 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        v12 = 68289026;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive ScreenOff at PendingResumeStopDetection state}", &v12, 0x12u);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULMotionSM::transitionLogicIdle();
      }

      v5 = logObject_MicroLocation_Default;
      result = os_signpost_enabled(logObject_MicroLocation_Default);
      if (result)
      {
        v12 = 68289026;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v6 = "MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive ScreenOff at PendingResumeStopDetection state";
        v7 = "{msg%{public}.0s:MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive ScreenOff at PendingResumeStopDetection state}";
LABEL_42:
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v6, v7, &v12, 0x12u);
        result = 0;
      }
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULMotionSM::setFence();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v12 = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive SetFence at PendingResumeStopDetection state}", &v12, 0x12u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULMotionSM::transitionLogicIdle();
    }

    v5 = logObject_MicroLocation_Default;
    result = os_signpost_enabled(logObject_MicroLocation_Default);
    if (result)
    {
      v12 = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v6 = "MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive SetFence at PendingResumeStopDetection state";
      v7 = "{msg%{public}.0s:MotionSM::transitionPendingResumeLogicStopDetection, shouldn't receive SetFence at PendingResumeStopDetection state}";
      goto LABEL_42;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULMotionSM::eventToStr@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result > 2)
  {
    if (result == 3)
    {
      v2 = 10;
      *(a2 + 23) = 10;
      *(a2 + 8) = 29555;
      v4 = "FenceCross";
    }

    else
    {
      if (result != 4)
      {
        v2 = 4;
        *(a2 + 23) = 4;
        *a2 = 1886352467;
        goto LABEL_13;
      }

      v2 = 10;
      *(a2 + 23) = 10;
      *(a2 + 8) = 28271;
      v4 = "StopMotion";
    }

    goto LABEL_11;
  }

  if (!result)
  {
    v2 = 8;
    *(a2 + 23) = 8;
    v3 = 0x65636E6546746553;
    goto LABEL_12;
  }

  if (result != 1)
  {
    v2 = 9;
    *(a2 + 23) = 9;
    *(a2 + 8) = 102;
    v4 = "ScreenOff";
LABEL_11:
    v3 = *v4;
    goto LABEL_12;
  }

  v2 = 8;
  *(a2 + 23) = 8;
  v3 = 0x6E4F6E6565726353;
LABEL_12:
  *a2 = v3;
LABEL_13:
  *(a2 + v2) = 0;
  return result;
}

uint64_t ULMotionSM::stateToStr@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 1)
  {
    if (result != 2)
    {
      operator new();
    }

    a2[23] = 13;
    qmemcpy(a2, "StopDetection", 13);
    v2 = a2 + 13;
  }

  else if (result)
  {
    a2[23] = 8;
    *a2 = 0x65636E65666F6547;
    v2 = a2 + 8;
  }

  else
  {
    a2[23] = 4;
    *a2 = 1701602377;
    v2 = a2 + 4;
  }

  *v2 = 0;
  return result;
}

uint64_t ULMotionSM::changeState(uint64_t result, int a2, int a3)
{
  v4 = result;
  if (a2 == 2)
  {
    result = (*(**(result + 32) + 40))(*(result + 32));
  }

  else if (a2 == 1)
  {
    result = (*(**(result + 32) + 32))(*(result + 32));
  }

  if (a3 == 2)
  {
    result = (*(**(v4 + 32) + 24))(*(v4 + 32));
  }

  else if (a3 == 1)
  {
    result = (*(**(v4 + 32) + 16))(*(v4 + 32));
  }

  *(v4 + 8) = a3;
  return result;
}

uint64_t ULSettings::get<ULSettings::MotionStopDetectionModuleEnable>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMotionStopDetectionModuleEnable"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

void ULMotionSM::~ULMotionSM(ULMotionSM *this)
{
  *this = &unk_286A5A430;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_286A5A430;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x259CA1F90);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_85()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t ULProfileGenerator::generateSchedulingProfile@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  ULScanTriggerSettings::ULScanTriggerSettings(&v22);
  ULScanSchedulingSettings::ULScanSchedulingSettings(&v21);
  v6 = 0.0;
  if (a2 == 2)
  {
    v7 = +[ULDefaultsSingleton shared];
    v8 = [v7 defaultsDictionary];

    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULCustomLoiWaitBetweenRecordings"];
    v10 = [v8 objectForKey:v9];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v10 doubleValue];
    }

    else
    {
      [&unk_286A72D30 doubleValue];
    }

    v6 = v11;
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_27;
      }

      ULScanTriggerSettings::ULScanTriggerSettings(buf, 1, a2, 1);
      v22 = *buf;
      LOBYTE(v23) = buf[8];
      ULScanSchedulingSettings::ULScanSchedulingSettings(buf, 1, 1, 1, v6);
    }

    else
    {
      ULScanTriggerSettings::ULScanTriggerSettings(buf, 0, a2, 0);
      v22 = *buf;
      LOBYTE(v23) = buf[8];
      ULScanSchedulingSettings::ULScanSchedulingSettings(buf, 0, 0, 0, v6);
    }

LABEL_26:
    v21 = *buf;
    result = ULSchedulingProfile::ULSchedulingProfile(a3, v22, v23, *buf, *&buf[8]);
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  switch(a1)
  {
    case 2:
      ULScanTriggerSettings::ULScanTriggerSettings(buf, 2, a2, 1);
      v22 = *buf;
      LOBYTE(v23) = buf[8];
      ULScanSchedulingSettings::ULScanSchedulingSettings(buf, 0, 0, 1, v6);
      goto LABEL_26;
    case 3:
      ULScanTriggerSettings::ULScanTriggerSettings(buf, 3, a2, 1);
      v22 = *buf;
      LOBYTE(v23) = buf[8];
      ULScanSchedulingSettings::ULScanSchedulingSettings(buf, 1, 1, 0, v6);
      goto LABEL_26;
    case 4:
      ULScanTriggerSettings::ULScanTriggerSettings(buf, 4, a2, 1);
      v22 = *buf;
      LOBYTE(v23) = buf[8];
      v12 = +[ULDefaultsSingleton shared];
      v13 = [v12 defaultsDictionary];

      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULPeriodicLocalizationTriggerInterval"];
      v15 = [v13 objectForKey:v14];
      if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v15 doubleValue];
      }

      else
      {
        [&unk_286A72D40 doubleValue];
      }

      v17 = v16;

      if (onceToken_MicroLocation_Default != -1)
      {
        ULProfileGenerator::generateSchedulingProfile();
      }

      v18 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v25 = 2050;
        v26 = v17;
        _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Enable Periodic localization triggers, Min delay between triggers::%{public}lu}", buf, 0x1Cu);
      }

      ULScanSchedulingSettings::ULScanSchedulingSettings(buf, 0, 0, 0, v17);
      goto LABEL_26;
  }

LABEL_27:
  result = ULProfileGenerator::generateSchedulingProfile();
  __break(1u);
  return result;
}

__n128 ULProfileGenerator::generateScanningProfile@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  ULScanningProfile::ULScanningProfile(a3);
  v6 = ULSettings::get<ULSettings::UWBEnableInScan>();
  v7 = 0.0;
  if (a2)
  {
    v8 = +[ULDefaultsSingleton shared];
    v9 = [v8 defaultsDictionary];

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBleScanTimeout"];
    v11 = [v9 objectForKey:v10];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v11 doubleValue];
    }

    else
    {
      [&unk_286A72D50 doubleValue];
    }

    v7 = v12;
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_39;
      }

      v16 = +[ULDefaultsSingleton shared];
      v17 = [v16 defaultsDictionary];

      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiLocalizationScanTimeout"];
      v19 = [v17 objectForKey:v18];
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v19 doubleValue];
      }

      else
      {
        [&unk_286A72D80 doubleValue];
      }

      v47 = v20;

      ULScanConfig::ULScanConfig(&v63, 0, 0, 0, 1, v47);
      ULScanConfig::ULScanConfig(&v61, 1, 0, 0, a2, v7);
      v48 = ULSettings::get<ULSettings::UwbScanTimeout>();
      ULScanConfig::ULScanConfig(v60, 2, 0, 1, v6 & a2, v48);
      v53 = v63;
      v54 = v64;
      v55 = v61;
      v56 = v62;
      v57 = *v60;
      v58 = *&v60[16];
      v14 = ULSettings::get<ULSettings::WifiScanIterations>();
      v15 = 1;
    }

    else
    {
      v31 = +[ULDefaultsSingleton shared];
      v32 = [v31 defaultsDictionary];

      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiRecordingScanTimeout"];
      v34 = [v32 objectForKey:v33];
      if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v34 doubleValue];
      }

      else
      {
        [&unk_286A72D70 doubleValue];
      }

      v45 = v35;

      ULScanConfig::ULScanConfig(&v63, 0, 1, 0, 1, v45);
      ULScanConfig::ULScanConfig(&v61, 1, 0, 0, a2, v7);
      v46 = ULSettings::get<ULSettings::UwbScanTimeout>();
      ULScanConfig::ULScanConfig(v60, 2, 0, 1, v6 & a2, v46);
      v53 = v63;
      v54 = v64;
      v55 = v61;
      v56 = v62;
      v57 = *v60;
      v58 = *&v60[16];
      v14 = ULSettings::get<ULSettings::WifiScanIterations>();
      v15 = 0;
    }
  }

  else if (a1 == 2)
  {
    v21 = +[ULDefaultsSingleton shared];
    v22 = [v21 defaultsDictionary];

    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiBlueAtlasRecordingScanTimeout"];
    v24 = [v22 objectForKey:v23];
    if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v24 doubleValue];
    }

    else
    {
      [&unk_286A72D90 doubleValue];
    }

    v36 = v25;

    ULScanConfig::ULScanConfig(&v63, 0, 1, 0, 1, v36);
    ULScanConfig::ULScanConfig(&v61, 1, 0, 0, 0, 0.0);
    v37 = ULSettings::get<ULSettings::UwbScanTimeout>();
    ULScanConfig::ULScanConfig(v60, 2, 0, 0, 0, v37);
    v53 = v63;
    v54 = v64;
    v55 = v61;
    v56 = v62;
    v57 = *v60;
    v58 = *&v60[16];
    v14 = ULSettings::get<ULSettings::WifiScanIterations>();
    v15 = 2;
  }

  else
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        ULScanConfig::ULScanConfig(&v63, 1, 1, 1, 1, 0.0);
        v13 = ULSettings::get<ULSettings::UWBEnableInScan>();
        ULScanConfig::ULScanConfig(&v61, 2, 1, 1, v13, 0.0);
        v53 = 0uLL;
        v54 = 0;
        v55 = v63;
        v56 = v64;
        v57 = v61;
        v58 = v62;
        v14 = ULSettings::get<ULSettings::WifiScanIterations>();
        v15 = 4;
        goto LABEL_38;
      }

LABEL_39:
      ScanningProfile = ULProfileGenerator::generateScanningProfile();

      _Unwind_Resume(ScanningProfile);
    }

    v26 = +[ULDefaultsSingleton shared];
    v27 = [v26 defaultsDictionary];

    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiBlueAtlasLocalizationScanTimeout"];
    v29 = [v27 objectForKey:v28];
    if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v29 doubleValue];
    }

    else
    {
      [&unk_286A72DA0 doubleValue];
    }

    v38 = v30;

    ULScanConfig::ULScanConfig(&v63, 0, 0, 0, 1, v38);
    ULScanConfig::ULScanConfig(&v61, 1, 0, 0, 0, 0.0);
    v39 = ULSettings::get<ULSettings::UwbScanTimeout>();
    ULScanConfig::ULScanConfig(v60, 2, 0, 0, 0, v39);
    v40 = [ULDefaultsSingleton shared:v63];
    v41 = [v40 defaultsDictionary];

    v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiLocalizationScanIterationsInCustomLoi"];
    v43 = [v41 objectForKey:v42];
    if (v43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v44 = [v43 unsignedCharValue];
    }

    else
    {
      v44 = [&unk_286A71DD8 unsignedCharValue];
    }

    v49 = v44;

    v15 = 3;
    v14 = v49;
  }

LABEL_38:
  ULScanningProfile::ULScanningProfile(v59, v15, &v53, v14);
  v50 = v59[3];
  *(a3 + 32) = v59[2];
  *(a3 + 48) = v50;
  *(a3 + 64) = v59[4];
  result = v59[1];
  *a3 = v59[0];
  *(a3 + 16) = result;
  return result;
}

uint64_t ULSettings::get<ULSettings::UWBEnableInScan>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULUWBEnableInScan"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

double ULSettings::get<ULSettings::UwbScanTimeout>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULUwbScanTimeout"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 doubleValue];
  }

  else
  {
    [&unk_286A72D60 doubleValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::WifiScanIterations>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiScanIterations"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedCharValue];
  }

  else
  {
    v4 = [&unk_286A71DC0 unsignedCharValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULProfileGenerator::generateWifiTechnologyProfile@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 4) = 1;
  v5 = +[ULDefaultsSingleton shared];
  v6 = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiRestTime"];
  v8 = [v6 objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v8 doubleValue];
  }

  else
  {
    [&unk_286A71DF0 doubleValue];
  }

  v10 = v9;

  *(a3 + 8) = v10;
  v11 = +[ULDefaultsSingleton shared];
  v12 = [v11 defaultsDictionary];

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWifiDwellTime"];
  v14 = [v12 objectForKey:v13];
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v14 doubleValue];
  }

  else
  {
    [&unk_286A71E20 doubleValue];
  }

  v16 = v15;

  *(a3 + 32) = 0;
  v17 = a3 + 32;
  *(v17 - 16) = v16;
  *(v17 - 8) = 1;
  *(v17 - 6) = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  v18 = *a2;
  v19 = a2[1];
  v20 = (v19 - *a2) >> 3;

  return std::vector<ULWiFiScanChannel>::__init_with_size[abi:ne200100]<ULWiFiScanChannel*,ULWiFiScanChannel*>(v17, v18, v19, v20);
}

void ULProfileGenerator::generateBleTechnologyProfile(int a1@<W0>, void *a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v57 = *MEMORY[0x277D85DE8];
  v40 = a2;
  v38 = a5;
  v39 = a3;
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  *(a5 + 40) = 0;
  v8 = [MEMORY[0x277CBEB18] array];
  v37 = a4;
  v9 = [MEMORY[0x277CBEB18] array];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = v40;
  v11 = [v10 countByEnumeratingWithState:&v42 objects:v56 count:16];
  if (v11)
  {
    v12 = *v43;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v42 + 1) + 8 * i);
        v15 = [v14 btAddressData];
        v17 = ULProfileGenerator::nsDataToBTAddressString(v15, v16);
        [v8 addObject:v17];

        v18 = [ULOobKeyInfo ULOobKeyInfoToCBOOBKeyInfo:v14];
        [v9 addObject:v18];
      }

      v11 = [v10 countByEnumeratingWithState:&v42 objects:v56 count:16];
    }

    while (v11);
  }

  v19 = v39;
  if (v37)
  {
    v20 = 0x2000000;
  }

  else
  {
    v20 = 0;
  }

  v21 = a1;
  if (!a1)
  {
    v28 = +[ULDefaultsSingleton shared];
    v29 = [v28 defaultsDictionary];

    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBleActiveScanRate"];
    v31 = [v29 objectForKey:v30];
    if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v32 = [v31 intValue];
    }

    else
    {
      v32 = [&unk_286A71E08 intValue];
    }

    v22 = v32;

    v27 = 524290;
    v26 = v20 | 0x200080040;
    v24 = v8;
    v25 = v19;
    v23 = 19;
    v21 = 0;
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = v20 | 0x100200080040;
    v27 = 524291;
LABEL_19:
    *v38 = v21;
    *(v38 + 4) = v22;
    *(v38 + 8) = v27;
    *(v38 + 16) = v26;
    *(v38 + 24) = v9;
    *(v38 + 32) = v23;
    *(v38 + 40) = 0;
    *(v38 + 48) = v24;
    *(v38 + 56) = v25;

    v33 = *MEMORY[0x277D85DE8];
    return;
  }

  v34 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289795;
    v47 = 0;
    v48 = 2082;
    v49 = "";
    v50 = 1026;
    v51 = a1;
    v52 = 2082;
    v53 = "assert";
    v54 = 2081;
    v55 = "false";
    _os_log_impl(&dword_258FE9000, v34, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unsupported ble technology profile type, ble technology profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  v35 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v35))
  {
    *buf = 68289795;
    v47 = 0;
    v48 = 2082;
    v49 = "";
    v50 = 1026;
    v51 = a1;
    v52 = 2082;
    v53 = "assert";
    v54 = 2081;
    v55 = "false";
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v35, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unsupported ble technology profile type", "{msg%{public}.0s:Unsupported ble technology profile type, ble technology profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  v36 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    *buf = 68289795;
    v47 = 0;
    v48 = 2082;
    v49 = "";
    v50 = 1026;
    v51 = a1;
    v52 = 2082;
    v53 = "assert";
    v54 = 2081;
    v55 = "false";
    _os_log_impl(&dword_258FE9000, v36, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unsupported ble technology profile type, ble technology profile type:%{public}u, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  abort_report_np();
  __break(1u);
}

void sub_259118CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id *a13, void *a14, void *a15)
{
  ULBleTechnologyProfile::~ULBleTechnologyProfile(a13);

  _Unwind_Resume(a1);
}

id ULProfileGenerator::nsDataToBTAddressString(ULProfileGenerator *this, NSData *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = this;
  if ([(ULProfileGenerator *)v2 length]== 7)
  {
    v3 = [(ULProfileGenerator *)v2 bytes];
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    if (*v3)
    {
      v5 = "Random";
    }

    else
    {
      v5 = "Public";
    }

    v6 = [v4 initWithFormat:@"%s %02X:%02X:%02X:%02X:%02X:%02X", v5, v3[1], v3[2], v3[3], v3[4], v3[5], v3[6]];
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = [v6 UTF8String];
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:nsDataToBTAddressString, address:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2114;
      v17 = v2;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Invalid Address data, address:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULProfileGenerator::generateSchedulingProfile();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      *buf = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2114;
      v17 = v2;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid Address data", "{msg%{public}.0s:Invalid Address data, address:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

void ULProfileGenerator::generateUwbTechnologyProfile(unsigned int a1)
{
  if (a1 > 1)
  {
    UwbTechnologyProfile = ULProfileGenerator::generateUwbTechnologyProfile();
    ULProfileGenerator::channelHistogramToScanChannels(UwbTechnologyProfile, v2, v3);
  }
}

void ULProfileGenerator::channelHistogramToScanChannels(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = a2;
  if ((a1[1] - *a1) >> 3 < a2)
  {
    v4 = (a1[1] - *a1) >> 3;
  }

  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 8 * v4;
    do
    {
      v9 = *(*a1 + v6);
      if (v9 <= 0xD)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      v11 = *(a3 + 16);
      if (v7 >= v11)
      {
        v12 = (v7 - *a3) >> 3;
        if ((v12 + 1) >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v13 = v11 - *a3;
        v14 = v13 >> 2;
        if (v13 >> 2 <= (v12 + 1))
        {
          v14 = v12 + 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ULWiFiScanChannel>>(a3, v15);
        }

        v16 = (8 * v12);
        *v16 = v10 | (v9 << 32);
        v7 = (8 * v12 + 8);
        v17 = *(a3 + 8) - *a3;
        v18 = v16 - v17;
        memcpy(v16 - v17, *a3, v17);
        v19 = *a3;
        *a3 = v18;
        *(a3 + 8) = v7;
        *(a3 + 16) = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v7++ = v10 | (v9 << 32);
      }

      *(a3 + 8) = v7;
      v6 += 8;
    }

    while (v8 != v6);
  }
}

void sub_2591191EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_86()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void OUTLINED_FUNCTION_1_2(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_signpost_emit_with_name_impl(a1, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, &buf, 0x2Cu);
}

void OUTLINED_FUNCTION_2_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x2Cu);
}

void OUTLINED_FUNCTION_3_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_INFO, a4, &buf, 0x2Cu);
}

_BYTE *ULProfileTypes::schedulingProfileTypeToString@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 4)
  {
    v2 = "INVALID";
  }

  else
  {
    v2 = off_2798D4BF8[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

_BYTE *ULProfileTypes::scanningProfileTypeToString@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 4)
  {
    v2 = "INVALID";
  }

  else
  {
    v2 = off_2798D4C20[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

_BYTE *ULProfileTypes::wifiTechnologyProfileTypeToString@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v2 = "INVALID";
  if (a1 == 1)
  {
    v2 = "MILO_WIFI_RECORDING_CHANNEL_SCAN";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "MILO_WIFI_LOCALIZATION_CHANNEL_SCAN";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

_BYTE *ULProfileTypes::bleTechnologyProfileTypeToString@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v2 = "INVALID";
  if (a1 == 1)
  {
    v2 = "MILO_BLE_BACKGROUND_SCAN";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "MILO_BLE_INITIATED_SCAN";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

_BYTE *ULProfileTypes::uwbTechnologyProfileTypeToString@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v2 = "INVALID";
  if (a1 == 1)
  {
    v2 = "MILO_UWB_BACKGROUND_SCAN";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "MILO_UWB_INITIATED_SCAN";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

uint64_t ULScanConfig::ULScanConfig(uint64_t result, uint64_t a2, int a3, char a4, char a5, double a6)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 12) = a4;
  *(result + 13) = a5;
  *(result + 16) = a6;
  return result;
}

void ULScanningProfile::ULScanningProfile(ULScanningProfile *this)
{
  v1 = 0;
  v2 = 0;
  *this = -1;
  *(this + 4) = 0;
  do
  {
    v3 = this + v1;
    *(v3 + 1) = v2;
    *(v3 + 4) = -1;
    *(v3 + 10) = 0;
    *(v3 + 3) = 0;
    ++v2;
    v1 += 24;
  }

  while (v2 != 3);
}

char *ULScanningProfile::ULScanningProfile(char *result, int a2, uint64_t a3, char a4)
{
  v4 = 0;
  *result = a2;
  result[4] = a4;
  v5 = (result + 8);
  *(result + 8) = *a3;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  v8 = *(a3 + 48);
  *(result + 9) = *(a3 + 64);
  *(result + 56) = v8;
  *(result + 40) = v7;
  *(result + 24) = v6;
  while (1)
  {
    v9 = *v5;
    v5 += 3;
    if (v4 != v9)
    {
      break;
    }

    if (++v4 == 3)
    {
      return result;
    }
  }

  ULScanningProfile::ULScanningProfile();
  return _CLLogObjectForCategory_MicroLocation_Default();
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_87()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

double ULScanService::ULScanService(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_286A5A518;
  *(a1 + 8) = &unk_286A5A598;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = &unk_286A5A5C8;
  v6 = a2[1];
  *(a1 + 40) = *a2;
  *(a1 + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  *(a1 + 56) = *a3;
  *(a1 + 64) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a4;
  *(a1 + 96) = a5;
  *(a1 + 104) = 0;
  *(a1 + 112) = a6;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *&result = 0x500000005;
  *(a1 + 296) = 0x500000005;
  *(a1 + 304) = 0;
  return result;
}

void ULScanService::~ULScanService(ULScanService *this)
{
  *this = &unk_286A5A518;
  *(this + 1) = &unk_286A5A598;
  *(this + 2) = &unk_286A5A5C8;
  ULScanService::stop(this);
  v2 = *(this + 34);
  if (v2)
  {
    *(this + 35) = v2;
    operator delete(v2);
  }

  v3 = *(this + 31);
  if (v3)
  {
    *(this + 32) = v3;
    operator delete(v3);
  }

  v4 = *(this + 28);
  if (v4)
  {
    *(this + 29) = v4;
    operator delete(v4);
  }

  v5 = *(this + 25);
  if (v5)
  {
    *(this + 26) = v5;
    operator delete(v5);
  }

  v6 = *(this + 22);
  if (v6)
  {
    *(this + 23) = v6;
    operator delete(v6);
  }

  v7 = *(this + 17);
  if (v7)
  {
    *(this + 18) = v7;
    operator delete(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 6);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 4);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

{
  ULScanService::~ULScanService(this);

  JUMPOUT(0x259CA1F90);
}

void ULScanService::stop(id *this)
{
  if (ULSettings::get<ULSettings::OffScreenScanEnabled>())
  {
    ULScanService::stopMonitoringSleepWakeState(this);
  }

  ULScanService::stopMonitoringDisplayState(this);
}

void non-virtual thunk toULScanService::~ULScanService(ULScanService *this)
{
  ULScanService::~ULScanService((this - 8));
}

{
  ULScanService::~ULScanService((this - 16));
}

{
  ULScanService::~ULScanService((this - 8));

  JUMPOUT(0x259CA1F90);
}

{
  ULScanService::~ULScanService((this - 16));

  JUMPOUT(0x259CA1F90);
}

void ULScanService::setDependencies(void *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v7 = a4;
  v9 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a1[4];
  a1[3] = v9;
  a1[4] = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v12 = *a3;
  v11 = a3[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a1[10];
  a1[9] = v12;
  a1[10] = v11;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = a1[13];
  a1[13] = v7;
}

void ULScanService::start(id *this)
{
  if (ULSettings::get<ULSettings::OffScreenScanEnabled>())
  {
    ULScanService::startMonitoringSleepWakeState(this);
  }

  ULScanService::startMonitoringDisplayState(this);

  ULScanService::startMonitoringBtPowerState(this);
}

uint64_t ULSettings::get<ULSettings::OffScreenScanEnabled>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOffScreenScanEnabled"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v5 = v4;

  return v5;
}