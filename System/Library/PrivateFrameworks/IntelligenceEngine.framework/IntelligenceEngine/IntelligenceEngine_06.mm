protobuf::Intelligence_Utterance *protobuf::Intelligence_Utterance::Intelligence_Utterance(protobuf::Intelligence_Utterance *this)
{
  *this = &unk_286719D90;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_Utterance_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Utterance_intelligence_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 10) = 0;
  return this;
}

protobuf::Intelligence_Utterance *protobuf::Intelligence_Utterance::Intelligence_Utterance(protobuf::Intelligence_Utterance *this, const protobuf::Intelligence_Utterance *a2)
{
  *this = &unk_286719D90;
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

  *(this + 10) = *(a2 + 10);
  return this;
}

void protobuf::Intelligence_Utterance::~Intelligence_Utterance(protobuf::Intelligence_Utterance *this)
{
  *this = &unk_286719D90;
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
  protobuf::Intelligence_Utterance::~Intelligence_Utterance(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_Utterance::default_instance(protobuf::Intelligence_Utterance *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_Utterance_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Utterance_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_Utterance_default_instance_;
}

void protobuf::Intelligence_Utterance::Clear(protobuf::Intelligence_Utterance *this)
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
  *(v4 + 8) = 0;
  *(v4 + 2) = 0;
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v4);
  }
}

google::protobuf::internal *protobuf::Intelligence_Utterance::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *this)
{
  v20 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v20, this[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      TagFallback = (v20 + 1);
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
          if (v8 != 18)
          {
            goto LABEL_14;
          }

          *(a1 + 16) |= 2u;
          v13 = *(a1 + 32);
          if (v13 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 32, &google::protobuf::internal::fixed_address_empty_string);
          }
        }

        else
        {
          if (v9 != 1 || v8 != 10)
          {
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
            goto LABEL_30;
          }

          *(a1 + 16) |= 1u;
          v13 = *(a1 + 24);
          if (v13 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 24, &google::protobuf::internal::fixed_address_empty_string);
          }
        }

        v12 = google::protobuf::internal::InlineGreedyStringParser(v13, TagFallback, this);
LABEL_30:
        v20 = v12;
        if (!v12)
        {
          goto LABEL_36;
        }

        goto LABEL_31;
      }

      if (v8 != 24)
      {
        goto LABEL_14;
      }

      v5 |= 4u;
      v15 = (TagFallback + 1);
      LODWORD(v14) = *TagFallback;
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_26;
      }

      v16 = *v15;
      v14 = v14 + (v16 << 7) - 128;
      if ((v16 & 0x80000000) == 0)
      {
        v15 = (TagFallback + 2);
LABEL_26:
        v20 = v15;
        *(a1 + 40) = v14;
        goto LABEL_31;
      }

      v18 = google::protobuf::internal::VarintParseSlow64(TagFallback, v14);
      v20 = v18;
      *(a1 + 40) = v19;
      if (!v18)
      {
LABEL_36:
        TagFallback = 0;
        goto LABEL_3;
      }

LABEL_31:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v20, this[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    TagFallback = (v20 + 2);
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

unsigned __int8 *protobuf::Intelligence_Utterance::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_Utterance *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
        goto LABEL_16;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, *(this + 4), v4);
  if ((v6 & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 10);
  *v4 = 24;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v8 | 0x80;
        v9 = v8 >> 7;
        ++v4;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
      *(v4 - 1) = v9;
    }

    else
    {
      v4[2] = v8;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_16:
  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return v4;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(v13 + 23);
  if (v14 < 0)
  {
    v15 = *v13;
    v14 = *(v13 + 8);
  }

  else
  {
    v15 = v13;
  }

  if (*a3 - v4 >= v14)
  {
    v16 = v14;
    memcpy(v4, v15, v14);
    v4 += v16;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v15, v14, v4);
}

uint64_t protobuf::Intelligence_Utterance::ByteSizeLong(protobuf::Intelligence_Utterance *this)
{
  v1 = *(this + 4);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_17;
  }

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
  if ((v1 & 4) != 0)
  {
    v9 = *(this + 10);
    if (v9 < 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v10;
  }

LABEL_17:
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

void protobuf::Intelligence_Utterance::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_Utterance::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_Utterance::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 7497);
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
      *(this + 10) = *(a2 + 10);
    }

    *(this + 4) |= v6;
  }
}

void sub_254CDF200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Utterance::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_Utterance::Clear(this);

    protobuf::Intelligence_Utterance::MergeFrom(this, a2);
  }
}

void protobuf::Intelligence_Utterance::InternalSwap(protobuf::Intelligence_Utterance *this, protobuf::Intelligence_Utterance *a2)
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
  v23 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v23;
}

protobuf::Intelligence_Character *protobuf::Intelligence_Character::Intelligence_Character(protobuf::Intelligence_Character *this)
{
  *this = &unk_286719E20;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_Character_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Character_intelligence_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 5) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

protobuf::Intelligence_Character *protobuf::Intelligence_Character::Intelligence_Character(protobuf::Intelligence_Character *this, const protobuf::Intelligence_Character *a2)
{
  *this = &unk_286719E20;
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

  *(this + 5) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v4 & 4) != 0)
  {
    v8 = *(a2 + 5);
    if (v8 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 40, v8);
    }
  }

  return this;
}

void protobuf::Intelligence_Character::~Intelligence_Character(protobuf::Intelligence_Character *this)
{
  *this = &unk_286719E20;
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

  v6 = *(this + 5);
  if (v6 != &google::protobuf::internal::fixed_address_empty_string && v6 != 0)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x259C29D90](v6, 0x1012C40EC159624);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_Character::~Intelligence_Character(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_Character::default_instance(protobuf::Intelligence_Character *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_Character_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Character_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_Character_default_instance_;
}

void protobuf::Intelligence_Character::Clear(protobuf::Intelligence_Character *this)
{
  v1 = *(this + 4);
  if ((v1 & 7) == 0)
  {
    goto LABEL_17;
  }

  if (v1)
  {
    v2 = *(this + 3);
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v4 = *(this + 5);
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

    goto LABEL_17;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_10:
  v3 = *(this + 4);
  if (*(v3 + 23) < 0)
  {
    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v1 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  *v3 = 0;
  *(v3 + 23) = 0;
  if ((v1 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v6 = *(this + 8);
  v5 = this + 8;
  *(v5 + 2) = 0;
  if (v6)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v5);
  }
}

google::protobuf::internal *protobuf::Intelligence_Character::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v14 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v14, *(this + 23));
  result = v14;
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
      v14 = result;
      if (!result)
      {
        return result;
      }

      v7 = result;
      LODWORD(v8) = v13;
LABEL_7:
      v9 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 26)
        {
          *(a1 + 16) |= 4u;
          v11 = *(a1 + 40);
          if (v11 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 40, &google::protobuf::internal::fixed_address_empty_string);
          }

          goto LABEL_24;
        }
      }

      else if (v9 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 2u;
          v11 = *(a1 + 32);
          if (v11 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 32, &google::protobuf::internal::fixed_address_empty_string);
          }

          goto LABEL_24;
        }
      }

      else if (v9 == 1 && v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v11 = *(a1 + 24);
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 24, &google::protobuf::internal::fixed_address_empty_string);
        }

LABEL_24:
        result = google::protobuf::internal::InlineGreedyStringParser(v11, v7, this);
        goto LABEL_25;
      }

      if (!v8 || (v8 & 7) == 4)
      {
        *(this + 20) = v8 - 1;
        return v7;
      }

      result = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), v7, this);
LABEL_25:
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

    v7 = result + 2;
LABEL_6:
    v14 = v7;
    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *protobuf::Intelligence_Character::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_Character *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, *(this + 4), v4);
  if ((v6 & 4) != 0)
  {
LABEL_4:
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 3, *(this + 5), v4);
  }

LABEL_5:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 23);
  if (v10 < 0)
  {
    v11 = *v9;
    v10 = *(v9 + 8);
  }

  else
  {
    v11 = v9;
  }

  if (*a3 - v4 >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v11, v10, v4);
}

uint64_t protobuf::Intelligence_Character::ByteSizeLong(protobuf::Intelligence_Character *this)
{
  v1 = *(this + 4);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_16;
  }

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
  if ((v1 & 4) != 0)
  {
    v9 = *(this + 5);
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  v12 = *(this + 1);
  if (v12)
  {
    v14 = v12 & 0xFFFFFFFFFFFFFFFELL;
    v15 = *((v12 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v15 < 0)
    {
      v15 = *(v14 + 8);
    }

    v2 += v15;
  }

  *(this + 5) = v2;
  return v2;
}

void protobuf::Intelligence_Character::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_Character::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_Character::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 7769);
    v4 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
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
      v13 = this[5];
      v12 = (this + 5);
      v11 = v13;
      *(v12 - 6) |= 4u;
      v14 = a2[5];
      if (v13 != v14)
      {
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v12, v14);
        }

        std::string::operator=(v11, v14);
      }
    }
  }
}

void sub_254CDFDC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Character::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_Character::Clear(this);

    protobuf::Intelligence_Character::MergeFrom(this, a2);
  }
}

__n128 protobuf::Intelligence_Character::InternalSwap(protobuf::Intelligence_Character *this, protobuf::Intelligence_Character *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v27;
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

LABEL_28:
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
  v17 = *(this + 4);
  if (v17 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 4) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_20;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 4, 0, &google::protobuf::internal::fixed_address_empty_string);
    v17 = *(this + 4);
  }

  v18 = *(a2 + 4);
  if (v18 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 4, 0, &google::protobuf::internal::fixed_address_empty_string);
    v18 = *(a2 + 4);
  }

  v19 = v17[2];
  result = *v17;
  v20 = v18[2];
  *v17 = *v18;
  v17[2] = v20;
  *v18 = result;
  v18[2] = v19;
LABEL_20:
  v23 = *(this + 5);
  v21 = (this + 40);
  v22 = v23;
  if (v23 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 5) == &google::protobuf::internal::fixed_address_empty_string)
    {
      return result;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(v21, 0, &google::protobuf::internal::fixed_address_empty_string);
    v22 = *v21;
  }

  v24 = *(a2 + 5);
  if (v24 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 5, 0, &google::protobuf::internal::fixed_address_empty_string);
    v24 = *(a2 + 5);
  }

  v25 = v22->__r_.__value_.__r.__words[2];
  result = *&v22->__r_.__value_.__l.__data_;
  v26 = v24[2];
  *&v22->__r_.__value_.__l.__data_ = *v24;
  v22->__r_.__value_.__r.__words[2] = v26;
  *v24 = result;
  v24[2] = v25;
  return result;
}

protobuf::Intelligence_Counter *protobuf::Intelligence_Counter::Intelligence_Counter(protobuf::Intelligence_Counter *this)
{
  *this = &unk_286719EB0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_Counter_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Counter_intelligence_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = 0;
  return this;
}

