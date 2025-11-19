void sub_214DB1BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t drawing::Parameters::SerializeWithCachedSizes(drawing::Parameters *this, google::protobuf::io::CodedOutputStream *a2, google::protobuf::io::CodedOutputStream *a3)
{
  v5 = *(this + 8);
  if (v5)
  {
    google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 10), a3);
    v5 = *(this + 8);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(this + 11), a3);
  if ((*(this + 8) & 4) != 0)
  {
LABEL_4:
    google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(this + 12), a3);
  }

LABEL_5:
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

uint64_t drawing::Parameters::ByteSize(drawing::Parameters *this)
{
  v1 = *(this + 32);
  v2 = (v1 << 31 >> 31) & 5;
  if ((v1 & 2) != 0)
  {
    v2 += 5;
  }

  if ((v1 & 4) != 0)
  {
    v2 += 5;
  }

  if (*(this + 32))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 31);
  if (v4 < 0)
  {
    v4 = *(this + 2);
  }

  v5 = (v3 + v4);
  *(this + 9) = v5;
  return v5;
}

std::string *drawing::Parameters::CheckTypeAndMergeFrom(drawing::Parameters *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return drawing::Parameters::MergeFrom(this, lpsrc);
}

void drawing::Color::~Color(void **this)
{
  *this = &unk_28270A180;
  drawing::protobuf_AddDesc_drawing_2eproto(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  drawing::Color::~Color(this);

  JUMPOUT(0x216063B80);
}

uint64_t drawing::Color::MergePartialFromCodedStream(drawing::Color *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v17, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v16, v17);
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
        if (v7 != 13)
        {
          goto LABEL_31;
        }

        v18 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18))
        {
          goto LABEL_44;
        }

        *(this + 10) = v18;
        *(this + 8) |= 1u;
        v11 = *(a2 + 1);
        if (v11 < *(a2 + 2) && *v11 == 21)
        {
          *(a2 + 1) = v11 + 1;
LABEL_26:
          v18 = 0;
          if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18))
          {
            goto LABEL_44;
          }

          *(this + 11) = v18;
          *(this + 8) |= 2u;
          v12 = *(a2 + 1);
          if (v12 < *(a2 + 2) && *v12 == 29)
          {
            *(a2 + 1) = v12 + 1;
LABEL_35:
            v18 = 0;
            if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18))
            {
              goto LABEL_44;
            }

            *(this + 12) = v18;
            *(this + 8) |= 4u;
            v13 = *(a2 + 1);
            if (v13 < *(a2 + 2) && *v13 == 37)
            {
              *(a2 + 1) = v13 + 1;
              goto LABEL_39;
            }
          }
        }
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_15;
        }

        if (v7 == 21)
        {
          goto LABEL_26;
        }

LABEL_31:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_45;
        }

LABEL_33:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v16, v4))
        {
          goto LABEL_44;
        }
      }
    }

    if (v9 == 3)
    {
      if (v7 == 29)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }

    if (v9 != 4)
    {
      break;
    }

    if (v7 != 37)
    {
      goto LABEL_31;
    }

LABEL_39:
    v18 = 0;
    if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18))
    {
LABEL_44:
      v14 = 0;
      goto LABEL_46;
    }

    *(this + 13) = v18;
    *(this + 8) |= 8u;
    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v14 = 1;
      *(a2 + 36) = 1;
      goto LABEL_46;
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
    goto LABEL_33;
  }

LABEL_45:
  v14 = 1;
LABEL_46:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v16);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v17);
  return v14;
}

void sub_214DB2108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t drawing::Color::SerializeWithCachedSizes(drawing::Color *this, google::protobuf::io::CodedOutputStream *a2, google::protobuf::io::CodedOutputStream *a3)
{
  v5 = *(this + 8);
  if (v5)
  {
    google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 10), a3);
    v5 = *(this + 8);
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

  google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(this + 11), a3);
  v5 = *(this + 8);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(this + 12), a3);
  if ((*(this + 8) & 8) != 0)
  {
LABEL_5:
    google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(this + 13), a3);
  }

LABEL_6:
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

uint64_t drawing::Color::ByteSize(drawing::Color *this)
{
  v1 = *(this + 32);
  if (*(this + 32))
  {
    v2 = (v1 << 31 >> 31) & 5;
    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 8) != 0)
    {
      v1 = v2 + 5;
    }

    else
    {
      v1 = v2;
    }
  }

  v3 = *(this + 31);
  if (v3 < 0)
  {
    v3 = *(this + 2);
  }

  v4 = (v1 + v3);
  *(this + 9) = v4;
  return v4;
}

std::string *drawing::Color::CheckTypeAndMergeFrom(drawing::Color *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return drawing::Color::MergeFrom(this, lpsrc);
}

drawing::Rectangle *drawing::Rectangle::Rectangle(drawing::Rectangle *this, const drawing::Rectangle *a2)
{
  *this = &unk_28270A1F8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  drawing::Rectangle::MergeFrom(this, a2);
  return this;
}

void sub_214DB233C(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void drawing::Rectangle::~Rectangle(void **this)
{
  *this = &unk_28270A1F8;
  drawing::protobuf_AddDesc_drawing_2eproto(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  drawing::Rectangle::~Rectangle(this);

  JUMPOUT(0x216063B80);
}

uint64_t drawing::Rectangle::MergePartialFromCodedStream(drawing::Rectangle *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v17, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v16, v17);
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
        if (v7 != 13)
        {
          goto LABEL_31;
        }

        v18 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18))
        {
          goto LABEL_44;
        }

        *(this + 10) = v18;
        *(this + 8) |= 1u;
        v11 = *(a2 + 1);
        if (v11 < *(a2 + 2) && *v11 == 21)
        {
          *(a2 + 1) = v11 + 1;
LABEL_26:
          v18 = 0;
          if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18))
          {
            goto LABEL_44;
          }

          *(this + 11) = v18;
          *(this + 8) |= 2u;
          v12 = *(a2 + 1);
          if (v12 < *(a2 + 2) && *v12 == 29)
          {
            *(a2 + 1) = v12 + 1;
LABEL_35:
            v18 = 0;
            if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18))
            {
              goto LABEL_44;
            }

            *(this + 12) = v18;
            *(this + 8) |= 4u;
            v13 = *(a2 + 1);
            if (v13 < *(a2 + 2) && *v13 == 37)
            {
              *(a2 + 1) = v13 + 1;
              goto LABEL_39;
            }
          }
        }
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_15;
        }

        if (v7 == 21)
        {
          goto LABEL_26;
        }

LABEL_31:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_45;
        }

LABEL_33:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v16, v4))
        {
          goto LABEL_44;
        }
      }
    }

    if (v9 == 3)
    {
      if (v7 == 29)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }

    if (v9 != 4)
    {
      break;
    }

    if (v7 != 37)
    {
      goto LABEL_31;
    }

LABEL_39:
    v18 = 0;
    if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18))
    {
LABEL_44:
      v14 = 0;
      goto LABEL_46;
    }

    *(this + 13) = v18;
    *(this + 8) |= 8u;
    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v14 = 1;
      *(a2 + 36) = 1;
      goto LABEL_46;
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
    goto LABEL_33;
  }

LABEL_45:
  v14 = 1;
LABEL_46:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v16);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v17);
  return v14;
}

void sub_214DB26E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t drawing::Rectangle::SerializeWithCachedSizes(drawing::Rectangle *this, google::protobuf::io::CodedOutputStream *a2, google::protobuf::io::CodedOutputStream *a3)
{
  v5 = *(this + 8);
  if (v5)
  {
    google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 10), a3);
    v5 = *(this + 8);
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

  google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(this + 11), a3);
  v5 = *(this + 8);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(this + 12), a3);
  if ((*(this + 8) & 8) != 0)
  {
LABEL_5:
    google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(this + 13), a3);
  }

LABEL_6:
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

uint64_t drawing::Rectangle::ByteSize(drawing::Rectangle *this)
{
  v1 = *(this + 32);
  if (*(this + 32))
  {
    v2 = (v1 << 31 >> 31) & 5;
    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 8) != 0)
    {
      v1 = v2 + 5;
    }

    else
    {
      v1 = v2;
    }
  }

  v3 = *(this + 31);
  if (v3 < 0)
  {
    v3 = *(this + 2);
  }

  v4 = (v1 + v3);
  *(this + 9) = v4;
  return v4;
}

std::string *drawing::Rectangle::CheckTypeAndMergeFrom(drawing::Rectangle *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return drawing::Rectangle::MergeFrom(this, lpsrc);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<drawing::Command>::TypeHandler>(uint64_t a1, int a2)
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

void sub_214DB29A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<drawing::Point>::TypeHandler>(uint64_t a1, int a2)
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

void sub_214DB2A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<drawing::Command>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
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
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<drawing::Command>::TypeHandler>(a2, v6);
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
      result = drawing::Command::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_214DB2C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<drawing::Point>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
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
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<drawing::Point>::TypeHandler>(a2, v6);
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
      result = drawing::Point::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_214DB2DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_214DB2EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214DB30C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DB32A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DB368C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DB394C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DB3B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DB3EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DB41A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DB4464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DB4694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DB4A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DB4F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DB5178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DB532C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DB54BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DB562C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DB58C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DB5EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  objc_sync_exit(v19);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_214DB6974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DB6EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DB75B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DB829C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x216063B80](v10, 0x10B3C40CCCF3E6ELL);

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::PreviewImage>::TypeHandler>(uint64_t a1, int a2)
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

void sub_214DBE16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *std::vector<std::pair<minIdPathData,TopoSubstring *>>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<minIdPathData,TopoSubstring *>>>(result, a2);
    }

    std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_214DBE734(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<minIdPathData,TopoSubstring *>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<minIdPathData,TopoSubstring *>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::pair<minIdPathData,TopoSubstring *>>::__emplace_back_slow_path<std::pair<minIdPathData,TopoSubstring *>>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *v3 = v4;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 32) = *(a2 + 32);
    result = v3 + 40;
  }

  *(a1 + 8) = result;
  return result;
}

void traverseUnorderedSimple(uint64_t a1, void *a2)
{
  v14 = a1;
  v2 = a2;
  memset(v12, 0, sizeof(v12));
  v13 = 1065353216;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  std::deque<TopoSubstring *>::push_back(v10, &v14);
  std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v12, &v14);
  for (i = *(&v11 + 1); *(&v11 + 1); i = *(&v11 + 1))
  {
    v4 = i - 1;
    v5 = *(*(*(&v10[0] + 1) + (((v11 + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v11 + v4) & 0x1FF));
    *(&v11 + 1) = v4;
    std::deque<TopoSubstring *>::__maybe_remove_back_spare[abi:ne200100](v10, 1);
    v2[2](v2, v5, &v9);
    if (v9)
    {
      break;
    }

    v7 = *(v5 + 48);
    v6 = *(v5 + 56);
    while (v7 != v6)
    {
      v8 = *v7;
      if (!std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(v12, &v8))
      {
        std::deque<TopoSubstring *>::push_back(v10, &v8);
        std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v12, &v8);
      }

      ++v7;
    }
  }

  std::deque<TopoSubstring *>::~deque[abi:ne200100](v10);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v12);
}

void sub_214DBE8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::deque<TopoSubstring *>::~deque[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(va1);

  _Unwind_Resume(a1);
}

NSUUID *updateTopoID(const TopoID *a1, const TopoIDRange *a2, const TopoIDRange *a3)
{
  v6 = a1->replicaID;
  if ([(NSUUID *)a1->replicaID isEqual:a2->var0.replicaID])
  {
    clock = a1->clock;
    v8 = a2->var0.clock;
    if (clock >= v8 && clock < a2->var1 + v8)
    {
      v9 = a3->var0.replicaID;

      return v9;
    }
  }

  return v6;
}

void updateTopoIDRange(TopoIDRange *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (([(NSUUID *)a1->var0.replicaID isEqual:*a2]& 1) != 0)
  {
    v8 = a1->var0.replicaID;
    v9 = a1->var1 + a1->var0.clock;
    location = v8;
    v39 = v9;
    if (TopoID::operator<=(&location, a2))
    {

LABEL_8:
      std::vector<TopoIDRange>::push_back[abi:ne200100](a4, a1);
      return;
    }

    v10 = *a2;
    v11 = *(a2 + 4) + *(a2 + 2);
    v35 = v10;
    v36 = v11;
    v12 = TopoID::operator>=(a1, &v35);

    if (v12)
    {
      goto LABEL_8;
    }

    clock = a1->var0.clock;
    v14 = *(a2 + 2);
    if (v14 > clock)
    {
      TopoIDRange::splitPairAt(a1, v14 - clock, &location);
      v15 = *a2;
      v16 = *(a2 + 4) + *(a2 + 2);
      v17 = v41;
      v18 = v17;
      if (v16 >= v43 + v42)
      {
        if (v16 != v43 + v42)
        {

          goto LABEL_24;
        }

        v28 = [v15 TTCompare:v17];

        if (v28 != -1)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      v19 = *(a2 + 4);
      v35 = v41;
      v36 = v42 + v19;
      v37 = v43 - v19;
      v43 = v19;
      std::vector<TopoIDRange>::push_back[abi:ne200100](a4, &v35);

LABEL_24:
      v30 = *a3;
      v31 = *(a3 + 8);
      objc_storeStrong(&v41, v30);
      v42 = v31;
      std::vector<TopoIDRange>::push_back[abi:ne200100](a4, &location);
      std::vector<TopoIDRange>::push_back[abi:ne200100](a4, &v41);
      goto LABEL_25;
    }

    v20 = a1->var0.replicaID;
    v21 = a1->var1 + a1->var0.clock;
    v22 = *a2;
    v23 = v22;
    v24 = *(a2 + 4) + *(a2 + 2);
    if (v21 > v24)
    {

LABEL_15:
      v25 = *(a2 + 4) + *(a2 + 2) - a1->var0.clock;
      v26 = *a2;
      TopoIDRange::splitPairAt(a1, v25, &location);

      v27 = a1->var0.clock + *(a3 + 8) - *(a2 + 2);
      objc_storeStrong(&location, *a3);
      v39 = v27;
      std::vector<TopoIDRange>::push_back[abi:ne200100](a4, &location);
      std::vector<TopoIDRange>::push_back[abi:ne200100](a4, &v41);
LABEL_25:

LABEL_26:
      return;
    }

    if (v21 == v24)
    {
      v29 = [(NSUUID *)v20 TTCompare:v22];

      if (v29 == 1)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    v32 = a1->var0.replicaID;
    var1 = a1->var1;
    v33 = *a3;
    v34 = a1->var0.clock + *(a3 + 8) - *(a2 + 2);
    location = v33;

    v39 = v34;
    std::vector<TopoIDRange>::push_back[abi:ne200100](a4, &location);
    goto LABEL_26;
  }

  std::vector<TopoIDRange>::push_back[abi:ne200100](a4, a1);
}

uint64_t std::vector<TopoIDRange>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<TopoIDRange>::__emplace_back_slow_path<TopoIDRange const&>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *(v4 + 16) = *(a2 + 16);
    result = v4 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

BOOL TopoID::operator<=(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 2);
  if (v4 == v5)
  {
    if ([*a1 isEqual:*a2])
    {
      return 1;
    }

    v4 = *(a1 + 8);
    v5 = *(a2 + 2);
  }

  if (v4 < v5)
  {
    return 1;
  }

  return v4 == v5 && [*a1 TTCompare:*a2] == -1;
}

BOOL TopoID::operator>=(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 2);
  if (v4 == v5)
  {
    if ([*a1 isEqual:*a2])
    {
      return 1;
    }

    v4 = *(a1 + 8);
    v5 = *(a2 + 2);
  }

  if (v4 > v5)
  {
    return 1;
  }

  return v4 == v5 && [*a1 TTCompare:*a2] == 1;
}

