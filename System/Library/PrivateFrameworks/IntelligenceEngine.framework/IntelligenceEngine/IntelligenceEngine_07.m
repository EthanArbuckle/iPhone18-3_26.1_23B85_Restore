void sub_254CE9B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_State_Memory::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_State_Memory::Clear(this);

    protobuf::Intelligence_State_Memory::MergeFrom(this, a2);
  }
}

void protobuf::Intelligence_State_Memory::InternalSwap(protobuf::Intelligence_State_Memory *this, protobuf::Intelligence_State_Memory *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v24;
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
  v16 = *v12;
  v17 = v14[2];
  *v12 = *v14;
  v12[2] = v17;
  *v14 = v16;
  v14[2] = v15;
LABEL_14:
  v18 = *(this + 4);
  if (v18 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 4) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_20;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 4, 0, &google::protobuf::internal::fixed_address_empty_string);
    v18 = *(this + 4);
  }

  v19 = *(a2 + 4);
  if (v19 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 4, 0, &google::protobuf::internal::fixed_address_empty_string);
    v19 = *(a2 + 4);
  }

  v20 = v18[2];
  v21 = *v18;
  v22 = v19[2];
  *v18 = *v19;
  v18[2] = v22;
  *v19 = v21;
  v19[2] = v20;
LABEL_20:
  v23 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v23;
  LOBYTE(v23) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v23;
}

protobuf::Intelligence_State_InputGroup *protobuf::Intelligence_State_InputGroup::Intelligence_State_InputGroup(protobuf::Intelligence_State_InputGroup *this)
{
  *this = &unk_28671A4E0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_State_InputGroup_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_State_InputGroup_intelligence_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

protobuf::Intelligence_State_InputGroup *protobuf::Intelligence_State_InputGroup::Intelligence_State_InputGroup(protobuf::Intelligence_State_InputGroup *this, const protobuf::Intelligence_State_InputGroup *a2)
{
  *this = &unk_28671A4E0;
  *(this + 1) = 0;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
    v4 = *(a2 + 4);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  if (v4)
  {
    v6 = *(a2 + 3);
    if (v6 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 24, v6);
    }
  }

  return this;
}

void protobuf::Intelligence_State_InputGroup::~Intelligence_State_InputGroup(protobuf::Intelligence_State_InputGroup *this)
{
  *this = &unk_28671A4E0;
  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_State_InputGroup::~Intelligence_State_InputGroup(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_State_InputGroup::default_instance(protobuf::Intelligence_State_InputGroup *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_State_InputGroup_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_State_InputGroup_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_State_InputGroup_default_instance_;
}

void protobuf::Intelligence_State_InputGroup::Clear(protobuf::Intelligence_State_InputGroup *this)
{
  if (*(this + 16))
  {
    v1 = *(this + 3);
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

  v3 = *(this + 8);
  v2 = this + 8;
  *(v2 + 2) = 0;
  if (v3)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v2);
  }
}

google::protobuf::internal *protobuf::Intelligence_State_InputGroup::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v13 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v13, *(this + 23));
  result = v13;
  if ((v5 & 1) == 0)
  {
    while (1)
    {
      v7 = result + 1;
      LODWORD(v8) = *result;
      if ((*result & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = (v8 + (*v7 << 7) - 128);
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      result = google::protobuf::internal::ReadTagFallback(result, v8);
      v13 = result;
      if (!result)
      {
        return result;
      }

      v7 = result;
      LODWORD(v8) = v12;
LABEL_6:
      if (v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v10 = *(a1 + 24);
        if (v10 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 24, &google::protobuf::internal::fixed_address_empty_string);
        }

        result = google::protobuf::internal::InlineGreedyStringParser(v10, v7, this);
      }

      else
      {
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
          *(this + 20) = v8 - 1;
          return v7;
        }

        result = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), v7, this);
      }

      v13 = result;
      if (result)
      {
        v11 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v13, *(this + 23));
        result = v13;
        if (!v11)
        {
          continue;
        }
      }

      return result;
    }

    v7 = result + 2;
LABEL_5:
    v13 = v7;
    goto LABEL_6;
  }

  return result;
}

unsigned __int8 *protobuf::Intelligence_State_InputGroup::InternalSerializeWithCachedSizesToArray(const void ***this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  if (this[2])
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, this[3], a2);
  }

  v6 = this[1];
  if ((v6 & 1) == 0)
  {
    return v4;
  }

  v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    v10 = *v8;
    v9 = *(v8 + 8);
  }

  else
  {
    v10 = v8;
  }

  if (*a3 - v4 >= v9)
  {
    v11 = v9;
    memcpy(v4, v10, v9);
    v4 += v11;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v10, v9, v4);
}

uint64_t protobuf::Intelligence_State_InputGroup::ByteSizeLong(protobuf::Intelligence_State_InputGroup *this)
{
  if (*(this + 16))
  {
    v2 = *(this + 3);
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v1 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v1 = 0;
  }

  v5 = *(this + 1);
  if (v5)
  {
    v7 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v8 < 0)
    {
      v8 = *(v7 + 8);
    }

    v1 += v8;
  }

  *(this + 5) = v1;
  return v1;
}

void protobuf::Intelligence_State_InputGroup::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_State_InputGroup::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_State_InputGroup::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 11149);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = a2[1];
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (a2[2])
  {
    v8 = this[3];
    v7 = (this + 3);
    v6 = v8;
    *(v7 - 2) |= 1u;
    v9 = a2[3];
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

void sub_254CEA448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_State_InputGroup::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_State_InputGroup::Clear(this);

    protobuf::Intelligence_State_InputGroup::MergeFrom(this, a2);
  }
}

__n128 protobuf::Intelligence_State_InputGroup::InternalSwap(protobuf::Intelligence_State_InputGroup *this, protobuf::Intelligence_State_InputGroup *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v19;
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

LABEL_16:
    google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v5);
    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_8:
  v14 = *(this + 3);
  v12 = (this + 24);
  v13 = v14;
  v15 = *(v12 - 2);
  *(v12 - 2) = *(a2 + 4);
  *(a2 + 4) = v15;
  if (v14 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 3) == &google::protobuf::internal::fixed_address_empty_string)
    {
      return result;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(v12, 0, &google::protobuf::internal::fixed_address_empty_string);
    v13 = *v12;
  }

  v16 = *(a2 + 3);
  if (v16 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 3, 0, &google::protobuf::internal::fixed_address_empty_string);
    v16 = *(a2 + 3);
  }

  v17 = v13->__r_.__value_.__r.__words[2];
  result = *&v13->__r_.__value_.__l.__data_;
  v18 = v16[2];
  *&v13->__r_.__value_.__l.__data_ = *v16;
  v13->__r_.__value_.__r.__words[2] = v18;
  *v16 = result;
  v16[2] = v17;
  return result;
}

protobuf::Intelligence_State_Event *protobuf::Intelligence_State_Event::Intelligence_State_Event(protobuf::Intelligence_State_Event *this)
{
  *this = &unk_28671A570;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_State_Event_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_State_Event_intelligence_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = 0;
  return this;
}

protobuf::Intelligence_State_Event *protobuf::Intelligence_State_Event::Intelligence_State_Event(protobuf::Intelligence_State_Event *this, const protobuf::Intelligence_State_Event *a2)
{
  *this = &unk_28671A570;
  *(this + 1) = 0;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
    v4 = *(a2 + 4);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  if (v4)
  {
    v6 = *(a2 + 3);
    if (v6 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 24, v6);
    }
  }

  *(this + 4) = *(a2 + 4);
  return this;
}

void protobuf::Intelligence_State_Event::~Intelligence_State_Event(protobuf::Intelligence_State_Event *this)
{
  *this = &unk_28671A570;
  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_State_Event::~Intelligence_State_Event(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_State_Event::default_instance(protobuf::Intelligence_State_Event *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_State_Event_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_State_Event_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_State_Event_default_instance_;
}

void protobuf::Intelligence_State_Event::Clear(protobuf::Intelligence_State_Event *this)
{
  if (*(this + 16))
  {
    v1 = *(this + 3);
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

  v3 = *(this + 8);
  v2 = this + 8;
  *(v2 + 3) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v2);
  }
}

char *protobuf::Intelligence_State_Event::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *this)
{
  v14 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v14, this[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      TagFallback = v14 + 1;
      LODWORD(v8) = *v14;
      if ((*v14 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      v8 = (v8 + (*TagFallback << 7) - 128);
      if ((*TagFallback & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v14, v8);
      v14 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_3;
      }

      LODWORD(v8) = v13;
LABEL_8:
      if (v8 >> 3 == 2)
      {
        if (v8 == 17)
        {
          v5 |= 2u;
          *(a1 + 32) = *TagFallback;
          v14 = (TagFallback + 8);
          goto LABEL_24;
        }
      }

      else if (v8 >> 3 == 1 && v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v12 = *(a1 + 24);
        if (v12 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 24, &google::protobuf::internal::fixed_address_empty_string);
        }

        v11 = google::protobuf::internal::InlineGreedyStringParser(v12, TagFallback, this);
        goto LABEL_23;
      }

      if (v8)
      {
        v10 = (v8 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        this[10].i32[0] = v8 - 1;
        goto LABEL_3;
      }

      v11 = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), TagFallback, this);
LABEL_23:
      v14 = v11;
      if (!v11)
      {
        TagFallback = 0;
        goto LABEL_3;
      }

LABEL_24:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v14, this[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    TagFallback = v14 + 2;
LABEL_7:
    v14 = TagFallback;
    goto LABEL_8;
  }

LABEL_2:
  TagFallback = v14;
LABEL_3:
  *(a1 + 16) |= v5;
  return TagFallback;
}

unsigned __int8 *protobuf::Intelligence_State_Event::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_State_Event *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 3), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(this + 4);
    *v4 = 17;
    *(v4 + 1) = v7;
    v4 += 9;
  }

  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
  v11 = *(v10 + 23);
  if (v11 < 0)
  {
    v12 = *v10;
    v11 = *(v10 + 8);
  }

  else
  {
    v12 = v10;
  }

  if (*a3 - v4 >= v11)
  {
    v13 = v11;
    memcpy(v4, v12, v11);
    v4 += v13;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v12, v11, v4);
}

uint64_t protobuf::Intelligence_State_Event::ByteSizeLong(protobuf::Intelligence_State_Event *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v4 = *(this + 3);
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v3 = v2 + 9;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = *(this + 1);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v10 < 0)
    {
      v10 = *(v9 + 8);
    }

    v3 += v10;
  }

  *(this + 5) = v3;
  return v3;
}

void protobuf::Intelligence_State_Event::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_State_Event::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_State_Event::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 11366);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
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
      this[4] = a2[4];
    }

    *(this + 4) |= v6;
  }
}

void sub_254CEAD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_State_Event::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_State_Event::Clear(this);

    protobuf::Intelligence_State_Event::MergeFrom(this, a2);
  }
}

double protobuf::Intelligence_State_Event::InternalSwap(protobuf::Intelligence_State_Event *this, protobuf::Intelligence_State_Event *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v19;
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
  v16 = *v12;
  v17 = v14[2];
  *v12 = *v14;
  v12[2] = v17;
  *v14 = v16;
  v14[2] = v15;
LABEL_14:
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

protobuf::Intelligence_State_Response *protobuf::Intelligence_State_Response::Intelligence_State_Response(protobuf::Intelligence_State_Response *this)
{
  *this = &unk_28671A600;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_State_Response_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_State_Response_intelligence_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

protobuf::Intelligence_State_Response *protobuf::Intelligence_State_Response::Intelligence_State_Response(protobuf::Intelligence_State_Response *this, const protobuf::Intelligence_State_Response *a2)
{
  *this = &unk_28671A600;
  *(this + 1) = 0;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
    v4 = *(a2 + 4);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  if (v4)
  {
    v6 = *(a2 + 3);
    if (v6 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 24, v6);
    }
  }

  v7 = *(a2 + 4);
  *(this + 10) = *(a2 + 10);
  *(this + 4) = v7;
  return this;
}

void protobuf::Intelligence_State_Response::~Intelligence_State_Response(protobuf::Intelligence_State_Response *this)
{
  *this = &unk_28671A600;
  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_State_Response::~Intelligence_State_Response(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_State_Response::default_instance(protobuf::Intelligence_State_Response *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_State_Response_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_State_Response_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_State_Response_default_instance_;
}

void protobuf::Intelligence_State_Response::Clear(protobuf::Intelligence_State_Response *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(this + 3);
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

  if ((v1 & 6) != 0)
  {
    *(this + 10) = 0;
    *(this + 4) = 0;
  }

  v4 = *(this + 8);
  v3 = this + 8;
  *(v3 + 2) = 0;
  if (v4)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v3);
  }
}

char *protobuf::Intelligence_State_Response::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *this)
{
  v20 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v20, this[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      TagFallback = v20 + 1;
      LODWORD(v8) = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      v8 = (v8 + (*TagFallback << 7) - 128);
      if ((*TagFallback & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, v8);
      v20 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_3;
      }

      LODWORD(v8) = v17;
LABEL_8:
      v9 = v8 >> 3;
      if (v8 >> 3 != 3)
      {
        if (v9 == 2)
        {
          if (v8 == 17)
          {
            v5 |= 2u;
            *(a1 + 32) = *TagFallback;
            v20 = (TagFallback + 8);
            goto LABEL_30;
          }

LABEL_14:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            this[10].i32[0] = v8 - 1;
            goto LABEL_3;
          }

          v12 = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), TagFallback, this);
        }

        else
        {
          if (v9 != 1 || v8 != 10)
          {
            goto LABEL_14;
          }

          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (v16 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 24, &google::protobuf::internal::fixed_address_empty_string);
          }

          v12 = google::protobuf::internal::InlineGreedyStringParser(v16, TagFallback, this);
        }

        v20 = v12;
        if (!v12)
        {
          goto LABEL_35;
        }

        goto LABEL_30;
      }

      if (v8 != 24)
      {
        goto LABEL_14;
      }

      v5 |= 4u;
      v14 = (TagFallback + 1);
      LODWORD(v13) = *TagFallback;
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_25;
      }

      v15 = *v14;
      v13 = v13 + (v15 << 7) - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (TagFallback + 2);
LABEL_25:
        v20 = v14;
        *(a1 + 40) = v13;
        goto LABEL_30;
      }

      v18 = google::protobuf::internal::VarintParseSlow64(TagFallback, v13);
      v20 = v18;
      *(a1 + 40) = v19;
      if (!v18)
      {
LABEL_35:
        TagFallback = 0;
        goto LABEL_3;
      }

LABEL_30:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v20, this[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    TagFallback = v20 + 2;
LABEL_7:
    v20 = TagFallback;
    goto LABEL_8;
  }

LABEL_2:
  TagFallback = v20;
LABEL_3:
  *(a1 + 16) |= v5;
  return TagFallback;
}

unsigned __int8 *protobuf::Intelligence_State_Response::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_State_Response *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 3), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 4);
  *v4 = 17;
  *(v4 + 1) = v7;
  v4 += 9;
  if ((v6 & 4) != 0)
  {
LABEL_9:
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(this + 10);
    *v4 = 24;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v4;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v4 - 1) = v10;
      }

      else
      {
        v4[2] = v9;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v8;
      v4 += 2;
    }
  }

LABEL_18:
  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return v4;
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  if (v15 < 0)
  {
    v16 = *v14;
    v15 = *(v14 + 8);
  }

  else
  {
    v16 = v14;
  }

  if (*a3 - v4 >= v15)
  {
    v17 = v15;
    memcpy(v4, v16, v15);
    v4 += v17;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v16, v15, v4);
}

uint64_t protobuf::Intelligence_State_Response::ByteSizeLong(protobuf::Intelligence_State_Response *this)
{
  v1 = *(this + 4);
  if ((v1 & 7) != 0)
  {
    if (v1)
    {
      v3 = *(this + 3);
      v4 = *(v3 + 23);
      v5 = *(v3 + 8);
      if ((v4 & 0x80u) == 0)
      {
        v5 = v4;
      }

      v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v6 = *(this + 10);
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v6 >= 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 11;
      }

      v2 += v8;
    }
  }

  else
  {
    v2 = 0;
  }

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

void protobuf::Intelligence_State_Response::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_State_Response::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_State_Response::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 11623);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  v5 = a2[1];
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  v6 = *(a2 + 4);
  if ((v6 & 7) != 0)
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
      this[4] = a2[4];
    }

    if ((v6 & 4) != 0)
    {
      *(this + 10) = *(a2 + 10);
    }

    *(this + 4) |= v6;
  }
}

void sub_254CEB784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_State_Response::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_State_Response::Clear(this);

    protobuf::Intelligence_State_Response::MergeFrom(this, a2);
  }
}

double protobuf::Intelligence_State_Response::InternalSwap(protobuf::Intelligence_State_Response *this, protobuf::Intelligence_State_Response *a2)
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
  v16 = *v12;
  v17 = v14[2];
  *v12 = *v14;
  v12[2] = v17;
  *v14 = v16;
  v14[2] = v15;
LABEL_14:
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  v19 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v19;
  return result;
}

protobuf::Intelligence_State_Timer *protobuf::Intelligence_State_Timer::Intelligence_State_Timer(protobuf::Intelligence_State_Timer *this)
{
  *this = &unk_28671A690;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_State_Timer_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_State_Timer_intelligence_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 5) = 0;
  *(this + 48) = 0;
  return this;
}

protobuf::Intelligence_State_Timer *protobuf::Intelligence_State_Timer::Intelligence_State_Timer(protobuf::Intelligence_State_Timer *this, const protobuf::Intelligence_State_Timer *a2)
{
  *this = &unk_28671A690;
  *(this + 1) = 0;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
    v4 = *(a2 + 4);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  if (v4)
  {
    v6 = *(a2 + 3);
    if (v6 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 24, v6);
    }
  }

  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 4);
    if (v7 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 32, v7);
    }
  }

  v8 = *(a2 + 5);
  *(this + 48) = *(a2 + 48);
  *(this + 5) = v8;
  return this;
}

void protobuf::Intelligence_State_Timer::~Intelligence_State_Timer(protobuf::Intelligence_State_Timer *this)
{
  *this = &unk_28671A690;
  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 4);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x259C29D90](v4, 0x1012C40EC159624);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_State_Timer::~Intelligence_State_Timer(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_State_Timer::default_instance(protobuf::Intelligence_State_Timer *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_State_Timer_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_State_Timer_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_State_Timer_default_instance_;
}

void protobuf::Intelligence_State_Timer::Clear(protobuf::Intelligence_State_Timer *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(this + 3);
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        if ((v1 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }

    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v3 = *(this + 4);
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

LABEL_11:
  if ((v1 & 0xC) != 0)
  {
    *(this + 48) = 0;
    *(this + 5) = 0;
  }

  v5 = *(this + 8);
  v4 = this + 8;
  *(v4 + 2) = 0;
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v4);
  }
}

char *protobuf::Intelligence_State_Timer::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *this)
{
  v20 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v20, this[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      TagFallback = v20 + 1;
      LODWORD(v8) = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      v8 = (v8 + (*TagFallback << 7) - 128);
      if ((*TagFallback & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, v8);
      v20 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_3;
      }

      LODWORD(v8) = v17;
LABEL_8:
      v9 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v9 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_30;
          }

          *(a1 + 16) |= 1u;
          v11 = *(a1 + 24);
          if (v11 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 24, &google::protobuf::internal::fixed_address_empty_string);
          }
        }

        else
        {
          if (v9 != 2 || v8 != 18)
          {
            goto LABEL_30;
          }

          *(a1 + 16) |= 2u;
          v11 = *(a1 + 32);
          if (v11 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 32, &google::protobuf::internal::fixed_address_empty_string);
          }
        }

        v15 = google::protobuf::internal::InlineGreedyStringParser(v11, TagFallback, this);
LABEL_35:
        v20 = v15;
        if (!v15)
        {
          goto LABEL_41;
        }

        goto LABEL_36;
      }

      if (v9 == 3)
      {
        if (v8 == 25)
        {
          v5 |= 4u;
          *(a1 + 40) = *TagFallback;
          v20 = (TagFallback + 8);
          goto LABEL_36;
        }

LABEL_30:
        if (v8)
        {
          v16 = (v8 & 7) == 4;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {
          this[10].i32[0] = v8 - 1;
          goto LABEL_3;
        }

        v15 = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), TagFallback, this);
        goto LABEL_35;
      }

      if (v9 != 4 || v8 != 32)
      {
        goto LABEL_30;
      }

      v5 |= 8u;
      v13 = (TagFallback + 1);
      v12 = *TagFallback;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = (TagFallback + 2);
LABEL_23:
        v20 = v13;
        *(a1 + 48) = v12 != 0;
        goto LABEL_36;
      }

      v18 = google::protobuf::internal::VarintParseSlow64(TagFallback, v12);
      v20 = v18;
      *(a1 + 48) = v19 != 0;
      if (!v18)
      {
LABEL_41:
        TagFallback = 0;
        goto LABEL_3;
      }

LABEL_36:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v20, this[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    TagFallback = v20 + 2;
LABEL_7:
    v20 = TagFallback;
    goto LABEL_8;
  }

LABEL_2:
  TagFallback = v20;
LABEL_3:
  *(a1 + 16) |= v5;
  return TagFallback;
}

unsigned __int8 *protobuf::Intelligence_State_Timer::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_State_Timer *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 3), a2);
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

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, *(this + 4), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

LABEL_8:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 5);
  *v4 = 25;
  *(v4 + 1) = v7;
  v4 += 9;
  if ((v6 & 8) != 0)
  {
LABEL_11:
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(this + 48);
    *v4 = 32;
    v4[1] = v8;
    v4 += 2;
  }

LABEL_14:
  v9 = *(this + 1);
  if ((v9 & 1) == 0)
  {
    return v4;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFFELL;
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v13 = *v11;
    v12 = *(v11 + 8);
  }

  else
  {
    v13 = v11;
  }

  if (*a3 - v4 >= v12)
  {
    v14 = v12;
    memcpy(v4, v13, v12);
    v4 += v14;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v13, v12, v4);
}