protobuf::Intelligence_Counter *protobuf::Intelligence_Counter::Intelligence_Counter(protobuf::Intelligence_Counter *this, const protobuf::Intelligence_Counter *a2)
{
  *this = &unk_286719EB0;
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

void protobuf::Intelligence_Counter::~Intelligence_Counter(protobuf::Intelligence_Counter *this)
{
  *this = &unk_286719EB0;
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
  protobuf::Intelligence_Counter::~Intelligence_Counter(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_Counter::default_instance(protobuf::Intelligence_Counter *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_Counter_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Counter_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_Counter_default_instance_;
}

void protobuf::Intelligence_Counter::Clear(protobuf::Intelligence_Counter *this)
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

char *protobuf::Intelligence_Counter::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *this)
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

unsigned __int8 *protobuf::Intelligence_Counter::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_Counter *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t protobuf::Intelligence_Counter::ByteSizeLong(protobuf::Intelligence_Counter *this)
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

void protobuf::Intelligence_Counter::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_Counter::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_Counter::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 8001);
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

void sub_254CE07A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Counter::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_Counter::Clear(this);

    protobuf::Intelligence_Counter::MergeFrom(this, a2);
  }
}

double protobuf::Intelligence_Counter::InternalSwap(protobuf::Intelligence_Counter *this, protobuf::Intelligence_Counter *a2)
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

protobuf::Intelligence_Flag *protobuf::Intelligence_Flag::Intelligence_Flag(protobuf::Intelligence_Flag *this)
{
  *this = &unk_286719F40;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_Flag_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Flag_intelligence_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 32) = 0;
  return this;
}

protobuf::Intelligence_Flag *protobuf::Intelligence_Flag::Intelligence_Flag(protobuf::Intelligence_Flag *this, const protobuf::Intelligence_Flag *a2)
{
  *this = &unk_286719F40;
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

  *(this + 32) = *(a2 + 32);
  return this;
}

void protobuf::Intelligence_Flag::~Intelligence_Flag(protobuf::Intelligence_Flag *this)
{
  *this = &unk_286719F40;
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
  protobuf::Intelligence_Flag::~Intelligence_Flag(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_Flag::default_instance(protobuf::Intelligence_Flag *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_Flag_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Flag_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_Flag_default_instance_;
}

void protobuf::Intelligence_Flag::Clear(protobuf::Intelligence_Flag *this)
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
  v2[24] = 0;
  *(v2 + 2) = 0;
  if (v3)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v2);
  }
}

google::protobuf::internal *protobuf::Intelligence_Flag::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *this)
{
  v19 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v19, this[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      TagFallback = (v19 + 1);
      LODWORD(v8) = *v19;
      if ((*v19 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      v8 = (v8 + (*TagFallback << 7) - 128);
      if ((*TagFallback & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v19, v8);
      v19 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_3;
      }

      LODWORD(v8) = v16;
LABEL_8:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v15 = *(a1 + 24);
          if (v15 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 24, &google::protobuf::internal::fixed_address_empty_string);
          }

          v11 = google::protobuf::internal::InlineGreedyStringParser(v15, TagFallback, this);
        }

        else
        {
LABEL_13:
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
        }

        v19 = v11;
        if (!v11)
        {
          goto LABEL_32;
        }

        goto LABEL_27;
      }

      if (v8 != 16)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v13 = (TagFallback + 1);
      v12 = *TagFallback;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_22;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = (TagFallback + 2);
LABEL_22:
        v19 = v13;
        *(a1 + 32) = v12 != 0;
        goto LABEL_27;
      }

      v17 = google::protobuf::internal::VarintParseSlow64(TagFallback, v12);
      v19 = v17;
      *(a1 + 32) = v18 != 0;
      if (!v17)
      {
LABEL_32:
        TagFallback = 0;
        goto LABEL_3;
      }

LABEL_27:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v19, this[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    TagFallback = (v19 + 2);
LABEL_7:
    v19 = TagFallback;
    goto LABEL_8;
  }

LABEL_2:
  TagFallback = v19;
LABEL_3:
  *(a1 + 16) |= v5;
  return TagFallback;
}

unsigned __int8 *protobuf::Intelligence_Flag::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_Flag *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    v7 = *(this + 32);
    *v4 = 16;
    v4[1] = v7;
    v4 += 2;
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

uint64_t protobuf::Intelligence_Flag::ByteSizeLong(protobuf::Intelligence_Flag *this)
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

    v3 = v2 + (v1 & 2);
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

void protobuf::Intelligence_Flag::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_Flag::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_Flag::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 8226);
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
      *(this + 32) = *(a2 + 32);
    }

    *(this + 4) |= v6;
  }
}

void sub_254CE10F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Flag::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_Flag::Clear(this);

    protobuf::Intelligence_Flag::MergeFrom(this, a2);
  }
}

void protobuf::Intelligence_Flag::InternalSwap(protobuf::Intelligence_Flag *this, protobuf::Intelligence_Flag *a2)
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
  v18 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v18;
}

protobuf::Intelligence_Label *protobuf::Intelligence_Label::Intelligence_Label(protobuf::Intelligence_Label *this)
{
  *this = &unk_286719FD0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_Label_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Label_intelligence_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

protobuf::Intelligence_Label *protobuf::Intelligence_Label::Intelligence_Label(protobuf::Intelligence_Label *this, const protobuf::Intelligence_Label *a2)
{
  *this = &unk_286719FD0;
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

  return this;
}

void protobuf::Intelligence_Label::~Intelligence_Label(protobuf::Intelligence_Label *this)
{
  *this = &unk_286719FD0;
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
  protobuf::Intelligence_Label::~Intelligence_Label(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_Label::default_instance(protobuf::Intelligence_Label *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_Label_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Label_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_Label_default_instance_;
}

void protobuf::Intelligence_Label::Clear(protobuf::Intelligence_Label *this)
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
  *(v4 + 2) = 0;
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v4);
  }
}

google::protobuf::internal *protobuf::Intelligence_Label::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
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
        goto LABEL_6;
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
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 2u;
          v10 = *(a1 + 32);
          if (v10 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 32, &google::protobuf::internal::fixed_address_empty_string);
          }

          goto LABEL_20;
        }
      }

      else if (v8 >> 3 == 1 && v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v10 = *(a1 + 24);
        if (v10 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 24, &google::protobuf::internal::fixed_address_empty_string);
        }

LABEL_20:
        result = google::protobuf::internal::InlineGreedyStringParser(v10, v7, this);
        goto LABEL_21;
      }

      if (!v8 || (v8 & 7) == 4)
      {
        *(this + 20) = v8 - 1;
        return v7;
      }

      result = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), v7, this);
LABEL_21:
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
LABEL_6:
    v13 = v7;
    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *protobuf::Intelligence_Label::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_Label *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 3), a2);
  }

  if ((v6 & 2) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, *(this + 4), v4);
  }

  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 23);
  if (v10 < 0)
  {
    v11 = *v9;
    v10 = *(v9 + 8);
  }

  else
  {
    v11 = v9;
  }

  if (*a3 - v4 >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v11, v10, v4);
}

uint64_t protobuf::Intelligence_Label::ByteSizeLong(protobuf::Intelligence_Label *this)
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

void protobuf::Intelligence_Label::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_Label::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_Label::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 8460);
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

void sub_254CE1AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Label::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_Label::Clear(this);

    protobuf::Intelligence_Label::MergeFrom(this, a2);
  }
}

__n128 protobuf::Intelligence_Label::InternalSwap(protobuf::Intelligence_Label *this, protobuf::Intelligence_Label *a2)
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

protobuf::Intelligence_List *protobuf::Intelligence_List::Intelligence_List(protobuf::Intelligence_List *this)
{
  *(this + 8) = 0u;
  *this = &unk_28671A060;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_List_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_List_intelligence_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

void sub_254CE1D78(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_List *protobuf::Intelligence_List::Intelligence_List(protobuf::Intelligence_List *this, const protobuf::Intelligence_List *a2)
{
  *this = &unk_28671A060;
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

void sub_254CE1E4C(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v2 + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_List::~Intelligence_List(protobuf::Intelligence_List *this)
{
  *this = &unk_28671A060;
  v2 = *(this + 6);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_List::~Intelligence_List(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_List::default_instance(protobuf::Intelligence_List *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_List_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_List_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_List_default_instance_;
}

void protobuf::Intelligence_List::Clear(protobuf::Intelligence_List *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24);
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

std::string::value_type *protobuf::Intelligence_List::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v21 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v21, *(this + 23));
  result = v21;
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
      v21 = result;
      if (!result)
      {
        return result;
      }

      v7 = result;
      LODWORD(v8) = v20;
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
          v10 = result + 1;
          v21 = (result + 1);
          v11 = *(a1 + 40);
          if (v11)
          {
            v12 = *(a1 + 32);
            v13 = *v11;
            if (v12 < *v11)
            {
              *(a1 + 32) = v12 + 1;
              AlignedAndAddCleanup = *&v11[2 * v12 + 2];
              goto LABEL_28;
            }

            if (v13 == *(a1 + 36))
            {
LABEL_22:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v13 + 1);
              v11 = *(a1 + 40);
              v13 = *v11;
            }

            *v11 = v13 + 1;
            v15 = *(a1 + 24);
            if (!v15)
            {
              operator new();
            }

            if (v15[14])
            {
            }

            AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v15, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
            AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
            AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
            AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
            v16 = *(a1 + 32);
            v17 = *(a1 + 40) + 8 * v16;
            *(a1 + 32) = v16 + 1;
            *(v17 + 8) = AlignedAndAddCleanup;
            v10 = v21;
LABEL_28:
            result = google::protobuf::internal::InlineGreedyStringParser(AlignedAndAddCleanup, v10, this);
            v21 = result;
            if (!result)
            {
              return result;
            }

            if (*this <= result || *result != 18)
            {
              goto LABEL_36;
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
        v18 = *(a1 + 48);
        if (v18 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 48, &google::protobuf::internal::fixed_address_empty_string);
        }

        result = google::protobuf::internal::InlineGreedyStringParser(v18, v7, this);
        goto LABEL_35;
      }

LABEL_12:
      if (!v8 || (v8 & 7) == 4)
      {
        *(this + 20) = v8 - 1;
        return v7;
      }

      result = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), v7, this);
LABEL_35:
      v21 = result;
      if (!result)
      {
        return result;
      }

LABEL_36:
      v19 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v21, *(this + 23));
      result = v21;
      if (v19)
      {
        return result;
      }
    }

    v7 = result + 2;
LABEL_6:
    v21 = v7;
    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *protobuf::Intelligence_List::InternalSerializeWithCachedSizesToArray(const void ***this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  if (this[2])
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, this[6], a2);
  }

  v6 = *(this + 8);
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 3), i);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = *(v8 + 8), v9 > 127) || *a3 - v4 + 14 < v9)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 2, v8, v4);
      }

      else
      {
        *v4 = 18;
        v4[1] = v9;
        if (*(v8 + 23) >= 0)
        {
          v10 = v8;
        }

        else
        {
          v10 = *v8;
        }

        memcpy(v4 + 2, v10, v9);
        v4 += v9 + 2;
      }
    }
  }

  v11 = this[1];
  if ((v11 & 1) == 0)
  {
    return v4;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(v13 + 23);
  if (v14 < 0)
  {
    v15 = *v13;
    v14 = *(v13 + 8);
  }

  else
  {
    v15 = v13;
  }

  if (*a3 - v4 >= v14)
  {
    v16 = v14;
    memcpy(v4, v15, v14);
    v4 += v16;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v15, v14, v4);
}

