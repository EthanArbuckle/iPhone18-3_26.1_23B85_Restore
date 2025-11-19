void sub_1D0D186F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::Clear(uint64_t this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef *this)
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

double CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef *this, const CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::Swap(CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef *this, CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef *a2)
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

double CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections *CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::SvBandCorrections(CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections *this, const CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections *a2)
{
  *this = &unk_1F4CDDB00;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections *this, const CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v5 = *(a2 + 6);
      if (v5 >= 0xD)
      {
        __assert_rtn("set_band", "CoreNavigationCLPGnssMeasApi.pb.h", 10571, "::CoreNavigation::CLP::LogEntry::PrivateData::Band_IsValid(value)");
      }

      *(this + 11) |= 1u;
      *(this + 6) = v5;
      v4 = *(a2 + 11);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 11) |= 2u;
      *(this + 1) = v6;
      v4 = *(a2 + 11);
      if ((v4 & 4) == 0)
      {
LABEL_9:
        if ((v4 & 8) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(a2 + 2);
    *(this + 11) |= 4u;
    *(this + 2) = v7;
    v4 = *(a2 + 11);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_15:
      v9 = *(a2 + 7);
      if (v9 >= 3)
      {
        __assert_rtn("set_ionospheric_model", "CoreNavigationCLPGnssMeasApi.pb.h", 10660, "::CoreNavigation::CLP::LogEntry::PrivateData::IonosphericCorrectionSource_IsValid(value)");
      }

      *(this + 11) |= 0x10u;
      *(this + 7) = v9;
      return;
    }

LABEL_14:
    v8 = *(a2 + 4);
    *(this + 11) |= 8u;
    *(this + 4) = v8;
    if ((*(a2 + 11) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_15;
  }
}

void sub_1D0D18BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
    if ((*(v5 + 44) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 16), a3);
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
  v7 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections *this)
{
  LOBYTE(v2) = *(this + 44);
  if (v2)
  {
    if (*(this + 44))
    {
      v5 = *(this + 6);
      if ((v5 & 0x80000000) != 0)
      {
        v3 = 11;
      }

      else if (v5 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(this + 11);
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
      v4 = v3 + 9;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 0x10) != 0)
    {
      v6 = *(this + 7);
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 11;
      }

      else if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      }

      else
      {
        v7 = 2;
      }

      v4 = (v7 + v4);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 10) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections *this, const CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::Swap(CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections *this, CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v3;
    v4 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v4;
    result = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = result;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
    v7 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v7;
    v8 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v8;
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime *CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::SvPositionAtTime(CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime *this, const CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime *a2)
{
  *this = &unk_1F4CDDB78;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime *this, const CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime *a2)
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
      result = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 7);
    }

    if ((v5 & 2) != 0)
    {
      *(this + 7) |= 2u;
      v6 = *(this + 2);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 2);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ + 16);
      }

      return CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::MergeFrom(v6, v7);
    }
  }

  return result;
}

void sub_1D0D19190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::Clear(uint64_t this)
{
  v1 = *(this + 28);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 36) = 0;
      }
    }
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime *this)
{
  v2 = *(this + 28);
  if (*(this + 28))
  {
    v3 = (v2 << 31 >> 31) & 9;
    if ((v2 & 2) != 0)
    {
      v4 = *(this + 2);
      if (!v4)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
        v4 = *(CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ + 16);
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
      v3 = (v5 + v3 + 2);
    }
  }

  else
  {
    v3 = 0;
  }

  *(this + 6) = v3;
  return v3;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime *this, const CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::Swap(CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime *this, CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime *a2)
{
  if (a2 != this)
  {
    result = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = result;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v3;
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::SharedCtor(void *this)
{
  this[9] = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit *CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::PolynomialOrbit(CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit *this, const CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit *a2)
{
  *this = &unk_1F4CDDBF0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::MergeFrom(this, a2);
  return this;
}

void sub_1D0D1958C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 7);
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  v4 = *(v1 + 5);
  if (v4)
  {
    MEMORY[0x1D387EC80](v4, 0x1000C8000313F17);
  }

  v5 = *(v1 + 3);
  if (v5)
  {
    MEMORY[0x1D387EC80](v5, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit *this, const CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1D0C773F4(this + 3, *(this + 8) + v5);
    memcpy((*(this + 3) + 8 * *(this + 8)), *(a2 + 3), 8 * *(a2 + 8));
    *(this + 8) += *(a2 + 8);
  }

  v6 = *(a2 + 12);
  if (v6)
  {
    sub_1D0C773F4(this + 5, *(this + 12) + v6);
    memcpy((*(this + 5) + 8 * *(this + 12)), *(a2 + 5), 8 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    sub_1D0C773F4(this + 7, *(this + 16) + v7);
    memcpy((*(this + 7) + 8 * *(this + 16)), *(a2 + 7), 8 * *(a2 + 16));
    *(this + 16) += *(a2 + 16);
  }

  LOBYTE(v8) = *(a2 + 76);
  if (v8)
  {
    if (*(a2 + 76))
    {
      result = *(a2 + 1);
      *(this + 19) |= 1u;
      *(this + 1) = result;
      v8 = *(a2 + 19);
    }

    if ((v8 & 2) != 0)
    {
      result = *(a2 + 2);
      *(this + 19) |= 2u;
      *(this + 2) = result;
    }
  }

  return result;
}

void sub_1D0D19764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::~PolynomialOrbit(CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit *this)
{
  *this = &unk_1F4CDDBF0;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
  v2 = *(this + 7);
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 5);
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  v4 = *(this + 3);
  if (v4)
  {
    MEMORY[0x1D387EC80](v4, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::~PolynomialOrbit(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::Clear(uint64_t this)
{
  if (*(this + 76))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 32) = 0;
  *(this + 48) = 0;
  *(this + 64) = 0;
  *(this + 76) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (v6 != 2)
      {
        if (v6 != 3 || v7 != 1)
        {
          goto LABEL_27;
        }

        goto LABEL_34;
      }

      if (v7 != 1)
      {
        goto LABEL_27;
      }

      v44[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v44) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v44[0];
      *(this + 19) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 25)
      {
        *(a2 + 1) = v9 + 1;
LABEL_34:
        v44[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v44) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v44[0];
        *(this + 19) |= 2u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 33)
        {
LABEL_37:
          *(a2 + 1) = v10 + 1;
          goto LABEL_38;
        }
      }
    }

    if (v6 != 4)
    {
      break;
    }

    if (v7 == 1)
    {
LABEL_38:
      v44[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v44) & 1) == 0)
      {
        return 0;
      }

      v11 = v44[0];
      v12 = *(this + 8);
      if (v12 == *(this + 9))
      {
        sub_1D0C773F4(this + 3, v12 + 1);
        v12 = *(this + 8);
      }

      v13 = *(this + 3);
      v14 = v12 + 1;
      *(this + 8) = v12 + 1;
      *(v13 + 8 * v12) = v11;
      v15 = *(a2 + 1);
      v16 = *(a2 + 4) - v15;
      if (v16 >= 1)
      {
        v17 = v16 / 9u;
        v18 = v17 >= *(this + 9) - v14 ? *(this + 9) - v14 : v17;
        if (v18 >= 1)
        {
          v19 = 0;
          while (*v15 == 33)
          {
            v20 = *(v15 + 1);
            if (v14 >= *(this + 9))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v44);
              v14 = *(this + 8);
              v13 = *(this + 3);
            }

            *(this + 8) = v14 + 1;
            *(v13 + 8 * v14) = v20;
            ++v19;
            v15 += 9;
            ++v14;
            if (v18 == v19)
            {
              goto LABEL_53;
            }
          }

          if (!v19)
          {
            goto LABEL_54;
          }

LABEL_53:
          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
        }
      }

LABEL_54:
      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2))
      {
        v21 = *v10;
        if (v21 == 33)
        {
          goto LABEL_37;
        }

        if (v21 == 41)
        {
          while (1)
          {
            *(a2 + 1) = v10 + 1;
LABEL_58:
            v44[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v44) & 1) == 0)
            {
              return 0;
            }

            v22 = v44[0];
            v23 = *(this + 12);
            if (v23 == *(this + 13))
            {
              sub_1D0C773F4(this + 5, v23 + 1);
              v23 = *(this + 12);
            }

            v24 = *(this + 5);
            v25 = v23 + 1;
            *(this + 12) = v23 + 1;
            *(v24 + 8 * v23) = v22;
            v26 = *(a2 + 1);
            v27 = *(a2 + 4) - v26;
            if (v27 >= 1)
            {
              v28 = v27 / 9u;
              v29 = v28 >= *(this + 13) - v25 ? *(this + 13) - v25 : v28;
              if (v29 >= 1)
              {
                v30 = 0;
                while (*v26 == 41)
                {
                  v31 = *(v26 + 1);
                  if (v25 >= *(this + 13))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v44);
                    v25 = *(this + 12);
                    v24 = *(this + 5);
                  }

                  *(this + 12) = v25 + 1;
                  *(v24 + 8 * v25) = v31;
                  ++v30;
                  v26 += 9;
                  ++v25;
                  if (v29 == v30)
                  {
                    goto LABEL_73;
                  }
                }

                if (!v30)
                {
                  goto LABEL_74;
                }

LABEL_73:
                wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
              }
            }

