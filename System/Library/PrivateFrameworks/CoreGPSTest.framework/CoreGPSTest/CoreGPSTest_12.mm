void sub_24553754C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::ReceivedTimeStamp::~ReceivedTimeStamp(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this)
{
  *this = &unk_285861428;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861428;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861428;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceivedTimeStamp::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CLP::LogEntry::PrivateData::ReceivedTimeStamp::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t CLP::LogEntry::PrivateData::ReceivedTimeStamp::ByteSize(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this)
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

double CLP::LogEntry::PrivateData::ReceivedTimeStamp::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::ReceivedTimeStamp::CopyFrom(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, const CLP::LogEntry::PrivateData::ReceivedTimeStamp *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::ReceivedTimeStamp::Swap(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, CLP::LogEntry::PrivateData::ReceivedTimeStamp *a2)
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

double CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::SharedCtor(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this)
{
  *(this + 16) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MeasurementReportCallbackContents(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, const CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *a2)
{
  *this = &unk_2858614A0;
  *(this + 24) = 0u;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 16) = 0;
  *(this + 8) = 0u;
  *(this + 10) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergeFrom(this, a2);
  return this;
}

void sub_245537B8C(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v1 + 13);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v3);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

float CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergeFrom(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, const CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v39);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v39);
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
      CLP::LogEntry::PrivateData::SvInfo::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 8);
    }

    while (v7 < v6);
  }

  v12 = *(this + 14);
  v13 = *(a2 + 14);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
  LODWORD(v14) = *(a2 + 14);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v39);
      }

      v16 = *(*(a2 + 6) + 8 * v15);
      v17 = *(this + 15);
      v18 = *(this + 14);
      if (v18 >= v17)
      {
        if (v17 == *(this + 16))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
          v17 = *(this + 15);
        }

        *(this + 15) = v17 + 1;
        operator new();
      }

      v19 = *(this + 6);
      *(this + 14) = v18 + 1;
      CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergeFrom(*(v19 + 8 * v18), v16);
      ++v15;
      v14 = *(a2 + 14);
    }

    while (v15 < v14);
  }

  v20 = *(this + 28);
  v21 = *(a2 + 28);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
  LODWORD(v23) = *(a2 + 28);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v39);
      }

      v25 = *(*(a2 + 13) + 8 * v24);
      v26 = *(this + 29);
      v27 = *(this + 28);
      if (v27 >= v26)
      {
        if (v26 == *(this + 30))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
          v26 = *(this + 29);
        }

        *(this + 29) = v26 + 1;
        operator new();
      }

      v28 = *(this + 13);
      *(this + 28) = v27 + 1;
      v22 = CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergeFrom(*(v28 + 8 * v27), v25);
      ++v24;
      v23 = *(a2 + 28);
    }

    while (v24 < v23);
  }

  LOBYTE(v29) = *(a2 + 132);
  if (v29)
  {
    if (*(a2 + 132))
    {
      *(this + 33) |= 1u;
      v30 = *(this + 1);
      if (!v30)
      {
        operator new();
      }

      v31 = *(a2 + 1);
      if (!v31)
      {
        v31 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 8);
      }

      v22 = CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergeFrom(v30, v31);
      v29 = *(a2 + 33);
      if ((v29 & 2) == 0)
      {
LABEL_36:
        if ((v29 & 0x10) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_51;
      }
    }

    else if ((*(a2 + 132) & 2) == 0)
    {
      goto LABEL_36;
    }

    *(this + 33) |= 2u;
    v32 = *(this + 2);
    if (!v32)
    {
      operator new();
    }

    v33 = *(a2 + 2);
    if (!v33)
    {
      v33 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 16);
    }

    v22 = CLP::LogEntry::PrivateData::MeasurementReport::MergeFrom(v32, v33);
    v29 = *(a2 + 33);
    if ((v29 & 0x10) == 0)
    {
LABEL_37:
      if ((v29 & 0x20) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_56;
    }

LABEL_51:
    *(this + 33) |= 0x10u;
    v34 = *(this + 9);
    if (!v34)
    {
      operator new();
    }

    v35 = *(a2 + 9);
    if (!v35)
    {
      v35 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 72);
    }

    CLP::LogEntry::PrivateData::TimeConversionInfo::MergeFrom(v34, v35);
    v29 = *(a2 + 33);
    if ((v29 & 0x20) == 0)
    {
LABEL_38:
      if ((v29 & 0x40) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_57;
    }

LABEL_56:
    v22 = *(a2 + 10);
    *(this + 33) |= 0x20u;
    *(this + 10) = v22;
    v29 = *(a2 + 33);
    if ((v29 & 0x40) == 0)
    {
LABEL_39:
      if ((v29 & 0x80) == 0)
      {
        return *&v22;
      }

LABEL_58:
      *(this + 33) |= 0x80u;
      v36 = *(this + 12);
      if (!v36)
      {
        operator new();
      }

      v37 = *(a2 + 12);
      if (!v37)
      {
        v37 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 96);
      }

      *&v22 = CLP::LogEntry::PrivateData::KlobucharModelParameters::MergeFrom(v36, v37);
      return *&v22;
    }

LABEL_57:
    v22 = *(a2 + 11);
    *(this + 33) |= 0x40u;
    *(this + 11) = v22;
    if ((*(a2 + 33) & 0x80) == 0)
    {
      return *&v22;
    }

    goto LABEL_58;
  }

  return *&v22;
}

void sub_24553822C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::~MeasurementReportCallbackContents(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this)
{
  *this = &unk_2858614A0;
  v2 = (this + 104);
  CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 6);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::~MeasurementReportCallbackContents(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ != this)
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

    v4 = v1[9];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    this = v1[12];
    if (this)
    {
      v5 = *(*this + 8);

      return v5();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_;
  if (!CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::Clear(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this)
{
  LOBYTE(v2) = *(this + 132);
  if (v2)
  {
    if (*(this + 132))
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
        v2 = *(this + 33);
      }
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(this + 2);
      if (v4)
      {
        CLP::LogEntry::PrivateData::MeasurementReport::Clear(v4);
        v2 = *(this + 33);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v5 = *(this + 9);
      if (v5)
      {
        CLP::LogEntry::PrivateData::TimeConversionInfo::Clear(v5);
        v2 = *(this + 33);
      }
    }

    *(this + 10) = 0;
    *(this + 11) = 0;
    if ((v2 & 0x80) != 0)
    {
      v6 = *(this + 12);
      if (v6)
      {
        v7 = *(v6 + 52);
        if (v7)
        {
          *(v6 + 40) = 0;
          *(v6 + 24) = 0u;
          *(v6 + 8) = 0u;
        }

        if ((v7 & 0xFF00) != 0)
        {
          *(v6 + 44) = 0;
        }

        *(v6 + 52) = 0;
      }
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 24);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 48);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 104);
  *(this + 33) = 0;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v6 == 3)
          {
            if (v7 != 2)
            {
              goto LABEL_39;
            }

LABEL_66:
            v24 = *(this + 9);
            v25 = *(this + 8);
            if (v25 >= v24)
            {
              if (v24 == *(this + 10))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
                v24 = *(this + 9);
              }

              *(this + 9) = v24 + 1;
              operator new();
            }

            v26 = *(this + 3);
            *(this + 8) = v25 + 1;
            v27 = *(v26 + 8 * v25);
            v71[0] = 0;
            v28 = *(a2 + 1);
            if (v28 >= *(a2 + 2) || *v28 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71))
              {
                return 0;
              }
            }

            else
            {
              v71[0] = *v28;
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
            if (!CLP::LogEntry::PrivateData::SvInfo::MergePartialFromCodedStream(v27, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v31 = *(a2 + 14);
            v14 = __OFSUB__(v31, 1);
            v32 = v31 - 1;
            if (v32 < 0 == v14)
            {
              *(a2 + 14) = v32;
            }

            v23 = *(a2 + 1);
            if (v23 < *(a2 + 2))
            {
              v33 = *v23;
              if (v33 == 26)
              {
                goto LABEL_65;
              }

              if (v33 == 34)
              {
                goto LABEL_83;
              }
            }
          }

          else
          {
            if (v6 != 4 || v7 != 2)
            {
              goto LABEL_39;
            }

            while (2)
            {
              v34 = *(this + 15);
              v35 = *(this + 14);
              if (v35 >= v34)
              {
                if (v34 == *(this + 16))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
                  v34 = *(this + 15);
                }

                *(this + 15) = v34 + 1;
                operator new();
              }

              v36 = *(this + 6);
              *(this + 14) = v35 + 1;
              v37 = *(v36 + 8 * v35);
              v71[0] = 0;
              v38 = *(a2 + 1);
              if (v38 >= *(a2 + 2) || *v38 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71))
                {
                  return 0;
                }
              }

              else
              {
                v71[0] = *v38;
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
              if (!CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergePartialFromCodedStream(v37, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v41 = *(a2 + 14);
              v14 = __OFSUB__(v41, 1);
              v42 = v41 - 1;
              if (v42 < 0 == v14)
              {
                *(a2 + 14) = v42;
              }

              v23 = *(a2 + 1);
              if (v23 < *(a2 + 2))
              {
                v43 = *v23;
                if (v43 == 34)
                {
LABEL_83:
                  *(a2 + 1) = v23 + 1;
                  continue;
                }

                if (v43 == 42)
                {
                  *(a2 + 1) = v23 + 1;
LABEL_102:
                  *(this + 33) |= 0x10u;
                  v44 = *(this + 9);
                  if (!v44)
                  {
                    operator new();
                  }

                  v71[0] = 0;
                  v45 = *(a2 + 1);
                  if (v45 >= *(a2 + 2) || *v45 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v71[0] = *v45;
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
                  if (!CLP::LogEntry::PrivateData::TimeConversionInfo::MergePartialFromCodedStream(v44, a2) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v48 = *(a2 + 14);
                  v14 = __OFSUB__(v48, 1);
                  v49 = v48 - 1;
                  if (v49 < 0 == v14)
                  {
                    *(a2 + 14) = v49;
                  }

                  v50 = *(a2 + 1);
                  if (v50 < *(a2 + 2) && *v50 == 49)
                  {
                    *(a2 + 1) = v50 + 1;
LABEL_116:
                    *v71 = 0;
                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v71) & 1) == 0)
                    {
                      return 0;
                    }

                    *(this + 10) = *v71;
                    *(this + 33) |= 0x20u;
                    v51 = *(a2 + 1);
                    if (v51 < *(a2 + 2) && *v51 == 57)
                    {
                      *(a2 + 1) = v51 + 1;
LABEL_120:
                      *v71 = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v71) & 1) == 0)
                      {
                        return 0;
                      }

                      *(this + 11) = *v71;
                      v10 = *(this + 33) | 0x40;
                      *(this + 33) = v10;
                      v52 = *(a2 + 1);
                      if (v52 < *(a2 + 2) && *v52 == 66)
                      {
                        *(a2 + 1) = v52 + 1;
                        goto LABEL_124;
                      }
                    }
                  }
                }
              }

              break;
            }
          }
        }

        else
        {
          if (v6 != 1)
          {
            if (v6 != 2 || v7 != 2)
            {
              goto LABEL_39;
            }

            goto LABEL_52;
          }

          if (v7 != 2)
          {
            goto LABEL_39;
          }

          *(this + 33) |= 1u;
          v8 = *(this + 1);
          if (!v8)
          {
            operator new();
          }

          v71[0] = 0;
          v9 = *(a2 + 1);
          if (v9 >= *(a2 + 2) || *v9 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71))
            {
              return 0;
            }
          }

          else
          {
            v71[0] = *v9;
            *(a2 + 1) = v9 + 1;
          }

          v11 = *(a2 + 14);
          v12 = *(a2 + 15);
          *(a2 + 14) = v11 + 1;
          if (v11 >= v12)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
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
LABEL_52:
            *(this + 33) |= 2u;
            v17 = *(this + 2);
            if (!v17)
            {
              operator new();
            }

            v71[0] = 0;
            v18 = *(a2 + 1);
            if (v18 >= *(a2 + 2) || *v18 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71))
              {
                return 0;
              }
            }

            else
            {
              v71[0] = *v18;
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
            if (!CLP::LogEntry::PrivateData::MeasurementReport::MergePartialFromCodedStream(v17, a2) || *(a2 + 36) != 1)
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
LABEL_65:
              *(a2 + 1) = v23 + 1;
              goto LABEL_66;
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
        if (v7 != 1)
        {
          goto LABEL_39;
        }

        goto LABEL_120;
      }

      if (v6 == 8)
      {
        if (v7 != 2)
        {
          goto LABEL_39;
        }

        v10 = *(this + 33);
LABEL_124:
        *(this + 33) = v10 | 0x80;
        v53 = *(this + 12);
        if (!v53)
        {
          operator new();
        }

        v71[0] = 0;
        v54 = *(a2 + 1);
        if (v54 >= *(a2 + 2) || *v54 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71))
          {
            return 0;
          }
        }

        else
        {
          v71[0] = *v54;
          *(a2 + 1) = v54 + 1;
        }

        v55 = *(a2 + 14);
        v56 = *(a2 + 15);
        *(a2 + 14) = v55 + 1;
        if (v55 >= v56)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::KlobucharModelParameters::MergePartialFromCodedStream(v53, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v57 = *(a2 + 14);
        v14 = __OFSUB__(v57, 1);
        v58 = v57 - 1;
        if (v58 < 0 == v14)
        {
          *(a2 + 14) = v58;
        }

        v59 = *(a2 + 1);
        if (v59 < *(a2 + 2) && *v59 == 74)
        {
          goto LABEL_137;
        }
      }

      else
      {
        if (v6 != 9 || v7 != 2)
        {
          goto LABEL_39;
        }

        while (1)
        {
          v60 = *(this + 29);
          v61 = *(this + 28);
          if (v61 >= v60)
          {
            if (v60 == *(this + 30))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
              v60 = *(this + 29);
            }

            *(this + 29) = v60 + 1;
            operator new();
          }

          v62 = *(this + 13);
          *(this + 28) = v61 + 1;
          v63 = *(v62 + 8 * v61);
          v71[0] = 0;
          v64 = *(a2 + 1);
          if (v64 >= *(a2 + 2) || *v64 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71))
            {
              return 0;
            }
          }

          else
          {
            v71[0] = *v64;
            *(a2 + 1) = v64 + 1;
          }

          v65 = *(a2 + 14);
          v66 = *(a2 + 15);
          *(a2 + 14) = v65 + 1;
          if (v65 >= v66)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergePartialFromCodedStream(v63, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v67 = *(a2 + 14);
          v14 = __OFSUB__(v67, 1);
          v68 = v67 - 1;
          if (v68 < 0 == v14)
          {
            *(a2 + 14) = v68;
          }

          v59 = *(a2 + 1);
          v69 = *(a2 + 2);
          if (v59 >= v69 || *v59 != 74)
          {
            break;
          }

LABEL_137:
          *(a2 + 1) = v59 + 1;
        }

        if (v59 == v69 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
        goto LABEL_39;
      }

      goto LABEL_102;
    }

    if (v6 == 6 && v7 == 1)
    {
      goto LABEL_116;
    }