uint64_t protobuf::Intelligence_List::ByteSizeLong(protobuf::Intelligence_List *this)
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

  if (*(this + 16))
  {
    v7 = *(this + 6);
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v10 = *(this + 1);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v13 < 0)
    {
      v13 = *(v12 + 8);
    }

    v4 += v13;
  }

  *(this + 5) = v4;
  return v4;
}

void protobuf::Intelligence_List::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_List::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_List::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 8687);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = a2[1];
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 3), (a2 + 3));
  if (a2[2])
  {
    v8 = this[6];
    v7 = (this + 6);
    v6 = v8;
    *(v7 - 8) |= 1u;
    v9 = a2[6];
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

void sub_254CE2688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_List::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_List::Clear(this);

    protobuf::Intelligence_List::MergeFrom(this, a2);
  }
}

__n128 protobuf::Intelligence_List::InternalSwap(protobuf::Intelligence_List *this, protobuf::Intelligence_List *a2)
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

protobuf::Intelligence_Variable *protobuf::Intelligence_Variable::Intelligence_Variable(protobuf::Intelligence_Variable *this)
{
  *this = &unk_28671A0F0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  if (atomic_load_explicit(scc_info_Intelligence_Variable_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Variable_intelligence_2eproto);
  }

  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 10) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 11) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 12) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 60) = 0;
  return this;
}

void sub_254CE28EC(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField((v1 + 48));
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField((v1 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_Variable *protobuf::Intelligence_Variable::Intelligence_Variable(protobuf::Intelligence_Variable *this, const protobuf::Intelligence_Variable *a2)
{
  *this = &unk_28671A0F0;
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

  if ((v6 & 0x10) != 0)
  {
    if (!*(a2 + 13))
    {
      google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 17756);
      v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: !value || default_value_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 13) = 0;
  v12 = *(a2 + 14);
  *(this + 60) = *(a2 + 60);
  *(this + 14) = v12;
  return this;
}

void sub_254CE2ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(v5);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField((v3 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v4);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Variable::~Intelligence_Variable(protobuf::Intelligence_Variable *this)
{
  *this = &unk_28671A0F0;
  protobuf::Intelligence_Variable::SharedDtor(this);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(this + 6);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(this + 3);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_Variable::~Intelligence_Variable(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_Variable::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[9];
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 80);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    this = MEMORY[0x259C29D90](v4, 0x1012C40EC159624);
  }

  v6 = *(v1 + 88);
  if (v6 != &google::protobuf::internal::fixed_address_empty_string && v6 != 0)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    this = MEMORY[0x259C29D90](v6, 0x1012C40EC159624);
  }

  v8 = *(v1 + 96);
  if (v8 != &google::protobuf::internal::fixed_address_empty_string && v8 != 0)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    this = MEMORY[0x259C29D90](v8, 0x1012C40EC159624);
  }

  if (v1 != &protobuf::_Intelligence_Variable_default_instance_)
  {
    this = *(v1 + 104);
    if (this)
    {
      v10 = *(*this + 8);

      return v10();
    }
  }

  return this;
}

void *protobuf::Intelligence_Variable::default_instance(protobuf::Intelligence_Variable *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_Variable_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Variable_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_Variable_default_instance_;
}

void protobuf::Intelligence_Variable::Clear(protobuf::Intelligence_Variable *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 24);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 48);
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_27;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_12:
    v4 = *(this + 10);
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
    v6 = *(this + 12);
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

  v3 = *(this + 9);
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
  v5 = *(this + 11);
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
  v7 = *(this + 13);
  if (!v7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 8859);
    v8 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: default_value_ != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    v7 = *(this + 13);
  }

  protobuf::Intelligence_KeyValueParameter::Clear(v7);
LABEL_27:
  if ((v2 & 0xE0) != 0)
  {
    *(this + 60) = 0;
    *(this + 14) = 0;
  }

  v10 = *(this + 8);
  v9 = this + 8;
  *(v9 + 2) = 0;
  if (v10)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v9);
  }
}

void sub_254CE2F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *protobuf::Intelligence_Variable::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *this)
{
  v42 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v42, this[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      TagFallback = v42 + 1;
      LODWORD(v8) = *v42;
      if ((*v42 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      v8 = (v8 + (*TagFallback << 7) - 128);
      if ((*TagFallback & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v42, v8);
      v42 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_3;
      }

      LODWORD(v8) = v23;
LABEL_8:
      v9 = v8 >> 3;
      if (v8 >> 3 <= 5)
      {
        if (v8 >> 3 <= 2)
        {
          if (v9 == 1)
          {
            if (v8 == 10)
            {
              *(a1 + 16) |= 1u;
              v14 = *(a1 + 72);
              if (v14 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 72, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_76;
            }
          }

          else if (v9 == 2 && v8 == 18)
          {
            *(a1 + 16) |= 2u;
            v14 = *(a1 + 80);
            if (v14 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 80, &google::protobuf::internal::fixed_address_empty_string);
            }

            goto LABEL_76;
          }
        }

        else if (v9 == 3)
        {
          if (v8 == 26)
          {
            *(a1 + 16) |= 4u;
            v14 = *(a1 + 88);
            if (v14 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 88, &google::protobuf::internal::fixed_address_empty_string);
            }

            goto LABEL_76;
          }
        }

        else
        {
          if (v9 != 4)
          {
            if (v9 != 5 || v8 != 41)
            {
              goto LABEL_84;
            }

            v5 |= 0x20u;
            *(a1 + 112) = *TagFallback;
            v42 = (TagFallback + 8);
            goto LABEL_78;
          }

          if (v8 == 34)
          {
            *(a1 + 16) |= 8u;
            v14 = *(a1 + 96);
            if (v14 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 96, &google::protobuf::internal::fixed_address_empty_string);
            }

LABEL_76:
            v35 = google::protobuf::internal::InlineGreedyStringParser(v14, TagFallback, this);
            goto LABEL_77;
          }
        }

LABEL_84:
        if (v8)
        {
          v37 = (v8 & 7) == 4;
        }

        else
        {
          v37 = 1;
        }

        if (v37)
        {
          this[10].i32[0] = v8 - 1;
          goto LABEL_3;
        }

        v35 = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), TagFallback, this);
        goto LABEL_77;
      }

      if (v8 >> 3 <= 7)
      {
        if (v9 != 6)
        {
          if (v9 != 7 || v8 != 58)
          {
            goto LABEL_84;
          }

          v15 = TagFallback - 1;
          while (2)
          {
            v16 = (v15 + 1);
            v42 = (v15 + 1);
            v17 = *(a1 + 40);
            if (v17)
            {
              v18 = *(a1 + 32);
              v19 = *v17;
              if (v18 < *v17)
              {
                *(a1 + 32) = v18 + 1;
                v20 = *&v17[2 * v18 + 2];
                goto LABEL_43;
              }

              if (v19 == *(a1 + 36))
              {
LABEL_41:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v19 + 1);
                v17 = *(a1 + 40);
                v19 = *v17;
              }

              *v17 = v19 + 1;
              v20 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(a1 + 24));
              v21 = *(a1 + 32);
              v22 = *(a1 + 40) + 8 * v21;
              *(a1 + 32) = v21 + 1;
              *(v22 + 8) = v20;
              v16 = v42;
LABEL_43:
              v15 = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_KeyValueParameter>(this, v20, v16);
              v42 = v15;
              if (!v15)
              {
                goto LABEL_92;
              }

              if (*this <= v15 || *v15 != 58)
              {
                goto LABEL_78;
              }

              continue;
            }

            break;
          }

          v19 = *(a1 + 36);
          goto LABEL_41;
        }

        if (v8 != 48)
        {
          goto LABEL_84;
        }

        v5 |= 0x80u;
        v25 = (TagFallback + 1);
        v24 = *TagFallback;
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_56;
        }

        v26 = *v25;
        v24 = (v26 << 7) + v24 - 128;
        if ((v26 & 0x80000000) == 0)
        {
          v25 = (TagFallback + 2);
LABEL_56:
          v42 = v25;
          *(a1 + 121) = v24 != 0;
          goto LABEL_78;
        }

        v38 = google::protobuf::internal::VarintParseSlow64(TagFallback, v24);
        v42 = v38;
        *(a1 + 121) = v39 != 0;
        if (!v38)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v9 == 8)
        {
          if (v8 != 66)
          {
            goto LABEL_84;
          }

          v27 = TagFallback - 1;
          while (2)
          {
            v28 = (v27 + 1);
            v42 = (v27 + 1);
            v29 = *(a1 + 64);
            if (v29)
            {
              v30 = *(a1 + 56);
              v31 = *v29;
              if (v30 < *v29)
              {
                *(a1 + 56) = v30 + 1;
                v32 = *&v29[2 * v30 + 2];
                goto LABEL_69;
              }

              if (v31 == *(a1 + 60))
              {
LABEL_67:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v31 + 1);
                v29 = *(a1 + 64);
                v31 = *v29;
              }

              *v29 = v31 + 1;
              v32 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(a1 + 48));
              v33 = *(a1 + 56);
              v34 = *(a1 + 64) + 8 * v33;
              *(a1 + 56) = v33 + 1;
              *(v34 + 8) = v32;
              v28 = v42;
LABEL_69:
              v27 = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_KeyValueParameter>(this, v32, v28);
              v42 = v27;
              if (!v27)
              {
                goto LABEL_92;
              }

              if (*this <= v27 || *v27 != 66)
              {
                goto LABEL_78;
              }

              continue;
            }

            break;
          }

          v31 = *(a1 + 60);
          goto LABEL_67;
        }

        if (v9 == 9)
        {
          if (v8 == 74)
          {
            *(a1 + 16) |= 0x10u;
            v36 = *(a1 + 104);
            if (!v36)
            {
              v36 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(0);
              *(a1 + 104) = v36;
              TagFallback = v42;
            }

            v35 = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_KeyValueParameter>(this, v36, TagFallback);
LABEL_77:
            v42 = v35;
            if (!v35)
            {
              goto LABEL_92;
            }

            goto LABEL_78;
          }

          goto LABEL_84;
        }

        if (v9 != 10 || v8 != 80)
        {
          goto LABEL_84;
        }

        v5 |= 0x40u;
        v11 = (TagFallback + 1);
        v10 = *TagFallback;
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v12 = *v11;
        v10 = (v12 << 7) + v10 - 128;
        if ((v12 & 0x80000000) == 0)
        {
          v11 = (TagFallback + 2);
LABEL_23:
          v42 = v11;
          *(a1 + 120) = v10 != 0;
          goto LABEL_78;
        }

        v40 = google::protobuf::internal::VarintParseSlow64(TagFallback, v10);
        v42 = v40;
        *(a1 + 120) = v41 != 0;
        if (!v40)
        {
LABEL_92:
          TagFallback = 0;
          goto LABEL_3;
        }
      }

