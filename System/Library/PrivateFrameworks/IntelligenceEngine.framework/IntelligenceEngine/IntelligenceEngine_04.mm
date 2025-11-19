unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(google::protobuf::io::EpsCopyOutputStream *a1, int a2, const void **a3, char *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = a3[1], v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = (a4 + 2);
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = (a4 + 2);
        }

LABEL_18:
        *v7 = v4;
        v14 = (v7 + 1);
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return &v14[v4];
      }
    }

    else if (v5 - a4 + 14 >= v4)
    {
      *a4 = v6 | 2;
      v7 = (a4 + 1);
      goto LABEL_18;
    }
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a1, a2, a3, a4);
}

uint64_t protobuf::Intelligence_Meta::ByteSizeLong(protobuf::Intelligence_Meta *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_12;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = *(this + 3);
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v6 = *(this + 4);
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v9 = *(this + 1);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFELL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v12 < 0)
    {
      v12 = *(v11 + 8);
    }

    v2 += v12;
  }

  *(this + 5) = v2;
  return v2;
}

void protobuf::Intelligence_Meta::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_Meta::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_Meta::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 973);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  v5 = a2[1];
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  v6 = *(a2 + 4);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      v7 = this[3];
      *(this + 4) |= 1u;
      v8 = a2[3];
      if (v7 != v8)
      {
        if (v7 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 3), v8);
        }

        std::string::operator=(v7, v8);
      }
    }

    if ((v6 & 2) != 0)
    {
      v11 = this[4];
      v10 = (this + 4);
      v9 = v11;
      *(v10 - 4) |= 2u;
      v12 = a2[4];
      if (v11 != v12)
      {
        if (v9 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v10, v12);
        }

        std::string::operator=(v9, v12);
      }
    }
  }
}

void sub_254CCABF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Meta::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_Meta::Clear(this);

    protobuf::Intelligence_Meta::MergeFrom(this, a2);
  }
}

__n128 protobuf::Intelligence_Meta::InternalSwap(protobuf::Intelligence_Meta *this, protobuf::Intelligence_Meta *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v23;
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }

LABEL_5:
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v4)
    {
LABEL_6:
      v8 = (v4 & 0xFFFFFFFFFFFFFFFELL);
LABEL_7:
      v9 = v8[1].n128_u64[0];
      result = *v8;
      v11 = *(v7 + 16);
      *v8 = *v7;
      v8[1].n128_u64[0] = v11;
      *v7 = result;
      *(v7 + 16) = v9;
      goto LABEL_8;
    }

LABEL_22:
    google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v5);
    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_8:
  v12 = *(this + 3);
  v13 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v13;
  if (v12 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 3) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_14;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 3, 0, &google::protobuf::internal::fixed_address_empty_string);
    v12 = *(this + 3);
  }

  v14 = *(a2 + 3);
  if (v14 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 3, 0, &google::protobuf::internal::fixed_address_empty_string);
    v14 = *(a2 + 3);
  }

  v15 = v12[2];
  result = *v12;
  v16 = v14[2];
  *v12 = *v14;
  v12[2] = v16;
  *v14 = result;
  v14[2] = v15;
LABEL_14:
  v19 = *(this + 4);
  v17 = (this + 32);
  v18 = v19;
  if (v19 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 4) == &google::protobuf::internal::fixed_address_empty_string)
    {
      return result;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(v17, 0, &google::protobuf::internal::fixed_address_empty_string);
    v18 = *v17;
  }

  v20 = *(a2 + 4);
  if (v20 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 4, 0, &google::protobuf::internal::fixed_address_empty_string);
    v20 = *(a2 + 4);
  }

  v21 = v18->__r_.__value_.__r.__words[2];
  result = *&v18->__r_.__value_.__l.__data_;
  v22 = v20[2];
  *&v18->__r_.__value_.__l.__data_ = *v20;
  v18->__r_.__value_.__r.__words[2] = v22;
  *v20 = result;
  v20[2] = v21;
  return result;
}

protobuf::Intelligence_KeyValueParameter *protobuf::Intelligence_KeyValueParameter::Intelligence_KeyValueParameter(protobuf::Intelligence_KeyValueParameter *this)
{
  *this = &unk_286719640;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  if (atomic_load_explicit(scc_info_Intelligence_KeyValueParameter_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_KeyValueParameter_intelligence_2eproto);
  }

  *(this + 15) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 16) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 17) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 18) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 19) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 92) = 0;
  return this;
}

void sub_254CCAEC8(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(v1 + 12);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(v1 + 9);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(v1 + 6);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(v1 + 3);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_KeyValueParameter *protobuf::Intelligence_KeyValueParameter::Intelligence_KeyValueParameter(protobuf::Intelligence_KeyValueParameter *this, const protobuf::Intelligence_KeyValueParameter *a2)
{
  *this = &unk_286719640;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 3, a2 + 24);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 6, a2 + 48);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 9, a2 + 72);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 12, a2 + 96);
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 15) = &google::protobuf::internal::fixed_address_empty_string;
  v6 = *(a2 + 4);
  if (v6)
  {
    v7 = *(a2 + 15);
    if (v7 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 120, v7);
    }
  }

  *(this + 16) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 2) != 0)
  {
    v8 = *(a2 + 16);
    if (v8 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 128, v8);
    }
  }

  *(this + 17) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 4) != 0)
  {
    v9 = *(a2 + 17);
    if (v9 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 136, v9);
    }
  }

  *(this + 18) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 8) != 0)
  {
    v10 = *(a2 + 18);
    if (v10 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 144, v10);
    }
  }

  *(this + 19) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x10) != 0)
  {
    v11 = *(a2 + 19);
    if (v11 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 152, v11);
    }
  }

  v12 = *(a2 + 10);
  *(this + 170) = *(a2 + 170);
  *(this + 10) = v12;
  return this;
}

void sub_254CCB09C(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(v5);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(v4);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(v3);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField((v2 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_KeyValueParameter::~Intelligence_KeyValueParameter(protobuf::Intelligence_KeyValueParameter *this)
{
  *this = &unk_286719640;
  protobuf::Intelligence_KeyValueParameter::SharedDtor(this);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(this + 12);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(this + 9);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(this + 6);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(this + 3);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_KeyValueParameter::~Intelligence_KeyValueParameter(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_KeyValueParameter::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[15];
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  v4 = v1[16];
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    this = MEMORY[0x259C29D90](v4, 0x1012C40EC159624);
  }

  v6 = v1[17];
  if (v6 != &google::protobuf::internal::fixed_address_empty_string && v6 != 0)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    this = MEMORY[0x259C29D90](v6, 0x1012C40EC159624);
  }

  v8 = v1[18];
  if (v8 != &google::protobuf::internal::fixed_address_empty_string && v8 != 0)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    this = MEMORY[0x259C29D90](v8, 0x1012C40EC159624);
  }

  v10 = v1[19];
  if (v10 != &google::protobuf::internal::fixed_address_empty_string && v10)
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    JUMPOUT(0x259C29D90);
  }

  return this;
}

void *protobuf::Intelligence_KeyValueParameter::default_instance(protobuf::Intelligence_KeyValueParameter *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_KeyValueParameter_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_KeyValueParameter_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_KeyValueParameter_default_instance_;
}

void protobuf::Intelligence_KeyValueParameter::Clear(protobuf::Intelligence_KeyValueParameter *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 24);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 48);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 72);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 96);
  v2 = *(this + 4);
  if ((v2 & 0x1F) != 0)
  {
    if ((v2 & 1) == 0)
    {
      if ((v2 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      v4 = *(this + 16);
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v2 & 4) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *v4 = 0;
        *(v4 + 23) = 0;
        if ((v2 & 4) != 0)
        {
          goto LABEL_16;
        }
      }

LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_20:
      v6 = *(this + 18);
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v6 = 0;
        *(v6 + 23) = 0;
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_24;
    }

    v3 = *(this + 15);
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    v5 = *(this + 17);
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_27;
    }

LABEL_24:
    v7 = *(this + 19);
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

LABEL_27:
  if ((v2 & 0xE0) != 0)
  {
    *(this + 20) = 0;
    *(this + 21) = 0;
    *(this + 22) = 0;
  }

  if ((v2 & 0x300) != 0)
  {
    *(this + 92) = 0;
  }

  v9 = *(this + 8);
  v8 = this + 8;
  *(v8 + 2) = 0;
  if (v9)
  {

    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v8);
  }
}

google::protobuf::internal *protobuf::Intelligence_KeyValueParameter::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v67 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v67, *(this + 23)) & 1) == 0)
  {
    while (2)
    {
      TagFallback = (v67 + 1);
      LODWORD(v8) = *v67;
      if (*v67 < 0)
      {
        v8 = (v8 + (*TagFallback << 7) - 128);
        if (*TagFallback < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v67, v8);
          v67 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_3;
          }

          LODWORD(v8) = v10;
LABEL_8:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 10)
              {
                goto LABEL_102;
              }

              *(a1 + 16) |= 1u;
              v9 = *(a1 + 120);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 120, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_98;
            case 2u:
              if (v8 != 17)
              {
                goto LABEL_102;
              }

              v22 = *TagFallback;
              v11 = (TagFallback + 8);
              v5 |= 0x20u;
              *(a1 + 160) = v22;
              goto LABEL_42;
            case 3u:
              if (v8 != 24)
              {
                goto LABEL_102;
              }

              v5 |= 0x40u;
              v17 = (TagFallback + 1);
              v16 = *TagFallback;
              if ((v16 & 0x8000000000000000) == 0)
              {
                goto LABEL_31;
              }

              v18 = *v17;
              v16 = (v18 << 7) + v16 - 128;
              if (v18 < 0)
              {
                v63 = google::protobuf::internal::VarintParseSlow64(TagFallback, v16);
                v67 = v63;
                *(a1 + 168) = v64;
                if (!v63)
                {
                  goto LABEL_112;
                }
              }

              else
              {
                v17 = (TagFallback + 2);
LABEL_31:
                v67 = v17;
                *(a1 + 168) = v16;
              }

              goto LABEL_100;
            case 4u:
              if (v8 != 32)
              {
                goto LABEL_102;
              }

              v5 |= 0x200u;
              v20 = (TagFallback + 1);
              v19 = *TagFallback;
              if ((v19 & 0x8000000000000000) == 0)
              {
                goto LABEL_36;
              }

              v21 = *v20;
              v19 = (v21 << 7) + v19 - 128;
              if (v21 < 0)
              {
                v65 = google::protobuf::internal::VarintParseSlow64(TagFallback, v19);
                v67 = v65;
                *(a1 + 185) = v66 != 0;
                if (!v65)
                {
                  goto LABEL_112;
                }
              }

              else
              {
                v20 = (TagFallback + 2);
LABEL_36:
                v67 = v20;
                *(a1 + 185) = v19 != 0;
              }

              goto LABEL_100;
            case 5u:
              if (v8 != 42)
              {
                goto LABEL_102;
              }

              *(a1 + 16) |= 2u;
              v9 = *(a1 + 128);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 128, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_98;
            case 6u:
              if (v8 != 50)
              {
                goto LABEL_102;
              }

              v23 = TagFallback - 1;
              while (1)
              {
                v24 = (v23 + 1);
                v67 = (v23 + 1);
                v25 = *(a1 + 40);
                if (!v25)
                {
                  break;
                }

                v26 = *(a1 + 32);
                v27 = *v25;
                if (v26 >= *v25)
                {
                  if (v27 == *(a1 + 36))
                  {
LABEL_50:
                    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v27 + 1);
                    v25 = *(a1 + 40);
                    v27 = *v25;
                  }

                  *v25 = v27 + 1;
                  v29 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(a1 + 24));
                  LODWORD(v28) = v29;
                  v30 = *(a1 + 32);
                  v31 = *(a1 + 40) + 8 * v30;
                  *(a1 + 32) = v30 + 1;
                  *(v31 + 8) = v29;
                  v24 = v67;
                  goto LABEL_52;
                }

                *(a1 + 32) = v26 + 1;
                v28 = *&v25[2 * v26 + 2];
LABEL_52:
                v23 = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_KeyValueParameter>(this, v28, v24);
                v67 = v23;
                if (!v23)
                {
                  goto LABEL_112;
                }

                if (*this <= v23 || *v23 != 50)
                {
                  goto LABEL_100;
                }
              }

              v27 = *(a1 + 36);
              goto LABEL_50;
            case 7u:
              if (v8 != 58)
              {
                goto LABEL_102;
              }

              v41 = TagFallback - 1;
              while (1)
              {
                v42 = (v41 + 1);
                v67 = (v41 + 1);
                v43 = *(a1 + 64);
                if (!v43)
                {
                  break;
                }

                v44 = *(a1 + 56);
                v45 = *v43;
                if (v44 >= *v43)
                {
                  if (v45 == *(a1 + 60))
                  {
LABEL_76:
                    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v45 + 1);
                    v43 = *(a1 + 64);
                    v45 = *v43;
                  }

                  *v43 = v45 + 1;
                  v47 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(a1 + 48));
                  LODWORD(v46) = v47;
                  v48 = *(a1 + 56);
                  v49 = *(a1 + 64) + 8 * v48;
                  *(a1 + 56) = v48 + 1;
                  *(v49 + 8) = v47;
                  v42 = v67;
                  goto LABEL_78;
                }

                *(a1 + 56) = v44 + 1;
                v46 = *&v43[2 * v44 + 2];
LABEL_78:
                v41 = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_KeyValueParameter>(this, v46, v42);
                v67 = v41;
                if (!v41)
                {
                  goto LABEL_112;
                }

                if (*this <= v41 || *v41 != 58)
                {
                  goto LABEL_100;
                }
              }

              v45 = *(a1 + 60);
              goto LABEL_76;
            case 8u:
              if (v8 != 66)
              {
                goto LABEL_102;
              }

              *(a1 + 16) |= 4u;
              v9 = *(a1 + 136);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 136, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_98;
            case 9u:
              if (v8 != 74)
              {
                goto LABEL_102;
              }

              *(a1 + 16) |= 8u;
              v9 = *(a1 + 144);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 144, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_98;
            case 0xAu:
              if (v8 != 80)
              {
                goto LABEL_102;
              }

              v5 |= 0x100u;
              v14 = (TagFallback + 1);
              v13 = *TagFallback;
              if ((v13 & 0x8000000000000000) == 0)
              {
                goto LABEL_26;
              }

              v15 = *v14;
              v13 = (v15 << 7) + v13 - 128;
              if (v15 < 0)
              {
                v61 = google::protobuf::internal::VarintParseSlow64(TagFallback, v13);
                v67 = v61;
                *(a1 + 184) = v62 != 0;
                if (!v61)
                {
                  goto LABEL_112;
                }
              }

              else
              {
                v14 = (TagFallback + 2);
LABEL_26:
                v67 = v14;
                *(a1 + 184) = v13 != 0;
              }

              goto LABEL_100;
            case 0xBu:
              if (v8 != 90)
              {
                goto LABEL_102;
              }

              v50 = TagFallback - 1;
              while (1)
              {
                v51 = (v50 + 1);
                v67 = (v50 + 1);
                v52 = *(a1 + 88);
                if (!v52)
                {
                  break;
                }

                v53 = *(a1 + 80);
                v54 = *v52;
                if (v53 >= *v52)
                {
                  if (v54 == *(a1 + 84))
                  {
LABEL_89:
                    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v54 + 1);
                    v52 = *(a1 + 88);
                    v54 = *v52;
                  }

                  *v52 = v54 + 1;
                  v56 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(a1 + 72));
                  LODWORD(v55) = v56;
                  v57 = *(a1 + 80);
                  v58 = *(a1 + 88) + 8 * v57;
                  *(a1 + 80) = v57 + 1;
                  *(v58 + 8) = v56;
                  v51 = v67;
                  goto LABEL_91;
                }

                *(a1 + 80) = v53 + 1;
                v55 = *&v52[2 * v53 + 2];
LABEL_91:
                v50 = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_KeyValueParameter>(this, v55, v51);
                v67 = v50;
                if (!v50)
                {
                  goto LABEL_112;
                }

                if (*this <= v50 || *v50 != 90)
                {
                  goto LABEL_100;
                }
              }

              v54 = *(a1 + 84);
              goto LABEL_89;
            case 0xCu:
              if (v8 != 97)
              {
                goto LABEL_102;
              }

              v12 = *TagFallback;
              v11 = (TagFallback + 8);
              v5 |= 0x80u;
              *(a1 + 176) = v12;
LABEL_42:
              v67 = v11;
              goto LABEL_100;
            case 0xDu:
              if (v8 != 106)
              {
                goto LABEL_102;
              }

              *(a1 + 16) |= 0x10u;
              v9 = *(a1 + 152);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 152, &google::protobuf::internal::fixed_address_empty_string);
              }

LABEL_98:
              v59 = google::protobuf::internal::InlineGreedyStringParser(v9, TagFallback, this);
              goto LABEL_99;
            case 0xEu:
              if (v8 != 114)
              {
                goto LABEL_102;
              }

              v32 = TagFallback - 1;
              break;
            default:
LABEL_102:
              if (v8)
              {
                v60 = (v8 & 7) == 4;
              }

              else
              {
                v60 = 1;
              }

              if (v60)
              {
                *(this + 20) = v8 - 1;
                goto LABEL_3;
              }

              v59 = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), TagFallback, this);
LABEL_99:
              v67 = v59;
              if (!v59)
              {
LABEL_112:
                TagFallback = 0;
                goto LABEL_3;
              }

LABEL_100:
              if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v67, *(this + 23)))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v33 = (v32 + 1);
            v67 = (v32 + 1);
            v34 = *(a1 + 112);
            if (!v34)
            {
              break;
            }

            v35 = *(a1 + 104);
            v36 = *v34;
            if (v35 >= *v34)
            {
              if (v36 == *(a1 + 108))
              {
LABEL_63:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96), v36 + 1);
                v34 = *(a1 + 112);
                v36 = *v34;
              }

              *v34 = v36 + 1;
              v38 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(a1 + 96));
              LODWORD(v37) = v38;
              v39 = *(a1 + 104);
              v40 = *(a1 + 112) + 8 * v39;
              *(a1 + 104) = v39 + 1;
              *(v40 + 8) = v38;
              v33 = v67;
              goto LABEL_65;
            }

            *(a1 + 104) = v35 + 1;
            v37 = *&v34[2 * v35 + 2];
