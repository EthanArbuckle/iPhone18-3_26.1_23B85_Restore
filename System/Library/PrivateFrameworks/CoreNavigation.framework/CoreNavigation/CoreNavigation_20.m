uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 116);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 116);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
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
    v8 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 40), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 48), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_29:
  v9 = *(v5 + 56);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v9, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 64), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 96), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 72), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 80), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 88), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

LABEL_38:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xF, *(v5 + 100), a2, a4);
    if ((*(v5 + 116) & 0x8000) == 0)
    {
      return this;
    }

    goto LABEL_39;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 104), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x4000) != 0)
  {
    goto LABEL_38;
  }

LABEL_16:
  if ((v6 & 0x8000) == 0)
  {
    return this;
  }

LABEL_39:
  v10 = *(v5 + 101);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x10, v10, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *this)
{
  v2 = *(this + 29);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_44;
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

  v5 = *(this + 1);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
    v5 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::default_instance_ + 8);
  }

  v6 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::ByteSize(v5);
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
  v2 = *(this + 29);
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
      v9 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::default_instance_ + 16);
    }

    v10 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::ByteSize(v9);
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
    v2 = *(this + 29);
  }

LABEL_18:
  if ((v2 & 4) != 0)
  {
    v13 = *(this + 6);
    if ((v13 & 0x80000000) != 0)
    {
      v14 = 11;
    }

    else if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v2 = *(this + 29);
    }

    else
    {
      v14 = 2;
    }

    v3 += v14;
    if ((v2 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if ((v2 & 8) != 0)
  {
LABEL_27:
    v15 = *(this + 7);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v2 = *(this + 29);
    }

    else
    {
      v16 = 2;
    }

    v3 += v16;
  }

LABEL_33:
  v17 = v3 + 9;
  if ((v2 & 0x10) == 0)
  {
    v17 = v3;
  }

  if ((v2 & 0x20) != 0)
  {
    v17 += 9;
  }

  if ((v2 & 0x40) != 0)
  {
    v4 = v17 + 9;
  }

  else
  {
    v4 = v17;
  }

  if ((v2 & 0x80) != 0)
  {
    v18 = *(this + 7);
    if (!v18)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
      v18 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::default_instance_ + 56);
    }

    v4 = v4 + CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::ByteSize(v18) + 2;
    v2 = *(this + 29);
  }

LABEL_44:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      LODWORD(v4) = v4 + 9;
    }

    if ((v2 & 0x200) != 0)
    {
      v19 = *(this + 24);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = 11;
      }

      else if (v19 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
        v2 = *(this + 29);
      }

      else
      {
        v20 = 2;
      }

      LODWORD(v4) = v20 + v4;
    }

    v21 = v4 + 9;
    if ((v2 & 0x400) == 0)
    {
      v21 = v4;
    }

    if ((v2 & 0x800) != 0)
    {
      v21 += 9;
    }

    if ((v2 & 0x1000) != 0)
    {
      v21 += 9;
    }

    if ((v2 & 0x2000) != 0)
    {
      v21 += 9;
    }

    v22 = v21 + ((v2 >> 13) & 2);
    if ((v2 & 0x8000) != 0)
    {
      v4 = v22 + 3;
    }

    else
    {
      v4 = v22;
    }
  }

  *(this + 28) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections *a2)
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

void sub_1D0C9B3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::Swap(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *this, CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v3;
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
    LODWORD(v7) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v7;
    v9 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v9;
    v10 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v10;
    v11 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v11;
    result = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = result;
    LOBYTE(v7) = *(this + 100);
    *(this + 100) = *(a2 + 100);
    *(a2 + 100) = v7;
    LOBYTE(v7) = *(this + 101);
    *(this + 101) = *(a2 + 101);
    *(a2 + 101) = v7;
    LODWORD(v7) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v7;
    LODWORD(v7) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v7;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::GNSSSatelliteID(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CD7D28;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::~GNSSSatelliteID(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID *this)
{
  *this = &unk_1F4CD7D28;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::~GNSSSatelliteID(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (v7 <= 6)
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID *this)
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

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::Swap(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID *this, CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID *a2)
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

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::SharedCtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::MeasurementCorrections(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections *a2)
{
  *this = &unk_1F4CD7DA0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::~MeasurementCorrections(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections *this)
{
  *this = &unk_1F4CD7DA0;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::~MeasurementCorrections(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (v7 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }

        if (v6 == 4)
        {
          if (v7 != 1)
          {
            goto LABEL_21;
          }

LABEL_36:
          v13 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = v13;
          *(this + 13) |= 8u;
          v11 = *(a2 + 1);
          if (v11 < *(a2 + 2) && *v11 == 41)
          {
            *(a2 + 1) = v11 + 1;
            goto LABEL_40;
          }
        }

        else
        {
          if (v6 != 5 || v7 != 1)
          {
            goto LABEL_21;
          }

LABEL_40:
          v13 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v13;
          *(this + 13) |= 0x10u;
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

      if (v7 != 1)
      {
        goto LABEL_21;
      }

      v13 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v13;
      *(this + 13) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 17)
      {
        *(a2 + 1) = v8 + 1;
LABEL_28:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v13;
        *(this + 13) |= 2u;
        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 25)
        {
          *(a2 + 1) = v9 + 1;
LABEL_32:
          v13 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v13;
          *(this + 13) |= 4u;
          v10 = *(a2 + 1);
          if (v10 < *(a2 + 2) && *v10 == 33)
          {
            *(a2 + 1) = v10 + 1;
            goto LABEL_36;
          }
        }
      }
    }

    if (v6 == 2 && v7 == 1)
    {
      goto LABEL_28;
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections *this)
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

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::Swap(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections *this, CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections *a2)
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

void sub_1D0C9C2CC(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        operator new();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerBandMeasurementCount::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }
}

void sub_1D0C9C434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_ShutdownFile_CoreNavigationCLPInternalToolDataTypes_2eproto(CoreNavigation::CLP::LogEntry::InternalToolDataTypes *this)
{
  if (CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::default_instance_);
  }

  result = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::default_instance_;
  if (CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::default_instance_)
  {
    v2 = *(*CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::default_instance_ + 8);

    return v2();
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::GpsTime(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CD7FC8;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CD7FC8;
  *(this + 24) = 0;
  return this;
}

void *CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::UtcTime(void *this)
{
  *this = &unk_1F4CD8040;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CD8040;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::PosAndVel(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel *this)
{
  *this = &unk_1F4CD80B8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4CD80B8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::PosAndVelError(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError *this)
{
  *this = &unk_1F4CD8130;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = &unk_1F4CD8130;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::EcefXyz(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz *this)
{
  *this = &unk_1F4CD81A8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4CD81A8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::EastNorthUp(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp *this)
{
  *this = &unk_1F4CD8220;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4CD8220;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::LatLonAltGeodetic(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic *this)
{
  *this = &unk_1F4CD8298;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4CD8298;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void *CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::default_instance_;
  this[2] = v1;
  this[3] = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::default_instance_;
  return this;
}

void *CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::default_instance_;
  this[2] = v1;
  v2 = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::default_instance_;
  this[3] = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::default_instance_;
  this[4] = v2;
  return this;
}

void CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(CoreNavigation::CLP::LogEntry::InternalToolDataTypes *this)
{
  v1 = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0C9CA2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime *CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::GpsTime(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime *this, const CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CD7FC8;
  *(this + 6) = 0;
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime *this, const CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime *a2)
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
      v6 = *(a2 + 4);
      *(this + 6) |= 1u;
      *(this + 4) = v6;
      v5 = *(a2 + 6);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = result;
    }
  }

  return result;
}

void sub_1D0C9CB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::~GpsTime(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime *this)
{
  *this = &unk_1F4CD7FC8;
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::~GpsTime(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 6) |= 1u;
      if (v10 < v7 && *v10 == 17)
      {
        *(a2 + 1) = v10 + 1;
LABEL_21:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = v12;
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

    if (v6 == 1)
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v7, a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime *this)
{
  LOBYTE(v2) = *(this + 24);
  if (v2)
  {
    if (*(this + 24))
    {
      v5 = *(this + 4);
      if (v5 >= 0x80)
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

  *(this + 5) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime *this, const CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::Swap(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime *this, CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    result = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = result;
    v4 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime *CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::UtcTime(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime *this, const CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime *a2)
{
  *this = &unk_1F4CD8040;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime *this, const CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
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
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 7) |= 2u;
    *(this + 3) = v7;
    if ((*(a2 + 7) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 2);
    *(this + 7) |= 4u;
    *(this + 2) = v5;
  }
}

void sub_1D0C9D1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::~UtcTime(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime *this)
{
  *this = &unk_1F4CD8040;
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::~UtcTime(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v6 = TagFallback >> 3;
      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v7 == 1)
        {
          goto LABEL_32;
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

      v16[0] = 0;
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v16);
        if (!result)
        {
          return result;
        }

        v10 = v16[0];
        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 2) = v10;
      *(this + 7) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_24:
        v16[0] = 0;
        if (v12 >= v8 || (v14 = *v12, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v16);
          if (!result)
          {
            return result;
          }

          v14 = v16[0];
          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 3) = v14;
        *(this + 7) |= 2u;
        if (v15 < v8 && *v15 == 25)
        {
          *(a2 + 1) = v15 + 1;
LABEL_32:
          *v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 2) = *v16;
          *(this + 7) |= 4u;
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
      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_24;
    }

LABEL_16:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 8), a2, a4);
  v6 = *(v5 + 28);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v7, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime *this)
{
  LOBYTE(v2) = *(this + 28);
  if (!v2)
  {
    result = 0;
    goto LABEL_22;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_13:
    v6 = *(this + 3);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 7);
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
    goto LABEL_19;
  }

  v5 = *(this + 2);
  if ((v5 & 0x80000000) != 0)
  {
    v3 = 11;
    if ((v2 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v5 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 7);
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
    result = v3 + 9;
  }

  else
  {
    result = v3;
  }

LABEL_22:
  *(this + 6) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime *this, const CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime::Swap(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime *this, CoreNavigation::CLP::LogEntry::InternalToolDataTypes::UtcTime *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v5 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v5;
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::SharedCtor(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel *CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::PosAndVel(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel *this, const CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel *a2)
{
  *this = &unk_1F4CD80B8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel *this, const CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      *(this + 9) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::default_instance_ + 8);
      }

      result = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergeFrom(v6, v7);
      v5 = *(a2 + 9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 9) |= 2u;
    v8 = *(this + 2);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::default_instance_ + 16);
    }

    result = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergeFrom(v8, v9);
    if ((*(a2 + 9) & 4) != 0)
    {
LABEL_18:
      *(this + 9) |= 4u;
      v10 = *(this + 3);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 3);
      if (!v11)
      {
        CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
        v11 = *(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::default_instance_ + 24);
      }

      return CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::MergeFrom(v10, v11);
    }
  }

  return result;
}

void sub_1D0C9DA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::~PosAndVel(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel *this)
{
  *this = &unk_1F4CD80B8;
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::~PosAndVel(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::SharedDtor(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel *this)
{
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::default_instance_ != this)
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 36);
  if (v1)
  {
    if (*(this + 36))
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
        v1 = *(this + 36);
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
        v1 = *(this + 36);
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
      }
    }
  }

  *(this + 36) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::Clear(uint64_t this)
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::Clear(uint64_t this)
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (!CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
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
        if (!CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
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
          if (!CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::MergePartialFromCodedStream(v23, a2) || *(a2 + 36) != 1)
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::default_instance_ + 8);
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
    CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  if ((*(v5 + 36) & 4) != 0)
  {
LABEL_11:
    v9 = *(v5 + 24);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::default_instance_ + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel *this)
{
  LOBYTE(v2) = *(this + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_34;
  }

  if (*(this + 36))
  {
    v4 = *(this + 1);
    if (!v4)
    {
      CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
      v4 = *(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::default_instance_ + 8);
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
    if ((v2 & 2) == 0)
    {
      goto LABEL_24;
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
      CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::default_instance_ + 16);
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
  if ((v2 & 4) != 0)
  {
    v10 = *(this + 3);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
      v10 = *(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::default_instance_ + 24);
    }

    v11 = *(v10 + 36);
    if (*(v10 + 36))
    {
      v12 = (v11 << 31 >> 31) & 9;
      if ((v11 & 2) != 0)
      {
        v12 += 9;
      }

      if ((v11 & 4) != 0)
      {
        v11 = v12 + 9;
      }

      else
      {
        v11 = v12;
      }
    }

    *(v10 + 32) = v11;
    v3 = (v3 + v11 + 2);
  }

LABEL_34:
  *(this + 8) = v3;
  return v3;
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz *this, const CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz *a2)
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

void sub_1D0C9E4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic *this, const CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic *a2)
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

void sub_1D0C9E59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel *this, const CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVel *a2)
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
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    LODWORD(v4) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v4;
    LODWORD(v4) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v4;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::SharedCtor(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError *this)
{
  *(this + 7) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError *CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::PosAndVelError(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError *this, const CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError *a2)
{
  *this = &unk_1F4CD8130;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError *this, const CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v5) = *(a2 + 60);
  if (v5)
  {
    if (*(a2 + 60))
    {
      *(this + 15) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::default_instance_ + 8);
      }

      result = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergeFrom(v6, v7);
      v5 = *(a2 + 15);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_22;
      }
    }

    else if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 15) |= 2u;
    v8 = *(this + 2);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::default_instance_ + 16);
    }

    result = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergeFrom(v8, v9);
    v5 = *(a2 + 15);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_22:
    *(this + 15) |= 4u;
    v10 = *(this + 3);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 3);
    if (!v11)
    {
      CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
      v11 = *(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::default_instance_ + 24);
    }

    result = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::MergeFrom(v10, v11);
    v5 = *(a2 + 15);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_32;
    }