LABEL_78:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v42, this[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    TagFallback = v42 + 2;
LABEL_7:
    v42 = TagFallback;
    goto LABEL_8;
  }

LABEL_2:
  TagFallback = v42;
LABEL_3:
  *(a1 + 16) |= v5;
  return TagFallback;
}

unsigned __int8 *protobuf::Intelligence_Variable::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_Variable *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      goto LABEL_10;
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

    goto LABEL_11;
  }

LABEL_10:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 3, *(this + 11), v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 4, *(this + 12), v4);
  if ((v6 & 0x20) == 0)
  {
LABEL_6:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 14);
  *v4 = 41;
  *(v4 + 1) = v7;
  v4 += 9;
  if ((v6 & 0x80) != 0)
  {
LABEL_15:
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(this + 121);
    *v4 = 48;
    v4[1] = v8;
    v4 += 2;
  }

LABEL_18:
  v9 = *(this + 8);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v11 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 24, i);
      *v4 = 58;
      v12 = *(v11 + 5);
      if (v12 > 0x7F)
      {
        v4[1] = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v13 = v4 + 3;
          do
          {
            *(v13 - 1) = v14 | 0x80;
            v15 = v14 >> 7;
            ++v13;
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
          *(v13 - 1) = v15;
        }

        else
        {
          v4[2] = v14;
          v13 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v12;
        v13 = v4 + 2;
      }

      v4 = protobuf::Intelligence_KeyValueParameter::InternalSerializeWithCachedSizesToArray(v11, v13, a3);
    }
  }

  v17 = *(this + 14);
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v19 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 48, j);
      *v4 = 66;
      v20 = *(v19 + 5);
      if (v20 > 0x7F)
      {
        v4[1] = v20 | 0x80;
        v22 = v20 >> 7;
        if (v20 >> 14)
        {
          v21 = v4 + 3;
          do
          {
            *(v21 - 1) = v22 | 0x80;
            v23 = v22 >> 7;
            ++v21;
            v24 = v22 >> 14;
            v22 >>= 7;
          }

          while (v24);
          *(v21 - 1) = v23;
        }

        else
        {
          v4[2] = v22;
          v21 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v20;
        v21 = v4 + 2;
      }

      v4 = protobuf::Intelligence_KeyValueParameter::InternalSerializeWithCachedSizesToArray(v19, v21, a3);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v25 = *(this + 13);
    *v4 = 74;
    v26 = *(v25 + 5);
    if (v26 > 0x7F)
    {
      v4[1] = v26 | 0x80;
      v28 = v26 >> 7;
      if (v26 >> 14)
      {
        v27 = v4 + 3;
        do
        {
          *(v27 - 1) = v28 | 0x80;
          v29 = v28 >> 7;
          ++v27;
          v30 = v28 >> 14;
          v28 >>= 7;
        }

        while (v30);
        *(v27 - 1) = v29;
      }

      else
      {
        v4[2] = v28;
        v27 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v26;
      v27 = v4 + 2;
    }

    v4 = protobuf::Intelligence_KeyValueParameter::InternalSerializeWithCachedSizesToArray(v25, v27, a3);
  }

  if ((v6 & 0x40) != 0)
  {
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v31 = *(this + 120);
    *v4 = 80;
    v4[1] = v31;
    v4 += 2;
  }

  v32 = *(this + 1);
  if ((v32 & 1) == 0)
  {
    return v4;
  }

  v34 = v32 & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(v34 + 23);
  if (v35 < 0)
  {
    v36 = *v34;
    v35 = *(v34 + 8);
  }

  else
  {
    v36 = v34;
  }

  if (*a3 - v4 >= v35)
  {
    v37 = v35;
    memcpy(v4, v36, v35);
    v4 += v37;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v36, v35, v4);
}

uint64_t protobuf::Intelligence_Variable::ByteSizeLong(protobuf::Intelligence_Variable *this)
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

  v15 = *(this + 4);
  if (v15)
  {
    if (v15)
    {
      v20 = *(this + 9);
      v21 = *(v20 + 23);
      v22 = *(v20 + 8);
      if ((v21 & 0x80u) == 0)
      {
        v22 = v21;
      }

      v9 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v15 & 2) == 0)
      {
LABEL_18:
        if ((v15 & 4) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_33;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_18;
    }

    v23 = *(this + 10);
    v24 = *(v23 + 23);
    v25 = *(v23 + 8);
    if ((v24 & 0x80u) == 0)
    {
      v25 = v24;
    }

    v9 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 4) == 0)
    {
LABEL_19:
      if ((v15 & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_36;
    }

LABEL_33:
    v26 = *(this + 11);
    v27 = *(v26 + 23);
    v28 = *(v26 + 8);
    if ((v27 & 0x80u) == 0)
    {
      v28 = v27;
    }

    v9 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 8) == 0)
    {
LABEL_20:
      if ((v15 & 0x10) == 0)
      {
LABEL_22:
        v17 = v9 + 9;
        if ((v15 & 0x20) == 0)
        {
          v17 = v9;
        }

        v9 = v17 + ((v15 >> 6) & 2) + ((v15 >> 5) & 2);
        goto LABEL_25;
      }

LABEL_21:
      v16 = protobuf::Intelligence_KeyValueParameter::ByteSizeLong(*(this + 13));
      v9 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_22;
    }

LABEL_36:
    v29 = *(this + 12);
    v30 = *(v29 + 23);
    v31 = *(v29 + 8);
    if ((v30 & 0x80u) == 0)
    {
      v31 = v30;
    }

    v9 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_25:
  v18 = *(this + 1);
  if (v18)
  {
    v32 = v18 & 0xFFFFFFFFFFFFFFFELL;
    v33 = *((v18 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v33 < 0)
    {
      v33 = *(v32 + 8);
    }

    v9 += v33;
  }

  *(this + 5) = v9;
  return v9;
}

void protobuf::Intelligence_Variable::CheckTypeAndMergeFrom(protobuf::Intelligence_Variable *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_Variable::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_Variable::MergeFrom(protobuf::Intelligence_Variable *this, const protobuf::Intelligence_Variable *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 9156);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 3, a2 + 24);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 6, a2 + 48);
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
      if ((v6 & 0x20) == 0)
      {
LABEL_28:
        if ((v6 & 0x40) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_40;
      }
    }

    else if ((v6 & 0x20) == 0)
    {
      goto LABEL_28;
    }

    *(this + 14) = *(a2 + 14);
    if ((v6 & 0x40) == 0)
    {
LABEL_29:
      if ((v6 & 0x80) == 0)
      {
LABEL_31:
        *(this + 4) |= v6;
        return;
      }

LABEL_30:
      *(this + 121) = *(a2 + 121);
      goto LABEL_31;
    }

LABEL_40:
    *(this + 120) = *(a2 + 120);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }
}

void sub_254CE3D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Variable::CopyFrom(protobuf::Intelligence_Variable *this, const protobuf::Intelligence_Variable *a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_Variable::Clear(this);

    protobuf::Intelligence_Variable::MergeFrom(this, a2);
  }
}

double protobuf::Intelligence_Variable::InternalSwap(protobuf::Intelligence_Variable *this, protobuf::Intelligence_Variable *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v35;
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_34;
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

LABEL_34:
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
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v33;
  result = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = result;
  LOBYTE(v33) = *(this + 120);
  *(this + 120) = *(a2 + 120);
  *(a2 + 120) = v33;
  LOBYTE(v33) = *(this + 121);
  *(this + 121) = *(a2 + 121);
  *(a2 + 121) = v33;
  return result;
}

protobuf::Intelligence_Start *protobuf::Intelligence_Start::Intelligence_Start(protobuf::Intelligence_Start *this)
{
  *(this + 8) = 0u;
  *this = &unk_28671A180;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_Start_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Start_intelligence_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

void sub_254CE4180(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_Start *protobuf::Intelligence_Start::Intelligence_Start(protobuf::Intelligence_Start *this, const protobuf::Intelligence_Start *a2)
{
  *this = &unk_28671A180;
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

void sub_254CE4254(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v2 + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Start::~Intelligence_Start(protobuf::Intelligence_Start *this)
{
  *this = &unk_28671A180;
  v2 = *(this + 6);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_Start::~Intelligence_Start(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_Start::default_instance(protobuf::Intelligence_Start *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_Start_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Start_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_Start_default_instance_;
}

void protobuf::Intelligence_Start::Clear(protobuf::Intelligence_Start *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24);
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

std::string::value_type *protobuf::Intelligence_Start::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v21 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v21, *(this + 23));
  result = v21;
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
      v21 = result;
      if (!result)
      {
        return result;
      }

      v7 = result;
      LODWORD(v8) = v20;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 != 1 || v8 != 10)
        {
          goto LABEL_12;
        }

        result = v7 - 1;
        while (2)
        {
          v12 = result + 1;
          v21 = (result + 1);
          v13 = *(a1 + 40);
          if (v13)
          {
            v14 = *(a1 + 32);
            v15 = *v13;
            if (v14 < *v13)
            {
              *(a1 + 32) = v14 + 1;
              AlignedAndAddCleanup = *&v13[2 * v14 + 2];
              goto LABEL_34;
            }

            if (v15 == *(a1 + 36))
            {
LABEL_28:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v15 + 1);
              v13 = *(a1 + 40);
              v15 = *v13;
            }

            *v13 = v15 + 1;
            v17 = *(a1 + 24);
            if (!v17)
            {
              operator new();
            }

            if (v17[14])
            {
            }

            AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v17, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
            AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
            AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
            AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
            v18 = *(a1 + 32);
            v19 = *(a1 + 40) + 8 * v18;
            *(a1 + 32) = v18 + 1;
            *(v19 + 8) = AlignedAndAddCleanup;
            v12 = v21;
LABEL_34:
            result = google::protobuf::internal::InlineGreedyStringParser(AlignedAndAddCleanup, v12, this);
            v21 = result;
            if (!result)
            {
              return result;
            }

            if (*this <= result || *result != 10)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v15 = *(a1 + 36);
        goto LABEL_28;
      }

      if (v8 == 18)
      {
        *(a1 + 16) |= 1u;
        v10 = *(a1 + 48);
        if (v10 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 48, &google::protobuf::internal::fixed_address_empty_string);
        }

        result = google::protobuf::internal::InlineGreedyStringParser(v10, v7, this);
        goto LABEL_19;
      }

LABEL_12:
      if (!v8 || (v8 & 7) == 4)
      {
        *(this + 20) = v8 - 1;
        return v7;
      }

      result = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), v7, this);
LABEL_19:
      v21 = result;
      if (!result)
      {
        return result;
      }

LABEL_20:
      v11 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v21, *(this + 23));
      result = v21;
      if (v11)
      {
        return result;
      }
    }

    v7 = result + 2;