LABEL_74:
            v10 = *(a2 + 1);
            if (v10 >= *(a2 + 2))
            {
              break;
            }

            v32 = *v10;
            if (v32 != 41)
            {
              if (v32 == 49)
              {
                do
                {
                  *(a2 + 1) = v10 + 1;
LABEL_78:
                  v44[0] = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v44) & 1) == 0)
                  {
                    return 0;
                  }

                  v33 = v44[0];
                  v34 = *(this + 16);
                  if (v34 == *(this + 17))
                  {
                    sub_1D0C773F4(this + 7, v34 + 1);
                    v34 = *(this + 16);
                  }

                  v35 = *(this + 7);
                  v36 = v34 + 1;
                  *(this + 16) = v34 + 1;
                  *(v35 + 8 * v34) = v33;
                  v37 = *(a2 + 1);
                  v38 = *(a2 + 4) - v37;
                  if (v38 >= 1)
                  {
                    v39 = v38 / 9u;
                    v40 = v39 >= *(this + 17) - v36 ? *(this + 17) - v36 : v39;
                    if (v40 >= 1)
                    {
                      v41 = 0;
                      while (*v37 == 49)
                      {
                        v42 = *(v37 + 1);
                        if (v36 >= *(this + 17))
                        {
                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v44);
                          v36 = *(this + 16);
                          v35 = *(this + 7);
                        }

                        *(this + 16) = v36 + 1;
                        *(v35 + 8 * v36) = v42;
                        ++v41;
                        v37 += 9;
                        ++v36;
                        if (v40 == v41)
                        {
                          goto LABEL_93;
                        }
                      }

                      if (!v41)
                      {
                        goto LABEL_94;
                      }

LABEL_93:
                      wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                    }
                  }

LABEL_94:
                  v10 = *(a2 + 1);
                  v43 = *(a2 + 2);
                }

                while (v10 < v43 && *v10 == 49);
                if (v10 == v43 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }

              goto LABEL_1;
            }
          }
        }
      }
    }

    else
    {
      if (v7 == 2)
      {
        result = sub_1D0C99640(a2, this + 24);
        if (!result)
        {
          return result;
        }

        goto LABEL_54;
      }

LABEL_27:
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

  if (v6 == 5)
  {
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        result = sub_1D0C99640(a2, this + 40);
        if (!result)
        {
          return result;
        }

        goto LABEL_74;
      }

      goto LABEL_27;
    }

    goto LABEL_58;
  }

  if (v6 != 6)
  {
    goto LABEL_27;
  }

  if (v7 == 1)
  {
    goto LABEL_78;
  }

  if (v7 != 2)
  {
    goto LABEL_27;
  }

  result = sub_1D0C99640(a2, this + 56);
  if (result)
  {
    goto LABEL_94;
  }

  return result;
}

void sub_1D0D19ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 76);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(this + 8), a3);
    v5 = *(v4 + 76);
  }

  if ((v5 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 16), a3);
  }

  if (*(v4 + 32) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(*(v4 + 24) + 8 * v6++), a3);
    }

    while (v6 < *(v4 + 32));
  }

  if (*(v4 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(*(v4 + 40) + 8 * v7++), a3);
    }

    while (v7 < *(v4 + 48));
  }

  if (*(v4 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(*(v4 + 56) + 8 * v8++), a3);
    }

    while (v8 < *(v4 + 64));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit *this)
{
  v1 = *(this + 76);
  v2 = (v1 << 31 >> 31) & 9;
  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  if (*(this + 76))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = (9 * (*(this + 12) + *(this + 8) + *(this + 16)) + v3);
  *(this + 18) = v4;
  return v4;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit *this, const CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::Swap(CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit *this, CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit *a2)
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
    v5 = *(a2 + 4);
    *(a2 + 3) = v4;
    v6 = *(this + 4);
    *(this + 4) = v5;
    *(a2 + 4) = v6;
    v7 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    v8 = *(a2 + 6);
    *(a2 + 5) = v7;
    v9 = *(this + 6);
    *(this + 6) = v8;
    *(a2 + 6) = v9;
    v10 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    result = *(a2 + 8);
    *(a2 + 7) = v10;
    v12 = *(this + 8);
    *(this + 8) = result;
    *(a2 + 8) = v12;
    LODWORD(v10) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v10;
    LODWORD(v10) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v10;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::SvInfo *CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::SvInfo(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::SvInfo *a2)
{
  *this = &unk_1F4CDDC68;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 8) = 0u;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 108) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::MergeFrom(this, a2);
  return this;
}

