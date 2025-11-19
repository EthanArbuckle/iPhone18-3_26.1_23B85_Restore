void sub_214E72C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::BoxedValue::SerializeWithCachedSizes(topotext::BoxedValue *this, google::protobuf::io::CodedOutputStream *a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 12);
  if (v6 == 1)
  {
    google::protobuf::internal::WireFormatLite::WriteSInt64(1, *(this + 5), a2, a4);
    v6 = *(this + 12);
  }

  if (v6 == 2)
  {
    google::protobuf::internal::WireFormatLite::WriteInt64(2, *(this + 5), a2, a4);
    v6 = *(this + 12);
  }

  if (v6 == 3)
  {
    google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(this + 5), a3);
    v6 = *(this + 12);
  }

  if (v6 == 4)
  {
    google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(4, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 5)
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(5, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 6)
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(6, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 7)
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(7, *(this + 5), a2);
  }

  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t topotext::BoxedValue::ByteSize(topotext::BoxedValue *this)
{
  v2 = 0;
  v3 = *(this + 12);
  if (v3 <= 3)
  {
    if (v3 == 1)
    {
      v11 = (2 * *(this + 5)) ^ (*(this + 5) >> 63);
    }

    else
    {
      if (v3 != 2)
      {
        if (v3 == 3)
        {
          v2 = 9;
        }

        else
        {
          v2 = 0;
        }

        goto LABEL_22;
      }

      v11 = *(this + 5);
    }

    v2 = google::protobuf::io::CodedOutputStream::VarintSize64(v11) + 1;
    goto LABEL_22;
  }

  if (v3 <= 6 || v3 == 7)
  {
    v4 = *(this + 5);
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
      v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v9 = v10 + 1;
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

    v2 = v9 + v5;
  }

LABEL_22:
  v12 = *(this + 31);
  if (v12 < 0)
  {
    v12 = *(this + 2);
  }

  result = (v2 + v12);
  *(this + 9) = result;
  return result;
}

std::string *topotext::BoxedValue::CheckTypeAndMergeFrom(topotext::BoxedValue *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return topotext::BoxedValue::MergeFrom(this, lpsrc);
}

std::string *topotext::WallClockMergeableValue::MergeFrom(topotext::WallClockMergeableValue *this, const topotext::WallClockMergeableValue *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/topotext.pb.cc", 8069);
    v4 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 5);
      *(this + 8) |= 1u;
      *(this + 5) = v6;
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      *(this + 8) |= 2u;
      v7 = *(this + 6);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 6);
      if (!v8)
      {
        topotext::protobuf_AddDesc_topotext_2eproto(this);
        v8 = *(topotext::WallClockMergeableValue::default_instance_ + 48);
      }

      topotext::BoxedValue::MergeFrom(v7, v8);
    }
  }

  v11 = *(a2 + 1);
  v10 = a2 + 8;
  v9 = v11;
  v12 = v10[23];
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = v10[23];
  }

  else
  {
    v14 = *(v10 + 1);
  }

  return std::string::append((this + 8), v13, v14);
}

uint64_t topotext::WallClockMergeableValue::SerializeWithCachedSizes(topotext::WallClockMergeableValue *this, google::protobuf::io::CodedOutputStream *a2, google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 8);
  if (v5)
  {
    this = google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 5), a3);
    v5 = *(v4 + 8);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 6);
    if (!v6)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(this);
      v6 = *(topotext::WallClockMergeableValue::default_instance_ + 48);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(2, v6, a2);
  }

  v7 = *(v4 + 31);
  if (v7 < 0)
  {
    v8 = *(v4 + 1);
    v7 = *(v4 + 2);
  }

  else
  {
    v8 = v4 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t topotext::WallClockMergeableValue::ByteSize(topotext::WallClockMergeableValue *this)
{
  v2 = *(this + 32);
  if (*(this + 32))
  {
    v3 = (v2 << 31 >> 31) & 9;
    if ((v2 & 2) != 0)
    {
      v4 = *(this + 6);
      if (!v4)
      {
        topotext::protobuf_AddDesc_topotext_2eproto(0);
        v4 = *(topotext::WallClockMergeableValue::default_instance_ + 48);
      }

      v5 = topotext::BoxedValue::ByteSize(v4);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
      }

      else
      {
        v7 = 1;
      }

      v3 += v6 + v7 + 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v8 = *(this + 31);
  if (v8 < 0)
  {
    v8 = *(this + 2);
  }

  result = (v3 + v8);
  *(this + 9) = result;
  return result;
}

std::string *topotext::WallClockMergeableValue::CheckTypeAndMergeFrom(topotext::WallClockMergeableValue *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return topotext::WallClockMergeableValue::MergeFrom(this, lpsrc);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t result)
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

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::Substring>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Substring>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        operator new();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = topotext::Substring::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_214E73508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::AttributeRun>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::AttributeRun>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<topotext::AttributeRun>::New();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = topotext::AttributeRun::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_214E73648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<topotext::Attachment>::New();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = topotext::Attachment::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_214E73788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock_ReplicaClock>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock_ReplicaClock>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        operator new();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = topotext::VectorTimestamp_Clock_ReplicaClock::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_214E73914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<topotext::VectorTimestamp_Clock>::New();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = topotext::VectorTimestamp_Clock::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_214E73A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(int *a1)
{
  if (a1[3] >= 1)
  {
    v2 = 0;
    do
    {
      google::protobuf::internal::StringTypeHandlerBase::Delete(*(*a1 + 8 * v2++));
    }

    while (v2 < a1[3]);
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x216063B60);
  }

  return result;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          v7 = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        google::protobuf::internal::StringTypeHandlerBase::New(v7);
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = std::string::operator=(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_214E73C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::Selection_Range>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Selection_Range>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        operator new();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = topotext::Selection_Range::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_214E73DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::PreviewImage>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::PreviewImage>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<topotext::PreviewImage>::New();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = topotext::PreviewImage::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_214E73EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromICFoldersFilterInclusionType(uint64_t a1)
{
  if (a1)
  {
    return @"Exclude";
  }

  else
  {
    return @"Include";
  }
}

void sub_214E74494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E74BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E74FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x216063B80](v10, 0x10B3C40CCCF3E6ELL);

  _Unwind_Resume(a1);
}

void sub_214E750F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x216063B80](v11, 0x1093C4020A6E6BFLL);

  _Unwind_Resume(a1);
}

void sub_214E752D4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

CGColorRef CGColorCreateRGBA(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[4] = *MEMORY[0x277D85DE8];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  v9 = CGColorCreate(DeviceRGB, components);
  CGColorSpaceRelease(DeviceRGB);
  CFAutorelease(v9);
  return v9;
}

void *std::vector<ICDrawingOutputPoint>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ICDrawingOutputPoint>>(result, a2);
    }

    std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_214E76270(_Unwind_Exception *a1)
{
  MEMORY[0x216063B80](v2, 0x1093C40AE78755BLL);

  _Unwind_Resume(a1);
}

void sub_214E7665C(_Unwind_Exception *a1)
{
  MEMORY[0x216063B80](v2, 0x1093C409A2F408ALL);

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ICDrawingOutputPoint>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_214E76998(_Unwind_Exception *a1)
{
  MEMORY[0x216063B80](v3, 0x10B3C400074EEDFLL);

  _Unwind_Resume(a1);
}

id ICNewLegacyContext()
{
  v0 = [objc_alloc(MEMORY[0x277D35930]) initWithPrivateQueue];

  return v0;
}

void sub_214E776F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E7B4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_DocObject>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_214E7BB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_CustomObject_MapEntry>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_214E7BBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_214E7F500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E80A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__37(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E80EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x216063B80](v10, 0x1093C405ACC521ELL);

  _Unwind_Resume(a1);
}

__CFString *NSStringFromFallbackAssetType(uint64_t a1)
{
  if (a1)
  {
    return @"PDF";
  }

  else
  {
    return @"image";
  }
}

void sub_214E847B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x216063B80](v10, 0x10B3C406C843DA2);

  _Unwind_Resume(a1);
}

void sub_214E88618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_214E88828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_214E8B31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E8CBC4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_214E8CD34(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_214E8D730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_214E8F62C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_214E90060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E90D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x216063B80](v7, 0x10B3C400074EEDFLL);
  peernetworking::PeerNetworkMessage::~PeerNetworkMessage(va);

  _Unwind_Resume(a1);
}

void sub_214E91098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x216063B80](v6, 0x1093C40A258B440);

  peernetworking::PeerNetworkMessage::~PeerNetworkMessage(va);
  _Unwind_Resume(a1);
}

void sub_214E91484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x216063B80](v6, 0x10B3C40CCCF3E6ELL);

  peernetworking::PeerNetworkMessage::~PeerNetworkMessage(va);
  _Unwind_Resume(a1);
}

void sub_214E91704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x216063B80](v9, 0x1093C4057897759);
  peernetworking::PeerNetworkMessage::~PeerNetworkMessage(&a9);
  _Unwind_Resume(a1);
}

void sub_214E91B5C()
{
  objc_end_catch();

  JUMPOUT(0x214E91B9CLL);
}

void sub_214E9288C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ICIsNotesURLScheme(void *a1)
{
  v1 = ICIsNotesURLScheme_token;
  v2 = a1;
  if (v1 != -1)
  {
    ICIsNotesURLScheme_cold_1();
  }

  v3 = ICIsNotesURLScheme_validSchemes;
  v4 = [v2 lowercaseString];

  v5 = [v3 containsObject:v4];
  return v5;
}

void __ICIsNotesURLScheme_block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{@"applenotes", @"mobilenotes", @"notes", 0}];
  v0 = [v2 copy];
  v1 = ICIsNotesURLScheme_validSchemes;
  ICIsNotesURLScheme_validSchemes = v0;
}

id NotesAppURLForNoteIdentifierOrTokenContentIdentifier(void *a1)
{
  v1 = a1;
  v2 = NotesAppURLForTokenContentIdentifier(v1);
  if (!v2)
  {
    v2 = NotesAppURLForNoteIdentifier(v1);
  }

  return v2;
}

void *NotesAppURLForTokenContentIdentifier(uint64_t a1)
{
  v1 = [MEMORY[0x277CBEBC0] URLWithString:a1];
  v2 = [v1 scheme];
  if (ICIsNotesURLScheme(v2))
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

id NotesAppURLForNoteIdentifier(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCACE0];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  [v3 setScheme:@"applenotes"];
  [v3 setHost:@"showNote"];
  v4 = [MEMORY[0x277CCAD18] queryItemWithName:@"identifier" value:v2];

  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v3 setQueryItems:v5];

  v6 = [v3 URL];

  return v6;
}

BOOL NotesAppIsValidURL(void *a1)
{
  v1 = NotesAppGUIDForNoteMentionedInURL(a1);
  v2 = v1 != 0;

  return v2;
}

id NotesAppGUIDForNoteMentionedInURL(void *a1)
{
  v1 = a1;
  v2 = [v1 scheme];
  if (!ICIsNotesURLScheme(v2))
  {
    goto LABEL_10;
  }

  v3 = [v1 host];
  v4 = [v3 ic_isCaseInsensitiveEqualToString:@"showNote"];

  if (v4)
  {
    v5 = [v1 query];
    v6 = [v5 componentsSeparatedByString:@"&"];
    v2 = [v6 lastObject];

    if (v2)
    {
      v7 = [v2 componentsSeparatedByString:@"="];
      if ([v7 count] == 2)
      {
        v8 = [v7 objectAtIndexedSubscript:0];
        v9 = [v8 ic_isCaseInsensitiveEqualToString:@"guid"];

        if (v9)
        {
          v10 = [v7 objectAtIndexedSubscript:1];
          if (isValidIdentifier(v10))
          {
LABEL_9:

LABEL_11:
            goto LABEL_13;
          }
        }
      }

      v10 = 0;
      goto LABEL_9;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

id NotesAppPredicateForNoteMentionedInURL(void *a1)
{
  v1 = NotesAppGUIDForNoteMentionedInURL(a1);
  if (v1)
  {
    v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K ==[c] %@", @"guid", v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id NotesAppURLForNote(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = [a1 guid];
  if ([v1 length])
  {
    v2 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v2 setScheme:@"applenotes"];
    [v2 setHost:@"showNote"];
    v3 = [MEMORY[0x277CCAD18] queryItemWithName:@"guid" value:v1];
    v7[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [v2 setQueryItems:v4];

    v5 = [v2 URL];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL isValidIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 length] >= 0x24)
  {
    if ([v1 length] == 36)
    {
      v2 = v1;
      v3 = 0;
    }

    else
    {
      v2 = [v1 substringToIndex:36];
      v3 = [v1 substringFromIndex:36];
    }

    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v2];

    if (v5)
    {
      if (!v3)
      {
LABEL_19:
        v4 = 1;
        goto LABEL_20;
      }

      if ([v3 characterAtIndex:0] == 95 && objc_msgSend(v3, "length") == 33)
      {
        if ([v3 length] >= 2)
        {
          v6 = 1;
          v7 = MEMORY[0x277D85DE0];
          do
          {
            v8 = [v3 characterAtIndex:v6];
            if (v8 > 0x7F)
            {
              v9 = __maskrune(v8, 0x10000uLL);
            }

            else
            {
              v9 = *(v7 + 4 * v8 + 60) & 0x10000;
            }

            v4 = v9 != 0;
            if (!v9)
            {
              break;
            }

            ++v6;
          }

          while (v6 < [v3 length]);
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    v4 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v4 = 0;
LABEL_21:

  return v4;
}

void sub_214E998D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__39(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E9AF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E9D7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E9D9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E9DE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__41(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E9E14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E9E430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E9E66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E9E974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E9ED20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E9F2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__42(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E9F54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E9F82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E9FB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_214EA055C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214EA08A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EA0C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EA1868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214EA3A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EA3C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EA40D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__45(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214EA4498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EA5E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EA60F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EA663C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EA6BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EA7048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EA7480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EA78FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__46(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214EA7CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EA808C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_214EA8228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x216063B80](v10, 0x10B3C40CCCF3E6ELL);

  _Unwind_Resume(a1);
}

void sub_214EA85F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x216063B80](v11, 0x10B3C407D90225ELL);

  _Unwind_Resume(a1);
}

void sub_214EA93E8(_Unwind_Exception *a1, void *a2, void *a3, ...)
{
  va_start(va, a3);

  CRDT::StringArray_ArrayAttachment::~StringArray_ArrayAttachment(va);
  _Unwind_Resume(a1);
}

void sub_214EA967C(_Unwind_Exception *a1)
{
  MEMORY[0x216063B80](v2, 0x10B3C406C843DA2);

  _Unwind_Resume(a1);
}

void sub_214EA99B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v15 = v10;
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_214EA9B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x216063B80](v10, 0x10B3C40E3C8ABF7);

  _Unwind_Resume(a1);
}

void sub_214EA9CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__47(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214EAA0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EABAA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214EAC204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214EACD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_214EAF388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EB04C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EB1F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EB28F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214EB2F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214EB5558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_214EB5B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_214EB62D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id location)
{
  objc_destroyWeak(&a38);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214EB6894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EB92A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_214EBB624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_214EBC298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EBC998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EBDB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214EBEF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214EC03DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&a70, 8);
  _Unwind_Resume(a1);
}

void sub_214EC17BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EC46F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49)
{
  objc_destroyWeak((v50 + 56));
  objc_destroyWeak((v49 + 56));
  objc_destroyWeak((v51 + 64));
  objc_destroyWeak(&a41);
  objc_destroyWeak(&a49);
  _Block_object_dispose((v52 - 200), 8);
  objc_destroyWeak((v52 - 152));
  _Unwind_Resume(a1);
}

void sub_214EC7954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id location)
{
  objc_destroyWeak(&a37);
  objc_destroyWeak(&a45);
  objc_destroyWeak(&a53);
  objc_destroyWeak(&a61);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214ECA6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214ECAD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214ECCC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214ECD2F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_214ECD880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_23_0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x16u);
}

uint64_t OUTLINED_FUNCTION_26(uint64_t result, float a2)
{
  *v3 = a2;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_31(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_214ECFBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x216063B80](v10, 0x1093C4020A6E6BFLL);

  _Unwind_Resume(a1);
}

void sub_214ECFCEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x216063B80](v12, 0x10B3C407D90225ELL);

  _Unwind_Resume(a1);
}

void sub_214ED0B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_214ED0CDC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_214ED31C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

