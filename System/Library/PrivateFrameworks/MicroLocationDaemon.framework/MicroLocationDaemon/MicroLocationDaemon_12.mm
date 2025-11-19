uint64_t CLMicroLocationProto::ULTrajectoryPoint::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 36);
  if (v1)
  {
    if (*(this + 36))
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
        v1 = *(this + 36);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v1 = *(this + 36);
      }
    }

    if ((v1 & 4) != 0)
    {
      v4 = *(this + 24);
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

  *(this + 36) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ULTrajectoryPoint::MergePartialFromCodedStream(CLMicroLocationProto::ULTrajectoryPoint *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (!CLMicroLocationProto::ULPointLocation::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
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
        if (!CLMicroLocationProto::ULPointMovement::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
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
          if (!CLMicroLocationProto::ULPointMovement::MergePartialFromCodedStream(v23, a2) || *(a2 + 36) != 1)
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

uint64_t CLMicroLocationProto::ULTrajectoryPoint::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v7 = *(CLMicroLocationProto::ULTrajectoryPoint::default_instance_ + 8);
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
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v8 = *(CLMicroLocationProto::ULTrajectoryPoint::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  if ((*(v5 + 36) & 4) != 0)
  {
LABEL_11:
    v9 = *(v5 + 24);
    if (!v9)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v9 = *(CLMicroLocationProto::ULTrajectoryPoint::default_instance_ + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::ULTrajectoryPoint::ByteSize(CLMicroLocationProto::ULTrajectoryPoint *this)
{
  LOBYTE(v2) = *(this + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_30;
  }

  if (*(this + 36))
  {
    v4 = *(this + 1);
    if (!v4)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v4 = *(CLMicroLocationProto::ULTrajectoryPoint::default_instance_ + 8);
    }

    v5 = *(v4 + 24);
    if (*(v4 + 24))
    {
      v6 = (v5 << 31 >> 31) & 5;
      if ((v5 & 2) != 0)
      {
        v6 += 5;
      }

      if ((v5 & 4) != 0)
      {
        v5 = v6 + 5;
      }

      else
      {
        v5 = v6;
      }
    }

    *(v4 + 20) = v5;
    v3 = (v5 + 2);
    v2 = *(this + 9);
    if ((v2 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v3 = 0;
  if ((*(this + 36) & 2) != 0)
  {
LABEL_15:
    v7 = *(this + 2);
    if (!v7)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v7 = *(CLMicroLocationProto::ULTrajectoryPoint::default_instance_ + 16);
    }

    v8 = *(v7 + 20);
    if (*(v7 + 20))
    {
      if ((v8 & 2) != 0)
      {
        v8 = ((v8 << 31 >> 31) & 5) + 5;
      }

      else
      {
        v8 = (v8 << 31 >> 31) & 5;
      }
    }

    *(v7 + 16) = v8;
    v3 = (v3 + v8 + 2);
    v2 = *(this + 9);
  }

LABEL_22:
  if ((v2 & 4) != 0)
  {
    v9 = *(this + 3);
    if (!v9)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v9 = *(CLMicroLocationProto::ULTrajectoryPoint::default_instance_ + 24);
    }

    v10 = *(v9 + 20);
    if (*(v9 + 20))
    {
      if ((v10 & 2) != 0)
      {
        v10 = ((v10 << 31 >> 31) & 5) + 5;
      }

      else
      {
        v10 = (v10 << 31 >> 31) & 5;
      }
    }

    *(v9 + 16) = v10;
    v3 = (v3 + v10 + 2);
  }

LABEL_30:
  *(this + 8) = v3;
  return v3;
}

float CLMicroLocationProto::ULTrajectoryPoint::CheckTypeAndMergeFrom(CLMicroLocationProto::ULTrajectoryPoint *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  return CLMicroLocationProto::ULTrajectoryPoint::MergeFrom(this, lpsrc);
}

float CLMicroLocationProto::ULTrajectoryPoint::CopyFrom(CLMicroLocationProto::ULTrajectoryPoint *this, const CLMicroLocationProto::ULTrajectoryPoint *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLMicroLocationProto::ULTrajectoryPoint::MergeFrom(this, a2);
  }

  return result;
}

void CLMicroLocationProto::ULROIPoint::MergeFrom(CLMicroLocationProto::ULROIPoint *this, const CLMicroLocationProto::ULROIPoint *a2)
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
        CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
        v6 = *(CLMicroLocationProto::ULROIPoint::default_instance_ + 8);
      }

      CLMicroLocationProto::ULPointLocation::MergeFrom(v5, v6);
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
        CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
        v8 = *(CLMicroLocationProto::ULROIPoint::default_instance_ + 16);
      }

      CLMicroLocationProto::Fingerprint::MergeFrom(v7, v8);
    }
  }
}

void sub_2590ED030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ULROIPoint::~ULROIPoint(CLMicroLocationProto::ULROIPoint *this)
{
  *this = &unk_286A58110;
  CLMicroLocationProto::ULROIPoint::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ULROIPoint::~ULROIPoint(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::ULROIPoint::SharedDtor(CLMicroLocationProto::ULROIPoint *this)
{
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  if (CLMicroLocationProto::ULROIPoint::default_instance_ != this)
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

uint64_t CLMicroLocationProto::ULROIPoint::Clear(uint64_t this)
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
        this = CLMicroLocationProto::Fingerprint::Clear(this);
      }
    }
  }

  *(v1 + 28) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ULROIPoint::MergePartialFromCodedStream(CLMicroLocationProto::ULROIPoint *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (!CLMicroLocationProto::ULPointLocation::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
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
        if (!CLMicroLocationProto::Fingerprint::MergePartialFromCodedStream(v15, a2) || *(a2 + 36) != 1)
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

uint64_t CLMicroLocationProto::ULROIPoint::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v7 = *(CLMicroLocationProto::ULROIPoint::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v8 = *(CLMicroLocationProto::ULROIPoint::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::ULROIPoint::ByteSize(CLMicroLocationProto::ULROIPoint *this)
{
  if (!*(this + 28))
  {
    v2 = 0;
    goto LABEL_21;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v3 = *(CLMicroLocationProto::ULROIPoint::default_instance_ + 8);
  }

  v4 = *(v3 + 24);
  if (*(v3 + 24))
  {
    v5 = (v4 << 31 >> 31) & 5;
    if ((v4 & 2) != 0)
    {
      v5 += 5;
    }

    if ((v4 & 4) != 0)
    {
      v4 = v5 + 5;
    }

    else
    {
      v4 = v5;
    }
  }

  *(v3 + 20) = v4;
  v2 = (v4 + 2);
  if ((*(this + 7) & 2) != 0)
  {
LABEL_15:
    v6 = *(this + 2);
    if (!v6)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v6 = *(CLMicroLocationProto::ULROIPoint::default_instance_ + 16);
    }

    v7 = CLMicroLocationProto::Fingerprint::ByteSize(v6);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    }

    else
    {
      v9 = 1;
    }

    v2 = (v2 + v8 + v9 + 1);
  }

LABEL_21:
  *(this + 6) = v2;
  return v2;
}

void CLMicroLocationProto::ULROIPoint::CheckTypeAndMergeFrom(CLMicroLocationProto::ULROIPoint *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ULROIPoint::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ULROIPoint::CopyFrom(CLMicroLocationProto::ULROIPoint *this, const CLMicroLocationProto::ULROIPoint *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLMicroLocationProto::ULROIPoint::MergeFrom(this, a2);
  }
}

void CLMicroLocationProto::ULROI::MergeFrom(CLMicroLocationProto::ULROI *this, const CLMicroLocationProto::ULROI *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ULROIPoint>::TypeHandler>((this + 8), a2 + 8);
  if ((*(a2 + 40) & 2) != 0)
  {
    v4 = *(a2 + 8);
    *(this + 10) |= 2u;
    *(this + 8) = v4;
  }
}

void sub_2590ED898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ULROI::~ULROI(CLMicroLocationProto::ULROI *this)
{
  *this = &unk_286A58188;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ULROI::~ULROI(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ULROI::Clear(CLMicroLocationProto::ULROI *this)
{
  if ((*(this + 20) & 0x1FE) != 0)
  {
    *(this + 8) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 8);
  *(this + 10) = 0;
  return result;
}

uint64_t CLMicroLocationProto::ULROI::MergePartialFromCodedStream(CLMicroLocationProto::ULROI *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v6 = TagFallback & 7;
      if (TagFallback >> 3 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v20 = *(a2 + 1);
      v17 = *(a2 + 2);
LABEL_34:
      v24 = 0;
      if (v20 >= v17 || (v21 = *v20, (v21 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
        if (!result)
        {
          return result;
        }

        v21 = v24;
        v22 = *(a2 + 1);
        v17 = *(a2 + 2);
      }

      else
      {
        v22 = v20 + 1;
        *(a2 + 1) = v22;
      }

      *(this + 8) = v21;
      *(this + 10) |= 2u;
      if (v22 == v17 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (TagFallback >> 3 == 1 && v6 == 2)
    {
      while (1)
      {
        v7 = *(this + 5);
        v8 = *(this + 4);
        if (v8 >= v7)
        {
          if (v7 == *(this + 6))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
            v7 = *(this + 5);
          }

          *(this + 5) = v7 + 1;
          operator new();
        }

        v9 = *(this + 1);
        *(this + 4) = v8 + 1;
        v10 = *(v9 + 8 * v8);
        v25 = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25))
          {
            return 0;
          }
        }

        else
        {
          v25 = *v11;
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
        if (!CLMicroLocationProto::ULROIPoint::MergePartialFromCodedStream(v10, a2) || *(a2 + 36) != 1)
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

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v18 >= v17)
        {
          goto LABEL_1;
        }

        v19 = *v18;
        if (v19 != 10)
        {
          if (v19 != 16)
          {
            goto LABEL_1;
          }

          v20 = (v18 + 1);
          *(a2 + 1) = v20;
          goto LABEL_34;
        }

        *(a2 + 1) = v18 + 1;
      }
    }

LABEL_30:
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

uint64_t CLMicroLocationProto::ULROI::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 16) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  if ((*(v5 + 40) & 2) != 0)
  {
    v7 = *(v5 + 32);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::ULROI::ByteSize(CLMicroLocationProto::ULROI *this)
{
  if ((*(this + 40) & 2) != 0)
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
      v7 = CLMicroLocationProto::ULROIPoint::ByteSize(*(*(this + 1) + 8 * v6));
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

void CLMicroLocationProto::ULROI::CheckTypeAndMergeFrom(CLMicroLocationProto::ULROI *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ULROI::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ULROI::CopyFrom(CLMicroLocationProto::ULROI *this, const CLMicroLocationProto::ULROI *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLMicroLocationProto::ULROI::MergeFrom(this, a2);
  }
}

void CLMicroLocationProto::ULPositionedImage::MergeFrom(CLMicroLocationProto::ULPositionedImage *this, const CLMicroLocationProto::ULPositionedImage *a2)
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
        CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
        v6 = *(CLMicroLocationProto::ULPositionedImage::default_instance_ + 8);
      }

      CLMicroLocationProto::ULPointLocation::MergeFrom(v5, v6);
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
        CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
        v8 = *(CLMicroLocationProto::ULPositionedImage::default_instance_ + 16);
      }

      CLMicroLocationProto::Fingerprint::MergeFrom(v7, v8);
    }
  }
}

void sub_2590EE08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ULPositionedImage::~ULPositionedImage(CLMicroLocationProto::ULPositionedImage *this)
{
  *this = &unk_286A58200;
  CLMicroLocationProto::ULPositionedImage::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ULPositionedImage::~ULPositionedImage(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::ULPositionedImage::SharedDtor(CLMicroLocationProto::ULPositionedImage *this)
{
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  if (CLMicroLocationProto::ULPositionedImage::default_instance_ != this)
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

uint64_t CLMicroLocationProto::ULPositionedImage::Clear(uint64_t this)
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
        this = CLMicroLocationProto::Fingerprint::Clear(this);
      }
    }
  }

  *(v1 + 28) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ULPositionedImage::MergePartialFromCodedStream(CLMicroLocationProto::ULPositionedImage *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (!CLMicroLocationProto::ULPointLocation::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
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
        if (!CLMicroLocationProto::Fingerprint::MergePartialFromCodedStream(v15, a2) || *(a2 + 36) != 1)
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

uint64_t CLMicroLocationProto::ULPositionedImage::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v7 = *(CLMicroLocationProto::ULPositionedImage::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v8 = *(CLMicroLocationProto::ULPositionedImage::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::ULPositionedImage::ByteSize(CLMicroLocationProto::ULPositionedImage *this)
{
  if (!*(this + 28))
  {
    v2 = 0;
    goto LABEL_21;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v3 = *(CLMicroLocationProto::ULPositionedImage::default_instance_ + 8);
  }

  v4 = *(v3 + 24);
  if (*(v3 + 24))
  {
    v5 = (v4 << 31 >> 31) & 5;
    if ((v4 & 2) != 0)
    {
      v5 += 5;
    }

    if ((v4 & 4) != 0)
    {
      v4 = v5 + 5;
    }

    else
    {
      v4 = v5;
    }
  }

  *(v3 + 20) = v4;
  v2 = (v4 + 2);
  if ((*(this + 7) & 2) != 0)
  {
LABEL_15:
    v6 = *(this + 2);
    if (!v6)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v6 = *(CLMicroLocationProto::ULPositionedImage::default_instance_ + 16);
    }

    v7 = CLMicroLocationProto::Fingerprint::ByteSize(v6);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    }

    else
    {
      v9 = 1;
    }

    v2 = (v2 + v8 + v9 + 1);
  }

LABEL_21:
  *(this + 6) = v2;
  return v2;
}

void CLMicroLocationProto::ULPositionedImage::CheckTypeAndMergeFrom(CLMicroLocationProto::ULPositionedImage *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ULPositionedImage::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ULPositionedImage::CopyFrom(CLMicroLocationProto::ULPositionedImage *this, const CLMicroLocationProto::ULPositionedImage *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLMicroLocationProto::ULPositionedImage::MergeFrom(this, a2);
  }
}

void CLMicroLocationProto::ModelMetadata::MergeFrom(CLMicroLocationProto::ModelMetadata *this, const CLMicroLocationProto::ModelMetadata *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 14);
  if (!v4)
  {
    goto LABEL_18;
  }

  if (v4)
  {
    v5 = *(a2 + 1);
    *(this + 14) |= 1u;
    v6 = *(this + 1);
    if (v6 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v6, v5);
    v4 = *(a2 + 14);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 4);
    if (v7 >= 6)
    {
      CLMicroLocationProto::ModelMetadata::MergeFrom();
    }

    *(this + 14) |= 2u;
    *(this + 4) = v7;
    v4 = *(a2 + 14);
  }

  if ((v4 & 4) != 0)
  {
    v11 = *(a2 + 5);
    *(this + 14) |= 4u;
    *(this + 5) = v11;
    v4 = *(a2 + 14);
    if ((v4 & 8) == 0)
    {
LABEL_13:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_13;
  }

  v12 = *(a2 + 6);
  *(this + 14) |= 8u;
  *(this + 6) = v12;
  v4 = *(a2 + 14);
  if ((v4 & 0x10) == 0)
  {
LABEL_14:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_15;
    }

LABEL_27:
    v14 = *(a2 + 8);
    *(this + 14) |= 0x20u;
    *(this + 8) = v14;
    v4 = *(a2 + 14);
    if ((v4 & 0x40) == 0)
    {
LABEL_16:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    goto LABEL_28;
  }

LABEL_26:
  v13 = *(a2 + 7);
  *(this + 14) |= 0x10u;
  *(this + 7) = v13;
  v4 = *(a2 + 14);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_15:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_28:
  v15 = *(a2 + 9);
  *(this + 14) |= 0x40u;
  *(this + 9) = v15;
  v4 = *(a2 + 14);
  if ((v4 & 0x80) != 0)
  {
LABEL_17:
    v8 = *(a2 + 10);
    *(this + 14) |= 0x80u;
    *(this + 10) = v8;
    v4 = *(a2 + 14);
  }

LABEL_18:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v9 = *(a2 + 11);
      *(this + 14) |= 0x100u;
      *(this + 11) = v9;
      v4 = *(a2 + 14);
    }

    if ((v4 & 0x200) != 0)
    {
      v10 = *(a2 + 12);
      *(this + 14) |= 0x200u;
      *(this + 12) = v10;
    }
  }
}

void sub_2590EEA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ModelMetadata::~ModelMetadata(CLMicroLocationProto::ModelMetadata *this)
{
  *this = &unk_286A58278;
  CLMicroLocationProto::ClusterRecordings::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ModelMetadata::~ModelMetadata(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ModelMetadata::Clear(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    if (v1)
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

    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 40) = 0;
    *(this + 32) = 0;
    v1 = *(this + 56);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 44) = 0;
    *(this + 48) = 0;
  }

  *(this + 56) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ModelMetadata::MergePartialFromCodedStream(CLMicroLocationProto::ModelMetadata *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
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
        if (TagFallback >> 3 > 5)
        {
          if (TagFallback >> 3 <= 7)
          {
            if (v7 == 6)
            {
              if ((TagFallback & 7) == 0)
              {
                v18 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_82;
              }
            }

            else if (v7 == 7 && (TagFallback & 7) == 0)
            {
              v14 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_90;
            }
          }

          else if (v7 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_98;
            }
          }

          else if (v7 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v22 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_106;
            }
          }

          else if (v7 == 10 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_114;
          }

          goto LABEL_47;
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_47;
          }

          v13 = *(a2 + 1);
          v12 = *(a2 + 2);
          goto LABEL_35;
        }

        if (v8 != 2)
        {
          goto LABEL_47;
        }

        *(this + 14) |= 1u;
        if (*(this + 1) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v16 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v16 < v12 && *v16 == 16)
        {
          v13 = v16 + 1;
          *(a2 + 1) = v13;
LABEL_35:
          v40 = 0;
          if (v13 >= v12 || (v17 = *v13, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
            if (!result)
            {
              return result;
            }

            v17 = v40;
          }

          else
          {
            *(a2 + 1) = v13 + 1;
          }

          if (v17 <= 5)
          {
            *(this + 14) |= 2u;
            *(this + 4) = v17;
          }

          v23 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v23 < v9 && *v23 == 24)
          {
            v19 = v23 + 1;
            *(a2 + 1) = v19;
LABEL_58:
            if (v19 >= v9 || (v24 = *v19, v24 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v25 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v24;
              v25 = v19 + 1;
              *(a2 + 1) = v25;
            }

            *(this + 14) |= 4u;
            if (v25 < v9 && *v25 == 32)
            {
              v21 = v25 + 1;
              *(a2 + 1) = v21;
              goto LABEL_66;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v19 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_58;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_47;
      }

      v21 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_66:
      if (v21 >= v9 || (v26 = *v21, v26 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v27 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v26;
        v27 = v21 + 1;
        *(a2 + 1) = v27;
      }

      *(this + 14) |= 8u;
      if (v27 < v9 && *v27 == 40)
      {
        v10 = v27 + 1;
        *(a2 + 1) = v10;
LABEL_74:
        if (v10 >= v9 || (v28 = *v10, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v29 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v28;
          v29 = v10 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 14) |= 0x10u;
        if (v29 < v9 && *v29 == 48)
        {
          v18 = v29 + 1;
          *(a2 + 1) = v18;
LABEL_82:
          if (v18 >= v9 || (v30 = *v18, v30 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
            if (!result)
            {
              return result;
            }

            v31 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 8) = v30;
            v31 = v18 + 1;
            *(a2 + 1) = v31;
          }

          *(this + 14) |= 0x20u;
          if (v31 < v9 && *v31 == 56)
          {
            v14 = v31 + 1;
            *(a2 + 1) = v14;
LABEL_90:
            if (v14 >= v9 || (v32 = *v14, v32 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
              if (!result)
              {
                return result;
              }

              v33 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 9) = v32;
              v33 = v14 + 1;
              *(a2 + 1) = v33;
            }

            *(this + 14) |= 0x40u;
            if (v33 < v9 && *v33 == 64)
            {
              v20 = v33 + 1;
              *(a2 + 1) = v20;
LABEL_98:
              if (v20 >= v9 || (v34 = *v20, v34 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
                if (!result)
                {
                  return result;
                }

                v35 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 10) = v34;
                v35 = v20 + 1;
                *(a2 + 1) = v35;
              }

              *(this + 14) |= 0x80u;
              if (v35 < v9 && *v35 == 72)
              {
                v22 = v35 + 1;
                *(a2 + 1) = v22;
LABEL_106:
                if (v22 >= v9 || (v36 = *v22, v36 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
                  if (!result)
                  {
                    return result;
                  }

                  v37 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  *(this + 11) = v36;
                  v37 = v22 + 1;
                  *(a2 + 1) = v37;
                }

                *(this + 14) |= 0x100u;
                if (v37 < v9 && *v37 == 80)
                {
                  v11 = v37 + 1;
                  *(a2 + 1) = v11;
LABEL_114:
                  if (v11 >= v9 || (v38 = *v11, v38 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                    if (!result)
                    {
                      return result;
                    }

                    v39 = *(a2 + 1);
                    v9 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 12) = v38;
                    v39 = v11 + 1;
                    *(a2 + 1) = v39;
                  }

                  *(this + 14) |= 0x200u;
                  if (v39 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_74;
    }

LABEL_47:
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

uint64_t CLMicroLocationProto::ModelMetadata::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    v7 = *(this + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = v5[14];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[4], a2, a4);
  v6 = v5[14];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[14];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[14];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[14];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
  v6 = v5[14];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
  v6 = v5[14];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[11], a2, a4);
    if ((v5[14] & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[10], a2, a4);
  v6 = v5[14];
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
  v8 = v5[12];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v8, a2, a4);
}

uint64_t CLMicroLocationProto::ModelMetadata::ByteSize(CLMicroLocationProto::ModelMetadata *this)
{
  v2 = *(this + 14);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_52;
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
    v2 = *(this + 14);
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
    v11 = *(this + 4);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 14);
    }

    else
    {
      v12 = 2;
    }

    v3 = (v12 + v3);
  }

LABEL_21:
  if ((v2 & 4) != 0)
  {
    v13 = *(this + 5);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v2 = *(this + 14);
    }

    else
    {
      v14 = 2;
    }

    v3 = (v14 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_23:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_36;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_23;
  }

  v15 = *(this + 6);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = *(this + 14);
  }

  else
  {
    v16 = 2;
  }

  v3 = (v16 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_24:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_40;
  }

LABEL_36:
  v17 = *(this + 7);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v2 = *(this + 14);
  }

  else
  {
    v18 = 2;
  }

  v3 = (v18 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_25:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_44;
  }

LABEL_40:
  v19 = *(this + 8);
  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v2 = *(this + 14);
  }

  else
  {
    v20 = 2;
  }

  v3 = (v20 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_26:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

LABEL_44:
  v21 = *(this + 9);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v2 = *(this + 14);
  }

  else
  {
    v22 = 2;
  }

  v3 = (v22 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_48:
    v23 = *(this + 10);
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
      v2 = *(this + 14);
    }

    else
    {
      v24 = 2;
    }

    v3 = (v24 + v3);
  }

LABEL_52:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v25 = *(this + 11);
      if (v25 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
        v2 = *(this + 14);
      }

      else
      {
        v26 = 2;
      }

      v3 = (v26 + v3);
    }

    if ((v2 & 0x200) != 0)
    {
      v27 = *(this + 12);
      if (v27 >= 0x80)
      {
        v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
      }

      else
      {
        v28 = 2;
      }

      v3 = (v28 + v3);
    }
  }

  *(this + 13) = v3;
  return v3;
}

void CLMicroLocationProto::ModelMetadata::CheckTypeAndMergeFrom(CLMicroLocationProto::ModelMetadata *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ModelMetadata::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ModelMetadata::CopyFrom(CLMicroLocationProto::ModelMetadata *this, const CLMicroLocationProto::ModelMetadata *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLMicroLocationProto::ModelMetadata::MergeFrom(this, a2);
  }
}

CLMicroLocationProto::HomeSlamModel *CLMicroLocationProto::HomeSlamModel::HomeSlamModel(CLMicroLocationProto::HomeSlamModel *this, const CLMicroLocationProto::HomeSlamModel *a2)
{
  *this = &unk_286A582F0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 30) = 0;
  *(this + 14) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  CLMicroLocationProto::HomeSlamModel::MergeFrom(this, a2);
  return this;
}

