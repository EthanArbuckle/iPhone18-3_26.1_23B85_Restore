void CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment *this, const CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment *CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::Swap(CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment *this, CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo *CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::LSLHeadingSupplInfo(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo *this, const CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CD8DC0;
  CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::~LSLHeadingSupplInfo(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo *this)
{
  *this = &unk_1F4CD8DC0;
  CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::~LSLHeadingSupplInfo(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::SharedDtor(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo *this)
{
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (!CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::MergePartialFromCodedStream(v6, a2) || *(a2 + 36) != 1)
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

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::ByteSize(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo *this)
{
  if (*(this + 20))
  {
    v3 = *(this + 1);
    if (!v3)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(0);
      v3 = *(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::default_instance_ + 8);
    }

    v4 = CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::ByteSize(v3);
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

void CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo *this, const CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo *a2)
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

double CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::SharedCtor(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation *this)
{
  *&result = 0x8FFFFFFFFLL;
  *(this + 2) = xmmword_1D0E79BC0;
  return result;
}

CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation *CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::LSLHeadingEstimation(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation *this, const CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation *a2)
{
  *(this + 1) = 0;
  *this = &unk_1F4CD8E38;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 2) = xmmword_1D0E79BC0;
  CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::MergeFrom(this, a2);
  return this;
}

void sub_1D0CB23AC(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation *this, const CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
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
      CoreNavigation::CLP::LogEntry::Vision::LSLHeading::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 4);
    }

    while (v7 < v6);
  }

  LOBYTE(v12) = *(a2 + 44);
  if (v12)
  {
    if (*(a2 + 44))
    {
      v13 = *(a2 + 8);
      if ((v13 + 1) >= 6)
      {
        __assert_rtn("set_status_deprecated", "CoreNavigationCLPVisionEvent.pb.h", 4504, "::CoreNavigation::CLP::LogEntry::Vision::LSLStatus_DEPRECATED_IsValid(value)");
      }

      *(this + 11) |= 1u;
      *(this + 8) = v13;
      v12 = *(a2 + 11);
    }

    if ((v12 & 4) != 0)
    {
      v14 = *(a2 + 9);
      if (v14 >= 9)
      {
        __assert_rtn("set_status", "CoreNavigationCLPVisionEvent.pb.h", 4552, "::CoreNavigation::CLP::LogEntry::Vision::LSLHeadingStatus_IsValid(value)");
      }

      *(this + 11) |= 4u;
      *(this + 9) = v14;
    }
  }
}

void sub_1D0CB2630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::~LSLHeadingEstimation(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation *this)
{
  *this = &unk_1F4CD8E38;
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
  sub_1D0B8CD0C(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::~LSLHeadingEstimation(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::Clear(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation *this)
{
  if (*(this + 44))
  {
    *(this + 4) = 0x8FFFFFFFFLL;
  }

  result = sub_1D0C77384(this + 8);
  *(this + 11) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if ((TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v11 = *(a2 + 2);
          goto LABEL_45;
        }

LABEL_16:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v27 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
        if (!result)
        {
          return result;
        }

        v9 = v27;
      }

      else
      {
        *(a2 + 1) = v8 + 1;
      }

      if (v9 + 1 <= 5)
      {
        *(this + 11) |= 1u;
        *(this + 8) = v9;
      }

      v13 = *(a2 + 1);
      if (v13 < *(a2 + 2) && *v13 == 18)
      {
LABEL_48:
        *(a2 + 1) = v13 + 1;
        goto LABEL_27;
      }
    }

    if (v7 != 2)
    {
      goto LABEL_16;
    }

LABEL_27:
    v14 = *(this + 5);
    v15 = *(this + 4);
    if (v15 >= v14)
    {
      if (v14 == *(this + 6))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
        v14 = *(this + 5);
      }

      *(this + 5) = v14 + 1;
      operator new();
    }

    v16 = *(this + 1);
    *(this + 4) = v15 + 1;
    v17 = *(v16 + 8 * v15);
    v28 = 0;
    v18 = *(a2 + 1);
    if (v18 >= *(a2 + 2) || *v18 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28))
      {
        return 0;
      }
    }

    else
    {
      v28 = *v18;
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
    if (!CoreNavigation::CLP::LogEntry::Vision::LSLHeading::MergePartialFromCodedStream(v17, a2) || *(a2 + 36) != 1)
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

    v13 = *(a2 + 1);
    v11 = *(a2 + 2);
    if (v13 < v11)
    {
      v24 = *v13;
      if (v24 == 18)
      {
        goto LABEL_48;
      }

      if (v24 == 24)
      {
        v10 = v13 + 1;
        *(a2 + 1) = v10;
LABEL_45:
        v26 = 0;
        if (v10 >= v11 || (v25 = *v10, (v25 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26);
          if (!result)
          {
            return result;
          }

          v25 = v26;
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v25 <= 8)
        {
          *(this + 11) |= 4u;
          *(this + 9) = v25;
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

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
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

  if ((*(v5 + 44) & 4) != 0)
  {
    v7 = *(v5 + 36);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v7, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::ByteSize(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation *this)
{
  v2 = *(this + 44);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if (*(this + 44))
  {
    v4 = *(this + 8);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 4) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      if ((*(this + 11) & 4) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 4) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 44) & 4) == 0)
    {
      goto LABEL_19;
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
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_19:
  v7 = *(this + 4);
  v8 = (v7 + v3);
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = CoreNavigation::CLP::LogEntry::Vision::LSLHeading::ByteSize(*(*(this + 1) + 8 * v9));
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

    while (v9 < *(this + 4));
  }

  *(this + 10) = v8;
  return v8;
}

void CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation *this, const CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation *CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::Swap(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation *this, CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation *a2)
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
    v6 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v6;
    v7 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v7;
  }

  return this;
}

void *CoreNavigation::CLP::LogEntry::Vision::VLLocation::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::Vision::VLLocation *CoreNavigation::CLP::LogEntry::Vision::VLLocation::VLLocation(CoreNavigation::CLP::LogEntry::Vision::VLLocation *this, const CoreNavigation::CLP::LogEntry::Vision::VLLocation *a2)
{
  *this = &unk_1F4CD8EB0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::Vision::VLLocation::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::Vision::VLLocation::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::VLLocation *this, const CoreNavigation::CLP::LogEntry::Vision::VLLocation *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
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
        CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocation::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::MergeFrom(v6, v7);
      v5 = *(a2 + 7);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 2);
      *(this + 7) |= 2u;
      *(this + 2) = result;
    }
  }

  return result;
}

void sub_1D0CB3004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::VLLocation::~VLLocation(CoreNavigation::CLP::LogEntry::Vision::VLLocation *this)
{
  *this = &unk_1F4CD8EB0;
  CoreNavigation::CLP::LogEntry::Vision::VLLocation::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::VLLocation::~VLLocation(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Vision::VLLocation::SharedDtor(CoreNavigation::CLP::LogEntry::Vision::VLLocation *this)
{
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Vision::VLLocation::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLLocation::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    if (*(this + 28))
    {
      v1 = *(this + 8);
      if (v1)
      {
        *(v1 + 16) = 0;
        *(v1 + 28) = 0;
      }
    }

    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLLocation::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::VLLocation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 != 2)
      {
        break;
      }

      if (v6 == 1)
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

    v17 = 0;
    v8 = *(a2 + 1);
    if (v8 >= *(a2 + 2) || *v8 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v17))
      {
        return 0;
      }
    }

    else
    {
      v17 = *v8;
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
    if (!CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
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
    if (v14 < *(a2 + 2) && *v14 == 17)
    {
      *(a2 + 1) = v14 + 1;
LABEL_27:
      v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = v16;
      *(this + 7) |= 2u;
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

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLLocation::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocation::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v8, a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLLocation::ByteSize(CoreNavigation::CLP::LogEntry::Vision::VLLocation *this)
{
  LOBYTE(v2) = *(this + 28);
  if (v2)
  {
    if (*(this + 28))
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
        v5 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocation::default_instance_ + 8);
      }

      v6 = (9 * *(v5 + 16));
      *(v5 + 24) = v6;
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
      }

      else
      {
        v7 = 1;
      }

      v3 = v6 + v7 + 1;
      v2 = *(this + 7);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
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

  *(this + 6) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::Vision::VLLocation::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::VLLocation *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Vision::VLLocation::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Vision::VLLocation::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::VLLocation *this, const CoreNavigation::CLP::LogEntry::Vision::VLLocation *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Vision::VLLocation::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Vision::VLLocation::Swap(CoreNavigation::CLP::LogEntry::Vision::VLLocation *this, CoreNavigation::CLP::LogEntry::Vision::VLLocation *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return result;
}

CoreNavigation::CLP::LogEntry::Vision::VLVectorfM *CoreNavigation::CLP::LogEntry::Vision::VLVectorfM::VLVectorfM(CoreNavigation::CLP::LogEntry::Vision::VLVectorfM *this, const CoreNavigation::CLP::LogEntry::Vision::VLVectorfM *a2)
{
  *this = &unk_1F4CD8F28;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::Vision::VLVectorfM::MergeFrom(this, a2);
  return this;
}

void sub_1D0CB36F8(_Unwind_Exception *a1)
{
  v3 = v2;
  if (*v3)
  {
    MEMORY[0x1D387EC80](*v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::VLVectorfM::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::VLVectorfM *this, const CoreNavigation::CLP::LogEntry::Vision::VLVectorfM *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  v4 = *(a2 + 4);
  if (v4)
  {
    sub_1D0CA6E90(this + 1, *(this + 4) + v4);
    memcpy((*(this + 1) + 4 * *(this + 4)), *(a2 + 1), 4 * *(a2 + 4));
    *(this + 4) += *(a2 + 4);
  }
}

void sub_1D0CB37E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::VLVectorfM::~VLVectorfM(CoreNavigation::CLP::LogEntry::Vision::VLVectorfM *this)
{
  *this = &unk_1F4CD8F28;
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::VLVectorfM::~VLVectorfM(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLVectorfM::Clear(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLVectorfM::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::VLVectorfM *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if ((TagFallback & 0xFFFFFFF8) == 8)
      {
        break;
      }

LABEL_9:
      if (v6 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v6 != 2)
    {
      if (v6 != 5)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

    result = sub_1D0CA8DB0(a2, this + 8);
    if (!result)
    {
      return result;
    }

    while (1)
    {
      v8 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v8 >= v9 || *v8 != 13)
      {
        break;
      }

      *(a2 + 1) = v8 + 1;
LABEL_16:
      v20[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v20) & 1) == 0)
      {
        return 0;
      }

      v10 = v20[0];
      v11 = *(this + 4);
      if (v11 == *(this + 5))
      {
        sub_1D0CA6E90(this + 1, v11 + 1);
        v11 = *(this + 4);
      }

      v12 = *(this + 1);
      v13 = v11 + 1;
      *(this + 4) = v11 + 1;
      *(v12 + 4 * v11) = v10;
      v14 = *(a2 + 1);
      v15 = *(a2 + 4) - v14;
      if (v15 >= 1)
      {
        v16 = v15 / 5u;
        v17 = v16 >= *(this + 5) - v13 ? *(this + 5) - v13 : v16;
        if (v17 >= 1)
        {
          v18 = 0;
          while (*v14 == 13)
          {
            v19 = *(v14 + 1);
            if (v13 >= *(this + 5))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
              v13 = *(this + 4);
              v12 = *(this + 1);
            }

            *(this + 4) = v13 + 1;
            *(v12 + 4 * v13) = v19;
            ++v18;
            v14 += 5;
            ++v13;
            if (v17 == v18)
            {
              goto LABEL_35;
            }
          }

          if (!v18)
          {
            continue;
          }

LABEL_35:
          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
        }
      }
    }
  }

  while (v8 != v9 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

void sub_1D0CB3B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLVectorfM::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  if (*(this + 16) >= 1)
  {
    v4 = this;
    v5 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(*(v4 + 8) + 4 * v5++), a3);
    }

    while (v5 < *(v4 + 16));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLVectorfM::ByteSize(CoreNavigation::CLP::LogEntry::Vision::VLVectorfM *this)
{
  v1 = (5 * *(this + 4));
  *(this + 6) = v1;
  return v1;
}

void CoreNavigation::CLP::LogEntry::Vision::VLVectorfM::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::VLVectorfM *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Vision::VLVectorfM::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::Vision::VLVectorfM::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::VLVectorfM *this, const CoreNavigation::CLP::LogEntry::Vision::VLVectorfM *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Vision::VLVectorfM::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::Vision::VLVectorfM::Swap(CoreNavigation::CLP::LogEntry::Vision::VLVectorfM *this, CoreNavigation::CLP::LogEntry::Vision::VLVectorfM *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    result = *(a2 + 2);
    *(a2 + 1) = v2;
    v4 = *(this + 2);
    *(this + 2) = result;
    *(a2 + 2) = v4;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return result;
}

CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN *CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::VLMatrixfMxN(CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN *this, const CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN *a2)
{
  *this = &unk_1F4CD8FA0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::MergeFrom(this, a2);
  return this;
}

void sub_1D0CB3E20(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN *this, const CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
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
      CoreNavigation::CLP::LogEntry::Vision::VLVectorfM::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 4);
    }

    while (v7 < v6);
  }
}