void sub_214ED67A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214ED9564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t airdrop_document::protobuf_ShutdownFile_airdrop_2ddocument_2eproto(airdrop_document *this)
{
  if (airdrop_document::Document::default_instance_)
  {
    (*(*airdrop_document::Document::default_instance_ + 8))(airdrop_document::Document::default_instance_);
  }

  if (airdrop_document::NoteDocument::default_instance_)
  {
    (*(*airdrop_document::NoteDocument::default_instance_ + 8))(airdrop_document::NoteDocument::default_instance_);
  }

  if (airdrop_document::NoteDocument1_0::default_instance_)
  {
    (*(*airdrop_document::NoteDocument1_0::default_instance_ + 8))(airdrop_document::NoteDocument1_0::default_instance_);
  }

  if (airdrop_document::AttributedString::default_instance_)
  {
    (*(*airdrop_document::AttributedString::default_instance_ + 8))(airdrop_document::AttributedString::default_instance_);
  }

  if (airdrop_document::LegacyNoteDocument::default_instance_)
  {
    (*(*airdrop_document::LegacyNoteDocument::default_instance_ + 8))(airdrop_document::LegacyNoteDocument::default_instance_);
  }

  if (airdrop_document::LegacyNoteDocument1_0::default_instance_)
  {
    (*(*airdrop_document::LegacyNoteDocument1_0::default_instance_ + 8))(airdrop_document::LegacyNoteDocument1_0::default_instance_);
  }

  result = airdrop_document::WebArchive::default_instance_;
  if (airdrop_document::WebArchive::default_instance_)
  {
    v2 = *(*airdrop_document::WebArchive::default_instance_ + 8);

    return v2();
  }

  return result;
}

double airdrop_document::Document::Document(airdrop_document::Document *this)
{
  *this = &unk_28270C668;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double airdrop_document::NoteDocument::NoteDocument(airdrop_document::NoteDocument *this)
{
  *this = &unk_28270C6E0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

double airdrop_document::NoteDocument1_0::NoteDocument1_0(airdrop_document::NoteDocument1_0 *this)
{
  *this = &unk_28270C758;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double airdrop_document::LegacyNoteDocument::LegacyNoteDocument(airdrop_document::LegacyNoteDocument *this)
{
  *this = &unk_28270C848;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

double airdrop_document::LegacyNoteDocument1_0::LegacyNoteDocument1_0(airdrop_document::LegacyNoteDocument1_0 *this)
{
  *this = &unk_28270C8C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

void airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(airdrop_document *this)
{
  v1 = airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = &unk_28270A628;
    v2[1] = airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto_impl;
    v3 = 0;
    google::protobuf::GoogleOnceInitImpl(&airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto_once_, v2);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_214ED9C60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

std::string *airdrop_document::Document::MergeFrom(airdrop_document::Document *this, const airdrop_document::Document *a2)
{
  v3 = this;
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/airdrop-document.pb.cc", 277);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      *(v3 + 8) |= 1u;
      v6 = *(v3 + 5);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 5);
      if (!v7)
      {
        airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(this);
        v7 = *(airdrop_document::Document::default_instance_ + 40);
      }

      this = airdrop_document::NoteDocument::MergeFrom(v6, v7);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 8) |= 2u;
      v8 = *(v3 + 6);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 6);
      if (!v9)
      {
        airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(this);
        v9 = *(airdrop_document::Document::default_instance_ + 48);
      }

      airdrop_document::LegacyNoteDocument::MergeFrom(v8, v9);
    }
  }

  v12 = *(a2 + 1);
  v11 = a2 + 8;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = v11[23];
  }

  else
  {
    v15 = *(v11 + 1);
  }

  return std::string::append((v3 + 8), v14, v15);
}

void sub_214ED9E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void airdrop_document::Document::~Document(void **this)
{
  *this = &unk_28270C668;
  airdrop_document::Document::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  airdrop_document::Document::~Document(this);

  JUMPOUT(0x216063B80);
}

void airdrop_document::Document::SharedDtor(airdrop_document::Document *this)
{
  airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(this);
  if (airdrop_document::Document::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 6);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t airdrop_document::Document::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = *(this + 40);
      if (this)
      {
        this = airdrop_document::NoteDocument::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = airdrop_document::LegacyNoteDocument::Clear(this);
      }
    }
  }

  *(v1 + 32) = 0;
  if (*(v1 + 31) < 0)
  {
    **(v1 + 8) = 0;
    *(v1 + 16) = 0;
  }

  else
  {
    *(v1 + 8) = 0;
    *(v1 + 31) = 0;
  }

  return this;
}

uint64_t airdrop_document::NoteDocument::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 32))
  {
    this = *(this + 40);
    if (this)
    {
      this = airdrop_document::NoteDocument1_0::Clear(this);
    }
  }

  *(v1 + 32) = 0;
  if (*(v1 + 31) < 0)
  {
    **(v1 + 8) = 0;
    *(v1 + 16) = 0;
  }

  else
  {
    *(v1 + 8) = 0;
    *(v1 + 31) = 0;
  }

  return this;
}

uint64_t airdrop_document::LegacyNoteDocument::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 32))
  {
    this = *(this + 40);
    if (this)
    {
      this = airdrop_document::LegacyNoteDocument1_0::Clear(this);
    }
  }

  *(v1 + 32) = 0;
  if (*(v1 + 31) < 0)
  {
    **(v1 + 8) = 0;
    *(v1 + 16) = 0;
  }

  else
  {
    *(v1 + 8) = 0;
    *(v1 + 31) = 0;
  }

  return this;
}

uint64_t airdrop_document::Document::MergePartialFromCodedStream(airdrop_document::Document *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v29, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v28, v29);
  while (1)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
    {
      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
      if ((v7 & 0x100000000) == 0)
      {
        break;
      }
    }

    else
    {
      *(a2 + 8) = v6;
      *(a2 + 1) = v5 + 1;
      v7 = v6 | 0x100000000;
    }

    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        goto LABEL_33;
      }

      goto LABEL_21;
    }

    if (v7 >> 3 != 1)
    {
      break;
    }

    if (v7 == 10)
    {
      *(this + 8) |= 1u;
      v9 = *(this + 5);
      if (!v9)
      {
        operator new();
      }

      v30 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
        {
          goto LABEL_48;
        }
      }

      else
      {
        v30 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v12 = *(a2 + 14);
      v13 = *(a2 + 15);
      *(a2 + 14) = v12 + 1;
      if (v12 >= v13)
      {
        goto LABEL_48;
      }

      v14 = google::protobuf::io::CodedInputStream::PushLimit(a2, v30);
      if (!airdrop_document::NoteDocument::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
      {
        goto LABEL_48;
      }

      google::protobuf::io::CodedInputStream::PopLimit(a2, v14);
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
LABEL_33:
        *(this + 8) |= 2u;
        v19 = *(this + 6);
        if (!v19)
        {
          operator new();
        }

        v30 = 0;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
          {
            goto LABEL_48;
          }
        }

        else
        {
          v30 = *v20;
          *(a2 + 1) = v20 + 1;
        }

        v21 = *(a2 + 14);
        v22 = *(a2 + 15);
        *(a2 + 14) = v21 + 1;
        if (v21 >= v22 || (v23 = google::protobuf::io::CodedInputStream::PushLimit(a2, v30), !airdrop_document::LegacyNoteDocument::MergePartialFromCodedStream(v19, a2)) || *(a2 + 36) != 1)
        {
LABEL_48:
          v26 = 0;
          goto LABEL_50;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v23);
        v24 = *(a2 + 14);
        v16 = __OFSUB__(v24, 1);
        v25 = v24 - 1;
        if (v25 < 0 == v16)
        {
          *(a2 + 14) = v25;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          v26 = 1;
          *(a2 + 36) = 1;
          goto LABEL_50;
        }
      }
    }

    else
    {
LABEL_21:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_49;
      }

LABEL_18:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v28, v4))
      {
        goto LABEL_48;
      }
    }
  }

  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_49:
  v26 = 1;
LABEL_50:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v28);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v29);
  return v26;
}

void sub_214EDA47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t airdrop_document::Document::SerializeWithCachedSizes(airdrop_document::Document *this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 5);
    if (!v5)
    {
      airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(this);
      v5 = *(airdrop_document::Document::default_instance_ + 40);
    }

    this = google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2);
    v4 = *(v3 + 8);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 6);
    if (!v6)
    {
      airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(this);
      v6 = *(airdrop_document::Document::default_instance_ + 48);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(2, v6, a2);
  }

  v7 = *(v3 + 31);
  if (v7 < 0)
  {
    v8 = *(v3 + 1);
    v7 = *(v3 + 2);
  }

  else
  {
    v8 = v3 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t airdrop_document::Document::ByteSize(airdrop_document::Document *this)
{
  if (!*(this + 32))
  {
    v2 = 0;
    goto LABEL_18;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = *(this + 5);
  if (!v3)
  {
    airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(0);
    v3 = *(airdrop_document::Document::default_instance_ + 40);
  }

  v4 = airdrop_document::NoteDocument::ByteSize(v3);
  v5 = v4;
  if (v4 >= 0x80)
  {
    v6 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
  }

  else
  {
    v6 = 1;
  }

  v2 = v5 + v6 + 1;
  if ((*(this + 8) & 2) != 0)
  {
LABEL_12:
    v7 = *(this + 6);
    if (!v7)
    {
      airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(0);
      v7 = *(airdrop_document::Document::default_instance_ + 48);
    }

    v8 = airdrop_document::LegacyNoteDocument::ByteSize(v7);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    }

    else
    {
      v10 = 1;
    }

    v2 += v9 + v10 + 1;
  }

LABEL_18:
  v11 = *(this + 31);
  if (v11 < 0)
  {
    v11 = *(this + 2);
  }

  result = (v2 + v11);
  *(this + 9) = result;
  return result;
}

std::string *airdrop_document::Document::CheckTypeAndMergeFrom(airdrop_document::Document *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return airdrop_document::Document::MergeFrom(this, lpsrc);
}

std::string *airdrop_document::NoteDocument::MergeFrom(airdrop_document::NoteDocument *this, const airdrop_document::NoteDocument *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/airdrop-document.pb.cc", 480);
    v4 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (*(a2 + 32))
  {
    *(this + 8) |= 1u;
    v5 = *(this + 5);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 5);
    if (!v6)
    {
      airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(this);
      v6 = *(airdrop_document::NoteDocument::default_instance_ + 40);
    }

    airdrop_document::NoteDocument1_0::MergeFrom(v5, v6);
  }

  v9 = *(a2 + 1);
  v8 = a2 + 8;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  return std::string::append((this + 8), v11, v12);
}

void sub_214EDA7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *airdrop_document::LegacyNoteDocument::MergeFrom(airdrop_document::LegacyNoteDocument *this, const airdrop_document::LegacyNoteDocument *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/airdrop-document.pb.cc", 1112);
    v4 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (*(a2 + 32))
  {
    *(this + 8) |= 1u;
    v5 = *(this + 5);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 5);
    if (!v6)
    {
      airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(this);
      v6 = *(airdrop_document::LegacyNoteDocument::default_instance_ + 40);
    }

    airdrop_document::LegacyNoteDocument1_0::MergeFrom(v5, v6);
  }

  v9 = *(a2 + 1);
  v8 = a2 + 8;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  return std::string::append((this + 8), v11, v12);
}

void sub_214EDA914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void airdrop_document::NoteDocument::~NoteDocument(void **this)
{
  *this = &unk_28270C6E0;
  airdrop_document::NoteDocument::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  airdrop_document::NoteDocument::~NoteDocument(this);

  JUMPOUT(0x216063B80);
}

void airdrop_document::NoteDocument::SharedDtor(airdrop_document::NoteDocument *this)
{
  airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(this);
  if (airdrop_document::NoteDocument::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t airdrop_document::NoteDocument1_0::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = *(this + 40);
      if (this)
      {
        this = airdrop_document::AttributedString::Clear(this);
      }
    }

    *(v1 + 48) = 0;
  }

  *(v1 + 32) = 0;
  if (*(v1 + 31) < 0)
  {
    **(v1 + 8) = 0;
    *(v1 + 16) = 0;
  }

  else
  {
    *(v1 + 8) = 0;
    *(v1 + 31) = 0;
  }

  return this;
}

uint64_t airdrop_document::NoteDocument::MergePartialFromCodedStream(airdrop_document::NoteDocument *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v21, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v20, v21);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 < *(a2 + 2))
      {
        v6 = *v5;
        if (v6 >= 1)
        {
          *(a2 + 8) = v6;
          *(a2 + 1) = v5 + 1;
          v7 = v6 | 0x100000000;
          break;
        }
      }

      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
      if ((v7 & 0x100000000) != 0)
      {
        break;
      }

LABEL_12:
      if (v7)
      {
        v11 = (v7 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      v12 = v11;
      if (v11 || !google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v20, v4))
      {
        goto LABEL_32;
      }
    }

    if (v7 != 10)
    {
      goto LABEL_12;
    }

    *(this + 8) |= 1u;
    v9 = *(this + 5);
    if (!v9)
    {
      operator new();
    }

    v22 = 0;
    v10 = *(a2 + 1);
    if (v10 >= *(a2 + 2) || *v10 < 0)
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
      {
        break;
      }
    }

    else
    {
      v22 = *v10;
      *(a2 + 1) = v10 + 1;
    }

    v13 = *(a2 + 14);
    v14 = *(a2 + 15);
    *(a2 + 14) = v13 + 1;
    if (v13 >= v14)
    {
      break;
    }

    v15 = google::protobuf::io::CodedInputStream::PushLimit(a2, v22);
    if (!airdrop_document::NoteDocument1_0::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
    {
      break;
    }

    google::protobuf::io::CodedInputStream::PopLimit(a2, v15);
    v16 = *(a2 + 14);
    v17 = __OFSUB__(v16, 1);
    v18 = v16 - 1;
    if (v18 < 0 == v17)
    {
      *(a2 + 14) = v18;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v12 = 1;
      *(a2 + 36) = 1;
      goto LABEL_32;
    }
  }

  v12 = 0;
LABEL_32:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v20);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v21);
  return v12;
}

void sub_214EDAD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t airdrop_document::NoteDocument::SerializeWithCachedSizes(airdrop_document::NoteDocument *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 32))
  {
    v4 = *(this + 5);
    if (!v4)
    {
      airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(this);
      v4 = *(airdrop_document::NoteDocument::default_instance_ + 40);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(1, v4, a2);
  }

  v5 = *(this + 31);
  if (v5 < 0)
  {
    v6 = *(this + 1);
    v5 = *(this + 2);
  }

  else
  {
    v6 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v6, v5);
}

uint64_t airdrop_document::NoteDocument::ByteSize(airdrop_document::NoteDocument *this)
{
  if (*(this + 32))
  {
    v3 = *(this + 5);
    if (!v3)
    {
      airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(0);
      v3 = *(airdrop_document::NoteDocument::default_instance_ + 40);
    }

    v4 = airdrop_document::NoteDocument1_0::ByteSize(v3);
    v5 = v4;
    if (v4 >= 0x80)
    {
      v6 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
    }

    else
    {
      v6 = 1;
    }

    v2 = v5 + v6 + 1;
  }

  else
  {
    v2 = 0;
  }

  v7 = *(this + 31);
  if (v7 < 0)
  {
    v7 = *(this + 2);
  }

  result = (v7 + v2);
  *(this + 9) = result;
  return result;
}

std::string *airdrop_document::NoteDocument::CheckTypeAndMergeFrom(airdrop_document::NoteDocument *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return airdrop_document::NoteDocument::MergeFrom(this, lpsrc);
}

std::string *airdrop_document::NoteDocument1_0::MergeFrom(airdrop_document::NoteDocument1_0 *this, const airdrop_document::NoteDocument1_0 *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/airdrop-document.pb.cc", 711);
    v4 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      *(this + 8) |= 1u;
      v6 = *(this + 5);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 5);
      if (!v7)
      {
        airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(this);
        v7 = *(airdrop_document::NoteDocument1_0::default_instance_ + 40);
      }

      airdrop_document::AttributedString::MergeFrom(v6, v7);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 6);
      *(this + 8) |= 2u;
      *(this + 6) = v8;
    }
  }

  v11 = *(a2 + 1);
  v10 = a2 + 8;
  v9 = v11;
  v12 = v10[23];
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = v10[23];
  }

  else
  {
    v14 = *(v10 + 1);
  }

  return std::string::append((this + 8), v13, v14);
}

