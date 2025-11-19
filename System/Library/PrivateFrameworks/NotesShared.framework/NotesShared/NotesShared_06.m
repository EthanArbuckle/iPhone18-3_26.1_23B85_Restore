void sub_214F137C8(_Unwind_Exception *a1, uint64_t a2, ...)
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

uint64_t CRDT::Dictionary_Element::SerializeWithCachedSizes(CRDT::Dictionary_Element *this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 5);
    if (!v5)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v5 = *(CRDT::Dictionary_Element::default_instance_ + 40);
    }

    this = google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2);
    v4 = *(v3 + 8);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 6);
  if (!v6)
  {
    CRDT::protobuf_AddDesc_crframework_2eproto(this);
    v6 = *(CRDT::Dictionary_Element::default_instance_ + 48);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(2, v6, a2);
  v4 = *(v3 + 8);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  v7 = *(v3 + 7);
  if (!v7)
  {
    CRDT::protobuf_AddDesc_crframework_2eproto(this);
    v7 = *(CRDT::Dictionary_Element::default_instance_ + 56);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2);
  if ((*(v3 + 8) & 8) != 0)
  {
LABEL_15:
    v8 = *(v3 + 8);
    if (!v8)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v8 = *(CRDT::Dictionary_Element::default_instance_ + 64);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2);
  }

LABEL_18:
  v9 = *(v3 + 31);
  if (v9 < 0)
  {
    v10 = *(v3 + 1);
    v9 = *(v3 + 2);
  }

  else
  {
    v10 = v3 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v10, v9);
}

uint64_t CRDT::Dictionary_Element::ByteSize(CRDT::Dictionary_Element *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_33;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(this + 5);
  if (!v4)
  {
    CRDT::protobuf_AddDesc_crframework_2eproto(0);
    v4 = *(CRDT::Dictionary_Element::default_instance_ + 40);
  }

  v5 = CRDT::ObjectID::ByteSize(v4);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    v7 = 1;
  }

  v3 = v6 + v7 + 1;
  v2 = *(this + 8);
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 6);
    if (!v8)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(0);
      v8 = *(CRDT::Dictionary_Element::default_instance_ + 48);
    }

    v9 = CRDT::ObjectID::ByteSize(v8);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v3 += v10 + v11 + 1;
    v2 = *(this + 8);
  }

LABEL_18:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  v12 = *(this + 7);
  if (!v12)
  {
    CRDT::protobuf_AddDesc_crframework_2eproto(0);
    v12 = *(CRDT::Dictionary_Element::default_instance_ + 56);
  }

  v13 = CRDT::VectorTimestamp::ByteSize(v12);
  v14 = v13;
  if (v13 >= 0x80)
  {
    v15 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
  }

  else
  {
    v15 = 1;
  }

  v3 += v14 + v15 + 1;
  if ((*(this + 8) & 8) != 0)
  {
LABEL_27:
    v16 = *(this + 8);
    if (!v16)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(0);
      v16 = *(CRDT::Dictionary_Element::default_instance_ + 64);
    }

    v17 = CRDT::RegisterLatest::ByteSize(v16);
    v18 = v17;
    if (v17 >= 0x80)
    {
      v19 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
    }

    else
    {
      v19 = 1;
    }

    v3 += v18 + v19 + 1;
  }

LABEL_33:
  v20 = *(this + 31);
  if (v20 < 0)
  {
    v20 = *(this + 2);
  }

  result = (v3 + v20);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::Dictionary_Element::CheckTypeAndMergeFrom(CRDT::Dictionary_Element *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return CRDT::Dictionary_Element::MergeFrom(this, lpsrc);
}

std::string *CRDT::Dictionary::MergeFrom(CRDT::Dictionary *this, const CRDT::Dictionary *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/crframework.pb.cc", 1927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::Dictionary_Element>::TypeHandler>((this + 40), (a2 + 40));
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

void sub_214F13BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::Dictionary::~Dictionary(CRDT::Dictionary *this)
{
  *this = &unk_28270D1C8;
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 5);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  CRDT::Dictionary::~Dictionary(this);

  JUMPOUT(0x216063B80);
}

uint64_t CRDT::Dictionary::Clear(CRDT::Dictionary *this)
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

uint64_t CRDT::Dictionary::MergePartialFromCodedStream(CRDT::Dictionary *this, google::protobuf::io::CodedInputStream *a2)
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
        if (v14 >= v15 || (v16 = google::protobuf::io::CodedInputStream::PushLimit(a2, v27), !CRDT::Dictionary_Element::MergePartialFromCodedStream(v12, a2)) || *(a2 + 36) != 1)
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

void sub_214F14000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::Dictionary::SerializeWithCachedSizes(CRDT::Dictionary *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 12) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Dictionary_Element>::TypeHandler>(this + 40, v4);
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

uint64_t CRDT::Dictionary::ByteSize(CRDT::Dictionary *this)
{
  v2 = *(this + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Dictionary_Element>::TypeHandler>(this + 40, v3);
      v5 = CRDT::Dictionary_Element::ByteSize(v4);
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

std::string *CRDT::Dictionary::CheckTypeAndMergeFrom(CRDT::Dictionary *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return CRDT::Dictionary::MergeFrom(this, lpsrc);
}

std::string *CRDT::Index_Element::MergeFrom(CRDT::Index_Element *this, const CRDT::Index_Element *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/crframework.pb.cc", 2157);
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

void sub_214F142B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::Index_Element::~Index_Element(void **this)
{
  *this = &unk_28270D240;
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  CRDT::Index_Element::~Index_Element(this);

  JUMPOUT(0x216063B80);
}

uint64_t CRDT::Index_Element::Clear(uint64_t this)
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

uint64_t CRDT::Index_Element::MergePartialFromCodedStream(CRDT::Index_Element *this, google::protobuf::io::CodedInputStream *a2)
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

void sub_214F145F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::Index_Element::SerializeWithCachedSizes(CRDT::Index_Element *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CRDT::Index_Element::ByteSize(CRDT::Index_Element *this)
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

std::string *CRDT::Index_Element::CheckTypeAndMergeFrom(CRDT::Index_Element *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return CRDT::Index_Element::MergeFrom(this, lpsrc);
}

std::string *CRDT::Index::MergeFrom(CRDT::Index *this, const CRDT::Index *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/crframework.pb.cc", 2351);
    v4 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::Index_Element>::TypeHandler>((this + 40), (a2 + 40));
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

void sub_214F14848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::Index::~Index(CRDT::Index *this)
{
  *this = &unk_28270D2B8;
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 5);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  CRDT::Index::~Index(this);

  JUMPOUT(0x216063B80);
}

uint64_t CRDT::Index::Clear(CRDT::Index *this)
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

uint64_t CRDT::Index::MergePartialFromCodedStream(CRDT::Index *this, google::protobuf::io::CodedInputStream *a2)
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
        if (v14 >= v15 || (v16 = google::protobuf::io::CodedInputStream::PushLimit(a2, v27), !CRDT::Index_Element::MergePartialFromCodedStream(v12, a2)) || *(a2 + 36) != 1)
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

void sub_214F14C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::Index::SerializeWithCachedSizes(CRDT::Index *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 12) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Index_Element>::TypeHandler>(this + 40, v4);
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

uint64_t CRDT::Index::ByteSize(CRDT::Index *this)
{
  v2 = *(this + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Index_Element>::TypeHandler>(this + 40, v3);
      v5 = CRDT::Index_Element::ByteSize(v4);
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

std::string *CRDT::Index::CheckTypeAndMergeFrom(CRDT::Index *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return CRDT::Index::MergeFrom(this, lpsrc);
}

std::string *CRDT::OneOf_Element::MergeFrom(CRDT::OneOf_Element *this, const CRDT::OneOf_Element *a2)
{
  v3 = this;
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/crframework.pb.cc", 2586);
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
        v7 = *(CRDT::OneOf_Element::default_instance_ + 40);
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
        v9 = *(CRDT::OneOf_Element::default_instance_ + 48);
      }

      CRDT::Timestamp::MergeFrom(v8, v9);
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

void CRDT::OneOf_Element::~OneOf_Element(void **this)
{
  *this = &unk_28270D330;
  CRDT::OneOf_Element::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  CRDT::OneOf_Element::~OneOf_Element(this);

  JUMPOUT(0x216063B80);
}

void CRDT::OneOf_Element::SharedDtor(CRDT::OneOf_Element *this)
{
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (CRDT::OneOf_Element::default_instance_ != this)
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

uint64_t CRDT::OneOf_Element::Clear(uint64_t this)
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
        *(v4 + 40) = 0;
        *(v4 + 48) = 0;
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

uint64_t CRDT::OneOf_Element::MergePartialFromCodedStream(CRDT::OneOf_Element *this, google::protobuf::io::CodedInputStream *a2)
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
      if (!CRDT::ObjectID::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
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
        if (v21 >= v22 || (v23 = google::protobuf::io::CodedInputStream::PushLimit(a2, v30), !CRDT::Timestamp::MergePartialFromCodedStream(v19, a2)) || *(a2 + 36) != 1)
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

void sub_214F155A4(_Unwind_Exception *a1, uint64_t a2, ...)
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

uint64_t CRDT::OneOf_Element::SerializeWithCachedSizes(CRDT::OneOf_Element *this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 5);
    if (!v5)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v5 = *(CRDT::OneOf_Element::default_instance_ + 40);
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
      v6 = *(CRDT::OneOf_Element::default_instance_ + 48);
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

uint64_t CRDT::OneOf_Element::ByteSize(CRDT::OneOf_Element *this)
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
    v3 = *(CRDT::OneOf_Element::default_instance_ + 40);
  }

  v4 = CRDT::ObjectID::ByteSize(v3);
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
      v7 = *(CRDT::OneOf_Element::default_instance_ + 48);
    }

    v8 = CRDT::Timestamp::ByteSize(v7);
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

std::string *CRDT::OneOf_Element::CheckTypeAndMergeFrom(CRDT::OneOf_Element *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return CRDT::OneOf_Element::MergeFrom(this, lpsrc);
}

std::string *CRDT::OneOf::MergeFrom(CRDT::OneOf *this, const CRDT::OneOf *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/crframework.pb.cc", 2780);
    v4 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::OneOf_Element>::TypeHandler>((this + 40), (a2 + 40));
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

void sub_214F158B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::OneOf::~OneOf(CRDT::OneOf *this)
{
  *this = &unk_28270D3A8;
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 5);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  CRDT::OneOf::~OneOf(this);

  JUMPOUT(0x216063B80);
}

uint64_t CRDT::OneOf::Clear(CRDT::OneOf *this)
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

uint64_t CRDT::OneOf::MergePartialFromCodedStream(CRDT::OneOf *this, google::protobuf::io::CodedInputStream *a2)
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
        if (v14 >= v15 || (v16 = google::protobuf::io::CodedInputStream::PushLimit(a2, v27), !CRDT::OneOf_Element::MergePartialFromCodedStream(v12, a2)) || *(a2 + 36) != 1)
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

void sub_214F15CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::OneOf::SerializeWithCachedSizes(CRDT::OneOf *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 12) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::OneOf_Element>::TypeHandler>(this + 40, v4);
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

uint64_t CRDT::OneOf::ByteSize(CRDT::OneOf *this)
{
  v2 = *(this + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::OneOf_Element>::TypeHandler>(this + 40, v3);
      v5 = CRDT::OneOf_Element::ByteSize(v4);
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

std::string *CRDT::OneOf::CheckTypeAndMergeFrom(CRDT::OneOf *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return CRDT::OneOf::MergeFrom(this, lpsrc);
}

CRDT::StringArray_ArrayAttachment *CRDT::StringArray_ArrayAttachment::StringArray_ArrayAttachment(CRDT::StringArray_ArrayAttachment *this)
{
  *this = &unk_28270D420;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CRDT::StringArray_ArrayAttachment::SharedCtor(this);
  return this;
}

void sub_214F15F0C(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void CRDT::StringArray_ArrayAttachment::SharedCtor(CRDT::StringArray_ArrayAttachment *this)
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

  *(this + 5) = 0;
  *(this + 6) = v3;
  *(this + 4) = 0;
}

void sub_214F15FD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

CRDT::StringArray_ArrayAttachment *CRDT::StringArray_ArrayAttachment::StringArray_ArrayAttachment(CRDT::StringArray_ArrayAttachment *this, const CRDT::StringArray_ArrayAttachment *a2)
{
  *this = &unk_28270D420;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CRDT::StringArray_ArrayAttachment::SharedCtor(this);
  CRDT::StringArray_ArrayAttachment::MergeFrom(this, a2);
  return this;
}

void sub_214F16054(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

std::string *CRDT::StringArray_ArrayAttachment::MergeFrom(CRDT::StringArray_ArrayAttachment *this, const CRDT::StringArray_ArrayAttachment *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/crframework.pb.cc", 3006);
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
      v7 = *(a2 + 6);
      *(this + 8) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v8 = *(this + 6);
      if (v8 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
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

void sub_214F16198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::StringArray_ArrayAttachment::~StringArray_ArrayAttachment(void **this)
{
  *this = &unk_28270D420;
  CRDT::StringArray_ArrayAttachment::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  CRDT::StringArray_ArrayAttachment::~StringArray_ArrayAttachment(this);

  JUMPOUT(0x216063B80);
}

void CRDT::StringArray_ArrayAttachment::SharedDtor(CRDT::StringArray_ArrayAttachment *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v1 = *(this + 6);
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

  CRDT::protobuf_AddDesc_crframework_2eproto(this);
}

uint64_t CRDT::StringArray_ArrayAttachment::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 3) != 0)
  {
    *(this + 40) = 0;
    if ((v1 & 2) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v2 = *(this + 48);
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

uint64_t CRDT::StringArray_ArrayAttachment::MergePartialFromCodedStream(CRDT::StringArray_ArrayAttachment *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v19, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v18, v19);
  while (1)
  {
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
          if (v7 == 18)
          {
            v14 = *(this + 8);
            goto LABEL_28;
          }

LABEL_19:
          if (!v7 || (v7 & 7) == 4)
          {
            goto LABEL_36;
          }

          goto LABEL_16;
        }

        if (v7 >> 3 == 1)
        {
          break;
        }

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
LABEL_36:
          v16 = 1;
          goto LABEL_38;
        }

LABEL_16:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v18, v4))
        {
          goto LABEL_37;
        }
      }

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
          goto LABEL_37;
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

      v14 = *(this + 8) | 1;
      *(this + 8) = v14;
    }

    while (v12 >= v9 || *v12 != 18);
    *(a2 + 1) = v12 + 1;
LABEL_28:
    *(this + 8) = v14 | 2;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v15 = *(this + 6);
    if (v15 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v15))
    {
      break;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v16 = 1;
      *(a2 + 36) = 1;
      goto LABEL_38;
    }
  }

LABEL_37:
  v16 = 0;
LABEL_38:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v18);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v19);
  return v16;
}

void sub_214F165F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::StringArray_ArrayAttachment::SerializeWithCachedSizes(CRDT::StringArray_ArrayAttachment *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteInt64(1, *(this + 5), a2, a4);
    v6 = *(this + 8);
  }

  if ((v6 & 2) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(2, *(this + 6), a2);
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

uint64_t CRDT::StringArray_ArrayAttachment::ByteSize(CRDT::StringArray_ArrayAttachment *this)
{
  if (!*(this + 32))
  {
    v2 = 0;
    goto LABEL_16;
  }

  if (*(this + 32))
  {
    v2 = google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
    if ((*(this + 8) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v2 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v3 = *(this + 6);
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
    v8 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    v4 = *(v3 + 23);
    v6 = *(v3 + 8);
    v5 = *(v3 + 23);
  }

  else
  {
    v8 = 1;
  }

  if (v5 < 0)
  {
    v4 = v6;
  }

  v2 += v8 + v4 + 1;
LABEL_16:
  v9 = *(this + 31);
  if (v9 < 0)
  {
    v9 = *(this + 2);
  }

  result = (v2 + v9);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::StringArray_ArrayAttachment::CheckTypeAndMergeFrom(CRDT::StringArray_ArrayAttachment *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return CRDT::StringArray_ArrayAttachment::MergeFrom(this, lpsrc);
}

std::string *CRDT::StringArray::MergeFrom(CRDT::StringArray *this, const CRDT::StringArray *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/crframework.pb.cc", 3239);
    v4 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  v5 = google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::StringArray_ArrayAttachment>::TypeHandler>((this + 48), (a2 + 48));
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
      CRDT::protobuf_AddDesc_crframework_2eproto(v5);
      v7 = *(CRDT::StringArray::default_instance_ + 40);
    }

    topotext::String::MergeFrom(v6, v7);
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

void CRDT::StringArray::~StringArray(CRDT::StringArray *this)
{
  *this = &unk_28270D498;
  CRDT::StringArray::SharedDtor(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 6);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  CRDT::StringArray::~StringArray(this);

  JUMPOUT(0x216063B80);
}

void CRDT::StringArray::SharedDtor(CRDT::StringArray *this)
{
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (CRDT::StringArray::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CRDT::StringArray::Clear(CRDT::StringArray *this)
{
  if (*(this + 32))
  {
    v2 = *(this + 5);
    if (v2)
    {
      topotext::String::Clear(v2);
    }
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

uint64_t CRDT::StringArray::MergePartialFromCodedStream(CRDT::StringArray *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v33, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v32, v33);
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

      if (v7 >> 3 == 2)
      {
        if (v7 == 18)
        {
          goto LABEL_33;
        }

LABEL_21:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_55;
        }

        goto LABEL_18;
      }

      if (v7 >> 3 == 1)
      {
        break;
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

      if (v11)
      {
LABEL_55:
        v30 = 1;
        goto LABEL_56;
      }

LABEL_18:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v32, v4))
      {
        goto LABEL_54;
      }
    }

    if (v7 != 10)
    {
      goto LABEL_21;
    }

    *(this + 8) |= 1u;
    v9 = *(this + 5);
    if (!v9)
    {
      operator new();
    }

    v34 = 0;
    v10 = *(a2 + 1);
    if (v10 >= *(a2 + 2) || *v10 < 0)
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34))
      {
        goto LABEL_54;
      }
    }

    else
    {
      v34 = *v10;
      *(a2 + 1) = v10 + 1;
    }

    v12 = *(a2 + 14);
    v13 = *(a2 + 15);
    *(a2 + 14) = v12 + 1;
    if (v12 >= v13)
    {
      goto LABEL_54;
    }

    v14 = google::protobuf::io::CodedInputStream::PushLimit(a2, v34);
    if (!topotext::String::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
    {
      goto LABEL_54;
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
      do
      {
        *(a2 + 1) = v18 + 1;
LABEL_33:
        v19 = *(this + 15);
        v20 = *(this + 14);
        if (v20 >= v19)
        {
          if (v19 == *(this + 16))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 48, v19 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<CRDT::StringArray_ArrayAttachment>::New();
        }

        v21 = *(this + 6);
        *(this + 14) = v20 + 1;
        v22 = *(v21 + 8 * v20);
        v34 = 0;
        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2) || *v23 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34))
          {
            goto LABEL_54;
          }
        }

        else
        {
          v34 = *v23;
          *(a2 + 1) = v23 + 1;
        }

        v24 = *(a2 + 14);
        v25 = *(a2 + 15);
        *(a2 + 14) = v24 + 1;
        if (v24 >= v25 || (v26 = google::protobuf::io::CodedInputStream::PushLimit(a2, v34), !CRDT::StringArray_ArrayAttachment::MergePartialFromCodedStream(v22, a2)) || *(a2 + 36) != 1)
        {
LABEL_54:
          v30 = 0;
          goto LABEL_56;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v26);
        v27 = *(a2 + 14);
        v16 = __OFSUB__(v27, 1);
        v28 = v27 - 1;
        if (v28 < 0 == v16)
        {
          *(a2 + 14) = v28;
        }

        v18 = *(a2 + 1);
        v29 = *(a2 + 2);
      }

      while (v18 < v29 && *v18 == 18);
      if (v18 == v29 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        break;
      }
    }
  }

  *(a2 + 8) = 0;
  v30 = 1;
  *(a2 + 36) = 1;