LABEL_27:
    *(this + 15) |= 8u;
    v12 = *(this + 4);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 4);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
      v13 = *(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::default_instance_ + 32);
    }

    result = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::MergeFrom(v12, v13);
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

LABEL_32:
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

void sub_1D0C9EA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::~PosAndVelError(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError *this)
{
  *this = &unk_1F4CD8130;
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::~PosAndVelError(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::SharedDtor(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError *this)
{
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::default_instance_ != this)
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
      v6 = *(*v5 + 8);

      v6();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 60);
  if (v1)
  {
    if (*(this + 60))
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
        v1 = *(this + 60);
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
        v1 = *(this + 60);
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
        v1 = *(this + 60);
      }
    }

    if ((v1 & 8) != 0)
    {
      v5 = *(this + 32);
      if (v5)
      {
        if (*(v5 + 36))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
        }

        *(v5 + 36) = 0;
      }
    }

    *(this + 40) = 0;
    *(this + 48) = 0;
  }

  *(this + 60) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::Clear(uint64_t this)
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

          if (v6 == 5)
          {
            if (v7 != 1)
            {
              goto LABEL_28;
            }

LABEL_82:
            *v39 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
            {
              return 0;
            }

            *(this + 5) = *v39;
            *(this + 15) |= 0x10u;
            v37 = *(a2 + 1);
            if (v37 < *(a2 + 2) && *v37 == 49)
            {
              *(a2 + 1) = v37 + 1;
              goto LABEL_86;
            }
          }

          else
          {
            if (v6 != 6 || v7 != 1)
            {
              goto LABEL_28;
            }

LABEL_86:
            *v39 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
            {
              return 0;
            }

            *(this + 6) = *v39;
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

        if (v7 != 2)
        {
          goto LABEL_28;
        }

        *(this + 15) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v39[0] = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39))
          {
            return 0;
          }
        }

        else
        {
          v39[0] = *v9;
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
        if (!CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
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
      *(this + 15) |= 2u;
      v16 = *(this + 2);
      if (!v16)
      {
        operator new();
      }

      v39[0] = 0;
      v17 = *(a2 + 1);
      if (v17 >= *(a2 + 2) || *v17 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39))
        {
          return 0;
        }
      }

      else
      {
        v39[0] = *v17;
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
      if (!CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
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
LABEL_54:
        *(this + 15) |= 4u;
        v23 = *(this + 3);
        if (!v23)
        {
          operator new();
        }

        v39[0] = 0;
        v24 = *(a2 + 1);
        if (v24 >= *(a2 + 2) || *v24 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39))
          {
            return 0;
          }
        }

        else
        {
          v39[0] = *v24;
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
        if (!CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::MergePartialFromCodedStream(v23, a2) || *(a2 + 36) != 1)
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

        v29 = *(a2 + 1);
        if (v29 < *(a2 + 2) && *v29 == 34)
        {
          *(a2 + 1) = v29 + 1;
LABEL_68:
          *(this + 15) |= 8u;
          v30 = *(this + 4);
          if (!v30)
          {
            operator new();
          }

          v39[0] = 0;
          v31 = *(a2 + 1);
          if (v31 >= *(a2 + 2) || *v31 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39))
            {
              return 0;
            }
          }

          else
          {
            v39[0] = *v31;
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
          if (!CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::MergePartialFromCodedStream(v30, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v34 = *(a2 + 14);
          v13 = __OFSUB__(v34, 1);
          v35 = v34 - 1;
          if (v35 < 0 == v13)
          {
            *(a2 + 14) = v35;
          }

          v36 = *(a2 + 1);
          if (v36 < *(a2 + 2) && *v36 == 41)
          {
            *(a2 + 1) = v36 + 1;
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 60);
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
    CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 60);
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
    CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
    if ((*(v5 + 60) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_17:
  v10 = *(v5 + 32);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  v6 = *(v5 + 60);
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
  v11 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, v11, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError *this)
{
  LOBYTE(v2) = *(this + 60);
  if (!v2)
  {
    result = 0;
    goto LABEL_50;
  }

  if ((*(this + 60) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 60) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
    v5 = *(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::default_instance_ + 8);
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
  v2 = *(this + 15);
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v8 = *(this + 2);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::default_instance_ + 16);
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
    v2 = *(this + 15);
  }

LABEL_24:
  if ((v2 & 4) != 0)
  {
    v11 = *(this + 3);
    if (!v11)
    {
      CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
      v11 = *(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::default_instance_ + 24);
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
    v2 = *(this + 15);
    if ((v2 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  if ((v2 & 8) != 0)
  {
LABEL_36:
    v14 = *(this + 4);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);
      v14 = *(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::default_instance_ + 32);
    }

    v15 = *(v14 + 36);
    if (*(v14 + 36))
    {
      v16 = (v15 << 31 >> 31) & 9;
      if ((v15 & 2) != 0)
      {
        v16 += 9;
      }

      if ((v15 & 4) != 0)
      {
        v15 = v16 + 9;
      }

      else
      {
        v15 = v16;
      }
    }

    *(v14 + 32) = v15;
    v3 += v15 + 2;
    v2 = *(this + 15);
  }

LABEL_45:
  v17 = v3 + 9;
  if ((v2 & 0x10) == 0)
  {
    v17 = v3;
  }

  if ((v2 & 0x20) != 0)
  {
    result = v17 + 9;
  }

  else
  {
    result = v17;
  }

LABEL_50:
  *(this + 14) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp *this, const CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp *a2)
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

void sub_1D0C9F754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError *this, const CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError::Swap(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError *this, CoreNavigation::CLP::LogEntry::InternalToolDataTypes::PosAndVelError *a2)
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
    LODWORD(v5) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v5;
    LODWORD(v5) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v5;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::SharedCtor(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz *CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::EcefXyz(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz *this, const CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz *a2)
{
  *this = &unk_1F4CD81A8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::~EcefXyz(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz *this)
{
  *this = &unk_1F4CD81A8;
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::~EcefXyz(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz *this)
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

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz *this, const CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::Swap(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz *this, CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz *a2)
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

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::SharedCtor(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp *CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::EastNorthUp(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp *this, const CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp *a2)
{
  *this = &unk_1F4CD8220;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::~EastNorthUp(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp *this)
{
  *this = &unk_1F4CD8220;
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::~EastNorthUp(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp *this)
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

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp *this, const CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp::Swap(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp *this, CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EastNorthUp *a2)
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

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::SharedCtor(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic *CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::LatLonAltGeodetic(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic *this, const CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic *a2)
{
  *this = &unk_1F4CD8298;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::~LatLonAltGeodetic(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic *this)
{
  *this = &unk_1F4CD8298;
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::protobuf_AddDesc_CoreNavigationCLPInternalToolDataTypes_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::~LatLonAltGeodetic(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic *this)
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

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic *this, const CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic::Swap(CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic *this, CoreNavigation::CLP::LogEntry::InternalToolDataTypes::LatLonAltGeodetic *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_ShutdownFile_CoreNavigationCLPRayTracingTileData_2eproto(CoreNavigation::CLP::LogEntry::RayTracingTileData *this)
{
  if (CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::default_instance_);
  }

  result = CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::default_instance_;
  if (CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::default_instance_)
  {
    v2 = *(*CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::default_instance_ + 8);

    return v2();
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::LogEntry(void *this)
{
  v1 = MEMORY[0x1E69E5958];
  *this = &unk_1F4CD83B8;
  this[1] = 0;
  this[2] = 0;
  this[3] = v1;
  this[4] = 0;
  return this;
}

{
  v1 = MEMORY[0x1E69E5958];
  *this = &unk_1F4CD83B8;
  this[1] = 0;
  this[2] = 0;
  this[3] = v1;
  this[4] = 0;
  return this;
}

void *CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp::RayTracingTileTimestamp(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD8430;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD8430;
  return this;
}

double CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::RayTracingTileHeader(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader *this)
{
  *this = &unk_1F4CD84A8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = &unk_1F4CD84A8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::RayTracingTilePayloadMetaData(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData *this)
{
  *this = &unk_1F4CD8520;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 44) = 0;
  *(this + 60) = 0;
  *(this + 52) = 0;
  return result;
}

{
  *this = &unk_1F4CD8520;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 44) = 0;
  *(this + 60) = 0;
  *(this + 52) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::PointFacetVisibilityData(uint64_t this)
{
  *(this + 36) = 0;
  *(this + 40) = 0;
  *this = &unk_1F4CD8598;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 36) = 0;
  *(this + 40) = 0;
  *this = &unk_1F4CD8598;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::FacetInterVisibilityData(uint64_t this)
{
  *(this + 36) = 0;
  *(this + 40) = 0;
  *this = &unk_1F4CD8610;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 36) = 0;
  *(this + 40) = 0;
  *this = &unk_1F4CD8610;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::RayTracingTilePayload(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 136) = 0;
  *(this + 144) = 0;
  *(this + 152) = 0;
  *(this + 176) = 0;
  *(this + 160) = 0;
  *(this + 168) = 0;
  *(this + 200) = 0;
  *(this + 184) = 0;
  *(this + 192) = 0;
  *(this + 208) = 0;
  *this = &unk_1F4CD8688;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 136) = 0;
  *(this + 144) = 0;
  *(this + 152) = 0;
  *(this + 176) = 0;
  *(this + 160) = 0;
  *(this + 168) = 0;
  *(this + 200) = 0;
  *(this + 184) = 0;
  *(this + 192) = 0;
  *(this + 208) = 0;
  *this = &unk_1F4CD8688;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::default_instance_;
  *(this + 16) = v1;
  return this;
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(CoreNavigation::CLP::LogEntry::RayTracingTileData *this)
{
  v1 = CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0CA104C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::SharedCtor(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry *this)
{
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 3) = MEMORY[0x1E69E5958];
  *(this + 4) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry *CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::LogEntry(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry *this, const CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry *a2)
{
  *this = &unk_1F4CD83B8;
  *(this + 1) = 0;
  v3 = MEMORY[0x1E69E5958];
  *(this + 2) = 0;
  *(this + 3) = v3;
  *(this + 4) = 0;
  CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry *this, const CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry *a2)
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
        CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(this);
        v6 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::MergeFrom(v5, v6);
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_18;
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
      CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::MergeFrom(v7, v8);
    if ((*(a2 + 9) & 4) != 0)
    {
LABEL_18:
      v9 = *(a2 + 3);
      *(this + 9) |= 4u;
      v10 = *(this + 3);
      if (v10 == MEMORY[0x1E69E5958])
      {
        operator new();
      }

      std::string::operator=(v10, v9);
    }
  }
}

void sub_1D0CA132C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::~LogEntry(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry *this)
{
  *this = &unk_1F4CD83B8;
  CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::~LogEntry(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::SharedDtor(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry *this)
{
  v1 = this;
  v2 = *(this + 3);
  if (v2 != MEMORY[0x1E69E5958] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x1D387ECA0](v2, 0x1012C40EC159624);
  }

  CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::default_instance_ != v1)
  {
    v4 = *(v1 + 1);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v1 + 2);
    if (v5)
    {
      v6 = *(*v5 + 8);

      v6();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 36);
  if (v2)
  {
    if (*(this + 36))
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::Clear(this);
        v2 = *(v1 + 36);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::Clear(this);
        v2 = *(v1 + 36);
      }
    }

    if ((v2 & 4) != 0)
    {
      v3 = *(v1 + 24);
      if (v3 != MEMORY[0x1E69E5958])
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

  *(v1 + 36) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::Clear(uint64_t this)
{
  if (*(this + 48))
  {
    if (*(this + 48))
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
    *(this + 40) = 0;
    *(this + 32) = 0;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::Clear(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload *this)
{
  if (*(this + 212))
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(v2 + 72);
      if (v3)
      {
        *(v2 + 24) = 0u;
        *(v2 + 8) = 0u;
        *(v2 + 40) = 1;
      }

      if ((v3 & 0xFF00) != 0)
      {
        *(v2 + 52) = 0;
        *(v2 + 44) = 0;
        *(v2 + 60) = 0;
      }

      *(v2 + 72) = 0;
    }
  }

  *(this + 6) = 0;
  *(this + 12) = 0;
  *(this + 18) = 0;
  sub_1D0C77384(this + 88);
  sub_1D0C77384(this + 112);
  sub_1D0C77384(this + 136);
  sub_1D0C77384(this + 160);
  result = sub_1D0C77384(this + 184);
  *(this + 53) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x1E69E5958];
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
            goto LABEL_19;
          }

LABEL_45:
          *(this + 9) |= 4u;
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

        if (v7 == 2)
        {
          break;
        }

        if (v7 != 1 || v8 != 2)
        {
          goto LABEL_19;
        }

        *(this + 9) |= 1u;
        v9 = *(this + 1);
        if (!v9)
        {
          operator new();
        }

        v25 = 0;
        v10 = *(a2 + 1);
        if (v10 >= *(a2 + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25))
          {
            return 0;
          }
        }

        else
        {
          v25 = *v10;
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
        if (!CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
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
          goto LABEL_31;
        }
      }

      if (v8 == 2)
      {
        break;
      }

LABEL_19:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

LABEL_31:
    *(this + 9) |= 2u;
    v17 = *(this + 2);
    if (!v17)
    {
      operator new();
    }

    v26 = 0;
    v18 = *(a2 + 1);
    if (v18 >= *(a2 + 2) || *v18 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26))
      {
        return 0;
      }
    }

    else
    {
      v26 = *v18;
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
    if (!CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::MergePartialFromCodedStream(v17, a2) || *(a2 + 36) != 1)
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
      goto LABEL_45;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::default_instance_ + 8);
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
    CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  if ((*(v5 + 36) & 4) != 0)
  {
LABEL_11:
    v9 = *(v5 + 24);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry *this)
{
  LOBYTE(v2) = *(this + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_28;
  }

  if (*(this + 36))
  {
    v4 = *(this + 1);
    if (!v4)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(0);
      v4 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::default_instance_ + 8);
    }

    v5 = CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::ByteSize(v4);
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
    v2 = *(this + 9);
    if ((v2 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = 0;
  if ((*(this + 36) & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 2);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(0);
      v8 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::default_instance_ + 16);
    }

    v9 = CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::ByteSize(v8);
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
    v2 = *(this + 9);
  }

LABEL_18:
  if ((v2 & 4) != 0)
  {
    v12 = *(this + 3);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v3 = (v3 + v17 + v13 + 1);
  }

LABEL_28:
  *(this + 8) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader *this, const CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v5) = *(a2 + 48);
  if (v5)
  {
    if (*(a2 + 48))
    {
      *(this + 12) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::default_instance_ + 8);
      }

      result = CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp::MergeFrom(v6, v7);
      v5 = *(a2 + 12);
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

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 4);
    *(this + 12) |= 2u;
    *(this + 4) = v8;
    v5 = *(a2 + 12);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }

LABEL_18:
    v9 = *(a2 + 5);
    *(this + 12) |= 4u;
    *(this + 5) = v9;
    v5 = *(a2 + 12);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }

LABEL_19:
    v10 = *(a2 + 10);
    *(this + 12) |= 8u;
    *(this + 10) = v10;
    v5 = *(a2 + 12);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }

LABEL_20:
    result = *(a2 + 3);
    *(this + 12) |= 0x10u;
    *(this + 3) = result;
    if ((*(a2 + 12) & 0x20) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 4);
    *(this + 12) |= 0x20u;
    *(this + 4) = result;
  }

  return result;
}

void sub_1D0CA1E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload *this, const CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    sub_1D0C773F4(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 8 * *(this + 6)), *(a2 + 2), 8 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(a2 + 12);
  if (v5)
  {
    sub_1D0CA6E90(this + 5, *(this + 12) + v5);
    memcpy((*(this + 5) + 4 * *(this + 12)), *(a2 + 5), 4 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  v6 = *(a2 + 18);
  if (v6)
  {
    sub_1D0CA6E90(this + 8, *(this + 18) + v6);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v7 = *(this + 24);
  v8 = *(a2 + 24);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88));
  LODWORD(v9) = *(a2 + 24);
  if (v9 >= 1)
  {
    v10 = 0;
    do
    {
      if (v10 >= v9)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
      }

      v11 = *(*(a2 + 11) + 8 * v10);
      v12 = *(this + 25);
      v13 = *(this + 24);
      if (v13 >= v12)
      {
        if (v12 == *(this + 26))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88));
          v12 = *(this + 25);
        }

        *(this + 25) = v12 + 1;
        operator new();
      }

      v14 = *(this + 11);
      *(this + 24) = v13 + 1;
      CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::MergeFrom(*(v14 + 8 * v13), v11);
      ++v10;
      v9 = *(a2 + 24);
    }

    while (v10 < v9);
  }

  sub_1D0CA6F40((this + 112), a2 + 112);
  sub_1D0CA6F40((this + 136), a2 + 136);
  sub_1D0CA6F40((this + 160), a2 + 160);
  sub_1D0CA6F40((this + 184), a2 + 184);
  if (*(a2 + 212))
  {
    *(this + 53) |= 1u;
    v16 = *(this + 1);
    if (!v16)
    {
      operator new();
    }

    v17 = *(a2 + 1);
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(v15);
      v17 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::MergeFrom(v16, v17);
  }
}

