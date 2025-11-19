float CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::AccelSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::AccelSample *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (!v5)
  {
    return *&v4;
  }

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
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::default_instance_ + 8);
    }

    v4 = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
    v5 = *(a2 + 8);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_16:
      LODWORD(v4) = *(a2 + 5);
      *(this + 8) |= 4u;
      *(this + 5) = LODWORD(v4);
      if ((*(a2 + 8) & 8) != 0)
      {
        goto LABEL_8;
      }

      return *&v4;
    }
  }

  else if ((*(a2 + 32) & 2) == 0)
  {
    goto LABEL_6;
  }

  LODWORD(v4) = *(a2 + 4);
  *(this + 8) |= 2u;
  *(this + 4) = LODWORD(v4);
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v5 & 8) != 0)
  {
LABEL_8:
    LODWORD(v4) = *(a2 + 6);
    *(this + 8) |= 8u;
    *(this + 6) = LODWORD(v4);
  }

  return *&v4;
}

void sub_1D0CBF6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    if (*(this + 32))
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
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
      if ((*(v5 + 32) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 32);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::AccelSample *this)
{
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    if (*(this + 32))
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::default_instance_ + 8);
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

float CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::AccelSample *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::AccelSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::AccelSample *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::Swap(CoreNavigation::CLP::LogEntry::PrivateData::AccelSample *this, CoreNavigation::CLP::LogEntry::PrivateData::AccelSample *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Accel::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 40) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::Accel *CoreNavigation::CLP::LogEntry::PrivateData::Accel::Accel(CoreNavigation::CLP::LogEntry::PrivateData::Accel *this, const CoreNavigation::CLP::LogEntry::PrivateData::Accel *a2)
{
  *(this + 5) = 0;
  *this = &unk_1F4CD9618;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::Accel::MergeFrom(this, a2);
  return this;
}

void sub_1D0CBFB00(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::PrivateData::Accel::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Accel *this, const CoreNavigation::CLP::LogEntry::PrivateData::Accel *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  sub_1D0CFEA50((this + 16), a2 + 16);
  if (*(a2 + 44))
  {
    *(this + 11) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v4);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::Accel::default_instance_ + 8);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
  }

  return result;
}

void sub_1D0CBFC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Accel::Clear(CoreNavigation::CLP::LogEntry::PrivateData::Accel *this)
{
  if (*(this + 44))
  {
    v2 = *(this + 1);
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

  result = sub_1D0C77384(this + 16);
  *(this + 11) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Accel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::Accel::default_instance_ + 8);
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Accel::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::Accel *this)
{
  if (*(this + 44))
  {
    v3 = *(this + 1);
    if (!v3)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v3 = *(CoreNavigation::CLP::LogEntry::PrivateData::Accel::default_instance_ + 8);
    }

    v4 = *(v3 + 36);
    if (*(v3 + 36))
    {
      v5 = (v4 << 31 >> 31) & 9;
      if ((v4 & 2) != 0)
      {
        v5 += 9;
      }

      if ((v4 & 4) != 0)
      {
        v4 = v5 + 9;
      }

      else
      {
        v4 = v5;
      }
    }

    *(v3 + 32) = v4;
    v2 = v4 + 2;
  }

  else
  {
    v2 = 0;
  }

  v6 = *(this + 6);
  v7 = (v6 + v2);
  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      v7 = v7 + CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::ByteSize(*(*(this + 2) + 8 * v8++)) + 1;
    }

    while (v8 < *(this + 6));
  }

  *(this + 10) = v7;
  return v7;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Accel::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Accel *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::Accel::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::Accel::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::Accel *this, const CoreNavigation::CLP::LogEntry::PrivateData::Accel *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::Accel::MergeFrom(this, a2);
  }

  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::Accel *CoreNavigation::CLP::LogEntry::PrivateData::Accel::Swap(CoreNavigation::CLP::LogEntry::PrivateData::Accel *this, CoreNavigation::CLP::LogEntry::PrivateData::Accel *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::GyroSample *CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::GyroSample(CoreNavigation::CLP::LogEntry::PrivateData::GyroSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::GyroSample *a2)
{
  *this = &unk_1F4CD9690;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GyroSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::GyroSample *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (!v5)
  {
    return *&v4;
  }

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
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::default_instance_ + 8);
    }

    v4 = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
    v5 = *(a2 + 8);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_16:
      LODWORD(v4) = *(a2 + 5);
      *(this + 8) |= 4u;
      *(this + 5) = LODWORD(v4);
      if ((*(a2 + 8) & 8) != 0)
      {
        goto LABEL_8;
      }

      return *&v4;
    }
  }

  else if ((*(a2 + 32) & 2) == 0)
  {
    goto LABEL_6;
  }

  LODWORD(v4) = *(a2 + 4);
  *(this + 8) |= 2u;
  *(this + 4) = LODWORD(v4);
  v5 = *(a2 + 8);
  if ((v5 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v5 & 8) != 0)
  {
LABEL_8:
    LODWORD(v4) = *(a2 + 6);
    *(this + 8) |= 8u;
    *(this + 6) = LODWORD(v4);
  }

  return *&v4;
}

void sub_1D0CC01F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    if (*(this + 32))
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
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
      if ((*(v5 + 32) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 32);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GyroSample *this)
{
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    if (*(this + 32))
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::default_instance_ + 8);
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

float CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GyroSample *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GyroSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::GyroSample *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::Swap(CoreNavigation::CLP::LogEntry::PrivateData::GyroSample *this, CoreNavigation::CLP::LogEntry::PrivateData::GyroSample *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Gyro::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 40) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::Gyro *CoreNavigation::CLP::LogEntry::PrivateData::Gyro::Gyro(CoreNavigation::CLP::LogEntry::PrivateData::Gyro *this, const CoreNavigation::CLP::LogEntry::PrivateData::Gyro *a2)
{
  *(this + 5) = 0;
  *this = &unk_1F4CD9708;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::Gyro::MergeFrom(this, a2);
  return this;
}

void sub_1D0CC0650(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::PrivateData::Gyro::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Gyro *this, const CoreNavigation::CLP::LogEntry::PrivateData::Gyro *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  sub_1D0CFEBD4((this + 16), a2 + 16);
  if (*(a2 + 44))
  {
    *(this + 11) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v4);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::Gyro::default_instance_ + 8);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
  }

  return result;
}

void sub_1D0CC0778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Gyro::Clear(CoreNavigation::CLP::LogEntry::PrivateData::Gyro *this)
{
  if (*(this + 44))
  {
    v2 = *(this + 1);
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

  result = sub_1D0C77384(this + 16);
  *(this + 11) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Gyro::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::Gyro::default_instance_ + 8);
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Gyro::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::Gyro *this)
{
  if (*(this + 44))
  {
    v3 = *(this + 1);
    if (!v3)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v3 = *(CoreNavigation::CLP::LogEntry::PrivateData::Gyro::default_instance_ + 8);
    }

    v4 = *(v3 + 36);
    if (*(v3 + 36))
    {
      v5 = (v4 << 31 >> 31) & 9;
      if ((v4 & 2) != 0)
      {
        v5 += 9;
      }

      if ((v4 & 4) != 0)
      {
        v4 = v5 + 9;
      }

      else
      {
        v4 = v5;
      }
    }

    *(v3 + 32) = v4;
    v2 = v4 + 2;
  }

  else
  {
    v2 = 0;
  }

  v6 = *(this + 6);
  v7 = (v6 + v2);
  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      v7 = v7 + CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::ByteSize(*(*(this + 2) + 8 * v8++)) + 1;
    }

    while (v8 < *(this + 6));
  }

  *(this + 10) = v7;
  return v7;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Gyro::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Gyro *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::Gyro::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::Gyro::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::Gyro *this, const CoreNavigation::CLP::LogEntry::PrivateData::Gyro *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::Gyro::MergeFrom(this, a2);
  }

  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::Gyro *CoreNavigation::CLP::LogEntry::PrivateData::Gyro::Swap(CoreNavigation::CLP::LogEntry::PrivateData::Gyro *this, CoreNavigation::CLP::LogEntry::PrivateData::Gyro *a2)
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

void *CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::BaroSample *CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::BaroSample(CoreNavigation::CLP::LogEntry::PrivateData::BaroSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::BaroSample *a2)
{
  *this = &unk_1F4CD9780;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::BaroSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::BaroSample *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (!v5)
  {
    return *&v4;
  }

  if ((*(a2 + 28) & 1) == 0)
  {
    if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    LODWORD(v4) = *(a2 + 4);
    *(this + 7) |= 2u;
    *(this + 4) = LODWORD(v4);
    if ((*(a2 + 7) & 4) != 0)
    {
      goto LABEL_7;
    }

    return *&v4;
  }

  *(this + 7) |= 1u;
  v6 = *(this + 1);
  if (!v6)
  {
    operator new();
  }

  v7 = *(a2 + 1);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::default_instance_ + 8);
  }

  v4 = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
  v5 = *(a2 + 7);
  if ((v5 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v5 & 4) != 0)
  {
LABEL_7:
    LODWORD(v4) = *(a2 + 5);
    *(this + 7) |= 4u;
    *(this + 5) = LODWORD(v4);
  }

  return *&v4;
}

void sub_1D0CC0D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    if (*(this + 28))
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

  *(this + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
    if ((*(v5 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_9;
  }

  v7 = *(this + 8);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = *(v5 + 28);
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
  v8 = *(v5 + 20);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::BaroSample *this)
{
  LOBYTE(v2) = *(this + 28);
  if (v2)
  {
    if (*(this + 28))
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::default_instance_ + 8);
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
      v2 = *(this + 7);
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

  *(this + 6) = result;
  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::BaroSample *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::BaroSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::BaroSample *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::Swap(CoreNavigation::CLP::LogEntry::PrivateData::BaroSample *this, CoreNavigation::CLP::LogEntry::PrivateData::BaroSample *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v3;
    result = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = result;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Baro::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 40) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::Baro *CoreNavigation::CLP::LogEntry::PrivateData::Baro::Baro(CoreNavigation::CLP::LogEntry::PrivateData::Baro *this, const CoreNavigation::CLP::LogEntry::PrivateData::Baro *a2)
{
  *(this + 5) = 0;
  *this = &unk_1F4CD97F8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::Baro::MergeFrom(this, a2);
  return this;
}

void sub_1D0CC1134(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::PrivateData::Baro::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Baro *this, const CoreNavigation::CLP::LogEntry::PrivateData::Baro *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  sub_1D0CFED58((this + 16), a2 + 16);
  if (*(a2 + 44))
  {
    *(this + 11) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v4);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::Baro::default_instance_ + 8);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
  }

  return result;
}

void sub_1D0CC125C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Baro::Clear(CoreNavigation::CLP::LogEntry::PrivateData::Baro *this)
{
  if (*(this + 44))
  {
    v2 = *(this + 1);
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

  result = sub_1D0C77384(this + 16);
  *(this + 11) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Baro::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::Baro::default_instance_ + 8);
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Baro::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::Baro *this)
{
  if (*(this + 44))
  {
    v3 = *(this + 1);
    if (!v3)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v3 = *(CoreNavigation::CLP::LogEntry::PrivateData::Baro::default_instance_ + 8);
    }

    v4 = *(v3 + 36);
    if (*(v3 + 36))
    {
      v5 = (v4 << 31 >> 31) & 9;
      if ((v4 & 2) != 0)
      {
        v5 += 9;
      }

      if ((v4 & 4) != 0)
      {
        v4 = v5 + 9;
      }

      else
      {
        v4 = v5;
      }
    }

    *(v3 + 32) = v4;
    v2 = v4 + 2;
  }

  else
  {
    v2 = 0;
  }

  v6 = *(this + 6);
  v7 = (v6 + v2);
  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      v7 = v7 + CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::ByteSize(*(*(this + 2) + 8 * v8++)) + 1;
    }

    while (v8 < *(this + 6));
  }

  *(this + 10) = v7;
  return v7;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Baro::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Baro *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::Baro::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::Baro::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::Baro *this, const CoreNavigation::CLP::LogEntry::PrivateData::Baro *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::Baro::MergeFrom(this, a2);
  }

  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::Baro *CoreNavigation::CLP::LogEntry::PrivateData::Baro::Swap(CoreNavigation::CLP::LogEntry::PrivateData::Baro *this, CoreNavigation::CLP::LogEntry::PrivateData::Baro *a2)
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

void *CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate *CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::ClientLocationCoordinate(CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate *this, const CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate *a2)
{
  *this = &unk_1F4CD9870;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate *this, const CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
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
      result = *(a2 + 2);
      *(this + 7) |= 2u;
      *(this + 2) = result;
    }
  }

  return result;
}

void sub_1D0CC1764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 28);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v6, a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate *this)
{
  v1 = *(this + 28);
  if (*(this + 28))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 6) = v1;
  return v1;
}

double CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate *this, const CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::Swap(CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate *this, CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v4 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v4;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
  }

  return result;
}

BOOL CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation_LocationIntegrityType_IsValid(CoreNavigation::CLP::LogEntry::PrivateData *this)
{
  v1 = this;
  result = 1;
  if ((v1 - 25) > 0x32 || ((1 << (v1 - 25)) & 0x4000002000001) == 0)
  {
    return (v1 + 1) < 2;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation *this)
{
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

CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation *CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::DaemonLocation(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation *this, const CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation *a2)
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
  *(this + 120) = xmmword_1D0E7A2C0;
  *(this + 17) = 0;
  *(this + 144) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation *this, const CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v29);
  }

  v4 = *(a2 + 38);
  if (!v4)
  {
    goto LABEL_16;
  }

  if (v4)
  {
    v5 = *(a2 + 12);
    if (v5 >= 3 && v5 != 0xFFFF)
    {
      __assert_rtn("set_suitability", "CoreNavigationCLPPrivateDataShared.pb.h", 14486, "::CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation_ClientLocationSuitabilityType_IsValid(value)");
    }

    *(this + 38) |= 1u;
    *(this + 12) = v5;
    v4 = *(a2 + 38);
  }

  if ((v4 & 2) != 0)
  {
    *(this + 38) |= 2u;
    v22 = *(this + 1);
    if (!v22)
    {
      operator new();
    }

    v23 = *(a2 + 1);
    if (!v23)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergeFrom(v22, v23);
    v4 = *(a2 + 38);
    if ((v4 & 4) == 0)
    {
LABEL_10:
      if ((v4 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_65;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_10;
  }

  v24 = *(a2 + 2);
  *(this + 38) |= 4u;
  *(this + 2) = v24;
  v4 = *(a2 + 38);
  if ((v4 & 8) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_66;
  }

LABEL_65:
  v25 = *(a2 + 3);
  *(this + 38) |= 8u;
  *(this + 3) = v25;
  v4 = *(a2 + 38);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_67:
    v27 = *(a2 + 5);
    *(this + 38) |= 0x20u;
    *(this + 5) = v27;
    v4 = *(a2 + 38);
    if ((v4 & 0x40) == 0)
    {
LABEL_14:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_68;
  }

LABEL_66:
  v26 = *(a2 + 4);
  *(this + 38) |= 0x10u;
  *(this + 4) = v26;
  v4 = *(a2 + 38);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_67;
  }

LABEL_13:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_68:
  v28 = *(a2 + 7);
  *(this + 38) |= 0x40u;
  *(this + 7) = v28;
  v4 = *(a2 + 38);
  if ((v4 & 0x80) != 0)
  {
LABEL_15:
    v6 = *(a2 + 8);
    *(this + 38) |= 0x80u;
    *(this + 8) = v6;
    v4 = *(a2 + 38);
  }

LABEL_16:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 9);
    *(this + 38) |= 0x100u;
    *(this + 9) = v14;
    v4 = *(a2 + 38);
    if ((v4 & 0x200) == 0)
    {
LABEL_19:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_48;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_19;
  }

  v15 = *(a2 + 10);
  *(this + 38) |= 0x200u;
  *(this + 10) = v15;
  v4 = *(a2 + 38);
  if ((v4 & 0x400) == 0)
  {
LABEL_20:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  v16 = *(a2 + 13);
  *(this + 38) |= 0x400u;
  *(this + 13) = v16;
  v4 = *(a2 + 38);
  if ((v4 & 0x800) == 0)
  {
LABEL_21:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  v17 = *(a2 + 11);
  *(this + 38) |= 0x800u;
  *(this + 11) = v17;
  v4 = *(a2 + 38);
  if ((v4 & 0x1000) == 0)
  {
LABEL_22:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_50:
  v18 = *(a2 + 26);
  if (v18 >= 0xE)
  {
    __assert_rtn("set_type", "CoreNavigationCLPPrivateDataShared.pb.h", 14771, "::CoreNavigation::CLP::LogEntry::PrivateData::LocationType_IsValid(value)");
  }

  *(this + 38) |= 0x1000u;
  *(this + 26) = v18;
  v4 = *(a2 + 38);
  if ((v4 & 0x2000) == 0)
  {
LABEL_23:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_52:
  *(this + 38) |= 0x2000u;
  v19 = *(this + 12);
  if (!v19)
  {
    operator new();
  }

  v20 = *(a2 + 12);
  if (!v20)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 96);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergeFrom(v19, v20);
  v4 = *(a2 + 38);
  if ((v4 & 0x4000) == 0)
  {
LABEL_24:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_57:
  v21 = *(a2 + 14);
  *(this + 38) |= 0x4000u;
  *(this + 14) = v21;
  v4 = *(a2 + 38);
  if ((v4 & 0x8000) != 0)
  {
LABEL_25:
    v7 = *(a2 + 27);
    *(this + 38) |= 0x8000u;
    *(this + 27) = v7;
    v4 = *(a2 + 38);
  }

LABEL_26:
  if ((v4 & 0xFF0000) != 0)
  {
    if ((v4 & 0x10000) != 0)
    {
      v8 = *(a2 + 30);
      if (((v8 - 25) > 0x32 || ((1 << (v8 - 25)) & 0x4000002000001) == 0) && (v8 + 1) >= 2)
      {
        __assert_rtn("set_integrity", "CoreNavigationCLPPrivateDataShared.pb.h", 14880, "::CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation_LocationIntegrityType_IsValid(value)");
      }

      *(this + 38) |= 0x10000u;
      *(this + 30) = v8;
      v4 = *(a2 + 38);
    }

    if ((v4 & 0x20000) != 0)
    {
      v9 = *(a2 + 31);
      if (v9 >= 3)
      {
        __assert_rtn("set_reference_frame", "CoreNavigationCLPPrivateDataShared.pb.h", 14903, "::CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationReferenceFrameType_IsValid(value)");
      }

      *(this + 38) |= 0x20000u;
      *(this + 31) = v9;
      v4 = *(a2 + 38);
    }

    if ((v4 & 0x40000) != 0)
    {
      v10 = *(a2 + 32);
      if (v10 >= 3)
      {
        __assert_rtn("set_raw_reference_frame", "CoreNavigationCLPPrivateDataShared.pb.h", 14926, "::CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationReferenceFrameType_IsValid(value)");
      }

      *(this + 38) |= 0x40000u;
      *(this + 32) = v10;
      v4 = *(a2 + 38);
    }

    if ((v4 & 0x80000) != 0)
    {
      v11 = *(a2 + 33);
      if ((v11 + 1) >= 8)
      {
        __assert_rtn("set_signal_environment_type", "CoreNavigationCLPPrivateDataShared.pb.h", 14949, "::CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment_SignalEnvironmentType_IsValid(value)");
      }

      *(this + 38) |= 0x80000u;
      *(this + 33) = v11;
      v4 = *(a2 + 38);
    }

    if ((v4 & 0x100000) != 0)
    {
      v12 = *(a2 + 17);
      *(this + 38) |= 0x100000u;
      *(this + 17) = v12;
      v4 = *(a2 + 38);
    }

    if ((v4 & 0x200000) != 0)
    {
      v13 = *(a2 + 144);
      *(this + 38) |= 0x200000u;
      *(this + 144) = v13;
    }
  }
}

void sub_1D0CC20C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::Clear(uint64_t this)
{
  v1 = *(this + 152);
  if (v1)
  {
    *(this + 48) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 28))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 28) = 0;
        v1 = *(this + 152);
      }
    }

    *(this + 16) = 0u;
    *(this + 32) = 0u;
    *(this + 56) = 0;
    *(this + 64) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 52) = 0;
    *(this + 104) = 0;
    *(this + 80) = 0;
    *(this + 88) = 0;
    *(this + 72) = 0;
    if ((v1 & 0x2000) != 0)
    {
      v3 = *(this + 96);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 28) = 0;
        v1 = *(this + 152);
      }
    }

    *(this + 112) = 0;
    *(this + 108) = 0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 120) = xmmword_1D0E7A2C0;
    *(this + 136) = 0;
    *(this + 144) = 0;
  }

  *(this + 152) = 0;
  return this;
}

unsigned int *CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[38];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, this[12], a2, a4);
    v6 = v5[38];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = v5[38];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 2), a3);
  v6 = v5[38];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 3), a3);
  v6 = v5[38];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 4), a3);
  v6 = v5[38];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 5), a3);
  v6 = v5[38];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 7), a3);
  v6 = v5[38];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 8), a3);
  v6 = v5[38];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 9), a3);
  v6 = v5[38];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 10), a3);
  v6 = v5[38];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, v5[13], a2, a4);
  v6 = v5[38];
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 11), a3);
  v6 = v5[38];
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, v5[26], a2, a4);
  v6 = v5[38];
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_39:
  v8 = *(v5 + 12);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 96);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v8, a2, a4);
  v6 = v5[38];
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, *(v5 + 14), a3);
  v6 = v5[38];
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x10, v5[27], a2, a4);
  v6 = v5[38];
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x11, v5[30], a2, a4);
  v6 = v5[38];
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x12, v5[31], a2, a4);
  v6 = v5[38];
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x13, v5[32], a2, a4);
  v6 = v5[38];
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

LABEL_48:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x15, a2, *(v5 + 17), a3);
    if ((v5[38] & 0x200000) == 0)
    {
      return this;
    }

    goto LABEL_49;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x14, v5[33], a2, a4);
  v6 = v5[38];
  if ((v6 & 0x100000) != 0)
  {
    goto LABEL_48;
  }

LABEL_22:
  if ((v6 & 0x200000) == 0)
  {
    return this;
  }

LABEL_49:
  v9 = *(v5 + 144);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x16, v9, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation *this)
{
  v1 = this;
  v2 = *(this + 38);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_33;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_13:
    v5 = *(v1 + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 8);
    }

    v6 = *(v5 + 28);
    if (*(v5 + 28))
    {
      if ((v6 & 2) != 0)
      {
        v6 = ((v6 << 31 >> 31) & 9) + 9;
      }

      else
      {
        v6 = (v6 << 31 >> 31) & 9;
      }
    }

    *(v5 + 24) = v6;
    v3 += v6 + 2;
    v2 = *(v1 + 38);
    goto LABEL_20;
  }

  this = *(this + 12);
  if ((this & 0x80000000) != 0)
  {
    v3 = 11;
    if ((v2 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  if (this < 0x80)
  {
    v3 = 2;
    if ((v2 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
  v3 = this + 1;
  v2 = *(v1 + 38);
  if ((v2 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_20:
  v7 = v3 + 9;
  if ((v2 & 4) == 0)
  {
    v7 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v7 += 9;
  }

  if ((v2 & 0x10) != 0)
  {
    v7 += 9;
  }

  if ((v2 & 0x20) != 0)
  {
    v7 += 9;
  }

  if ((v2 & 0x40) != 0)
  {
    v7 += 9;
  }

  if ((v2 & 0x80) != 0)
  {
    v4 = v7 + 9;
  }

  else
  {
    v4 = v7;
  }

LABEL_33:
  if ((v2 & 0xFF00) != 0)
  {
    v8 = v4 + 9;
    if ((v2 & 0x100) == 0)
    {
      v8 = v4;
    }

    if ((v2 & 0x200) != 0)
    {
      LODWORD(v4) = v8 + 9;
    }

    else
    {
      LODWORD(v4) = v8;
    }

    if ((v2 & 0x400) != 0)
    {
      this = *(v1 + 13);
      if ((this & 0x80000000) != 0)
      {
        v9 = 11;
      }

      else if (this >= 0x80)
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
        v9 = this + 1;
        v2 = *(v1 + 38);
      }

      else
      {
        v9 = 2;
      }

      LODWORD(v4) = v9 + v4;
    }

    if ((v2 & 0x800) != 0)
    {
      LODWORD(v4) = v4 + 9;
    }

    if ((v2 & 0x1000) != 0)
    {
      this = *(v1 + 26);
      if ((this & 0x80000000) != 0)
      {
        v10 = 11;
      }

      else if (this >= 0x80)
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
        v10 = this + 1;
        v2 = *(v1 + 38);
      }

      else
      {
        v10 = 2;
      }

      LODWORD(v4) = v10 + v4;
    }

    if ((v2 & 0x2000) != 0)
    {
      v11 = *(v1 + 12);
      if (!v11)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 96);
      }

      v12 = *(v11 + 28);
      v13 = (v12 << 31 >> 31) & 9;
      if ((v12 & 2) != 0)
      {
        v13 += 9;
      }

      if (*(v11 + 28))
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      *(v11 + 24) = v14;
      LODWORD(v4) = v4 + v14 + 2;
      v2 = *(v1 + 38);
    }

    if ((v2 & 0x4000) != 0)
    {
      v4 = (v4 + 9);
    }

    else
    {
      v4 = v4;
    }

    if ((v2 & 0x8000) != 0)
    {
      v15 = *(v1 + 27);
      if ((v15 & 0x80000000) != 0)
      {
        v16 = 12;
      }

      else if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 2;
        v2 = *(v1 + 38);
      }

      else
      {
        v16 = 3;
      }

      v4 = (v16 + v4);
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v17 = *(v1 + 30);
      if ((v17 & 0x80000000) != 0)
      {
        v18 = 12;
      }

      else if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 2;
        v2 = *(v1 + 38);
      }

      else
      {
        v18 = 3;
      }

      LODWORD(v4) = v18 + v4;
      if ((v2 & 0x20000) == 0)
      {
LABEL_77:
        if ((v2 & 0x40000) == 0)
        {
          goto LABEL_78;
        }

        goto LABEL_92;
      }
    }

    else if ((v2 & 0x20000) == 0)
    {
      goto LABEL_77;
    }

    v19 = *(v1 + 31);
    if ((v19 & 0x80000000) != 0)
    {
      v20 = 12;
    }

    else if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 2;
      v2 = *(v1 + 38);
    }

    else
    {
      v20 = 3;
    }

    LODWORD(v4) = v20 + v4;
    if ((v2 & 0x40000) == 0)
    {
LABEL_78:
      if ((v2 & 0x80000) == 0)
      {
        goto LABEL_104;
      }

      goto LABEL_98;
    }

LABEL_92:
    v21 = *(v1 + 32);
    if ((v21 & 0x80000000) != 0)
    {
      v22 = 12;
    }

    else if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 2;
      v2 = *(v1 + 38);
    }

    else
    {
      v22 = 3;
    }

    LODWORD(v4) = v22 + v4;
    if ((v2 & 0x80000) == 0)
    {
LABEL_104:
      v25 = v4 + 10;
      if ((v2 & 0x100000) == 0)
      {
        v25 = v4;
      }

      if ((v2 & 0x200000) != 0)
      {
        v4 = v25 + 3;
      }

      else
      {
        v4 = v25;
      }

      goto LABEL_109;
    }

LABEL_98:
    v23 = *(v1 + 33);
    if ((v23 & 0x80000000) != 0)
    {
      v24 = 12;
    }

    else if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 2;
      v2 = *(v1 + 38);
    }

    else
    {
      v24 = 3;
    }

    LODWORD(v4) = v24 + v4;
    goto LABEL_104;
  }