LABEL_39:
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

uint64_t CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 132);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 132);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 24) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 32));
  }

  if (*(v5 + 56) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 48) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 56));
  }

  v11 = *(v5 + 132);
  if ((v11 & 0x10) != 0)
  {
    v12 = *(v5 + 72);
    if (!v12)
    {
      v12 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 72);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v12, a2, a4);
    v11 = *(v5 + 132);
    if ((v11 & 0x20) == 0)
    {
LABEL_17:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }
  }

  else if ((v11 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 80), a3);
  v11 = *(v5 + 132);
  if ((v11 & 0x40) == 0)
  {
LABEL_18:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 88), a3);
  if ((*(v5 + 132) & 0x80) == 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  v13 = *(v5 + 96);
  if (!v13)
  {
    v13 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 96);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v13, a2, a4);
LABEL_28:
  if (*(v5 + 112) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, *(*(v5 + 104) + 8 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 112));
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::ByteSize(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this)
{
  LOBYTE(v2) = *(this + 132);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_40;
  }

  if (*(this + 132))
  {
    v5 = *(this + 1);
    if (!v5)
    {
      v5 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 8);
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
    v2 = *(this + 33);
    if ((v2 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v3 = 0;
  if ((*(this + 132) & 2) != 0)
  {
LABEL_15:
    v8 = *(this + 2);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 16);
    }

    v9 = CLP::LogEntry::PrivateData::MeasurementReport::ByteSize(v8);
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
    v2 = *(this + 33);
  }

LABEL_21:
  if ((v2 & 0x10) != 0)
  {
    v12 = *(this + 9);
    if (!v12)
    {
      v12 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 72);
    }

    v13 = CLP::LogEntry::PrivateData::TimeConversionInfo::ByteSize(v12);
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
    v2 = *(this + 33);
  }

  v16 = v3 + 9;
  if ((v2 & 0x20) == 0)
  {
    v16 = v3;
  }

  if ((v2 & 0x40) != 0)
  {
    v4 = v16 + 9;
  }

  else
  {
    v4 = v16;
  }

  if ((v2 & 0x80) != 0)
  {
    v17 = *(this + 12);
    if (!v17)
    {
      v17 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 96);
    }

    v18 = CLP::LogEntry::PrivateData::KlobucharModelParameters::ByteSize(v17);
    v19 = v18;
    if (v18 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
    }

    else
    {
      v20 = 1;
    }

    v4 += v19 + v20 + 1;
  }

LABEL_40:
  v21 = *(this + 8);
  v22 = v21 + v4;
  if (v21 >= 1)
  {
    v23 = 0;
    do
    {
      v24 = CLP::LogEntry::PrivateData::SvInfo::ByteSize(*(*(this + 3) + 8 * v23));
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

    while (v23 < *(this + 8));
  }

  v27 = *(this + 14);
  v28 = v27 + v22;
  if (v27 >= 1)
  {
    v29 = 0;
    do
    {
      v30 = CLP::LogEntry::PrivateData::ReceiverBandCorrections::ByteSize(*(*(this + 6) + 8 * v29));
      v31 = v30;
      if (v30 >= 0x80)
      {
        v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
      }

      else
      {
        v32 = 1;
      }

      v28 += v31 + v32;
      ++v29;
    }

    while (v29 < *(this + 14));
  }

  v33 = *(this + 28);
  v34 = (v33 + v28);
  if (v33 >= 1)
  {
    v35 = 0;
    do
    {
      v36 = CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::ByteSize(*(*(this + 13) + 8 * v35));
      v37 = v36;
      if (v36 >= 0x80)
      {
        v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36);
      }

      else
      {
        v38 = 1;
      }

      v34 = (v37 + v34 + v38);
      ++v35;
    }

    while (v35 < *(this + 28));
  }

  *(this + 32) = v34;
  return v34;
}

float CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergeFrom(this, lpsrc);
}

float CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::CopyFrom(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, const CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergeFrom(this, a2);
  }

  return result;
}

CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::Swap(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *a2)
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
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v6 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v6;
    v7 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v7;
    v8 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v8;
    v9 = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v9;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v10 = *(v3 + 33);
    *(v3 + 33) = *(a2 + 33);
    *(a2 + 33) = v10;
    v11 = *(v3 + 32);
    *(v3 + 32) = *(a2 + 32);
    *(a2 + 32) = v11;
  }

  return this;
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

uint64_t proto::gnss::protobuf_ShutdownFile_GnssTypes_2eproto(proto::gnss *this)
{
  if (proto::gnss::Position::default_instance_)
  {
    (*(*proto::gnss::Position::default_instance_ + 8))(proto::gnss::Position::default_instance_);
  }

  if (proto::gnss::Velocity::default_instance_)
  {
    (*(*proto::gnss::Velocity::default_instance_ + 8))(proto::gnss::Velocity::default_instance_);
  }

  if (proto::gnss::Time::default_instance_)
  {
    (*(*proto::gnss::Time::default_instance_ + 8))(proto::gnss::Time::default_instance_);
  }

  if (proto::gnss::Fix::default_instance_)
  {
    (*(*proto::gnss::Fix::default_instance_ + 8))(proto::gnss::Fix::default_instance_);
  }

  if (proto::gnss::TimeTransferData::default_instance_)
  {
    (*(*proto::gnss::TimeTransferData::default_instance_ + 8))(proto::gnss::TimeTransferData::default_instance_);
  }

  if (proto::gnss::TimeTransferDataExtend::default_instance_)
  {
    (*(*proto::gnss::TimeTransferDataExtend::default_instance_ + 8))(proto::gnss::TimeTransferDataExtend::default_instance_);
  }

  if (proto::gnss::RawPressureSample::default_instance_)
  {
    (*(*proto::gnss::RawPressureSample::default_instance_ + 8))(proto::gnss::RawPressureSample::default_instance_);
  }

  if (proto::gnss::SensorSample3Axis::default_instance_)
  {
    (*(*proto::gnss::SensorSample3Axis::default_instance_ + 8))(proto::gnss::SensorSample3Axis::default_instance_);
  }

  if (proto::gnss::SvId::default_instance_)
  {
    (*(*proto::gnss::SvId::default_instance_ + 8))(proto::gnss::SvId::default_instance_);
  }

  if (proto::gnss::PwrMeasurement::default_instance_)
  {
    (*(*proto::gnss::PwrMeasurement::default_instance_ + 8))(proto::gnss::PwrMeasurement::default_instance_);
  }

  if (proto::gnss::DecodedRti::default_instance_)
  {
    (*(*proto::gnss::DecodedRti::default_instance_ + 8))(proto::gnss::DecodedRti::default_instance_);
  }

  result = proto::gnss::DecodedExtendedEphemeris::default_instance_;
  if (proto::gnss::DecodedExtendedEphemeris::default_instance_)
  {
    v2 = *(*proto::gnss::DecodedExtendedEphemeris::default_instance_ + 8);

    return v2();
  }

  return result;
}

void proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(proto::gnss *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(void)::already_here & 1) == 0)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(void)::already_here = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "Sources/Protobuf/Generated/GnssTypes.pb.cc", a4);
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(v4, v5, v6, v7);
    operator new();
  }
}

double proto::gnss::Position::Position(proto::gnss::Position *this)
{
  *this = &unk_2858619C8;
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
  *this = &unk_2858619C8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  return result;
}