void sub_1D0CA21F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry *this, const CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry *a2)
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
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    LODWORD(v4) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v4;
    LODWORD(v4) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v4;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp *CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp::RayTracingTileTimestamp(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp *this, const CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CD8430;
  CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp *this, const CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp *a2)
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
    result = *(a2 + 1);
    *(this + 5) |= 1u;
    *(this + 1) = result;
  }

  return result;
}

void sub_1D0CA2408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp::~RayTracingTileTimestamp(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp *this)
{
  *this = &unk_1F4CD8430;
  CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp::~RayTracingTileTimestamp(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
      }

      if (TagFallback != 9)
      {
        break;
      }

      v7 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v7) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v7;
      *(this + 5) |= 1u;
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
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp *this)
{
  v1 = ((*(this + 5) << 31) >> 31) & 9;
  *(this + 4) = v1;
  return v1;
}

double CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp *this, const CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp::Swap(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp *this, CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp *a2)
{
  if (a2 != this)
  {
    result = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = result;
    v3 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::SharedCtor(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader *this)
{
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader *CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::RayTracingTileHeader(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader *this, const CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader *a2)
{
  *this = &unk_1F4CD84A8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::~RayTracingTileHeader(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader *this)
{
  *this = &unk_1F4CD84A8;
  CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::~RayTracingTileHeader(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::SharedDtor(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader *this)
{
  CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if ((TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_56;
          }

          goto LABEL_28;
        }

        if (v6 == 5)
        {
          if (v7 != 1)
          {
            goto LABEL_28;
          }

LABEL_64:
          *v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v28) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = *v28;
          *(this + 12) |= 0x10u;
          v27 = *(a2 + 1);
          if (v27 < *(a2 + 2) && *v27 == 49)
          {
            *(a2 + 1) = v27 + 1;
            goto LABEL_68;
          }
        }

        else
        {
          if (v6 != 6 || v7 != 1)
          {
            goto LABEL_28;
          }

LABEL_68:
          *v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v28) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = *v28;
          *(this + 12) |= 0x20u;
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

      if (v6 == 2)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_28;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_40:
        if (v13 >= v8 || (v20 = *v13, v20 < 0))
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
          v21 = v13 + 1;
          *(a2 + 1) = v21;
        }

        *(this + 12) |= 2u;
        if (v21 < v8 && *v21 == 24)
        {
          v9 = v21 + 1;
          *(a2 + 1) = v9;
LABEL_48:
          if (v9 >= v8 || (v23 = *v9, v23 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v24 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v23;
            v24 = v9 + 1;
            *(a2 + 1) = v24;
          }

          *(this + 12) |= 4u;
          if (v24 < v8 && *v24 == 32)
          {
            v12 = v24 + 1;
            *(a2 + 1) = v12;
LABEL_56:
            if (v12 >= v8 || (v25 = *v12, v25 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
              if (!result)
              {
                return result;
              }

              v26 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 10) = v25;
              v26 = v12 + 1;
              *(a2 + 1) = v26;
            }

            *(this + 12) |= 8u;
            if (v26 < v8 && *v26 == 41)
            {
              *(a2 + 1) = v26 + 1;
              goto LABEL_64;
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
          goto LABEL_48;
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

    if (v7 != 2)
    {
      goto LABEL_28;
    }

    *(this + 12) |= 1u;
    v10 = *(this + 1);
    if (!v10)
    {
      operator new();
    }

    v28[0] = 0;
    v11 = *(a2 + 1);
    if (v11 >= *(a2 + 2) || *v11 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v28))
      {
        return 0;
      }
    }

    else
    {
      v28[0] = *v11;
      *(a2 + 1) = v11 + 1;
    }

    v14 = *(a2 + 14);
    v15 = *(a2 + 15);
    *(a2 + 14) = v14 + 1;
    if (v14 >= v15)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileTimestamp::MergePartialFromCodedStream(v10, a2) || *(a2 + 36) != 1)
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
    v8 = *(a2 + 2);
    if (v19 < v8 && *v19 == 16)
    {
      v13 = v19 + 1;
      *(a2 + 1) = v13;
      goto LABEL_40;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::default_instance_ + 8);
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

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 24), a3);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader *this)
{
  LOBYTE(v2) = *(this + 48);
  if (!v2)
  {
    result = 0;
    goto LABEL_29;
  }

  if ((*(this + 48) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 48) & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(this);
    v5 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::default_instance_ + 8);
  }

  v6 = ((*(v5 + 20) << 31) >> 31) & 9;
  *(v5 + 16) = v6;
  v3 = v6 | 2;
  v2 = *(this + 12);
  if ((v2 & 2) != 0)
  {
LABEL_9:
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
  }

LABEL_13:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
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
  if ((v2 & 8) != 0)
  {
LABEL_20:
    v11 = *(this + 10);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 12);
    }

    else
    {
      v12 = 2;
    }

    v3 += v12;
  }

LABEL_24:
  v13 = v3 + 9;
  if ((v2 & 0x10) == 0)
  {
    v13 = v3;
  }

  if ((v2 & 0x20) != 0)
  {
    result = v13 + 9;
  }

  else
  {
    result = v13;
  }

LABEL_29:
  *(this + 11) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader *this, const CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader::Swap(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader *this, CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTileHeader *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    result = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = result;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::SharedCtor(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 10) = 1;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 44) = 0;
  *(this + 60) = 0;
  *(this + 52) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData *CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::RayTracingTilePayloadMetaData(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData *this, const CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData *a2)
{
  *this = &unk_1F4CD8520;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 44) = 0;
  *(this + 60) = 0;
  *(this + 52) = 0;
  CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData *this, const CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
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

      goto LABEL_24;
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

    goto LABEL_25;
  }