LABEL_109:
  *(v1 + 37) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation *this, const CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::Swap(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation *this, CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    v3 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v3;
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
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
    v10 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v10;
    v11 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v11;
    LODWORD(v3) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v3;
    v12 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v12;
    LODWORD(v3) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v3;
    v13 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v13;
    v14 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v14;
    LODWORD(v13) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v13;
    LODWORD(v13) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v13;
    LODWORD(v13) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v13;
    LODWORD(v13) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v13;
    LODWORD(v13) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v13;
    result = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = result;
    LOBYTE(v13) = *(this + 144);
    *(this + 144) = *(a2 + 144);
    *(a2 + 144) = v13;
    LODWORD(v13) = *(this + 38);
    *(this + 38) = *(a2 + 38);
    *(a2 + 38) = v13;
    LODWORD(v13) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v13;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::SharedCtor(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData *CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::MapMatcherData(CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData *a2)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CD9960;
  *(this + 12) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData *a2)
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

void sub_1D0CC2C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::Clear(uint64_t this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData *this)
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

void CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::Swap(CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData *this, CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData *a2)
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

void *CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::PressureSample *CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::PressureSample(CoreNavigation::CLP::LogEntry::PrivateData::PressureSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::PressureSample *a2)
{
  *this = &unk_1F4CD99D8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::PressureSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::PressureSample *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
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
      result = *(a2 + 2);
      *(this + 7) |= 2u;
      *(this + 2) = result;
    }
  }

  return result;
}

void sub_1D0CC30F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 28);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v6, a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::PressureSample *this)
{
  v1 = *(this + 28);
  if (*(this + 28))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 6) = v1;
  return v1;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::PressureSample *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::PressureSample *this, const CoreNavigation::CLP::LogEntry::PrivateData::PressureSample *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::Swap(CoreNavigation::CLP::LogEntry::PrivateData::PressureSample *this, CoreNavigation::CLP::LogEntry::PrivateData::PressureSample *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v4 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v4;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::SharedCtor(uint64_t this)
{
  *(this + 36) = 0;
  *(this + 40) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  *(this + 32) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo *CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::ClientSatelliteInfo(CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo *a2)
{
  *(this + 9) = 0;
  *(this + 10) = 0;
  *this = &unk_1F4CD9A50;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 16) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 40))
  {
    v5 = *(a2 + 2);
    if (v5 >= 7)
    {
      __assert_rtn("set_constellation", "CoreNavigationCLPPrivateDataShared.pb.h", 15160, "::CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteConstellation_IsValid(value)");
    }

    *(this + 10) |= 1u;
    *(this + 2) = v5;
    v4 = *(a2 + 10);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 3);
    *(this + 10) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 10);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  v8 = *(a2 + 4);
  *(this + 10) |= 4u;
  *(this + 4) = v8;
  v4 = *(a2 + 10);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 5);
  *(this + 10) |= 8u;
  *(this + 5) = v9;
  v4 = *(a2 + 10);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    v11 = *(a2 + 7);
    *(this + 10) |= 0x20u;
    *(this + 7) = v11;
    v4 = *(a2 + 10);
    if ((v4 & 0x40) == 0)
    {
LABEL_13:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_14;
    }

    goto LABEL_21;
  }

LABEL_19:
  v10 = *(a2 + 6);
  *(this + 10) |= 0x10u;
  *(this + 6) = v10;
  v4 = *(a2 + 10);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_21:
  v12 = *(a2 + 32);
  *(this + 10) |= 0x40u;
  *(this + 32) = v12;
  if ((*(a2 + 10) & 0x80) != 0)
  {
LABEL_14:
    v6 = *(a2 + 33);
    *(this + 10) |= 0x80u;
    *(this + 33) = v6;
  }
}

void sub_1D0CC35E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::Clear(uint64_t this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 40);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 20), a3);
  v6 = *(v5 + 40);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 24), a3);
  v6 = *(v5 + 40);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 32), a2, a4);
    if ((*(v5 + 40) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 28), a3);
  v6 = *(v5 + 40);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return this;
  }

LABEL_17:
  v7 = *(v5 + 33);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo *this)
{
  v2 = *(this + 10);
  if (!v2)
  {
    result = 0;
    goto LABEL_28;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
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
      v2 = *(this + 10);
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
    if ((v2 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (v5 < 0x80)
  {
    v3 = 2;
    if ((v2 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
  v2 = *(this + 10);
  if ((v2 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_19:
  v8 = v3 + 5;
  if ((v2 & 4) == 0)
  {
    v8 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v8 += 5;
  }

  if ((v2 & 0x10) != 0)
  {
    v8 += 5;
  }

  if ((v2 & 0x20) != 0)
  {
    v8 += 5;
  }

  result = ((v2 >> 6) & 2) + ((v2 >> 5) & 2) + v8;
LABEL_28:
  *(this + 9) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::MergeFrom(this, a2);
  }
}

float CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::Swap(CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo *this, CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo *a2)
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
    result = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = result;
    LOBYTE(v3) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v3;
    LOBYTE(v3) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v3;
    v8 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v8;
    v9 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v9;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo *this)
{
  *(this + 3) = 0;
  *(this + 8) = 0u;
  *&result = 0xFFFFFFFFLL;
  *(this + 4) = 0xFFFFFFFFLL;
  *(this + 10) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo *CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::DaemonLocationPrivate_AltitudeInfo(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo *a2)
{
  *this = &unk_1F4CD9AC8;
  *(this + 1) = 0;
  *(this + 1) = 0u;
  *(this + 4) = 0xFFFFFFFFLL;
  *(this + 10) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v5 = *(a2 + 1);
      *(this + 10) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 10);
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

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 2);
    *(this + 10) |= 2u;
    *(this + 2) = v6;
    v4 = *(a2 + 10);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

LABEL_12:
      v8 = *(a2 + 8);
      if ((v8 + 1) >= 4)
      {
        __assert_rtn("set_undulation_model", "CoreNavigationCLPPrivateDataShared.pb.h", 15407, "::CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_UndulationModelType_IsValid(value)");
      }

      *(this + 10) |= 8u;
      *(this + 8) = v8;
      return;
    }

LABEL_11:
    v7 = *(a2 + 3);
    *(this + 10) |= 4u;
    *(this + 3) = v7;
    if ((*(a2 + 10) & 8) == 0)
    {
      return;
    }

    goto LABEL_12;
  }
}

void sub_1D0CC3CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 32) = -1;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
      if ((*(v5 + 40) & 8) == 0)
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
  v6 = *(v5 + 40);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo *this)
{
  v2 = *(this + 40);
  if (*(this + 40))
  {
    v3 = (v2 << 31 >> 31) & 9;
    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v4 = v3 + 9;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 8) != 0)
    {
      v5 = *(this + 8);
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

  *(this + 9) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::Swap(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo *this, CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo *a2)
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
    v5 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
    v6 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
    v7 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v7;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate *this)
{
  *(this + 114) = 0u;
  result = this + 114;
  *(result + 246) = 0;
  *(result - 2) = 0;
  *(result - 106) = 0u;
  *(result - 90) = 0u;
  *(result - 74) = 0u;
  *(result - 58) = 0u;
  *(result - 42) = 0u;
  *(result - 26) = 0;
  *(result - 18) = 0xFFFFFFFFLL;
  *(result - 10) = 0;
  *(result + 250) = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 158) = 0u;
  *(result + 227) = 0u;
  *(result + 214) = 0u;
  *(result + 198) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate *CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::DaemonLocationPrivate(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate *this, const CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate *a2)
{
  *this = &unk_1F4CD9B40;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 76) = 0;
  *(this + 90) = 0;
  *(this + 56) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 12) = 0xFFFFFFFFLL;
  *(this + 13) = 0;
  *(this + 364) = 0;
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
  *(this + 258) = 0u;
  *(this + 341) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::MergeFrom(this, a2);
  return this;
}