void TopoIDRange::splitPairAt(TopoIDRange *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = this->var0.replicaID;
  clock = this->var0.clock;
  v8 = this->var0.replicaID;
  v9 = this->var0.clock + a2;
  v10 = this->var1 - a2;
  *a3 = v6;
  *(a3 + 8) = clock;
  *(a3 + 16) = a2;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  v11 = v6;
}

void sub_214DBF6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_214DC01D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_214DC07A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  *(result + 56) = *(a2 + 56);
  *(result + 64) = *(a2 + 64);
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__22(uint64_t a1)
{
}

{
}

char *std::vector<TopoSubstring *>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring *>>(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    std::__split_buffer<TopoSubstring *>::emplace_back<TopoSubstring * const&>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_214DC0A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_214DC0AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<TopoIDRange>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_214DC0B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_214DC1368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void *std::vector<_NSRange>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(result, a2);
    }

    std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_214DC1C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void std::vector<TopoSubstring *>::shrink_to_fit(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring *>>(a1, v4 >> 3);
    }

    v6 = 0;
    if (v3 >> 3)
    {
      v7 = 8 * (v4 >> 3);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_214DC277C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::~__hash_table(va);

  _Unwind_Resume(a1);
}

void sub_214DC2C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  TopoSubstring::~TopoSubstring(&a12);

  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v36 - 176), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__43(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__44(uint64_t a1)
{
}

{
}

void sub_214DC4360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&a19);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&a25);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&a31);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&a37);
  std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::~__hash_table(v39 - 176);

  _Unwind_Resume(a1);
}

void std::vector<TopoSubstring *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<TopoSubstring *>::__append(a1, a2 - v2);
  }
}

void sub_214DC4984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::~__hash_table(v13 + 48);
  _Block_object_dispose((v14 - 128), 8);

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<minIdPathData,TopoSubstring *>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<minIdPathData,TopoSubstring *>>,std::pair<minIdPathData,TopoSubstring *>*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *v6 = 0;
      *a4 = v7;
      *(a4 + 8) = *(v6 + 2);
      *(a4 + 16) = *(v6 + 1);
      *(a4 + 32) = v6[4];
      v6 += 5;
      a4 += 40;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v8 = *v5;
      v5 += 5;
    }
  }
}

uint64_t std::__split_buffer<std::pair<minIdPathData,TopoSubstring *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::pair<minIdPathData,TopoSubstring *>>::__emplace_back_slow_path<std::pair<minIdPathData,TopoSubstring *>>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<minIdPathData,TopoSubstring *>>>(a1, v6);
  }

  v7 = 40 * v2;
  v15 = 0;
  v16 = 40 * v2;
  *(&v17 + 1) = 0;
  v8 = *a2;
  *a2 = 0;
  *v7 = v8;
  *(v7 + 8) = *(a2 + 2);
  *(v7 + 16) = *(a2 + 1);
  *(v7 + 32) = a2[4];
  *&v17 = 40 * v2 + 40;
  v9 = *(a1 + 8);
  v10 = 40 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<minIdPathData,TopoSubstring *>>,std::pair<minIdPathData,TopoSubstring *>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<std::pair<minIdPathData,TopoSubstring *>>::~__split_buffer(&v15);
  return v14;
}

void sub_214DC5210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<minIdPathData,TopoSubstring *>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<TopoIDRange>::__emplace_back_slow_path<TopoIDRange const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TopoIDRange>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = *(a2 + 16);
  *&v16 = v7 + 24;
  v8 = *(a1 + 8);
  v9 = v7 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TopoIDRange>,TopoIDRange*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<TopoIDRange>::~__split_buffer(&v14);
  return v13;
}

void sub_214DC534C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TopoIDRange>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TopoIDRange>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TopoIDRange>,TopoIDRange*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *v6 = 0;
      *a4 = v7;
      *(a4 + 8) = *(v6 + 2);
      *(a4 + 16) = *(v6 + 4);
      v6 += 3;
      a4 += 24;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v8 = *v5;
      v5 += 3;
    }
  }
}

uint64_t std::__split_buffer<TopoIDRange>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void TopoSubstring::~TopoSubstring(TopoSubstring *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }
}

uint64_t std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange const*,_NSRange const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<_NSRange>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_214DC551C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<_NSRange>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(a1, a2);
  }

  std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

id std::vector<std::pair<TopoID,TopoID>>::__construct_one_at_end[abi:ne200100]<std::pair<TopoID,TopoID> const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(v4 + 16) = result;
  *(v4 + 24) = *(a2 + 24);
  *(a1 + 8) = v4 + 32;
  return result;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TopoID,TopoID>>,std::reverse_iterator<std::pair<TopoID,TopoID>*>,std::reverse_iterator<std::pair<TopoID,TopoID>*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v7 = *(v6 - 32);
      v6 -= 32;
    }

    while (v6 != a5);
  }
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[ICTTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *,0>(__n128 *a1, __n128 *a2, unint64_t *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a1->n128_u64[0] >= a2->n128_u64[0])
  {
    if (v6 < v7)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a1->n128_u64[0] < a2->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v6 < v7)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a2->n128_u64[0] < *a3)
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a3 < *a4)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a2->n128_u64[0] < *a3)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a1->n128_u64[0] < a2->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a4 < *a5)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a3 < *a4)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (a2->n128_u64[0] < *a3)
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a1->n128_u64[0] < a2->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[ICTTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v9 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = v9;
      if (*a1 < v7)
      {
        if (v7 >= v8)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (*(a1 + 16) >= v4->n128_u64[0])
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v7 >= v8)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*a1 < *(a1 + 16))
      {
        v42 = *a1;
        *a1 = *v6;
        *v6 = v42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[ICTTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    if (*a1 >= v17)
    {
      if (v17 < v19)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v21 < v6->n128_u64[0])
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v17 >= v19)
    {
      v39 = *a1;
      *a1 = *v6;
      *v6 = v39;
      if (*(a1 + 16) >= v19)
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (v18->n128_u64[0] >= v20->n128_u64[0])
    {
      return 1;
    }

    v40 = *v18;
    *v18 = *v20;
    *v20 = v40;
    if (v6->n128_u64[0] >= v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v6;
    *v6 = *v18;
    *v18 = v41;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*a1 >= v5)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (*a1 >= v14)
  {
    if (v14 < v12)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v15 < v13->n128_u64[0])
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v14 >= v12)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (*(a1 + 16) >= v12)
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *v30;
    v34 = v11->n128_u64[0];
    v35 = v30->n128_u64[0];
    if (v34 < v30->n128_u64[0])
    {
      v36 = v31;
      while (1)
      {
        *(a1 + v36 + 48) = *(a1 + v36 + 32);
        if (v36 == -32)
        {
          break;
        }

        v37 = *(a1 + v36 + 16);
        v36 -= 16;
        if (v37 >= v35)
        {
          v38 = (a1 + v36 + 48);
          goto LABEL_41;
        }
      }

      v38 = a1;
LABEL_41:
      *v38 = v33;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

void *std::vector<TopoSubstring *>::__assign_with_size[abi:ne200100]<TopoSubstring **,TopoSubstring **>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TopoSubstring *>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *std::__split_buffer<TopoSubstring *>::emplace_back<TopoSubstring * const&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::vector<TopoIDRange>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        v4 -= 24;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<TopoSubstring *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void *std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<TopoSubstring *,unsigned long>,void *> *>>(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = a2[3];
        v8[2] = a2[2];
        v8[3] = v9;
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__node_insert_multi(a1, v8);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v11 = *v8;
        operator delete(v8);
        v8 = v11;
      }

      while (v11);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__emplace_multi<std::pair<TopoSubstring * const,unsigned long> const&>();
  }
}

void sub_214DC6B38(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__node_insert_multi(void *a1, void *a2)
{
  v4 = a2 + 2;
  v5 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) >> 47));
  a2[1] = v6;
  inserted = std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__node_insert_multi_prepare(a1, v6, v4);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