LABEL_24:
  v9 = *(a2 + 5);
  *(this + 18) |= 4u;
  *(this + 5) = v9;
  v4 = *(a2 + 18);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = *(a2 + 6);
  *(this + 18) |= 8u;
  *(this + 6) = v10;
  v4 = *(a2 + 18);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_27:
    v12 = *(a2 + 8);
    *(this + 18) |= 0x20u;
    *(this + 8) = v12;
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

    goto LABEL_28;
  }

LABEL_26:
  v11 = *(a2 + 7);
  *(this + 18) |= 0x10u;
  *(this + 7) = v11;
  v4 = *(a2 + 18);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_28:
  v13 = *(a2 + 9);
  *(this + 18) |= 0x40u;
  *(this + 9) = v13;
  v4 = *(a2 + 18);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 10);
    *(this + 18) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(a2 + 18);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 11);
    *(this + 18) |= 0x100u;
    *(this + 11) = v14;
    v4 = *(a2 + 18);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_32;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 12);
  *(this + 18) |= 0x200u;
  *(this + 12) = v15;
  v4 = *(a2 + 18);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = *(a2 + 13);
  *(this + 18) |= 0x400u;
  *(this + 13) = v16;
  v4 = *(a2 + 18);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = *(a2 + 14);
  *(this + 18) |= 0x800u;
  *(this + 14) = v17;
  v4 = *(a2 + 18);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