void sub_1D0D1A2E8(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 13);
  sub_1D0B8CD0C(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::SvInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v45);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v45);
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
      CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 8);
    }

    while (v7 < v6);
  }

  v12 = *(this + 28);
  v13 = *(a2 + 28);
  v14 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
  LODWORD(v15) = *(a2 + 28);
  if (v15 >= 1)
  {
    v16 = 0;
    do
    {
      if (v16 >= v15)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v45);
      }

      v17 = *(*(a2 + 13) + 8 * v16);
      v18 = *(this + 29);
      v19 = *(this + 28);
      if (v19 >= v18)
      {
        if (v18 == *(this + 30))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
          v18 = *(this + 29);
        }

        *(this + 29) = v18 + 1;
        operator new();
      }

      v20 = *(this + 13);
      *(this + 28) = v19 + 1;
      CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::MergeFrom(*(v20 + 8 * v19), v17);
      ++v16;
      v15 = *(a2 + 28);
    }

    while (v16 < v15);
  }

  v21 = *(a2 + 43);
  if (!v21)
  {
    goto LABEL_32;
  }

  if (v21)
  {
    *(this + 43) |= 1u;
    v38 = *(this + 1);
    if (!v38)
    {
      operator new();
    }

    v39 = *(a2 + 1);
    if (!v39)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v14);
      v39 = *(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::SvId::MergeFrom(v38, v39);
    v21 = *(a2 + 43);
    if ((v21 & 2) == 0)
    {
LABEL_26:
      if ((v21 & 4) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_84;
    }
  }

  else if ((v21 & 2) == 0)
  {
    goto LABEL_26;
  }

  v40 = *(a2 + 2);
  *(this + 43) |= 2u;
  *(this + 2) = v40;
  v21 = *(a2 + 43);
  if ((v21 & 4) == 0)
  {
LABEL_27:
    if ((v21 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_86;
  }

LABEL_84:
  v41 = *(a2 + 14);
  if (v41 >= 7)
  {
    __assert_rtn("set_position_source", "CoreNavigationCLPGnssMeasApi.pb.h", 10942, "::CoreNavigation::CLP::LogEntry::PrivateData::SvPositionSource_IsValid(value)");
  }

  *(this + 43) |= 4u;
  *(this + 14) = v41;
  v21 = *(a2 + 43);
  if ((v21 & 0x10) == 0)
  {
LABEL_28:
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_29;
    }

LABEL_87:
    v43 = *(a2 + 8);
    *(this + 43) |= 0x20u;
    *(this + 8) = v43;
    v21 = *(a2 + 43);
    if ((v21 & 0x40) == 0)
    {
LABEL_30:
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    goto LABEL_88;
  }

LABEL_86:
  v42 = *(a2 + 6);
  *(this + 43) |= 0x10u;
  *(this + 6) = v42;
  v21 = *(a2 + 43);
  if ((v21 & 0x20) != 0)
  {
    goto LABEL_87;
  }

LABEL_29:
  if ((v21 & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_88:
  v44 = *(a2 + 9);
  *(this + 43) |= 0x40u;
  *(this + 9) = v44;
  v21 = *(a2 + 43);
  if ((v21 & 0x80) != 0)
  {
LABEL_31:
    v22 = *(a2 + 15);
    *(this + 43) |= 0x80u;
    *(this + 15) = v22;
    v21 = *(a2 + 43);
  }

LABEL_32:
  if ((v21 & 0xFF00) != 0)
  {
    if ((v21 & 0x100) != 0)
    {
      v23 = *(a2 + 20);
      *(this + 43) |= 0x100u;
      *(this + 20) = v23;
      v21 = *(a2 + 43);
    }

    if ((v21 & 0x200) != 0)
    {
      v24 = *(a2 + 21);
      if (v24 >= 5)
      {
        __assert_rtn("set_over_the_air_from_sv_health_l1", "CoreNavigationCLPGnssMeasApi.pb.h", 11100, "::CoreNavigation::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x200u;
      *(this + 21) = v24;
      v21 = *(a2 + 43);
    }

    if ((v21 & 0x400) != 0)
    {
      v25 = *(a2 + 22);
      if (v25 >= 5)
      {
        __assert_rtn("set_over_the_air_from_other_sv_health_l1", "CoreNavigationCLPGnssMeasApi.pb.h", 11123, "::CoreNavigation::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x400u;
      *(this + 22) = v25;
      v21 = *(a2 + 43);
    }

    if ((v21 & 0x800) != 0)
    {
      v26 = *(a2 + 23);
      if (v26 >= 5)
      {
        __assert_rtn("set_assistance_file_health_l1", "CoreNavigationCLPGnssMeasApi.pb.h", 11146, "::CoreNavigation::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x800u;
      *(this + 23) = v26;
      v21 = *(a2 + 43);
    }

    if ((v21 & 0x1000) != 0)
    {
      v27 = *(a2 + 24);
      if (v27 >= 5)
      {
        __assert_rtn("set_ms_based_health_l1", "CoreNavigationCLPGnssMeasApi.pb.h", 11169, "::CoreNavigation::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x1000u;
      *(this + 24) = v27;
      v21 = *(a2 + 43);
    }

    if ((v21 & 0x2000) != 0)
    {
      v28 = *(a2 + 25);
      if (v28 >= 5)
      {
        __assert_rtn("set_integrity_health_l1", "CoreNavigationCLPGnssMeasApi.pb.h", 11192, "::CoreNavigation::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x2000u;
      *(this + 25) = v28;
      v21 = *(a2 + 43);
    }

    if ((v21 & 0x8000) != 0)
    {
      *(this + 43) |= 0x8000u;
      v29 = *(this + 16);
      if (!v29)
      {
        operator new();
      }

      v30 = *(a2 + 16);
      if (!v30)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v14);
        v30 = *(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 128);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::MergeFrom(v29, v30);
      v21 = *(a2 + 43);
    }
  }

  if ((v21 & 0xFF0000) != 0)
  {
    if ((v21 & 0x10000) != 0)
    {
      v31 = *(a2 + 34);
      if (v31 >= 5)
      {
        __assert_rtn("set_over_the_air_from_sv_health_l5", "CoreNavigationCLPGnssMeasApi.pb.h", 11282, "::CoreNavigation::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x10000u;
      *(this + 34) = v31;
      v21 = *(a2 + 43);
    }

    if ((v21 & 0x20000) != 0)
    {
      v32 = *(a2 + 35);
      if (v32 >= 5)
      {
        __assert_rtn("set_over_the_air_from_other_sv_health_l5", "CoreNavigationCLPGnssMeasApi.pb.h", 11305, "::CoreNavigation::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x20000u;
      *(this + 35) = v32;
      v21 = *(a2 + 43);
    }

    if ((v21 & 0x40000) != 0)
    {
      v33 = *(a2 + 36);
      if (v33 >= 5)
      {
        __assert_rtn("set_assistance_file_health_l5", "CoreNavigationCLPGnssMeasApi.pb.h", 11328, "::CoreNavigation::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x40000u;
      *(this + 36) = v33;
      v21 = *(a2 + 43);
    }

    if ((v21 & 0x80000) != 0)
    {
      v34 = *(a2 + 37);
      if (v34 >= 5)
      {
        __assert_rtn("set_ms_based_health_l5", "CoreNavigationCLPGnssMeasApi.pb.h", 11351, "::CoreNavigation::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x80000u;
      *(this + 37) = v34;
      v21 = *(a2 + 43);
    }

    if ((v21 & 0x100000) != 0)
    {
      v35 = *(a2 + 40);
      if (v35 >= 5)
      {
        __assert_rtn("set_integrity_health_l5", "CoreNavigationCLPGnssMeasApi.pb.h", 11374, "::CoreNavigation::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x100000u;
      *(this + 40) = v35;
      v21 = *(a2 + 43);
    }

    if ((v21 & 0x200000) != 0)
    {
      v36 = *(a2 + 19);
      *(this + 43) |= 0x200000u;
      *(this + 19) = v36;
      v21 = *(a2 + 43);
    }

    if ((v21 & 0x400000) != 0)
    {
      v37 = *(a2 + 41);
      if (v37 >= 4)
      {
        __assert_rtn("set_sv_reference_point", "CoreNavigationCLPGnssMeasApi.pb.h", 11419, "::CoreNavigation::CLP::LogEntry::PrivateData::SvReferencePoint_IsValid(value)");
      }

      *(this + 43) |= 0x400000u;
      *(this + 41) = v37;
    }
  }
}

void sub_1D0D1AB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 172);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::SvId::Clear(this);
        v2 = *(v1 + 172);
      }
    }

    *(v1 + 16) = 0;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
    *(v1 + 96) = 0;
    if ((v2 & 0x8000) != 0)
    {
      v3 = *(v1 + 128);
      if (v3)
      {
        if (*(v3 + 76))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 32) = 0;
        *(v3 + 48) = 0;
        *(v3 + 64) = 0;
        *(v3 + 76) = 0;
        v2 = *(v1 + 172);
      }
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(v1 + 152) = 0u;
    *(v1 + 136) = 0u;
  }

  if (*(v1 + 32) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(v1 + 24) + 8 * v4);
      this = (*(*v5 + 32))(v5);
      ++v4;
    }

    while (v4 < *(v1 + 32));
  }

  *(v1 + 32) = 0;
  if (*(v1 + 112) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v1 + 104) + 8 * v6);
      this = (*(*v7 + 32))(v7);
      ++v6;
    }

    while (v6 < *(v1 + 112));
  }

  *(v1 + 112) = 0;
  *(v1 + 172) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 172);
  if (v6)
  {
    v11 = *(this + 8);
    if (!v11)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v11, a2, a4);
    v6 = *(v5 + 172);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  if ((*(v5 + 172) & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 56), a2, a4);
  }

LABEL_5:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  v8 = *(v5 + 172);
  if ((v8 & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 48), a3);
    v8 = *(v5 + 172);
    if ((v8 & 0x20) == 0)
    {
LABEL_10:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_38;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_10;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 64), a3);
  v8 = *(v5 + 172);
  if ((v8 & 0x40) == 0)
  {
LABEL_11:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 72), a3);
  v8 = *(v5 + 172);
  if ((v8 & 0x80) == 0)
  {
LABEL_12:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 60), a3);
  v8 = *(v5 + 172);
  if ((v8 & 0x100) == 0)
  {
LABEL_13:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, *(v5 + 80), a3);
  v8 = *(v5 + 172);
  if ((v8 & 0x200) == 0)
  {
LABEL_14:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 84), a2, a4);
  v8 = *(v5 + 172);
  if ((v8 & 0x400) == 0)
  {
LABEL_15:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 88), a2, a4);
  v8 = *(v5 + 172);
  if ((v8 & 0x800) == 0)
  {
LABEL_16:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 92), a2, a4);
  v8 = *(v5 + 172);
  if ((v8 & 0x1000) == 0)
  {
LABEL_17:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, *(v5 + 96), a2, a4);
  if ((*(v5 + 172) & 0x2000) != 0)
  {
LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xE, *(v5 + 100), a2, a4);
  }

LABEL_19:
  if (*(v5 + 112) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, *(*(v5 + 104) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 112));
  }

  v10 = *(v5 + 172);
  if ((v10 & 0x8000) != 0)
  {
    v12 = *(v5 + 128);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 128);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v12, a2, a4);
    v10 = *(v5 + 172);
    if ((v10 & 0x10000) == 0)
    {
LABEL_24:
      if ((v10 & 0x20000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_50;
    }
  }

  else if ((v10 & 0x10000) == 0)
  {
    goto LABEL_24;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x12, *(v5 + 136), a2, a4);
  v10 = *(v5 + 172);
  if ((v10 & 0x20000) == 0)
  {
LABEL_25:
    if ((v10 & 0x40000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x13, *(v5 + 140), a2, a4);
  v10 = *(v5 + 172);
  if ((v10 & 0x40000) == 0)
  {
LABEL_26:
    if ((v10 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x14, *(v5 + 144), a2, a4);
  v10 = *(v5 + 172);
  if ((v10 & 0x80000) == 0)
  {
LABEL_27:
    if ((v10 & 0x100000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x15, *(v5 + 148), a2, a4);
  v10 = *(v5 + 172);
  if ((v10 & 0x100000) == 0)
  {
LABEL_28:
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_29;
    }

LABEL_54:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x17, a2, *(v5 + 152), a3);
    if ((*(v5 + 172) & 0x400000) == 0)
    {
      return this;
    }

    goto LABEL_55;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x16, *(v5 + 160), a2, a4);
  v10 = *(v5 + 172);
  if ((v10 & 0x200000) != 0)
  {
    goto LABEL_54;
  }

LABEL_29:
  if ((v10 & 0x400000) == 0)
  {
    return this;
  }

LABEL_55:
  v13 = *(v5 + 164);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x18, v13, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    if (v2)
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
        v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 8);
      }

      v6 = CoreNavigation::CLP::LogEntry::PrivateData::SvId::ByteSize(v5);
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
      v2 = *(this + 43);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v9 = v3 + 9;
    }

    else
    {
      v9 = v3;
    }

    if ((v2 & 4) != 0)
    {
      v10 = *(this + 14);
      if ((v10 & 0x80000000) != 0)
      {
        v11 = 11;
      }

      else if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
        v2 = *(this + 43);
      }

      else
      {
        v11 = 2;
      }

      v9 += v11;
    }

    v12 = v9 + 9;
    if ((v2 & 0x10) == 0)
    {
      v12 = v9;
    }

    if ((v2 & 0x20) != 0)
    {
      v12 += 9;
    }

    if ((v2 & 0x40) != 0)
    {
      v12 += 9;
    }

    if ((v2 & 0x80) != 0)
    {
      v4 = v12 + 5;
    }

    else
    {
      v4 = v12;
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
      v4 += 5;
    }

    if ((v2 & 0x200) != 0)
    {
      v13 = *(this + 21);
      if ((v13 & 0x80000000) != 0)
      {
        v14 = 11;
      }

      else if (v13 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
        v2 = *(this + 43);
      }

      else
      {
        v14 = 2;
      }

      v4 += v14;
      if ((v2 & 0x400) == 0)
      {
LABEL_35:
        if ((v2 & 0x800) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_52;
      }
    }

    else if ((v2 & 0x400) == 0)
    {
      goto LABEL_35;
    }

    v15 = *(this + 22);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v2 = *(this + 43);
    }

    else
    {
      v16 = 2;
    }

    v4 += v16;
    if ((v2 & 0x800) == 0)
    {
LABEL_36:
      if ((v2 & 0x1000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_58;
    }

LABEL_52:
    v17 = *(this + 23);
    if ((v17 & 0x80000000) != 0)
    {
      v18 = 11;
    }

    else if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v2 = *(this + 43);
    }

    else
    {
      v18 = 2;
    }

    v4 += v18;
    if ((v2 & 0x1000) == 0)
    {
LABEL_37:
      if ((v2 & 0x2000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_64;
    }

LABEL_58:
    v19 = *(this + 24);
    if ((v19 & 0x80000000) != 0)
    {
      v20 = 11;
    }

    else if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v2 = *(this + 43);
    }

    else
    {
      v20 = 2;
    }

    v4 += v20;
    if ((v2 & 0x2000) == 0)
    {
LABEL_38:
      if ((v2 & 0x8000) == 0)
      {
        goto LABEL_76;
      }

LABEL_70:
      v23 = *(this + 16);
      if (!v23)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
        v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 128);
      }

      v24 = CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::ByteSize(v23);
      v25 = v24;
      if (v24 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
      }

      else
      {
        v26 = 1;
      }

      v4 += v25 + v26 + 2;
      v2 = *(this + 43);
      goto LABEL_76;
    }

LABEL_64:
    v21 = *(this + 25);
    if ((v21 & 0x80000000) != 0)
    {
      v22 = 11;
    }

    else if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
      v2 = *(this + 43);
    }

    else
    {
      v22 = 2;
    }

    v4 += v22;
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_70;
  }

LABEL_76:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_122;
  }

  if ((v2 & 0x10000) != 0)
  {
    v27 = *(this + 34);
    if ((v27 & 0x80000000) != 0)
    {
      v28 = 12;
    }

    else if (v27 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 2;
      v2 = *(this + 43);
    }

    else
    {
      v28 = 3;
    }

    v4 += v28;
    if ((v2 & 0x20000) == 0)
    {
LABEL_79:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_95;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_79;
  }

  v29 = *(this + 35);
  if ((v29 & 0x80000000) != 0)
  {
    v30 = 12;
  }

  else if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 2;
    v2 = *(this + 43);
  }

  else
  {
    v30 = 3;
  }

  v4 += v30;
  if ((v2 & 0x40000) == 0)
  {
LABEL_80:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_81;
    }

LABEL_101:
    v33 = *(this + 37);
    if ((v33 & 0x80000000) != 0)
    {
      v34 = 12;
    }

    else if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
      v2 = *(this + 43);
    }

    else
    {
      v34 = 3;
    }

    v4 += v34;
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_107;
  }