void sub_1D0CB3FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::~VLMatrixfMxN(CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN *this)
{
  *this = &unk_1F4CD8FA0;
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
  sub_1D0B8CD0C(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::~VLMatrixfMxN(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::Clear(CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN *this)
{
  result = sub_1D0C77384(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
LABEL_1:
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

    if (TagFallback == 10)
    {
      while (1)
      {
        v6 = *(this + 5);
        v7 = *(this + 4);
        if (v7 >= v6)
        {
          if (v6 == *(this + 6))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
            v6 = *(this + 5);
          }

          *(this + 5) = v6 + 1;
          operator new();
        }

        v8 = *(this + 1);
        *(this + 4) = v7 + 1;
        v9 = *(v8 + 8 * v7);
        v19 = 0;
        v10 = *(a2 + 1);
        if (v10 >= *(a2 + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19))
          {
            return 0;
          }
        }

        else
        {
          v19 = *v10;
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
        if (!CoreNavigation::CLP::LogEntry::Vision::VLVectorfM::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
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
        v17 = *(a2 + 2);
        if (v16 >= v17 || *v16 != 10)
        {
          if (v16 == v17 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(a2 + 1) = v16 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v5 = this;
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::ByteSize(CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN *this)
{
  v2 = *(this + 4);
  if (v2 < 1)
  {
    v4 = *(this + 4);
  }

  else
  {
    v3 = 0;
    LODWORD(v4) = *(this + 4);
    do
    {
      v5 = *(*(this + 1) + 8 * v3);
      v6 = (5 * *(v5 + 16));
      *(v5 + 24) = v6;
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
        v2 = *(this + 4);
      }

      else
      {
        v7 = 1;
      }

      v4 = (v6 + v4 + v7);
      ++v3;
    }

    while (v3 < v2);
  }

  *(this + 8) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN *this, const CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN *CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::Swap(CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN *this, CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v4;
    v5 = *(v3 + 8);
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
  }

  return this;
}

void *CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details::SharedCtor(void *this)
{
  this[1] = 0;
  v1 = MEMORY[0x1E69E5958];
  this[10] = 0;
  this[13] = 0;
  this[14] = v1;
  this[21] = 0;
  this[34] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details *CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details::VLLocalizationMaps488Details(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details *this, const CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details *a2)
{
  *(this + 120) = 0u;
  *this = &unk_1F4CD9018;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 68) = 0;
  v3 = MEMORY[0x1E69E5958];
  *(this + 13) = 0;
  *(this + 14) = v3;
  *(this + 21) = 0;
  *(this + 69) = 0;
  CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details::MergeFrom(this, a2);
  return this;
}

void sub_1D0CB4730(_Unwind_Exception *a1)
{
  v5 = *(v1 + 32);
  if (v5)
  {
    MEMORY[0x1D387EC80](v5, 0x1000C8000313F17);
  }

  v6 = *(v1 + 30);
  if (v6)
  {
    MEMORY[0x1D387EC80](v6, 0x1000C8000313F17);
  }

  v7 = *(v1 + 28);
  if (v7)
  {
    MEMORY[0x1D387EC80](v7, 0x1000C8052888210);
  }

  v8 = *(v1 + 26);
  if (v8)
  {
    MEMORY[0x1D387EC80](v8, 0x1000C8052888210);
  }

  v9 = *(v1 + 24);
  if (v9)
  {
    MEMORY[0x1D387EC80](v9, 0x1000C8052888210);
  }

  if (*v3)
  {
    MEMORY[0x1D387EC80](*v3, 0x1000C8052888210);
  }

  v10 = *(v1 + 19);
  if (v10)
  {
    MEMORY[0x1D387EC80](v10, 0x1000C8052888210);
  }

  v11 = *(v1 + 17);
  if (v11)
  {
    MEMORY[0x1D387EC80](v11, 0x1000C8052888210);
  }

  if (*v2)
  {
    MEMORY[0x1D387EC80](*v2, 0x1000C8052888210);
  }

  v12 = *(v1 + 11);
  if (v12)
  {
    MEMORY[0x1D387EC80](v12, 0x1000C8052888210);
  }

  v13 = *(v1 + 8);
  if (v13)
  {
    MEMORY[0x1D387EC80](v13, 0x1000C8000313F17);
  }

  v14 = *(v1 + 6);
  if (v14)
  {
    MEMORY[0x1D387EC80](v14, 0x1000C8052888210);
  }

  v15 = *(v1 + 4);
  if (v15)
  {
    MEMORY[0x1D387EC80](v15, 0x1000C8000313F17);
  }

  v16 = *(v1 + 2);
  if (v16)
  {
    MEMORY[0x1D387EC80](v16, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details *this, const CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v25);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    sub_1D0CA6E90(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(a2 + 10);
  if (v5)
  {
    sub_1D0C773F4(this + 4, *(this + 10) + v5);
    memcpy((*(this + 4) + 8 * *(this + 10)), *(a2 + 4), 8 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    sub_1D0CA6E90(this + 6, *(this + 14) + v6);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v7 = *(a2 + 18);
  if (v7)
  {
    sub_1D0C773F4(this + 8, *(this + 18) + v7);
    memcpy((*(this + 8) + 8 * *(this + 18)), *(a2 + 8), 8 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    sub_1D0CA6E90(this + 11, *(this + 24) + v8);
    memcpy((*(this + 11) + 4 * *(this + 24)), *(a2 + 11), 4 * *(a2 + 24));
    *(this + 24) += *(a2 + 24);
  }

  v9 = *(a2 + 32);
  if (v9)
  {
    sub_1D0CA6E90(this + 15, *(this + 32) + v9);
    memcpy((*(this + 15) + 4 * *(this + 32)), *(a2 + 15), 4 * *(a2 + 32));
    *(this + 32) += *(a2 + 32);
  }

  v10 = *(a2 + 36);
  if (v10)
  {
    sub_1D0CA6E90(this + 17, *(this + 36) + v10);
    memcpy((*(this + 17) + 4 * *(this + 36)), *(a2 + 17), 4 * *(a2 + 36));
    *(this + 36) += *(a2 + 36);
  }

  v11 = *(a2 + 40);
  if (v11)
  {
    sub_1D0CA6E90(this + 19, *(this + 40) + v11);
    memcpy((*(this + 19) + 4 * *(this + 40)), *(a2 + 19), 4 * *(a2 + 40));
    *(this + 40) += *(a2 + 40);
  }

  v12 = *(a2 + 46);
  if (v12)
  {
    sub_1D0CA6E90(this + 22, *(this + 46) + v12);
    memcpy((*(this + 22) + 4 * *(this + 46)), *(a2 + 22), 4 * *(a2 + 46));
    *(this + 46) += *(a2 + 46);
  }

  v13 = *(a2 + 50);
  if (v13)
  {
    sub_1D0CA6E90(this + 24, *(this + 50) + v13);
    memcpy((*(this + 24) + 4 * *(this + 50)), *(a2 + 24), 4 * *(a2 + 50));
    *(this + 50) += *(a2 + 50);
  }

  v14 = *(a2 + 54);
  if (v14)
  {
    sub_1D0CA6E90(this + 26, *(this + 54) + v14);
    memcpy((*(this + 26) + 4 * *(this + 54)), *(a2 + 26), 4 * *(a2 + 54));
    *(this + 54) += *(a2 + 54);
  }

  v15 = *(a2 + 58);
  if (v15)
  {
    sub_1D0CA6E90(this + 28, *(this + 58) + v15);
    memcpy((*(this + 28) + 4 * *(this + 58)), *(a2 + 28), 4 * *(a2 + 58));
    *(this + 58) += *(a2 + 58);
  }

  v16 = *(a2 + 62);
  if (v16)
  {
    sub_1D0C773F4(this + 30, *(this + 62) + v16);
    memcpy((*(this + 30) + 8 * *(this + 62)), *(a2 + 30), 8 * *(a2 + 62));
    *(this + 62) += *(a2 + 62);
  }

  v17 = *(a2 + 66);
  if (v17)
  {
    sub_1D0C773F4(this + 32, *(this + 66) + v17);
    memcpy((*(this + 32) + 8 * *(this + 66)), *(a2 + 32), 8 * *(a2 + 66));
    *(this + 66) += *(a2 + 66);
  }

  v18 = *(a2 + 69);
  if (v18)
  {
    if (v18)
    {
      v23 = *(a2 + 1);
      *(this + 69) |= 1u;
      *(this + 1) = v23;
      v18 = *(a2 + 69);
      if ((v18 & 0x20) == 0)
      {
LABEL_34:
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    else if ((v18 & 0x20) == 0)
    {
      goto LABEL_34;
    }

    v24 = *(a2 + 10);
    *(this + 69) |= 0x20u;
    *(this + 10) = v24;
    v18 = *(a2 + 69);
    if ((v18 & 0x80) != 0)
    {
LABEL_35:
      v19 = *(a2 + 13);
      *(this + 69) |= 0x80u;
      *(this + 13) = v19;
      v18 = *(a2 + 69);
    }
  }

LABEL_36:
  if ((v18 & 0xFF00) != 0)
  {
    if ((v18 & 0x100) != 0)
    {
      v20 = *(a2 + 14);
      *(this + 69) |= 0x100u;
      v21 = *(this + 14);
      if (v21 == MEMORY[0x1E69E5958])
      {
        operator new();
      }

      std::string::operator=(v21, v20);
      v18 = *(a2 + 69);
    }

    if ((v18 & 0x1000) != 0)
    {
      v22 = *(a2 + 21);
      *(this + 69) |= 0x1000u;
      *(this + 21) = v22;
    }
  }
}

void sub_1D0CB4D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details::~VLLocalizationMaps488Details(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details *this)
{
  *this = &unk_1F4CD9018;
  CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details::SharedDtor(this);
  v2 = *(this + 32);
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 30);
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  v4 = *(this + 28);
  if (v4)
  {
    MEMORY[0x1D387EC80](v4, 0x1000C8052888210);
  }

  v5 = *(this + 26);
  if (v5)
  {
    MEMORY[0x1D387EC80](v5, 0x1000C8052888210);
  }

  v6 = *(this + 24);
  if (v6)
  {
    MEMORY[0x1D387EC80](v6, 0x1000C8052888210);
  }

  v7 = *(this + 22);
  if (v7)
  {
    MEMORY[0x1D387EC80](v7, 0x1000C8052888210);
  }

  v8 = *(this + 19);
  if (v8)
  {
    MEMORY[0x1D387EC80](v8, 0x1000C8052888210);
  }

  v9 = *(this + 17);
  if (v9)
  {
    MEMORY[0x1D387EC80](v9, 0x1000C8052888210);
  }

  v10 = *(this + 15);
  if (v10)
  {
    MEMORY[0x1D387EC80](v10, 0x1000C8052888210);
  }

  v11 = *(this + 11);
  if (v11)
  {
    MEMORY[0x1D387EC80](v11, 0x1000C8052888210);
  }

  v12 = *(this + 8);
  if (v12)
  {
    MEMORY[0x1D387EC80](v12, 0x1000C8000313F17);
  }

  v13 = *(this + 6);
  if (v13)
  {
    MEMORY[0x1D387EC80](v13, 0x1000C8052888210);
  }

  v14 = *(this + 4);
  if (v14)
  {
    MEMORY[0x1D387EC80](v14, 0x1000C8000313F17);
  }

  v15 = *(this + 2);
  if (v15)
  {
    MEMORY[0x1D387EC80](v15, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details::~VLLocalizationMaps488Details(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details::SharedDtor(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details *this)
{
  v1 = *(this + 14);
  if (v1 != MEMORY[0x1E69E5958] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    this = MEMORY[0x1D387ECA0](v1, 0x1012C40EC159624);
  }

  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details::Clear(uint64_t this)
{
  v1 = *(this + 276);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 80) = 0;
    *(this + 104) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v2 = *(this + 112);
      if (v2 != MEMORY[0x1E69E5958])
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

    *(this + 168) = 0;
  }

  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 96) = 0;
  *(this + 128) = 0;
  *(this + 144) = 0;
  *(this + 160) = 0;
  *(this + 184) = 0;
  *(this + 200) = 0;
  *(this + 216) = 0;
  *(this + 232) = 0;
  *(this + 248) = 0;
  *(this + 264) = 0;
  *(this + 276) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
LABEL_1:
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v7 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v7 >= v8 || (v9 = *v7, v9 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v9;
          v10 = v7 + 1;
          *(a2 + 1) = v10;
        }

        *(this + 69) |= 1u;
        if (v10 >= v8 || *v10 != 21)
        {
          continue;
        }

        goto LABEL_92;
      case 2u:
        if (v6 == 2)
        {
          result = sub_1D0CA8DB0(a2, this + 16);
          if (!result)
          {
            return result;
          }

          goto LABEL_109;
        }

        if (v6 != 5)
        {
LABEL_68:
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

        while (1)
        {
          v189[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v189) & 1) == 0)
          {
            return 0;
          }

          v25 = v189[0];
          v26 = *(this + 6);
          if (v26 == *(this + 7))
          {
            sub_1D0CA6E90(this + 2, v26 + 1);
            v26 = *(this + 6);
          }

          v27 = *(this + 2);
          v28 = v26 + 1;
          *(this + 6) = v26 + 1;
          *(v27 + 4 * v26) = v25;
          v29 = *(a2 + 1);
          v30 = *(a2 + 4) - v29;
          if (v30 >= 1)
          {
            v31 = v30 / 5u;
            v32 = v31 >= *(this + 7) - v28 ? *(this + 7) - v28 : v31;
            if (v32 >= 1)
            {
              v33 = 0;
              while (*v29 == 21)
              {
                v34 = *(v29 + 1);
                if (v28 >= *(this + 7))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v189);
                  v28 = *(this + 6);
                  v27 = *(this + 2);
                }

                *(this + 6) = v28 + 1;
                *(v27 + 4 * v28) = v34;
                ++v33;
                v29 += 5;
                ++v28;
                if (v32 == v33)
                {
                  goto LABEL_108;
                }
              }

              if (!v33)
              {
                goto LABEL_109;
              }

LABEL_108:
              wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
            }
          }

LABEL_109:
          v10 = *(a2 + 1);
          if (v10 >= *(a2 + 2))
          {
            goto LABEL_1;
          }

          v35 = *v10;
          if (v35 != 21)
          {
            break;
          }

LABEL_92:
          *(a2 + 1) = v10 + 1;
        }

        if (v35 != 25)
        {
          continue;
        }

LABEL_112:
        *(a2 + 1) = v10 + 1;
LABEL_113:
        *v189 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v189))
        {
          v36 = *v189;
          v37 = *(this + 10);
          if (v37 == *(this + 11))
          {
            sub_1D0C773F4(this + 4, v37 + 1);
            v37 = *(this + 10);
          }

          v38 = *(this + 4);
          v39 = v37 + 1;
          *(this + 10) = v37 + 1;
          *(v38 + 8 * v37) = v36;
          v40 = *(a2 + 1);
          v41 = *(a2 + 4) - v40;
          if (v41 >= 1)
          {
            v42 = v41 / 9u;
            v43 = v42 >= *(this + 11) - v39 ? *(this + 11) - v39 : v42;
            if (v43 >= 1)
            {
              v44 = 0;
              while (*v40 == 25)
              {
                v45 = *(v40 + 1);
                if (v39 >= *(this + 11))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v189);
                  v39 = *(this + 10);
                  v38 = *(this + 4);
                }

                *(this + 10) = v39 + 1;
                *(v38 + 8 * v39) = v45;
                ++v44;
                v40 += 9;
                ++v39;
                if (v43 == v44)
                {
                  goto LABEL_128;
                }
              }

              if (!v44)
              {
                goto LABEL_129;
              }

LABEL_128:
              wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
            }
          }

LABEL_129:
          v10 = *(a2 + 1);
          v23 = *(a2 + 2);
          if (v10 >= v23)
          {
            continue;
          }

          v46 = *v10;
          if (v46 == 25)
          {
            goto LABEL_112;
          }

          if (v46 == 32)
          {
            for (i = v10 + 1; ; i = (v57 + 1))
            {
              *(a2 + 1) = i;
LABEL_133:
              v189[0] = 0;
              if (i >= v23 || (v47 = *i, (v47 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v189);
                if (!result)
                {
                  return result;
                }

                v47 = v189[0];
              }

              else
              {
                *(a2 + 1) = i + 1;
              }

              v48 = *(this + 14);
              if (v48 == *(this + 15))
              {
                sub_1D0CA6E90(this + 6, v48 + 1);
                v48 = *(this + 14);
              }

              v49 = *(this + 6);
              *(this + 14) = v48 + 1;
              *(v49 + 4 * v48) = v47;
              v50 = *(this + 15) - *(this + 14);
              if (v50 >= 1)
              {
                v51 = v50 + 1;
                do
                {
                  v52 = *(a2 + 1);
                  v53 = *(a2 + 2);
                  if (v52 >= v53 || *v52 != 32)
                  {
                    break;
                  }

                  *(a2 + 1) = v52 + 1;
                  v189[0] = 0;
                  if ((v52 + 1) >= v53 || (v54 = v52[1], (v54 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v189);
                    if (!result)
                    {
                      return result;
                    }

                    v54 = v189[0];
                  }

                  else
                  {
                    *(a2 + 1) = v52 + 2;
                  }

                  v55 = *(this + 14);
                  if (v55 >= *(this + 15))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v189);
                    v55 = *(this + 14);
                  }

                  v56 = *(this + 6);
                  *(this + 14) = v55 + 1;
                  *(v56 + 4 * v55) = v54;
                  --v51;
                }

                while (v51 > 1);
              }

LABEL_152:
              v57 = *(a2 + 1);
              v23 = *(a2 + 2);
              if (v57 >= v23)
              {
                break;
              }

              v58 = *v57;
              if (v58 == 41)
              {
                while (1)
                {
                  *(a2 + 1) = v57 + 1;
LABEL_158:
                  *v189 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v189) & 1) == 0)
                  {
                    return 0;
                  }

                  v59 = *v189;
                  v60 = *(this + 18);
                  if (v60 == *(this + 19))
                  {
                    sub_1D0C773F4(this + 8, v60 + 1);
                    v60 = *(this + 18);
                  }

                  v61 = *(this + 8);
                  v62 = v60 + 1;
                  *(this + 18) = v60 + 1;
                  *(v61 + 8 * v60) = v59;
                  v63 = *(a2 + 1);
                  v64 = *(a2 + 4) - v63;
                  if (v64 >= 1)
                  {
                    v65 = v64 / 9u;
                    v66 = v65 >= *(this + 19) - v62 ? *(this + 19) - v62 : v65;
                    if (v66 >= 1)
                    {
                      v67 = 0;
                      while (*v63 == 41)
                      {
                        v68 = *(v63 + 1);
                        if (v62 >= *(this + 19))
                        {
                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v189);
                          v62 = *(this + 18);
                          v61 = *(this + 8);
                        }

                        *(this + 18) = v62 + 1;
                        *(v61 + 8 * v62) = v68;
                        ++v67;
                        v63 += 9;
                        ++v62;
                        if (v66 == v67)
                        {
                          goto LABEL_173;
                        }
                      }

                      if (!v67)
                      {
                        goto LABEL_174;
                      }

LABEL_173:
                      wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                    }
                  }

LABEL_174:
                  v57 = *(a2 + 1);
                  v16 = *(a2 + 2);
                  if (v57 >= v16)
                  {
                    goto LABEL_1;
                  }

                  v69 = *v57;
                  if (v69 != 41)
                  {
                    if (v69 == 48)
                    {
                      v17 = (v57 + 1);
                      *(a2 + 1) = v57 + 1;
LABEL_178:
                      if (v17 >= v16 || (v70 = *v17, v70 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 10);
                        if (!result)
                        {
                          return result;
                        }

                        v71 = *(a2 + 1);
                        v16 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 10) = v70;
                        v71 = v17 + 1;
                        *(a2 + 1) = v71;
                      }

                      *(this + 69) |= 0x20u;
                      if (v71 < v16 && *v71 == 61)
                      {
                        while (1)
                        {
                          *(a2 + 1) = v71 + 1;
LABEL_186:
                          v189[0] = 0;
                          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v189) & 1) == 0)
                          {
                            return 0;
                          }

                          v72 = v189[0];
                          v73 = *(this + 24);
                          if (v73 == *(this + 25))
                          {
                            sub_1D0CA6E90(this + 11, v73 + 1);
                            v73 = *(this + 24);
                          }

                          v74 = *(this + 11);
                          v75 = v73 + 1;
                          *(this + 24) = v73 + 1;
                          *(v74 + 4 * v73) = v72;
                          v76 = *(a2 + 1);
                          v77 = *(a2 + 4) - v76;
                          if (v77 >= 1)
                          {
                            v78 = v77 / 5u;
                            v79 = v78 >= *(this + 25) - v75 ? *(this + 25) - v75 : v78;
                            if (v79 >= 1)
                            {
                              v80 = 0;
                              while (*v76 == 61)
                              {
                                v81 = *(v76 + 1);
                                if (v75 >= *(this + 25))
                                {
                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v189);
                                  v75 = *(this + 24);
                                  v74 = *(this + 11);
                                }

                                *(this + 24) = v75 + 1;
                                *(v74 + 4 * v75) = v81;
                                ++v80;
                                v76 += 5;
                                ++v75;
                                if (v79 == v80)
                                {
                                  goto LABEL_201;
                                }
                              }

                              if (!v80)
                              {
                                goto LABEL_202;
                              }

LABEL_201:
                              wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                            }
                          }

LABEL_202:
                          v71 = *(a2 + 1);
                          v14 = *(a2 + 2);
                          if (v71 >= v14)
                          {
                            break;
                          }

                          v82 = *v71;
                          if (v82 != 61)
                          {
                            if (v82 == 64)
                            {
                              v15 = v71 + 1;
                              *(a2 + 1) = v15;
LABEL_206:
                              if (v15 >= v14 || (v83 = *v15, v83 < 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 13);
                                if (!result)
                                {
                                  return result;
                                }

                                v84 = *(a2 + 1);
                                v14 = *(a2 + 2);
                              }

                              else
                              {
                                *(this + 13) = v83;
                                v84 = v15 + 1;
                                *(a2 + 1) = v84;
                              }

                              v18 = *(this + 69) | 0x80;
                              *(this + 69) = v18;
                              if (v84 < v14 && *v84 == 74)
                              {
                                *(a2 + 1) = v84 + 1;
LABEL_214:
                                *(this + 69) = v18 | 0x100;
                                if (*(this + 14) == MEMORY[0x1E69E5958])
                                {
                                  operator new();
                                }

                                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
                                if (!result)
                                {
                                  return result;
                                }

                                v85 = *(a2 + 1);
                                v20 = *(a2 + 2);
                                if (v85 < v20 && *v85 == 80)
                                {
                                  for (j = v85 + 1; ; j = (v96 + 1))
                                  {
                                    *(a2 + 1) = j;
LABEL_220:
                                    v189[0] = 0;
                                    if (j >= v20 || (v86 = *j, (v86 & 0x80000000) != 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v189);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v86 = v189[0];
                                    }

                                    else
                                    {
                                      *(a2 + 1) = j + 1;
                                    }

                                    v87 = *(this + 32);
                                    if (v87 == *(this + 33))
                                    {
                                      sub_1D0CA6E90(this + 15, v87 + 1);
                                      v87 = *(this + 32);
                                    }

                                    v88 = *(this + 15);
                                    *(this + 32) = v87 + 1;
                                    *(v88 + 4 * v87) = v86;
                                    v89 = *(this + 33) - *(this + 32);
                                    if (v89 >= 1)
                                    {
                                      v90 = v89 + 1;
                                      do
                                      {
                                        v91 = *(a2 + 1);
                                        v92 = *(a2 + 2);
                                        if (v91 >= v92 || *v91 != 80)
                                        {
                                          break;
                                        }

                                        *(a2 + 1) = v91 + 1;
                                        v189[0] = 0;
                                        if ((v91 + 1) >= v92 || (v93 = v91[1], (v93 & 0x80000000) != 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v189);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v93 = v189[0];
                                        }

                                        else
                                        {
                                          *(a2 + 1) = v91 + 2;
                                        }

                                        v94 = *(this + 32);
                                        if (v94 >= *(this + 33))
                                        {
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v189);
                                          v94 = *(this + 32);
                                        }

                                        v95 = *(this + 15);
                                        *(this + 32) = v94 + 1;
                                        *(v95 + 4 * v94) = v93;
                                        --v90;
                                      }

                                      while (v90 > 1);
                                    }

LABEL_239:
                                    v96 = *(a2 + 1);
                                    v20 = *(a2 + 2);
                                    if (v96 >= v20)
                                    {
                                      break;
                                    }

                                    v97 = *v96;
                                    if (v97 == 93)
                                    {
                                      while (1)
                                      {
                                        *(a2 + 1) = v96 + 1;
LABEL_245:
                                        v189[0] = 0;
                                        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v189) & 1) == 0)
                                        {
                                          return 0;
                                        }

                                        v98 = v189[0];
                                        v99 = *(this + 36);
                                        if (v99 == *(this + 37))
                                        {
                                          sub_1D0CA6E90(this + 17, v99 + 1);
                                          v99 = *(this + 36);
                                        }

                                        v100 = *(this + 17);
                                        v101 = v99 + 1;
                                        *(this + 36) = v99 + 1;
                                        *(v100 + 4 * v99) = v98;
                                        v102 = *(a2 + 1);
                                        v103 = *(a2 + 4) - v102;
                                        if (v103 >= 1)
                                        {
                                          v104 = v103 / 5u;
                                          v105 = v104 >= *(this + 37) - v101 ? *(this + 37) - v101 : v104;
                                          if (v105 >= 1)
                                          {
                                            v106 = 0;
                                            while (*v102 == 93)
                                            {
                                              v107 = *(v102 + 1);
                                              if (v101 >= *(this + 37))
                                              {
                                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v189);
                                                v101 = *(this + 36);
                                                v100 = *(this + 17);
                                              }

                                              *(this + 36) = v101 + 1;
                                              *(v100 + 4 * v101) = v107;
                                              ++v106;
                                              v102 += 5;
                                              ++v101;
                                              if (v105 == v106)
                                              {
                                                goto LABEL_260;
                                              }
                                            }

                                            if (!v106)
                                            {
                                              goto LABEL_261;
                                            }

LABEL_260:
                                            wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                                          }
                                        }

LABEL_261:
                                        v96 = *(a2 + 1);
                                        v13 = *(a2 + 2);
                                        if (v96 >= v13)
                                        {
                                          goto LABEL_1;
                                        }

                                        v108 = *v96;
                                        if (v108 != 93)
                                        {
                                          if (v108 == 96)
                                          {
                                            for (k = (v96 + 1); ; k = (v119 + 1))
                                            {
                                              *(a2 + 1) = k;
LABEL_265:
                                              v189[0] = 0;
                                              if (k >= v13 || (v109 = *k, (v109 & 0x80000000) != 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v189);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v109 = v189[0];
                                              }

                                              else
                                              {
                                                *(a2 + 1) = k + 1;
                                              }

                                              v110 = *(this + 40);
                                              if (v110 == *(this + 41))
                                              {
                                                sub_1D0CA6E90(this + 19, v110 + 1);
                                                v110 = *(this + 40);
                                              }

                                              v111 = *(this + 19);
                                              *(this + 40) = v110 + 1;
                                              *(v111 + 4 * v110) = v109;
                                              v112 = *(this + 41) - *(this + 40);
                                              if (v112 >= 1)
                                              {
                                                v113 = v112 + 1;
                                                do
                                                {
                                                  v114 = *(a2 + 1);
                                                  v115 = *(a2 + 2);
                                                  if (v114 >= v115 || *v114 != 96)
                                                  {
                                                    break;
                                                  }

                                                  *(a2 + 1) = v114 + 1;
                                                  v189[0] = 0;
                                                  if ((v114 + 1) >= v115 || (v116 = v114[1], (v116 & 0x80000000) != 0))
                                                  {
                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v189);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v116 = v189[0];
                                                  }

                                                  else
                                                  {
                                                    *(a2 + 1) = v114 + 2;
                                                  }

                                                  v117 = *(this + 40);
                                                  if (v117 >= *(this + 41))
                                                  {
                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v189);
                                                    v117 = *(this + 40);
                                                  }

                                                  v118 = *(this + 19);
                                                  *(this + 40) = v117 + 1;
                                                  *(v118 + 4 * v117) = v116;
                                                  --v113;
                                                }

                                                while (v113 > 1);
                                              }

LABEL_284:
                                              v119 = *(a2 + 1);
                                              v13 = *(a2 + 2);
                                              if (v119 >= v13)
                                              {
                                                break;
                                              }

                                              v120 = *v119;
                                              if (v120 == 104)
                                              {
                                                v12 = (v119 + 1);
                                                *(a2 + 1) = v12;
LABEL_290:
                                                if (v12 >= v13 || (v121 = *v12, v121 < 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 21);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v122 = *(a2 + 1);
                                                  v13 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  *(this + 21) = v121;
                                                  v122 = (v12 + 1);
                                                  *(a2 + 1) = v122;
                                                }

                                                *(this + 69) |= 0x1000u;
                                                if (v122 < v13)
                                                {
                                                  v123 = *v122;
                                                  while (v123 == 112)
                                                  {
                                                    v24 = (v122 + 1);
                                                    *(a2 + 1) = v24;
LABEL_299:
                                                    v189[0] = 0;
                                                    if (v24 >= v13 || (v124 = *v24, (v124 & 0x80000000) != 0))
                                                    {
                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v189);
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      v124 = v189[0];
                                                    }

                                                    else
                                                    {
                                                      *(a2 + 1) = v24 + 1;
                                                    }

                                                    v125 = *(this + 46);
                                                    if (v125 == *(this + 47))
                                                    {
                                                      sub_1D0CA6E90(this + 22, v125 + 1);
                                                      v125 = *(this + 46);
                                                    }

                                                    v126 = *(this + 22);
                                                    *(this + 46) = v125 + 1;
                                                    *(v126 + 4 * v125) = v124;
                                                    v127 = *(this + 47) - *(this + 46);
                                                    if (v127 >= 1)
                                                    {
                                                      v128 = v127 + 1;
                                                      do
                                                      {
                                                        v129 = *(a2 + 1);
                                                        v130 = *(a2 + 2);
                                                        if (v129 >= v130 || *v129 != 112)
                                                        {
                                                          break;
                                                        }

                                                        *(a2 + 1) = v129 + 1;
                                                        v189[0] = 0;
                                                        if ((v129 + 1) >= v130 || (v131 = v129[1], (v131 & 0x80000000) != 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v189);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v131 = v189[0];
                                                        }

                                                        else
                                                        {
                                                          *(a2 + 1) = v129 + 2;
                                                        }

                                                        v132 = *(this + 46);
                                                        if (v132 >= *(this + 47))
                                                        {
                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v189);
                                                          v132 = *(this + 46);
                                                        }

                                                        v133 = *(this + 22);
                                                        *(this + 46) = v132 + 1;
                                                        *(v133 + 4 * v132) = v131;
                                                        --v128;
                                                      }

                                                      while (v128 > 1);
                                                    }

LABEL_318:
                                                    v122 = *(a2 + 1);
                                                    v13 = *(a2 + 2);
                                                    if (v122 >= v13)
                                                    {
                                                      break;
                                                    }

                                                    v123 = *v122;
                                                    if (v123 == 125)
                                                    {
                                                      do
                                                      {
                                                        *(a2 + 1) = v122 + 1;
LABEL_321:
                                                        v189[0] = 0;
                                                        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v189) & 1) == 0)
                                                        {
                                                          return 0;
                                                        }

                                                        v134 = v189[0];
                                                        v135 = *(this + 50);
                                                        if (v135 == *(this + 51))
                                                        {
                                                          sub_1D0CA6E90(this + 24, v135 + 1);
                                                          v135 = *(this + 50);
                                                        }

                                                        v136 = *(this + 24);
                                                        v137 = v135 + 1;
                                                        *(this + 50) = v135 + 1;
                                                        *(v136 + 4 * v135) = v134;
                                                        v138 = *(a2 + 1);
                                                        v139 = *(a2 + 4) - v138;
                                                        if (v139 >= 1)
                                                        {
                                                          v140 = v139 / 5u;
                                                          v141 = v140 >= *(this + 51) - v137 ? *(this + 51) - v137 : v140;
                                                          if (v141 >= 1)
                                                          {
                                                            v142 = 0;
                                                            while (*v138 == 125)
                                                            {
                                                              v143 = *(v138 + 1);
                                                              if (v137 >= *(this + 51))
                                                              {
                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v189);
                                                                v137 = *(this + 50);
                                                                v136 = *(this + 24);
                                                              }

                                                              *(this + 50) = v137 + 1;
                                                              *(v136 + 4 * v137) = v143;
                                                              ++v142;
                                                              v138 += 5;
                                                              ++v137;
                                                              if (v141 == v142)
                                                              {
                                                                goto LABEL_336;
                                                              }
                                                            }

                                                            if (!v142)
                                                            {
                                                              goto LABEL_337;
                                                            }

LABEL_336:
                                                            wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                                                          }
                                                        }

LABEL_337:
                                                        v122 = *(a2 + 1);
                                                        v144 = *(a2 + 2);
                                                      }

                                                      while (v122 < v144 && *v122 == 125);
                                                      if (v144 - v122 >= 2)
                                                      {
                                                        v145 = *v122;
                                                        while (v145 == 133 && v122[1] == 1)
                                                        {
                                                          *(a2 + 1) = v122 + 2;
LABEL_344:
                                                          if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0x85) != 2)
                                                          {
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v189);
                                                          }

                                                          v189[0] = 0;
                                                          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v189) & 1) == 0)
                                                          {
                                                            return 0;
                                                          }

                                                          v146 = v189[0];
                                                          v147 = *(this + 54);
                                                          if (v147 == *(this + 55))
                                                          {
                                                            sub_1D0CA6E90(this + 26, v147 + 1);
                                                            v147 = *(this + 54);
                                                          }

                                                          v148 = *(this + 26);
                                                          v149 = v147 + 1;
                                                          *(this + 54) = v147 + 1;
                                                          *(v148 + 4 * v147) = v146;
                                                          v150 = *(a2 + 1);
                                                          v151 = *(a2 + 4) - v150;
                                                          if (v151 >= 1)
                                                          {
                                                            v152 = v151 / 6u;
                                                            v153 = v152 >= *(this + 55) - v149 ? *(this + 55) - v149 : v152;
                                                            if (v153 >= 1)
                                                            {
                                                              v154 = 0;
                                                              while (*v150 == 133 && v150[1] == 1)
                                                              {
                                                                v155 = *(v150 + 2);
                                                                if (v149 >= *(this + 55))
                                                                {
                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v189);
                                                                  v149 = *(this + 54);
                                                                  v148 = *(this + 26);
                                                                }

                                                                *(this + 54) = v149 + 1;
                                                                *(v148 + 4 * v149) = v155;
                                                                ++v154;
                                                                v150 += 6;
                                                                ++v149;
                                                                if (v153 == v154)
                                                                {
                                                                  goto LABEL_362;
                                                                }
                                                              }

                                                              if (!v154)
                                                              {
                                                                goto LABEL_363;
                                                              }

LABEL_362:
                                                              wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                                                            }
                                                          }

LABEL_363:
                                                          v122 = *(a2 + 1);
                                                          if (*(a2 + 4) - v122 <= 1)
                                                          {
                                                            break;
                                                          }

                                                          v145 = *v122;
                                                          if (v145 == 141)
                                                          {
                                                            while (v122[1] == 1)
                                                            {
                                                              *(a2 + 1) = v122 + 2;
LABEL_367:
                                                              if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0x8D) != 2)
                                                              {
                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v189);
                                                              }

                                                              v189[0] = 0;
                                                              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v189) & 1) == 0)
                                                              {
                                                                return 0;
                                                              }

                                                              v156 = v189[0];
                                                              v157 = *(this + 58);
                                                              if (v157 == *(this + 59))
                                                              {
                                                                sub_1D0CA6E90(this + 28, v157 + 1);
                                                                v157 = *(this + 58);
                                                              }

                                                              v158 = *(this + 28);
                                                              v159 = v157 + 1;
                                                              *(this + 58) = v157 + 1;
                                                              *(v158 + 4 * v157) = v156;
                                                              v160 = *(a2 + 1);
                                                              v161 = *(a2 + 4) - v160;
                                                              if (v161 >= 1)
                                                              {
                                                                v162 = v161 / 6u;
                                                                v163 = v162 >= *(this + 59) - v159 ? *(this + 59) - v159 : v162;
                                                                if (v163 >= 1)
                                                                {
                                                                  v164 = 0;
                                                                  while (*v160 == 141 && v160[1] == 1)
                                                                  {
                                                                    v165 = *(v160 + 2);
                                                                    if (v159 >= *(this + 59))
                                                                    {
                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v189);
                                                                      v159 = *(this + 58);
                                                                      v158 = *(this + 28);
                                                                    }

                                                                    *(this + 58) = v159 + 1;
                                                                    *(v158 + 4 * v159) = v165;
                                                                    ++v164;
                                                                    v160 += 6;
                                                                    ++v159;
                                                                    if (v163 == v164)
                                                                    {
                                                                      goto LABEL_385;
                                                                    }
                                                                  }

                                                                  if (!v164)
                                                                  {
                                                                    goto LABEL_386;
                                                                  }

LABEL_385:
                                                                  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                                                                }
                                                              }

LABEL_386:
                                                              v122 = *(a2 + 1);
                                                              if (*(a2 + 4) - v122 <= 1)
                                                              {
                                                                break;
                                                              }

                                                              v166 = *v122;
                                                              if (v166 == 145)
                                                              {
                                                                while (1)
                                                                {
                                                                  if (v122[1] != 1)
                                                                  {
                                                                    goto LABEL_1;
                                                                  }

                                                                  *(a2 + 1) = v122 + 2;
LABEL_392:
                                                                  if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0x91) != 2)
                                                                  {
                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v189);
                                                                  }

                                                                  *v189 = 0;
                                                                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v189) & 1) == 0)
                                                                  {
                                                                    return 0;
                                                                  }

                                                                  v167 = *v189;
                                                                  v168 = *(this + 62);
                                                                  if (v168 == *(this + 63))
                                                                  {
                                                                    sub_1D0C773F4(this + 30, v168 + 1);
                                                                    v168 = *(this + 62);
                                                                  }

                                                                  v169 = *(this + 30);
                                                                  v170 = v168 + 1;
                                                                  *(this + 62) = v168 + 1;
                                                                  *(v169 + 8 * v168) = v167;
                                                                  v171 = *(a2 + 1);
                                                                  v172 = *(a2 + 4) - v171;
                                                                  if (v172 >= 1)
                                                                  {
                                                                    v173 = v172 / 0xAu;
                                                                    v174 = v173 >= *(this + 63) - v170 ? *(this + 63) - v170 : v173;
                                                                    if (v174 >= 1)
                                                                    {
                                                                      v175 = 0;
                                                                      while (*v171 == 145 && v171[1] == 1)
                                                                      {
                                                                        v176 = *(v171 + 2);
                                                                        if (v170 >= *(this + 63))
                                                                        {
                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v189);
                                                                          v170 = *(this + 62);
                                                                          v169 = *(this + 30);
                                                                        }

                                                                        *(this + 62) = v170 + 1;
                                                                        *(v169 + 8 * v170) = v176;
                                                                        ++v175;
                                                                        v171 += 10;
                                                                        ++v170;
                                                                        if (v174 == v175)
                                                                        {
                                                                          goto LABEL_410;
                                                                        }
                                                                      }

                                                                      if (!v175)
                                                                      {
                                                                        goto LABEL_411;
                                                                      }

LABEL_410:
                                                                      wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                                                                    }
                                                                  }