void airdrop_document::NoteDocument1_0::~NoteDocument1_0(void **this)
{
  *this = &unk_28270C758;
  airdrop_document::NoteDocument1_0::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  airdrop_document::NoteDocument1_0::~NoteDocument1_0(this);

  JUMPOUT(0x216063B80);
}

void airdrop_document::NoteDocument1_0::SharedDtor(airdrop_document::NoteDocument1_0 *this)
{
  airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(this);
  if (airdrop_document::NoteDocument1_0::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t airdrop_document::AttributedString::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }

    v1 = *(this + 40);
    if (v1 != google::protobuf::internal::empty_string_)
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

  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t airdrop_document::NoteDocument1_0::MergePartialFromCodedStream(airdrop_document::NoteDocument1_0 *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v26, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v25, v26);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 >> 3 != 2)
      {
        break;
      }

      if (v7 != 16)
      {
        goto LABEL_21;
      }

      v13 = *(a2 + 1);
      v12 = *(a2 + 2);
LABEL_34:
      *v27 = 0;
      if (v13 >= v12 || (v21 = *v13, v21 < 0))
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v27))
        {
          goto LABEL_43;
        }

        v21 = *v27;
        v22 = *(a2 + 1);
        v12 = *(a2 + 2);
      }

      else
      {
        v22 = v13 + 1;
        *(a2 + 1) = v22;
      }

      *(this + 6) = v21;
      *(this + 8) |= 2u;
      if (v22 == v12 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        v23 = 1;
        *(a2 + 36) = 1;
        goto LABEL_45;
      }
    }

    if (v7 >> 3 != 1)
    {
      break;
    }

    if (v7 == 10)
    {
      *(this + 8) |= 1u;
      v9 = *(this + 5);
      if (!v9)
      {
        operator new();
      }

      v27[0] = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v27))
        {
          goto LABEL_43;
        }
      }

      else
      {
        v27[0] = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v14 = *(a2 + 14);
      v15 = *(a2 + 15);
      *(a2 + 14) = v14 + 1;
      if (v14 >= v15 || (v16 = google::protobuf::io::CodedInputStream::PushLimit(a2, v27[0]), !airdrop_document::AttributedString::MergePartialFromCodedStream(v9, a2)) || *(a2 + 36) != 1)
      {
LABEL_43:
        v23 = 0;
        goto LABEL_45;
      }

      google::protobuf::io::CodedInputStream::PopLimit(a2, v16);
      v17 = *(a2 + 14);
      v18 = __OFSUB__(v17, 1);
      v19 = v17 - 1;
      if (v19 < 0 == v18)
      {
        *(a2 + 14) = v19;
      }

      v20 = *(a2 + 1);
      v12 = *(a2 + 2);
      if (v20 < v12 && *v20 == 16)
      {
        v13 = v20 + 1;
        *(a2 + 1) = v13;
        goto LABEL_34;
      }
    }

    else
    {
LABEL_21:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_44;
      }

LABEL_18:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v25, v4))
      {
        goto LABEL_43;
      }
    }
  }

LABEL_14:
  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_44:
  v23 = 1;
LABEL_45:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v25);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v26);
  return v23;
}

void sub_214EDB510(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x216063B80](v2, 0x10B3C400074EEDFLL);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va1);
  _Unwind_Resume(a1);
}

uint64_t airdrop_document::NoteDocument1_0::SerializeWithCachedSizes(airdrop_document::NoteDocument1_0 *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    v7 = *(this + 5);
    if (!v7)
    {
      airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(this);
      v7 = *(airdrop_document::NoteDocument1_0::default_instance_ + 40);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2);
    v6 = *(this + 8);
  }

  if ((v6 & 2) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteInt64(2, *(this + 6), a2, a4);
  }

  v8 = *(this + 31);
  if (v8 < 0)
  {
    v9 = *(this + 1);
    v8 = *(this + 2);
  }

  else
  {
    v9 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v9, v8);
}

uint64_t airdrop_document::NoteDocument1_0::ByteSize(airdrop_document::NoteDocument1_0 *this)
{
  if (!*(this + 32))
  {
    v2 = 0;
    goto LABEL_13;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    v2 += google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
    goto LABEL_13;
  }

  v3 = *(this + 5);
  if (!v3)
  {
    airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(0);
    v3 = *(airdrop_document::NoteDocument1_0::default_instance_ + 40);
  }

  v4 = airdrop_document::AttributedString::ByteSize(v3);
  v5 = v4;
  if (v4 >= 0x80)
  {
    v6 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
  }

  else
  {
    v6 = 1;
  }

  v2 = v5 + v6 + 1;
  if ((*(this + 8) & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v7 = *(this + 31);
  if (v7 < 0)
  {
    v7 = *(this + 2);
  }

  result = (v2 + v7);
  *(this + 9) = result;
  return result;
}

std::string *airdrop_document::NoteDocument1_0::CheckTypeAndMergeFrom(airdrop_document::NoteDocument1_0 *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return airdrop_document::NoteDocument1_0::MergeFrom(this, lpsrc);
}

std::string *airdrop_document::AttributedString::MergeFrom(airdrop_document::AttributedString *this, const airdrop_document::AttributedString *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/airdrop-document.pb.cc", 913);
    v4 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (*(a2 + 32))
  {
    v5 = *(a2 + 5);
    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }

    v6 = *(this + 5);
    if (v6 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::operator=(v6, v5);
  }

  v9 = *(a2 + 1);
  v8 = a2 + 8;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  return std::string::append((this + 8), v11, v12);
}

void sub_214EDB818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

airdrop_document::AttributedString *airdrop_document::AttributedString::AttributedString(airdrop_document::AttributedString *this)
{
  *this = &unk_28270C7D0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  airdrop_document::AttributedString::SharedCtor(this);
  return this;
}

void sub_214EDB8A0(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void airdrop_document::AttributedString::SharedCtor(airdrop_document::AttributedString *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_28270A628;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 4) = 0;
  *(this + 5) = v3;
}

void sub_214EDB968(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void airdrop_document::AttributedString::~AttributedString(void **this)
{
  *this = &unk_28270C7D0;
  airdrop_document::AttributedString::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  airdrop_document::AttributedString::~AttributedString(this);

  JUMPOUT(0x216063B80);
}

void airdrop_document::AttributedString::SharedDtor(airdrop_document::AttributedString *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v1 = *(this + 5);
  if (v1)
  {
    v2 = v1 == google::protobuf::internal::empty_string_;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    this = MEMORY[0x216063B80](v1, 0x1012C40EC159624);
  }

  airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(this);
}

uint64_t airdrop_document::AttributedString::MergePartialFromCodedStream(airdrop_document::AttributedString *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v14, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v13, v14);
  do
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 == 10)
      {
        break;
      }

LABEL_15:
      if (v7)
      {
        v10 = (v7 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        v11 = 1;
        goto LABEL_23;
      }

      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v13, v4))
      {
        goto LABEL_20;
      }
    }

    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v9 = *(this + 5);
    if (v9 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v9))
    {
LABEL_20:
      v11 = 0;
      goto LABEL_23;
    }
  }

  while (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  v11 = 1;
  *(a2 + 36) = 1;
LABEL_23:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v13);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v14);
  return v11;
}

void sub_214EDBCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t airdrop_document::AttributedString::SerializeWithCachedSizes(airdrop_document::AttributedString *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 32))
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(1, *(this + 5), a2);
  }

  v4 = *(this + 31);
  if (v4 < 0)
  {
    v5 = *(this + 1);
    v4 = *(this + 2);
  }

  else
  {
    v5 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v5, v4);
}

uint64_t airdrop_document::AttributedString::ByteSize(airdrop_document::AttributedString *this)
{
  if (*(this + 32))
  {
    v3 = *(this + 5);
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
      v9 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
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

    v2 = v8 + v4;
  }

  else
  {
    v2 = 0;
  }

  v10 = *(this + 31);
  if (v10 < 0)
  {
    v10 = *(this + 2);
  }

  result = (v10 + v2);
  *(this + 9) = result;
  return result;
}

std::string *airdrop_document::AttributedString::CheckTypeAndMergeFrom(airdrop_document::AttributedString *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return airdrop_document::AttributedString::MergeFrom(this, lpsrc);
}

void airdrop_document::LegacyNoteDocument::~LegacyNoteDocument(void **this)
{
  *this = &unk_28270C848;
  airdrop_document::LegacyNoteDocument::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  airdrop_document::LegacyNoteDocument::~LegacyNoteDocument(this);

  JUMPOUT(0x216063B80);
}

void airdrop_document::LegacyNoteDocument::SharedDtor(airdrop_document::LegacyNoteDocument *this)
{
  airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(this);
  if (airdrop_document::LegacyNoteDocument::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t airdrop_document::LegacyNoteDocument1_0::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 32))
  {
    this = *(this + 40);
    if (this)
    {
      this = airdrop_document::WebArchive::Clear(this);
    }
  }

  *(v1 + 32) = 0;
  if (*(v1 + 31) < 0)
  {
    **(v1 + 8) = 0;
    *(v1 + 16) = 0;
  }

  else
  {
    *(v1 + 8) = 0;
    *(v1 + 31) = 0;
  }

  return this;
}

uint64_t airdrop_document::LegacyNoteDocument::MergePartialFromCodedStream(airdrop_document::LegacyNoteDocument *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v21, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v20, v21);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 < *(a2 + 2))
      {
        v6 = *v5;
        if (v6 >= 1)
        {
          *(a2 + 8) = v6;
          *(a2 + 1) = v5 + 1;
          v7 = v6 | 0x100000000;
          break;
        }
      }

      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
      if ((v7 & 0x100000000) != 0)
      {
        break;
      }

LABEL_12:
      if (v7)
      {
        v11 = (v7 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      v12 = v11;
      if (v11 || !google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v20, v4))
      {
        goto LABEL_32;
      }
    }

    if (v7 != 10)
    {
      goto LABEL_12;
    }

    *(this + 8) |= 1u;
    v9 = *(this + 5);
    if (!v9)
    {
      operator new();
    }

    v22 = 0;
    v10 = *(a2 + 1);
    if (v10 >= *(a2 + 2) || *v10 < 0)
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
      {
        break;
      }
    }

    else
    {
      v22 = *v10;
      *(a2 + 1) = v10 + 1;
    }

    v13 = *(a2 + 14);
    v14 = *(a2 + 15);
    *(a2 + 14) = v13 + 1;
    if (v13 >= v14)
    {
      break;
    }

    v15 = google::protobuf::io::CodedInputStream::PushLimit(a2, v22);
    if (!airdrop_document::LegacyNoteDocument1_0::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
    {
      break;
    }

    google::protobuf::io::CodedInputStream::PopLimit(a2, v15);
    v16 = *(a2 + 14);
    v17 = __OFSUB__(v16, 1);
    v18 = v16 - 1;
    if (v18 < 0 == v17)
    {
      *(a2 + 14) = v18;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v12 = 1;
      *(a2 + 36) = 1;
      goto LABEL_32;
    }
  }

  v12 = 0;
LABEL_32:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v20);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v21);
  return v12;
}

void sub_214EDC26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t airdrop_document::LegacyNoteDocument::SerializeWithCachedSizes(airdrop_document::LegacyNoteDocument *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 32))
  {
    v4 = *(this + 5);
    if (!v4)
    {
      airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(this);
      v4 = *(airdrop_document::LegacyNoteDocument::default_instance_ + 40);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(1, v4, a2);
  }

  v5 = *(this + 31);
  if (v5 < 0)
  {
    v6 = *(this + 1);
    v5 = *(this + 2);
  }

  else
  {
    v6 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v6, v5);
}

uint64_t airdrop_document::LegacyNoteDocument::ByteSize(airdrop_document::LegacyNoteDocument *this)
{
  if (*(this + 32))
  {
    v3 = *(this + 5);
    if (!v3)
    {
      airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(0);
      v3 = *(airdrop_document::LegacyNoteDocument::default_instance_ + 40);
    }

    v4 = airdrop_document::LegacyNoteDocument1_0::ByteSize(v3);
    v5 = v4;
    if (v4 >= 0x80)
    {
      v6 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
    }

    else
    {
      v6 = 1;
    }

    v2 = v5 + v6 + 1;
  }

  else
  {
    v2 = 0;
  }

  v7 = *(this + 31);
  if (v7 < 0)
  {
    v7 = *(this + 2);
  }

  result = (v7 + v2);
  *(this + 9) = result;
  return result;
}

std::string *airdrop_document::LegacyNoteDocument::CheckTypeAndMergeFrom(airdrop_document::LegacyNoteDocument *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return airdrop_document::LegacyNoteDocument::MergeFrom(this, lpsrc);
}

std::string *airdrop_document::LegacyNoteDocument1_0::MergeFrom(airdrop_document::LegacyNoteDocument1_0 *this, const airdrop_document::LegacyNoteDocument1_0 *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/airdrop-document.pb.cc", 1311);
    v4 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (*(a2 + 32))
  {
    *(this + 8) |= 1u;
    v5 = *(this + 5);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 5);
    if (!v6)
    {
      airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(this);
      v6 = *(airdrop_document::LegacyNoteDocument1_0::default_instance_ + 40);
    }

    airdrop_document::WebArchive::MergeFrom(v5, v6);
  }

  v9 = *(a2 + 1);
  v8 = a2 + 8;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  return std::string::append((this + 8), v11, v12);
}

void airdrop_document::LegacyNoteDocument1_0::~LegacyNoteDocument1_0(void **this)
{
  *this = &unk_28270C8C0;
  airdrop_document::LegacyNoteDocument1_0::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  airdrop_document::LegacyNoteDocument1_0::~LegacyNoteDocument1_0(this);

  JUMPOUT(0x216063B80);
}

void airdrop_document::LegacyNoteDocument1_0::SharedDtor(airdrop_document::LegacyNoteDocument1_0 *this)
{
  airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(this);
  if (airdrop_document::LegacyNoteDocument1_0::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t airdrop_document::WebArchive::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }

    v1 = *(this + 40);
    if (v1 != google::protobuf::internal::empty_string_)
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

  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t airdrop_document::LegacyNoteDocument1_0::MergePartialFromCodedStream(airdrop_document::LegacyNoteDocument1_0 *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v21, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v20, v21);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 < *(a2 + 2))
      {
        v6 = *v5;
        if (v6 >= 1)
        {
          *(a2 + 8) = v6;
          *(a2 + 1) = v5 + 1;
          v7 = v6 | 0x100000000;
          break;
        }
      }

      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
      if ((v7 & 0x100000000) != 0)
      {
        break;
      }

LABEL_12:
      if (v7)
      {
        v11 = (v7 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      v12 = v11;
      if (v11 || !google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v20, v4))
      {
        goto LABEL_32;
      }
    }

    if (v7 != 10)
    {
      goto LABEL_12;
    }

    *(this + 8) |= 1u;
    v9 = *(this + 5);
    if (!v9)
    {
      operator new();
    }

    v22 = 0;
    v10 = *(a2 + 1);
    if (v10 >= *(a2 + 2) || *v10 < 0)
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
      {
        break;
      }
    }

    else
    {
      v22 = *v10;
      *(a2 + 1) = v10 + 1;
    }

    v13 = *(a2 + 14);
    v14 = *(a2 + 15);
    *(a2 + 14) = v13 + 1;
    if (v13 >= v14)
    {
      break;
    }

    v15 = google::protobuf::io::CodedInputStream::PushLimit(a2, v22);
    if (!airdrop_document::WebArchive::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
    {
      break;
    }

    google::protobuf::io::CodedInputStream::PopLimit(a2, v15);
    v16 = *(a2 + 14);
    v17 = __OFSUB__(v16, 1);
    v18 = v16 - 1;
    if (v18 < 0 == v17)
    {
      *(a2 + 14) = v18;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v12 = 1;
      *(a2 + 36) = 1;
      goto LABEL_32;
    }
  }

  v12 = 0;
LABEL_32:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v20);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v21);
  return v12;
}

void sub_214EDC960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t airdrop_document::LegacyNoteDocument1_0::SerializeWithCachedSizes(airdrop_document::LegacyNoteDocument1_0 *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 32))
  {
    v4 = *(this + 5);
    if (!v4)
    {
      airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(this);
      v4 = *(airdrop_document::LegacyNoteDocument1_0::default_instance_ + 40);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(1, v4, a2);
  }

  v5 = *(this + 31);
  if (v5 < 0)
  {
    v6 = *(this + 1);
    v5 = *(this + 2);
  }

  else
  {
    v6 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v6, v5);
}