uint64_t protobuf::Intelligence_State_Timer::ByteSizeLong(protobuf::Intelligence_State_Timer *this)
{
  v1 = *(this + 4);
  if ((v1 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v1)
  {
    v4 = *(this + 3);
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v7 = *(this + 4);
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    v2 += 9;
  }

  v3 = v2 + ((v1 >> 2) & 2);
LABEL_15:
  v10 = *(this + 1);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v13 < 0)
    {
      v13 = *(v12 + 8);
    }

    v3 += v13;
  }

  *(this + 5) = v3;
  return v3;
}

void protobuf::Intelligence_State_Timer::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_State_Timer::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_State_Timer::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 11916);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  v5 = a2[1];
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  v6 = *(a2 + 4);
  if ((v6 & 0xF) != 0)
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
      v9 = this[4];
      *(this + 4) |= 2u;
      v10 = a2[4];
      if (v9 != v10)
      {
        if (v9 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 4), v10);
        }

        std::string::operator=(v9, v10);
      }
    }

    if ((v6 & 4) != 0)
    {
      this[5] = a2[5];
    }

    if ((v6 & 8) != 0)
    {
      *(this + 48) = *(a2 + 48);
    }

    *(this + 4) |= v6;
  }
}

void sub_254CEC300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_State_Timer::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_State_Timer::Clear(this);

    protobuf::Intelligence_State_Timer::MergeFrom(this, a2);
  }
}

double protobuf::Intelligence_State_Timer::InternalSwap(protobuf::Intelligence_State_Timer *this, protobuf::Intelligence_State_Timer *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v25;
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
  v16 = *v12;
  v17 = v14[2];
  *v12 = *v14;
  v12[2] = v17;
  *v14 = v16;
  v14[2] = v15;
LABEL_14:
  v18 = *(this + 4);
  if (v18 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 4) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_20;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 4, 0, &google::protobuf::internal::fixed_address_empty_string);
    v18 = *(this + 4);
  }

  v19 = *(a2 + 4);
  if (v19 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 4, 0, &google::protobuf::internal::fixed_address_empty_string);
    v19 = *(a2 + 4);
  }

  v20 = v18[2];
  v21 = *v18;
  v22 = v19[2];
  *v18 = *v19;
  v18[2] = v22;
  *v19 = v21;
  v19[2] = v20;
LABEL_20:
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  v24 = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v24;
  return result;
}

protobuf::Intelligence_State_ExecutionState_Frame_ResponseState *protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::Intelligence_State_ExecutionState_Frame_ResponseState(protobuf::Intelligence_State_ExecutionState_Frame_ResponseState *this)
{
  *this = &unk_28671A720;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_State_ExecutionState_Frame_ResponseState_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_State_ExecutionState_Frame_ResponseState_intelligence_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 20) = 0;
  *(this + 42) = 0;
  return this;
}

protobuf::Intelligence_State_ExecutionState_Frame_ResponseState *protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::Intelligence_State_ExecutionState_Frame_ResponseState(protobuf::Intelligence_State_ExecutionState_Frame_ResponseState *this, const protobuf::Intelligence_State_ExecutionState_Frame_ResponseState *a2)
{
  *this = &unk_28671A720;
  *(this + 1) = 0;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
    v4 = *(a2 + 4);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  if (v4)
  {
    v6 = *(a2 + 3);
    if (v6 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 24, v6);
    }
  }

  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 4);
    if (v7 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 32, v7);
    }
  }

  v8 = *(a2 + 20);
  *(this + 42) = *(a2 + 42);
  *(this + 20) = v8;
  return this;
}

void protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::~Intelligence_State_ExecutionState_Frame_ResponseState(protobuf::Intelligence_State_ExecutionState_Frame_ResponseState *this)
{
  *this = &unk_28671A720;
  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 4);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x259C29D90](v4, 0x1012C40EC159624);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::~Intelligence_State_ExecutionState_Frame_ResponseState(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::default_instance(protobuf::Intelligence_State_ExecutionState_Frame_ResponseState *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_State_ExecutionState_Frame_ResponseState_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_State_ExecutionState_Frame_ResponseState_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_State_ExecutionState_Frame_ResponseState_default_instance_;
}

void protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::Clear(protobuf::Intelligence_State_ExecutionState_Frame_ResponseState *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) == 0)
  {
    goto LABEL_11;
  }

  if ((v1 & 1) == 0)
  {
LABEL_5:
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v2 = *(this + 3);
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_5;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 2) != 0)
  {
LABEL_6:
    v3 = *(this + 4);
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

LABEL_11:
  v5 = *(this + 8);
  v4 = this + 8;
  v4[34] = 0;
  *(v4 + 16) = 0;
  *(v4 + 2) = 0;
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v4);
  }
}

google::protobuf::internal *protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *this)
{
  v30 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v30, this[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      TagFallback = (v30 + 1);
      LODWORD(v8) = *v30;
      if ((*v30 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      v8 = (v8 + (*TagFallback << 7) - 128);
      if ((*TagFallback & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v30, v8);
      v30 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_3;
      }

      LODWORD(v8) = v23;
LABEL_8:
      v9 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v9 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v20 = *(a1 + 24);
            if (v20 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 24, &google::protobuf::internal::fixed_address_empty_string);
            }

LABEL_38:
            v21 = google::protobuf::internal::InlineGreedyStringParser(v20, TagFallback, this);
LABEL_44:
            v30 = v21;
            if (!v21)
            {
              goto LABEL_54;
            }

            goto LABEL_45;
          }

LABEL_39:
          if (v8)
          {
            v22 = (v8 & 7) == 4;
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            this[10].i32[0] = v8 - 1;
            goto LABEL_3;
          }

          v21 = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), TagFallback, this);
          goto LABEL_44;
        }

        if (v9 != 2 || v8 != 16)
        {
          goto LABEL_39;
        }

        v5 |= 4u;
        v15 = (TagFallback + 1);
        v14 = *TagFallback;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_26;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if ((v16 & 0x80000000) == 0)
        {
          v15 = (TagFallback + 2);
LABEL_26:
          v30 = v15;
          *(a1 + 40) = v14 != 0;
          goto LABEL_45;
        }

        v28 = google::protobuf::internal::VarintParseSlow64(TagFallback, v14);
        v30 = v28;
        *(a1 + 40) = v29 != 0;
        if (!v28)
        {
LABEL_54:
          TagFallback = 0;
          goto LABEL_3;
        }
      }

      else if (v9 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_39;
        }

        v5 |= 8u;
        v18 = (TagFallback + 1);
        v17 = *TagFallback;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if ((v19 & 0x80000000) == 0)
        {
          v18 = (TagFallback + 2);
LABEL_31:
          v30 = v18;
          *(a1 + 41) = v17 != 0;
          goto LABEL_45;
        }

        v24 = google::protobuf::internal::VarintParseSlow64(TagFallback, v17);
        v30 = v24;
        *(a1 + 41) = v25 != 0;
        if (!v24)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v9 == 4)
        {
          if (v8 == 34)
          {
            *(a1 + 16) |= 2u;
            v20 = *(a1 + 32);
            if (v20 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 32, &google::protobuf::internal::fixed_address_empty_string);
            }

            goto LABEL_38;
          }

          goto LABEL_39;
        }

        if (v9 != 5 || v8 != 40)
        {
          goto LABEL_39;
        }

        v5 |= 0x10u;
        v11 = (TagFallback + 1);
        v10 = *TagFallback;
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

        v12 = *v11;
        v10 = (v12 << 7) + v10 - 128;
        if ((v12 & 0x80000000) == 0)
        {
          v11 = (TagFallback + 2);
LABEL_16:
          v30 = v11;
          *(a1 + 42) = v10 != 0;
          goto LABEL_45;
        }

        v26 = google::protobuf::internal::VarintParseSlow64(TagFallback, v10);
        v30 = v26;
        *(a1 + 42) = v27 != 0;
        if (!v26)
        {
          goto LABEL_54;
        }
      }

LABEL_45:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v30, this[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    TagFallback = (v30 + 2);
LABEL_7:
    v30 = TagFallback;
    goto LABEL_8;
  }

LABEL_2:
  TagFallback = v30;
LABEL_3:
  *(a1 + 16) |= v5;
  return TagFallback;
}

unsigned __int8 *protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_State_ExecutionState_Frame_ResponseState *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 3), a2);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 40);
  *v4 = 16;
  v4[1] = v7;
  v4 += 2;
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_11:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v8 = *(this + 41);
  *v4 = 24;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 2) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 4, *(this + 4), v4);
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v9 = *(this + 42);
  *v4 = 40;
  v4[1] = v9;
  v4 += 2;
LABEL_18:
  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return v4;
  }

  v12 = v10 & 0xFFFFFFFFFFFFFFFELL;
  v13 = *(v12 + 23);
  if (v13 < 0)
  {
    v14 = *v12;
    v13 = *(v12 + 8);
  }

  else
  {
    v14 = v12;
  }

  if (*a3 - v4 >= v13)
  {
    v15 = v13;
    memcpy(v4, v14, v13);
    v4 += v15;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v14, v13, v4);
}

uint64_t protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::ByteSizeLong(protobuf::Intelligence_State_ExecutionState_Frame_ResponseState *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v1)
  {
    v4 = *(this + 3);
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v7 = *(this + 4);
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v3 = v2 + ((v1 >> 2) & 2) + ((v1 >> 1) & 2) + ((v1 >> 3) & 2);
LABEL_13:
  v10 = *(this + 1);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v13 < 0)
    {
      v13 = *(v12 + 8);
    }

    v3 += v13;
  }

  *(this + 5) = v3;
  return v3;
}

void protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 12235);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  v5 = a2[1];
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  v6 = *(a2 + 4);
  if ((v6 & 0x1F) != 0)
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
      v9 = this[4];
      *(this + 4) |= 2u;
      v10 = a2[4];
      if (v9 != v10)
      {
        if (v9 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 4), v10);
        }

        std::string::operator=(v9, v10);
      }
    }

    if ((v6 & 4) != 0)
    {
      *(this + 40) = *(a2 + 40);
      if ((v6 & 8) == 0)
      {
LABEL_18:
        if ((v6 & 0x10) == 0)
        {
LABEL_20:
          *(this + 4) |= v6;
          return;
        }

LABEL_19:
        *(this + 42) = *(a2 + 42);
        goto LABEL_20;
      }
    }

    else if ((v6 & 8) == 0)
    {
      goto LABEL_18;
    }

    *(this + 41) = *(a2 + 41);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }
}

void sub_254CED00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::Clear(this);

    protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::MergeFrom(this, a2);
  }
}

void protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::InternalSwap(protobuf::Intelligence_State_ExecutionState_Frame_ResponseState *this, protobuf::Intelligence_State_ExecutionState_Frame_ResponseState *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v26;
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
  v16 = *v12;
  v17 = v14[2];
  *v12 = *v14;
  v12[2] = v17;
  *v14 = v16;
  v14[2] = v15;
LABEL_14:
  v18 = *(this + 4);
  if (v18 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 4) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_20;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 4, 0, &google::protobuf::internal::fixed_address_empty_string);
    v18 = *(this + 4);
  }

  v19 = *(a2 + 4);
  if (v19 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 4, 0, &google::protobuf::internal::fixed_address_empty_string);
    v19 = *(a2 + 4);
  }

  v20 = v18[2];
  v21 = *v18;
  v22 = v19[2];
  *v18 = *v19;
  v18[2] = v22;
  *v19 = v21;
  v19[2] = v20;
LABEL_20:
  v23 = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v23;
  v24 = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v24;
  v25 = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v25;
}

protobuf::Intelligence_State_ExecutionState_Frame *protobuf::Intelligence_State_ExecutionState_Frame::Intelligence_State_ExecutionState_Frame(protobuf::Intelligence_State_ExecutionState_Frame *this)
{
  *(this + 8) = 0u;
  *this = &unk_28671A7B0;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_State_ExecutionState_Frame_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_State_ExecutionState_Frame_intelligence_2eproto);
  }

  return this;
}

void sub_254CED2E4(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v1 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_State_ExecutionState_Frame *protobuf::Intelligence_State_ExecutionState_Frame::Intelligence_State_ExecutionState_Frame(protobuf::Intelligence_State_ExecutionState_Frame *this, const protobuf::Intelligence_State_ExecutionState_Frame *a2)
{
  *this = &unk_28671A7B0;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState_Frame_ResponseState>::TypeHandler>(this + 3, a2 + 24);
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  return this;
}

void sub_254CED390(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v2 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_State_ExecutionState_Frame::~Intelligence_State_ExecutionState_Frame(protobuf::Intelligence_State_ExecutionState_Frame *this)
{
  *this = &unk_28671A7B0;
  v1 = (this + 8);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((this + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
}

{
  *this = &unk_28671A7B0;
  v1 = (this + 8);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((this + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
}

{
  *this = &unk_28671A7B0;
  v1 = (this + 8);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((this + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_State_ExecutionState_Frame::default_instance(protobuf::Intelligence_State_ExecutionState_Frame *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_State_ExecutionState_Frame_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_State_ExecutionState_Frame_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_State_ExecutionState_Frame_default_instance_;
}

void protobuf::Intelligence_State_ExecutionState_Frame::Clear(protobuf::Intelligence_State_ExecutionState_Frame *this)
{
  v2 = *(this + 8);
  if ((v2 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  else if (v2)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::Clear(v4);
      --v2;
    }

    while (v2);
    *(this + 8) = 0;
  }

  v7 = *(this + 8);
  v6 = this + 8;
  *(v6 + 2) = 0;
  if (v7)
  {

    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v6);
  }
}

void sub_254CED5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal *protobuf::Intelligence_State_ExecutionState_Frame::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v28 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v28, *(this + 23));
  result = v28;
  if ((v5 & 1) == 0)
  {
    while (1)
    {
      v7 = (result + 1);
      LODWORD(v8) = *result;
      if ((*result & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = (v8 + (*v7 << 7) - 128);
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      result = google::protobuf::internal::ReadTagFallback(result, v8);
      v28 = result;
      if (!result)
      {
        return result;
      }

      v7 = result;
      LODWORD(v8) = v27;
LABEL_6:
      if (v8 == 10)
      {
        result = (v7 - 1);
        while (1)
        {
          v10 = (result + 1);
          v28 = v10;
          v11 = *(a1 + 40);
          if (!v11)
          {
            break;
          }

          v12 = *(a1 + 32);
          v13 = *v11;
          if (v12 >= *v11)
          {
            if (v13 == *(a1 + 36))
            {
LABEL_19:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v13 + 1);
              v11 = *(a1 + 40);
              v13 = *v11;
            }

            *v11 = v13 + 1;
            v14 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_ExecutionState_Frame_ResponseState>(*(a1 + 24));
            v15 = *(a1 + 32);
            v16 = *(a1 + 40) + 8 * v15;
            *(a1 + 32) = v15 + 1;
            *(v16 + 8) = v14;
            v10 = v28;
            goto LABEL_21;
          }

          *(a1 + 32) = v12 + 1;
          v14 = *&v11[2 * v12 + 2];
LABEL_21:
          v17 = *v10;
          if (*v10 < 0)
          {
            result = google::protobuf::internal::ReadSizeFallback(v10, *v10);
            if (!result)
            {
              return result;
            }

            v18 = result;
            v17 = v19;
          }

          else
          {
            v18 = v10 + 1;
          }

          v20 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v18, v17);
          v21 = *(this + 22);
          v22 = __OFSUB__(v21--, 1);
          *(this + 22) = v21;
          if (v21 < 0 != v22)
          {
            return 0;
          }

          v23 = v20;
          result = protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::_InternalParse(v14, v18, this);
          if (!result)
          {
            return result;
          }

          ++*(this + 22);
          if (*(this + 20))
          {
            return 0;
          }

          v24 = *(this + 7) + v23;
          *(this + 7) = v24;
          v25 = *(this + 1) + (v24 & (v24 >> 31));
          *this = v25;
          v28 = result;
          if (v25 <= result || *result != 10)
          {
            goto LABEL_30;
          }
        }

        v13 = *(a1 + 36);
        goto LABEL_19;
      }

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
        *(this + 20) = v8 - 1;
        return v7;
      }

      result = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), v7, this);
      v28 = result;
      if (!result)
      {
        return result;
      }

LABEL_30:
      v26 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v28, *(this + 23));
      result = v28;
      if (v26)
      {
        return result;
      }
    }

    v7 = (result + 2);
LABEL_5:
    v28 = v7;
    goto LABEL_6;
  }

  return result;
}

unsigned __int8 *protobuf::Intelligence_State_ExecutionState_Frame::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_State_ExecutionState_Frame *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 8);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (a2 >= *a3)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState_Frame_ResponseState>::TypeHandler>(this + 24, i);
      *a2 = 10;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = (a2 + 3);
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
          a2[2] = v11;
          v10 = (a2 + 3);
        }
      }

      else
      {
        a2[1] = v9;
        v10 = (a2 + 2);
      }

      a2 = protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::InternalSerializeWithCachedSizesToArray(v8, v10, a3);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
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

  if (*a3 - a2 >= v17)
  {
    v19 = v17;
    memcpy(a2, v18, v17);
    a2 += v19;
    return a2;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v18, v17, a2);
}

uint64_t protobuf::Intelligence_State_ExecutionState_Frame::ByteSizeLong(protobuf::Intelligence_State_ExecutionState_Frame *this)
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
      v7 = protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 1);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v11 < 0)
    {
      v11 = *(v10 + 8);
    }

    v2 += v11;
  }

  *(this + 5) = v2;
  return v2;
}

void protobuf::Intelligence_State_ExecutionState_Frame::CheckTypeAndMergeFrom(protobuf::Intelligence_State_ExecutionState_Frame *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_State_ExecutionState_Frame::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_State_ExecutionState_Frame::MergeFrom(protobuf::Intelligence_State_ExecutionState_Frame *this, const protobuf::Intelligence_State_ExecutionState_Frame *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 12439);
    v4 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState_Frame_ResponseState>::TypeHandler>(this + 3, a2 + 24);
}

void sub_254CEDB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_State_ExecutionState_Frame::CopyFrom(protobuf::Intelligence_State_ExecutionState_Frame *this, const protobuf::Intelligence_State_ExecutionState_Frame *a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_State_ExecutionState_Frame::Clear(this);

    protobuf::Intelligence_State_ExecutionState_Frame::MergeFrom(this, a2);
  }
}

void protobuf::Intelligence_State_ExecutionState_Frame::InternalSwap(protobuf::Intelligence_State_ExecutionState_Frame *this, protobuf::Intelligence_State_ExecutionState_Frame *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v13;
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
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

LABEL_12:
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
}

protobuf::Intelligence_State_ExecutionState *protobuf::Intelligence_State_ExecutionState::Intelligence_State_ExecutionState(protobuf::Intelligence_State_ExecutionState *this)
{
  *(this + 8) = 0u;
  *this = &unk_28671A840;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_State_ExecutionState_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_State_ExecutionState_intelligence_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 8) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 10) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 11) = 0;
  *(this + 96) = 0;
  return this;
}