LABEL_411:
                                                                  v122 = *(a2 + 1);
                                                                  if (*(a2 + 4) - v122 <= 1)
                                                                  {
                                                                    goto LABEL_1;
                                                                  }

                                                                  v177 = *v122;
                                                                  if (v177 == 153)
                                                                  {
                                                                    break;
                                                                  }

                                                                  if (v177 != 145)
                                                                  {
                                                                    goto LABEL_1;
                                                                  }
                                                                }

                                                                if (v122[1] == 1)
                                                                {
                                                                  do
                                                                  {
                                                                    *(a2 + 1) = v122 + 2;
LABEL_417:
                                                                    if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0x99) != 2)
                                                                    {
                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v189);
                                                                    }

                                                                    *v189 = 0;
                                                                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v189) & 1) == 0)
                                                                    {
                                                                      return 0;
                                                                    }

                                                                    v178 = *v189;
                                                                    v179 = *(this + 66);
                                                                    if (v179 == *(this + 67))
                                                                    {
                                                                      sub_1D0C773F4(this + 32, v179 + 1);
                                                                      v179 = *(this + 66);
                                                                    }

                                                                    v180 = *(this + 32);
                                                                    v181 = v179 + 1;
                                                                    *(this + 66) = v179 + 1;
                                                                    *(v180 + 8 * v179) = v178;
                                                                    v182 = *(a2 + 1);
                                                                    v183 = *(a2 + 4) - v182;
                                                                    if (v183 >= 1)
                                                                    {
                                                                      v184 = v183 / 0xAu;
                                                                      v185 = v184 >= *(this + 67) - v181 ? *(this + 67) - v181 : v184;
                                                                      if (v185 >= 1)
                                                                      {
                                                                        v186 = 0;
                                                                        while (*v182 == 153 && v182[1] == 1)
                                                                        {
                                                                          v187 = *(v182 + 2);
                                                                          if (v181 >= *(this + 67))
                                                                          {
                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v189);
                                                                            v181 = *(this + 66);
                                                                            v180 = *(this + 32);
                                                                          }

                                                                          *(this + 66) = v181 + 1;
                                                                          *(v180 + 8 * v181) = v187;
                                                                          ++v186;
                                                                          v182 += 10;
                                                                          ++v181;
                                                                          if (v185 == v186)
                                                                          {
                                                                            goto LABEL_435;
                                                                          }
                                                                        }

                                                                        if (!v186)
                                                                        {
                                                                          goto LABEL_436;
                                                                        }

LABEL_435:
                                                                        wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                                                                      }
                                                                    }