uint64_t airdrop_document::LegacyNoteDocument1_0::ByteSize(airdrop_document::LegacyNoteDocument1_0 *this)
{
  if (*(this + 32))
  {
    v3 = *(this + 5);
    if (!v3)
    {
      airdrop_document::protobuf_AddDesc_airdrop_2ddocument_2eproto(0);
      v3 = *(airdrop_document::LegacyNoteDocument1_0::default_instance_ + 40);
    }

    v4 = airdrop_document::WebArchive::ByteSize(v3);
    v5 = v4;
    if (v4 >= 0x80)
    {
      v6 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
    }

    else
    {
      v6 = 1;
    }

    v2 = v5 + v6 + 1;
  }

  else
  {
    v2 = 0;
  }

  v7 = *(this + 31);
  if (v7 < 0)
  {
    v7 = *(this + 2);
  }

  result = (v7 + v2);
  *(this + 9) = result;
  return result;
}

std::string *airdrop_document::LegacyNoteDocument1_0::CheckTypeAndMergeFrom(airdrop_document::LegacyNoteDocument1_0 *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return airdrop_document::LegacyNoteDocument1_0::MergeFrom(this, lpsrc);
}

std::string *airdrop_document::WebArchive::MergeFrom(airdrop_document::WebArchive *this, const airdrop_document::WebArchive *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/airdrop-document.pb.cc", 1509);
    v4 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (*(a2 + 32))
  {
    v5 = *(a2 + 5);
    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }

    v6 = *(this + 5);
    if (v6 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::operator=(v6, v5);
  }

  v9 = *(a2 + 1);
  v8 = a2 + 8;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  return std::string::append((this + 8), v11, v12);
}

void sub_214EDCC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

airdrop_document::WebArchive *airdrop_document::WebArchive::WebArchive(airdrop_document::WebArchive *this)
{
  *this = &unk_28270C938;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  airdrop_document::WebArchive::SharedCtor(this);
  return this;
}

void sub_214EDCCB0(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void airdrop_document::WebArchive::SharedCtor(airdrop_document::WebArchive *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_28270A628;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 4) = 0;
  *(this + 5) = v3;
}

void sub_214EDCD78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void airdrop_document::WebArchive::~WebArchive(void **this)
{
  *this = &unk_28270C938;
  airdrop_document::AttributedString::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  airdrop_document::WebArchive::~WebArchive(this);

  JUMPOUT(0x216063B80);
}

uint64_t airdrop_document::WebArchive::MergePartialFromCodedStream(airdrop_document::WebArchive *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v14, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v13, v14);
  do
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 == 10)
      {
        break;
      }

LABEL_15:
      if (v7)
      {
        v10 = (v7 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        v11 = 1;
        goto LABEL_23;
      }

      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v13, v4))
      {
        goto LABEL_20;
      }
    }

    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v9 = *(this + 5);
    if (v9 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v9))
    {
LABEL_20:
      v11 = 0;
      goto LABEL_23;
    }
  }

  while (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  v11 = 1;
  *(a2 + 36) = 1;
LABEL_23:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v13);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v14);
  return v11;
}

void sub_214EDD03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t airdrop_document::WebArchive::SerializeWithCachedSizes(airdrop_document::WebArchive *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 32))
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(1, *(this + 5), a2);
  }

  v4 = *(this + 31);
  if (v4 < 0)
  {
    v5 = *(this + 1);
    v4 = *(this + 2);
  }

  else
  {
    v5 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v5, v4);
}

uint64_t airdrop_document::WebArchive::ByteSize(airdrop_document::WebArchive *this)
{
  if (*(this + 32))
  {
    v3 = *(this + 5);
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
      v9 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
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

    v2 = v8 + v4;
  }

  else
  {
    v2 = 0;
  }

  v10 = *(this + 31);
  if (v10 < 0)
  {
    v10 = *(this + 2);
  }

  result = (v10 + v2);
  *(this + 9) = result;
  return result;
}

std::string *airdrop_document::WebArchive::CheckTypeAndMergeFrom(airdrop_document::WebArchive *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return airdrop_document::WebArchive::MergeFrom(this, lpsrc);
}

void sub_214EDD924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214EDDE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EDE1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromICParticipantsFilterSelectionType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"me";
  }

  else
  {
    return off_2781997F8[a1 - 1];
  }
}

id ICLocalizedStringFromICParticipantsFilterSelectionType(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v1 = @"specific participants";
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_11;
      }

      v1 = @"none";
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_11;
    }

    v1 = @"anyone";
  }

  else
  {
    v1 = @"me";
  }

  a1 = __ICLocalizedFrameworkString_impl(v1, v1, 0, 1);
LABEL_11:

  return a1;
}

__CFString *NSStringFromICParticipantsFilterJoinOperator(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"all";
  }

  if (a1 == 2)
  {
    return @"any";
  }

  else
  {
    return v1;
  }
}

id ICLocalizedStringFromICParticipantsFilterJoinOperator(void *a1)
{
  if (a1 == 2)
  {
    v1 = @"PERSON_OPERATOR_ANY";
    v2 = @"any";
  }

  else if (a1 == 1)
  {
    v1 = @"PERSON_OPERATOR_ALL";
    v2 = @"all";
  }

  else
  {
    if (a1)
    {
      goto LABEL_8;
    }

    v1 = @"PERSON_OPERATOR_UNKNOWN";
    v2 = @"unknown";
  }

  a1 = __ICLocalizedFrameworkStringWithDefaultValue_impl(v1, v2, 0, 1);
LABEL_8:

  return a1;
}

void sub_214EE12C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214EE1DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EE26F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__51(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214EE2C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_214EE3CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__52(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214EE3ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EE63F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EE70DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EE7308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214EE7690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_214EE7868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EE79B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromICFilterType(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_278199B00[a1];
  }
}

void sub_214EE7DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214EE7FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_DWORD *google::protobuf::io::CodedInputStream::BackUpInputToCurrentPosition(_DWORD *this)
{
  if (this[7] + this[11] + this[4] - this[2] >= 1)
  {
    v1 = this;
    this = (*(**this + 24))(*this);
    v2 = *(v1 + 1);
    v3 = v1[6] - v1[11] + v2 - v1[4];
    *(v1 + 2) = v2;
    v1[11] = 0;
    *(v1 + 3) = v3;
  }

  return this;
}

uint64_t google::protobuf::io::CodedInputStream::BytesUntilLimit(google::protobuf::io::CodedInputStream *this)
{
  v1 = *(this + 10);
  if (v1 == 0x7FFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v1 - *(this + 6) + *(this + 11) + *(this + 4) - *(this + 2));
  }
}

void google::protobuf::io::CodedInputStream::PrintTotalBytesLimitError(google::protobuf::io::CodedInputStream *this)
{
  google::protobuf::internal::LogMessage::LogMessage(v6, 2, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/io/coded_stream.cc", 180);
  v2 = google::protobuf::internal::LogMessage::operator<<(v6, "A protocol message was rejected because it was too big (more than ");
  v3 = google::protobuf::internal::LogMessage::operator<<(v2, *(this + 12));
  v4 = google::protobuf::internal::LogMessage::operator<<(v3, " bytes).  To increase the limit (or to disable these warnings), see CodedInputStream::SetTotalBytesLimit() in google/protobuf/io/coded_stream.h.");
  google::protobuf::internal::LogFinisher::operator=(&v5, v4);
  google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
}

void sub_214EE8F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CodedInputStream::Refresh(google::protobuf::io::CodedInputStream *this)
{
  v2 = (this + 8);
  if (*(this + 4) != *(this + 2))
  {
    google::protobuf::internal::LogMessage::LogMessage(v30, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/io/coded_stream.cc", 519);
    v3 = google::protobuf::internal::LogMessage::operator<<(v30, "CHECK failed: (0) == (BufferSize()): ");
    google::protobuf::internal::LogFinisher::operator=(&v29, v3);
    google::protobuf::internal::LogMessage::~LogMessage(&v30[0].__r_.__value_.__l.__data_);
  }

  v4 = *(this + 11);
  if (v4 > 0 || *(this + 7) > 0 || (v5 = *(this + 6), v5 == *(this + 10)))
  {
    v6 = *(this + 6) - v4;
    v7 = *(this + 12);
    if (v6 >= v7 && v7 != *(this + 10))
    {
      google::protobuf::io::CodedInputStream::PrintTotalBytesLimitError(this);
    }

    return 0;
  }

  else
  {
    v10 = *(this + 13);
    if ((v10 & 0x80000000) == 0 && v5 >= v10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v30, 1, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/io/coded_stream.cc", 537);
      v11 = google::protobuf::internal::LogMessage::operator<<(v30, "Reading dangerously large protocol message.  If the message turns out to be larger than ");
      v12 = google::protobuf::internal::LogMessage::operator<<(v11, *(this + 12));
      v13 = google::protobuf::internal::LogMessage::operator<<(v12, " bytes, parsing will be halted for security reasons.  To increase the limit (or to disable these warnings), see CodedInputStream::SetTotalBytesLimit() in google/protobuf/io/coded_stream.h.");
      google::protobuf::internal::LogFinisher::operator=(&v29, v13);
      google::protobuf::internal::LogMessage::~LogMessage(&v30[0].__r_.__value_.__l.__data_);
      *(this + 13) = -2;
    }

    v29 = 0;
    v28 = 0;
    v14 = *this;
    do
    {
      v8 = (*(*v14 + 16))(v14, &v29, &v28);
      if (!v8)
      {
        *v2 = 0;
        v2[1] = 0;
        return v8;
      }

      v15 = v28;
    }

    while (!v28);
    v16 = v29 + v28;
    *(this + 1) = v29;
    *(this + 2) = v16;
    if (v15 < 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v30, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/io/coded_stream.cc", 554);
      v17 = google::protobuf::internal::LogMessage::operator<<(v30, "CHECK failed: (buffer_size) >= (0): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, v17);
      google::protobuf::internal::LogMessage::~LogMessage(&v30[0].__r_.__value_.__l.__data_);
      v15 = v28;
    }

    v18 = *(this + 6);
    v19 = v18 - (v15 ^ 0x7FFFFFFF);
    if (v18 <= (v15 ^ 0x7FFFFFFF))
    {
      v21 = v15 + v18;
      v20 = *(this + 2);
    }

    else
    {
      *(this + 7) = v19;
      v20 = *(this + 2) - v19;
      *(this + 2) = v20;
      v21 = 0x7FFFFFFF;
    }

    *(this + 6) = v21;
    v22 = *(this + 10);
    v23 = v20 + *(this + 11);
    *(this + 2) = v23;
    v24 = *(this + 12);
    if (v24 >= v22)
    {
      v24 = v22;
    }

    v25 = __OFSUB__(v21, v24);
    v26 = v21 - v24;
    if ((v26 < 0) ^ v25 | (v26 == 0))
    {
      v26 = 0;
    }

    else
    {
      *(this + 2) = v23 - v26;
    }

    *(this + 11) = v26;
  }

  return v8;
}

void sub_214EE9188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::io::CodedInputStream::ReadRaw(google::protobuf::io::CodedInputStream *this, char *__dst, int a3)
{
  while (1)
  {
    v6 = a3;
    v7 = *(this + 1);
    v8 = *(this + 2) - v7;
    v9 = __OFSUB__(a3, v8);
    a3 -= v8;
    if ((a3 < 0) ^ v9 | (a3 == 0))
    {
      break;
    }

    memcpy(__dst, v7, v8);
    __dst += v8;
    *(this + 1) += v8;
    if ((google::protobuf::io::CodedInputStream::Refresh(this) & 1) == 0)
    {
      return v6 <= v8;
    }
  }

  memcpy(__dst, v7, v6);
  *(this + 1) += v6;
  return v6 <= v8;
}

BOOL google::protobuf::io::CodedInputStream::ReadString(uint64_t a1, std::string *this, std::string::size_type __n)
{
  if ((__n & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = __n;
  v4 = this;
  if (*(a1 + 16) - *(a1 + 8) >= __n)
  {
    std::string::resize(this, __n, 0);
    if (!v3)
    {
      return 1;
    }

    if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v4->__r_.__value_.__l.__size_)
      {
LABEL_13:
        v4 = 0;
        goto LABEL_14;
      }

      v4 = v4->__r_.__value_.__r.__words[0];
    }

    else if (!*(&v4->__r_.__value_.__s + 23))
    {
      goto LABEL_13;
    }

LABEL_14:
    memcpy(v4, *(a1 + 8), v3);
    *(a1 + 8) += v3;
    return 1;
  }

  return google::protobuf::io::CodedInputStream::ReadStringFallback(a1, this, __n);
}

BOOL google::protobuf::io::CodedInputStream::ReadStringFallback(_DWORD *a1, std::string *this, std::string::size_type __requested_capacity)
{
  v3 = __requested_capacity;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    if (this->__r_.__value_.__l.__size_)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }
  }

  else if (*(&this->__r_.__value_.__s + 23))
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  v6 = a1[12];
  if (v6 >= a1[10])
  {
    v6 = a1[10];
  }

  if (v6 != 0x7FFFFFFF)
  {
    v7 = v6 - a1[6] + a1[11] + a1[4] - a1[2];
    v8 = v7 < __requested_capacity || __requested_capacity < 1;
    if (!v8 && v7 >= 1)
    {
      std::string::reserve(this, __requested_capacity);
    }
  }

  while (1)
  {
    v10 = v3;
    v11 = *(a1 + 1);
    v12 = *(a1 + 2) - v11;
    v13 = __OFSUB__(v3, v12);
    v3 -= v12;
    if ((v3 < 0) ^ v13 | (v3 == 0))
    {
      break;
    }

    if (v12)
    {
      v14 = v12;
      std::string::append(this, v11, v12);
      v11 = *(a1 + 1);
    }

    else
    {
      v14 = 0;
    }

    *(a1 + 1) = &v11[v14];
    if ((google::protobuf::io::CodedInputStream::Refresh(a1) & 1) == 0)
    {
      return v10 <= v12;
    }
  }

  std::string::append(this, v11, v10);
  *(a1 + 1) += v10;
  return v10 <= v12;
}

BOOL google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(google::protobuf::io::CodedInputStream *this, unint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1);
  if (((*(this + 4) - v3) & 0xFFFFFFF8) != 0)
  {
    *(this + 1) = v3 + 1;
  }

  else
  {
    v3 = v5;
    result = google::protobuf::io::CodedInputStream::ReadRaw(this, v5, 8);
    if (!result)
    {
      return result;
    }
  }

  *a2 = *v3;
  return 1;
}

uint64_t google::protobuf::io::CodedInputStream::ReadTagSlow(google::protobuf::io::CodedInputStream *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 != v3)
  {
LABEL_4:
    v7 = 0;
    if (v2 >= v3 || (result = *v2, (result & 0x80000000) != 0))
    {
      result = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v7);
      if (result)
      {
        return v7;
      }
    }

    else
    {
      *(this + 1) = v2 + 1;
    }

    return result;
  }

  if (google::protobuf::io::CodedInputStream::Refresh(this))
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    goto LABEL_4;
  }

  v5 = *(this + 12);
  result = 0;
  v6 = *(this + 6) - *(this + 11) < v5 || *(this + 10) == v5;
  *(this + 36) = v6;
  return result;
}

uint64_t google::protobuf::io::CodedInputStream::ReadVarint64Slow(google::protobuf::io::CodedInputStream *this, unint64_t *a2)
{
  v4 = 0;
  v5 = 0;
  while (v4 != 10)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 != *(this + 2))
      {
        break;
      }

      if ((google::protobuf::io::CodedInputStream::Refresh(this) & 1) == 0)
      {
        return 0;
      }
    }

    v7 = *v6;
    v5 |= (*v6 & 0x7F) << (7 * v4);
    *(this + 1) = v6 + 1;
    ++v4;
    if ((v7 & 0x80) == 0)
    {
      *a2 = v5;
      return 1;
    }
  }

  return 0;
}