LABEL_65:
            v32 = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_KeyValueParameter>(this, v37, v33);
            v67 = v32;
            if (!v32)
            {
              goto LABEL_112;
            }

            if (*this <= v32 || *v32 != 114)
            {
              goto LABEL_100;
            }
          }

          v36 = *(a1 + 108);
          goto LABEL_63;
        }

        TagFallback = (v67 + 2);
      }

      break;
    }

    v67 = TagFallback;
    goto LABEL_8;
  }

LABEL_2:
  TagFallback = v67;
LABEL_3:
  *(a1 + 16) |= v5;
  return TagFallback;
}

char *google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_KeyValueParameter>(google::protobuf::internal::EpsCopyInputStream *this, uint64_t a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = protobuf::Intelligence_KeyValueParameter::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

unsigned __int8 *protobuf::Intelligence_KeyValueParameter::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_KeyValueParameter *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 15), a2);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_4;
      }

LABEL_39:
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v24 = *(this + 21);
      *v4 = 24;
      if (v24 > 0x7F)
      {
        v4[1] = v24 | 0x80;
        v45 = v24 >> 7;
        if (v24 >> 14)
        {
          v4 += 3;
          do
          {
            *(v4 - 1) = v45 | 0x80;
            v46 = v45 >> 7;
            ++v4;
            v47 = v45 >> 14;
            v45 >>= 7;
          }

          while (v47);
          *(v4 - 1) = v46;
          if ((v6 & 0x200) != 0)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v4[2] = v45;
          v4 += 3;
          if ((v6 & 0x200) != 0)
          {
            goto LABEL_87;
          }
        }
      }

      else
      {
        v4[1] = v24;
        v4 += 2;
        if ((v6 & 0x200) != 0)
        {
          goto LABEL_87;
        }
      }

LABEL_5:
      if ((v6 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v23 = *(this + 20);
  *v4 = 17;
  *(v4 + 1) = v23;
  v4 += 9;
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_39;
  }

LABEL_4:
  if ((v6 & 0x200) == 0)
  {
    goto LABEL_5;
  }

LABEL_87:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v48 = *(this + 185);
  *v4 = 32;
  v4[1] = v48;
  v4 += 2;
  if ((v6 & 2) != 0)
  {
LABEL_6:
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 5, *(this + 16), v4);
  }

LABEL_7:
  v7 = *(this + 8);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 24, i);
      *v4 = 50;
      v10 = *(v9 + 5);
      if (v10 > 0x7F)
      {
        v4[1] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = (v4 + 3);
          do
          {
            *(v11 - 1) = v12 | 0x80;
            v13 = v12 >> 7;
            ++v11;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
          *(v11 - 1) = v13;
        }

        else
        {
          v4[2] = v12;
          v11 = (v4 + 3);
        }
      }

      else
      {
        v4[1] = v10;
        v11 = (v4 + 2);
      }

      v4 = protobuf::Intelligence_KeyValueParameter::InternalSerializeWithCachedSizesToArray(v9, v11, a3);
    }
  }

  v15 = *(this + 14);
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v17 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 48, j);
      *v4 = 58;
      v18 = *(v17 + 5);
      if (v18 > 0x7F)
      {
        v4[1] = v18 | 0x80;
        v20 = v18 >> 7;
        if (v18 >> 14)
        {
          v19 = (v4 + 3);
          do
          {
            *(v19 - 1) = v20 | 0x80;
            v21 = v20 >> 7;
            ++v19;
            v22 = v20 >> 14;
            v20 >>= 7;
          }

          while (v22);
          *(v19 - 1) = v21;
        }

        else
        {
          v4[2] = v20;
          v19 = (v4 + 3);
        }
      }

      else
      {
        v4[1] = v18;
        v19 = (v4 + 2);
      }

      v4 = protobuf::Intelligence_KeyValueParameter::InternalSerializeWithCachedSizesToArray(v17, v19, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 8, *(this + 17), v4);
    if ((v6 & 8) == 0)
    {
LABEL_33:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_33;
  }

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 9, *(this + 18), v4);
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_49;
  }

LABEL_46:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v25 = *(this + 184);
  *v4 = 80;
  v4[1] = v25;
  v4 += 2;
LABEL_49:
  v26 = *(this + 20);
  if (v26)
  {
    for (k = 0; k != v26; ++k)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v28 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 72, k);
      *v4 = 90;
      v29 = *(v28 + 5);
      if (v29 > 0x7F)
      {
        v4[1] = v29 | 0x80;
        v31 = v29 >> 7;
        if (v29 >> 14)
        {
          v30 = (v4 + 3);
          do
          {
            *(v30 - 1) = v31 | 0x80;
            v32 = v31 >> 7;
            ++v30;
            v33 = v31 >> 14;
            v31 >>= 7;
          }

          while (v33);
          *(v30 - 1) = v32;
        }

        else
        {
          v4[2] = v31;
          v30 = (v4 + 3);
        }
      }

      else
      {
        v4[1] = v29;
        v30 = (v4 + 2);
      }

      v4 = protobuf::Intelligence_KeyValueParameter::InternalSerializeWithCachedSizesToArray(v28, v30, a3);
    }
  }

  if ((v6 & 0x80) != 0)
  {
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v34 = *(this + 22);
    *v4 = 97;
    *(v4 + 1) = v34;
    v4 += 9;
  }

  if ((v6 & 0x10) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 13, *(this + 19), v4);
  }

  v35 = *(this + 26);
  if (v35)
  {
    for (m = 0; m != v35; ++m)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v37 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 96, m);
      *v4 = 114;
      v38 = *(v37 + 5);
      if (v38 > 0x7F)
      {
        v4[1] = v38 | 0x80;
        v40 = v38 >> 7;
        if (v38 >> 14)
        {
          v39 = (v4 + 3);
          do
          {
            *(v39 - 1) = v40 | 0x80;
            v41 = v40 >> 7;
            ++v39;
            v42 = v40 >> 14;
            v40 >>= 7;
          }

          while (v42);
          *(v39 - 1) = v41;
        }

        else
        {
          v4[2] = v40;
          v39 = (v4 + 3);
        }
      }

      else
      {
        v4[1] = v38;
        v39 = (v4 + 2);
      }

      v4 = protobuf::Intelligence_KeyValueParameter::InternalSerializeWithCachedSizesToArray(v37, v39, a3);
    }
  }

  v43 = *(this + 1);
  if ((v43 & 1) == 0)
  {
    return v4;
  }

  v49 = v43 & 0xFFFFFFFFFFFFFFFELL;
  v50 = *(v49 + 23);
  if (v50 < 0)
  {
    v51 = *v49;
    v50 = *(v49 + 8);
  }

  else
  {
    v51 = v49;
  }

  if (*a3 - v4 >= v50)
  {
    v52 = v50;
    memcpy(v4, v51, v50);
    v4 += v52;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v51, v50, v4);
}

uint64_t protobuf::Intelligence_KeyValueParameter::ByteSizeLong(protobuf::Intelligence_KeyValueParameter *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = protobuf::Intelligence_KeyValueParameter::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 14);
  v9 = v2 + v8;
  v10 = *(this + 8);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = protobuf::Intelligence_KeyValueParameter::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 20);
  v16 = v9 + v15;
  v17 = *(this + 11);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = protobuf::Intelligence_KeyValueParameter::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(this + 26);
  v23 = v16 + v22;
  v24 = *(this + 14);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = protobuf::Intelligence_KeyValueParameter::ByteSizeLong(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(this + 4);
  if (v29)
  {
    if (v29)
    {
      v38 = *(this + 15);
      v39 = *(v38 + 23);
      v40 = *(v38 + 8);
      if ((v39 & 0x80u) == 0)
      {
        v40 = v39;
      }

      v23 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v29 & 2) == 0)
      {
LABEL_30:
        if ((v29 & 4) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_54;
      }
    }

    else if ((v29 & 2) == 0)
    {
      goto LABEL_30;
    }

    v41 = *(this + 16);
    v42 = *(v41 + 23);
    v43 = *(v41 + 8);
    if ((v42 & 0x80u) == 0)
    {
      v43 = v42;
    }

    v23 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v29 & 4) == 0)
    {
LABEL_31:
      if ((v29 & 8) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_57;
    }

LABEL_54:
    v44 = *(this + 17);
    v45 = *(v44 + 23);
    v46 = *(v44 + 8);
    if ((v45 & 0x80u) == 0)
    {
      v46 = v45;
    }

    v23 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v29 & 8) == 0)
    {
LABEL_32:
      if ((v29 & 0x10) == 0)
      {
LABEL_36:
        v33 = v23 + 9;
        if ((v29 & 0x20) == 0)
        {
          v33 = v23;
        }

        if ((v29 & 0x40) != 0)
        {
          v33 += ((9 * (__clz(*(this + 21) | 1) ^ 0x3F) + 73) >> 6) + 1;
        }

        if ((v29 & 0x80) != 0)
        {
          v23 = v33 + 9;
        }

        else
        {
          v23 = v33;
        }

        goto LABEL_43;
      }

LABEL_33:
      v30 = *(this + 19);
      v31 = *(v30 + 23);
      v32 = *(v30 + 8);
      if ((v31 & 0x80u) == 0)
      {
        v32 = v31;
      }

      v23 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_36;
    }

LABEL_57:
    v47 = *(this + 18);
    v48 = *(v47 + 23);
    v49 = *(v47 + 8);
    if ((v48 & 0x80u) == 0)
    {
      v49 = v48;
    }

    v23 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v29 & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

LABEL_43:
  v34 = (v29 & 0x300) == 0;
  v35 = v23 + ((v29 >> 8) & 2) + ((v29 >> 7) & 2);
  if (v34)
  {
    result = v23;
  }

  else
  {
    result = v35;
  }

  v37 = *(this + 1);
  if (v37)
  {
    v50 = v37 & 0xFFFFFFFFFFFFFFFELL;
    v51 = *((v37 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v51 < 0)
    {
      v51 = *(v50 + 8);
    }

    result += v51;
  }

  *(this + 5) = result;
  return result;
}

std::string *protobuf::Intelligence_KeyValueParameter::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  return protobuf::Intelligence_KeyValueParameter::MergeFrom(this, lpsrc);
}

std::string *protobuf::Intelligence_KeyValueParameter::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 1550);
    v4 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  v5 = a2[1];
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>((this + 3));
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>((this + 6));
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>((this + 9));
  result = google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>((this + 12));
  v7 = *(a2 + 4);
  if (v7)
  {
    if (v7)
    {
      result = (this + 15);
      v8 = this[15];
      *(this + 4) |= 1u;
      v9 = a2[15];
      if (v8 != v9)
      {
        if (v8 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(result, v9);
        }

        result = std::string::operator=(v8, v9);
      }
    }

    if ((v7 & 2) != 0)
    {
      result = (this + 16);
      v10 = this[16];
      *(this + 4) |= 2u;
      v11 = a2[16];
      if (v10 != v11)
      {
        if (v10 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(result, v11);
        }

        result = std::string::operator=(v10, v11);
      }
    }

    if ((v7 & 4) != 0)
    {
      result = (this + 17);
      v12 = this[17];
      *(this + 4) |= 4u;
      v13 = a2[17];
      if (v12 != v13)
      {
        if (v12 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(result, v13);
        }

        result = std::string::operator=(v12, v13);
      }
    }

    if ((v7 & 8) != 0)
    {
      result = (this + 18);
      v14 = this[18];
      *(this + 4) |= 8u;
      v15 = a2[18];
      if (v14 != v15)
      {
        if (v14 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(result, v15);
        }

        result = std::string::operator=(v14, v15);
      }
    }

    if ((v7 & 0x10) != 0)
    {
      result = (this + 19);
      v16 = this[19];
      *(this + 4) |= 0x10u;
      v17 = a2[19];
      if (v16 != v17)
      {
        if (v16 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(result, v17);
        }

        result = std::string::operator=(v16, v17);
      }
    }

    if ((v7 & 0x20) != 0)
    {
      this[20] = a2[20];
      if ((v7 & 0x40) == 0)
      {
LABEL_32:
        if ((v7 & 0x80) == 0)
        {
LABEL_34:
          *(this + 4) |= v7;
          goto LABEL_35;
        }

LABEL_33:
        this[22] = a2[22];
        goto LABEL_34;
      }
    }

    else if ((v7 & 0x40) == 0)
    {
      goto LABEL_32;
    }

    this[21] = a2[21];
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_35:
  if ((v7 & 0x300) != 0)
  {
    if ((v7 & 0x100) != 0)
    {
      *(this + 184) = *(a2 + 184);
    }

    if ((v7 & 0x200) != 0)
    {
      *(this + 185) = *(a2 + 185);
    }

    *(this + 4) |= v7;
  }

  return result;
}

void sub_254CCC8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *protobuf::Intelligence_KeyValueParameter::CopyFrom(std::string *this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    v4 = this;
    protobuf::Intelligence_KeyValueParameter::Clear(this);

    return protobuf::Intelligence_KeyValueParameter::MergeFrom(v4, a2);
  }

  return this;
}

double protobuf::Intelligence_KeyValueParameter::InternalSwap(protobuf::Intelligence_KeyValueParameter *this, protobuf::Intelligence_KeyValueParameter *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v41;
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_40;
    }

LABEL_5:
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v4)
    {
LABEL_6:
      v8 = v4 & 0xFFFFFFFFFFFFFFFELL;
LABEL_7:
      v9 = *(v8 + 16);
      v10 = *v8;
      v11 = *(v7 + 16);
      *v8 = *v7;
      *(v8 + 16) = v11;
      *v7 = v10;
      *(v7 + 16) = v9;
      goto LABEL_8;
    }

LABEL_40:
    google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v5);
    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_8:
  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 24), (a2 + 24));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 48), (a2 + 48));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 72), (a2 + 72));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 96), (a2 + 96));
  v13 = *(this + 15);
  if (v13 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 15) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_14;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 15, 0, &google::protobuf::internal::fixed_address_empty_string);
    v13 = *(this + 15);
  }

  v14 = *(a2 + 15);
  if (v14 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 15, 0, &google::protobuf::internal::fixed_address_empty_string);
    v14 = *(a2 + 15);
  }

  v15 = v13[2];
  v16 = *v13;
  v17 = v14[2];
  *v13 = *v14;
  v13[2] = v17;
  *v14 = v16;
  v14[2] = v15;
LABEL_14:
  v18 = *(this + 16);
  if (v18 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 16) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_20;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 16, 0, &google::protobuf::internal::fixed_address_empty_string);
    v18 = *(this + 16);
  }

  v19 = *(a2 + 16);
  if (v19 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 16, 0, &google::protobuf::internal::fixed_address_empty_string);
    v19 = *(a2 + 16);
  }

  v20 = v18[2];
  v21 = *v18;
  v22 = v19[2];
  *v18 = *v19;
  v18[2] = v22;
  *v19 = v21;
  v19[2] = v20;
LABEL_20:
  v23 = *(this + 17);
  if (v23 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 17) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_26;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 17, 0, &google::protobuf::internal::fixed_address_empty_string);
    v23 = *(this + 17);
  }

  v24 = *(a2 + 17);
  if (v24 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 17, 0, &google::protobuf::internal::fixed_address_empty_string);
    v24 = *(a2 + 17);
  }

  v25 = v23[2];
  v26 = *v23;
  v27 = v24[2];
  *v23 = *v24;
  v23[2] = v27;
  *v24 = v26;
  v24[2] = v25;
LABEL_26:
  v28 = *(this + 18);
  if (v28 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 18) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_32;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 18, 0, &google::protobuf::internal::fixed_address_empty_string);
    v28 = *(this + 18);
  }

  v29 = *(a2 + 18);
  if (v29 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 18, 0, &google::protobuf::internal::fixed_address_empty_string);
    v29 = *(a2 + 18);
  }

  v30 = v28[2];
  v31 = *v28;
  v32 = v29[2];
  *v28 = *v29;
  v28[2] = v32;
  *v29 = v31;
  v29[2] = v30;
LABEL_32:
  v33 = *(this + 19);
  if (v33 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 19) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_38;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 19, 0, &google::protobuf::internal::fixed_address_empty_string);
    v33 = *(this + 19);
  }

  v34 = *(a2 + 19);
  if (v34 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 19, 0, &google::protobuf::internal::fixed_address_empty_string);
    v34 = *(a2 + 19);
  }

  v35 = v33[2];
  v36 = *v33;
  v37 = v34[2];
  *v33 = *v34;
  v33[2] = v37;
  *v34 = v36;
  v34[2] = v35;
LABEL_38:
  v38 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v38;
  v39 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v39;
  result = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = result;
  LOBYTE(v39) = *(this + 184);
  *(this + 184) = *(a2 + 184);
  *(a2 + 184) = v39;
  LOBYTE(v39) = *(this + 185);
  *(this + 185) = *(a2 + 185);
  *(a2 + 185) = v39;
  return result;
}