LABEL_34:
  v18 = *(a2 + 15);
  *(this + 18) |= 0x1000u;
  *(this + 15) = v18;
  if ((*(a2 + 18) & 0x2000) == 0)
  {
    return;
  }

LABEL_20:
  v6 = *(a2 + 16);
  *(this + 18) |= 0x2000u;
  *(this + 16) = v6;
}

void sub_1D0CA34C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::~RayTracingTilePayloadMetaData(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData *this)
{
  *this = &unk_1F4CD8520;
  CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::~RayTracingTilePayloadMetaData(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::Clear(uint64_t this)
{
  v1 = *(this + 72);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
    *(this + 40) = 1;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 52) = 0;
    *(this + 44) = 0;
    *(this + 60) = 0;
  }

  *(this + 72) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
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
        if (v6 != 1)
        {
          goto LABEL_40;
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, this + 1);
        if (result)
        {
          *(this + 18) |= 1u;
          v9 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v9 < v8 && *v9 == 16)
          {
            v10 = v9 + 1;
            *(a2 + 1) = v10;
            goto LABEL_28;
          }

          continue;
        }

        return result;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v10 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_28:
        if (v10 >= v8 || (v16 = *v10, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v16;
          v17 = v10 + 1;
          *(a2 + 1) = v17;
        }

        *(this + 18) |= 2u;
        if (v17 < v8 && *v17 == 29)
        {
          *(a2 + 1) = v17 + 1;
          goto LABEL_49;
        }

        continue;
      case 3u:
        if (v6 != 5)
        {
          goto LABEL_40;
        }

LABEL_49:
        v40 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v40) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = v40;
        *(this + 18) |= 4u;
        v21 = *(a2 + 1);
        if (v21 >= *(a2 + 2) || *v21 != 37)
        {
          continue;
        }

        *(a2 + 1) = v21 + 1;
LABEL_53:
        v40 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v40) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = v40;
        *(this + 18) |= 8u;
        v22 = *(a2 + 1);
        if (v22 >= *(a2 + 2) || *v22 != 45)
        {
          continue;
        }

        *(a2 + 1) = v22 + 1;
LABEL_57:
        v40 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v40) & 1) == 0)
        {
          return 0;
        }

        *(this + 7) = v40;
        *(this + 18) |= 0x10u;
        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2) || *v23 != 53)
        {
          continue;
        }

        *(a2 + 1) = v23 + 1;
LABEL_61:
        v40 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v40) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = v40;
        *(this + 18) |= 0x20u;
        v24 = *(a2 + 1);
        if (v24 >= *(a2 + 2) || *v24 != 61)
        {
          continue;
        }

        *(a2 + 1) = v24 + 1;
LABEL_65:
        v40 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v40))
        {
          *(this + 9) = v40;
          *(this + 18) |= 0x40u;
          v25 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v25 < v11 && *v25 == 64)
          {
            v15 = v25 + 1;
            *(a2 + 1) = v15;
LABEL_69:
            if (v15 >= v11 || (v26 = *v15, v26 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
              if (!result)
              {
                return result;
              }

              v27 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              *(this + 10) = v26;
              v27 = v15 + 1;
              *(a2 + 1) = v27;
            }

            *(this + 18) |= 0x80u;
            if (v27 < v11 && *v27 == 72)
            {
              v20 = v27 + 1;
              *(a2 + 1) = v20;
LABEL_77:
              if (v20 >= v11 || (v28 = *v20, v28 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
                if (!result)
                {
                  return result;
                }

                v29 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 11) = v28;
                v29 = v20 + 1;
                *(a2 + 1) = v29;
              }

              *(this + 18) |= 0x100u;
              if (v29 < v11 && *v29 == 80)
              {
                v14 = v29 + 1;
                *(a2 + 1) = v14;
LABEL_85:
                if (v14 >= v11 || (v30 = *v14, v30 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                  if (!result)
                  {
                    return result;
                  }

                  v31 = *(a2 + 1);
                  v11 = *(a2 + 2);
                }

                else
                {
                  *(this + 12) = v30;
                  v31 = v14 + 1;
                  *(a2 + 1) = v31;
                }

                *(this + 18) |= 0x200u;
                if (v31 < v11 && *v31 == 88)
                {
                  v19 = v31 + 1;
                  *(a2 + 1) = v19;
LABEL_93:
                  if (v19 >= v11 || (v32 = *v19, v32 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                    if (!result)
                    {
                      return result;
                    }

                    v33 = *(a2 + 1);
                    v11 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 13) = v32;
                    v33 = v19 + 1;
                    *(a2 + 1) = v33;
                  }

                  *(this + 18) |= 0x400u;
                  if (v33 < v11 && *v33 == 96)
                  {
                    v12 = v33 + 1;
                    *(a2 + 1) = v12;
LABEL_101:
                    if (v12 >= v11 || (v34 = *v12, v34 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
                      if (!result)
                      {
                        return result;
                      }

                      v35 = *(a2 + 1);
                      v11 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 14) = v34;
                      v35 = v12 + 1;
                      *(a2 + 1) = v35;
                    }

                    *(this + 18) |= 0x800u;
                    if (v35 < v11 && *v35 == 104)
                    {
                      v13 = v35 + 1;
                      *(a2 + 1) = v13;
LABEL_109:
                      if (v13 >= v11 || (v36 = *v13, v36 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
                        if (!result)
                        {
                          return result;
                        }

                        v37 = *(a2 + 1);
                        v11 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 15) = v36;
                        v37 = v13 + 1;
                        *(a2 + 1) = v37;
                      }

                      *(this + 18) |= 0x1000u;
                      if (v37 < v11 && *v37 == 112)
                      {
                        v18 = v37 + 1;
                        *(a2 + 1) = v18;
LABEL_117:
                        if (v18 >= v11 || (v38 = *v18, v38 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
                          if (!result)
                          {
                            return result;
                          }

                          v39 = *(a2 + 1);
                          v11 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 16) = v38;
                          v39 = v18 + 1;
                          *(a2 + 1) = v39;
                        }

                        *(this + 18) |= 0x2000u;
                        if (v39 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

          continue;
        }

        return 0;
      case 4u:
        if (v6 == 5)
        {
          goto LABEL_53;
        }

        goto LABEL_40;
      case 5u:
        if (v6 == 5)
        {
          goto LABEL_57;
        }

        goto LABEL_40;
      case 6u:
        if (v6 == 5)
        {
          goto LABEL_61;
        }

        goto LABEL_40;
      case 7u:
        if (v6 == 5)
        {
          goto LABEL_65;
        }

        goto LABEL_40;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v15 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_69;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v20 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_77;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v14 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_85;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v19 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_93;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_101;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v13 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_109;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v18 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_117;
      default:
LABEL_40:
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

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 72);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 28), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 36), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 60), a2, a4);
    if ((*(v5 + 72) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 56), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return this;
  }

LABEL_29:
  v7 = *(v5 + 64);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    v3 = (v2 << 31 >> 31) & 9;
    if ((v2 & 2) != 0)
    {
      v4 = *(this + 4);
      if (v4 >= 0x80)
      {
        v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        v2 = *(this + 18);
      }

      else
      {
        v5 = 2;
      }

      v3 += v5;
    }

    v7 = v3 + 5;
    if ((v2 & 4) == 0)
    {
      v7 = v3;
    }

    if ((v2 & 8) != 0)
    {
      v7 += 5;
    }

    if ((v2 & 0x10) != 0)
    {
      v7 += 5;
    }

    if ((v2 & 0x20) != 0)
    {
      v7 += 5;
    }

    if ((v2 & 0x40) != 0)
    {
      v6 = v7 + 5;
    }

    else
    {
      v6 = v7;
    }

    if ((v2 & 0x80) != 0)
    {
      v8 = *(this + 10);
      if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
        v2 = *(this + 18);
      }

      else
      {
        v9 = 2;
      }

      v6 = (v9 + v6);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_56;
  }

  if ((v2 & 0x100) != 0)
  {
    v10 = *(this + 11);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v2 = *(this + 18);
    }

    else
    {
      v11 = 2;
    }

    v6 = (v11 + v6);
    if ((v2 & 0x200) == 0)
    {
LABEL_27:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_40;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_27;
  }

  v12 = *(this + 12);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v13 = 2;
  }

  v6 = (v13 + v6);
  if ((v2 & 0x400) == 0)
  {
LABEL_28:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_29;
    }

LABEL_44:
    v16 = *(this + 14);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v2 = *(this + 18);
    }

    else
    {
      v17 = 2;
    }

    v6 = (v17 + v6);
    if ((v2 & 0x1000) == 0)
    {
LABEL_30:
      if ((v2 & 0x2000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_52;
    }

    goto LABEL_48;
  }

LABEL_40:
  v14 = *(this + 13);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v15 = 2;
  }

  v6 = (v15 + v6);
  if ((v2 & 0x800) != 0)
  {
    goto LABEL_44;
  }

LABEL_29:
  if ((v2 & 0x1000) == 0)
  {
    goto LABEL_30;
  }

LABEL_48:
  v18 = *(this + 15);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v19 = 2;
  }

  v6 = (v19 + v6);
  if ((v2 & 0x2000) != 0)
  {
LABEL_52:
    v20 = *(this + 16);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    }

    else
    {
      v21 = 2;
    }

    v6 = (v21 + v6);
  }