void sub_1D0CC4210(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 36);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate *this, const CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v77);
  }

  v4 = *(this + 74);
  v5 = *(a2 + 74);
  v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 288));
  LODWORD(v7) = *(a2 + 74);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v77);
      }

      v9 = *(*(a2 + 36) + 8 * v8);
      v10 = *(this + 74);
      v11 = *(this + 75);
      if (v10 >= v11)
      {
        if (v11 == *(this + 76))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 288));
          v11 = *(this + 75);
        }

        *(this + 75) = v11 + 1;
        operator new();
      }

      v12 = *(this + 36);
      *(this + 74) = v10 + 1;
      CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::MergeFrom(*(v12 + 8 * v10), v9);
      ++v8;
      v7 = *(a2 + 74);
    }

    while (v8 < v7);
  }

  v13 = *(a2 + 91);
  if (!v13)
  {
    goto LABEL_23;
  }

  if (v13)
  {
    v17 = *(a2 + 1);
    *(this + 91) |= 1u;
    *(this + 1) = v17;
    v13 = *(a2 + 91);
    if ((v13 & 2) == 0)
    {
LABEL_16:
      if ((v13 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_38;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_16;
  }

  v18 = *(a2 + 2);
  *(this + 91) |= 2u;
  *(this + 2) = v18;
  v13 = *(a2 + 91);
  if ((v13 & 4) == 0)
  {
LABEL_17:
    if ((v13 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  v19 = *(a2 + 3);
  *(this + 91) |= 4u;
  *(this + 3) = v19;
  v13 = *(a2 + 91);
  if ((v13 & 8) == 0)
  {
LABEL_18:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  v20 = *(a2 + 4);
  *(this + 91) |= 8u;
  *(this + 4) = v20;
  v13 = *(a2 + 91);
  if ((v13 & 0x10) == 0)
  {
LABEL_19:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_41:
    v22 = *(a2 + 12);
    *(this + 91) |= 0x20u;
    *(this + 12) = v22;
    v13 = *(a2 + 91);
    if ((v13 & 0x40) == 0)
    {
LABEL_21:
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_40:
  v21 = *(a2 + 5);
  *(this + 91) |= 0x10u;
  *(this + 5) = v21;
  v13 = *(a2 + 91);
  if ((v13 & 0x20) != 0)
  {
    goto LABEL_41;
  }

LABEL_20:
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_42:
  v23 = *(a2 + 13);
  *(this + 91) |= 0x40u;
  *(this + 13) = v23;
  v13 = *(a2 + 91);
  if ((v13 & 0x80) != 0)
  {
LABEL_22:
    v14 = *(a2 + 14);
    *(this + 91) |= 0x80u;
    *(this + 14) = v14;
    v13 = *(a2 + 91);
  }

LABEL_23:
  if ((v13 & 0xFF00) == 0)
  {
    goto LABEL_58;
  }

  if ((v13 & 0x100) != 0)
  {
    v15 = *(a2 + 112);
    *(this + 91) |= 0x100u;
    *(this + 112) = v15;
    v13 = *(a2 + 91);
  }

  if ((v13 & 0x200) != 0)
  {
    v16 = *(a2 + 15);
    if (v16 >= 4)
    {
      __assert_rtn("set_match_quality", "CoreNavigationCLPPrivateDataShared.pb.h", 15632, "::CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_MatchQualityType_IsValid(value)");
    }

    *(this + 91) |= 0x200u;
    *(this + 15) = v16;
    v13 = *(a2 + 91);
  }

  if ((v13 & 0x400) != 0)
  {
    *(this + 91) |= 0x400u;
    v24 = *(this + 8);
    if (!v24)
    {
      operator new();
    }

    v25 = *(a2 + 8);
    if (!v25)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v6);
      v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_ + 64);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergeFrom(v24, v25);
    v13 = *(a2 + 91);
    if ((v13 & 0x800) == 0)
    {
LABEL_31:
      if ((v13 & 0x1000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_50;
    }
  }

  else if ((v13 & 0x800) == 0)
  {
    goto LABEL_31;
  }

  v26 = *(a2 + 9);
  *(this + 91) |= 0x800u;
  *(this + 9) = v26;
  v13 = *(a2 + 91);
  if ((v13 & 0x1000) == 0)
  {
LABEL_32:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_51;
  }

LABEL_50:
  v27 = *(a2 + 20);
  *(this + 91) |= 0x1000u;
  *(this + 20) = v27;
  v13 = *(a2 + 91);
  if ((v13 & 0x2000) == 0)
  {
LABEL_33:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_52;
  }

LABEL_51:
  v28 = *(a2 + 21);
  *(this + 91) |= 0x2000u;
  *(this + 21) = v28;
  v13 = *(a2 + 91);
  if ((v13 & 0x4000) == 0)
  {
LABEL_34:
    if ((v13 & 0x8000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_53;
  }

LABEL_52:
  v29 = *(a2 + 113);
  *(this + 91) |= 0x4000u;
  *(this + 113) = v29;
  v13 = *(a2 + 91);
  if ((v13 & 0x8000) == 0)
  {
    goto LABEL_58;
  }

LABEL_53:
  *(this + 91) |= 0x8000u;
  v30 = *(this + 11);
  if (!v30)
  {
    operator new();
  }

  v31 = *(a2 + 11);
  if (!v31)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v6);
    v31 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_ + 88);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::MergeFrom(v30, v31);
  v13 = *(a2 + 91);
LABEL_58:
  if ((v13 & 0xFF0000) == 0)
  {
    goto LABEL_75;
  }

  if ((v13 & 0x10000) != 0)
  {
    v32 = *(a2 + 24);
    if ((v32 + 1) >= 4)
    {
      __assert_rtn("set_undulation_model", "CoreNavigationCLPPrivateDataShared.pb.h", 15827, "::CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_UndulationModelType_IsValid(value)");
    }

    *(this + 91) |= 0x10000u;
    *(this + 24) = v32;
    v13 = *(a2 + 91);
  }

  if ((v13 & 0x20000) != 0)
  {
    v38 = *(a2 + 25);
    *(this + 91) |= 0x20000u;
    *(this + 25) = v38;
    v13 = *(a2 + 91);
    if ((v13 & 0x40000) == 0)
    {
LABEL_64:
      if ((v13 & 0x80000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_109;
    }
  }

  else if ((v13 & 0x40000) == 0)
  {
    goto LABEL_64;
  }

  *(this + 91) |= 0x40000u;
  v39 = *(this + 13);
  if (!v39)
  {
    operator new();
  }

  v40 = *(a2 + 13);
  if (!v40)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v6);
    v40 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_ + 104);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergeFrom(v39, v40);
  v13 = *(a2 + 91);
  if ((v13 & 0x80000) == 0)
  {
LABEL_65:
    if ((v13 & 0x100000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_110;
  }

LABEL_109:
  v41 = *(a2 + 15);
  *(this + 91) |= 0x80000u;
  *(this + 15) = v41;
  v13 = *(a2 + 91);
  if ((v13 & 0x100000) == 0)
  {
LABEL_66:
    if ((v13 & 0x200000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_111;
  }

LABEL_110:
  v42 = *(a2 + 16);
  *(this + 91) |= 0x100000u;
  *(this + 16) = v42;
  v13 = *(a2 + 91);
  if ((v13 & 0x200000) == 0)
  {
LABEL_67:
    if ((v13 & 0x400000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

LABEL_111:
  v43 = *(a2 + 29);
  if (v43 >= 3)
  {
    __assert_rtn("set_origin_device", "CoreNavigationCLPPrivateDataShared.pb.h", 15958, "::CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_ClientLocationOriginDeviceType_IsValid(value)");
  }

  *(this + 91) |= 0x200000u;
  *(this + 29) = v43;
  v13 = *(a2 + 91);
  if ((v13 & 0x400000) == 0)
  {
    goto LABEL_69;
  }

LABEL_68:
  v33 = *(a2 + 114);
  *(this + 91) |= 0x400000u;
  *(this + 114) = v33;
  v13 = *(a2 + 91);
LABEL_69:
  if ((v13 & 0x800000) != 0)
  {
    *(this + 91) |= 0x800000u;
    v34 = *(this + 17);
    if (!v34)
    {
      operator new();
    }

    v35 = *(a2 + 17);
    if (!v35)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v6);
      v35 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_ + 136);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::MergeFrom(v34, v35);
    v13 = *(a2 + 91);
  }

LABEL_75:
  if (!HIBYTE(v13))
  {
    goto LABEL_84;
  }

  if ((v13 & 0x1000000) != 0)
  {
    v69 = *(a2 + 18);
    *(this + 91) |= 0x1000000u;
    *(this + 18) = v69;
    v13 = *(a2 + 91);
    if ((v13 & 0x2000000) == 0)
    {
LABEL_78:
      if ((v13 & 0x4000000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_166;
    }
  }

  else if ((v13 & 0x2000000) == 0)
  {
    goto LABEL_78;
  }

  v70 = *(a2 + 19);
  *(this + 91) |= 0x2000000u;
  *(this + 19) = v70;
  v13 = *(a2 + 91);
  if ((v13 & 0x4000000) == 0)
  {
LABEL_79:
    if ((v13 & 0x8000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_167;
  }

LABEL_166:
  v71 = *(a2 + 20);
  *(this + 91) |= 0x4000000u;
  *(this + 20) = v71;
  v13 = *(a2 + 91);
  if ((v13 & 0x8000000) == 0)
  {
LABEL_80:
    if ((v13 & 0x10000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_168;
  }

LABEL_167:
  v72 = *(a2 + 21);
  *(this + 91) |= 0x8000000u;
  *(this + 21) = v72;
  v13 = *(a2 + 91);
  if ((v13 & 0x10000000) == 0)
  {
LABEL_81:
    if ((v13 & 0x20000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_169;
  }

LABEL_168:
  v73 = *(a2 + 22);
  *(this + 91) |= 0x10000000u;
  *(this + 22) = v73;
  v13 = *(a2 + 91);
  if ((v13 & 0x20000000) == 0)
  {
LABEL_82:
    if ((v13 & 0x40000000) == 0)
    {
      goto LABEL_83;
    }

LABEL_170:
    v75 = *(a2 + 115);
    *(this + 91) |= 0x40000000u;
    *(this + 115) = v75;
    if ((*(a2 + 91) & 0x80000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_171;
  }

LABEL_169:
  v74 = *(a2 + 23);
  *(this + 91) |= 0x20000000u;
  *(this + 23) = v74;
  v13 = *(a2 + 91);
  if ((v13 & 0x40000000) != 0)
  {
    goto LABEL_170;
  }

LABEL_83:
  if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_84;
  }

LABEL_171:
  v76 = *(a2 + 24);
  *(this + 91) |= 0x80000000;
  *(this + 24) = v76;
LABEL_84:
  v36 = *(a2 + 92);
  if (!v36)
  {
    goto LABEL_94;
  }

  if (v36)
  {
    v44 = *(a2 + 25);
    *(this + 92) |= 1u;
    *(this + 25) = v44;
    v36 = *(a2 + 92);
    if ((v36 & 2) == 0)
    {
LABEL_87:
      if ((v36 & 4) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_116;
    }
  }

  else if ((v36 & 2) == 0)
  {
    goto LABEL_87;
  }

  v45 = *(a2 + 276);
  *(this + 92) |= 2u;
  *(this + 276) = v45;
  v36 = *(a2 + 92);
  if ((v36 & 4) == 0)
  {
LABEL_88:
    if ((v36 & 8) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_121;
  }

LABEL_116:
  *(this + 92) |= 4u;
  v46 = *(this + 26);
  if (!v46)
  {
    operator new();
  }

  v47 = *(a2 + 26);
  if (!v47)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v6);
    v47 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_ + 208);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergeFrom(v46, v47);
  v36 = *(a2 + 92);
  if ((v36 & 8) == 0)
  {
LABEL_89:
    if ((v36 & 0x10) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_122;
  }

LABEL_121:
  v48 = *(a2 + 27);
  *(this + 92) |= 8u;
  *(this + 27) = v48;
  v36 = *(a2 + 92);
  if ((v36 & 0x10) == 0)
  {
LABEL_90:
    if ((v36 & 0x20) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_124;
  }

LABEL_122:
  v49 = *(a2 + 68);
  if (v49 >= 3)
  {
    __assert_rtn("set_fused_reference_frame", "CoreNavigationCLPPrivateDataShared.pb.h", 16329, "::CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationReferenceFrameType_IsValid(value)");
  }

  *(this + 92) |= 0x10u;
  *(this + 68) = v49;
  v36 = *(a2 + 92);
  if ((v36 & 0x20) == 0)
  {
LABEL_91:
    if ((v36 & 0x40) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_125;
  }

LABEL_124:
  v50 = *(a2 + 28);
  *(this + 92) |= 0x20u;
  *(this + 28) = v50;
  v36 = *(a2 + 92);
  if ((v36 & 0x40) == 0)
  {
LABEL_92:
    if ((v36 & 0x80) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

LABEL_125:
  v51 = *(a2 + 29);
  *(this + 92) |= 0x40u;
  *(this + 29) = v51;
  v36 = *(a2 + 92);
  if ((v36 & 0x80) != 0)
  {
LABEL_93:
    v37 = *(a2 + 30);
    *(this + 92) |= 0x80u;
    *(this + 30) = v37;
    v36 = *(a2 + 92);
  }

LABEL_94:
  if ((v36 & 0xFF00) == 0)
  {
    goto LABEL_139;
  }

  if ((v36 & 0x100) != 0)
  {
    v52 = *(a2 + 31);
    *(this + 92) |= 0x100u;
    *(this + 31) = v52;
    v36 = *(a2 + 92);
    if ((v36 & 0x200) == 0)
    {
LABEL_97:
      if ((v36 & 0x400) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_129;
    }
  }

  else if ((v36 & 0x200) == 0)
  {
    goto LABEL_97;
  }

  v53 = *(a2 + 32);
  *(this + 92) |= 0x200u;
  *(this + 32) = v53;
  v36 = *(a2 + 92);
  if ((v36 & 0x400) == 0)
  {
LABEL_98:
    if ((v36 & 0x800) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_130;
  }

LABEL_129:
  v54 = *(a2 + 277);
  *(this + 92) |= 0x400u;
  *(this + 277) = v54;
  v36 = *(a2 + 92);
  if ((v36 & 0x800) == 0)
  {
LABEL_99:
    if ((v36 & 0x1000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_131;
  }

LABEL_130:
  v55 = *(a2 + 33);
  *(this + 92) |= 0x800u;
  *(this + 33) = v55;
  v36 = *(a2 + 92);
  if ((v36 & 0x1000) == 0)
  {
LABEL_100:
    if ((v36 & 0x4000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_132;
  }

LABEL_131:
  v56 = *(a2 + 35);
  *(this + 92) |= 0x1000u;
  *(this + 35) = v56;
  v36 = *(a2 + 92);
  if ((v36 & 0x4000) == 0)
  {
LABEL_101:
    if ((v36 & 0x8000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_134;
  }

LABEL_132:
  v57 = *(a2 + 78);
  if (v57 >= 3)
  {
    __assert_rtn("set_gnss_content", "CoreNavigationCLPPrivateDataShared.pb.h", 16553, "::CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_GnssContent_IsValid(value)");
  }

  *(this + 92) |= 0x4000u;
  *(this + 78) = v57;
  v36 = *(a2 + 92);
  if ((v36 & 0x8000) != 0)
  {
LABEL_134:
    *(this + 92) |= 0x8000u;
    v58 = *(this + 40);
    if (!v58)
    {
      operator new();
    }

    v59 = *(a2 + 40);
    if (!v59)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v6);
      v59 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_ + 320);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::MergeFrom(v58, v59);
    v36 = *(a2 + 92);
  }

LABEL_139:
  if ((v36 & 0xFF0000) == 0)
  {
    goto LABEL_156;
  }

  if ((v36 & 0x10000) != 0)
  {
    v60 = *(a2 + 79);
    if (v60 >= 3)
    {
      __assert_rtn("set_estimated_position_context_state", "CoreNavigationCLPPrivateDataShared.pb.h", 16618, "::CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_PositionContextStateType_IsValid(value)");
    }

    *(this + 92) |= 0x10000u;
    *(this + 79) = v60;
    v36 = *(a2 + 92);
  }

  if ((v36 & 0x20000) != 0)
  {
    v66 = *(a2 + 41);
    *(this + 92) |= 0x20000u;
    *(this + 41) = v66;
    v36 = *(a2 + 92);
    if ((v36 & 0x40000) == 0)
    {
LABEL_145:
      if ((v36 & 0x80000) == 0)
      {
        goto LABEL_146;
      }

LABEL_161:
      v68 = *(a2 + 86);
      if (v68 >= 4)
      {
        __assert_rtn("set_map_matcher_type", "CoreNavigationCLPPrivateDataShared.pb.h", 16685, "::CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_MapMatcherType_IsValid(value)");
      }

      *(this + 92) |= 0x80000u;
      *(this + 86) = v68;
      v36 = *(a2 + 92);
      if ((v36 & 0x100000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_147;
    }
  }

  else if ((v36 & 0x40000) == 0)
  {
    goto LABEL_145;
  }

  v67 = *(a2 + 42);
  *(this + 92) |= 0x40000u;
  *(this + 42) = v67;
  v36 = *(a2 + 92);
  if ((v36 & 0x80000) != 0)
  {
    goto LABEL_161;
  }

LABEL_146:
  if ((v36 & 0x100000) != 0)
  {
LABEL_147:
    v61 = *(a2 + 278);
    *(this + 92) |= 0x100000u;
    *(this + 278) = v61;
    v36 = *(a2 + 92);
  }

LABEL_148:
  if ((v36 & 0x200000) != 0)
  {
    v62 = *(a2 + 87);
    if (v62 >= 3)
    {
      __assert_rtn("set_loi_location_source_accuracy", "CoreNavigationCLPPrivateDataShared.pb.h", 16730, "::CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_LoiLocationSourceAccuracy_IsValid(value)");
    }

    *(this + 92) |= 0x200000u;
    *(this + 87) = v62;
    v36 = *(a2 + 92);
  }

  if ((v36 & 0x400000) != 0)
  {
    v63 = *(a2 + 88);
    if (v63 >= 5)
    {
      __assert_rtn("set_batched_location_fix_type", "CoreNavigationCLPPrivateDataShared.pb.h", 16753, "::CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocationFixType_IsValid(value)");
    }

    *(this + 92) |= 0x400000u;
    *(this + 88) = v63;
    v36 = *(a2 + 92);
  }

  if ((v36 & 0x800000) != 0)
  {
    v64 = *(a2 + 279);
    *(this + 92) |= 0x800000u;
    *(this + 279) = v64;
    v36 = *(a2 + 92);
  }

LABEL_156:
  if ((v36 & 0x1000000) != 0)
  {
    v65 = *(a2 + 356);
    *(this + 92) |= 0x1000000u;
    *(this + 356) = v65;
  }
}

void sub_1D0CC4EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 364);
  if (v2)
  {
    *(this + 56) = 0;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  v3 = (this + 364);
  if ((v2 & 0xFF00) != 0)
  {
    *(this + 112) = 0;
    *(this + 60) = 0;
    if ((v2 & 0x400) != 0)
    {
      v4 = *(this + 64);
      if (v4)
      {
        if (*(v4 + 28))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        *(v4 + 28) = 0;
        v2 = *v3;
      }
    }

    *(this + 113) = 0;
    *(this + 72) = 0;
    *(this + 80) = 0;
    if ((v2 & 0x8000) != 0)
    {
      v5 = *(this + 88);
      if (v5)
      {
        if (*(v5 + 28))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 28) = 0;
        v2 = *v3;
      }
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(this + 96) = 0xFFFFFFFFLL;
    if ((v2 & 0x40000) != 0)
    {
      v6 = *(this + 104);
      if (v6)
      {
        if (*(v6 + 28))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
        }

        *(v6 + 28) = 0;
        v2 = *v3;
      }
    }

    *(this + 114) = 0;
    *(this + 124) = 0;
    *(this + 116) = 0;
    *(this + 132) = 0;
    if ((v2 & 0x800000) != 0)
    {
      v7 = *(this + 136);
      if (v7)
      {
        if (*(v7 + 32))
        {
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          *(v7 + 24) = 0;
        }

        *(v7 + 32) = 0;
        v2 = *v3;
      }
    }
  }

  if (HIBYTE(v2))
  {
    *(this + 115) = 0;
    *(this + 144) = 0u;
    *(this + 160) = 0u;
    *(this + 176) = 0u;
    *(this + 192) = 0;
  }

  v8 = *(this + 368);
  if (v8)
  {
    *(this + 200) = 0;
    *(this + 276) = 0;
    if ((v8 & 4) != 0)
    {
      v9 = *(this + 208);
      if (v9)
      {
        if (*(v9 + 28))
        {
          *(v9 + 8) = 0;
          *(v9 + 16) = 0;
        }

        *(v9 + 28) = 0;
        v8 = *(this + 368);
      }
    }

    *(this + 272) = 0;
    *(this + 216) = 0u;
    *(this + 232) = 0u;
  }

  if ((v8 & 0xFF00) != 0)
  {
    *(this + 277) = 0;
    *(this + 280) = 0;
    *(this + 312) = 0;
    *(this + 256) = 0;
    *(this + 264) = 0;
    *(this + 248) = 0;
    if ((v8 & 0x8000) != 0)
    {
      v10 = *(this + 320);
      if (v10)
      {
        if (*(v10 + 40))
        {
          *(v10 + 8) = 0;
          *(v10 + 16) = 0;
          *(v10 + 24) = 0;
          *(v10 + 32) = -1;
        }

        *(v10 + 40) = 0;
        v8 = *(this + 368);
      }
    }
  }

  if ((v8 & 0xFF0000) != 0)
  {
    *(this + 316) = 0;
    *(this + 278) = 0;
    *(this + 336) = 0;
    *(this + 344) = 0;
    *(this + 328) = 0;
    *(this + 352) = 0;
  }

  if (HIBYTE(v8))
  {
    *(this + 356) = 0;
  }

  if (*(this + 296) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = *(*(v1 + 288) + 8 * v11);
      this = (*(*v12 + 32))(v12);
      ++v11;
    }

    while (v11 < *(v1 + 296));
  }

  *(v1 + 296) = 0;
  *v3 = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 364);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 364);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_64;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 364);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 364);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 364);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 364);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 364);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 52), a3);
  v6 = *(v5 + 364);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 56), a3);
  v6 = *(v5 + 364);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 112), a2, a4);
  v6 = *(v5 + 364);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 60), a2, a4);
  v6 = *(v5 + 364);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_75;
  }

LABEL_72:
  v10 = *(v5 + 64);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v10, a2, a4);
  v6 = *(v5 + 364);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 72), a3);
  v6 = *(v5 + 364);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_77;
  }

LABEL_76:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xD, *(v5 + 80), a2, a4);
  v6 = *(v5 + 364);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xE, *(v5 + 84), a2, a4);
  v6 = *(v5 + 364);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xF, *(v5 + 113), a2, a4);
  v6 = *(v5 + 364);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_82;
  }

LABEL_79:
  v11 = *(v5 + 88);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_ + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v11, a2, a4);
  v6 = *(v5 + 364);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_83;
  }

LABEL_82:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x11, *(v5 + 96), a2, a4);
  v6 = *(v5 + 364);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_84;
  }

LABEL_83:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x12, a2, *(v5 + 100), a3);
  v6 = *(v5 + 364);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_87;
  }

LABEL_84:
  v12 = *(v5 + 104);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_ + 104);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v12, a2, a4);
  v6 = *(v5 + 364);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_88;
  }