uint64_t google::protobuf::io::CodedOutputStream::WriteRaw(google::protobuf::io::CodedOutputStream *this, char *__src, int a3)
{
  while (1)
  {
    v6 = *(this + 4);
    v7 = *(this + 1);
    if (v6 >= a3)
    {
      break;
    }

    memcpy(v7, __src, v6);
    v8 = *(this + 4);
    a3 -= v8;
    __src += v8;
    result = google::protobuf::io::CodedOutputStream::Refresh(this);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  result = memcpy(v7, __src, a3);
  *(this + 1) += a3;
  *(this + 4) -= a3;
  return result;
}

uint64_t google::protobuf::io::CodedOutputStream::WriteAliasedRaw(google::protobuf::io::CodedOutputStream *this, char *__src, uint64_t a3)
{
  v6 = *(this + 4);
  if (v6 <= a3)
  {
    if (v6 <= 0)
    {
      v8 = *(this + 5);
    }

    else
    {
      (*(**this + 24))();
      v8 = *(this + 5) - *(this + 4);
      *(this + 1) = 0;
      *(this + 4) = 0;
    }

    *(this + 5) = v8 + a3;
    result = (*(**this + 40))(*this, __src, a3);
    *(this + 24) |= result ^ 1;
  }

  else
  {

    return google::protobuf::io::CodedOutputStream::WriteRaw(this, __src, a3);
  }

  return result;
}

uint64_t google::protobuf::io::CodedOutputStream::WriteLittleEndian32(uint64_t this, int a2)
{
  if (*(this + 16) < 4u)
  {
    v5 = v2;
    v6 = v3;
    v4 = a2;
    return google::protobuf::io::CodedOutputStream::WriteRaw(this, &v4, 4);
  }

  else
  {
    **(this + 8) = a2;
    *(this + 8) += 4;
    *(this + 16) -= 4;
  }

  return this;
}

uint64_t google::protobuf::io::CodedOutputStream::WriteLittleEndian64(uint64_t this, uint64_t a2)
{
  v2[1] = *MEMORY[0x277D85DE8];
  if (*(this + 16) < 8u)
  {
    v2[0] = a2;
    return google::protobuf::io::CodedOutputStream::WriteRaw(this, v2, 8);
  }

  else
  {
    **(this + 8) = a2;
    *(this + 8) += 8;
    *(this + 16) -= 8;
  }

  return this;
}

uint64_t google::protobuf::io::CodedOutputStream::WriteVarint32(uint64_t this, unsigned int a2)
{
  if (*(this + 16) < 5)
  {
    v9 = v2;
    v10 = v3;
    if (a2 < 0x80)
    {
      LODWORD(v6) = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v8[v6++] = a2 | 0x80;
        v7 = a2 >> 14;
        a2 >>= 7;
      }

      while (v7);
    }

    v8[v6] = a2;
    return google::protobuf::io::CodedOutputStream::WriteRaw(this, v8, v6 + 1);
  }

  else
  {
    v4 = *(this + 8);
    *v4 = a2 | 0x80;
    if (a2 < 0x80)
    {
      *v4 = a2;
      v5 = 1;
    }

    else
    {
      v4[1] = (a2 >> 7) | 0x80;
      if (a2 < 0x4000)
      {
        v4[1] = a2 >> 7;
        v5 = 2;
      }

      else
      {
        v4[2] = (a2 >> 14) | 0x80;
        if (a2 < 0x200000)
        {
          v4[2] = a2 >> 14;
          v5 = 3;
        }

        else
        {
          v4[3] = (a2 >> 21) | 0x80;
          if (a2 >> 28)
          {
            v4[4] = a2 >> 28;
            v5 = 5;
          }

          else
          {
            v4[3] = a2 >> 21;
            v5 = 4;
          }
        }
      }
    }

    *(this + 8) += v5;
    *(this + 16) -= v5;
  }

  return this;
}

uint64_t google::protobuf::io::CodedOutputStream::WriteVarint64(uint64_t this, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(this + 16) >= 10)
  {
    v2 = *(this + 8);
    v3 = a2 >> 28;
    if (HIBYTE(a2))
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        v2[9] = -127;
        v4 = 10;
      }

      else
      {
        v4 = 9;
      }

      v2[8] = HIBYTE(a2) | 0x80;
    }

    else
    {
      if (!v3)
      {
        if (!(a2 >> 14))
        {
          if (a2 < 0x80)
          {
            v4 = 1;
LABEL_27:
            *v2 = a2 | 0x80;
            v2[v4 - 1] &= ~0x80u;
            *(this + 8) += v4;
            *(this + 16) -= v4;
            return this;
          }

          v4 = 2;
LABEL_26:
          v2[1] = (a2 >> 7) | 0x80;
          goto LABEL_27;
        }

        if (a2 < 0x200000)
        {
          v4 = 3;
          goto LABEL_25;
        }

        v4 = 4;
LABEL_24:
        v2[3] = (a2 >> 21) | 0x80;
LABEL_25:
        v2[2] = (a2 >> 14) | 0x80;
        goto LABEL_26;
      }

      if (!(v3 >> 14))
      {
        if (v3 < 0x80)
        {
          v4 = 5;
LABEL_23:
          v2[4] = v3 | 0x80;
          goto LABEL_24;
        }

        v4 = 6;
LABEL_22:
        v2[5] = (a2 >> 35) | 0x80;
        goto LABEL_23;
      }

      if (v3 < 0x200000)
      {
        v4 = 7;
        goto LABEL_21;
      }

      v4 = 8;
    }

    v2[7] = (a2 >> 49) | 0x80;
LABEL_21:
    v2[6] = (a2 >> 42) | 0x80;
    goto LABEL_22;
  }

  if (a2 < 0x80)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      __src[v5++] = a2 | 0x80;
      v6 = a2 >> 14;
      a2 >>= 7;
    }

    while (v6);
  }

  __src[v5] = a2;
  return google::protobuf::io::CodedOutputStream::WriteRaw(this, __src, v5 + 1);
}

uint64_t google::protobuf::io::CodedOutputStream::VarintSize32Fallback(google::protobuf::io::CodedOutputStream *this)
{
  if (this >> 28)
  {
    v1 = 5;
  }

  else
  {
    v1 = 4;
  }

  if (this >= 0x200000)
  {
    v2 = v1;
  }

  else
  {
    v2 = 3;
  }

  if (this >= 0x4000)
  {
    v3 = v2;
  }

  else
  {
    v3 = 2;
  }

  if (this >= 0x80)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

uint64_t google::protobuf::io::CodedOutputStream::VarintSize64(unint64_t this)
{
  if ((this & 0x8000000000000000) == 0)
  {
    v1 = 9;
  }

  else
  {
    v1 = 10;
  }

  if (HIBYTE(this))
  {
    v2 = v1;
  }

  else
  {
    v2 = 8;
  }

  if (this >> 49)
  {
    v3 = v2;
  }

  else
  {
    v3 = 7;
  }

  if (this >> 42)
  {
    v4 = v3;
  }

  else
  {
    v4 = 6;
  }

  if (this >> 28)
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  if (this >= 0x200000)
  {
    v6 = v5;
  }

  else
  {
    v6 = 3;
  }

  if (this >= 0x4000)
  {
    v7 = v6;
  }

  else
  {
    v7 = 2;
  }

  if (this >= 0x80)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (this >> 35)
  {
    return v4;
  }

  else
  {
    return v8;
  }
}

void sub_214EEA3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose((v56 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__55(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214EEA808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EEB8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  a11 = &a18;
  std::vector<std::pair<TopoIDRange,NSAttributedString * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&a11);

  _Unwind_Resume(a1);
}

void std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__assign_with_size[abi:ne200100]<std::pair<TopoIDRange,NSDictionary * {__strong}>*,std::pair<TopoIDRange,NSDictionary * {__strong}>*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__vdeallocate(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - v8;
  if (a4 <= (v12 - v8) >> 5)
  {
    while (v6 != a3)
    {
      std::pair<TopoIDRange,NSDictionary * {__strong}>::operator=[abi:ne200100](v8, v6);
      v6 += 32;
      v8 += 32;
    }

    std::vector<std::pair<TopoIDRange,NSAttributedString * {__strong}>>::__base_destruct_at_end[abi:ne200100](a1, v8);
  }

  else
  {
    if (v12 != v8)
    {
      v14 = v12 - v8;
      v15 = a2;
      do
      {
        std::pair<TopoIDRange,NSDictionary * {__strong}>::operator=[abi:ne200100](v8, v15);
        v15 += 32;
        v8 += 32;
        v14 -= 32;
      }

      while (v14);
      v12 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::pair<TopoIDRange,NSDictionary * {__strong}>*,std::pair<TopoIDRange,NSDictionary * {__strong}>*,std::pair<TopoIDRange,NSDictionary * {__strong}>*>(a1, v6 + v13, a3, v12);
  }
}

void std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::pair<TopoIDRange,NSAttributedString * {__strong}>>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>>(a1, a2);
  }

  std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::pair<TopoIDRange,NSDictionary * {__strong}>*,std::pair<TopoIDRange,NSDictionary * {__strong}>*,std::pair<TopoIDRange,NSDictionary * {__strong}>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v7 = a4;
  }

  else
  {
    v6 = a2;
    v7 = v12;
    do
    {
      *v4 = *v6;
      *(v4 + 8) = *(v6 + 8);
      *(v4 + 16) = *(v6 + 16);
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v7 += 32;
      v4 = v7;
    }

    while (v6 != a3);
    v12 = v7;
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::pair<TopoIDRange,NSDictionary * {__strong}>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v7;
}

uint64_t std::pair<TopoIDRange,NSDictionary * {__strong}>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  objc_storeStrong((a1 + 24), *(a2 + 24));
  return a1;
}

void sub_214EED2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EEE6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__56(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214EF4DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EF51D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EF5694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_214EF5AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EF7554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EF8138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EF8D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EF9CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EFA22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_214EFCB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__57(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214EFCD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EFD208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214EFDEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214EFED38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214F01CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x216063B80](v10, 0x1093C4020A6E6BFLL);

  _Unwind_Resume(a1);
}

void sub_214F033D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F037CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F03D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__59(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t google::protobuf::internal::StringTypeHandlerBase::Delete(uint64_t result)
{
  if (result)
  {
    if (*(result + 23) < 0)
    {
      operator delete(*result);
    }

    JUMPOUT(0x216063B80);
  }

  return result;
}

BOOL google::protobuf::internal::WireFormatLite::SkipField(google::protobuf::internal::WireFormatLite *this, google::protobuf::io::CodedInputStream *a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = a2;
  LittleEndian64Fallback = 0;
  v8 = a2 & 7;
  if (v8 <= 1)
  {
    if ((a2 & 7) == 0)
    {
      __p.__r_.__value_.__r.__words[0] = 0;
      v17 = *(this + 1);
      if (v17 >= *(this + 2) || (*v17 & 0x8000000000000000) != 0)
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &__p))
        {
          return 0;
        }
      }

      else
      {
        __p.__r_.__value_.__r.__words[0] = *v17;
        *(this + 1) = v17 + 1;
      }

      google::protobuf::io::CodedOutputStream::WriteVarint32(a3, v5);
      google::protobuf::io::CodedOutputStream::WriteVarint64(a3, __p.__r_.__value_.__r.__words[0]);
      return 1;
    }

    if (v8 == 1)
    {
      __p.__r_.__value_.__r.__words[0] = 0;
      LittleEndian64Fallback = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &__p);
      if (LittleEndian64Fallback)
      {
        google::protobuf::io::CodedOutputStream::WriteVarint32(a3, v5);
        google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a3, __p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    if (v8 != 2)
    {
      if (v8 != 3)
      {
        if (v8 == 5)
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
          LittleEndian64Fallback = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &__p);
          if (LittleEndian64Fallback)
          {
            google::protobuf::io::CodedOutputStream::WriteVarint32(a3, v5);
            google::protobuf::io::CodedOutputStream::WriteLittleEndian32(a3, __p.__r_.__value_.__l.__data_);
          }
        }

        return LittleEndian64Fallback;
      }

      google::protobuf::io::CodedOutputStream::WriteVarint32(a3, a2);
      v12 = *(this + 14);
      v13 = *(this + 15);
      *(this + 14) = v12 + 1;
      if (v12 < v13 && google::protobuf::internal::WireFormatLite::SkipMessage(this, a3, v10, v11))
      {
        v14 = *(this + 14);
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v16 < 0 == v15)
        {
          *(this + 14) = v16;
        }

        return *(this + 8) == (v5 & 0xFFFFFFF8 | 4);
      }

      return 0;
    }

    LODWORD(__n) = 0;
    v9 = *(this + 1);
    if (v9 >= *(this + 2) || *v9 < 0)
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &__n))
      {
        return 0;
      }
    }

    else
    {
      LODWORD(__n) = *v9;
      *(this + 1) = v9 + 1;
    }

    google::protobuf::io::CodedOutputStream::WriteVarint32(a3, v5);
    google::protobuf::io::CodedOutputStream::WriteVarint32(a3, __n);
    memset(&__p, 0, sizeof(__p));
    LittleEndian64Fallback = google::protobuf::io::CodedInputStream::ReadString(this, &__p, __n);
    if (LittleEndian64Fallback)
    {
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
        v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = __p.__r_.__value_.__r.__words[1];
      }

      google::protobuf::io::CodedOutputStream::WriteRaw(a3, p_p, v19);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return LittleEndian64Fallback;
}

void sub_214F047A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL google::protobuf::internal::WireFormatLite::SkipMessage(google::protobuf::internal::WireFormatLite *this, google::protobuf::io::CodedInputStream *a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  do
  {
    v6 = *(this + 1);
    if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v6 + 1;
    }

    v8 = TagFallback == 0;
    if (!TagFallback)
    {
      break;
    }

    if ((TagFallback & 7) == 4)
    {
      google::protobuf::io::CodedOutputStream::WriteVarint32(a2, TagFallback);
      return 1;
    }
  }

  while ((google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a2, a4) & 1) != 0);
  return v8;
}

uint64_t google::protobuf::internal::WireFormatLite::WriteInt32(google::protobuf::internal::WireFormatLite *this, signed int a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(a3, 8 * this);
  if (a2 < 0)
  {

    return google::protobuf::io::CodedOutputStream::WriteVarint64(a3, a2);
  }

  else
  {

    return google::protobuf::io::CodedOutputStream::WriteVarint32(a3, a2);
  }
}

uint64_t google::protobuf::internal::WireFormatLite::WriteInt64(google::protobuf::internal::WireFormatLite *this, unint64_t a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(a3, 8 * this);

  return google::protobuf::io::CodedOutputStream::WriteVarint64(a3, a2);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteUInt32(google::protobuf::internal::WireFormatLite *this, unsigned int a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(a3, 8 * this);

  return google::protobuf::io::CodedOutputStream::WriteVarint32(a3, a2);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteSInt64(google::protobuf::internal::WireFormatLite *this, uint64_t a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(a3, 8 * this);

  return google::protobuf::io::CodedOutputStream::WriteVarint64(a3, (2 * a2) ^ (a2 >> 63));
}

uint64_t google::protobuf::internal::WireFormatLite::WriteFloat(google::protobuf::internal::WireFormatLite *this, google::protobuf::io::CodedOutputStream *a2, float a3, google::protobuf::io::CodedOutputStream *a4)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(a2, (8 * this) | 5);

  return google::protobuf::io::CodedOutputStream::WriteLittleEndian32(a2, SLODWORD(a3));
}

uint64_t google::protobuf::internal::WireFormatLite::WriteDouble(google::protobuf::internal::WireFormatLite *this, google::protobuf::io::CodedOutputStream *a2, double a3, google::protobuf::io::CodedOutputStream *a4)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(a2, (8 * this) | 1);

  return google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a2, *&a3);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteString(int a1, uint64_t a2, google::protobuf::io::CodedOutputStream *this)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(this, (8 * a1) | 2);
  v5 = *(a2 + 23);
  if (v5 < 0 && *(a2 + 8) >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/wire_format_lite.cc", 377);
    v6 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: value.size() <= kint32max: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v6);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    LOBYTE(v5) = *(a2 + 23);
  }

  if ((v5 & 0x80u) == 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a2 + 8);
  }

  google::protobuf::io::CodedOutputStream::WriteVarint32(this, v7);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(this, v9, v10);
}

void sub_214F04B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(int a1, uint64_t a2, google::protobuf::io::CodedOutputStream *this)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(this, (8 * a1) | 2);
  v5 = *(a2 + 23);
  if (v5 < 0 && *(a2 + 8) >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/wire_format_lite.cc", 386);
    v6 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: value.size() <= kint32max: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v6);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    LOBYTE(v5) = *(a2 + 23);
  }

  if ((v5 & 0x80u) == 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a2 + 8);
  }

  google::protobuf::io::CodedOutputStream::WriteVarint32(this, v7);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  if (*(this + 25) == 1)
  {
    return google::protobuf::io::CodedOutputStream::WriteAliasedRaw(this, v9, v10);
  }

  else
  {
    return google::protobuf::io::CodedOutputStream::WriteRaw(this, v9, v10);
  }
}