void sub_254CEDD60(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v1 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_State_ExecutionState *protobuf::Intelligence_State_ExecutionState::Intelligence_State_ExecutionState(protobuf::Intelligence_State_ExecutionState *this, const protobuf::Intelligence_State_ExecutionState *a2)
{
  *this = &unk_28671A840;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState_Frame>::TypeHandler>(this + 3, a2 + 24);
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

  v12 = *(a2 + 11);
  *(this + 96) = *(a2 + 96);
  *(this + 11) = v12;
  return this;
}

void sub_254CEDEC4(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase((v2 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_State_ExecutionState::~Intelligence_State_ExecutionState(protobuf::Intelligence_State_ExecutionState *this)
{
  *this = &unk_28671A840;
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

  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((this + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_State_ExecutionState::~Intelligence_State_ExecutionState(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_State_ExecutionState::default_instance(protobuf::Intelligence_State_ExecutionState *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_State_ExecutionState_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_State_ExecutionState_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_State_ExecutionState_default_instance_;
}

void protobuf::Intelligence_State_ExecutionState::Clear(protobuf::Intelligence_State_ExecutionState *this)
{
  v2 = *(this + 8);
  if ((v2 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v5 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  else if (v2)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      protobuf::Intelligence_State_ExecutionState_Frame::Clear(v4);
      --v2;
    }

    while (v2);
    *(this + 8) = 0;
  }

  v6 = *(this + 4);
  if ((v6 & 0x1F) != 0)
  {
    if ((v6 & 1) == 0)
    {
      if ((v6 & 2) == 0)
      {
        goto LABEL_10;
      }

LABEL_18:
      v8 = *(this + 7);
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        if ((v6 & 4) != 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
        if ((v6 & 4) != 0)
        {
          goto LABEL_22;
        }
      }

LABEL_11:
      if ((v6 & 8) == 0)
      {
        goto LABEL_12;
      }

LABEL_26:
      v10 = *(this + 9);
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
        if ((v6 & 0x10) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        *v10 = 0;
        *(v10 + 23) = 0;
        if ((v6 & 0x10) == 0)
        {
          goto LABEL_33;
        }
      }

      goto LABEL_30;
    }

    v7 = *(this + 6);
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_10:
    if ((v6 & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v9 = *(this + 8);
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v6 & 8) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v6 & 8) != 0)
      {
        goto LABEL_26;
      }
    }

LABEL_12:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_33;
    }

LABEL_30:
    v11 = *(this + 10);
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

LABEL_33:
  if ((v6 & 0x60) != 0)
  {
    *(this + 96) = 0;
    *(this + 11) = 0;
  }

  v13 = *(this + 8);
  v12 = this + 8;
  *(v12 + 2) = 0;
  if (v13)
  {

    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v12);
  }
}

void sub_254CEE298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *protobuf::Intelligence_State_ExecutionState::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *this)
{
  v38 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v38, this[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      TagFallback = v38 + 1;
      LODWORD(v7) = *v38;
      if ((*v38 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v7 = (v7 + (*TagFallback << 7) - 128);
      if ((*TagFallback & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v38, v7);
      v38 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_75;
      }

      LODWORD(v7) = v11;
LABEL_7:
      v8 = v7 >> 3;
      if (v7 >> 3 > 4)
      {
        if (v7 >> 3 <= 6)
        {
          if (v8 != 5)
          {
            if (v8 == 6 && v7 == 50)
            {
              *(a1 + 16) |= 8u;
              v10 = *(a1 + 72);
              if (v10 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 72, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_38;
            }

            goto LABEL_68;
          }

          if (v7 != 42)
          {
LABEL_68:
            if (v7)
            {
              v34 = (v7 & 7) == 4;
            }

            else
            {
              v34 = 1;
            }

            if (v34)
            {
              this[10].i32[0] = v7 - 1;
              goto LABEL_75;
            }

            v12 = google::protobuf::internal::UnknownFieldParse(v7, (a1 + 8), TagFallback, this);
            goto LABEL_39;
          }

          v13 = (TagFallback - 1);
          while (2)
          {
            v14 = (v13 + 1);
            v38 = v14;
            v15 = *(a1 + 40);
            if (v15)
            {
              v16 = *(a1 + 32);
              v17 = *v15;
              if (v16 < *v15)
              {
                *(a1 + 32) = v16 + 1;
                v18 = *&v15[2 * v16 + 2];
LABEL_51:
                v21 = *v14;
                if (*v14 < 0)
                {
                  SizeFallback = google::protobuf::internal::ReadSizeFallback(v14, *v14);
                  if (!SizeFallback)
                  {
                    goto LABEL_74;
                  }

                  v22 = SizeFallback;
                  v21 = v24;
                }

                else
                {
                  v22 = v14 + 1;
                }

                v25 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v22, v21);
                v26 = this[11].i32[0];
                v27 = __OFSUB__(v26--, 1);
                this[11].i32[0] = v26;
                if (v26 < 0 != v27)
                {
                  goto LABEL_74;
                }

                v28 = v25;
                v13 = protobuf::Intelligence_State_ExecutionState_Frame::_InternalParse(v18, v22, this);
                if (!v13)
                {
                  goto LABEL_74;
                }

                ++this[11].i32[0];
                if (this[10].i32[0])
                {
                  goto LABEL_74;
                }

                v29 = this[3].i32[1] + v28;
                this[3].i32[1] = v29;
                v30 = (*&this[1] + (v29 & (v29 >> 31)));
                *this = v30;
                v38 = v13;
                if (*&v30 <= v13 || *v13 != 42)
                {
                  goto LABEL_40;
                }

                continue;
              }

              if (v17 == *(a1 + 36))
              {
LABEL_49:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v17 + 1);
                v15 = *(a1 + 40);
                v17 = *v15;
              }

              *v15 = v17 + 1;
              v18 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_ExecutionState_Frame>(*(a1 + 24));
              v19 = *(a1 + 32);
              v20 = *(a1 + 40) + 8 * v19;
              *(a1 + 32) = v19 + 1;
              *(v20 + 8) = v18;
              v14 = v38;
              goto LABEL_51;
            }

            break;
          }

          v17 = *(a1 + 36);
          goto LABEL_49;
        }

        if (v8 != 7)
        {
          if (v8 == 8 && v7 == 66)
          {
            *(a1 + 16) |= 0x10u;
            v10 = *(a1 + 80);
            if (v10 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 80, &google::protobuf::internal::fixed_address_empty_string);
            }

LABEL_38:
            v12 = google::protobuf::internal::InlineGreedyStringParser(v10, TagFallback, this);
LABEL_39:
            v38 = v12;
            if (!v12)
            {
              goto LABEL_74;
            }

            goto LABEL_40;
          }

          goto LABEL_68;
        }

        if (v7 != 57)
        {
          goto LABEL_68;
        }

        v5 |= 0x20u;
        *(a1 + 88) = *TagFallback;
        v38 = (TagFallback + 8);
      }

      else
      {
        if (v7 >> 3 <= 2)
        {
          if (v8 == 1)
          {
            if (v7 == 10)
            {
              *(a1 + 16) |= 1u;
              v10 = *(a1 + 48);
              if (v10 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 48, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_38;
            }
          }

          else if (v8 == 2 && v7 == 18)
          {
            *(a1 + 16) |= 2u;
            v10 = *(a1 + 56);
            if (v10 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 56, &google::protobuf::internal::fixed_address_empty_string);
            }

            goto LABEL_38;
          }

          goto LABEL_68;
        }

        if (v8 != 3)
        {
          if (v8 == 4 && v7 == 34)
          {
            *(a1 + 16) |= 4u;
            v10 = *(a1 + 64);
            if (v10 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 64, &google::protobuf::internal::fixed_address_empty_string);
            }

            goto LABEL_38;
          }

          goto LABEL_68;
        }

        if (v7 != 24)
        {
          goto LABEL_68;
        }

        v5 |= 0x40u;
        v32 = (TagFallback + 1);
        v31 = *TagFallback;
        if ((v31 & 0x8000000000000000) == 0)
        {
          goto LABEL_65;
        }

        v33 = *v32;
        v31 = (v33 << 7) + v31 - 128;
        if ((v33 & 0x80000000) == 0)
        {
          v32 = (TagFallback + 2);
LABEL_65:
          v38 = v32;
          *(a1 + 96) = v31 != 0;
          goto LABEL_40;
        }

        v35 = google::protobuf::internal::VarintParseSlow64(TagFallback, v31);
        v38 = v35;
        *(a1 + 96) = v36 != 0;
        if (!v35)
        {
LABEL_74:
          TagFallback = 0;
          goto LABEL_75;
        }
      }

LABEL_40:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v38, this[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    TagFallback = v38 + 2;
LABEL_6:
    v38 = TagFallback;
    goto LABEL_7;
  }

LABEL_2:
  TagFallback = v38;
LABEL_75:
  *(a1 + 16) |= v5;
  return TagFallback;
}

unsigned __int8 *protobuf::Intelligence_State_ExecutionState::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_State_ExecutionState *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 6), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, *(this + 7), v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_26:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(this + 96);
  *v4 = 24;
  v4[1] = v17;
  v4 += 2;
  if ((v6 & 4) != 0)
  {
LABEL_5:
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 4, *(this + 8), v4);
  }

LABEL_6:
  v7 = *(this + 8);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState_Frame>::TypeHandler>(this + 24, i);
      *v4 = 42;
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

      v4 = protobuf::Intelligence_State_ExecutionState_Frame::InternalSerializeWithCachedSizesToArray(v9, v11, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 6, *(this + 9), v4);
    if ((v6 & 0x20) == 0)
    {
LABEL_20:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_20;
  }

  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v18 = *(this + 11);
  *v4 = 57;
  *(v4 + 1) = v18;
  v4 += 9;
  if ((v6 & 0x10) != 0)
  {
LABEL_21:
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 8, *(this + 10), v4);
  }

LABEL_22:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return v4;
  }

  v19 = v15 & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(v19 + 23);
  if (v20 < 0)
  {
    v21 = *v19;
    v20 = *(v19 + 8);
  }

  else
  {
    v21 = v19;
  }

  if (*a3 - v4 >= v20)
  {
    v22 = v20;
    memcpy(v4, v21, v20);
    v4 += v22;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v21, v20, v4);
}

uint64_t protobuf::Intelligence_State_ExecutionState::ByteSizeLong(protobuf::Intelligence_State_ExecutionState *this)
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
      v7 = protobuf::Intelligence_State_ExecutionState_Frame::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 4);
  if ((v8 & 0x7F) == 0)
  {
    goto LABEL_21;
  }

  if (v8)
  {
    v15 = *(this + 6);
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_29;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v18 = *(this + 7);
  v19 = *(v18 + 23);
  v20 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v20 = v19;
  }

  v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_32:
    v24 = *(this + 9);
    v25 = *(v24 + 23);
    v26 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v26 = v25;
    }

    v2 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_29:
  v21 = *(this + 8);
  v22 = *(v21 + 23);
  v23 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v23 = v22;
  }

  v2 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) != 0)
  {
    goto LABEL_32;
  }

LABEL_14:
  if ((v8 & 0x10) != 0)
  {
LABEL_15:
    v9 = *(this + 10);
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_18:
  v12 = v2 + 9;
  if ((v8 & 0x20) == 0)
  {
    v12 = v2;
  }

  v2 = v12 + ((v8 >> 5) & 2);
LABEL_21:
  v13 = *(this + 1);
  if (v13)
  {
    v27 = v13 & 0xFFFFFFFFFFFFFFFELL;
    v28 = *((v13 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v28 < 0)
    {
      v28 = *(v27 + 8);
    }

    v2 += v28;
  }

  *(this + 5) = v2;
  return v2;
}

void protobuf::Intelligence_State_ExecutionState::CheckTypeAndMergeFrom(protobuf::Intelligence_State_ExecutionState *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_State_ExecutionState::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_State_ExecutionState::MergeFrom(protobuf::Intelligence_State_ExecutionState *this, const protobuf::Intelligence_State_ExecutionState *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 12841);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState_Frame>::TypeHandler>(this + 3, a2 + 24);
  v6 = *(a2 + 4);
  if ((v6 & 0x7F) != 0)
  {
    if (v6)
    {
      v7 = *(this + 6);
      *(this + 4) |= 1u;
      v8 = *(a2 + 6);
      if (v7 != v8)
      {
        if (v7 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 48, v8);
        }

        std::string::operator=(v7, v8);
      }
    }

    if ((v6 & 2) != 0)
    {
      v9 = *(this + 7);
      *(this + 4) |= 2u;
      v10 = *(a2 + 7);
      if (v9 != v10)
      {
        if (v9 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 56, v10);
        }

        std::string::operator=(v9, v10);
      }
    }

    if ((v6 & 4) != 0)
    {
      v11 = *(this + 8);
      *(this + 4) |= 4u;
      v12 = *(a2 + 8);
      if (v11 != v12)
      {
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 64, v12);
        }

        std::string::operator=(v11, v12);
      }
    }

    if ((v6 & 8) != 0)
    {
      v13 = *(this + 9);
      *(this + 4) |= 8u;
      v14 = *(a2 + 9);
      if (v13 != v14)
      {
        if (v13 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 72, v14);
        }

        std::string::operator=(v13, v14);
      }
    }

    if ((v6 & 0x10) != 0)
    {
      v15 = *(this + 10);
      *(this + 4) |= 0x10u;
      v16 = *(a2 + 10);
      if (v15 != v16)
      {
        if (v15 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 80, v16);
        }

        std::string::operator=(v15, v16);
      }
    }

    if ((v6 & 0x20) != 0)
    {
      *(this + 11) = *(a2 + 11);
    }

    if ((v6 & 0x40) != 0)
    {
      *(this + 96) = *(a2 + 96);
    }

    *(this + 4) |= v6;
  }
}

void sub_254CEEE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_State_ExecutionState::CopyFrom(protobuf::Intelligence_State_ExecutionState *this, const protobuf::Intelligence_State_ExecutionState *a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_State_ExecutionState::Clear(this);

    protobuf::Intelligence_State_ExecutionState::MergeFrom(this, a2);
  }
}

double protobuf::Intelligence_State_ExecutionState::InternalSwap(protobuf::Intelligence_State_ExecutionState *this, protobuf::Intelligence_State_ExecutionState *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v40;
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
  v13 = *(this + 6);
  if (v13 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 6) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_14;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 6, 0, &google::protobuf::internal::fixed_address_empty_string);
    v13 = *(this + 6);
  }

  v14 = *(a2 + 6);
  if (v14 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 6, 0, &google::protobuf::internal::fixed_address_empty_string);
    v14 = *(a2 + 6);
  }

  v15 = v13[2];
  v16 = *v13;
  v17 = v14[2];
  *v13 = *v14;
  v13[2] = v17;
  *v14 = v16;
  v14[2] = v15;
LABEL_14:
  v18 = *(this + 7);
  if (v18 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 7) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_20;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 7, 0, &google::protobuf::internal::fixed_address_empty_string);
    v18 = *(this + 7);
  }

  v19 = *(a2 + 7);
  if (v19 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 7, 0, &google::protobuf::internal::fixed_address_empty_string);
    v19 = *(a2 + 7);
  }

  v20 = v18[2];
  v21 = *v18;
  v22 = v19[2];
  *v18 = *v19;
  v18[2] = v22;
  *v19 = v21;
  v19[2] = v20;
LABEL_20:
  v23 = *(this + 8);
  if (v23 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 8) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_26;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 8, 0, &google::protobuf::internal::fixed_address_empty_string);
    v23 = *(this + 8);
  }

  v24 = *(a2 + 8);
  if (v24 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 8, 0, &google::protobuf::internal::fixed_address_empty_string);
    v24 = *(a2 + 8);
  }

  v25 = v23[2];
  v26 = *v23;
  v27 = v24[2];
  *v23 = *v24;
  v23[2] = v27;
  *v24 = v26;
  v24[2] = v25;
LABEL_26:
  v28 = *(this + 9);
  if (v28 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 9) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_32;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 9, 0, &google::protobuf::internal::fixed_address_empty_string);
    v28 = *(this + 9);
  }

  v29 = *(a2 + 9);
  if (v29 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 9, 0, &google::protobuf::internal::fixed_address_empty_string);
    v29 = *(a2 + 9);
  }

  v30 = v28[2];
  v31 = *v28;
  v32 = v29[2];
  *v28 = *v29;
  v28[2] = v32;
  *v29 = v31;
  v29[2] = v30;
LABEL_32:
  v33 = *(this + 10);
  if (v33 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 10) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_38;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 10, 0, &google::protobuf::internal::fixed_address_empty_string);
    v33 = *(this + 10);
  }

  v34 = *(a2 + 10);
  if (v34 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 10, 0, &google::protobuf::internal::fixed_address_empty_string);
    v34 = *(a2 + 10);
  }

  v35 = v33[2];
  v36 = *v33;
  v37 = v34[2];
  *v33 = *v34;
  v33[2] = v37;
  *v34 = v36;
  v34[2] = v35;
LABEL_38:
  result = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = result;
  v39 = *(this + 96);
  *(this + 96) = *(a2 + 96);
  *(a2 + 96) = v39;
  return result;
}

protobuf::Intelligence_State *protobuf::Intelligence_State::Intelligence_State(protobuf::Intelligence_State *this)
{
  *this = &unk_28671A8D0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 25) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_State_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_State_intelligence_2eproto);
  }

  *(this + 26) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  return this;
}

void sub_254CEF304(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v1 + 184));
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v1 + 160));
  google::protobuf::RepeatedField<int>::~RepeatedField(v1 + 144);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v1 + 120));
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v1 + 96));
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v1 + 72));
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v1 + 48));
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v1 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_State *protobuf::Intelligence_State::Intelligence_State(protobuf::Intelligence_State *this, const protobuf::Intelligence_State *a2)
{
  *this = &unk_28671A8D0;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Memory>::TypeHandler>(this + 3, a2 + 24);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Memory>::TypeHandler>(this + 6, a2 + 48);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Response>::TypeHandler>(this + 9, a2 + 72);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState>::TypeHandler>(this + 12, a2 + 96);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_InputGroup>::TypeHandler>(this + 15, a2 + 120);
  google::protobuf::RepeatedField<int>::RepeatedField(this + 144, a2 + 36);
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Timer>::TypeHandler>(this + 20, a2 + 160);
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Event>::TypeHandler>(this + 23, a2 + 184);
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 26) = &google::protobuf::internal::fixed_address_empty_string;
  if (*(a2 + 16))
  {
    v6 = *(a2 + 26);
    if (v6 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 208, v6);
    }
  }

  v7 = *(a2 + 216);
  *(this + 29) = *(a2 + 29);
  *(this + 216) = v7;
  return this;
}