LABEL_95:
  v31 = *(this + 36);
  if ((v31 & 0x80000000) != 0)
  {
    v32 = 12;
  }

  else if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 2;
    v2 = *(this + 43);
  }

  else
  {
    v32 = 3;
  }

  v4 += v32;
  if ((v2 & 0x80000) != 0)
  {
    goto LABEL_101;
  }

LABEL_81:
  if ((v2 & 0x100000) != 0)
  {
LABEL_107:
    v35 = *(this + 40);
    if ((v35 & 0x80000000) != 0)
    {
      v36 = 12;
    }

    else if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
      v2 = *(this + 43);
    }

    else
    {
      v36 = 3;
    }

    v4 += v36;
  }

LABEL_113:
  if ((v2 & 0x200000) != 0)
  {
    v4 += 10;
  }

  if ((v2 & 0x400000) != 0)
  {
    v37 = *(this + 41);
    if ((v37 & 0x80000000) != 0)
    {
      v38 = 12;
    }

    else if (v37 >= 0x80)
    {
      v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
    }

    else
    {
      v38 = 3;
    }

    v4 += v38;
  }

LABEL_122:
  v39 = *(this + 8);
  v40 = v39 + v4;
  if (v39 >= 1)
  {
    v41 = 0;
    do
    {
      v40 += CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::ByteSize(*(*(this + 3) + 8 * v41++)) + 1;
    }

    while (v41 < *(this + 8));
  }

  v42 = *(this + 28);
  v43 = (v42 + v40);
  if (v42 >= 1)
  {
    v44 = 0;
    do
    {
      v45 = CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::ByteSize(*(*(this + 13) + 8 * v44));
      v46 = v45;
      if (v45 >= 0x80)
      {
        v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45);
      }

      else
      {
        v47 = 1;
      }

      v43 = (v46 + v43 + v47);
      ++v44;
    }

    while (v44 < *(this + 28));
  }

  *(this + 42) = v43;
  return v43;
}

void CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::SvInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::Swap(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo *this, CoreNavigation::CLP::LogEntry::PrivateData::SvInfo *a2)
{
  if (a2 != this)
  {
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    v5 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v5;
    LODWORD(v4) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v4;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v7;
    v8 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v8;
    LODWORD(v8) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v8;
    LODWORD(v8) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v8;
    v9 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v9;
    v10 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v10;
    v11 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v11;
    v12 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v12;
    v13 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v13;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v14 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v14;
    LODWORD(v14) = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v14;
    LODWORD(v14) = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v14;
    LODWORD(v14) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v14;
    LODWORD(v14) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v14;
    LODWORD(v14) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v14;
    result = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = result;
    LODWORD(v14) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v14;
    LODWORD(v14) = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v14;
    LODWORD(v14) = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v14;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections *CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::ReceiverBandCorrections(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, const CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections *a2)
{
  *this = &unk_1F4CDDCE0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, const CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (!v5)
  {
    return *&v4;
  }

  if (*(a2 + 32))
  {
    v6 = *(a2 + 4);
    if (v6 >= 0xD)
    {
      __assert_rtn("set_band", "CoreNavigationCLPGnssMeasApi.pb.h", 11446, "::CoreNavigation::CLP::LogEntry::PrivateData::Band_IsValid(value)");
    }

    *(this + 8) |= 1u;
    *(this + 4) = v6;
    v5 = *(a2 + 8);
  }

  if ((v5 & 2) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    LODWORD(v4) = *(a2 + 5);
    *(this + 8) |= 4u;
    *(this + 5) = v4;
    if ((*(a2 + 8) & 8) == 0)
    {
      return *&v4;
    }

    goto LABEL_10;
  }

  v4 = *(a2 + 1);
  *(this + 8) |= 2u;
  *(this + 1) = v4;
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((v5 & 8) != 0)
  {
LABEL_10:
    LODWORD(v4) = *(a2 + 6);
    *(this + 8) |= 8u;
    *(this + 6) = v4;
  }

  return *&v4;
}

void sub_1D0D1B94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::Clear(uint64_t this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections *this)
{
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    if (*(this + 32))
    {
      v5 = *(this + 4);
      if ((v5 & 0x80000000) != 0)
      {
        v3 = 11;
      }

      else if (v5 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(this + 8);
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

float CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, const CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::Swap(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v3;
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    v5 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange *CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::LeapSecondChange(CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange *this, const CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDDD58;
  *(this + 6) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange *this, const CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange *a2)
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
      v6 = *(a2 + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_1D0D1BE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::~LeapSecondChange(CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange *this)
{
  *this = &unk_1F4CDDD58;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::~LeapSecondChange(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        *(this + 4) = v11;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 24))
  {
    if (this[3])
    {
      v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v2 = 0;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    v3 = *(this + 4);
    if ((v3 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else if (v3 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
    }

    else
    {
      v4 = 2;
    }

    v2 = (v4 + v2);
  }

  else
  {
    v2 = 0;
  }

LABEL_13:
  *(this + 5) = v2;
  return v2;
}

void CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange *this, const CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
  }

  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo *CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::LeapSecondInfo(CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo *a2)
{
  *this = &unk_1F4CDDDD0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo *a2)
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
      v5 = *(a2 + 2);
      *(this + 7) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      if (v6 >= 5)
      {
        __assert_rtn("set_change_knowledge", "CoreNavigationCLPGnssMeasApi.pb.h", 11609, "::CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChangeKnowledge_IsValid(value)");
      }

      *(this + 7) |= 2u;
      *(this + 3) = v6;
      v4 = *(a2 + 7);
    }

    if ((v4 & 4) != 0)
    {
      *(this + 7) |= 4u;
      v7 = *(this + 2);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 2);
      if (!v8)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
        v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_ + 16);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::MergeFrom(v7, v8);
    }
  }
}

void sub_1D0D1C52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::Clear(uint64_t this)
{
  v1 = *(this + 28);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(this + 16);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
      }
    }
  }

  *(this + 28) = 0;
  return this;
}