void sub_214F04C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteBytes(int a1, uint64_t a2, google::protobuf::io::CodedOutputStream *this)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(this, (8 * a1) | 2);
  v5 = *(a2 + 23);
  if (v5 < 0 && *(a2 + 8) >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/wire_format_lite.cc", 393);
    v6 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: value.size() <= kint32max: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v6);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    LOBYTE(v5) = *(a2 + 23);
  }

  if ((v5 & 0x80u) == 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a2 + 8);
  }

  google::protobuf::io::CodedOutputStream::WriteVarint32(this, v7);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(this, v9, v10);
}

void sub_214F04D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(int a1, uint64_t a2, google::protobuf::io::CodedOutputStream *this)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(this, (8 * a1) | 2);
  v5 = *(a2 + 23);
  if (v5 < 0 && *(a2 + 8) >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/wire_format_lite.cc", 401);
    v6 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: value.size() <= kint32max: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v6);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    LOBYTE(v5) = *(a2 + 23);
  }

  if ((v5 & 0x80u) == 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a2 + 8);
  }

  google::protobuf::io::CodedOutputStream::WriteVarint32(this, v7);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  if (*(this + 25) == 1)
  {
    return google::protobuf::io::CodedOutputStream::WriteAliasedRaw(this, v9, v10);
  }

  else
  {
    return google::protobuf::io::CodedOutputStream::WriteRaw(this, v9, v10);
  }
}

void sub_214F04E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::WireFormatLite::WriteMessage(int a1, uint64_t a2, google::protobuf::io::CodedOutputStream *this)
{
  google::protobuf::io::CodedOutputStream::WriteVarint32(this, (8 * a1) | 2);
  v5 = (*(*a2 + 96))(a2);
  google::protobuf::io::CodedOutputStream::WriteVarint32(this, v5);
  v6 = *(*a2 + 80);

  return v6(a2, this);
}

void sub_214F05228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214F05C68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  topotext::Font::~Font(va);
  _Unwind_Resume(a1);
}

void sub_214F05F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x216063B80](v10, 0x1093C4020A6E6BFLL);

  _Unwind_Resume(a1);
}

void sub_214F063E0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_214F066D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_214F09A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__61(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214F0B994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__62(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214F0BEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F0C5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F0C9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F0CD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__63(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214F0D120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NSStringFromICFilterSelectionJoinOperator(void *a1)
{
  if (a1 == 1)
  {
    v1 = @"FILTER_OPERATOR_ANY";
    v2 = @"any";
  }

  else
  {
    if (a1)
    {
      goto LABEL_6;
    }

    v1 = @"FILTER_OPERATOR_ALL";
    v2 = @"all";
  }

  a1 = __ICLocalizedFrameworkStringWithDefaultValue_impl(v1, v2, 0, 1);
LABEL_6:

  return a1;
}

uint64_t CRDT::protobuf_ShutdownFile_crframework_2eproto(CRDT *this)
{
  if (CRDT::ObjectID::default_instance_)
  {
    (*(*CRDT::ObjectID::default_instance_ + 8))(CRDT::ObjectID::default_instance_);
  }

  if (CRDT::Timestamp::default_instance_)
  {
    (*(*CRDT::Timestamp::default_instance_ + 8))(CRDT::Timestamp::default_instance_);
  }

  if (CRDT::RegisterLatest::default_instance_)
  {
    (*(*CRDT::RegisterLatest::default_instance_ + 8))(CRDT::RegisterLatest::default_instance_);
  }

  if (CRDT::VectorTimestamp::default_instance_)
  {
    (*(*CRDT::VectorTimestamp::default_instance_ + 8))(CRDT::VectorTimestamp::default_instance_);
  }

  if (CRDT::VectorTimestamp_Element::default_instance_)
  {
    (*(*CRDT::VectorTimestamp_Element::default_instance_ + 8))(CRDT::VectorTimestamp_Element::default_instance_);
  }

  if (CRDT::Dictionary::default_instance_)
  {
    (*(*CRDT::Dictionary::default_instance_ + 8))(CRDT::Dictionary::default_instance_);
  }

  if (CRDT::Dictionary_Element::default_instance_)
  {
    (*(*CRDT::Dictionary_Element::default_instance_ + 8))(CRDT::Dictionary_Element::default_instance_);
  }

  if (CRDT::Index::default_instance_)
  {
    (*(*CRDT::Index::default_instance_ + 8))(CRDT::Index::default_instance_);
  }

  if (CRDT::Index_Element::default_instance_)
  {
    (*(*CRDT::Index_Element::default_instance_ + 8))(CRDT::Index_Element::default_instance_);
  }

  if (CRDT::OneOf::default_instance_)
  {
    (*(*CRDT::OneOf::default_instance_ + 8))(CRDT::OneOf::default_instance_);
  }

  if (CRDT::OneOf_Element::default_instance_)
  {
    (*(*CRDT::OneOf_Element::default_instance_ + 8))(CRDT::OneOf_Element::default_instance_);
  }

  if (CRDT::StringArray::default_instance_)
  {
    (*(*CRDT::StringArray::default_instance_ + 8))(CRDT::StringArray::default_instance_);
  }

  if (CRDT::StringArray_ArrayAttachment::default_instance_)
  {
    (*(*CRDT::StringArray_ArrayAttachment::default_instance_ + 8))(CRDT::StringArray_ArrayAttachment::default_instance_);
  }

  if (CRDT::Array::default_instance_)
  {
    (*(*CRDT::Array::default_instance_ + 8))(CRDT::Array::default_instance_);
  }

  if (CRDT::OrderedSet::default_instance_)
  {
    (*(*CRDT::OrderedSet::default_instance_ + 8))(CRDT::OrderedSet::default_instance_);
  }

  if (CRDT::Document::default_instance_)
  {
    (*(*CRDT::Document::default_instance_ + 8))(CRDT::Document::default_instance_);
  }

  if (CRDT::Document_CustomObject::default_instance_)
  {
    (*(*CRDT::Document_CustomObject::default_instance_ + 8))(CRDT::Document_CustomObject::default_instance_);
  }

  if (CRDT::Document_CustomObject_MapEntry::default_instance_)
  {
    (*(*CRDT::Document_CustomObject_MapEntry::default_instance_ + 8))(CRDT::Document_CustomObject_MapEntry::default_instance_);
  }

  result = CRDT::Document_DocObject::default_instance_;
  if (CRDT::Document_DocObject::default_instance_)
  {
    v2 = *(*CRDT::Document_DocObject::default_instance_ + 8);

    return v2();
  }

  return result;
}

void CRDT::protobuf_AddDesc_crframework_2eproto_impl(CRDT *this, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x1E9BF1, 0x1E9BF0, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/crframework.pb.cc", a4);
  topotext::protobuf_AddDesc_topotext_2eproto(v4);
  operator new();
}

double CRDT::Timestamp::Timestamp(CRDT::Timestamp *this)
{
  *this = &unk_28270CF70;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CRDT::RegisterLatest::RegisterLatest(CRDT::RegisterLatest *this)
{
  *this = &unk_28270CFE8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CRDT::VectorTimestamp::VectorTimestamp(CRDT::VectorTimestamp *this)
{
  *this = &unk_28270D0D8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

double CRDT::VectorTimestamp_Element::VectorTimestamp_Element(CRDT::VectorTimestamp_Element *this)
{
  *this = &unk_28270D060;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

double CRDT::Dictionary::Dictionary(CRDT::Dictionary *this)
{
  *this = &unk_28270D1C8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

double CRDT::Dictionary_Element::Dictionary_Element(CRDT::Dictionary_Element *this)
{
  *this = &unk_28270D150;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

double CRDT::Index::Index(CRDT::Index *this)
{
  *this = &unk_28270D2B8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

double CRDT::Index_Element::Index_Element(CRDT::Index_Element *this)
{
  *this = &unk_28270D240;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CRDT::OneOf::OneOf(CRDT::OneOf *this)
{
  *this = &unk_28270D3A8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

double CRDT::OneOf_Element::OneOf_Element(CRDT::OneOf_Element *this)
{
  *this = &unk_28270D330;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CRDT::StringArray::StringArray(CRDT::StringArray *this)
{
  *this = &unk_28270D498;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

double CRDT::Array::Array(CRDT::Array *this)
{
  *this = &unk_28270D510;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CRDT::OrderedSet::OrderedSet(CRDT::OrderedSet *this)
{
  *this = &unk_28270D588;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CRDT::Document_CustomObject::Document_CustomObject(CRDT::Document_CustomObject *this)
{
  *this = &unk_28270D678;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

double CRDT::Document_CustomObject_MapEntry::Document_CustomObject_MapEntry(CRDT::Document_CustomObject_MapEntry *this)
{
  *this = &unk_28270D600;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

double CRDT::Document_DocObject::Document_DocObject(CRDT::Document_DocObject *this)
{
  *this = &unk_28270D6F0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void CRDT::protobuf_AddDesc_crframework_2eproto(CRDT *this)
{
  v1 = CRDT::protobuf_AddDesc_crframework_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = &unk_28270A628;
    v2[1] = CRDT::protobuf_AddDesc_crframework_2eproto_impl;
    v3 = 0;
    google::protobuf::GoogleOnceInitImpl(&CRDT::protobuf_AddDesc_crframework_2eproto_once_, v2);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_214F103C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

CRDT::ObjectID *CRDT::ObjectID::ObjectID(CRDT::ObjectID *this)
{
  *this = &unk_28270CEF8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CRDT::ObjectID::SharedCtor(this);
  return this;
}

void sub_214F1042C(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void CRDT::ObjectID::SharedCtor(CRDT::ObjectID *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v3[0] = &unk_28270A628;
    v3[1] = google::protobuf::internal::InitEmptyString;
    v4 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v3);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 4) = 0;
  *(this + 12) = 0;
}

void sub_214F104F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

std::string *CRDT::ObjectID::MergeFrom(CRDT::ObjectID *this, const CRDT::ObjectID *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/crframework.pb.cc", 447);
    v4 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v19, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 12);
  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      v8 = *(a2 + 5);
      if (*(this + 12) != 1)
      {
        CRDT::ObjectID::clear_contents(this);
        v9 = 1;
LABEL_22:
        *(this + 12) = v9;
      }
    }

    else
    {
      if (v5 != 2)
      {
        if (v5 == 3)
        {
          v6 = *(a2 + 5);
          if (*(this + 12) != 3)
          {
            CRDT::ObjectID::clear_contents(this);
            *(this + 12) = 3;
          }

          *(this + 5) = v6;
        }

        goto LABEL_28;
      }

      v8 = *(a2 + 5);
      if (*(this + 12) != 2)
      {
        CRDT::ObjectID::clear_contents(this);
        v9 = 2;
        goto LABEL_22;
      }
    }

    *(this + 5) = v8;
    goto LABEL_28;
  }

  switch(v5)
  {
    case 4:
      v10 = *(a2 + 5);
      if (*(this + 12) == 4)
      {
LABEL_25:
        std::string::operator=(*(this + 5), v10);
        break;
      }

      CRDT::ObjectID::clear_contents(this);
      v11 = 4;
LABEL_27:
      *(this + 12) = v11;
      operator new();
    case 5:
      v10 = *(a2 + 5);
      if (*(this + 12) == 5)
      {
        goto LABEL_25;
      }

      CRDT::ObjectID::clear_contents(this);
      v11 = 5;
      goto LABEL_27;
    case 6:
      v7 = *(a2 + 10);
      if (*(this + 12) != 6)
      {
        CRDT::ObjectID::clear_contents(this);
        *(this + 12) = 6;
      }

      *(this + 10) = v7;
      break;
  }

LABEL_28:
  v14 = *(a2 + 1);
  v13 = a2 + 8;
  v12 = v14;
  v15 = v13[23];
  if (v15 >= 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = v12;
  }

  if (v15 >= 0)
  {
    v17 = v13[23];
  }

  else
  {
    v17 = *(v13 + 1);
  }

  return std::string::append((this + 8), v16, v17);
}

void sub_214F106F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::ObjectID::~ObjectID(CRDT::ObjectID *this)
{
  v1 = this;
  *this = &unk_28270CEF8;
  if (*(this + 12))
  {
    this = CRDT::ObjectID::clear_contents(this);
  }

  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 1));
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
}

{
  CRDT::ObjectID::~ObjectID(this);

  JUMPOUT(0x216063B80);
}

uint64_t CRDT::ObjectID::clear_contents(uint64_t this)
{
  v1 = this;
  v2 = *(this + 48);
  if (v2 == 5 || v2 == 4)
  {
    v3 = *(this + 40);
    if (v3)
    {
      if (*(v3 + 23) < 0)
      {
        operator delete(*v3);
      }

      this = MEMORY[0x216063B80](v3, 0x1012C40EC159624);
    }
  }

  *(v1 + 48) = 0;
  return this;
}

uint64_t CRDT::ObjectID::Clear(CRDT::ObjectID *this)
{
  result = CRDT::ObjectID::clear_contents(this);
  *(this + 8) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return result;
}

uint64_t CRDT::ObjectID::MergePartialFromCodedStream(CRDT::ObjectID *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v31, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v30, v31);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
        {
          TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
          if ((v7 & 0x100000000) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          *(a2 + 8) = v6;
          *(a2 + 1) = v5 + 1;
          v7 = v6 | 0x100000000;
        }

        v10 = v7 >> 3;
        if (v7 >> 3 > 3)
        {
          break;
        }

        switch(v10)
        {
          case 1u:
            if (v7 != 8)
            {
              goto LABEL_33;
            }

            CRDT::ObjectID::clear_contents(this);
            v32 = 0;
            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v12 >= v11 || (v13 = *v12, (v13 & 0x8000000000000000) != 0))
            {
              if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v32))
              {
                goto LABEL_75;
              }

              v13 = v32;
              v14 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v14 = v12 + 1;
              *(a2 + 1) = v14;
            }

            *(this + 5) = -(v13 & 1) ^ (v13 >> 1);
            *(this + 12) = 1;
            if (v14 < v11 && *v14 == 16)
            {
              *(a2 + 1) = v14 + 1;
              goto LABEL_42;
            }

            break;
          case 2u:
            if (v7 != 16)
            {
              goto LABEL_33;
            }

LABEL_42:
            CRDT::ObjectID::clear_contents(this);
            v16 = *(a2 + 1);
            v15 = *(a2 + 2);
            if (v16 >= v15 || (v17 = *v16, v17 < 0))
            {
              if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5))
              {
                goto LABEL_75;
              }

              v18 = *(a2 + 1);
              v15 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v17;
              v18 = v16 + 1;
              *(a2 + 1) = v18;
            }

            *(this + 12) = 2;
            if (v18 < v15 && *v18 == 25)
            {
              *(a2 + 1) = v18 + 1;
              goto LABEL_50;
            }

            break;
          case 3u:
            if (v7 == 25)
            {
LABEL_50:
              CRDT::ObjectID::clear_contents(this);
              v32 = 0;
              if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v32))
              {
                goto LABEL_75;
              }

              *(this + 5) = v32;
              *(this + 12) = 3;
              v19 = *(a2 + 1);
              if (v19 < *(a2 + 2) && *v19 == 34)
              {
                *(a2 + 1) = v19 + 1;
LABEL_54:
                CRDT::ObjectID::clear_contents(this);
                *(this + 12) = 4;
                operator new();
              }
            }

            else
            {
LABEL_33:
              if (!v7 || (v7 & 7) == 4)
              {
                goto LABEL_76;
              }

LABEL_35:
              if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v30, v4))
              {
                goto LABEL_75;
              }
            }

            break;
          default:
            goto LABEL_6;
        }
      }

      if (v10 != 4)
      {
        break;
      }

      if (v7 != 34)
      {
        goto LABEL_33;
      }

      if (*(this + 12) != 4)
      {
        goto LABEL_54;
      }

      if (!google::protobuf::internal::WireFormatLite::ReadString(a2, *(this + 5)))
      {
LABEL_75:
        v28 = 0;
        goto LABEL_77;
      }

      v21 = *(a2 + 1);
      if (v21 < *(a2 + 2) && *v21 == 42)
      {
        *(a2 + 1) = v21 + 1;
LABEL_59:
        if (*(this + 12) != 5)
        {
          CRDT::ObjectID::clear_contents(this);
          *(this + 12) = 5;
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, *(this + 5)))
        {
          goto LABEL_75;
        }

        v23 = *(a2 + 1);
        if (v23 < *(a2 + 2) && *v23 == 48)
        {
          *(a2 + 1) = v23 + 1;
          goto LABEL_66;
        }
      }
    }

    if (v10 == 5)
    {
      if (v7 != 42)
      {
        goto LABEL_33;
      }

      goto LABEL_59;
    }

    if (v10 != 6)
    {
      break;
    }

    if (v7 != 48)
    {
      goto LABEL_33;
    }

LABEL_66:
    CRDT::ObjectID::clear_contents(this);
    v25 = *(a2 + 1);
    v24 = *(a2 + 2);
    if (v25 >= v24 || (v26 = *v25, v26 < 0))
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10))
      {
        goto LABEL_75;
      }

      v27 = *(a2 + 1);
      v24 = *(a2 + 2);
    }

    else
    {
      *(this + 10) = v26;
      v27 = v25 + 1;
      *(a2 + 1) = v27;
    }

    *(this + 12) = 6;
    if (v27 == v24 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v28 = 1;
      *(a2 + 36) = 1;
      goto LABEL_77;
    }
  }