LABEL_436:
                                                                    v122 = *(a2 + 1);
                                                                    v188 = *(a2 + 2);
                                                                  }

                                                                  while (v188 - v122 > 1 && *v122 == 153 && v122[1] == 1);
                                                                  if (v122 == v188 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                                                                  {
                                                                    *(a2 + 8) = 0;
                                                                    result = 1;
                                                                    *(a2 + 36) = 1;
                                                                    return result;
                                                                  }
                                                                }

                                                                goto LABEL_1;
                                                              }

                                                              if (v166 != 141)
                                                              {
                                                                goto LABEL_1;
                                                              }
                                                            }

                                                            goto LABEL_1;
                                                          }
                                                        }
                                                      }

                                                      goto LABEL_1;
                                                    }
                                                  }
                                                }

                                                goto LABEL_1;
                                              }

                                              if (v120 != 96)
                                              {
                                                goto LABEL_1;
                                              }
                                            }
                                          }

                                          goto LABEL_1;
                                        }
                                      }
                                    }

                                    if (v97 != 80)
                                    {
                                      goto LABEL_1;
                                    }
                                  }
                                }
                              }
                            }

                            goto LABEL_1;
                          }
                        }
                      }
                    }

                    goto LABEL_1;
                  }
                }
              }

              if (v58 != 32)
              {
                goto LABEL_1;
              }
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if (v6 == 1)
        {
          goto LABEL_113;
        }

        if (v6 != 2)
        {
          goto LABEL_68;
        }

        result = sub_1D0C99640(a2, this + 32);
        if (!result)
        {
          return result;
        }

        goto LABEL_129;
      case 4u:
        if ((TagFallback & 7) == 0)
        {
          i = *(a2 + 1);
          v23 = *(a2 + 2);
          goto LABEL_133;
        }

        if (v6 != 2)
        {
          goto LABEL_68;
        }

        result = sub_1D0CB6A30(a2, this + 48);
        if (!result)
        {
          return result;
        }

        goto LABEL_152;
      case 5u:
        if (v6 == 1)
        {
          goto LABEL_158;
        }

        if (v6 != 2)
        {
          goto LABEL_68;
        }

        result = sub_1D0C99640(a2, this + 64);
        if (!result)
        {
          return result;
        }

        goto LABEL_174;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_178;
      case 7u:
        if (v6 == 2)
        {
          result = sub_1D0CA8DB0(a2, this + 88);
          if (!result)
          {
            return result;
          }

          goto LABEL_202;
        }

        if (v6 != 5)
        {
          goto LABEL_68;
        }

        goto LABEL_186;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_206;
      case 9u:
        if (v6 != 2)
        {
          goto LABEL_68;
        }

        v18 = *(this + 69);
        goto LABEL_214;
      case 0xAu:
        if ((TagFallback & 7) == 0)
        {
          j = *(a2 + 1);
          v20 = *(a2 + 2);
          goto LABEL_220;
        }

        if (v6 != 2)
        {
          goto LABEL_68;
        }

        result = sub_1D0CB6A30(a2, this + 120);
        if (!result)
        {
          return result;
        }

        goto LABEL_239;
      case 0xBu:
        if (v6 == 2)
        {
          result = sub_1D0CA8DB0(a2, this + 136);
          if (!result)
          {
            return result;
          }

          goto LABEL_261;
        }

        if (v6 != 5)
        {
          goto LABEL_68;
        }

        goto LABEL_245;
      case 0xCu:
        if ((TagFallback & 7) == 0)
        {
          k = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_265;
        }

        if (v6 != 2)
        {
          goto LABEL_68;
        }

        result = sub_1D0CB6A30(a2, this + 152);
        if (!result)
        {
          return result;
        }

        goto LABEL_284;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v12 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_290;
      case 0xEu:
        if ((TagFallback & 7) == 0)
        {
          v24 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_299;
        }

        if (v6 != 2)
        {
          goto LABEL_68;
        }

        result = sub_1D0CB6A30(a2, this + 176);
        if (!result)
        {
          return result;
        }

        goto LABEL_318;
      case 0xFu:
        if (v6 == 2)
        {
          result = sub_1D0CA8DB0(a2, this + 192);
          if (!result)
          {
            return result;
          }

          goto LABEL_337;
        }

        if (v6 != 5)
        {
          goto LABEL_68;
        }

        goto LABEL_321;
      case 0x10u:
        if (v6 == 2)
        {
          result = sub_1D0CA8DB0(a2, this + 208);
          if (!result)
          {
            return result;
          }

          goto LABEL_363;
        }

        if (v6 != 5)
        {
          goto LABEL_68;
        }

        goto LABEL_344;
      case 0x11u:
        if (v6 == 2)
        {
          result = sub_1D0CA8DB0(a2, this + 224);
          if (!result)
          {
            return result;
          }

          goto LABEL_386;
        }

        if (v6 != 5)
        {
          goto LABEL_68;
        }

        goto LABEL_367;
      case 0x12u:
        if (v6 == 1)
        {
          goto LABEL_392;
        }

        if (v6 != 2)
        {
          goto LABEL_68;
        }

        result = sub_1D0C99640(a2, this + 240);
        if (!result)
        {
          return result;
        }

        goto LABEL_411;
      case 0x13u:
        if (v6 == 1)
        {
          goto LABEL_417;
        }

        if (v6 != 2)
        {
          goto LABEL_68;
        }

        result = sub_1D0C99640(a2, this + 256);
        if (!result)
        {
          return result;
        }

        goto LABEL_436;
      default:
        goto LABEL_68;
    }
  }
}