LABEL_56:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v32);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v33);
  return v30;
}

void sub_214F16E9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x216063B80](v2, 0x10B3C406C843DA2);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va1);
  _Unwind_Resume(a1);
}

uint64_t CRDT::StringArray::SerializeWithCachedSizes(CRDT::StringArray *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 32))
  {
    v4 = *(this + 5);
    if (!v4)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v4 = *(CRDT::StringArray::default_instance_ + 40);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(1, v4, a2);
  }

  if (*(this + 14) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::StringArray_ArrayAttachment>::TypeHandler>(this + 48, v5);
      google::protobuf::internal::WireFormatLite::WriteMessage(2, v6, a2);
      ++v5;
    }

    while (v5 < *(this + 14));
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

uint64_t CRDT::StringArray::ByteSize(CRDT::StringArray *this)
{
  if (*(this + 32))
  {
    v3 = *(this + 5);
    if (!v3)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(0);
      v3 = *(CRDT::StringArray::default_instance_ + 40);
    }

    v4 = topotext::String::ByteSize(v3);
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

  v7 = *(this + 14);
  v8 = v7 + v2;
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::StringArray_ArrayAttachment>::TypeHandler>(this + 48, v9);
      v11 = CRDT::StringArray_ArrayAttachment::ByteSize(v10);
      v12 = v11;
      if (v11 >= 0x80)
      {
        v13 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
      }

      else
      {
        v13 = 1;
      }

      v8 += v12 + v13;
      ++v9;
    }

    while (v9 < *(this + 14));
  }

  v14 = *(this + 31);
  if (v14 < 0)
  {
    v14 = *(this + 2);
  }

  result = (v8 + v14);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::StringArray::CheckTypeAndMergeFrom(CRDT::StringArray *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return CRDT::StringArray::MergeFrom(this, lpsrc);
}

std::string *CRDT::Array::MergeFrom(CRDT::Array *this, const CRDT::Array *a2)
{
  v3 = this;
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/crframework.pb.cc", 3480);
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
        v7 = *(CRDT::Array::default_instance_ + 40);
      }

      this = CRDT::StringArray::MergeFrom(v6, v7);
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
        v9 = *(CRDT::Array::default_instance_ + 48);
      }

      CRDT::Dictionary::MergeFrom(v8, v9);
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

void sub_214F172DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::Array::~Array(void **this)
{
  *this = &unk_28270D510;
  CRDT::Array::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  CRDT::Array::~Array(this);

  JUMPOUT(0x216063B80);
}

void CRDT::Array::SharedDtor(CRDT::Array *this)
{
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (CRDT::Array::default_instance_ != this)
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

uint64_t CRDT::Array::Clear(uint64_t this)
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
        this = CRDT::StringArray::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 2) != 0)
    {
      v3 = *(v1 + 48);
      if (v3)
      {
        this = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(v3 + 40);
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

uint64_t CRDT::Array::MergePartialFromCodedStream(CRDT::Array *this, google::protobuf::io::CodedInputStream *a2)
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
      if (!CRDT::StringArray::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
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
        if (v21 >= v22 || (v23 = google::protobuf::io::CodedInputStream::PushLimit(a2, v30), !CRDT::Dictionary::MergePartialFromCodedStream(v19, a2)) || *(a2 + 36) != 1)
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

void sub_214F178C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::Array::SerializeWithCachedSizes(CRDT::Array *this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 5);
    if (!v5)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v5 = *(CRDT::Array::default_instance_ + 40);
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
      v6 = *(CRDT::Array::default_instance_ + 48);
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

uint64_t CRDT::Array::ByteSize(CRDT::Array *this)
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
    v3 = *(CRDT::Array::default_instance_ + 40);
  }

  v4 = CRDT::StringArray::ByteSize(v3);
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
      v7 = *(CRDT::Array::default_instance_ + 48);
    }

    v8 = CRDT::Dictionary::ByteSize(v7);
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

std::string *CRDT::Array::CheckTypeAndMergeFrom(CRDT::Array *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return CRDT::Array::MergeFrom(this, lpsrc);
}

std::string *CRDT::OrderedSet::MergeFrom(CRDT::OrderedSet *this, const CRDT::OrderedSet *a2)
{
  v3 = this;
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/crframework.pb.cc", 3723);
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
        v7 = *(CRDT::OrderedSet::default_instance_ + 40);
      }

      this = CRDT::Array::MergeFrom(v6, v7);
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
        v9 = *(CRDT::OrderedSet::default_instance_ + 48);
      }

      CRDT::Dictionary::MergeFrom(v8, v9);
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

void sub_214F17CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::OrderedSet::~OrderedSet(void **this)
{
  *this = &unk_28270D588;
  CRDT::OrderedSet::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  CRDT::OrderedSet::~OrderedSet(this);

  JUMPOUT(0x216063B80);
}

void CRDT::OrderedSet::SharedDtor(CRDT::OrderedSet *this)
{
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (CRDT::OrderedSet::default_instance_ != this)
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

uint64_t CRDT::OrderedSet::Clear(uint64_t this)
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
        this = CRDT::Array::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 2) != 0)
    {
      v3 = *(v1 + 48);
      if (v3)
      {
        this = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(v3 + 40);
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

uint64_t CRDT::OrderedSet::MergePartialFromCodedStream(CRDT::OrderedSet *this, google::protobuf::io::CodedInputStream *a2)
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
      if (!CRDT::Array::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
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
        if (v21 >= v22 || (v23 = google::protobuf::io::CodedInputStream::PushLimit(a2, v30), !CRDT::Dictionary::MergePartialFromCodedStream(v19, a2)) || *(a2 + 36) != 1)
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

void sub_214F182AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::OrderedSet::SerializeWithCachedSizes(CRDT::OrderedSet *this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 5);
    if (!v5)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v5 = *(CRDT::OrderedSet::default_instance_ + 40);
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
      v6 = *(CRDT::OrderedSet::default_instance_ + 48);
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

uint64_t CRDT::OrderedSet::ByteSize(CRDT::OrderedSet *this)
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
    v3 = *(CRDT::OrderedSet::default_instance_ + 40);
  }

  v4 = CRDT::Array::ByteSize(v3);
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
      v7 = *(CRDT::OrderedSet::default_instance_ + 48);
    }

    v8 = CRDT::Dictionary::ByteSize(v7);
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

std::string *CRDT::OrderedSet::CheckTypeAndMergeFrom(CRDT::OrderedSet *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return CRDT::OrderedSet::MergeFrom(this, lpsrc);
}

std::string *CRDT::Document_CustomObject_MapEntry::MergeFrom(CRDT::Document_CustomObject_MapEntry *this, const CRDT::Document_CustomObject_MapEntry *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/crframework.pb.cc", 3958);
    v4 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 12);
      *(this + 8) |= 1u;
      *(this + 12) = v6;
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      *(this + 8) |= 2u;
      v7 = *(this + 5);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 5);
      if (!v8)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(this);
        v8 = *(CRDT::Document_CustomObject_MapEntry::default_instance_ + 40);
      }

      CRDT::ObjectID::MergeFrom(v7, v8);
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