LABEL_6:
  if (v7)
  {
    v9 = (v7 & 7) == 4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    goto LABEL_35;
  }

LABEL_76:
  v28 = 1;
LABEL_77:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v30);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v31);
  return v28;
}

void sub_214F10CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::ObjectID::SerializeWithCachedSizes(CRDT::ObjectID *this, google::protobuf::io::CodedOutputStream *a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 12);
  if (v6 == 1)
  {
    google::protobuf::internal::WireFormatLite::WriteSInt64(1, *(this + 5), a2, a4);
    v6 = *(this + 12);
  }

  if (v6 == 2)
  {
    google::protobuf::internal::WireFormatLite::WriteInt64(2, *(this + 5), a2, a4);
    v6 = *(this + 12);
  }

  if (v6 == 3)
  {
    google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(this + 5), a3);
    v6 = *(this + 12);
  }

  if (v6 == 4)
  {
    google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(4, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 5)
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(5, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 6)
  {
    google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(this + 10), a2, a4);
  }

  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t CRDT::ObjectID::ByteSize(CRDT::ObjectID *this)
{
  v2 = *(this + 12);
  if (v2 <= 3)
  {
    if (v2 == 1)
    {
      v11 = (2 * *(this + 5)) ^ (*(this + 5) >> 63);
    }

    else
    {
      if (v2 != 2)
      {
        if (v2 == 3)
        {
          v3 = 9;
        }

        else
        {
          v3 = 0;
        }

        goto LABEL_25;
      }

      v11 = *(this + 5);
    }

    v13 = google::protobuf::io::CodedOutputStream::VarintSize64(v11);
LABEL_24:
    v3 = v13 + 1;
    goto LABEL_25;
  }

  if (v2 != 4 && v2 != 5)
  {
    if (v2 != 6)
    {
      v3 = 0;
      goto LABEL_25;
    }

    v4 = *(this + 10);
    if (v4 < 0x80)
    {
      v3 = 2;
      goto LABEL_25;
    }

    v13 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
    goto LABEL_24;
  }

  v5 = *(this + 5);
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
    v12 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v12 + 1;
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v3 = v10 + v6;
LABEL_25:
  v14 = *(this + 31);
  if (v14 < 0)
  {
    v14 = *(this + 2);
  }

  result = (v3 + v14);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::ObjectID::CheckTypeAndMergeFrom(CRDT::ObjectID *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return CRDT::ObjectID::MergeFrom(this, lpsrc);
}

std::string *CRDT::Timestamp::MergeFrom(CRDT::Timestamp *this, const CRDT::Timestamp *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/crframework.pb.cc", 706);
    v4 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 5);
      *(this + 8) |= 1u;
      *(this + 5) = v6;
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v7 = *(a2 + 6);
      *(this + 8) |= 2u;
      *(this + 6) = v7;
    }
  }

  v10 = *(a2 + 1);
  v9 = a2 + 8;
  v8 = v10;
  v11 = v9[23];
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = v9[23];
  }

  else
  {
    v13 = *(v9 + 1);
  }

  return std::string::append((this + 8), v12, v13);
}

void sub_214F1107C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::Timestamp::~Timestamp(void **this)
{
  *this = &unk_28270CF70;
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  CRDT::Timestamp::~Timestamp(this);

  JUMPOUT(0x216063B80);
}

uint64_t CRDT::Timestamp::Clear(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t CRDT::Timestamp::MergePartialFromCodedStream(CRDT::Timestamp *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v20, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v19, v20);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 >> 3 == 2)
      {
        break;
      }

      if (v7 >> 3 == 1)
      {
        if (v7 != 8)
        {
          goto LABEL_19;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5))
          {
            goto LABEL_38;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 8) |= 1u;
        if (v12 < v9 && *v12 == 16)
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
          goto LABEL_28;
        }
      }

      else
      {
LABEL_12:
        if (v7)
        {
          v13 = (v7 & 7) == 4;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
LABEL_37:
          v17 = 1;
          goto LABEL_39;
        }

LABEL_16:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v19, v4))
        {
          goto LABEL_38;
        }
      }
    }

    if (v7 != 16)
    {
LABEL_19:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_37;
      }

      goto LABEL_16;
    }

    v14 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_28:
    v21 = 0;
    if (v14 < v9)
    {
      v15 = *v14;
      if ((v15 & 0x8000000000000000) == 0)
      {
        v16 = v14 + 1;
        *(a2 + 1) = v16;
        goto LABEL_33;
      }
    }

    if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v21))
    {
      break;
    }

    v15 = v21;
    v16 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_33:
    *(this + 6) = v15;
    *(this + 8) |= 2u;
    if (v16 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v17 = 1;
      *(a2 + 36) = 1;
      goto LABEL_39;
    }
  }

LABEL_38:
  v17 = 0;
LABEL_39:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v19);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v20);
  return v17;
}

void sub_214F113B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::Timestamp::SerializeWithCachedSizes(CRDT::Timestamp *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteInt64(1, *(this + 5), a2, a4);
    v6 = *(this + 8);
  }

  if ((v6 & 2) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteInt64(2, *(this + 6), a2, a4);
  }

  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t CRDT::Timestamp::ByteSize(CRDT::Timestamp *this)
{
  if (!*(this + 32))
  {
    v2 = 0;
    goto LABEL_8;
  }

  if (*(this + 32))
  {
    v2 = google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
    if ((*(this + 8) & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  if ((*(this + 32) & 2) != 0)
  {
LABEL_7:
    v2 += google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
  }

LABEL_8:
  v3 = *(this + 31);
  if (v3 < 0)
  {
    v3 = *(this + 2);
  }

  result = (v2 + v3);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::Timestamp::CheckTypeAndMergeFrom(CRDT::Timestamp *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return CRDT::Timestamp::MergeFrom(this, lpsrc);
}

std::string *CRDT::RegisterLatest::MergeFrom(CRDT::RegisterLatest *this, const CRDT::RegisterLatest *a2)
{
  v3 = this;
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/crframework.pb.cc", 949);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      *(v3 + 8) |= 1u;
      v6 = *(v3 + 5);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 5);
      if (!v7)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(this);
        v7 = *(CRDT::RegisterLatest::default_instance_ + 40);
      }

      this = CRDT::Timestamp::MergeFrom(v6, v7);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 8) |= 2u;
      v8 = *(v3 + 6);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 6);
      if (!v9)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(this);
        v9 = *(CRDT::RegisterLatest::default_instance_ + 48);
      }

      CRDT::ObjectID::MergeFrom(v8, v9);
    }
  }

  v12 = *(a2 + 1);
  v11 = a2 + 8;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = v11[23];
  }

  else
  {
    v15 = *(v11 + 1);
  }

  return std::string::append((v3 + 8), v14, v15);
}

void CRDT::RegisterLatest::~RegisterLatest(void **this)
{
  *this = &unk_28270CFE8;
  CRDT::RegisterLatest::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  CRDT::RegisterLatest::~RegisterLatest(this);

  JUMPOUT(0x216063B80);
}

void CRDT::RegisterLatest::SharedDtor(CRDT::RegisterLatest *this)
{
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (CRDT::RegisterLatest::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 6);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CRDT::RegisterLatest::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v3 = *(this + 40);
      if (v3)
      {
        *(v3 + 40) = 0;
        *(v3 + 48) = 0;
        *(v3 + 32) = 0;
        if (*(v3 + 31) < 0)
        {
          **(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        else
        {
          *(v3 + 8) = 0;
          *(v3 + 31) = 0;
        }
      }
    }

    if ((*(this + 32) & 2) != 0)
    {
      v4 = *(this + 48);
      if (v4)
      {
        this = CRDT::ObjectID::clear_contents(*(this + 48));
        *(v4 + 32) = 0;
        if (*(v4 + 31) < 0)
        {
          **(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        else
        {
          *(v4 + 8) = 0;
          *(v4 + 31) = 0;
        }
      }
    }
  }

  *(v1 + 32) = 0;
  if (*(v1 + 31) < 0)
  {
    **(v1 + 8) = 0;
    *(v1 + 16) = 0;
  }

  else
  {
    *(v1 + 8) = 0;
    *(v1 + 31) = 0;
  }

  return this;
}

uint64_t CRDT::RegisterLatest::MergePartialFromCodedStream(CRDT::RegisterLatest *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v29, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v28, v29);
  while (1)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
    {
      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
      if ((v7 & 0x100000000) == 0)
      {
        break;
      }
    }

    else
    {
      *(a2 + 8) = v6;
      *(a2 + 1) = v5 + 1;
      v7 = v6 | 0x100000000;
    }

    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        goto LABEL_33;
      }

      goto LABEL_21;
    }

    if (v7 >> 3 != 1)
    {
      break;
    }

    if (v7 == 10)
    {
      *(this + 8) |= 1u;
      v9 = *(this + 5);
      if (!v9)
      {
        operator new();
      }

      v30 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
        {
          goto LABEL_48;
        }
      }

      else
      {
        v30 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v12 = *(a2 + 14);
      v13 = *(a2 + 15);
      *(a2 + 14) = v12 + 1;
      if (v12 >= v13)
      {
        goto LABEL_48;
      }

      v14 = google::protobuf::io::CodedInputStream::PushLimit(a2, v30);
      if (!CRDT::Timestamp::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
      {
        goto LABEL_48;
      }

      google::protobuf::io::CodedInputStream::PopLimit(a2, v14);
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
LABEL_33:
        *(this + 8) |= 2u;
        v19 = *(this + 6);
        if (!v19)
        {
          operator new();
        }

        v30 = 0;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
          {
            goto LABEL_48;
          }
        }

        else
        {
          v30 = *v20;
          *(a2 + 1) = v20 + 1;
        }

        v21 = *(a2 + 14);
        v22 = *(a2 + 15);
        *(a2 + 14) = v21 + 1;
        if (v21 >= v22 || (v23 = google::protobuf::io::CodedInputStream::PushLimit(a2, v30), !CRDT::ObjectID::MergePartialFromCodedStream(v19, a2)) || *(a2 + 36) != 1)
        {
LABEL_48:
          v26 = 0;
          goto LABEL_50;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v23);
        v24 = *(a2 + 14);
        v16 = __OFSUB__(v24, 1);
        v25 = v24 - 1;
        if (v25 < 0 == v16)
        {
          *(a2 + 14) = v25;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          v26 = 1;
          *(a2 + 36) = 1;
          goto LABEL_50;
        }
      }
    }

    else
    {
LABEL_21:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_49;
      }

LABEL_18:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v28, v4))
      {
        goto LABEL_48;
      }
    }
  }

  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_49:
  v26 = 1;
LABEL_50:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v28);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v29);
  return v26;
}

void sub_214F11CE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x216063B80](v2, 0x10B3C407D90225ELL);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va1);
  _Unwind_Resume(a1);
}

uint64_t CRDT::RegisterLatest::SerializeWithCachedSizes(CRDT::RegisterLatest *this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 5);
    if (!v5)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v5 = *(CRDT::RegisterLatest::default_instance_ + 40);
    }

    this = google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2);
    v4 = *(v3 + 8);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 6);
    if (!v6)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v6 = *(CRDT::RegisterLatest::default_instance_ + 48);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(2, v6, a2);
  }

  v7 = *(v3 + 31);
  if (v7 < 0)
  {
    v8 = *(v3 + 1);
    v7 = *(v3 + 2);
  }

  else
  {
    v8 = v3 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t CRDT::RegisterLatest::ByteSize(CRDT::RegisterLatest *this)
{
  if (!*(this + 32))
  {
    v2 = 0;
    goto LABEL_18;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = *(this + 5);
  if (!v3)
  {
    CRDT::protobuf_AddDesc_crframework_2eproto(0);
    v3 = *(CRDT::RegisterLatest::default_instance_ + 40);
  }

  v4 = CRDT::Timestamp::ByteSize(v3);
  v5 = v4;
  if (v4 >= 0x80)
  {
    v6 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
  }

  else
  {
    v6 = 1;
  }

  v2 = v5 + v6 + 1;
  if ((*(this + 8) & 2) != 0)
  {
LABEL_12:
    v7 = *(this + 6);
    if (!v7)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(0);
      v7 = *(CRDT::RegisterLatest::default_instance_ + 48);
    }

    v8 = CRDT::ObjectID::ByteSize(v7);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    }

    else
    {
      v10 = 1;
    }

    v2 += v9 + v10 + 1;
  }

LABEL_18:
  v11 = *(this + 31);
  if (v11 < 0)
  {
    v11 = *(this + 2);
  }

  result = (v2 + v11);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::RegisterLatest::CheckTypeAndMergeFrom(CRDT::RegisterLatest *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return CRDT::RegisterLatest::MergeFrom(this, lpsrc);
}

std::string *CRDT::VectorTimestamp_Element::MergeFrom(CRDT::VectorTimestamp_Element *this, const CRDT::VectorTimestamp_Element *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/crframework.pb.cc", 1216);
    v4 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v14 = *(a2 + 5);
      *(this + 8) |= 1u;
      *(this + 5) = v14;
      v5 = *(a2 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v15 = *(a2 + 6);
    *(this + 8) |= 2u;
    *(this + 6) = v15;
    if ((*(a2 + 8) & 4) != 0)
    {
LABEL_7:
      v6 = *(a2 + 7);
      *(this + 8) |= 4u;
      *(this + 7) = v6;
    }
  }

LABEL_8:
  v9 = *(a2 + 1);
  v8 = a2 + 8;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  return std::string::append((this + 8), v11, v12);
}

void sub_214F12050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::VectorTimestamp_Element::~VectorTimestamp_Element(void **this)
{
  *this = &unk_28270D060;
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  CRDT::VectorTimestamp_Element::~VectorTimestamp_Element(this);

  JUMPOUT(0x216063B80);
}

uint64_t CRDT::VectorTimestamp_Element::Clear(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t CRDT::VectorTimestamp_Element::MergePartialFromCodedStream(CRDT::VectorTimestamp_Element *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v24, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v23, v24);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      v9 = v7 >> 3;
      if (v7 >> 3 == 3)
      {
        break;
      }

      if (v9 == 2)
      {
        if (v7 == 16)
        {
          v15 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_32;
        }

LABEL_22:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_49;
        }

        goto LABEL_24;
      }

      if (v9 == 1)
      {
        if (v7 != 8)
        {
          goto LABEL_22;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 >= v10 || (v12 = *v11, v12 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5))
          {
            goto LABEL_50;
          }

          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 8) |= 1u;
        if (v13 < v10 && *v13 == 16)
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
LABEL_32:
          if (v15 >= v10 || (v17 = *v15, v17 < 0))
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6))
            {
              goto LABEL_50;
            }

            v18 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v17;
            v18 = v15 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 8) |= 2u;
          if (v18 < v10 && *v18 == 24)
          {
            v16 = v18 + 1;
            *(a2 + 1) = v16;
            goto LABEL_40;
          }
        }
      }

      else
      {
LABEL_13:
        if (v7)
        {
          v14 = (v7 & 7) == 4;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
LABEL_49:
          v21 = 1;
          goto LABEL_51;
        }

LABEL_24:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v23, v4))
        {
          goto LABEL_50;
        }
      }
    }

    if (v7 != 24)
    {
      goto LABEL_22;
    }

    v16 = *(a2 + 1);
    v10 = *(a2 + 2);