void *std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_214DC70DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(__n128 *a1, __n128 *a2, unint64_t a3, void **a4, uint64_t a5)
{
  v90 = a2;
  v91 = a1;
  if (a3 < 2)
  {
    return;
  }

  if (a3 == 2)
  {
    v6 = a2[-3].n128_u64[1];
    v90 = (a2 - 40);
    v86 = v6;
    v7 = a2[-2].n128_u32[0];
    v8 = a2[-2].n128_u64[1];
    v9 = a1->n128_u64[0];
    v10 = v9;
    v11 = a1[1].n128_u64[0];
    if (v8 == v11)
    {
      v18 = a1->n128_u32[2];
      if (v7 >= v18)
      {
        if (v7 != v18)
        {

          return;
        }

        v69 = [v86 TTCompare:v9];

        if (v69 != -1)
        {
          return;
        }
      }

      else
      {
      }
    }

    else
    {

      if (v8 >= v11)
      {
        return;
      }
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *> &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *> &>(&v91, &v90);
    return;
  }

  if (a3 <= 0)
  {
    if (a1 == a2)
    {
      return;
    }

    v19 = &a1[2].n128_u64[1];
    if (&a1[2].n128_i8[8] == a2)
    {
      return;
    }

    v82 = 0;
    v20 = a1;
    while (1)
    {
      v21 = v20;
      v81 = v19;
      v22 = *v19;
      v23 = v20[3].n128_u32[0];
      v24 = v20[3].n128_u64[1];
      v25 = v20->n128_u64[0];
      v26 = v25;
      v28 = v21 + 1;
      v27 = v21[1].n128_u64[0];
      if (v24 == v27)
      {
        v29 = v21->n128_u32[2];
        if (v23 >= v29)
        {
          if (v23 != v29)
          {

            v20 = v81;
            goto LABEL_42;
          }

          v45 = [v22 TTCompare:v25];

          v20 = v81;
          if (v45 != -1)
          {
            goto LABEL_42;
          }
        }

        else
        {

          v20 = v81;
        }
      }

      else
      {

        v20 = v81;
        if (v24 >= v27)
        {
          goto LABEL_42;
        }
      }

      v87 = v20->n128_u64[0];
      v20->n128_u64[0] = 0;
      v84 = v21[3].n128_u32[0];
      v30 = v21[3].n128_u64[1];
      v31 = v21[4].n128_u64[0];
      v32 = v21[4].n128_u64[1];
      v33 = v21->n128_u64[0];
      v21->n128_u64[0] = 0;
      v20->n128_u64[0] = v33;
      v20->n128_u32[2] = v21->n128_u32[2];
      v20[1] = *v28;
      v20[2].n128_u64[0] = v21[2].n128_u64[0];
      if (v21 == a1)
      {
        v21 = a1;
        goto LABEL_41;
      }

      v78 = v32;
      v79 = v31;
      v34 = v82;
      while (1)
      {
        v35 = a1 + v34;
        v36 = v87;
        v37 = *(&a1[-2] + v34 - 8);
        v38 = v37;
        v39 = *(&a1[-1] + v34 - 8);
        if (v30 != v39)
        {

          if (v30 >= v39)
          {
            goto LABEL_39;
          }

          goto LABEL_32;
        }

        v40 = *(v35 - 8);
        if (v84 >= v40)
        {
          break;
        }

LABEL_32:
        v28 = (v21 - 24);
        v42 = *(v35 - 5);
        *(v35 - 5) = 0;
        v43 = (a1 + v34);
        v44 = *(a1->n128_u64 + v34);
        *(a1->n128_u64 + v34) = v42;

        v43->n128_u32[2] = *(v35 - 8);
        v43[1] = *(a1 + v34 - 24);
        v43[2].n128_u64[0] = v43[-1].n128_u64[1];
        v21 = (v21 - 40);
        v34 -= 40;
        if (!v34)
        {
          v28 = a1 + 1;
          v21 = a1;
          goto LABEL_40;
        }
      }

      if (v84 == v40)
      {
        v41 = [v36 TTCompare:v37];

        if (v41 != -1)
        {
          goto LABEL_40;
        }

        goto LABEL_32;
      }

LABEL_39:
      v21 = (a1 + v34);
      v28 = (a1 + v34 + 16);
LABEL_40:
      v20 = v81;
      v32 = v78;
      v31 = v79;
LABEL_41:
      v46 = v21->n128_u64[0];
      v21->n128_u64[0] = v87;

      v21->n128_u32[2] = v84;
      v28->n128_u64[0] = v30;
      v21[1].n128_u64[1] = v31;
      v21[2].n128_u64[0] = v32;
LABEL_42:
      v19 = &v20[2].n128_u64[1];
      v82 += 40;
      if (&v20[2].n128_i8[8] == a2)
      {
        return;
      }
    }
  }

  v15 = a3 >> 1;
  v16 = a1 + 40 * (a3 >> 1);
  if (a3 > a5)
  {
    std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(a1, a1 + 40 * (a3 >> 1), a3 >> 1, a4, a5);
    v17 = a3 - v15;
    std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(v16, a2, v17, a4, a5);

    std::__inplace_merge<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(a1, v16, a2, v15, v17, a4, a5);
    return;
  }

  std::__stable_sort_move<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(a1, (a1 + 40 * (a3 >> 1)), a3 >> 1, a4);
  v47 = &a4[5 * v15];
  std::__stable_sort_move<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>((a1 + 40 * (a3 >> 1)), a2, a3 - v15, v47);
  v89 = a3;
  v48 = &a4[5 * a3];
  v49 = a1 + 2;
  v83 = a4;
  v85 = v48;
  v50 = a4;
  v51 = v47;
  v88 = v47;
  while (v51 != v48)
  {
    v52 = v51->n128_u64[0];
    v53 = v51[1].n128_u64[0];
    v54 = v51->n128_u32[2];
    v55 = *v50;
    v56 = v55;
    v57 = v50[2];
    if (v53 == v57)
    {
      v58 = *(v50 + 2);
      if (v54 >= v58)
      {
        if (v54 != v58)
        {

LABEL_55:
          v62 = *v50;
          *v50 = 0;
          v63 = v49[-2].n128_u64[0];
          v49[-2].n128_u64[0] = v62;

          v49[-2].n128_u32[2] = *(v50 + 2);
          v49[-1] = *(v50 + 1);
          v49->n128_u64[0] = v50[4];
          v50 += 5;
          goto LABEL_56;
        }

        v61 = [v52 TTCompare:v55];

        if (v61 != -1)
        {
          goto LABEL_55;
        }
      }

      else
      {
      }
    }

    else
    {

      if (v53 >= v57)
      {
        goto LABEL_55;
      }
    }

    v59 = v51->n128_u64[0];
    v51->n128_u64[0] = 0;
    v60 = v49[-2].n128_u64[0];
    v49[-2].n128_u64[0] = v59;

    v49[-2].n128_u32[2] = v51->n128_u32[2];
    v49[-1] = v51[1];
    v49->n128_u64[0] = v51[2].n128_u64[0];
    v51 = (v51 + 40);
LABEL_56:
    v48 = v85;
    v47 = v88;
    v49 = (v49 + 40);
    if (v50 == v88)
    {
      if (v51 != v85)
      {
        v64 = 0;
        do
        {
          v65 = v51 + v64;
          v66 = (v49 + v64);
          v67 = v51->n128_u64[v64 / 8];
          v51->n128_u64[v64 / 8] = 0;
          v68 = v49[-2].n128_u64[v64 / 8];
          v49[-2].n128_u64[v64 / 8] = v67;

          v66[-2].n128_u32[2] = v51->n128_u32[v64 / 4 + 2];
          v66[-1] = *(v51 + v64 + 16);
          v66->n128_u64[0] = v51[2].n128_u64[v64 / 8];
          v64 += 40;
        }

        while (v65 + 40 != v85);
      }

      goto LABEL_68;
    }
  }

  if (v50 != v47)
  {
    v70 = 0;
    do
    {
      v71 = &v49->n128_u64[v70];
      v72 = &v50[v70];
      v73 = v50[v70];
      v50[v70] = 0;
      v74 = v49[-2].n128_u64[v70];
      v49[-2].n128_u64[v70] = v73;

      *(v71 - 6) = v50[v70 + 1];
      *(v71 - 1) = *&v50[v70 + 2];
      *v71 = v50[v70 + 4];
      v70 += 5;
    }

    while (v72 + 5 != v47);
  }

LABEL_68:
  v75 = v83;
  if (v83)
  {
    for (i = 0; i < v89; ++i)
    {
      v77 = *v75;
      v75 += 5;
    }
  }
}

__n128 std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *> &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *> &>(__n128 **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (*a1)->n128_u64[0];
  v2->n128_u64[0] = 0;
  v5 = v2->n128_u32[2];
  v11 = v2[1];
  v6 = *v3;
  *v3 = 0;
  v7 = v2->n128_u64[0];
  v2->n128_u64[0] = v6;

  v2->n128_u32[2] = *(v3 + 8);
  v2[1] = *(v3 + 16);
  v8 = *v3;
  *v3 = v4;

  *(v3 + 8) = v5;
  result = v11;
  *(v3 + 16) = v11;
  v10 = v2[2].n128_u64[0];
  v2[2].n128_u64[0] = *(v3 + 32);
  *(v3 + 32) = v10;
  return result;
}

__n128 std::__stable_sort_move<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(__n128 *a1, __n128 *a2, unint64_t a3, __n128 *a4)
{
  if (!a3)
  {
    return result;
  }

  v4 = a4;
  v6 = a2;
  v7 = a1;
  if (a3 == 2)
  {
    v10 = &a2[-3].n128_u64[1];
    v11 = a2[-3].n128_u64[1];
    v14 = v6[-2].n128_i64[1];
    v12 = &v6[-2].n128_i64[1];
    v13 = v14;
    v15 = (v12 - 1);
    v93 = *(v12 - 2);
    v95 = v12;
    v16 = (v12 + 2);
    v17 = *v7;
    v18 = v17;
    v20 = (v7 + 2);
    v19 = v7[2];
    v22 = (v7 + 1);
    v21 = *(v7 + 2);
    v98 = v7 + 4;
    if (v14 == v19)
    {
      v81 = v11;
      if (v93 < v21)
      {
        v82 = v16;
        v83 = v7;

        v7 = v10;
        v25 = v15;
        v26 = v95;
        v23 = a4;
        v27 = v82;
        v10 = v83;
        goto LABEL_60;
      }

      if (v93 == v21)
      {
        v88 = [v11 TTCompare:v17];

        v23 = a4;
        if (v88 == -1)
        {
          goto LABEL_7;
        }
      }

      else
      {

        v23 = a4;
      }
    }

    else
    {

      v23 = a4;
      if (v13 < v19)
      {
LABEL_7:
        v24 = v7;
        v7 = v10;
        v25 = v15;
        v26 = v95;
        v27 = v16;
        v10 = v24;
LABEL_60:
        v15 = v22;
        v16 = v98;
LABEL_69:
        v89 = *v7;
        *v7 = 0;
        v23->n128_u64[0] = v89;
        v23->n128_u32[2] = *v25;
        v23[1] = *v26;
        v23[2].n128_u64[0] = *v27;
        v90 = *v10;
        *v10 = 0;
        v23[2].n128_u64[1] = v90;
        v23[3].n128_u32[0] = *v15;
        result = *v20;
        *(v23 + 56) = *v20;
        v23[4].n128_u64[1] = *v16;
        return result;
      }
    }

    v25 = (v7 + 1);
    v26 = (v7 + 2);
    v27 = v7 + 4;
    v20 = v95;
    goto LABEL_69;
  }

  if (a3 == 1)
  {
    v8 = a1->n128_u64[0];
    a1->n128_u64[0] = 0;
    a4->n128_u64[0] = v8;
    a4->n128_u32[2] = a1->n128_u32[2];
    result = a1[1];
    a4[1] = result;
    a4[2].n128_u64[0] = a1[2].n128_u64[0];
    return result;
  }

  if (a3 > 8)
  {
    v62 = &a1->n128_u64[5 * (a3 >> 1)];
    std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(a1, v62, a3 >> 1, a4, a3 >> 1);
    std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(&v7[5 * (a3 >> 1)], v6, a3 - (a3 >> 1), v4 + 40 * (a3 >> 1), a3 - (a3 >> 1));
    v100 = &v7[5 * (a3 >> 1)];
    v102 = 0;
    v63 = v4 + 2;
    v64 = v100;
    while (1)
    {
      if (v64 == v6)
      {
        if (v7 != v62)
        {
          v84 = 0;
          do
          {
            v85 = (v63 + v84 * 8);
            v86 = &v7[v84];
            v87 = v7[v84];
            *v86 = 0;
            v85[-2].n128_u64[0] = v87;
            v85[-2].n128_u32[2] = v7[v84 + 1];
            result = *&v7[v84 + 2];
            v85[-1] = result;
            v85->n128_u64[0] = v7[v84 + 4];
            v84 += 5;
          }

          while (v86 + 5 != v62);
        }

        return result;
      }

      v65 = v64->n128_u64[0];
      v67 = v64 + 1;
      v66 = v64[1].n128_u64[0];
      v68 = v64->n128_u32[2];
      v69 = *v7;
      v70 = v69;
      v72 = (v7 + 2);
      v71 = v7[2];
      if (v66 == v71)
      {
        v73 = *(v7 + 2);
        if (v68 >= v73)
        {
          if (v68 != v73)
          {

LABEL_52:
            v76 = *v7;
            *v7 = 0;
            v63[-2].n128_u64[0] = v76;
            v63[-2].n128_u32[2] = *(v7 + 2);
            result = *v72;
            v63[-1] = *v72;
            v63->n128_u64[0] = v7[4];
            ++v102;
            v7 += 5;
            goto LABEL_53;
          }

          v75 = [v65 TTCompare:v69];

          if (v75 != -1)
          {
            goto LABEL_52;
          }
        }

        else
        {
        }
      }

      else
      {

        if (v66 >= v71)
        {
          goto LABEL_52;
        }
      }

      v74 = v64->n128_u64[0];
      v64->n128_u64[0] = 0;
      v63[-2].n128_u64[0] = v74;
      v63[-2].n128_u32[2] = v64->n128_u32[2];
      result = *v67;
      v63[-1] = *v67;
      v63->n128_u64[0] = v64[2].n128_u64[0];
      ++v102;
      v64 = (v64 + 40);
LABEL_53:
      v6 = a2;
      v63 = (v63 + 40);
      v62 = v100;
      if (v7 == v100)
      {
        if (v64 != a2)
        {
          v77 = 0;
          do
          {
            v78 = &v64->n128_u64[v77 / 8];
            v79 = (v63 + v77);
            v80 = v64->n128_u64[v77 / 8];
            *v78 = 0;
            v79[-2].n128_u64[0] = v80;
            v79[-2].n128_u32[2] = v64->n128_u32[v77 / 4 + 2];
            result = *(v64 + v77 + 16);
            v79[-1] = result;
            v79->n128_u64[0] = v64[2].n128_u64[v77 / 8];
            v77 += 40;
          }

          while (v78 + 5 != a2);
        }

        return result;
      }
    }
  }

  if (a1 == a2)
  {
    return result;
  }

  v28 = a1->n128_u64[0];
  a1->n128_u64[0] = 0;
  a4->n128_u64[0] = v28;
  a4->n128_u32[2] = a1->n128_u32[2];
  result = a1[1];
  a4[1] = result;
  a4[2].n128_u64[0] = a1[2].n128_u64[0];
  v101 = 1;
  v29 = &a1[2].n128_u64[1];
  if (&a1[2].n128_i8[8] == a2)
  {
    return result;
  }

  v30 = 0;
  v31 = a4;
  do
  {
    v99 = v29;
    v32 = *v29;
    v33 = v7[7];
    v94 = (v7 + 7);
    v34 = *(v7 + 12);
    v35 = v31->n128_u64[0];
    v36 = v35;
    v38 = v31 + 1;
    v37 = v31[1].n128_u64[0];
    if (v33 == v37)
    {
      v39 = v31->n128_u32[2];
      if (v34 >= v39)
      {
        if (v34 != v39)
        {

LABEL_33:
          v42 = v99;
          v59 = *v99;
          *v99 = 0;
          v31[2].n128_u64[1] = v59;
          v31[3].n128_u32[0] = *(v7 + 12);
          result = *v94;
          *(v31 + 56) = *v94;
          v31[4].n128_u64[1] = v7[9];
          ++v101;
          goto LABEL_38;
        }

        v58 = [v32 TTCompare:v35];

        if (v58 != -1)
        {
          goto LABEL_33;
        }
      }

      else
      {
      }
    }

    else
    {

      if (v33 >= v37)
      {
        goto LABEL_33;
      }
    }

    v40 = v31->n128_u64[0];
    v31->n128_u64[0] = 0;
    v31[2].n128_u64[1] = v40;
    v31[3].n128_u32[0] = v31->n128_u32[2];
    *(v31 + 56) = *v38;
    v31[4].n128_u64[1] = v31[2].n128_u64[0];
    ++v101;
    v41 = v4;
    v42 = v99;
    if (v31 == v4)
    {
      goto LABEL_37;
    }

    v91 = v31 + 1;
    v92 = v30;
    v43 = v30;
    while (1)
    {
      v44 = v4 + v43;
      v45 = *v42;
      v46 = *(v7 + 12);
      v47 = v7[7];
      v48 = *(&v4[-2] + v43 - 8);
      v49 = v48;
      v50 = (v4 + v43 - 24);
      v51 = v50->n128_u64[0];
      if (v47 != v50->n128_u64[0])
      {

        v52 = v47 >= v51;
        v4 = a4;
        if (v52)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }

      v53 = *(v44 - 8);
      if (v46 < v53)
      {

        v4 = a4;
        goto LABEL_28;
      }

      v4 = a4;
      if (v46 != v53)
      {

LABEL_34:
        v41 = (v4 + v43);
        goto LABEL_35;
      }

      v54 = [v45 TTCompare:v48];

      if (v54 != -1)
      {
        break;
      }

LABEL_28:
      v31 = (v31 - 40);
      v55 = *(v44 - 5);
      *(v44 - 5) = 0;
      v56 = (v4 + v43);
      v57 = *(v4->n128_u64 + v43);
      *(v4->n128_u64 + v43) = v55;

      v56->n128_u32[2] = *(v44 - 8);
      v56[1] = *v50;
      v56[2].n128_u64[0] = *(v44 - 1);
      v43 -= 40;
      v42 = v99;
      if (!v43)
      {
        v41 = v4;
        v30 = v92;
        goto LABEL_36;
      }
    }

    v41 = v31;
LABEL_35:
    v30 = v92;
    v42 = v99;
LABEL_36:
    v38 = v91;
LABEL_37:
    v60 = *v42;
    *v42 = 0;
    v61 = v41->n128_u64[0];
    v41->n128_u64[0] = v60;

    v41->n128_u32[2] = *(v7 + 12);
    result = *v94;
    v41[1] = *v94;
    v41[2].n128_u64[0] = v7[9];
LABEL_38:
    v31 = (v38 + 24);
    v29 = v42 + 5;
    v30 += 40;
    v7 = v42;
  }

  while (v42 + 5 != a2);
  return result;
}

void sub_214DC7FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  std::unique_ptr<std::pair<minIdPathData,TopoSubstring *>,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__inplace_merge<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7)
{
  v120 = a2;
  v121 = a1;
  v109 = a5;
  if (!a5)
  {
    return;
  }

  v8 = a1;
  v9 = a2;
  v10 = a2;
  v118 = a1;
  do
  {
    if (v109 <= a7 || a4 <= a7)
    {
      v52 = a6;
      v122 = a6;
      v123 = &v124;
      v124 = 0;
      if (a4 > v109)
      {
        if (v10 != a3)
        {
          v53 = 0;
          v54 = 0;
          do
          {
            v55 = &a6[v53 / 8];
            v56 = (v10 + v53);
            v57 = *(v10 + v53);
            *v56 = 0;
            *v55 = v57;
            *(v55 + 2) = *(v10 + v53 + 8);
            *(v55 + 1) = *(v10 + v53 + 16);
            v55[4] = *(v10 + v53 + 32);
            ++v54;
            v53 += 40;
          }

          while (v56 + 5 != a3);
          v124 = v54;
          v58 = &a6[v53 / 8];
          v59 = a3 - 40;
          v60 = a3;
          v111 = &a6[v53 / 8];
          do
          {
            if (v10 == v8)
            {
              std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::reverse_iterator<std::pair<minIdPathData,TopoSubstring *> *>,std::reverse_iterator<std::pair<minIdPathData,TopoSubstring *> *>,std::reverse_iterator<std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>,0>(v111, v58, v52, a3, v60, v125);
              break;
            }

            v113 = v58 - 40;
            v117 = v60;
            v61 = *(v58 - 40);
            v63 = v10 - 40;
            v62 = *(v10 - 40);
            v119 = v58;
            v64 = v10;
            v67 = *(v58 - 24);
            v65 = (v58 - 24);
            v66 = v67;
            v68 = *(v65 - 2);
            v69 = v62;
            v70 = v64;
            v73 = *(v64 - 24);
            v72 = (v64 - 24);
            v71 = v73;
            if (v66 == v73)
            {
              v74 = *(v72 - 2);
              if (v68 < v74)
              {

                goto LABEL_69;
              }

              v10 = v70;
              if (v68 != v74)
              {

LABEL_73:
                v72 = v65;
                v70 = v119;
                v58 = v113;
                goto LABEL_74;
              }

              v75 = v61;
              v76 = v69;
              v77 = [v61 TTCompare:v69];

              if (v77 != -1)
              {
                goto LABEL_73;
              }
            }

            else
            {

              v45 = v66 >= v71;
              v10 = v70;
              if (v45)
              {
                goto LABEL_73;
              }
            }

            v70 = v10;
LABEL_69:
            v10 = v63;
            v58 = v119;
LABEL_74:
            v78 = *(v70 - 40);
            *(v70 - 40) = 0;
            v79 = *v59;
            *v59 = v78;

            *(v59 + 8) = *(v70 - 32);
            *(v59 + 16) = *v72;
            *(v59 + 32) = *(v70 - 8);
            v60 = v117 - 40;
            v59 -= 40;
            v52 = a6;
          }

          while (v58 != a6);
        }

LABEL_96:
        if (v52 && *v123)
        {
          v103 = 0;
          do
          {
            v104 = *v52;
            v52 += 5;

            ++v103;
          }

          while (v103 < *v123);
        }

        return;
      }

      v80 = a3;
      if (v8 == v10)
      {
        goto LABEL_96;
      }

      v81 = 0;
      v82 = a6;
      v83 = v8;
      do
      {
        v84 = *v83;
        *v83 = 0;
        *v82 = v84;
        *(v82 + 2) = *(v83 + 8);
        *(v82 + 1) = *(v83 + 16);
        v82[4] = *(v83 + 32);
        ++v81;
        v83 += 40;
        v82 += 5;
      }

      while (v83 != v10);
      v124 = v81;
      v85 = a6;
      while (1)
      {
        if (v10 == v80)
        {
          std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<minIdPathData,TopoSubstring *> *,std::pair<minIdPathData,TopoSubstring *> *,std::pair<minIdPathData,TopoSubstring *> *>(v125, v85, v82, v8);
          v52 = v122;
          goto LABEL_96;
        }

        v86 = *v10;
        v114 = v10;
        v89 = *(v10 + 16);
        v88 = (v10 + 16);
        v87 = v89;
        v90 = *(v88 - 2);
        v91 = *v85;
        v92 = v91;
        v93 = v85[2];
        if (v89 == v93)
        {
          v94 = v86;
          v95 = *(v85 + 2);
          v96 = v90 == v95;
          if (v90 >= v95)
          {
            v52 = a6;
            v99 = v94;
            if (!v96)
            {

LABEL_90:
              v101 = *v85;
              *v85 = 0;
              v102 = *v8;
              *v8 = v101;

              *(v8 + 8) = *(v85 + 2);
              *(v8 + 16) = *(v85 + 1);
              *(v8 + 32) = v85[4];
              v85 += 5;
              v10 = v114;
              goto LABEL_91;
            }

            v100 = [v94 TTCompare:v91];

            if (v100 != -1)
            {
              goto LABEL_90;
            }
          }

          else
          {

            v52 = a6;
          }
        }

        else
        {

          v52 = a6;
          if (v87 >= v93)
          {
            goto LABEL_90;
          }
        }

        v97 = *v114;
        *v114 = 0;
        v98 = *v8;
        *v8 = v97;

        *(v8 + 8) = *(v114 + 8);
        *(v8 + 16) = *v88;
        *(v8 + 32) = *(v114 + 32);
        v10 = v114 + 40;
LABEL_91:
        v8 += 40;
        v80 = a3;
        if (v82 == v85)
        {
          goto LABEL_96;
        }
      }
    }

    if (!a4)
    {
      return;
    }

    v11 = (v8 + 40);
    while (1)
    {
      v12 = *v10;
      v13 = *(v10 + 8);
      v14 = *(v10 + 16);
      v15 = v11[-3].n128_u64[1];
      v16 = v15;
      v17 = v11[-2].n128_u64[1];
      if (v14 != v17)
      {

        if (v14 < v17)
        {
          goto LABEL_17;
        }

        goto LABEL_14;
      }

      v18 = v11[-2].n128_u32[0];
      if (v13 < v18)
      {
        break;
      }

      if (v13 == v18)
      {
        v19 = [v12 TTCompare:v15];

        if (v19 == -1)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

LABEL_14:
      v121 = v11;
      v11 = (v11 + 40);
      v8 += 40;
      v118 = v8;
      if (!--a4)
      {
        return;
      }
    }

LABEL_17:
    v20 = v109;
    v112 = v10;
    if (a4 >= v109)
    {
      if (a4 == 1)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *> &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *> &>(&v121, &v120);
        return;
      }

      v33 = a4 / 2;
      v9 = (v8 + 40 * (a4 / 2));
      if (a3 == v10)
      {
        v36 = a3;
        goto LABEL_49;
      }

      v105 = v8;
      v110 = v8 + 40 * (a4 / 2);
      v35 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - v10) >> 3);
      v36 = v10;
      while (2)
      {
        v37 = v35 >> 1;
        v116 = v36;
        v38 = v36 + 40 * (v35 >> 1);
        v39 = *v38;
        v40 = *(v38 + 8);
        v41 = *(v38 + 16);
        v42 = *v110;
        v43 = v42;
        v44 = *(v110 + 16);
        if (v41 == v44)
        {
          v46 = *(v110 + 8);
          if (v40 < v46)
          {

            v10 = v112;
            goto LABEL_41;
          }

          v10 = v112;
          if (v40 == v46)
          {
            v47 = [v39 TTCompare:v42];

            v36 = v116;
            if (v47 == -1)
            {
LABEL_41:
              v36 = v38 + 40;
              v37 = v35 + ~v37;
            }
          }

          else
          {

            v36 = v116;
          }
        }

        else
        {

          v45 = v41 >= v44;
          v10 = v112;
          v36 = v116;
          if (!v45)
          {
            goto LABEL_41;
          }
        }

        v35 = v37;
        if (!v37)
        {
          v20 = v109;
          v9 = v110;
          v33 = a4 / 2;
          v8 = v105;
LABEL_49:
          v21 = 0xCCCCCCCCCCCCCCCDLL * ((v36 - v10) >> 3);
          v34 = v10;
          v10 = v36;
          goto LABEL_50;
        }

        continue;
      }
    }

    v21 = v109 / 2;
    v115 = v9 + 40 * (v109 / 2);
    if (v9 == v118)
    {
      goto LABEL_31;
    }

    v22 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v118) >> 3);
    while (2)
    {
      v23 = v22 >> 1;
      v24 = v118 + 40 * (v22 >> 1);
      v25 = *v115;
      v26 = *(v115 + 2);
      v27 = *(v115 + 2);
      v28 = *v24;
      v29 = v28;
      v30 = *(v24 + 2);
      if (v27 == v30)
      {
        v31 = *(v24 + 2);
        if (v26 < v31)
        {

          goto LABEL_29;
        }

        if (v26 == v31)
        {
          v32 = [v25 TTCompare:v28];

          if (v32 == -1)
          {
            goto LABEL_29;
          }
        }

        else
        {
        }

LABEL_28:
        v118 = (v24 + 40);
        v23 = v22 + ~v23;
        goto LABEL_29;
      }

      if (v27 >= v30)
      {
        goto LABEL_28;
      }

LABEL_29:
      v22 = v23;
      if (v23)
      {
        continue;
      }

      break;
    }

    v9 = v118;
    v21 = v109 / 2;
    v10 = v112;
    v20 = v109;