void CRDT::Document_CustomObject_MapEntry::~Document_CustomObject_MapEntry(void **this)
{
  *this = &unk_28270D600;
  CRDT::Document_CustomObject_MapEntry::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  CRDT::Document_CustomObject_MapEntry::~Document_CustomObject_MapEntry(this);

  JUMPOUT(0x216063B80);
}

void CRDT::Document_CustomObject_MapEntry::SharedDtor(CRDT::Document_CustomObject_MapEntry *this)
{
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (CRDT::Document_CustomObject_MapEntry::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CRDT::Document_CustomObject_MapEntry::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  if ((v2 & 3) != 0)
  {
    *(this + 48) = 0;
    if ((v2 & 2) != 0)
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

uint64_t CRDT::Document_CustomObject_MapEntry::MergePartialFromCodedStream(CRDT::Document_CustomObject_MapEntry *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v26, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v25, v26);
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
        v14 = *(this + 8);
        goto LABEL_28;
      }

      goto LABEL_19;
    }

    if (v7 >> 3 != 1)
    {
      break;
    }

    if (v7 == 8)
    {
      v27 = 0;
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v10 >= v9 || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
        {
          goto LABEL_43;
        }

        v11 = v27;
        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 12) = v11;
      v14 = *(this + 8) | 1;
      *(this + 8) = v14;
      if (v12 < v9 && *v12 == 18)
      {
        *(a2 + 1) = v12 + 1;
LABEL_28:
        *(this + 8) = v14 | 2;
        v15 = *(this + 5);
        if (!v15)
        {
          operator new();
        }

        v27 = 0;
        v16 = *(a2 + 1);
        if (v16 >= *(a2 + 2) || *v16 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
          {
            goto LABEL_43;
          }
        }

        else
        {
          v27 = *v16;
          *(a2 + 1) = v16 + 1;
        }

        v17 = *(a2 + 14);
        v18 = *(a2 + 15);
        *(a2 + 14) = v17 + 1;
        if (v17 >= v18 || (v19 = google::protobuf::io::CodedInputStream::PushLimit(a2, v27), !CRDT::ObjectID::MergePartialFromCodedStream(v15, a2)) || *(a2 + 36) != 1)
        {
LABEL_43:
          v23 = 0;
          goto LABEL_45;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v19);
        v20 = *(a2 + 14);
        v21 = __OFSUB__(v20, 1);
        v22 = v20 - 1;
        if (v22 < 0 == v21)
        {
          *(a2 + 14) = v22;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          v23 = 1;
          *(a2 + 36) = 1;
          goto LABEL_45;
        }
      }
    }

    else
    {
LABEL_19:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_44;
      }

LABEL_16:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v25, v4))
      {
        goto LABEL_43;
      }
    }
  }

  if (v7)
  {
    v13 = (v7 & 7) == 4;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_44:
  v23 = 1;
LABEL_45:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v25);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v26);
  return v23;
}

void sub_214F18B00(_Unwind_Exception *a1, uint64_t a2, ...)
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

uint64_t CRDT::Document_CustomObject_MapEntry::SerializeWithCachedSizes(CRDT::Document_CustomObject_MapEntry *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 8);
  if (v6)
  {
    this = google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 12), a2, a4);
    v6 = *(v5 + 8);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 5);
    if (!v7)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v7 = *(CRDT::Document_CustomObject_MapEntry::default_instance_ + 40);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2);
  }

  v8 = *(v5 + 31);
  if (v8 < 0)
  {
    v9 = *(v5 + 1);
    v8 = *(v5 + 2);
  }

  else
  {
    v9 = v5 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v9, v8);
}

uint64_t CRDT::Document_CustomObject_MapEntry::ByteSize(CRDT::Document_CustomObject_MapEntry *this)
{
  v2 = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if (*(this + 32))
  {
    v4 = *(this + 12);
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
      v3 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      if ((*(this + 8) & 2) == 0)
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
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v5 = *(this + 5);
  if (!v5)
  {
    CRDT::protobuf_AddDesc_crframework_2eproto(0);
    v5 = *(CRDT::Document_CustomObject_MapEntry::default_instance_ + 40);
  }

  v6 = CRDT::ObjectID::ByteSize(v5);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v3 += v7 + v8 + 1;
LABEL_19:
  v9 = *(this + 31);
  if (v9 < 0)
  {
    v9 = *(this + 2);
  }

  result = (v3 + v9);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::Document_CustomObject_MapEntry::CheckTypeAndMergeFrom(CRDT::Document_CustomObject_MapEntry *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return CRDT::Document_CustomObject_MapEntry::MergeFrom(this, lpsrc);
}

std::string *CRDT::Document_CustomObject::MergeFrom(CRDT::Document_CustomObject *this, const CRDT::Document_CustomObject *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/crframework.pb.cc", 4184);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::Document_CustomObject_MapEntry>::TypeHandler>((this + 40), (a2 + 40));
  if (*(a2 + 32))
  {
    v5 = *(a2 + 16);
    *(this + 8) |= 1u;
    *(this + 16) = v5;
  }

  v8 = *(a2 + 1);
  v7 = a2 + 8;
  v6 = v8;
  v9 = v7[23];
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = v7[23];
  }

  else
  {
    v11 = *(v7 + 1);
  }

  return std::string::append((this + 8), v10, v11);
}

void sub_214F18E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CRDT::Document_CustomObject::~Document_CustomObject(CRDT::Document_CustomObject *this)
{
  *this = &unk_28270D678;
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 5);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  CRDT::Document_CustomObject::~Document_CustomObject(this);

  JUMPOUT(0x216063B80);
}

uint64_t CRDT::Document_CustomObject::Clear(CRDT::Document_CustomObject *this)
{
  *(this + 16) = 0;
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

uint64_t CRDT::Document_CustomObject::MergePartialFromCodedStream(CRDT::Document_CustomObject *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v29, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v28, v29);
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

      if (v7 >> 3 == 3)
      {
        if (v7 == 26)
        {
          goto LABEL_27;
        }

LABEL_19:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_49;
        }

        goto LABEL_16;
      }

      if (v7 >> 3 == 1)
      {
        break;
      }

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
LABEL_49:
        v26 = 1;
        goto LABEL_50;
      }

LABEL_16:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v28, v4))
      {
        goto LABEL_48;
      }
    }

    if (v7 != 8)
    {
      goto LABEL_19;
    }

    v30 = 0;
    v9 = *(a2 + 1);
    v10 = *(a2 + 2);
    if (v9 >= v10 || (v11 = *v9, (v11 & 0x80000000) != 0))
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
      {
        goto LABEL_48;
      }

      v11 = v30;
      v12 = *(a2 + 1);
      v10 = *(a2 + 2);
    }

    else
    {
      v12 = v9 + 1;
      *(a2 + 1) = v12;
    }

    *(this + 16) = v11;
    *(this + 8) |= 1u;
    if (v12 < v10 && *v12 == 26)
    {
      do
      {
        *(a2 + 1) = v12 + 1;
LABEL_27:
        v14 = *(this + 13);
        v15 = *(this + 12);
        if (v15 >= v14)
        {
          if (v14 == *(this + 14))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 40, v14 + 1);
          }

          operator new();
        }

        v16 = *(this + 5);
        *(this + 12) = v15 + 1;
        v17 = *(v16 + 8 * v15);
        v30 = 0;
        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
          {
            goto LABEL_48;
          }
        }

        else
        {
          v30 = *v18;
          *(a2 + 1) = v18 + 1;
        }

        v19 = *(a2 + 14);
        v20 = *(a2 + 15);
        *(a2 + 14) = v19 + 1;
        if (v19 >= v20 || (v21 = google::protobuf::io::CodedInputStream::PushLimit(a2, v30), !CRDT::Document_CustomObject_MapEntry::MergePartialFromCodedStream(v17, a2)) || *(a2 + 36) != 1)
        {
LABEL_48:
          v26 = 0;
          goto LABEL_50;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v21);
        v22 = *(a2 + 14);
        v23 = __OFSUB__(v22, 1);
        v24 = v22 - 1;
        if (v24 < 0 == v23)
        {
          *(a2 + 14) = v24;
        }

        v12 = *(a2 + 1);
        v25 = *(a2 + 2);
      }

      while (v12 < v25 && *v12 == 26);
      if (v12 == v25 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        break;
      }
    }
  }

  *(a2 + 8) = 0;
  v26 = 1;
  *(a2 + 36) = 1;
LABEL_50:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v28);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v29);
  return v26;
}

void sub_214F192CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t CRDT::Document_CustomObject::SerializeWithCachedSizes(CRDT::Document_CustomObject *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 32))
  {
    google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 16), a2, a4);
  }

  if (*(this + 12) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_CustomObject_MapEntry>::TypeHandler>(this + 40, v6);
      google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2);
      ++v6;
    }

    while (v6 < *(this + 12));
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

uint64_t CRDT::Document_CustomObject::ByteSize(CRDT::Document_CustomObject *this)
{
  if (*(this + 32))
  {
    v3 = *(this + 16);
    if ((v3 & 0x80000000) != 0)
    {
      v2 = 11;
    }

    else if (v3 >= 0x80)
    {
      v2 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
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

  v4 = *(this + 12);
  v5 = v4 + v2;
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_CustomObject_MapEntry>::TypeHandler>(this + 40, v6);
      v8 = CRDT::Document_CustomObject_MapEntry::ByteSize(v7);
      v9 = v8;
      if (v8 >= 0x80)
      {
        v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      }

      else
      {
        v10 = 1;
      }

      v5 += v9 + v10;
      ++v6;
    }

    while (v6 < *(this + 12));
  }

  v11 = *(this + 31);
  if (v11 < 0)
  {
    v11 = *(this + 2);
  }

  result = (v5 + v11);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::Document_CustomObject::CheckTypeAndMergeFrom(CRDT::Document_CustomObject *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return CRDT::Document_CustomObject::MergeFrom(this, lpsrc);
}

BOOL google::protobuf::internal::AllAreInitialized<google::protobuf::RepeatedPtrField<CRDT::Document_CustomObject_MapEntry>>(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    v4 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v4)
    {
      break;
    }

    v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_CustomObject_MapEntry>::TypeHandler>(a1, v2);
  }

  while (((*(*v5 + 40))(v5) & 1) != 0);
  return v3 < 1;
}

std::string *CRDT::Document_DocObject::MergeFrom(const CRDT::RegisterLatest **this, const CRDT::RegisterLatest **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/crframework.pb.cc", 4864);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  switch(*(a2 + 12))
  {
    case 1:
      if (*(this + 12) != 1)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 1;
        operator new();
      }

      goto LABEL_25;
    case 2:
      if (*(this + 12) != 2)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 2;
        operator new();
      }

      goto LABEL_25;
    case 3:
      if (*(this + 12) != 3)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 3;
        operator new();
      }

LABEL_25:
      CRDT::RegisterLatest::MergeFrom(this[5], a2[5]);
      break;
    case 4:
      if (*(this + 12) != 4)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 4;
        operator new();
      }

      goto LABEL_27;
    case 5:
      if (*(this + 12) != 5)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 5;
        operator new();
      }

      goto LABEL_27;
    case 6:
      if (*(this + 12) != 6)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 6;
        operator new();
      }

LABEL_27:
      CRDT::Dictionary::MergeFrom(this[5], a2[5]);
      break;
    case 7:
      if (*(this + 12) != 7)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 7;
        operator new();
      }

      CRDT::Timestamp::MergeFrom(this[5], a2[5]);
      break;
    case 8:
      if (*(this + 12) != 8)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 8;
        operator new();
      }

      CRDT::VectorTimestamp::MergeFrom(this[5], a2[5]);
      break;
    case 9:
      if (*(this + 12) != 9)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 9;
        operator new();
      }

      CRDT::Index::MergeFrom(this[5], a2[5]);
      break;
    case 0xA:
      if (*(this + 12) != 10)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 10;
        operator new();
      }

      topotext::String::MergeFrom(this[5], a2[5]);
      break;
    case 0xB:
      v5 = a2[5];
      if (*(this + 12) != 11)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 11;
      }

      this[5] = v5;
      break;
    case 0xC:
      if (*(this + 12) != 12)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 12;
        operator new();
      }

      CRDT::OneOf::MergeFrom(this[5], a2[5]);
      break;
    case 0xD:
      if (*(this + 12) != 13)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 13;
        operator new();
      }

      CRDT::Document_CustomObject::MergeFrom(this[5], a2[5]);
      break;
    case 0xE:
      if (*(this + 12) != 14)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 14;
        operator new();
      }

      CRDT::StringArray::MergeFrom(this[5], a2[5]);
      break;
    case 0xF:
      if (*(this + 12) != 15)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 15;
        operator new();
      }

      CRDT::Array::MergeFrom(this[5], a2[5]);
      break;
    case 0x10:
      if (*(this + 12) != 16)
      {
        CRDT::Document_DocObject::clear_contents(this);
        *(this + 12) = 16;
        operator new();
      }

      CRDT::OrderedSet::MergeFrom(this[5], a2[5]);
      break;
    default:
      break;
  }

  v8 = a2[1];
  v7 = (a2 + 1);
  v6 = v8;
  v9 = v7[23];
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = v7[23];
  }

  else
  {
    v11 = *(v7 + 1);
  }

  return std::string::append((this + 1), v10, v11);
}

void CRDT::Document_DocObject::~Document_DocObject(CRDT::Document_DocObject *this)
{
  v1 = this;
  *this = &unk_28270D6F0;
  if (*(this + 12))
  {
    this = CRDT::Document_DocObject::clear_contents(this);
  }

  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 1));
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
}