LABEL_56:
  *(this + 17) = v6;
  return v6;
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData *this, const CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::MergeFrom(this, a2);
  }
}

float CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::Swap(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData *this, CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v3;
    v4 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v4;
    v5 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v5;
    v6 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v6;
    result = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = result;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v2;
    LODWORD(v2) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v2;
    LODWORD(v2) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v2;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::SharedCtor(CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData *this)
{
  result = 0.0;
  *(this + 1) = 0;
  *(this + 36) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData *CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::PointFacetVisibilityData(CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData *this, const CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData *a2)
{
  *(this + 9) = 0;
  *(this + 10) = 0;
  *this = &unk_1F4CD8598;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::MergeFrom(this, a2);
  return this;
}

void sub_1D0CA42A0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 2);
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData *this, const CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    sub_1D0CA6E90(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  LOBYTE(v5) = *(a2 + 40);
  if (v5)
  {
    if (*(a2 + 40))
    {
      v6 = *(a2 + 2);
      *(this + 10) |= 1u;
      *(this + 2) = v6;
      v5 = *(a2 + 10);
    }

    if ((v5 & 2) != 0)
    {
      v7 = *(a2 + 3);
      *(this + 10) |= 2u;
      *(this + 3) = v7;
    }
  }
}

void sub_1D0CA43C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::~PointFacetVisibilityData(CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData *this)
{
  *this = &unk_1F4CD8598;
  CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(this);
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::~PointFacetVisibilityData(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  *(this + 40) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v6 = TagFallback >> 3;
      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          result = sub_1D0CA47E0(26, a2, this + 16);
          if (!result)
          {
            return result;
          }

          goto LABEL_50;
        }

        if (v7 == 2)
        {
          v13 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_36;
        }

        goto LABEL_17;
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_17;
      }

      v21 = 0;
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
        if (!result)
        {
          return result;
        }

        v10 = v21;
        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 2) = -(v10 & 1) ^ (v10 >> 1);
      *(this + 10) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_28:
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

        *(this + 10) |= 2u;
        if (v16 < v8 && *v16 == 26)
        {
          v13 = v16 + 1;
          *(a2 + 1) = v13;
LABEL_36:
          v23 = 0;
          if (v13 >= v8 || *v13 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23))
            {
              return 0;
            }
          }

          else
          {
            v23 = *v13;
            *(a2 + 1) = v13 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v22 = 0;
            v17 = *(a2 + 1);
            if (v17 >= *(a2 + 2) || *v17 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
              {
                return 0;
              }
            }

            else
            {
              v22 = *v17;
              *(a2 + 1) = v17 + 1;
            }

            v18 = *(this + 6);
            if (v18 == *(this + 7))
            {
              sub_1D0CA6E90(this + 2, v18 + 1);
              v18 = *(this + 6);
            }

            v19 = v22;
            v20 = *(this + 2);
            *(this + 6) = v18 + 1;
            *(v20 + 4 * v18) = v19;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
LABEL_50:
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
      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_28;
    }

LABEL_17:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t sub_1D0CA47E0(int a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3)
{
  v18 = 0;
  v6 = *(this + 1);
  if (v6 >= *(this + 2) || *v6 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v18);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v18 = *v6;
    *(this + 1) = v6 + 1;
  }

  v8 = *(a3 + 8);
  if (v8 == *(a3 + 12))
  {
    sub_1D0CA6E90(a3, v8 + 1);
    v8 = *(a3 + 8);
  }

  v9 = v18;
  v10 = *a3;
  *(a3 + 8) = v8 + 1;
  *(v10 + 4 * v8) = v9;
  v11 = *(a3 + 12) - *(a3 + 8);
  if (v11 >= 1)
  {
    v12 = v11 + 1;
    do
    {
      v13 = *(this + 1);
      v14 = *(this + 2);
      if (v13 >= v14 || *v13 != a1)
      {
        break;
      }

      *(this + 1) = v13 + 1;
      if ((v13 + 1) >= v14 || v13[1] < 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v18);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v18 = v13[1];
        *(this + 1) = v13 + 2;
      }

      v15 = *(a3 + 8);
      if (v15 >= *(a3 + 12))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
        v15 = *(a3 + 8);
      }

      v16 = v18;
      v17 = *a3;
      *(a3 + 8) = v15 + 1;
      *(v17 + 4 * v15) = v16;
      --v12;
    }

    while (v12 > 1);
  }

  return 1;
}