void sub_1D0CB6990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0CB6A30(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v10 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v10);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v10 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v11 = 0;
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v11);
        if (!result)
        {
          return result;
        }

        v7 = v11;
      }

      else
      {
        *(this + 1) = v6 + 1;
      }

      v8 = *(a2 + 8);
      if (v8 == *(a2 + 12))
      {
        sub_1D0CA6E90(a2, v8 + 1);
        v8 = *(a2 + 8);
      }

      v9 = *a2;
      *(a2 + 8) = v8 + 1;
      *(v9 + 4 * v8) = v7;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
  return 1;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 276))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(*(v5 + 16) + 4 * v6++), a3);
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(*(v5 + 32) + 8 * v7++), a3);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(*(v5 + 48) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
  }

  if (*(v5 + 72) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(*(v5 + 64) + 8 * v9++), a3);
    }

    while (v9 < *(v5 + 72));
  }

  if ((*(v5 + 276) & 0x20) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 80), a2, a4);
  }

  if (*(v5 + 96) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(*(v5 + 88) + 4 * v10++), a3);
    }

    while (v10 < *(v5 + 96));
  }

  v11 = *(v5 + 276);
  if ((v11 & 0x80) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 104), a2, a4);
    v11 = *(v5 + 276);
  }

  if ((v11 & 0x100) != 0)
  {
    v12 = *(v5 + 112);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  if (*(v5 + 128) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xA, *(*(v5 + 120) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 128));
  }

  if (*(v5 + 144) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xB, a2, *(*(v5 + 136) + 4 * v14++), a3);
    }

    while (v14 < *(v5 + 144));
  }

  if (*(v5 + 160) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, *(*(v5 + 152) + 4 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 160));
  }

  if ((*(v5 + 277) & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xD, *(v5 + 168), a2, a4);
  }

  if (*(v5 + 184) >= 1)
  {
    v16 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xE, *(*(v5 + 176) + 4 * v16++), a2, a4);
    }

    while (v16 < *(v5 + 184));
  }

  if (*(v5 + 200) >= 1)
  {
    v17 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xF, a2, *(*(v5 + 192) + 4 * v17++), a3);
    }

    while (v17 < *(v5 + 200));
  }

  if (*(v5 + 216) >= 1)
  {
    v18 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x10, a2, *(*(v5 + 208) + 4 * v18++), a3);
    }

    while (v18 < *(v5 + 216));
  }

  if (*(v5 + 232) >= 1)
  {
    v19 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x11, a2, *(*(v5 + 224) + 4 * v19++), a3);
    }

    while (v19 < *(v5 + 232));
  }

  if (*(v5 + 248) >= 1)
  {
    v20 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x12, a2, *(*(v5 + 240) + 8 * v20++), a3);
    }

    while (v20 < *(v5 + 248));
  }

  if (*(v5 + 264) >= 1)
  {
    v21 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x13, a2, *(*(v5 + 256) + 8 * v21++), a3);
    }

    while (v21 < *(v5 + 264));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details::ByteSize(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details *this)
{
  v2 = *(this + 69);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 69);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 0x20) != 0)
  {
LABEL_7:
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 10)) + 1;
    v2 = *(this + 69);
  }

LABEL_8:
  if ((v2 & 0x80) != 0)
  {
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 13)) + 1;
    v2 = *(this + 69);
  }

LABEL_10:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v4 = *(this + 14);
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
        v2 = *(this + 69);
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

      v3 += v9 + v5 + 1;
    }

    if ((v2 & 0x1000) != 0)
    {
      v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 21)) + 1;
    }
  }

  v35 = *(this + 6);
  v36 = *(this + 10);
  v37 = v3;
  v10 = *(this + 14);
  if (v10 < 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(*(this + 6) + 4 * v11);
      if ((v13 & 0x80000000) != 0)
      {
        v14 = 10;
      }

      else if (v13 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
        v10 = *(this + 14);
      }

      else
      {
        v14 = 1;
      }

      v12 += v14;
      ++v11;
    }

    while (v11 < v10);
  }

  v15 = *(this + 24);
  v33 = *(this + 24);
  v34 = *(this + 18);
  v16 = *(this + 32);
  if (v16 < 1)
  {
    v18 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *(*(this + 15) + 4 * v17);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = 10;
      }

      else if (v19 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
        v16 = *(this + 32);
      }

      else
      {
        v20 = 1;
      }

      v18 += v20;
      ++v17;
    }

    while (v17 < v16);
  }

  v21 = *(this + 36);
  v22 = *(this + 40);
  if (v22 < 1)
  {
    v24 = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = *(*(this + 19) + 4 * v23);
      if ((v25 & 0x80000000) != 0)
      {
        v26 = 10;
      }

      else if (v25 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
        v22 = *(this + 40);
      }

      else
      {
        v26 = 1;
      }

      v24 += v26;
      ++v23;
    }

    while (v23 < v22);
  }

  v27 = *(this + 46);
  if (v27 < 1)
  {
    v29 = 0;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = *(*(this + 22) + 4 * v28);
      if ((v30 & 0x80000000) != 0)
      {
        v31 = 10;
      }

      else if (v30 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
        v27 = *(this + 46);
      }

      else
      {
        v31 = 1;
      }

      v29 += v31;
      ++v28;
    }

    while (v28 < v27);
  }

  result = (v12 + v37 + v10 + v18 + 9 * (v34 + v36) + v16 + v24 + v22 + v29 + v27 + 5 * (v33 + v35 + v21 + *(this + 50)) + 6 * (*(this + 58) + *(this + 54)) + 10 * (*(this + 66) + *(this + 62)));
  *(this + 68) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details *this, const CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details::Swap(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details *this, CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details *a2)
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
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v7;
    v8 = *(this + 10);
    v9 = *(this + 11);
    v10 = *(a2 + 11);
    *(this + 10) = *(a2 + 10);
    *(this + 11) = v10;
    *(a2 + 10) = v8;
    *(a2 + 11) = v9;
    v11 = *(this + 13);
    v12 = *(this + 14);
    v13 = *(a2 + 14);
    *(this + 13) = *(a2 + 13);
    *(this + 14) = v13;
    *(a2 + 13) = v11;
    *(a2 + 14) = v12;
    v14 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v14;
    v15 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v15;
    v16 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v16;
    v17 = *(this + 21);
    v18 = *(this + 22);
    v19 = *(a2 + 22);
    *(this + 21) = *(a2 + 21);
    *(this + 22) = v19;
    v20 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v20;
    v21 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v21;
    v22 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v22;
    v23 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v23;
    v24 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v24;
    v25 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v25;
    v26 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v26;
    v27 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v27;
    v28 = *(a2 + 23);
    *(a2 + 21) = v17;
    *(a2 + 22) = v18;
    v29 = *(this + 23);
    *(this + 23) = v28;
    *(a2 + 23) = v29;
    v30 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    v31 = *(a2 + 25);
    *(a2 + 24) = v30;
    v32 = *(this + 25);
    *(this + 25) = v31;
    *(a2 + 25) = v32;
    v33 = *(this + 26);
    *(this + 26) = *(a2 + 26);
    v34 = *(a2 + 27);
    *(a2 + 26) = v33;
    v35 = *(this + 27);
    *(this + 27) = v34;
    *(a2 + 27) = v35;
    v36 = *(this + 28);
    *(this + 28) = *(a2 + 28);
    v37 = *(a2 + 29);
    *(a2 + 28) = v36;
    v38 = *(this + 29);
    *(this + 29) = v37;
    *(a2 + 29) = v38;
    v39 = *(this + 30);
    *(this + 30) = *(a2 + 30);
    v40 = *(a2 + 31);
    *(a2 + 30) = v39;
    v41 = *(this + 31);
    *(this + 31) = v40;
    *(a2 + 31) = v41;
    v42 = *(this + 32);
    *(this + 32) = *(a2 + 32);
    result = *(a2 + 33);
    *(a2 + 32) = v42;
    v44 = *(this + 33);
    *(this + 33) = result;
    *(a2 + 33) = v44;
    LODWORD(v42) = *(this + 69);
    *(this + 69) = *(a2 + 69);
    *(a2 + 69) = v42;
    LODWORD(v42) = *(this + 68);
    *(this + 68) = *(a2 + 68);
    *(a2 + 68) = v42;
  }

  return result;
}

CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo *CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo::VLLocalizationDebugInfo(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo *this, const CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo *a2)
{
  *this = &unk_1F4CD9090;
  *(this + 1) = 0;
  CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo *this, const CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v2);
  }
}

void sub_1D0CB75EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo::~VLLocalizationDebugInfo(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo *this)
{
  *this = &unk_1F4CD9090;
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo::~VLLocalizationDebugInfo(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    v3 = *(a2 + 1);
    if (v3 >= *(a2 + 2) || (TagFallback = *v3, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v3 + 1;
    }

    if (TagFallback)
    {
      v5 = (TagFallback & 7) == 4;
    }

    else
    {
      v5 = 1;
    }

    v6 = v5;
  }

  while (!v5 && (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return v6;
}

void CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo *this, const CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo *CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo::Swap(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo *this, CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::SharedCtor(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult *this)
{
  *(this + 14) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult *CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::VLLocalizationResult(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult *this, const CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult *a2)
{
  *this = &unk_1F4CD9108;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult *this, const CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  LOBYTE(v4) = *(a2 + 56);
  if (v4)
  {
    if (*(a2 + 56))
    {
      *(this + 14) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
        v6 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::Vision::TimeStamp::MergeFrom(v5, v6);
      v4 = *(a2 + 14);
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

    else if ((*(a2 + 56) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 14) |= 2u;
    v7 = *(this + 2);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 2);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::Vision::VLLocation::MergeFrom(v7, v8);
    v4 = *(a2 + 14);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_26;
    }

LABEL_21:
    *(this + 14) |= 4u;
    v9 = *(this + 3);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 3);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
      v10 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 24);
    }

    CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::MergeFrom(v9, v10);
    v4 = *(a2 + 14);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }

LABEL_26:
    *(this + 14) |= 8u;
    v11 = *(this + 4);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 4);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 32);
    }

    CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::MergeFrom(v11, v12);
    v4 = *(a2 + 14);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_32;
    }

LABEL_31:
    v13 = *(a2 + 12);
    *(this + 14) |= 0x10u;
    *(this + 12) = v13;
    if ((*(a2 + 14) & 0x20) == 0)
    {
      return;
    }

LABEL_32:
    *(this + 14) |= 0x20u;
    v14 = *(this + 5);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 5);
    if (!v15)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
      v15 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 40);
    }

    CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo::MergeFrom(v14, v15);
  }
}