{
  CRDT::Document_DocObject::~Document_DocObject(this);

  JUMPOUT(0x216063B80);
}

uint64_t CRDT::Document_DocObject::clear_contents(uint64_t this)
{
  v1 = this;
  switch(*(this + 48))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
      this = *(this + 40);
      if (this)
      {
        this = (*(*this + 8))(this);
      }

      break;
    default:
      break;
  }

  *(v1 + 48) = 0;
  return this;
}

uint64_t CRDT::Document_DocObject::Clear(CRDT::Document_DocObject *this)
{
  result = CRDT::Document_DocObject::clear_contents(this);
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

uint64_t CRDT::Document_DocObject::MergePartialFromCodedStream(CRDT::Document_DocObject *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v140, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v139, v140);
  while (2)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v5 < v6)
      {
        v7 = *v5;
        if (*v5 >= 1)
        {
          *(a2 + 8) = v7;
          v8 = (v5 + 1);
          goto LABEL_8;
        }

        if ((v5 + 1) < v6)
        {
          v9 = v5[1];
          if ((v7 & ~v9) >= 0x80)
          {
            break;
          }
        }
      }

      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      v10 = TagFallback | ((TagFallback - 1 < 0x3FFF) << 32);
      if ((v10 & 0x100000000) != 0)
      {
        goto LABEL_16;
      }

LABEL_9:
      if (v10)
      {
        v11 = (v10 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
LABEL_286:
        v137 = 1;
        goto LABEL_287;
      }

LABEL_52:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v10, v139, v4))
      {
        goto LABEL_285;
      }
    }

    v7 = (v7 + (v9 << 7) - 128);
    *(a2 + 8) = v7;
    v8 = (v5 + 2);
LABEL_8:
    *(a2 + 1) = v8;
    v10 = v7 | 0x100000000;
LABEL_16:
    switch(v10 >> 3)
    {
      case 1u:
        if (v10 != 10)
        {
          goto LABEL_50;
        }

        if (*(this + 12) != 1)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 1;
          operator new();
        }

        v13 = *(this + 5);
        v141 = 0;
        v15 = *(a2 + 1);
        if (v15 >= *(a2 + 2) || *v15 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v15;
          *(a2 + 1) = v15 + 1;
        }

        v16 = *(a2 + 14);
        v17 = *(a2 + 15);
        *(a2 + 14) = v16 + 1;
        if (v16 >= v17)
        {
          goto LABEL_285;
        }

        v18 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::RegisterLatest::MergePartialFromCodedStream(v13, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v18);
        v19 = *(a2 + 14);
        v20 = __OFSUB__(v19, 1);
        v21 = v19 - 1;
        if (v21 < 0 == v20)
        {
          *(a2 + 14) = v21;
        }

        v22 = *(a2 + 1);
        if (v22 >= *(a2 + 2) || *v22 != 18)
        {
          continue;
        }

        *(a2 + 1) = v22 + 1;
LABEL_67:
        if (*(this + 12) != 2)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 2;
          operator new();
        }

        v23 = *(this + 5);
        v141 = 0;
        v24 = *(a2 + 1);
        if (v24 >= *(a2 + 2) || *v24 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v24;
          *(a2 + 1) = v24 + 1;
        }

        v25 = *(a2 + 14);
        v26 = *(a2 + 15);
        *(a2 + 14) = v25 + 1;
        if (v25 >= v26)
        {
          goto LABEL_285;
        }

        v27 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::RegisterLatest::MergePartialFromCodedStream(v23, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v27);
        v28 = *(a2 + 14);
        v20 = __OFSUB__(v28, 1);
        v29 = v28 - 1;
        if (v29 < 0 == v20)
        {
          *(a2 + 14) = v29;
        }

        v30 = *(a2 + 1);
        if (v30 >= *(a2 + 2) || *v30 != 26)
        {
          continue;
        }

        *(a2 + 1) = v30 + 1;
LABEL_82:
        if (*(this + 12) != 3)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 3;
          operator new();
        }

        v31 = *(this + 5);
        v141 = 0;
        v32 = *(a2 + 1);
        if (v32 >= *(a2 + 2) || *v32 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v32;
          *(a2 + 1) = v32 + 1;
        }

        v33 = *(a2 + 14);
        v34 = *(a2 + 15);
        *(a2 + 14) = v33 + 1;
        if (v33 >= v34)
        {
          goto LABEL_285;
        }

        v35 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::RegisterLatest::MergePartialFromCodedStream(v31, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v35);
        v36 = *(a2 + 14);
        v20 = __OFSUB__(v36, 1);
        v37 = v36 - 1;
        if (v37 < 0 == v20)
        {
          *(a2 + 14) = v37;
        }

        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 != 34)
        {
          continue;
        }

        *(a2 + 1) = v38 + 1;
LABEL_97:
        if (*(this + 12) != 4)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 4;
          operator new();
        }

        v39 = *(this + 5);
        v141 = 0;
        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v40;
          *(a2 + 1) = v40 + 1;
        }

        v41 = *(a2 + 14);
        v42 = *(a2 + 15);
        *(a2 + 14) = v41 + 1;
        if (v41 >= v42)
        {
          goto LABEL_285;
        }

        v43 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::Dictionary::MergePartialFromCodedStream(v39, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v43);
        v44 = *(a2 + 14);
        v20 = __OFSUB__(v44, 1);
        v45 = v44 - 1;
        if (v45 < 0 == v20)
        {
          *(a2 + 14) = v45;
        }

        v46 = *(a2 + 1);
        if (v46 >= *(a2 + 2) || *v46 != 42)
        {
          continue;
        }

        *(a2 + 1) = v46 + 1;
LABEL_112:
        if (*(this + 12) != 5)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 5;
          operator new();
        }

        v47 = *(this + 5);
        v141 = 0;
        v48 = *(a2 + 1);
        if (v48 >= *(a2 + 2) || *v48 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v48;
          *(a2 + 1) = v48 + 1;
        }

        v49 = *(a2 + 14);
        v50 = *(a2 + 15);
        *(a2 + 14) = v49 + 1;
        if (v49 >= v50)
        {
          goto LABEL_285;
        }

        v51 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::Dictionary::MergePartialFromCodedStream(v47, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v51);
        v52 = *(a2 + 14);
        v20 = __OFSUB__(v52, 1);
        v53 = v52 - 1;
        if (v53 < 0 == v20)
        {
          *(a2 + 14) = v53;
        }

        v54 = *(a2 + 1);
        if (v54 >= *(a2 + 2) || *v54 != 50)
        {
          continue;
        }

        *(a2 + 1) = v54 + 1;
LABEL_127:
        if (*(this + 12) != 6)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 6;
          operator new();
        }

        v55 = *(this + 5);
        v141 = 0;
        v56 = *(a2 + 1);
        if (v56 >= *(a2 + 2) || *v56 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v56;
          *(a2 + 1) = v56 + 1;
        }

        v57 = *(a2 + 14);
        v58 = *(a2 + 15);
        *(a2 + 14) = v57 + 1;
        if (v57 >= v58)
        {
          goto LABEL_285;
        }

        v59 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::Dictionary::MergePartialFromCodedStream(v55, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v59);
        v60 = *(a2 + 14);
        v20 = __OFSUB__(v60, 1);
        v61 = v60 - 1;
        if (v61 < 0 == v20)
        {
          *(a2 + 14) = v61;
        }

        v62 = *(a2 + 1);
        if (v62 >= *(a2 + 2) || *v62 != 58)
        {
          continue;
        }

        *(a2 + 1) = v62 + 1;
LABEL_142:
        if (*(this + 12) != 7)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 7;
          operator new();
        }

        v63 = *(this + 5);
        v141 = 0;
        v64 = *(a2 + 1);
        if (v64 >= *(a2 + 2) || *v64 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v64;
          *(a2 + 1) = v64 + 1;
        }

        v65 = *(a2 + 14);
        v66 = *(a2 + 15);
        *(a2 + 14) = v65 + 1;
        if (v65 >= v66)
        {
          goto LABEL_285;
        }

        v67 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::Timestamp::MergePartialFromCodedStream(v63, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v67);
        v68 = *(a2 + 14);
        v20 = __OFSUB__(v68, 1);
        v69 = v68 - 1;
        if (v69 < 0 == v20)
        {
          *(a2 + 14) = v69;
        }

        v70 = *(a2 + 1);
        if (v70 >= *(a2 + 2) || *v70 != 66)
        {
          continue;
        }

        *(a2 + 1) = v70 + 1;
LABEL_157:
        if (*(this + 12) != 8)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 8;
          operator new();
        }

        v71 = *(this + 5);
        v141 = 0;
        v72 = *(a2 + 1);
        if (v72 >= *(a2 + 2) || *v72 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v72;
          *(a2 + 1) = v72 + 1;
        }

        v73 = *(a2 + 14);
        v74 = *(a2 + 15);
        *(a2 + 14) = v73 + 1;
        if (v73 >= v74)
        {
          goto LABEL_285;
        }

        v75 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::VectorTimestamp::MergePartialFromCodedStream(v71, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v75);
        v76 = *(a2 + 14);
        v20 = __OFSUB__(v76, 1);
        v77 = v76 - 1;
        if (v77 < 0 == v20)
        {
          *(a2 + 14) = v77;
        }

        v78 = *(a2 + 1);
        if (v78 >= *(a2 + 2) || *v78 != 74)
        {
          continue;
        }

        *(a2 + 1) = v78 + 1;
LABEL_172:
        if (*(this + 12) != 9)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 9;
          operator new();
        }

        v79 = *(this + 5);
        v141 = 0;
        v80 = *(a2 + 1);
        if (v80 >= *(a2 + 2) || *v80 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v80;
          *(a2 + 1) = v80 + 1;
        }

        v81 = *(a2 + 14);
        v82 = *(a2 + 15);
        *(a2 + 14) = v81 + 1;
        if (v81 >= v82)
        {
          goto LABEL_285;
        }

        v83 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::Index::MergePartialFromCodedStream(v79, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v83);
        v84 = *(a2 + 14);
        v20 = __OFSUB__(v84, 1);
        v85 = v84 - 1;
        if (v85 < 0 == v20)
        {
          *(a2 + 14) = v85;
        }

        v86 = *(a2 + 1);
        if (v86 >= *(a2 + 2) || *v86 != 82)
        {
          continue;
        }

        *(a2 + 1) = v86 + 1;
LABEL_187:
        if (*(this + 12) != 10)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 10;
          operator new();
        }

        v87 = *(this + 5);
        v141 = 0;
        v88 = *(a2 + 1);
        if (v88 >= *(a2 + 2) || *v88 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v88;
          *(a2 + 1) = v88 + 1;
        }

        v89 = *(a2 + 14);
        v90 = *(a2 + 15);
        *(a2 + 14) = v89 + 1;
        if (v89 >= v90)
        {
          goto LABEL_285;
        }

        v91 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!topotext::String::MergePartialFromCodedStream(v87, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v91);
        v92 = *(a2 + 14);
        v20 = __OFSUB__(v92, 1);
        v93 = v92 - 1;
        if (v93 < 0 == v20)
        {
          *(a2 + 14) = v93;
        }

        v94 = *(a2 + 1);
        if (v94 >= *(a2 + 2) || *v94 != 88)
        {
          continue;
        }

        *(a2 + 1) = v94 + 1;
LABEL_202:
        CRDT::Document_DocObject::clear_contents(this);
        v96 = *(a2 + 1);
        v95 = *(a2 + 2);
        if (v96 >= v95 || (v97 = *v96, v97 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5))
          {
            goto LABEL_285;
          }

          v98 = *(a2 + 1);
          v95 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v97;
          v98 = v96 + 1;
          *(a2 + 1) = v98;
        }

        *(this + 12) = 11;
        if (v98 < v95 && *v98 == 98)
        {
          *(a2 + 1) = v98 + 1;
LABEL_210:
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 12;
          operator new();
        }

        continue;
      case 2u:
        if (v10 == 18)
        {
          goto LABEL_67;
        }

        goto LABEL_50;
      case 3u:
        if (v10 == 26)
        {
          goto LABEL_82;
        }

        goto LABEL_50;
      case 4u:
        if (v10 == 34)
        {
          goto LABEL_97;
        }

        goto LABEL_50;
      case 5u:
        if (v10 == 42)
        {
          goto LABEL_112;
        }

        goto LABEL_50;
      case 6u:
        if (v10 == 50)
        {
          goto LABEL_127;
        }

        goto LABEL_50;
      case 7u:
        if (v10 == 58)
        {
          goto LABEL_142;
        }

        goto LABEL_50;
      case 8u:
        if (v10 == 66)
        {
          goto LABEL_157;
        }

        goto LABEL_50;
      case 9u:
        if (v10 != 74)
        {
          goto LABEL_50;
        }

        goto LABEL_172;
      case 0xAu:
        if (v10 == 82)
        {
          goto LABEL_187;
        }

        goto LABEL_50;
      case 0xBu:
        if (v10 == 88)
        {
          goto LABEL_202;
        }

        goto LABEL_50;
      case 0xCu:
        if (v10 != 98)
        {
          goto LABEL_50;
        }

        if (*(this + 12) != 12)
        {
          goto LABEL_210;
        }

        v14 = *(this + 5);
        v141 = 0;
        v99 = *(a2 + 1);
        if (v99 >= *(a2 + 2) || *v99 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v99;
          *(a2 + 1) = v99 + 1;
        }

        v100 = *(a2 + 14);
        v101 = *(a2 + 15);
        *(a2 + 14) = v100 + 1;
        if (v100 >= v101)
        {
          goto LABEL_285;
        }

        v102 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::OneOf::MergePartialFromCodedStream(v14, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v102);
        v103 = *(a2 + 14);
        v20 = __OFSUB__(v103, 1);
        v104 = v103 - 1;
        if (v104 < 0 == v20)
        {
          *(a2 + 14) = v104;
        }

        v105 = *(a2 + 1);
        if (v105 >= *(a2 + 2) || *v105 != 106)
        {
          continue;
        }

        *(a2 + 1) = v105 + 1;