LABEL_87:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x14, a2, *(v5 + 120), a3);
  v6 = *(v5 + 364);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_89;
  }

LABEL_88:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x15, a2, *(v5 + 128), a3);
  v6 = *(v5 + 364);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_90;
  }

LABEL_89:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x16, *(v5 + 116), a2, a4);
  v6 = *(v5 + 364);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_91;
  }

LABEL_90:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x17, *(v5 + 114), a2, a4);
  v6 = *(v5 + 364);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_94;
  }

LABEL_91:
  v13 = *(v5 + 136);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_ + 136);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, v13, a2, a4);
  v6 = *(v5 + 364);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_95;
  }

LABEL_94:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x19, a2, *(v5 + 144), a3);
  v6 = *(v5 + 364);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_96;
  }

LABEL_95:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1A, a2, *(v5 + 152), a3);
  v6 = *(v5 + 364);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_97;
  }

LABEL_96:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1B, a2, *(v5 + 160), a3);
  v6 = *(v5 + 364);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_98;
  }

LABEL_97:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1C, a2, *(v5 + 168), a3);
  v6 = *(v5 + 364);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_99;
  }

LABEL_98:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1D, a2, *(v5 + 176), a3);
  v6 = *(v5 + 364);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_100:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1F, *(v5 + 115), a2, a4);
    if ((*(v5 + 364) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_101;
  }

LABEL_99:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1E, a2, *(v5 + 184), a3);
  v6 = *(v5 + 364);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_100;
  }

LABEL_32:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_101:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x20, a2, *(v5 + 192), a3);
LABEL_33:
  v7 = *(v5 + 368);
  if (v7)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x21, a2, *(v5 + 200), a3);
    v7 = *(v5 + 368);
    if ((v7 & 2) == 0)
    {
LABEL_35:
      if ((v7 & 4) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_104;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_35;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x22, *(v5 + 276), a2, a4);
  v7 = *(v5 + 368);
  if ((v7 & 4) == 0)
  {
LABEL_36:
    if ((v7 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_107;
  }

LABEL_104:
  v14 = *(v5 + 208);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_ + 208);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x23, v14, a2, a4);
  v7 = *(v5 + 368);
  if ((v7 & 8) == 0)
  {
LABEL_37:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_108;
  }

LABEL_107:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x24, a2, *(v5 + 216), a3);
  v7 = *(v5 + 368);
  if ((v7 & 0x10) == 0)
  {
LABEL_38:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_109;
  }

LABEL_108:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x25, *(v5 + 272), a2, a4);
  v7 = *(v5 + 368);
  if ((v7 & 0x20) == 0)
  {
LABEL_39:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_110;
  }

LABEL_109:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x26, a2, *(v5 + 224), a3);
  v7 = *(v5 + 368);
  if ((v7 & 0x40) == 0)
  {
LABEL_40:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_111;
  }

LABEL_110:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x27, a2, *(v5 + 232), a3);
  v7 = *(v5 + 368);
  if ((v7 & 0x80) == 0)
  {
LABEL_41:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_112;
  }

LABEL_111:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x28, a2, *(v5 + 240), a3);
  v7 = *(v5 + 368);
  if ((v7 & 0x100) == 0)
  {
LABEL_42:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_113;
  }

LABEL_112:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x29, a2, *(v5 + 248), a3);
  v7 = *(v5 + 368);
  if ((v7 & 0x200) == 0)
  {
LABEL_43:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_114;
  }

LABEL_113:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x2A, a2, *(v5 + 256), a3);
  v7 = *(v5 + 368);
  if ((v7 & 0x400) == 0)
  {
LABEL_44:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_115;
  }

LABEL_114:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x2B, *(v5 + 277), a2, a4);
  v7 = *(v5 + 368);
  if ((v7 & 0x800) == 0)
  {
LABEL_45:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_115:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x2C, a2, *(v5 + 264), a3);
  if ((*(v5 + 368) & 0x1000) != 0)
  {
LABEL_46:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x2D, a2, *(v5 + 280), a3);
  }