LABEL_31:
    v33 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 3);
    v34 = v10;
    v118 = v8;
    v10 = v115;
LABEL_50:
    v48 = v10;
    if (v9 != v34)
    {
      v48 = v9;
      if (v10 != v34)
      {
        v49 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(v9, v34, v10);
        v20 = v109;
        v48 = v49;
      }
    }

    v50 = a4 - v33;
    v51 = v20 - v21;
    if (v33 + v21 >= v20 - (v33 + v21) + a4)
    {
      std::__inplace_merge<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(v48, v10, a3, a4 - v33, v20 - v21, a6, a7);
      v10 = v9;
      v51 = v21;
      v50 = v33;
      a3 = v48;
    }

    else
    {
      std::__inplace_merge<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(v8, v9, v48, v33, v21, a6, a7);
      v121 = v48;
      v8 = v48;
      v118 = v48;
      v9 = v10;
    }

    v120 = v10;
    a4 = v50;
    v109 = v51;
  }

  while (v51);
}

void sub_214DC87C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::unique_ptr<std::pair<minIdPathData,TopoSubstring *>,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::pair<minIdPathData,TopoSubstring *>,std::__destruct_n &>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (*v3)
    {
      v4 = 0;
      do
      {
        v5 = *v2;
        v2 += 5;

        ++v4;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

uint64_t *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<minIdPathData,TopoSubstring *> *,std::pair<minIdPathData,TopoSubstring *> *,std::pair<minIdPathData,TopoSubstring *> *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      v8 = *a4;
      *a4 = v7;

      *(a4 + 8) = *(v5 + 2);
      *(a4 + 16) = *(v5 + 1);
      *(a4 + 32) = v5[4];
      v5 += 5;
      a4 += 40;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::reverse_iterator<std::pair<minIdPathData,TopoSubstring *> *>,std::reverse_iterator<std::pair<minIdPathData,TopoSubstring *> *>,std::reverse_iterator<std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>,0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v6 = a5;
  v8 = a2;
  if (a2 != a3)
  {
    v12 = a5 - 40;
    do
    {
      v13 = *(v8 - 40);
      v8 -= 40;
      *v8 = 0;
      v14 = *v12;
      *v12 = v13;

      *(v12 + 8) = *(v8 + 8);
      *(v12 + 16) = *(v8 + 16);
      *(v12 + 32) = *(v8 + 32);
      v6 -= 40;
      v12 -= 40;
    }

    while (v8 != a3);
    v8 = a3;
  }

  *a6 = a1;
  a6[1] = v8;
  a6[2] = a4;
  a6[3] = v6;
}

char *std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v10 = a2;
  v11 = a1;
  while (1)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *> &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *> &>(&v11, &v10);
    v5 = &v11[2].n128_i8[8];
    v6 = v10 + 40;
    v10 = v6;
    v11 = (v11 + 40);
    if (v6 == a3)
    {
      break;
    }

    if (v5 == v4)
    {
      v4 = v6;
    }
  }

  if (v5 != v4)
  {
    do
    {
      v10 = v4;
      while (1)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *> &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *> &>(&v11, &v10);
        v7 = &v11[2].n128_i8[8];
        v8 = v10 + 40;
        v10 = v8;
        v11 = (v11 + 40);
        if (v8 == a3)
        {
          break;
        }

        if (v7 == v4)
        {
          v4 = v8;
        }
      }
    }

    while (v7 != v4);
  }

  return v5;
}

void *std::__split_buffer<TopoSubstring **>::emplace_back<TopoSubstring **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring **>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<TopoSubstring **>::emplace_front<TopoSubstring **>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring **>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

const void **std::__split_buffer<TopoSubstring **>::emplace_front<TopoSubstring **&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring **>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t *std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::__emplace_unique_key_args<TopoID,TopoID>(void *a1, void *a2)
{
  v4 = *(a2 + 2);
  v5 = [*a2 hash];
  v6 = v5 ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5 ^ v4;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_19;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (*(v12 + 6) != *(a2 + 2) || ([v12[2] isEqual:*a2] & 1) == 0)
  {
    goto LABEL_18;
  }

  return v12;
}

void sub_214DC91F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<TopoID,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<TopoID,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::__emplace_unique_key_args<TopoID,TopoID const&>(void *a1, void *a2)
{
  v4 = *(a2 + 2);
  v5 = [*a2 hash];
  v6 = v5 ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5 ^ v4;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_19;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (*(v12 + 6) != *(a2 + 2) || ([v12[2] isEqual:*a2] & 1) == 0)
  {
    goto LABEL_18;
  }

  return v12;
}

void sub_214DC948C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<TopoID,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<TopoID,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::__erase_unique<TopoID>(void *a1, void *a2)
{
  result = std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::find<TopoID>(a1, a2);
  if (result)
  {
    std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<TopoID,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<TopoID,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<TopoID,TopoSubstring *>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,TopoSubstring *>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID&&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = *(a2 + 2);
  v5 = [*a2 hash];
  v6 = v5 ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5 ^ v4;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_19;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (*(v12 + 6) != *(a2 + 2) || ([v12[2] isEqual:*a2] & 1) == 0)
  {
    goto LABEL_18;
  }

  return v12;
}

void sub_214DC9778(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<TopoID,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<TopoID,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__erase_unique<TopoSubstring *>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(a1, a2);
  if (result)
  {
    std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID const&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = *(a2 + 2);
  v5 = [*a2 hash];
  v6 = v5 ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5 ^ v4;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_19;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (*(v12 + 6) != *(a2 + 2) || ([v12[2] isEqual:*a2] & 1) == 0)
  {
    goto LABEL_18;
  }

  return v12;
}

void sub_214DC9A54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<TopoID,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<TopoID,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_214DCA7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ICNoteTitleFromPlainText(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v3 = [v1 componentsSeparatedByCharactersInSet:v2];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 length])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = [v5 length];
  if (v9 >= *MEMORY[0x277D35908])
  {
    v10 = *MEMORY[0x277D35908];
  }

  else
  {
    v10 = v9;
  }

  v11 = [v5 ic_substringToIndex:{v10, v13}];

  return v11;
}

void sub_214DCE1AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_214DCE8DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_214DD2F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ICDrawingCommandData;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_214DD35C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

__CFString *NSStringFromICDateFilterSelectionType(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"Today";
  }

  else
  {
    return off_278196028[a1 - 1];
  }
}

id ICLocalizedStringFromICDateFilterSelectionType(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 != 1)
        {
          goto LABEL_25;
        }

        v1 = @"Yesterday";
      }

      else
      {
        v1 = @"Today";
      }
    }

    else if (a1 == 2)
    {
      v1 = @"Last 7 Days";
    }

    else if (a1 == 3)
    {
      v1 = @"Last 30 Days";
    }

    else
    {
      v1 = @"Last 3 Months";
    }
  }

  else if (a1 > 7)
  {
    switch(a1)
    {
      case 8:
        v1 = @"On a Date";
        break;
      case 9:
        v1 = @"Before a Date";
        break;
      case 10:
        v1 = @"After a Date";
        break;
      default:
        goto LABEL_25;
    }
  }

  else if (a1 == 5)
  {
    v1 = @"Last 12 Months";
  }

  else if (a1 == 6)
  {
    v1 = @"Specified Range";
  }

  else
  {
    v1 = @"Relative Range";
  }

  a1 = __ICLocalizedFrameworkString_impl(v1, v1, 0, 1);
LABEL_25:

  return a1;
}

__CFString *NSStringFromICDateFilterRelativeRangeSelectionType(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_278196078[a1 - 1];
  }
}

__CFString *NSStringFromICInclusionFilterInclusionType(uint64_t a1)
{
  if (a1)
  {
    return @"Excluded";
  }

  else
  {
    return @"Included";
  }
}