LABEL_223:
        if (*(this + 12) != 13)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 13;
          operator new();
        }

        v106 = *(this + 5);
        v141 = 0;
        v107 = *(a2 + 1);
        if (v107 >= *(a2 + 2) || *v107 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v107;
          *(a2 + 1) = v107 + 1;
        }

        v108 = *(a2 + 14);
        v109 = *(a2 + 15);
        *(a2 + 14) = v108 + 1;
        if (v108 >= v109)
        {
          goto LABEL_285;
        }

        v110 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::Document_CustomObject::MergePartialFromCodedStream(v106, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v110);
        v111 = *(a2 + 14);
        v20 = __OFSUB__(v111, 1);
        v112 = v111 - 1;
        if (v112 < 0 == v20)
        {
          *(a2 + 14) = v112;
        }

        v113 = *(a2 + 1);
        if (v113 >= *(a2 + 2) || *v113 != 114)
        {
          continue;
        }

        *(a2 + 1) = v113 + 1;
LABEL_238:
        if (*(this + 12) != 14)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 14;
          operator new();
        }

        v114 = *(this + 5);
        v141 = 0;
        v115 = *(a2 + 1);
        if (v115 >= *(a2 + 2) || *v115 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v115;
          *(a2 + 1) = v115 + 1;
        }

        v116 = *(a2 + 14);
        v117 = *(a2 + 15);
        *(a2 + 14) = v116 + 1;
        if (v116 >= v117)
        {
          goto LABEL_285;
        }

        v118 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::StringArray::MergePartialFromCodedStream(v114, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v118);
        v119 = *(a2 + 14);
        v20 = __OFSUB__(v119, 1);
        v120 = v119 - 1;
        if (v120 < 0 == v20)
        {
          *(a2 + 14) = v120;
        }

        v121 = *(a2 + 1);
        if (v121 >= *(a2 + 2) || *v121 != 122)
        {
          continue;
        }

        *(a2 + 1) = v121 + 1;
LABEL_253:
        if (*(this + 12) != 15)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 15;
          operator new();
        }

        v122 = *(this + 5);
        v141 = 0;
        v123 = *(a2 + 1);
        if (v123 >= *(a2 + 2) || *v123 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v123;
          *(a2 + 1) = v123 + 1;
        }

        v124 = *(a2 + 14);
        v125 = *(a2 + 15);
        *(a2 + 14) = v124 + 1;
        if (v124 >= v125)
        {
          goto LABEL_285;
        }

        v126 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141);
        if (!CRDT::Array::MergePartialFromCodedStream(v122, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_285;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v126);
        v127 = *(a2 + 14);
        v20 = __OFSUB__(v127, 1);
        v128 = v127 - 1;
        if (v128 < 0 == v20)
        {
          *(a2 + 14) = v128;
        }

        v129 = *(a2 + 1);
        if (*(a2 + 4) - v129 <= 1 || *v129 != 130 || v129[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v129 + 2;
LABEL_269:
        if (*(this + 12) != 16)
        {
          CRDT::Document_DocObject::clear_contents(this);
          *(this + 12) = 16;
          operator new();
        }

        v130 = *(this + 5);
        v141 = 0;
        v131 = *(a2 + 1);
        if (v131 >= *(a2 + 2) || *v131 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v141))
          {
            goto LABEL_285;
          }
        }

        else
        {
          v141 = *v131;
          *(a2 + 1) = v131 + 1;
        }

        v132 = *(a2 + 14);
        v133 = *(a2 + 15);
        *(a2 + 14) = v132 + 1;
        if (v132 >= v133 || (v134 = google::protobuf::io::CodedInputStream::PushLimit(a2, v141), !CRDT::OrderedSet::MergePartialFromCodedStream(v130, a2)) || *(a2 + 36) != 1)
        {
LABEL_285:
          v137 = 0;
          goto LABEL_287;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v134);
        v135 = *(a2 + 14);
        v20 = __OFSUB__(v135, 1);
        v136 = v135 - 1;
        if (v136 < 0 == v20)
        {
          *(a2 + 14) = v136;
        }

        if (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        v137 = 1;
        *(a2 + 36) = 1;
LABEL_287:
        google::protobuf::io::CodedOutputStream::~CodedOutputStream(v139);
        google::protobuf::io::StringOutputStream::~StringOutputStream(v140);
        return v137;
      case 0xDu:
        if (v10 == 106)
        {
          goto LABEL_223;
        }

        goto LABEL_50;
      case 0xEu:
        if (v10 == 114)
        {
          goto LABEL_238;
        }

        goto LABEL_50;
      case 0xFu:
        if (v10 == 122)
        {
          goto LABEL_253;
        }

        goto LABEL_50;
      case 0x10u:
        if (v10 == 130)
        {
          goto LABEL_269;
        }

LABEL_50:
        if (v10 && (v10 & 7) != 4)
        {
          goto LABEL_52;
        }

        goto LABEL_286;
      default:
        goto LABEL_9;
    }
  }
}

void sub_214F1B48C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x216063B80](v2, 0x10B3C406C843DA2);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va1);
  _Unwind_Resume(a1);
}

uint64_t CRDT::Document_DocObject::SerializeWithCachedSizes(CRDT::Document_DocObject *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 12);
  if (v6 == 1)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(1, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 2)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(2, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 3)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(3, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 4)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(4, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 5)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(5, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 6)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(6, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 7)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(7, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 8)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(8, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 9)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(9, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 10)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(10, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 11)
  {
    google::protobuf::internal::WireFormatLite::WriteInt64(0xB, *(this + 5), a2, a4);
    v6 = *(this + 12);
  }

  if (v6 == 12)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(12, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 13)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(13, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 14)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(14, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 15)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(15, *(this + 5), a2);
    v6 = *(this + 12);
  }

  if (v6 == 16)
  {
    google::protobuf::internal::WireFormatLite::WriteMessage(16, *(this + 5), a2);
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

uint64_t CRDT::Document_DocObject::ByteSize(CRDT::RegisterLatest **this)
{
  switch(*(this + 12))
  {
    case 1:
    case 2:
    case 3:
      v2 = CRDT::RegisterLatest::ByteSize(this[5]);
      goto LABEL_15;
    case 4:
    case 5:
    case 6:
      v2 = CRDT::Dictionary::ByteSize(this[5]);
      goto LABEL_15;
    case 7:
      v2 = CRDT::Timestamp::ByteSize(this[5]);
      goto LABEL_15;
    case 8:
      v2 = CRDT::VectorTimestamp::ByteSize(this[5]);
      goto LABEL_15;
    case 9:
      v2 = CRDT::Index::ByteSize(this[5]);
      goto LABEL_15;
    case 0xA:
      v2 = topotext::String::ByteSize(this[5]);
      goto LABEL_15;
    case 0xB:
      v6 = google::protobuf::io::CodedOutputStream::VarintSize64(this[5]) + 1;
      break;
    case 0xC:
      v2 = CRDT::OneOf::ByteSize(this[5]);
      goto LABEL_15;
    case 0xD:
      v2 = CRDT::Document_CustomObject::ByteSize(this[5]);
      goto LABEL_15;
    case 0xE:
      v2 = CRDT::StringArray::ByteSize(this[5]);
      goto LABEL_15;
    case 0xF:
      v2 = CRDT::Array::ByteSize(this[5]);
LABEL_15:
      v7 = v2;
      if (v2 >= 0x80)
      {
        v8 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v2);
      }

      else
      {
        v8 = 1;
      }

      v6 = v7 + v8 + 1;
      break;
    case 0x10:
      v3 = CRDT::OrderedSet::ByteSize(this[5]);
      v4 = v3;
      if (v3 >= 0x80)
      {
        v5 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3);
      }

      else
      {
        v5 = 1;
      }

      v6 = v4 + v5 + 2;
      break;
    default:
      v6 = 0;
      break;
  }

  v9 = *(this + 31);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v9 = this[2];
  }

  result = (v6 + v9);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::Document_DocObject::CheckTypeAndMergeFrom(const CRDT::RegisterLatest **this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return CRDT::Document_DocObject::MergeFrom(this, lpsrc);
}

uint64_t CRDT::Document_DocObject::IsInitialized(CRDT::Document_DocObject *this)
{
  if (*(this + 12) != 13)
  {
    return 1;
  }

  result = (*(**(this + 5) + 40))(*(this + 5));
  if (result)
  {
    return 1;
  }

  return result;
}

CRDT::Document *CRDT::Document::Document(CRDT::Document *this)
{
  *this = &unk_28270D768;
  *(this + 1) = 0;
  *(this + 7) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 36) = 0;
  CRDT::Document::SharedCtor(this);
  return this;
}

void sub_214F1B9AC(_Unwind_Exception *a1)
{
  v7 = v3;
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v7);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v5);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v4);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(v2);
  if (v1[31] < 0)
  {
    operator delete(*v6);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void CRDT::Document::SharedCtor(CRDT::Document *this)
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

  *(this + 19) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
}

void sub_214F1BAB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

std::string *CRDT::Document::MergeFrom(CRDT::Document *this, const CRDT::Document *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/crframework.pb.cc", 5327);
    v4 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v20, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::Document_DocObject>::TypeHandler>((this + 56), (a2 + 56));
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 80), (a2 + 80));
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 104), (a2 + 104));
  v5 = google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 128), (a2 + 128));
  LOBYTE(v6) = *(a2 + 32);
  if (v6)
  {
    if (*(a2 + 32))
    {
      *(this + 8) |= 1u;
      v7 = *(this + 5);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 5);
      if (!v8)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(v5);
        v8 = *(CRDT::Document::default_instance_ + 40);
      }

      v5 = CRDT::VectorTimestamp::MergeFrom(v7, v8);
      v6 = *(a2 + 8);
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 0x40) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_18;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 8) |= 2u;
    v9 = *(this + 6);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 6);
    if (!v10)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(v5);
      v10 = *(CRDT::Document::default_instance_ + 48);
    }

    v5 = CRDT::VectorTimestamp::MergeFrom(v9, v10);
    if ((*(a2 + 8) & 0x40) != 0)
    {
LABEL_18:
      *(this + 8) |= 0x40u;
      v11 = *(this + 19);
      if (!v11)
      {
        operator new();
      }

      v12 = *(a2 + 19);
      if (!v12)
      {
        CRDT::protobuf_AddDesc_crframework_2eproto(v5);
        v12 = *(CRDT::Document::default_instance_ + 152);
      }

      topotext::VectorTimestamp::MergeFrom(v11, v12);
    }
  }

LABEL_23:
  v15 = *(a2 + 1);
  v14 = a2 + 8;
  v13 = v15;
  v16 = v14[23];
  if (v16 >= 0)
  {
    v17 = v14;
  }

  else
  {
    v17 = v13;
  }

  if (v16 >= 0)
  {
    v18 = v14[23];
  }

  else
  {
    v18 = *(v14 + 1);
  }

  return std::string::append((this + 8), v17, v18);
}

void CRDT::Document::~Document(CRDT::Document *this)
{
  *this = &unk_28270D768;
  CRDT::Document::SharedDtor(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 32);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 26);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 20);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 7);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  CRDT::Document::~Document(this);

  JUMPOUT(0x216063B80);
}

void CRDT::Document::SharedDtor(CRDT::Document *this)
{
  CRDT::protobuf_AddDesc_crframework_2eproto(this);
  if (CRDT::Document::default_instance_ != this)
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

    v4 = *(this + 19);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t CRDT::Document::Clear(CRDT::Document *this)
{
  v2 = *(this + 8);
  if ((v2 & 0x43) != 0)
  {
    if (v2)
    {
      v3 = *(this + 5);
      if (v3)
      {
        google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(v3 + 40);
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
      v4 = *(this + 6);
      if (v4)
      {
        google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(v4 + 40);
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

    if ((*(this + 32) & 0x40) != 0)
    {
      v5 = *(this + 19);
      if (v5)
      {
        topotext::VectorTimestamp::Clear(v5);
      }
    }
  }

  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 56);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 80);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 104);
  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 128);
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

uint64_t CRDT::Document::MergePartialFromCodedStream(CRDT::Document *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v61, this + 8);
  TagFallback = google::protobuf::io::CodedOutputStream::CodedOutputStream(v60, v61);
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_2:
          v6 = *(a2 + 1);
          if (v6 >= *(a2 + 2) || (v7 = *v6, v7 < 1))
          {
            TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            v8 = TagFallback | (((TagFallback - 1) < 0x7F) << 32);
            if ((v8 & 0x100000000) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            *(a2 + 8) = v7;
            *(a2 + 1) = v6 + 1;
            v8 = v7 | 0x100000000;
          }

          v10 = v8 >> 3;
          if (v8 >> 3 > 3)
          {
            break;
          }

          switch(v10)
          {
            case 1u:
              if (v8 != 10)
              {
                goto LABEL_38;
              }

              *(this + 8) |= 1u;
              v11 = *(this + 5);
              if (!v11)
              {
                operator new();
              }

              v62 = 0;
              v12 = *(a2 + 1);
              if (v12 >= *(a2 + 2) || *v12 < 0)
              {
                if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62))
                {
                  goto LABEL_128;
                }
              }

              else
              {
                v62 = *v12;
                *(a2 + 1) = v12 + 1;
              }

              v13 = *(a2 + 14);
              v14 = *(a2 + 15);
              *(a2 + 14) = v13 + 1;
              if (v13 >= v14)
              {
                goto LABEL_128;
              }

              v15 = google::protobuf::io::CodedInputStream::PushLimit(a2, v62);
              if (!CRDT::VectorTimestamp::MergePartialFromCodedStream(v11, a2) || *(a2 + 36) != 1)
              {
                goto LABEL_128;
              }

              TagFallback = google::protobuf::io::CodedInputStream::PopLimit(a2, v15);
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
                goto LABEL_51;
              }

              break;
            case 2u:
              if (v8 != 18)
              {
                goto LABEL_38;
              }