void sub_2590EF630(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(v1 + 11);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(v3);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

float CLMicroLocationProto::HomeSlamModel::MergeFrom(CLMicroLocationProto::HomeSlamModel *this, const CLMicroLocationProto::HomeSlamModel *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ULTrajectoryPoint>::TypeHandler>((this + 8), a2 + 8);
  v4 = *(this + 10);
  v5 = *(a2 + 10);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
  LODWORD(v6) = *(a2 + 10);
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

      v8 = *(*(a2 + 4) + 8 * v7);
      v9 = *(this + 11);
      v10 = *(this + 10);
      if (v10 >= v9)
      {
        if (v9 == *(this + 12))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
          v9 = *(this + 11);
        }

        *(this + 11) = v9 + 1;
        operator new();
      }

      v11 = *(this + 4);
      *(this + 10) = v10 + 1;
      CLMicroLocationProto::ULROI::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 10);
    }

    while (v7 < v6);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::ULPositionedImage>::TypeHandler>((this + 88), a2 + 88);
  v14 = *(a2 + 30);
  if ((v14 & 0x3FC) != 0)
  {
    if ((v14 & 4) != 0)
    {
      *(this + 30) |= 4u;
      v15 = *(this + 7);
      if (!v15)
      {
        operator new();
      }

      v16 = *(a2 + 7);
      if (!v16)
      {
        CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(v12);
        v16 = *(CLMicroLocationProto::HomeSlamModel::default_instance_ + 56);
      }

      CLMicroLocationProto::anchorAppearancesVector::MergeFrom(v15, v16);
      v14 = *(a2 + 30);
      if ((v14 & 8) == 0)
      {
LABEL_16:
        if ((v14 & 0x10) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_32;
      }
    }

    else if ((v14 & 8) == 0)
    {
      goto LABEL_16;
    }

    *(this + 30) |= 8u;
    v17 = *(this + 8);
    if (!v17)
    {
      operator new();
    }

    v18 = *(a2 + 8);
    if (!v18)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(v12);
      v18 = *(CLMicroLocationProto::HomeSlamModel::default_instance_ + 64);
    }

    CLMicroLocationProto::ModelMetadata::MergeFrom(v17, v18);
    v14 = *(a2 + 30);
    if ((v14 & 0x10) == 0)
    {
LABEL_17:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_37;
    }

LABEL_32:
    *(this + 30) |= 0x10u;
    v19 = *(this + 9);
    if (!v19)
    {
      operator new();
    }

    v20 = *(a2 + 9);
    if (!v20)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(v12);
      v20 = *(CLMicroLocationProto::HomeSlamModel::default_instance_ + 72);
    }

    result = CLMicroLocationProto::ULPointLocation::MergeFrom(v19, v20);
    v14 = *(a2 + 30);
    if ((v14 & 0x20) == 0)
    {
LABEL_18:
      if ((v14 & 0x40) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_38;
    }

LABEL_37:
    result = *(a2 + 20);
    *(this + 30) |= 0x20u;
    *(this + 20) = result;
    v14 = *(a2 + 30);
    if ((v14 & 0x40) == 0)
    {
LABEL_19:
      if ((v14 & 0x80) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

LABEL_38:
    result = *(a2 + 21);
    *(this + 30) |= 0x40u;
    *(this + 21) = result;
    if ((*(a2 + 30) & 0x80) == 0)
    {
      return result;
    }

LABEL_20:
    result = *(a2 + 28);
    *(this + 30) |= 0x80u;
    *(this + 28) = result;
  }

  return result;
}

void sub_2590EFA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::HomeSlamModel::~HomeSlamModel(CLMicroLocationProto::HomeSlamModel *this)
{
  *this = &unk_286A582F0;
  CLMicroLocationProto::HomeSlamModel::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 11);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::HomeSlamModel::~HomeSlamModel(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::HomeSlamModel::SharedDtor(CLMicroLocationProto::HomeSlamModel *this)
{
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  if (CLMicroLocationProto::HomeSlamModel::default_instance_ != this)
  {
    v2 = *(this + 7);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 8);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 9);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t CLMicroLocationProto::HomeSlamModel::Clear(CLMicroLocationProto::HomeSlamModel *this)
{
  v2 = *(this + 30);
  if ((v2 & 0x3FC) != 0)
  {
    if ((v2 & 4) != 0)
    {
      v3 = *(this + 7);
      if (v3)
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(v3 + 8);
        *(v3 + 36) = 0;
        v2 = *(this + 30);
      }
    }

    if ((v2 & 8) != 0)
    {
      v4 = *(this + 8);
      if (v4)
      {
        CLMicroLocationProto::ModelMetadata::Clear(v4);
        v2 = *(this + 30);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v5 = *(this + 9);
      if (v5)
      {
        if (*(v5 + 24))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 24) = 0;
      }
    }

    *(this + 10) = 0;
    *(this + 28) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 32);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLMicroLocationProto::Measurement>::TypeHandler>(this + 88);
  *(this + 30) = 0;
  return result;
}

uint64_t CLMicroLocationProto::HomeSlamModel::MergePartialFromCodedStream(CLMicroLocationProto::HomeSlamModel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (v6 != 3)
          {
            if (v6 != 4 || v7 != 2)
            {
              goto LABEL_54;
            }

            goto LABEL_90;
          }

          if (v7 != 2)
          {
            goto LABEL_54;
          }

LABEL_76:
          *(this + 30) |= 4u;
          v30 = *(this + 7);
          if (!v30)
          {
            operator new();
          }

          v65 = 0;
          v31 = *(a2 + 1);
          if (v31 >= *(a2 + 2) || *v31 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v65))
            {
              return 0;
            }
          }

          else
          {
            v65 = *v31;
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
          if (!CLMicroLocationProto::anchorAppearancesVector::MergePartialFromCodedStream(v30, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v34 = *(a2 + 14);
          v16 = __OFSUB__(v34, 1);
          v35 = v34 - 1;
          if (v35 < 0 == v16)
          {
            *(a2 + 14) = v35;
          }

          v36 = *(a2 + 1);
          if (v36 < *(a2 + 2) && *v36 == 34)
          {
            *(a2 + 1) = v36 + 1;
LABEL_90:
            *(this + 30) |= 8u;
            v37 = *(this + 8);
            if (!v37)
            {
              operator new();
            }

            v65 = 0;
            v38 = *(a2 + 1);
            if (v38 >= *(a2 + 2) || *v38 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v65))
              {
                return 0;
              }
            }

            else
            {
              v65 = *v38;
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
            if (!CLMicroLocationProto::ModelMetadata::MergePartialFromCodedStream(v37, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v41 = *(a2 + 14);
            v16 = __OFSUB__(v41, 1);
            v42 = v41 - 1;
            if (v42 < 0 == v16)
            {
              *(a2 + 14) = v42;
            }

            v43 = *(a2 + 1);
            if (v43 < *(a2 + 2) && *v43 == 42)
            {
              *(a2 + 1) = v43 + 1;
LABEL_104:
              *(this + 30) |= 0x10u;
              v44 = *(this + 9);
              if (!v44)
              {
                operator new();
              }

              v65 = 0;
              v45 = *(a2 + 1);
              if (v45 >= *(a2 + 2) || *v45 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v65))
                {
                  return 0;
                }
              }

              else
              {
                v65 = *v45;
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
              if (!CLMicroLocationProto::ULPointLocation::MergePartialFromCodedStream(v44, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v48 = *(a2 + 14);
              v16 = __OFSUB__(v48, 1);
              v49 = v48 - 1;
              if (v49 < 0 == v16)
              {
                *(a2 + 14) = v49;
              }

              v50 = *(a2 + 1);
              if (v50 < *(a2 + 2) && *v50 == 53)
              {
                *(a2 + 1) = v50 + 1;
LABEL_118:
                v65 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v65) & 1) == 0)
                {
                  return 0;
                }

                *(this + 20) = v65;
                *(this + 30) |= 0x20u;
                v51 = *(a2 + 1);
                if (v51 < *(a2 + 2) && *v51 == 61)
                {
                  *(a2 + 1) = v51 + 1;
LABEL_122:
                  v65 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v65) & 1) == 0)
                  {
                    return 0;
                  }

                  *(this + 21) = v65;
                  *(this + 30) |= 0x40u;
                  v52 = *(a2 + 1);
                  if (v52 < *(a2 + 2) && *v52 == 69)
                  {
                    *(a2 + 1) = v52 + 1;
                    goto LABEL_126;
                  }
                }
              }
            }
          }
        }

        else if (v6 == 1)
        {
          if (v7 != 2)
          {
            goto LABEL_54;
          }

          while (1)
          {
            v8 = *(this + 5);
            v9 = *(this + 4);
            if (v9 >= v8)
            {
              if (v8 == *(this + 6))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
                v8 = *(this + 5);
              }

              *(this + 5) = v8 + 1;
              operator new();
            }

            v10 = *(this + 1);
            *(this + 4) = v9 + 1;
            v11 = *(v10 + 8 * v9);
            v65 = 0;
            v12 = *(a2 + 1);
            if (v12 >= *(a2 + 2) || *v12 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v65))
              {
                return 0;
              }
            }

            else
            {
              v65 = *v12;
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
            if (!CLMicroLocationProto::ULTrajectoryPoint::MergePartialFromCodedStream(v11, a2) || *(a2 + 36) != 1)
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
            if (v18 >= *(a2 + 2))
            {
              break;
            }

            v19 = *v18;
            if (v19 != 10)
            {
              if (v19 != 18)
              {
                goto LABEL_1;
              }

              goto LABEL_57;
            }

            *(a2 + 1) = v18 + 1;
          }
        }

        else
        {
          if (v6 != 2 || v7 != 2)
          {
            goto LABEL_54;
          }

          while (1)
          {
            v20 = *(this + 11);
            v21 = *(this + 10);
            if (v21 >= v20)
            {
              if (v20 == *(this + 12))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
                v20 = *(this + 11);
              }

              *(this + 11) = v20 + 1;
              operator new();
            }

            v22 = *(this + 4);
            *(this + 10) = v21 + 1;
            v23 = *(v22 + 8 * v21);
            v65 = 0;
            v24 = *(a2 + 1);
            if (v24 >= *(a2 + 2) || *v24 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v65))
              {
                return 0;
              }
            }

            else
            {
              v65 = *v24;
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
            if (!CLMicroLocationProto::ULROI::MergePartialFromCodedStream(v23, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v27 = *(a2 + 14);
            v16 = __OFSUB__(v27, 1);
            v28 = v27 - 1;
            if (v28 < 0 == v16)
            {
              *(a2 + 14) = v28;
            }

            v18 = *(a2 + 1);
            if (v18 >= *(a2 + 2))
            {
              break;
            }

            v29 = *v18;
            if (v29 != 18)
            {
              if (v29 != 26)
              {
                goto LABEL_1;
              }

              *(a2 + 1) = v18 + 1;
              goto LABEL_76;
            }

LABEL_57:
            *(a2 + 1) = v18 + 1;
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        break;
      }

      if (v6 == 7)
      {
        if (v7 != 5)
        {
          goto LABEL_54;
        }

        goto LABEL_122;
      }

      if (v6 == 8)
      {
        if (v7 != 5)
        {
          goto LABEL_54;
        }

LABEL_126:
        v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v65) & 1) == 0)
        {
          return 0;
        }

        *(this + 28) = v65;
        *(this + 30) |= 0x80u;
        v53 = *(a2 + 1);
        if (v53 < *(a2 + 2) && *v53 == 74)
        {
          goto LABEL_129;
        }
      }

      else
      {
        if (v6 != 9 || v7 != 2)
        {
          goto LABEL_54;
        }

        while (1)
        {
          v54 = *(this + 25);
          v55 = *(this + 24);
          if (v55 >= v54)
          {
            if (v54 == *(this + 26))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88));
              v54 = *(this + 25);
            }

            *(this + 25) = v54 + 1;
            operator new();
          }

          v56 = *(this + 11);
          *(this + 24) = v55 + 1;
          v57 = *(v56 + 8 * v55);
          v65 = 0;
          v58 = *(a2 + 1);
          if (v58 >= *(a2 + 2) || *v58 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v65))
            {
              return 0;
            }
          }

          else
          {
            v65 = *v58;
            *(a2 + 1) = v58 + 1;
          }

          v59 = *(a2 + 14);
          v60 = *(a2 + 15);
          *(a2 + 14) = v59 + 1;
          if (v59 >= v60)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLMicroLocationProto::ULPositionedImage::MergePartialFromCodedStream(v57, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v61 = *(a2 + 14);
          v16 = __OFSUB__(v61, 1);
          v62 = v61 - 1;
          if (v62 < 0 == v16)
          {
            *(a2 + 14) = v62;
          }

          v53 = *(a2 + 1);
          v63 = *(a2 + 2);
          if (v53 >= v63 || *v53 != 74)
          {
            break;
          }

LABEL_129:
          *(a2 + 1) = v53 + 1;
        }

        if (v53 == v63 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
        goto LABEL_54;
      }

      goto LABEL_104;
    }

    if (v6 == 6 && v7 == 5)
    {
      goto LABEL_118;
    }