protobuf::Intelligence_Undo *protobuf::Intelligence_Undo::Intelligence_Undo(protobuf::Intelligence_Undo *this)
{
  *(this + 8) = 0u;
  *this = &unk_2867196D0;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_Undo_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Undo_intelligence_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

void sub_254CCCD4C(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField((v1 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_Undo *protobuf::Intelligence_Undo::Intelligence_Undo(protobuf::Intelligence_Undo *this, const protobuf::Intelligence_Undo *a2)
{
  *this = &unk_2867196D0;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 3, a2 + 24);
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  if (*(a2 + 16))
  {
    v6 = *(a2 + 6);
    if (v6 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 48, v6);
    }
  }

  return this;
}

void sub_254CCCE20(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField((v2 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Undo::~Intelligence_Undo(protobuf::Intelligence_Undo *this)
{
  *this = &unk_2867196D0;
  v2 = *(this + 6);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(this + 3);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_Undo::~Intelligence_Undo(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_Undo::default_instance(protobuf::Intelligence_Undo *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_Undo_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Undo_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_Undo_default_instance_;
}

void protobuf::Intelligence_Undo::Clear(protobuf::Intelligence_Undo *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 24);
  if (*(this + 16))
  {
    v2 = *(this + 6);
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

  v4 = *(this + 8);
  v3 = this + 8;
  *(v3 + 2) = 0;
  if (v4)
  {

    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v3);
  }
}

std::string::value_type *protobuf::Intelligence_Undo::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v20 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v20, *(this + 23));
  result = v20;
  if ((v5 & 1) == 0)
  {
    while (1)
    {
      v7 = result + 1;
      LODWORD(v8) = *result;
      if ((*result & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = (v8 + (*v7 << 7) - 128);
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      result = google::protobuf::internal::ReadTagFallback(result, v8);
      v20 = result;
      if (!result)
      {
        return result;
      }

      v7 = result;
      LODWORD(v8) = v19;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_12;
        }

        result = v7 - 1;
        while (2)
        {
          v10 = (result + 1);
          v20 = (result + 1);
          v11 = *(a1 + 40);
          if (v11)
          {
            v12 = *(a1 + 32);
            v13 = *v11;
            if (v12 < *v11)
            {
              *(a1 + 32) = v12 + 1;
              v14 = *&v11[2 * v12 + 2];
              goto LABEL_24;
            }

            if (v13 == *(a1 + 36))
            {
LABEL_22:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v13 + 1);
              v11 = *(a1 + 40);
              v13 = *v11;
            }

            *v11 = v13 + 1;
            v14 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(a1 + 24));
            v15 = *(a1 + 32);
            v16 = *(a1 + 40) + 8 * v15;
            *(a1 + 32) = v15 + 1;
            *(v16 + 8) = v14;
            v10 = v20;
LABEL_24:
            result = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_KeyValueParameter>(this, v14, v10);
            v20 = result;
            if (!result)
            {
              return result;
            }

            if (*this <= result || *result != 18)
            {
              goto LABEL_32;
            }

            continue;
          }

          break;
        }

        v13 = *(a1 + 36);
        goto LABEL_22;
      }

      if (v8 >> 3 == 1 && v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v17 = *(a1 + 48);
        if (v17 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 48, &google::protobuf::internal::fixed_address_empty_string);
        }

        result = google::protobuf::internal::InlineGreedyStringParser(v17, v7, this);
        goto LABEL_31;
      }

LABEL_12:
      if (!v8 || (v8 & 7) == 4)
      {
        *(this + 20) = v8 - 1;
        return v7;
      }

      result = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), v7, this);
LABEL_31:
      v20 = result;
      if (!result)
      {
        return result;
      }

LABEL_32:
      v18 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v20, *(this + 23));
      result = v20;
      if (v18)
      {
        return result;
      }
    }

    v7 = result + 2;
LABEL_6:
    v20 = v7;
    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *protobuf::Intelligence_Undo::InternalSerializeWithCachedSizesToArray(const void ***this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  if (this[2])
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, this[6], a2);
  }

  v6 = *(this + 8);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>((this + 3), i);
      *v4 = 18;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        v4[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = v4 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          v4[2] = v11;
          v10 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v9;
        v10 = v4 + 2;
      }

      v4 = protobuf::Intelligence_KeyValueParameter::InternalSerializeWithCachedSizesToArray(v8, v10, a3);
    }
  }

  v14 = this[1];
  if ((v14 & 1) == 0)
  {
    return v4;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 23);
  if (v17 < 0)
  {
    v18 = *v16;
    v17 = *(v16 + 8);
  }

  else
  {
    v18 = v16;
  }

  if (*a3 - v4 >= v17)
  {
    v19 = v17;
    memcpy(v4, v18, v17);
    v4 += v19;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v18, v17, v4);
}

uint64_t protobuf::Intelligence_Undo::ByteSizeLong(protobuf::Intelligence_Undo *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = protobuf::Intelligence_KeyValueParameter::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 16))
  {
    v8 = *(this + 6);
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v11 = *(this + 1);
  if (v11)
  {
    v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
    v14 = *((v11 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v14 < 0)
    {
      v14 = *(v13 + 8);
    }

    v2 += v14;
  }

  *(this + 5) = v2;
  return v2;
}

void protobuf::Intelligence_Undo::CheckTypeAndMergeFrom(protobuf::Intelligence_Undo *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_Undo::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_Undo::MergeFrom(protobuf::Intelligence_Undo *this, const protobuf::Intelligence_Undo *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 1828);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 3, a2 + 24);
  if (*(a2 + 16))
  {
    v8 = *(this + 6);
    v7 = this + 48;
    v6 = v8;
    *(v7 - 8) |= 1u;
    v9 = *(a2 + 6);
    if (v8 != v9)
    {
      if (v6 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v7, v9);
      }

      std::string::operator=(v6, v9);
    }
  }
}

void sub_254CCD5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Undo::CopyFrom(protobuf::Intelligence_Undo *this, const protobuf::Intelligence_Undo *a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_Undo::Clear(this);

    protobuf::Intelligence_Undo::MergeFrom(this, a2);
  }
}

__n128 protobuf::Intelligence_Undo::InternalSwap(protobuf::Intelligence_Undo *this, protobuf::Intelligence_Undo *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v20;
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

LABEL_5:
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v4)
    {
LABEL_6:
      v8 = v4 & 0xFFFFFFFFFFFFFFFELL;
LABEL_7:
      v9 = *(v8 + 16);
      v10 = *v8;
      v11 = *(v7 + 16);
      *v8 = *v7;
      *(v8 + 16) = v11;
      *v7 = v10;
      *(v7 + 16) = v9;
      goto LABEL_8;
    }

LABEL_16:
    google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v5);
    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_8:
  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 24), (a2 + 24));
  v16 = *(this + 6);
  v14 = (this + 48);
  v15 = v16;
  if (v16 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 6) == &google::protobuf::internal::fixed_address_empty_string)
    {
      return result;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(v14, 0, &google::protobuf::internal::fixed_address_empty_string);
    v15 = *v14;
  }

  v17 = *(a2 + 6);
  if (v17 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 6, 0, &google::protobuf::internal::fixed_address_empty_string);
    v17 = *(a2 + 6);
  }

  v18 = v15->__r_.__value_.__r.__words[2];
  result = *&v15->__r_.__value_.__l.__data_;
  v19 = v17[2];
  *&v15->__r_.__value_.__l.__data_ = *v17;
  v15->__r_.__value_.__r.__words[2] = v19;
  *v17 = result;
  v17[2] = v18;
  return result;
}

protobuf::Intelligence_DialogResponse *protobuf::Intelligence_DialogResponse::Intelligence_DialogResponse(protobuf::Intelligence_DialogResponse *this)
{
  *this = &unk_286719760;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  if (atomic_load_explicit(scc_info_Intelligence_DialogResponse_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_DialogResponse_intelligence_2eproto);
  }

  *(this + 15) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 16) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 17) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 18) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 19) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 20) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 21) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 22) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 23) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 25) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 26) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 27) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 28) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 58) = 0;
  *(this + 118) = 0;
  return this;
}

void sub_254CCD854(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(v1 + 12);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 9);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(v1 + 6);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(v1 + 3);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_DialogResponse *protobuf::Intelligence_DialogResponse::Intelligence_DialogResponse(protobuf::Intelligence_DialogResponse *this, const protobuf::Intelligence_DialogResponse *a2)
{
  *this = &unk_286719760;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 3, a2 + 24);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 6, a2 + 48);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 72, a2 + 72);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 12, a2 + 96);
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 15) = &google::protobuf::internal::fixed_address_empty_string;
  v6 = *(a2 + 4);
  if (v6)
  {
    v7 = *(a2 + 15);
    if (v7 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 120, v7);
    }
  }

  *(this + 16) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 2) != 0)
  {
    v8 = *(a2 + 16);
    if (v8 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 128, v8);
    }
  }

  *(this + 17) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 4) != 0)
  {
    v9 = *(a2 + 17);
    if (v9 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 136, v9);
    }
  }

  *(this + 18) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 8) != 0)
  {
    v10 = *(a2 + 18);
    if (v10 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 144, v10);
    }
  }

  *(this + 19) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x10) != 0)
  {
    v11 = *(a2 + 19);
    if (v11 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 152, v11);
    }
  }

  *(this + 20) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x20) != 0)
  {
    v12 = *(a2 + 20);
    if (v12 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 160, v12);
    }
  }

  *(this + 21) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x40) != 0)
  {
    v13 = *(a2 + 21);
    if (v13 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 168, v13);
    }
  }

  *(this + 22) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x80) != 0)
  {
    v14 = *(a2 + 22);
    if (v14 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 176, v14);
    }
  }

  *(this + 23) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x100) != 0)
  {
    v15 = *(a2 + 23);
    if (v15 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 184, v15);
    }
  }

  *(this + 24) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x200) != 0)
  {
    v16 = *(a2 + 24);
    if (v16 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 192, v16);
    }
  }

  *(this + 25) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x400) != 0)
  {
    v17 = *(a2 + 25);
    if (v17 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 200, v17);
    }
  }

  *(this + 26) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x800) != 0)
  {
    v18 = *(a2 + 26);
    if (v18 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 208, v18);
    }
  }

  *(this + 27) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x1000) != 0)
  {
    v19 = *(a2 + 27);
    if (v19 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 216, v19);
    }
  }

  *(this + 28) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x2000) != 0)
  {
    v20 = *(a2 + 28);
    if (v20 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 224, v20);
    }
  }

  v21 = *(a2 + 58);
  *(this + 118) = *(a2 + 118);
  *(this + 58) = v21;
  return this;
}

void sub_254CCDB48(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(v5);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v4);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(v3);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField((v2 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_DialogResponse::~Intelligence_DialogResponse(protobuf::Intelligence_DialogResponse *this)
{
  *this = &unk_286719760;
  protobuf::Intelligence_DialogResponse::SharedDtor(this);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(this + 12);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 72);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(this + 6);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(this + 3);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_DialogResponse::~Intelligence_DialogResponse(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_DialogResponse::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[15];
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  v4 = v1[16];
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    this = MEMORY[0x259C29D90](v4, 0x1012C40EC159624);
  }

  v6 = v1[17];
  if (v6 != &google::protobuf::internal::fixed_address_empty_string && v6 != 0)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    this = MEMORY[0x259C29D90](v6, 0x1012C40EC159624);
  }

  v8 = v1[18];
  if (v8 != &google::protobuf::internal::fixed_address_empty_string && v8 != 0)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    this = MEMORY[0x259C29D90](v8, 0x1012C40EC159624);
  }

  v10 = v1[19];
  if (v10 != &google::protobuf::internal::fixed_address_empty_string && v10)
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    this = MEMORY[0x259C29D90](v10, 0x1012C40EC159624);
  }

  v11 = v1[20];
  if (v11 != &google::protobuf::internal::fixed_address_empty_string && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    this = MEMORY[0x259C29D90](v11, 0x1012C40EC159624);
  }

  v12 = v1[21];
  if (v12 != &google::protobuf::internal::fixed_address_empty_string && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    this = MEMORY[0x259C29D90](v12, 0x1012C40EC159624);
  }

  v13 = v1[22];
  if (v13 != &google::protobuf::internal::fixed_address_empty_string && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    this = MEMORY[0x259C29D90](v13, 0x1012C40EC159624);
  }

  v14 = v1[23];
  if (v14 != &google::protobuf::internal::fixed_address_empty_string && v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    this = MEMORY[0x259C29D90](v14, 0x1012C40EC159624);
  }

  v15 = v1[24];
  if (v15 != &google::protobuf::internal::fixed_address_empty_string && v15)
  {
    if (*(v15 + 23) < 0)
    {
      operator delete(*v15);
    }

    this = MEMORY[0x259C29D90](v15, 0x1012C40EC159624);
  }

  v16 = v1[25];
  if (v16 != &google::protobuf::internal::fixed_address_empty_string && v16)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    this = MEMORY[0x259C29D90](v16, 0x1012C40EC159624);
  }

  v17 = v1[26];
  if (v17 != &google::protobuf::internal::fixed_address_empty_string && v17)
  {
    if (*(v17 + 23) < 0)
    {
      operator delete(*v17);
    }

    this = MEMORY[0x259C29D90](v17, 0x1012C40EC159624);
  }

  v18 = v1[27];
  if (v18 != &google::protobuf::internal::fixed_address_empty_string && v18)
  {
    if (*(v18 + 23) < 0)
    {
      operator delete(*v18);
    }

    this = MEMORY[0x259C29D90](v18, 0x1012C40EC159624);
  }

  v19 = v1[28];
  if (v19 != &google::protobuf::internal::fixed_address_empty_string && v19)
  {
    if (*(v19 + 23) < 0)
    {
      operator delete(*v19);
    }

    JUMPOUT(0x259C29D90);
  }

  return this;
}

void *protobuf::Intelligence_DialogResponse::default_instance(protobuf::Intelligence_DialogResponse *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_DialogResponse_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_DialogResponse_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_DialogResponse_default_instance_;
}

void protobuf::Intelligence_DialogResponse::Clear(protobuf::Intelligence_DialogResponse *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 24);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 48);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 72);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 96);
  v2 = *(this + 4);
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      if ((v2 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      v4 = *(this + 16);
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v2 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v4 = 0;
        *(v4 + 23) = 0;
        if ((v2 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_23:
      v6 = *(this + 18);
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v2 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v6 = 0;
        *(v6 + 23) = 0;
        if ((v2 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_31:
      v8 = *(this + 20);
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        if ((v2 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
        if ((v2 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }

LABEL_39:
      v10 = *(this + 22);
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
      }

      else
      {
        *v10 = 0;
        *(v10 + 23) = 0;
      }

      goto LABEL_42;
    }

    v3 = *(this + 15);
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    v5 = *(this + 17);
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_27:
    v7 = *(this + 19);
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_8:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v9 = *(this + 21);
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_39;
  }

LABEL_42:
  if ((v2 & 0x3F00) == 0)
  {
    goto LABEL_73;
  }

  if ((v2 & 0x100) == 0)
  {
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_45;
    }

LABEL_54:
    v12 = *(this + 24);
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v2 & 0x400) != 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v2 & 0x400) != 0)
      {
        goto LABEL_58;
      }
    }

LABEL_46:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_47;
    }

LABEL_62:
    v14 = *(this + 26);
    if (*(v14 + 23) < 0)
    {
      **v14 = 0;
      *(v14 + 8) = 0;
      if ((v2 & 0x1000) != 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      *v14 = 0;
      *(v14 + 23) = 0;
      if ((v2 & 0x1000) != 0)
      {
        goto LABEL_66;
      }
    }

LABEL_48:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_70;
  }

  v11 = *(this + 23);
  if (*(v11 + 23) < 0)
  {
    **v11 = 0;
    *(v11 + 8) = 0;
    if ((v2 & 0x200) != 0)
    {
      goto LABEL_54;
    }
  }

  else
  {
    *v11 = 0;
    *(v11 + 23) = 0;
    if ((v2 & 0x200) != 0)
    {
      goto LABEL_54;
    }
  }

LABEL_45:
  if ((v2 & 0x400) == 0)
  {
    goto LABEL_46;
  }

LABEL_58:
  v13 = *(this + 25);
  if (*(v13 + 23) < 0)
  {
    **v13 = 0;
    *(v13 + 8) = 0;
    if ((v2 & 0x800) != 0)
    {
      goto LABEL_62;
    }
  }

  else
  {
    *v13 = 0;
    *(v13 + 23) = 0;
    if ((v2 & 0x800) != 0)
    {
      goto LABEL_62;
    }
  }

LABEL_47:
  if ((v2 & 0x1000) == 0)
  {
    goto LABEL_48;
  }

LABEL_66:
  v15 = *(this + 27);
  if (*(v15 + 23) < 0)
  {
    **v15 = 0;
    *(v15 + 8) = 0;
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_73;
    }
  }

  else
  {
    *v15 = 0;
    *(v15 + 23) = 0;
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_73;
    }
  }

LABEL_70:
  v16 = *(this + 28);
  if (*(v16 + 23) < 0)
  {
    **v16 = 0;
    *(v16 + 8) = 0;
  }

  else
  {
    *v16 = 0;
    *(v16 + 23) = 0;
  }

LABEL_73:
  if ((v2 & 0xC000) != 0)
  {
    *(this + 236) = 0;
    *(this + 58) = 0;
  }

  v18 = *(this + 8);
  v17 = this + 8;
  v17[229] = 0;
  *(v17 + 2) = 0;
  if (v18)
  {

    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v17);
  }
}