void sub_214DD6718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DD7540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DD8484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DD8968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_3_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x1Cu);
}

void sub_214DD8E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214DDA534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DDC81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214DDEB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214DDECD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DDEE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DDEFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DDF144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DDF3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DDF548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DDF770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DDFD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DDFFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DE02AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DE0554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DE08C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DE0C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DE10E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DE144C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DE1764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DE19D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DE1CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DE20A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DE2444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DE27B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DE2C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DE2F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<TopoID,TopoID>>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<TopoID,TopoID>>::__emplace_back_slow_path<std::pair<TopoID,TopoID>>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *v3 = v4;
    *(v3 + 8) = *(a2 + 8);
    v5 = *(a2 + 16);
    *(a2 + 16) = 0;
    *(v3 + 16) = v5;
    *(v3 + 24) = *(a2 + 24);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t a1, int a2)
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

void sub_214DE4854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Selection_Range>::TypeHandler>(uint64_t a1, int a2)
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

void sub_214DE4930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<TopoID,TopoID>>::__emplace_back_slow_path<std::pair<TopoID,TopoID>>(void *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 5;
  v6 = v5 + 1;
  if ((v5 + 1) >> 59)
  {
    std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 4 > v6)
  {
    v6 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TopoID,TopoID>>>(a1, v6);
  }

  v9 = 32 * v5;
  v16 = 0;
  v17 = 32 * v5;
  v10 = *a2;
  *a2 = 0;
  *v9 = v10;
  *(v9 + 8) = *(a2 + 2);
  v11 = a2[2];
  a2[2] = 0;
  *(v9 + 16) = v11;
  *(v9 + 24) = *(a2 + 6);
  v18 = (32 * v5 + 32);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TopoID,TopoID>>,std::pair<TopoID,TopoID>*>(a1, v3, v4, 0);
  v12 = *a1;
  *a1 = 0;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::pair<TopoID,TopoID>>::~__split_buffer(&v16);
  return v15;
}

void sub_214DE4A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<TopoID,TopoID>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<TopoID,TopoID>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<TopoID,TopoID>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<TopoID,TopoID>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 32)
  {

    v5 = *(i - 32);
  }

  *(a1 + 8) = a2;
}

uint64_t std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__emplace_back_slow_path<std::pair<TopoIDRange,NSDictionary * {__strong}>>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *v3 = v4;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = *(a2 + 16);
    v5 = *(a2 + 24);
    *(a2 + 24) = 0;
    *(v3 + 24) = v5;
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__emplace_back_slow_path<std::pair<TopoIDRange,NSDictionary * {__strong}>>(void *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 5;
  v6 = v5 + 1;
  if ((v5 + 1) >> 59)
  {
    std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 4 > v6)
  {
    v6 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>>(a1, v6);
  }

  v9 = 32 * v5;
  v16 = 0;
  v17 = 32 * v5;
  v10 = *a2;
  *a2 = 0;
  *v9 = v10;
  *(v9 + 8) = *(a2 + 2);
  *(v9 + 16) = *(a2 + 4);
  v11 = a2[3];
  a2[3] = 0;
  *(v9 + 24) = v11;
  v18 = (32 * v5 + 32);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::pair<TopoIDRange,NSDictionary * {__strong}>*>(a1, v3, v4, 0);
  v12 = *a1;
  *a1 = 0;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::pair<TopoIDRange,NSDictionary * {__strong}>>::~__split_buffer(&v16);
  return v15;
}

void sub_214DE6708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<TopoIDRange,NSDictionary * {__strong}>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::pair<TopoIDRange,NSDictionary * {__strong}>*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      *a4 = v5;
      *(a4 + 8) = *(v4 + 2);
      *(a4 + 16) = *(v4 + 4);
      v6 = v4[3];
      v4[3] = 0;
      *(a4 + 24) = v6;
      v4 += 4;
      a4 += 32;
    }

    while (v4 != a3);
    v11 = a4;
  }

  v9 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::pair<TopoIDRange,NSDictionary * {__strong}>*,std::pair<TopoIDRange,NSDictionary * {__strong}>*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::pair<TopoIDRange,NSDictionary * {__strong}>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::pair<TopoIDRange,NSDictionary * {__strong}>*,std::pair<TopoIDRange,NSDictionary * {__strong}>*>(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 4;
    }

    while (v4 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::pair<TopoIDRange,NSDictionary * {__strong}>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::reverse_iterator<std::pair<TopoIDRange,NSDictionary * {__strong}>*>,std::reverse_iterator<std::pair<TopoIDRange,NSDictionary * {__strong}>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::reverse_iterator<std::pair<TopoIDRange,NSDictionary * {__strong}>*>,std::reverse_iterator<std::pair<TopoIDRange,NSDictionary * {__strong}>*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v7 = *(v6 - 32);
      v6 -= 32;
    }

    while (v6 != a5);
  }
}

uint64_t std::__split_buffer<std::pair<TopoIDRange,NSDictionary * {__strong}>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
  }
}

__CFString *NSStringFromICChecklistsFilterSelectionType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Any";
  }

  else
  {
    return off_278196478[a1 - 1];
  }
}

void setPropertyIMP(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v5 = a3;
  v6 = [ICCRObject keyFromSelector:a2];
  v7 = [v11 fields];
  v8 = [v7 objectForKey:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v8 setContents:v5];
  }

  else
  {
    v9 = +[ICCRConstant constant];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      [v11 setFieldKey:v6 value:v5];
    }

    else
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"void setPropertyIMP(__strong id simulateCrash:SEL showAlert:__strong id)" format:{1, 0, @"Cannot set non-register, non-constant CRDT property"}];
    }
  }
}

id propertyIMP(void *a1, const char *a2)
{
  v3 = [a1 fields];
  v4 = NSStringFromSelector(a2);
  v5 = [v3 objectForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v6 = [v5 contents];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

void sub_214DE8238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214DE8A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v17 - 56) = &a15;
  std::vector<TopoIDRange>::__destroy_vector::operator()[abi:ne200100]((v17 - 56));

  _Unwind_Resume(a1);
}

void std::vector<std::pair<TopoIDRange,NSAttributedString * {__strong}>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<TopoIDRange,NSAttributedString * {__strong}>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<TopoIDRange,NSAttributedString * {__strong}>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 32)
  {

    v5 = *(i - 32);
  }

  *(a1 + 8) = a2;
}

void std::vector<TopoIDRange>::__assign_with_size[abi:ne200100]<TopoIDRange*,TopoIDRange*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<TopoIDRange>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TopoIDRange>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<TopoIDRange *,TopoIDRange *,TopoIDRange *>(&v17, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v15 = *(v14 - 24);
        v14 -= 24;
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<TopoIDRange *,TopoIDRange *,TopoIDRange *>(&v16, a2, a2 + v11, v8);
    std::vector<TopoIDRange>::__construct_at_end<TopoIDRange*,TopoIDRange*>(a1, a2 + v11, a3);
  }
}

void *std::vector<TopoIDRange>::__construct_at_end<TopoIDRange*,TopoIDRange*>(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[1];
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      result = *v6;
      *v4 = result;
      *(v4 + 8) = *(v6 + 8);
      *(v4 + 16) = *(v6 + 16);
      v6 += 24;
      v4 += 24;
    }

    while (v6 != a3);
  }

  v3[1] = v4;
  return result;
}

void std::vector<TopoIDRange>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 3);
        v3 -= 24;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<TopoIDRange>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TopoIDRange>>(a1, a2);
  }

  std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<TopoIDRange *,TopoIDRange *,TopoIDRange *>(int a1, uint64_t a2, uint64_t a3, id *location)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      objc_storeStrong(location, *v5);
      *(location + 2) = *(v5 + 8);
      *(location + 4) = *(v5 + 16);
      v5 += 24;
      location += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_214DE9C30(_Unwind_Exception *a1)
{
  MEMORY[0x216063B80](v2, 0x1093C4020A6E6BFLL);

  _Unwind_Resume(a1);
}

void sub_214DEA9D0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::LogMessage::LogMessage(uint64_t result, int a2, uint64_t a3, int a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, char *__s)
{
  v4 = strlen(__s);
  std::string::append(a1 + 1, __s, v4);
  return a1;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, const std::string::value_type *a2)
{
  v3 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  std::string::append(a1 + 1, a2, v4);
  return a1;
}

unint64_t google::protobuf::internal::VersionString@<X0>(google::protobuf::internal *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%d.%d.%d", this / 1000000, this / 1000 % 1000, this % 1000);
  __str[127] = 0;
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  a2[v4] = 0;
  return result;
}

void google::protobuf::internal::LogMessage::~LogMessage(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

uint64_t google::protobuf::internal::DefaultLogHandler(int a1, const char *a2, int a3, uint64_t a4)
{
  v4 = MEMORY[0x277D85DF8];
  if (*(a4 + 23) >= 0)
  {
    v5 = a4;
  }

  else
  {
    v5 = *a4;
  }

  fprintf(*MEMORY[0x277D85DF8], "[libprotobuf %s %s:%d] %s\n", google::protobuf::internal::DefaultLogHandler(google::protobuf::LogLevel,char const*,int,std::string const&)::level_names[a1], a2, a3, v5);
  v6 = *v4;

  return fflush(v6);
}

uint64_t google::protobuf::internal::DeleteLogSilencerCount(google::protobuf::internal *this)
{
  result = google::protobuf::internal::log_silencer_count_mutex_;
  if (google::protobuf::internal::log_silencer_count_mutex_)
  {
    google::protobuf::internal::Mutex::~Mutex(google::protobuf::internal::log_silencer_count_mutex_);
    result = MEMORY[0x216063B80]();
  }

  google::protobuf::internal::log_silencer_count_mutex_ = 0;
  return result;
}

atomic_ullong *google::protobuf::internal::InitLogSilencerCountOnce(google::protobuf::internal *this)
{
  v3 = google::protobuf::internal::log_silencer_count_init_;
  __dmb(0xBu);
  if (v3 != 2)
  {
    v7 = v1;
    v8 = v2;
    v5[0] = &unk_28270A628;
    v5[1] = google::protobuf::internal::InitLogSilencerCount;
    v6 = 0;
    return google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::log_silencer_count_init_, v5);
  }

  return result;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%d", a2);
  __str[127] = 0;
  v3 = strlen(__str);
  std::string::append(a1 + 1, __str, v3);
  return a1;
}

void google::protobuf::internal::LogMessage::Finish(google::protobuf::internal::LogMessage *this)
{
  if (*this == 3)
  {
    v2 = 3;
  }

  else
  {
    google::protobuf::internal::InitLogSilencerCountOnce(this);
    v3 = google::protobuf::internal::log_silencer_count_mutex_;
    google::protobuf::internal::Mutex::Lock(google::protobuf::internal::log_silencer_count_mutex_);
    v4 = google::protobuf::internal::log_silencer_count_;
    google::protobuf::internal::Mutex::Unlock(v3);
    if (v4 > 0)
    {
      goto LABEL_6;
    }

    v2 = *this;
  }

  google::protobuf::internal::log_handler_(v2, *(this + 1), *(this + 4), this + 24);
LABEL_6:
  if (*this == 3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    google::protobuf::FatalException::FatalException(exception, *(this + 1), *(this + 4), this + 24);
  }
}

void google::protobuf::internal::Mutex::~Mutex(pthread_mutex_t **this)
{
  pthread_mutex_destroy(*this);
  if (*this)
  {
    MEMORY[0x216063B80](*this, 0x1000C40FA0F61DDLL);
  }
}

void google::protobuf::FatalException::~FatalException(std::exception *this)
{
  this->__vftable = &unk_28270A5F0;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);
}

{
  google::protobuf::FatalException::~FatalException(this);

  JUMPOUT(0x216063B80);
}

uint64_t google::protobuf::FatalException::what(google::protobuf::FatalException *this)
{
  result = this + 24;
  if (*(this + 47) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t google::protobuf::FatalException::FatalException(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  *a1 = &unk_28270A5F0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v5;
  }

  return a1;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void sub_214DEC580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214DEF99C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&availableConfigurationURLs_lock);
  objc_exception_rethrow();
}

void sub_214DF238C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__84(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_214DF5954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DF5BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214DF64D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_214DFDEC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, void *a22, void *a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&a25);

  if (__p)
  {
    a40 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_214DFE724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  MEMORY[0x216063B80](v11, 0x1093C4020A6E6BFLL);

  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void sub_214DFEB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(va);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(va1);
  v10 = *(v8 - 112);
  if (v10)
  {
    *(v8 - 104) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *google::protobuf::MessageLite::SerializeWithCachedSizesToArray(google::protobuf::MessageLite *this, unsigned __int8 *a2)
{
  v4 = (*(*this + 96))(this);
  google::protobuf::io::ArrayOutputStream::ArrayOutputStream(v10, a2, v4, -1);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v9, v10);
  (*(*this + 80))(this, v9);
  if (v9[24] == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/message_lite.cc", 224);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: !coded_out.HadError(): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v9);
  google::protobuf::io::ArrayOutputStream::~ArrayOutputStream(v10);
  return &a2[v4];
}

void sub_214DFEF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va1);
  google::protobuf::io::ArrayOutputStream::~ArrayOutputStream((v3 - 64));
  _Unwind_Resume(a1);
}

void google::protobuf::anonymous namespace::InitializationErrorMessage(const char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a3, "Can't ", 6uLL);
  v6 = strlen(a1);
  std::string::append(a3, a1, v6);
  std::string::append(a3, " message of type ", 0x12uLL);
  (*(*a2 + 16))(&__p, a2);
  if ((v13 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v13 & 0x80u) == 0)
  {
    v8 = v13;
  }

  else
  {
    v8 = v12;
  }

  std::string::append(a3, p_p, v8);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  std::string::append(a3, " because it is missing required fields: ", 0x29uLL);
  (*(*a2 + 48))(&__p, a2);
  if ((v13 & 0x80u) == 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p;
  }

  if ((v13 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = v12;
  }

  std::string::append(a3, v9, v10);
  if (v13 < 0)
  {
    operator delete(__p);
  }
}

void sub_214DFF0DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::anonymous namespace::ByteSizeConsistencyError(google::protobuf::_anonymous_namespace_ *this, int a2, int a3)
{
  v4 = this;
  if (this != a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/message_lite.cc", 63);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (byte_size_before_serialization) == (byte_size_after_serialization): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Protocol message was modified concurrently during serialization.");
    google::protobuf::internal::LogFinisher::operator=(&v10, v6);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (a3 != v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/message_lite.cc", 65);
    v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (bytes_produced_by_serialization) == (byte_size_before_serialization): ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "Byte size calculation and serialization were inconsistent.  This may indicate a bug in protocol buffers or it may be caused by concurrent modification of the message.");
    google::protobuf::internal::LogFinisher::operator=(&v10, v8);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/message_lite.cc", 69);
  v9 = google::protobuf::internal::LogMessage::operator<<(v11, "This shouldn't be called if all the sizes are equal.");
  google::protobuf::internal::LogFinisher::operator=(&v10, v9);
  google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
}