LABEL_54:
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

int *CLMicroLocationProto::HomeSlamModel::SerializeWithCachedSizes(int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (this[4] >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 1) + 8 * v6++), a2, a4);
    }

    while (v6 < v5[4]);
  }

  if (v5[10] >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 4) + 8 * v7++), a2, a4);
    }

    while (v7 < v5[10]);
  }

  v8 = v5[30];
  if ((v8 & 4) != 0)
  {
    v10 = *(v5 + 7);
    if (!v10)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v10 = *(CLMicroLocationProto::HomeSlamModel::default_instance_ + 56);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v10, a2, a4);
    v8 = v5[30];
    if ((v8 & 8) == 0)
    {
LABEL_9:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_24;
    }
  }

  else if ((v8 & 8) == 0)
  {
    goto LABEL_9;
  }

  v11 = *(v5 + 8);
  if (!v11)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v11 = *(CLMicroLocationProto::HomeSlamModel::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v11, a2, a4);
  v8 = v5[30];
  if ((v8 & 0x10) == 0)
  {
LABEL_10:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_24:
  v12 = *(v5 + 9);
  if (!v12)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v12 = *(CLMicroLocationProto::HomeSlamModel::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v12, a2, a4);
  v8 = v5[30];
  if ((v8 & 0x20) == 0)
  {
LABEL_11:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 20), a3);
  v8 = v5[30];
  if ((v8 & 0x40) == 0)
  {
LABEL_12:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 21), a3);
  if ((v5[30] & 0x80) != 0)
  {
LABEL_13:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 28), a3);
  }