LABEL_47:
  if (*(v5 + 296) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x2E, *(*(v5 + 288) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 296));
  }

  v9 = *(v5 + 368);
  if ((v9 & 0x4000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x2F, *(v5 + 312), a2, a4);
    v9 = *(v5 + 368);
    if ((v9 & 0x8000) == 0)
    {
LABEL_52:
      if ((v9 & 0x10000) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_121;
    }
  }

  else if ((v9 & 0x8000) == 0)
  {
    goto LABEL_52;
  }

  v15 = *(v5 + 320);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_ + 320);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x30, v15, a2, a4);
  v9 = *(v5 + 368);
  if ((v9 & 0x10000) == 0)
  {
LABEL_53:
    if ((v9 & 0x20000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_122;
  }

LABEL_121:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x31, *(v5 + 316), a2, a4);
  v9 = *(v5 + 368);
  if ((v9 & 0x20000) == 0)
  {
LABEL_54:
    if ((v9 & 0x40000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_123;
  }

LABEL_122:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x32, a2, *(v5 + 328), a3);
  v9 = *(v5 + 368);
  if ((v9 & 0x40000) == 0)
  {
LABEL_55:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_124;
  }

LABEL_123:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x33, a2, *(v5 + 336), a3);
  v9 = *(v5 + 368);
  if ((v9 & 0x80000) == 0)
  {
LABEL_56:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_125;
  }

LABEL_124:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x34, *(v5 + 344), a2, a4);
  v9 = *(v5 + 368);
  if ((v9 & 0x100000) == 0)
  {
LABEL_57:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_126;
  }

LABEL_125:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x35, *(v5 + 278), a2, a4);
  v9 = *(v5 + 368);
  if ((v9 & 0x200000) == 0)
  {
LABEL_58:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_127;
  }

LABEL_126:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x36, *(v5 + 348), a2, a4);
  v9 = *(v5 + 368);
  if ((v9 & 0x400000) == 0)
  {
LABEL_59:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_60;
    }

LABEL_128:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x38, *(v5 + 279), a2, a4);
    if ((*(v5 + 368) & 0x1000000) == 0)
    {
      return this;
    }

    goto LABEL_129;
  }

LABEL_127:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x37, *(v5 + 352), a2, a4);
  v9 = *(v5 + 368);
  if ((v9 & 0x800000) != 0)
  {
    goto LABEL_128;
  }

LABEL_60:
  if ((v9 & 0x1000000) == 0)
  {
    return this;
  }

LABEL_129:
  v16 = *(v5 + 356);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x39, v16, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate *this)
{
  v1 = this;
  v2 = *(this + 91);
  if (v2)
  {
    v3 = ((v2 << 31) >> 31) & 9;
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
      v3 += 5;
    }

    if ((v2 & 0x40) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 0x80) != 0)
    {
      v4 = v3 + 5;
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
    v5 = v4 + ((v2 >> 7) & 2);
    if ((v2 & 0x200) != 0)
    {
      this = *(this + 15);
      if ((this & 0x80000000) != 0)
      {
        v6 = 11;
      }

      else if (this >= 0x80)
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
        v6 = this + 1;
        v2 = *(v1 + 91);
      }

      else
      {
        v6 = 2;
      }

      v5 += v6;
    }

    if ((v2 & 0x400) != 0)
    {
      v7 = *(v1 + 8);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_ + 64);
      }

      v8 = *(v7 + 28);
      v9 = (v8 << 31 >> 31) & 9;
      if ((v8 & 2) != 0)
      {
        v9 += 9;
      }

      if (*(v7 + 28))
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      *(v7 + 24) = v10;
      v5 += v10 + 2;
      v2 = *(v1 + 91);
    }

    if ((v2 & 0x800) != 0)
    {
      v5 += 9;
    }

    if ((v2 & 0x1000) != 0)
    {
      this = *(v1 + 20);
      if ((this & 0x80000000) != 0)
      {
        v11 = 11;
      }

      else if (this >= 0x80)
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
        v11 = this + 1;
        v2 = *(v1 + 91);
      }

      else
      {
        v11 = 2;
      }

      v5 += v11;
    }

    if ((v2 & 0x2000) != 0)
    {
      this = *(v1 + 21);
      if ((this & 0x80000000) != 0)
      {
        v12 = 11;
      }

      else if (this >= 0x80)
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
        v12 = this + 1;
        v2 = *(v1 + 91);
      }

      else
      {
        v12 = 2;
      }

      v5 += v12;
    }

    v4 = ((v2 >> 13) & 2) + v5;
    if ((v2 & 0x8000) != 0)
    {
      v13 = *(v1 + 11);
      if (!v13)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_ + 88);
      }

      v14 = *(v13 + 28);
      v15 = (v14 << 31 >> 31) & 9;
      if ((v14 & 2) != 0)
      {
        v15 += 9;
      }

      if (*(v13 + 28))
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      *(v13 + 24) = v16;
      v4 += v16 + 3;
      v2 = *(v1 + 91);
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      this = *(v1 + 24);
      if ((this & 0x80000000) != 0)
      {
        v17 = 12;
      }

      else if (this >= 0x80)
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
        v17 = this + 2;
        v2 = *(v1 + 91);
      }

      else
      {
        v17 = 3;
      }

      v4 += v17;
    }

    if ((v2 & 0x20000) != 0)
    {
      v18 = v4 + 6;
    }

    else
    {
      v18 = v4;
    }

    if ((v2 & 0x40000) != 0)
    {
      v19 = *(v1 + 13);
      if (!v19)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v19 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_ + 104);
      }

      v20 = *(v19 + 28);
      v21 = (v20 << 31 >> 31) & 9;
      if ((v20 & 2) != 0)
      {
        v21 += 9;
      }

      if (*(v19 + 28))
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      *(v19 + 24) = v22;
      v18 += v22 + 3;
      v2 = *(v1 + 91);
    }

    v23 = v18 + 10;
    if ((v2 & 0x80000) == 0)
    {
      v23 = v18;
    }

    if ((v2 & 0x100000) != 0)
    {
      v24 = v23 + 10;
    }

    else
    {
      v24 = v23;
    }

    if ((v2 & 0x200000) != 0)
    {
      this = *(v1 + 29);
      if ((this & 0x80000000) != 0)
      {
        v25 = 12;
      }

      else if (this >= 0x80)
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
        v25 = this + 2;
        v2 = *(v1 + 91);
      }

      else
      {
        v25 = 3;
      }

      v24 += v25;
    }

    if ((v2 & 0x400000) != 0)
    {
      v4 = v24 + 3;
    }

    else
    {
      v4 = v24;
    }

    if ((v2 & 0x800000) != 0)
    {
      v26 = *(v1 + 17);
      if (!v26)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
        v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_ + 136);
      }

      this = CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::ByteSize(v26);
      v4 += this + 3;
      v2 = *(v1 + 91);
    }
  }

  if (HIBYTE(v2))
  {
    v27 = v4 + 10;
    if ((v2 & 0x1000000) == 0)
    {
      v27 = v4;
    }

    if ((v2 & 0x2000000) != 0)
    {
      v27 += 10;
    }

    if ((v2 & 0x4000000) != 0)
    {
      v27 += 10;
    }

    if ((v2 & 0x8000000) != 0)
    {
      v27 += 10;
    }

    if ((v2 & 0x10000000) != 0)
    {
      v27 += 10;
    }

    if ((v2 & 0x20000000) != 0)
    {
      v27 += 10;
    }

    if ((v2 & 0x40000000) != 0)
    {
      v27 += 3;
    }

    if ((v2 & 0x80000000) == 0)
    {
      v4 = v27;
    }

    else
    {
      v4 = v27 + 10;
    }
  }

  v28 = *(v1 + 92);
  if (v28)
  {
    v29 = v4 + 10;
    if ((v28 & 1) == 0)
    {
      v29 = v4;
    }

    if ((v28 & 2) != 0)
    {
      v30 = v29 + 3;
    }

    else
    {
      v30 = v29;
    }

    if ((v28 & 4) != 0)
    {
      v31 = *(v1 + 26);
      if (!v31)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v31 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_ + 208);
      }

      v32 = *(v31 + 28);
      v33 = (v32 << 31 >> 31) & 9;
      if ((v32 & 2) != 0)
      {
        v33 += 9;
      }

      if (*(v31 + 28))
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      *(v31 + 24) = v34;
      v30 += v34 + 3;
      v28 = *(v1 + 92);
    }

    if ((v28 & 8) != 0)
    {
      v30 += 10;
    }

    if ((v28 & 0x10) != 0)
    {
      v35 = *(v1 + 68);
      if ((v35 & 0x80000000) != 0)
      {
        v36 = 12;
      }

      else if (v35 >= 0x80)
      {
        v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
        v28 = *(v1 + 92);
      }

      else
      {
        v36 = 3;
      }

      v30 += v36;
    }

    v37 = v30 + 10;
    if ((v28 & 0x20) == 0)
    {
      v37 = v30;
    }

    if ((v28 & 0x40) != 0)
    {
      v37 += 10;
    }

    if ((v28 & 0x80) != 0)
    {
      v4 = v37 + 10;
    }

    else
    {
      v4 = v37;
    }
  }

  if ((v28 & 0xFF00) != 0)
  {
    v38 = v4 + 10;
    if ((v28 & 0x100) == 0)
    {
      v38 = v4;
    }

    if ((v28 & 0x200) != 0)
    {
      v38 += 10;
    }

    if ((v28 & 0x400) != 0)
    {
      v38 += 3;
    }

    if ((v28 & 0x800) != 0)
    {
      v38 += 10;
    }

    if ((v28 & 0x1000) != 0)
    {
      v4 = v38 + 10;
    }

    else
    {
      v4 = v38;
    }

    if ((v28 & 0x4000) != 0)
    {
      v39 = *(v1 + 78);
      if ((v39 & 0x80000000) != 0)
      {
        v40 = 12;
      }

      else if (v39 >= 0x80)
      {
        v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
        v28 = *(v1 + 92);
      }

      else
      {
        v40 = 3;
      }

      v4 += v40;
    }

    if ((v28 & 0x8000) != 0)
    {
      v41 = *(v1 + 40);
      if (!v41)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
        v41 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_ + 320);
      }

      v42 = CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::ByteSize(v41);
      v43 = v42;
      if (v42 >= 0x80)
      {
        v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42);
      }

      else
      {
        v44 = 1;
      }

      v4 += v43 + v44 + 2;
      v28 = *(v1 + 92);
    }
  }

  if ((v28 & 0xFF0000) != 0)
  {
    if ((v28 & 0x10000) != 0)
    {
      v45 = *(v1 + 79);
      if ((v45 & 0x80000000) != 0)
      {
        v46 = 12;
      }

      else if (v45 >= 0x80)
      {
        v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
        v28 = *(v1 + 92);
      }

      else
      {
        v46 = 3;
      }

      v4 += v46;
    }

    v47 = v4 + 10;
    if ((v28 & 0x20000) == 0)
    {
      v47 = v4;
    }

    if ((v28 & 0x40000) != 0)
    {
      v48 = v47 + 10;
    }

    else
    {
      v48 = v47;
    }

    if ((v28 & 0x80000) != 0)
    {
      v49 = *(v1 + 86);
      if ((v49 & 0x80000000) != 0)
      {
        v50 = 12;
      }

      else if (v49 >= 0x80)
      {
        v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49) + 2;
        v28 = *(v1 + 92);
      }

      else
      {
        v50 = 3;
      }

      v48 += v50;
    }

    if ((v28 & 0x100000) != 0)
    {
      v48 += 3;
    }

    if ((v28 & 0x200000) != 0)
    {
      v51 = *(v1 + 87);
      if ((v51 & 0x80000000) != 0)
      {
        v52 = 12;
      }

      else if (v51 >= 0x80)
      {
        v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51) + 2;
        v28 = *(v1 + 92);
      }

      else
      {
        v52 = 3;
      }

      v48 += v52;
    }

    if ((v28 & 0x400000) != 0)
    {
      v53 = *(v1 + 88);
      if ((v53 & 0x80000000) != 0)
      {
        v54 = 12;
      }

      else if (v53 >= 0x80)
      {
        v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53) + 2;
        v28 = *(v1 + 92);
      }

      else
      {
        v54 = 3;
      }

      v48 += v54;
    }

    if ((v28 & 0x800000) != 0)
    {
      v4 = v48 + 3;
    }

    else
    {
      v4 = v48;
    }
  }

  if ((v28 & 0x1000000) != 0)
  {
    v55 = v4 + 3;
  }

  else
  {
    v55 = v4;
  }

  v56 = *(v1 + 74);
  v57 = (v55 + 2 * v56);
  if (v56 >= 1)
  {
    v58 = 0;
    do
    {
      v59 = CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::ByteSize(*(*(v1 + 36) + 8 * v58));
      v60 = v59;
      if (v59 >= 0x80)
      {
        v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59);
      }

      else
      {
        v61 = 1;
      }

      v57 = (v60 + v57 + v61);
      ++v58;
    }

    while (v58 < *(v1 + 74));
  }

  *(v1 + 90) = v57;
  return v57;
}

void CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate *this, const CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::Swap(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate *this, CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate *a2)
{
  if (a2 != this)
  {
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    v5 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v5;
    v6 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v6;
    v7 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v7;
    v8 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v8;
    LODWORD(v8) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v8;
    LODWORD(v8) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v8;
    LODWORD(v8) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v8;
    v9 = *(this + 112);
    *(this + 112) = *(a2 + 112);
    *(a2 + 112) = v9;
    v10 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v10;
    v11 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v11;
    v12 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v12;
    LODWORD(v11) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v11;
    LODWORD(v11) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v11;
    LOBYTE(v11) = *(this + 113);
    *(this + 113) = *(a2 + 113);
    *(a2 + 113) = v11;
    v13 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v13;
    LODWORD(v13) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v13;
    LODWORD(v12) = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v12;
    v14 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v14;
    v15 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v15;
    v16 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v16;
    LODWORD(v14) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v14;
    LOBYTE(v14) = *(this + 114);
    *(this + 114) = *(a2 + 114);
    *(a2 + 114) = v14;
    v17 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v17;
    v18 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v18;
    v19 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v19;
    v20 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v20;
    v21 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v21;
    v22 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v22;
    v23 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v23;
    LOBYTE(v17) = *(this + 115);
    *(this + 115) = *(a2 + 115);
    *(a2 + 115) = v17;
    v24 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v24;
    v25 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v25;
    LOBYTE(v17) = *(this + 276);
    *(this + 276) = *(a2 + 276);
    *(a2 + 276) = v17;
    v26 = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v26;
    v27 = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v27;
    LODWORD(v26) = *(this + 68);
    *(this + 68) = *(a2 + 68);
    *(a2 + 68) = v26;
    v28 = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v28;
    v29 = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v29;
    v30 = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v30;
    v31 = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v31;
    v32 = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v32;
    LOBYTE(v26) = *(this + 277);
    *(this + 277) = *(a2 + 277);
    *(a2 + 277) = v26;
    v33 = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v33;
    v34 = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v34;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v35 = *(this + 78);
    *(this + 78) = *(a2 + 78);
    *(a2 + 78) = v35;
    v36 = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v36;
    LODWORD(v36) = *(this + 79);
    *(this + 79) = *(a2 + 79);
    *(a2 + 79) = v36;
    v37 = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v37;
    result = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = result;
    LODWORD(v36) = *(this + 86);
    *(this + 86) = *(a2 + 86);
    *(a2 + 86) = v36;
    LOBYTE(v36) = *(this + 278);
    *(this + 278) = *(a2 + 278);
    *(a2 + 278) = v36;
    LODWORD(v36) = *(this + 87);
    *(this + 87) = *(a2 + 87);
    *(a2 + 87) = v36;
    LODWORD(v36) = *(this + 88);
    *(this + 88) = *(a2 + 88);
    *(a2 + 88) = v36;
    LOBYTE(v36) = *(this + 279);
    *(this + 279) = *(a2 + 279);
    *(a2 + 279) = v36;
    LOBYTE(v36) = *(this + 356);
    *(this + 356) = *(a2 + 356);
    *(a2 + 356) = v36;
    LODWORD(v36) = *(this + 91);
    *(this + 91) = *(a2 + 91);
    *(a2 + 91) = v36;
    LODWORD(v36) = *(this + 92);
    *(this + 92) = *(a2 + 92);
    *(a2 + 92) = v36;
    LODWORD(v36) = *(this + 90);
    *(this + 90) = *(a2 + 90);
    *(a2 + 90) = v36;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus *CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::TechnologyStatus(CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus *this, const CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus *a2)
{
  *this = &unk_1F4CD9BB8;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 12) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus *this, const CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus *a2)
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
      if (v5 >= 0xE)
      {
        __assert_rtn("set_location_type", "CoreNavigationCLPPrivateDataShared.pb.h", 16824, "::CoreNavigation::CLP::LogEntry::PrivateData::LocationType_IsValid(value)");
      }

      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      *(this + 5) |= 2u;
      *(this + 12) = v6;
    }
  }
}

void sub_1D0CC662C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
    *(this + 12) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus *this)
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

void CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus *this, const CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    LOBYTE(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    v3 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v4;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed *CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::VehicleSpeed(CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed *this, const CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed *a2)
{
  *this = &unk_1F4CD9C30;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed *this, const CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
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
    result = *(a2 + 4);
    *(this + 11) |= 8u;
    *(this + 4) = result;
  }

  return result;
}

void sub_1D0CC6AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 44);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v5 = *(v4 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 24), a3);
      if ((*(v4 + 44) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
  v5 = *(v4 + 44);
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
  v6 = *(v4 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, v6, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed *this)
{
  v1 = *(this + 44);
  if (*(this + 44))
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
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 10) = v1;
  return v1;
}

double CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed *this, const CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::Swap(CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed *this, CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed *a2)
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
    v6 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v6;
    v7 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v7;
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading *CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::VehicleHeading(CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading *this, const CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading *a2)
{
  *this = &unk_1F4CD9CA8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading *this, const CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
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
      result = *(a2 + 2);
      *(this + 7) |= 2u;
      *(this + 2) = result;
    }
  }

  return result;
}

void sub_1D0CC6F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::~VehicleHeading(CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading *this)
{
  *this = &unk_1F4CD9CA8;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::~VehicleHeading(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        v6 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v6 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v9 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v9) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v9;
        *(this + 7) |= 2u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v6 != 1)
      {
        break;
      }

      v9 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v9) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v9;
      *(this + 7) |= 1u;
      v7 = *(a2 + 1);
      if (v7 < *(a2 + 2) && *v7 == 17)
      {
        *(a2 + 1) = v7 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v6 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 28);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v6, a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading *this)
{
  v1 = *(this + 28);
  if (*(this + 28))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 6) = v1;
  return v1;
}

double CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading *this, const CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::Swap(CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading *this, CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v4 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v4;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::SharedCtor(void *this)
{
  v1 = MEMORY[0x1E69E5958];
  this[1] = 0;
  this[2] = v1;
  this[3] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable *CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::XtraFileAvailable(CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable *this, const CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable *a2)
{
  *this = &unk_1F4CD9D20;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x1E69E5958];
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable *this, const CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable *a2)
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
      v5 = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 2);
      *(this + 7) |= 2u;
      v7 = *(this + 2);
      if (v7 == MEMORY[0x1E69E5958])
      {
        operator new();
      }

      std::string::operator=(v7, v6);
    }
  }
}

void sub_1D0CC7580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::Clear(uint64_t this)
{
  v1 = *(this + 28);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
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
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v4 = *(v3 + 28);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable *this)
{
  v2 = *(this + 28);
  if (*(this + 28))
  {
    v3 = (v2 << 31 >> 31) & 9;
    if ((v2 & 2) != 0)
    {
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

  *(this + 6) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable *this, const CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::Swap(CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable *this, CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable *a2)
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

double CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed *CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::LocationDerivedSpeed(CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed *this, const CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed *a2)
{
  *this = &unk_1F4CD9D98;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed *this, const CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed *a2)
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

void sub_1D0CC7A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::Clear(uint64_t this)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed *this)
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

double CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed *this, const CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::Swap(CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed *this, CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed *a2)
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

double CoreNavigation::CLP::LogEntry::PrivateData::Location::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::Location *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 29) = 0;
  *(this + 3) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::Location *CoreNavigation::CLP::LogEntry::PrivateData::Location::Location(CoreNavigation::CLP::LogEntry::PrivateData::Location *this, const CoreNavigation::CLP::LogEntry::PrivateData::Location *a2)
{
  *this = &unk_1F4CD9E10;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 29) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::Location::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Location::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Location *this, const CoreNavigation::CLP::LogEntry::PrivateData::Location *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
  }

  v5 = *(a2 + 25);
  if (v5)
  {
    if (v5)
    {
      *(this + 25) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 8);
      }

      result = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
      v5 = *(a2 + 25);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 8);
    *(this + 25) |= 2u;
    *(this + 8) = v8;
    v5 = *(a2 + 25);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

LABEL_19:
    *(this + 25) |= 4u;
    v9 = *(this + 2);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 2);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::MergeFrom(v9, v10);
    v5 = *(a2 + 25);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }

LABEL_24:
    *(this + 25) |= 8u;
    v11 = *(this + 3);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 3);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::MergeFrom(v11, v12);
    v5 = *(a2 + 25);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_34;
    }

LABEL_29:
    *(this + 25) |= 0x10u;
    v13 = *(this + 5);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 5);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 40);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::MergeFrom(v13, v14);
    v5 = *(a2 + 25);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_35;
    }

LABEL_34:
    v15 = *(a2 + 36);
    *(this + 25) |= 0x20u;
    *(this + 36) = v15;
    v5 = *(a2 + 25);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

LABEL_35:
    result = *(a2 + 6);
    *(this + 25) |= 0x40u;
    *(this + 6) = result;
    v5 = *(a2 + 25);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_38;
    }

LABEL_36:
    v16 = *(a2 + 18);
    if (v16 >= 3)
    {
      __assert_rtn("set_signal_quality", "CoreNavigationCLPPrivateDataShared.pb.h", 17413, "::CoreNavigation::CLP::LogEntry::PrivateData::Location_SignalQualityType_IsValid(value)");
    }

    *(this + 25) |= 0x80u;
    *(this + 18) = v16;
    v5 = *(a2 + 25);
  }

LABEL_38:
  if ((v5 & 0xFF00) == 0)
  {
    return result;
  }

  if ((v5 & 0x100) != 0)
  {
    *(this + 25) |= 0x100u;
    v17 = *(this + 7);
    if (!v17)
    {
      operator new();
    }

    v18 = *(a2 + 7);
    if (!v18)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 56);
    }

    result = CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::MergeFrom(v17, v18);
    v5 = *(a2 + 25);
    if ((v5 & 0x200) == 0)
    {
LABEL_41:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_55;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_41;
  }

  *(this + 25) |= 0x200u;
  v19 = *(this + 8);
  if (!v19)
  {
    operator new();
  }

  v20 = *(a2 + 8);
  if (!v20)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 64);
  }

  result = CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::MergeFrom(v19, v20);
  v5 = *(a2 + 25);
  if ((v5 & 0x400) == 0)
  {
LABEL_42:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_60;
  }

LABEL_55:
  *(this + 25) |= 0x400u;
  v21 = *(this + 10);
  if (!v21)
  {
    operator new();
  }

  v22 = *(a2 + 10);
  if (!v22)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v22 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 80);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::MergeFrom(v21, v22);
  v5 = *(a2 + 25);
  if ((v5 & 0x800) == 0)
  {
LABEL_43:
    if ((v5 & 0x1000) == 0)
    {
      return result;
    }

    goto LABEL_62;
  }

LABEL_60:
  v23 = *(a2 + 19);
  if (v23 >= 3)
  {
    __assert_rtn("set_motion_detected", "CoreNavigationCLPPrivateDataShared.pb.h", 17562, "::CoreNavigation::CLP::LogEntry::PrivateData::Location_MotionDetectedType_IsValid(value)");
  }

  *(this + 25) |= 0x800u;
  *(this + 19) = v23;
  if ((*(a2 + 25) & 0x1000) != 0)
  {
LABEL_62:
    *(this + 25) |= 0x1000u;
    v24 = *(this + 11);
    if (!v24)
    {
      operator new();
    }

    v25 = *(a2 + 11);
    if (!v25)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 88);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::MergeFrom(v24, v25);
  }

  return result;
}

void sub_1D0CC8494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Location::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 100);
  if (v2)
  {
    if (v2)
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
        v2 = *(this + 100);
      }
    }

    *(this + 32) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::Clear(this);
        v2 = *(v1 + 100);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::Clear(this);
        v2 = *(v1 + 100);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v4 = *(v1 + 40);
      if (v4)
      {
        if (*(v4 + 20))
        {
          *(v4 + 8) = 0;
          *(v4 + 12) = 0;
        }

        *(v4 + 20) = 0;
        v2 = *(v1 + 100);
      }
    }

    *(v1 + 36) = 0;
    *(v1 + 48) = 0;
    *(v1 + 72) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v5 = *(v1 + 56);
      if (v5)
      {
        if (*(v5 + 44))
        {
          *(v5 + 24) = 0u;
          *(v5 + 8) = 0u;
        }

        *(v5 + 44) = 0;
        v2 = *(v1 + 100);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      v6 = *(v1 + 64);
      if (v6)
      {
        if (*(v6 + 28))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
        }

        *(v6 + 28) = 0;
        v2 = *(v1 + 100);
      }
    }

    if ((v2 & 0x400) != 0)
    {
      this = *(v1 + 80);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::Clear(this);
        v2 = *(v1 + 100);
      }
    }

    *(v1 + 76) = 0;
    if ((v2 & 0x1000) != 0)
    {
      v7 = *(v1 + 88);
      if (v7)
      {
        if (*(v7 + 36))
        {
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          *(v7 + 24) = 0;
        }

        *(v7 + 36) = 0;
      }
    }
  }

  *(v1 + 100) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Location::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 100);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 100);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 32), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_19:
  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_22:
  v9 = *(v5 + 24);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_25:
  v10 = *(v5 + 40);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 48), a3);
  v6 = *(v5 + 100);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(v5 + 72), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_31:
  v11 = *(v5 + 56);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v11, a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_34:
  v12 = *(v5 + 64);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v12, a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