unsigned int *CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[7];
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[3], a2, a4);
    if ((v5[7] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
  v6 = v5[7];
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
  v7 = *(v5 + 2);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_ + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo *this)
{
  LOBYTE(v2) = *(this + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_23;
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
    if ((*(this + 28) & 2) == 0)
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
    v2 = *(this + 7);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 2);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_ + 16);
    }

    v8 = CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::ByteSize(v7);
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
  }

LABEL_23:
  *(this + 6) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo *a2)
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
    LODWORD(v4) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v4;
    LODWORD(v4) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v4;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion *CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::GpsToUtcConversion(CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion *this, const CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion *a2)
{
  *this = &unk_1F4CDDE48;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion *this, const CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion *a2)
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
      v6 = *(a2 + 1);
      *(this + 11) |= 1u;
      *(this + 1) = v6;
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
    result = *(a2 + 4);
    *(this + 11) |= 8u;
    *(this + 4) = result;
  }

  return result;
}

void sub_1D0D1CAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
      if ((*(v5 + 44) & 8) == 0)
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
  v6 = *(v5 + 44);
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
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, v7, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion *this)
{
  LOBYTE(v2) = *(this + 44);
  if (v2)
  {
    if (*(this + 44))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
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

    if ((v2 & 8) != 0)
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

  *(this + 10) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion *this, const CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::Swap(CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion *this, CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion *a2)
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
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo *CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::GpsTimeInfo(CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo *a2)
{
  *this = &unk_1F4CDDEC0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v5 = *(a2 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 8) |= 2u;
    v7 = *(this + 1);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 1);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::MergeFrom(v7, v8);
    if ((*(a2 + 8) & 4) != 0)
    {
LABEL_14:
      *(this + 8) |= 4u;
      v9 = *(this + 2);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 2);
      if (!v10)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
        v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 16);
      }

      return CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::MergeFrom(v9, v10);
    }
  }

  return result;
}

void sub_1D0D1D058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    *(this + 24) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 4) != 0)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        if (*(v3 + 44))
        {
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        *(v3 + 44) = 0;
      }
    }
  }

  *(v1 + 32) = 0;
  return this;
}

unsigned int *CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[8];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[6], a2, a4);
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
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  if ((v5[8] & 4) != 0)
  {
LABEL_9:
    v8 = *(v5 + 2);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_23;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v5 = *(this + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 8);
    }

    v6 = CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::ByteSize(v5);
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
    goto LABEL_16;
  }

  v4 = *(this + 6);
  if (v4 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  if ((v2 & 4) != 0)
  {
    v9 = *(this + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 16);
    }

    v10 = CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::ByteSize(v9);
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
  }

LABEL_23:
  *(this + 7) = v3;
  return v3;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v4;
    LODWORD(v4) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v4;
    LODWORD(v4) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v4;
  }

  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion *CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::GlonassSubsecondConversion(CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, const CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion *a2)
{
  *this = &unk_1F4CDDF38;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, const CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = v6;
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

void sub_1D0D1D5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v7, a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this)
{
  LOBYTE(v2) = *(this + 28);
  if (v2)
  {
    if (*(this + 28))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
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

double CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, const CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::Swap(CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion *a2)
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

double CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo *CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::GlonassTimeInfo(CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo *a2)
{
  *this = &unk_1F4CDDFB0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v5) = *(a2 + 40);
  if (!v5)
  {
    return result;
  }

  if (*(a2 + 40))
  {
    v6 = *(a2 + 2);
    *(this + 10) |= 1u;
    *(this + 2) = v6;
    v5 = *(a2 + 10);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v8 = *(a2 + 8);
      if (v8 >= 6)
      {
        __assert_rtn("set_leap_second_deprecated", "CoreNavigationCLPGnssMeasApi.pb.h", 11972, "::CoreNavigation::CLP::LogEntry::PrivateData::GlonassLeapSecondDeprecated_IsValid(value)");
      }

      *(this + 10) |= 4u;
      *(this + 8) = v8;
      v5 = *(a2 + 10);
      if ((v5 & 8) == 0)
      {
LABEL_8:
        if ((v5 & 0x10) == 0)
        {
          return result;
        }

        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 40) & 2) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(a2 + 3);
  *(this + 10) |= 2u;
  *(this + 3) = v7;
  v5 = *(a2 + 10);
  if ((v5 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v5 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_14:
  *(this + 10) |= 8u;
  v9 = *(this + 2);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 2);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 16);
  }

  result = CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergeFrom(v9, v10);
  if ((*(a2 + 10) & 0x10) != 0)
  {
LABEL_19:
    *(this + 10) |= 0x10u;
    v11 = *(this + 3);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 3);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 24);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergeFrom(v11, v12);
  }

  return result;
}

void sub_1D0D1DB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 40);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 32) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(this + 16);
      if (v2)
      {
        if (*(v2 + 28))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 28) = 0;
        v1 = *(this + 40);
      }
    }

    if ((v1 & 0x10) != 0)
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
      }
    }
  }

  *(this + 40) = 0;
  return this;
}

unsigned int *CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_9;
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

    goto LABEL_10;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v5[8], a2, a4);
  v6 = v5[10];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_10:
  v7 = *(v5 + 2);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  if ((v5[10] & 0x10) != 0)
  {
LABEL_13:
    v8 = *(v5 + 3);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo *this)
{
  LOBYTE(v2) = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_36;
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
    v7 = *(this + 8);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
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
        goto LABEL_36;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

  v9 = *(this + 2);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 16);
  }

  v10 = CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::ByteSize(v9);
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
  if ((*(this + 10) & 0x10) != 0)
  {
LABEL_30:
    v13 = *(this + 3);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 24);
    }

    v14 = CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::ByteSize(v13);
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

LABEL_36:
  *(this + 9) = v3;
  return v3;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v4;
    v5 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v5;
    v6 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v6;
    LODWORD(v6) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v6;
    LODWORD(v6) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v6;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion *CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::SubSecondConversion(CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion *this, const CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion *a2)
{
  *this = &unk_1F4CDE028;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion *this, const CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v6;
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

void sub_1D0D1E1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::Clear(uint64_t this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
    if ((*(v5 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v7, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion *this)
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

    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
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

  *(this + 8) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion *this, const CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::Swap(CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion *this, CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion *a2)
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
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo *this)
{
  *(this + 14) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo *CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::BeidouTimeInfo(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo *a2)
{
  *this = &unk_1F4CDE0A0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  LOBYTE(v5) = *(a2 + 56);
  if (!v5)
  {
    return result;
  }

  if (*(a2 + 56))
  {
    v6 = *(a2 + 12);
    *(this + 14) |= 1u;
    *(this + 12) = v6;
    v5 = *(a2 + 14);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a2 + 56) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 14) |= 2u;
  v7 = *(this + 1);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 1);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 8);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::MergeFrom(v7, v8);
  v5 = *(a2 + 14);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    *(this + 14) |= 8u;
    v11 = *(this + 3);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 3);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 24);
    }

    result = CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(v11, v12);
    v5 = *(a2 + 14);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_32;
    }

    goto LABEL_27;
  }

LABEL_17:
  *(this + 14) |= 4u;
  v9 = *(this + 2);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 2);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 16);
  }

  result = CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(v9, v10);
  v5 = *(a2 + 14);
  if ((v5 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_27:
  *(this + 14) |= 0x10u;
  v13 = *(this + 4);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 4);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 32);
  }

  result = CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(v13, v14);
  if ((*(a2 + 14) & 0x20) != 0)
  {
LABEL_32:
    *(this + 14) |= 0x20u;
    v15 = *(this + 5);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 5);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 40);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(v15, v16);
  }

  return result;
}

void sub_1D0D1E8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 56);
  if (v2)
  {
    *(this + 48) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::Clear(this);
        v2 = *(v1 + 56);
      }
    }

    if ((v2 & 4) != 0)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(v1 + 56);
      }
    }

    if ((v2 & 8) != 0)
    {
      v4 = *(v1 + 24);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
        v2 = *(v1 + 56);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v5 = *(v1 + 32);
      if (v5)
      {
        if (*(v5 + 36))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
        }

        *(v5 + 36) = 0;
        v2 = *(v1 + 56);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v6 = *(v1 + 40);
      if (v6)
      {
        if (*(v6 + 36))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
        }

        *(v6 + 36) = 0;
      }
    }
  }

  *(v1 + 56) = 0;
  return this;
}