LABEL_6:
    v21 = v7;
    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *protobuf::Intelligence_Start::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_Start *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 8);
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, i);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = *(v8 + 8), v9 > 127) || *a3 - a2 + 14 < v9)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 1, v8, a2);
      }

      else
      {
        *a2 = 10;
        a2[1] = v9;
        if (*(v8 + 23) >= 0)
        {
          v10 = v8;
        }

        else
        {
          v10 = *v8;
        }

        memcpy(a2 + 2, v10, v9);
        a2 += v9 + 2;
      }
    }
  }

  if (*(this + 16))
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, *(this + 6), a2);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(v13 + 23);
  if (v14 < 0)
  {
    v15 = *v13;
    v14 = *(v13 + 8);
  }

  else
  {
    v15 = v13;
  }

  if (*a3 - a2 >= v14)
  {
    v16 = v14;
    memcpy(a2, v15, v14);
    a2 += v16;
    return a2;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v15, v14, a2);
}

uint64_t protobuf::Intelligence_Start::ByteSizeLong(protobuf::Intelligence_Start *this)
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

  if (*(this + 16))
  {
    v7 = *(this + 6);
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v10 = *(this + 1);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v13 < 0)
    {
      v13 = *(v12 + 8);
    }

    v4 += v13;
  }

  *(this + 5) = v4;
  return v4;
}

void protobuf::Intelligence_Start::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_Start::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_Start::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 9416);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = a2[1];
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 3), (a2 + 3));
  if (a2[2])
  {
    v8 = this[6];
    v7 = (this + 6);
    v6 = v8;
    *(v7 - 8) |= 1u;
    v9 = a2[6];
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

void sub_254CE4A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Start::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_Start::Clear(this);

    protobuf::Intelligence_Start::MergeFrom(this, a2);
  }
}

__n128 protobuf::Intelligence_Start::InternalSwap(protobuf::Intelligence_Start *this, protobuf::Intelligence_Start *a2)
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

protobuf::Intelligence_NLParameters *protobuf::Intelligence_NLParameters::Intelligence_NLParameters(protobuf::Intelligence_NLParameters *this)
{
  *(this + 8) = 0u;
  *this = &unk_28671A210;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_NLParameters_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_NLParameters_intelligence_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

void sub_254CE4CCC(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField((v1 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_NLParameters *protobuf::Intelligence_NLParameters::Intelligence_NLParameters(protobuf::Intelligence_NLParameters *this, const protobuf::Intelligence_NLParameters *a2)
{
  *this = &unk_28671A210;
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

void sub_254CE4DA0(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField((v2 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_NLParameters::~Intelligence_NLParameters(protobuf::Intelligence_NLParameters *this)
{
  *this = &unk_28671A210;
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
  protobuf::Intelligence_NLParameters::~Intelligence_NLParameters(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_NLParameters::default_instance(protobuf::Intelligence_NLParameters *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_NLParameters_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_NLParameters_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_NLParameters_default_instance_;
}

void protobuf::Intelligence_NLParameters::Clear(protobuf::Intelligence_NLParameters *this)
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

std::string::value_type *protobuf::Intelligence_NLParameters::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
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

unsigned __int8 *protobuf::Intelligence_NLParameters::InternalSerializeWithCachedSizesToArray(const void ***this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t protobuf::Intelligence_NLParameters::ByteSizeLong(protobuf::Intelligence_NLParameters *this)
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

void protobuf::Intelligence_NLParameters::CheckTypeAndMergeFrom(protobuf::Intelligence_NLParameters *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_NLParameters::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_NLParameters::MergeFrom(protobuf::Intelligence_NLParameters *this, const protobuf::Intelligence_NLParameters *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 9637);
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

void sub_254CE5568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_NLParameters::CopyFrom(protobuf::Intelligence_NLParameters *this, const protobuf::Intelligence_NLParameters *a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_NLParameters::Clear(this);

    protobuf::Intelligence_NLParameters::MergeFrom(this, a2);
  }
}

__n128 protobuf::Intelligence_NLParameters::InternalSwap(protobuf::Intelligence_NLParameters *this, protobuf::Intelligence_NLParameters *a2)
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

protobuf::Intelligence_Event *protobuf::Intelligence_Event::Intelligence_Event(protobuf::Intelligence_Event *this)
{
  *this = &unk_28671A2A0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  if (atomic_load_explicit(scc_info_Intelligence_Event_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Event_intelligence_2eproto);
  }

  *(this + 15) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 16) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 17) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 18) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 19) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 20) = 0;
  return this;
}

void sub_254CE57D4(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 96);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 72);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 48);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v1 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_Event *protobuf::Intelligence_Event::Intelligence_Event(protobuf::Intelligence_Event *this, const protobuf::Intelligence_Event *a2)
{
  *this = &unk_28671A2A0;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_NLParameters>::TypeHandler>(this + 3, a2 + 24);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48, a2 + 48);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 72, a2 + 72);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 96, a2 + 96);
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

  if ((v6 & 0x20) != 0)
  {
    if (!*(a2 + 20))
    {
      google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 18904);
      v12 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: !value || nl_producer_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v14, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 20) = 0;
  return this;
}

void sub_254CE5A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v7);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v6);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v5);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v3 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v4);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Event::~Intelligence_Event(protobuf::Intelligence_Event *this)
{
  *this = &unk_28671A2A0;
  v2 = *(this + 15);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 16);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x259C29D90](v4, 0x1012C40EC159624);
  }

  v6 = *(this + 17);
  if (v6 != &google::protobuf::internal::fixed_address_empty_string && v6 != 0)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x259C29D90](v6, 0x1012C40EC159624);
  }

  v8 = *(this + 18);
  if (v8 != &google::protobuf::internal::fixed_address_empty_string && v8 != 0)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    MEMORY[0x259C29D90](v8, 0x1012C40EC159624);
  }

  v10 = *(this + 19);
  if (v10 != &google::protobuf::internal::fixed_address_empty_string && v10)
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    MEMORY[0x259C29D90](v10, 0x1012C40EC159624);
  }

  if (this != &protobuf::_Intelligence_Event_default_instance_)
  {
    v11 = *(this + 20);
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 96);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 72);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 48);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((this + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_Event::~Intelligence_Event(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_Event::default_instance(protobuf::Intelligence_Event *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_Event_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Event_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_Event_default_instance_;
}

void protobuf::Intelligence_Event::Clear(protobuf::Intelligence_Event *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_NLParameters>::TypeHandler>(this + 24);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 72);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 96);
  v2 = *(this + 4);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_32;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    v4 = *(this + 16);
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
    v6 = *(this + 18);
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 0x10) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 0x10) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v3 = *(this + 15);
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
  v5 = *(this + 17);
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

LABEL_25:
  v7 = *(this + 19);
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_32;
    }
  }

LABEL_29:
  v8 = *(this + 20);
  if (!v8)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 9811);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: nl_producer_ != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    v8 = *(this + 20);
  }

  protobuf::Intelligence_NLParameters::Clear(v8);
LABEL_32:
  v11 = *(this + 8);
  v10 = this + 8;
  *(v10 + 2) = 0;
  if (v11)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v10);
  }
}

void sub_254CE5E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal *protobuf::Intelligence_Event::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v46 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v46, *(this + 23));
  result = v46;
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
      v46 = result;
      if (!result)
      {
        return result;
      }

      v7 = result;
      LODWORD(v8) = v28;
LABEL_7:
      v9 = v8 >> 3;
      if (v8 >> 3 > 8)
      {
        if (v8 >> 3 <= 0xA)
        {
          if (v9 != 9)
          {
            if (v9 != 10 || v8 != 82)
            {
              goto LABEL_112;
            }

            result = (v7 - 1);
            while (2)
            {
              v20 = result + 1;
              v46 = (result + 1);
              v21 = *(a1 + 64);
              if (v21)
              {
                v22 = *(a1 + 56);
                v23 = *v21;
                if (v22 < *v21)
                {
                  *(a1 + 56) = v22 + 1;
                  AlignedAndAddCleanup = *&v21[2 * v22 + 2];
                  goto LABEL_59;
                }

                if (v23 == *(a1 + 60))
                {
LABEL_53:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v23 + 1);
                  v21 = *(a1 + 64);
                  v23 = *v21;
                }

                *v21 = v23 + 1;
                v25 = *(a1 + 48);
                if (!v25)
                {
                  operator new();
                }

                if (v25[14])
                {
                }

                AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v25, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
                AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
                AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
                AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
                v26 = *(a1 + 56);
                v27 = *(a1 + 64) + 8 * v26;
                *(a1 + 56) = v26 + 1;
                *(v27 + 8) = AlignedAndAddCleanup;
                v20 = v46;
LABEL_59:
                result = google::protobuf::internal::InlineGreedyStringParser(AlignedAndAddCleanup, v20, this);
                v46 = result;
                if (!result)
                {
                  return result;
                }

                if (*this <= result || *result != 82)
                {
                  goto LABEL_110;
                }

                continue;
              }

              break;
            }

            v23 = *(a1 + 60);
            goto LABEL_53;
          }

          if (v8 == 74)
          {
            *(a1 + 16) |= 8u;
            v10 = *(a1 + 144);
            if (v10 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 144, &google::protobuf::internal::fixed_address_empty_string);
            }

            goto LABEL_108;
          }
        }

        else
        {
          if (v9 == 11)
          {
            if (v8 != 90)
            {
              goto LABEL_112;
            }

            result = (v7 - 1);
            while (2)
            {
              v36 = result + 1;
              v46 = (result + 1);
              v37 = *(a1 + 88);
              if (v37)
              {
                v38 = *(a1 + 80);
                v39 = *v37;
                if (v38 < *v37)
                {
                  *(a1 + 80) = v38 + 1;
                  v40 = *&v37[2 * v38 + 2];
                  goto LABEL_97;
                }

                if (v39 == *(a1 + 84))
                {
LABEL_91:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v39 + 1);
                  v37 = *(a1 + 88);
                  v39 = *v37;
                }

                *v37 = v39 + 1;
                v41 = *(a1 + 72);
                if (!v41)
                {
                  operator new();
                }

                if (v41[14])
                {
                }

                v40 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v41, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
                v40->__r_.__value_.__r.__words[0] = 0;
                v40->__r_.__value_.__l.__size_ = 0;
                v40->__r_.__value_.__r.__words[2] = 0;
                v42 = *(a1 + 80);
                v43 = *(a1 + 88) + 8 * v42;
                *(a1 + 80) = v42 + 1;
                *(v43 + 8) = v40;
                v36 = v46;
LABEL_97:
                result = google::protobuf::internal::InlineGreedyStringParser(v40, v36, this);
                v46 = result;
                if (!result)
                {
                  return result;
                }

                if (*this <= result || *result != 90)
                {
                  goto LABEL_110;
                }

                continue;
              }

              break;
            }

            v39 = *(a1 + 84);
            goto LABEL_91;
          }

          if (v9 != 12)
          {
            if (v9 != 13 || v8 != 106)
            {
              goto LABEL_112;
            }

            result = (v7 - 1);
            while (2)
            {
              v11 = result + 1;
              v46 = (result + 1);
              v12 = *(a1 + 112);
              if (v12)
              {
                v13 = *(a1 + 104);
                v14 = *v12;
                if (v13 < *v12)
                {
                  *(a1 + 104) = v13 + 1;
                  v15 = *&v12[2 * v13 + 2];
                  goto LABEL_32;
                }

                if (v14 == *(a1 + 108))
                {
LABEL_26:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96), v14 + 1);
                  v12 = *(a1 + 112);
                  v14 = *v12;
                }

                *v12 = v14 + 1;
                v16 = *(a1 + 96);
                if (!v16)
                {
                  operator new();
                }

                if (v16[14])
                {
                }

                v15 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v16, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
                v15->__r_.__value_.__r.__words[0] = 0;
                v15->__r_.__value_.__l.__size_ = 0;
                v15->__r_.__value_.__r.__words[2] = 0;
                v17 = *(a1 + 104);
                v18 = *(a1 + 112) + 8 * v17;
                *(a1 + 104) = v17 + 1;
                *(v18 + 8) = v15;
                v11 = v46;
LABEL_32:
                result = google::protobuf::internal::InlineGreedyStringParser(v15, v11, this);
                v46 = result;
                if (!result)
                {
                  return result;
                }

                if (*this <= result || *result != 106)
                {
                  goto LABEL_110;
                }

                continue;
              }

              break;
            }

            v14 = *(a1 + 108);
            goto LABEL_26;
          }

          if (v8 == 98)
          {
            *(a1 + 16) |= 0x10u;
            v10 = *(a1 + 152);
            if (v10 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 152, &google::protobuf::internal::fixed_address_empty_string);
            }

            goto LABEL_108;
          }
        }
      }

      else if (v8 >> 3 <= 5)
      {
        if (v9 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v10 = *(a1 + 120);
            if (v10 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 120, &google::protobuf::internal::fixed_address_empty_string);
            }

            goto LABEL_108;
          }
        }

        else if (v9 == 3 && v8 == 26)
        {
          *(a1 + 16) |= 2u;
          v10 = *(a1 + 128);
          if (v10 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 128, &google::protobuf::internal::fixed_address_empty_string);
          }

          goto LABEL_108;
        }
      }

      else
      {
        if (v9 == 6)
        {
          if (v8 != 50)
          {
            goto LABEL_112;
          }

          result = (v7 - 1);
          while (2)
          {
            v29 = (result + 1);
            v46 = (result + 1);
            v30 = *(a1 + 40);
            if (v30)
            {
              v31 = *(a1 + 32);
              v32 = *v30;
              if (v31 < *v30)
              {
                *(a1 + 32) = v31 + 1;
                v33 = *&v30[2 * v31 + 2];
                goto LABEL_80;
              }

              if (v32 == *(a1 + 36))
              {
LABEL_78:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v32 + 1);
                v30 = *(a1 + 40);
                v32 = *v30;
              }

              *v30 = v32 + 1;
              v33 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_NLParameters>(*(a1 + 24));
              v34 = *(a1 + 32);
              v35 = *(a1 + 40) + 8 * v34;
              *(a1 + 32) = v34 + 1;
              *(v35 + 8) = v33;
              v29 = v46;
LABEL_80:
              result = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_NLParameters>(this, v33, v29);
              v46 = result;
              if (!result)
              {
                return result;
              }

              if (*this <= result || *result != 50)
              {
                goto LABEL_110;
              }

              continue;
            }

            break;
          }

          v32 = *(a1 + 36);
          goto LABEL_78;
        }

        if (v9 == 7)
        {
          if (v8 == 58)
          {
            *(a1 + 16) |= 0x20u;
            v44 = *(a1 + 160);
            if (!v44)
            {
              v44 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_NLParameters>(0);
              *(a1 + 160) = v44;
              v7 = v46;
            }

            result = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_NLParameters>(this, v44, v7);
            goto LABEL_109;
          }
        }

        else if (v9 == 8 && v8 == 66)
        {
          *(a1 + 16) |= 4u;
          v10 = *(a1 + 136);
          if (v10 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 136, &google::protobuf::internal::fixed_address_empty_string);
          }