LABEL_14:
  if (v5[24] >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, *(*(v5 + 11) + 8 * v9++), a2, a4);
    }

    while (v9 < v5[24]);
  }

  return this;
}

uint64_t CLMicroLocationProto::HomeSlamModel::ByteSize(uint64_t this)
{
  v1 = this;
  v2 = *(this + 120);
  if ((v2 & 0x3FC) == 0)
  {
    v4 = 0;
    goto LABEL_35;
  }

  if ((v2 & 4) != 0)
  {
    v5 = *(this + 56);
    if (!v5)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v5 = *(CLMicroLocationProto::HomeSlamModel::default_instance_ + 56);
    }

    v6 = CLMicroLocationProto::anchorAppearancesVector::ByteSize(v5);
    v7 = v6;
    if (v6 >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
    }

    else
    {
      this = 1;
    }

    v3 = v7 + this + 1;
    v2 = *(v1 + 120);
    if ((v2 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = 0;
  if ((v2 & 8) != 0)
  {
LABEL_12:
    v8 = *(v1 + 64);
    if (!v8)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v8 = *(CLMicroLocationProto::HomeSlamModel::default_instance_ + 64);
    }

    v9 = CLMicroLocationProto::ModelMetadata::ByteSize(v8);
    v10 = v9;
    if (v9 >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      this = 1;
    }

    v3 += v10 + this + 1;
    v2 = *(v1 + 120);
  }

LABEL_18:
  if ((v2 & 0x10) != 0)
  {
    v11 = *(v1 + 72);
    if (!v11)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v11 = *(CLMicroLocationProto::HomeSlamModel::default_instance_ + 72);
    }

    v12 = *(v11 + 24);
    if (*(v11 + 24))
    {
      v13 = (v12 << 31 >> 31) & 5;
      if ((v12 & 2) != 0)
      {
        v13 += 5;
      }

      if ((v12 & 4) != 0)
      {
        v12 = v13 + 5;
      }

      else
      {
        v12 = v13;
      }
    }

    *(v11 + 20) = v12;
    v3 += v12 + 2;
    v2 = *(v1 + 120);
  }

  v14 = v3 + 5;
  if ((v2 & 0x20) == 0)
  {
    v14 = v3;
  }

  if ((v2 & 0x40) != 0)
  {
    v14 += 5;
  }

  if ((v2 & 0x80) != 0)
  {
    v4 = v14 + 5;
  }

  else
  {
    v4 = v14;
  }

LABEL_35:
  v15 = *(v1 + 16);
  v16 = v15 + v4;
  if (v15 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = CLMicroLocationProto::ULTrajectoryPoint::ByteSize(*(*(v1 + 8) + 8 * v17));
      v19 = v18;
      if (v18 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
      }

      else
      {
        v20 = 1;
      }

      v16 += v19 + v20;
      ++v17;
    }

    while (v17 < *(v1 + 16));
  }

  v21 = *(v1 + 40);
  v22 = v21 + v16;
  if (v21 >= 1)
  {
    v23 = 0;
    do
    {
      v24 = CLMicroLocationProto::ULROI::ByteSize(*(*(v1 + 32) + 8 * v23));
      v25 = v24;
      if (v24 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
      }

      else
      {
        v26 = 1;
      }

      v22 += v25 + v26;
      ++v23;
    }

    while (v23 < *(v1 + 40));
  }

  v27 = *(v1 + 96);
  v28 = (v27 + v22);
  if (v27 >= 1)
  {
    v29 = 0;
    do
    {
      v30 = CLMicroLocationProto::ULPositionedImage::ByteSize(*(*(v1 + 88) + 8 * v29));
      v31 = v30;
      if (v30 >= 0x80)
      {
        v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
      }

      else
      {
        v32 = 1;
      }

      v28 = (v31 + v28 + v32);
      ++v29;
    }

    while (v29 < *(v1 + 96));
  }

  *(v1 + 116) = v28;
  return v28;
}

float CLMicroLocationProto::HomeSlamModel::CheckTypeAndMergeFrom(CLMicroLocationProto::HomeSlamModel *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  return CLMicroLocationProto::HomeSlamModel::MergeFrom(this, lpsrc);
}

CLMicroLocationProto::HomeSlamModel *CLMicroLocationProto::HomeSlamModel::Swap(CLMicroLocationProto::HomeSlamModel *this, CLMicroLocationProto::HomeSlamModel *a2)
{
  if (a2 != this)
  {
    v3 = this;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 7);
    *(v3 + 7) = *(a2 + 7);
    *(a2 + 7) = v4;
    v5 = *(v3 + 8);
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
    v6 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v6;
    v7 = *(v3 + 20);
    *(v3 + 20) = *(a2 + 20);
    *(a2 + 20) = v7;
    v8 = *(v3 + 21);
    *(v3 + 21) = *(a2 + 21);
    *(a2 + 21) = v8;
    v9 = *(v3 + 28);
    *(v3 + 28) = *(a2 + 28);
    *(a2 + 28) = v9;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v10 = *(v3 + 30);
    *(v3 + 30) = *(a2 + 30);
    *(a2 + 30) = v10;
    v11 = *(v3 + 29);
    *(v3 + 29) = *(a2 + 29);
    *(a2 + 29) = v11;
  }

  return this;
}

CLMicroLocationProto::VMKModel *CLMicroLocationProto::VMKModel::VMKModel(CLMicroLocationProto::VMKModel *this, const CLMicroLocationProto::VMKModel *a2)
{
  v3 = MEMORY[0x277D82C30];
  *this = &unk_286A58368;
  *(this + 1) = v3;
  *(this + 2) = 0;
  CLMicroLocationProto::VMKModel::MergeFrom(this, a2);
  return this;
}

void CLMicroLocationProto::VMKModel::MergeFrom(CLMicroLocationProto::VMKModel *this, const CLMicroLocationProto::VMKModel *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    v5 = *(this + 1);
    if (v5 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }
}

void sub_2590F0DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::VMKModel::~VMKModel(CLMicroLocationProto::VMKModel *this)
{
  *this = &unk_286A58368;
  CLMicroLocationProto::ClusterRecordings::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::VMKModel::~VMKModel(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::VMKModel::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    v1 = *(this + 8);
    if (v1 != MEMORY[0x277D82C30])
    {
      if (*(v1 + 23) < 0)
      {
        **v1 = 0;
        *(v1 + 8) = 0;
      }

      else
      {
        *v1 = 0;
        *(v1 + 23) = 0;
      }
    }
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CLMicroLocationProto::VMKModel::MergePartialFromCodedStream(CLMicroLocationProto::VMKModel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(this + 5) |= 1u;
      if (*(this + 1) == v4)
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

uint64_t CLMicroLocationProto::VMKModel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 20))
  {
    v2 = *(this + 8);
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return this;
}

uint64_t CLMicroLocationProto::VMKModel::ByteSize(CLMicroLocationProto::VMKModel *this)
{
  if (*(this + 20))
  {
    v3 = *(this + 1);
    v4 = *(v3 + 23);
    v5 = v4;
    v6 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v7 = *(v3 + 23);
    }

    else
    {
      v7 = v6;
    }

    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      v4 = *(v3 + 23);
      v6 = *(v3 + 8);
      v8 = v9 + 1;
      v5 = *(v3 + 23);
    }

    else
    {
      v8 = 2;
    }

    if (v5 < 0)
    {
      v4 = v6;
    }

    result = (v8 + v4);
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void CLMicroLocationProto::VMKModel::CheckTypeAndMergeFrom(CLMicroLocationProto::VMKModel *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::VMKModel::MergeFrom(this, lpsrc);
}

uint64_t CLMicroLocationProto::VMKModel::Swap(uint64_t this, CLMicroLocationProto::VMKModel *a2)
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

void CLMicroLocationProto::BundleIdFeatures::MergeFrom(CLMicroLocationProto::BundleIdFeatures *this, const CLMicroLocationProto::BundleIdFeatures *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      v5 = *(a2 + 8);
      *(this + 4) |= 1u;
      *(this + 8) = v5;
      v4 = *(a2 + 4);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 9);
      *(this + 4) |= 2u;
      *(this + 9) = v6;
    }
  }
}

void sub_2590F1234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::BundleIdFeatures::~BundleIdFeatures(CLMicroLocationProto::BundleIdFeatures *this)
{
  *this = &unk_286A583E0;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::BundleIdFeatures::~BundleIdFeatures(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::BundleIdFeatures::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLMicroLocationProto::BundleIdFeatures::MergePartialFromCodedStream(CLMicroLocationProto::BundleIdFeatures *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v15 = 0;
      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v8 = v15;
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
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(a2 + 1) = v10;
LABEL_22:
        v14 = 0;
        if (v10 >= v6 || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
          if (!result)
          {
            return result;
          }

          v11 = v14;
          v12 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 9) = v11 != 0;
        *(this + 4) |= 2u;
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

uint64_t CLMicroLocationProto::BundleIdFeatures::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 16);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = *(v5 + 16);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 9);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::BundleIdFeatures::ByteSize(CLMicroLocationProto::BundleIdFeatures *this)
{
  if (*(this + 4))
  {
    v1 = 2 * (*(this + 4) & 1) + (*(this + 4) & 2u);
  }

  else
  {
    v1 = 0;
  }

  *(this + 3) = v1;
  return v1;
}

void CLMicroLocationProto::BundleIdFeatures::CheckTypeAndMergeFrom(CLMicroLocationProto::BundleIdFeatures *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::BundleIdFeatures::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ReceivedEventAction::MergeFrom(CLMicroLocationProto::ReceivedEventAction *this, const CLMicroLocationProto::ReceivedEventAction *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v5 = *(a2 + 2);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::ReceivedEventAction::MergeFrom();
      }

      *(this + 11) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 11);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      if ((v6 - 1) >= 4)
      {
        CLMicroLocationProto::ReceivedEventAction::MergeFrom();
      }

      *(this + 11) |= 2u;
      *(this + 3) = v6;
      v4 = *(a2 + 11);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 2);
      *(this + 11) |= 4u;
      v8 = *(this + 2);
      if (v8 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 11);
      if ((v4 & 8) == 0)
      {
LABEL_14:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_22;
      }
    }

    else if ((v4 & 8) == 0)
    {
      goto LABEL_14;
    }

    v9 = *(a2 + 3);
    *(this + 11) |= 8u;
    v10 = *(this + 3);
    if (v10 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    if ((*(a2 + 11) & 0x10) != 0)
    {
LABEL_22:
      v11 = *(a2 + 4);
      *(this + 11) |= 0x10u;
      v12 = *(this + 4);
      if (v12 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v12, v11);
    }
  }
}