LABEL_40:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 76), a2, a4);
    if ((*(v5 + 100) & 0x1000) == 0)
    {
      return this;
    }

    goto LABEL_41;
  }

LABEL_37:
  v13 = *(v5 + 80);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v13, a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_40;
  }

LABEL_13:
  if ((v6 & 0x1000) == 0)
  {
    return this;
  }

LABEL_41:
  v14 = *(v5 + 88);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 88);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xD, v14, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Location::ByteSize(uint64_t this)
{
  v1 = this;
  v2 = *(this + 100);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_53;
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

  v5 = *(this + 8);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 8);
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
  v2 = *(v1 + 100);
  if ((v2 & 2) != 0)
  {
LABEL_15:
    this = *(v1 + 32);
    if ((this & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v8 = this + 1;
      v2 = *(v1 + 100);
    }

    else
    {
      v8 = 2;
    }

    v3 += v8;
  }

LABEL_21:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_23;
    }

LABEL_31:
    v12 = *(v1 + 24);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
    }

    v13 = CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::ByteSize(v12);
    v14 = v13;
    if (v13 >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    }

    else
    {
      this = 1;
    }

    v3 += v14 + this + 1;
    v2 = *(v1 + 100);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_37;
  }

  v9 = *(v1 + 16);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

  v10 = CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::ByteSize(v9);
  v11 = v10;
  if (v10 >= 0x80)
  {
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
  }

  else
  {
    this = 1;
  }

  v3 += v11 + this + 1;
  v2 = *(v1 + 100);
  if ((v2 & 8) != 0)
  {
    goto LABEL_31;
  }

LABEL_23:
  if ((v2 & 0x10) != 0)
  {
LABEL_37:
    v15 = *(v1 + 40);
    if (!v15)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 40);
    }

    v16 = CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::ByteSize(v15);
    v17 = v16;
    if (v16 >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
    }

    else
    {
      this = 1;
    }

    v3 += v17 + this + 1;
    v2 = *(v1 + 100);
  }

LABEL_43:
  v18 = ((v2 >> 4) & 2) + v3;
  if ((v2 & 0x40) != 0)
  {
    v4 = v18 + 9;
  }

  else
  {
    v4 = v18;
  }

  if ((v2 & 0x80) != 0)
  {
    this = *(v1 + 72);
    if ((this & 0x80000000) != 0)
    {
      v19 = 11;
    }

    else if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v19 = this + 1;
      v2 = *(v1 + 100);
    }

    else
    {
      v19 = 2;
    }

    v4 = (v19 + v4);
  }

LABEL_53:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_92;
  }

  if ((v2 & 0x100) != 0)
  {
    v20 = *(v1 + 56);
    if (!v20)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 56);
    }

    this = CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::ByteSize(v20);
    v4 = (v4 + this + 2);
    v2 = *(v1 + 100);
    if ((v2 & 0x200) == 0)
    {
LABEL_56:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_71;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_56;
  }

  v21 = *(v1 + 64);
  if (!v21)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 64);
  }

  v22 = *(v21 + 28);
  v23 = (v22 << 31 >> 31) & 9;
  if ((v22 & 2) != 0)
  {
    v23 += 9;
  }

  if (*(v21 + 28))
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  *(v21 + 24) = v24;
  v4 = (v4 + v24 + 2);
  v2 = *(v1 + 100);
  if ((v2 & 0x400) == 0)
  {
LABEL_57:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_58;
    }

LABEL_77:
    this = *(v1 + 76);
    if ((this & 0x80000000) != 0)
    {
      v28 = 11;
    }

    else if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v28 = this + 1;
      v2 = *(v1 + 100);
    }

    else
    {
      v28 = 2;
    }

    v4 = (v28 + v4);
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_83;
  }

LABEL_71:
  v25 = *(v1 + 80);
  if (!v25)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 80);
  }

  v26 = CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::ByteSize(v25);
  v27 = v26;
  if (v26 >= 0x80)
  {
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
  }

  else
  {
    this = 1;
  }

  v4 = (v4 + v27 + this + 1);
  v2 = *(v1 + 100);
  if ((v2 & 0x800) != 0)
  {
    goto LABEL_77;
  }

LABEL_58:
  if ((v2 & 0x1000) == 0)
  {
    goto LABEL_92;
  }

LABEL_83:
  v29 = *(v1 + 88);
  if (!v29)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v29 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 88);
  }

  v30 = *(v29 + 36);
  if (*(v29 + 36))
  {
    v31 = (v30 << 31 >> 31) & 9;
    if ((v30 & 2) != 0)
    {
      v31 += 9;
    }

    if ((v30 & 4) != 0)
    {
      v30 = v31 + 9;
    }

    else
    {
      v30 = v31;
    }
  }

  *(v29 + 32) = v30;
  v4 = (v4 + v30 + 2);
LABEL_92:
  *(v1 + 96) = v4;
  return v4;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Location::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Location *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::Location::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::Location::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::Location *this, const CoreNavigation::CLP::LogEntry::PrivateData::Location *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::Location::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Location::Swap(CoreNavigation::CLP::LogEntry::PrivateData::Location *this, CoreNavigation::CLP::LogEntry::PrivateData::Location *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    LOBYTE(v5) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v5;
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    LODWORD(v5) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v5;
    v7 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v8;
    v9 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v9;
    LODWORD(v9) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v9;
    v10 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v10;
    LODWORD(v10) = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v10;
    LODWORD(v10) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v10;
  }

  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations *CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations::BatchedLocations(CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations *this, const CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations *a2)
{
  *this = &unk_1F4CD9E88;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 7) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations::MergeFrom(this, a2);
  return this;
}

void sub_1D0CC8F0C(_Unwind_Exception *a1)
{
  v4 = v3;
  sub_1D0B8CD0C(v4);
  sub_1D0B8CD0C(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations *this, const CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
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
      CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 4);
    }

    while (v7 < v6);
  }

  v12 = *(this + 10);
  v13 = *(a2 + 10);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
  LODWORD(v14) = *(a2 + 10);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
      }

      v16 = *(*(a2 + 4) + 8 * v15);
      v17 = *(this + 11);
      v18 = *(this + 10);
      if (v18 >= v17)
      {
        if (v17 == *(this + 12))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
          v17 = *(this + 11);
        }

        *(this + 11) = v17 + 1;
        sub_1D0CFE990();
      }

      v19 = *(this + 4);
      *(this + 10) = v18 + 1;
      CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::MergeFrom(*(v19 + 8 * v18), v16);
      ++v15;
      v14 = *(a2 + 10);
    }

    while (v15 < v14);
  }
}

void sub_1D0CC9218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations::~BatchedLocations(CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations *this)
{
  *this = &unk_1F4CD9E88;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  sub_1D0B8CD0C(this + 4);
  sub_1D0B8CD0C(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations::~BatchedLocations(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations::Clear(uint64_t this)
{
  v1 = this;
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
  if (*(v1 + 40) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(v1 + 32) + 8 * v4);
      this = (*(*v5 + 32))(v5);
      ++v4;
    }

    while (v4 < *(v1 + 40));
  }

  *(v1 + 40) = 0;
  *(v1 + 60) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        v6 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v6 != 2)
        {
          goto LABEL_30;
        }

        while (1)
        {
          v19 = *(this + 11);
          v20 = *(this + 10);
          if (v20 >= v19)
          {
            if (v19 == *(this + 12))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
              v19 = *(this + 11);
            }

            *(this + 11) = v19 + 1;
            sub_1D0CFE990();
          }

          v21 = *(this + 4);
          *(this + 10) = v20 + 1;
          v22 = *(v21 + 8 * v20);
          v31 = 0;
          v23 = *(a2 + 1);
          if (v23 >= *(a2 + 2) || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31))
            {
              return 0;
            }
          }

          else
          {
            v31 = *v23;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v26 = *(a2 + 14);
          v15 = __OFSUB__(v26, 1);
          v27 = v26 - 1;
          if (v27 < 0 == v15)
          {
            *(a2 + 14) = v27;
          }

          v17 = *(a2 + 1);
          v28 = *(a2 + 2);
          if (v17 >= v28 || *v17 != 18)
          {
            break;
          }

LABEL_49:
          *(a2 + 1) = v17 + 1;
        }

        if (v17 == v28 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v6 != 2)
      {
        break;
      }

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
        v30 = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
          {
            return 0;
          }
        }

        else
        {
          v30 = *v11;
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
        if (!CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::MergePartialFromCodedStream(v10, a2) || *(a2 + 36) != 1)
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

        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2))
        {
          break;
        }

        v18 = *v17;
        if (v18 != 10)
        {
          if (v18 != 18)
          {
            goto LABEL_1;
          }

          goto LABEL_49;
        }

        *(a2 + 1) = v17 + 1;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations *this)
{
  v2 = *(this + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::ByteSize(*(*(this + 1) + 8 * v3));
      v5 = v4;
      if (v4 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
      }

      else
      {
        v6 = 1;
      }

      v2 += v5 + v6;
      ++v3;
    }

    while (v3 < *(this + 4));
  }

  v7 = *(this + 10);
  v8 = (v7 + v2);
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::ByteSize(*(*(this + 4) + 8 * v9));
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

    while (v9 < *(this + 10));
  }

  *(this + 14) = v8;
  return v8;
}

void CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations *this, const CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations *CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations::Swap(CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations *this, CoreNavigation::CLP::LogEntry::PrivateData::BatchedLocations *a2)
{
  if (a2 != this)
  {
    v3 = this;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 15);
    *(v3 + 15) = *(a2 + 15);
    *(a2 + 15) = v4;
    v5 = *(v3 + 14);
    *(v3 + 14) = *(a2 + 14);
    *(a2 + 14) = v5;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::RhythmicGnssStatusUpdate::SharedCtor(uint64_t this)
{
  *(this + 24) = 0;
  *(this + 8) = 0x100000000;
  *(this + 16) = 0;
  *(this + 20) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::RhythmicGnssStatusUpdate *CoreNavigation::CLP::LogEntry::PrivateData::RhythmicGnssStatusUpdate::RhythmicGnssStatusUpdate(CoreNavigation::CLP::LogEntry::PrivateData::RhythmicGnssStatusUpdate *this, const CoreNavigation::CLP::LogEntry::PrivateData::RhythmicGnssStatusUpdate *a2)
{
  *this = &unk_1F4CD9F00;
  *(this + 1) = 0x100000000;
  *(this + 8) = 0;
  *(this + 20) = 0;
  *(this + 7) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::RhythmicGnssStatusUpdate::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::RhythmicGnssStatusUpdate::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::RhythmicGnssStatusUpdate *this, const CoreNavigation::CLP::LogEntry::PrivateData::RhythmicGnssStatusUpdate *a2)
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
    if (*(a2 + 28))
    {
      v5 = *(a2 + 2);
      if (v5 >= 3)
      {
        __assert_rtn("set_gnss_mode_of_operation", "CoreNavigationCLPPrivateDataShared.pb.h", 17685, "::CoreNavigation::CLP::LogEntry::PrivateData::GnssModeOfOperation_IsValid(value)");
      }

      *(this + 7) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      *(this + 7) |= 2u;
      *(this + 16) = v6;
      v4 = *(a2 + 7);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 3);
      if (v7 >= 5)
      {
        __assert_rtn("set_rhythmic_mode", "CoreNavigationCLPPrivateDataShared.pb.h", 17730, "::CoreNavigation::CLP::LogEntry::PrivateData::RhythmicGnssWakeMode_IsValid(value)");
      }

      *(this + 7) |= 4u;
      *(this + 3) = v7;
      v4 = *(a2 + 7);
    }

    if ((v4 & 8) != 0)
    {
      v8 = *(a2 + 5);
      *(this + 7) |= 8u;
      *(this + 5) = v8;
      v4 = *(a2 + 7);
    }

    if ((v4 & 0x10) != 0)
    {
      v9 = *(a2 + 17);
      *(this + 7) |= 0x10u;
      *(this + 17) = v9;
    }
  }
}

void sub_1D0CC9CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::RhythmicGnssStatusUpdate::~RhythmicGnssStatusUpdate(CoreNavigation::CLP::LogEntry::PrivateData::RhythmicGnssStatusUpdate *this)
{
  *this = &unk_1F4CD9F00;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::RhythmicGnssStatusUpdate::~RhythmicGnssStatusUpdate(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::RhythmicGnssStatusUpdate::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0x100000000;
    *(this + 16) = 0;
    *(this + 20) = 0;
  }

  *(this + 28) = 0;
  return this;
}