LABEL_108:
          result = google::protobuf::internal::InlineGreedyStringParser(v10, v7, this);
          goto LABEL_109;
        }
      }

LABEL_112:
      if (!v8 || (v8 & 7) == 4)
      {
        *(this + 20) = v8 - 1;
        return v7;
      }

      result = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), v7, this);
LABEL_109:
      v46 = result;
      if (!result)
      {
        return result;
      }

LABEL_110:
      v45 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v46, *(this + 23));
      result = v46;
      if (v45)
      {
        return result;
      }
    }

    v7 = (result + 2);
LABEL_6:
    v46 = v7;
    goto LABEL_7;
  }

  return result;
}

char *google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_NLParameters>(google::protobuf::internal::EpsCopyInputStream *this, uint64_t a2, google::protobuf::internal *a3)
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
  result = protobuf::Intelligence_NLParameters::_InternalParse(a2, v8, this);
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

unsigned __int8 *protobuf::Intelligence_Event::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_Event *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 15), a2);
  }

  if ((v6 & 2) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 3, *(this + 16), v4);
  }

  v7 = *(this + 8);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_NLParameters>::TypeHandler>(this + 24, i);
      *v4 = 50;
      v10 = *(v9 + 20);
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

      v4 = protobuf::Intelligence_NLParameters::InternalSerializeWithCachedSizesToArray(v9, v11, a3);
    }
  }

  if ((v6 & 0x20) != 0)
  {
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v32 = *(this + 20);
    *v4 = 58;
    v33 = *(v32 + 20);
    if (v33 > 0x7F)
    {
      v4[1] = v33 | 0x80;
      v35 = v33 >> 7;
      if (v33 >> 14)
      {
        v34 = v4 + 3;
        do
        {
          *(v34 - 1) = v35 | 0x80;
          v36 = v35 >> 7;
          ++v34;
          v37 = v35 >> 14;
          v35 >>= 7;
        }

        while (v37);
        *(v34 - 1) = v36;
      }

      else
      {
        v4[2] = v35;
        v34 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v33;
      v34 = v4 + 2;
    }

    v4 = protobuf::Intelligence_NLParameters::InternalSerializeWithCachedSizesToArray(v32, v34, a3);
    if ((v6 & 4) == 0)
    {
LABEL_19:
      if ((v6 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_19;
  }

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 8, *(this + 17), v4);
  if ((v6 & 8) != 0)
  {
LABEL_20:
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 9, *(this + 18), v4);
  }

LABEL_21:
  v15 = *(this + 14);
  if (v15 >= 1)
  {
    for (j = 0; j != v15; ++j)
    {
      v17 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48, j);
      v18 = *(v17 + 23);
      if (v18 < 0 && (v18 = *(v17 + 8), v18 > 127) || *a3 - v4 + 14 < v18)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 10, v17, v4);
      }

      else
      {
        *v4 = 82;
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

  v20 = *(this + 20);
  if (v20 >= 1)
  {
    for (k = 0; k != v20; ++k)
    {
      v22 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 72, k);
      v23 = *(v22 + 23);
      if (v23 < 0 && (v23 = *(v22 + 8), v23 > 127) || *a3 - v4 + 14 < v23)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 11, v22, v4);
      }

      else
      {
        *v4 = 90;
        v4[1] = v23;
        if (*(v22 + 23) >= 0)
        {
          v24 = v22;
        }

        else
        {
          v24 = *v22;
        }

        memcpy(v4 + 2, v24, v23);
        v4 += v23 + 2;
      }
    }
  }

  if ((v6 & 0x10) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 12, *(this + 19), v4);
  }

  v25 = *(this + 26);
  if (v25 >= 1)
  {
    for (m = 0; m != v25; ++m)
    {
      v27 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 96, m);
      v28 = *(v27 + 23);
      if (v28 < 0 && (v28 = *(v27 + 8), v28 > 127) || *a3 - v4 + 14 < v28)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 13, v27, v4);
      }

      else
      {
        *v4 = 106;
        v4[1] = v28;
        if (*(v27 + 23) >= 0)
        {
          v29 = v27;
        }

        else
        {
          v29 = *v27;
        }

        memcpy(v4 + 2, v29, v28);
        v4 += v28 + 2;
      }
    }
  }

  v30 = *(this + 1);
  if ((v30 & 1) == 0)
  {
    return v4;
  }

  v38 = v30 & 0xFFFFFFFFFFFFFFFELL;
  v39 = *(v38 + 23);
  if (v39 < 0)
  {
    v40 = *v38;
    v39 = *(v38 + 8);
  }

  else
  {
    v40 = v38;
  }

  if (*a3 - v4 >= v39)
  {
    v41 = v39;
    memcpy(v4, v40, v39);
    v4 += v41;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v40, v39, v4);
}

uint64_t protobuf::Intelligence_Event::ByteSizeLong(protobuf::Intelligence_Event *this)
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
      v7 = protobuf::Intelligence_NLParameters::ByteSizeLong(v6);
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

  v13 = *(this + 20);
  v14 = v9 + v13;
  if (v13 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 72, v15);
      v17 = *(v16 + 23);
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v16 + 8);
      }

      v14 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      ++v15;
    }

    while (v13 != v15);
  }

  v18 = *(this + 26);
  v19 = v14 + v18;
  if (v18 >= 1)
  {
    v20 = 0;
    do
    {
      v21 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 96, v20);
      v22 = *(v21 + 23);
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(v21 + 8);
      }

      v19 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      ++v20;
    }

    while (v18 != v20);
  }

  v23 = *(this + 4);
  if ((v23 & 0x3F) == 0)
  {
    goto LABEL_32;
  }

  if (v23)
  {
    v27 = *(this + 15);
    v28 = *(v27 + 23);
    v29 = *(v27 + 8);
    if ((v28 & 0x80u) == 0)
    {
      v29 = v28;
    }

    v19 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 2) == 0)
    {
LABEL_27:
      if ((v23 & 4) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_40;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_27;
  }

  v30 = *(this + 16);
  v31 = *(v30 + 23);
  v32 = *(v30 + 8);
  if ((v31 & 0x80u) == 0)
  {
    v32 = v31;
  }

  v19 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v23 & 4) == 0)
  {
LABEL_28:
    if ((v23 & 8) == 0)
    {
      goto LABEL_29;
    }

LABEL_43:
    v36 = *(this + 18);
    v37 = *(v36 + 23);
    v38 = *(v36 + 8);
    if ((v37 & 0x80u) == 0)
    {
      v38 = v37;
    }

    v19 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 0x10) == 0)
    {
LABEL_30:
      if ((v23 & 0x20) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    goto LABEL_46;
  }

LABEL_40:
  v33 = *(this + 17);
  v34 = *(v33 + 23);
  v35 = *(v33 + 8);
  if ((v34 & 0x80u) == 0)
  {
    v35 = v34;
  }

  v19 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v23 & 8) != 0)
  {
    goto LABEL_43;
  }

LABEL_29:
  if ((v23 & 0x10) == 0)
  {
    goto LABEL_30;
  }