void sub_214DFF224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::SerializeToArray(google::protobuf::MessageLite *this, void *a2, int a3)
{
  if (((*(*this + 40))(this) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/message_lite.cc", 301);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: IsInitialized(): ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, &__p);
    google::protobuf::internal::LogFinisher::operator=(&v9, v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::MessageLite::SerializePartialToArray(this, a2, a3);
}

void sub_214DFF32C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::SerializePartialToArray(google::protobuf::MessageLite *this, void *a2, int a3)
{
  v6 = (*(*this + 72))(this);
  if (v6 <= a3)
  {
    v7 = (*(*this + 88))(this, a2) - a2;
    if (v7 != v6)
    {
      v8 = (*(*this + 72))(this);
    }
  }

  return v6 <= a3;
}

__CFString *ICCipherNameForCipherVersion(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Cipher v1";
  }

  else
  {
    return off_278196848[a1 - 1];
  }
}

void sub_214DFFC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E00534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E00754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromICTagSelectionOperator(uint64_t a1)
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

id ICLocalizedStringFromICTagSelectionOperator(void *a1)
{
  if (a1 == 2)
  {
    v1 = @"TAG_OPERATOR_ANY";
    v2 = @"any";
  }

  else if (a1 == 1)
  {
    v1 = @"TAG_OPERATOR_ALL";
    v2 = @"all";
  }

  else
  {
    if (a1)
    {
      goto LABEL_8;
    }

    v1 = @"TAG_OPERATOR_UNKNOWN";
    v2 = @"unknown";
  }

  a1 = __ICLocalizedFrameworkStringWithDefaultValue_impl(v1, v2, 0, 1);
LABEL_8:

  return a1;
}

__CFString *NSStringFromICTagSelectionMode(uint64_t a1)
{
  v1 = @"Custom";
  if (a1 == 1)
  {
    v1 = @"All Tagged";
  }

  if (a1 == 2)
  {
    return @"All Untagged";
  }

  else
  {
    return v1;
  }
}

void sub_214E03D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E04008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E0434C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E04608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_214E056DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t peernetworking::protobuf_ShutdownFile_peernetworking_2eproto(peernetworking *this)
{
  if (peernetworking::PeerNetworkMessage::default_instance_)
  {
    (*(*peernetworking::PeerNetworkMessage::default_instance_ + 8))(peernetworking::PeerNetworkMessage::default_instance_);
  }

  if (peernetworking::Note::default_instance_)
  {
    (*(*peernetworking::Note::default_instance_ + 8))(peernetworking::Note::default_instance_);
  }

  if (peernetworking::ShareInfo::default_instance_)
  {
    (*(*peernetworking::ShareInfo::default_instance_ + 8))(peernetworking::ShareInfo::default_instance_);
  }

  if (peernetworking::RequestNote::default_instance_)
  {
    (*(*peernetworking::RequestNote::default_instance_ + 8))(peernetworking::RequestNote::default_instance_);
  }

  if (peernetworking::RequestAttachment::default_instance_)
  {
    (*(*peernetworking::RequestAttachment::default_instance_ + 8))(peernetworking::RequestAttachment::default_instance_);
  }

  if (peernetworking::Attachment::default_instance_)
  {
    (*(*peernetworking::Attachment::default_instance_ + 8))(peernetworking::Attachment::default_instance_);
  }

  if (peernetworking::RequestMedia::default_instance_)
  {
    (*(*peernetworking::RequestMedia::default_instance_ + 8))(peernetworking::RequestMedia::default_instance_);
  }

  if (peernetworking::Media::default_instance_)
  {
    (*(*peernetworking::Media::default_instance_ + 8))(peernetworking::Media::default_instance_);
  }

  if (peernetworking::UnavailableMedia::default_instance_)
  {
    (*(*peernetworking::UnavailableMedia::default_instance_ + 8))(peernetworking::UnavailableMedia::default_instance_);
  }

  if (peernetworking::Invite::default_instance_)
  {
    (*(*peernetworking::Invite::default_instance_ + 8))(peernetworking::Invite::default_instance_);
  }

  if (peernetworking::InviteReply::default_instance_)
  {
    (*(*peernetworking::InviteReply::default_instance_ + 8))(peernetworking::InviteReply::default_instance_);
  }

  if (peernetworking::Identity::default_instance_)
  {
    (*(*peernetworking::Identity::default_instance_ + 8))(peernetworking::Identity::default_instance_);
  }

  result = peernetworking::KeepAlive::default_instance_;
  if (peernetworking::KeepAlive::default_instance_)
  {
    v2 = *(*peernetworking::KeepAlive::default_instance_ + 8);

    return v2();
  }

  return result;
}

void peernetworking::protobuf_AddDesc_peernetworking_2eproto_impl(peernetworking *this, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x1E9BF1, 0x1E9BF0, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/peernetworking.pb.cc", a4);
  versioned_document::protobuf_AddDesc_versioned_2ddocument_2eproto(v4);
  operator new();
}

double peernetworking::PeerNetworkMessage::PeerNetworkMessage(peernetworking::PeerNetworkMessage *this)
{
  *this = &unk_28270A7D8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 0;
  return result;
}

double peernetworking::KeepAlive::KeepAlive(peernetworking::KeepAlive *this)
{
  *this = &unk_28270AD78;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void *peernetworking::PeerNetworkMessage::InitAsDefaultInstance(void *this)
{
  v1 = peernetworking::RequestNote::default_instance_;
  this[5] = peernetworking::Note::default_instance_;
  this[6] = v1;
  v2 = peernetworking::RequestAttachment::default_instance_;
  this[7] = peernetworking::Attachment::default_instance_;
  this[8] = v2;
  v3 = peernetworking::UnavailableMedia::default_instance_;
  this[9] = peernetworking::RequestMedia::default_instance_;
  this[10] = v3;
  v4 = peernetworking::Invite::default_instance_;
  this[11] = peernetworking::Identity::default_instance_;
  this[12] = v4;
  v5 = peernetworking::ShareInfo::default_instance_;
  this[13] = peernetworking::InviteReply::default_instance_;
  this[14] = v5;
  v6 = peernetworking::KeepAlive::default_instance_;
  this[15] = peernetworking::Media::default_instance_;
  this[16] = v6;
  return this;
}

void peernetworking::protobuf_AddDesc_peernetworking_2eproto(peernetworking *this)
{
  v1 = peernetworking::protobuf_AddDesc_peernetworking_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = &unk_28270A628;
    v2[1] = peernetworking::protobuf_AddDesc_peernetworking_2eproto_impl;
    v3 = 0;
    google::protobuf::GoogleOnceInitImpl(&peernetworking::protobuf_AddDesc_peernetworking_2eproto_once_, v2);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_214E05F10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

std::string *peernetworking::PeerNetworkMessage::MergeFrom(peernetworking::PeerNetworkMessage *this, const peernetworking::PeerNetworkMessage *a2)
{
  v3 = this;
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v39, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/peernetworking.pb.cc", 710);
    v4 = google::protobuf::internal::LogMessage::operator<<(v39, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v38, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v39[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    if (v5)
    {
      v6 = *(a2 + 34);
      *(v3 + 8) |= 1u;
      *(v3 + 34) = v6;
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 8) |= 2u;
      v7 = *(v3 + 5);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 5);
      if (!v8)
      {
        peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
        v8 = *(peernetworking::PeerNetworkMessage::default_instance_ + 40);
      }

      this = peernetworking::Note::MergeFrom(v7, v8);
      v5 = *(a2 + 8);
    }

    if ((v5 & 4) != 0)
    {
      *(v3 + 8) |= 4u;
      v9 = *(v3 + 6);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 6);
      if (!v10)
      {
        peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
        v10 = *(peernetworking::PeerNetworkMessage::default_instance_ + 48);
      }

      this = peernetworking::RequestNote::MergeFrom(v9, v10);
      v5 = *(a2 + 8);
    }

    if ((v5 & 8) != 0)
    {
      *(v3 + 8) |= 8u;
      v11 = *(v3 + 7);
      if (!v11)
      {
        operator new();
      }

      v12 = *(a2 + 7);
      if (!v12)
      {
        peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
        v12 = *(peernetworking::PeerNetworkMessage::default_instance_ + 56);
      }

      this = peernetworking::Attachment::MergeFrom(v11, v12);
      v5 = *(a2 + 8);
    }

    if ((v5 & 0x10) != 0)
    {
      *(v3 + 8) |= 0x10u;
      v13 = *(v3 + 8);
      if (!v13)
      {
        operator new();
      }

      v14 = *(a2 + 8);
      if (!v14)
      {
        peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
        v14 = *(peernetworking::PeerNetworkMessage::default_instance_ + 64);
      }

      this = peernetworking::RequestAttachment::MergeFrom(v13, v14);
      v5 = *(a2 + 8);
    }

    if ((v5 & 0x20) != 0)
    {
      *(v3 + 8) |= 0x20u;
      v15 = *(v3 + 9);
      if (!v15)
      {
        operator new();
      }

      v16 = *(a2 + 9);
      if (!v16)
      {
        peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
        v16 = *(peernetworking::PeerNetworkMessage::default_instance_ + 72);
      }

      this = peernetworking::RequestMedia::MergeFrom(v15, v16);
      v5 = *(a2 + 8);
    }

    if ((v5 & 0x40) != 0)
    {
      *(v3 + 8) |= 0x40u;
      v17 = *(v3 + 10);
      if (!v17)
      {
        operator new();
      }

      v18 = *(a2 + 10);
      if (!v18)
      {
        peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
        v18 = *(peernetworking::PeerNetworkMessage::default_instance_ + 80);
      }

      this = peernetworking::UnavailableMedia::MergeFrom(v17, v18);
      v5 = *(a2 + 8);
    }

    if ((v5 & 0x80) != 0)
    {
      *(v3 + 8) |= 0x80u;
      v19 = *(v3 + 11);
      if (!v19)
      {
        operator new();
      }

      v20 = *(a2 + 11);
      if (!v20)
      {
        peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
        v20 = *(peernetworking::PeerNetworkMessage::default_instance_ + 88);
      }

      this = peernetworking::Identity::MergeFrom(v19, v20);
      v5 = *(a2 + 8);
    }
  }

  if ((v5 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      *(v3 + 8) |= 0x100u;
      v21 = *(v3 + 12);
      if (!v21)
      {
        operator new();
      }

      v22 = *(a2 + 12);
      if (!v22)
      {
        peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
        v22 = *(peernetworking::PeerNetworkMessage::default_instance_ + 96);
      }

      this = peernetworking::Invite::MergeFrom(v21, v22);
      v5 = *(a2 + 8);
    }

    if ((v5 & 0x200) != 0)
    {
      *(v3 + 8) |= 0x200u;
      v23 = *(v3 + 13);
      if (!v23)
      {
        operator new();
      }

      v24 = *(a2 + 13);
      if (!v24)
      {
        peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
        v24 = *(peernetworking::PeerNetworkMessage::default_instance_ + 104);
      }

      this = peernetworking::InviteReply::MergeFrom(v23, v24);
      v5 = *(a2 + 8);
    }

    if ((v5 & 0x400) != 0)
    {
      *(v3 + 8) |= 0x400u;
      v25 = *(v3 + 14);
      if (!v25)
      {
        operator new();
      }

      v26 = *(a2 + 14);
      if (!v26)
      {
        peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
        v26 = *(peernetworking::PeerNetworkMessage::default_instance_ + 112);
      }

      this = peernetworking::ShareInfo::MergeFrom(v25, v26);
      v5 = *(a2 + 8);
    }

    if ((v5 & 0x800) != 0)
    {
      *(v3 + 8) |= 0x800u;
      v27 = *(v3 + 15);
      if (!v27)
      {
        operator new();
      }

      v28 = *(a2 + 15);
      if (!v28)
      {
        peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
        v28 = *(peernetworking::PeerNetworkMessage::default_instance_ + 120);
      }

      this = peernetworking::Media::MergeFrom(v27, v28);
      v5 = *(a2 + 8);
    }

    if ((v5 & 0x1000) != 0)
    {
      *(v3 + 8) |= 0x1000u;
      v29 = *(v3 + 16);
      if (!v29)
      {
        operator new();
      }

      v30 = *(a2 + 16);
      if (!v30)
      {
        peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
        v30 = *(peernetworking::PeerNetworkMessage::default_instance_ + 128);
      }

      peernetworking::KeepAlive::MergeFrom(v29, v30);
    }
  }

  v33 = *(a2 + 1);
  v32 = a2 + 8;
  v31 = v33;
  v34 = v32[23];
  if (v34 >= 0)
  {
    v35 = v32;
  }

  else
  {
    v35 = v31;
  }

  if (v34 >= 0)
  {
    v36 = v32[23];
  }

  else
  {
    v36 = *(v32 + 1);
  }

  return std::string::append((v3 + 8), v35, v36);
}

void peernetworking::PeerNetworkMessage::~PeerNetworkMessage(void **this)
{
  *this = &unk_28270A7D8;
  peernetworking::PeerNetworkMessage::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  peernetworking::PeerNetworkMessage::~PeerNetworkMessage(this);

  JUMPOUT(0x216063B80);
}

void peernetworking::PeerNetworkMessage::SharedDtor(peernetworking::PeerNetworkMessage *this)
{
  peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
  if (peernetworking::PeerNetworkMessage::default_instance_ != this)
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
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 9);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 10);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(this + 11);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(this + 12);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = *(this + 13);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = *(this + 14);
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = *(this + 15);
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = *(this + 16);
    if (v13)
    {
      v14 = *(*v13 + 8);

      v14();
    }
  }
}