void sub_1D0CB7CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::~VLLocalizationResult(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult *this)
{
  *this = &unk_1F4CD9108;
  CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::~VLLocalizationResult(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::SharedDtor(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult *this)
{
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ != this)
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
      v7 = *(*v6 + 8);

      v7();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 56);
  if (v2)
  {
    if (*(this + 56))
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
        v2 = *(this + 56);
      }
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(this + 16);
      if (v4)
      {
        if (*(v4 + 28))
        {
          if (*(v4 + 28))
          {
            v5 = *(v4 + 8);
            if (v5)
            {
              *(v5 + 16) = 0;
              *(v5 + 28) = 0;
            }
          }

          *(v4 + 16) = 0;
        }

        *(v4 + 28) = 0;
        v2 = *(this + 56);
      }
    }

    if ((v2 & 4) != 0)
    {
      v6 = *(this + 24);
      if (v6)
      {
        this = sub_1D0C77384(v6 + 8);
        *(v6 + 36) = 0;
        v2 = *(v1 + 56);
      }
    }

    if ((v2 & 8) != 0)
    {
      v7 = *(v1 + 32);
      if (v7)
      {
        this = sub_1D0C77384(v7 + 8);
        *(v7 + 36) = 0;
        v2 = *(v1 + 56);
      }
    }

    *(v1 + 48) = 0;
    if ((v2 & 0x20) != 0)
    {
      v8 = *(v1 + 40);
      if (v8)
      {
        *(v8 + 12) = 0;
      }
    }
  }

  *(v1 + 56) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
              goto LABEL_68;
            }

            goto LABEL_28;
          }

          if (v6 != 5)
          {
            if (v6 == 6 && v7 == 2)
            {
              v8 = *(this + 14);
              goto LABEL_86;
            }

            goto LABEL_28;
          }

          if (v7 != 5)
          {
            goto LABEL_28;
          }

LABEL_82:
          v46 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v46) & 1) == 0)
          {
            return 0;
          }

          *(this + 12) = v46;
          v8 = *(this + 14) | 0x10;
          *(this + 14) = v8;
          v38 = *(a2 + 1);
          if (v38 < *(a2 + 2) && *v38 == 50)
          {
            *(a2 + 1) = v38 + 1;
LABEL_86:
            *(this + 14) = v8 | 0x20;
            if (!*(this + 5))
            {
              operator new();
            }

            v46 = 0;
            v39 = *(a2 + 1);
            if (v39 >= *(a2 + 2) || *v39 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46))
              {
                return 0;
              }
            }

            else
            {
              v46 = *v39;
              *(a2 + 1) = v39 + 1;
            }

            v40 = *(a2 + 14);
            v41 = *(a2 + 15);
            *(a2 + 14) = v40 + 1;
            if (v40 >= v41)
            {
              return 0;
            }

            v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo::MergePartialFromCodedStream(v42, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v43 = *(a2 + 14);
            v14 = __OFSUB__(v43, 1);
            v44 = v43 - 1;
            if (v44 < 0 == v14)
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

        if (v6 != 1)
        {
          break;
        }

        if (v7 != 2)
        {
          goto LABEL_28;
        }

        *(this + 14) |= 1u;
        v9 = *(this + 1);
        if (!v9)
        {
          operator new();
        }

        v46 = 0;
        v10 = *(a2 + 1);
        if (v10 >= *(a2 + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46))
          {
            return 0;
          }
        }

        else
        {
          v46 = *v10;
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
        if (!CoreNavigation::CLP::LogEntry::Vision::TimeStamp::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
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
        if (v16 < *(a2 + 2) && *v16 == 18)
        {
          *(a2 + 1) = v16 + 1;
          goto LABEL_40;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_28;
      }

LABEL_40:
      *(this + 14) |= 2u;
      v17 = *(this + 2);
      if (!v17)
      {
        operator new();
      }

      v46 = 0;
      v18 = *(a2 + 1);
      if (v18 >= *(a2 + 2) || *v18 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46))
        {
          return 0;
        }
      }

      else
      {
        v46 = *v18;
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
      if (!CoreNavigation::CLP::LogEntry::Vision::VLLocation::MergePartialFromCodedStream(v17, a2) || *(a2 + 36) != 1)
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
      if (v23 < *(a2 + 2) && *v23 == 26)
      {
        *(a2 + 1) = v23 + 1;
LABEL_54:
        *(this + 14) |= 4u;
        v24 = *(this + 3);
        if (!v24)
        {
          operator new();
        }

        v46 = 0;
        v25 = *(a2 + 1);
        if (v25 >= *(a2 + 2) || *v25 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46))
          {
            return 0;
          }
        }

        else
        {
          v46 = *v25;
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
        if (!CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::MergePartialFromCodedStream(v24, a2) || *(a2 + 36) != 1)
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
        if (v30 < *(a2 + 2) && *v30 == 34)
        {
          *(a2 + 1) = v30 + 1;
LABEL_68:
          *(this + 14) |= 8u;
          v31 = *(this + 4);
          if (!v31)
          {
            operator new();
          }

          v46 = 0;
          v32 = *(a2 + 1);
          if (v32 >= *(a2 + 2) || *v32 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46))
            {
              return 0;
            }
          }

          else
          {
            v46 = *v32;
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
          if (!CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::MergePartialFromCodedStream(v31, a2) || *(a2 + 36) != 1)
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
          if (v37 < *(a2 + 2) && *v37 == 45)
          {
            *(a2 + 1) = v37 + 1;
            goto LABEL_82;
          }
        }
      }
    }

    if (v6 == 3 && v7 == 2)
    {
      goto LABEL_54;
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

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 56);
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

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_14:
  v9 = *(v5 + 24);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 48), a3);
    if ((*(v5 + 56) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_17:
  v10 = *(v5 + 32);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return this;
  }

LABEL_21:
  v11 = *(v5 + 40);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 40);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v11, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::ByteSize(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 56);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_43;
  }

  if ((*(this + 56) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 56) & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v5 = *(this + 8);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v5 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 8);
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
  v2 = *(v1 + 56);
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v8 = *(v1 + 16);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(0);
      v8 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 16);
    }

    v9 = CoreNavigation::CLP::LogEntry::Vision::VLLocation::ByteSize(v8);
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
    v2 = *(v1 + 56);
  }

LABEL_21:
  if ((v2 & 4) != 0)
  {
    v11 = *(v1 + 24);
    if (!v11)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(0);
      v11 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 24);
    }

    v12 = CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::ByteSize(v11);
    v13 = v12;
    if (v12 >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
    }

    else
    {
      this = 1;
    }

    v3 += v13 + this + 1;
    v2 = *(v1 + 56);
    if ((v2 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if ((v2 & 8) != 0)
  {
LABEL_30:
    v14 = *(v1 + 32);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(0);
      v14 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 32);
    }

    v15 = CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::ByteSize(v14);
    v16 = v15;
    if (v15 >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
    }

    else
    {
      this = 1;
    }

    v3 += v16 + this + 1;
    v2 = *(v1 + 56);
  }

LABEL_36:
  if ((v2 & 0x10) != 0)
  {
    v4 = v3 + 5;
  }

  else
  {
    v4 = v3;
  }

  if ((v2 & 0x20) != 0)
  {
    v17 = *(v1 + 40);
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
      v17 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 40);
    }

    *(v17 + 8) = 0;
    v4 = (v4 + 2);
  }

LABEL_43:
  *(v1 + 52) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult *this, const CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::MergeFrom(this, a2);
  }
}

float CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::Swap(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult *this, CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult *a2)
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
    result = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = result;
    v7 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v7;
    LODWORD(v7) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v7;
    LODWORD(v7) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v7;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::protobuf_ShutdownFile_CoreNavigationCLPVisionLogEntry_2eproto(CoreNavigation::CLP::LogEntry::Vision *this)
{
  result = CoreNavigation::CLP::LogEntry::Vision::LogEntry::default_instance_;
  if (CoreNavigation::CLP::LogEntry::Vision::LogEntry::default_instance_)
  {
    return (*(*CoreNavigation::CLP::LogEntry::Vision::LogEntry::default_instance_ + 8))();
  }

  return result;
}

void CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionLogEntry_2eproto_impl(CoreNavigation::CLP::LogEntry::Vision *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreNavigation/shared/cnprotobuf/CoreNavigationCLPVisionLogEntry.pb.cc", a4);
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(v4);
  operator new();
}

double CoreNavigation::CLP::LogEntry::Vision::LogEntry::LogEntry(CoreNavigation::CLP::LogEntry::Vision::LogEntry *this)
{
  *&result = 0xFFFFFFFFLL;
  *(this + 4) = 0xFFFFFFFFLL;
  *(this + 10) = 0;
  *this = &unk_1F4CD9378;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  return result;
}

{
  *&result = 0xFFFFFFFFLL;
  *(this + 4) = 0xFFFFFFFFLL;
  *(this + 10) = 0;
  *this = &unk_1F4CD9378;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  return result;
}

void *CoreNavigation::CLP::LogEntry::Vision::LogEntry::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_;
  this[2] = v1;
  this[3] = CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_;
  return this;
}

void CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionLogEntry_2eproto(CoreNavigation::CLP::LogEntry::Vision *this)
{
  v1 = CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionLogEntry_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionLogEntry_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0CB8DE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::Vision::LogEntry::SharedCtor(CoreNavigation::CLP::LogEntry::Vision::LogEntry *this)
{
  *&result = 0xFFFFFFFFLL;
  *(this + 4) = 0xFFFFFFFFLL;
  *(this + 10) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::Vision::LogEntry *CoreNavigation::CLP::LogEntry::Vision::LogEntry::LogEntry(CoreNavigation::CLP::LogEntry::Vision::LogEntry *this, const CoreNavigation::CLP::LogEntry::Vision::LogEntry *a2)
{
  *(this + 4) = 0xFFFFFFFFLL;
  *(this + 10) = 0;
  *this = &unk_1F4CD9378;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::Vision::LogEntry::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::Vision::LogEntry::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::LogEntry *this, const CoreNavigation::CLP::LogEntry::Vision::LogEntry *a2)
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
      v5 = *(a2 + 8);
      if ((v5 + 1) >= 4)
      {
        __assert_rtn("set_ar_session_state", "CoreNavigationCLPVisionLogEntry.pb.h", 185, "::CoreNavigation::CLP::LogEntry::Vision::ARSessionState_IsValid(value)");
      }

      *(this + 10) |= 1u;
      *(this + 8) = v5;
      v4 = *(a2 + 10);
    }

    if ((v4 & 2) != 0)
    {
      *(this + 10) |= 2u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionLogEntry_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::Vision::LogEntry::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::MergeFrom(v6, v7);
      v4 = *(a2 + 10);
      if ((v4 & 4) == 0)
      {
LABEL_9:
        if ((v4 & 8) == 0)
        {
          return;
        }

        goto LABEL_21;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    *(this + 10) |= 4u;
    v8 = *(this + 2);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionLogEntry_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::Vision::LogEntry::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::MergeFrom(v8, v9);
    if ((*(a2 + 10) & 8) != 0)
    {
LABEL_21:
      *(this + 10) |= 8u;
      v10 = *(this + 3);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 3);
      if (!v11)
      {
        CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionLogEntry_2eproto(this);
        v11 = *(CoreNavigation::CLP::LogEntry::Vision::LogEntry::default_instance_ + 24);
      }

      CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::MergeFrom(v10, v11);
    }
  }
}

void sub_1D0CB9130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::LogEntry::~LogEntry(CoreNavigation::CLP::LogEntry::Vision::LogEntry *this)
{
  *this = &unk_1F4CD9378;
  CoreNavigation::CLP::LogEntry::Vision::LogEntry::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::LogEntry::~LogEntry(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Vision::LogEntry::SharedDtor(CoreNavigation::CLP::LogEntry::Vision::LogEntry *this)
{
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionLogEntry_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Vision::LogEntry::default_instance_ != this)
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
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LogEntry::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 40);
  if (v2)
  {
    *(this + 32) = -1;
    if ((v2 & 2) != 0)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::Clear(this);
        v2 = *(v1 + 40);
      }
    }

    if ((v2 & 4) != 0)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        if (*(v3 + 44))
        {
          *(v3 + 32) = 0x8FFFFFFFFLL;
        }

        this = sub_1D0C77384(v3 + 8);
        *(v3 + 44) = 0;
        v2 = *(v1 + 40);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::Clear(this);
      }
    }
  }

  *(v1 + 40) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LogEntry::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::LogEntry *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
            goto LABEL_20;
          }

LABEL_44:
          *(this + 10) |= 4u;
          v20 = *(this + 2);
          if (!v20)
          {
            operator new();
          }

          v33 = 0;
          v21 = *(a2 + 1);
          if (v21 >= *(a2 + 2) || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33))
            {
              return 0;
            }
          }

          else
          {
            v33 = *v21;
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
          if (!CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::MergePartialFromCodedStream(v20, a2) || *(a2 + 36) != 1)
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
            goto LABEL_58;
          }
        }

        else
        {
          if (v6 != 4 || v7 != 2)
          {
            goto LABEL_20;
          }

LABEL_58:
          *(this + 10) |= 8u;
          v27 = *(this + 3);
          if (!v27)
          {
            operator new();
          }

          v33 = 0;
          v28 = *(a2 + 1);
          if (v28 >= *(a2 + 2) || *v28 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33))
            {
              return 0;
            }
          }

          else
          {
            v33 = *v28;
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
          if (!CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::MergePartialFromCodedStream(v27, a2) || *(a2 + 36) != 1)
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
        goto LABEL_20;
      }

      v33 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33);
        if (!result)
        {
          return result;
        }

        v9 = v33;
      }

      else
      {
        *(a2 + 1) = v8 + 1;
      }

      if (v9 + 1 <= 3)
      {
        *(this + 10) |= 1u;
        *(this + 8) = v9;
      }

      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 18)
      {
        *(a2 + 1) = v11 + 1;
LABEL_30:
        *(this + 10) |= 2u;
        v12 = *(this + 1);
        if (!v12)
        {
          operator new();
        }

        v33 = 0;
        v13 = *(a2 + 1);
        if (v13 >= *(a2 + 2) || *v13 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33))
          {
            return 0;
          }
        }

        else
        {
          v33 = *v13;
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
        if (!CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::MergePartialFromCodedStream(v12, a2) || *(a2 + 36) != 1)
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
          goto LABEL_44;
        }
      }
    }

    if (v6 == 2 && v7 == 2)
    {
      goto LABEL_30;
    }

LABEL_20:
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