LABEL_46:
  v39 = *(this + 19);
  v40 = *(v39 + 23);
  v41 = *(v39 + 8);
  if ((v40 & 0x80u) == 0)
  {
    v41 = v40;
  }

  v19 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v23 & 0x20) != 0)
  {
LABEL_31:
    v24 = protobuf::Intelligence_NLParameters::ByteSizeLong(*(this + 20));
    v19 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_32:
  v25 = *(this + 1);
  if (v25)
  {
    v42 = v25 & 0xFFFFFFFFFFFFFFFELL;
    v43 = *((v25 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v43 < 0)
    {
      v43 = *(v42 + 8);
    }

    v19 += v43;
  }

  *(this + 5) = v19;
  return v19;
}

void protobuf::Intelligence_Event::CheckTypeAndMergeFrom(protobuf::Intelligence_Event *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_Event::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_Event::MergeFrom(protobuf::Intelligence_Event *this, const protobuf::Intelligence_Event *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 10117);
    v4 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v19, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_NLParameters>::TypeHandler>(this + 3, a2 + 24);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48, a2 + 48);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 72, a2 + 72);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 96, a2 + 96);
  v6 = *(a2 + 4);
  if ((v6 & 0x3F) != 0)
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
      *(this + 4) |= 0x20u;
      v17 = *(this + 20);
      if (!v17)
      {
        v17 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_NLParameters>(0);
        *(this + 20) = v17;
      }

      if (*(a2 + 20))
      {
        v18 = *(a2 + 20);
      }

      else
      {
        v18 = &protobuf::_Intelligence_NLParameters_default_instance_;
      }

      protobuf::Intelligence_NLParameters::MergeFrom(v17, v18);
    }
  }
}

void sub_254CE7158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Event::CopyFrom(protobuf::Intelligence_Event *this, const protobuf::Intelligence_Event *a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_Event::Clear(this);

    protobuf::Intelligence_Event::MergeFrom(this, a2);
  }
}

void protobuf::Intelligence_Event::InternalSwap(protobuf::Intelligence_Event *this, protobuf::Intelligence_Event *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v39;
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
}

protobuf::Intelligence_Intent *protobuf::Intelligence_Intent::Intelligence_Intent(protobuf::Intelligence_Intent *this)
{
  *(this + 8) = 0u;
  *this = &unk_28671A330;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_Intent_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Intent_intelligence_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 8) = 0;
  return this;
}

void sub_254CE75D0(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v1 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_Intent *protobuf::Intelligence_Intent::Intelligence_Intent(protobuf::Intelligence_Intent *this, const protobuf::Intelligence_Intent *a2)
{
  *this = &unk_28671A330;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_NLParameters>::TypeHandler>(this + 3, a2 + 24);
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

  if ((v6 & 4) != 0)
  {
    if (!*(a2 + 8))
    {
      google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 19149);
      v9 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: !value || nl_producer_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 8) = 0;
  return this;
}

void sub_254CE7748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v3 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v4);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Intent::~Intelligence_Intent(protobuf::Intelligence_Intent *this)
{
  *this = &unk_28671A330;
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

  if (this != &protobuf::_Intelligence_Intent_default_instance_)
  {
    v6 = *(this + 8);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((this + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_Intent::~Intelligence_Intent(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_Intent::default_instance(protobuf::Intelligence_Intent *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_Intent_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Intent_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_Intent_default_instance_;
}

void protobuf::Intelligence_Intent::Clear(protobuf::Intelligence_Intent *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_NLParameters>::TypeHandler>(this + 24);
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    goto LABEL_17;
  }

  if (v2)
  {
    v3 = *(this + 6);
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_10:
  v4 = *(this + 7);
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *v4 = 0;
    *(v4 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_17;
    }
  }

LABEL_14:
  v5 = *(this + 8);
  if (!v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 10286);
    v6 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: nl_producer_ != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    v5 = *(this + 8);
  }

  protobuf::Intelligence_NLParameters::Clear(v5);
LABEL_17:
  v8 = *(this + 8);
  v7 = this + 8;
  *(v7 + 2) = 0;
  if (v8)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v7);
  }
}

void sub_254CE7A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string::value_type *protobuf::Intelligence_Intent::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v22 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v22, *(this + 23));
  result = v22;
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
      v22 = result;
      if (!result)
      {
        return result;
      }

      v7 = result;
      LODWORD(v8) = v21;
LABEL_7:
      v9 = v8 >> 3;
      if (v8 >> 3 <= 5)
      {
        if (v9 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v11 = *(a1 + 48);
            if (v11 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 48, &google::protobuf::internal::fixed_address_empty_string);
            }

            goto LABEL_25;
          }
        }

        else if (v9 == 3 && v8 == 26)
        {
          *(a1 + 16) |= 2u;
          v11 = *(a1 + 56);
          if (v11 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 56, &google::protobuf::internal::fixed_address_empty_string);
          }

LABEL_25:
          result = google::protobuf::internal::InlineGreedyStringParser(v11, v7, this);
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      if (v9 != 6)
      {
        if (v9 == 7 && v8 == 58)
        {
          *(a1 + 16) |= 4u;
          v12 = *(a1 + 64);
          if (!v12)
          {
            v12 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_NLParameters>(0);
            *(a1 + 64) = v12;
            v7 = v22;
          }

          result = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_NLParameters>(this, v12, v7);
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      if (v8 == 50)
      {
        result = v7 - 1;
        while (1)
        {
          v13 = (result + 1);
          v22 = (result + 1);
          v14 = *(a1 + 40);
          if (!v14)
          {
            break;
          }

          v15 = *(a1 + 32);
          v16 = *v14;
          if (v15 >= *v14)
          {
            if (v16 == *(a1 + 36))
            {
LABEL_33:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v16 + 1);
              v14 = *(a1 + 40);
              v16 = *v14;
            }

            *v14 = v16 + 1;
            v17 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_NLParameters>(*(a1 + 24));
            v18 = *(a1 + 32);
            v19 = *(a1 + 40) + 8 * v18;
            *(a1 + 32) = v18 + 1;
            *(v19 + 8) = v17;
            v13 = v22;
            goto LABEL_35;
          }

          *(a1 + 32) = v15 + 1;
          v17 = *&v14[2 * v15 + 2];
LABEL_35:
          result = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_NLParameters>(this, v17, v13);
          v22 = result;
          if (!result)
          {
            return result;
          }

          if (*this <= result || *result != 50)
          {
            goto LABEL_43;
          }
        }

        v16 = *(a1 + 36);
        goto LABEL_33;
      }

LABEL_39:
      if (!v8 || (v8 & 7) == 4)
      {
        *(this + 20) = v8 - 1;
        return v7;
      }

      result = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), v7, this);
LABEL_42:
      v22 = result;
      if (!result)
      {
        return result;
      }

LABEL_43:
      v20 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v22, *(this + 23));
      result = v22;
      if (v20)
      {
        return result;
      }
    }

    v7 = result + 2;
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *protobuf::Intelligence_Intent::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_Intent *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 6), a2);
  }

  if ((v6 & 2) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 3, *(this + 7), v4);
  }

  v7 = *(this + 8);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_NLParameters>::TypeHandler>(this + 24, i);
      *v4 = 50;
      v10 = *(v9 + 20);
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

      v4 = protobuf::Intelligence_NLParameters::InternalSerializeWithCachedSizesToArray(v9, v11, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v15 = *(this + 8);
    *v4 = 58;
    v16 = *(v15 + 20);
    if (v16 > 0x7F)
    {
      v4[1] = v16 | 0x80;
      v18 = v16 >> 7;
      if (v16 >> 14)
      {
        v17 = v4 + 3;
        do
        {
          *(v17 - 1) = v18 | 0x80;
          v19 = v18 >> 7;
          ++v17;
          v20 = v18 >> 14;
          v18 >>= 7;
        }

        while (v20);
        *(v17 - 1) = v19;
      }

      else
      {
        v4[2] = v18;
        v17 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v16;
      v17 = v4 + 2;
    }

    v4 = protobuf::Intelligence_NLParameters::InternalSerializeWithCachedSizesToArray(v15, v17, a3);
  }

  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return v4;
  }

  v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(v23 + 23);
  if (v24 < 0)
  {
    v25 = *v23;
    v24 = *(v23 + 8);
  }

  else
  {
    v25 = v23;
  }

  if (*a3 - v4 >= v24)
  {
    v26 = v24;
    memcpy(v4, v25, v24);
    v4 += v26;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v25, v24, v4);
}

uint64_t protobuf::Intelligence_Intent::ByteSizeLong(protobuf::Intelligence_Intent *this)
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
      v7 = protobuf::Intelligence_NLParameters::ByteSizeLong(v6);
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
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      v12 = *(this + 6);
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    v15 = *(this + 7);
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) != 0)
    {
LABEL_13:
      v9 = protobuf::Intelligence_NLParameters::ByteSizeLong(*(this + 8));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_14:
  v10 = *(this + 1);
  if (v10)
  {
    v18 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v19 = *((v10 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v19 < 0)
    {
      v19 = *(v18 + 8);
    }

    v2 += v19;
  }

  *(this + 5) = v2;
  return v2;
}

void protobuf::Intelligence_Intent::CheckTypeAndMergeFrom(protobuf::Intelligence_Intent *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_Intent::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_Intent::MergeFrom(protobuf::Intelligence_Intent *this, const protobuf::Intelligence_Intent *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 10454);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_NLParameters>::TypeHandler>(this + 3, a2 + 24);
  v6 = *(a2 + 4);
  if ((v6 & 7) != 0)
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
      *(this + 4) |= 4u;
      v11 = *(this + 8);
      if (!v11)
      {
        v11 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_NLParameters>(0);
        *(this + 8) = v11;
      }

      if (*(a2 + 8))
      {
        v12 = *(a2 + 8);
      }

      else
      {
        v12 = &protobuf::_Intelligence_NLParameters_default_instance_;
      }

      protobuf::Intelligence_NLParameters::MergeFrom(v11, v12);
    }
  }
}

void sub_254CE82BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Intent::CopyFrom(protobuf::Intelligence_Intent *this, const protobuf::Intelligence_Intent *a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_Intent::Clear(this);

    protobuf::Intelligence_Intent::MergeFrom(this, a2);
  }
}

void protobuf::Intelligence_Intent::InternalSwap(protobuf::Intelligence_Intent *this, protobuf::Intelligence_Intent *a2)
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
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v23;
}

protobuf::Intelligence_State_Memory_Value *protobuf::Intelligence_State_Memory_Value::Intelligence_State_Memory_Value(protobuf::Intelligence_State_Memory_Value *this)
{
  *(this + 8) = 0u;
  *this = &unk_28671A3C0;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_State_Memory_Value_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_State_Memory_Value_intelligence_2eproto);
  }

  return this;
}

void sub_254CE8580(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_State_Memory_Value *protobuf::Intelligence_State_Memory_Value::Intelligence_State_Memory_Value(protobuf::Intelligence_State_Memory_Value *this, const protobuf::Intelligence_State_Memory_Value *a2)
{
  *this = &unk_28671A3C0;
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

  return this;
}

void sub_254CE862C(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v2 + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_State_Memory_Value::~Intelligence_State_Memory_Value(protobuf::Intelligence_State_Memory_Value *this)
{
  *this = &unk_28671A3C0;
  v1 = (this + 8);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
}

{
  *this = &unk_28671A3C0;
  v1 = (this + 8);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
}

{
  *this = &unk_28671A3C0;
  v1 = (this + 8);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_State_Memory_Value::default_instance(protobuf::Intelligence_State_Memory_Value *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_State_Memory_Value_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_State_Memory_Value_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_State_Memory_Value_default_instance_;
}

void protobuf::Intelligence_State_Memory_Value::Clear(protobuf::Intelligence_State_Memory_Value *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24);
  v3 = *(this + 8);
  v2 = this + 8;
  *(v2 + 2) = 0;
  if (v3)
  {

    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v2);
  }
}

google::protobuf::internal *protobuf::Intelligence_State_Memory_Value::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v20 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v20, *(this + 23));
  result = v20;
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
      v20 = result;
      if (!result)
      {
        return result;
      }

      v7 = result;
      LODWORD(v8) = v19;