google::protobuf::internal *protobuf::Intelligence_DialogResponse::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v61 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v61, *(this + 23)) & 1) == 0)
  {
    while (2)
    {
      TagFallback = (v61 + 1);
      LODWORD(v8) = *v61;
      if (*v61 < 0)
      {
        v8 = (v8 + (*TagFallback << 7) - 128);
        if (*TagFallback < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v61, v8);
          v61 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_3;
          }

          LODWORD(v8) = v10;
LABEL_8:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 10)
              {
                goto LABEL_128;
              }

              *(a1 + 16) |= 1u;
              v9 = *(a1 + 120);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 120, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_124;
            case 2u:
              if (v8 != 18)
              {
                goto LABEL_128;
              }

              *(a1 + 16) |= 2u;
              v9 = *(a1 + 128);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 128, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_124;
            case 3u:
              if (v8 != 26)
              {
                goto LABEL_128;
              }

              *(a1 + 16) |= 4u;
              v9 = *(a1 + 136);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 136, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_124;
            case 4u:
              if (v8 != 34)
              {
                goto LABEL_128;
              }

              *(a1 + 16) |= 8u;
              v9 = *(a1 + 144);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 144, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_124;
            case 5u:
              if (v8 != 42)
              {
                goto LABEL_128;
              }

              *(a1 + 16) |= 0x10u;
              v9 = *(a1 + 152);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 152, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_124;
            case 6u:
              if (v8 != 48)
              {
                goto LABEL_128;
              }

              v5 |= 0x8000u;
              v48 = (TagFallback + 1);
              v47 = *TagFallback;
              if ((v47 & 0x8000000000000000) == 0)
              {
                goto LABEL_103;
              }

              v49 = *v48;
              v47 = (v49 << 7) + v47 - 128;
              if (v49 < 0)
              {
                v57 = google::protobuf::internal::VarintParseSlow64(TagFallback, v47);
                v61 = v57;
                *(a1 + 236) = v58 != 0;
                if (!v57)
                {
                  goto LABEL_138;
                }
              }

              else
              {
                v48 = (TagFallback + 2);
LABEL_103:
                v61 = v48;
                *(a1 + 236) = v47 != 0;
              }

              goto LABEL_126;
            case 7u:
              if (v8 != 58)
              {
                goto LABEL_128;
              }

              *(a1 + 16) |= 0x20u;
              v9 = *(a1 + 160);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 160, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_124;
            case 8u:
              if (v8 != 66)
              {
                goto LABEL_128;
              }

              *(a1 + 16) |= 0x40u;
              v9 = *(a1 + 168);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 168, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_124;
            case 9u:
              if (v8 != 74)
              {
                goto LABEL_128;
              }

              *(a1 + 16) |= 0x80u;
              v9 = *(a1 + 176);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 176, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_124;
            case 0xAu:
              if (v8 != 80)
              {
                goto LABEL_128;
              }

              v5 |= 0x4000u;
              v28 = (TagFallback + 1);
              LODWORD(v27) = *TagFallback;
              if ((v27 & 0x80) == 0)
              {
                goto LABEL_53;
              }

              v29 = *v28;
              v27 = v27 + (v29 << 7) - 128;
              if (v29 < 0)
              {
                v55 = google::protobuf::internal::VarintParseSlow64(TagFallback, v27);
                v61 = v55;
                *(a1 + 232) = v56;
                if (!v55)
                {
                  goto LABEL_138;
                }
              }

              else
              {
                v28 = (TagFallback + 2);
LABEL_53:
                v61 = v28;
                *(a1 + 232) = v27;
              }

              goto LABEL_126;
            case 0xBu:
              if (v8 != 90)
              {
                goto LABEL_128;
              }

              *(a1 + 16) |= 0x100u;
              v9 = *(a1 + 184);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 184, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_124;
            case 0xCu:
              if (v8 != 98)
              {
                goto LABEL_128;
              }

              *(a1 + 16) |= 0x200u;
              v9 = *(a1 + 192);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 192, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_124;
            case 0xDu:
              if (v8 != 106)
              {
                goto LABEL_128;
              }

              v19 = TagFallback - 1;
              while (1)
              {
                v20 = (v19 + 1);
                v61 = (v19 + 1);
                v21 = *(a1 + 40);
                if (!v21)
                {
                  break;
                }

                v22 = *(a1 + 32);
                v23 = *v21;
                if (v22 >= *v21)
                {
                  if (v23 == *(a1 + 36))
                  {
LABEL_43:
                    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v23 + 1);
                    v21 = *(a1 + 40);
                    v23 = *v21;
                  }

                  *v21 = v23 + 1;
                  v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(a1 + 24));
                  v25 = *(a1 + 32);
                  v26 = *(a1 + 40) + 8 * v25;
                  *(a1 + 32) = v25 + 1;
                  *(v26 + 8) = v24;
                  v20 = v61;
                  goto LABEL_45;
                }

                *(a1 + 32) = v22 + 1;
                v24 = *&v21[2 * v22 + 2];
LABEL_45:
                v19 = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_KeyValueParameter>(this, v24, v20);
                v61 = v19;
                if (!v19)
                {
                  goto LABEL_138;
                }

                if (*this <= v19 || *v19 != 106)
                {
                  goto LABEL_126;
                }
              }

              v23 = *(a1 + 36);
              goto LABEL_43;
            case 0xEu:
              if (v8 != 114)
              {
                goto LABEL_128;
              }

              *(a1 + 16) |= 0x400u;
              v9 = *(a1 + 200);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 200, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_124;
            case 0xFu:
              if (v8 != 122)
              {
                goto LABEL_128;
              }

              v11 = TagFallback - 1;
              while (1)
              {
                v12 = (v11 + 1);
                v61 = (v11 + 1);
                v13 = *(a1 + 64);
                if (!v13)
                {
                  break;
                }

                v14 = *(a1 + 56);
                v15 = *v13;
                if (v14 >= *v13)
                {
                  if (v15 == *(a1 + 60))
                  {
LABEL_24:
                    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v15 + 1);
                    v13 = *(a1 + 64);
                    v15 = *v13;
                  }

                  *v13 = v15 + 1;
                  v16 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(a1 + 48));
                  v17 = *(a1 + 56);
                  v18 = *(a1 + 64) + 8 * v17;
                  *(a1 + 56) = v17 + 1;
                  *(v18 + 8) = v16;
                  v12 = v61;
                  goto LABEL_26;
                }

                *(a1 + 56) = v14 + 1;
                v16 = *&v13[2 * v14 + 2];
LABEL_26:
                v11 = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_KeyValueParameter>(this, v16, v12);
                v61 = v11;
                if (!v11)
                {
                  goto LABEL_138;
                }

                if (*this <= v11 || *v11 != 122)
                {
                  goto LABEL_126;
                }
              }

              v15 = *(a1 + 60);
              goto LABEL_24;
            case 0x10u:
              if (v8 != 130)
              {
                goto LABEL_128;
              }

              v30 = TagFallback - 2;
              while (1)
              {
                v31 = v30 + 2;
                v61 = (v30 + 2);
                v32 = *(a1 + 88);
                if (!v32)
                {
                  break;
                }

                v33 = *(a1 + 80);
                v34 = *v32;
                if (v33 >= *v32)
                {
                  if (v34 == *(a1 + 84))
                  {
LABEL_64:
                    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v34 + 1);
                    v32 = *(a1 + 88);
                    v34 = *v32;
                  }

                  *v32 = v34 + 1;
                  v36 = *(a1 + 72);
                  if (!v36)
                  {
                    operator new();
                  }

                  if (v36[14])
                  {
                  }

                  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v36, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
                  AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
                  AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
                  AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
                  v37 = *(a1 + 80);
                  v38 = *(a1 + 88) + 8 * v37;
                  *(a1 + 80) = v37 + 1;
                  *(v38 + 8) = AlignedAndAddCleanup;
                  v31 = v61;
                  goto LABEL_70;
                }

                *(a1 + 80) = v33 + 1;
                AlignedAndAddCleanup = *&v32[2 * v33 + 2];
LABEL_70:
                v30 = google::protobuf::internal::InlineGreedyStringParser(AlignedAndAddCleanup, v31, this);
                v61 = v30;
                if (!v30)
                {
                  goto LABEL_138;
                }

                if (*this <= v30 || *v30 != 386)
                {
                  goto LABEL_126;
                }
              }

              v34 = *(a1 + 84);
              goto LABEL_64;
            case 0x11u:
              if (v8 != 138)
              {
                goto LABEL_128;
              }

              *(a1 + 16) |= 0x800u;
              v9 = *(a1 + 208);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 208, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_124;
            case 0x12u:
              if (v8 != 146)
              {
                goto LABEL_128;
              }

              *(a1 + 16) |= 0x1000u;
              v9 = *(a1 + 216);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 216, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_124;
            case 0x13u:
              if (v8 != 152)
              {
                goto LABEL_128;
              }

              v5 |= 0x10000u;
              v51 = (TagFallback + 1);
              v50 = *TagFallback;
              if ((v50 & 0x8000000000000000) == 0)
              {
                goto LABEL_114;
              }

              v52 = *v51;
              v50 = (v52 << 7) + v50 - 128;
              if (v52 < 0)
              {
                v59 = google::protobuf::internal::VarintParseSlow64(TagFallback, v50);
                v61 = v59;
                *(a1 + 237) = v60 != 0;
                if (!v59)
                {
                  goto LABEL_138;
                }
              }

              else
              {
                v51 = (TagFallback + 2);
LABEL_114:
                v61 = v51;
                *(a1 + 237) = v50 != 0;
              }

              goto LABEL_126;
            case 0x14u:
              if (v8 != 162)
              {
                goto LABEL_128;
              }

              *(a1 + 16) |= 0x2000u;
              v9 = *(a1 + 224);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 224, &google::protobuf::internal::fixed_address_empty_string);
              }

LABEL_124:
              v53 = google::protobuf::internal::InlineGreedyStringParser(v9, TagFallback, this);
              goto LABEL_125;
            case 0x15u:
              if (v8 != 170)
              {
                goto LABEL_128;
              }

              v39 = TagFallback - 2;
              break;
            default:
LABEL_128:
              if (v8)
              {
                v54 = (v8 & 7) == 4;
              }

              else
              {
                v54 = 1;
              }

              if (v54)
              {
                *(this + 20) = v8 - 1;
                goto LABEL_3;
              }

              v53 = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), TagFallback, this);
LABEL_125:
              v61 = v53;
              if (!v53)
              {
LABEL_138:
                TagFallback = 0;
                goto LABEL_3;
              }

LABEL_126:
              if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v61, *(this + 23)))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v40 = (v39 + 2);
            v61 = (v39 + 2);
            v41 = *(a1 + 112);
            if (!v41)
            {
              break;
            }

            v42 = *(a1 + 104);
            v43 = *v41;
            if (v42 >= *v41)
            {
              if (v43 == *(a1 + 108))
              {
LABEL_93:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96), v43 + 1);
                v41 = *(a1 + 112);
                v43 = *v41;
              }

              *v41 = v43 + 1;
              v44 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(a1 + 96));
              v45 = *(a1 + 104);
              v46 = *(a1 + 112) + 8 * v45;
              *(a1 + 104) = v45 + 1;
              *(v46 + 8) = v44;
              v40 = v61;
              goto LABEL_95;
            }

            *(a1 + 104) = v42 + 1;
            v44 = *&v41[2 * v42 + 2];
LABEL_95:
            v39 = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_KeyValueParameter>(this, v44, v40);
            v61 = v39;
            if (!v39)
            {
              goto LABEL_138;
            }

            if (*this <= v39 || *v39 != 426)
            {
              goto LABEL_126;
            }
          }

          v43 = *(a1 + 108);
          goto LABEL_93;
        }

        TagFallback = (v61 + 2);
      }

      break;
    }

    v61 = TagFallback;
    goto LABEL_8;
  }

LABEL_2:
  TagFallback = v61;
LABEL_3:
  *(a1 + 16) |= v5;
  return TagFallback;
}

unsigned __int8 *protobuf::Intelligence_DialogResponse::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_DialogResponse *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 15), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_73;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, *(this + 16), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_74;
  }

LABEL_73:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 3, *(this + 17), v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_75;
  }

LABEL_74:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 4, *(this + 18), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_76;
  }

LABEL_75:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 5, *(this + 19), v4);
  if ((v6 & 0x8000) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_79;
  }

LABEL_76:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v38 = *(this + 236);
  *v4 = 48;
  v4[1] = v38;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_8:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_80;
  }

LABEL_79:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 7, *(this + 20), v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_81;
  }

LABEL_80:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 8, *(this + 21), v4);
  if ((v6 & 0x80) == 0)
  {
LABEL_10:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

LABEL_82:
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v39 = *(this + 58);
    *v4 = 80;
    if (v39 > 0x7F)
    {
      v4[1] = v39 | 0x80;
      v41 = v39 >> 7;
      if (v39 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v41 | 0x80;
          v42 = v41 >> 7;
          ++v4;
          v43 = v41 >> 14;
          v41 >>= 7;
        }

        while (v43);
        *(v4 - 1) = v42;
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v4[2] = v41;
        v4 += 3;
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_99;
        }
      }
    }

    else
    {
      v4[1] = v39;
      v4 += 2;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_99;
      }
    }

LABEL_12:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_81:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 9, *(this + 22), v4);
  if ((v6 & 0x4000) != 0)
  {
    goto LABEL_82;
  }

LABEL_11:
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_12;
  }

LABEL_99:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 11, *(this + 23), v4);
  if ((v6 & 0x200) != 0)
  {
LABEL_13:
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 12, *(this + 24), v4);
  }

LABEL_14:
  v7 = *(this + 8);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 24, i);
      *v4 = 106;
      v10 = *(v9 + 5);
      if (v10 > 0x7F)
      {
        v4[1] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = v4 + 3;
          do
          {
            *(v11 - 1) = v12 | 0x80;
            v13 = v12 >> 7;
            ++v11;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
          *(v11 - 1) = v13;
        }

        else
        {
          v4[2] = v12;
          v11 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v10;
        v11 = v4 + 2;
      }

      v4 = protobuf::Intelligence_KeyValueParameter::InternalSerializeWithCachedSizesToArray(v9, v11, a3);
    }
  }

  if ((v6 & 0x400) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 14, *(this + 25), v4);
  }

  v15 = *(this + 14);
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v17 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 48, j);
      *v4 = 122;
      v18 = *(v17 + 5);
      if (v18 > 0x7F)
      {
        v4[1] = v18 | 0x80;
        v20 = v18 >> 7;
        if (v18 >> 14)
        {
          v19 = v4 + 3;
          do
          {
            *(v19 - 1) = v20 | 0x80;
            v21 = v20 >> 7;
            ++v19;
            v22 = v20 >> 14;
            v20 >>= 7;
          }

          while (v22);
          *(v19 - 1) = v21;
        }

        else
        {
          v4[2] = v20;
          v19 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v18;
        v19 = v4 + 2;
      }

      v4 = protobuf::Intelligence_KeyValueParameter::InternalSerializeWithCachedSizesToArray(v17, v19, a3);
    }
  }

  v23 = *(this + 20);
  if (v23 >= 1)
  {
    for (k = 0; k != v23; ++k)
    {
      v25 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 72, k);
      v26 = *(v25 + 23);
      if (v26 < 0 && (v26 = *(v25 + 8), v26 > 127) || *a3 - v4 + 13 < v26)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 16, v25, v4);
      }

      else
      {
        *v4 = 386;
        v4[2] = v26;
        if (*(v25 + 23) >= 0)
        {
          v27 = v25;
        }

        else
        {
          v27 = *v25;
        }

        memcpy(v4 + 3, v27, v26);
        v4 += v26 + 3;
      }
    }
  }

  if ((v6 & 0x800) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 17, *(this + 26), v4);
    if ((v6 & 0x1000) == 0)
    {
LABEL_54:
      if ((v6 & 0x10000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_89;
    }
  }

  else if ((v6 & 0x1000) == 0)
  {
    goto LABEL_54;
  }

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 18, *(this + 27), v4);
  if ((v6 & 0x10000) == 0)
  {
LABEL_55:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

LABEL_89:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v40 = *(this + 237);
  *v4 = 408;
  v4[2] = v40;
  v4 += 3;
  if ((v6 & 0x2000) != 0)
  {
LABEL_56:
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 20, *(this + 28), v4);
  }

LABEL_57:
  v28 = *(this + 26);
  if (v28)
  {
    for (m = 0; m != v28; ++m)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v30 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 96, m);
      *v4 = 426;
      v31 = *(v30 + 5);
      if (v31 > 0x7F)
      {
        v4[2] = v31 | 0x80;
        v33 = v31 >> 7;
        if (v31 >> 14)
        {
          v32 = v4 + 4;
          do
          {
            *(v32 - 1) = v33 | 0x80;
            v34 = v33 >> 7;
            ++v32;
            v35 = v33 >> 14;
            v33 >>= 7;
          }

          while (v35);
          *(v32 - 1) = v34;
        }

        else
        {
          v4[3] = v33;
          v32 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v31;
        v32 = v4 + 3;
      }

      v4 = protobuf::Intelligence_KeyValueParameter::InternalSerializeWithCachedSizesToArray(v30, v32, a3);
    }
  }

  v36 = *(this + 1);
  if ((v36 & 1) == 0)
  {
    return v4;
  }

  v44 = v36 & 0xFFFFFFFFFFFFFFFELL;
  v45 = *(v44 + 23);
  if (v45 < 0)
  {
    v46 = *v44;
    v45 = *(v44 + 8);
  }

  else
  {
    v46 = v44;
  }

  if (*a3 - v4 >= v45)
  {
    v47 = v45;
    memcpy(v4, v46, v45);
    v4 += v47;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v46, v45, v4);
}

uint64_t protobuf::Intelligence_DialogResponse::ByteSizeLong(protobuf::Intelligence_DialogResponse *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = protobuf::Intelligence_KeyValueParameter::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 14);
  v9 = v2 + v8;
  v10 = *(this + 8);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = protobuf::Intelligence_KeyValueParameter::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 20);
  v16 = v9 + 2 * v15;
  if (v15 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 72, v17);
      v19 = *(v18 + 23);
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(v18 + 8);
      }

      v16 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      ++v17;
    }

    while (v15 != v17);
  }

  v20 = *(this + 26);
  v21 = v16 + 2 * v20;
  v22 = *(this + 14);
  if (v22)
  {
    v23 = (v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  if (v20)
  {
    v24 = 8 * v20;
    do
    {
      v25 = *v23++;
      v26 = protobuf::Intelligence_KeyValueParameter::ByteSizeLong(v25);
      v21 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
      v24 -= 8;
    }

    while (v24);
  }

  v27 = *(this + 4);
  if (!*(this + 4))
  {
    goto LABEL_38;
  }

  if (v27)
  {
    v36 = *(this + 15);
    v37 = *(v36 + 23);
    v38 = *(v36 + 8);
    if ((v37 & 0x80u) == 0)
    {
      v38 = v37;
    }

    v21 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v27 & 2) == 0)
    {
LABEL_29:
      if ((v27 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_62;
    }
  }

  else if ((v27 & 2) == 0)
  {
    goto LABEL_29;
  }

  v39 = *(this + 16);
  v40 = *(v39 + 23);
  v41 = *(v39 + 8);
  if ((v40 & 0x80u) == 0)
  {
    v41 = v40;
  }

  v21 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v27 & 4) == 0)
  {
LABEL_30:
    if ((v27 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_65;
  }

LABEL_62:
  v42 = *(this + 17);
  v43 = *(v42 + 23);
  v44 = *(v42 + 8);
  if ((v43 & 0x80u) == 0)
  {
    v44 = v43;
  }

  v21 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v27 & 8) == 0)
  {
LABEL_31:
    if ((v27 & 0x10) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_68;
  }

LABEL_65:
  v45 = *(this + 18);
  v46 = *(v45 + 23);
  v47 = *(v45 + 8);
  if ((v46 & 0x80u) == 0)
  {
    v47 = v46;
  }

  v21 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v27 & 0x10) == 0)
  {
LABEL_32:
    if ((v27 & 0x20) == 0)
    {
      goto LABEL_33;
    }

LABEL_71:
    v51 = *(this + 20);
    v52 = *(v51 + 23);
    v53 = *(v51 + 8);
    if ((v52 & 0x80u) == 0)
    {
      v53 = v52;
    }

    v21 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v27 & 0x40) == 0)
    {
LABEL_34:
      if ((v27 & 0x80) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    goto LABEL_74;
  }

LABEL_68:
  v48 = *(this + 19);
  v49 = *(v48 + 23);
  v50 = *(v48 + 8);
  if ((v49 & 0x80u) == 0)
  {
    v50 = v49;
  }

  v21 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v27 & 0x20) != 0)
  {
    goto LABEL_71;
  }