void sub_1D0CA4964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v7 = *(v5 + 32);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 24) >= 1)
    {
      v8 = 0;
      do
      {
        v9 = *(*(v5 + 16) + 4 * v8);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v8;
      }

      while (v8 < *(v5 + 24));
    }
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData *this)
{
  v2 = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_14;
  }

  if (*(this + 40))
  {
    v4 = ((2 * *(this + 2)) ^ (*(this + 2) >> 31));
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      if ((*(this + 10) & 2) == 0)
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
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_14:
  v7 = *(this + 6);
  if (v7 < 1)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v8 = 0;
    LODWORD(v9) = 0;
    do
    {
      v10 = *(*(this + 2) + 4 * v8);
      if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
        v7 = *(this + 6);
      }

      else
      {
        v11 = 1;
      }

      v9 = (v11 + v9);
      ++v8;
    }

    while (v8 < v7);
    if (v9 > 0)
    {
      if (v9 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      }

      else
      {
        v12 = 2;
      }

      v3 += v12;
    }
  }

  result = (v3 + v9);
  *(this + 8) = v9;
  *(this + 9) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData *this, const CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::Swap(CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData *this, CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    result = *(a2 + 3);
    *(a2 + 2) = v4;
    v6 = *(this + 3);
    *(this + 3) = result;
    *(a2 + 3) = v6;
    LODWORD(v4) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v4;
    LODWORD(v4) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v4;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::SharedCtor(CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData *this)
{
  result = 0.0;
  *(this + 1) = 0;
  *(this + 36) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData *CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::FacetInterVisibilityData(CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData *this, const CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData *a2)
{
  *(this + 9) = 0;
  *(this + 10) = 0;
  *this = &unk_1F4CD8610;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::MergeFrom(this, a2);
  return this;
}

void sub_1D0CA4D58(_Unwind_Exception *a1)
{
  v3 = *(v1 + 2);
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData *this, const CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    sub_1D0CA6E90(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  LOBYTE(v5) = *(a2 + 40);
  if (v5)
  {
    if (*(a2 + 40))
    {
      v6 = *(a2 + 2);
      *(this + 10) |= 1u;
      *(this + 2) = v6;
      v5 = *(a2 + 10);
    }

    if ((v5 & 2) != 0)
    {
      v7 = *(a2 + 3);
      *(this + 10) |= 2u;
      *(this + 3) = v7;
    }
  }
}

void sub_1D0CA4E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::~FacetInterVisibilityData(CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData *this)
{
  *this = &unk_1F4CD8610;
  CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(this);
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::~FacetInterVisibilityData(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  *(this + 40) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v6 = TagFallback >> 3;
      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          result = sub_1D0CA47E0(26, a2, this + 16);
          if (!result)
          {
            return result;
          }

          goto LABEL_50;
        }

        if (v7 == 2)
        {
          v13 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_36;
        }

        goto LABEL_17;
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_17;
      }

      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 10) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_28:
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

        *(this + 10) |= 2u;
        if (v16 < v8 && *v16 == 26)
        {
          v13 = v16 + 1;
          *(a2 + 1) = v13;
LABEL_36:
          v22 = 0;
          if (v13 >= v8 || *v13 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
            {
              return 0;
            }
          }

          else
          {
            v22 = *v13;
            *(a2 + 1) = v13 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v21 = 0;
            v17 = *(a2 + 1);
            if (v17 >= *(a2 + 2) || *v17 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21))
              {
                return 0;
              }
            }

            else
            {
              v21 = *v17;
              *(a2 + 1) = v17 + 1;
            }

            v18 = *(this + 6);
            if (v18 == *(this + 7))
            {
              sub_1D0CA6E90(this + 2, v18 + 1);
              v18 = *(this + 6);
            }

            v19 = v21;
            v20 = *(this + 2);
            *(this + 6) = v18 + 1;
            *(v20 + 4 * v18) = v19;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
LABEL_50:
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
      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_28;
    }

LABEL_17:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v7 = *(v5 + 32);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 24) >= 1)
    {
      v8 = 0;
      do
      {
        v9 = *(*(v5 + 16) + 4 * v8);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v8;
      }

      while (v8 < *(v5 + 24));
    }
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData *this)
{
  v2 = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_14;
  }

  if (*(this + 40))
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      if ((*(this + 10) & 2) == 0)
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
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_14:
  v7 = *(this + 6);
  if (v7 < 1)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v8 = 0;
    LODWORD(v9) = 0;
    do
    {
      v10 = *(*(this + 2) + 4 * v8);
      if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
        v7 = *(this + 6);
      }

      else
      {
        v11 = 1;
      }

      v9 = (v11 + v9);
      ++v8;
    }

    while (v8 < v7);
    if (v9 > 0)
    {
      if (v9 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      }

      else
      {
        v12 = 2;
      }

      v3 += v12;
    }
  }

  result = (v3 + v9);
  *(this + 8) = v9;
  *(this + 9) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData *this, const CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::Swap(CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData *this, CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    result = *(a2 + 3);
    *(a2 + 2) = v4;
    v6 = *(this + 3);
    *(this + 3) = result;
    *(a2 + 3) = v6;
    LODWORD(v4) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v4;
    LODWORD(v4) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v4;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 208) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload *CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::RayTracingTilePayload(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload *this, const CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload *a2)
{
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 20) = 0;
  *(this + 44) = 0;
  *(this + 21) = 0;
  *(this + 23) = 0;
  *(this + 50) = 0;
  *(this + 24) = 0;
  *(this + 26) = 0;
  *this = &unk_1F4CD8688;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::MergeFrom(this, a2);
  return this;
}