LABEL_40:
    if (v16 < v10)
    {
      v19 = *v16;
      if ((v19 & 0x8000000000000000) == 0)
      {
        *(this + 7) = v19;
        v20 = v16 + 1;
        *(a2 + 1) = v20;
        goto LABEL_45;
      }
    }

    if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7))
    {
      break;
    }

    v20 = *(a2 + 1);
    v10 = *(a2 + 2);
LABEL_45:
    *(this + 8) |= 4u;
    if (v20 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v21 = 1;
      *(a2 + 36) = 1;
      goto LABEL_51;
    }
  }

LABEL_50:
  v21 = 0;
LABEL_51:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v23);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v24);
  return v21;
}

void sub_214F123FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::VectorTimestamp_Element::SerializeWithCachedSizes(CRDT::VectorTimestamp_Element *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteInt64(1, *(this + 5), a2, a4);
    v6 = *(this + 8);
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

  google::protobuf::internal::WireFormatLite::WriteInt64(2, *(this + 6), a2, a4);
  if ((*(this + 8) & 4) != 0)
  {
LABEL_4:
    google::protobuf::internal::WireFormatLite::WriteInt64(3, *(this + 7), a2, a4);
  }

LABEL_5:
  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t CRDT::VectorTimestamp_Element::ByteSize(CRDT::VectorTimestamp_Element *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (*(this + 32))
  {
    v3 = google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((*(this + 32) & 2) != 0)
  {
LABEL_7:
    v3 += google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
    v2 = *(this + 8);
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 += google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
  }

LABEL_10:
  v4 = *(this + 31);
  if (v4 < 0)
  {
    v4 = *(this + 2);
  }

  result = (v3 + v4);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::VectorTimestamp_Element::CheckTypeAndMergeFrom(CRDT::VectorTimestamp_Element *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return CRDT::VectorTimestamp_Element::MergeFrom(this, lpsrc);
}

std::string *CRDT::VectorTimestamp::MergeFrom(CRDT::VectorTimestamp *this, const CRDT::VectorTimestamp *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/crframework.pb.cc", 1414);
    v4 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::VectorTimestamp_Element>::TypeHandler>((this + 40), (a2 + 40));
  v7 = *(a2 + 1);
  v6 = a2 + 8;
  v5 = v7;
  v8 = v6[23];
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = v6[23];
  }

  else
  {
    v10 = *(v6 + 1);
  }

  return std::string::append((this + 8), v9, v10);
}

void sub_214F12690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::VectorTimestamp::~VectorTimestamp(CRDT::VectorTimestamp *this)
{
  *this = &unk_28270D0D8;
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 5);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  CRDT::VectorTimestamp::~VectorTimestamp(this);

  JUMPOUT(0x216063B80);
}

uint64_t CRDT::VectorTimestamp::Clear(CRDT::VectorTimestamp *this)
{
  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 40);
  *(this + 8) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return result;
}

uint64_t CRDT::VectorTimestamp::MergePartialFromCodedStream(CRDT::VectorTimestamp *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v26, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v25, v26);
  do
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          break;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 != 10)
      {
        break;
      }

      while (1)
      {
        v9 = *(this + 13);
        v10 = *(this + 12);
        if (v10 >= v9)
        {
          if (v9 == *(this + 14))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 40, v9 + 1);
          }

          operator new();
        }

        v11 = *(this + 5);
        *(this + 12) = v10 + 1;
        v12 = *(v11 + 8 * v10);
        v27 = 0;
        v13 = *(a2 + 1);
        if (v13 >= *(a2 + 2) || *v13 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
          {
            goto LABEL_37;
          }
        }

        else
        {
          v27 = *v13;
          *(a2 + 1) = v13 + 1;
        }

        v14 = *(a2 + 14);
        v15 = *(a2 + 15);
        *(a2 + 14) = v14 + 1;
        if (v14 >= v15 || (v16 = google::protobuf::io::CodedInputStream::PushLimit(a2, v27), !CRDT::VectorTimestamp_Element::MergePartialFromCodedStream(v12, a2)) || *(a2 + 36) != 1)
        {
LABEL_37:
          v23 = 0;
          goto LABEL_38;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v16);
        v17 = *(a2 + 14);
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v19 < 0 == v18)
        {
          *(a2 + 14) = v19;
        }

        v20 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v20 >= v21 || *v20 != 10)
        {
          break;
        }

        *(a2 + 1) = v20 + 1;
      }

      if (v20 == v21 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        v23 = 1;
        *(a2 + 36) = 1;
        goto LABEL_38;
      }
    }

    if (v7)
    {
      v22 = (v7 & 7) == 4;
    }

    else
    {
      v22 = 1;
    }

    v23 = v22;
  }

  while (!v22 && google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v25, v4));
LABEL_38:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v25);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v26);
  return v23;
}

void sub_214F12A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::VectorTimestamp::SerializeWithCachedSizes(CRDT::VectorTimestamp *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 12) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::VectorTimestamp_Element>::TypeHandler>(this + 40, v4);
      google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2);
      ++v4;
    }

    while (v4 < *(this + 12));
  }

  v6 = *(this + 31);
  if (v6 < 0)
  {
    v7 = *(this + 1);
    v6 = *(this + 2);
  }

  else
  {
    v7 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v7, v6);
}

uint64_t CRDT::VectorTimestamp::ByteSize(CRDT::VectorTimestamp *this)
{
  v2 = *(this + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::VectorTimestamp_Element>::TypeHandler>(this + 40, v3);
      v5 = CRDT::VectorTimestamp_Element::ByteSize(v4);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
      }

      else
      {
        v7 = 1;
      }

      v2 += v6 + v7;
      ++v3;
    }

    while (v3 < *(this + 12));
  }

  v8 = *(this + 31);
  if (v8 < 0)
  {
    v8 = *(this + 2);
  }

  result = (v2 + v8);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::VectorTimestamp::CheckTypeAndMergeFrom(CRDT::VectorTimestamp *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return CRDT::VectorTimestamp::MergeFrom(this, lpsrc);
}

std::string *CRDT::Dictionary_Element::MergeFrom(CRDT::Dictionary_Element *this, const CRDT::Dictionary_Element *a2)
{
  v3 = this;
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/crframework.pb.cc", 1725);
    v4 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v21, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      *(v3 + 8) |= 1u;
      v6 = *(v3 + 5);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 5);
      if (!v7)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(this);
        v7 = *(CRDT::Dictionary_Element::default_instance_ + 40);
      }

      this = CRDT::ObjectID::MergeFrom(v6, v7);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 8) |= 2u;
      v8 = *(v3 + 6);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 6);
      if (!v9)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(this);
        v9 = *(CRDT::Dictionary_Element::default_instance_ + 48);
      }

      this = CRDT::ObjectID::MergeFrom(v8, v9);
      v5 = *(a2 + 8);
    }

    if ((v5 & 4) != 0)
    {
      *(v3 + 8) |= 4u;
      v10 = *(v3 + 7);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 7);
      if (!v11)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(this);
        v11 = *(CRDT::Dictionary_Element::default_instance_ + 56);
      }

      this = CRDT::VectorTimestamp::MergeFrom(v10, v11);
      v5 = *(a2 + 8);
    }

    if ((v5 & 8) != 0)
    {
      *(v3 + 8) |= 8u;
      v12 = *(v3 + 8);
      if (!v12)
      {
        operator new();
      }

      v13 = *(a2 + 8);
      if (!v13)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(this);
        v13 = *(CRDT::Dictionary_Element::default_instance_ + 64);
      }

      CRDT::RegisterLatest::MergeFrom(v12, v13);
    }
  }

  v16 = *(a2 + 1);
  v15 = a2 + 8;
  v14 = v16;
  v17 = v15[23];
  if (v17 >= 0)
  {
    v18 = v15;
  }

  else
  {
    v18 = v14;
  }

  if (v17 >= 0)
  {
    v19 = v15[23];
  }

  else
  {
    v19 = *(v15 + 1);
  }

  return std::string::append((v3 + 8), v18, v19);
}

void CRDT::Dictionary_Element::~Dictionary_Element(void **this)
{
  *this = &unk_28270D150;
  CRDT::Dictionary_Element::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  CRDT::Dictionary_Element::~Dictionary_Element(this);

  JUMPOUT(0x216063B80);
}

void CRDT::Dictionary_Element::SharedDtor(CRDT::Dictionary_Element *this)
{
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (CRDT::Dictionary_Element::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 6);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 7);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 8);
    if (v5)
    {
      v6 = *(*v5 + 8);

      v6();
    }
  }
}

uint64_t CRDT::Dictionary_Element::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      v3 = *(this + 40);
      if (v3)
      {
        this = CRDT::ObjectID::clear_contents(*(this + 40));
        *(v3 + 32) = 0;
        if (*(v3 + 31) < 0)
        {
          **(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        else
        {
          *(v3 + 8) = 0;
          *(v3 + 31) = 0;
        }
      }
    }

    if ((*(v1 + 32) & 2) != 0)
    {
      v4 = *(v1 + 48);
      if (v4)
      {
        this = CRDT::ObjectID::clear_contents(*(v1 + 48));
        *(v4 + 32) = 0;
        if (*(v4 + 31) < 0)
        {
          **(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        else
        {
          *(v4 + 8) = 0;
          *(v4 + 31) = 0;
        }
      }
    }

    if ((*(v1 + 32) & 4) != 0)
    {
      v5 = *(v1 + 56);
      if (v5)
      {
        this = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(v5 + 40);
        *(v5 + 32) = 0;
        if (*(v5 + 31) < 0)
        {
          **(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        else
        {
          *(v5 + 8) = 0;
          *(v5 + 31) = 0;
        }
      }
    }

    if ((*(v1 + 32) & 8) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        this = CRDT::RegisterLatest::Clear(this);
      }
    }
  }

  *(v1 + 32) = 0;
  if (*(v1 + 31) < 0)
  {
    **(v1 + 8) = 0;
    *(v1 + 16) = 0;
  }

  else
  {
    *(v1 + 8) = 0;
    *(v1 + 31) = 0;
  }

  return this;
}

uint64_t CRDT::Dictionary_Element::MergePartialFromCodedStream(CRDT::Dictionary_Element *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v46, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v45, v46);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
        {
          TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
          if ((v7 & 0x100000000) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          *(a2 + 8) = v6;
          *(a2 + 1) = v5 + 1;
          v7 = v6 | 0x100000000;
        }

        v9 = v7 >> 3;
        if (v7 >> 3 > 2)
        {
          break;
        }

        if (v9 == 1)
        {
          if (v7 != 10)
          {
            goto LABEL_28;
          }

          *(this + 8) |= 1u;
          v11 = *(this + 5);
          if (!v11)
          {
            operator new();
          }

          v47 = 0;
          v12 = *(a2 + 1);
          if (v12 >= *(a2 + 2) || *v12 < 0)
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
            {
              goto LABEL_84;
            }
          }

          else
          {
            v47 = *v12;
            *(a2 + 1) = v12 + 1;
          }

          v13 = *(a2 + 14);
          v14 = *(a2 + 15);
          *(a2 + 14) = v13 + 1;
          if (v13 >= v14)
          {
            goto LABEL_84;
          }

          v15 = google::protobuf::io::CodedInputStream::PushLimit(a2, v47);
          if (!CRDT::ObjectID::MergePartialFromCodedStream(v11, a2) || *(a2 + 36) != 1)
          {
            goto LABEL_84;
          }

          google::protobuf::io::CodedInputStream::PopLimit(a2, v15);
          v16 = *(a2 + 14);
          v17 = __OFSUB__(v16, 1);
          v18 = v16 - 1;
          if (v18 < 0 == v17)
          {
            *(a2 + 14) = v18;
          }

          v19 = *(a2 + 1);
          if (v19 < *(a2 + 2) && *v19 == 18)
          {
            *(a2 + 1) = v19 + 1;
LABEL_41:
            *(this + 8) |= 2u;
            v20 = *(this + 6);
            if (!v20)
            {
              operator new();
            }

            v47 = 0;
            v21 = *(a2 + 1);
            if (v21 >= *(a2 + 2) || *v21 < 0)
            {
              if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
              {
                goto LABEL_84;
              }
            }

            else
            {
              v47 = *v21;
              *(a2 + 1) = v21 + 1;
            }

            v22 = *(a2 + 14);
            v23 = *(a2 + 15);
            *(a2 + 14) = v22 + 1;
            if (v22 >= v23)
            {
              goto LABEL_84;
            }

            v24 = google::protobuf::io::CodedInputStream::PushLimit(a2, v47);
            if (!CRDT::ObjectID::MergePartialFromCodedStream(v20, a2) || *(a2 + 36) != 1)
            {
              goto LABEL_84;
            }

            google::protobuf::io::CodedInputStream::PopLimit(a2, v24);
            v25 = *(a2 + 14);
            v17 = __OFSUB__(v25, 1);
            v26 = v25 - 1;
            if (v26 < 0 == v17)
            {
              *(a2 + 14) = v26;
            }

            v27 = *(a2 + 1);
            if (v27 < *(a2 + 2) && *v27 == 26)
            {
              *(a2 + 1) = v27 + 1;
              goto LABEL_55;
            }
          }
        }

        else
        {
          if (v9 != 2)
          {
            goto LABEL_15;
          }

          if (v7 == 18)
          {
            goto LABEL_41;
          }

LABEL_28:
          if (!v7 || (v7 & 7) == 4)
          {
            goto LABEL_85;
          }

LABEL_30:
          if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v45, v4))
          {
            goto LABEL_84;
          }
        }
      }

      if (v9 != 3)
      {
        break;
      }

      if (v7 != 26)
      {
        goto LABEL_28;
      }

LABEL_55:
      *(this + 8) |= 4u;
      v28 = *(this + 7);
      if (!v28)
      {
        operator new();
      }

      v47 = 0;
      v29 = *(a2 + 1);
      if (v29 >= *(a2 + 2) || *v29 < 0)
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
        {
          goto LABEL_84;
        }
      }

      else
      {
        v47 = *v29;
        *(a2 + 1) = v29 + 1;
      }

      v30 = *(a2 + 14);
      v31 = *(a2 + 15);
      *(a2 + 14) = v30 + 1;
      if (v30 >= v31)
      {
        goto LABEL_84;
      }

      v32 = google::protobuf::io::CodedInputStream::PushLimit(a2, v47);
      if (!CRDT::VectorTimestamp::MergePartialFromCodedStream(v28, a2) || *(a2 + 36) != 1)
      {
        goto LABEL_84;
      }

      google::protobuf::io::CodedInputStream::PopLimit(a2, v32);
      v33 = *(a2 + 14);
      v17 = __OFSUB__(v33, 1);
      v34 = v33 - 1;
      if (v34 < 0 == v17)
      {
        *(a2 + 14) = v34;
      }

      v35 = *(a2 + 1);
      if (v35 < *(a2 + 2) && *v35 == 34)
      {
        *(a2 + 1) = v35 + 1;
        goto LABEL_69;
      }
    }

    if (v9 != 4)
    {
      break;
    }

    if (v7 != 34)
    {
      goto LABEL_28;
    }

LABEL_69:
    *(this + 8) |= 8u;
    v36 = *(this + 8);
    if (!v36)
    {
      operator new();
    }

    v47 = 0;
    v37 = *(a2 + 1);
    if (v37 >= *(a2 + 2) || *v37 < 0)
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
      {
        goto LABEL_84;
      }
    }

    else
    {
      v47 = *v37;
      *(a2 + 1) = v37 + 1;
    }

    v38 = *(a2 + 14);
    v39 = *(a2 + 15);
    *(a2 + 14) = v38 + 1;
    if (v38 >= v39 || (v40 = google::protobuf::io::CodedInputStream::PushLimit(a2, v47), !CRDT::RegisterLatest::MergePartialFromCodedStream(v36, a2)) || *(a2 + 36) != 1)
    {
LABEL_84:
      v43 = 0;
      goto LABEL_86;
    }

    google::protobuf::io::CodedInputStream::PopLimit(a2, v40);
    v41 = *(a2 + 14);
    v17 = __OFSUB__(v41, 1);
    v42 = v41 - 1;
    if (v42 < 0 == v17)
    {
      *(a2 + 14) = v42;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v43 = 1;
      *(a2 + 36) = 1;
      goto LABEL_86;
    }
  }

LABEL_15:
  if (v7)
  {
    v10 = (v7 & 7) == 4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_85:
  v43 = 1;
LABEL_86:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v45);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v46);
  return v43;
}