LABEL_33:
  if ((v27 & 0x40) == 0)
  {
    goto LABEL_34;
  }

LABEL_74:
  v54 = *(this + 21);
  v55 = *(v54 + 23);
  v56 = *(v54 + 8);
  if ((v55 & 0x80u) == 0)
  {
    v56 = v55;
  }

  v21 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v27 & 0x80) != 0)
  {
LABEL_35:
    v28 = *(this + 22);
    v29 = *(v28 + 23);
    v30 = *(v28 + 8);
    if ((v29 & 0x80u) == 0)
    {
      v30 = v29;
    }

    v21 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_38:
  if ((v27 & 0xFF00) == 0)
  {
    goto LABEL_51;
  }

  if ((v27 & 0x100) != 0)
  {
    v57 = *(this + 23);
    v58 = *(v57 + 23);
    v59 = *(v57 + 8);
    if ((v58 & 0x80u) == 0)
    {
      v59 = v58;
    }

    v21 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v27 & 0x200) == 0)
    {
LABEL_41:
      if ((v27 & 0x400) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_84;
    }
  }

  else if ((v27 & 0x200) == 0)
  {
    goto LABEL_41;
  }

  v60 = *(this + 24);
  v61 = *(v60 + 23);
  v62 = *(v60 + 8);
  if ((v61 & 0x80u) == 0)
  {
    v62 = v61;
  }

  v21 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v27 & 0x400) == 0)
  {
LABEL_42:
    if ((v27 & 0x800) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_87;
  }

LABEL_84:
  v63 = *(this + 25);
  v64 = *(v63 + 23);
  v65 = *(v63 + 8);
  if ((v64 & 0x80u) == 0)
  {
    v65 = v64;
  }

  v21 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v27 & 0x800) == 0)
  {
LABEL_43:
    if ((v27 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_90;
  }

LABEL_87:
  v66 = *(this + 26);
  v67 = *(v66 + 23);
  v68 = *(v66 + 8);
  if ((v67 & 0x80u) == 0)
  {
    v68 = v67;
  }

  v21 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v27 & 0x1000) == 0)
  {
LABEL_44:
    if ((v27 & 0x2000) == 0)
    {
      goto LABEL_45;
    }

LABEL_93:
    v72 = *(this + 28);
    v73 = *(v72 + 23);
    v74 = *(v72 + 8);
    if ((v73 & 0x80u) == 0)
    {
      v74 = v73;
    }

    v21 += v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v27 & 0x4000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

LABEL_90:
  v69 = *(this + 27);
  v70 = *(v69 + 23);
  v71 = *(v69 + 8);
  if ((v70 & 0x80u) == 0)
  {
    v71 = v70;
  }

  v21 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v27 & 0x2000) != 0)
  {
    goto LABEL_93;
  }

LABEL_45:
  if ((v27 & 0x4000) != 0)
  {
LABEL_46:
    v31 = *(this + 58);
    v32 = ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v31 >= 0)
    {
      v33 = v32;
    }

    else
    {
      v33 = 11;
    }

    v21 += v33;
  }

LABEL_50:
  v21 += (v27 >> 14) & 2;
LABEL_51:
  if ((v27 & 0x10000) != 0)
  {
    result = v21 + 3;
  }

  else
  {
    result = v21;
  }

  v35 = *(this + 1);
  if (v35)
  {
    v75 = v35 & 0xFFFFFFFFFFFFFFFELL;
    v76 = *((v35 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v76 < 0)
    {
      v76 = *(v75 + 8);
    }

    result += v76;
  }

  *(this + 5) = result;
  return result;
}

void protobuf::Intelligence_DialogResponse::CheckTypeAndMergeFrom(protobuf::Intelligence_DialogResponse *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_DialogResponse::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_DialogResponse::MergeFrom(protobuf::Intelligence_DialogResponse *this, const protobuf::Intelligence_DialogResponse *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v37, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 2639);
    v4 = google::protobuf::internal::LogMessage::operator<<(v37, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v36, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v37[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 3, a2 + 24);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 6, a2 + 48);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 72, a2 + 72);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 12, a2 + 96);
  v6 = *(a2 + 4);
  if (v6)
  {
    if (v6)
    {
      v7 = *(this + 15);
      *(this + 4) |= 1u;
      v8 = *(a2 + 15);
      if (v7 != v8)
      {
        if (v7 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 120, v8);
        }

        std::string::operator=(v7, v8);
      }
    }

    if ((v6 & 2) != 0)
    {
      v9 = *(this + 16);
      *(this + 4) |= 2u;
      v10 = *(a2 + 16);
      if (v9 != v10)
      {
        if (v9 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 128, v10);
        }

        std::string::operator=(v9, v10);
      }
    }

    if ((v6 & 4) != 0)
    {
      v11 = *(this + 17);
      *(this + 4) |= 4u;
      v12 = *(a2 + 17);
      if (v11 != v12)
      {
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 136, v12);
        }

        std::string::operator=(v11, v12);
      }
    }

    if ((v6 & 8) != 0)
    {
      v13 = *(this + 18);
      *(this + 4) |= 8u;
      v14 = *(a2 + 18);
      if (v13 != v14)
      {
        if (v13 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 144, v14);
        }

        std::string::operator=(v13, v14);
      }
    }

    if ((v6 & 0x10) != 0)
    {
      v15 = *(this + 19);
      *(this + 4) |= 0x10u;
      v16 = *(a2 + 19);
      if (v15 != v16)
      {
        if (v15 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 152, v16);
        }

        std::string::operator=(v15, v16);
      }
    }

    if ((v6 & 0x20) != 0)
    {
      v17 = *(this + 20);
      *(this + 4) |= 0x20u;
      v18 = *(a2 + 20);
      if (v17 != v18)
      {
        if (v17 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 160, v18);
        }

        std::string::operator=(v17, v18);
      }
    }

    if ((v6 & 0x40) != 0)
    {
      v19 = *(this + 21);
      *(this + 4) |= 0x40u;
      v20 = *(a2 + 21);
      if (v19 != v20)
      {
        if (v19 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 168, v20);
        }

        std::string::operator=(v19, v20);
      }
    }

    if ((v6 & 0x80) != 0)
    {
      v21 = *(this + 22);
      *(this + 4) |= 0x80u;
      v22 = *(a2 + 22);
      if (v21 != v22)
      {
        if (v21 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 176, v22);
        }

        std::string::operator=(v21, v22);
      }
    }
  }

  if ((v6 & 0xFF00) != 0)
  {
    if ((v6 & 0x100) != 0)
    {
      v23 = *(this + 23);
      *(this + 4) |= 0x100u;
      v24 = *(a2 + 23);
      if (v23 != v24)
      {
        if (v23 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 184, v24);
        }

        std::string::operator=(v23, v24);
      }
    }

    if ((v6 & 0x200) != 0)
    {
      v25 = *(this + 24);
      *(this + 4) |= 0x200u;
      v26 = *(a2 + 24);
      if (v25 != v26)
      {
        if (v25 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 192, v26);
        }

        std::string::operator=(v25, v26);
      }
    }

    if ((v6 & 0x400) != 0)
    {
      v27 = *(this + 25);
      *(this + 4) |= 0x400u;
      v28 = *(a2 + 25);
      if (v27 != v28)
      {
        if (v27 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 200, v28);
        }

        std::string::operator=(v27, v28);
      }
    }

    if ((v6 & 0x800) != 0)
    {
      v29 = *(this + 26);
      *(this + 4) |= 0x800u;
      v30 = *(a2 + 26);
      if (v29 != v30)
      {
        if (v29 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 208, v30);
        }

        std::string::operator=(v29, v30);
      }
    }

    if ((v6 & 0x1000) != 0)
    {
      v31 = *(this + 27);
      *(this + 4) |= 0x1000u;
      v32 = *(a2 + 27);
      if (v31 != v32)
      {
        if (v31 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 216, v32);
        }

        std::string::operator=(v31, v32);
      }
    }

    if ((v6 & 0x2000) != 0)
    {
      v33 = *(this + 28);
      *(this + 4) |= 0x2000u;
      v34 = *(a2 + 28);
      if (v33 != v34)
      {
        if (v33 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 224, v34);
        }

        std::string::operator=(v33, v34);
      }
    }

    if ((v6 & 0x4000) != 0)
    {
      *(this + 58) = *(a2 + 58);
    }

    if ((v6 & 0x8000) != 0)
    {
      *(this + 236) = *(a2 + 236);
    }

    *(this + 4) |= v6;
  }

  if ((v6 & 0x10000) != 0)
  {
    v35 = *(a2 + 237);
    *(this + 4) |= 0x10000u;
    *(this + 237) = v35;
  }
}

void sub_254CCFD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_DialogResponse::CopyFrom(protobuf::Intelligence_DialogResponse *this, const protobuf::Intelligence_DialogResponse *a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_DialogResponse::Clear(this);

    protobuf::Intelligence_DialogResponse::MergeFrom(this, a2);
  }
}

void protobuf::Intelligence_DialogResponse::InternalSwap(protobuf::Intelligence_DialogResponse *this, protobuf::Intelligence_DialogResponse *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v84;
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_94;
    }

LABEL_5:
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v4)
    {
LABEL_6:
      v8 = v4 & 0xFFFFFFFFFFFFFFFELL;
LABEL_7:
      v9 = *(v8 + 16);
      v10 = *v8;
      v11 = *(v7 + 16);
      *v8 = *v7;
      *(v8 + 16) = v11;
      *v7 = v10;
      *(v7 + 16) = v9;
      goto LABEL_8;
    }

LABEL_94:
    google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v5);
    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_8:
  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 24), (a2 + 24));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 48), (a2 + 48));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 72), (a2 + 72));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 96), (a2 + 96));
  v13 = *(this + 15);
  if (v13 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 15) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_14;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 15, 0, &google::protobuf::internal::fixed_address_empty_string);
    v13 = *(this + 15);
  }

  v14 = *(a2 + 15);
  if (v14 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 15, 0, &google::protobuf::internal::fixed_address_empty_string);
    v14 = *(a2 + 15);
  }

  v15 = v13[2];
  v16 = *v13;
  v17 = v14[2];
  *v13 = *v14;
  v13[2] = v17;
  *v14 = v16;
  v14[2] = v15;
LABEL_14:
  v18 = *(this + 16);
  if (v18 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 16) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_20;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 16, 0, &google::protobuf::internal::fixed_address_empty_string);
    v18 = *(this + 16);
  }

  v19 = *(a2 + 16);
  if (v19 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 16, 0, &google::protobuf::internal::fixed_address_empty_string);
    v19 = *(a2 + 16);
  }

  v20 = v18[2];
  v21 = *v18;
  v22 = v19[2];
  *v18 = *v19;
  v18[2] = v22;
  *v19 = v21;
  v19[2] = v20;
LABEL_20:
  v23 = *(this + 17);
  if (v23 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 17) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_26;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 17, 0, &google::protobuf::internal::fixed_address_empty_string);
    v23 = *(this + 17);
  }

  v24 = *(a2 + 17);
  if (v24 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 17, 0, &google::protobuf::internal::fixed_address_empty_string);
    v24 = *(a2 + 17);
  }

  v25 = v23[2];
  v26 = *v23;
  v27 = v24[2];
  *v23 = *v24;
  v23[2] = v27;
  *v24 = v26;
  v24[2] = v25;
LABEL_26:
  v28 = *(this + 18);
  if (v28 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 18) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_32;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 18, 0, &google::protobuf::internal::fixed_address_empty_string);
    v28 = *(this + 18);
  }

  v29 = *(a2 + 18);
  if (v29 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 18, 0, &google::protobuf::internal::fixed_address_empty_string);
    v29 = *(a2 + 18);
  }

  v30 = v28[2];
  v31 = *v28;
  v32 = v29[2];
  *v28 = *v29;
  v28[2] = v32;
  *v29 = v31;
  v29[2] = v30;
LABEL_32:
  v33 = *(this + 19);
  if (v33 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 19) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_38;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 19, 0, &google::protobuf::internal::fixed_address_empty_string);
    v33 = *(this + 19);
  }

  v34 = *(a2 + 19);
  if (v34 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 19, 0, &google::protobuf::internal::fixed_address_empty_string);
    v34 = *(a2 + 19);
  }

  v35 = v33[2];
  v36 = *v33;
  v37 = v34[2];
  *v33 = *v34;
  v33[2] = v37;
  *v34 = v36;
  v34[2] = v35;
LABEL_38:
  v38 = *(this + 20);
  if (v38 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 20) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_44;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 20, 0, &google::protobuf::internal::fixed_address_empty_string);
    v38 = *(this + 20);
  }

  v39 = *(a2 + 20);
  if (v39 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 20, 0, &google::protobuf::internal::fixed_address_empty_string);
    v39 = *(a2 + 20);
  }

  v40 = v38[2];
  v41 = *v38;
  v42 = v39[2];
  *v38 = *v39;
  v38[2] = v42;
  *v39 = v41;
  v39[2] = v40;
LABEL_44:
  v43 = *(this + 21);
  if (v43 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 21) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_50;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 21, 0, &google::protobuf::internal::fixed_address_empty_string);
    v43 = *(this + 21);
  }

  v44 = *(a2 + 21);
  if (v44 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 21, 0, &google::protobuf::internal::fixed_address_empty_string);
    v44 = *(a2 + 21);
  }

  v45 = v43[2];
  v46 = *v43;
  v47 = v44[2];
  *v43 = *v44;
  v43[2] = v47;
  *v44 = v46;
  v44[2] = v45;
LABEL_50:
  v48 = *(this + 22);
  if (v48 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 22) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_56;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 22, 0, &google::protobuf::internal::fixed_address_empty_string);
    v48 = *(this + 22);
  }

  v49 = *(a2 + 22);
  if (v49 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 22, 0, &google::protobuf::internal::fixed_address_empty_string);
    v49 = *(a2 + 22);
  }

  v50 = v48[2];
  v51 = *v48;
  v52 = v49[2];
  *v48 = *v49;
  v48[2] = v52;
  *v49 = v51;
  v49[2] = v50;
LABEL_56:
  v53 = *(this + 23);
  if (v53 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 23) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_62;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 23, 0, &google::protobuf::internal::fixed_address_empty_string);
    v53 = *(this + 23);
  }

  v54 = *(a2 + 23);
  if (v54 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 23, 0, &google::protobuf::internal::fixed_address_empty_string);
    v54 = *(a2 + 23);
  }

  v55 = v53[2];
  v56 = *v53;
  v57 = v54[2];
  *v53 = *v54;
  v53[2] = v57;
  *v54 = v56;
  v54[2] = v55;
LABEL_62:
  v58 = *(this + 24);
  if (v58 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 24) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_68;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 24, 0, &google::protobuf::internal::fixed_address_empty_string);
    v58 = *(this + 24);
  }

  v59 = *(a2 + 24);
  if (v59 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 24, 0, &google::protobuf::internal::fixed_address_empty_string);
    v59 = *(a2 + 24);
  }

  v60 = v58[2];
  v61 = *v58;
  v62 = v59[2];
  *v58 = *v59;
  v58[2] = v62;
  *v59 = v61;
  v59[2] = v60;
LABEL_68:
  v63 = *(this + 25);
  if (v63 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 25) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_74;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 25, 0, &google::protobuf::internal::fixed_address_empty_string);
    v63 = *(this + 25);
  }

  v64 = *(a2 + 25);
  if (v64 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 25, 0, &google::protobuf::internal::fixed_address_empty_string);
    v64 = *(a2 + 25);
  }

  v65 = v63[2];
  v66 = *v63;
  v67 = v64[2];
  *v63 = *v64;
  v63[2] = v67;
  *v64 = v66;
  v64[2] = v65;
LABEL_74:
  v68 = *(this + 26);
  if (v68 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 26) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_80;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 26, 0, &google::protobuf::internal::fixed_address_empty_string);
    v68 = *(this + 26);
  }

  v69 = *(a2 + 26);
  if (v69 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 26, 0, &google::protobuf::internal::fixed_address_empty_string);
    v69 = *(a2 + 26);
  }

  v70 = v68[2];
  v71 = *v68;
  v72 = v69[2];
  *v68 = *v69;
  v68[2] = v72;
  *v69 = v71;
  v69[2] = v70;
LABEL_80:
  v73 = *(this + 27);
  if (v73 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 27) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_86;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 27, 0, &google::protobuf::internal::fixed_address_empty_string);
    v73 = *(this + 27);
  }

  v74 = *(a2 + 27);
  if (v74 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 27, 0, &google::protobuf::internal::fixed_address_empty_string);
    v74 = *(a2 + 27);
  }

  v75 = v73[2];
  v76 = *v73;
  v77 = v74[2];
  *v73 = *v74;
  v73[2] = v77;
  *v74 = v76;
  v74[2] = v75;
LABEL_86:
  v78 = *(this + 28);
  if (v78 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 28) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_92;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 28, 0, &google::protobuf::internal::fixed_address_empty_string);
    v78 = *(this + 28);
  }

  v79 = *(a2 + 28);
  if (v79 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 28, 0, &google::protobuf::internal::fixed_address_empty_string);
    v79 = *(a2 + 28);
  }

  v80 = v78[2];
  v81 = *v78;
  v82 = v79[2];
  *v78 = *v79;
  v78[2] = v82;
  *v79 = v81;
  v79[2] = v80;