LABEL_51:
              *(this + 8) |= 2u;
              v20 = *(this + 6);
              if (!v20)
              {
                operator new();
              }

              v62 = 0;
              v21 = *(a2 + 1);
              if (v21 >= *(a2 + 2) || *v21 < 0)
              {
                if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62))
                {
                  goto LABEL_128;
                }
              }

              else
              {
                v62 = *v21;
                *(a2 + 1) = v21 + 1;
              }

              v22 = *(a2 + 14);
              v23 = *(a2 + 15);
              *(a2 + 14) = v22 + 1;
              if (v22 >= v23)
              {
                goto LABEL_128;
              }

              v24 = google::protobuf::io::CodedInputStream::PushLimit(a2, v62);
              if (!CRDT::VectorTimestamp::MergePartialFromCodedStream(v20, a2) || *(a2 + 36) != 1)
              {
                goto LABEL_128;
              }

              TagFallback = google::protobuf::io::CodedInputStream::PopLimit(a2, v24);
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
                while (1)
                {
                  *(a2 + 1) = v27 + 1;
LABEL_65:
                  v28 = *(this + 17);
                  v29 = *(this + 16);
                  if (v29 >= v28)
                  {
                    if (v28 == *(this + 18))
                    {
                      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 56, v28 + 1);
                    }

                    operator new();
                  }

                  v30 = *(this + 7);
                  *(this + 16) = v29 + 1;
                  v31 = *(v30 + 8 * v29);
                  v62 = 0;
                  v32 = *(a2 + 1);
                  if (v32 >= *(a2 + 2) || *v32 < 0)
                  {
                    if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62))
                    {
                      goto LABEL_128;
                    }
                  }

                  else
                  {
                    v62 = *v32;
                    *(a2 + 1) = v32 + 1;
                  }

                  v33 = *(a2 + 14);
                  v34 = *(a2 + 15);
                  *(a2 + 14) = v33 + 1;
                  if (v33 >= v34)
                  {
                    goto LABEL_128;
                  }

                  v35 = google::protobuf::io::CodedInputStream::PushLimit(a2, v62);
                  if (!CRDT::Document_DocObject::MergePartialFromCodedStream(v31, a2) || *(a2 + 36) != 1)
                  {
                    goto LABEL_128;
                  }

                  TagFallback = google::protobuf::io::CodedInputStream::PopLimit(a2, v35);
                  v36 = *(a2 + 14);
                  v17 = __OFSUB__(v36, 1);
                  v37 = v36 - 1;
                  if (v37 < 0 == v17)
                  {
                    *(a2 + 14) = v37;
                  }

                  v27 = *(a2 + 1);
                  if (v27 >= *(a2 + 2))
                  {
                    break;
                  }

                  v38 = *v27;
                  if (v38 != 26)
                  {
                    if (v38 == 34)
                    {
                      while (1)
                      {
                        *(a2 + 1) = v27 + 1;
LABEL_83:
                        v39 = *(this + 23);
                        v40 = *(this + 22);
                        if (v40 >= v39)
                        {
                          if (v39 == *(this + 24))
                          {
                            TagFallback = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 80, v39 + 1);
                          }

                          google::protobuf::internal::StringTypeHandlerBase::New(TagFallback);
                        }

                        v41 = *(this + 10);
                        *(this + 22) = v40 + 1;
                        TagFallback = google::protobuf::internal::WireFormatLite::ReadString(a2, *(v41 + 8 * v40));
                        if (!TagFallback)
                        {
                          goto LABEL_128;
                        }

                        v27 = *(a2 + 1);
                        if (v27 >= *(a2 + 2))
                        {
                          break;
                        }

                        v42 = *v27;
                        if (v42 != 34)
                        {
                          if (v42 == 42)
                          {
                            goto LABEL_92;
                          }

                          goto LABEL_2;
                        }
                      }
                    }

                    goto LABEL_2;
                  }
                }
              }

              break;
            case 3u:
              if (v8 == 26)
              {
                goto LABEL_65;
              }

LABEL_38:
              if (!v8 || (v8 & 7) == 4)
              {
                goto LABEL_129;
              }

              goto LABEL_40;
            default:
LABEL_6:
              if (v8)
              {
                v9 = (v8 & 7) == 4;
              }

              else
              {
                v9 = 1;
              }

              if (v9)
              {
LABEL_129:
                v58 = 1;
                goto LABEL_130;
              }

LABEL_40:
              TagFallback = google::protobuf::internal::WireFormatLite::SkipField(a2, v8, v60, v5);
              if ((TagFallback & 1) == 0)
              {
                goto LABEL_128;
              }

              break;
          }
        }

        if (v8 >> 3 > 5)
        {
          break;
        }

        if (v10 == 4)
        {
          if (v8 == 34)
          {
            goto LABEL_83;
          }

          goto LABEL_38;
        }

        if (v10 != 5)
        {
          goto LABEL_6;
        }

        if (v8 != 42)
        {
          goto LABEL_38;
        }

        while (1)
        {
          v43 = *(this + 29);
          v44 = *(this + 28);
          if (v44 >= v43)
          {
            if (v43 == *(this + 30))
            {
              TagFallback = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 104, v43 + 1);
            }

            google::protobuf::internal::StringTypeHandlerBase::New(TagFallback);
          }

          v45 = *(this + 13);
          *(this + 28) = v44 + 1;
          TagFallback = google::protobuf::internal::WireFormatLite::ReadString(a2, *(v45 + 8 * v44));
          if (!TagFallback)
          {
            goto LABEL_128;
          }

          v27 = *(a2 + 1);
          if (v27 >= *(a2 + 2))
          {
            break;
          }

          v46 = *v27;
          if (v46 != 42)
          {
            if (v46 == 50)
            {
              goto LABEL_102;
            }

            goto LABEL_2;
          }

LABEL_92:
          *(a2 + 1) = v27 + 1;
        }
      }

      if (v10 != 6)
      {
        break;
      }

      if (v8 != 50)
      {
        goto LABEL_38;
      }

      while (2)
      {
        v47 = *(this + 35);
        v48 = *(this + 34);
        if (v48 >= v47)
        {
          if (v47 == *(this + 36))
          {
            TagFallback = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 128, v47 + 1);
          }

          google::protobuf::internal::StringTypeHandlerBase::New(TagFallback);
        }

        v49 = *(this + 16);
        *(this + 34) = v48 + 1;
        TagFallback = google::protobuf::internal::WireFormatLite::ReadString(a2, *(v49 + 8 * v48));
        if (!TagFallback)
        {
          goto LABEL_128;
        }

        v27 = *(a2 + 1);
        if (v27 < *(a2 + 2))
        {
          v50 = *v27;
          if (v50 == 50)
          {
LABEL_102:
            *(a2 + 1) = v27 + 1;
            continue;
          }

          if (v50 == 58)
          {
            *(a2 + 1) = v27 + 1;
            goto LABEL_113;
          }
        }

        break;
      }
    }

    if (v10 != 7)
    {
      goto LABEL_6;
    }

    if (v8 != 58)
    {
      goto LABEL_38;
    }

LABEL_113:
    *(this + 8) |= 0x40u;
    v51 = *(this + 19);
    if (!v51)
    {
      operator new();
    }

    v62 = 0;
    v52 = *(a2 + 1);
    if (v52 >= *(a2 + 2) || *v52 < 0)
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62))
      {
        goto LABEL_128;
      }
    }

    else
    {
      v62 = *v52;
      *(a2 + 1) = v52 + 1;
    }

    v53 = *(a2 + 14);
    v54 = *(a2 + 15);
    *(a2 + 14) = v53 + 1;
    if (v53 >= v54 || (v55 = google::protobuf::io::CodedInputStream::PushLimit(a2, v62), !topotext::VectorTimestamp::MergePartialFromCodedStream(v51, a2)) || *(a2 + 36) != 1)
    {
LABEL_128:
      v58 = 0;
      goto LABEL_130;
    }

    TagFallback = google::protobuf::io::CodedInputStream::PopLimit(a2, v55);
    v56 = *(a2 + 14);
    v17 = __OFSUB__(v56, 1);
    v57 = v56 - 1;
    if (v57 < 0 == v17)
    {
      *(a2 + 14) = v57;
    }
  }

  while (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  v58 = 1;
  *(a2 + 36) = 1;
LABEL_130:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v60);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v61);
  return v58;
}

void sub_214F1C83C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x216063B80](v2, 0x1093C4020A6E6BFLL);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va1);
  _Unwind_Resume(a1);
}

uint64_t CRDT::Document::SerializeWithCachedSizes(CRDT::Document *this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 5);
    if (!v5)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v5 = *(CRDT::Document::default_instance_ + 40);
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
      v6 = *(CRDT::Document::default_instance_ + 48);
    }

    this = google::protobuf::internal::WireFormatLite::WriteMessage(2, v6, a2);
  }

  if (*(v3 + 16) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_DocObject>::TypeHandler>(v3 + 56, v7);
      this = google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2);
      ++v7;
    }

    while (v7 < *(v3 + 16));
  }

  if (*(v3 + 22) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v3 + 80, v9);
      this = google::protobuf::internal::WireFormatLite::WriteString(4, v10, a2);
      ++v9;
    }

    while (v9 < *(v3 + 22));
  }

  if (*(v3 + 28) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v3 + 104, v11);
      this = google::protobuf::internal::WireFormatLite::WriteString(5, v12, a2);
      ++v11;
    }

    while (v11 < *(v3 + 28));
  }

  if (*(v3 + 34) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v3 + 128, v13);
      this = google::protobuf::internal::WireFormatLite::WriteBytes(6, v14, a2);
      ++v13;
    }

    while (v13 < *(v3 + 34));
  }

  if ((*(v3 + 32) & 0x40) != 0)
  {
    v15 = *(v3 + 19);
    if (!v15)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(this);
      v15 = *(CRDT::Document::default_instance_ + 152);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(7, v15, a2);
  }

  v16 = *(v3 + 31);
  if (v16 < 0)
  {
    v17 = *(v3 + 1);
    v16 = *(v3 + 2);
  }

  else
  {
    v17 = v3 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v17, v16);
}

uint64_t CRDT::Document::ByteSize(CRDT::Document *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_25;
  }

  if (*(this + 32))
  {
    v4 = *(this + 5);
    if (!v4)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(0);
      v4 = *(CRDT::Document::default_instance_ + 40);
    }

    v5 = CRDT::VectorTimestamp::ByteSize(v4);
    v6 = v5;
    if (v5 >= 0x80)
    {
      v7 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
    }

    else
    {
      v7 = 1;
    }

    v3 = v6 + v7 + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = 0;
  if ((*(this + 32) & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 6);
    if (!v8)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(0);
      v8 = *(CRDT::Document::default_instance_ + 48);
    }

    v9 = CRDT::VectorTimestamp::ByteSize(v8);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v3 += v10 + v11 + 1;
    v2 = *(this + 8);
  }

LABEL_18:
  if ((v2 & 0x40) != 0)
  {
    v12 = *(this + 19);
    if (!v12)
    {
      CRDT::protobuf_AddDesc_crframework_2eproto(0);
      v12 = *(CRDT::Document::default_instance_ + 152);
    }

    v13 = topotext::VectorTimestamp::ByteSize(v12);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    }

    else
    {
      v15 = 1;
    }

    v3 += v14 + v15 + 1;
  }

LABEL_25:
  v16 = *(this + 16);
  v17 = v16 + v3;
  if (v16 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_DocObject>::TypeHandler>(this + 56, v18);
      v20 = CRDT::Document_DocObject::ByteSize(v19);
      v21 = v20;
      if (v20 >= 0x80)
      {
        v22 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
      }

      else
      {
        v22 = 1;
      }

      v17 += v21 + v22;
      ++v18;
    }

    while (v18 < *(this + 16));
  }

  v23 = *(this + 22);
  v24 = v23 + v17;
  if (v23 >= 1)
  {
    v25 = 0;
    do
    {
      v26 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 80, v25);
      v27 = *(v26 + 23);
      v28 = v27;
      v29 = *(v26 + 8);
      if ((v27 & 0x80u) == 0)
      {
        v30 = *(v26 + 23);
      }

      else
      {
        v30 = v29;
      }

      if (v30 >= 0x80)
      {
        v31 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
        v27 = *(v26 + 23);
        v29 = *(v26 + 8);
        v28 = *(v26 + 23);
      }

      else
      {
        v31 = 1;
      }

      if (v28 < 0)
      {
        v27 = v29;
      }

      v24 += v31 + v27;
      ++v25;
    }

    while (v25 < *(this + 22));
  }

  v32 = *(this + 28);
  v33 = v32 + v24;
  if (v32 >= 1)
  {
    v34 = 0;
    do
    {
      v35 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 104, v34);
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
        v40 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39);
        v36 = *(v35 + 23);
        v38 = *(v35 + 8);
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

      v33 += v40 + v36;
      ++v34;
    }

    while (v34 < *(this + 28));
  }

  v41 = *(this + 34);
  v42 = v41 + v33;
  if (v41 >= 1)
  {
    v43 = 0;
    do
    {
      v44 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 128, v43);
      v45 = *(v44 + 23);
      v46 = v45;
      v47 = *(v44 + 8);
      if ((v45 & 0x80u) == 0)
      {
        v48 = *(v44 + 23);
      }

      else
      {
        v48 = v47;
      }

      if (v48 >= 0x80)
      {
        v49 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48);
        v45 = *(v44 + 23);
        v47 = *(v44 + 8);
        v46 = *(v44 + 23);
      }

      else
      {
        v49 = 1;
      }

      if (v46 < 0)
      {
        v45 = v47;
      }

      v42 += v49 + v45;
      ++v43;
    }

    while (v43 < *(this + 34));
  }

  v50 = *(this + 31);
  if (v50 < 0)
  {
    v50 = *(this + 2);
  }

  result = (v42 + v50);
  *(this + 9) = result;
  return result;
}