void sub_2590F181C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ReceivedEventAction::~ReceivedEventAction(CLMicroLocationProto::ReceivedEventAction *this)
{
  *this = &unk_286A58458;
  CLMicroLocationProto::ReceivedEventAction::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ReceivedEventAction::~ReceivedEventAction(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::ReceivedEventAction::SharedDtor(CLMicroLocationProto::ReceivedEventAction *this)
{
  v1 = this;
  v2 = *(this + 2);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 3);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x259CA1F90](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 4);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x259CA1F90](v7, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
}

uint64_t CLMicroLocationProto::ReceivedEventAction::Clear(uint64_t this)
{
  v1 = *(this + 44);
  if (v1)
  {
    *(this + 8) = 0x100000001;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 4) != 0)
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

    if ((*(this + 44) & 8) != 0)
    {
      v4 = *(this + 24);
      if (v4 != v2)
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

    if ((*(this + 44) & 0x10) != 0)
    {
      v5 = *(this + 32);
      if (v5 != v2)
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
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ReceivedEventAction::MergePartialFromCodedStream(CLMicroLocationProto::ReceivedEventAction *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
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

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_22;
          }

          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_40;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v20 = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20);
          if (!result)
          {
            return result;
          }

          v12 = v20;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v12 - 31 < 0x19 || v12 <= 0xE && ((1 << v12) & 0x76B6) != 0)
        {
          if (v12 - 31 >= 0x19 && (v12 > 0xE || ((1 << v12) & 0x76B6) == 0))
          {
            CLMicroLocationProto::ReceivedEventAction::MergeFrom();
          }

          *(this + 11) |= 1u;
          *(this + 2) = v12;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v13 < v9 && *v13 == 16)
        {
          v10 = v13 + 1;
          *(a2 + 1) = v10;
LABEL_40:
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

          if (v14 - 1 <= 3)
          {
            *(this + 11) |= 2u;
            *(this + 3) = v14;
          }

          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 26)
          {
            *(a2 + 1) = v15 + 1;
LABEL_50:
            *(this + 11) |= 4u;
            if (*(this + 2) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            if (v16 < *(a2 + 2) && *v16 == 34)
            {
              *(a2 + 1) = v16 + 1;
              goto LABEL_56;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 2)
        {
          goto LABEL_22;
        }

        goto LABEL_50;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_22;
      }

LABEL_56:
      *(this + 11) |= 8u;
      if (*(this + 3) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v17 = *(a2 + 1);
      if (v17 < *(a2 + 2) && *v17 == 42)
      {
        *(a2 + 1) = v17 + 1;
LABEL_62:
        *(this + 11) |= 0x10u;
        if (*(this + 4) == v4)
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
    }

    if (v7 == 5 && v8 == 2)
    {
      goto LABEL_62;
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

uint64_t CLMicroLocationProto::ReceivedEventAction::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = *(v5 + 24);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 44) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 44);
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
  v9 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t CLMicroLocationProto::ReceivedEventAction::ByteSize(CLMicroLocationProto::ReceivedEventAction *this)
{
  LOBYTE(v2) = *(this + 44);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_50;
  }

  if (*(this + 44))
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
      v2 = *(this + 11);
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
    if ((*(this + 44) & 2) == 0)
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
    v2 = *(this + 11);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_19:
  if ((v2 & 4) != 0)
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
      v2 = *(this + 11);
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

    v3 = (v3 + v12 + v8 + 1);
    if ((v2 & 8) == 0)
    {
LABEL_21:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_41;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_21;
  }

  v13 = *(this + 3);
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
    v2 = *(this + 11);
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

  v3 = (v3 + v18 + v14 + 1);
  if ((v2 & 0x10) != 0)
  {
LABEL_41:
    v19 = *(this + 4);
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

    v3 = (v3 + v24 + v20 + 1);
  }

LABEL_50:
  *(this + 10) = v3;
  return v3;
}

void CLMicroLocationProto::ReceivedEventAction::CheckTypeAndMergeFrom(CLMicroLocationProto::ReceivedEventAction *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ReceivedEventAction::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::RecordingRequest::MergeFrom(CLMicroLocationProto::RecordingRequest *this, const CLMicroLocationProto::RecordingRequest *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v5 = *(a2 + 2);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::RecordingRequest::MergeFrom();
      }

      *(this + 11) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 11);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      if ((v6 - 1) >= 2)
      {
        CLMicroLocationProto::RecordingRequest::MergeFrom();
      }

      *(this + 11) |= 2u;
      *(this + 3) = v6;
      v4 = *(a2 + 11);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 2);
      *(this + 11) |= 4u;
      v8 = *(this + 2);
      if (v8 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 11);
      if ((v4 & 8) == 0)
      {
LABEL_14:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_22;
      }
    }

    else if ((v4 & 8) == 0)
    {
      goto LABEL_14;
    }

    v9 = *(a2 + 3);
    *(this + 11) |= 8u;
    v10 = *(this + 3);
    if (v10 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    if ((*(a2 + 11) & 0x10) != 0)
    {
LABEL_22:
      v11 = *(a2 + 4);
      *(this + 11) |= 0x10u;
      v12 = *(this + 4);
      if (v12 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v12, v11);
    }
  }
}

void sub_2590F2358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::RecordingRequest::~RecordingRequest(CLMicroLocationProto::RecordingRequest *this)
{
  *this = &unk_286A584D0;
  CLMicroLocationProto::ReceivedEventAction::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::RecordingRequest::~RecordingRequest(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::RecordingRequest::Clear(uint64_t this)
{
  v1 = *(this + 44);
  if (v1)
  {
    *(this + 8) = 0x10000000DLL;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 4) != 0)
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

    if ((*(this + 44) & 8) != 0)
    {
      v4 = *(this + 24);
      if (v4 != v2)
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

    if ((*(this + 44) & 0x10) != 0)
    {
      v5 = *(this + 32);
      if (v5 != v2)
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
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CLMicroLocationProto::RecordingRequest::MergePartialFromCodedStream(CLMicroLocationProto::RecordingRequest *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
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

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_22;
          }

          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_40;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v20 = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20);
          if (!result)
          {
            return result;
          }

          v12 = v20;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v12 - 31 < 0x19 || v12 <= 0xE && ((1 << v12) & 0x76B6) != 0)
        {
          if (v12 - 31 >= 0x19 && (v12 > 0xE || ((1 << v12) & 0x76B6) == 0))
          {
            CLMicroLocationProto::RecordingRequest::MergeFrom();
          }

          *(this + 11) |= 1u;
          *(this + 2) = v12;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v13 < v9 && *v13 == 16)
        {
          v10 = v13 + 1;
          *(a2 + 1) = v10;
LABEL_40:
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

          if (v14 - 1 <= 1)
          {
            *(this + 11) |= 2u;
            *(this + 3) = v14;
          }

          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 26)
          {
            *(a2 + 1) = v15 + 1;
LABEL_50:
            *(this + 11) |= 4u;
            if (*(this + 2) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            if (v16 < *(a2 + 2) && *v16 == 34)
            {
              *(a2 + 1) = v16 + 1;
              goto LABEL_56;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 2)
        {
          goto LABEL_22;
        }

        goto LABEL_50;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_22;
      }

LABEL_56:
      *(this + 11) |= 8u;
      if (*(this + 3) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v17 = *(a2 + 1);
      if (v17 < *(a2 + 2) && *v17 == 42)
      {
        *(a2 + 1) = v17 + 1;
LABEL_62:
        *(this + 11) |= 0x10u;
        if (*(this + 4) == v4)
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
    }

    if (v7 == 5 && v8 == 2)
    {
      goto LABEL_62;
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

uint64_t CLMicroLocationProto::RecordingRequest::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = *(v5 + 24);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 44) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 44);
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
  v9 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t CLMicroLocationProto::RecordingRequest::ByteSize(CLMicroLocationProto::RecordingRequest *this)
{
  LOBYTE(v2) = *(this + 44);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_50;
  }

  if (*(this + 44))
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
      v2 = *(this + 11);
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
    if ((*(this + 44) & 2) == 0)
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
    v2 = *(this + 11);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_19:
  if ((v2 & 4) != 0)
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
      v2 = *(this + 11);
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

    v3 = (v3 + v12 + v8 + 1);
    if ((v2 & 8) == 0)
    {
LABEL_21:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_41;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_21;
  }

  v13 = *(this + 3);
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
    v2 = *(this + 11);
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

  v3 = (v3 + v18 + v14 + 1);
  if ((v2 & 0x10) != 0)
  {
LABEL_41:
    v19 = *(this + 4);
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

    v3 = (v3 + v24 + v20 + 1);
  }

LABEL_50:
  *(this + 10) = v3;
  return v3;
}

void CLMicroLocationProto::RecordingRequest::CheckTypeAndMergeFrom(CLMicroLocationProto::RecordingRequest *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::RecordingRequest::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::AppLaunch::MergeFrom(CLMicroLocationProto::AppLaunch *this, const CLMicroLocationProto::AppLaunch *a2)
{
  v3 = this;
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v5 = *(a2 + 8);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::AppLaunch::MergeFrom();
      }

      *(v3 + 10) |= 1u;
      *(v3 + 8) = v5;
      v4 = *(a2 + 10);
    }

    v6 = MEMORY[0x277D82C30];
    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 1);
      *(v3 + 10) |= 2u;
      v8 = *(v3 + 1);
      if (v8 == v6)
      {
        operator new();
      }

      this = std::string::operator=(v8, v7);
      v4 = *(a2 + 10);
      if ((v4 & 4) == 0)
      {
LABEL_11:
        if ((v4 & 8) == 0)
        {
          return;
        }

        goto LABEL_21;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

    *(v3 + 10) |= 4u;
    v9 = *(v3 + 2);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 2);
    if (!v10)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v10 = *(CLMicroLocationProto::AppLaunch::default_instance_ + 16);
    }

    CLMicroLocationProto::BundleIdFeatures::MergeFrom(v9, v10);
    if ((*(a2 + 10) & 8) != 0)
    {
LABEL_21:
      v11 = *(a2 + 3);
      *(v3 + 10) |= 8u;
      v12 = *(v3 + 3);
      if (v12 == v6)
      {
        operator new();
      }

      std::string::operator=(v12, v11);
    }
  }
}

void sub_2590F2DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::AppLaunch::~AppLaunch(CLMicroLocationProto::AppLaunch *this)
{
  *this = &unk_286A58548;
  CLMicroLocationProto::AppLaunch::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::AppLaunch::~AppLaunch(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::AppLaunch::SharedDtor(CLMicroLocationProto::AppLaunch *this)
{
  v1 = this;
  v2 = *(this + 1);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 3);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x259CA1F90](v5, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  if (CLMicroLocationProto::AppLaunch::default_instance_ != v1)
  {
    v7 = *(v1 + 2);
    if (v7)
    {
      v8 = *(*v7 + 8);

      v8();
    }
  }
}

uint64_t CLMicroLocationProto::AppLaunch::Clear(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    *(this + 32) = 2;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
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
      v6 = *(this + 24);
      if (v6 != v2)
      {
        if (*(v6 + 23) < 0)
        {
          **v6 = 0;
          *(v6 + 8) = 0;
        }

        else
        {
          *v6 = 0;
          *(v6 + 23) = 0;
        }
      }
    }
  }

  *(this + 40) = 0;
  return this;
}

uint64_t CLMicroLocationProto::AppLaunch::MergePartialFromCodedStream(CLMicroLocationProto::AppLaunch *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    do
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
          if (TagFallback >> 3 <= 2)
          {
            break;
          }

          if (v7 == 3)
          {
            if (v8 == 2)
            {
              goto LABEL_42;
            }
          }

          else if (v7 == 4 && v8 == 2)
          {
            goto LABEL_56;
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

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v22 = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
          if (!result)
          {
            return result;
          }

          v10 = v22;
        }

        else
        {
          *(a2 + 1) = v9 + 1;
        }

        if (v10 - 31 < 0x19 || v10 <= 0xE && ((1 << v10) & 0x76B6) != 0)
        {
          if (v10 - 31 >= 0x19 && (v10 > 0xE || ((1 << v10) & 0x76B6) == 0))
          {
            CLMicroLocationProto::AppLaunch::MergeFrom();
          }

          *(this + 10) |= 1u;
          *(this + 8) = v10;
        }

        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 18)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_36;
        }
      }

      if (v7 != 2 || v8 != 2)
      {
        goto LABEL_21;
      }