LABEL_6:
      if (v8 == 10)
      {
        result = (v7 - 1);
        while (1)
        {
          v11 = result + 1;
          v20 = (result + 1);
          v12 = *(a1 + 40);
          if (!v12)
          {
            break;
          }

          v13 = *(a1 + 32);
          v14 = *v12;
          if (v13 >= *v12)
          {
            if (v14 == *(a1 + 36))
            {
LABEL_20:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v14 + 1);
              v12 = *(a1 + 40);
              v14 = *v12;
            }

            *v12 = v14 + 1;
            v16 = *(a1 + 24);
            if (!v16)
            {
              operator new();
            }

            if (v16[14])
            {
            }

            AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v16, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
            AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
            AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
            AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
            v17 = *(a1 + 32);
            v18 = *(a1 + 40) + 8 * v17;
            *(a1 + 32) = v17 + 1;
            *(v18 + 8) = AlignedAndAddCleanup;
            v11 = v20;
            goto LABEL_26;
          }

          *(a1 + 32) = v13 + 1;
          AlignedAndAddCleanup = *&v12[2 * v13 + 2];
LABEL_26:
          result = google::protobuf::internal::InlineGreedyStringParser(AlignedAndAddCleanup, v11, this);
          v20 = result;
          if (!result)
          {
            return result;
          }

          if (*this <= result || *result != 10)
          {
            goto LABEL_12;
          }
        }

        v14 = *(a1 + 36);
        goto LABEL_20;
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
      v20 = result;
      if (!result)
      {
        return result;
      }

LABEL_12:
      v10 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v20, *(this + 23));
      result = v20;
      if (v10)
      {
        return result;
      }
    }

    v7 = (result + 2);
LABEL_5:
    v20 = v7;
    goto LABEL_6;
  }

  return result;
}

unsigned __int8 *protobuf::Intelligence_State_Memory_Value::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_State_Memory_Value *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 8);
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, i);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = *(v8 + 8), v9 > 127) || *a3 - a2 + 14 < v9)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 1, v8, a2);
      }

      else
      {
        *a2 = 10;
        a2[1] = v9;
        if (*(v8 + 23) >= 0)
        {
          v10 = v8;
        }

        else
        {
          v10 = *v8;
        }

        memcpy(a2 + 2, v10, v9);
        a2 += v9 + 2;
      }
    }
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(v13 + 23);
  if (v14 < 0)
  {
    v15 = *v13;
    v14 = *(v13 + 8);
  }

  else
  {
    v15 = v13;
  }

  if (*a3 - a2 >= v14)
  {
    v16 = v14;
    memcpy(a2, v15, v14);
    a2 += v16;
    return a2;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v15, v14, a2);
}

uint64_t protobuf::Intelligence_State_Memory_Value::ByteSizeLong(protobuf::Intelligence_State_Memory_Value *this)
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

  v7 = *(this + 1);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v10 < 0)
    {
      v10 = *(v9 + 8);
    }

    v4 += v10;
  }

  *(this + 5) = v4;
  return v4;
}

void protobuf::Intelligence_State_Memory_Value::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_State_Memory_Value::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_State_Memory_Value::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 10650);
    v4 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  v5 = a2[1];
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 3), (a2 + 3));
}

void sub_254CE8D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_State_Memory_Value::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_State_Memory_Value::Clear(this);

    protobuf::Intelligence_State_Memory_Value::MergeFrom(this, a2);
  }
}

void protobuf::Intelligence_State_Memory_Value::InternalSwap(protobuf::Intelligence_State_Memory_Value *this, protobuf::Intelligence_State_Memory_Value *a2)
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

protobuf::Intelligence_State_Memory *protobuf::Intelligence_State_Memory::Intelligence_State_Memory(protobuf::Intelligence_State_Memory *this)
{
  *this = &unk_28671A450;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_State_Memory_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_State_Memory_intelligence_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 5) = 0;
  *(this + 48) = 0;
  return this;
}

protobuf::Intelligence_State_Memory *protobuf::Intelligence_State_Memory::Intelligence_State_Memory(protobuf::Intelligence_State_Memory *this, const protobuf::Intelligence_State_Memory *a2)
{
  *this = &unk_28671A450;
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

  if ((v4 & 4) != 0)
  {
    if (!*(a2 + 5))
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 19433);
      v8 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: !value || values_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 5) = 0;
  *(this + 48) = *(a2 + 48);
  return this;
}

void sub_254CE90B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v3);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_State_Memory::~Intelligence_State_Memory(protobuf::Intelligence_State_Memory *this)
{
  *this = &unk_28671A450;
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

  if (this != &protobuf::_Intelligence_State_Memory_default_instance_)
  {
    v6 = *(this + 5);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_State_Memory::~Intelligence_State_Memory(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_State_Memory::default_instance(protobuf::Intelligence_State_Memory *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_State_Memory_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_State_Memory_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_State_Memory_default_instance_;
}

void protobuf::Intelligence_State_Memory::Clear(protobuf::Intelligence_State_Memory *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    goto LABEL_17;
  }

  if (v2)
  {
    v3 = *(this + 3);
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_10:
  v4 = *(this + 4);
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *v4 = 0;
    *(v4 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_17;
    }
  }

LABEL_14:
  v5 = *(this + 5);
  if (!v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 10780);
    v6 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: values_ != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    v5 = *(this + 5);
  }

  protobuf::Intelligence_State_Memory_Value::Clear(v5);
LABEL_17:
  v8 = *(this + 8);
  v7 = this + 8;
  v7[40] = 0;
  *(v7 + 2) = 0;
  if (v8)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v7);
  }
}

void sub_254CE9380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal *protobuf::Intelligence_State_Memory::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *this)
{
  v31 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v31, this[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      TagFallback = (v31 + 1);
      LODWORD(v8) = *v31;
      if ((*v31 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      v8 = (v8 + (*TagFallback << 7) - 128);
      if ((*TagFallback & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v31, v8);
      v31 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_3;
      }

      LODWORD(v8) = v20;
LABEL_8:
      v9 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v9 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_33;
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
LABEL_33:
            if (v8)
            {
              v19 = (v8 & 7) == 4;
            }

            else
            {
              v19 = 1;
            }

            if (v19)
            {
              this[10].i32[0] = v8 - 1;
              goto LABEL_3;
            }

            v15 = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), TagFallback, this);
            goto LABEL_38;
          }

          *(a1 + 16) |= 2u;
          v11 = *(a1 + 32);
          if (v11 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 32, &google::protobuf::internal::fixed_address_empty_string);
          }
        }

        v15 = google::protobuf::internal::InlineGreedyStringParser(v11, TagFallback, this);
LABEL_38:
        v31 = v15;
        if (!v15)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      }

      if (v9 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_33;
        }

        *(a1 + 16) |= 4u;
        v16 = *(a1 + 40);
        if (!v16)
        {
          v16 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_Memory_Value>(0);
          *(a1 + 40) = v16;
          TagFallback = v31;
        }

        v17 = *TagFallback;
        if (*TagFallback < 0)
        {
          SizeFallback = google::protobuf::internal::ReadSizeFallback(TagFallback, *TagFallback);
          if (!SizeFallback)
          {
            goto LABEL_51;
          }

          v18 = SizeFallback;
          v17 = v22;
        }

        else
        {
          v18 = TagFallback + 1;
        }

        v23 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v18, v17);
        v24 = this[11].i32[0];
        v25 = __OFSUB__(v24--, 1);
        this[11].i32[0] = v24;
        if (v24 < 0 != v25 || (v26 = v23, (v27 = protobuf::Intelligence_State_Memory_Value::_InternalParse(v16, v18, this)) == 0) || (++this[11].i32[0], this[10].i32[0]))
        {
LABEL_51:
          TagFallback = 0;
          goto LABEL_3;
        }

        v28 = this[3].i32[1] + v26;
        this[3].i32[1] = v28;
        *this = (*&this[1] + (v28 & (v28 >> 31)));
        v31 = v27;
      }

      else
      {
        if (v9 != 4 || v8 != 32)
        {
          goto LABEL_33;
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
          v31 = v13;
          *(a1 + 48) = v12 != 0;
          goto LABEL_48;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(TagFallback, v12);
        v31 = v29;
        *(a1 + 48) = v30 != 0;
        if (!v29)
        {
          goto LABEL_51;
        }
      }

LABEL_48:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v31, this[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    TagFallback = (v31 + 2);
LABEL_7:
    v31 = TagFallback;
    goto LABEL_8;
  }

LABEL_2:
  TagFallback = v31;
LABEL_3:
  *(a1 + 16) |= v5;
  return TagFallback;
}

unsigned __int8 *protobuf::Intelligence_State_Memory::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_State_Memory *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
      goto LABEL_21;
    }

    goto LABEL_18;
  }

LABEL_8:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 5);
  *v4 = 26;
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

  v4 = protobuf::Intelligence_State_Memory_Value::InternalSerializeWithCachedSizesToArray(v7, v9, a3);
  if ((v6 & 8) != 0)
  {
LABEL_18:
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 48);
    *v4 = 32;
    v4[1] = v13;
    v4 += 2;
  }

LABEL_21:
  v14 = *(this + 1);
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

unint64_t protobuf::Intelligence_State_Memory::ByteSizeLong(protobuf::Intelligence_State_Memory *this)
{
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v5 = *(this + 3);
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v8 = *(this + 4);
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v11 = protobuf::Intelligence_State_Memory_Value::ByteSizeLong(*(this + 5));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result = v3 + ((v2 >> 2) & 2);
LABEL_15:
  v12 = *(this + 1);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
    v14 = *((v12 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v14 < 0)
    {
      v14 = *(v13 + 8);
    }

    result += v14;
  }

  *(this + 5) = result;
  return result;
}

void protobuf::Intelligence_State_Memory::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_State_Memory::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_State_Memory::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 10941);
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
      *(this + 4) |= 4u;
      v11 = this[5];
      if (!v11)
      {
        v11 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_Memory_Value>(0);
        this[5] = v11;
      }

      if (a2[5])
      {
        v12 = a2[5];
      }

      else
      {
        v12 = &protobuf::_Intelligence_State_Memory_Value_default_instance_;
      }

      protobuf::Intelligence_State_Memory_Value::MergeFrom(v11, v12);
    }

    if ((v6 & 8) != 0)
    {
      *(this + 48) = *(a2 + 48);
    }

    *(this + 4) |= v6;
  }
}