LABEL_92:
  v83 = *(this + 58);
  *(this + 58) = *(a2 + 58);
  *(a2 + 58) = v83;
  LOBYTE(v83) = *(this + 236);
  *(this + 236) = *(a2 + 236);
  *(a2 + 236) = v83;
  LOBYTE(v83) = *(this + 237);
  *(this + 237) = *(a2 + 237);
  *(a2 + 237) = v83;
}

protobuf::Intelligence_BehaviorResponse *protobuf::Intelligence_BehaviorResponse::Intelligence_BehaviorResponse(protobuf::Intelligence_BehaviorResponse *this)
{
  *this = &unk_2867197F0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  if (atomic_load_explicit(scc_info_Intelligence_BehaviorResponse_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_BehaviorResponse_intelligence_2eproto);
  }

  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 10) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 11) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 12) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 13) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 14) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 15) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 16) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 17) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 18) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 19) = 0;
  *(this + 160) = 0;
  return this;
}

void sub_254CD0644(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 48);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField((v1 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_BehaviorResponse *protobuf::Intelligence_BehaviorResponse::Intelligence_BehaviorResponse(protobuf::Intelligence_BehaviorResponse *this, const protobuf::Intelligence_BehaviorResponse *a2)
{
  *this = &unk_2867197F0;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 3, a2 + 24);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48, a2 + 48);
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  v6 = *(a2 + 4);
  if (v6)
  {
    v7 = *(a2 + 9);
    if (v7 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 72, v7);
    }
  }

  *(this + 10) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 2) != 0)
  {
    v8 = *(a2 + 10);
    if (v8 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 80, v8);
    }
  }

  *(this + 11) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 4) != 0)
  {
    v9 = *(a2 + 11);
    if (v9 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 88, v9);
    }
  }

  *(this + 12) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 8) != 0)
  {
    v10 = *(a2 + 12);
    if (v10 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 96, v10);
    }
  }

  *(this + 13) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x10) != 0)
  {
    v11 = *(a2 + 13);
    if (v11 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 104, v11);
    }
  }

  *(this + 14) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x20) != 0)
  {
    v12 = *(a2 + 14);
    if (v12 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 112, v12);
    }
  }

  *(this + 15) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x40) != 0)
  {
    v13 = *(a2 + 15);
    if (v13 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 120, v13);
    }
  }

  *(this + 16) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x80) != 0)
  {
    v14 = *(a2 + 16);
    if (v14 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 128, v14);
    }
  }

  *(this + 17) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x100) != 0)
  {
    v15 = *(a2 + 17);
    if (v15 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 136, v15);
    }
  }

  *(this + 18) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x200) != 0)
  {
    v16 = *(a2 + 18);
    if (v16 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 144, v16);
    }
  }

  if ((v6 & 0x400) != 0)
  {
    if (!*(a2 + 19))
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 12082);
      v17 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: !value || undo_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v19, &v17->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 19) = 0;
  *(this + 160) = *(a2 + 160);
  return this;
}

void sub_254CD08EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v5);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField((v3 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v4);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_BehaviorResponse::~Intelligence_BehaviorResponse(protobuf::Intelligence_BehaviorResponse *this)
{
  *this = &unk_2867197F0;
  v2 = *(this + 9);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 10);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x259C29D90](v4, 0x1012C40EC159624);
  }

  v6 = *(this + 11);
  if (v6 != &google::protobuf::internal::fixed_address_empty_string && v6 != 0)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x259C29D90](v6, 0x1012C40EC159624);
  }

  v8 = *(this + 12);
  if (v8 != &google::protobuf::internal::fixed_address_empty_string && v8 != 0)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    MEMORY[0x259C29D90](v8, 0x1012C40EC159624);
  }

  v10 = *(this + 13);
  if (v10 != &google::protobuf::internal::fixed_address_empty_string && v10)
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    MEMORY[0x259C29D90](v10, 0x1012C40EC159624);
  }

  v11 = *(this + 14);
  if (v11 != &google::protobuf::internal::fixed_address_empty_string && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    MEMORY[0x259C29D90](v11, 0x1012C40EC159624);
  }

  v12 = *(this + 15);
  if (v12 != &google::protobuf::internal::fixed_address_empty_string && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    MEMORY[0x259C29D90](v12, 0x1012C40EC159624);
  }

  v13 = *(this + 16);
  if (v13 != &google::protobuf::internal::fixed_address_empty_string && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    MEMORY[0x259C29D90](v13, 0x1012C40EC159624);
  }

  v14 = *(this + 17);
  if (v14 != &google::protobuf::internal::fixed_address_empty_string && v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    MEMORY[0x259C29D90](v14, 0x1012C40EC159624);
  }

  v15 = *(this + 18);
  if (v15 != &google::protobuf::internal::fixed_address_empty_string && v15)
  {
    if (*(v15 + 23) < 0)
    {
      operator delete(*v15);
    }

    MEMORY[0x259C29D90](v15, 0x1012C40EC159624);
  }

  if (this != &protobuf::_Intelligence_BehaviorResponse_default_instance_)
  {
    v16 = *(this + 19);
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 48);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(this + 3);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_BehaviorResponse::~Intelligence_BehaviorResponse(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_BehaviorResponse::default_instance(protobuf::Intelligence_BehaviorResponse *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_BehaviorResponse_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_BehaviorResponse_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_BehaviorResponse_default_instance_;
}

void protobuf::Intelligence_BehaviorResponse::Clear(protobuf::Intelligence_BehaviorResponse *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 24);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48);
  v2 = *(this + 4);
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      if ((v2 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      v4 = *(this + 10);
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v2 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v4 = 0;
        *(v4 + 23) = 0;
        if ((v2 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_23:
      v6 = *(this + 12);
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v2 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v6 = 0;
        *(v6 + 23) = 0;
        if ((v2 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_31:
      v8 = *(this + 14);
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        if ((v2 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
        if ((v2 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }

LABEL_39:
      v10 = *(this + 16);
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
      }

      else
      {
        *v10 = 0;
        *(v10 + 23) = 0;
      }

      goto LABEL_42;
    }

    v3 = *(this + 9);
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    v5 = *(this + 11);
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_27:
    v7 = *(this + 13);
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_8:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v9 = *(this + 15);
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_39;
  }

LABEL_42:
  if ((v2 & 0x700) == 0)
  {
    goto LABEL_58;
  }

  if ((v2 & 0x100) != 0)
  {
    v11 = *(this + 17);
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
      if ((v2 & 0x200) != 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
      if ((v2 & 0x200) != 0)
      {
        goto LABEL_51;
      }
    }

LABEL_45:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  if ((v2 & 0x200) == 0)
  {
    goto LABEL_45;
  }

LABEL_51:
  v12 = *(this + 18);
  if (*(v12 + 23) < 0)
  {
    **v12 = 0;
    *(v12 + 8) = 0;
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_58;
    }
  }

  else
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_58;
    }
  }

LABEL_55:
  v13 = *(this + 19);
  if (!v13)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 2979);
    v14 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: undo_ != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v17, &v14->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    v13 = *(this + 19);
  }

  protobuf::Intelligence_Undo::Clear(v13);
LABEL_58:
  v16 = *(this + 8);
  v15 = this + 8;
  v15[152] = 0;
  *(v15 + 2) = 0;
  if (v16)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v15);
  }
}

void sub_254CD0EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal *protobuf::Intelligence_BehaviorResponse::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v46 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v46, *(this + 23)) & 1) == 0)
  {
    while (2)
    {
      TagFallback = (v46 + 1);
      LODWORD(v8) = *v46;
      if (*v46 < 0)
      {
        v8 = (v8 + (*TagFallback << 7) - 128);
        if (*TagFallback < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v46, v8);
          v46 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_3;
          }

          LODWORD(v8) = v10;
LABEL_8:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 10)
              {
                goto LABEL_85;
              }

              *(a1 + 16) |= 1u;
              v9 = *(a1 + 72);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 72, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_81;
            case 2u:
              if (v8 != 18)
              {
                goto LABEL_85;
              }

              *(a1 + 16) |= 2u;
              v9 = *(a1 + 80);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 80, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_81;
            case 3u:
              if (v8 != 26)
              {
                goto LABEL_85;
              }

              *(a1 + 16) |= 4u;
              v9 = *(a1 + 88);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 88, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_81;
            case 4u:
              if (v8 != 34)
              {
                goto LABEL_85;
              }

              *(a1 + 16) |= 8u;
              v9 = *(a1 + 96);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 96, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_81;
            case 5u:
              if (v8 != 42)
              {
                goto LABEL_85;
              }

              *(a1 + 16) |= 0x10u;
              v9 = *(a1 + 104);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 104, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_81;
            case 6u:
              if (v8 != 48)
              {
                goto LABEL_85;
              }

              v5 |= 0x800u;
              v20 = (TagFallback + 1);
              v19 = *TagFallback;
              if ((v19 & 0x8000000000000000) == 0)
              {
                goto LABEL_52;
              }

              v21 = *v20;
              v19 = (v21 << 7) + v19 - 128;
              if (v21 < 0)
              {
                v44 = google::protobuf::internal::VarintParseSlow64(TagFallback, v19);
                v46 = v44;
                *(a1 + 160) = v45 != 0;
                if (!v44)
                {
                  goto LABEL_97;
                }
              }

              else
              {
                v20 = (TagFallback + 2);
LABEL_52:
                v46 = v20;
                *(a1 + 160) = v19 != 0;
              }

              goto LABEL_83;
            case 7u:
              if (v8 != 58)
              {
                goto LABEL_85;
              }

              *(a1 + 16) |= 0x20u;
              v9 = *(a1 + 112);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 112, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_81;
            case 8u:
              if (v8 != 66)
              {
                goto LABEL_85;
              }

              *(a1 + 16) |= 0x40u;
              v9 = *(a1 + 120);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 120, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_81;
            case 9u:
              if (v8 != 74)
              {
                goto LABEL_85;
              }

              *(a1 + 16) |= 0x80u;
              v9 = *(a1 + 128);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 128, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_81;
            case 0xAu:
              if (v8 != 82)
              {
                goto LABEL_85;
              }

              v11 = TagFallback - 1;
              while (1)
              {
                v12 = (v11 + 1);
                v46 = (v11 + 1);
                v13 = *(a1 + 40);
                if (!v13)
                {
                  break;
                }

                v14 = *(a1 + 32);
                v15 = *v13;
                if (v14 >= *v13)
                {
                  if (v15 == *(a1 + 36))
                  {
LABEL_30:
                    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v15 + 1);
                    v13 = *(a1 + 40);
                    v15 = *v13;
                  }

                  *v13 = v15 + 1;
                  v16 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(a1 + 24));
                  v17 = *(a1 + 32);
                  v18 = *(a1 + 40) + 8 * v17;
                  *(a1 + 32) = v17 + 1;
                  *(v18 + 8) = v16;
                  v12 = v46;
                  goto LABEL_32;
                }

                *(a1 + 32) = v14 + 1;
                v16 = *&v13[2 * v14 + 2];
LABEL_32:
                v11 = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_KeyValueParameter>(this, v16, v12);
                v46 = v11;
                if (!v11)
                {
                  goto LABEL_97;
                }

                if (*this <= v11 || *v11 != 82)
                {
                  goto LABEL_83;
                }
              }

              v15 = *(a1 + 36);
              goto LABEL_30;
            case 0xBu:
              if (v8 != 90)
              {
                goto LABEL_85;
              }

              v25 = TagFallback - 1;
              break;
            case 0xCu:
              if (v8 != 98)
              {
                goto LABEL_85;
              }

              *(a1 + 16) |= 0x100u;
              v9 = *(a1 + 136);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 136, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_81;
            case 0xDu:
              if (v8 != 106)
              {
                goto LABEL_85;
              }

              *(a1 + 16) |= 0x200u;
              v9 = *(a1 + 144);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 144, &google::protobuf::internal::fixed_address_empty_string);
              }

LABEL_81:
              v34 = google::protobuf::internal::InlineGreedyStringParser(v9, TagFallback, this);
              goto LABEL_82;
            case 0xEu:
              if (v8 != 114)
              {
                goto LABEL_85;
              }

              *(a1 + 16) |= 0x400u;
              v22 = *(a1 + 152);
              if (!v22)
              {
                v22 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Undo>(0);
                *(a1 + 152) = v22;
                TagFallback = v46;
              }

              v23 = *TagFallback;
              if (*TagFallback < 0)
              {
                SizeFallback = google::protobuf::internal::ReadSizeFallback(TagFallback, *TagFallback);
                if (!SizeFallback)
                {
                  goto LABEL_97;
                }

                v24 = SizeFallback;
                v23 = v37;
              }

              else
              {
                v24 = TagFallback + 1;
              }

              v38 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v24, v23);
              v39 = *(this + 22);
              v40 = __OFSUB__(v39--, 1);
              *(this + 22) = v39;
              if (v39 < 0 != v40)
              {
                goto LABEL_97;
              }

              v41 = v38;
              v42 = protobuf::Intelligence_Undo::_InternalParse(v22, v24, this);
              if (!v42)
              {
                goto LABEL_97;
              }

              ++*(this + 22);
              if (*(this + 20))
              {
                goto LABEL_97;
              }

              v43 = *(this + 7) + v41;
              *(this + 7) = v43;
              *this = *(this + 1) + (v43 & (v43 >> 31));
              v46 = v42;
              goto LABEL_83;
            default:
LABEL_85:
              if (v8)
              {
                v35 = (v8 & 7) == 4;
              }

              else
              {
                v35 = 1;
              }

              if (v35)
              {
                *(this + 20) = v8 - 1;
                goto LABEL_3;
              }

              v34 = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), TagFallback, this);
LABEL_82:
              v46 = v34;
              if (!v34)
              {
LABEL_97:
                TagFallback = 0;
                goto LABEL_3;
              }

LABEL_83:
              if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v46, *(this + 23)))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v26 = v25 + 1;
            v46 = (v25 + 1);
            v27 = *(a1 + 64);
            if (!v27)
            {
              break;
            }

            v28 = *(a1 + 56);
            v29 = *v27;
            if (v28 >= *v27)
            {
              if (v29 == *(a1 + 60))
              {
LABEL_68:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v29 + 1);
                v27 = *(a1 + 64);
                v29 = *v27;
              }

              *v27 = v29 + 1;
              v31 = *(a1 + 48);
              if (!v31)
              {
                operator new();
              }

              if (v31[14])
              {
              }

              AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v31, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
              AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
              AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
              AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
              v32 = *(a1 + 56);
              v33 = *(a1 + 64) + 8 * v32;
              *(a1 + 56) = v32 + 1;
              *(v33 + 8) = AlignedAndAddCleanup;
              v26 = v46;
              goto LABEL_74;
            }

            *(a1 + 56) = v28 + 1;
            AlignedAndAddCleanup = *&v27[2 * v28 + 2];
LABEL_74:
            v25 = google::protobuf::internal::InlineGreedyStringParser(AlignedAndAddCleanup, v26, this);
            v46 = v25;
            if (!v25)
            {
              goto LABEL_97;
            }

            if (*this <= v25 || *v25 != 90)
            {
              goto LABEL_83;
            }
          }

          v29 = *(a1 + 60);
          goto LABEL_68;
        }

        TagFallback = (v46 + 2);
      }

      break;
    }

    v46 = TagFallback;
    goto LABEL_8;
  }

LABEL_2:
  TagFallback = v46;
LABEL_3:
  *(a1 + 16) |= v5;
  return TagFallback;
}

unsigned __int8 *protobuf::Intelligence_BehaviorResponse::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_BehaviorResponse *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 9), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, *(this + 10), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 3, *(this + 11), v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 4, *(this + 12), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 5, *(this + 13), v4);
  if ((v6 & 0x800) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v20 = *(this + 160);
  *v4 = 48;
  v4[1] = v20;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_8:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_48;
  }

LABEL_47:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 7, *(this + 14), v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_48:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 8, *(this + 15), v4);
  if ((v6 & 0x80) != 0)
  {
LABEL_10:
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 9, *(this + 16), v4);
  }

LABEL_11:
  v7 = *(this + 8);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 24, i);
      *v4 = 82;
      v10 = *(v9 + 5);
      if (v10 > 0x7F)
      {
        v4[1] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = v4 + 3;
          do
          {
            *(v11 - 1) = v12 | 0x80;
            v13 = v12 >> 7;
            ++v11;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
          *(v11 - 1) = v13;
        }

        else
        {
          v4[2] = v12;
          v11 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v10;
        v11 = v4 + 2;
      }

      v4 = protobuf::Intelligence_KeyValueParameter::InternalSerializeWithCachedSizesToArray(v9, v11, a3);
    }
  }

  v15 = *(this + 14);
  if (v15 >= 1)
  {
    for (j = 0; j != v15; ++j)
    {
      v17 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48, j);
      v18 = *(v17 + 23);
      if (v18 < 0 && (v18 = *(v17 + 8), v18 > 127) || *a3 - v4 + 14 < v18)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 11, v17, v4);
      }

      else
      {
        *v4 = 90;
        v4[1] = v18;
        if (*(v17 + 23) >= 0)
        {
          v19 = v17;
        }

        else
        {
          v19 = *v17;
        }

        memcpy(v4 + 2, v19, v18);
        v4 += v18 + 2;
      }
    }
  }

  if ((v6 & 0x100) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 12, *(this + 17), v4);
    if ((v6 & 0x200) == 0)
    {
LABEL_37:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_52;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_37;
  }

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 13, *(this + 18), v4);
  if ((v6 & 0x400) == 0)
  {
    goto LABEL_62;
  }