LABEL_36:
      *(this + 10) |= 2u;
      if (*(this + 1) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v13 = *(a2 + 1);
    }

    while (v13 >= *(a2 + 2) || *v13 != 26);
    *(a2 + 1) = v13 + 1;
LABEL_42:
    *(this + 10) |= 4u;
    v14 = *(this + 2);
    if (!v14)
    {
      operator new();
    }

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
    if (!CLMicroLocationProto::BundleIdFeatures::MergePartialFromCodedStream(v14, a2) || *(a2 + 36) != 1)
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
    if (v21 < *(a2 + 2) && *v21 == 34)
    {
      *(a2 + 1) = v21 + 1;
LABEL_56:
      *(this + 10) |= 8u;
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
  }
}

unsigned int *CLMicroLocationProto::AppLaunch::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[10];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, this[8], a2, a4);
    v6 = v5[10];
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

  v7 = *(v5 + 1);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = v5[10];
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
  v8 = *(v5 + 2);
  if (!v8)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v8 = *(CLMicroLocationProto::AppLaunch::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  if ((v5[10] & 8) != 0)
  {
LABEL_11:
    v9 = *(v5 + 3);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t CLMicroLocationProto::AppLaunch::ByteSize(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_40;
  }

  if (*(this + 40))
  {
    this = *(this + 32);
    if ((this & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v3 = (this + 1);
      v2 = *(v1 + 40);
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_22;
    }
  }

  v4 = *(v1 + 8);
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
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v2 = *(v1 + 40);
    v6 = *(v4 + 23);
  }

  else
  {
    this = 1;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  v3 = (v3 + this + v5 + 1);
LABEL_22:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_31;
  }

  v9 = *(v1 + 16);
  if (!v9)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v9 = *(CLMicroLocationProto::AppLaunch::default_instance_ + 16);
  }

  if (*(v9 + 16))
  {
    v10 = 2 * (*(v9 + 16) & 1) + (*(v9 + 16) & 2);
  }

  else
  {
    v10 = 0;
  }

  *(v9 + 12) = v10;
  v3 = (v3 + v10 + 2);
  if ((*(v1 + 40) & 8) != 0)
  {
LABEL_31:
    v11 = *(v1 + 24);
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

LABEL_40:
  *(v1 + 36) = v3;
  return v3;
}

void CLMicroLocationProto::AppLaunch::CheckTypeAndMergeFrom(CLMicroLocationProto::AppLaunch *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::AppLaunch::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::BacklightOn::MergeFrom(CLMicroLocationProto::BacklightOn *this, const CLMicroLocationProto::BacklightOn *a2)
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
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::BacklightOn::MergeFrom();
      }

      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      v7 = *(this + 1);
      if (v7 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v7, v6);
    }
  }
}

void sub_2590F37FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::BacklightOn::~BacklightOn(CLMicroLocationProto::BacklightOn *this)
{
  *this = &unk_286A585C0;
  CLMicroLocationProto::ClusterRecordings::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::BacklightOn::~BacklightOn(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::BacklightOn::Clear(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    *(this + 16) = 4;
    if ((v1 & 2) != 0)
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
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CLMicroLocationProto::BacklightOn::MergePartialFromCodedStream(CLMicroLocationProto::BacklightOn *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
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

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 != 2)
        {
          goto LABEL_14;
        }

LABEL_29:
        *(this + 6) |= 2u;
        if (*(this + 1) == v4)
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        break;
      }

      v12 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v12);
        if (!result)
        {
          return result;
        }

        v9 = v12;
      }

      else
      {
        *(a2 + 1) = v8 + 1;
      }

      if (v9 - 31 < 0x19 || v9 <= 0xE && ((1 << v9) & 0x76B6) != 0)
      {
        if (v9 - 31 >= 0x19 && (v9 > 0xE || ((1 << v9) & 0x76B6) == 0))
        {
          CLMicroLocationProto::BacklightOn::MergeFrom();
        }

        *(this + 6) |= 1u;
        *(this + 4) = v9;
      }

      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 18)
      {
        *(a2 + 1) = v10 + 1;
        goto LABEL_29;
      }
    }

LABEL_14:
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

uint64_t CLMicroLocationProto::BacklightOn::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 24);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v5 = *(v4 + 24);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t CLMicroLocationProto::BacklightOn::ByteSize(CLMicroLocationProto::BacklightOn *this)
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
          goto LABEL_22;
        }
      }

      else if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    v5 = *(this + 1);
    v6 = *(v5 + 23);
    v7 = v6;
    v8 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v9 = *(v5 + 23);
    }

    else
    {
      v9 = v8;
    }

    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
      v6 = *(v5 + 23);
      v8 = *(v5 + 8);
      v7 = *(v5 + 23);
    }

    else
    {
      v10 = 1;
    }

    if (v7 < 0)
    {
      v6 = v8;
    }

    v3 = (v3 + v10 + v6 + 1);
  }

  else
  {
    v3 = 0;
  }

LABEL_22:
  *(this + 5) = v3;
  return v3;
}

void CLMicroLocationProto::BacklightOn::CheckTypeAndMergeFrom(CLMicroLocationProto::BacklightOn *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::BacklightOn::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::BatteryChargerConnected::MergeFrom(CLMicroLocationProto::BatteryChargerConnected *this, const CLMicroLocationProto::BatteryChargerConnected *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 2);
    if (v4 - 31 >= 0x19 && (v4 > 0xE || ((1 << v4) & 0x76B6) == 0))
    {
      CLMicroLocationProto::BatteryChargerConnected::MergeFrom();
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_2590F3DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::BatteryChargerConnected::~BatteryChargerConnected(CLMicroLocationProto::BatteryChargerConnected *this)
{
  *this = &unk_286A58638;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::BatteryChargerConnected::~BatteryChargerConnected(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::BatteryChargerConnected::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 5;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLMicroLocationProto::BatteryChargerConnected::MergePartialFromCodedStream(CLMicroLocationProto::BatteryChargerConnected *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          CLMicroLocationProto::BatteryChargerConnected::MergeFrom();
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

uint64_t CLMicroLocationProto::BatteryChargerConnected::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::BatteryChargerConnected::ByteSize(CLMicroLocationProto::BatteryChargerConnected *this)
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

void CLMicroLocationProto::BatteryChargerConnected::CheckTypeAndMergeFrom(CLMicroLocationProto::BatteryChargerConnected *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::BatteryChargerConnected::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::TruthLabelDonation::MergeFrom(CLMicroLocationProto::TruthLabelDonation *this, const CLMicroLocationProto::TruthLabelDonation *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v5 = *(a2 + 8);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::TruthLabelDonation::MergeFrom();
      }

      *(this + 10) |= 1u;
      *(this + 8) = v5;
      v4 = *(a2 + 10);
    }

    v6 = MEMORY[0x277D82C30];
    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 1);
      *(this + 10) |= 2u;
      v8 = *(this + 1);
      if (v8 == v6)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 10);
      if ((v4 & 4) == 0)
      {
LABEL_11:
        if ((v4 & 8) == 0)
        {
          return;
        }

        goto LABEL_19;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

    v9 = *(a2 + 2);
    *(this + 10) |= 4u;
    v10 = *(this + 2);
    if (v10 == v6)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    if ((*(a2 + 10) & 8) != 0)
    {
LABEL_19:
      v11 = *(a2 + 3);
      *(this + 10) |= 8u;
      v12 = *(this + 3);
      if (v12 == v6)
      {
        operator new();
      }

      std::string::operator=(v12, v11);
    }
  }
}

void sub_2590F434C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::TruthLabelDonation::~TruthLabelDonation(CLMicroLocationProto::TruthLabelDonation *this)
{
  *this = &unk_286A586B0;
  CLMicroLocationProto::TruthLabelDonation::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::TruthLabelDonation::~TruthLabelDonation(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::TruthLabelDonation::SharedDtor(CLMicroLocationProto::TruthLabelDonation *this)
{
  v1 = this;
  v2 = *(this + 1);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 2);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x259CA1F90](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 3);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x259CA1F90](v7, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
}

uint64_t CLMicroLocationProto::TruthLabelDonation::Clear(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    *(this + 32) = 14;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
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

    if ((*(this + 40) & 4) != 0)
    {
      v4 = *(this + 16);
      if (v4 != v2)
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

    if ((*(this + 40) & 8) != 0)
    {
      v5 = *(this + 24);
      if (v5 != v2)
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
  }

  *(this + 40) = 0;
  return this;
}

uint64_t CLMicroLocationProto::TruthLabelDonation::MergePartialFromCodedStream(CLMicroLocationProto::TruthLabelDonation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 != 3)
        {
          if (v7 == 4 && v8 == 2)
          {
            goto LABEL_48;
          }

          goto LABEL_21;
        }

        if (v8 != 2)
        {
          goto LABEL_21;
        }

LABEL_42:
        *(this + 10) |= 4u;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        if (v13 < *(a2 + 2) && *v13 == 34)
        {
          *(a2 + 1) = v13 + 1;
LABEL_48:
          *(this + 10) |= 8u;
          if (*(this + 3) == v4)
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
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v15 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v10 = v15;
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v10 - 31 < 0x19 || v10 <= 0xE && ((1 << v10) & 0x76B6) != 0)
      {
        if (v10 - 31 >= 0x19 && (v10 > 0xE || ((1 << v10) & 0x76B6) == 0))
        {
          CLMicroLocationProto::TruthLabelDonation::MergeFrom();
        }

        *(this + 10) |= 1u;
        *(this + 8) = v10;
      }

      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 18)
      {
        *(a2 + 1) = v11 + 1;
LABEL_36:
        *(this + 10) |= 2u;
        if (*(this + 1) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 26)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_42;
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_36;
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

uint64_t CLMicroLocationProto::TruthLabelDonation::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 40);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 32), a2, a4);
    v5 = *(v4 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = *(v4 + 16);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      if ((*(v4 + 40) & 8) == 0)
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

  v6 = *(v4 + 8);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v5 = *(v4 + 40);
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
  v8 = *(v4 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t CLMicroLocationProto::TruthLabelDonation::ByteSize(CLMicroLocationProto::TruthLabelDonation *this)
{
  LOBYTE(v2) = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_43;
  }

  if (*(this + 40))
  {
    v4 = *(this + 8);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 10);
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_22;
    }
  }

  v5 = *(this + 1);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v2 = *(this + 10);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 1;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v3 = (v3 + v10 + v6 + 1);
LABEL_22:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_34;
  }

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
    v2 = *(this + 10);
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
  if ((v2 & 8) != 0)
  {
LABEL_34:
    v17 = *(this + 3);
    v18 = *(v17 + 23);
    v19 = v18;
    v20 = *(v17 + 8);
    if ((v18 & 0x80u) == 0)
    {
      v21 = *(v17 + 23);
    }

    else
    {
      v21 = v20;
    }

    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
      v18 = *(v17 + 23);
      v20 = *(v17 + 8);
      v19 = *(v17 + 23);
    }

    else
    {
      v22 = 1;
    }

    if (v19 < 0)
    {
      v18 = v20;
    }

    v3 = (v3 + v22 + v18 + 1);
  }

LABEL_43:
  *(this + 9) = v3;
  return v3;
}