double proto::gnss::Velocity::Velocity(proto::gnss::Velocity *this)
{
  *this = &unk_285861A40;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = &unk_285861A40;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

double proto::gnss::Time::Time(proto::gnss::Time *this)
{
  *this = &unk_285861AB8;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return result;
}

{
  *this = &unk_285861AB8;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return result;
}

double proto::gnss::Fix::Fix(proto::gnss::Fix *this)
{
  *this = &unk_285861B30;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = &unk_285861B30;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

double proto::gnss::TimeTransferData::TimeTransferData(proto::gnss::TimeTransferData *this)
{
  *(this + 16) = 0;
  *this = &unk_285861BA8;
  *(this + 1) = 0;
  result = 0.0;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *(this + 16) = 0;
  *this = &unk_285861BA8;
  *(this + 1) = 0;
  result = 0.0;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  return result;
}

double proto::gnss::TimeTransferDataExtend::TimeTransferDataExtend(proto::gnss::TimeTransferDataExtend *this)
{
  *this = &unk_285861C20;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_285861C20;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t proto::gnss::RawPressureSample::RawPressureSample(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285861C98;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285861C98;
  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::SensorSample3Axis::SensorSample3Axis(uint64_t this)
{
  *this = &unk_285861D10;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_285861D10;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t proto::gnss::SvId::SvId(uint64_t this)
{
  *this = &unk_285861D88;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_285861D88;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double proto::gnss::PwrMeasurement::PwrMeasurement(proto::gnss::PwrMeasurement *this)
{
  *this = &unk_285861E00;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = &unk_285861E00;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

uint64_t proto::gnss::DecodedRti::DecodedRti(uint64_t this)
{
  *(this + 20) = 0;
  *this = &unk_285861E78;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *(this + 20) = 0;
  *this = &unk_285861E78;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t proto::gnss::DecodedExtendedEphemeris::DecodedExtendedEphemeris(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 28) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285861EF0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 32) = 0;
  *(this + 28) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285861EF0;
  *(this + 24) = 0;
  return this;
}

void proto::gnss::Fix::InitAsDefaultInstance(proto::gnss::Fix *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Time::default_instance_;
  if (!proto::gnss::Time::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Time::default_instance_;
  }

  *(this + 1) = v5;
  v6 = proto::gnss::Position::default_instance_;
  if (!proto::gnss::Position::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Position::default_instance_;
  }

  *(this + 2) = v6;
  v7 = proto::gnss::Velocity::default_instance_;
  if (!proto::gnss::Velocity::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v7 = proto::gnss::Velocity::default_instance_;
  }

  *(this + 3) = v7;
}

void proto::gnss::TimeTransferData::InitAsDefaultInstance(proto::gnss::TimeTransferData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Time::default_instance_;
  if (!proto::gnss::Time::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Time::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::TimeTransferDataExtend::InitAsDefaultInstance(proto::gnss::TimeTransferDataExtend *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::TimeTransferData::default_instance_;
  if (!proto::gnss::TimeTransferData::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::TimeTransferData::default_instance_;
  }

  *(this + 1) = v5;
}

BOOL proto::gnss::Reliability_IsValid(proto::gnss *this)
{
  v1 = this;
  result = 1;
  if (v1 > 0x32 || ((1 << v1) & 0x4000002000403) == 0)
  {
    return v1 == 75;
  }

  return result;
}

double proto::gnss::Position::SharedCtor(proto::gnss::Position *this)
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

proto::gnss::Position *proto::gnss::Position::Position(proto::gnss::Position *this, const proto::gnss::Position *a2)
{
  *this = &unk_2858619C8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  proto::gnss::Position::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Position::MergeFrom(proto::gnss::Position *this, const proto::gnss::Position *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v10 = *(a2 + 1);
    *(this + 24) |= 1u;
    *(this + 1) = v10;
    v4 = *(a2 + 24);
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

  v11 = *(a2 + 2);
  *(this + 24) |= 2u;
  *(this + 2) = v11;
  v4 = *(a2 + 24);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v12 = *(a2 + 3);
  *(this + 24) |= 4u;
  *(this + 3) = v12;
  v4 = *(a2 + 24);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = *(a2 + 4);
  *(this + 24) |= 8u;
  *(this + 4) = v13;
  v4 = *(a2 + 24);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_30:
    v15 = *(a2 + 6);
    *(this + 24) |= 0x20u;
    *(this + 6) = v15;
    v4 = *(a2 + 24);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_29:
  v14 = *(a2 + 5);
  *(this + 24) |= 0x10u;
  *(this + 5) = v14;
  v4 = *(a2 + 24);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_31:
  v16 = *(a2 + 7);
  *(this + 24) |= 0x40u;
  *(this + 7) = v16;
  v4 = *(a2 + 24);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 8);
    *(this + 24) |= 0x80u;
    *(this + 8) = v5;
    v4 = *(a2 + 24);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 18);
      *(this + 24) |= 0x100u;
      *(this + 18) = v6;
      v4 = *(a2 + 24);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 19);
      if (!proto::gnss::Reliability_IsValid(v7))
      {
        __assert_rtn("set_reliability", "GnssTypes.pb.h", 1975, "::proto::gnss::Reliability_IsValid(value)");
      }

      *(this + 24) |= 0x200u;
      *(this + 19) = v7;
      v4 = *(a2 + 24);
    }

    if ((v4 & 0x400) != 0)
    {
      v8 = *(a2 + 10);
      *(this + 24) |= 0x400u;
      *(this + 10) = v8;
      v4 = *(a2 + 24);
    }

    if ((v4 & 0x800) != 0)
    {
      v9 = *(a2 + 22);
      if (v9 >= 6)
      {
        __assert_rtn("set_gnss_content_in_fix", "GnssTypes.pb.h", 2020, "::proto::gnss::GnssContent_IsValid(value)");
      }

      *(this + 24) |= 0x800u;
      *(this + 22) = v9;
    }
  }
}

void sub_24553A6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Position::~Position(proto::gnss::Position *this)
{
  *this = &unk_2858619C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858619C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858619C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Position::default_instance(proto::gnss::Position *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Position::default_instance_;
  if (!proto::gnss::Position::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Position::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Position::Clear(uint64_t this)
{
  v1 = *(this + 96);
  if (v1)
  {
    *(this + 56) = 0u;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 72) = 0;
    *(this + 80) = 0;
    *(this + 88) = 0;
  }

  *(this + 96) = 0;
  return this;
}

uint64_t proto::gnss::Position::MergePartialFromCodedStream(proto::gnss::Position *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 6)
        {
          if (TagFallback >> 3 > 9)
          {
            if (v6 == 10)
            {
              if ((TagFallback & 7) == 0)
              {
                v13 = *(a2 + 1);
                v8 = *(a2 + 2);
                goto LABEL_85;
              }
            }

            else if (v6 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v23 = *(a2 + 1);
                v10 = *(a2 + 2);
                goto LABEL_95;
              }
            }

            else if (v6 == 12 && (TagFallback & 7) == 0)
            {
              v11 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_103;
            }
          }

          else if (v6 == 7)
          {
            if (v7 == 1)
            {
              goto LABEL_64;
            }
          }

          else if (v6 == 8)
          {
            if (v7 == 1)
            {
              goto LABEL_68;
            }
          }

          else if (v6 == 9 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_72;
          }

          goto LABEL_76;
        }

        if (TagFallback >> 3 > 3)
        {
          if (v6 == 4)
          {
            if (v7 == 1)
            {
              goto LABEL_49;
            }
          }

          else if (v6 == 5)
          {
            if (v7 == 1)
            {
              goto LABEL_56;
            }
          }

          else if (v6 == 6 && v7 == 1)
          {
            goto LABEL_60;
          }

          goto LABEL_76;
        }

        if (v6 != 1)
        {
          break;
        }

        if (v7 != 1)
        {
          goto LABEL_76;
        }

        *v30 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v30) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v30;
        *(this + 24) |= 1u;
        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 17)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_41;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if (v7 != 1)
      {
        goto LABEL_76;
      }

LABEL_41:
      *v30 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v30) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = *v30;
      *(this + 24) |= 2u;
      v14 = *(a2 + 1);
      if (v14 < *(a2 + 2) && *v14 == 25)
      {
        *(a2 + 1) = v14 + 1;
LABEL_45:
        *v30 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v30) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v30;
        *(this + 24) |= 4u;
        v15 = *(a2 + 1);
        if (v15 < *(a2 + 2) && *v15 == 33)
        {
          *(a2 + 1) = v15 + 1;
LABEL_49:
          *v30 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v30) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = *v30;
          *(this + 24) |= 8u;
          v16 = *(a2 + 1);
          if (v16 < *(a2 + 2) && *v16 == 41)
          {
            *(a2 + 1) = v16 + 1;
LABEL_56:
            *v30 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v30) & 1) == 0)
            {
              return 0;
            }

            *(this + 5) = *v30;
            *(this + 24) |= 0x10u;
            v17 = *(a2 + 1);
            if (v17 < *(a2 + 2) && *v17 == 49)
            {
              *(a2 + 1) = v17 + 1;
LABEL_60:
              *v30 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v30) & 1) == 0)
              {
                return 0;
              }

              *(this + 6) = *v30;
              *(this + 24) |= 0x20u;
              v18 = *(a2 + 1);
              if (v18 < *(a2 + 2) && *v18 == 57)
              {
                *(a2 + 1) = v18 + 1;
LABEL_64:
                *v30 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v30) & 1) == 0)
                {
                  return 0;
                }

                *(this + 7) = *v30;
                *(this + 24) |= 0x40u;
                v19 = *(a2 + 1);
                if (v19 < *(a2 + 2) && *v19 == 65)
                {
                  *(a2 + 1) = v19 + 1;
LABEL_68:
                  *v30 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v30) & 1) == 0)
                  {
                    return 0;
                  }

                  *(this + 8) = *v30;
                  *(this + 24) |= 0x80u;
                  v20 = *(a2 + 1);
                  v8 = *(a2 + 2);
                  if (v20 < v8 && *v20 == 72)
                  {
                    v9 = v20 + 1;
                    *(a2 + 1) = v9;
LABEL_72:
                    if (v9 >= v8 || (v21 = *v9, v21 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
                      if (!result)
                      {
                        return result;
                      }

                      v22 = *(a2 + 1);
                      v8 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 18) = v21;
                      v22 = v9 + 1;
                      *(a2 + 1) = v22;
                    }

                    *(this + 24) |= 0x100u;
                    if (v22 < v8 && *v22 == 80)
                    {
                      v13 = v22 + 1;
                      *(a2 + 1) = v13;
LABEL_85:
                      v30[0] = 0;
                      if (v13 >= v8 || (v25 = *v13, (v25 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v30);
                        if (!result)
                        {
                          return result;
                        }

                        v25 = v30[0];
                      }

                      else
                      {
                        *(a2 + 1) = v13 + 1;
                      }

                      if (proto::gnss::Reliability_IsValid(v25))
                      {
                        *(this + 24) |= 0x200u;
                        *(this + 19) = v25;
                      }

                      v26 = *(a2 + 1);
                      v10 = *(a2 + 2);
                      if (v26 < v10 && *v26 == 88)
                      {
                        v23 = v26 + 1;
                        *(a2 + 1) = v23;
LABEL_95:
                        if (v23 >= v10 || (v27 = *v23, v27 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 10);
                          if (!result)
                          {
                            return result;
                          }

                          v28 = *(a2 + 1);
                          v10 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 10) = v27;
                          v28 = v23 + 1;
                          *(a2 + 1) = v28;
                        }

                        *(this + 24) |= 0x400u;
                        if (v28 < v10 && *v28 == 96)
                        {
                          v11 = v28 + 1;
                          *(a2 + 1) = v11;
LABEL_103:
                          v30[0] = 0;
                          if (v11 >= v10 || (v29 = *v11, (v29 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v30);
                            if (!result)
                            {
                              return result;
                            }

                            v29 = v30[0];
                          }

                          else
                          {
                            *(a2 + 1) = v11 + 1;
                          }

                          if (v29 <= 5)
                          {
                            *(this + 24) |= 0x800u;
                            *(this + 22) = v29;
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
                }
              }
            }
          }
        }
      }
    }

    if (v6 == 3 && v7 == 1)
    {
      goto LABEL_45;
    }

LABEL_76:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t proto::gnss::Position::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 96);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 96);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 96);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 96);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 72), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xB, *(v5 + 80), a2, a4);
    if ((*(v5 + 96) & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 76), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    return this;
  }

LABEL_25:
  v7 = *(v5 + 88);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, v7, a2, a4);
}

uint64_t proto::gnss::Position::ByteSize(proto::gnss::Position *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    v3 = (v2 << 31 >> 31) & 9;
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
      v4 = v3 + 9;
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v5 = *(this + 18);
      if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(this + 24);
      }

      else
      {
        v6 = 2;
      }

      v4 = (v6 + v4);
      if ((v2 & 0x200) == 0)
      {
LABEL_21:
        if ((v2 & 0x400) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_34;
      }
    }

    else if ((v2 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    v7 = *(this + 19);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(this + 24);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
    if ((v2 & 0x400) == 0)
    {
LABEL_22:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_41;
      }

LABEL_35:
      v9 = *(this + 22);
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
      goto LABEL_41;
    }

LABEL_34:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 10)) + 1;
    if ((*(this + 24) & 0x800) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

LABEL_41:
  *(this + 23) = v4;
  return v4;
}

void proto::gnss::Position::CheckTypeAndMergeFrom(proto::gnss::Position *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Position::MergeFrom(this, lpsrc);
}

void proto::gnss::Position::CopyFrom(proto::gnss::Position *this, const proto::gnss::Position *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Position::MergeFrom(this, a2);
  }
}

double proto::gnss::Position::Swap(proto::gnss::Position *this, proto::gnss::Position *a2)
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
    result = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = result;
    v10 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v10;
    v11 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v11;
    v12 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v12;
    LODWORD(v12) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v12;
    LODWORD(v12) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v12;
    LODWORD(v12) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v12;
  }

  return result;
}