uint64_t peernetworking::PeerNetworkMessage::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 136) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 40);
      if (this)
      {
        this = peernetworking::Note::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = peernetworking::RequestNote::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        this = peernetworking::Attachment::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        this = peernetworking::RequestAttachment::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      this = *(v1 + 72);
      if (this)
      {
        this = peernetworking::RequestMedia::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      this = *(v1 + 80);
      if (this)
      {
        this = peernetworking::UnavailableMedia::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      this = *(v1 + 88);
      if (this)
      {
        this = peernetworking::Identity::Clear(this);
        v2 = *(v1 + 32);
      }
    }
  }

  if ((v2 & 0x1F00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      this = *(v1 + 96);
      if (this)
      {
        this = peernetworking::Invite::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      this = *(v1 + 104);
      if (this)
      {
        this = peernetworking::InviteReply::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 0x400) != 0)
    {
      this = *(v1 + 112);
      if (this)
      {
        this = peernetworking::ShareInfo::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 0x800) != 0)
    {
      this = *(v1 + 120);
      if (this)
      {
        this = peernetworking::Media::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 0x1000) != 0)
    {
      v3 = *(v1 + 128);
      if (v3)
      {
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

uint64_t peernetworking::Note::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v3 = *(this + 40);
      if (v3 != google::protobuf::internal::empty_string_)
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

    if ((*(this + 32) & 2) != 0)
    {
      this = *(this + 48);
      if (this)
      {
        this = versioned_document::Document::Clear(this);
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

uint64_t peernetworking::RequestNote::Clear(uint64_t this)
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

uint64_t peernetworking::Attachment::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 0x1F) != 0)
  {
    if (v1)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v2 = *(this + 40);
      if (v2 != google::protobuf::internal::empty_string_)
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

    if ((*(this + 32) & 2) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v3 = *(this + 48);
      if (v3 != google::protobuf::internal::empty_string_)
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

    if ((*(this + 32) & 4) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v4 = *(this + 56);
      if (v4 != google::protobuf::internal::empty_string_)
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

    if ((*(this + 32) & 8) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v5 = *(this + 64);
      if (v5 != google::protobuf::internal::empty_string_)
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

    if ((*(this + 32) & 0x10) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v6 = *(this + 72);
      if (v6 != google::protobuf::internal::empty_string_)
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

uint64_t peernetworking::RequestAttachment::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v2 = *(this + 40);
      if (v2 != google::protobuf::internal::empty_string_)
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

    if ((*(this + 32) & 2) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v3 = *(this + 48);
      if (v3 != google::protobuf::internal::empty_string_)
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

uint64_t peernetworking::RequestMedia::Clear(uint64_t this)
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

uint64_t peernetworking::UnavailableMedia::Clear(uint64_t this)
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

uint64_t peernetworking::Identity::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 0xF) != 0)
  {
    if (v1)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v2 = *(this + 40);
      if (v2 != google::protobuf::internal::empty_string_)
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

    if ((*(this + 32) & 2) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v3 = *(this + 48);
      if (v3 != google::protobuf::internal::empty_string_)
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

    if ((*(this + 32) & 4) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v4 = *(this + 56);
      if (v4 != google::protobuf::internal::empty_string_)
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

    if ((*(this + 32) & 8) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v5 = *(this + 64);
      if (v5 != google::protobuf::internal::empty_string_)
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

uint64_t peernetworking::Invite::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v2 = *(this + 40);
      if (v2 != google::protobuf::internal::empty_string_)
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

    if ((*(this + 32) & 2) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v3 = *(this + 48);
      if (v3 != google::protobuf::internal::empty_string_)
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

uint64_t peernetworking::InviteReply::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v2 = *(this + 40);
      if (v2 != google::protobuf::internal::empty_string_)
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

    *(this + 48) = 0;
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

uint64_t peernetworking::ShareInfo::Clear(peernetworking::ShareInfo *this)
{
  v2 = *(this + 8);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v3 = *(this + 5);
      if (v3 != google::protobuf::internal::empty_string_)
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

    *(this + 18) = 0;
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 48);
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

uint64_t peernetworking::Media::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v2 = *(this + 40);
      if (v2 != google::protobuf::internal::empty_string_)
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

    if ((*(this + 32) & 2) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v3 = *(this + 48);
      if (v3 != google::protobuf::internal::empty_string_)
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

uint64_t peernetworking::KeepAlive::Clear(uint64_t this)
{
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

uint64_t peernetworking::PeerNetworkMessage::MergePartialFromCodedStream(peernetworking::PeerNetworkMessage *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v114, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v113, v114);
  while (2)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 < *(a2 + 2))
      {
        v6 = *v5;
        if (v6 >= 1)
        {
          break;
        }
      }

      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
      if ((v7 & 0x100000000) != 0)
      {
        goto LABEL_12;
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

      if (v9)
      {
LABEL_219:
        v111 = 1;
        goto LABEL_220;
      }

LABEL_42:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v113, v4))
      {
        goto LABEL_218;
      }
    }

    *(a2 + 8) = v6;
    *(a2 + 1) = v5 + 1;
    v7 = v6 | 0x100000000;
LABEL_12:
    switch(v7 >> 3)
    {
      case 1u:
        if (v7 != 8)
        {
          goto LABEL_40;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 >= v10 || (v12 = *v11, v12 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 34))
          {
            goto LABEL_218;
          }

          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 34) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        v14 = *(this + 8) | 1;
        *(this + 8) = v14;
        if (v13 >= v10 || *v13 != 18)
        {
          continue;
        }

        *(a2 + 1) = v13 + 1;
LABEL_49:
        *(this + 8) = v14 | 2;
        v15 = *(this + 5);
        if (!v15)
        {
          operator new();
        }

        v115 = 0;
        v16 = *(a2 + 1);
        if (v16 >= *(a2 + 2) || *v16 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v115))
          {
            goto LABEL_218;
          }
        }

        else
        {
          v115 = *v16;
          *(a2 + 1) = v16 + 1;
        }

        v17 = *(a2 + 14);
        v18 = *(a2 + 15);
        *(a2 + 14) = v17 + 1;
        if (v17 >= v18)
        {
          goto LABEL_218;
        }

        v19 = google::protobuf::io::CodedInputStream::PushLimit(a2, v115);
        if (!peernetworking::Note::MergePartialFromCodedStream(v15, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_218;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v19);
        v20 = *(a2 + 14);
        v21 = __OFSUB__(v20, 1);
        v22 = v20 - 1;
        if (v22 < 0 == v21)
        {
          *(a2 + 14) = v22;
        }

        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2) || *v23 != 26)
        {
          continue;
        }

        *(a2 + 1) = v23 + 1;
LABEL_63:
        *(this + 8) |= 4u;
        v24 = *(this + 6);
        if (!v24)
        {
          operator new();
        }

        v115 = 0;
        v25 = *(a2 + 1);
        if (v25 >= *(a2 + 2) || *v25 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v115))
          {
            goto LABEL_218;
          }
        }

        else
        {
          v115 = *v25;
          *(a2 + 1) = v25 + 1;
        }

        v26 = *(a2 + 14);
        v27 = *(a2 + 15);
        *(a2 + 14) = v26 + 1;
        if (v26 >= v27)
        {
          goto LABEL_218;
        }

        v28 = google::protobuf::io::CodedInputStream::PushLimit(a2, v115);
        if (!peernetworking::RequestNote::MergePartialFromCodedStream(v24, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_218;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v28);
        v29 = *(a2 + 14);
        v21 = __OFSUB__(v29, 1);
        v30 = v29 - 1;
        if (v30 < 0 == v21)
        {
          *(a2 + 14) = v30;
        }

        v31 = *(a2 + 1);
        if (v31 >= *(a2 + 2) || *v31 != 34)
        {
          continue;
        }

        *(a2 + 1) = v31 + 1;
LABEL_77:
        *(this + 8) |= 8u;
        v32 = *(this + 7);
        if (!v32)
        {
          operator new();
        }

        v115 = 0;
        v33 = *(a2 + 1);
        if (v33 >= *(a2 + 2) || *v33 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v115))
          {
            goto LABEL_218;
          }
        }

        else
        {
          v115 = *v33;
          *(a2 + 1) = v33 + 1;
        }

        v34 = *(a2 + 14);
        v35 = *(a2 + 15);
        *(a2 + 14) = v34 + 1;
        if (v34 >= v35)
        {
          goto LABEL_218;
        }

        v36 = google::protobuf::io::CodedInputStream::PushLimit(a2, v115);
        if (!peernetworking::Attachment::MergePartialFromCodedStream(v32, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_218;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v36);
        v37 = *(a2 + 14);
        v21 = __OFSUB__(v37, 1);
        v38 = v37 - 1;
        if (v38 < 0 == v21)
        {
          *(a2 + 14) = v38;
        }

        v39 = *(a2 + 1);
        if (v39 >= *(a2 + 2) || *v39 != 42)
        {
          continue;
        }

        *(a2 + 1) = v39 + 1;
LABEL_91:
        *(this + 8) |= 0x10u;
        v40 = *(this + 8);
        if (!v40)
        {
          operator new();
        }

        v115 = 0;
        v41 = *(a2 + 1);
        if (v41 >= *(a2 + 2) || *v41 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v115))
          {
            goto LABEL_218;
          }
        }

        else
        {
          v115 = *v41;
          *(a2 + 1) = v41 + 1;
        }

        v42 = *(a2 + 14);
        v43 = *(a2 + 15);
        *(a2 + 14) = v42 + 1;
        if (v42 >= v43)
        {
          goto LABEL_218;
        }

        v44 = google::protobuf::io::CodedInputStream::PushLimit(a2, v115);
        if (!peernetworking::RequestAttachment::MergePartialFromCodedStream(v40, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_218;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v44);
        v45 = *(a2 + 14);
        v21 = __OFSUB__(v45, 1);
        v46 = v45 - 1;
        if (v46 < 0 == v21)
        {
          *(a2 + 14) = v46;
        }

        v47 = *(a2 + 1);
        if (v47 >= *(a2 + 2) || *v47 != 50)
        {
          continue;
        }

        *(a2 + 1) = v47 + 1;
LABEL_105:
        *(this + 8) |= 0x20u;
        v48 = *(this + 9);
        if (!v48)
        {
          operator new();
        }

        v115 = 0;
        v49 = *(a2 + 1);
        if (v49 >= *(a2 + 2) || *v49 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v115))
          {
            goto LABEL_218;
          }
        }

        else
        {
          v115 = *v49;
          *(a2 + 1) = v49 + 1;
        }

        v50 = *(a2 + 14);
        v51 = *(a2 + 15);
        *(a2 + 14) = v50 + 1;
        if (v50 >= v51)
        {
          goto LABEL_218;
        }

        v52 = google::protobuf::io::CodedInputStream::PushLimit(a2, v115);
        if (!peernetworking::RequestMedia::MergePartialFromCodedStream(v48, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_218;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v52);
        v53 = *(a2 + 14);
        v21 = __OFSUB__(v53, 1);
        v54 = v53 - 1;
        if (v54 < 0 == v21)
        {
          *(a2 + 14) = v54;
        }

        v55 = *(a2 + 1);
        if (v55 >= *(a2 + 2) || *v55 != 58)
        {
          continue;
        }

        *(a2 + 1) = v55 + 1;
LABEL_119:
        *(this + 8) |= 0x40u;
        v56 = *(this + 10);
        if (!v56)
        {
          operator new();
        }

        v115 = 0;
        v57 = *(a2 + 1);
        if (v57 >= *(a2 + 2) || *v57 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v115))
          {
            goto LABEL_218;
          }
        }

        else
        {
          v115 = *v57;
          *(a2 + 1) = v57 + 1;
        }

        v58 = *(a2 + 14);
        v59 = *(a2 + 15);
        *(a2 + 14) = v58 + 1;
        if (v58 >= v59)
        {
          goto LABEL_218;
        }

        v60 = google::protobuf::io::CodedInputStream::PushLimit(a2, v115);
        if (!peernetworking::UnavailableMedia::MergePartialFromCodedStream(v56, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_218;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v60);
        v61 = *(a2 + 14);
        v21 = __OFSUB__(v61, 1);
        v62 = v61 - 1;
        if (v62 < 0 == v21)
        {
          *(a2 + 14) = v62;
        }

        v63 = *(a2 + 1);
        if (v63 >= *(a2 + 2) || *v63 != 66)
        {
          continue;
        }

        *(a2 + 1) = v63 + 1;
LABEL_133:
        *(this + 8) |= 0x80u;
        v64 = *(this + 11);
        if (!v64)
        {
          operator new();
        }

        v115 = 0;
        v65 = *(a2 + 1);
        if (v65 >= *(a2 + 2) || *v65 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v115))
          {
            goto LABEL_218;
          }
        }

        else
        {
          v115 = *v65;
          *(a2 + 1) = v65 + 1;
        }

        v66 = *(a2 + 14);
        v67 = *(a2 + 15);
        *(a2 + 14) = v66 + 1;
        if (v66 >= v67)
        {
          goto LABEL_218;
        }

        v68 = google::protobuf::io::CodedInputStream::PushLimit(a2, v115);
        if (!peernetworking::Identity::MergePartialFromCodedStream(v64, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_218;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v68);
        v69 = *(a2 + 14);
        v21 = __OFSUB__(v69, 1);
        v70 = v69 - 1;
        if (v70 < 0 == v21)
        {
          *(a2 + 14) = v70;
        }

        v71 = *(a2 + 1);
        if (v71 >= *(a2 + 2) || *v71 != 74)
        {
          continue;
        }

        *(a2 + 1) = v71 + 1;
LABEL_147:
        *(this + 8) |= 0x100u;
        v72 = *(this + 12);
        if (!v72)
        {
          operator new();
        }

        v115 = 0;
        v73 = *(a2 + 1);
        if (v73 >= *(a2 + 2) || *v73 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v115))
          {
            goto LABEL_218;
          }
        }

        else
        {
          v115 = *v73;
          *(a2 + 1) = v73 + 1;
        }

        v74 = *(a2 + 14);
        v75 = *(a2 + 15);
        *(a2 + 14) = v74 + 1;
        if (v74 >= v75)
        {
          goto LABEL_218;
        }

        v76 = google::protobuf::io::CodedInputStream::PushLimit(a2, v115);
        if (!peernetworking::Invite::MergePartialFromCodedStream(v72, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_218;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v76);
        v77 = *(a2 + 14);
        v21 = __OFSUB__(v77, 1);
        v78 = v77 - 1;
        if (v78 < 0 == v21)
        {
          *(a2 + 14) = v78;
        }

        v79 = *(a2 + 1);
        if (v79 >= *(a2 + 2) || *v79 != 82)
        {
          continue;
        }

        *(a2 + 1) = v79 + 1;
LABEL_161:
        *(this + 8) |= 0x200u;
        v80 = *(this + 13);
        if (!v80)
        {
          operator new();
        }

        v115 = 0;
        v81 = *(a2 + 1);
        if (v81 >= *(a2 + 2) || *v81 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v115))
          {
            goto LABEL_218;
          }
        }

        else
        {
          v115 = *v81;
          *(a2 + 1) = v81 + 1;
        }

        v82 = *(a2 + 14);
        v83 = *(a2 + 15);
        *(a2 + 14) = v82 + 1;
        if (v82 >= v83)
        {
          goto LABEL_218;
        }

        v84 = google::protobuf::io::CodedInputStream::PushLimit(a2, v115);
        if (!peernetworking::InviteReply::MergePartialFromCodedStream(v80, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_218;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v84);
        v85 = *(a2 + 14);
        v21 = __OFSUB__(v85, 1);
        v86 = v85 - 1;
        if (v86 < 0 == v21)
        {
          *(a2 + 14) = v86;
        }

        v87 = *(a2 + 1);
        if (v87 >= *(a2 + 2) || *v87 != 90)
        {
          continue;
        }

        *(a2 + 1) = v87 + 1;
LABEL_175:
        *(this + 8) |= 0x400u;
        v88 = *(this + 14);
        if (!v88)
        {
          operator new();
        }

        v115 = 0;
        v89 = *(a2 + 1);
        if (v89 >= *(a2 + 2) || *v89 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v115))
          {
            goto LABEL_218;
          }
        }

        else
        {
          v115 = *v89;
          *(a2 + 1) = v89 + 1;
        }

        v90 = *(a2 + 14);
        v91 = *(a2 + 15);
        *(a2 + 14) = v90 + 1;
        if (v90 >= v91)
        {
          goto LABEL_218;
        }

        v92 = google::protobuf::io::CodedInputStream::PushLimit(a2, v115);
        if (!peernetworking::ShareInfo::MergePartialFromCodedStream(v88, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_218;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v92);
        v93 = *(a2 + 14);
        v21 = __OFSUB__(v93, 1);
        v94 = v93 - 1;
        if (v94 < 0 == v21)
        {
          *(a2 + 14) = v94;
        }

        v95 = *(a2 + 1);
        if (v95 >= *(a2 + 2) || *v95 != 98)
        {
          continue;
        }

        *(a2 + 1) = v95 + 1;
LABEL_189:
        *(this + 8) |= 0x800u;
        v96 = *(this + 15);
        if (!v96)
        {
          operator new();
        }

        v115 = 0;
        v97 = *(a2 + 1);
        if (v97 >= *(a2 + 2) || *v97 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v115))
          {
            goto LABEL_218;
          }
        }

        else
        {
          v115 = *v97;
          *(a2 + 1) = v97 + 1;
        }

        v98 = *(a2 + 14);
        v99 = *(a2 + 15);
        *(a2 + 14) = v98 + 1;
        if (v98 >= v99)
        {
          goto LABEL_218;
        }

        v100 = google::protobuf::io::CodedInputStream::PushLimit(a2, v115);
        if (!peernetworking::Media::MergePartialFromCodedStream(v96, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_218;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v100);
        v101 = *(a2 + 14);
        v21 = __OFSUB__(v101, 1);
        v102 = v101 - 1;
        if (v102 < 0 == v21)
        {
          *(a2 + 14) = v102;
        }

        v103 = *(a2 + 1);
        if (v103 >= *(a2 + 2) || *v103 != 106)
        {
          continue;
        }

        *(a2 + 1) = v103 + 1;
LABEL_203:
        *(this + 8) |= 0x1000u;
        v104 = *(this + 16);
        if (!v104)
        {
          operator new();
        }

        v115 = 0;
        v105 = *(a2 + 1);
        if (v105 >= *(a2 + 2) || *v105 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v115))
          {
            goto LABEL_218;
          }
        }

        else
        {
          v115 = *v105;
          *(a2 + 1) = v105 + 1;
        }

        v106 = *(a2 + 14);
        v107 = *(a2 + 15);
        *(a2 + 14) = v106 + 1;
        if (v106 >= v107 || (v108 = google::protobuf::io::CodedInputStream::PushLimit(a2, v115), !peernetworking::KeepAlive::MergePartialFromCodedStream(v104, a2)) || *(a2 + 36) != 1)
        {
LABEL_218:
          v111 = 0;
          goto LABEL_220;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v108);
        v109 = *(a2 + 14);
        v21 = __OFSUB__(v109, 1);
        v110 = v109 - 1;
        if (v110 < 0 == v21)
        {
          *(a2 + 14) = v110;
        }

        if (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        v111 = 1;
        *(a2 + 36) = 1;
LABEL_220:
        google::protobuf::io::CodedOutputStream::~CodedOutputStream(v113);
        google::protobuf::io::StringOutputStream::~StringOutputStream(v114);
        return v111;
      case 2u:
        if (v7 != 18)
        {
          goto LABEL_40;
        }

        v14 = *(this + 8);
        goto LABEL_49;
      case 3u:
        if (v7 == 26)
        {
          goto LABEL_63;
        }

        goto LABEL_40;
      case 4u:
        if (v7 == 34)
        {
          goto LABEL_77;
        }

        goto LABEL_40;
      case 5u:
        if (v7 == 42)
        {
          goto LABEL_91;
        }

        goto LABEL_40;
      case 6u:
        if (v7 == 50)
        {
          goto LABEL_105;
        }

        goto LABEL_40;
      case 7u:
        if (v7 == 58)
        {
          goto LABEL_119;
        }

        goto LABEL_40;
      case 8u:
        if (v7 == 66)
        {
          goto LABEL_133;
        }

        goto LABEL_40;
      case 9u:
        if (v7 != 74)
        {
          goto LABEL_40;
        }

        goto LABEL_147;
      case 0xAu:
        if (v7 == 82)
        {
          goto LABEL_161;
        }

        goto LABEL_40;
      case 0xBu:
        if (v7 == 90)
        {
          goto LABEL_175;
        }

        goto LABEL_40;
      case 0xCu:
        if (v7 == 98)
        {
          goto LABEL_189;
        }

        goto LABEL_40;
      case 0xDu:
        if (v7 == 106)
        {
          goto LABEL_203;
        }

LABEL_40:
        if (v7 && (v7 & 7) != 4)
        {
          goto LABEL_42;
        }

        goto LABEL_219;
      default:
        goto LABEL_6;
    }
  }
}