void sub_254CEF4D4(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField(v8);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField(v7);
  google::protobuf::RepeatedField<int>::~RepeatedField(v2 + 144);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField(v6);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField(v5);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField(v4);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField(v3);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v2 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_State::~Intelligence_State(protobuf::Intelligence_State *this)
{
  *this = &unk_28671A8D0;
  v2 = *(this + 26);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((this + 184));
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((this + 160));
  google::protobuf::RepeatedField<int>::~RepeatedField(this + 144);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((this + 120));
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((this + 96));
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((this + 72));
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((this + 48));
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((this + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_State::~Intelligence_State(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_State::default_instance(protobuf::Intelligence_State *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_State_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_State_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_State_default_instance_;
}

void protobuf::Intelligence_State::Clear(protobuf::Intelligence_State *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Memory>::TypeHandler>(this + 24);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Memory>::TypeHandler>(this + 48);
  v2 = *(this + 20);
  if ((v2 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v5 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v26, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
  }

  else if (v2)
  {
    v3 = (*(this + 11) + 8);
    do
    {
      v4 = *v3++;
      protobuf::Intelligence_State_Response::Clear(v4);
      --v2;
    }

    while (v2);
    *(this + 20) = 0;
  }

  v6 = *(this + 26);
  if ((v6 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v9 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v26, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
  }

  else if (v6)
  {
    v7 = (*(this + 14) + 8);
    do
    {
      v8 = *v7++;
      protobuf::Intelligence_State_ExecutionState::Clear(v8);
      --v6;
    }

    while (v6);
    *(this + 26) = 0;
  }

  v10 = *(this + 32);
  if ((v10 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v13 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v26, &v13->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
  }

  else if (v10)
  {
    v11 = (*(this + 17) + 8);
    do
    {
      v12 = *v11++;
      protobuf::Intelligence_State_InputGroup::Clear(v12);
      --v10;
    }

    while (v10);
    *(this + 32) = 0;
  }

  *(this + 36) = 0;
  v14 = *(this + 42);
  if ((v14 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v17 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v26, &v17->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
  }

  else if (v14)
  {
    v15 = (*(this + 22) + 8);
    do
    {
      v16 = *v15++;
      protobuf::Intelligence_State_Timer::Clear(v16);
      --v14;
    }

    while (v14);
    *(this + 42) = 0;
  }

  v18 = *(this + 48);
  if ((v18 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v21 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v26, &v21->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
  }

  else if (v18)
  {
    v19 = (*(this + 25) + 8);
    do
    {
      v20 = *v19++;
      protobuf::Intelligence_State_Event::Clear(v20);
      --v18;
    }

    while (v18);
    *(this + 48) = 0;
  }

  v22 = *(this + 4);
  if (v22)
  {
    v23 = *(this + 26);
    if (*(v23 + 23) < 0)
    {
      **v23 = 0;
      *(v23 + 8) = 0;
    }

    else
    {
      *v23 = 0;
      *(v23 + 23) = 0;
    }
  }

  if ((v22 & 0xE) != 0)
  {
    *(this + 27) = 0;
    *(this + 28) = 0;
    *(this + 29) = 0;
  }

  v25 = *(this + 8);
  v24 = this + 8;
  *(v24 + 2) = 0;
  if (v25)
  {

    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v24);
  }
}

void sub_254CEF9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal *protobuf::Intelligence_State::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v129 = a2;
  v5 = 0;
  if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v129, *(this + 23)))
  {
LABEL_2:
    TagFallback = v129;
    goto LABEL_182;
  }

  while (1)
  {
    TagFallback = (v129 + 1);
    LODWORD(v7) = *v129;
    if ((*v129 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = (v7 + (*TagFallback << 7) - 128);
    if ((*TagFallback & 0x80000000) == 0)
    {
      TagFallback = (v129 + 2);
LABEL_6:
      v129 = TagFallback;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v129, v7);
    v129 = TagFallback;
    if (!TagFallback)
    {
      goto LABEL_182;
    }

    LODWORD(v7) = v79;
LABEL_7:
    v8 = v7 >> 3;
    if (v7 >> 3 <= 6)
    {
      if (v7 >> 3 <= 3)
      {
        if (v8 != 1)
        {
          if (v8 != 2)
          {
            if (v8 != 3 || v7 != 26)
            {
              goto LABEL_173;
            }

            v10 = TagFallback - 1;
            while (1)
            {
              v11 = (v10 + 1);
              v129 = v11;
              v12 = *(a1 + 88);
              if (!v12)
              {
                break;
              }

              v13 = *(a1 + 80);
              v14 = *v12;
              if (v13 < *v12)
              {
                *(a1 + 80) = v13 + 1;
                v15 = *&v12[2 * v13 + 2];
                goto LABEL_24;
              }

              if (v14 == *(a1 + 84))
              {
                goto LABEL_22;
              }

LABEL_23:
              *v12 = v14 + 1;
              v15 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_Response>(*(a1 + 72));
              v16 = *(a1 + 80);
              v17 = *(a1 + 88) + 8 * v16;
              *(a1 + 80) = v16 + 1;
              *(v17 + 8) = v15;
              v11 = v129;
LABEL_24:
              v18 = *v11;
              if (*v11 < 0)
              {
                SizeFallback = google::protobuf::internal::ReadSizeFallback(v11, *v11);
                if (!SizeFallback)
                {
                  goto LABEL_181;
                }

                v19 = SizeFallback;
                v18 = v21;
              }

              else
              {
                v19 = v11 + 1;
              }

              v22 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v19, v18);
              v23 = *(this + 22);
              v24 = __OFSUB__(v23--, 1);
              *(this + 22) = v23;
              if (v23 < 0 != v24)
              {
                goto LABEL_181;
              }

              v25 = v22;
              v10 = protobuf::Intelligence_State_Response::_InternalParse(v15, v19, this);
              if (!v10)
              {
                goto LABEL_181;
              }

              ++*(this + 22);
              if (*(this + 20))
              {
                goto LABEL_181;
              }

              v26 = *(this + 7) + v25;
              *(this + 7) = v26;
              v27 = *(this + 1) + (v26 & (v26 >> 31));
              *this = v27;
              v129 = v10;
              if (v27 <= v10 || *v10 != 26)
              {
                goto LABEL_179;
              }
            }

            v14 = *(a1 + 84);
LABEL_22:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v14 + 1);
            v12 = *(a1 + 88);
            v14 = *v12;
            goto LABEL_23;
          }

          if (v7 == 18)
          {
            v115 = TagFallback - 1;
            while (1)
            {
              v116 = (v115 + 1);
              v129 = (v115 + 1);
              v117 = *(a1 + 64);
              if (!v117)
              {
                break;
              }

              v118 = *(a1 + 56);
              v119 = *v117;
              if (v118 >= *v117)
              {
                if (v119 == *(a1 + 60))
                {
LABEL_156:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v119 + 1);
                  v117 = *(a1 + 64);
                  v119 = *v117;
                }

                *v117 = v119 + 1;
                v120 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_Memory>(*(a1 + 48));
                v121 = *(a1 + 56);
                v122 = *(a1 + 64) + 8 * v121;
                *(a1 + 56) = v121 + 1;
                *(v122 + 8) = v120;
                v116 = v129;
                goto LABEL_158;
              }

              *(a1 + 56) = v118 + 1;
              v120 = *&v117[2 * v118 + 2];
LABEL_158:
              v115 = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_State_Memory>(this, v120, v116);
              v129 = v115;
              if (!v115)
              {
                goto LABEL_181;
              }

              if (*this <= v115 || *v115 != 18)
              {
                goto LABEL_179;
              }
            }

            v119 = *(a1 + 60);
            goto LABEL_156;
          }

LABEL_173:
          if (v7)
          {
            v127 = (v7 & 7) == 4;
          }

          else
          {
            v127 = 1;
          }

          if (v127)
          {
            *(this + 20) = v7 - 1;
            goto LABEL_182;
          }

          v125 = google::protobuf::internal::UnknownFieldParse(v7, (a1 + 8), TagFallback, this);
          goto LABEL_178;
        }

        if (v7 != 10)
        {
          goto LABEL_173;
        }

        v80 = TagFallback - 1;
        while (1)
        {
          v81 = (v80 + 1);
          v129 = (v80 + 1);
          v82 = *(a1 + 40);
          if (!v82)
          {
            break;
          }

          v83 = *(a1 + 32);
          v84 = *v82;
          if (v83 >= *v82)
          {
            if (v84 == *(a1 + 36))
            {
LABEL_110:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v84 + 1);
              v82 = *(a1 + 40);
              v84 = *v82;
            }

            *v82 = v84 + 1;
            v85 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_Memory>(*(a1 + 24));
            v86 = *(a1 + 32);
            v87 = *(a1 + 40) + 8 * v86;
            *(a1 + 32) = v86 + 1;
            *(v87 + 8) = v85;
            v81 = v129;
            goto LABEL_112;
          }

          *(a1 + 32) = v83 + 1;
          v85 = *&v82[2 * v83 + 2];
LABEL_112:
          v80 = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_State_Memory>(this, v85, v81);
          v129 = v80;
          if (!v80)
          {
            goto LABEL_181;
          }

          if (*this <= v80 || *v80 != 10)
          {
            goto LABEL_179;
          }
        }

        v84 = *(a1 + 36);
        goto LABEL_110;
      }

      if (v8 != 4)
      {
        if (v8 != 5)
        {
          if (v8 != 6 || v7 != 50)
          {
            goto LABEL_173;
          }

          v45 = (TagFallback - 1);
          while (1)
          {
            v46 = (v45 + 1);
            v129 = v46;
            v47 = *(a1 + 136);
            if (!v47)
            {
              break;
            }

            v48 = *(a1 + 128);
            v49 = *v47;
            if (v48 < *v47)
            {
              *(a1 + 128) = v48 + 1;
              v50 = *&v47[2 * v48 + 2];
              goto LABEL_69;
            }

            if (v49 == *(a1 + 132))
            {
              goto LABEL_67;
            }

LABEL_68:
            *v47 = v49 + 1;
            v50 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_InputGroup>(*(a1 + 120));
            v51 = *(a1 + 128);
            v52 = *(a1 + 136) + 8 * v51;
            *(a1 + 128) = v51 + 1;
            *(v52 + 8) = v50;
            v46 = v129;
LABEL_69:
            v53 = *v46;
            if (*v46 < 0)
            {
              v55 = google::protobuf::internal::ReadSizeFallback(v46, *v46);
              if (!v55)
              {
                goto LABEL_181;
              }

              v54 = v55;
              v53 = v56;
            }

            else
            {
              v54 = v46 + 1;
            }

            v57 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v54, v53);
            v58 = *(this + 22);
            v24 = __OFSUB__(v58--, 1);
            *(this + 22) = v58;
            if (v58 < 0 != v24)
            {
              goto LABEL_181;
            }

            v59 = v57;
            v45 = protobuf::Intelligence_State_InputGroup::_InternalParse(v50, v54, this);
            if (!v45)
            {
              goto LABEL_181;
            }

            ++*(this + 22);
            if (*(this + 20))
            {
              goto LABEL_181;
            }

            v60 = *(this + 7) + v59;
            *(this + 7) = v60;
            v61 = *(this + 1) + (v60 & (v60 >> 31));
            *this = v61;
            v129 = v45;
            if (v61 <= v45 || *v45 != 50)
            {
              goto LABEL_179;
            }
          }

          v49 = *(a1 + 132);
LABEL_67:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120), v49 + 1);
          v47 = *(a1 + 136);
          v49 = *v47;
          goto LABEL_68;
        }

        if (v7 != 42)
        {
          goto LABEL_173;
        }

        *(a1 + 16) |= 1u;
        v124 = *(a1 + 208);
        if (v124 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 208, &google::protobuf::internal::fixed_address_empty_string);
        }

        v125 = google::protobuf::internal::InlineGreedyStringParser(v124, TagFallback, this);
LABEL_178:
        v129 = v125;
        if (!v125)
        {
          goto LABEL_181;
        }

        goto LABEL_179;
      }

      if (v7 != 34)
      {
        goto LABEL_173;
      }

      v96 = TagFallback - 1;
      while (1)
      {
        v97 = (v96 + 1);
        v129 = v97;
        v98 = *(a1 + 112);
        if (!v98)
        {
          break;
        }

        v99 = *(a1 + 104);
        v100 = *v98;
        if (v99 < *v98)
        {
          *(a1 + 104) = v99 + 1;
          v101 = *&v98[2 * v99 + 2];
          goto LABEL_137;
        }

        if (v100 == *(a1 + 108))
        {
          goto LABEL_135;
        }

LABEL_136:
        *v98 = v100 + 1;
        v101 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_ExecutionState>(*(a1 + 96));
        v102 = *(a1 + 104);
        v103 = *(a1 + 112) + 8 * v102;
        *(a1 + 104) = v102 + 1;
        *(v103 + 8) = v101;
        v97 = v129;
LABEL_137:
        v104 = *v97;
        if (*v97 < 0)
        {
          v106 = google::protobuf::internal::ReadSizeFallback(v97, *v97);
          if (!v106)
          {
            goto LABEL_181;
          }

          v105 = v106;
          v104 = v107;
        }

        else
        {
          v105 = v97 + 1;
        }

        v108 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v105, v104);
        v109 = *(this + 22);
        v24 = __OFSUB__(v109--, 1);
        *(this + 22) = v109;
        if (v109 < 0 != v24)
        {
          goto LABEL_181;
        }

        v110 = v108;
        v96 = protobuf::Intelligence_State_ExecutionState::_InternalParse(v101, v105, this);
        if (!v96)
        {
          goto LABEL_181;
        }

        ++*(this + 22);
        if (*(this + 20))
        {
          goto LABEL_181;
        }

        v111 = *(this + 7) + v110;
        *(this + 7) = v111;
        v112 = *(this + 1) + (v111 & (v111 >> 31));
        *this = v112;
        v129 = v96;
        if (v112 <= v96 || *v96 != 34)
        {
          goto LABEL_179;
        }
      }

      v100 = *(a1 + 108);
LABEL_135:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96), v100 + 1);
      v98 = *(a1 + 112);
      v100 = *v98;
      goto LABEL_136;
    }

    if (v7 >> 3 > 0xB)
    {
      if (v8 == 12)
      {
        if (v7 != 97)
        {
          goto LABEL_173;
        }

        v114 = *TagFallback;
        v113 = (TagFallback + 8);
        v5 |= 4u;
        *(a1 + 224) = v114;
      }

      else
      {
        if (v8 != 13)
        {
          if (v8 != 14 || v7 != 114)
          {
            goto LABEL_173;
          }

          v62 = TagFallback - 1;
          while (2)
          {
            v63 = (v62 + 1);
            v129 = v63;
            v64 = *(a1 + 200);
            if (v64)
            {
              v65 = *(a1 + 192);
              v66 = *v64;
              if (v65 < *v64)
              {
                *(a1 + 192) = v65 + 1;
                v67 = *&v64[2 * v65 + 2];
LABEL_91:
                v70 = *v63;
                if (*v63 < 0)
                {
                  v72 = google::protobuf::internal::ReadSizeFallback(v63, *v63);
                  if (!v72)
                  {
                    goto LABEL_181;
                  }

                  v71 = v72;
                  v70 = v73;
                }

                else
                {
                  v71 = v63 + 1;
                }

                v74 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v71, v70);
                v75 = *(this + 22);
                v24 = __OFSUB__(v75--, 1);
                *(this + 22) = v75;
                if (v75 < 0 != v24)
                {
                  goto LABEL_181;
                }

                v76 = v74;
                v62 = protobuf::Intelligence_State_Event::_InternalParse(v67, v71, this);
                if (!v62)
                {
                  goto LABEL_181;
                }

                ++*(this + 22);
                if (*(this + 20))
                {
                  goto LABEL_181;
                }

                v77 = *(this + 7) + v76;
                *(this + 7) = v77;
                v78 = *(this + 1) + (v77 & (v77 >> 31));
                *this = v78;
                v129 = v62;
                if (v78 <= v62 || *v62 != 114)
                {
                  goto LABEL_179;
                }

                continue;
              }

              if (v66 == *(a1 + 196))
              {
LABEL_89:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 184), v66 + 1);
                v64 = *(a1 + 200);
                v66 = *v64;
              }

              *v64 = v66 + 1;
              v67 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_Event>(*(a1 + 184));
              v68 = *(a1 + 192);
              v69 = *(a1 + 200) + 8 * v68;
              *(a1 + 192) = v68 + 1;
              *(v69 + 8) = v67;
              v63 = v129;
              goto LABEL_91;
            }

            break;
          }

          v66 = *(a1 + 196);
          goto LABEL_89;
        }

        if (v7 != 105)
        {
          goto LABEL_173;
        }

        v126 = *TagFallback;
        v113 = (TagFallback + 8);
        v5 |= 8u;
        *(a1 + 232) = v126;
      }

      goto LABEL_170;
    }

    if (v8 == 7)
    {
      break;
    }

    if (v8 != 9)
    {
      if (v8 != 10 || v7 != 82)
      {
        goto LABEL_173;
      }

      v28 = TagFallback - 1;
      while (2)
      {
        v29 = (v28 + 1);
        v129 = v29;
        v30 = *(a1 + 176);
        if (v30)
        {
          v31 = *(a1 + 168);
          v32 = *v30;
          if (v31 < *v30)
          {
            *(a1 + 168) = v31 + 1;
            v33 = *&v30[2 * v31 + 2];
LABEL_47:
            v36 = *v29;
            if (*v29 < 0)
            {
              v38 = google::protobuf::internal::ReadSizeFallback(v29, *v29);
              if (!v38)
              {
                goto LABEL_181;
              }

              v37 = v38;
              v36 = v39;
            }

            else
            {
              v37 = v29 + 1;
            }

            v40 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v37, v36);
            v41 = *(this + 22);
            v24 = __OFSUB__(v41--, 1);
            *(this + 22) = v41;
            if (v41 < 0 != v24)
            {
              goto LABEL_181;
            }

            v42 = v40;
            v28 = protobuf::Intelligence_State_Timer::_InternalParse(v33, v37, this);
            if (!v28)
            {
              goto LABEL_181;
            }

            ++*(this + 22);
            if (*(this + 20))
            {
              goto LABEL_181;
            }

            v43 = *(this + 7) + v42;
            *(this + 7) = v43;
            v44 = *(this + 1) + (v43 & (v43 >> 31));
            *this = v44;
            v129 = v28;
            if (v44 <= v28 || *v28 != 82)
            {
              goto LABEL_179;
            }

            continue;
          }

          if (v32 == *(a1 + 172))
          {
LABEL_45:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 160), v32 + 1);
            v30 = *(a1 + 176);
            v32 = *v30;
          }

          *v30 = v32 + 1;
          v33 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_Timer>(*(a1 + 160));
          v34 = *(a1 + 168);
          v35 = *(a1 + 176) + 8 * v34;
          *(a1 + 168) = v34 + 1;
          *(v35 + 8) = v33;
          v29 = v129;
          goto LABEL_47;
        }

        break;
      }

      v32 = *(a1 + 172);
      goto LABEL_45;
    }

    if (v7 != 73)
    {
      goto LABEL_173;
    }

    v123 = *TagFallback;
    v113 = (TagFallback + 8);
    v5 |= 2u;
    *(a1 + 216) = v123;
LABEL_170:
    v129 = v113;
LABEL_179:
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v129, *(this + 23)))
    {
      goto LABEL_2;
    }
  }

  if (v7 != 56)
  {
    if (v7 != 58)
    {
      goto LABEL_173;
    }

    v125 = google::protobuf::internal::PackedInt32Parser((a1 + 144), TagFallback, this);
    goto LABEL_178;
  }

  v88 = (TagFallback - 1);
  while (1)
  {
    v129 = (v88 + 1);
    v89 = *(v88 + 1);
    v90 = (v88 + 2);
    if (v89 < 0)
    {
      v91 = (*v90 << 7) + v89;
      LODWORD(v89) = v91 - 128;
      if (*v90 < 0)
      {
        v90 = google::protobuf::internal::VarintParseSlow64((v88 + 1), (v91 - 128));
        LODWORD(v89) = v92;
      }

      else
      {
        v90 = (v88 + 3);
      }
    }

    v129 = v90;
    v93 = *(a1 + 144);
    if (v93 == *(a1 + 148))
    {
      google::protobuf::RepeatedField<int>::Reserve((a1 + 144), v93 + 1);
    }

    v94 = google::protobuf::RepeatedField<int>::elements(a1 + 144);
    v95 = *(a1 + 144);
    *(a1 + 144) = v95 + 1;
    *(v94 + 4 * v95) = v89;
    v88 = v129;
    if (!v129)
    {
      break;
    }

    if (*this <= v129 || *v129 != 56)
    {
      goto LABEL_179;
    }
  }

LABEL_181:
  TagFallback = 0;
LABEL_182:
  *(a1 + 16) |= v5;
  return TagFallback;
}

char *google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_State_Memory>(google::protobuf::internal::EpsCopyInputStream *this, uint64_t a2, google::protobuf::internal *a3)
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
  result = protobuf::Intelligence_State_Memory::_InternalParse(a2, v8, this);
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

unsigned __int8 *protobuf::Intelligence_State::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_State *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 8);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (a2 >= *a3)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Memory>::TypeHandler>(this + 24, i);
      *a2 = 10;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
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
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = protobuf::Intelligence_State_Memory::InternalSerializeWithCachedSizesToArray(v8, v10, a3);
    }
  }

  v14 = *(this + 14);
  if (v14)
  {
    for (j = 0; j != v14; ++j)
    {
      if (a2 >= *a3)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v16 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Memory>::TypeHandler>(this + 48, j);
      *a2 = 18;
      v17 = *(v16 + 5);
      if (v17 > 0x7F)
      {
        a2[1] = v17 | 0x80;
        v19 = v17 >> 7;
        if (v17 >> 14)
        {
          v18 = a2 + 3;
          do
          {
            *(v18 - 1) = v19 | 0x80;
            v20 = v19 >> 7;
            ++v18;
            v21 = v19 >> 14;
            v19 >>= 7;
          }

          while (v21);
          *(v18 - 1) = v20;
        }

        else
        {
          a2[2] = v19;
          v18 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v17;
        v18 = a2 + 2;
      }

      a2 = protobuf::Intelligence_State_Memory::InternalSerializeWithCachedSizesToArray(v16, v18, a3);
    }
  }

  v22 = *(this + 20);
  if (v22)
  {
    for (k = 0; k != v22; ++k)
    {
      if (a2 >= *a3)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v24 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Response>::TypeHandler>(this + 72, k);
      *a2 = 26;
      v25 = *(v24 + 5);
      if (v25 > 0x7F)
      {
        a2[1] = v25 | 0x80;
        v27 = v25 >> 7;
        if (v25 >> 14)
        {
          v26 = a2 + 3;
          do
          {
            *(v26 - 1) = v27 | 0x80;
            v28 = v27 >> 7;
            ++v26;
            v29 = v27 >> 14;
            v27 >>= 7;
          }

          while (v29);
          *(v26 - 1) = v28;
        }

        else
        {
          a2[2] = v27;
          v26 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v25;
        v26 = a2 + 2;
      }

      a2 = protobuf::Intelligence_State_Response::InternalSerializeWithCachedSizesToArray(v24, v26, a3);
    }
  }

  v30 = *(this + 26);
  if (v30)
  {
    v31 = 0;
    while (a2 < *a3)
    {
      if (v31 < 0)
      {
        goto LABEL_41;
      }

LABEL_42:
      if (*(this + 26) <= v31)
      {
        google::protobuf::internal::LogMessage::LogMessage(v83, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
        v33 = google::protobuf::internal::LogMessage::operator<<(v83, "CHECK failed: (index) < (current_size_): ");
        google::protobuf::internal::LogFinisher::operator=(&v82, &v33->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v83[0].__r_.__value_.__l.__data_);
      }

      v34 = *(*(this + 14) + 8 * v31 + 8);
      *a2 = 34;
      v35 = *(v34 + 5);
      if (v35 > 0x7F)
      {
        a2[1] = v35 | 0x80;
        v37 = v35 >> 7;
        if (v35 >> 14)
        {
          v36 = a2 + 3;
          do
          {
            *(v36 - 1) = v37 | 0x80;
            v38 = v37 >> 7;
            ++v36;
            v39 = v37 >> 14;
            v37 >>= 7;
          }

          while (v39);
          *(v36 - 1) = v38;
        }

        else
        {
          a2[2] = v37;
          v36 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v35;
        v36 = a2 + 2;
      }

      a2 = protobuf::Intelligence_State_ExecutionState::InternalSerializeWithCachedSizesToArray(v34, v36, a3);
      if (++v31 == v30)
      {
        goto LABEL_55;
      }
    }

    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_41:
    google::protobuf::internal::LogMessage::LogMessage(v83, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v32 = google::protobuf::internal::LogMessage::operator<<(v83, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v82, &v32->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v83[0].__r_.__value_.__l.__data_);
    goto LABEL_42;
  }

LABEL_55:
  v40 = *(this + 4);
  if (v40)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 5, *(this + 26), a2);
  }

  v41 = *(this + 32);
  if (v41)
  {
    for (m = 0; m != v41; ++m)
    {
      if (a2 >= *a3)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v43 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_InputGroup>::TypeHandler>(this + 120, m);
      *a2 = 50;
      v44 = *(v43 + 20);
      if (v44 > 0x7F)
      {
        a2[1] = v44 | 0x80;
        v46 = v44 >> 7;
        if (v44 >> 14)
        {
          v45 = a2 + 3;
          do
          {
            *(v45 - 1) = v46 | 0x80;
            v47 = v46 >> 7;
            ++v45;
            v48 = v46 >> 14;
            v46 >>= 7;
          }

          while (v48);
          *(v45 - 1) = v47;
        }

        else
        {
          a2[2] = v46;
          v45 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v44;
        v45 = a2 + 2;
      }

      a2 = protobuf::Intelligence_State_InputGroup::InternalSerializeWithCachedSizesToArray(v43, v45, a3);
    }
  }

  v49 = *(this + 36);
  if (v49 >= 1)
  {
    for (n = 0; n != v49; ++n)
    {
      if (a2 >= *a3)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v51 = *google::protobuf::RepeatedField<int>::Get(this + 36, n);
      *a2 = 56;
      if (v51 > 0x7F)
      {
        a2[1] = v51 | 0x80;
        v52 = v51 >> 7;
        if (v51 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v52 | 0x80;
            v53 = v52 >> 7;
            ++a2;
            v54 = v52 >> 14;
            v52 >>= 7;
          }

          while (v54);
          *(a2 - 1) = v53;
        }

        else
        {
          a2[2] = v52;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v51;
        a2 += 2;
      }
    }
  }

  if ((v40 & 2) != 0)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v55 = *(this + 27);
    *a2 = 73;
    *(a2 + 1) = v55;
    a2 += 9;
  }

  v56 = *(this + 42);
  if (v56)
  {
    v57 = 0;
    while (a2 < *a3)
    {
      if (v57 < 0)
      {
        goto LABEL_89;
      }

LABEL_90:
      if (*(this + 42) <= v57)
      {
        google::protobuf::internal::LogMessage::LogMessage(v83, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
        v59 = google::protobuf::internal::LogMessage::operator<<(v83, "CHECK failed: (index) < (current_size_): ");
        google::protobuf::internal::LogFinisher::operator=(&v82, &v59->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v83[0].__r_.__value_.__l.__data_);
      }

      v60 = *(*(this + 22) + 8 * v57 + 8);
      *a2 = 82;
      v61 = *(v60 + 5);
      if (v61 > 0x7F)
      {
        a2[1] = v61 | 0x80;
        v63 = v61 >> 7;
        if (v61 >> 14)
        {
          v62 = a2 + 3;
          do
          {
            *(v62 - 1) = v63 | 0x80;
            v64 = v63 >> 7;
            ++v62;
            v65 = v63 >> 14;
            v63 >>= 7;
          }

          while (v65);
          *(v62 - 1) = v64;
        }

        else
        {
          a2[2] = v63;
          v62 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v61;
        v62 = a2 + 2;
      }

      a2 = protobuf::Intelligence_State_Timer::InternalSerializeWithCachedSizesToArray(v60, v62, a3);
      if (++v57 == v56)
      {
        goto LABEL_103;
      }
    }

    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_90;
    }

LABEL_89:
    google::protobuf::internal::LogMessage::LogMessage(v83, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v58 = google::protobuf::internal::LogMessage::operator<<(v83, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v82, &v58->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v83[0].__r_.__value_.__l.__data_);
    goto LABEL_90;
  }

LABEL_103:
  if ((v40 & 4) != 0)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v66 = *(this + 28);
    *a2 = 97;
    *(a2 + 1) = v66;
    a2 += 9;
  }

  if ((v40 & 8) != 0)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v67 = *(this + 29);
    *a2 = 105;
    *(a2 + 1) = v67;
    a2 += 9;
  }

  v68 = *(this + 48);
  if (v68)
  {
    for (ii = 0; ii != v68; ++ii)
    {
      if (a2 >= *a3)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v70 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Event>::TypeHandler>(this + 184, ii);
      *a2 = 114;
      v71 = *(v70 + 5);
      if (v71 > 0x7F)
      {
        a2[1] = v71 | 0x80;
        v73 = v71 >> 7;
        if (v71 >> 14)
        {
          v72 = a2 + 3;
          do
          {
            *(v72 - 1) = v73 | 0x80;
            v74 = v73 >> 7;
            ++v72;
            v75 = v73 >> 14;
            v73 >>= 7;
          }

          while (v75);
          *(v72 - 1) = v74;
        }

        else
        {
          a2[2] = v73;
          v72 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v71;
        v72 = a2 + 2;
      }

      a2 = protobuf::Intelligence_State_Event::InternalSerializeWithCachedSizesToArray(v70, v72, a3);
    }
  }

  v76 = *(this + 1);
  if ((v76 & 1) == 0)
  {
    return a2;
  }

  v78 = v76 & 0xFFFFFFFFFFFFFFFELL;
  v79 = *(v78 + 23);
  if (v79 < 0)
  {
    v80 = *v78;
    v79 = *(v78 + 8);
  }

  else
  {
    v80 = v78;
  }

  if (*a3 - a2 >= v79)
  {
    v81 = v79;
    memcpy(a2, v80, v79);
    a2 += v81;
    return a2;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v80, v79, a2);
}

void sub_254CF0E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t protobuf::Intelligence_State::ByteSizeLong(protobuf::Intelligence_State *this)
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
      v7 = protobuf::Intelligence_State_Memory::ByteSizeLong(v6);
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
      v14 = protobuf::Intelligence_State_Memory::ByteSizeLong(v13);
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
      v21 = protobuf::Intelligence_State_Response::ByteSizeLong(v20);
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
      v28 = protobuf::Intelligence_State_ExecutionState::ByteSizeLong(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(this + 32);
  v30 = v23 + v29;
  v31 = *(this + 17);
  if (v31)
  {
    v32 = (v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  if (v29)
  {
    v33 = 8 * v29;
    do
    {
      v34 = *v32++;
      v35 = protobuf::Intelligence_State_InputGroup::ByteSizeLong(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = google::protobuf::internal::WireFormatLite::Int32Size(this + 36);
  v37 = *(this + 42);
  v38 = v36 + *(this + 36) + v37 + v30;
  v39 = *(this + 22);
  if (v39)
  {
    v40 = (v39 + 8);
  }

  else
  {
    v40 = 0;
  }

  if (v37)
  {
    v41 = 8 * v37;
    do
    {
      v42 = *v40++;
      v43 = protobuf::Intelligence_State_Timer::ByteSizeLong(v42);
      v38 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6);
      v41 -= 8;
    }

    while (v41);
  }

  v44 = *(this + 48);
  v45 = v38 + v44;
  v46 = *(this + 25);
  if (v46)
  {
    v47 = (v46 + 8);
  }

  else
  {
    v47 = 0;
  }

  if (v44)
  {
    v48 = 8 * v44;
    do
    {
      v49 = *v47++;
      v50 = protobuf::Intelligence_State_Event::ByteSizeLong(v49);
      v45 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6);
      v48 -= 8;
    }

    while (v48);
  }

  v51 = *(this + 4);
  if ((v51 & 0xF) != 0)
  {
    if (v51)
    {
      v52 = *(this + 26);
      v53 = *(v52 + 23);
      v54 = *(v52 + 8);
      if ((v53 & 0x80u) == 0)
      {
        v54 = v53;
      }

      v45 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v55 = v45 + 9;
    if ((v51 & 2) == 0)
    {
      v55 = v45;
    }

    if ((v51 & 4) != 0)
    {
      v55 += 9;
    }

    if ((v51 & 8) != 0)
    {
      v45 = v55 + 9;
    }

    else
    {
      v45 = v55;
    }
  }

  v56 = *(this + 1);
  if (v56)
  {
    v58 = v56 & 0xFFFFFFFFFFFFFFFELL;
    v59 = *((v56 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v59 < 0)
    {
      v59 = *(v58 + 8);
    }

    v45 += v59;
  }

  *(this + 5) = v45;
  return v45;
}

void protobuf::Intelligence_State::CheckTypeAndMergeFrom(protobuf::Intelligence_State *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_State::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_State::MergeFrom(protobuf::Intelligence_State *this, const protobuf::Intelligence_State *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 13383);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Memory>::TypeHandler>(this + 3, a2 + 24);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Memory>::TypeHandler>(this + 6, a2 + 48);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Response>::TypeHandler>(this + 9, a2 + 72);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState>::TypeHandler>(this + 12, a2 + 96);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_InputGroup>::TypeHandler>(this + 15, a2 + 120);
  google::protobuf::RepeatedField<int>::MergeFrom(this + 36, a2 + 36);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Timer>::TypeHandler>(this + 20, a2 + 160);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Event>::TypeHandler>(this + 23, a2 + 184);
  v6 = *(a2 + 4);
  if ((v6 & 0xF) != 0)
  {
    if (v6)
    {
      v7 = *(this + 26);
      *(this + 4) |= 1u;
      v8 = *(a2 + 26);
      if (v7 != v8)
      {
        if (v7 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 208, v8);
        }

        std::string::operator=(v7, v8);
      }
    }

    if ((v6 & 2) != 0)
    {
      *(this + 27) = *(a2 + 27);
      if ((v6 & 4) == 0)
      {
LABEL_12:
        if ((v6 & 8) == 0)
        {
LABEL_14:
          *(this + 4) |= v6;
          return;
        }

LABEL_13:
        *(this + 29) = *(a2 + 29);
        goto LABEL_14;
      }
    }

    else if ((v6 & 4) == 0)
    {
      goto LABEL_12;
    }

    *(this + 28) = *(a2 + 28);
    if ((v6 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }
}

void sub_254CF1360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_State::CopyFrom(protobuf::Intelligence_State *this, const protobuf::Intelligence_State *a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_State::Clear(this);

    protobuf::Intelligence_State::MergeFrom(this, a2);
  }
}

double protobuf::Intelligence_State::InternalSwap(protobuf::Intelligence_State *this, protobuf::Intelligence_State *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v21;
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
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 48), (a2 + 48));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 72), (a2 + 72));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 96), (a2 + 96));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 120), (a2 + 120));
  google::protobuf::RepeatedField<int>::InternalSwap(this + 144, a2 + 144);
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 160), (a2 + 160));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 184), (a2 + 184));
  v13 = *(this + 26);
  if (v13 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 26) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_14;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 26, 0, &google::protobuf::internal::fixed_address_empty_string);
    v13 = *(this + 26);
  }

  v14 = *(a2 + 26);
  if (v14 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 26, 0, &google::protobuf::internal::fixed_address_empty_string);
    v14 = *(a2 + 26);
  }

  v15 = v13[2];
  v16 = *v13;
  v17 = v14[2];
  *v13 = *v14;
  v13[2] = v17;
  *v14 = v16;
  v14[2] = v15;