LABEL_52:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v21 = *(this + 19);
  *v4 = 114;
  v22 = *(v21 + 20);
  if (v22 > 0x7F)
  {
    v4[1] = v22 | 0x80;
    v24 = v22 >> 7;
    if (v22 >> 14)
    {
      v23 = v4 + 3;
      do
      {
        *(v23 - 1) = v24 | 0x80;
        v25 = v24 >> 7;
        ++v23;
        v26 = v24 >> 14;
        v24 >>= 7;
      }

      while (v26);
      *(v23 - 1) = v25;
    }

    else
    {
      v4[2] = v24;
      v23 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v22;
    v23 = v4 + 2;
  }

  v4 = protobuf::Intelligence_Undo::InternalSerializeWithCachedSizesToArray(v21, v23, a3);
LABEL_62:
  v27 = *(this + 1);
  if ((v27 & 1) == 0)
  {
    return v4;
  }

  v29 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v30 = *(v29 + 23);
  if (v30 < 0)
  {
    v31 = *v29;
    v30 = *(v29 + 8);
  }

  else
  {
    v31 = v29;
  }

  if (*a3 - v4 >= v30)
  {
    v32 = v30;
    memcpy(v4, v31, v30);
    v4 += v32;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v31, v30, v4);
}

uint64_t protobuf::Intelligence_BehaviorResponse::ByteSizeLong(protobuf::Intelligence_BehaviorResponse *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = protobuf::Intelligence_KeyValueParameter::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 14);
  v9 = v2 + v8;
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48, v10);
      v12 = *(v11 + 23);
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v11 + 8);
      }

      v9 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      ++v10;
    }

    while (v8 != v10);
  }

  v13 = *(this + 4);
  if (!*(this + 4))
  {
    goto LABEL_26;
  }

  if (v13)
  {
    v20 = *(this + 9);
    v21 = *(v20 + 23);
    v22 = *(v20 + 8);
    if ((v21 & 0x80u) == 0)
    {
      v22 = v21;
    }

    v9 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v13 & 2) == 0)
    {
LABEL_17:
      if ((v13 & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_40;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_17;
  }

  v23 = *(this + 10);
  v24 = *(v23 + 23);
  v25 = *(v23 + 8);
  if ((v24 & 0x80u) == 0)
  {
    v25 = v24;
  }

  v9 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 4) == 0)
  {
LABEL_18:
    if ((v13 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_40:
  v26 = *(this + 11);
  v27 = *(v26 + 23);
  v28 = *(v26 + 8);
  if ((v27 & 0x80u) == 0)
  {
    v28 = v27;
  }

  v9 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 8) == 0)
  {
LABEL_19:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_43:
  v29 = *(this + 12);
  v30 = *(v29 + 23);
  v31 = *(v29 + 8);
  if ((v30 & 0x80u) == 0)
  {
    v31 = v30;
  }

  v9 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x10) == 0)
  {
LABEL_20:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_21;
    }

LABEL_49:
    v35 = *(this + 14);
    v36 = *(v35 + 23);
    v37 = *(v35 + 8);
    if ((v36 & 0x80u) == 0)
    {
      v37 = v36;
    }

    v9 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v13 & 0x40) == 0)
    {
LABEL_22:
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_46:
  v32 = *(this + 13);
  v33 = *(v32 + 23);
  v34 = *(v32 + 8);
  if ((v33 & 0x80u) == 0)
  {
    v34 = v33;
  }

  v9 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x20) != 0)
  {
    goto LABEL_49;
  }

LABEL_21:
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_22;
  }

LABEL_52:
  v38 = *(this + 15);
  v39 = *(v38 + 23);
  v40 = *(v38 + 8);
  if ((v39 & 0x80u) == 0)
  {
    v40 = v39;
  }

  v9 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x80) != 0)
  {
LABEL_23:
    v14 = *(this + 16);
    v15 = *(v14 + 23);
    v16 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v15;
    }

    v9 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_26:
  if ((v13 & 0xF00) == 0)
  {
    goto LABEL_32;
  }

  if ((v13 & 0x100) == 0)
  {
    if ((v13 & 0x200) == 0)
    {
      goto LABEL_29;
    }

LABEL_59:
    v44 = *(this + 18);
    v45 = *(v44 + 23);
    v46 = *(v44 + 8);
    if ((v45 & 0x80u) == 0)
    {
      v46 = v45;
    }

    v9 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v41 = *(this + 17);
  v42 = *(v41 + 23);
  v43 = *(v41 + 8);
  if ((v42 & 0x80u) == 0)
  {
    v43 = v42;
  }

  v9 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x200) != 0)
  {
    goto LABEL_59;
  }

LABEL_29:
  if ((v13 & 0x400) != 0)
  {
LABEL_30:
    v17 = protobuf::Intelligence_Undo::ByteSizeLong(*(this + 19));
    v9 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_31:
  v9 += (v13 >> 10) & 2;
LABEL_32:
  v18 = *(this + 1);
  if (v18)
  {
    v47 = v18 & 0xFFFFFFFFFFFFFFFELL;
    v48 = *((v18 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v48 < 0)
    {
      v48 = *(v47 + 8);
    }

    v9 += v48;
  }

  *(this + 5) = v9;
  return v9;
}

void protobuf::Intelligence_BehaviorResponse::CheckTypeAndMergeFrom(protobuf::Intelligence_BehaviorResponse *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_BehaviorResponse::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_BehaviorResponse::MergeFrom(protobuf::Intelligence_BehaviorResponse *this, const protobuf::Intelligence_BehaviorResponse *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v30, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 3355);
    v4 = google::protobuf::internal::LogMessage::operator<<(v30, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v29, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v30[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 3, a2 + 24);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48, a2 + 48);
  v6 = *(a2 + 4);
  if (v6)
  {
    if (v6)
    {
      v7 = *(this + 9);
      *(this + 4) |= 1u;
      v8 = *(a2 + 9);
      if (v7 != v8)
      {
        if (v7 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 72, v8);
        }

        std::string::operator=(v7, v8);
      }
    }

    if ((v6 & 2) != 0)
    {
      v9 = *(this + 10);
      *(this + 4) |= 2u;
      v10 = *(a2 + 10);
      if (v9 != v10)
      {
        if (v9 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 80, v10);
        }

        std::string::operator=(v9, v10);
      }
    }

    if ((v6 & 4) != 0)
    {
      v11 = *(this + 11);
      *(this + 4) |= 4u;
      v12 = *(a2 + 11);
      if (v11 != v12)
      {
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 88, v12);
        }

        std::string::operator=(v11, v12);
      }
    }

    if ((v6 & 8) != 0)
    {
      v13 = *(this + 12);
      *(this + 4) |= 8u;
      v14 = *(a2 + 12);
      if (v13 != v14)
      {
        if (v13 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 96, v14);
        }

        std::string::operator=(v13, v14);
      }
    }

    if ((v6 & 0x10) != 0)
    {
      v15 = *(this + 13);
      *(this + 4) |= 0x10u;
      v16 = *(a2 + 13);
      if (v15 != v16)
      {
        if (v15 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 104, v16);
        }

        std::string::operator=(v15, v16);
      }
    }

    if ((v6 & 0x20) != 0)
    {
      v17 = *(this + 14);
      *(this + 4) |= 0x20u;
      v18 = *(a2 + 14);
      if (v17 != v18)
      {
        if (v17 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 112, v18);
        }

        std::string::operator=(v17, v18);
      }
    }

    if ((v6 & 0x40) != 0)
    {
      v19 = *(this + 15);
      *(this + 4) |= 0x40u;
      v20 = *(a2 + 15);
      if (v19 != v20)
      {
        if (v19 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 120, v20);
        }

        std::string::operator=(v19, v20);
      }
    }

    if ((v6 & 0x80) != 0)
    {
      v21 = *(this + 16);
      *(this + 4) |= 0x80u;
      v22 = *(a2 + 16);
      if (v21 != v22)
      {
        if (v21 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 128, v22);
        }

        std::string::operator=(v21, v22);
      }
    }
  }

  if ((v6 & 0xF00) != 0)
  {
    if ((v6 & 0x100) != 0)
    {
      v23 = *(this + 17);
      *(this + 4) |= 0x100u;
      v24 = *(a2 + 17);
      if (v23 != v24)
      {
        if (v23 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 136, v24);
        }

        std::string::operator=(v23, v24);
      }
    }

    if ((v6 & 0x200) != 0)
    {
      v25 = *(this + 18);
      *(this + 4) |= 0x200u;
      v26 = *(a2 + 18);
      if (v25 != v26)
      {
        if (v25 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 144, v26);
        }

        std::string::operator=(v25, v26);
      }
    }

    if ((v6 & 0x400) != 0)
    {
      *(this + 4) |= 0x400u;
      v27 = *(this + 19);
      if (!v27)
      {
        v27 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Undo>(0);
        *(this + 19) = v27;
      }

      if (*(a2 + 19))
      {
        v28 = *(a2 + 19);
      }

      else
      {
        v28 = &protobuf::_Intelligence_Undo_default_instance_;
      }

      protobuf::Intelligence_Undo::MergeFrom(v27, v28);
    }

    if ((v6 & 0x800) != 0)
    {
      *(this + 160) = *(a2 + 160);
    }

    *(this + 4) |= v6;
  }
}

void sub_254CD2268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_BehaviorResponse::CopyFrom(protobuf::Intelligence_BehaviorResponse *this, const protobuf::Intelligence_BehaviorResponse *a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_BehaviorResponse::Clear(this);

    protobuf::Intelligence_BehaviorResponse::MergeFrom(this, a2);
  }
}

void protobuf::Intelligence_BehaviorResponse::InternalSwap(protobuf::Intelligence_BehaviorResponse *this, protobuf::Intelligence_BehaviorResponse *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v64;
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_70;
    }

LABEL_5:
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v4)
    {
LABEL_6:
      v8 = v4 & 0xFFFFFFFFFFFFFFFELL;
LABEL_7:
      v9 = *(v8 + 16);
      v10 = *v8;
      v11 = *(v7 + 16);
      *v8 = *v7;
      *(v8 + 16) = v11;
      *v7 = v10;
      *(v7 + 16) = v9;
      goto LABEL_8;
    }

LABEL_70:
    google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v5);
    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_8:
  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 24), (a2 + 24));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 48), (a2 + 48));
  v13 = *(this + 9);
  if (v13 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 9) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_14;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 9, 0, &google::protobuf::internal::fixed_address_empty_string);
    v13 = *(this + 9);
  }

  v14 = *(a2 + 9);
  if (v14 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 9, 0, &google::protobuf::internal::fixed_address_empty_string);
    v14 = *(a2 + 9);
  }

  v15 = v13[2];
  v16 = *v13;
  v17 = v14[2];
  *v13 = *v14;
  v13[2] = v17;
  *v14 = v16;
  v14[2] = v15;
LABEL_14:
  v18 = *(this + 10);
  if (v18 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 10) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_20;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 10, 0, &google::protobuf::internal::fixed_address_empty_string);
    v18 = *(this + 10);
  }

  v19 = *(a2 + 10);
  if (v19 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 10, 0, &google::protobuf::internal::fixed_address_empty_string);
    v19 = *(a2 + 10);
  }

  v20 = v18[2];
  v21 = *v18;
  v22 = v19[2];
  *v18 = *v19;
  v18[2] = v22;
  *v19 = v21;
  v19[2] = v20;
LABEL_20:
  v23 = *(this + 11);
  if (v23 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 11) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_26;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 11, 0, &google::protobuf::internal::fixed_address_empty_string);
    v23 = *(this + 11);
  }

  v24 = *(a2 + 11);
  if (v24 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 11, 0, &google::protobuf::internal::fixed_address_empty_string);
    v24 = *(a2 + 11);
  }

  v25 = v23[2];
  v26 = *v23;
  v27 = v24[2];
  *v23 = *v24;
  v23[2] = v27;
  *v24 = v26;
  v24[2] = v25;
LABEL_26:
  v28 = *(this + 12);
  if (v28 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 12) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_32;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 12, 0, &google::protobuf::internal::fixed_address_empty_string);
    v28 = *(this + 12);
  }

  v29 = *(a2 + 12);
  if (v29 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 12, 0, &google::protobuf::internal::fixed_address_empty_string);
    v29 = *(a2 + 12);
  }

  v30 = v28[2];
  v31 = *v28;
  v32 = v29[2];
  *v28 = *v29;
  v28[2] = v32;
  *v29 = v31;
  v29[2] = v30;
LABEL_32:
  v33 = *(this + 13);
  if (v33 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 13) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_38;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 13, 0, &google::protobuf::internal::fixed_address_empty_string);
    v33 = *(this + 13);
  }

  v34 = *(a2 + 13);
  if (v34 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 13, 0, &google::protobuf::internal::fixed_address_empty_string);
    v34 = *(a2 + 13);
  }

  v35 = v33[2];
  v36 = *v33;
  v37 = v34[2];
  *v33 = *v34;
  v33[2] = v37;
  *v34 = v36;
  v34[2] = v35;
LABEL_38:
  v38 = *(this + 14);
  if (v38 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 14) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_44;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 14, 0, &google::protobuf::internal::fixed_address_empty_string);
    v38 = *(this + 14);
  }

  v39 = *(a2 + 14);
  if (v39 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 14, 0, &google::protobuf::internal::fixed_address_empty_string);
    v39 = *(a2 + 14);
  }

  v40 = v38[2];
  v41 = *v38;
  v42 = v39[2];
  *v38 = *v39;
  v38[2] = v42;
  *v39 = v41;
  v39[2] = v40;
LABEL_44:
  v43 = *(this + 15);
  if (v43 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 15) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_50;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 15, 0, &google::protobuf::internal::fixed_address_empty_string);
    v43 = *(this + 15);
  }

  v44 = *(a2 + 15);
  if (v44 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 15, 0, &google::protobuf::internal::fixed_address_empty_string);
    v44 = *(a2 + 15);
  }

  v45 = v43[2];
  v46 = *v43;
  v47 = v44[2];
  *v43 = *v44;
  v43[2] = v47;
  *v44 = v46;
  v44[2] = v45;
LABEL_50:
  v48 = *(this + 16);
  if (v48 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 16) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_56;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 16, 0, &google::protobuf::internal::fixed_address_empty_string);
    v48 = *(this + 16);
  }

  v49 = *(a2 + 16);
  if (v49 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 16, 0, &google::protobuf::internal::fixed_address_empty_string);
    v49 = *(a2 + 16);
  }

  v50 = v48[2];
  v51 = *v48;
  v52 = v49[2];
  *v48 = *v49;
  v48[2] = v52;
  *v49 = v51;
  v49[2] = v50;
LABEL_56:
  v53 = *(this + 17);
  if (v53 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 17) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_62;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 17, 0, &google::protobuf::internal::fixed_address_empty_string);
    v53 = *(this + 17);
  }

  v54 = *(a2 + 17);
  if (v54 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 17, 0, &google::protobuf::internal::fixed_address_empty_string);
    v54 = *(a2 + 17);
  }

  v55 = v53[2];
  v56 = *v53;
  v57 = v54[2];
  *v53 = *v54;
  v53[2] = v57;
  *v54 = v56;
  v54[2] = v55;
LABEL_62:
  v58 = *(this + 18);
  if (v58 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 18) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_68;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 18, 0, &google::protobuf::internal::fixed_address_empty_string);
    v58 = *(this + 18);
  }

  v59 = *(a2 + 18);
  if (v59 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 18, 0, &google::protobuf::internal::fixed_address_empty_string);
    v59 = *(a2 + 18);
  }

  v60 = v58[2];
  v61 = *v58;
  v62 = v59[2];
  *v58 = *v59;
  v58[2] = v62;
  *v59 = v61;
  v59[2] = v60;
LABEL_68:
  v63 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v63;
  LOBYTE(v63) = *(this + 160);
  *(this + 160) = *(a2 + 160);
  *(a2 + 160) = v63;
}

protobuf::Intelligence_ReferenceResponse *protobuf::Intelligence_ReferenceResponse::Intelligence_ReferenceResponse(protobuf::Intelligence_ReferenceResponse *this)
{
  *(this + 8) = 0u;
  *this = &unk_286719880;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_ReferenceResponse_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_ReferenceResponse_intelligence_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 8) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 10) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 11) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 12) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 13) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 14) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 15) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 16) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 136) = 0;
  return this;
}

void sub_254CD292C(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_ReferenceResponse *protobuf::Intelligence_ReferenceResponse::Intelligence_ReferenceResponse(protobuf::Intelligence_ReferenceResponse *this, const protobuf::Intelligence_ReferenceResponse *a2)
{
  *this = &unk_286719880;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, a2 + 24);
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  v6 = *(a2 + 4);
  if (v6)
  {
    v7 = *(a2 + 6);
    if (v7 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 48, v7);
    }
  }

  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 2) != 0)
  {
    v8 = *(a2 + 7);
    if (v8 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 56, v8);
    }
  }

  *(this + 8) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 4) != 0)
  {
    v9 = *(a2 + 8);
    if (v9 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 64, v9);
    }
  }

  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 8) != 0)
  {
    v10 = *(a2 + 9);
    if (v10 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 72, v10);
    }
  }

  *(this + 10) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x10) != 0)
  {
    v11 = *(a2 + 10);
    if (v11 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 80, v11);
    }
  }

  *(this + 11) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x20) != 0)
  {
    v12 = *(a2 + 11);
    if (v12 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 88, v12);
    }
  }

  *(this + 12) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x40) != 0)
  {
    v13 = *(a2 + 12);
    if (v13 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 96, v13);
    }
  }

  *(this + 13) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x80) != 0)
  {
    v14 = *(a2 + 13);
    if (v14 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 104, v14);
    }
  }

  *(this + 14) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x100) != 0)
  {
    v15 = *(a2 + 14);
    if (v15 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 112, v15);
    }
  }

  *(this + 15) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x200) != 0)
  {
    v16 = *(a2 + 15);
    if (v16 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 120, v16);
    }
  }

  *(this + 16) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x400) != 0)
  {
    v17 = *(a2 + 16);
    if (v17 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 128, v17);
    }
  }

  *(this + 136) = *(a2 + 136);
  return this;
}