void sub_214E08048(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x216063B80](v2, 0x10B3C40CCCF3E6ELL);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va1);
  _Unwind_Resume(a1);
}

uint64_t peernetworking::PeerNetworkMessage::SerializeWithCachedSizes(peernetworking::PeerNetworkMessage *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 8);
  if (v6)
  {
    this = google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 34), a2, a4);
    v6 = *(v5 + 8);
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

  v7 = *(v5 + 5);
  if (!v7)
  {
    peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
    v7 = *(peernetworking::PeerNetworkMessage::default_instance_ + 40);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2);
  v6 = *(v5 + 8);
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
  v8 = *(v5 + 6);
  if (!v8)
  {
    peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
    v8 = *(peernetworking::PeerNetworkMessage::default_instance_ + 48);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2);
  v6 = *(v5 + 8);
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
  v9 = *(v5 + 7);
  if (!v9)
  {
    peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
    v9 = *(peernetworking::PeerNetworkMessage::default_instance_ + 56);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2);
  v6 = *(v5 + 8);
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
  v10 = *(v5 + 8);
  if (!v10)
  {
    peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
    v10 = *(peernetworking::PeerNetworkMessage::default_instance_ + 64);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2);
  v6 = *(v5 + 8);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_28:
  v11 = *(v5 + 9);
  if (!v11)
  {
    peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
    v11 = *(peernetworking::PeerNetworkMessage::default_instance_ + 72);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(6, v11, a2);
  v6 = *(v5 + 8);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_31:
  v12 = *(v5 + 10);
  if (!v12)
  {
    peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
    v12 = *(peernetworking::PeerNetworkMessage::default_instance_ + 80);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(7, v12, a2);
  v6 = *(v5 + 8);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_34:
  v13 = *(v5 + 11);
  if (!v13)
  {
    peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
    v13 = *(peernetworking::PeerNetworkMessage::default_instance_ + 88);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(8, v13, a2);
  v6 = *(v5 + 8);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_37:
  v14 = *(v5 + 12);
  if (!v14)
  {
    peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
    v14 = *(peernetworking::PeerNetworkMessage::default_instance_ + 96);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(9, v14, a2);
  v6 = *(v5 + 8);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_40:
  v15 = *(v5 + 13);
  if (!v15)
  {
    peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
    v15 = *(peernetworking::PeerNetworkMessage::default_instance_ + 104);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(10, v15, a2);
  v6 = *(v5 + 8);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_43:
  v16 = *(v5 + 14);
  if (!v16)
  {
    peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
    v16 = *(peernetworking::PeerNetworkMessage::default_instance_ + 112);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(11, v16, a2);
  v6 = *(v5 + 8);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

LABEL_46:
  v17 = *(v5 + 15);
  if (!v17)
  {
    peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
    v17 = *(peernetworking::PeerNetworkMessage::default_instance_ + 120);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(12, v17, a2);
  if ((*(v5 + 8) & 0x1000) != 0)
  {
LABEL_49:
    v18 = *(v5 + 16);
    if (!v18)
    {
      peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
      v18 = *(peernetworking::PeerNetworkMessage::default_instance_ + 128);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(13, v18, a2);
  }

LABEL_52:
  v19 = *(v5 + 31);
  if (v19 < 0)
  {
    v20 = *(v5 + 1);
    v19 = *(v5 + 2);
  }

  else
  {
    v20 = v5 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v20, v19);
}

uint64_t peernetworking::PeerNetworkMessage::ByteSize(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_59;
  }

  if (v2)
  {
    this = *(this + 136);
    if (this >= 0x80)
    {
      this = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v3 = this + 1;
      v2 = *(v1 + 32);
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
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v4 = *(v1 + 40);
  if (!v4)
  {
    peernetworking::protobuf_AddDesc_peernetworking_2eproto(0);
    v4 = *(peernetworking::PeerNetworkMessage::default_instance_ + 40);
  }

  v5 = peernetworking::Note::ByteSize(v4);
  v6 = v5;
  if (v5 >= 0x80)
  {
    this = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    this = 1;
  }

  v3 += v6 + this + 1;
  v2 = *(v1 + 32);
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v7 = *(v1 + 48);
    if (!v7)
    {
      peernetworking::protobuf_AddDesc_peernetworking_2eproto(0);
      v7 = *(peernetworking::PeerNetworkMessage::default_instance_ + 48);
    }

    v8 = peernetworking::RequestNote::ByteSize(v7);
    v9 = v8;
    if (v8 >= 0x80)
    {
      this = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    }

    else
    {
      this = 1;
    }

    v3 += v9 + this + 1;
    v2 = *(v1 + 32);
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_35;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v10 = *(v1 + 56);
  if (!v10)
  {
    peernetworking::protobuf_AddDesc_peernetworking_2eproto(0);
    v10 = *(peernetworking::PeerNetworkMessage::default_instance_ + 56);
  }

  v11 = peernetworking::Attachment::ByteSize(v10);
  v12 = v11;
  if (v11 >= 0x80)
  {
    this = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
  }

  else
  {
    this = 1;
  }

  v3 += v12 + this + 1;
  v2 = *(v1 + 32);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_35:
  v13 = *(v1 + 64);
  if (!v13)
  {
    peernetworking::protobuf_AddDesc_peernetworking_2eproto(0);
    v13 = *(peernetworking::PeerNetworkMessage::default_instance_ + 64);
  }

  v14 = peernetworking::RequestAttachment::ByteSize(v13);
  v15 = v14;
  if (v14 >= 0x80)
  {
    this = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
  }

  else
  {
    this = 1;
  }

  v3 += v15 + this + 1;
  v2 = *(v1 + 32);
  if ((v2 & 0x20) == 0)
  {
LABEL_20:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_41:
  v16 = *(v1 + 72);
  if (!v16)
  {
    peernetworking::protobuf_AddDesc_peernetworking_2eproto(0);
    v16 = *(peernetworking::PeerNetworkMessage::default_instance_ + 72);
  }

  v17 = peernetworking::RequestMedia::ByteSize(v16);
  v18 = v17;
  if (v17 >= 0x80)
  {
    this = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
  }

  else
  {
    this = 1;
  }

  v3 += v18 + this + 1;
  v2 = *(v1 + 32);
  if ((v2 & 0x40) == 0)
  {
LABEL_21:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_53;
  }

LABEL_47:
  v19 = *(v1 + 80);
  if (!v19)
  {
    peernetworking::protobuf_AddDesc_peernetworking_2eproto(0);
    v19 = *(peernetworking::PeerNetworkMessage::default_instance_ + 80);
  }

  v20 = peernetworking::UnavailableMedia::ByteSize(v19);
  v21 = v20;
  if (v20 >= 0x80)
  {
    this = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
  }

  else
  {
    this = 1;
  }

  v3 += v21 + this + 1;
  v2 = *(v1 + 32);
  if ((v2 & 0x80) != 0)
  {
LABEL_53:
    v22 = *(v1 + 88);
    if (!v22)
    {
      peernetworking::protobuf_AddDesc_peernetworking_2eproto(0);
      v22 = *(peernetworking::PeerNetworkMessage::default_instance_ + 88);
    }

    v23 = peernetworking::Identity::ByteSize(v22);
    v24 = v23;
    if (v23 >= 0x80)
    {
      this = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
    }

    else
    {
      this = 1;
    }

    v3 += v24 + this + 1;
    v2 = *(v1 + 32);
  }

LABEL_59:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_99;
  }

  if ((v2 & 0x100) != 0)
  {
    v25 = *(v1 + 96);
    if (!v25)
    {
      peernetworking::protobuf_AddDesc_peernetworking_2eproto(0);
      v25 = *(peernetworking::PeerNetworkMessage::default_instance_ + 96);
    }

    v26 = peernetworking::Invite::ByteSize(v25);
    v27 = v26;
    if (v26 >= 0x80)
    {
      this = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
    }

    else
    {
      this = 1;
    }

    v3 += v27 + this + 1;
    v2 = *(v1 + 32);
    if ((v2 & 0x200) == 0)
    {
LABEL_62:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_78;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_62;
  }

  v28 = *(v1 + 104);
  if (!v28)
  {
    peernetworking::protobuf_AddDesc_peernetworking_2eproto(0);
    v28 = *(peernetworking::PeerNetworkMessage::default_instance_ + 104);
  }

  v29 = peernetworking::InviteReply::ByteSize(v28);
  v30 = v29;
  if (v29 >= 0x80)
  {
    this = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
  }

  else
  {
    this = 1;
  }

  v3 += v30 + this + 1;
  v2 = *(v1 + 32);
  if ((v2 & 0x400) == 0)
  {
LABEL_63:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_84;
  }

LABEL_78:
  v31 = *(v1 + 112);
  if (!v31)
  {
    peernetworking::protobuf_AddDesc_peernetworking_2eproto(0);
    v31 = *(peernetworking::PeerNetworkMessage::default_instance_ + 112);
  }

  v32 = peernetworking::ShareInfo::ByteSize(v31);
  v33 = v32;
  if (v32 >= 0x80)
  {
    this = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32);
  }

  else
  {
    this = 1;
  }

  v3 += v33 + this + 1;
  v2 = *(v1 + 32);
  if ((v2 & 0x800) == 0)
  {
LABEL_64:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_90;
  }

LABEL_84:
  v34 = *(v1 + 120);
  if (!v34)
  {
    peernetworking::protobuf_AddDesc_peernetworking_2eproto(0);
    v34 = *(peernetworking::PeerNetworkMessage::default_instance_ + 120);
  }

  v35 = peernetworking::Media::ByteSize(v34);
  v36 = v35;
  if (v35 >= 0x80)
  {
    this = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
  }

  else
  {
    this = 1;
  }

  v3 += v36 + this + 1;
  if ((*(v1 + 32) & 0x1000) != 0)
  {
LABEL_90:
    v37 = *(v1 + 128);
    if (!v37)
    {
      peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
      v37 = *(peernetworking::PeerNetworkMessage::default_instance_ + 128);
    }

    if (*(v37 + 31) >= 0)
    {
      v38 = *(v37 + 31);
    }

    else
    {
      v38 = *(v37 + 16);
    }

    *(v37 + 36) = v38;
    if (v38 >= 0x80)
    {
      v39 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38);
    }

    else
    {
      v39 = 1;
    }

    v3 += v38 + v39 + 1;
  }

LABEL_99:
  v40 = *(v1 + 31);
  if (v40 < 0)
  {
    v40 = *(v1 + 16);
  }

  result = (v3 + v40);
  *(v1 + 36) = result;
  return result;
}