LABEL_14:
  v18 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v18;
  v19 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v19;
  result = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = result;
  return result;
}

void protobuf::Intelligence_Condition_ConditionEntry::InitAsDefaultInstance(protobuf::Intelligence_Condition_ConditionEntry *this)
{
  qword_27F7548B8 = &protobuf::_Intelligence_KeyValueParameter_default_instance_;
  unk_27F7548C0 = &protobuf::_Intelligence_KeyValueParameter_default_instance_;
  qword_27F7548B0 = &protobuf::_Intelligence_Condition_ConditionEntry_default_instance_;
}

protobuf::Intelligence_Condition_ConditionEntry *protobuf::Intelligence_Condition_ConditionEntry::Intelligence_Condition_ConditionEntry(protobuf::Intelligence_Condition_ConditionEntry *this)
{
  *this = &unk_28671A960;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  if (atomic_load_explicit(scc_info_Intelligence_Condition_ConditionEntry_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Condition_ConditionEntry_intelligence_2eproto);
  }

  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 10) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 11) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  return this;
}

void sub_254CF1668(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v1 + 48));
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v1 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_Condition_ConditionEntry *protobuf::Intelligence_Condition_ConditionEntry::Intelligence_Condition_ConditionEntry(protobuf::Intelligence_Condition_ConditionEntry *this, const protobuf::Intelligence_Condition_ConditionEntry *a2)
{
  *this = &unk_28671A960;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition_ConditionEntry>::TypeHandler>(this + 3, a2 + 24);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition_ConditionEntry>::TypeHandler>(this + 6, a2 + 48);
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

  if ((v6 & 8) != 0)
  {
    if (!*(a2 + 12))
    {
      google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21511);
      v10 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: !value || not_child_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 12) = 0;
  if ((v6 & 0x10) != 0)
  {
    if (!*(a2 + 13))
    {
      google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21242);
      v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: !value || left_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 13) = 0;
  if ((v6 & 0x20) != 0)
  {
    if (!*(a2 + 14))
    {
      google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21373);
      v12 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: !value || right_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v14, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 14) = 0;
  return this;
}

void sub_254CF1920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField(v5);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v3 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v4);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Condition_ConditionEntry::~Intelligence_Condition_ConditionEntry(protobuf::Intelligence_Condition_ConditionEntry *this)
{
  *this = &unk_28671A960;
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

  if (this != &protobuf::_Intelligence_Condition_ConditionEntry_default_instance_)
  {
    v8 = *(this + 12);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(this + 13);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = *(this + 14);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((this + 48));
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((this + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_Condition_ConditionEntry::~Intelligence_Condition_ConditionEntry(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_Condition_ConditionEntry::default_instance(protobuf::Intelligence_Condition_ConditionEntry *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_Condition_ConditionEntry_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Condition_ConditionEntry_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_Condition_ConditionEntry_default_instance_;
}

void protobuf::Intelligence_Condition_ConditionEntry::Clear(protobuf::Intelligence_Condition_ConditionEntry *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition_ConditionEntry>::TypeHandler>(this + 24);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition_ConditionEntry>::TypeHandler>(this + 48);
  v2 = *(this + 4);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_30;
  }

  if (v2)
  {
    v3 = *(this + 9);
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_13;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_17:
    v5 = *(this + 11);
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_13:
  v4 = *(this + 10);
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *v4 = 0;
    *(v4 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_17;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_21:
  v6 = *(this + 12);
  if (!v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 13593);
    v7 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: not_child_ != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
    v6 = *(this + 12);
  }

  protobuf::Intelligence_Condition_ConditionEntry::Clear(v6);
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

LABEL_24:
  v8 = *(this + 13);
  if (!v8)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 13597);
    v9 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: left_ != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
    v8 = *(this + 13);
  }

  protobuf::Intelligence_KeyValueParameter::Clear(v8);
  if ((v2 & 0x20) != 0)
  {
LABEL_27:
    v10 = *(this + 14);
    if (!v10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 13601);
      v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: right_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
      v10 = *(this + 14);
    }

    protobuf::Intelligence_KeyValueParameter::Clear(v10);
  }

LABEL_30:
  v13 = *(this + 8);
  v12 = this + 8;
  *(v12 + 2) = 0;
  if (v13)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v12);
  }
}

void sub_254CF1DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal *protobuf::Intelligence_Condition_ConditionEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v33 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v33, *(this + 23));
  result = v33;
  if (v5)
  {
    return result;
  }

  while (1)
  {
    v7 = (result + 1);
    LODWORD(v8) = *result;
    if ((*result & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    v8 = (v8 + (*v7 << 7) - 128);
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (result + 2);
LABEL_5:
      v33 = v7;
      goto LABEL_6;
    }

    result = google::protobuf::internal::ReadTagFallback(result, v8);
    v33 = result;
    if (!result)
    {
      return result;
    }

    v7 = result;
    LODWORD(v8) = v23;
LABEL_6:
    v9 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      if (v8 >> 3 <= 7)
      {
        if (v9 != 6)
        {
          if (v9 == 7 && v8 == 58)
          {
            *(a1 + 16) |= 8u;
            v12 = *(a1 + 96);
            if (!v12)
            {
              v13 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Condition_ConditionEntry>(0);
              LODWORD(v12) = v13;
              *(a1 + 96) = v13;
              v7 = v33;
            }

            result = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_Condition_ConditionEntry>(this, v12, v7);
            goto LABEL_73;
          }

          goto LABEL_70;
        }

        if (v8 != 50)
        {
          goto LABEL_70;
        }

        result = (v7 - 1);
        while (1)
        {
          v24 = (result + 1);
          v33 = (result + 1);
          v25 = *(a1 + 64);
          if (!v25)
          {
            break;
          }

          v26 = *(a1 + 56);
          v27 = *v25;
          if (v26 >= *v25)
          {
            if (v27 == *(a1 + 60))
            {
LABEL_55:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v27 + 1);
              v25 = *(a1 + 64);
              v27 = *v25;
            }

            *v25 = v27 + 1;
            v29 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Condition_ConditionEntry>(*(a1 + 48));
            LODWORD(v28) = v29;
            v30 = *(a1 + 56);
            v31 = *(a1 + 64) + 8 * v30;
            *(a1 + 56) = v30 + 1;
            *(v31 + 8) = v29;
            v24 = v33;
            goto LABEL_57;
          }

          *(a1 + 56) = v26 + 1;
          v28 = *&v25[2 * v26 + 2];
LABEL_57:
          result = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_Condition_ConditionEntry>(this, v28, v24);
          v33 = result;
          if (!result)
          {
            return result;
          }

          if (*this <= result || *result != 50)
          {
            goto LABEL_74;
          }
        }

        v27 = *(a1 + 60);
        goto LABEL_55;
      }

      if (v9 == 8)
      {
        if (v8 != 66)
        {
          goto LABEL_70;
        }

        *(a1 + 16) |= 0x10u;
        v22 = *(a1 + 104);
        if (v22)
        {
          goto LABEL_69;
        }

        v22 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(0);
        *(a1 + 104) = v22;
      }

      else
      {
        if (v9 != 9 || v8 != 74)
        {
          goto LABEL_70;
        }

        *(a1 + 16) |= 0x20u;
        v22 = *(a1 + 112);
        if (v22)
        {
          goto LABEL_69;
        }

        v22 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(0);
        *(a1 + 112) = v22;
      }

      v7 = v33;
LABEL_69:
      result = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_KeyValueParameter>(this, v22, v7);
      goto LABEL_73;
    }

    if (v8 >> 3 <= 3)
    {
      if (v9 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_70;
        }

        *(a1 + 16) |= 1u;
        v11 = *(a1 + 72);
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 72, &google::protobuf::internal::fixed_address_empty_string);
        }
      }

      else
      {
        if (v9 != 3 || v8 != 26)
        {
          goto LABEL_70;
        }

        *(a1 + 16) |= 2u;
        v11 = *(a1 + 80);
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 80, &google::protobuf::internal::fixed_address_empty_string);
        }
      }

      goto LABEL_64;
    }

    if (v9 != 4)
    {
      break;
    }

    if (v8 != 34)
    {
      goto LABEL_70;
    }

    *(a1 + 16) |= 4u;
    v11 = *(a1 + 88);
    if (v11 == &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 88, &google::protobuf::internal::fixed_address_empty_string);
    }

LABEL_64:
    result = google::protobuf::internal::InlineGreedyStringParser(v11, v7, this);
LABEL_73:
    v33 = result;
    if (!result)
    {
      return result;
    }

LABEL_74:
    v32 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v33, *(this + 23));
    result = v33;
    if (v32)
    {
      return result;
    }
  }

  if (v9 == 5 && v8 == 42)
  {
    result = (v7 - 1);
    while (1)
    {
      v14 = (result + 1);
      v33 = (result + 1);
      v15 = *(a1 + 40);
      if (!v15)
      {
        break;
      }

      v16 = *(a1 + 32);
      v17 = *v15;
      if (v16 >= *v15)
      {
        if (v17 == *(a1 + 36))
        {
LABEL_32:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v17 + 1);
          v15 = *(a1 + 40);
          v17 = *v15;
        }

        *v15 = v17 + 1;
        v19 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Condition_ConditionEntry>(*(a1 + 24));
        LODWORD(v18) = v19;
        v20 = *(a1 + 32);
        v21 = *(a1 + 40) + 8 * v20;
        *(a1 + 32) = v20 + 1;
        *(v21 + 8) = v19;
        v14 = v33;
        goto LABEL_34;
      }

      *(a1 + 32) = v16 + 1;
      v18 = *&v15[2 * v16 + 2];
LABEL_34:
      result = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_Condition_ConditionEntry>(this, v18, v14);
      v33 = result;
      if (!result)
      {
        return result;
      }

      if (*this <= result || *result != 42)
      {
        goto LABEL_74;
      }
    }

    v17 = *(a1 + 36);
    goto LABEL_32;
  }

LABEL_70:
  if (v8 && (v8 & 7) != 4)
  {
    result = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), v7, this);
    goto LABEL_73;
  }

  *(this + 20) = v8 - 1;
  return v7;
}

char *google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_Condition_ConditionEntry>(google::protobuf::internal::EpsCopyInputStream *this, uint64_t a2, google::protobuf::internal *a3)
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
  result = protobuf::Intelligence_Condition_ConditionEntry::_InternalParse(a2, v8, this);
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

unsigned __int8 *protobuf::Intelligence_Condition_ConditionEntry::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_Condition_ConditionEntry *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, *(this + 9), a2);
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

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 3, *(this + 10), v4);
  if ((v6 & 4) != 0)
  {
LABEL_4:
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 4, *(this + 11), v4);
  }

LABEL_5:
  v7 = *(this + 8);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition_ConditionEntry>::TypeHandler>(this + 24, i);
      *v4 = 42;
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

      v4 = protobuf::Intelligence_Condition_ConditionEntry::InternalSerializeWithCachedSizesToArray(v9, v11, a3);
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

      v17 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition_ConditionEntry>::TypeHandler>(this + 48, j);
      *v4 = 50;
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

      v4 = protobuf::Intelligence_Condition_ConditionEntry::InternalSerializeWithCachedSizesToArray(v17, v19, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v23 = *(this + 12);
    *v4 = 58;
    v24 = *(v23 + 5);
    if (v24 > 0x7F)
    {
      v4[1] = v24 | 0x80;
      v26 = v24 >> 7;
      if (v24 >> 14)
      {
        v25 = (v4 + 3);
        do
        {
          *(v25 - 1) = v26 | 0x80;
          v27 = v26 >> 7;
          ++v25;
          v28 = v26 >> 14;
          v26 >>= 7;
        }

        while (v28);
        *(v25 - 1) = v27;
      }

      else
      {
        v4[2] = v26;
        v25 = (v4 + 3);
      }
    }

    else
    {
      v4[1] = v24;
      v25 = (v4 + 2);
    }

    v4 = protobuf::Intelligence_Condition_ConditionEntry::InternalSerializeWithCachedSizesToArray(v23, v25, a3);
    if ((v6 & 0x10) == 0)
    {
LABEL_31:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_56;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_31;
  }

  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v29 = *(this + 13);
  *v4 = 66;
  v30 = *(v29 + 5);
  if (v30 > 0x7F)
  {
    v4[1] = v30 | 0x80;
    v32 = v30 >> 7;
    if (v30 >> 14)
    {
      v31 = v4 + 3;
      do
      {
        *(v31 - 1) = v32 | 0x80;
        v33 = v32 >> 7;
        ++v31;
        v34 = v32 >> 14;
        v32 >>= 7;
      }

      while (v34);
      *(v31 - 1) = v33;
    }

    else
    {
      v4[2] = v32;
      v31 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v30;
    v31 = v4 + 2;
  }

  v4 = protobuf::Intelligence_KeyValueParameter::InternalSerializeWithCachedSizesToArray(v29, v31, a3);
  if ((v6 & 0x20) != 0)
  {
LABEL_56:
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v35 = *(this + 14);
    *v4 = 74;
    v36 = *(v35 + 5);
    if (v36 > 0x7F)
    {
      v4[1] = v36 | 0x80;
      v38 = v36 >> 7;
      if (v36 >> 14)
      {
        v37 = v4 + 3;
        do
        {
          *(v37 - 1) = v38 | 0x80;
          v39 = v38 >> 7;
          ++v37;
          v40 = v38 >> 14;
          v38 >>= 7;
        }

        while (v40);
        *(v37 - 1) = v39;
      }

      else
      {
        v4[2] = v38;
        v37 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v36;
      v37 = v4 + 2;
    }

    v4 = protobuf::Intelligence_KeyValueParameter::InternalSerializeWithCachedSizesToArray(v35, v37, a3);
  }

LABEL_66:
  v41 = *(this + 1);
  if ((v41 & 1) == 0)
  {
    return v4;
  }

  v43 = v41 & 0xFFFFFFFFFFFFFFFELL;
  v44 = *(v43 + 23);
  if (v44 < 0)
  {
    v45 = *v43;
    v44 = *(v43 + 8);
  }

  else
  {
    v45 = v43;
  }

  if (*a3 - v4 >= v44)
  {
    v46 = v44;
    memcpy(v4, v45, v44);
    v4 += v46;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v45, v44, v4);
}

uint64_t protobuf::Intelligence_Condition_ConditionEntry::ByteSizeLong(protobuf::Intelligence_Condition_ConditionEntry *this)
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
      v7 = protobuf::Intelligence_Condition_ConditionEntry::ByteSizeLong(v6);
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
      v14 = protobuf::Intelligence_Condition_ConditionEntry::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 4);
  if ((v15 & 0x3F) == 0)
  {
    goto LABEL_23;
  }

  if (v15)
  {
    v19 = *(this + 9);
    v20 = *(v19 + 23);
    v21 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v21 = v20;
    }

    v9 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 2) == 0)
    {
LABEL_18:
      if ((v15 & 4) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_18;
  }

  v22 = *(this + 10);
  v23 = *(v22 + 23);
  v24 = *(v22 + 8);
  if ((v23 & 0x80u) == 0)
  {
    v24 = v23;
  }

  v9 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 4) == 0)
  {
LABEL_19:
    if ((v15 & 8) == 0)
    {
      goto LABEL_20;
    }

LABEL_34:
    v28 = protobuf::Intelligence_Condition_ConditionEntry::ByteSizeLong(*(this + 12));
    v9 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 0x10) == 0)
    {
LABEL_21:
      if ((v15 & 0x20) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_35;
  }

LABEL_31:
  v25 = *(this + 11);
  v26 = *(v25 + 23);
  v27 = *(v25 + 8);
  if ((v26 & 0x80u) == 0)
  {
    v27 = v26;
  }

  v9 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 8) != 0)
  {
    goto LABEL_34;
  }