unsigned int *CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[14];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[12], a2, a4);
    v6 = v5[14];
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

  v7 = *(v5 + 1);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
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

LABEL_12:
  v8 = *(v5 + 2);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = v5[14];
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
  v9 = *(v5 + 3);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = v5[14];
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
  v10 = *(v5 + 4);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  if ((v5[14] & 0x20) != 0)
  {
LABEL_21:
    v11 = *(v5 + 5);
    if (!v11)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v11, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo *this)
{
  LOBYTE(v2) = *(this + 56);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_45;
  }

  if (*(this + 56))
  {
    v4 = *(this + 12);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 14);
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
    if ((*(this + 56) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(this + 1);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
    v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 8);
  }

  v6 = CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::ByteSize(v5);
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
  v2 = *(this + 14);
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v9 = *(this + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 16);
    }

    v10 = CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(v9);
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
    v2 = *(this + 14);
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v13 = *(this + 3);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 24);
  }

  v14 = CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(v13);
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
  v2 = *(this + 14);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_39;
  }

LABEL_33:
  v17 = *(this + 4);
  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
    v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 32);
  }

  v18 = CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(v17);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
  }

  else
  {
    v20 = 1;
  }

  v3 = (v3 + v19 + v20 + 1);
  if ((*(this + 14) & 0x20) != 0)
  {
LABEL_39:
    v21 = *(this + 5);
    if (!v21)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 40);
    }

    v22 = CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(v21);
    v23 = v22;
    if (v22 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
    }

    else
    {
      v24 = 1;
    }

    v3 = (v3 + v23 + v24 + 1);
  }

LABEL_45:
  *(this + 13) = v3;
  return v3;
}

double CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
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
    LODWORD(v7) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v7;
    LODWORD(v7) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v7;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo *CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::GalileoTimeInfo(CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo *a2)
{
  *this = &unk_1F4CDE118;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v5) = *(a2 + 40);
  if (!v5)
  {
    return result;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    *(this + 10) |= 2u;
    v7 = *(this + 1);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 1);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::MergeFrom(v7, v8);
    v5 = *(a2 + 10);
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

  v6 = *(a2 + 8);
  *(this + 10) |= 1u;
  *(this + 8) = v6;
  v5 = *(a2 + 10);
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
  *(this + 10) |= 4u;
  v9 = *(this + 2);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 2);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 16);
  }

  result = CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(v9, v10);
  if ((*(a2 + 10) & 8) != 0)
  {
LABEL_20:
    *(this + 10) |= 8u;
    v11 = *(this + 3);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 3);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 24);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(v11, v12);
  }

  return result;
}

void sub_1D0D1F234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 40);
  if (v2)
  {
    *(this + 32) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::Clear(this);
        v2 = *(v1 + 40);
      }
    }

    if ((v2 & 4) != 0)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(v1 + 40);
      }
    }

    if ((v2 & 8) != 0)
    {
      v4 = *(v1 + 24);
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

  *(v1 + 40) = 0;
  return this;
}

unsigned int *CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[10];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[8], a2, a4);
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
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 8);
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
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  if ((v5[10] & 8) != 0)
  {
LABEL_13:
    v9 = *(v5 + 3);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo *this)
{
  LOBYTE(v2) = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_31;
  }

  if (*(this + 40))
  {
    v4 = *(this + 8);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 10);
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
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(this + 1);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
    v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 8);
  }

  v6 = CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::ByteSize(v5);
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
LABEL_16:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v9 = *(this + 2);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 16);
  }

  v10 = CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(v9);
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
LABEL_25:
    v13 = *(this + 3);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 24);
    }

    v14 = CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(v13);
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

LABEL_31:
  *(this + 9) = v3;
  return v3;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo *CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::NavicTimeInfo(CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDE190;
  *(this + 6) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo *a2)
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
      *(this + 6) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
        v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(v5, v6);
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v7;
    }
  }
}

void sub_1D0D1F8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    if (*(this + 24))
    {
      v1 = *(this + 8);
      if (v1)
      {
        if (*(v1 + 36))
        {
          *(v1 + 8) = 0;
          *(v1 + 16) = 0;
          *(v1 + 24) = 0;
        }

        *(v1 + 36) = 0;
      }
    }

    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v8, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo *this)
{
  if (!*(this + 24))
  {
    v2 = 0;
    goto LABEL_16;
  }

  if ((*(this + 24) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 24) & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
    v3 = *(CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_ + 8);
  }

  v4 = CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(v3);
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
  if ((*(this + 6) & 2) != 0)
  {
LABEL_12:
    v7 = *(this + 4);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    }

    else
    {
      v8 = 2;
    }

    v2 = (v8 + v2);
  }

LABEL_16:
  *(this + 5) = v2;
  return v2;
}

void CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo *CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::TimeConversionInfo(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo *a2)
{
  *this = &unk_1F4CDE208;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
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
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::MergeFrom(v5, v6);
    v4 = *(a2 + 13);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_20:
      *(this + 13) |= 4u;
      v9 = *(this + 3);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 3);
      if (!v10)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
        v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 24);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::MergeFrom(v9, v10);
      v4 = *(a2 + 13);
      if ((v4 & 8) == 0)
      {
LABEL_8:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_30;
      }

      goto LABEL_25;
    }
  }

  else if ((*(a2 + 52) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 13) |= 2u;
  v7 = *(this + 2);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 2);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 16);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::MergeFrom(v7, v8);
  v4 = *(a2 + 13);
  if ((v4 & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_25:
  *(this + 13) |= 8u;
  v11 = *(this + 4);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 4);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 32);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::MergeFrom(v11, v12);
  if ((*(a2 + 13) & 0x10) != 0)
  {
LABEL_30:
    *(this + 13) |= 0x10u;
    v13 = *(this + 5);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 5);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 40);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::MergeFrom(v13, v14);
  }
}

void sub_1D0D20028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 52);
  if (v2)
  {
    if (*(this + 52))
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::Clear(this);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::Clear(this);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::Clear(this);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::Clear(this);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::Clear(this);
      }
    }
  }

  *(v1 + 52) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 8);
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

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 52);
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
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_16:
  v10 = *(v5 + 32);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  if ((*(v5 + 52) & 0x10) != 0)
  {
LABEL_19:
    v11 = *(v5 + 40);
    if (!v11)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo *this)
{
  LOBYTE(v2) = *(this + 52);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_40;
  }

  if ((*(this + 52) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
    v4 = *(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 8);
  }

  v5 = CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::ByteSize(v4);
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
LABEL_12:
    v8 = *(this + 2);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 16);
    }

    v9 = CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::ByteSize(v8);
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
    v2 = *(this + 13);
  }

LABEL_18:
  if ((v2 & 4) != 0)
  {
    v12 = *(this + 3);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 24);
    }

    v13 = CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::ByteSize(v12);
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
    v2 = *(this + 13);
    if ((v2 & 8) == 0)
    {
LABEL_20:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_20;
  }

  v16 = *(this + 4);
  if (!v16)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
    v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 32);
  }

  v17 = CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::ByteSize(v16);
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
  if ((*(this + 13) & 0x10) != 0)
  {
LABEL_34:
    v20 = *(this + 5);
    if (!v20)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 40);
    }

    v21 = CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::ByteSize(v20);
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

LABEL_40:
  *(this + 12) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo *a2)
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
    v5 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v6;
    LODWORD(v6) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v6;
    LODWORD(v6) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v6;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters *CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::KlobucharModelParameters(CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters *this, const CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters *a2)
{
  *this = &unk_1F4CDE280;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters *this, const CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  v5 = *(a2 + 13);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    v6 = *(a2 + 1);
    *(this + 13) |= 1u;
    *(this + 1) = v6;
    v5 = *(a2 + 13);
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

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  result = *(a2 + 4);
  *(this + 13) |= 2u;
  *(this + 4) = result;
  v5 = *(a2 + 13);
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
  result = *(a2 + 5);
  *(this + 13) |= 4u;
  *(this + 5) = result;
  v5 = *(a2 + 13);
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
  result = *(a2 + 6);
  *(this + 13) |= 8u;
  *(this + 6) = result;
  v5 = *(a2 + 13);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    result = *(a2 + 8);
    *(this + 13) |= 0x20u;
    *(this + 8) = result;
    v5 = *(a2 + 13);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  result = *(a2 + 7);
  *(this + 13) |= 0x10u;
  *(this + 7) = result;
  v5 = *(a2 + 13);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  result = *(a2 + 9);
  *(this + 13) |= 0x40u;
  *(this + 9) = result;
  v5 = *(a2 + 13);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 10);
    *(this + 13) |= 0x80u;
    *(this + 10) = result;
    v5 = *(a2 + 13);
  }

LABEL_13:
  if ((v5 & 0x100) != 0)
  {
    result = *(a2 + 11);
    *(this + 13) |= 0x100u;
    *(this + 11) = result;
  }

  return result;
}