double proto::gnss::Velocity::SharedCtor(proto::gnss::Velocity *this)
{
  *(this + 7) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Velocity *proto::gnss::Velocity::Velocity(proto::gnss::Velocity *this, const proto::gnss::Velocity *a2)
{
  *this = &unk_285861A40;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  proto::gnss::Velocity::MergeFrom(this, a2);
  return this;
}

double proto::gnss::Velocity::MergeFrom(proto::gnss::Velocity *this, const proto::gnss::Velocity *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 60);
  if (v5)
  {
    if (*(a2 + 60))
    {
      result = *(a2 + 1);
      *(this + 15) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 15);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 15) |= 2u;
    *(this + 2) = result;
    v5 = *(a2 + 15);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:
    result = *(a2 + 3);
    *(this + 15) |= 4u;
    *(this + 3) = result;
    v5 = *(a2 + 15);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_15:
    result = *(a2 + 4);
    *(this + 15) |= 8u;
    *(this + 4) = result;
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

LABEL_16:
    result = *(a2 + 5);
    *(this + 15) |= 0x10u;
    *(this + 5) = result;
    if ((*(a2 + 15) & 0x20) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 6);
    *(this + 15) |= 0x20u;
    *(this + 6) = result;
  }

  return result;
}

void sub_24553B4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Velocity::~Velocity(proto::gnss::Velocity *this)
{
  *this = &unk_285861A40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861A40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861A40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Velocity::default_instance(proto::gnss::Velocity *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Velocity::default_instance_;
  if (!proto::gnss::Velocity::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Velocity::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Velocity::Clear(uint64_t this)
{
  if (*(this + 60))
  {
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 60) = 0;
  return this;
}

uint64_t proto::gnss::Velocity::MergePartialFromCodedStream(proto::gnss::Velocity *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v6 == 4)
          {
            if (v7 == 1)
            {
              goto LABEL_33;
            }

            goto LABEL_38;
          }

          if (v6 == 5)
          {
            if (v7 == 1)
            {
              goto LABEL_41;
            }

            goto LABEL_38;
          }

          if (v6 != 6 || v7 != 1)
          {
            goto LABEL_38;
          }

LABEL_45:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v14;
          *(this + 15) |= 0x20u;
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
          goto LABEL_38;
        }

        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = v14;
        *(this + 15) |= 1u;
        v8 = *(a2 + 1);
        if (v8 < *(a2 + 2) && *v8 == 17)
        {
          *(a2 + 1) = v8 + 1;
          goto LABEL_25;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if (v7 != 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = v14;
      *(this + 15) |= 2u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 25)
      {
        *(a2 + 1) = v9 + 1;
LABEL_29:
        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v14;
        *(this + 15) |= 4u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 33)
        {
          *(a2 + 1) = v10 + 1;
LABEL_33:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = v14;
          *(this + 15) |= 8u;
          v11 = *(a2 + 1);
          if (v11 < *(a2 + 2) && *v11 == 41)
          {
            *(a2 + 1) = v11 + 1;
LABEL_41:
            v14 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
            {
              return 0;
            }

            *(this + 5) = v14;
            *(this + 15) |= 0x10u;
            v12 = *(a2 + 1);
            if (v12 < *(a2 + 2) && *v12 == 49)
            {
              *(a2 + 1) = v12 + 1;
              goto LABEL_45;
            }
          }
        }
      }
    }

    if (v6 == 3 && v7 == 1)
    {
      goto LABEL_29;
    }

LABEL_38:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t proto::gnss::Velocity::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 60);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v5 = *(v4 + 60);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
  v5 = *(v4 + 60);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 24), a3);
  v5 = *(v4 + 60);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v4 + 40), a3);
    if ((*(v4 + 60) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 32), a3);
  v5 = *(v4 + 60);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v5 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v6 = *(v4 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, v6, a3);
}

uint64_t proto::gnss::Velocity::ByteSize(proto::gnss::Velocity *this)
{
  v1 = *(this + 60);
  if (*(this + 60))
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
      v2 += 9;
    }

    if ((v1 & 0x20) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 14) = v1;
  return v1;
}

double proto::gnss::Velocity::CheckTypeAndMergeFrom(proto::gnss::Velocity *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return proto::gnss::Velocity::MergeFrom(this, lpsrc);
}

double proto::gnss::Velocity::CopyFrom(proto::gnss::Velocity *this, const proto::gnss::Velocity *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return proto::gnss::Velocity::MergeFrom(this, a2);
  }

  return result;
}

double proto::gnss::Velocity::Swap(proto::gnss::Velocity *this, proto::gnss::Velocity *a2)
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
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    v8 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v8;
    v9 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v9;
  }

  return result;
}

double proto::gnss::Time::SharedCtor(proto::gnss::Time *this)
{
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return result;
}

proto::gnss::Time *proto::gnss::Time::Time(proto::gnss::Time *this, const proto::gnss::Time *a2)
{
  *this = &unk_285861AB8;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  proto::gnss::Time::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Time::MergeFrom(proto::gnss::Time *this, const proto::gnss::Time *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = *(a2 + 18);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 18) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 18);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 4);
  *(this + 18) |= 2u;
  *(this + 4) = v8;
  v4 = *(a2 + 18);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 20);
  *(this + 18) |= 4u;
  *(this + 20) = v9;
  v4 = *(a2 + 18);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 16);
  *(this + 18) |= 8u;
  *(this + 16) = v10;
  v4 = *(a2 + 18);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v12 = *(a2 + 4);
    *(this + 18) |= 0x20u;
    *(this + 4) = v12;
    v4 = *(a2 + 18);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  v11 = *(a2 + 3);
  *(this + 18) |= 0x10u;
  *(this + 3) = v11;
  v4 = *(a2 + 18);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v13 = *(a2 + 5);
  *(this + 18) |= 0x40u;
  *(this + 5) = v13;
  v4 = *(a2 + 18);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 6);
    *(this + 18) |= 0x80u;
    *(this + 6) = v5;
    v4 = *(a2 + 18);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 7);
    *(this + 18) |= 0x100u;
    *(this + 7) = v6;
  }
}

void sub_24553BE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Time::~Time(proto::gnss::Time *this)
{
  *this = &unk_285861AB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861AB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861AB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Time::default_instance(proto::gnss::Time *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Time::default_instance_;
  if (!proto::gnss::Time::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Time::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Time::Clear(uint64_t this)
{
  v1 = *(this + 72);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 20) = 0;
    *(this + 64) = 0;
    *(this + 24) = 0u;
    *(this + 40) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 56) = 0;
  }

  *(this + 72) = 0;
  return this;
}

uint64_t proto::gnss::Time::MergePartialFromCodedStream(proto::gnss::Time *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

              v11 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_58;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v16 = *(a2 + 1);
            v10 = *(a2 + 2);
LABEL_50:
            v33[0] = 0;
            if (v16 >= v10 || (v21 = *v16, (v21 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v33);
              if (!result)
              {
                return result;
              }

              v21 = v33[0];
              v22 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v22 = v16 + 1;
              *(a2 + 1) = v22;
            }

            *(this + 20) = v21 != 0;
            *(this + 18) |= 4u;
            if (v22 < v10 && *v22 == 32)
            {
              v11 = v22 + 1;
              *(a2 + 1) = v11;
LABEL_58:
              v33[0] = 0;
              if (v11 >= v10 || (v23 = *v11, (v23 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v33);
                if (!result)
                {
                  return result;
                }

                v23 = v33[0];
                v24 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                v24 = v11 + 1;
                *(a2 + 1) = v24;
              }

              *(this + 16) = v23;
              *(this + 18) |= 8u;
              if (v24 < v10 && *v24 == 40)
              {
                v17 = v24 + 1;
                *(a2 + 1) = v17;
                goto LABEL_66;
              }
            }
          }

          else
          {
            if (v6 != 1)
            {
              if (v6 != 2 || v7 != 5)
              {
                goto LABEL_37;
              }

              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v13 = *(a2 + 1);
            v12 = *(a2 + 2);
            if (v13 >= v12 || (v14 = *v13, v14 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
              if (!result)
              {
                return result;
              }

              v15 = *(a2 + 1);
              v12 = *(a2 + 2);
            }

            else
            {
              *(this + 1) = v14;
              v15 = v13 + 1;
              *(a2 + 1) = v15;
            }

            *(this + 18) |= 1u;
            if (v15 < v12 && *v15 == 21)
            {
              *(a2 + 1) = v15 + 1;
LABEL_46:
              v33[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v33) & 1) == 0)
              {
                return 0;
              }

              *(this + 4) = v33[0];
              *(this + 18) |= 2u;
              v20 = *(a2 + 1);
              v10 = *(a2 + 2);
              if (v20 < v10 && *v20 == 24)
              {
                v16 = v20 + 1;
                *(a2 + 1) = v16;
                goto LABEL_50;
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
          if (v6 != 6 || v7 != 1)
          {
            goto LABEL_37;
          }

          goto LABEL_74;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v17 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_66:
        if (v17 >= v10 || (v25 = *v17, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v26 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v25;
          v26 = v17 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 18) |= 0x10u;
        if (v26 < v10 && *v26 == 49)
        {
          *(a2 + 1) = v26 + 1;
LABEL_74:
          *v33 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v33) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = *v33;
          *(this + 18) |= 0x20u;
          v27 = *(a2 + 1);
          if (v27 < *(a2 + 2) && *v27 == 57)
          {
            *(a2 + 1) = v27 + 1;
LABEL_78:
            *v33 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v33) & 1) == 0)
            {
              return 0;
            }

            *(this + 5) = *v33;
            *(this + 18) |= 0x40u;
            v28 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v28 < v8 && *v28 == 64)
            {
              v18 = v28 + 1;
              *(a2 + 1) = v18;
              goto LABEL_82;
            }
          }
        }
      }

      if (v6 == 7)
      {
        if (v7 != 1)
        {
          goto LABEL_37;
        }

        goto LABEL_78;
      }

      if (v6 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v18 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_82:
      if (v18 >= v8 || (v29 = *v18, v29 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v30 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v29;
        v30 = v18 + 1;
        *(a2 + 1) = v30;
      }

      *(this + 18) |= 0x80u;
      if (v30 < v8 && *v30 == 72)
      {
        v9 = v30 + 1;
        *(a2 + 1) = v9;
LABEL_90:
        if (v9 >= v8 || (v31 = *v9, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v31;
          v32 = v9 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 18) |= 0x100u;
        if (v32 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_90;
    }

LABEL_37:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t proto::gnss::Time::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 72);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 72);
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
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 64), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 48), a2, a4);
    if ((*(v5 + 72) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 72);
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
  v7 = *(v5 + 56);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, v7, a2, a4);
}

uint64_t proto::gnss::Time::ByteSize(proto::gnss::Time *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    if (v2)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v2 = *(this + 18);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 5;
    }

    v5 = v3 + ((v2 >> 1) & 2);
    if ((v2 & 8) != 0)
    {
      v6 = *(this + 16);
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 11;
      }

      else if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
        v2 = *(this + 18);
      }

      else
      {
        v7 = 2;
      }

      v5 += v7;
    }

    if ((v2 & 0x10) != 0)
    {
      v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
      v2 = *(this + 18);
    }

    v8 = v5 + 9;
    if ((v2 & 0x20) == 0)
    {
      v8 = v5;
    }

    if ((v2 & 0x40) != 0)
    {
      v4 = v8 + 9;
    }

    else
    {
      v4 = v8;
    }

    if ((v2 & 0x80) != 0)
    {
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
      v2 = *(this + 18);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((v2 & 0x100) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
  }

  *(this + 17) = v4;
  return v4;
}

void proto::gnss::Time::CheckTypeAndMergeFrom(proto::gnss::Time *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Time::MergeFrom(this, lpsrc);
}

void proto::gnss::Time::CopyFrom(proto::gnss::Time *this, const proto::gnss::Time *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Time::MergeFrom(this, a2);
  }
}

double proto::gnss::Time::Swap(proto::gnss::Time *this, proto::gnss::Time *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v3;
    LOBYTE(v2) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    result = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = result;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    LODWORD(v8) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v8;
    LODWORD(v8) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v8;
  }

  return result;
}