unsigned int *CoreNavigation::CLP::LogEntry::Vision::LogEntry::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionLogEntry_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::Vision::LogEntry::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = v5[10];
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
  v8 = *(v5 + 2);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionLogEntry_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::Vision::LogEntry::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  if ((v5[10] & 8) != 0)
  {
LABEL_13:
    v9 = *(v5 + 3);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionLogEntry_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::Vision::LogEntry::default_instance_ + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LogEntry::ByteSize(CoreNavigation::CLP::LogEntry::Vision::LogEntry *this)
{
  LOBYTE(v2) = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_34;
  }

  if (*(this + 40))
  {
    v4 = *(this + 8);
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
      v2 = *(this + 10);
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
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v5 = *(this + 1);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionLogEntry_2eproto(0);
    v5 = *(CoreNavigation::CLP::LogEntry::Vision::LogEntry::default_instance_ + 8);
  }

  v6 = CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::ByteSize(v5);
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
  v2 = *(this + 10);
LABEL_19:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  v9 = *(this + 2);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionLogEntry_2eproto(0);
    v9 = *(CoreNavigation::CLP::LogEntry::Vision::LogEntry::default_instance_ + 16);
  }

  v10 = CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::ByteSize(v9);
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
  if ((*(this + 10) & 8) != 0)
  {
LABEL_28:
    v13 = *(this + 3);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionLogEntry_2eproto(0);
      v13 = *(CoreNavigation::CLP::LogEntry::Vision::LogEntry::default_instance_ + 24);
    }

    v14 = CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::ByteSize(v13);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
    }

    else
    {
      v16 = 1;
    }

    v3 = (v3 + v15 + v16 + 1);
  }

LABEL_34:
  *(this + 9) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::Vision::LogEntry::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::LogEntry *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Vision::LogEntry::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::Vision::LogEntry::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::LogEntry *this, const CoreNavigation::CLP::LogEntry::Vision::LogEntry *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Vision::LogEntry::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LogEntry::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::Vision::LogEntry *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
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

uint64_t CoreNavigation::CLP::LogEntry::protobuf_ShutdownFile_CoreNavigationCLPLogEntry_2eproto(CoreNavigation::CLP::LogEntry *this)
{
  if (CoreNavigation::CLP::LogEntry::LogEntry::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_);
  }

  result = CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::default_instance_;
  if (CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::default_instance_)
  {
    v2 = *(*CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::default_instance_ + 8);

    return v2();
  }

  return result;
}

void CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto_impl(CoreNavigation::CLP::LogEntry *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreNavigation/shared/cnprotobuf/CoreNavigationCLPLogEntry.pb.cc", a4);
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(v4);
  operator new();
}

uint64_t CoreNavigation::CLP::LogEntry::LogEntry::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_;
  *(this + 32) = CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::default_instance_;
  *(this + 40) = v1;
  return this;
}

double CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::SharedCtor(CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::LogEntry_TimeStamp(CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *this, const CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *a2)
{
  *this = &unk_1F4CD9408;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::MergeFrom(CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *this, const CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
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
    v6 = *(a2 + 4);
    *(this + 11) |= 8u;
    *(this + 4) = v6;
  }

  return result;
}

void sub_1D0CBA03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::CopyFrom(CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *this, const CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::Swap(CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *this, CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *a2)
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

void *CoreNavigation::CLP::LogEntry::LogEntry::SharedCtor(void *this)
{
  this[4] = 0;
  this[5] = 0;
  this[6] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::LogEntry *CoreNavigation::CLP::LogEntry::LogEntry::LogEntry(CoreNavigation::CLP::LogEntry::LogEntry *this, const CoreNavigation::CLP::LogEntry::LogEntry *a2)
{
  *this = &unk_1F4CD9480;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((this + 8));
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  CoreNavigation::CLP::LogEntry::LogEntry::MergeFrom(this, a2);
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::LogEntry::MergeFrom(CoreNavigation::CLP::LogEntry::LogEntry *this, const CoreNavigation::CLP::LogEntry::LogEntry *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      *(this + 13) |= 1u;
      v5 = *(this + 4);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 4);
      if (!v6)
      {
        CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
        v6 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 32);
      }

      CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::MergeFrom(v5, v6);
      v4 = *(a2 + 13);
    }

    if ((v4 & 2) != 0)
    {
      *(this + 13) |= 2u;
      v7 = *(this + 5);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 5);
      if (!v8)
      {
        CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
        v8 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::MergeFrom(v7, v8);
    }
  }

  return wireless_diagnostics::google::protobuf::internal::ExtensionSet::MergeFrom((this + 8), (a2 + 8));
}

void sub_1D0CBA50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::LogEntry::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::LogEntry *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::LogEntry::MergeFrom(this, lpsrc);
}