void sub_1D0D2082C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::Clear(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 44) = 0;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 52);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 28), a3);
  v6 = *(v5 + 52);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 52);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 40), a3);
    if ((*(v5 + 52) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 36), a3);
  v6 = *(v5 + 52);
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
  v7 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, v7, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    if (v2)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v2 = *(this + 13);
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
      v3 += 5;
    }

    if ((v2 & 0x10) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 0x20) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 0x40) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 0x80) != 0)
    {
      v3 += 5;
    }
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0x100) != 0)
  {
    result = v3 + 5;
  }

  else
  {
    result = v3;
  }

  *(this + 12) = result;
  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters *this, const CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::Swap(CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters *this, CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters *a2)
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
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
    v7 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v7;
    v8 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v8;
    v9 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v9;
    result = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = result;
    LODWORD(v2) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz *CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::SfcfXyz(CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz *this, const CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz *a2)
{
  *this = &unk_1F4CDE2F8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz *this, const CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz *a2)
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

void sub_1D0D20E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::~SfcfXyz(CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz *this)
{
  *this = &unk_1F4CDE2F8;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::~SfcfXyz(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::Clear(uint64_t this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz *this)
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

double CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz *this, const CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::Swap(CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz *this, CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz *a2)
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

double CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::AntennaPhaseCenterSvOffset(CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this, const CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *a2)
{
  *this = &unk_1F4CDE370;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this, const CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *a2)
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
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::SvId::MergeFrom(v6, v7);
      v5 = *(a2 + 9);
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 4);
      if (v8 >= 0xD)
      {
        __assert_rtn("set_band", "CoreNavigationCLPGnssMeasApi.pb.h", 13137, "::CoreNavigation::CLP::LogEntry::PrivateData::Band_IsValid(value)");
      }

      *(this + 9) |= 2u;
      *(this + 4) = v8;
      v5 = *(a2 + 9);
    }

    if ((v5 & 4) != 0)
    {
      v9 = *(a2 + 5);
      if (v9 >= 4)
      {
        __assert_rtn("set_sv_reference_point", "CoreNavigationCLPGnssMeasApi.pb.h", 13160, "::CoreNavigation::CLP::LogEntry::PrivateData::SvReferencePoint_IsValid(value)");
      }

      *(this + 9) |= 4u;
      *(this + 5) = v9;
      v5 = *(a2 + 9);
    }

    if ((v5 & 8) != 0)
    {
      *(this + 9) |= 8u;
      v10 = *(this + 3);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 3);
      if (!v11)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
        v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 24);
      }

      return CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::MergeFrom(v10, v11);
    }
  }

  return result;
}

void sub_1D0D21630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::~AntennaPhaseCenterSvOffset(CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this)
{
  *this = &unk_1F4CDE370;
  CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::~AntennaPhaseCenterSvOffset(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 3);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::Clear(uint64_t this)
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
        this = CoreNavigation::CLP::LogEntry::PrivateData::SvId::Clear(this);
        v2 = *(v1 + 36);
      }
    }

    *(v1 + 16) = 0;
    if ((v2 & 8) != 0)
    {
      v3 = *(v1 + 24);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
      }
    }
  }

  *(v1 + 36) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (v6 == 1)
      {
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

        v14 = *(a2 + 14);
        v15 = *(a2 + 15);
        *(a2 + 14) = v14 + 1;
        if (v14 >= v15)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::SvId::MergePartialFromCodedStream(v10, a2) || *(a2 + 36) != 1)
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
          v9 = v19 + 1;
          *(a2 + 1) = v9;
LABEL_35:
          v31 = 0;
          if (v9 >= v8 || (v20 = *v9, (v20 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
            if (!result)
            {
              return result;
            }

            v20 = v31;
          }

          else
          {
            *(a2 + 1) = v9 + 1;
          }

          if (v20 <= 0xC)
          {
            *(this + 9) |= 2u;
            *(this + 4) = v20;
          }

          v22 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v22 < v12 && *v22 == 24)
          {
            v13 = v22 + 1;
            *(a2 + 1) = v13;
LABEL_45:
            v31 = 0;
            if (v13 >= v12 || (v23 = *v13, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
              if (!result)
              {
                return result;
              }

              v23 = v31;
            }

            else
            {
              *(a2 + 1) = v13 + 1;
            }

            if (v23 <= 3)
            {
              *(this + 9) |= 4u;
              *(this + 5) = v23;
            }

            v24 = *(a2 + 1);
            if (v24 < *(a2 + 2) && *v24 == 34)
            {
              *(a2 + 1) = v24 + 1;
              goto LABEL_55;
            }
          }
        }
      }

      else
      {
        if (v6 == 2 && (TagFallback & 7) == 0)
        {
          v9 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_35;
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
    }

    if (v6 == 3)
    {
      if ((TagFallback & 7) == 0)
      {
        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_45;
      }

      goto LABEL_22;
    }

    if (v6 != 4 || v7 != 2)
    {
      goto LABEL_22;
    }

LABEL_55:
    *(this + 9) |= 8u;
    v25 = *(this + 3);
    if (!v25)
    {
      operator new();
    }

    v31 = 0;
    v26 = *(a2 + 1);
    if (v26 >= *(a2 + 2) || *v26 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31))
      {
        return 0;
      }
    }

    else
    {
      v31 = *v26;
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
    if (!CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::MergePartialFromCodedStream(v25, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v29 = *(a2 + 14);
    v17 = __OFSUB__(v29, 1);
    v30 = v29 - 1;
    if (v30 < 0 == v17)
    {
      *(a2 + 14) = v30;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 8);
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

LABEL_10:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_11:
  v8 = *(v5 + 24);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 24);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::ByteSize(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_36;
  }

  if ((*(this + 36) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(this + 8);
  if (!v4)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
    v4 = *(CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 8);
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
  v2 = *(v1 + 36);
  if ((v2 & 2) != 0)
  {
LABEL_12:
    this = *(v1 + 16);
    if ((this & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v7 = this + 1;
      v2 = *(v1 + 36);
    }

    else
    {
      v7 = 2;
    }

    v3 = (v7 + v3);
  }

LABEL_18:
  if ((v2 & 4) != 0)
  {
    this = *(v1 + 20);
    if ((this & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v8 = this + 1;
      v2 = *(v1 + 36);
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
    if ((v2 & 8) == 0)
    {
      goto LABEL_36;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_36;
  }

  v9 = *(v1 + 24);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 24);
  }

  v10 = *(v9 + 36);
  if (*(v9 + 36))
  {
    v11 = (v10 << 31 >> 31) & 9;
    if ((v10 & 2) != 0)
    {
      v11 += 9;
    }

    if ((v10 & 4) != 0)
    {
      v10 = v11 + 9;
    }

    else
    {
      v10 = v11;
    }
  }

  *(v9 + 32) = v10;
  v3 = (v3 + v10 + 2);
LABEL_36:
  *(v1 + 32) = v3;
  return v3;
}

double CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this, const CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *a2)
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
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp *CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::ReceivedTimeStamp(CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, const CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp *a2)
{
  *this = &unk_1F4CDE3E8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, const CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp *a2)
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

void sub_1D0D22194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::Clear(uint64_t this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp *this)
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

double CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, const CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::Swap(CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp *a2)
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

double CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this)
{
  *(this + 16) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MeasurementReportCallbackContents(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, const CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *a2)
{
  *this = &unk_1F4CDE460;
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
  CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergeFrom(this, a2);
  return this;
}

void sub_1D0D2257C(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 13);
  sub_1D0B8CD0C(v3);
  sub_1D0B8CD0C(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

float CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, const CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v40);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v40);
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
      CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::MergeFrom(*(v11 + 8 * v10), v8);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v40);
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
      CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergeFrom(*(v19 + 8 * v18), v16);
      ++v15;
      v14 = *(a2 + 14);
    }

    while (v15 < v14);
  }

  v20 = *(this + 28);
  v21 = *(a2 + 28);
  v22 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
  LODWORD(v24) = *(a2 + 28);
  if (v24 >= 1)
  {
    v25 = 0;
    do
    {
      if (v25 >= v24)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v40);
      }

      v26 = *(*(a2 + 13) + 8 * v25);
      v27 = *(this + 29);
      v28 = *(this + 28);
      if (v28 >= v27)
      {
        if (v27 == *(this + 30))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
          v27 = *(this + 29);
        }

        *(this + 29) = v27 + 1;
        operator new();
      }

      v29 = *(this + 13);
      *(this + 28) = v28 + 1;
      v23 = CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergeFrom(*(v29 + 8 * v28), v26);
      ++v25;
      v24 = *(a2 + 28);
    }

    while (v25 < v24);
  }

  LOBYTE(v30) = *(a2 + 132);
  if (v30)
  {
    if (*(a2 + 132))
    {
      *(this + 33) |= 1u;
      v31 = *(this + 1);
      if (!v31)
      {
        operator new();
      }

      v32 = *(a2 + 1);
      if (!v32)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v22);
        v32 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 8);
      }

      v23 = CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergeFrom(v31, v32);
      v30 = *(a2 + 33);
      if ((v30 & 2) == 0)
      {
LABEL_36:
        if ((v30 & 0x10) == 0)
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
    v33 = *(this + 2);
    if (!v33)
    {
      operator new();
    }

    v34 = *(a2 + 2);
    if (!v34)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v22);
      v34 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 16);
    }

    v23 = CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::MergeFrom(v33, v34);
    v30 = *(a2 + 33);
    if ((v30 & 0x10) == 0)
    {
LABEL_37:
      if ((v30 & 0x20) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_56;
    }

LABEL_51:
    *(this + 33) |= 0x10u;
    v35 = *(this + 9);
    if (!v35)
    {
      operator new();
    }

    v36 = *(a2 + 9);
    if (!v36)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v22);
      v36 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 72);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::MergeFrom(v35, v36);
    v30 = *(a2 + 33);
    if ((v30 & 0x20) == 0)
    {
LABEL_38:
      if ((v30 & 0x40) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_57;
    }

LABEL_56:
    v23 = *(a2 + 10);
    *(this + 33) |= 0x20u;
    *(this + 10) = v23;
    v30 = *(a2 + 33);
    if ((v30 & 0x40) == 0)
    {
LABEL_39:
      if ((v30 & 0x80) == 0)
      {
        return *&v23;
      }

LABEL_58:
      *(this + 33) |= 0x80u;
      v37 = *(this + 12);
      if (!v37)
      {
        operator new();
      }

      v38 = *(a2 + 12);
      if (!v38)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v22);
        v38 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 96);
      }

      *&v23 = CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::MergeFrom(v37, v38);
      return *&v23;
    }