LABEL_20:
  if ((v15 & 0x10) == 0)
  {
    goto LABEL_21;
  }

LABEL_35:
  v29 = protobuf::Intelligence_KeyValueParameter::ByteSizeLong(*(this + 13));
  v9 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 0x20) != 0)
  {
LABEL_22:
    v16 = protobuf::Intelligence_KeyValueParameter::ByteSizeLong(*(this + 14));
    v9 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_23:
  v17 = *(this + 1);
  if (v17)
  {
    v30 = v17 & 0xFFFFFFFFFFFFFFFELL;
    v31 = *((v17 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v31 < 0)
    {
      v31 = *(v30 + 8);
    }

    v9 += v31;
  }

  *(this + 5) = v9;
  return v9;
}

void protobuf::Intelligence_Condition_ConditionEntry::CheckTypeAndMergeFrom(protobuf::Intelligence_Condition_ConditionEntry *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_Condition_ConditionEntry::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_Condition_ConditionEntry::MergeFrom(protobuf::Intelligence_Condition_ConditionEntry *this, const protobuf::Intelligence_Condition_ConditionEntry *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 13860);
    v4 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v19, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition_ConditionEntry>::TypeHandler>(this + 3, a2 + 24);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition_ConditionEntry>::TypeHandler>(this + 6, a2 + 48);
  v6 = *(a2 + 4);
  if ((v6 & 0x3F) != 0)
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
      *(this + 4) |= 8u;
      v13 = *(this + 12);
      if (!v13)
      {
        v13 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Condition_ConditionEntry>(0);
        *(this + 12) = v13;
      }

      if (*(a2 + 12))
      {
        v14 = *(a2 + 12);
      }

      else
      {
        v14 = &protobuf::_Intelligence_Condition_ConditionEntry_default_instance_;
      }

      protobuf::Intelligence_Condition_ConditionEntry::MergeFrom(v13, v14);
    }

    if ((v6 & 0x10) != 0)
    {
      *(this + 4) |= 0x10u;
      v15 = *(this + 13);
      if (!v15)
      {
        v15 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(0);
        *(this + 13) = v15;
      }

      if (*(a2 + 13))
      {
        v16 = *(a2 + 13);
      }

      else
      {
        v16 = &protobuf::_Intelligence_KeyValueParameter_default_instance_;
      }

      protobuf::Intelligence_KeyValueParameter::MergeFrom(v15, v16);
    }

    if ((v6 & 0x20) != 0)
    {
      *(this + 4) |= 0x20u;
      v17 = *(this + 14);
      if (!v17)
      {
        v17 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(0);
        *(this + 14) = v17;
      }

      if (*(a2 + 14))
      {
        v18 = *(a2 + 14);
      }

      else
      {
        v18 = &protobuf::_Intelligence_KeyValueParameter_default_instance_;
      }

      protobuf::Intelligence_KeyValueParameter::MergeFrom(v17, v18);
    }
  }
}

void sub_254CF2C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Condition_ConditionEntry::CopyFrom(protobuf::Intelligence_Condition_ConditionEntry *this, const protobuf::Intelligence_Condition_ConditionEntry *a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_Condition_ConditionEntry::Clear(this);

    protobuf::Intelligence_Condition_ConditionEntry::MergeFrom(this, a2);
  }
}

void protobuf::Intelligence_Condition_ConditionEntry::InternalSwap(protobuf::Intelligence_Condition_ConditionEntry *this, protobuf::Intelligence_Condition_ConditionEntry *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v31;
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
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

LABEL_28:
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
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v28;
  v29 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v29;
  v30 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v30;
}

protobuf::Intelligence_Condition *protobuf::Intelligence_Condition::Intelligence_Condition(protobuf::Intelligence_Condition *this)
{
  *this = &unk_28671A9F0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_Condition_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Condition_intelligence_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = 0;
  return this;
}

protobuf::Intelligence_Condition *protobuf::Intelligence_Condition::Intelligence_Condition(protobuf::Intelligence_Condition *this, const protobuf::Intelligence_Condition *a2)
{
  *this = &unk_28671A9F0;
  *(this + 1) = 0;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
    v4 = *(a2 + 4);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  if (v4)
  {
    v6 = *(a2 + 3);
    if (v6 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 24, v6);
    }
  }

  if ((v4 & 2) != 0)
  {
    if (!*(a2 + 4))
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21788);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: !value || condition_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 4) = 0;
  return this;
}

void sub_254CF3138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v3);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Condition::~Intelligence_Condition(protobuf::Intelligence_Condition *this)
{
  *this = &unk_28671A9F0;
  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  if (this != &protobuf::_Intelligence_Condition_default_instance_)
  {
    v4 = *(this + 4);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_Condition::~Intelligence_Condition(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_Condition::default_instance(protobuf::Intelligence_Condition *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_Condition_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Condition_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_Condition_default_instance_;
}

void protobuf::Intelligence_Condition::Clear(protobuf::Intelligence_Condition *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) == 0)
  {
    goto LABEL_9;
  }

  if (v2)
  {
    v3 = *(this + 3);
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    *v3 = 0;
    *(v3 + 23) = 0;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v4 = *(this + 4);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 14007);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: condition_ != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
    v4 = *(this + 4);
  }

  protobuf::Intelligence_Condition_ConditionEntry::Clear(v4);
LABEL_9:
  v7 = *(this + 8);
  v6 = this + 8;
  *(v6 + 2) = 0;
  if (v7)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v6);
  }
}

void sub_254CF3390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal *protobuf::Intelligence_Condition::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v14 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v14, *(this + 23));
  result = v14;
  if ((v5 & 1) == 0)
  {
    while (1)
    {
      v7 = (result + 1);
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
      v14 = result;
      if (!result)
      {
        return result;
      }

      v7 = result;
      LODWORD(v8) = v13;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 2u;
          v10 = *(a1 + 32);
          if (!v10)
          {
            v10 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Condition_ConditionEntry>(0);
            *(a1 + 32) = v10;
            v7 = v14;
          }

          result = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_Condition_ConditionEntry>(this, v10, v7);
          goto LABEL_22;
        }
      }

      else if (v8 >> 3 == 1 && v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v11 = *(a1 + 24);
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 24, &google::protobuf::internal::fixed_address_empty_string);
        }

        result = google::protobuf::internal::InlineGreedyStringParser(v11, v7, this);
        goto LABEL_22;
      }

      if (!v8 || (v8 & 7) == 4)
      {
        *(this + 20) = v8 - 1;
        return v7;
      }

      result = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), v7, this);
LABEL_22:
      v14 = result;
      if (result)
      {
        v12 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v14, *(this + 23));
        result = v14;
        if (!v12)
        {
          continue;
        }
      }

      return result;
    }

    v7 = (result + 2);
LABEL_6:
    v14 = v7;
    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *protobuf::Intelligence_Condition::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_Condition *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 3), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(this + 4);
    *v4 = 18;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = v4 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        v4[2] = v10;
        v9 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v8;
      v9 = v4 + 2;
    }

    v4 = protobuf::Intelligence_Condition_ConditionEntry::InternalSerializeWithCachedSizesToArray(v7, v9, a3);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFELL;
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

uint64_t protobuf::Intelligence_Condition::ByteSizeLong(protobuf::Intelligence_Condition *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = protobuf::Intelligence_Condition_ConditionEntry::ByteSizeLong(*(this + 4));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
  }

  v4 = *(this + 3);
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v8 = *(this + 1);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v11 < 0)
    {
      v11 = *(v10 + 8);
    }

    v3 += v11;
  }

  *(this + 5) = v3;
  return v3;
}

void protobuf::Intelligence_Condition::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_Condition::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_Condition::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 14128);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
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
      *(this + 4) |= 2u;
      v9 = this[4];
      if (!v9)
      {
        v9 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Condition_ConditionEntry>(0);
        this[4] = v9;
      }

      if (a2[4])
      {
        v10 = a2[4];
      }

      else
      {
        v10 = &protobuf::_Intelligence_Condition_ConditionEntry_default_instance_;
      }

      protobuf::Intelligence_Condition_ConditionEntry::MergeFrom(v9, v10);
    }
  }
}

void sub_254CF3928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Condition::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_Condition::Clear(this);

    protobuf::Intelligence_Condition::MergeFrom(this, a2);
  }
}

void protobuf::Intelligence_Condition::InternalSwap(protobuf::Intelligence_Condition *this, protobuf::Intelligence_Condition *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v19;
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
  v16 = *v12;
  v17 = v14[2];
  *v12 = *v14;
  v12[2] = v17;
  *v14 = v16;
  v14[2] = v15;
LABEL_14:
  v18 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v18;
}

protobuf::Intelligence *protobuf::Intelligence::Intelligence(protobuf::Intelligence *this)
{
  *this = &unk_28671AA80;
  bzero(this + 8, 0x208uLL);
  if (atomic_load_explicit(scc_info_Intelligence_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_intelligence_2eproto);
  }

  *(this + 66) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 552) = 0;
  *(this + 536) = 0u;
  return this;
}

void sub_254CF3B98(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Event>::~RepeatedPtrField(v1 + 63);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 60);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 57);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::~RepeatedPtrField(v1 + 54);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::~RepeatedPtrField(v1 + 51);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Variable>::~RepeatedPtrField(v1 + 48);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_List>::~RepeatedPtrField(v1 + 45);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Label>::~RepeatedPtrField(v1 + 42);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Flag>::~RepeatedPtrField(v1 + 39);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Counter>::~RepeatedPtrField(v1 + 36);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition>::~RepeatedPtrField(v1 + 33);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Intent>::~RepeatedPtrField(v1 + 30);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Character>::~RepeatedPtrField(v1 + 27);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Utterance>::~RepeatedPtrField(v1 + 24);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Activity>::~RepeatedPtrField(v1 + 21);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::~RepeatedPtrField(v1 + 18);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::~RepeatedPtrField(v1 + 15);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_ReferenceResponse>::~RepeatedPtrField(v1 + 12);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_BehaviorResponse>::~RepeatedPtrField(v1 + 9);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_DialogResponse>::~RepeatedPtrField(v1 + 6);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Meta>::~RepeatedPtrField(v1 + 3);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence *protobuf::Intelligence::Intelligence(protobuf::Intelligence *this, const protobuf::Intelligence *a2)
{
  *this = &unk_28671AA80;
  *(this + 1) = 0;
  v10 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Meta>::TypeHandler>(this + 3, a2 + 24);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_DialogResponse>::TypeHandler>(this + 6, a2 + 48);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_BehaviorResponse>::TypeHandler>(this + 9, a2 + 72);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ReferenceResponse>::TypeHandler>(this + 12, a2 + 96);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>(this + 15, a2 + 120);
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(this + 18, a2 + 144);
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Activity>::TypeHandler>(this + 21, a2 + 168);
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Utterance>::TypeHandler>(this + 24, a2 + 192);
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Character>::TypeHandler>(this + 27, a2 + 216);
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Intent>::TypeHandler>(this + 30, a2 + 240);
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 35) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition>::TypeHandler>(this + 33, a2 + 264);
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Counter>::TypeHandler>(this + 36, a2 + 288);
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Flag>::TypeHandler>(this + 39, a2 + 312);
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 44) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Label>::TypeHandler>(this + 42, a2 + 336);
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_List>::TypeHandler>(this + 45, a2 + 360);
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 50) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Variable>::TypeHandler>(this + 48, a2 + 384);
  *(this + 51) = 0;
  *(this + 52) = 0;
  *(this + 53) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>(this + 51, a2 + 408);
  *(this + 54) = 0;
  *(this + 55) = 0;
  *(this + 56) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(this + 54, a2 + 432);
  *(this + 57) = 0;
  *(this + 58) = 0;
  *(this + 59) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 456, a2 + 456);
  *(this + 60) = 0;
  *(this + 61) = 0;
  *(this + 62) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 480, a2 + 480);
  *(this + 63) = 0;
  *(this + 64) = 0;
  *(this + 65) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Event>::TypeHandler>(this + 63, a2 + 504);
  v4 = *(a2 + 1);
  if (v4)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v10, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 66) = &google::protobuf::internal::fixed_address_empty_string;
  v5 = *(a2 + 4);
  if (v5)
  {
    v6 = *(a2 + 66);
    if (v6 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 528, v6);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (!*(a2 + 67))
    {
      google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 22110);
      v7 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: !value || start_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v11, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 67) = 0;
  v8 = *(a2 + 68);
  *(this + 552) = *(a2 + 552);
  *(this + 68) = v8;
  return this;
}

void sub_254CF3F78(_Unwind_Exception *a1, google::protobuf::internal::ArenaImpl **a2, google::protobuf::internal::ArenaImpl **a3, uint64_t *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Event>::~RepeatedPtrField(v5 + 63);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v5 + 60);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v5 + 57);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::~RepeatedPtrField(v5 + 54);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::~RepeatedPtrField(v5 + 51);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Variable>::~RepeatedPtrField(v5 + 48);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_List>::~RepeatedPtrField(v5 + 45);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Label>::~RepeatedPtrField(v5 + 42);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Flag>::~RepeatedPtrField(v5 + 39);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Counter>::~RepeatedPtrField(v5 + 36);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition>::~RepeatedPtrField(v5 + 33);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Intent>::~RepeatedPtrField(v6);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Character>::~RepeatedPtrField(v12);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Utterance>::~RepeatedPtrField(v11);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Activity>::~RepeatedPtrField(v10);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::~RepeatedPtrField(v9);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::~RepeatedPtrField(v8);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_ReferenceResponse>::~RepeatedPtrField(v7);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_BehaviorResponse>::~RepeatedPtrField(a2);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_DialogResponse>::~RepeatedPtrField(a3);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Meta>::~RepeatedPtrField(v5 + 3);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(a4);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence::~Intelligence(protobuf::Intelligence *this)
{
  *this = &unk_28671AA80;
  v2 = *(this + 66);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  if (this != &protobuf::_Intelligence_default_instance_)
  {
    v4 = *(this + 67);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Event>::~RepeatedPtrField(this + 63);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 480);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 456);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::~RepeatedPtrField(this + 54);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::~RepeatedPtrField(this + 51);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Variable>::~RepeatedPtrField(this + 48);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_List>::~RepeatedPtrField(this + 45);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Label>::~RepeatedPtrField(this + 42);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Flag>::~RepeatedPtrField(this + 39);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Counter>::~RepeatedPtrField(this + 36);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition>::~RepeatedPtrField(this + 33);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Intent>::~RepeatedPtrField(this + 30);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Character>::~RepeatedPtrField(this + 27);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Utterance>::~RepeatedPtrField(this + 24);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Activity>::~RepeatedPtrField(this + 21);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::~RepeatedPtrField(this + 18);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::~RepeatedPtrField(this + 15);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_ReferenceResponse>::~RepeatedPtrField(this + 12);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_BehaviorResponse>::~RepeatedPtrField(this + 9);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_DialogResponse>::~RepeatedPtrField(this + 6);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_Meta>::~RepeatedPtrField(this + 3);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence::~Intelligence(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence::default_instance(protobuf::Intelligence *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_default_instance_;
}

void protobuf::Intelligence::Clear(protobuf::Intelligence *this)
{
  v2 = *(this + 8);
  if ((v2 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v49, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v5 = google::protobuf::internal::LogMessage::operator<<(v49, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v48, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v49[0].__r_.__value_.__l.__data_);
  }

  else if (v2)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      protobuf::Intelligence_Meta::Clear(v4);
      --v2;
    }

    while (v2);
    *(this + 8) = 0;
  }

  v6 = *(this + 14);
  if ((v6 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v49, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v9 = google::protobuf::internal::LogMessage::operator<<(v49, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v48, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v49[0].__r_.__value_.__l.__data_);
  }

  else if (v6)
  {
    v7 = (*(this + 8) + 8);
    do
    {
      v8 = *v7++;
      protobuf::Intelligence_DialogResponse::Clear(v8);
      --v6;
    }

    while (v6);
    *(this + 14) = 0;
  }

  v10 = *(this + 20);
  if ((v10 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v49, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v13 = google::protobuf::internal::LogMessage::operator<<(v49, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v48, &v13->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v49[0].__r_.__value_.__l.__data_);
  }

  else if (v10)
  {
    v11 = (*(this + 11) + 8);
    do
    {
      v12 = *v11++;
      protobuf::Intelligence_BehaviorResponse::Clear(v12);
      --v10;
    }

    while (v10);
    *(this + 20) = 0;
  }

  v14 = *(this + 26);
  if ((v14 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v49, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v17 = google::protobuf::internal::LogMessage::operator<<(v49, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v48, &v17->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v49[0].__r_.__value_.__l.__data_);
  }

  else if (v14)
  {
    v15 = (*(this + 14) + 8);
    do
    {
      v16 = *v15++;
      protobuf::Intelligence_ReferenceResponse::Clear(v16);
      --v14;
    }

    while (v14);
    *(this + 26) = 0;
  }

  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>(this + 120);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(this + 144);
  v18 = *(this + 44);
  if ((v18 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v49, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v21 = google::protobuf::internal::LogMessage::operator<<(v49, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v48, &v21->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v49[0].__r_.__value_.__l.__data_);
  }

  else if (v18)
  {
    v19 = (*(this + 23) + 8);
    do
    {
      v20 = *v19++;
      protobuf::Intelligence_Activity::Clear(v20);
      --v18;
    }

    while (v18);
    *(this + 44) = 0;
  }

  v22 = *(this + 50);
  if ((v22 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v49, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v25 = google::protobuf::internal::LogMessage::operator<<(v49, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v48, &v25->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v49[0].__r_.__value_.__l.__data_);
  }

  else if (v22)
  {
    v23 = (*(this + 26) + 8);
    do
    {
      v24 = *v23++;
      protobuf::Intelligence_Utterance::Clear(v24);
      --v22;
    }

    while (v22);
    *(this + 50) = 0;
  }

  v26 = *(this + 56);
  if ((v26 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v49, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v29 = google::protobuf::internal::LogMessage::operator<<(v49, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v48, &v29->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v49[0].__r_.__value_.__l.__data_);
  }

  else if (v26)
  {
    v27 = (*(this + 29) + 8);
    do
    {
      v28 = *v27++;
      protobuf::Intelligence_Character::Clear(v28);
      --v26;
    }

    while (v26);
    *(this + 56) = 0;
  }

  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Intent>::TypeHandler>(this + 240);
  v30 = *(this + 68);
  if ((v30 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v49, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v33 = google::protobuf::internal::LogMessage::operator<<(v49, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v48, &v33->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v49[0].__r_.__value_.__l.__data_);
  }

  else if (v30)
  {
    v31 = (*(this + 35) + 8);
    do
    {
      v32 = *v31++;
      protobuf::Intelligence_Condition::Clear(v32);
      --v30;
    }

    while (v30);
    *(this + 68) = 0;
  }

  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Counter>::TypeHandler>(this + 288);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Flag>::TypeHandler>(this + 312);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Label>::TypeHandler>(this + 336);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_List>::TypeHandler>(this + 360);
  v34 = *(this + 98);
  if ((v34 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v49, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v37 = google::protobuf::internal::LogMessage::operator<<(v49, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v48, &v37->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v49[0].__r_.__value_.__l.__data_);
  }

  else if (v34)
  {
    v35 = (*(this + 50) + 8);
    do
    {
      v36 = *v35++;
      protobuf::Intelligence_Variable::Clear(v36);
      --v34;
    }

    while (v34);
    *(this + 98) = 0;
  }

  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>(this + 408);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(this + 432);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 456);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 480);
  v38 = *(this + 128);
  if ((v38 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v49, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v41 = google::protobuf::internal::LogMessage::operator<<(v49, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v48, &v41->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v49[0].__r_.__value_.__l.__data_);
  }

  else if (v38)
  {
    v39 = (*(this + 65) + 8);
    do
    {
      v40 = *v39++;
      protobuf::Intelligence_Event::Clear(v40);
      --v38;
    }

    while (v38);
    *(this + 128) = 0;
  }

  v42 = *(this + 4);
  if ((v42 & 3) != 0)
  {
    if (v42)
    {
      v43 = *(this + 66);
      if (*(v43 + 23) < 0)
      {
        **v43 = 0;
        *(v43 + 8) = 0;
        if ((v42 & 2) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_66;
      }

      *v43 = 0;
      *(v43 + 23) = 0;
    }

    if ((v42 & 2) == 0)
    {
      goto LABEL_69;
    }

LABEL_66:
    v44 = *(this + 67);
    if (!v44)
    {
      google::protobuf::internal::LogMessage::LogMessage(v49, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 14304);
      v45 = google::protobuf::internal::LogMessage::operator<<(v49, "CHECK failed: start_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v48, &v45->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v49[0].__r_.__value_.__l.__data_);
      v44 = *(this + 67);
    }

    protobuf::Intelligence_Start::Clear(v44);
  }

LABEL_69:
  if ((v42 & 0xC) != 0)
  {
    *(this + 552) = 0;
    *(this + 68) = 0;
  }

  v47 = *(this + 8);
  v46 = this + 8;
  *(v46 + 2) = 0;
  if (v47)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v46);
  }
}

void sub_254CF48F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *protobuf::Intelligence::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v334 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v334, *(this + 23)) & 1) == 0)
  {
    while (2)
    {
      TagFallback = v334 + 1;
      LODWORD(v7) = *v334;
      if (*v334 < 0)
      {
        v7 = (v7 + (*TagFallback << 7) - 128);
        if (*TagFallback < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v334, v7);
          v334 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_414;
          }

          LODWORD(v7) = v8;
LABEL_7:
          switch(v7 >> 3)
          {
            case 1u:
              if (v7 != 9)
              {
                goto LABEL_397;
              }

              v5 |= 4u;
              *(a1 + 544) = *TagFallback;
              v334 = (TagFallback + 8);
              goto LABEL_410;
            case 2u:
              if (v7 != 18)
              {
                goto LABEL_397;
              }

              v183 = (TagFallback - 1);
              while (2)
              {
                v184 = (v183 + 1);
                v334 = v184;
                v185 = *(a1 + 40);
                if (!v185)
                {
                  v187 = *(a1 + 36);
LABEL_236:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v187 + 1);
                  v185 = *(a1 + 40);
                  v187 = *v185;
                  goto LABEL_237;
                }

                v186 = *(a1 + 32);
                v187 = *v185;
                if (v186 < *v185)
                {
                  *(a1 + 32) = v186 + 1;
                  v188 = *&v185[2 * v186 + 2];
                  goto LABEL_238;
                }

                if (v187 == *(a1 + 36))
                {
                  goto LABEL_236;
                }

LABEL_237:
                *v185 = v187 + 1;
                v188 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Meta>(*(a1 + 24));
                v189 = *(a1 + 32);
                v190 = *(a1 + 40) + 8 * v189;
                *(a1 + 32) = v189 + 1;
                *(v190 + 8) = v188;
                v184 = v334;
LABEL_238:
                v191 = *v184;
                if (*v184 < 0)
                {
                  SizeFallback = google::protobuf::internal::ReadSizeFallback(v184, *v184);
                  if (!SizeFallback)
                  {
                    goto LABEL_413;
                  }

                  v192 = SizeFallback;
                  v191 = v194;
                }

                else
                {
                  v192 = v184 + 1;
                }

                v195 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v192, v191);
                v196 = *(this + 22);
                v23 = __OFSUB__(v196--, 1);
                *(this + 22) = v196;
                if (v196 < 0 == v23)
                {
                  v197 = v195;
                  v183 = protobuf::Intelligence_Meta::_InternalParse(v188, v192, this);
                  if (v183)
                  {
                    ++*(this + 22);
                    if (!*(this + 20))
                    {
                      v198 = *(this + 7) + v197;
                      *(this + 7) = v198;
                      v199 = *(this + 1) + (v198 & (v198 >> 31));
                      *this = v199;
                      v334 = v183;
                      if (v199 <= v183 || *v183 != 18)
                      {
                        goto LABEL_410;
                      }

                      continue;
                    }
                  }
                }

                goto LABEL_413;
              }

            case 4u:
              if (v7 != 34)
              {
                goto LABEL_397;
              }

              v73 = (TagFallback - 1);
              while (2)
              {
                v74 = (v73 + 1);
                v334 = v74;
                v75 = *(a1 + 64);
                if (!v75)
                {
                  v77 = *(a1 + 60);
LABEL_98:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v77 + 1);
                  v75 = *(a1 + 64);
                  v77 = *v75;
                  goto LABEL_99;
                }

                v76 = *(a1 + 56);
                v77 = *v75;
                if (v76 < *v75)
                {
                  *(a1 + 56) = v76 + 1;
                  v78 = *&v75[2 * v76 + 2];
                  goto LABEL_100;
                }

                if (v77 == *(a1 + 60))
                {
                  goto LABEL_98;
                }

LABEL_99:
                *v75 = v77 + 1;
                v78 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_DialogResponse>(*(a1 + 48));
                v79 = *(a1 + 56);
                v80 = *(a1 + 64) + 8 * v79;
                *(a1 + 56) = v79 + 1;
                *(v80 + 8) = v78;
                v74 = v334;
LABEL_100:
                v81 = *v74;
                if (*v74 < 0)
                {
                  v83 = google::protobuf::internal::ReadSizeFallback(v74, *v74);
                  if (!v83)
                  {
                    goto LABEL_413;
                  }

                  v82 = v83;
                  v81 = v84;
                }

                else
                {
                  v82 = v74 + 1;
                }

                v85 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v82, v81);
                v86 = *(this + 22);
                v23 = __OFSUB__(v86--, 1);
                *(this + 22) = v86;
                if (v86 < 0 == v23)
                {
                  v87 = v85;
                  v73 = protobuf::Intelligence_DialogResponse::_InternalParse(v78, v82, this);
                  if (v73)
                  {
                    ++*(this + 22);
                    if (!*(this + 20))
                    {
                      v88 = *(this + 7) + v87;
                      *(this + 7) = v88;
                      v89 = *(this + 1) + (v88 & (v88 >> 31));
                      *this = v89;
                      v334 = v73;
                      if (v89 <= v73 || *v73 != 34)
                      {
                        goto LABEL_410;
                      }

                      continue;
                    }
                  }
                }

                goto LABEL_413;
              }

            case 5u:
              if (v7 != 42)
              {
                goto LABEL_397;
              }

              v166 = (TagFallback - 1);
              while (2)
              {
                v167 = (v166 + 1);
                v334 = v167;
                v168 = *(a1 + 88);
                if (!v168)
                {
                  v170 = *(a1 + 84);
LABEL_217:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v170 + 1);
                  v168 = *(a1 + 88);
                  v170 = *v168;
                  goto LABEL_218;
                }

                v169 = *(a1 + 80);
                v170 = *v168;
                if (v169 < *v168)
                {
                  *(a1 + 80) = v169 + 1;
                  v171 = *&v168[2 * v169 + 2];
                  goto LABEL_219;
                }

                if (v170 == *(a1 + 84))
                {
                  goto LABEL_217;
                }

LABEL_218:
                *v168 = v170 + 1;
                v171 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_BehaviorResponse>(*(a1 + 72));
                v172 = *(a1 + 80);
                v173 = *(a1 + 88) + 8 * v172;
                *(a1 + 80) = v172 + 1;
                *(v173 + 8) = v171;
                v167 = v334;
LABEL_219:
                v174 = *v167;
                if (*v167 < 0)
                {
                  v176 = google::protobuf::internal::ReadSizeFallback(v167, *v167);
                  if (!v176)
                  {
                    goto LABEL_413;
                  }

                  v175 = v176;
                  v174 = v177;
                }

                else
                {
                  v175 = v167 + 1;
                }

                v178 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v175, v174);
                v179 = *(this + 22);
                v23 = __OFSUB__(v179--, 1);
                *(this + 22) = v179;
                if (v179 < 0 == v23)
                {
                  v180 = v178;
                  v166 = protobuf::Intelligence_BehaviorResponse::_InternalParse(v171, v175, this);
                  if (v166)
                  {
                    ++*(this + 22);
                    if (!*(this + 20))
                    {
                      v181 = *(this + 7) + v180;
                      *(this + 7) = v181;
                      v182 = *(this + 1) + (v181 & (v181 >> 31));
                      *this = v182;
                      v334 = v166;
                      if (v182 <= v166 || *v166 != 42)
                      {
                        goto LABEL_410;
                      }

                      continue;
                    }
                  }
                }

                goto LABEL_413;
              }

            case 6u:
              if (v7 != 50)
              {
                goto LABEL_397;
              }

              v90 = (TagFallback - 1);
              while (2)
              {
                v91 = (v90 + 1);
                v334 = v91;
                v92 = *(a1 + 112);
                if (!v92)
                {
                  v94 = *(a1 + 108);
LABEL_117:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96), v94 + 1);
                  v92 = *(a1 + 112);
                  v94 = *v92;
                  goto LABEL_118;
                }

                v93 = *(a1 + 104);
                v94 = *v92;
                if (v93 < *v92)
                {
                  *(a1 + 104) = v93 + 1;
                  v95 = *&v92[2 * v93 + 2];
                  goto LABEL_119;
                }

                if (v94 == *(a1 + 108))
                {
                  goto LABEL_117;
                }