std::string *CRDT::Document::CheckTypeAndMergeFrom(CRDT::Document *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return CRDT::Document::MergeFrom(this, lpsrc);
}

BOOL google::protobuf::internal::AllAreInitialized<google::protobuf::RepeatedPtrField<CRDT::Document_DocObject>>(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    v4 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v4)
    {
      break;
    }

    v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_DocObject>::TypeHandler>(a1, v2);
  }

  while (((*(*v5 + 40))(v5) & 1) != 0);
  return v3 < 1;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::VectorTimestamp_Element>::TypeHandler>(uint64_t a1, int a2)
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

void sub_214F1CFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Dictionary_Element>::TypeHandler>(uint64_t a1, int a2)
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

void sub_214F1D09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Index_Element>::TypeHandler>(uint64_t a1, int a2)
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

void sub_214F1D178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::OneOf_Element>::TypeHandler>(uint64_t a1, int a2)
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

void sub_214F1D254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::StringArray_ArrayAttachment>::TypeHandler>(uint64_t a1, int a2)
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

void sub_214F1D330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::VectorTimestamp_Element>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
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
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::VectorTimestamp_Element>::TypeHandler>(a2, v6);
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
      result = CRDT::VectorTimestamp_Element::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_214F1D4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::Dictionary_Element>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
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
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Dictionary_Element>::TypeHandler>(a2, v6);
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
      result = CRDT::Dictionary_Element::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_214F1D658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::Index_Element>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
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
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Index_Element>::TypeHandler>(a2, v6);
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
      result = CRDT::Index_Element::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_214F1D7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::OneOf_Element>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
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
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::OneOf_Element>::TypeHandler>(a2, v6);
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
      result = CRDT::OneOf_Element::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_214F1D970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::StringArray_ArrayAttachment>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
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
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::StringArray_ArrayAttachment>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<CRDT::StringArray_ArrayAttachment>::New();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = CRDT::StringArray_ArrayAttachment::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_214F1DAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::Document_CustomObject_MapEntry>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
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
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_CustomObject_MapEntry>::TypeHandler>(a2, v6);
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
      result = CRDT::Document_CustomObject_MapEntry::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_214F1DC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<CRDT::Document_DocObject>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
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
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_DocObject>::TypeHandler>(a2, v6);
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
      result = CRDT::Document_DocObject::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_214F1DDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromICAttachmentsFilterSelectionType(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"Unknown";
  }

  else
  {
    return off_27819A450[a1 - 1];
  }
}

void sub_214F1E984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214F1EEE4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t topotext::BoxedValue::jsonvalue(topotext::BoxedValue *this)
{
  if (*(this + 12) == 7)
  {
    return *(this + 5);
  }

  result = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  return result;
}

void sub_214F1F268(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  topotext::WallClockMergeableValue::~WallClockMergeableValue(va);
  _Unwind_Resume(a1);
}

std::string *topotext::BoxedValue::set_jsonvalue(topotext::BoxedValue *this, std::string *__str)
{
  if (*(this + 12) != 7)
  {
    topotext::BoxedValue::clear_contents(this);
    *(this + 12) = 7;
    operator new();
  }

  v3 = *(this + 5);

  return std::string::operator=(v3, __str);
}

uint64_t std::vector<std::pair<TopoIDRange,NSAttributedString * {__strong}>>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<TopoIDRange,NSAttributedString * {__strong}>>::__emplace_back_slow_path<std::pair<TopoIDRange,NSAttributedString * {__strong}>>(a1, a2);
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

uint64_t std::vector<std::pair<TopoIDRange,NSAttributedString * {__strong}>>::__emplace_back_slow_path<std::pair<TopoIDRange,NSAttributedString * {__strong}>>(void *a1, uint64_t *a2)
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
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSAttributedString * {__strong}>>,std::pair<TopoIDRange,NSAttributedString * {__strong}>*>(a1, v3, v4, 0);
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

void sub_214F20484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<TopoIDRange,NSDictionary * {__strong}>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSAttributedString * {__strong}>>,std::pair<TopoIDRange,NSAttributedString * {__strong}>*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
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
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TopoIDRange,NSAttributedString * {__strong}>>,std::pair<TopoIDRange,NSAttributedString * {__strong}>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TopoIDRange,NSAttributedString * {__strong}>>,std::pair<TopoIDRange,NSAttributedString * {__strong}>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TopoIDRange,NSDictionary * {__strong}>>,std::reverse_iterator<std::pair<TopoIDRange,NSDictionary * {__strong}>*>,std::reverse_iterator<std::pair<TopoIDRange,NSDictionary * {__strong}>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_214F22480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__65(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214F226AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F228D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F22AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F22E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F232D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F23610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F23874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F23BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_214F23E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F24168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F242CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F24494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F24880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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
  _Block_object_dispose((v11 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_214F25554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_214F25774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F25B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F25ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F262C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F26410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F269E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_214F26BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F2707C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F272A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F27DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F28264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F287D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F28954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F28AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F28C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F29038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214F291F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_3_8(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2112;
  *(a4 + 14) = v4;
  return result;
}

void OUTLINED_FUNCTION_11_2(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

char *sub_214F2B144(void *a1)
{
  *&v1[OBJC_IVAR___ICOperationQueueObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___ICOperationQueueObserver_queueObservation] = 0;
  v3 = OBJC_IVAR___ICOperationQueueObserver_observationsLock;
  v4 = sub_214FA49BC(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A38);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *&v1[v3] = v5;
  *(v5 + 16) = v4;
  v6 = OBJC_IVAR___ICOperationQueueObserver_logger;
  if (qword_280C24598 != -1)
  {
    swift_once();
  }

  v7 = sub_2150A3F30();
  v8 = __swift_project_value_buffer(v7, qword_280C245A0);
  (*(*(v7 - 8) + 16))(&v1[v6], v8, v7);
  *&v1[OBJC_IVAR___ICOperationQueueObserver_queue] = a1;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for OperationQueueObserver();
  v9 = a1;
  v10 = objc_msgSendSuper2(&v15, sel_init);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = v10;
  v12 = sub_2150A3600();

  v13 = *&v11[OBJC_IVAR___ICOperationQueueObserver_queueObservation];
  *&v11[OBJC_IVAR___ICOperationQueueObserver_queueObservation] = v12;

  return v11;
}

id sub_214F2B368()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___ICOperationQueueObserver_queueObservation];
  if (v2)
  {
    v3 = v2;
    sub_2150A3540();
  }

  v4 = *&v1[OBJC_IVAR___ICOperationQueueObserver_observationsLock];

  os_unfair_lock_lock((v4 + 24));
  sub_214F2C8EC((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));

  v6.receiver = v1;
  v6.super_class = type metadata accessor for OperationQueueObserver();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t type metadata accessor for OperationQueueObserver()
{
  result = qword_280C245F0;
  if (!qword_280C245F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_214F2B534(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 operations];
  sub_214D55670(0, &qword_280C24528);
  v4 = sub_2150A4ED0();

  *a2 = v4;
}

uint64_t sub_214F2B5A8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR___ICOperationQueueObserver_observationsLock);
    v2 = result;

    swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    MEMORY[0x28223BE20](v4);
    os_unfair_lock_lock((v1 + 24));
    sub_214F2F230((v1 + 16), &v5);
    os_unfair_lock_unlock((v1 + 24));
  }

  return result;
}

void sub_214F2B6D4(uint64_t *a1@<X0>, void *a2@<X2>, BOOL *a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_214F2B764(a2, a1);
  }

  *a3 = Strong == 0;
}

uint64_t sub_214F2B764(void *a1, uint64_t *a2)
{
  v3 = v2;
  v96 = sub_2150A4400();
  v80 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_2150A4490();
  v7 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_2150A4420();
  v9 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2150A3F30();
  v11 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v104 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_2150A3A00();
  v13 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = a1;
  v15 = [a1 operations];
  v16 = sub_214D55670(0, &qword_280C24528);
  v17 = sub_2150A4ED0();

  v98 = a2;

  sub_214F81974(v18);
  v99 = v19;
  if (v17 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2150A59D0())
  {
    v21 = 0;
    v101 = v99 & 0xC000000000000001;
    v87 = OBJC_IVAR___ICOperationQueueObserver_logger;
    v103 = v17 & 0xC000000000000001;
    v73 = v17 & 0xFFFFFFFFFFFFFF8;
    v72 = v17 + 32;
    v22 = v99 & 0xFFFFFFFFFFFFFF8;
    if (v99 < 0)
    {
      v22 = v99;
    }

    v90 = v22;
    v105 = v99 + 56;
    v75 = (v13 + 16);
    v74 = (v13 + 8);
    v13 = v99;
    v86 = (v11 + 16);
    v85 = (v11 + 8);
    v84 = *MEMORY[0x277D851C8];
    v83 = (v9 + 104);
    v82 = (v9 + 8);
    v81 = v108;
    ++v80;
    v79 = v7 + 1;
    *(&v23 + 1) = 5;
    v78 = xmmword_2150C13E0;
    *&v23 = 136315394;
    v70 = v23;
    v71 = v3;
    v89 = v17;
    v88 = v16;
    v102 = i;
    while (1)
    {
      if (v103)
      {
        v24 = MEMORY[0x216062780](v21, v17);
      }

      else
      {
        if (v21 >= *(v73 + 16))
        {
          goto LABEL_31;
        }

        v24 = *(v72 + 8 * v21);
      }

      v7 = v24;
      if (__OFADD__(v21++, 1))
      {
        break;
      }

      if (!v101)
      {
        if (*(v13 + 16))
        {
          v27 = sub_2150A5770();
          v28 = -1 << *(v13 + 32);
          v29 = v27 & ~v28;
          if ((*(v105 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
          {
            v11 = ~v28;
            while (1)
            {
              v30 = *(*(v13 + 48) + 8 * v29);
              v9 = sub_2150A5780();

              if (v9)
              {
                break;
              }

              v29 = (v29 + 1) & v11;
              if (((*(v105 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            goto LABEL_7;
          }
        }

LABEL_21:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20);
        v31 = swift_allocObject();
        *(v31 + 16) = v78;
        aBlock[0] = v7;
        swift_getKeyPath();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v32 = v7;
        v33 = sub_2150A3600();

        *(v31 + 32) = v33;
        aBlock[0] = v32;
        swift_getKeyPath();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v34 = sub_2150A3600();

        *(v31 + 40) = v34;
        v35 = v98;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = *v35;
        sub_214FEBB98(v31, v32, isUniquelyReferenced_nonNull_native);

        *v35 = aBlock[0];
        v37 = [v32 ic_loggingDescription];
        v38 = sub_2150A4AD0();
        v40 = v39;

        v41 = [v32 ic_cloudSession];
        if (v41)
        {
          v42 = OBJC_IVAR___ICCloudSession_identifier;
          v43 = v41;
          swift_beginAccess();
          v44 = &v43[v42];
          v45 = v76;
          v46 = v77;
          (*v75)(v76, v44, v77);

          v47 = sub_2150A3990();
          v49 = v48;
          (*v74)(v45, v46);
        }

        else
        {
          v49 = 0xE300000000000000;
          v47 = 7104878;
        }

        v50 = v100;
        (*v86)(v104, &v3[v87], v100);

        v51 = sub_2150A3F10();
        v52 = sub_2150A5550();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          aBlock[0] = v54;
          *v53 = v70;
          v55 = sub_214F7723C(v38, v40, aBlock);

          *(v53 + 4) = v55;
          *(v53 + 12) = 2080;
          v56 = sub_214F7723C(v47, v49, aBlock);

          *(v53 + 14) = v56;
          _os_log_impl(&dword_214D51000, v51, v52, "Added new operation: %s for session: %s", v53, 0x16u);
          swift_arrayDestroy();
          v57 = v54;
          v3 = v71;
          MEMORY[0x216064AF0](v57, -1, -1);
          MEMORY[0x216064AF0](v53, -1, -1);

          (*v85)(v104, v100);
        }

        else
        {

          (*v85)(v104, v50);
        }

        sub_214F2C530(v32);
        sub_214D55670(0, &qword_280C24508);
        v58 = v91;
        v59 = v92;
        (*v83)(v91, v84, v92);
        v11 = sub_2150A55E0();
        (*v82)(v58, v59);
        v60 = swift_allocObject();
        v60[2] = v3;
        v60[3] = v32;
        v61 = v97;
        v60[4] = v97;
        v108[2] = sub_214F2F164;
        v108[3] = v60;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v108[0] = sub_214F44018;
        v108[1] = &block_descriptor_110;
        v62 = _Block_copy(aBlock);
        v63 = v32;
        v64 = v3;
        v65 = v61;
        v66 = v93;
        sub_2150A4440();
        v106 = MEMORY[0x277D84F90];
        v7 = sub_214F2E18C(&qword_280C24570, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA41A28);
        sub_214F2F170();
        v67 = v95;
        v68 = v96;
        sub_2150A5930();
        v9 = v11;
        MEMORY[0x216062180](0, v66, v67, v62);
        _Block_release(v62);

        (*v80)(v67, v68);
        (*v79)(v66, v94);

        v17 = v89;
        v16 = v88;
        v13 = v99;
        goto LABEL_7;
      }

      v26 = v24;
      v9 = sub_2150A5A20();

      if ((v9 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_7:
      if (v21 == v102)
      {
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }
}

uint64_t sub_214F2C3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + OBJC_IVAR___ICOperationQueueObserver_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 32))(a2, a3, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_214F2C450@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isExecuting];
  *a2 = result;
  return result;
}

id sub_214F2C484@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCancelled];
  *a2 = result;
  return result;
}

void sub_214F2C4B8(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    a4(v6, a2);
  }
}

uint64_t sub_214F2C530(void *a1)
{
  v2 = [a1 completionBlock];
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v2 = sub_214F2F0DC;
  }

  else
  {
    v3 = 0;
  }

  sub_214D748C8(v2);
  sub_214D6AB7C(v2);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;
  v6[5] = v5;
  v9[4] = sub_214F2F0D0;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_214F44018;
  v9[3] = &block_descriptor;
  v7 = _Block_copy(v9);
  sub_214D748C8(v2);

  sub_214D748C8(sub_214F2F0D0);

  [a1 setCompletionBlock_];
  _Block_release(v7);

  return sub_214D6AB7C(v2);
}

void sub_214F2C72C(void (*a1)(void))
{
  if (a1)
  {
    a1();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      sub_214F2D0DC(v3);

      v2 = v4;
    }
  }
}

uint64_t sub_214F2C7C8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v4 = sub_214FB18DC(a2);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);
      if (v6 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2150A59D0())
      {

        if (!i)
        {
          break;
        }

        v8 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x216062780](v8, v6);
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v9 = *(v6 + 8 * v8 + 32);
          }

          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          sub_2150A3540();

          ++v8;
          if (v11 == i)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_14:
    }
  }

  sub_214FE8A10(a2);
}