void sub_1D0CA5704(_Unwind_Exception *a1)
{
  v9 = v2;
  sub_1D0B8CD0C(v9);
  sub_1D0B8CD0C(v6);
  sub_1D0B8CD0C(v5);
  sub_1D0B8CD0C(v4);
  sub_1D0B8CD0C(v3);
  if (*v8)
  {
    MEMORY[0x1D387EC80](*v8, 0x1000C8052888210);
  }

  if (*v7)
  {
    MEMORY[0x1D387EC80](*v7, 0x1000C8052888210);
  }

  v11 = *(v1 + 2);
  if (v11)
  {
    MEMORY[0x1D387EC80](v11, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::~RayTracingTilePayload(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload *this)
{
  *this = &unk_1F4CD8688;
  CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::SharedDtor(this);
  sub_1D0B8CD0C(this + 23);
  sub_1D0B8CD0C(this + 20);
  sub_1D0B8CD0C(this + 17);
  sub_1D0B8CD0C(this + 14);
  sub_1D0B8CD0C(this + 11);
  v2 = *(this + 8);
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8052888210);
  }

  v3 = *(this + 5);
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8052888210);
  }

  v4 = *(this + 2);
  if (v4)
  {
    MEMORY[0x1D387EC80](v4, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::~RayTracingTilePayload(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::SharedDtor(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload *this)
{
  CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
                if (v7 != 2)
                {
                  goto LABEL_42;
                }

                v15 = *(a2 + 1);
                v14 = *(a2 + 2);
                goto LABEL_77;
              }

              result = sub_1D0CA47E0(26, a2, this + 40);
              if (!result)
              {
                return result;
              }

LABEL_91:
              v32 = *(a2 + 1);
              v10 = *(a2 + 2);
              if (v32 < v10 && *v32 == 34)
              {
                v11 = v32 + 1;
                *(a2 + 1) = v11;
LABEL_94:
                v88[0] = 0;
                if (v11 >= v10 || *v11 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v88))
                  {
                    return 0;
                  }
                }

                else
                {
                  v88[0] = *v11;
                  *(a2 + 1) = v11 + 1;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
                {
                  v89 = 0;
                  v33 = *(a2 + 1);
                  if (v33 >= *(a2 + 2) || *v33 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v89))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v89 = *v33;
                    *(a2 + 1) = v33 + 1;
                  }

                  v34 = *(this + 18);
                  if (v34 == *(this + 19))
                  {
                    sub_1D0CA6E90(this + 8, v34 + 1);
                    v34 = *(this + 18);
                  }

                  v35 = v89;
                  v36 = *(this + 8);
                  *(this + 18) = v34 + 1;
                  *(v36 + 4 * v34) = v35;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                goto LABEL_108;
              }
            }

            else
            {
              if (v6 != 4)
              {
                goto LABEL_42;
              }

              if ((TagFallback & 7) != 0)
              {
                if (v7 != 2)
                {
                  goto LABEL_42;
                }

                v11 = *(a2 + 1);
                v10 = *(a2 + 2);
                goto LABEL_94;
              }

              result = sub_1D0CA47E0(34, a2, this + 64);
              if (!result)
              {
                return result;
              }

LABEL_108:
              v37 = *(a2 + 1);
              if (v37 < *(a2 + 2) && *v37 == 42)
              {
                while (1)
                {
                  *(a2 + 1) = v37 + 1;
LABEL_111:
                  v38 = *(this + 25);
                  v39 = *(this + 24);
                  if (v39 >= v38)
                  {
                    if (v38 == *(this + 26))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88));
                      v38 = *(this + 25);
                    }

                    *(this + 25) = v38 + 1;
                    operator new();
                  }

                  v40 = *(this + 11);
                  *(this + 24) = v39 + 1;
                  v41 = *(v40 + 8 * v39);
                  v88[0] = 0;
                  v42 = *(a2 + 1);
                  if (v42 >= *(a2 + 2) || *v42 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v88))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v88[0] = *v42;
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
                  if (!CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::MergePartialFromCodedStream(v41, a2) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v45 = *(a2 + 14);
                  v20 = __OFSUB__(v45, 1);
                  v46 = v45 - 1;
                  if (v46 < 0 == v20)
                  {
                    *(a2 + 14) = v46;
                  }

                  v37 = *(a2 + 1);
                  if (v37 >= *(a2 + 2))
                  {
                    break;
                  }

                  v47 = *v37;
                  if (v47 != 42)
                  {
                    if (v47 != 50)
                    {
                      goto LABEL_1;
                    }

                    goto LABEL_128;
                  }
                }
              }
            }
          }

          else if (v6 == 1)
          {
            if (v7 != 2)
            {
              goto LABEL_42;
            }

            *(this + 53) |= 1u;
            v12 = *(this + 1);
            if (!v12)
            {
              operator new();
            }

            v88[0] = 0;
            v13 = *(a2 + 1);
            if (v13 >= *(a2 + 2) || *v13 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v88))
              {
                return 0;
              }
            }

            else
            {
              v88[0] = *v13;
              *(a2 + 1) = v13 + 1;
            }

            v17 = *(a2 + 14);
            v18 = *(a2 + 15);
            *(a2 + 14) = v17 + 1;
            if (v17 >= v18)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::MergePartialFromCodedStream(v12, a2) || *(a2 + 36) != 1)
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

            v22 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v22 < v8 && *v22 == 18)
            {
              v9 = v22 + 1;
              *(a2 + 1) = v9;
LABEL_60:
              v89 = 0;
              if (v9 >= v8 || *v9 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v89))
                {
                  return 0;
                }
              }

              else
              {
                v89 = *v9;
                *(a2 + 1) = v9 + 1;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
              {
                *v88 = 0;
                v23 = *(a2 + 1);
                if (v23 >= *(a2 + 2) || (*v23 & 0x8000000000000000) != 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v88))
                  {
                    return 0;
                  }
                }

                else
                {
                  *v88 = *v23;
                  *(a2 + 1) = v23 + 1;
                }

                v24 = *(this + 6);
                if (v24 == *(this + 7))
                {
                  sub_1D0C773F4(this + 2, v24 + 1);
                  v24 = *(this + 6);
                }

                v25 = *v88;
                v26 = *(this + 2);
                *(this + 6) = v24 + 1;
                *(v26 + 8 * v24) = v25;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              goto LABEL_74;
            }
          }

          else
          {
            if (v6 != 2)
            {
              goto LABEL_42;
            }

            if ((TagFallback & 7) != 0)
            {
              if (v7 != 2)
              {
                goto LABEL_42;
              }

              v9 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_60;
            }

            result = sub_1D0C763C8(1, 0x12u, a2, this + 16);
            if (!result)
            {
              return result;
            }

LABEL_74:
            v27 = *(a2 + 1);
            v14 = *(a2 + 2);
            if (v27 < v14 && *v27 == 26)
            {
              v15 = v27 + 1;
              *(a2 + 1) = v15;
LABEL_77:
              v88[0] = 0;
              if (v15 >= v14 || *v15 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v88))
                {
                  return 0;
                }
              }

              else
              {
                v88[0] = *v15;
                *(a2 + 1) = v15 + 1;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
              {
                v89 = 0;
                v28 = *(a2 + 1);
                if (v28 >= *(a2 + 2) || *v28 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v89))
                  {
                    return 0;
                  }
                }

                else
                {
                  v89 = *v28;
                  *(a2 + 1) = v28 + 1;
                }

                v29 = *(this + 12);
                if (v29 == *(this + 13))
                {
                  sub_1D0CA6E90(this + 5, v29 + 1);
                  v29 = *(this + 12);
                }

                v30 = v89;
                v31 = *(this + 5);
                *(this + 12) = v29 + 1;
                *(v31 + 4 * v29) = v30;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              goto LABEL_91;
            }
          }
        }

        if (TagFallback >> 3 <= 6)
        {
          break;
        }

        if (v6 == 7)
        {
          if (v7 != 2)
          {
            goto LABEL_42;
          }

          goto LABEL_147;
        }

        if (v6 == 8)
        {
          if (v7 != 2)
          {
            goto LABEL_42;
          }

          while (1)
          {
            v68 = *(this + 43);
            v69 = *(this + 42);
            if (v69 >= v68)
            {
              if (v68 == *(this + 44))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 160));
                v68 = *(this + 43);
              }

              *(this + 43) = v68 + 1;
              operator new();
            }

            v70 = *(this + 20);
            *(this + 42) = v69 + 1;
            v71 = *(v70 + 8 * v69);
            v88[0] = 0;
            v72 = *(a2 + 1);
            if (v72 >= *(a2 + 2) || *v72 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v88))
              {
                return 0;
              }
            }

            else
            {
              v88[0] = *v72;
              *(a2 + 1) = v72 + 1;
            }

            v73 = *(a2 + 14);
            v74 = *(a2 + 15);
            *(a2 + 14) = v73 + 1;
            if (v73 >= v74)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::MergePartialFromCodedStream(v71, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v75 = *(a2 + 14);
            v20 = __OFSUB__(v75, 1);
            v76 = v75 - 1;
            if (v76 < 0 == v20)
            {
              *(a2 + 14) = v76;
            }

            v37 = *(a2 + 1);
            if (v37 >= *(a2 + 2))
            {
              break;
            }

            v77 = *v37;
            if (v77 != 66)
            {
              if (v77 == 74)
              {
                goto LABEL_182;
              }

              goto LABEL_1;
            }

LABEL_164:
            *(a2 + 1) = v37 + 1;
          }
        }

        else
        {
          if (v6 != 9 || v7 != 2)
          {
            goto LABEL_42;
          }

          while (1)
          {
            v78 = *(this + 49);
            v79 = *(this + 48);
            if (v79 >= v78)
            {
              if (v78 == *(this + 50))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 184));
                v78 = *(this + 49);
              }

              *(this + 49) = v78 + 1;
              operator new();
            }

            v80 = *(this + 23);
            *(this + 48) = v79 + 1;
            v81 = *(v80 + 8 * v79);
            v88[0] = 0;
            v82 = *(a2 + 1);
            if (v82 >= *(a2 + 2) || *v82 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v88))
              {
                return 0;
              }
            }

            else
            {
              v88[0] = *v82;
              *(a2 + 1) = v82 + 1;
            }

            v83 = *(a2 + 14);
            v84 = *(a2 + 15);
            *(a2 + 14) = v83 + 1;
            if (v83 >= v84)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::MergePartialFromCodedStream(v81, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v85 = *(a2 + 14);
            v20 = __OFSUB__(v85, 1);
            v86 = v85 - 1;
            if (v86 < 0 == v20)
            {
              *(a2 + 14) = v86;
            }

            v37 = *(a2 + 1);
            v87 = *(a2 + 2);
            if (v37 >= v87 || *v37 != 74)
            {
              break;
            }

LABEL_182:
            *(a2 + 1) = v37 + 1;
          }

          if (v37 == v87 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

        goto LABEL_111;
      }

      if (v6 != 6 || v7 != 2)
      {
        break;
      }

      while (1)
      {
        v48 = *(this + 31);
        v49 = *(this + 30);
        if (v49 >= v48)
        {
          if (v48 == *(this + 32))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 112));
            v48 = *(this + 31);
          }

          *(this + 31) = v48 + 1;
          operator new();
        }

        v50 = *(this + 14);
        *(this + 30) = v49 + 1;
        v51 = *(v50 + 8 * v49);
        v88[0] = 0;
        v52 = *(a2 + 1);
        if (v52 >= *(a2 + 2) || *v52 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v88))
          {
            return 0;
          }
        }

        else
        {
          v88[0] = *v52;
          *(a2 + 1) = v52 + 1;
        }

        v53 = *(a2 + 14);
        v54 = *(a2 + 15);
        *(a2 + 14) = v53 + 1;
        if (v53 >= v54)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::MergePartialFromCodedStream(v51, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v55 = *(a2 + 14);
        v20 = __OFSUB__(v55, 1);
        v56 = v55 - 1;
        if (v56 < 0 == v20)
        {
          *(a2 + 14) = v56;
        }

        v37 = *(a2 + 1);
        if (v37 >= *(a2 + 2))
        {
          break;
        }

        v57 = *v37;
        if (v57 != 50)
        {
          if (v57 == 58)
          {
            while (1)
            {
              *(a2 + 1) = v37 + 1;
LABEL_147:
              v58 = *(this + 37);
              v59 = *(this + 36);
              if (v59 >= v58)
              {
                if (v58 == *(this + 38))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 136));
                  v58 = *(this + 37);
                }

                *(this + 37) = v58 + 1;
                operator new();
              }

              v60 = *(this + 17);
              *(this + 36) = v59 + 1;
              v61 = *(v60 + 8 * v59);
              v88[0] = 0;
              v62 = *(a2 + 1);
              if (v62 >= *(a2 + 2) || *v62 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v88))
                {
                  return 0;
                }
              }

              else
              {
                v88[0] = *v62;
                *(a2 + 1) = v62 + 1;
              }

              v63 = *(a2 + 14);
              v64 = *(a2 + 15);
              *(a2 + 14) = v63 + 1;
              if (v63 >= v64)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::MergePartialFromCodedStream(v61, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v65 = *(a2 + 14);
              v20 = __OFSUB__(v65, 1);
              v66 = v65 - 1;
              if (v66 < 0 == v20)
              {
                *(a2 + 14) = v66;
              }

              v37 = *(a2 + 1);
              if (v37 >= *(a2 + 2))
              {
                break;
              }

              v67 = *v37;
              if (v67 != 58)
              {
                if (v67 != 66)
                {
                  goto LABEL_1;
                }

                goto LABEL_164;
              }
            }
          }

          goto LABEL_1;
        }

LABEL_128:
        *(a2 + 1) = v37 + 1;
      }
    }

LABEL_42:
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