double proto::gnss::Fix::SharedCtor(proto::gnss::Fix *this)
{
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::Fix *proto::gnss::Fix::Fix(proto::gnss::Fix *this, const proto::gnss::Fix *a2)
{
  *this = &unk_285861B30;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  proto::gnss::Fix::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Fix::MergeFrom(proto::gnss::Fix *this, const proto::gnss::Fix *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      *(this + 12) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        v6 = *(proto::gnss::Fix::default_instance_ + 8);
      }

      proto::gnss::Time::MergeFrom(v5, v6);
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

    *(this + 12) |= 2u;
    v7 = *(this + 2);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 2);
    if (!v8)
    {
      v8 = *(proto::gnss::Fix::default_instance_ + 16);
    }

    proto::gnss::Position::MergeFrom(v7, v8);
    v4 = *(a2 + 12);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

LABEL_20:
    *(this + 12) |= 4u;
    v9 = *(this + 3);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 3);
    if (!v10)
    {
      v10 = *(proto::gnss::Fix::default_instance_ + 24);
    }

    proto::gnss::Velocity::MergeFrom(v9, v10);
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_26:
      v12 = *(a2 + 10);
      if (v12 >= 5)
      {
        __assert_rtn("set_estimation_technology", "GnssTypes.pb.h", 2533, "::proto::gnss::EstimationTechnology_IsValid(value)");
      }

      *(this + 12) |= 0x10u;
      *(this + 10) = v12;
      return;
    }

LABEL_25:
    v11 = *(a2 + 4);
    *(this + 12) |= 8u;
    *(this + 4) = v11;
    if ((*(a2 + 12) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_26;
  }
}