void CLMicroLocationProto::TruthLabelDonation::CheckTypeAndMergeFrom(CLMicroLocationProto::TruthLabelDonation *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::TruthLabelDonation::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ForcedRecording::MergeFrom(CLMicroLocationProto::ForcedRecording *this, const CLMicroLocationProto::ForcedRecording *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 2);
    if (v4 - 31 >= 0x19 && (v4 > 0xE || ((1 << v4) & 0x76B6) == 0))
    {
      CLMicroLocationProto::ForcedRecording::MergeFrom();
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_2590F4C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ForcedRecording::~ForcedRecording(CLMicroLocationProto::ForcedRecording *this)
{
  *this = &unk_286A58728;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ForcedRecording::~ForcedRecording(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ForcedRecording::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 7;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ForcedRecording::MergePartialFromCodedStream(CLMicroLocationProto::ForcedRecording *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          CLMicroLocationProto::ForcedRecording::MergeFrom();
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

uint64_t CLMicroLocationProto::ForcedRecording::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::ForcedRecording::ByteSize(CLMicroLocationProto::ForcedRecording *this)
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

void CLMicroLocationProto::ForcedRecording::CheckTypeAndMergeFrom(CLMicroLocationProto::ForcedRecording *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ForcedRecording::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::HomeKitAccessory::MergeFrom(CLMicroLocationProto::HomeKitAccessory *this, const CLMicroLocationProto::HomeKitAccessory *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v33);
  }

  v4 = *(a2 + 29);
  if (!v4)
  {
    goto LABEL_38;
  }

  if (v4)
  {
    v5 = *(a2 + 16);
    if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
    {
      CLMicroLocationProto::HomeKitAccessory::MergeFrom();
    }

    *(this + 29) |= 1u;
    *(this + 16) = v5;
    v4 = *(a2 + 29);
  }

  v6 = MEMORY[0x277D82C30];
  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 1);
    *(this + 29) |= 2u;
    v8 = *(this + 1);
    if (v8 == v6)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 29);
    if ((v4 & 4) == 0)
    {
LABEL_11:
      if ((v4 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_11;
  }

  v9 = *(a2 + 2);
  *(this + 29) |= 4u;
  v10 = *(this + 2);
  if (v10 == v6)
  {
    operator new();
  }

  std::string::operator=(v10, v9);
  v4 = *(a2 + 29);
  if ((v4 & 8) == 0)
  {
LABEL_12:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_23:
  v11 = *(a2 + 3);
  *(this + 29) |= 8u;
  v12 = *(this + 3);
  if (v12 == v6)
  {
    operator new();
  }

  std::string::operator=(v12, v11);
  v4 = *(a2 + 29);
  if ((v4 & 0x10) == 0)
  {
LABEL_13:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_29:
    v15 = *(a2 + 5);
    *(this + 29) |= 0x20u;
    v16 = *(this + 5);
    if (v16 == v6)
    {
      operator new();
    }

    std::string::operator=(v16, v15);
    v4 = *(a2 + 29);
    if ((v4 & 0x40) == 0)
    {
LABEL_15:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    goto LABEL_32;
  }

LABEL_26:
  v13 = *(a2 + 4);
  *(this + 29) |= 0x10u;
  v14 = *(this + 4);
  if (v14 == v6)
  {
    operator new();
  }

  std::string::operator=(v14, v13);
  v4 = *(a2 + 29);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_14:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_32:
  v17 = *(a2 + 6);
  *(this + 29) |= 0x40u;
  v18 = *(this + 6);
  if (v18 == v6)
  {
    operator new();
  }

  std::string::operator=(v18, v17);
  v4 = *(a2 + 29);
  if ((v4 & 0x80) != 0)
  {
LABEL_35:
    v19 = *(a2 + 7);
    *(this + 29) |= 0x80u;
    v20 = *(this + 7);
    if (v20 == v6)
    {
      operator new();
    }

    std::string::operator=(v20, v19);
    v4 = *(a2 + 29);
  }

LABEL_38:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v21 = *(a2 + 9);
    *(this + 29) |= 0x100u;
    v22 = *(this + 9);
    if (v22 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v22, v21);
    v4 = *(a2 + 29);
    if ((v4 & 0x200) == 0)
    {
LABEL_41:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_53;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_41;
  }

  v23 = *(a2 + 10);
  *(this + 29) |= 0x200u;
  v24 = *(this + 10);
  if (v24 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v24, v23);
  v4 = *(a2 + 29);
  if ((v4 & 0x400) == 0)
  {
LABEL_42:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_54;
  }

LABEL_53:
  v25 = *(a2 + 68);
  *(this + 29) |= 0x400u;
  *(this + 68) = v25;
  v4 = *(a2 + 29);
  if ((v4 & 0x800) == 0)
  {
LABEL_43:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_55;
  }

LABEL_54:
  v26 = *(a2 + 69);
  *(this + 29) |= 0x800u;
  *(this + 69) = v26;
  v4 = *(a2 + 29);
  if ((v4 & 0x1000) == 0)
  {
LABEL_44:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_58;
  }

LABEL_55:
  v27 = *(a2 + 11);
  *(this + 29) |= 0x1000u;
  v28 = *(this + 11);
  if (v28 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v28, v27);
  v4 = *(a2 + 29);
  if ((v4 & 0x2000) == 0)
  {
LABEL_45:
    if ((v4 & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_61;
  }

LABEL_58:
  v29 = *(a2 + 12);
  *(this + 29) |= 0x2000u;
  v30 = *(this + 12);
  if (v30 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v30, v29);
  if ((*(a2 + 29) & 0x4000) != 0)
  {
LABEL_61:
    v31 = *(a2 + 13);
    *(this + 29) |= 0x4000u;
    v32 = *(this + 13);
    if (v32 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v32, v31);
  }
}

void sub_2590F54B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::HomeKitAccessory::~HomeKitAccessory(CLMicroLocationProto::HomeKitAccessory *this)
{
  *this = &unk_286A587A0;
  CLMicroLocationProto::HomeKitAccessory::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::HomeKitAccessory::~HomeKitAccessory(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::HomeKitAccessory::SharedDtor(CLMicroLocationProto::HomeKitAccessory *this)
{
  v1 = this;
  v2 = *(this + 1);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 2);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x259CA1F90](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 3);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x259CA1F90](v7, 0x1012C40EC159624);
  }

  v9 = *(v1 + 4);
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x259CA1F90](v9, 0x1012C40EC159624);
  }

  v11 = *(v1 + 5);
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    this = MEMORY[0x259CA1F90](v11, 0x1012C40EC159624);
  }

  v12 = *(v1 + 6);
  if (v12 != v3 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    this = MEMORY[0x259CA1F90](v12, 0x1012C40EC159624);
  }

  v13 = *(v1 + 7);
  if (v13 != v3 && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    this = MEMORY[0x259CA1F90](v13, 0x1012C40EC159624);
  }

  v14 = *(v1 + 9);
  if (v14 != v3 && v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    this = MEMORY[0x259CA1F90](v14, 0x1012C40EC159624);
  }

  v15 = *(v1 + 10);
  if (v15 != v3 && v15)
  {
    if (*(v15 + 23) < 0)
    {
      operator delete(*v15);
    }

    this = MEMORY[0x259CA1F90](v15, 0x1012C40EC159624);
  }

  v16 = *(v1 + 11);
  if (v16 != v3 && v16)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    this = MEMORY[0x259CA1F90](v16, 0x1012C40EC159624);
  }

  v17 = *(v1 + 12);
  if (v17 != v3 && v17)
  {
    if (*(v17 + 23) < 0)
    {
      operator delete(*v17);
    }

    this = MEMORY[0x259CA1F90](v17, 0x1012C40EC159624);
  }

  v18 = *(v1 + 13);
  if (v18 != v3 && v18)
  {
    if (*(v18 + 23) < 0)
    {
      operator delete(*v18);
    }

    this = MEMORY[0x259CA1F90](v18, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
}

uint64_t CLMicroLocationProto::HomeKitAccessory::Clear(uint64_t this)
{
  v1 = *(this + 116);
  if (v1)
  {
    *(this + 64) = 9;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 2) != 0)
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

    if ((*(this + 116) & 4) != 0)
    {
      v4 = *(this + 16);
      if (v4 != v2)
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

    if ((*(this + 116) & 8) != 0)
    {
      v5 = *(this + 24);
      if (v5 != v2)
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

    if ((*(this + 116) & 0x10) != 0)
    {
      v6 = *(this + 32);
      if (v6 != v2)
      {
        if (*(v6 + 23) < 0)
        {
          **v6 = 0;
          *(v6 + 8) = 0;
        }

        else
        {
          *v6 = 0;
          *(v6 + 23) = 0;
        }
      }
    }

    if ((*(this + 116) & 0x20) != 0)
    {
      v7 = *(this + 40);
      if (v7 != v2)
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

    if ((*(this + 116) & 0x40) != 0)
    {
      v8 = *(this + 48);
      if (v8 != v2)
      {
        if (*(v8 + 23) < 0)
        {
          **v8 = 0;
          *(v8 + 8) = 0;
        }

        else
        {
          *v8 = 0;
          *(v8 + 23) = 0;
        }
      }
    }

    if ((*(this + 116) & 0x80) != 0)
    {
      v9 = *(this + 56);
      if (v9 != v2)
      {
        if (*(v9 + 23) < 0)
        {
          **v9 = 0;
          *(v9 + 8) = 0;
        }

        else
        {
          *v9 = 0;
          *(v9 + 23) = 0;
        }
      }
    }
  }

  v10 = *(this + 116);
  if ((v10 & 0xFF00) != 0)
  {
    if ((v10 & 0x100) != 0)
    {
      v11 = *(this + 72);
      if (v11 != MEMORY[0x277D82C30])
      {
        if (*(v11 + 23) < 0)
        {
          **v11 = 0;
          *(v11 + 8) = 0;
        }

        else
        {
          *v11 = 0;
          *(v11 + 23) = 0;
        }
      }
    }

    if ((*(this + 117) & 2) != 0)
    {
      v12 = *(this + 80);
      if (v12 != MEMORY[0x277D82C30])
      {
        if (*(v12 + 23) < 0)
        {
          **v12 = 0;
          *(v12 + 8) = 0;
        }

        else
        {
          *v12 = 0;
          *(v12 + 23) = 0;
        }
      }
    }

    *(this + 68) = 0;
    if ((*(this + 117) & 0x10) != 0)
    {
      v13 = *(this + 88);
      if (v13 != MEMORY[0x277D82C30])
      {
        if (*(v13 + 23) < 0)
        {
          **v13 = 0;
          *(v13 + 8) = 0;
        }

        else
        {
          *v13 = 0;
          *(v13 + 23) = 0;
        }
      }
    }

    if ((*(this + 117) & 0x20) != 0)
    {
      v14 = *(this + 96);
      if (v14 != MEMORY[0x277D82C30])
      {
        if (*(v14 + 23) < 0)
        {
          **v14 = 0;
          *(v14 + 8) = 0;
        }

        else
        {
          *v14 = 0;
          *(v14 + 23) = 0;
        }
      }
    }

    if ((*(this + 117) & 0x40) != 0)
    {
      v15 = *(this + 104);
      if (v15 != MEMORY[0x277D82C30])
      {
        if (*(v15 + 23) < 0)
        {
          **v15 = 0;
          *(v15 + 8) = 0;
        }

        else
        {
          *v15 = 0;
          *(v15 + 23) = 0;
        }
      }
    }
  }

  *(this + 116) = 0;
  return this;
}

uint64_t CLMicroLocationProto::HomeKitAccessory::MergePartialFromCodedStream(CLMicroLocationProto::HomeKitAccessory *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v32 = 0;
        v8 = *(a2 + 1);
        if (v8 < *(a2 + 2))
        {
          v9 = *v8;
          if ((v9 & 0x80000000) == 0)
          {
            *(a2 + 1) = v8 + 1;
LABEL_44:
            if (v9 - 31 < 0x19 || (v9 <= 0xE ? (v14 = ((1 << v9) & 0x76B6) == 0) : (v14 = 1), !v14))
            {
              if (v9 - 31 >= 0x19 && (v9 > 0xE || ((1 << v9) & 0x76B6) == 0))
              {
                CLMicroLocationProto::HomeKitAccessory::MergeFrom();
              }

              *(this + 29) |= 1u;
              *(this + 16) = v9;
            }

            v15 = *(a2 + 1);
            if (v15 < *(a2 + 2) && *v15 == 18)
            {
              *(a2 + 1) = v15 + 1;
              goto LABEL_56;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32);
        if (result)
        {
          v9 = v32;
          goto LABEL_44;
        }

        break;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_39;
        }

LABEL_56:
        *(this + 29) |= 2u;
        if (*(this + 1) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v16 = *(a2 + 1);
        if (v16 >= *(a2 + 2) || *v16 != 26)
        {
          continue;
        }

        *(a2 + 1) = v16 + 1;
LABEL_62:
        *(this + 29) |= 4u;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 != 34)
        {
          continue;
        }

        *(a2 + 1) = v17 + 1;
LABEL_68:
        *(this + 29) |= 8u;
        if (*(this + 3) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 != 42)
        {
          continue;
        }

        *(a2 + 1) = v18 + 1;
LABEL_74:
        *(this + 29) |= 0x10u;
        if (*(this + 4) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v19 = *(a2 + 1);
        if (v19 >= *(a2 + 2) || *v19 != 50)
        {
          continue;
        }

        *(a2 + 1) = v19 + 1;
LABEL_80:
        *(this + 29) |= 0x20u;
        if (*(this + 5) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 != 58)
        {
          continue;
        }

        *(a2 + 1) = v20 + 1;
LABEL_86:
        *(this + 29) |= 0x40u;
        if (*(this + 6) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v21 = *(a2 + 1);
        if (v21 >= *(a2 + 2) || *v21 != 66)
        {
          continue;
        }

        *(a2 + 1) = v21 + 1;
LABEL_92:
        *(this + 29) |= 0x80u;
        if (*(this + 7) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v22 = *(a2 + 1);
        if (v22 >= *(a2 + 2) || *v22 != 74)
        {
          continue;
        }

        *(a2 + 1) = v22 + 1;
LABEL_98:
        *(this + 29) |= 0x100u;
        if (*(this + 9) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2) || *v23 != 82)
        {
          continue;
        }

        *(a2 + 1) = v23 + 1;
LABEL_104:
        *(this + 29) |= 0x200u;
        if (*(this + 10) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v24 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v24 >= v10 || *v24 != 88)
        {
          continue;
        }

        v13 = v24 + 1;
        *(a2 + 1) = v13;
LABEL_110:
        v34 = 0;
        if (v13 >= v10 || (v25 = *v13, (v25 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34);
          if (!result)
          {
            return result;
          }

          v25 = v34;
          v26 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v26 = v13 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 68) = v25 != 0;
        *(this + 29) |= 0x400u;
        if (v26 >= v10 || *v26 != 96)
        {
          continue;
        }

        v11 = v26 + 1;
        *(a2 + 1) = v11;
LABEL_118:
        v33 = 0;
        if (v11 >= v10 || (v27 = *v11, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33);
          if (!result)
          {
            return result;
          }

          v27 = v33;
          v28 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v28 = v11 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 69) = v27 != 0;
        v12 = *(this + 29) | 0x800;
        *(this + 29) = v12;
        if (v28 >= v10 || *v28 != 106)
        {
          continue;
        }

        *(a2 + 1) = v28 + 1;
LABEL_126:
        *(this + 29) = v12 | 0x1000;
        if (*(this + 11) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v29 = *(a2 + 1);
        if (v29 >= *(a2 + 2) || *v29 != 114)
        {
          continue;
        }

        *(a2 + 1) = v29 + 1;
LABEL_132:
        *(this + 29) |= 0x2000u;
        if (*(this + 12) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v30 = *(a2 + 1);
        if (v30 >= *(a2 + 2) || *v30 != 122)
        {
          continue;
        }

        *(a2 + 1) = v30 + 1;
LABEL_138:
        *(this + 29) |= 0x4000u;
        if (*(this + 13) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
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
        if (v7 == 2)
        {
          goto LABEL_62;
        }

        goto LABEL_39;
      case 4u:
        if (v7 == 2)
        {
          goto LABEL_68;
        }

        goto LABEL_39;
      case 5u:
        if (v7 == 2)
        {
          goto LABEL_74;
        }

        goto LABEL_39;
      case 6u:
        if (v7 == 2)
        {
          goto LABEL_80;
        }

        goto LABEL_39;
      case 7u:
        if (v7 == 2)
        {
          goto LABEL_86;
        }

        goto LABEL_39;
      case 8u:
        if (v7 == 2)
        {
          goto LABEL_92;
        }

        goto LABEL_39;
      case 9u:
        if (v7 != 2)
        {
          goto LABEL_39;
        }

        goto LABEL_98;
      case 0xAu:
        if (v7 == 2)
        {
          goto LABEL_104;
        }

        goto LABEL_39;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v13 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_110;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_118;
      case 0xDu:
        if (v7 != 2)
        {
          goto LABEL_39;
        }

        v12 = *(this + 29);
        goto LABEL_126;
      case 0xEu:
        if (v7 == 2)
        {
          goto LABEL_132;
        }

        goto LABEL_39;
      case 0xFu:
        if (v7 == 2)
        {
          goto LABEL_138;
        }

        goto LABEL_39;
      default:
LABEL_39:
        if (v7 == 4)
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

uint64_t CLMicroLocationProto::HomeKitAccessory::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 116);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 64), a2, a4);
    v6 = *(v5 + 116);
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

  v7 = *(v5 + 8);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
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
  v8 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
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
  v9 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
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
  v10 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
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
  v11 = *(v5 + 40);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
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
  v12 = *(v5 + 48);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
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
  v13 = *(v5 + 56);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v14 = *(v5 + 72);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v15 = *(v5 + 80);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, *(v5 + 68), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xC, *(v5 + 69), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v17 = *(v5 + 96);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 116) & 0x4000) == 0)
    {
      return this;
    }

    goto LABEL_31;
  }

LABEL_29:
  v16 = *(v5 + 88);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
  if ((v6 & 0x2000) != 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  if ((v6 & 0x4000) == 0)
  {
    return this;
  }

LABEL_31:
  v18 = *(v5 + 104);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t CLMicroLocationProto::HomeKitAccessory::ByteSize(CLMicroLocationProto::HomeKitAccessory *this)
{
  v2 = *(this + 29);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_83;
  }

  if (v2)
  {
    v4 = *(this + 16);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 29);
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_22;
    }
  }

  v5 = *(this + 1);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v2 = *(this + 29);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 1;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v3 = (v3 + v10 + v6 + 1);
LABEL_22:
  if ((v2 & 4) != 0)
  {
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
      v2 = *(this + 29);
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
    if ((v2 & 8) == 0)
    {
LABEL_24:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_47;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_24;
  }

  v17 = *(this + 3);
  v18 = *(v17 + 23);
  v19 = v18;
  v20 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v21 = *(v17 + 23);
  }

  else
  {
    v21 = v20;
  }

  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
    v18 = *(v17 + 23);
    v20 = *(v17 + 8);
    v2 = *(this + 29);
    v19 = *(v17 + 23);
  }

  else
  {
    v22 = 1;
  }

  if (v19 < 0)
  {
    v18 = v20;
  }

  v3 = (v3 + v22 + v18 + 1);
  if ((v2 & 0x10) == 0)
  {
LABEL_25:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_47:
  v23 = *(this + 4);
  v24 = *(v23 + 23);
  v25 = v24;
  v26 = *(v23 + 8);
  if ((v24 & 0x80u) == 0)
  {
    v27 = *(v23 + 23);
  }

  else
  {
    v27 = v26;
  }

  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
    v24 = *(v23 + 23);
    v26 = *(v23 + 8);
    v2 = *(this + 29);
    v25 = *(v23 + 23);
  }

  else
  {
    v28 = 1;
  }

  if (v25 < 0)
  {
    v24 = v26;
  }

  v3 = (v3 + v28 + v24 + 1);
  if ((v2 & 0x20) == 0)
  {
LABEL_26:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_56:
  v29 = *(this + 5);
  v30 = *(v29 + 23);
  v31 = v30;
  v32 = *(v29 + 8);
  if ((v30 & 0x80u) == 0)
  {
    v33 = *(v29 + 23);
  }

  else
  {
    v33 = v32;
  }

  if (v33 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
    v30 = *(v29 + 23);
    v32 = *(v29 + 8);
    v2 = *(this + 29);
    v31 = *(v29 + 23);
  }

  else
  {
    v34 = 1;
  }

  if (v31 < 0)
  {
    v30 = v32;
  }

  v3 = (v3 + v34 + v30 + 1);
  if ((v2 & 0x40) == 0)
  {
LABEL_27:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_74;
  }

LABEL_65:
  v35 = *(this + 6);
  v36 = *(v35 + 23);
  v37 = v36;
  v38 = *(v35 + 8);
  if ((v36 & 0x80u) == 0)
  {
    v39 = *(v35 + 23);
  }

  else
  {
    v39 = v38;
  }

  if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39);
    v36 = *(v35 + 23);
    v38 = *(v35 + 8);
    v2 = *(this + 29);
    v37 = *(v35 + 23);
  }

  else
  {
    v40 = 1;
  }

  if (v37 < 0)
  {
    v36 = v38;
  }

  v3 = (v3 + v40 + v36 + 1);
  if ((v2 & 0x80) != 0)
  {
LABEL_74:
    v41 = *(this + 7);
    v42 = *(v41 + 23);
    v43 = v42;
    v44 = *(v41 + 8);
    if ((v42 & 0x80u) == 0)
    {
      v45 = *(v41 + 23);
    }

    else
    {
      v45 = v44;
    }

    if (v45 >= 0x80)
    {
      v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45);
      v42 = *(v41 + 23);
      v44 = *(v41 + 8);
      v2 = *(this + 29);
      v43 = *(v41 + 23);
    }

    else
    {
      v46 = 1;
    }

    if (v43 < 0)
    {
      v42 = v44;
    }

    v3 = (v3 + v46 + v42 + 1);
  }

LABEL_83:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_135;
  }

  if ((v2 & 0x100) != 0)
  {
    v47 = *(this + 9);
    v48 = *(v47 + 23);
    v49 = v48;
    v50 = *(v47 + 8);
    if ((v48 & 0x80u) == 0)
    {
      v51 = *(v47 + 23);
    }

    else
    {
      v51 = v50;
    }

    if (v51 >= 0x80)
    {
      v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51);
      v48 = *(v47 + 23);
      v50 = *(v47 + 8);
      v2 = *(this + 29);
      v49 = *(v47 + 23);
    }

    else
    {
      v52 = 1;
    }

    if (v49 < 0)
    {
      v48 = v50;
    }

    LODWORD(v3) = v3 + v52 + v48 + 1;
  }

  if ((v2 & 0x200) != 0)
  {
    v53 = *(this + 10);
    v54 = *(v53 + 23);
    v55 = v54;
    v56 = *(v53 + 8);
    if ((v54 & 0x80u) == 0)
    {
      v57 = *(v53 + 23);
    }

    else
    {
      v57 = v56;
    }

    if (v57 >= 0x80)
    {
      v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57);
      v54 = *(v53 + 23);
      v56 = *(v53 + 8);
      v2 = *(this + 29);
      v55 = *(v53 + 23);
    }

    else
    {
      v58 = 1;
    }

    if (v55 < 0)
    {
      v54 = v56;
    }

    LODWORD(v3) = v3 + v58 + v54 + 1;
  }

  v3 = ((v2 >> 9) & 2) + v3 + ((v2 >> 10) & 2);
  if ((v2 & 0x1000) != 0)
  {
    v59 = *(this + 11);
    v60 = *(v59 + 23);
    v61 = v60;
    v62 = *(v59 + 8);
    if ((v60 & 0x80u) == 0)
    {
      v63 = *(v59 + 23);
    }

    else
    {
      v63 = v62;
    }

    if (v63 >= 0x80)
    {
      v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63);
      v60 = *(v59 + 23);
      v62 = *(v59 + 8);
      v2 = *(this + 29);
      v61 = *(v59 + 23);
    }

    else
    {
      v64 = 1;
    }

    if (v61 < 0)
    {
      v60 = v62;
    }

    v3 = (v3 + v64 + v60 + 1);
    if ((v2 & 0x2000) == 0)
    {
LABEL_106:
      if ((v2 & 0x4000) == 0)
      {
        goto LABEL_135;
      }

      goto LABEL_126;
    }
  }

  else if ((v2 & 0x2000) == 0)
  {
    goto LABEL_106;
  }

  v65 = *(this + 12);
  v66 = *(v65 + 23);
  v67 = v66;
  v68 = *(v65 + 8);
  if ((v66 & 0x80u) == 0)
  {
    v69 = *(v65 + 23);
  }

  else
  {
    v69 = v68;
  }

  if (v69 >= 0x80)
  {
    v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69);
    v66 = *(v65 + 23);
    v68 = *(v65 + 8);
    v2 = *(this + 29);
    v67 = *(v65 + 23);
  }

  else
  {
    v70 = 1;
  }

  if (v67 < 0)
  {
    v66 = v68;
  }

  v3 = (v3 + v70 + v66 + 1);
  if ((v2 & 0x4000) != 0)
  {
LABEL_126:
    v71 = *(this + 13);
    v72 = *(v71 + 23);
    v73 = v72;
    v74 = *(v71 + 8);
    if ((v72 & 0x80u) == 0)
    {
      v75 = *(v71 + 23);
    }

    else
    {
      v75 = v74;
    }

    if (v75 >= 0x80)
    {
      v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v75);
      v72 = *(v71 + 23);
      v74 = *(v71 + 8);
      v73 = *(v71 + 23);
    }

    else
    {
      v76 = 1;
    }

    if (v73 < 0)
    {
      v72 = v74;
    }

    v3 = (v3 + v76 + v72 + 1);
  }

LABEL_135:
  *(this + 28) = v3;
  return v3;
}