LABEL_118:
                *v92 = v94 + 1;
                v95 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_ReferenceResponse>(*(a1 + 96));
                v96 = *(a1 + 104);
                v97 = *(a1 + 112) + 8 * v96;
                *(a1 + 104) = v96 + 1;
                *(v97 + 8) = v95;
                v91 = v334;
LABEL_119:
                v98 = *v91;
                if (*v91 < 0)
                {
                  v100 = google::protobuf::internal::ReadSizeFallback(v91, *v91);
                  if (!v100)
                  {
                    goto LABEL_413;
                  }

                  v99 = v100;
                  v98 = v101;
                }

                else
                {
                  v99 = v91 + 1;
                }

                v102 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v99, v98);
                v103 = *(this + 22);
                v23 = __OFSUB__(v103--, 1);
                *(this + 22) = v103;
                if (v103 < 0 == v23)
                {
                  v104 = v102;
                  v90 = protobuf::Intelligence_ReferenceResponse::_InternalParse(v95, v99, this);
                  if (v90)
                  {
                    ++*(this + 22);
                    if (!*(this + 20))
                    {
                      v105 = *(this + 7) + v104;
                      *(this + 7) = v105;
                      v106 = *(this + 1) + (v105 & (v105 >> 31));
                      *this = v106;
                      v334 = v90;
                      if (v106 <= v90 || *v90 != 50)
                      {
                        goto LABEL_410;
                      }

                      continue;
                    }
                  }
                }

                goto LABEL_413;
              }

            case 7u:
              if (v7 != 58)
              {
                goto LABEL_397;
              }

              v141 = TagFallback - 1;
              while (1)
              {
                v142 = (v141 + 1);
                v334 = (v141 + 1);
                v143 = *(a1 + 136);
                if (!v143)
                {
                  break;
                }

                v144 = *(a1 + 128);
                v145 = *v143;
                if (v144 >= *v143)
                {
                  if (v145 == *(a1 + 132))
                  {
LABEL_185:
                    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120), v145 + 1);
                    v143 = *(a1 + 136);
                    v145 = *v143;
                  }

                  *v143 = v145 + 1;
                  v146 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_ResponseGroup>(*(a1 + 120));
                  v147 = *(a1 + 128);
                  v148 = *(a1 + 136) + 8 * v147;
                  *(a1 + 128) = v147 + 1;
                  *(v148 + 8) = v146;
                  v142 = v334;
                  goto LABEL_187;
                }

                *(a1 + 128) = v144 + 1;
                v146 = *&v143[2 * v144 + 2];
LABEL_187:
                v141 = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_ResponseGroup>(this, v146, v142);
                v334 = v141;
                if (!v141)
                {
                  goto LABEL_413;
                }

                if (*this <= v141 || *v141 != 58)
                {
                  goto LABEL_410;
                }
              }

              v145 = *(a1 + 132);
              goto LABEL_185;
            case 8u:
              if (v7 != 66)
              {
                goto LABEL_397;
              }

              v217 = TagFallback - 1;
              while (1)
              {
                v218 = (v217 + 1);
                v334 = (v217 + 1);
                v219 = *(a1 + 160);
                if (!v219)
                {
                  break;
                }

                v220 = *(a1 + 152);
                v221 = *v219;
                if (v220 >= *v219)
                {
                  if (v221 == *(a1 + 156))
                  {
LABEL_274:
                    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 144), v221 + 1);
                    v219 = *(a1 + 160);
                    v221 = *v219;
                  }

                  *v219 = v221 + 1;
                  v222 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup>(*(a1 + 144));
                  v223 = *(a1 + 152);
                  v224 = *(a1 + 160) + 8 * v223;
                  *(a1 + 152) = v223 + 1;
                  *(v224 + 8) = v222;
                  v218 = v334;
                  goto LABEL_276;
                }

                *(a1 + 152) = v220 + 1;
                v222 = *&v219[2 * v220 + 2];
LABEL_276:
                v217 = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_InputGroup>(this, v222, v218);
                v334 = v217;
                if (!v217)
                {
                  goto LABEL_413;
                }

                if (*this <= v217 || *v217 != 66)
                {
                  goto LABEL_410;
                }
              }

              v221 = *(a1 + 156);
              goto LABEL_274;
            case 9u:
              if (v7 != 74)
              {
                goto LABEL_397;
              }

              v225 = TagFallback - 1;
              while (2)
              {
                v226 = (v225 + 1);
                v334 = v226;
                v227 = *(a1 + 184);
                if (!v227)
                {
                  v229 = *(a1 + 180);
LABEL_287:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 168), v229 + 1);
                  v227 = *(a1 + 184);
                  v229 = *v227;
                  goto LABEL_288;
                }

                v228 = *(a1 + 176);
                v229 = *v227;
                if (v228 < *v227)
                {
                  *(a1 + 176) = v228 + 1;
                  v230 = *&v227[2 * v228 + 2];
                  goto LABEL_289;
                }

                if (v229 == *(a1 + 180))
                {
                  goto LABEL_287;
                }

LABEL_288:
                *v227 = v229 + 1;
                v230 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Activity>(*(a1 + 168));
                v231 = *(a1 + 176);
                v232 = *(a1 + 184) + 8 * v231;
                *(a1 + 176) = v231 + 1;
                *(v232 + 8) = v230;
                v226 = v334;
LABEL_289:
                v233 = *v226;
                if (*v226 < 0)
                {
                  v235 = google::protobuf::internal::ReadSizeFallback(v226, *v226);
                  if (!v235)
                  {
                    goto LABEL_413;
                  }

                  v234 = v235;
                  v233 = v236;
                }

                else
                {
                  v234 = v226 + 1;
                }

                v237 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v234, v233);
                v238 = *(this + 22);
                v23 = __OFSUB__(v238--, 1);
                *(this + 22) = v238;
                if (v238 < 0 == v23)
                {
                  v239 = v237;
                  v225 = protobuf::Intelligence_Activity::_InternalParse(v230, v234, this);
                  if (v225)
                  {
                    ++*(this + 22);
                    if (!*(this + 20))
                    {
                      v240 = *(this + 7) + v239;
                      *(this + 7) = v240;
                      v241 = *(this + 1) + (v240 & (v240 >> 31));
                      *this = v241;
                      v334 = v225;
                      if (v241 <= v225 || *v225 != 74)
                      {
                        goto LABEL_410;
                      }

                      continue;
                    }
                  }
                }

                goto LABEL_413;
              }

            case 0xAu:
              if (v7 != 82)
              {
                goto LABEL_397;
              }

              v293 = (TagFallback - 1);
              while (2)
              {
                v294 = (v293 + 1);
                v334 = v294;
                v295 = *(a1 + 208);
                if (!v295)
                {
                  v297 = *(a1 + 204);
LABEL_363:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 192), v297 + 1);
                  v295 = *(a1 + 208);
                  v297 = *v295;
                  goto LABEL_364;
                }

                v296 = *(a1 + 200);
                v297 = *v295;
                if (v296 < *v295)
                {
                  *(a1 + 200) = v296 + 1;
                  v298 = *&v295[2 * v296 + 2];
                  goto LABEL_365;
                }

                if (v297 == *(a1 + 204))
                {
                  goto LABEL_363;
                }

LABEL_364:
                *v295 = v297 + 1;
                v298 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Utterance>(*(a1 + 192));
                v299 = *(a1 + 200);
                v300 = *(a1 + 208) + 8 * v299;
                *(a1 + 200) = v299 + 1;
                *(v300 + 8) = v298;
                v294 = v334;
LABEL_365:
                v301 = *v294;
                if (*v294 < 0)
                {
                  v303 = google::protobuf::internal::ReadSizeFallback(v294, *v294);
                  if (!v303)
                  {
                    goto LABEL_413;
                  }

                  v302 = v303;
                  v301 = v304;
                }

                else
                {
                  v302 = v294 + 1;
                }

                v305 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v302, v301);
                v306 = *(this + 22);
                v23 = __OFSUB__(v306--, 1);
                *(this + 22) = v306;
                if (v306 < 0 == v23)
                {
                  v307 = v305;
                  v293 = protobuf::Intelligence_Utterance::_InternalParse(v298, v302, this);
                  if (v293)
                  {
                    ++*(this + 22);
                    if (!*(this + 20))
                    {
                      v308 = *(this + 7) + v307;
                      *(this + 7) = v308;
                      v309 = *(this + 1) + (v308 & (v308 >> 31));
                      *this = v309;
                      v334 = v293;
                      if (v309 <= v293 || *v293 != 82)
                      {
                        goto LABEL_410;
                      }

                      continue;
                    }
                  }
                }

                goto LABEL_413;
              }

            case 0xBu:
              if (v7 != 90)
              {
                goto LABEL_397;
              }

              v276 = (TagFallback - 1);
              while (2)
              {
                v277 = (v276 + 1);
                v334 = v277;
                v278 = *(a1 + 232);
                if (!v278)
                {
                  v280 = *(a1 + 228);
LABEL_344:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 216), v280 + 1);
                  v278 = *(a1 + 232);
                  v280 = *v278;
                  goto LABEL_345;
                }

                v279 = *(a1 + 224);
                v280 = *v278;
                if (v279 < *v278)
                {
                  *(a1 + 224) = v279 + 1;
                  v281 = *&v278[2 * v279 + 2];
                  goto LABEL_346;
                }

                if (v280 == *(a1 + 228))
                {
                  goto LABEL_344;
                }

LABEL_345:
                *v278 = v280 + 1;
                v281 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Character>(*(a1 + 216));
                v282 = *(a1 + 224);
                v283 = *(a1 + 232) + 8 * v282;
                *(a1 + 224) = v282 + 1;
                *(v283 + 8) = v281;
                v277 = v334;
LABEL_346:
                v284 = *v277;
                if (*v277 < 0)
                {
                  v286 = google::protobuf::internal::ReadSizeFallback(v277, *v277);
                  if (!v286)
                  {
                    goto LABEL_413;
                  }

                  v285 = v286;
                  v284 = v287;
                }

                else
                {
                  v285 = v277 + 1;
                }

                v288 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v285, v284);
                v289 = *(this + 22);
                v23 = __OFSUB__(v289--, 1);
                *(this + 22) = v289;
                if (v289 < 0 == v23)
                {
                  v290 = v288;
                  v276 = protobuf::Intelligence_Character::_InternalParse(v281, v285, this);
                  if (v276)
                  {
                    ++*(this + 22);
                    if (!*(this + 20))
                    {
                      v291 = *(this + 7) + v290;
                      *(this + 7) = v291;
                      v292 = *(this + 1) + (v291 & (v291 >> 31));
                      *this = v292;
                      v334 = v276;
                      if (v292 <= v276 || *v276 != 90)
                      {
                        goto LABEL_410;
                      }

                      continue;
                    }
                  }
                }

                goto LABEL_413;
              }

            case 0xDu:
              if (v7 != 106)
              {
                goto LABEL_397;
              }

              v56 = TagFallback - 1;
              while (2)
              {
                v57 = (v56 + 1);
                v334 = v57;
                v58 = *(a1 + 256);
                if (!v58)
                {
                  v60 = *(a1 + 252);
LABEL_79:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 240), v60 + 1);
                  v58 = *(a1 + 256);
                  v60 = *v58;
                  goto LABEL_80;
                }

                v59 = *(a1 + 248);
                v60 = *v58;
                if (v59 < *v58)
                {
                  *(a1 + 248) = v59 + 1;
                  v61 = *&v58[2 * v59 + 2];
                  goto LABEL_81;
                }

                if (v60 == *(a1 + 252))
                {
                  goto LABEL_79;
                }

LABEL_80:
                *v58 = v60 + 1;
                v61 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Intent>(*(a1 + 240));
                v62 = *(a1 + 248);
                v63 = *(a1 + 256) + 8 * v62;
                *(a1 + 248) = v62 + 1;
                *(v63 + 8) = v61;
                v57 = v334;
LABEL_81:
                v64 = *v57;
                if (*v57 < 0)
                {
                  v66 = google::protobuf::internal::ReadSizeFallback(v57, *v57);
                  if (!v66)
                  {
                    goto LABEL_413;
                  }

                  v65 = v66;
                  v64 = v67;
                }

                else
                {
                  v65 = v57 + 1;
                }

                v68 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v65, v64);
                v69 = *(this + 22);
                v23 = __OFSUB__(v69--, 1);
                *(this + 22) = v69;
                if (v69 < 0 == v23)
                {
                  v70 = v68;
                  v56 = protobuf::Intelligence_Intent::_InternalParse(v61, v65, this);
                  if (v56)
                  {
                    ++*(this + 22);
                    if (!*(this + 20))
                    {
                      v71 = *(this + 7) + v70;
                      *(this + 7) = v71;
                      v72 = *(this + 1) + (v71 & (v71 >> 31));
                      *this = v72;
                      v334 = v56;
                      if (v72 <= v56 || *v56 != 106)
                      {
                        goto LABEL_410;
                      }

                      continue;
                    }
                  }
                }

                goto LABEL_413;
              }

            case 0x10u:
              if (v7 != 130)
              {
                goto LABEL_397;
              }

              v149 = (TagFallback - 2);
              while (2)
              {
                v150 = (v149 + 2);
                v334 = v150;
                v151 = *(a1 + 280);
                if (!v151)
                {
                  v153 = *(a1 + 276);
LABEL_198:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 264), v153 + 1);
                  v151 = *(a1 + 280);
                  v153 = *v151;
                  goto LABEL_199;
                }

                v152 = *(a1 + 272);
                v153 = *v151;
                if (v152 < *v151)
                {
                  *(a1 + 272) = v152 + 1;
                  v154 = *&v151[2 * v152 + 2];
                  goto LABEL_200;
                }

                if (v153 == *(a1 + 276))
                {
                  goto LABEL_198;
                }

LABEL_199:
                *v151 = v153 + 1;
                v154 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Condition>(*(a1 + 264));
                v155 = *(a1 + 272);
                v156 = *(a1 + 280) + 8 * v155;
                *(a1 + 272) = v155 + 1;
                *(v156 + 8) = v154;
                v150 = v334;
LABEL_200:
                v157 = *v150;
                if (*v150 < 0)
                {
                  v159 = google::protobuf::internal::ReadSizeFallback(v150, *v150);
                  if (!v159)
                  {
                    goto LABEL_413;
                  }

                  v158 = v159;
                  v157 = v160;
                }

                else
                {
                  v158 = v150 + 1;
                }

                v161 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v158, v157);
                v162 = *(this + 22);
                v23 = __OFSUB__(v162--, 1);
                *(this + 22) = v162;
                if (v162 < 0 == v23)
                {
                  v163 = v161;
                  v149 = protobuf::Intelligence_Condition::_InternalParse(v154, v158, this);
                  if (v149)
                  {
                    ++*(this + 22);
                    if (!*(this + 20))
                    {
                      v164 = *(this + 7) + v163;
                      *(this + 7) = v164;
                      v165 = *(this + 1) + (v164 & (v164 >> 31));
                      *this = v165;
                      v334 = v149;
                      if (v165 <= v149 || *v149 != 386)
                      {
                        goto LABEL_410;
                      }

                      continue;
                    }
                  }
                }

                goto LABEL_413;
              }

            case 0x11u:
              if (v7 != 138)
              {
                goto LABEL_397;
              }

              v116 = TagFallback - 2;
              while (2)
              {
                v117 = (v116 + 2);
                v334 = v117;
                v118 = *(a1 + 304);
                if (!v118)
                {
                  v120 = *(a1 + 300);
LABEL_153:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 288), v120 + 1);
                  v118 = *(a1 + 304);
                  v120 = *v118;
                  goto LABEL_154;
                }

                v119 = *(a1 + 296);
                v120 = *v118;
                if (v119 < *v118)
                {
                  *(a1 + 296) = v119 + 1;
                  v121 = *&v118[2 * v119 + 2];
                  goto LABEL_155;
                }

                if (v120 == *(a1 + 300))
                {
                  goto LABEL_153;
                }