void sub_254CD2B48(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase((v2 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_ReferenceResponse::~Intelligence_ReferenceResponse(protobuf::Intelligence_ReferenceResponse *this)
{
  *this = &unk_286719880;
  v2 = *(this + 6);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 7);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x259C29D90](v4, 0x1012C40EC159624);
  }

  v6 = *(this + 8);
  if (v6 != &google::protobuf::internal::fixed_address_empty_string && v6 != 0)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x259C29D90](v6, 0x1012C40EC159624);
  }

  v8 = *(this + 9);
  if (v8 != &google::protobuf::internal::fixed_address_empty_string && v8 != 0)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    MEMORY[0x259C29D90](v8, 0x1012C40EC159624);
  }

  v10 = *(this + 10);
  if (v10 != &google::protobuf::internal::fixed_address_empty_string && v10)
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    MEMORY[0x259C29D90](v10, 0x1012C40EC159624);
  }

  v11 = *(this + 11);
  if (v11 != &google::protobuf::internal::fixed_address_empty_string && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    MEMORY[0x259C29D90](v11, 0x1012C40EC159624);
  }

  v12 = *(this + 12);
  if (v12 != &google::protobuf::internal::fixed_address_empty_string && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    MEMORY[0x259C29D90](v12, 0x1012C40EC159624);
  }

  v13 = *(this + 13);
  if (v13 != &google::protobuf::internal::fixed_address_empty_string && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    MEMORY[0x259C29D90](v13, 0x1012C40EC159624);
  }

  v14 = *(this + 14);
  if (v14 != &google::protobuf::internal::fixed_address_empty_string && v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    MEMORY[0x259C29D90](v14, 0x1012C40EC159624);
  }

  v15 = *(this + 15);
  if (v15 != &google::protobuf::internal::fixed_address_empty_string && v15)
  {
    if (*(v15 + 23) < 0)
    {
      operator delete(*v15);
    }

    MEMORY[0x259C29D90](v15, 0x1012C40EC159624);
  }

  v16 = *(this + 16);
  if (v16 != &google::protobuf::internal::fixed_address_empty_string && v16)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    MEMORY[0x259C29D90](v16, 0x1012C40EC159624);
  }

  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_ReferenceResponse::~Intelligence_ReferenceResponse(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_ReferenceResponse::default_instance(protobuf::Intelligence_ReferenceResponse *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_ReferenceResponse_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_ReferenceResponse_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_ReferenceResponse_default_instance_;
}

void protobuf::Intelligence_ReferenceResponse::Clear(protobuf::Intelligence_ReferenceResponse *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24);
  v2 = *(this + 4);
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      if ((v2 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      v4 = *(this + 7);
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v2 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v4 = 0;
        *(v4 + 23) = 0;
        if ((v2 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_23:
      v6 = *(this + 9);
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v2 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v6 = 0;
        *(v6 + 23) = 0;
        if ((v2 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_31:
      v8 = *(this + 11);
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        if ((v2 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
        if ((v2 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }

LABEL_39:
      v10 = *(this + 13);
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
      }

      else
      {
        *v10 = 0;
        *(v10 + 23) = 0;
      }

      goto LABEL_42;
    }

    v3 = *(this + 6);
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    v5 = *(this + 8);
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_27:
    v7 = *(this + 10);
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_8:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v9 = *(this + 12);
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_39;
  }

LABEL_42:
  if ((v2 & 0x700) == 0)
  {
    goto LABEL_58;
  }

  if ((v2 & 0x100) != 0)
  {
    v11 = *(this + 14);
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
      if ((v2 & 0x200) != 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
      if ((v2 & 0x200) != 0)
      {
        goto LABEL_51;
      }
    }

LABEL_45:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  if ((v2 & 0x200) == 0)
  {
    goto LABEL_45;
  }

LABEL_51:
  v12 = *(this + 15);
  if (*(v12 + 23) < 0)
  {
    **v12 = 0;
    *(v12 + 8) = 0;
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_58;
    }
  }

  else
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_58;
    }
  }

LABEL_55:
  v13 = *(this + 16);
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

LABEL_58:
  v15 = *(this + 8);
  v14 = this + 8;
  v14[128] = 0;
  *(v14 + 2) = 0;
  if (v15)
  {

    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v14);
  }
}

google::protobuf::internal *protobuf::Intelligence_ReferenceResponse::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *this)
{
  v27 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v27, this[11].i32[1]) & 1) == 0)
  {
    while (2)
    {
      TagFallback = (v27 + 1);
      LODWORD(v8) = *v27;
      if (*v27 < 0)
      {
        v8 = (v8 + (*TagFallback << 7) - 128);
        if (*TagFallback < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v27, v8);
          v27 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_3;
          }

          LODWORD(v8) = v10;
LABEL_8:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 10)
              {
                goto LABEL_70;
              }

              *(a1 + 16) |= 1u;
              v9 = *(a1 + 48);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 48, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_66;
            case 2u:
              if (v8 != 18)
              {
                goto LABEL_70;
              }

              *(a1 + 16) |= 2u;
              v9 = *(a1 + 56);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 56, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_66;
            case 3u:
              if (v8 != 26)
              {
                goto LABEL_70;
              }

              *(a1 + 16) |= 4u;
              v9 = *(a1 + 64);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 64, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_66;
            case 4u:
              if (v8 != 34)
              {
                goto LABEL_70;
              }

              *(a1 + 16) |= 8u;
              v9 = *(a1 + 72);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 72, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_66;
            case 5u:
              if (v8 != 42)
              {
                goto LABEL_70;
              }

              *(a1 + 16) |= 0x10u;
              v9 = *(a1 + 80);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 80, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_66;
            case 6u:
              if (v8 != 48)
              {
                goto LABEL_70;
              }

              v5 |= 0x800u;
              v12 = (TagFallback + 1);
              v11 = *TagFallback;
              if ((v11 & 0x8000000000000000) == 0)
              {
                goto LABEL_42;
              }

              v13 = *v12;
              v11 = (v13 << 7) + v11 - 128;
              if (v13 < 0)
              {
                v25 = google::protobuf::internal::VarintParseSlow64(TagFallback, v11);
                v27 = v25;
                *(a1 + 136) = v26 != 0;
                if (!v25)
                {
                  goto LABEL_76;
                }
              }

              else
              {
                v12 = (TagFallback + 2);
LABEL_42:
                v27 = v12;
                *(a1 + 136) = v11 != 0;
              }

              goto LABEL_68;
            case 7u:
              if (v8 != 58)
              {
                goto LABEL_70;
              }

              *(a1 + 16) |= 0x20u;
              v9 = *(a1 + 88);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 88, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_66;
            case 8u:
              if (v8 != 66)
              {
                goto LABEL_70;
              }

              *(a1 + 16) |= 0x40u;
              v9 = *(a1 + 96);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 96, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_66;
            case 9u:
              if (v8 != 74)
              {
                goto LABEL_70;
              }

              *(a1 + 16) |= 0x80u;
              v9 = *(a1 + 104);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 104, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_66;
            case 0xAu:
              if (v8 != 82)
              {
                goto LABEL_70;
              }

              *(a1 + 16) |= 0x100u;
              v9 = *(a1 + 112);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 112, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_66;
            case 0xBu:
              if (v8 != 90)
              {
                goto LABEL_70;
              }

              v14 = TagFallback - 1;
              break;
            case 0xCu:
              if (v8 != 98)
              {
                goto LABEL_70;
              }

              *(a1 + 16) |= 0x200u;
              v9 = *(a1 + 120);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 120, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_66;
            case 0xDu:
              if (v8 != 106)
              {
                goto LABEL_70;
              }

              *(a1 + 16) |= 0x400u;
              v9 = *(a1 + 128);
              if (v9 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 128, &google::protobuf::internal::fixed_address_empty_string);
              }

LABEL_66:
              v23 = google::protobuf::internal::InlineGreedyStringParser(v9, TagFallback, this);
              goto LABEL_67;
            default:
LABEL_70:
              if (v8)
              {
                v24 = (v8 & 7) == 4;
              }

              else
              {
                v24 = 1;
              }

              if (v24)
              {
                this[10].i32[0] = v8 - 1;
                goto LABEL_3;
              }

              v23 = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), TagFallback, this);
LABEL_67:
              v27 = v23;
              if (!v23)
              {
LABEL_76:
                TagFallback = 0;
                goto LABEL_3;
              }

LABEL_68:
              if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v27, this[11].i32[1]))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v15 = v14 + 1;
            v27 = (v14 + 1);
            v16 = *(a1 + 40);
            if (!v16)
            {
              break;
            }

            v17 = *(a1 + 32);
            v18 = *v16;
            if (v17 >= *v16)
            {
              if (v18 == *(a1 + 36))
              {
LABEL_53:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v18 + 1);
                v16 = *(a1 + 40);
                v18 = *v16;
              }

              *v16 = v18 + 1;
              v20 = *(a1 + 24);
              if (!v20)
              {
                operator new();
              }

              if (v20[14])
              {
              }

              AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v20, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
              AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
              AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
              AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
              v21 = *(a1 + 32);
              v22 = *(a1 + 40) + 8 * v21;
              *(a1 + 32) = v21 + 1;
              *(v22 + 8) = AlignedAndAddCleanup;
              v15 = v27;
              goto LABEL_59;
            }

            *(a1 + 32) = v17 + 1;
            AlignedAndAddCleanup = *&v16[2 * v17 + 2];
LABEL_59:
            v14 = google::protobuf::internal::InlineGreedyStringParser(AlignedAndAddCleanup, v15, this);
            v27 = v14;
            if (!v14)
            {
              goto LABEL_76;
            }

            if (*this <= v14 || *v14 != 90)
            {
              goto LABEL_68;
            }
          }

          v18 = *(a1 + 36);
          goto LABEL_53;
        }

        TagFallback = (v27 + 2);
      }

      break;
    }

    v27 = TagFallback;
    goto LABEL_8;
  }

LABEL_2:
  TagFallback = v27;
LABEL_3:
  *(a1 + 16) |= v5;
  return TagFallback;
}

unsigned __int8 *protobuf::Intelligence_ReferenceResponse::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_ReferenceResponse *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 6), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, *(this + 7), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 3, *(this + 8), v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 4, *(this + 9), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 5, *(this + 10), v4);
  if ((v6 & 0x800) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_35:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(this + 136);
  *v4 = 48;
  v4[1] = v14;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_8:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 7, *(this + 11), v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 8, *(this + 12), v4);
  if ((v6 & 0x80) == 0)
  {
LABEL_10:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_40:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 9, *(this + 13), v4);
  if ((v6 & 0x100) != 0)
  {
LABEL_11:
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 10, *(this + 14), v4);
  }

LABEL_12:
  v7 = *(this + 8);
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, i);
      v10 = *(v9 + 23);
      if (v10 < 0 && (v10 = *(v9 + 8), v10 > 127) || *a3 - v4 + 14 < v10)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 11, v9, v4);
      }

      else
      {
        *v4 = 90;
        v4[1] = v10;
        if (*(v9 + 23) >= 0)
        {
          v11 = v9;
        }

        else
        {
          v11 = *v9;
        }

        memcpy(v4 + 2, v11, v10);
        v4 += v10 + 2;
      }
    }
  }

  if ((v6 & 0x200) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 12, *(this + 15), v4);
  }

  if ((v6 & 0x400) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 13, *(this + 16), v4);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return v4;
  }

  v15 = v12 & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 23);
  if (v16 < 0)
  {
    v17 = *v15;
    v16 = *(v15 + 8);
  }

  else
  {
    v17 = v15;
  }

  if (*a3 - v4 >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v17, v16, v4);
}

uint64_t protobuf::Intelligence_ReferenceResponse::ByteSizeLong(protobuf::Intelligence_ReferenceResponse *this)
{
  v2 = *(this + 8);
  if (v2 < 1)
  {
    v4 = *(this + 8);
  }

  else
  {
    v3 = 0;
    v4 = *(this + 8);
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, v3);
      v6 = *(v5 + 23);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(v5 + 8);
      }

      v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      ++v3;
    }

    while (v2 != v3);
  }

  v7 = *(this + 4);
  if (!*(this + 4))
  {
    goto LABEL_20;
  }

  if (v7)
  {
    v16 = *(this + 6);
    v17 = *(v16 + 23);
    v18 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v18 = v17;
    }

    v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 2) == 0)
    {
LABEL_11:
      if ((v7 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_36;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_11;
  }

  v19 = *(this + 7);
  v20 = *(v19 + 23);
  v21 = *(v19 + 8);
  if ((v20 & 0x80u) == 0)
  {
    v21 = v20;
  }

  v4 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 4) == 0)
  {
LABEL_12:
    if ((v7 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_36:
  v22 = *(this + 8);
  v23 = *(v22 + 23);
  v24 = *(v22 + 8);
  if ((v23 & 0x80u) == 0)
  {
    v24 = v23;
  }

  v4 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 8) == 0)
  {
LABEL_13:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_39:
  v25 = *(this + 9);
  v26 = *(v25 + 23);
  v27 = *(v25 + 8);
  if ((v26 & 0x80u) == 0)
  {
    v27 = v26;
  }

  v4 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 0x10) == 0)
  {
LABEL_14:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_15;
    }

LABEL_45:
    v31 = *(this + 11);
    v32 = *(v31 + 23);
    v33 = *(v31 + 8);
    if ((v32 & 0x80u) == 0)
    {
      v33 = v32;
    }

    v4 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 0x40) == 0)
    {
LABEL_16:
      if ((v7 & 0x80) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_42:
  v28 = *(this + 10);
  v29 = *(v28 + 23);
  v30 = *(v28 + 8);
  if ((v29 & 0x80u) == 0)
  {
    v30 = v29;
  }

  v4 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 0x20) != 0)
  {
    goto LABEL_45;
  }

LABEL_15:
  if ((v7 & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_48:
  v34 = *(this + 12);
  v35 = *(v34 + 23);
  v36 = *(v34 + 8);
  if ((v35 & 0x80u) == 0)
  {
    v36 = v35;
  }

  v4 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 0x80) != 0)
  {
LABEL_17:
    v8 = *(this + 13);
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v4 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_20:
  if ((v7 & 0xF00) == 0)
  {
    goto LABEL_28;
  }

  if ((v7 & 0x100) == 0)
  {
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_23;
    }

LABEL_55:
    v40 = *(this + 15);
    v41 = *(v40 + 23);
    v42 = *(v40 + 8);
    if ((v41 & 0x80u) == 0)
    {
      v42 = v41;
    }

    v4 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v37 = *(this + 14);
  v38 = *(v37 + 23);
  v39 = *(v37 + 8);
  if ((v38 & 0x80u) == 0)
  {
    v39 = v38;
  }

  v4 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 0x200) != 0)
  {
    goto LABEL_55;
  }

LABEL_23:
  if ((v7 & 0x400) != 0)
  {
LABEL_24:
    v11 = *(this + 16);
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_27:
  v4 += (v7 >> 10) & 2;
LABEL_28:
  v14 = *(this + 1);
  if (v14)
  {
    v43 = v14 & 0xFFFFFFFFFFFFFFFELL;
    v44 = *((v14 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v44 < 0)
    {
      v44 = *(v43 + 8);
    }

    v4 += v44;
  }

  *(this + 5) = v4;
  return v4;
}

void protobuf::Intelligence_ReferenceResponse::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_ReferenceResponse::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_ReferenceResponse::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v30, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 3998);
    v4 = google::protobuf::internal::LogMessage::operator<<(v30, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v29, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v30[0].__r_.__value_.__l.__data_);
  }

  v5 = a2[1];
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 3), (a2 + 3));
  v6 = *(a2 + 4);
  if (v6)
  {
    if (v6)
    {
      v7 = this[6];
      *(this + 4) |= 1u;
      v8 = a2[6];
      if (v7 != v8)
      {
        if (v7 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 6), v8);
        }

        std::string::operator=(v7, v8);
      }
    }

    if ((v6 & 2) != 0)
    {
      v9 = this[7];
      *(this + 4) |= 2u;
      v10 = a2[7];
      if (v9 != v10)
      {
        if (v9 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 7), v10);
        }

        std::string::operator=(v9, v10);
      }
    }

    if ((v6 & 4) != 0)
    {
      v11 = this[8];
      *(this + 4) |= 4u;
      v12 = a2[8];
      if (v11 != v12)
      {
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 8), v12);
        }

        std::string::operator=(v11, v12);
      }
    }

    if ((v6 & 8) != 0)
    {
      v13 = this[9];
      *(this + 4) |= 8u;
      v14 = a2[9];
      if (v13 != v14)
      {
        if (v13 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 9), v14);
        }

        std::string::operator=(v13, v14);
      }
    }

    if ((v6 & 0x10) != 0)
    {
      v15 = this[10];
      *(this + 4) |= 0x10u;
      v16 = a2[10];
      if (v15 != v16)
      {
        if (v15 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 10), v16);
        }

        std::string::operator=(v15, v16);
      }
    }

    if ((v6 & 0x20) != 0)
    {
      v17 = this[11];
      *(this + 4) |= 0x20u;
      v18 = a2[11];
      if (v17 != v18)
      {
        if (v17 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 11), v18);
        }

        std::string::operator=(v17, v18);
      }
    }

    if ((v6 & 0x40) != 0)
    {
      v19 = this[12];
      *(this + 4) |= 0x40u;
      v20 = a2[12];
      if (v19 != v20)
      {
        if (v19 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 12), v20);
        }

        std::string::operator=(v19, v20);
      }
    }

    if ((v6 & 0x80) != 0)
    {
      v21 = this[13];
      *(this + 4) |= 0x80u;
      v22 = a2[13];
      if (v21 != v22)
      {
        if (v21 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 13), v22);
        }

        std::string::operator=(v21, v22);
      }
    }
  }

  if ((v6 & 0xF00) != 0)
  {
    if ((v6 & 0x100) != 0)
    {
      v23 = this[14];
      *(this + 4) |= 0x100u;
      v24 = a2[14];
      if (v23 != v24)
      {
        if (v23 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 14), v24);
        }

        std::string::operator=(v23, v24);
      }
    }

    if ((v6 & 0x200) != 0)
    {
      v25 = this[15];
      *(this + 4) |= 0x200u;
      v26 = a2[15];
      if (v25 != v26)
      {
        if (v25 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 15), v26);
        }

        std::string::operator=(v25, v26);
      }
    }

    if ((v6 & 0x400) != 0)
    {
      v27 = this[16];
      *(this + 4) |= 0x400u;
      v28 = a2[16];
      if (v27 != v28)
      {
        if (v27 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 16), v28);
        }

        std::string::operator=(v27, v28);
      }
    }

    if ((v6 & 0x800) != 0)
    {
      *(this + 136) = *(a2 + 136);
    }

    *(this + 4) |= v6;
  }
}