const CoreNavigation::CLP::LogEntry::LogEntry *CoreNavigation::CLP::LogEntry::LogEntry::CopyFrom(const CoreNavigation::CLP::LogEntry::LogEntry *this, const CoreNavigation::CLP::LogEntry::LogEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::LogEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::LogEntry::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::LogEntry *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v3;
    LODWORD(v3) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v3;
    LODWORD(v3) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v3;
    JUMPOUT(0x1D387E4A0);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::protobuf_ShutdownFile_CoreNavigationCLPPrivateDataShared_2eproto(CoreNavigation::CLP::LogEntry::PrivateData *this)
{
  if (CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::Accel::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::Accel::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::Accel::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::Gyro::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::Gyro::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::Gyro::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::Baro::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::Baro::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::Baro::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::RhythmicGnssStatusUpdate::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::RhythmicGnssStatusUpdate::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::RhythmicGnssStatusUpdate::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::RhythmicStreamingControl::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::RhythmicStreamingControl::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::RhythmicStreamingControl::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::Timer::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::Timer::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::Timer::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::Battery::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::Battery::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::Battery::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::MagSample::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::MagSample::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::MagSample::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::Reset::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::Reset::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::Reset::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::StepCount::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::StepCount::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::StepCount::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::Compass::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::Compass::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::Compass::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::WristState::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::WristState::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::WristState::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::default_instance_);
  }

  result = CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample::default_instance_;
  if (CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample::default_instance_)
  {
    v2 = *(*CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample::default_instance_ + 8);

    return v2();
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::TimeStamp(CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp *this)
{
  *this = &unk_1F4CD9528;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4CD9528;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::AccelSample(uint64_t this)
{
  *this = &unk_1F4CD95A0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F4CD95A0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Accel::Accel(uint64_t this)
{
  *(this + 40) = 0;
  *this = &unk_1F4CD9618;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *this = &unk_1F4CD9618;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::GyroSample(uint64_t this)
{
  *this = &unk_1F4CD9690;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F4CD9690;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Gyro::Gyro(uint64_t this)
{
  *(this + 40) = 0;
  *this = &unk_1F4CD9708;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *this = &unk_1F4CD9708;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::BaroSample(void *this)
{
  *this = &unk_1F4CD9780;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CD9780;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Baro::Baro(uint64_t this)
{
  *(this + 40) = 0;
  *this = &unk_1F4CD97F8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *this = &unk_1F4CD97F8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::ClientLocationCoordinate(void *this)
{
  *this = &unk_1F4CD9870;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CD9870;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::DaemonLocation(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation *this)
{
  *this = &unk_1F4CD98E8;
  *(this + 148) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *&result = 0xFFFFFFFFLL;
  *(this + 120) = xmmword_1D0E7A2C0;
  *(this + 17) = 0;
  *(this + 144) = 0;
  return result;
}

{
  *this = &unk_1F4CD98E8;
  *(this + 148) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *&result = 0xFFFFFFFFLL;
  *(this + 120) = xmmword_1D0E7A2C0;
  *(this + 17) = 0;
  *(this + 144) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::MapMatcherData(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CD9960;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CD9960;
  *(this + 24) = 0;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::PressureSample(void *this)
{
  *this = &unk_1F4CD99D8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CD99D8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::ClientSatelliteInfo(uint64_t this)
{
  *(this + 36) = 0;
  *(this + 40) = 0;
  *this = &unk_1F4CD9A50;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 36) = 0;
  *(this + 40) = 0;
  *this = &unk_1F4CD9A50;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::DaemonLocationPrivate(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate *this)
{
  *this = &unk_1F4CD9B40;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 76) = 0;
  *(this + 90) = 0;
  *(this + 56) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 12) = 0xFFFFFFFFLL;
  *(this + 13) = 0;
  *(this + 130) = 0u;
  *(this + 146) = 0u;
  *(this + 162) = 0u;
  *(this + 178) = 0u;
  *(this + 194) = 0u;
  *(this + 210) = 0u;
  *(this + 226) = 0u;
  *(this + 242) = 0u;
  *(this + 17) = 0u;
  *(this + 114) = 0u;
  *(this + 364) = 0;
  *(this + 258) = 0u;
  *(this + 341) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  return result;
}

{
  *this = &unk_1F4CD9B40;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 76) = 0;
  *(this + 90) = 0;
  *(this + 56) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 12) = 0xFFFFFFFFLL;
  *(this + 13) = 0;
  *(this + 130) = 0u;
  *(this + 146) = 0u;
  *(this + 162) = 0u;
  *(this + 178) = 0u;
  *(this + 194) = 0u;
  *(this + 210) = 0u;
  *(this + 226) = 0u;
  *(this + 242) = 0u;
  *(this + 17) = 0u;
  *(this + 114) = 0u;
  *(this + 364) = 0;
  *(this + 258) = 0u;
  *(this + 341) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::DaemonLocationPrivate_AltitudeInfo(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo *this)
{
  *this = &unk_1F4CD9AC8;
  *(this + 1) = 0;
  *(this + 1) = 0u;
  *&result = 0xFFFFFFFFLL;
  *(this + 4) = 0xFFFFFFFFLL;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_1F4CD9AC8;
  *(this + 1) = 0;
  *(this + 1) = 0u;
  *&result = 0xFFFFFFFFLL;
  *(this + 4) = 0xFFFFFFFFLL;
  *(this + 10) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::TechnologyStatus(uint64_t this)
{
  *this = &unk_1F4CD9BB8;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_1F4CD9BB8;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::VehicleSpeed(CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed *this)
{
  *this = &unk_1F4CD9C30;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4CD9C30;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::VehicleHeading(void *this)
{
  *this = &unk_1F4CD9CA8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CD9CA8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::XtraFileAvailable(void *this)
{
  *this = &unk_1F4CD9D20;
  this[1] = 0;
  this[2] = MEMORY[0x1E69E5958];
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CD9D20;
  this[1] = 0;
  this[2] = MEMORY[0x1E69E5958];
  this[3] = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::LocationDerivedSpeed(CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed *this)
{
  *this = &unk_1F4CD9D98;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4CD9D98;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Location::Location(CoreNavigation::CLP::LogEntry::PrivateData::Location *this)
{
  *this = &unk_1F4CD9E10;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 29) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

{
  *this = &unk_1F4CD9E10;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 29) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations::BatchedLocations(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CD9E88;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CD9E88;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::RhythmicGnssStatusUpdate::RhythmicGnssStatusUpdate(uint64_t this)
{
  *this = &unk_1F4CD9F00;
  *(this + 8) = 0x100000000;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_1F4CD9F00;
  *(this + 8) = 0x100000000;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::RhythmicStreamingControl::RhythmicStreamingControl(uint64_t this)
{
  *this = &unk_1F4CD9F78;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = &unk_1F4CD9F78;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::MotionActivity(CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CD9FF0;
  *(this + 22) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  return result;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CD9FF0;
  *(this + 22) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionState::MotionState(uint64_t this)
{
  *this = &unk_1F4CDA068;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F4CDA068;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::WorkoutUpdate(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate *this)
{
  *this = &unk_1F4CDA0E0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4CDA0E0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::MotionStateObserver(uint64_t this)
{
  *this = &unk_1F4CDA158;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F4CDA158;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::WorkoutSettings(uint64_t this)
{
  v1 = MEMORY[0x1E69E5958];
  *this = &unk_1F4CDA1D0;
  *(this + 8) = v1;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

{
  v1 = MEMORY[0x1E69E5958];
  *this = &unk_1F4CDA1D0;
  *(this + 8) = v1;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::WorkoutEvent(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent *this)
{
  *this = &unk_1F4CDA248;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = &unk_1F4CDA248;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::MotionStateMediator(uint64_t this)
{
  *this = &unk_1F4CDA2C0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F4CDA2C0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::MediatedMotionActivity(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDA338;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDA338;
  *(this + 24) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::BodyMetrics(CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics *this)
{
  *this = &unk_1F4CDA3B0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

{
  *this = &unk_1F4CDA3B0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::Natalimetry(uint64_t this)
{
  *this = &unk_1F4CDA428;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F4CDA428;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::Timer::Timer(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDA4A0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDA4A0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::DigitalElevationModel(CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel *this)
{
  *this = &unk_1F4CDA518;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_1F4CDA518;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::DirectionOfTravel(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *this)
{
  *this = &unk_1F4CDA590;
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
  *this = &unk_1F4CDA590;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapVector::MapVector(uint64_t this)
{
  *this = &unk_1F4CDA608;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F4CDA608;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::TunnelBridgeAssistance(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance *this)
{
  *this = &unk_1F4CDA680;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = &unk_1F4CDA680;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::TunnelBridgeNotification(uint64_t this)
{
  *this = &unk_1F4CDA6F8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F4CDA6F8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::TunnelEndPointAssistance(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance *this)
{
  *this = &unk_1F4CDA770;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 69) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  return result;
}

{
  *this = &unk_1F4CDA770;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 69) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::TunnelEndPoint(uint64_t this)
{
  *this = &unk_1F4CDA7E8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F4CDA7E8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData::MapsRouteHintData(CoreNavigation::CLP::LogEntry::PrivateData::MapsRouteHintData *this)
{
  *this = &unk_1F4CDA860;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_1F4CDA860;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::MapMatchingRouteHint(CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint *this)
{
  *this = &unk_1F4CDA8D8;
  *(this + 7) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = &unk_1F4CDA8D8;
  *(this + 7) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::AccessoryVehicleSpeedNotification(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *this)
{
  *this = &unk_1F4CDA950;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0u;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 20) = 0;
  return result;
}

{
  *this = &unk_1F4CDA950;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0u;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 20) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::ReachabilityState(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 24) = 0;
  *this = &unk_1F4CDA9C8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *(this + 20) = 0;
  *(this + 24) = 0;
  *this = &unk_1F4CDA9C8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Battery::Battery(uint64_t this)
{
  *this = &unk_1F4CDAA40;
  *(this + 8) = 0xBFF0000000000000;
  *(this + 16) = 0;
  *(this + 28) = 0;
  *(this + 20) = 0;
  *(this + 18) = 0;
  return this;
}

{
  *this = &unk_1F4CDAA40;
  *(this + 8) = 0xBFF0000000000000;
  *(this + 16) = 0;
  *(this + 28) = 0;
  *(this + 20) = 0;
  *(this + 18) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::DeviceStatus(CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus *this)
{
  *this = &unk_1F4CDAAB8;
  *(this + 7) = 0;
  *(this + 13) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 34) = 0u;
  return result;
}

{
  *this = &unk_1F4CDAAB8;
  *(this + 7) = 0;
  *(this + 13) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 34) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::SignalEnvironment(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *this)
{
  *this = &unk_1F4CDAB30;
  *(this + 1) = 0;
  result = NAN;
  *(this + 1) = xmmword_1D0E7A2D0;
  *(this + 8) = 0;
  return result;
}

{
  *this = &unk_1F4CDAB30;
  *(this + 1) = 0;
  result = NAN;
  *(this + 1) = xmmword_1D0E7A2D0;
  *(this + 8) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo::SignalEnvironmentInfo(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironmentInfo *this)
{
  *this = &unk_1F4CDABA8;
  *&result = 0xFFFFFFFFLL;
  *(this + 8) = xmmword_1D0E7A2E0;
  return result;
}

{
  *this = &unk_1F4CDABA8;
  *&result = 0xFFFFFFFFLL;
  *(this + 8) = xmmword_1D0E7A2E0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MagSample::MagSample(uint64_t this)
{
  *this = &unk_1F4CDAC20;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F4CDAC20;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::Magnetometer(uint64_t this)
{
  *(this + 40) = 0;
  *this = &unk_1F4CDAC98;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *this = &unk_1F4CDAC98;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::Reset::Reset(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDAD10;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDAD10;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::AccelerometerPace(CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace *this)
{
  *this = &unk_1F4CDAD88;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4CDAD88;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::FalseStepDetectorState(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDAE00;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDAE00;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::StepCountEntry(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry *this)
{
  *this = &unk_1F4CDAE78;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = MEMORY[0x1E69E5958];
  *(this + 48) = 0;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 8) = 0u;
  return result;
}

{
  *this = &unk_1F4CDAE78;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = MEMORY[0x1E69E5958];
  *(this + 48) = 0;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 8) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::PedometerPathStraightness(CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness *this)
{
  *this = &unk_1F4CDAEF0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4CDAEF0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCount::StepCount(uint64_t this)
{
  *this = &unk_1F4CDAF68;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F4CDAF68;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::MotionTypeVector3(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDAFE0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDAFE0;
  *(this + 24) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::MotionTypeDoubleVector4(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4 *this)
{
  *this = &unk_1F4CDB058;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4CDB058;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::MotionTypeCompass(uint64_t this)
{
  *this = &unk_1F4CDB0D0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0xFFFFFFFF00000000;
  *(this + 40) = 0;
  *(this + 68) = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 60) = 0;
  return this;
}

{
  *this = &unk_1F4CDB0D0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0xFFFFFFFF00000000;
  *(this + 40) = 0;
  *(this + 68) = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 60) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::CompassTypeSample(uint64_t this)
{
  *(this + 36) = 0;
  *(this + 40) = 0;
  *this = &unk_1F4CDB148;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 36) = 0;
  *(this + 40) = 0;
  *this = &unk_1F4CDB148;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Compass::Compass(uint64_t this)
{
  *(this + 40) = 0;
  *this = &unk_1F4CDB1C0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *this = &unk_1F4CDB1C0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::MotionTypeDeviceMotion(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion *this)
{
  *this = &unk_1F4CDB238;
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

{
  *this = &unk_1F4CDB238;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::SensorFusionStatus(uint64_t this)
{
  *this = &unk_1F4CDB2B0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F4CDB2B0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::DeviceMotionSample(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDB328;
  *(this + 24) = 0;
  result = 0.0;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  return result;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDB328;
  *(this + 24) = 0;
  result = 0.0;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::DeviceMotion(uint64_t this)
{
  *(this + 40) = 0;
  *this = &unk_1F4CDB3A0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *this = &unk_1F4CDB3A0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData::MotionTypeGeomagneticModelData(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeGeomagneticModelData *this)
{
  *this = &unk_1F4CDB418;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

{
  *this = &unk_1F4CDB418;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::GeomagneticModelData::GeomagneticModelData(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDB490;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDB490;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiAccessPoint::WifiAccessPoint(uint64_t this)
{
  *(this + 52) = 0;
  *this = &unk_1F4CDB508;
  *(this + 8) = 0;
  v1 = MEMORY[0x1E69E5958];
  *(this + 44) = 0;
  *(this + 48) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = v1;
  *(this + 40) = 0;
  return this;
}

{
  *(this + 52) = 0;
  *this = &unk_1F4CDB508;
  *(this + 8) = 0;
  v1 = MEMORY[0x1E69E5958];
  *(this + 44) = 0;
  *(this + 48) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = v1;
  *(this + 40) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::WifiAssociationState(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDB580;
  *(this + 8) = 0;
  return this;
}

{
  *(this + 20) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDB580;
  *(this + 8) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::WifiScanResult(uint64_t this)
{
  *(this + 40) = 0;
  *this = &unk_1F4CDB5F8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *this = &unk_1F4CDB5F8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::WifiNotification(CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification *this)
{
  *this = &unk_1F4CDB670;
  *(this + 13) = 0;
  *(this + 14) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 33) = 0u;
  return result;
}

{
  *this = &unk_1F4CDB670;
  *(this + 13) = 0;
  *(this + 14) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 33) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::GnssAvailabilityPrediction(CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *this)
{
  *this = &unk_1F4CDB6E8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4CDB6E8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::GEOLocationCoordinate2D(void *this)
{
  *this = &unk_1F4CDB760;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CDB760;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection::GEOMapFeatureBuildingSection(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuildingSection *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDB7D8;
  *(this + 6) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 80) = 0;
  return result;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDB7D8;
  *(this + 6) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 80) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureBuilding::GEOMapFeatureBuilding(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDB850;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDB850;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::GEOMapBuildingData(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData *this)
{
  *this = &unk_1F4CDB8C8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

{
  *this = &unk_1F4CDB8C8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::GEOMapFeatureTropicalSavannaBranch(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDB940;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDB940;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::GEOMapFeatureTropicalSavannaBoundingBox(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox *this)
{
  *this = &unk_1F4CDB9B8;
  *(this + 8) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

{
  *this = &unk_1F4CDB9B8;
  *(this + 8) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::GEOMapFeatureTropicalSavanna(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *this = &unk_1F4CDBAA8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  return result;
}

{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *this = &unk_1F4CDBAA8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::GEOMapFeatureTropicalSavanna_TreeFeatures(uint64_t this)
{
  *this = &unk_1F4CDBA30;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = &unk_1F4CDBA30;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::GEOMapTropicalSavannaData(uint64_t this)
{
  *(this + 44) = 0;
  *(this + 40) = 0;
  *this = &unk_1F4CDBB20;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 44) = 0;
  *(this + 40) = 0;
  *this = &unk_1F4CDBB20;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::WatchOrientation(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDBB98;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDBB98;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::WristState::WristState(void *this)
{
  this[4] = 0;
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDBC10;
  *(this + 23) = 0;
  return this;
}

{
  this[4] = 0;
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDBC10;
  *(this + 23) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::WatchState::WatchState(CoreNavigation::CLP::LogEntry::PrivateData::WatchState *this)
{
  *this = &unk_1F4CDBC88;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_1F4CDBC88;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::PlaceInference(CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference *this)
{
  *this = &unk_1F4CDBD00;
  result = 0.0;
  *(this + 1) = 0;
  v2 = MEMORY[0x1E69E5958];
  *(this + 2) = MEMORY[0x1E69E5958];
  *(this + 3) = v2;
  *(this + 4) = 0;
  return result;
}

{
  *this = &unk_1F4CDBD00;
  result = 0.0;
  *(this + 1) = 0;
  v2 = MEMORY[0x1E69E5958];
  *(this + 2) = MEMORY[0x1E69E5958];
  *(this + 3) = v2;
  *(this + 4) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::RoutineVisit(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit *this)
{
  *this = &unk_1F4CDBD78;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

{
  *this = &unk_1F4CDBD78;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::OutdoorUpdate(CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate *this)
{
  *this = &unk_1F4CDBDF0;
  *(this + 14) = 0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0;
  return result;
}

{
  *this = &unk_1F4CDBDF0;
  *(this + 14) = 0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample::InertialOdometrySample(CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample *this)
{
  *this = &unk_1F4CDBE68;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 71) = 0;
  *(this + 84) = 0;
  *(this + 76) = 0;
  return result;
}

{
  *this = &unk_1F4CDBE68;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 71) = 0;
  *(this + 84) = 0;
  *(this + 76) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::default_instance_;
  *(this + 96) = v1;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::default_instance_;
  this[8] = CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::default_instance_;
  this[11] = CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::default_instance_;
  this[13] = v1;
  this[17] = CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::default_instance_;
  this[26] = v1;
  this[40] = CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::default_instance_;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::Location::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  this[2] = v1;
  this[3] = CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_;
  this[5] = CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::default_instance_;
  v2 = CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::default_instance_;
  this[7] = CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::default_instance_;
  this[8] = v2;
  v3 = CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::default_instance_;
  this[10] = CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::default_instance_;
  this[11] = v3;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  *(this + 64) = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  *(this + 80) = v1;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionState::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  *(this + 16) = v1;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  *(this + 16) = v1;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  this[2] = v1;
  v2 = CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::default_instance_;
  this[3] = v1;
  this[4] = v2;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  *(this + 16) = v1;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  *(this + 16) = v1;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapVector::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  *(this + 16) = v1;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  *(this + 16) = v1;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  *(this + 16) = v1;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  *(this + 16) = v1;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  *(this + 16) = v1;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::InitAsDefaultInstance(void *this)
{
  this[1] = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::Battery::default_instance_;
  this[3] = CoreNavigation::CLP::LogEntry::PrivateData::ReachabilityState::default_instance_;
  this[4] = v1;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  this[2] = v1;
  this[3] = v1;
  this[13] = CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::default_instance_;
  this[17] = CoreNavigation::CLP::LogEntry::PrivateData::FalseStepDetectorState::default_instance_;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PedometerPathStraightness::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  *(this + 32) = v1;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::StepCount::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  *(this + 16) = v1;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::default_instance_;
  this[2] = v1;
  this[7] = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::default_instance_;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeCompass::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  *(this + 16) = v1;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeVector3::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDoubleVector4::default_instance_;
  this[2] = v1;
  this[3] = v1;
  this[4] = v1;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  this[2] = v1;
  this[4] = CoreNavigation::CLP::LogEntry::PrivateData::SensorFusionStatus::default_instance_;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::InitAsDefaultInstance(void *this)
{
  this[1] = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::WifiScanResult::default_instance_;
  this[3] = CoreNavigation::CLP::LogEntry::PrivateData::WifiAssociationState::default_instance_;
  this[4] = v1;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::InitAsDefaultInstance(uint64_t this)
{
  *(this + 8) = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  *(this + 56) = CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::default_instance_;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::InitAsDefaultInstance(uint64_t this)
{
  *(this + 8) = CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::default_instance_;
  *(this + 56) = CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::default_instance_;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::WatchState::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  this[2] = v1;
  this[3] = CoreNavigation::CLP::LogEntry::PrivateData::WristState::default_instance_;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::default_instance_;
  this[2] = v1;
  this[3] = v1;
  this[4] = v1;
  v2 = CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::default_instance_;
  this[5] = CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::default_instance_;
  this[6] = v2;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DominantMotionModeType_IsValid(CoreNavigation::CLP::LogEntry::PrivateData *this)
{
  v1 = this;
  result = 1;
  if (v1 <= 11804)
  {
    if (v1 > 2009)
    {
      if (((v1 - 2010) > 0x3D || ((1 << (v1 + 38)) & 0x2488004000005401) == 0) && ((v1 - 2101) > 0x31 || ((1 << (v1 - 53)) & 0x2000000000011) == 0) && (v1 - 3015) >= 2)
      {
        return 0;
      }

      return result;
    }

    if (v1 < 0xC)
    {
      return result;
    }

    v4 = v1 - 41;
    if (v4 <= 0x3B)
    {
      v5 = 1 << v4;
      v6 = 0x800000003F08801;
      goto LABEL_33;
    }

    return 0;
  }

  if (v1 <= 15651)
  {
    if (v1 > 15329)
    {
      if ((v1 - 15562) <= 0x3A && ((1 << (v1 + 54)) & 0x401000040000001) != 0 || (v1 - 15330) <= 0x1E && ((1 << (v1 + 30)) & 0x40100001) != 0)
      {
        return result;
      }

      v3 = 15460;
    }

    else if (v1 <= 15054)
    {
      if (v1 == 11805 || v1 == 12150)
      {
        return result;
      }

      v3 = 15030;
    }

    else
    {
      if ((v1 - 15100) <= 0x32 && ((1 << (v1 + 4)) & 0x4000000000401) != 0 || (v1 - 15230) <= 0x19 && ((1 << (v1 - 126)) & 0x2000401) != 0)
      {
        return result;
      }

      v3 = 15055;
    }

    goto LABEL_51;
  }

  if (v1 > 18199)
  {
    if (v1 > 19149)
    {
      if (v1 <= 90602)
      {
        if (v1 == 19150)
        {
          return result;
        }

        v3 = 19160;
      }

      else
      {
        if (v1 == 90603 || v1 == 515621)
        {
          return result;
        }

        v3 = 515652;
      }
    }

    else
    {
      if ((v1 - 18200) <= 0x28 && ((1 << (v1 - 24)) & 0x10002000001) != 0 || v1 == 19030)
      {
        return result;
      }

      v3 = 19090;
    }

    goto LABEL_51;
  }

  if (v1 > 15732)
  {
    if (v1 == 15733 || v1 == 17150)
    {
      return result;
    }

    v3 = 18070;
LABEL_51:
    if (v1 == v3)
    {
      return result;
    }

    return 0;
  }

  v7 = v1 - 15652;
  if (v7 > 0x3A)
  {
    return 0;
  }

  v5 = 1 << v7;
  v6 = 0x400000000840101;
LABEL_33:
  if ((v5 & v6) == 0)
  {
    return 0;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp *CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::TimeStamp(CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp *this, const CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp *a2)
{
  *this = &unk_1F4CD9528;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp *this, const CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp *a2)
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

void sub_1D0CBF1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::Clear(uint64_t this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp *this)
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

double CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp *this, const CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::Swap(CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp *this, CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::AccelSample *CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::AccelSample(CoreNavigation::CLP::LogEntry::PrivateData::AccelSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::AccelSample *a2)
{
  *this = &unk_1F4CD95A0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::MergeFrom(this, a2);
  return this;
}