void sub_24553CB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Fix::~Fix(proto::gnss::Fix *this)
{
  *this = &unk_285861B30;
  proto::gnss::Fix::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861B30;
  proto::gnss::Fix::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861B30;
  proto::gnss::Fix::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::Fix::SharedDtor(void *this)
{
  if (proto::gnss::Fix::default_instance_ != this)
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

    this = v1[3];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

uint64_t proto::gnss::Fix::default_instance(proto::gnss::Fix *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Fix::default_instance_;
  if (!proto::gnss::Fix::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Fix::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Fix::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 48);
  if (v1)
  {
    if (*(this + 48))
    {
      v2 = *(this + 8);
      if (v2)
      {
        v3 = *(v2 + 72);
        if (v3)
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 20) = 0;
          *(v2 + 64) = 0;
          *(v2 + 24) = 0u;
          *(v2 + 40) = 0u;
        }

        if ((v3 & 0xFF00) != 0)
        {
          *(v2 + 56) = 0;
        }

        *(v2 + 72) = 0;
        v1 = *(this + 48);
      }
    }

    if ((v1 & 2) != 0)
    {
      v4 = *(this + 16);
      if (v4)
      {
        v5 = *(v4 + 96);
        if (v5)
        {
          *(v4 + 56) = 0u;
          *(v4 + 40) = 0u;
          *(v4 + 24) = 0u;
          *(v4 + 8) = 0u;
        }

        if ((v5 & 0xFF00) != 0)
        {
          *(v4 + 72) = 0;
          *(v4 + 80) = 0;
          *(v4 + 88) = 0;
        }

        *(v4 + 96) = 0;
        v1 = *(this + 48);
      }
    }

    if ((v1 & 4) != 0)
    {
      v6 = *(this + 24);
      if (v6)
      {
        if (*(v6 + 60))
        {
          *(v6 + 40) = 0u;
          *(v6 + 24) = 0u;
          *(v6 + 8) = 0u;
        }

        *(v6 + 60) = 0;
      }
    }

    *(this + 32) = 0;
    *(this + 40) = 0;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t proto::gnss::Fix::MergePartialFromCodedStream(proto::gnss::Fix *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || v7 != 2)
          {
            goto LABEL_21;
          }

          goto LABEL_38;
        }

        if (v7 != 2)
        {
          goto LABEL_21;
        }

        *(this + 12) |= 1u;
        v11 = *(this + 1);
        if (!v11)
        {
          operator new();
        }

        v37 = 0;
        v12 = *(a2 + 1);
        if (v12 >= *(a2 + 2) || *v12 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37))
          {
            return 0;
          }
        }

        else
        {
          v37 = *v12;
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
        if (!proto::gnss::Time::MergePartialFromCodedStream(v11, a2) || *(a2 + 36) != 1)
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
LABEL_38:
          *(this + 12) |= 2u;
          v19 = *(this + 2);
          if (!v19)
          {
            operator new();
          }

          v37 = 0;
          v20 = *(a2 + 1);
          if (v20 >= *(a2 + 2) || *v20 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37))
            {
              return 0;
            }
          }

          else
          {
            v37 = *v20;
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
          if (!proto::gnss::Position::MergePartialFromCodedStream(v19, a2) || *(a2 + 36) != 1)
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
          if (v25 < *(a2 + 2) && *v25 == 26)
          {
            *(a2 + 1) = v25 + 1;
LABEL_52:
            *(this + 12) |= 4u;
            v26 = *(this + 3);
            if (!v26)
            {
              operator new();
            }

            v37 = 0;
            v27 = *(a2 + 1);
            if (v27 >= *(a2 + 2) || *v27 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37))
              {
                return 0;
              }
            }

            else
            {
              v37 = *v27;
              *(a2 + 1) = v27 + 1;
            }

            v28 = *(a2 + 14);
            v29 = *(a2 + 15);
            *(a2 + 14) = v28 + 1;
            if (v28 >= v29)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!proto::gnss::Velocity::MergePartialFromCodedStream(v26, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v30 = *(a2 + 14);
            v16 = __OFSUB__(v30, 1);
            v31 = v30 - 1;
            if (v31 < 0 == v16)
            {
              *(a2 + 14) = v31;
            }

            v32 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v32 < v8 && *v32 == 32)
            {
              v10 = v32 + 1;
              *(a2 + 1) = v10;
              goto LABEL_66;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if (v7 != 2)
        {
          goto LABEL_21;
        }

        goto LABEL_52;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_66:
      if (v10 >= v8 || (v33 = *v10, v33 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v34 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v33;
        v34 = v10 + 1;
        *(a2 + 1) = v34;
      }

      *(this + 12) |= 8u;
      if (v34 < v8 && *v34 == 40)
      {
        v9 = v34 + 1;
        *(a2 + 1) = v9;
LABEL_74:
        v37 = 0;
        if (v9 >= v8 || (v36 = *v9, (v36 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
          if (!result)
          {
            return result;
          }

          v36 = v37;
        }

        else
        {
          *(a2 + 1) = v9 + 1;
        }

        if (v36 <= 4)
        {
          *(this + 12) |= 0x10u;
          *(this + 10) = v36;
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

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_74;
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

uint64_t proto::gnss::Fix::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::Fix::default_instance_ + 8);
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
    v8 = *(proto::gnss::Fix::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_13:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(proto::gnss::Fix::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_17:
  v10 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v10, a2, a4);
}

uint64_t proto::gnss::Fix::ByteSize(proto::gnss::Fix *this)
{
  LOBYTE(v2) = *(this + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_32;
  }

  if ((*(this + 48) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 48) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    v4 = *(proto::gnss::Fix::default_instance_ + 8);
  }

  v5 = proto::gnss::Time::ByteSize(v4);
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
  v2 = *(this + 12);
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 2);
    if (!v8)
    {
      v8 = *(proto::gnss::Fix::default_instance_ + 16);
    }

    v9 = proto::gnss::Position::ByteSize(v8);
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
    v2 = *(this + 12);
  }

LABEL_18:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
    if ((*(this + 12) & 0x10) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  v12 = *(this + 3);
  if (!v12)
  {
    v12 = *(proto::gnss::Fix::default_instance_ + 24);
  }

  v3 = v3 + proto::gnss::Velocity::ByteSize(v12) + 2;
  v2 = *(this + 12);
  if ((v2 & 8) != 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_32;
  }

LABEL_26:
  v13 = *(this + 10);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
  }

  else
  {
    v14 = 2;
  }

  v3 = (v14 + v3);
LABEL_32:
  *(this + 11) = v3;
  return v3;
}

void proto::gnss::Fix::CheckTypeAndMergeFrom(proto::gnss::Fix *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Fix::MergeFrom(this, lpsrc);
}

void proto::gnss::Fix::CopyFrom(proto::gnss::Fix *this, const proto::gnss::Fix *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Fix::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Fix::Swap(uint64_t this, proto::gnss::Fix *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    v5 = *(this + 32);
    v6 = *(a2 + 4);
    *(this + 24) = *(a2 + 3);
    *(this + 32) = v6;
    *(a2 + 3) = v4;
    *(a2 + 4) = v5;
    LODWORD(v4) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v4;
    LODWORD(v4) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v4;
    LODWORD(v4) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v4;
  }

  return this;
}

double proto::gnss::TimeTransferData::SharedCtor(proto::gnss::TimeTransferData *this)
{
  *(this + 16) = 0;
  *(this + 1) = 0;
  result = 0.0;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  return result;
}

proto::gnss::TimeTransferData *proto::gnss::TimeTransferData::TimeTransferData(proto::gnss::TimeTransferData *this, const proto::gnss::TimeTransferData *a2)
{
  *(this + 16) = 0;
  *this = &unk_285861BA8;
  *(this + 1) = 0;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  proto::gnss::TimeTransferData::MergeFrom(this, a2);
  return this;
}

void proto::gnss::TimeTransferData::MergeFrom(proto::gnss::TimeTransferData *this, const proto::gnss::TimeTransferData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    v6 = *(a2 + 16);
    *(this + 12) |= 1u;
    *(this + 16) = v6;
    v4 = *(a2 + 12);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((*(a2 + 48) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 12) |= 2u;
  v7 = *(this + 1);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 1);
  if (!v8)
  {
    v8 = *(proto::gnss::TimeTransferData::default_instance_ + 8);
  }

  proto::gnss::Time::MergeFrom(v7, v8);
  v4 = *(a2 + 12);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    v10 = *(a2 + 10);
    *(this + 12) |= 8u;
    *(this + 10) = v10;
    v4 = *(a2 + 12);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(a2 + 5);
  if (v9 >= 7)
  {
    __assert_rtn("set_quality", "GnssTypes.pb.h", 2624, "::proto::gnss::TimeQuality_IsValid(value)");
  }

  *(this + 12) |= 4u;
  *(this + 5) = v9;
  v4 = *(a2 + 12);
  if ((v4 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_21:
  v11 = *(a2 + 3);
  *(this + 12) |= 0x10u;
  *(this + 3) = v11;
  if ((*(a2 + 12) & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 4);
    *(this + 12) |= 0x20u;
    *(this + 4) = v5;
  }
}

void sub_24553DA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::TimeTransferData::~TimeTransferData(proto::gnss::TimeTransferData *this)
{
  *this = &unk_285861BA8;
  if (proto::gnss::TimeTransferData::default_instance_ != this)
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
  proto::gnss::TimeTransferData::~TimeTransferData(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::TimeTransferData::SharedDtor(void *this)
{
  if (proto::gnss::TimeTransferData::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::TimeTransferData::default_instance(proto::gnss::TimeTransferData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::TimeTransferData::default_instance_;
  if (!proto::gnss::TimeTransferData::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::TimeTransferData::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::TimeTransferData::Clear(uint64_t this)
{
  v1 = *(this + 48);
  if (v1)
  {
    *(this + 16) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 8);
      if (v2)
      {
        v3 = *(v2 + 72);
        if (v3)
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 20) = 0;
          *(v2 + 64) = 0;
          *(v2 + 24) = 0u;
          *(v2 + 40) = 0u;
        }

        if ((v3 & 0xFF00) != 0)
        {
          *(v2 + 56) = 0;
        }

        *(v2 + 72) = 0;
      }
    }

    *(this + 28) = 0;
    *(this + 20) = 0;
    *(this + 36) = 0;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t proto::gnss::TimeTransferData::MergePartialFromCodedStream(proto::gnss::TimeTransferData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (v6 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_59;
            }
          }

          else if (v6 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_67;
            }
          }

          else if (v6 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_75;
          }

          goto LABEL_26;
        }

        if (v6 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v37 = 0;
        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v13 >= v12 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
          if (!result)
          {
            return result;
          }

          v14 = v37;
          v15 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 16) = v14 != 0;
        v17 = *(this + 12) | 1;
        *(this + 12) = v17;
        if (v15 < v12 && *v15 == 18)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_35;
        }
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 == 3 && (TagFallback & 7) == 0)
      {
        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_49;
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

    if (v7 != 2)
    {
      goto LABEL_26;
    }

    v17 = *(this + 12);
LABEL_35:
    *(this + 12) = v17 | 2;
    v20 = *(this + 1);
    if (!v20)
    {
      operator new();
    }

    v38 = 0;
    v21 = *(a2 + 1);
    if (v21 >= *(a2 + 2) || *v21 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38))
      {
        return 0;
      }
    }

    else
    {
      v38 = *v21;
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
    if (!proto::gnss::Time::MergePartialFromCodedStream(v20, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v24 = *(a2 + 14);
    v25 = __OFSUB__(v24, 1);
    v26 = v24 - 1;
    if (v26 < 0 == v25)
    {
      *(a2 + 14) = v26;
    }

    v27 = *(a2 + 1);
    v8 = *(a2 + 2);
    if (v27 < v8 && *v27 == 24)
    {
      v9 = v27 + 1;
      *(a2 + 1) = v9;
LABEL_49:
      v36 = 0;
      if (v9 >= v8 || (v28 = *v9, (v28 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
        if (!result)
        {
          return result;
        }

        v28 = v36;
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v28 <= 6)
      {
        *(this + 12) |= 4u;
        *(this + 5) = v28;
      }

      v29 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v29 < v10 && *v29 == 32)
      {
        v16 = v29 + 1;
        *(a2 + 1) = v16;
LABEL_59:
        if (v16 >= v10 || (v30 = *v16, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v31 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v30;
          v31 = v16 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 12) |= 8u;
        if (v31 < v10 && *v31 == 40)
        {
          v18 = v31 + 1;
          *(a2 + 1) = v18;
LABEL_67:
          if (v18 >= v10 || (v32 = *v18, v32 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v33 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v32;
            v33 = v18 + 1;
            *(a2 + 1) = v33;
          }

          *(this + 12) |= 0x10u;
          if (v33 < v10 && *v33 == 48)
          {
            v11 = v33 + 1;
            *(a2 + 1) = v11;
LABEL_75:
            if (v11 >= v10 || (v34 = *v11, v34 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v35 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v34;
              v35 = v11 + 1;
              *(a2 + 1) = v35;
            }

            *(this + 12) |= 0x20u;
            if (v35 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t proto::gnss::TimeTransferData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 16), a2, a4);
    v6 = *(v5 + 48);
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

  v7 = *(v5 + 8);
  if (!v7)
  {
    v7 = *(proto::gnss::TimeTransferData::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 48);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 24), a2, a4);
    if ((*(v5 + 48) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return this;
  }

LABEL_15:
  v8 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, v8, a2, a4);
}

uint64_t proto::gnss::TimeTransferData::ByteSize(proto::gnss::TimeTransferData *this)
{
  v2 = *(this + 12);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_27;
  }

  v3 = 2 * (v2 & 1u);
  if ((v2 & 2) != 0)
  {
    v4 = *(this + 1);
    if (!v4)
    {
      v4 = *(proto::gnss::TimeTransferData::default_instance_ + 8);
    }

    v5 = proto::gnss::Time::ByteSize(v4);
    v6 = v5;
    if (v5 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
    }

    else
    {
      v7 = 1;
    }

    v3 = (v6 + v3 + v7 + 1);
    v2 = *(this + 12);
    if ((v2 & 4) == 0)
    {
LABEL_4:
      if ((v2 & 8) == 0)
      {
        goto LABEL_5;
      }

LABEL_21:
      v10 = *(this + 10);
      if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
        v2 = *(this + 12);
      }

      else
      {
        v11 = 2;
      }

      v3 = (v11 + v3);
      if ((v2 & 0x10) == 0)
      {
LABEL_6:
        if ((v2 & 0x20) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(this + 5);
  if ((v8 & 0x80000000) != 0)
  {
    v9 = 11;
  }

  else if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 12);
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
  if ((v2 & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_5:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_25:
  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  if ((*(this + 12) & 0x20) != 0)
  {
LABEL_26:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
  }

LABEL_27:
  *(this + 11) = v3;
  return v3;
}

void proto::gnss::TimeTransferData::CheckTypeAndMergeFrom(proto::gnss::TimeTransferData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::TimeTransferData::MergeFrom(this, lpsrc);
}

void proto::gnss::TimeTransferData::CopyFrom(proto::gnss::TimeTransferData *this, const proto::gnss::TimeTransferData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::TimeTransferData::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::TimeTransferData::Swap(uint64_t this, proto::gnss::TimeTransferData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
    LODWORD(v3) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v5;
    LODWORD(v5) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v5;
    LODWORD(v5) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v5;
  }

  return this;
}

double proto::gnss::TimeTransferDataExtend::SharedCtor(proto::gnss::TimeTransferDataExtend *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::TimeTransferDataExtend *proto::gnss::TimeTransferDataExtend::TimeTransferDataExtend(proto::gnss::TimeTransferDataExtend *this, const proto::gnss::TimeTransferDataExtend *a2)
{
  *this = &unk_285861C20;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  proto::gnss::TimeTransferDataExtend::MergeFrom(this, a2);
  return this;
}

void proto::gnss::TimeTransferDataExtend::MergeFrom(proto::gnss::TimeTransferDataExtend *this, const proto::gnss::TimeTransferDataExtend *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      *(this + 13) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        v7 = *(proto::gnss::TimeTransferDataExtend::default_instance_ + 8);
      }

      proto::gnss::TimeTransferData::MergeFrom(v6, v7);
      v4 = *(a2 + 13);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 2);
    *(this + 13) |= 2u;
    *(this + 2) = v8;
    v4 = *(a2 + 13);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_17:
    v9 = *(a2 + 3);
    *(this + 13) |= 4u;
    *(this + 3) = v9;
    v4 = *(a2 + 13);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_18:
    v10 = *(a2 + 4);
    *(this + 13) |= 8u;
    *(this + 4) = v10;
    if ((*(a2 + 13) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 5);
    *(this + 13) |= 0x10u;
    *(this + 5) = v5;
  }
}

void sub_24553E6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::TimeTransferDataExtend::~TimeTransferDataExtend(proto::gnss::TimeTransferDataExtend *this)
{
  *this = &unk_285861C20;
  if (proto::gnss::TimeTransferDataExtend::default_instance_ != this)
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
  proto::gnss::TimeTransferDataExtend::~TimeTransferDataExtend(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gnss::TimeTransferDataExtend::SharedDtor(void *this)
{
  if (proto::gnss::TimeTransferDataExtend::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gnss::TimeTransferDataExtend::default_instance(proto::gnss::TimeTransferDataExtend *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::TimeTransferDataExtend::default_instance_;
  if (!proto::gnss::TimeTransferDataExtend::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::TimeTransferDataExtend::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::TimeTransferDataExtend::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 52))
  {
    if (*(this + 52))
    {
      this = *(this + 8);
      if (this)
      {
        this = proto::gnss::TimeTransferData::Clear(this);
      }
    }

    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
  }

  *(v1 + 52) = 0;
  return this;
}

uint64_t proto::gnss::TimeTransferDataExtend::MergePartialFromCodedStream(proto::gnss::TimeTransferDataExtend *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_46;
      }

      if (v6 == 4)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_54:
        if (v12 >= v8 || (v26 = *v12, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v26;
          v27 = v12 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 13) |= 8u;
        if (v27 < v8 && *v27 == 40)
        {
          v9 = v27 + 1;
          *(a2 + 1) = v9;
LABEL_62:
          if (v9 >= v8 || (v28 = *v9, v28 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v29 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v28;
            v29 = v9 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 13) |= 0x10u;
          if (v29 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
          goto LABEL_62;
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
      if (v6 != 2 || (TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_38;
    }

    if (v7 != 2)
    {
      goto LABEL_21;
    }

    *(this + 13) |= 1u;
    v13 = *(this + 1);
    if (!v13)
    {
      operator new();
    }

    v30 = 0;
    v14 = *(a2 + 1);
    if (v14 >= *(a2 + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
      {
        return 0;
      }
    }

    else
    {
      v30 = *v14;
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
    if (!proto::gnss::TimeTransferData::MergePartialFromCodedStream(v13, a2) || *(a2 + 36) != 1)
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
    v8 = *(a2 + 2);
    if (v20 < v8 && *v20 == 16)
    {
      v10 = v20 + 1;
      *(a2 + 1) = v10;
LABEL_38:
      if (v10 >= v8 || (v21 = *v10, v21 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v22 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v21;
        v22 = v10 + 1;
        *(a2 + 1) = v22;
      }

      *(this + 13) |= 2u;
      if (v22 < v8 && *v22 == 24)
      {
        v11 = v22 + 1;
        *(a2 + 1) = v11;
LABEL_46:
        if (v11 >= v8 || (v24 = *v11, v24 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v25 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v24;
          v25 = v11 + 1;
          *(a2 + 1) = v25;
        }

        *(this + 13) |= 4u;
        if (v25 < v8 && *v25 == 32)
        {
          v12 = v25 + 1;
          *(a2 + 1) = v12;
          goto LABEL_54;
        }
      }
    }
  }
}

uint64_t proto::gnss::TimeTransferDataExtend::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gnss::TimeTransferDataExtend::default_instance_ + 8);
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

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
    if ((*(v5 + 52) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
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
  v8 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, v8, a2, a4);
}

uint64_t proto::gnss::TimeTransferDataExtend::ByteSize(proto::gnss::TimeTransferDataExtend *this)
{
  LOBYTE(v2) = *(this + 52);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_17;
  }

  if ((*(this + 52) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 13);
    goto LABEL_13;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    v4 = *(proto::gnss::TimeTransferDataExtend::default_instance_ + 8);
  }

  v5 = proto::gnss::TimeTransferData::ByteSize(v4);
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
  v2 = *(this + 13);
  if ((v2 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_19:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
    if ((*(this + 13) & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  v2 = *(this + 13);
  if ((v2 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  if ((v2 & 0x10) != 0)
  {
LABEL_16:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  }

LABEL_17:
  *(this + 12) = v3;
  return v3;
}

void proto::gnss::TimeTransferDataExtend::CheckTypeAndMergeFrom(proto::gnss::TimeTransferDataExtend *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::TimeTransferDataExtend::MergeFrom(this, lpsrc);
}

void proto::gnss::TimeTransferDataExtend::CopyFrom(proto::gnss::TimeTransferDataExtend *this, const proto::gnss::TimeTransferDataExtend *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::TimeTransferDataExtend::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::TimeTransferDataExtend::Swap(uint64_t this, proto::gnss::TimeTransferDataExtend *a2)
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

uint64_t proto::gnss::RawPressureSample::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::RawPressureSample *proto::gnss::RawPressureSample::RawPressureSample(proto::gnss::RawPressureSample *this, const proto::gnss::RawPressureSample *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_285861C98;
  *(this + 6) = 0;
  proto::gnss::RawPressureSample::MergeFrom(this, a2);
  return this;
}

float proto::gnss::RawPressureSample::MergeFrom(proto::gnss::RawPressureSample *this, const proto::gnss::RawPressureSample *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 24);
  if (v5)
  {
    if (*(a2 + 24))
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 6);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 4);
      *(this + 6) |= 2u;
      *(this + 4) = result;
    }
  }

  return result;
}

void sub_24553F114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::RawPressureSample::~RawPressureSample(proto::gnss::RawPressureSample *this)
{
  *this = &unk_285861C98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861C98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861C98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::RawPressureSample::default_instance(proto::gnss::RawPressureSample *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::RawPressureSample::default_instance_;
  if (!proto::gnss::RawPressureSample::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::RawPressureSample::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::RawPressureSample::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::RawPressureSample::MergePartialFromCodedStream(proto::gnss::RawPressureSample *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 6) |= 1u;
      if (v10 < v7 && *v10 == 21)
      {
        *(a2 + 1) = v10 + 1;
LABEL_21:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v12;
        *(this + 6) |= 2u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_21;
    }

LABEL_13:
    if (v6 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t proto::gnss::RawPressureSample::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, v7, a3);
  }

  return this;
}

uint64_t proto::gnss::RawPressureSample::ByteSize(proto::gnss::RawPressureSample *this)
{
  LOBYTE(v2) = *(this + 24);
  if (v2)
  {
    if (*(this + 24))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v2 = *(this + 6);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
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

  *(this + 5) = result;
  return result;
}

float proto::gnss::RawPressureSample::CheckTypeAndMergeFrom(proto::gnss::RawPressureSample *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return proto::gnss::RawPressureSample::MergeFrom(this, lpsrc);
}

float proto::gnss::RawPressureSample::CopyFrom(proto::gnss::RawPressureSample *this, const proto::gnss::RawPressureSample *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return proto::gnss::RawPressureSample::MergeFrom(this, a2);
  }

  return result;
}

float proto::gnss::RawPressureSample::Swap(proto::gnss::RawPressureSample *this, proto::gnss::RawPressureSample *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = result;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v2;
  }

  return result;
}

uint64_t proto::gnss::SensorSample3Axis::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::SensorSample3Axis *proto::gnss::SensorSample3Axis::SensorSample3Axis(proto::gnss::SensorSample3Axis *this, const proto::gnss::SensorSample3Axis *a2)
{
  *this = &unk_285861D10;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  proto::gnss::SensorSample3Axis::MergeFrom(this, a2);
  return this;
}

float proto::gnss::SensorSample3Axis::MergeFrom(proto::gnss::SensorSample3Axis *this, const proto::gnss::SensorSample3Axis *a2)
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
      v6 = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 8);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 4);
    *(this + 8) |= 2u;
    *(this + 4) = result;
    v5 = *(a2 + 8);
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
    result = *(a2 + 5);
    *(this + 8) |= 4u;
    *(this + 5) = result;
    if ((*(a2 + 8) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 6);
    *(this + 8) |= 8u;
    *(this + 6) = result;
  }

  return result;
}

void sub_24553F79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::SensorSample3Axis::~SensorSample3Axis(proto::gnss::SensorSample3Axis *this)
{
  *this = &unk_285861D10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861D10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861D10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::SensorSample3Axis::default_instance(proto::gnss::SensorSample3Axis *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::SensorSample3Axis::default_instance_;
  if (!proto::gnss::SensorSample3Axis::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::SensorSample3Axis::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::SensorSample3Axis::Clear(uint64_t this)
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

uint64_t proto::gnss::SensorSample3Axis::MergePartialFromCodedStream(proto::gnss::SensorSample3Axis *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (v7 != 5)
          {
            goto LABEL_20;
          }

LABEL_32:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v16;
          *(this + 8) |= 4u;
          v14 = *(a2 + 1);
          if (v14 < *(a2 + 2) && *v14 == 37)
          {
            *(a2 + 1) = v14 + 1;
            goto LABEL_36;
          }
        }

        else
        {
          if (v6 != 4 || v7 != 5)
          {
            goto LABEL_20;
          }

LABEL_36:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v15) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v15;
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

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
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

      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 21)
      {
        *(a2 + 1) = v11 + 1;
LABEL_28:
        v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v17) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v17;
        *(this + 8) |= 2u;
        v13 = *(a2 + 1);
        if (v13 < *(a2 + 2) && *v13 == 29)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_32;
        }
      }
    }

    if (v6 == 2 && v7 == 5)
    {
      goto LABEL_28;
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

uint64_t proto::gnss::SensorSample3Axis::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, v7, a3);
}

uint64_t proto::gnss::SensorSample3Axis::ByteSize(proto::gnss::SensorSample3Axis *this)
{
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    if (*(this + 32))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
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

float proto::gnss::SensorSample3Axis::CheckTypeAndMergeFrom(proto::gnss::SensorSample3Axis *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return proto::gnss::SensorSample3Axis::MergeFrom(this, lpsrc);
}

float proto::gnss::SensorSample3Axis::CopyFrom(proto::gnss::SensorSample3Axis *this, const proto::gnss::SensorSample3Axis *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return proto::gnss::SensorSample3Axis::MergeFrom(this, a2);
  }

  return result;
}

float proto::gnss::SensorSample3Axis::Swap(proto::gnss::SensorSample3Axis *this, proto::gnss::SensorSample3Axis *a2)
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

uint64_t proto::gnss::SvId::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::SvId *proto::gnss::SvId::SvId(proto::gnss::SvId *this, const proto::gnss::SvId *a2)
{
  *this = &unk_285861D88;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  proto::gnss::SvId::MergeFrom(this, a2);
  return this;
}

void proto::gnss::SvId::MergeFrom(proto::gnss::SvId *this, const proto::gnss::SvId *a2)
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

void sub_24553FF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::SvId::~SvId(proto::gnss::SvId *this)
{
  *this = &unk_285861D88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861D88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861D88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::SvId::default_instance(proto::gnss::SvId *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::SvId::default_instance_;
  if (!proto::gnss::SvId::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::SvId::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::SvId::Clear(uint64_t this)
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

uint64_t proto::gnss::SvId::MergePartialFromCodedStream(proto::gnss::SvId *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

          *(this + 3) = v15;
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
        *(a2 + 1) = v20 + 1;
LABEL_56:
        v25 = 0;
        if (v8 >= v7 || (v21 = *v8, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
          if (!result)
          {
            return result;
          }

          v21 = v25;
          v22 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v22 = v8 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 6) = -(v21 & 1) ^ (v21 >> 1);
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

unsigned int *proto::gnss::SvId::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v5[3], a2, a4);
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

  return MEMORY[0x2821F9CB0](5, v7, a2);
}

uint64_t proto::gnss::SvId::ByteSize(proto::gnss::SvId *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_32;
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
        goto LABEL_16;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_16;
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
    v2 = *(this + 8);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_16:
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
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
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
LABEL_28:
    v11 = ((2 * *(this + 6)) ^ (*(this + 6) >> 31));
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

LABEL_32:
  *(this + 7) = v3;
  return v3;
}

void proto::gnss::SvId::CheckTypeAndMergeFrom(proto::gnss::SvId *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::SvId::MergeFrom(this, lpsrc);
}

void proto::gnss::SvId::CopyFrom(proto::gnss::SvId *this, const proto::gnss::SvId *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::SvId::MergeFrom(this, a2);
  }
}

proto::gnss::SvId *proto::gnss::SvId::Swap(proto::gnss::SvId *this, proto::gnss::SvId *a2)
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

double proto::gnss::PwrMeasurement::SharedCtor(proto::gnss::PwrMeasurement *this)
{
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gnss::PwrMeasurement *proto::gnss::PwrMeasurement::PwrMeasurement(proto::gnss::PwrMeasurement *this, const proto::gnss::PwrMeasurement *a2)
{
  *this = &unk_285861E00;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  proto::gnss::PwrMeasurement::MergeFrom(this, a2);
  return this;
}

void proto::gnss::PwrMeasurement::MergeFrom(proto::gnss::PwrMeasurement *this, const proto::gnss::PwrMeasurement *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      v5 = *(a2 + 1);
      *(this + 12) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 12);
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

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 2);
    *(this + 12) |= 2u;
    *(this + 2) = v6;
    v4 = *(a2 + 12);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_12:
    v7 = *(a2 + 3);
    *(this + 12) |= 4u;
    *(this + 3) = v7;
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_14:
      v9 = *(a2 + 10);
      if (v9 >= 2)
      {
        __assert_rtn("set_status", "GnssTypes.pb.h", 3193, "::proto::gnss::PwrMeasurement_PowerLoggingStatus_IsValid(value)");
      }

      *(this + 12) |= 0x10u;
      *(this + 10) = v9;
      return;
    }

LABEL_13:
    v8 = *(a2 + 4);
    *(this + 12) |= 8u;
    *(this + 4) = v8;
    if ((*(a2 + 12) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_14;
  }
}

void sub_245540948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::PwrMeasurement::~PwrMeasurement(proto::gnss::PwrMeasurement *this)
{
  *this = &unk_285861E00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861E00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861E00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::PwrMeasurement::default_instance(proto::gnss::PwrMeasurement *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::PwrMeasurement::default_instance_;
  if (!proto::gnss::PwrMeasurement::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::PwrMeasurement::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::PwrMeasurement::Clear(uint64_t this)
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

uint64_t proto::gnss::PwrMeasurement::MergePartialFromCodedStream(proto::gnss::PwrMeasurement *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        *v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v16) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v16;
        *(this + 12) |= 1u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 17)
        {
          *(a2 + 1) = v10 + 1;
LABEL_28:
          *v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 2) = *v16;
          *(this + 12) |= 2u;
          v11 = *(a2 + 1);
          if (v11 < *(a2 + 2) && *v11 == 25)
          {
            *(a2 + 1) = v11 + 1;
LABEL_32:
            *v16 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v16) & 1) == 0)
            {
              return 0;
            }

            *(this + 3) = *v16;
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
      *v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v16) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = *v16;
      *(this + 12) |= 8u;
      v13 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v13 < v8 && *v13 == 40)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_40:
        v16[0] = 0;
        if (v9 >= v8 || (v14 = *v9, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v16);
          if (!result)
          {
            return result;
          }

          v14 = v16[0];
        }

        else
        {
          *(a2 + 1) = v9 + 1;
        }

        if (v14 <= 1)
        {
          *(this + 12) |= 0x10u;
          *(this + 10) = v14;
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

uint64_t proto::gnss::PwrMeasurement::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v7, a2, a4);
}

uint64_t proto::gnss::PwrMeasurement::ByteSize(proto::gnss::PwrMeasurement *this)
{
  v2 = *(this + 48);
  if (*(this + 48))
  {
    v3 = (v2 << 31 >> 31) & 9;
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
      v4 = v3 + 9;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 0x10) != 0)
    {
      v5 = *(this + 10);
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

  *(this + 11) = v4;
  return v4;
}

void proto::gnss::PwrMeasurement::CheckTypeAndMergeFrom(proto::gnss::PwrMeasurement *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::PwrMeasurement::MergeFrom(this, lpsrc);
}

void proto::gnss::PwrMeasurement::CopyFrom(proto::gnss::PwrMeasurement *this, const proto::gnss::PwrMeasurement *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::PwrMeasurement::MergeFrom(this, a2);
  }
}

double proto::gnss::PwrMeasurement::Swap(proto::gnss::PwrMeasurement *this, proto::gnss::PwrMeasurement *a2)
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
    v6 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
    v7 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v7;
    v8 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v8;
  }

  return result;
}

uint64_t proto::gnss::DecodedRti::SharedCtor(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gnss::DecodedRti *proto::gnss::DecodedRti::DecodedRti(proto::gnss::DecodedRti *this, const proto::gnss::DecodedRti *a2)
{
  *(this + 20) = 0;
  *this = &unk_285861E78;
  *(this + 1) = 0;
  *(this + 16) = 0;
  proto::gnss::DecodedRti::MergeFrom(this, a2);
  return this;
}

void proto::gnss::DecodedRti::MergeFrom(proto::gnss::DecodedRti *this, const proto::gnss::DecodedRti *a2)
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
      v5 = *(a2 + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      *(this + 6) |= 2u;
      *(this + 16) = v6;
    }
  }
}

void sub_24554118C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::DecodedRti::~DecodedRti(proto::gnss::DecodedRti *this)
{
  *this = &unk_285861E78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861E78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861E78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::DecodedRti::default_instance(proto::gnss::DecodedRti *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::DecodedRti::default_instance_;
  if (!proto::gnss::DecodedRti::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::DecodedRti::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::DecodedRti::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::DecodedRti::MergePartialFromCodedStream(proto::gnss::DecodedRti *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v8;
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 6) |= 1u;
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

        *(this + 16) = v11 != 0;
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

uint64_t proto::gnss::DecodedRti::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return this;
}

uint64_t proto::gnss::DecodedRti::ByteSize(proto::gnss::DecodedRti *this)
{
  LOBYTE(v2) = *(this + 24);
  if (v2)
  {
    if (*(this + 24))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v2 = *(this + 6);
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

  *(this + 5) = result;
  return result;
}

void proto::gnss::DecodedRti::CheckTypeAndMergeFrom(proto::gnss::DecodedRti *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::DecodedRti::MergeFrom(this, lpsrc);
}

void proto::gnss::DecodedRti::CopyFrom(proto::gnss::DecodedRti *this, const proto::gnss::DecodedRti *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::DecodedRti::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::DecodedRti::Swap(uint64_t this, proto::gnss::DecodedRti *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LOBYTE(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
  }

  return this;
}

uint64_t proto::gnss::DecodedExtendedEphemeris::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 28) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gnss::DecodedExtendedEphemeris *proto::gnss::DecodedExtendedEphemeris::DecodedExtendedEphemeris(proto::gnss::DecodedExtendedEphemeris *this, const proto::gnss::DecodedExtendedEphemeris *a2)
{
  *(this + 4) = 0;
  *(this + 7) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_285861EF0;
  *(this + 24) = 0;
  proto::gnss::DecodedExtendedEphemeris::MergeFrom(this, a2);
  return this;
}

void proto::gnss::DecodedExtendedEphemeris::MergeFrom(proto::gnss::DecodedExtendedEphemeris *this, const proto::gnss::DecodedExtendedEphemeris *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 24);
    *(this + 9) |= 2u;
    *(this + 24) = v6;
    v4 = *(a2 + 9);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

LABEL_12:
      v8 = *(a2 + 7);
      if (v8 >= 7)
      {
        __assert_rtn("set_assistance_file_type", "GnssTypes.pb.h", 3334, "::CLP::LogEntry::PrivateData::SvPositionSource_IsValid(value)");
      }

      *(this + 9) |= 8u;
      *(this + 7) = v8;
      return;
    }

LABEL_11:
    v7 = *(a2 + 2);
    *(this + 9) |= 4u;
    *(this + 2) = v7;
    if ((*(a2 + 9) & 8) == 0)
    {
      return;
    }

    goto LABEL_12;
  }
}

void sub_245541874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::DecodedExtendedEphemeris::~DecodedExtendedEphemeris(proto::gnss::DecodedExtendedEphemeris *this)
{
  *this = &unk_285861EF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861EF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285861EF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::DecodedExtendedEphemeris::default_instance(proto::gnss::DecodedExtendedEphemeris *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::DecodedExtendedEphemeris::default_instance_;
  if (!proto::gnss::DecodedExtendedEphemeris::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::DecodedExtendedEphemeris::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::DecodedExtendedEphemeris::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 28) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t proto::gnss::DecodedExtendedEphemeris::MergePartialFromCodedStream(proto::gnss::DecodedExtendedEphemeris *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v11;
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 9) |= 1u;
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

        *(this + 24) = v14 != 0;
        *(this + 9) |= 2u;
        if (v15 < v7 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_37:
          if (v13 >= v7 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 9) |= 4u;
          if (v17 < v7 && *v17 == 32)
          {
            v9 = v17 + 1;
            *(a2 + 1) = v9;
LABEL_45:
            v20 = 0;
            if (v9 >= v7 || (v18 = *v9, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20);
              if (!result)
              {
                return result;
              }

              v18 = v20;
            }

            else
            {
              *(a2 + 1) = v9 + 1;
            }

            if (v18 <= 6)
            {
              *(this + 9) |= 8u;
              *(this + 7) = v18;
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

uint64_t proto::gnss::DecodedExtendedEphemeris::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v7, a2, a4);
}

uint64_t proto::gnss::DecodedExtendedEphemeris::ByteSize(proto::gnss::DecodedExtendedEphemeris *this)
{
  LOBYTE(v2) = *(this + 36);
  if (v2)
  {
    if (*(this + 36))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v2 = *(this + 9);
    }

    else
    {
      v3 = 0;
    }

    v4 = (v2 & 2u) + v3;
    if ((v2 & 4) != 0)
    {
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
      v2 = *(this + 9);
    }

    if ((v2 & 8) != 0)
    {
      v5 = *(this + 7);
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

  *(this + 8) = v4;
  return v4;
}

void proto::gnss::DecodedExtendedEphemeris::CheckTypeAndMergeFrom(proto::gnss::DecodedExtendedEphemeris *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::DecodedExtendedEphemeris::MergeFrom(this, lpsrc);
}

void proto::gnss::DecodedExtendedEphemeris::CopyFrom(proto::gnss::DecodedExtendedEphemeris *this, const proto::gnss::DecodedExtendedEphemeris *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::DecodedExtendedEphemeris::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::DecodedExtendedEphemeris::Swap(uint64_t this, proto::gnss::DecodedExtendedEphemeris *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LOBYTE(v2) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
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

uint64_t proto::gpsd::protobuf_ShutdownFile_GpsdProtocol_2eproto(proto::gpsd *this)
{
  if (proto::gpsd::Request::default_instance_)
  {
    (*(*proto::gpsd::Request::default_instance_ + 8))(proto::gpsd::Request::default_instance_);
  }

  if (proto::gpsd::Response::default_instance_)
  {
    (*(*proto::gpsd::Response::default_instance_ + 8))(proto::gpsd::Response::default_instance_);
  }

  if (proto::gpsd::Indication::default_instance_)
  {
    (*(*proto::gpsd::Indication::default_instance_ + 8))(proto::gpsd::Indication::default_instance_);
  }

  if (proto::gpsd::Status::default_instance_)
  {
    (*(*proto::gpsd::Status::default_instance_ + 8))(proto::gpsd::Status::default_instance_);
  }

  if (proto::gpsd::SetPvtmReport::default_instance_)
  {
    (*(*proto::gpsd::SetPvtmReport::default_instance_ + 8))(proto::gpsd::SetPvtmReport::default_instance_);
  }

  if (proto::gpsd::InjectAssistanceFile::default_instance_)
  {
    (*(*proto::gpsd::InjectAssistanceFile::default_instance_ + 8))(proto::gpsd::InjectAssistanceFile::default_instance_);
  }

  if (proto::gpsd::InjectRtiFile::default_instance_)
  {
    (*(*proto::gpsd::InjectRtiFile::default_instance_ + 8))(proto::gpsd::InjectRtiFile::default_instance_);
  }

  if (proto::gpsd::InjectRavenOrbitFile::default_instance_)
  {
    (*(*proto::gpsd::InjectRavenOrbitFile::default_instance_ + 8))(proto::gpsd::InjectRavenOrbitFile::default_instance_);
  }

  if (proto::gpsd::InjectSvidBlocklist::default_instance_)
  {
    (*(*proto::gpsd::InjectSvidBlocklist::default_instance_ + 8))(proto::gpsd::InjectSvidBlocklist::default_instance_);
  }

  if (proto::gpsd::InjectAssistancePosition::default_instance_)
  {
    (*(*proto::gpsd::InjectAssistancePosition::default_instance_ + 8))(proto::gpsd::InjectAssistancePosition::default_instance_);
  }

  if (proto::gpsd::InjectAssistanceTime::default_instance_)
  {
    (*(*proto::gpsd::InjectAssistanceTime::default_instance_ + 8))(proto::gpsd::InjectAssistanceTime::default_instance_);
  }

  if (proto::gpsd::DeleteGnssData::default_instance_)
  {
    (*(*proto::gpsd::DeleteGnssData::default_instance_ + 8))(proto::gpsd::DeleteGnssData::default_instance_);
  }

  if (proto::gpsd::SetNmeaHandler::default_instance_)
  {
    (*(*proto::gpsd::SetNmeaHandler::default_instance_ + 8))(proto::gpsd::SetNmeaHandler::default_instance_);
  }

  if (proto::gpsd::SetAssistancePressure::default_instance_)
  {
    (*(*proto::gpsd::SetAssistancePressure::default_instance_ + 8))(proto::gpsd::SetAssistancePressure::default_instance_);
  }

  if (proto::gpsd::SetAssistanceAccel::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceAccel::default_instance_ + 8))(proto::gpsd::SetAssistanceAccel::default_instance_);
  }

  if (proto::gpsd::SetAssistanceGyro::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceGyro::default_instance_ + 8))(proto::gpsd::SetAssistanceGyro::default_instance_);
  }

  if (proto::gpsd::SetAssistanceDem::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceDem::default_instance_ + 8))(proto::gpsd::SetAssistanceDem::default_instance_);
  }

  if (proto::gpsd::SetAssistanceMapVector::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceMapVector::default_instance_ + 8))(proto::gpsd::SetAssistanceMapVector::default_instance_);
  }

  if (proto::gpsd::SetAssistanceMotionActivityContext::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceMotionActivityContext::default_instance_ + 8))(proto::gpsd::SetAssistanceMotionActivityContext::default_instance_);
  }

  if (proto::gpsd::SetAssistanceMountState::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceMountState::default_instance_ + 8))(proto::gpsd::SetAssistanceMountState::default_instance_);
  }

  if (proto::gpsd::SetAssistanceSignalEnvironment::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceSignalEnvironment::default_instance_ + 8))(proto::gpsd::SetAssistanceSignalEnvironment::default_instance_);
  }

  if (proto::gpsd::SetAssistanceSpeedConstraint::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceSpeedConstraint::default_instance_ + 8))(proto::gpsd::SetAssistanceSpeedConstraint::default_instance_);
  }

  if (proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_)
  {
    (*(*proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_ + 8))(proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_);
  }

  if (proto::gpsd::SetThermalRiskState::default_instance_)
  {
    (*(*proto::gpsd::SetThermalRiskState::default_instance_ + 8))(proto::gpsd::SetThermalRiskState::default_instance_);
  }

  if (proto::gpsd::SetConfigSimulatorMode::default_instance_)
  {
    (*(*proto::gpsd::SetConfigSimulatorMode::default_instance_ + 8))(proto::gpsd::SetConfigSimulatorMode::default_instance_);
  }

  if (proto::gpsd::SetConfigEnableGnssConstellations::default_instance_)
  {
    (*(*proto::gpsd::SetConfigEnableGnssConstellations::default_instance_ + 8))(proto::gpsd::SetConfigEnableGnssConstellations::default_instance_);
  }

  if (proto::gpsd::SetConfigRfBandEnable::default_instance_)
  {
    (*(*proto::gpsd::SetConfigRfBandEnable::default_instance_ + 8))(proto::gpsd::SetConfigRfBandEnable::default_instance_);
  }

  if (proto::gpsd::SetConfigDutyCycling::default_instance_)
  {
    (*(*proto::gpsd::SetConfigDutyCycling::default_instance_ + 8))(proto::gpsd::SetConfigDutyCycling::default_instance_);
  }

  if (proto::gpsd::TerminationImminent::default_instance_)
  {
    (*(*proto::gpsd::TerminationImminent::default_instance_ + 8))(proto::gpsd::TerminationImminent::default_instance_);
  }

  if (proto::gpsd::ExitMessage::default_instance_)
  {
    (*(*proto::gpsd::ExitMessage::default_instance_ + 8))(proto::gpsd::ExitMessage::default_instance_);
  }

  if (proto::gpsd::RecoveryStatistics::default_instance_)
  {
    (*(*proto::gpsd::RecoveryStatistics::default_instance_ + 8))(proto::gpsd::RecoveryStatistics::default_instance_);
  }

  if (proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_)
  {
    (*(*proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_ + 8))(proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_);
  }

  if (proto::gpsd::RecoveryStatistics_RecoveryPoint::default_instance_)
  {
    (*(*proto::gpsd::RecoveryStatistics_RecoveryPoint::default_instance_ + 8))(proto::gpsd::RecoveryStatistics_RecoveryPoint::default_instance_);
  }

  if (proto::gpsd::LtlInfoRequest::default_instance_)
  {
    (*(*proto::gpsd::LtlInfoRequest::default_instance_ + 8))(proto::gpsd::LtlInfoRequest::default_instance_);
  }

  if (proto::gpsd::LtlInfo::default_instance_)
  {
    (*(*proto::gpsd::LtlInfo::default_instance_ + 8))(proto::gpsd::LtlInfo::default_instance_);
  }

  if (proto::gpsd::LtlInfo_LtlLutParams::default_instance_)
  {
    (*(*proto::gpsd::LtlInfo_LtlLutParams::default_instance_ + 8))(proto::gpsd::LtlInfo_LtlLutParams::default_instance_);
  }

  if (proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_)
  {
    (*(*proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_ + 8))(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_);
  }

  if (proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_)
  {
    (*(*proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_ + 8))(proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_);
  }

  if (proto::gpsd::LtlInfo_LtlInitialParams::default_instance_)
  {
    (*(*proto::gpsd::LtlInfo_LtlInitialParams::default_instance_ + 8))(proto::gpsd::LtlInfo_LtlInitialParams::default_instance_);
  }

  if (proto::gpsd::Exception::default_instance_)
  {
    (*(*proto::gpsd::Exception::default_instance_ + 8))(proto::gpsd::Exception::default_instance_);
  }

  if (proto::gpsd::AskBasebandReset::default_instance_)
  {
    (*(*proto::gpsd::AskBasebandReset::default_instance_ + 8))(proto::gpsd::AskBasebandReset::default_instance_);
  }

  if (proto::gpsd::LogEntry::default_instance_)
  {
    (*(*proto::gpsd::LogEntry::default_instance_ + 8))(proto::gpsd::LogEntry::default_instance_);
  }

  result = proto::gpsd::StartContext::default_instance_;
  if (proto::gpsd::StartContext::default_instance_)
  {
    v2 = *(*proto::gpsd::StartContext::default_instance_ + 8);

    return v2();
  }

  return result;
}