LABEL_57:
    v23 = *(a2 + 11);
    *(this + 33) |= 0x40u;
    *(this + 11) = v23;
    if ((*(a2 + 33) & 0x80) == 0)
    {
      return *&v23;
    }

    goto LABEL_58;
  }

  return *&v23;
}

void sub_1D0D22C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::Clear(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this)
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
        CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::Clear(v4);
        v2 = *(this + 33);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v5 = *(this + 9);
      if (v5)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::Clear(v5);
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

  sub_1D0C77384(this + 24);
  sub_1D0C77384(this + 48);
  result = sub_1D0C77384(this + 104);
  *(this + 33) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 132);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 132);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 16);
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
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 72);
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
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 96);
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this)
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
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 8);
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
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 16);
    }

    v9 = CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::ByteSize(v8);
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
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 72);
    }

    v13 = CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::ByteSize(v12);
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
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 96);
    }

    v18 = CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::ByteSize(v17);
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
      v24 = CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::ByteSize(*(*(this + 3) + 8 * v23));
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
      v30 = CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::ByteSize(*(*(this + 6) + 8 * v29));
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
      v36 = CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::ByteSize(*(*(this + 13) + 8 * v35));
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

float CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, const CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergeFrom(this, a2);
  }

  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::Swap(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::protobuf_ShutdownFile_CoreNavigationCLPInternalToolData_2eproto(CoreNavigation::CLP::LogEntry::InternalToolData *this)
{
  result = CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::default_instance_;
  if (CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::default_instance_)
  {
    return (*(*CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::default_instance_ + 8))();
  }

  return result;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::protobuf_AddDesc_CoreNavigationCLPInternalToolData_2eproto_impl(CoreNavigation::CLP::LogEntry::InternalToolData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreNavigation/shared/cnprotobuf/CoreNavigationCLPInternalToolData.pb.cc", a4);
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(v4);
  operator new();
}

void *CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::InternalToolDataCapture(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDE988;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDE988;
  return this;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::protobuf_AddDesc_CoreNavigationCLPInternalToolData_2eproto(CoreNavigation::CLP::LogEntry::InternalToolData *this)
{
  v1 = CoreNavigation::CLP::LogEntry::InternalToolData::protobuf_AddDesc_CoreNavigationCLPInternalToolData_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::InternalToolData::protobuf_AddDesc_CoreNavigationCLPInternalToolData_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0D23754(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture *CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::InternalToolDataCapture(CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture *this, const CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDE988;
  CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture *this, const CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture *a2)
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
    *(this + 5) |= 1u;
    v4 = *(this + 1);
    if (!v4)
    {
      operator new();
    }

    v5 = *(a2 + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::protobuf_AddDesc_CoreNavigationCLPInternalToolData_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::MergeFrom(v4, v5);
  }
}

void sub_1D0D2392C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::~InternalToolDataCapture(CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture *this)
{
  *this = &unk_1F4CDE988;
  CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::~InternalToolDataCapture(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::SharedDtor(CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture *this)
{
  CoreNavigation::CLP::LogEntry::InternalToolData::protobuf_AddDesc_CoreNavigationCLPInternalToolData_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 20))
  {
    this = *(this + 8);
    if (this)
    {
      this = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::Clear(this);
    }
  }

  *(v1 + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::MergePartialFromCodedStream(v6, a2) || *(a2 + 36) != 1)
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::protobuf_AddDesc_CoreNavigationCLPInternalToolData_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture *this)
{
  if (*(this + 20))
  {
    v3 = *(this + 1);
    if (!v3)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::protobuf_AddDesc_CoreNavigationCLPInternalToolData_2eproto(0);
      v3 = *(CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::default_instance_ + 8);
    }

    v4 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::ByteSize(v3);
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

void CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture *this, const CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture *a2)
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

double *cnquaternion::CNQuaternion::CNQuaternion(double *this, double a2, double a3, double a4, double a5)
{
  *this = a2;
  this[1] = a3;
  this[2] = a4;
  this[3] = a5;
  return this;
}

{
  *this = a2;
  this[1] = a3;
  this[2] = a4;
  this[3] = a5;
  return this;
}

__n128 cnquaternion::CNQuaternion::CNQuaternion(cnquaternion::CNQuaternion *this, __n128 *a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  *this = *a2;
  result = a2[1];
  *(this + 1) = result;
  return result;
}

{
  *this = 0u;
  *(this + 1) = 0u;
  *this = *a2;
  result = a2[1];
  *(this + 1) = result;
  return result;
}

__n128 cnquaternion::CNQuaternion::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    result = *(a2 + 16);
    *(a1 + 16) = result;
  }

  return result;
}

float64x2_t cnquaternion::CNQuaternion::operator+@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  result = vaddq_f64(*a1, *a2);
  v4 = vaddq_f64(a1[1], a2[1]);
  *a3 = result;
  a3[1] = v4;
  return result;
}

float64x2_t cnquaternion::CNQuaternion::operator-@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  result = vsubq_f64(*a1, *a2);
  v4 = vsubq_f64(a1[1], a2[1]);
  *a3 = result;
  a3[1] = v4;
  return result;
}

double cnquaternion::CNQuaternion::operator*@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v6 = a1[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = v4 * v5 + v3 * *a2 - v6 * v7 + *a1 * v8;
  v10 = v3 * v5 - v4 * *a2 + *a1 * v7 + v6 * v8;
  v11 = v6 * *a2 - *a1 * v5 + v3 * v7 + v4 * v8;
  v12 = -(v6 * v5) - *a1 * *a2 - v4 * v7;
  *a3 = v9;
  a3[1] = v10;
  result = v12 + v3 * v8;
  a3[2] = v11;
  a3[3] = result;
  return result;
}

cnrand::RandomNumberGenerator *cnrand::RandomNumberGenerator::RandomNumberGenerator(cnrand::RandomNumberGenerator *this)
{
  bzero(this, 0x9C9uLL);
  return this;
}

{
  bzero(this, 0x9C9uLL);
  return this;
}

cnrand::RandomNumberGenerator *cnrand::RandomNumberGenerator::RandomNumberGenerator(cnrand::RandomNumberGenerator *this, const cnrand::RandomNumberGenerator *a2)
{
  *this = *a2;
  memcpy(this + 8, a2 + 8, 0x9C0uLL);
  *(this + 2504) = *(a2 + 2504);
  return this;
}

{
  *this = *a2;
  memcpy(this + 8, a2 + 8, 0x9C0uLL);
  *(this + 2504) = *(a2 + 2504);
  return this;
}

uint64_t cnrand::RandomNumberGenerator::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    memcpy((a1 + 8), (a2 + 8), 0x9C0uLL);
    *(a1 + 2504) = *(a2 + 2504);
  }

  return a1;
}

uint64_t cnrand::RandomNumberGenerator::FillGenerator(uint64_t this)
{
  if (!*(this + 4))
  {
    v1 = 0;
    v2 = this + 8;
    do
    {
      if (v1 == 623)
      {
        v3 = 0;
      }

      else
      {
        v3 = v1 + 1;
      }

      v4 = *(v2 + 4 * v3);
      if (v1 >= 0xE3)
      {
        v5 = -227;
      }

      else
      {
        v5 = 397;
      }

      v6 = *(v2 + 4 * (v5 + v1)) ^ ((v4 & 0x7FFFFFFE | *(v2 + 4 * v1) & 0x80000000) >> 1);
      if (v4)
      {
        v6 ^= 0x9908B0DF;
      }

      *(v2 + 4 * v1++) = v6;
    }

    while (v1 != 624);
  }

  return this;
}