LABEL_154:
                *v118 = v120 + 1;
                v121 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Counter>(*(a1 + 288));
                v122 = *(a1 + 296);
                v123 = *(a1 + 304) + 8 * v122;
                *(a1 + 296) = v122 + 1;
                *(v123 + 8) = v121;
                v117 = v334;
LABEL_155:
                v124 = *v117;
                if (*v117 < 0)
                {
                  v126 = google::protobuf::internal::ReadSizeFallback(v117, *v117);
                  if (!v126)
                  {
                    goto LABEL_413;
                  }

                  v125 = v126;
                  v124 = v127;
                }

                else
                {
                  v125 = v117 + 1;
                }

                v128 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v125, v124);
                v129 = *(this + 22);
                v23 = __OFSUB__(v129--, 1);
                *(this + 22) = v129;
                if (v129 < 0 == v23)
                {
                  v130 = v128;
                  v116 = protobuf::Intelligence_Counter::_InternalParse(v121, v125, this);
                  if (v116)
                  {
                    ++*(this + 22);
                    if (!*(this + 20))
                    {
                      v131 = *(this + 7) + v130;
                      *(this + 7) = v131;
                      v132 = *(this + 1) + (v131 & (v131 >> 31));
                      *this = v132;
                      v334 = v116;
                      if (v132 <= v116 || *v116 != 394)
                      {
                        goto LABEL_410;
                      }

                      continue;
                    }
                  }
                }

                goto LABEL_413;
              }

            case 0x12u:
              if (v7 != 146)
              {
                goto LABEL_397;
              }

              v36 = (TagFallback - 2);
              while (2)
              {
                v37 = (v36 + 2);
                v334 = v37;
                v38 = *(a1 + 328);
                if (!v38)
                {
                  v40 = *(a1 + 324);
LABEL_55:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 312), v40 + 1);
                  v38 = *(a1 + 328);
                  v40 = *v38;
                  goto LABEL_56;
                }

                v39 = *(a1 + 320);
                v40 = *v38;
                if (v39 < *v38)
                {
                  *(a1 + 320) = v39 + 1;
                  v41 = *&v38[2 * v39 + 2];
                  goto LABEL_57;
                }

                if (v40 == *(a1 + 324))
                {
                  goto LABEL_55;
                }

LABEL_56:
                *v38 = v40 + 1;
                v41 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Flag>(*(a1 + 312));
                v42 = *(a1 + 320);
                v43 = *(a1 + 328) + 8 * v42;
                *(a1 + 320) = v42 + 1;
                *(v43 + 8) = v41;
                v37 = v334;
LABEL_57:
                v44 = *v37;
                if (*v37 < 0)
                {
                  v46 = google::protobuf::internal::ReadSizeFallback(v37, *v37);
                  if (!v46)
                  {
                    goto LABEL_413;
                  }

                  v45 = v46;
                  v44 = v47;
                }

                else
                {
                  v45 = v37 + 1;
                }

                v48 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v45, v44);
                v49 = *(this + 22);
                v23 = __OFSUB__(v49--, 1);
                *(this + 22) = v49;
                if (v49 < 0 == v23)
                {
                  v50 = v48;
                  v36 = protobuf::Intelligence_Flag::_InternalParse(v41, v45, this);
                  if (v36)
                  {
                    ++*(this + 22);
                    if (!*(this + 20))
                    {
                      v51 = *(this + 7) + v50;
                      *(this + 7) = v51;
                      v52 = *(this + 1) + (v51 & (v51 >> 31));
                      *this = v52;
                      v334 = v36;
                      if (v52 <= v36 || *v36 != 402)
                      {
                        goto LABEL_410;
                      }

                      continue;
                    }
                  }
                }

                goto LABEL_413;
              }

            case 0x13u:
              if (v7 != 154)
              {
                goto LABEL_397;
              }

              v242 = (TagFallback - 2);
              while (2)
              {
                v243 = (v242 + 2);
                v334 = v243;
                v244 = *(a1 + 352);
                if (!v244)
                {
                  v246 = *(a1 + 348);
LABEL_306:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 336), v246 + 1);
                  v244 = *(a1 + 352);
                  v246 = *v244;
                  goto LABEL_307;
                }

                v245 = *(a1 + 344);
                v246 = *v244;
                if (v245 < *v244)
                {
                  *(a1 + 344) = v245 + 1;
                  v247 = *&v244[2 * v245 + 2];
                  goto LABEL_308;
                }

                if (v246 == *(a1 + 348))
                {
                  goto LABEL_306;
                }

LABEL_307:
                *v244 = v246 + 1;
                v247 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Label>(*(a1 + 336));
                v248 = *(a1 + 344);
                v249 = *(a1 + 352) + 8 * v248;
                *(a1 + 344) = v248 + 1;
                *(v249 + 8) = v247;
                v243 = v334;
LABEL_308:
                v250 = *v243;
                if (*v243 < 0)
                {
                  v252 = google::protobuf::internal::ReadSizeFallback(v243, *v243);
                  if (!v252)
                  {
                    goto LABEL_413;
                  }

                  v251 = v252;
                  v250 = v253;
                }

                else
                {
                  v251 = v243 + 1;
                }

                v254 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v251, v250);
                v255 = *(this + 22);
                v23 = __OFSUB__(v255--, 1);
                *(this + 22) = v255;
                if (v255 < 0 == v23)
                {
                  v256 = v254;
                  v242 = protobuf::Intelligence_Label::_InternalParse(v247, v251, this);
                  if (v242)
                  {
                    ++*(this + 22);
                    if (!*(this + 20))
                    {
                      v257 = *(this + 7) + v256;
                      *(this + 7) = v257;
                      v258 = *(this + 1) + (v257 & (v257 >> 31));
                      *this = v258;
                      v334 = v242;
                      if (v258 <= v242 || *v242 != 410)
                      {
                        goto LABEL_410;
                      }

                      continue;
                    }
                  }
                }

                goto LABEL_413;
              }

            case 0x14u:
              if (v7 != 162)
              {
                goto LABEL_397;
              }

              v259 = TagFallback - 2;
              while (2)
              {
                v260 = (v259 + 2);
                v334 = v260;
                v261 = *(a1 + 376);
                if (!v261)
                {
                  v263 = *(a1 + 372);
LABEL_325:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 360), v263 + 1);
                  v261 = *(a1 + 376);
                  v263 = *v261;
                  goto LABEL_326;
                }

                v262 = *(a1 + 368);
                v263 = *v261;
                if (v262 < *v261)
                {
                  *(a1 + 368) = v262 + 1;
                  v264 = *&v261[2 * v262 + 2];
                  goto LABEL_327;
                }

                if (v263 == *(a1 + 372))
                {
                  goto LABEL_325;
                }

LABEL_326:
                *v261 = v263 + 1;
                v264 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_List>(*(a1 + 360));
                v265 = *(a1 + 368);
                v266 = *(a1 + 376) + 8 * v265;
                *(a1 + 368) = v265 + 1;
                *(v266 + 8) = v264;
                v260 = v334;
LABEL_327:
                v267 = *v260;
                if (*v260 < 0)
                {
                  v269 = google::protobuf::internal::ReadSizeFallback(v260, *v260);
                  if (!v269)
                  {
                    goto LABEL_413;
                  }

                  v268 = v269;
                  v267 = v270;
                }

                else
                {
                  v268 = v260 + 1;
                }

                v271 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v268, v267);
                v272 = *(this + 22);
                v23 = __OFSUB__(v272--, 1);
                *(this + 22) = v272;
                if (v272 < 0 == v23)
                {
                  v273 = v271;
                  v259 = protobuf::Intelligence_List::_InternalParse(v264, v268, this);
                  if (v259)
                  {
                    ++*(this + 22);
                    if (!*(this + 20))
                    {
                      v274 = *(this + 7) + v273;
                      *(this + 7) = v274;
                      v275 = *(this + 1) + (v274 & (v274 >> 31));
                      *this = v275;
                      v334 = v259;
                      if (v275 <= v259 || *v259 != 418)
                      {
                        goto LABEL_410;
                      }

                      continue;
                    }
                  }
                }

                goto LABEL_413;
              }

            case 0x16u:
              if (v7 != 176)
              {
                goto LABEL_397;
              }

              v5 |= 8u;
              v313 = (TagFallback + 1);
              v312 = *TagFallback;
              if ((v312 & 0x8000000000000000) == 0)
              {
                goto LABEL_383;
              }

              v314 = *v313;
              v312 = (v314 << 7) + v312 - 128;
              if (v314 < 0)
              {
                v331 = google::protobuf::internal::VarintParseSlow64(TagFallback, v312);
                v334 = v331;
                *(a1 + 552) = v332 != 0;
                if (!v331)
                {
                  goto LABEL_413;
                }
              }

              else
              {
                v313 = (TagFallback + 2);
LABEL_383:
                v334 = v313;
                *(a1 + 552) = v312 != 0;
              }

              goto LABEL_410;
            case 0x1Au:
              if (v7 != 210)
              {
                goto LABEL_397;
              }

              *(a1 + 16) |= 1u;
              v310 = *(a1 + 528);
              if (v310 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 528, &google::protobuf::internal::fixed_address_empty_string);
              }

              v311 = google::protobuf::internal::InlineGreedyStringParser(v310, TagFallback, this);
              goto LABEL_402;
            case 0x1Bu:
              if (v7 != 218)
              {
                goto LABEL_397;
              }

              v9 = TagFallback - 2;
              while (2)
              {
                v10 = (v9 + 2);
                v334 = v10;
                v11 = *(a1 + 400);
                if (!v11)
                {
                  v13 = *(a1 + 396);
LABEL_19:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 384), v13 + 1);
                  v11 = *(a1 + 400);
                  v13 = *v11;
                  goto LABEL_20;
                }

                v12 = *(a1 + 392);
                v13 = *v11;
                if (v12 < *v11)
                {
                  *(a1 + 392) = v12 + 1;
                  v14 = *&v11[2 * v12 + 2];
                  goto LABEL_21;
                }

                if (v13 == *(a1 + 396))
                {
                  goto LABEL_19;
                }

LABEL_20:
                *v11 = v13 + 1;
                v14 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Variable>(*(a1 + 384));
                v15 = *(a1 + 392);
                v16 = *(a1 + 400) + 8 * v15;
                *(a1 + 392) = v15 + 1;
                *(v16 + 8) = v14;
                v10 = v334;
LABEL_21:
                v17 = *v10;
                if (*v10 < 0)
                {
                  v19 = google::protobuf::internal::ReadSizeFallback(v10, *v10);
                  if (!v19)
                  {
                    goto LABEL_413;
                  }

                  v18 = v19;
                  v17 = v20;
                }

                else
                {
                  v18 = v10 + 1;
                }

                v21 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v18, v17);
                v22 = *(this + 22);
                v23 = __OFSUB__(v22--, 1);
                *(this + 22) = v22;
                if (v22 < 0 == v23)
                {
                  v24 = v21;
                  v9 = protobuf::Intelligence_Variable::_InternalParse(v14, v18, this);
                  if (v9)
                  {
                    ++*(this + 22);
                    if (!*(this + 20))
                    {
                      v25 = *(this + 7) + v24;
                      *(this + 7) = v25;
                      v26 = *(this + 1) + (v25 & (v25 >> 31));
                      *this = v26;
                      v334 = v9;
                      if (v26 <= v9 || *v9 != 474)
                      {
                        goto LABEL_410;
                      }

                      continue;
                    }
                  }
                }

                goto LABEL_413;
              }

            case 0x1Cu:
              if (v7 != 226)
              {
                goto LABEL_397;
              }

              v133 = TagFallback - 2;
              while (1)
              {
                v134 = (v133 + 2);
                v334 = (v133 + 2);
                v135 = *(a1 + 424);
                if (!v135)
                {
                  break;
                }

                v136 = *(a1 + 416);
                v137 = *v135;
                if (v136 >= *v135)
                {
                  if (v137 == *(a1 + 420))
                  {
LABEL_172:
                    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 408), v137 + 1);
                    v135 = *(a1 + 424);
                    v137 = *v135;
                  }

                  *v135 = v137 + 1;
                  v138 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_ResponseGroup>(*(a1 + 408));
                  v139 = *(a1 + 416);
                  v140 = *(a1 + 424) + 8 * v139;
                  *(a1 + 416) = v139 + 1;
                  *(v140 + 8) = v138;
                  v134 = v334;
                  goto LABEL_174;
                }

                *(a1 + 416) = v136 + 1;
                v138 = *&v135[2 * v136 + 2];
LABEL_174:
                v133 = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_ResponseGroup>(this, v138, v134);
                v334 = v133;
                if (!v133)
                {
                  goto LABEL_413;
                }

                if (*this <= v133 || *v133 != 482)
                {
                  goto LABEL_410;
                }
              }

              v137 = *(a1 + 420);
              goto LABEL_172;
            case 0x1Du:
              if (v7 != 234)
              {
                goto LABEL_397;
              }

              v315 = TagFallback - 2;
              while (1)
              {
                v316 = (v315 + 2);
                v334 = (v315 + 2);
                v317 = *(a1 + 448);
                if (!v317)
                {
                  break;
                }

                v318 = *(a1 + 440);
                v319 = *v317;
                if (v318 >= *v317)
                {
                  if (v319 == *(a1 + 444))
                  {
LABEL_391:
                    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 432), v319 + 1);
                    v317 = *(a1 + 448);
                    v319 = *v317;
                  }

                  *v317 = v319 + 1;
                  v320 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup>(*(a1 + 432));
                  v321 = *(a1 + 440);
                  v322 = *(a1 + 448) + 8 * v321;
                  *(a1 + 440) = v321 + 1;
                  *(v322 + 8) = v320;
                  v316 = v334;
                  goto LABEL_393;
                }

                *(a1 + 440) = v318 + 1;
                v320 = *&v317[2 * v318 + 2];
LABEL_393:
                v315 = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_InputGroup>(this, v320, v316);
                v334 = v315;
                if (!v315)
                {
                  goto LABEL_413;
                }

                if (*this <= v315 || *v315 != 490)
                {
                  goto LABEL_410;
                }
              }

              v319 = *(a1 + 444);
              goto LABEL_391;
            case 0x1Eu:
              if (v7 != 242)
              {
                goto LABEL_397;
              }

              v27 = TagFallback - 2;
              while (1)
              {
                v28 = v27 + 2;
                v334 = (v27 + 2);
                v29 = *(a1 + 472);
                if (!v29)
                {
                  break;
                }

                v30 = *(a1 + 464);
                v31 = *v29;
                if (v30 >= *v29)
                {
                  if (v31 == *(a1 + 468))
                  {
LABEL_38:
                    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 456), v31 + 1);
                    v29 = *(a1 + 472);
                    v31 = *v29;
                  }

                  *v29 = v31 + 1;
                  v33 = *(a1 + 456);
                  if (!v33)
                  {
                    operator new();
                  }

                  if (v33[14])
                  {
                  }

                  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v33, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
                  AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
                  AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
                  AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
                  v34 = *(a1 + 464);
                  v35 = *(a1 + 472) + 8 * v34;
                  *(a1 + 464) = v34 + 1;
                  *(v35 + 8) = AlignedAndAddCleanup;
                  v28 = v334;
                  goto LABEL_44;
                }

                *(a1 + 464) = v30 + 1;
                AlignedAndAddCleanup = *&v29[2 * v30 + 2];
LABEL_44:
                v27 = google::protobuf::internal::InlineGreedyStringParser(AlignedAndAddCleanup, v28, this);
                v334 = v27;
                if (!v27)
                {
                  goto LABEL_413;
                }

                if (*this <= v27 || *v27 != 498)
                {
                  goto LABEL_410;
                }
              }

              v31 = *(a1 + 468);
              goto LABEL_38;
            case 0x1Fu:
              if (v7 != 250)
              {
                goto LABEL_397;
              }

              v107 = TagFallback - 2;
              break;
            case 0x20u:
              if (v7 != 2)
              {
                goto LABEL_397;
              }

              *(a1 + 16) |= 2u;
              v53 = *(a1 + 536);
              if (!v53)
              {
                v53 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Start>(0);
                *(a1 + 536) = v53;
                TagFallback = v334;
              }

              v54 = *TagFallback;
              if (*TagFallback < 0)
              {
                v324 = google::protobuf::internal::ReadSizeFallback(TagFallback, *TagFallback);
                if (!v324)
                {
                  goto LABEL_413;
                }

                v55 = v324;
                v54 = v325;
              }

              else
              {
                v55 = TagFallback + 1;
              }

              v326 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v55, v54);
              v327 = *(this + 22);
              v23 = __OFSUB__(v327--, 1);
              *(this + 22) = v327;
              if (v327 < 0 != v23)
              {
                goto LABEL_413;
              }

              v328 = v326;
              v329 = protobuf::Intelligence_Start::_InternalParse(v53, v55, this);
              if (!v329)
              {
                goto LABEL_413;
              }

              ++*(this + 22);
              if (*(this + 20))
              {
                goto LABEL_413;
              }

              v330 = *(this + 7) + v328;
              *(this + 7) = v330;
              *this = *(this + 1) + (v330 & (v330 >> 31));
              v334 = v329;
              goto LABEL_410;
            case 0x21u:
              if (v7 != 10)
              {
                goto LABEL_397;
              }

              v200 = (TagFallback - 2);
              while (2)
              {
                v201 = (v200 + 2);
                v334 = v201;
                v202 = *(a1 + 520);
                if (v202)
                {
                  v203 = *(a1 + 512);
                  v204 = *v202;
                  if (v203 < *v202)
                  {
                    *(a1 + 512) = v203 + 1;
                    v205 = *&v202[2 * v203 + 2];
                    goto LABEL_257;
                  }

                  if (v204 != *(a1 + 516))
                  {
LABEL_256:
                    *v202 = v204 + 1;
                    v205 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Event>(*(a1 + 504));
                    v206 = *(a1 + 512);
                    v207 = *(a1 + 520) + 8 * v206;
                    *(a1 + 512) = v206 + 1;
                    *(v207 + 8) = v205;
                    v201 = v334;
LABEL_257:
                    v208 = *v201;
                    if (*v201 < 0)
                    {
                      v210 = google::protobuf::internal::ReadSizeFallback(v201, *v201);
                      if (!v210)
                      {
                        goto LABEL_413;
                      }

                      v209 = v210;
                      v208 = v211;
                    }

                    else
                    {
                      v209 = v201 + 1;
                    }

                    v212 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v209, v208);
                    v213 = *(this + 22);
                    v23 = __OFSUB__(v213--, 1);
                    *(this + 22) = v213;
                    if (v213 < 0 == v23)
                    {
                      v214 = v212;
                      v200 = protobuf::Intelligence_Event::_InternalParse(v205, v209, this);
                      if (v200)
                      {
                        ++*(this + 22);
                        if (!*(this + 20))
                        {
                          v215 = *(this + 7) + v214;
                          *(this + 7) = v215;
                          v216 = *(this + 1) + (v215 & (v215 >> 31));
                          *this = v216;
                          v334 = v200;
                          if (v216 <= v200 || *v200 != 650)
                          {
                            goto LABEL_410;
                          }

                          continue;
                        }
                      }
                    }

LABEL_413:
                    TagFallback = 0;
                    goto LABEL_414;
                  }
                }

                else
                {
                  v204 = *(a1 + 516);
                }

                break;
              }

              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 504), v204 + 1);
              v202 = *(a1 + 520);
              v204 = *v202;
              goto LABEL_256;
            default:
LABEL_397:
              if (v7)
              {
                v323 = (v7 & 7) == 4;
              }

              else
              {
                v323 = 1;
              }

              if (v323)
              {
                *(this + 20) = v7 - 1;
                goto LABEL_414;
              }

              v311 = google::protobuf::internal::UnknownFieldParse(v7, (a1 + 8), TagFallback, this);
LABEL_402:
              v334 = v311;
              if (!v311)
              {
                goto LABEL_413;
              }

LABEL_410:
              if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v334, *(this + 23)))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v108 = v107 + 2;
            v334 = (v107 + 2);
            v109 = *(a1 + 496);
            if (!v109)
            {
              break;
            }

            v110 = *(a1 + 488);
            v111 = *v109;
            if (v110 >= *v109)
            {
              if (v111 == *(a1 + 492))
              {
LABEL_136:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 480), v111 + 1);
                v109 = *(a1 + 496);
                v111 = *v109;
              }

              *v109 = v111 + 1;
              v113 = *(a1 + 480);
              if (!v113)
              {
                operator new();
              }

              if (v113[14])
              {
              }

              v112 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v113, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
              v112->__r_.__value_.__r.__words[0] = 0;
              v112->__r_.__value_.__l.__size_ = 0;
              v112->__r_.__value_.__r.__words[2] = 0;
              v114 = *(a1 + 488);
              v115 = *(a1 + 496) + 8 * v114;
              *(a1 + 488) = v114 + 1;
              *(v115 + 8) = v112;
              v108 = v334;
              goto LABEL_142;
            }

            *(a1 + 488) = v110 + 1;
            v112 = *&v109[2 * v110 + 2];
LABEL_142:
            v107 = google::protobuf::internal::InlineGreedyStringParser(v112, v108, this);
            v334 = v107;
            if (!v107)
            {
              goto LABEL_413;
            }

            if (*this <= v107 || *v107 != 506)
            {
              goto LABEL_410;
            }
          }

          v111 = *(a1 + 492);
          goto LABEL_136;
        }

        TagFallback = v334 + 2;
      }

      break;
    }

    v334 = TagFallback;
    goto LABEL_7;
  }

LABEL_2:
  TagFallback = v334;
LABEL_414:
  *(a1 + 16) |= v5;
  return TagFallback;
}