void sub_214F2C8EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v19 = v1;

  v7 = 0;
  v17 = v6;
  v18 = v2;
  while (v5)
  {
LABEL_10:
    v9 = (v7 << 9) | (8 * __clz(__rbit64(v5)));
    v10 = *(*(v19 + 48) + v9);
    v11 = *(*(v19 + 56) + v9);
    if (v11 >> 62)
    {
      v12 = sub_2150A59D0();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v10;

    if (v12)
    {
      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x216062780](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        sub_2150A3540();

        ++v13;
        if (v16 == v12)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_4:
    v5 &= v5 - 1;

    v6 = v17;
    v2 = v18;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_214F2CA8C(void *a1)
{
  v2 = v1;
  v4 = sub_2150A3F30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA41A10);
  result = sub_2150A35F0();
  if (v29 != 2 && (v29 & 1) == 0)
  {
    result = sub_2150A35E0();
    if (v28 != 2 && (v28 & 1) != 0)
    {
      (*(v5 + 16))(v7, v1 + OBJC_IVAR___ICOperationQueueObserver_logger, v4);
      v9 = a1;
      v10 = sub_2150A3F10();
      v11 = sub_2150A5550();

      v12 = os_log_type_enabled(v10, v11);
      v26 = v9;
      if (v12)
      {
        v13 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v27 = v25;
        *v13 = 136315138;
        v14 = [v9 ic_loggingDescription];
        v15 = sub_2150A4AD0();
        v17 = v16;

        v18 = sub_214F7723C(v15, v17, &v27);

        *(v13 + 4) = v18;
        _os_log_impl(&dword_214D51000, v10, v11, "Operation is executing: %s", v13, 0xCu);
        v19 = v25;
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x216064AF0](v19, -1, -1);
        MEMORY[0x216064AF0](v13, -1, -1);
      }

      (*(v5 + 8))(v7, v4);
      v20 = v2 + OBJC_IVAR___ICOperationQueueObserver_delegate;
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v21 = *(v20 + 8);
        ObjectType = swift_getObjectType();
        v23 = *(v21 + 8);
        v24 = *(v2 + OBJC_IVAR___ICOperationQueueObserver_queue);
        v23(v26, v24, ObjectType, v21);

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_214F2CD50(void *a1)
{
  v2 = v1;
  v4 = sub_2150A3F30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA41A10);
  result = sub_2150A35F0();
  if (v35 != 2 && (v35 & 1) == 0)
  {
    result = sub_2150A35E0();
    if (v35 != 2 && (v35 & 1) != 0)
    {
      (*(v5 + 16))(v7, v1 + OBJC_IVAR___ICOperationQueueObserver_logger, v4);
      v9 = a1;
      v10 = sub_2150A3F10();
      v11 = sub_2150A5550();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = v34;
        *v12 = 136315138;
        v13 = [v9 ic_loggingDescription];
        v14 = v9;
        v15 = sub_2150A4AD0();
        v33 = v11;
        v17 = v16;

        v18 = v15;
        v9 = v14;
        v19 = sub_214F7723C(v18, v17, &v35);

        *(v12 + 4) = v19;
        _os_log_impl(&dword_214D51000, v10, v33, "Operation was cancelled: %s", v12, 0xCu);
        v20 = v34;
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x216064AF0](v20, -1, -1);
        MEMORY[0x216064AF0](v12, -1, -1);
      }

      (*(v5 + 8))(v7, v4);
      v21 = v2 + OBJC_IVAR___ICOperationQueueObserver_delegate;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v23 = *(v21 + 8);
        ObjectType = swift_getObjectType();
        v25 = *(v23 + 24);
        v26 = *(v2 + OBJC_IVAR___ICOperationQueueObserver_queue);
        v25(v9, v26, ObjectType, v23);

        Strong = swift_unknownObjectRelease();
      }

      v27 = *(v2 + OBJC_IVAR___ICOperationQueueObserver_observationsLock);
      MEMORY[0x28223BE20](Strong);
      *&v32[-16] = v9;

      os_unfair_lock_lock((v27 + 24));
      sub_214F2F6A0((v27 + 16));
      os_unfair_lock_unlock((v27 + 24));

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v28 = *(v21 + 8);
        v29 = swift_getObjectType();
        v30 = *(v28 + 40);
        v31 = *(v2 + OBJC_IVAR___ICOperationQueueObserver_queue);
        v30(v9, v31, v29, v28);

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_214F2D0DC(void *a1)
{
  v2 = v1;
  v4 = sub_2150A3F30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2 + OBJC_IVAR___ICOperationQueueObserver_logger, v4);
  v8 = a1;
  v9 = sub_2150A3F10();
  v10 = sub_2150A5550();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v11 = 136315138;
    v12 = [v8 ic_loggingDescription];
    v13 = v8;
    v14 = v2;
    v15 = sub_2150A4AD0();
    v33 = v4;
    v17 = v16;

    v18 = v15;
    v2 = v14;
    v8 = v13;
    v19 = sub_214F7723C(v18, v17, &v35);

    *(v11 + 4) = v19;
    _os_log_impl(&dword_214D51000, v9, v10, "Operation did finish: %s", v11, 0xCu);
    v20 = v34;
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x216064AF0](v20, -1, -1);
    MEMORY[0x216064AF0](v11, -1, -1);

    (*(v5 + 8))(v7, v33);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v21 = v2 + OBJC_IVAR___ICOperationQueueObserver_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = *(v21 + 8);
    ObjectType = swift_getObjectType();
    v25 = *(v23 + 16);
    v26 = *(v2 + OBJC_IVAR___ICOperationQueueObserver_queue);
    v25(v8, v26, ObjectType, v23);

    Strong = swift_unknownObjectRelease();
  }

  v27 = *(v2 + OBJC_IVAR___ICOperationQueueObserver_observationsLock);
  MEMORY[0x28223BE20](Strong);
  *(&v33 - 2) = v8;

  os_unfair_lock_lock((v27 + 24));
  sub_214F2F020((v27 + 16));
  os_unfair_lock_unlock((v27 + 24));

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v21 + 8);
    v30 = swift_getObjectType();
    v31 = *(v29 + 40);
    v32 = *(v2 + OBJC_IVAR___ICOperationQueueObserver_queue);
    v31(v8, v32, v30, v29);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_214F2D45C()
{
  result = sub_2150A3F30();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_214F2D540(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_214F2D560(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_214F2D5A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_214F2D5C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy48_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_214F2D640(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_214F2D660(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t sub_214F2D6C0(uint64_t a1)
{
  v2 = sub_214F2E18C(&qword_27CA419A8, type metadata accessor for ICError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_214F2D72C(uint64_t a1)
{
  v2 = sub_214F2E18C(&qword_27CA419A8, type metadata accessor for ICError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_214F2D798(uint64_t a1)
{
  v2 = sub_214F2E18C(&qword_27CA419D8, type metadata accessor for ICError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_214F2D804(uint64_t a1, id *a2)
{
  result = sub_2150A4AB0();
  *a2 = 0;
  return result;
}

uint64_t sub_214F2D87C(uint64_t a1, id *a2)
{
  v3 = sub_2150A4AC0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_214F2D8FC@<X0>(uint64_t *a1@<X8>)
{
  sub_2150A4AD0();
  v2 = sub_2150A4A90();

  *a1 = v2;
  return result;
}

uint64_t sub_214F2D940(uint64_t a1)
{
  v2 = sub_214F2E18C(&qword_27CA41B58, type metadata accessor for ICPaperDocumentError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_214F2D9AC(uint64_t a1)
{
  v2 = sub_214F2E18C(&qword_27CA41B58, type metadata accessor for ICPaperDocumentError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_214F2DA18(uint64_t a1)
{
  v2 = sub_214F2E18C(&qword_27CA41B88, type metadata accessor for ICPaperDocumentError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_214F2DA94(uint64_t a1)
{
  v2 = sub_214F2E18C(&qword_27CA419D8, type metadata accessor for ICError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_214F2DB00(uint64_t a1)
{
  v2 = sub_214F2E18C(&qword_27CA419D8, type metadata accessor for ICError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_214F2DB6C(void *a1, uint64_t a2)
{
  v4 = sub_214F2E18C(&qword_27CA419D8, type metadata accessor for ICError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_214F2DBFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_214F2E18C(&qword_27CA419D8, type metadata accessor for ICError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_214F2DC88(uint64_t a1)
{
  v2 = sub_214F2E18C(&qword_27CA41B88, type metadata accessor for ICPaperDocumentError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_214F2DCF4(uint64_t a1)
{
  v2 = sub_214F2E18C(&qword_27CA41B88, type metadata accessor for ICPaperDocumentError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_214F2DD60(void *a1, uint64_t a2)
{
  v4 = sub_214F2E18C(&qword_27CA41B88, type metadata accessor for ICPaperDocumentError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_214F2DDF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_214F2E18C(&qword_27CA41B88, type metadata accessor for ICPaperDocumentError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_214F2DE7C(uint64_t a1)
{
  v2 = sub_214F2E18C(&qword_27CA41998, type metadata accessor for SummarizationClientError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_214F2DEE8(uint64_t a1)
{
  v2 = sub_214F2E18C(&qword_27CA41998, type metadata accessor for SummarizationClientError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_214F2DF54(void *a1, uint64_t a2)
{
  v4 = sub_214F2E18C(&qword_27CA41998, type metadata accessor for SummarizationClientError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_214F2DFE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_214F2E18C(&qword_27CA41998, type metadata accessor for SummarizationClientError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_214F2E060()
{
  sub_2150A64B0();
  sub_2150A49B0();
  return sub_2150A64E0();
}

uint64_t sub_214F2E0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_214F2E18C(&qword_27CA419D8, type metadata accessor for ICError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_214F2E18C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214F2E1D4(uint64_t a1)
{
  v2 = sub_214F2E18C(&qword_27CA41A00, type metadata accessor for Name);
  v3 = sub_214F2E18C(&qword_27CA41A08, type metadata accessor for Name);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_214F2E320(uint64_t a1)
{
  v2 = sub_214F2E18C(&qword_27CA419F0, type metadata accessor for Key);
  v3 = sub_214F2E18C(&qword_27CA419F8, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_214F2E3DC(uint64_t a1)
{
  v2 = sub_214F2E18C(&qword_27CA41B90, type metadata accessor for PDFDocumentWriteOption);
  v3 = sub_214F2E18C(&qword_27CA41B98, type metadata accessor for PDFDocumentWriteOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_214F2E498@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2150A4A90();

  *a1 = v2;
  return result;
}

uint64_t sub_214F2E4E0(uint64_t a1)
{
  v2 = sub_214F2E18C(&qword_27CA419E0, type metadata accessor for URLResourceKey);
  v3 = sub_214F2E18C(&qword_27CA419E8, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_214F2E59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_214F2E18C(&qword_27CA41B88, type metadata accessor for ICPaperDocumentError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_214F2E620(uint64_t a1)
{
  v2 = sub_214F2E18C(&qword_27CA41960, type metadata accessor for SummarizationClientError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_214F2E68C(uint64_t a1)
{
  v2 = sub_214F2E18C(&qword_27CA41960, type metadata accessor for SummarizationClientError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_214F2E6F8(uint64_t a1)
{
  v2 = sub_214F2E18C(&qword_27CA41998, type metadata accessor for SummarizationClientError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_214F2E764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_214F2E18C(&qword_27CA41998, type metadata accessor for SummarizationClientError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}