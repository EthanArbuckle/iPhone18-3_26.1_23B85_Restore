uint64_t siri::dialogengine::CatBinary::vcat_item::clear_item(uint64_t this)
{
  v1 = this;
  v2 = *(this + 48);
  if (v2 > 4)
  {
    if (v2 == 5 || v2 == 6)
    {
      v3 = *(this + 40);
      if (v3 != &google::protobuf::internal::fixed_address_empty_string && v3 != 0)
      {
        if (*(v3 + 23) < 0)
        {
          operator delete(*v3);
        }

        this = MEMORY[0x1C68D4E80](v3, 0x1012C40EC159624);
      }
    }
  }

  else if (v2 == 2 || v2 == 3)
  {
    this = *(this + 40);
    if (this)
    {
      this = (*(*this + 8))(this);
    }
  }

  *(v1 + 48) = 0;
  return this;
}

google::protobuf::internal *siri::dialogengine::CatBinary::vcat_item::_InternalParse(siri::dialogengine::CatBinary::vcat_item *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v32 = a2;
  while ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v32, *(a3 + 23)) & 1) == 0)
  {
    TagFallback = (v32 + 1);
    LODWORD(v6) = *v32;
    if ((*v32 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v6 = (v6 + (*TagFallback << 7) - 128);
    if ((*TagFallback & 0x80000000) == 0)
    {
      TagFallback = (v32 + 2);
LABEL_6:
      v32 = TagFallback;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v32, v6);
    v32 = TagFallback;
    if (!TagFallback)
    {
      return TagFallback;
    }

    LODWORD(v6) = v14;
LABEL_7:
    v7 = v6 >> 3;
    if (v6 >> 3 > 3)
    {
      if (v7 == 4)
      {
        if (v6 == 34)
        {
          *(this + 4) |= 2u;
          v10 = *(this + 4);
          if (v10 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 32, &google::protobuf::internal::fixed_address_empty_string);
          }

          goto LABEL_52;
        }
      }

      else if (v7 == 5)
      {
        if (v6 == 42)
        {
          if (*(this + 12) != 5)
          {
            siri::dialogengine::CatBinary::vcat_item::clear_item(this);
            *(this + 12) = 5;
            goto LABEL_50;
          }

LABEL_34:
          v10 = *(this + 5);
          if (v10 == &google::protobuf::internal::fixed_address_empty_string)
          {
            goto LABEL_51;
          }

LABEL_52:
          v13 = google::protobuf::internal::InlineGreedyStringParser(v10, TagFallback, a3);
          goto LABEL_53;
        }
      }

      else if (v7 == 6 && v6 == 50)
      {
        if (*(this + 12) != 6)
        {
          siri::dialogengine::CatBinary::vcat_item::clear_item(this);
          *(this + 12) = 6;
LABEL_50:
          *(this + 5) = &google::protobuf::internal::fixed_address_empty_string;
LABEL_51:
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 40, &google::protobuf::internal::fixed_address_empty_string);
        }

        goto LABEL_34;
      }

      goto LABEL_36;
    }

    if (v7 == 1)
    {
      if (v6 == 10)
      {
        *(this + 4) |= 1u;
        v10 = *(this + 3);
        if (v10 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 24, &google::protobuf::internal::fixed_address_empty_string);
        }

        goto LABEL_52;
      }

      goto LABEL_36;
    }

    if (v7 == 2)
    {
      if (v6 == 18)
      {
        if (*(this + 12) == 2)
        {
          v11 = *(this + 5);
        }

        else
        {
          siri::dialogengine::CatBinary::vcat_item::clear_item(this);
          *(this + 12) = 2;
          v11 = google::protobuf::Arena::CreateMaybeMessage<siri::dialogengine::CatBinary::vcat_item_expression>(0);
          *(this + 5) = v11;
          TagFallback = v32;
        }

        v17 = *TagFallback;
        if (*TagFallback < 0)
        {
          SizeFallback = google::protobuf::internal::ReadSizeFallback(TagFallback, *TagFallback);
          if (!SizeFallback)
          {
            return 0;
          }

          v18 = SizeFallback;
          v17 = v27;
        }

        else
        {
          v18 = TagFallback + 1;
        }

        v28 = google::protobuf::internal::EpsCopyInputStream::PushLimit(a3, v18, v17);
        v29 = *(a3 + 22);
        v23 = __OFSUB__(v29--, 1);
        *(a3 + 22) = v29;
        if (v29 < 0 != v23)
        {
          return 0;
        }

        v24 = v28;
        v25 = siri::dialogengine::CatBinary::vcat_item_expression::_InternalParse(v11, v18, a3);
        if (!v25)
        {
          return 0;
        }

        goto LABEL_64;
      }

LABEL_36:
      if (v6)
      {
        v12 = (v6 & 7) == 4;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        *(a3 + 20) = v6 - 1;
        return TagFallback;
      }

      v13 = google::protobuf::internal::UnknownFieldParse(v6, this + 1, TagFallback, a3);
LABEL_53:
      v32 = v13;
      if (!v13)
      {
        return 0;
      }
    }

    else
    {
      if (v7 != 3 || v6 != 26)
      {
        goto LABEL_36;
      }

      if (*(this + 12) == 3)
      {
        v9 = *(this + 5);
      }

      else
      {
        siri::dialogengine::CatBinary::vcat_item::clear_item(this);
        *(this + 12) = 3;
        v9 = google::protobuf::Arena::CreateMaybeMessage<siri::dialogengine::CatBinary::vcat_item_repetition>(0);
        *(this + 5) = v9;
        TagFallback = v32;
      }

      v15 = *TagFallback;
      if (*TagFallback < 0)
      {
        v19 = google::protobuf::internal::ReadSizeFallback(TagFallback, *TagFallback);
        if (!v19)
        {
          return 0;
        }

        v16 = v19;
        v15 = v20;
      }

      else
      {
        v16 = TagFallback + 1;
      }

      v21 = google::protobuf::internal::EpsCopyInputStream::PushLimit(a3, v16, v15);
      v22 = *(a3 + 22);
      v23 = __OFSUB__(v22--, 1);
      *(a3 + 22) = v22;
      if (v22 < 0 != v23)
      {
        return 0;
      }

      v24 = v21;
      v25 = siri::dialogengine::CatBinary::vcat_item_repetition::_InternalParse(v9, v16, a3);
      if (!v25)
      {
        return 0;
      }

LABEL_64:
      ++*(a3 + 22);
      if (*(a3 + 20))
      {
        return 0;
      }

      v30 = *(a3 + 7) + v24;
      *(a3 + 7) = v30;
      *a3 = *(a3 + 1) + (v30 & (v30 >> 31));
      v32 = v25;
    }
  }

  return v32;
}

void siri::dialogengine::CatBinary::vcat_item::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/engine/CatBinary.pb.cc", 4392);
    v4 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v19, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
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
  }

  v11 = *(a2 + 12);
  if (v11 > 4)
  {
    if (v11 == 5)
    {
      v13 = a2[5];
      if (*(this + 12) != 5)
      {
        siri::dialogengine::CatBinary::vcat_item::clear_item(this);
        v14 = 5;
        goto LABEL_35;
      }
    }

    else
    {
      if (v11 != 6)
      {
        return;
      }

      v13 = a2[5];
      if (*(this + 12) != 6)
      {
        siri::dialogengine::CatBinary::vcat_item::clear_item(this);
        v14 = 6;
LABEL_35:
        *(this + 12) = v14;
        this[5] = &google::protobuf::internal::fixed_address_empty_string;
        goto LABEL_36;
      }
    }

    v16 = this[5];
    if (v16 != &google::protobuf::internal::fixed_address_empty_string)
    {
      std::string::operator=(v16, v13);
      return;
    }

LABEL_36:
    google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 5), v13);
  }

  if (v11 != 2)
  {
    if (v11 != 3)
    {
      return;
    }

    if (*(this + 12) == 3)
    {
      v12 = this[5];
    }

    else
    {
      siri::dialogengine::CatBinary::vcat_item::clear_item(this);
      *(this + 12) = 3;
      v12 = google::protobuf::Arena::CreateMaybeMessage<siri::dialogengine::CatBinary::vcat_item_repetition>(0);
      this[5] = v12;
      if (*(a2 + 12) != 3)
      {
        v17 = &siri::dialogengine::CatBinary::_vcat_item_repetition_default_instance_;
        goto LABEL_38;
      }
    }

    v17 = a2[5];
LABEL_38:
    siri::dialogengine::CatBinary::vcat_item_repetition::MergeFrom(v12, v17);
    return;
  }

  if (*(this + 12) == 2)
  {
    v15 = this[5];
  }

  else
  {
    siri::dialogengine::CatBinary::vcat_item::clear_item(this);
    *(this + 12) = 2;
    v15 = google::protobuf::Arena::CreateMaybeMessage<siri::dialogengine::CatBinary::vcat_item_expression>(0);
    this[5] = v15;
    if (*(a2 + 12) != 2)
    {
      v18 = &siri::dialogengine::CatBinary::_vcat_item_expression_default_instance_;
      goto LABEL_40;
    }
  }

  v18 = a2[5];
LABEL_40:
  siri::dialogengine::CatBinary::vcat_item_expression::MergeFrom(v15, v18);
}

void sub_1BFBD135C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void siri::dialogengine::CatBinary::vcat_item::~vcat_item(siri::dialogengine::CatBinary::vcat_item *this)
{
  *this = &unk_1F3F18AC8;
  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1C68D4E80](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 4);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x1C68D4E80](v4, 0x1012C40EC159624);
  }

  if (*(this + 12))
  {
    siri::dialogengine::CatBinary::vcat_item::clear_item(this);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

siri::dialogengine::CatBinary::vcat_item *siri::dialogengine::CatBinary::vcat_item::vcat_item(siri::dialogengine::CatBinary::vcat_item *this, const siri::dialogengine::CatBinary::vcat_item *a2)
{
  *this = &unk_1F3F18AC8;
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

  *(this + 12) = 0;
  v8 = *(a2 + 12);
  if (v8 > 4)
  {
    if (v8 == 5 || v8 == 6)
    {
      v13 = *(a2 + 5);
      siri::dialogengine::CatBinary::vcat_item::clear_item(this);
      *(this + 5) = &google::protobuf::internal::fixed_address_empty_string;
      *(this + 12) = v8;
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 40, v13);
    }
  }

  else if (v8 == 2)
  {
    siri::dialogengine::CatBinary::vcat_item::clear_item(this);
    *(this + 12) = 2;
    v11 = google::protobuf::Arena::CreateMaybeMessage<siri::dialogengine::CatBinary::vcat_item_expression>(0);
    *(this + 5) = v11;
    if (*(a2 + 12) == 2)
    {
      v12 = *(a2 + 5);
    }

    else
    {
      v12 = &siri::dialogengine::CatBinary::_vcat_item_expression_default_instance_;
    }

    siri::dialogengine::CatBinary::vcat_item_expression::MergeFrom(v11, v12);
  }

  else if (v8 == 3)
  {
    siri::dialogengine::CatBinary::vcat_item::clear_item(this);
    *(this + 12) = 3;
    v9 = google::protobuf::Arena::CreateMaybeMessage<siri::dialogengine::CatBinary::vcat_item_repetition>(0);
    *(this + 5) = v9;
    if (*(a2 + 12) == 3)
    {
      v10 = *(a2 + 5);
    }

    else
    {
      v10 = &siri::dialogengine::CatBinary::_vcat_item_repetition_default_instance_;
    }

    siri::dialogengine::CatBinary::vcat_item_repetition::MergeFrom(v9, v10);
  }

  return this;
}

void std::__tree<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::__map_value_compare<int,std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::less<int>,true>,std::allocator<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::__map_value_compare<int,std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::less<int>,true>,std::allocator<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>>>::destroy(*a1);
    std::__tree<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::__map_value_compare<int,std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::less<int>,true>,std::allocator<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>>>::destroy(a1[1]);
    siri::dialogengine::CatBinary::vcat_item::~vcat_item((a1 + 5));

    operator delete(a1);
  }
}

void google::protobuf::RepeatedField<int>::MergeFrom(int *a1, int *a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1279);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*a2)
  {
    v5 = *a1;
    google::protobuf::RepeatedField<int>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<int>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<int>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1177);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, v7);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<int>::elements(a2);
    memcpy(v6, v8, 4 * *a2);
  }
}

void sub_1BFBD1758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1197);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1198);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<int>::elements(a1) + 4 * a2;
}

void sub_1BFBD1838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<int>::__emplace_unique_key_args<int,int const&>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void siri::dialogengine::DecodeBase64(std::string::size_type a1@<X0>, std::string *a2@<X8>)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 23))
    {
      a2->__r_.__value_.__r.__words[0] = 0;
      a2->__r_.__value_.__l.__size_ = 0;
      v4 = a1;
      a2->__r_.__value_.__r.__words[2] = 0;
      goto LABEL_6;
    }

LABEL_24:

    std::string::basic_string[abi:ne200100]<0>(a2, "");
    return;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_24;
  }

  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = *a1;
LABEL_6:
  v5 = 0;
  v6 = &v4[v3];
  v7 = MEMORY[0x1E69E9830];
  while (1)
  {
    v8 = *v4;
    if (v8 == 61)
    {
      goto LABEL_30;
    }

    a1 = (v8 & 0x80000000) != 0 ? __maskrune(*v4, 0x500uLL) : *(v7 + 4 * v8 + 60) & 0x500u;
    if ((v8 & 0xFFFFFFFB) != 0x2B && a1 == 0)
    {
      break;
    }

    *(&v22 + v5) = v8;
    if (v5 >= 3)
    {
      for (i = 0; i != 4; ++i)
      {
        siri::dialogengine::GetBase64Chars(a1);
        a1 = std::string::find(&siri::dialogengine::GetBase64Chars(void)::base64Chars, *(&v22 + i), 0);
        *(&v22 + i) = a1;
      }

      v11 = 0;
      v26 = (4 * v22) | (v23 >> 4) & 3;
      v27 = (16 * v23) | (v24 >> 2) & 0xF;
      v28 = v25 + (v24 << 6);
      do
      {
        std::string::push_back(a2, *(&v26 + v11++));
      }

      while (v11 != 3);
      v5 = 0;
    }

    else
    {
      ++v5;
    }

    if (++v4 == v6)
    {
      goto LABEL_30;
    }
  }

  std::operator+<char>();
  v12 = std::string::append(&v19, "'");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v21 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  siri::dialogengine::Log::LogWithLevel(__p, 1u);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_30:
    if (!v5)
    {
      return;
    }

    goto LABEL_31;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
  if (!v5)
  {
    return;
  }

LABEL_31:
  for (j = 0; j != 4; ++j)
  {
    if (j >= v5)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(&v22 + j);
    }

    siri::dialogengine::GetBase64Chars(a1);
    a1 = std::string::find(&siri::dialogengine::GetBase64Chars(void)::base64Chars, v15, 0);
    *(&v22 + j) = a1;
  }

  v26 = (4 * v22) | (v23 >> 4) & 3;
  v27 = (16 * v23) | (v24 >> 2) & 0xF;
  v28 = v25 + (v24 << 6);
  if (v5 >= 2)
  {
    v16 = (v5 - 1);
    v17 = &v26;
    do
    {
      v18 = *v17++;
      std::string::push_back(a2, v18);
      --v16;
    }

    while (v16);
  }
}

void sub_1BFBD1BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void SnippetUI::ActionElement::~ActionElement(SnippetUI::ActionElement *this)
{
  *this = &unk_1F3F1B938;
  if (this != &SnippetUI::_ActionElement_default_instance_)
  {
    v2 = *(this + 8);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  google::protobuf::RepeatedField<int>::~RepeatedField(this + 40);
  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((this + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

{
  SnippetUI::ActionElement::~ActionElement(this);

  JUMPOUT(0x1C68D4E80);
}

void SnippetUI::TextElement::~TextElement(SnippetUI::TextElement *this)
{
  SnippetUI::TextElement::~TextElement(this);

  JUMPOUT(0x1C68D4E80);
}

{
  *this = &unk_1F3F1A3E8;
  if (this != &SnippetUI::_TextElement_default_instance_)
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
  }

  if (*(this + 25))
  {
    SnippetUI::TextElement::clear_value(this);
  }

  google::protobuf::RepeatedField<int>::~RepeatedField(this + 16);
  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

siri::dialogengine::ChunkText *siri::dialogengine::ChunkText::ChunkText(siri::dialogengine::ChunkText *this, const std::string *a2)
{
  *this = &unk_1F3F1F4E0;
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
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 21) = 0;
  *(this + 22) = this + 184;
  siri::dialogengine::ChunkText::SetText(this, a2);
  return this;
}

void sub_1BFBD1DA4(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*v2);
  siri::dialogengine::SpeakableString::~SpeakableString(v1);
  _Unwind_Resume(a1);
}

std::string *siri::dialogengine::ChunkText::SetText(siri::dialogengine::ChunkText *this, const std::string *a2)
{
  std::string::operator=((this + 8), a2);
  std::string::operator=((this + 32), a2 + 1);
  std::string::operator=((this + 56), a2 + 2);
  std::string::operator=((this + 80), a2 + 3);
  std::string::operator=((this + 104), a2 + 4);
  std::string::operator=((this + 128), a2 + 5);

  return std::string::operator=((this + 152), a2 + 6);
}

void sub_1BFBD1EA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<siri::dialogengine::ChunkText *,std::shared_ptr<siri::dialogengine::ChunkText>::__shared_ptr_default_delete<siri::dialogengine::ChunkText,siri::dialogengine::ChunkText>,std::allocator<siri::dialogengine::ChunkText>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t siri::dialogengine::ChunkVariable::ShouldGround(uint64_t a1, uint64_t a2, uint64_t a3, const std::string *a4)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "ground");
  siri::dialogengine::ChunkText::GetAttribute(a1, &__p, &v25);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "groundvar");
  siri::dialogengine::ChunkText::GetAttribute(a1, &__p, &v24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_11;
  }

  v9 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v24.__r_.__value_.__l.__size_;
  }

  if (v9)
  {
LABEL_11:
    memset(&v23, 0, sizeof(v23));
    memset(v22, 0, sizeof(v22));
    memset(v21, 0, sizeof(v21));
    memset(v20, 0, sizeof(v20));
    if (a4)
    {
      std::string::operator=(v20, a4);
      std::string::operator=(&v20[1], a4 + 1);
      std::string::operator=(v21, a4 + 2);
      std::string::operator=(&v21[1], a4 + 3);
      std::string::operator=(v22, a4 + 4);
      std::string::operator=(&v22[1], a4 + 5);
      std::string::operator=(&v23, a4 + 6);
    }

    else
    {
      siri::dialogengine::ResolveType(0, a2, a1 + 200, v34);
      (*(**a3 + 56))(&__p);
      std::string::operator=(v20, &__p);
      std::string::operator=(&v20[1], &v27);
      std::string::operator=(v21, &v28);
      std::string::operator=(&v21[1], &v29);
      std::string::operator=(v22, &v30);
      std::string::operator=(&v22[1], &v31);
      std::string::operator=(&v23, &v32);
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v35 < 0)
      {
        operator delete(v34[0]);
      }
    }

    v10 = (a1 + 200);
    v11 = &v24.__r_.__value_.__r.__words[2] + 7;
    v12 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v12 = v24.__r_.__value_.__l.__size_;
    }

    if (v12)
    {
      v10 = &v24;
    }

    else
    {
      v11 = (a1 + 223);
    }

    if (*v11 < 0)
    {
      p_size = &v24.__r_.__value_.__l.__size_;
      if (!v12)
      {
        p_size = (a1 + 208);
      }

      std::string::__init_copy_ctor_external(&v19, v10->__r_.__value_.__l.__data_, *p_size);
    }

    else
    {
      v19 = *v10;
    }

    siri::dialogengine::SpeakableString::ToMultiplexedString(v20, &v17);
    v14 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
    }

    else
    {
      v18 = v17;
    }

    v15 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v24.__r_.__value_.__l.__size_;
    }

    if (v15)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      std::string::basic_string[abi:ne200100]<0>(v34, "");
      siri::dialogengine::ResolveValue(a2, &v24, 1, &__p, v34, &v36);
      if (v35 < 0)
      {
        operator delete(v34[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v36)
      {
        siri::dialogengine::ResolveType(0, a2, &v24, v34);
        (*(*v36 + 56))(&__p);
        siri::dialogengine::SpeakableString::ToMultiplexedString(&__p, &v33);
        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v18.__r_.__value_.__l.__data_);
        }

        v18 = v33;
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v35 < 0)
        {
          operator delete(v34[0]);
        }
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }
    }

    if (v14 < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    siri::dialogengine::GetGroundingMode(&v25);
  }

  if ((*(&v24.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_1BFBD2558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  operator delete(__p);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  siri::dialogengine::SpeakableString::~SpeakableString(&a24);
  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  _Unwind_Resume(a1);
}

void sub_1BFBD2898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  siri::dialogengine::SpeakableString::~SpeakableString(&a9);
  v12 = *(v10 - 72);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  *(v10 - 112) = v9;
  std::vector<siri::dialogengine::SemanticFeatureConstraint>::__destroy_vector::operator()[abi:ne200100]((v10 - 112));
  _Unwind_Resume(a1);
}

void siri::dialogengine::SemanticFeatureConstraint::ParseString(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  siri::dialogengine::StringSplit(a1, ",");
}

void std::vector<siri::dialogengine::SemanticFeatureConstraint>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 56;
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1BFBD2EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

const void **std::vector<std::shared_ptr<siri::dialogengine::JSONValue>>::push_back[abi:ne200100](const void **result, uint64_t a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *result) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::vector<std::vector<std::string>>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *result;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v15[4] = v2;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<siri::dialogengine::VisualComponentsCombination::Entry>>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy(v10 - v11, *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = std::__split_buffer<std::shared_ptr<siri::dialogengine::VisualComponentsCombination::Entry>>::~__split_buffer(v15);
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v2[1] = v5;
  return result;
}

void siri::dialogengine::GetBase64Chars(siri::dialogengine *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(&siri::dialogengine::GetBase64Chars(void)::base64Chars, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
    __cxa_atexit(MEMORY[0x1E69E52C0], &siri::dialogengine::GetBase64Chars(void)::base64Chars, &dword_1BFB68000);
  }
}

void google::protobuf::internal::RepeatedPtrFieldWrapper<google::protobuf::Message>::SwapElements(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 16) + 8;
  v5 = *(v4 + 8 * a3);
  *(v4 + 8 * a3) = *(v4 + 8 * a4);
  *(v4 + 8 * a4) = v5;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldWrapper<google::protobuf::Message>::RemoveLast(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1606);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: (current_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v8, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
    v3 = *(a2 + 8);
  }

  v5 = v3 - 1;
  v6 = *(a2 + 16) + 8 * v5;
  *(a2 + 8) = v5;
  return (*(**(v6 + 8) + 56))(*(v6 + 8));
}

void sub_1BFBD3168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::Reflection::ClearOneof(uint64_t a1, google::protobuf::Message *a2, uint64_t a3)
{
  v4 = *(a2 + *(a1 + 44) - 1431655764 * ((a3 - *(*(a3 + 16) + 48)) >> 4));
  if (v4)
  {
    FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(*a1, v4);
    v8 = FieldByNumber;
    v9 = *(a2 + *(a1 + 36));
    if (v9)
    {
      if (*((v9 & 0xFFFFFFFFFFFFFFFELL) + 24))
      {
        goto LABEL_4;
      }
    }

    else if (v9)
    {
      goto LABEL_4;
    }

    v10 = *(FieldByNumber + 48);
    if (v10)
    {
      v19 = v8;
      v20 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v10, memory_order_acquire) != -1)
      {
        v22[0] = &v20;
        v22[1] = &v19;
        v21 = v22;
        std::__call_once(v10, &v21, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
      }
    }

    v11 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v8 + 56)];
    if (v11 == 10)
    {
      v14 = *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), v8));
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      goto LABEL_4;
    }

    if (v11 == 9)
    {
      v12 = *google::protobuf::internal::ReflectionSchema::GetFieldDefault((a1 + 8), v8);
      v13 = *(v8 + 88);
      if (v13)
      {
        *(a2 + *(a1 + 44) - 1431655764 * ((v13 - *(*(v13 + 16) + 48)) >> 4)) = *(v8 + 68);
      }

      else
      {
        google::protobuf::Reflection::SetBit(a1, a2, v8);
      }

      FieldOffset = google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), v8);
      v16 = *(a2 + *(a1 + 36));
      if (v16)
      {
        if (*((v16 & 0xFFFFFFFFFFFFFFFELL) + 24))
        {
          goto LABEL_4;
        }
      }

      else if (v16)
      {
        goto LABEL_4;
      }

      v17 = *(a2 + FieldOffset);
      if (v17 != v12 && v17 != 0)
      {
        if (*(v17 + 23) < 0)
        {
          operator delete(*v17);
        }

        MEMORY[0x1C68D4E80](v17, 0x1012C40EC159624);
      }
    }

LABEL_4:
    *(a2 + *(a1 + 44) - 1431655764 * ((a3 - *(*(a3 + 16) + 48)) >> 4)) = 0;
  }
}

BOOL siri::dialogengine::IsBuiltinType(std::string *a1)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "dialog.");
  if (siri::dialogengine::StringStartsWith(a1, v6))
  {
    v2 = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "sirikit.");
    v2 = siri::dialogengine::StringStartsWith(a1, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  return v2;
}

void sub_1BFBD35D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::dialogengine::ConditionExpression::EvaluateString(uint64_t a1, uint64_t a2, char ***a3)
{
  v5 = *a3;
  {
    if (v7[95] < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *(v7 + 9), *(v7 + 10));
    }

    else
    {
      __str = *(v7 + 3);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, "");
  }

  memset(&v69, 0, sizeof(v69));
  if ((*(a1 + 223) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 208))
    {
      goto LABEL_23;
    }
  }

  else if (!*(a1 + 223))
  {
    goto LABEL_23;
  }

  v8 = *(a1 + 225);
  std::string::basic_string[abi:ne200100]<0>(&v68, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  siri::dialogengine::ResolveValue(a2, a1 + 200, v8 ^ 1, &v68, &__p, &lpsrc);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  {
    if (v10[95] < 0)
    {
      std::string::__init_copy_ctor_external(&v68, *(v10 + 9), *(v10 + 10));
    }

    else
    {
      v68 = *(v10 + 3);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v68, "");
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  v69 = v68;
  if (lpsrc.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](lpsrc.__r_.__value_.__l.__size_);
  }

LABEL_23:
  v11 = (a1 + 176);
  v12 = *(a1 + 199);
  if ((*(a1 + 199) & 0x80000000) == 0)
  {
    v13 = (a1 + 176);
    if (v12 != 11)
    {
      goto LABEL_32;
    }

LABEL_28:
    v14 = *v13;
    v15 = *(v13 + 3);
    if (v14 == 0x616D5F7865676572 && v15 == 0x686374616D5F7865)
    {
      goto LABEL_49;
    }

    goto LABEL_32;
  }

  if (*(a1 + 184) == 11)
  {
    v13 = *v11;
    goto LABEL_28;
  }

LABEL_32:
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  siri::dialogengine::StringToLower(p_str, size, &v68);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = v68;
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v69;
  }

  else
  {
    v19 = v69.__r_.__value_.__r.__words[0];
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = v69.__r_.__value_.__l.__size_;
  }

  siri::dialogengine::StringToLower(v19, v20, &v68);
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  v69 = v68;
  v12 = *(a1 + 199);
LABEL_49:
  if ((v12 & 0x80) == 0)
  {
    if (v12 > 4)
    {
      if (v12 <= 9)
      {
        if (v12 != 5)
        {
          if (v12 == 8)
          {
            if (*v11 != 0x7974706D656E6F6ELL)
            {
              if (*v11 != 0x736E6961746E6F63)
              {
                if (*v11 == 0x6874697773646E65)
                {
                  goto LABEL_152;
                }

                goto LABEL_111;
              }

LABEL_118:
              v35 = siri::dialogengine::StringContains(&__str.__r_.__value_.__l.__data_, &v69);
              goto LABEL_206;
            }

            goto LABEL_69;
          }

LABEL_111:
          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 176), "<"))
          {
            v27 = std::string::compare[abi:ne200100](&__str.__r_.__value_.__l.__data_, &v69) >> 31;
            goto LABEL_207;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 176), "<="))
          {
            v23 = &v69;
            v24 = &__str;
            goto LABEL_115;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 176), "ver_eq"))
          {
            v35 = siri::dialogengine::VersionEqual(&__str, &v69);
LABEL_206:
            v27 = v35;
            goto LABEL_207;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 176), "ver_ne"))
          {
            v27 = !siri::dialogengine::VersionEqual(&__str, &v69);
            goto LABEL_207;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 176), "ver_gt"))
          {
            v35 = siri::dialogengine::VersionGreaterThan(&__str, &v69);
            goto LABEL_206;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 176), "ver_ge"))
          {
            v35 = siri::dialogengine::VersionGreaterThanOrEqual(&__str, &v69);
            goto LABEL_206;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 176), "ver_lt"))
          {
            v35 = siri::dialogengine::VersionLessThan(&__str, &v69);
            goto LABEL_206;
          }

          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 176), "ver_le"))
          {
            v35 = siri::dialogengine::VersionLessThanOrEqual(&__str, &v69);
            goto LABEL_206;
          }

          std::operator+<char>();
          v53 = std::string::append(&v65, "' for expression '");
          v54 = *&v53->__r_.__value_.__l.__data_;
          lpsrc.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
          *&lpsrc.__r_.__value_.__l.__data_ = v54;
          v53->__r_.__value_.__l.__size_ = 0;
          v53->__r_.__value_.__r.__words[2] = 0;
          v53->__r_.__value_.__r.__words[0] = 0;
          v57 = *(a1 + 152);
          v56 = a1 + 152;
          v55 = v57;
          v58 = *(v56 + 23);
          if (v58 >= 0)
          {
            v59 = v56;
          }

          else
          {
            v59 = v55;
          }

          if (v58 >= 0)
          {
            v60 = *(v56 + 23);
          }

          else
          {
            v60 = *(v56 + 8);
          }

          v61 = std::string::append(&lpsrc, v59, v60);
          v62 = *&v61->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v62;
          v61->__r_.__value_.__l.__size_ = 0;
          v61->__r_.__value_.__r.__words[2] = 0;
          v61->__r_.__value_.__r.__words[0] = 0;
          v63 = std::string::append(&__p, "'");
          v64 = *&v63->__r_.__value_.__l.__data_;
          v68.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
          *&v68.__r_.__value_.__l.__data_ = v64;
          v63->__r_.__value_.__l.__size_ = 0;
          v63->__r_.__value_.__r.__words[2] = 0;
          v63->__r_.__value_.__r.__words[0] = 0;
          siri::dialogengine::Log::LogWithLevel(&v68, 3u);
          if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v68.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(lpsrc.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(lpsrc.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v65.__r_.__value_.__l.__data_);
          }

          goto LABEL_226;
        }

        if (*v11 != 1953525093 || *(a1 + 180) != 121)
        {
          goto LABEL_111;
        }

        goto LABEL_104;
      }

      if (v12 != 10)
      {
        if (v12 != 11)
        {
          goto LABEL_111;
        }

        if (*v11 != 0x616D5F7865676572 || *(a1 + 179) != 0x686374616D5F7865)
        {
          goto LABEL_111;
        }

LABEL_148:
        siri::dialogengine::StringRegexMatch(&__str, &v69);
      }

      if (*v11 != 0x6977737472617473 || *(a1 + 184) != 26740)
      {
        goto LABEL_111;
      }

LABEL_151:
      v35 = siri::dialogengine::StringStartsWith(&__str, &v69.__r_.__value_.__l.__data_);
      goto LABEL_206;
    }

    if (v12)
    {
LABEL_64:
      if (v12 != 1)
      {
        if (v12 != 2)
        {
          goto LABEL_111;
        }

        v22 = (a1 + 176);
        if (*v11 != 15649)
        {
LABEL_67:
          if (*v22 == 15678)
          {
            v23 = &__str;
            v24 = &v69;
LABEL_115:
            v27 = std::string::compare[abi:ne200100](&v23->__r_.__value_.__l.__data_, v24) >= 0;
            goto LABEL_207;
          }

          goto LABEL_111;
        }

LABEL_162:
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v42 = __str.__r_.__value_.__l.__size_;
        }

        v43 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
        if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v43 = v69.__r_.__value_.__l.__size_;
        }

        if (v42 != v43)
        {
          v27 = 1;
          goto LABEL_207;
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = &__str;
        }

        else
        {
          v44 = __str.__r_.__value_.__r.__words[0];
        }

        if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v69;
        }

        else
        {
          v45 = v69.__r_.__value_.__r.__words[0];
        }

        v26 = memcmp(v44, v45, v42) == 0;
        goto LABEL_72;
      }

      v30 = *v11;
      if (v30 != 61)
      {
        goto LABEL_97;
      }

LABEL_132:
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v38 = __str.__r_.__value_.__l.__size_;
      }

      v39 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
      if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v39 = v69.__r_.__value_.__l.__size_;
      }

      if (v38 != v39)
      {
LABEL_226:
        v27 = 0;
        goto LABEL_207;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &__str;
      }

      else
      {
        v40 = __str.__r_.__value_.__r.__words[0];
      }

      if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &v69;
      }

      else
      {
        v41 = v69.__r_.__value_.__r.__words[0];
      }

      v33 = memcmp(v40, v41, v38) == 0;
      goto LABEL_145;
    }

LABEL_69:
    v25 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v25 = __str.__r_.__value_.__l.__size_;
    }

    v26 = v25 == 0;
LABEL_72:
    v27 = !v26;
    goto LABEL_207;
  }

  v21 = *(a1 + 184);
  switch(v21)
  {
    case 0:
      goto LABEL_69;
    case 5:
      if (**v11 == 1953525093 && *(*v11 + 4) == 121)
      {
LABEL_104:
        v32 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v32 = __str.__r_.__value_.__l.__size_;
        }

        v33 = v32 == 0;
LABEL_145:
        v27 = v33;
        goto LABEL_207;
      }

      break;
    case 8:
      switch(**v11)
      {
        case 0x7974706D656E6F6ELL:
          goto LABEL_69;
        case 0x736E6961746E6F63:
          goto LABEL_118;
        case 0x6874697773646E65:
LABEL_152:
          v35 = siri::dialogengine::StringEndsWith(&__str, &v69.__r_.__value_.__l.__data_);
          goto LABEL_206;
      }

      if ((v12 & 0x80) == 0)
      {
        goto LABEL_64;
      }

      break;
    default:
      if (v21 == 10 && **v11 == 0x6977737472617473 && *(*v11 + 8) == 26740)
      {
        goto LABEL_151;
      }

      break;
  }

  if (*(a1 + 184) == 11)
  {
    if (**v11 == 0x616D5F7865676572 && *(*v11 + 3) == 0x686374616D5F7865)
    {
      goto LABEL_148;
    }

    if ((v12 & 0x80) == 0)
    {
      goto LABEL_64;
    }
  }

  if (*(a1 + 184) == 1)
  {
    if (**v11 == 61)
    {
      goto LABEL_132;
    }

    if ((v12 & 0x80) == 0)
    {
      goto LABEL_159;
    }
  }

  if (*(a1 + 184) == 2)
  {
    if (**v11 == 15649)
    {
      goto LABEL_162;
    }

    if ((v12 & 0x80) == 0)
    {
LABEL_159:
      if (v12 != 1)
      {
        v22 = (a1 + 176);
        if (v12 != 2)
        {
          goto LABEL_111;
        }

        goto LABEL_67;
      }

      v30 = *v11;
LABEL_97:
      if (v30 != 62)
      {
        goto LABEL_111;
      }

      goto LABEL_177;
    }
  }

  if (*(a1 + 184) != 1)
  {
LABEL_199:
    if (*(a1 + 184) != 2)
    {
      goto LABEL_111;
    }

    v22 = *v11;
    goto LABEL_67;
  }

  if (**v11 != 62)
  {
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_199;
  }

LABEL_177:
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v46 = v69.__r_.__value_.__l.__size_;
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v47 = &v69;
  }

  else
  {
    v47 = v69.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v48 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v48 = __str.__r_.__value_.__l.__size_;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49 = &__str;
  }

  else
  {
    v49 = __str.__r_.__value_.__r.__words[0];
  }

  if (v48 >= v46)
  {
    v50 = v46;
  }

  else
  {
    v50 = v48;
  }

  v51 = memcmp(v47, v49, v50);
  if (v51)
  {
    v27 = v51 < 0;
  }

  else
  {
    v27 = v46 < v48;
  }

LABEL_207:
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v27;
}

void sub_1BFBD400C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v35 - 73) < 0)
  {
    operator delete(*(v35 - 96));
  }

  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::shared_ptr<siri::dialogengine::ChunkText>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<siri::dialogengine::ChunkText>*>,std::__wrap_iter<std::shared_ptr<siri::dialogengine::ChunkText>*>>(void *result, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v8 = result;
    v10 = result[1];
    v9 = result[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v15 = v10 - a2;
      v16 = (v10 - a2) >> 4;
      if (v16 >= a5)
      {
        std::vector<std::shared_ptr<siri::dialogengine::ChunkText>>::__move_range(result, a2, result[1], &a2[2 * a5]);
        v17 = &v6[2 * a5];
      }

      else
      {
        result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<siri::dialogengine::ConditionEntry>>,std::shared_ptr<siri::dialogengine::ConditionEntry>*,std::shared_ptr<siri::dialogengine::ConditionEntry>*,std::shared_ptr<siri::dialogengine::ConditionEntry>*>(result, (a3 + v15), a4, result[1]);
        v8[1] = result;
        if (v16 < 1)
        {
          return result;
        }

        std::vector<std::shared_ptr<siri::dialogengine::ChunkText>>::__move_range(v8, a2, v10, &a2[2 * a5]);
        v17 = (v6 + v15);
      }

      return std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<siri::dialogengine::PatternSchemaUsage> *,std::shared_ptr<siri::dialogengine::PatternSchemaUsage> *,std::shared_ptr<siri::dialogengine::PatternSchemaUsage> *>(v6, v17, a2);
    }

    else
    {
      v11 = *result;
      v12 = a5 + ((v10 - *result) >> 4);
      if (v12 >> 60)
      {
        std::vector<std::vector<std::string>>::__throw_length_error[abi:ne200100]();
      }

      v13 = v9 - v11;
      if (v13 >> 3 > v12)
      {
        v12 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      v30 = v8;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<siri::dialogengine::VisualComponentsCombination::Entry>>>(v14);
      }

      v18 = 16 * ((a2 - v11) >> 4);
      v29 = 0;
      v19 = (v18 + 16 * a5);
      v20 = v18;
      do
      {
        v21 = v6[1];
        *v20 = *v6;
        *(v20 + 1) = v21;
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
        }

        v20 += 16;
        v6 += 2;
      }

      while (v20 != v19);
      memcpy(v19, a2, v8[1] - a2);
      v22 = *v8;
      v23 = &v19[v8[1] - a2];
      v8[1] = a2;
      v24 = a2 - v22;
      v25 = (v18 - (a2 - v22));
      memcpy(v25, v22, v24);
      v26 = *v8;
      *v8 = v25;
      v8[1] = v23;
      v27 = v8[2];
      v8[2] = v29;
      v28[2] = v26;
      v29 = v27;
      v28[0] = v26;
      v28[1] = v26;
      return std::__split_buffer<std::shared_ptr<siri::dialogengine::VisualComponentsCombination::Entry>>::~__split_buffer(v28);
    }
  }

  return result;
}

void siri::dialogengine::DialogPerson::GetToString(siri::dialogengine::DialogPerson *this, siri::dialogengine::Context *a2, void **a3, const siri::dialogengine::PersonData *a4)
{
  bzero(v105, 0x421uLL);
  if (!a3)
  {
    siri::dialogengine::DialogPerson::GetPersonData(this, a2, v23);
    siri::dialogengine::PersonData::operator=(v105, v23);
    if (v104 < 0)
    {
      operator delete(__p);
    }

    if (v102 < 0)
    {
      operator delete(v101);
    }

    if (v100 < 0)
    {
      operator delete(v99);
    }

    if (v98 < 0)
    {
      operator delete(v97);
    }

    if (v96 < 0)
    {
      operator delete(v95);
    }

    if (v94 < 0)
    {
      operator delete(v93);
    }

    if (v92 < 0)
    {
      operator delete(v91);
    }

    if (v90 < 0)
    {
      operator delete(v89);
    }

    if (v88 < 0)
    {
      operator delete(v87);
    }

    if (v86 < 0)
    {
      operator delete(v85);
    }

    if (v84 < 0)
    {
      operator delete(v83);
    }

    if (v82 < 0)
    {
      operator delete(v81);
    }

    if (v80 < 0)
    {
      operator delete(v79);
    }

    if (v78 < 0)
    {
      operator delete(v77);
    }

    if (v76 < 0)
    {
      operator delete(v75);
    }

    if (v74 < 0)
    {
      operator delete(v73);
    }

    if (v72 < 0)
    {
      operator delete(v71);
    }

    if (v70 < 0)
    {
      operator delete(v69);
    }

    if (v68 < 0)
    {
      operator delete(v67);
    }

    if (v66 < 0)
    {
      operator delete(v65);
    }

    if (v64 < 0)
    {
      operator delete(v63);
    }

    if (v62 < 0)
    {
      operator delete(v61);
    }

    if (v60 < 0)
    {
      operator delete(v59);
    }

    if (v58 < 0)
    {
      operator delete(v57);
    }

    if (v56 < 0)
    {
      operator delete(v55);
    }

    if (v54 < 0)
    {
      operator delete(v53);
    }

    if (v52 < 0)
    {
      operator delete(v51);
    }

    if (v50 < 0)
    {
      operator delete(v49);
    }

    if (v48 < 0)
    {
      operator delete(v47);
    }

    if (v46 < 0)
    {
      operator delete(v45);
    }

    if (v44 < 0)
    {
      operator delete(v43);
    }

    if (v42 < 0)
    {
      operator delete(v41);
    }

    if (v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 < 0)
    {
      operator delete(v33);
    }

    if (v32 < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(*(&v28 + 1));
    }

    if (SBYTE7(v28) < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(*(&v25 + 1));
    }

    if (SBYTE7(v25) < 0)
    {
      operator delete(v24[0]);
    }

    if (SHIBYTE(v23[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23[1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23[0].__r_.__value_.__l.__data_);
    }

    a3 = v105;
  }

  if (*(a3 + 1056) == 1)
  {
    siri::dialogengine::DialogPerson::GetConversationalName(this, a2, a3, v7);
  }

  v29 = 0u;
  memset(&v30, 0, sizeof(v30));
  *v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *v24 = 0u;
  memset(v23, 0, sizeof(v23));
  siri::dialogengine::CreateFullName(&__str, this, a2, a3);
  std::string::operator=(v23, &__str);
  std::string::operator=(&v23[1], &v17);
  std::string::operator=(v24, &v18);
  std::string::operator=((&v25 + 8), &v19);
  std::string::operator=(v27, &v20);
  std::string::operator=((&v28 + 8), &v21);
  std::string::operator=(&v30, &v22);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  size = HIBYTE(v23[1].__r_.__value_.__r.__words[2]);
  if ((v23[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v23[1].__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_113;
  }

  v9 = HIBYTE(v23[0].__r_.__value_.__r.__words[2]);
  if ((v23[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v23[0].__r_.__value_.__l.__size_;
  }

  if (v9)
  {
LABEL_113:
    if (SHIBYTE(v23[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v15, v23[1].__r_.__value_.__l.__data_, v23[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v15 = v23[1];
    }

    siri::dialogengine::DialogPerson::FormatSpeakableName(&v15, &__str);
    std::string::operator=(&v23[1], &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

LABEL_120:
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "personHandle");
  OptionalObjectParameter = siri::dialogengine::GetOptionalObjectParameter(&__str.__r_.__value_.__l.__data_, a2);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "friendlyPhoneNumberName");
  OptionalBooleanParameter = siri::dialogengine::GetOptionalBooleanParameter(&__str.__r_.__value_.__l.__data_, a2);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "friendlyPhoneNumberNameShort");
  v12 = siri::dialogengine::GetOptionalBooleanParameter(&__str.__r_.__value_.__l.__data_, a2);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (OptionalBooleanParameter)
  {
    v13 = OptionalBooleanParameter[66];
    if (v12)
    {
      goto LABEL_129;
    }
  }

  else if (v12)
  {
LABEL_129:
    v14 = v12[66];
    if (!OptionalObjectParameter)
    {
      goto LABEL_120;
    }

LABEL_133:
    operator new();
  }

  if (!OptionalObjectParameter)
  {
    goto LABEL_120;
  }

  goto LABEL_133;
}

void sub_1BFBD4DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  siri::dialogengine::SpeakableString::~SpeakableString(&a40);
  siri::dialogengine::PersonData::~PersonData(&STACK[0x508]);
  _Unwind_Resume(a1);
}

void siri::dialogengine::DialogPerson::GetPersonData(siri::dialogengine::DialogPerson *this@<X0>, siri::dialogengine::Context *a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0x421uLL);
  if (!a2 || (*(*a2 + 32))(a2))
  {
    siri::dialogengine::Log::Info("[DialogPerson::GetPersonData] Object variable is NULL or empty", v7);
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "fullName");
  OptionalStringParameter = siri::dialogengine::GetOptionalStringParameter(&__p.__r_.__value_.__l.__data_, a2);
  v9 = OptionalStringParameter;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v9)
    {
      goto LABEL_27;
    }
  }

  else if (!OptionalStringParameter)
  {
    goto LABEL_27;
  }

  (*(*v9 + 48))(&__p, v9);
  std::string::operator=((a3 + 672), &__p);
  std::string::operator=((a3 + 696), &v46);
  std::string::operator=((a3 + 720), &v47);
  std::string::operator=((a3 + 744), &v48);
  std::string::operator=((a3 + 768), &v49);
  std::string::operator=((a3 + 792), &v50);
  std::string::operator=((a3 + 816), &v51);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  siri::dialogengine::SpeakableString::ToMultiplexedString((a3 + 672), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  siri::dialogengine::Log::Info("[DialogPerson::GetPersonData] fullName: %s", v10, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_27:
  std::string::basic_string[abi:ne200100]<0>(&__p, "givenName");
  v12 = siri::dialogengine::GetOptionalStringParameter(&__p.__r_.__value_.__l.__data_, a2);
  v13 = v12;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v13)
    {
      goto LABEL_50;
    }
  }

  else if (!v12)
  {
    goto LABEL_50;
  }

  (*(*v13 + 48))(&__p, v13);
  std::string::operator=(a3, &__p);
  std::string::operator=((a3 + 24), &v46);
  std::string::operator=((a3 + 48), &v47);
  std::string::operator=((a3 + 72), &v48);
  std::string::operator=((a3 + 96), &v49);
  std::string::operator=((a3 + 120), &v50);
  std::string::operator=((a3 + 144), &v51);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  siri::dialogengine::SpeakableString::ToMultiplexedString(a3, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p.__r_.__value_.__r.__words[0];
  }

  siri::dialogengine::Log::Info("[DialogPerson::GetPersonData] givenName: %s", v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_50:
  std::string::basic_string[abi:ne200100]<0>(&__p, "middleName");
  v16 = siri::dialogengine::GetOptionalStringParameter(&__p.__r_.__value_.__l.__data_, a2);
  v17 = v16;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v17)
    {
      goto LABEL_73;
    }
  }

  else if (!v16)
  {
    goto LABEL_73;
  }

  (*(*v17 + 48))(&__p, v17);
  std::string::operator=((a3 + 168), &__p);
  std::string::operator=((a3 + 192), &v46);
  std::string::operator=((a3 + 216), &v47);
  std::string::operator=((a3 + 240), &v48);
  std::string::operator=((a3 + 264), &v49);
  std::string::operator=((a3 + 288), &v50);
  std::string::operator=((a3 + 312), &v51);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  siri::dialogengine::SpeakableString::ToMultiplexedString((a3 + 168), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  siri::dialogengine::Log::Info("[DialogPerson::GetPersonData] middleName: %s", v18, v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_73:
  std::string::basic_string[abi:ne200100]<0>(&__p, "familyName");
  v20 = siri::dialogengine::GetOptionalStringParameter(&__p.__r_.__value_.__l.__data_, a2);
  v21 = v20;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v21)
    {
      goto LABEL_96;
    }
  }

  else if (!v20)
  {
    goto LABEL_96;
  }

  (*(*v21 + 48))(&__p, v21);
  std::string::operator=((a3 + 336), &__p);
  std::string::operator=((a3 + 360), &v46);
  std::string::operator=((a3 + 384), &v47);
  std::string::operator=((a3 + 408), &v48);
  std::string::operator=((a3 + 432), &v49);
  std::string::operator=((a3 + 456), &v50);
  std::string::operator=((a3 + 480), &v51);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  siri::dialogengine::SpeakableString::ToMultiplexedString((a3 + 336), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &__p;
  }

  else
  {
    v23 = __p.__r_.__value_.__r.__words[0];
  }

  siri::dialogengine::Log::Info("[DialogPerson::GetPersonData] familyName: %s", v22, v23);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_96:
  std::string::basic_string[abi:ne200100]<0>(&__p, "nickname");
  v24 = siri::dialogengine::GetOptionalStringParameter(&__p.__r_.__value_.__l.__data_, a2);
  v25 = v24;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v25)
    {
      goto LABEL_119;
    }
  }

  else if (!v24)
  {
    goto LABEL_119;
  }

  (*(*v25 + 48))(&__p, v25);
  std::string::operator=((a3 + 504), &__p);
  std::string::operator=((a3 + 528), &v46);
  std::string::operator=((a3 + 552), &v47);
  std::string::operator=((a3 + 576), &v48);
  std::string::operator=((a3 + 600), &v49);
  std::string::operator=((a3 + 624), &v50);
  std::string::operator=((a3 + 648), &v51);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  siri::dialogengine::SpeakableString::ToMultiplexedString((a3 + 504), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &__p;
  }

  else
  {
    v27 = __p.__r_.__value_.__r.__words[0];
  }

  siri::dialogengine::Log::Info("[DialogPerson::GetPersonData] nickname: %s", v26, v27);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_119:
  std::string::basic_string[abi:ne200100]<0>(&__p, "pronoun");
  OptionalObjectParameter = siri::dialogengine::GetOptionalObjectParameter(&__p.__r_.__value_.__l.__data_, a2);
  v29 = OptionalObjectParameter;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v29)
    {
      goto LABEL_151;
    }

LABEL_123:
    std::string::basic_string[abi:ne200100]<0>(&__p, "initialPronoun");
    v30 = siri::dialogengine::GetOptionalStringParameter(&__p.__r_.__value_.__l.__data_, v29);
    v32 = v30;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v32)
      {
        goto LABEL_150;
      }
    }

    else if (!v30)
    {
      goto LABEL_150;
    }

    (*(*v32 + 48))(&__p, v32);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v44, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v44 = __p;
    }

    v34 = (a3 + 1008);
    if (*(a3 + 1031) < 0)
    {
      operator delete(*v34);
    }

    *v34 = *&v44.__r_.__value_.__l.__data_;
    *(a3 + 1024) = *(&v44.__r_.__value_.__l + 2);
    *(&v44.__r_.__value_.__s + 23) = 0;
    v44.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(a3 + 1031) >= 0)
    {
      v35 = a3 + 1008;
    }

    else
    {
      v35 = *(a3 + 1008);
    }

    siri::dialogengine::Log::Info("[DialogPerson::GetPersonData] pronoun.initialPronoun: %s", v33, v35);
LABEL_150:
    siri::dialogengine::DialogPronoun::gender(this, v29, v31);
  }

  if (OptionalObjectParameter)
  {
    goto LABEL_123;
  }

LABEL_151:
  std::string::basic_string[abi:ne200100]<0>(&__p, "company");
  v36 = siri::dialogengine::GetOptionalStringParameter(&__p.__r_.__value_.__l.__data_, a2);
  v37 = v36;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v37)
    {
      goto LABEL_174;
    }
  }

  else if (!v36)
  {
    goto LABEL_174;
  }

  (*(*v37 + 48))(&__p, v37);
  std::string::operator=((a3 + 840), &__p);
  std::string::operator=((a3 + 864), &v46);
  std::string::operator=((a3 + 888), &v47);
  std::string::operator=((a3 + 912), &v48);
  std::string::operator=((a3 + 936), &v49);
  std::string::operator=((a3 + 960), &v50);
  std::string::operator=((a3 + 984), &v51);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  siri::dialogengine::SpeakableString::ToMultiplexedString((a3 + 840), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &__p;
  }

  else
  {
    v39 = __p.__r_.__value_.__r.__words[0];
  }

  siri::dialogengine::Log::Info("[DialogPerson::GetPersonData] company: %s", v38, v39);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_174:
  std::string::basic_string[abi:ne200100]<0>(&__p, "useConversationalName");
  OptionalBooleanParameter = siri::dialogengine::GetOptionalBooleanParameter(&__p.__r_.__value_.__l.__data_, a2);
  v42 = OptionalBooleanParameter;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v42)
    {
      return;
    }

    goto LABEL_178;
  }

  if (OptionalBooleanParameter)
  {
LABEL_178:
    v43 = v42[66];
    *(a3 + 1056) = v43;
    siri::dialogengine::Log::Info("[DialogPerson::GetPersonData] useConversationalName: %d", v41, v43);
  }
}

void sub_1BFBD5C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  siri::dialogengine::SpeakableString::~SpeakableString(&__p);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  siri::dialogengine::PersonData::~PersonData(v21);
  _Unwind_Resume(a1);
}

void *siri::dialogengine::GetOptionalStringParameter(const void **a1, uint64_t a2)
{
  siri::dialogengine::GetParameter(&lpsrc, a2, a1, siri::dialogengine::TYPE_STRING, 0);
  if (lpsrc)
  {
    v2 = **lpsrc;
  }

  else
  {
    v3 = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void siri::dialogengine::GetParameter(char **a1, uint64_t a2, const void **a3, char *a4, int a5)
{
  v9 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::find<std::string>(a2 + 72, a3);
  if (a2 + 80 == v9)
  {
    v43 = 0;
    v44 = 0;
  }

  else
  {
    v11 = *(v9 + 56);
    v10 = *(v9 + 64);
    v43 = v11;
    v44 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v11)
    {
      if (siri::dialogengine::TYPE_ARRAY == a4)
      {
      }

      else if (siri::dialogengine::TYPE_BOOLEAN == a4)
      {
      }

      else if (siri::dialogengine::TYPE_NUMBER == a4)
      {
      }

      else if (siri::dialogengine::TYPE_OBJECT == a4)
      {
      }

      else
      {
        if (siri::dialogengine::TYPE_STRING != a4)
        {
          std::operator+<char>();
          v12 = std::string::append(&v40, "'!");
          v13 = *&v12->__r_.__value_.__l.__data_;
          v42 = v12->__r_.__value_.__r.__words[2];
          v41 = v13;
          v12->__r_.__value_.__l.__size_ = 0;
          v12->__r_.__value_.__r.__words[2] = 0;
          v12->__r_.__value_.__r.__words[0] = 0;
          siri::dialogengine::Log::LogWithLevel(&v41, 3u);
          if (SHIBYTE(v42) < 0)
          {
            operator delete(v41);
          }

          if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
          {
            v14 = v40.__r_.__value_.__r.__words[0];
LABEL_24:
            operator delete(v14);
            goto LABEL_55;
          }

          goto LABEL_55;
        }
      }

      v22 = **v11;
      {
        std::operator+<char>();
        v23 = std::string::append(&v36, "'. Expected '");
        v24 = *&v23->__r_.__value_.__l.__data_;
        v37.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
        *&v37.__r_.__value_.__l.__data_ = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        v25 = std::string::append(&v37, a4);
        v26 = *&v25->__r_.__value_.__l.__data_;
        v38.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v38.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v27 = std::string::append(&v38, "' but got '");
        v28 = *&v27->__r_.__value_.__l.__data_;
        v39.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v39.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        if (v11[55] < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v11 + 4), *(v11 + 5));
        }

        else
        {
          __p = *(v11 + 32);
        }

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
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v31 = std::string::append(&v39, p_p, size);
        v32 = *&v31->__r_.__value_.__l.__data_;
        v40.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
        *&v40.__r_.__value_.__l.__data_ = v32;
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        v33 = std::string::append(&v40, "'!");
        v34 = *&v33->__r_.__value_.__l.__data_;
        v42 = v33->__r_.__value_.__r.__words[2];
        v41 = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        siri::dialogengine::Log::LogWithLevel(&v41, 3u);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(v41);
        }

        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }
      }

      *a1 = v11;
      a1[1] = v10;
      a1 = &v43;
      goto LABEL_55;
    }
  }

  if (a5)
  {
    std::operator+<char>();
    v15 = std::string::append(&v38, "' of type '");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v39, a4);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v40, "' is a required input but was not specified!");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v42 = v19->__r_.__value_.__r.__words[2];
    v41 = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    siri::dialogengine::Log::LogWithLevel(&v41, 3u);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(v41);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      v14 = v38.__r_.__value_.__r.__words[0];
      goto LABEL_24;
    }
  }

LABEL_55:
  *a1 = 0;
  a1[1] = 0;
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }
}

void sub_1BFBD6200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v48 - 89) < 0)
  {
    operator delete(*(v48 - 112));
  }

  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  _Unwind_Resume(exception_object);
}

void *siri::dialogengine::GetOptionalObjectParameter(const void **a1, uint64_t a2)
{
  siri::dialogengine::GetParameter(&lpsrc, a2, a1, siri::dialogengine::TYPE_OBJECT, 0);
  if (lpsrc)
  {
    v2 = **lpsrc;
  }

  else
  {
    v3 = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void *siri::dialogengine::GetOptionalBooleanParameter(const void **a1, uint64_t a2)
{
  siri::dialogengine::GetParameter(&lpsrc, a2, a1, siri::dialogengine::TYPE_BOOLEAN, 0);
  if (lpsrc)
  {
    v2 = **lpsrc;
  }

  else
  {
    v3 = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

uint64_t siri::dialogengine::PersonData::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  std::string::operator=((a1 + 48), (a2 + 48));
  std::string::operator=((a1 + 72), (a2 + 72));
  std::string::operator=((a1 + 96), (a2 + 96));
  std::string::operator=((a1 + 120), (a2 + 120));
  std::string::operator=((a1 + 144), (a2 + 144));
  std::string::operator=((a1 + 168), (a2 + 168));
  std::string::operator=((a1 + 192), (a2 + 192));
  std::string::operator=((a1 + 216), (a2 + 216));
  std::string::operator=((a1 + 240), (a2 + 240));
  std::string::operator=((a1 + 264), (a2 + 264));
  std::string::operator=((a1 + 288), (a2 + 288));
  std::string::operator=((a1 + 312), (a2 + 312));
  std::string::operator=((a1 + 336), (a2 + 336));
  std::string::operator=((a1 + 360), (a2 + 360));
  std::string::operator=((a1 + 384), (a2 + 384));
  std::string::operator=((a1 + 408), (a2 + 408));
  std::string::operator=((a1 + 432), (a2 + 432));
  std::string::operator=((a1 + 456), (a2 + 456));
  std::string::operator=((a1 + 480), (a2 + 480));
  std::string::operator=((a1 + 504), (a2 + 504));
  std::string::operator=((a1 + 528), (a2 + 528));
  std::string::operator=((a1 + 552), (a2 + 552));
  std::string::operator=((a1 + 576), (a2 + 576));
  std::string::operator=((a1 + 600), (a2 + 600));
  std::string::operator=((a1 + 624), (a2 + 624));
  std::string::operator=((a1 + 648), (a2 + 648));
  std::string::operator=((a1 + 672), (a2 + 672));
  std::string::operator=((a1 + 696), (a2 + 696));
  std::string::operator=((a1 + 720), (a2 + 720));
  std::string::operator=((a1 + 744), (a2 + 744));
  std::string::operator=((a1 + 768), (a2 + 768));
  std::string::operator=((a1 + 792), (a2 + 792));
  std::string::operator=((a1 + 816), (a2 + 816));
  std::string::operator=((a1 + 840), (a2 + 840));
  std::string::operator=((a1 + 864), (a2 + 864));
  std::string::operator=((a1 + 888), (a2 + 888));
  std::string::operator=((a1 + 912), (a2 + 912));
  std::string::operator=((a1 + 936), (a2 + 936));
  std::string::operator=((a1 + 960), (a2 + 960));
  std::string::operator=((a1 + 984), (a2 + 984));
  v4 = (a1 + 1008);
  if (*(a1 + 1031) < 0)
  {
    operator delete(*v4);
  }

  v5 = *(a2 + 1008);
  *(a1 + 1024) = *(a2 + 1024);
  *v4 = v5;
  *(a2 + 1031) = 0;
  *(a2 + 1008) = 0;
  v6 = (a1 + 1032);
  if (*(a1 + 1055) < 0)
  {
    operator delete(*v6);
  }

  v7 = *(a2 + 1032);
  *(a1 + 1048) = *(a2 + 1048);
  *v6 = v7;
  *(a2 + 1055) = 0;
  *(a2 + 1032) = 0;
  *(a1 + 1056) = *(a2 + 1056);
  return a1;
}

void siri::dialogengine::CreateFullName(std::string *this, siri::dialogengine::Context *a2, const siri::dialogengine::VariableObject *a3, void **a4)
{
  v202 = *MEMORY[0x1E69E9840];
  bzero(v33, 0x421uLL);
  if (a4)
  {
    v8 = (a4 + 84);
    v9 = a4 + 42;
    v10 = a4 + 63;
    v11 = a4 + 105;
  }

  else
  {
    siri::dialogengine::DialogPerson::GetPersonData(a2, a3, &__str);
    siri::dialogengine::PersonData::operator=(v33, &__str);
    if (v201 < 0)
    {
      operator delete(__p);
    }

    if (v199 < 0)
    {
      operator delete(v198);
    }

    if (v197 < 0)
    {
      operator delete(v196);
    }

    if (v195 < 0)
    {
      operator delete(v194);
    }

    if (v193 < 0)
    {
      operator delete(v192);
    }

    if (v191 < 0)
    {
      operator delete(v190);
    }

    if (v189 < 0)
    {
      operator delete(v188);
    }

    if (v187 < 0)
    {
      operator delete(v186);
    }

    if (v185 < 0)
    {
      operator delete(v184);
    }

    if (v183 < 0)
    {
      operator delete(v182);
    }

    if (v181 < 0)
    {
      operator delete(v180);
    }

    if (v179 < 0)
    {
      operator delete(v178);
    }

    if (v177 < 0)
    {
      operator delete(v176);
    }

    if (v175 < 0)
    {
      operator delete(v174);
    }

    if (v173 < 0)
    {
      operator delete(v172);
    }

    if (v171 < 0)
    {
      operator delete(v170);
    }

    if (v169 < 0)
    {
      operator delete(v168);
    }

    if (v167 < 0)
    {
      operator delete(v166);
    }

    if (v165 < 0)
    {
      operator delete(v164);
    }

    if (v163 < 0)
    {
      operator delete(v162);
    }

    if (v161 < 0)
    {
      operator delete(v160);
    }

    if (v159 < 0)
    {
      operator delete(v158);
    }

    if (v157 < 0)
    {
      operator delete(v156);
    }

    if (v155 < 0)
    {
      operator delete(v154);
    }

    if (v153 < 0)
    {
      operator delete(v152);
    }

    if (v151 < 0)
    {
      operator delete(v150);
    }

    if (v149 < 0)
    {
      operator delete(v148);
    }

    if (v147 < 0)
    {
      operator delete(v146);
    }

    if (v145 < 0)
    {
      operator delete(v144);
    }

    if (v143 < 0)
    {
      operator delete(v142);
    }

    if (v141 < 0)
    {
      operator delete(v140);
    }

    if (v139 < 0)
    {
      operator delete(v138);
    }

    if (v137 < 0)
    {
      operator delete(v136);
    }

    if (v135 < 0)
    {
      operator delete(v134);
    }

    if (v133 < 0)
    {
      operator delete(v132);
    }

    if (v131 < 0)
    {
      operator delete(v130);
    }

    if (v129 < 0)
    {
      operator delete(v128);
    }

    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v127.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v126.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v125.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v122.__r_.__value_.__l.__data_);
    }

    v9 = &v61;
    v10 = &v75;
    v8 = &v89;
    v11 = &v103;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    a4 = v33;
  }

  siri::dialogengine::SpeakableString::SpeakableString(this, v8);
  if ((SHIBYTE(this[1].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (this[1].__r_.__value_.__l.__size_)
    {
      goto LABEL_163;
    }
  }

  else if (*(&this[1].__r_.__value_.__s + 23))
  {
    goto LABEL_163;
  }

  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (this->__r_.__value_.__l.__size_)
    {
      goto LABEL_163;
    }
  }

  else if (*(&this->__r_.__value_.__s + 23))
  {
    goto LABEL_163;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "useRelationshipName");
  OptionalBooleanParameter = siri::dialogengine::GetOptionalBooleanParameter(&__str.__r_.__value_.__l.__data_, a3);
  v14 = OptionalBooleanParameter;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (!v14)
    {
      goto LABEL_105;
    }
  }

  else if (!OptionalBooleanParameter)
  {
    goto LABEL_105;
  }

  if (v14[66])
  {
LABEL_116:
    std::string::basic_string[abi:ne200100]<0>(&__str, "relationship");
    OptionalStringParameter = siri::dialogengine::GetOptionalStringParameter(&__str.__r_.__value_.__l.__data_, a3);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (OptionalStringParameter)
    {
      if (OptionalStringParameter[95] < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *(OptionalStringParameter + 9), *(OptionalStringParameter + 10));
      }

      else
      {
        __str = *(OptionalStringParameter + 3);
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (size)
      {
        if (OptionalStringParameter[95] < 0)
        {
          std::string::__init_copy_ctor_external(&v32, *(OptionalStringParameter + 9), *(OptionalStringParameter + 10));
        }

        else
        {
          v32 = *(OptionalStringParameter + 3);
        }

        std::string::basic_string[abi:ne200100]<0>(v29, "com.apple.intents.PersonRelationship.");
        std::string::basic_string[abi:ne200100]<0>(v27, "");
        siri::dialogengine::StringReplace(&v32, v29, v27, 0, &v31);
        if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v31;
        }

        else
        {
          v21 = v31.__r_.__value_.__r.__words[0];
        }

        if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = v31.__r_.__value_.__l.__size_;
        }

        siri::dialogengine::StringToLower(v21, v22, &__str);
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        v32 = __str;
        *(&__str.__r_.__value_.__s + 23) = 0;
        __str.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        if (v28 < 0)
        {
          operator delete(v27[0]);
        }

        if (SHIBYTE(v30) < 0)
        {
          operator delete(v29[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(&v31, "personRelationship");
        v29[0] = 0;
        v29[1] = 0;
        v30 = 0;
        siri::dialogengine::ApplySemanticConcept(a2, &v31, &v32, v29, &__str);
        std::string::operator=(this, &__str);
        std::string::operator=(this + 1, &v122);
        std::string::operator=(this + 2, &v123);
        std::string::operator=(this + 3, &v124);
        std::string::operator=(this + 4, &v125);
        std::string::operator=(this + 5, &v126);
        std::string::operator=(this + 6, &v127);
        if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v127.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v126.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v123.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v122.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v27[0] = v29;
        std::vector<siri::dialogengine::SemanticFeatureConstraint>::__destroy_vector::operator()[abi:ne200100](v27);
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }
      }
    }

    goto LABEL_163;
  }

LABEL_105:
  std::string::basic_string[abi:ne200100]<0>(&__str, "givenName");
  std::string::basic_string[abi:ne200100]<0>(&v122, "middleName");
  std::string::basic_string[abi:ne200100]<0>(&v123, "familyName");
  std::string::basic_string[abi:ne200100]<0>(&v124, "nickname");
  std::string::basic_string[abi:ne200100]<0>(&v125, "fullName");
  std::string::basic_string[abi:ne200100]<0>(&v126, "company");
  v15 = 0;
  while (1)
  {
    v16 = siri::dialogengine::GetOptionalStringParameter((&__str.__r_.__value_.__l.__data_ + v15), a3);
    if (v16)
    {
      if (((*(*v16 + 32))(v16) & 1) == 0)
      {
        break;
      }
    }

    v15 += 24;
    if (v15 == 144)
    {
      v17 = 1;
      goto LABEL_111;
    }
  }

  v17 = 0;
LABEL_111:
  for (i = 0; i != -18; i -= 3)
  {
    if (SHIBYTE(v126.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v126.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v17)
  {
    goto LABEL_116;
  }

LABEL_163:
  v23 = SHIBYTE(this[1].__r_.__value_.__r.__words[2]);
  if (v23 < 0)
  {
    if (this[1].__r_.__value_.__l.__size_)
    {
      goto LABEL_169;
    }
  }

  else if (*(&this[1].__r_.__value_.__s + 23))
  {
    goto LABEL_169;
  }

  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (this->__r_.__value_.__l.__size_)
    {
LABEL_169:
      if ((v23 & 0x80) == 0)
      {
        goto LABEL_170;
      }

      goto LABEL_190;
    }
  }

  else if (*(&this->__r_.__value_.__s + 23))
  {
    goto LABEL_169;
  }

  siri::dialogengine::Context::GetLocale(a2, v12, &v32);
  siri::dialogengine::MeCard::FormatFullName(a4, v9, &v32, &__str);
  std::string::operator=(this, &__str);
  std::string::operator=(this + 1, &v122);
  std::string::operator=(this + 2, &v123);
  std::string::operator=(this + 3, &v124);
  std::string::operator=(this + 4, &v125);
  std::string::operator=(this + 5, &v126);
  std::string::operator=(this + 6, &v127);
  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v127.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v125.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  LOBYTE(v23) = *(&this[1].__r_.__value_.__s + 23);
  if ((v23 & 0x80) == 0)
  {
LABEL_170:
    if (v23)
    {
      goto LABEL_203;
    }

    goto LABEL_191;
  }

LABEL_190:
  if (this[1].__r_.__value_.__l.__size_)
  {
    goto LABEL_203;
  }

LABEL_191:
  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (this->__r_.__value_.__l.__size_)
    {
      goto LABEL_203;
    }
  }

  else if (*(&this->__r_.__value_.__s + 23))
  {
    goto LABEL_203;
  }

  if ((*(v10 + 47) & 0x8000000000000000) != 0)
  {
    if (!v10[4])
    {
      goto LABEL_199;
    }

LABEL_202:
    std::string::operator=(this, v10);
    std::string::operator=(this + 1, v10 + 1);
    std::string::operator=(this + 2, v10 + 2);
    std::string::operator=(this + 3, v10 + 3);
    std::string::operator=(this + 4, v10 + 4);
    std::string::operator=(this + 5, v10 + 5);
    std::string::operator=(this + 6, v10 + 6);
    LOBYTE(v23) = *(&this[1].__r_.__value_.__s + 23);
    goto LABEL_203;
  }

  if (*(v10 + 47))
  {
    goto LABEL_202;
  }

LABEL_199:
  v24 = *(v10 + 23);
  if ((v24 & 0x8000000000000000) != 0)
  {
    v24 = v10[1];
  }

  if (v24)
  {
    goto LABEL_202;
  }

LABEL_203:
  if ((v23 & 0x80) != 0)
  {
    if (this[1].__r_.__value_.__l.__size_)
    {
      goto LABEL_219;
    }
  }

  else if (v23)
  {
    goto LABEL_219;
  }

  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (this->__r_.__value_.__l.__size_)
    {
      goto LABEL_219;
    }
  }

  else if (*(&this->__r_.__value_.__s + 23))
  {
    goto LABEL_219;
  }

  if ((*(v11 + 47) & 0x8000000000000000) != 0)
  {
    if (!v11[4])
    {
      goto LABEL_215;
    }

LABEL_218:
    std::string::operator=(this, v11);
    std::string::operator=(this + 1, v11 + 1);
    std::string::operator=(this + 2, v11 + 2);
    std::string::operator=(this + 3, v11 + 3);
    std::string::operator=(this + 4, v11 + 4);
    std::string::operator=(this + 5, v11 + 5);
    std::string::operator=(this + 6, v11 + 6);
    goto LABEL_219;
  }

  if (*(v11 + 47))
  {
    goto LABEL_218;
  }

LABEL_215:
  v25 = *(v11 + 23);
  if ((v25 & 0x8000000000000000) != 0)
  {
    v25 = v11[1];
  }

  if (v25)
  {
    goto LABEL_218;
  }

LABEL_219:
  if (v120 < 0)
  {
    operator delete(v119);
  }

  if (v118 < 0)
  {
    operator delete(v117);
  }

  if (v116 < 0)
  {
    operator delete(v115);
  }

  if (v114 < 0)
  {
    operator delete(v113);
  }

  if (v112 < 0)
  {
    operator delete(v111);
  }

  if (v110 < 0)
  {
    operator delete(v109);
  }

  if (v108 < 0)
  {
    operator delete(v107);
  }

  if (v106 < 0)
  {
    operator delete(v105);
  }

  if (v104 < 0)
  {
    operator delete(v103);
  }

  if (v102 < 0)
  {
    operator delete(v101);
  }

  if (v100 < 0)
  {
    operator delete(v99);
  }

  if (v98 < 0)
  {
    operator delete(v97);
  }

  if (v96 < 0)
  {
    operator delete(v95);
  }

  if (v94 < 0)
  {
    operator delete(v93);
  }

  if (v92 < 0)
  {
    operator delete(v91);
  }

  if (v90 < 0)
  {
    operator delete(v89);
  }

  if (v88 < 0)
  {
    operator delete(v87);
  }

  if (v86 < 0)
  {
    operator delete(v85);
  }

  if (v84 < 0)
  {
    operator delete(v83);
  }

  if (v82 < 0)
  {
    operator delete(v81);
  }

  if (v80 < 0)
  {
    operator delete(v79);
  }

  if (v78 < 0)
  {
    operator delete(v77);
  }

  if (v76 < 0)
  {
    operator delete(v75);
  }

  if (v74 < 0)
  {
    operator delete(v73);
  }

  if (v72 < 0)
  {
    operator delete(v71);
  }

  if (v70 < 0)
  {
    operator delete(v69);
  }

  if (v68 < 0)
  {
    operator delete(v67);
  }

  if (v66 < 0)
  {
    operator delete(v65);
  }

  if (v64 < 0)
  {
    operator delete(v63);
  }

  if (v62 < 0)
  {
    operator delete(v61);
  }

  if (v60 < 0)
  {
    operator delete(v59);
  }

  if (v58 < 0)
  {
    operator delete(v57);
  }

  if (v56 < 0)
  {
    operator delete(v55);
  }

  if (v54 < 0)
  {
    operator delete(v53);
  }

  if (v52 < 0)
  {
    operator delete(v51);
  }

  if (v50 < 0)
  {
    operator delete(v49);
  }

  if (v48 < 0)
  {
    operator delete(v47);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  if (v42 < 0)
  {
    operator delete(v41);
  }

  if (v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1BFBD7420(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  siri::dialogengine::SpeakableString::~SpeakableString(v14);
  siri::dialogengine::PersonData::~PersonData(va);
  _Unwind_Resume(a1);
}

void siri::dialogengine::DialogPerson::FormatSpeakableName(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  siri::dialogengine::RemoveEmojiChars(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!size)
    {
      goto LABEL_6;
    }
  }

  else if (!*(&__p.__r_.__value_.__s + 23))
  {
    goto LABEL_6;
  }

  if (!siri::dialogengine::ContainsTTStoiCodes(a1))
  {
    std::string::basic_string[abi:ne200100]<0>(v16, "\x1B");
    std::string::basic_string[abi:ne200100]<0>(v15, "E+001B;");
    std::string::basic_string[abi:ne200100]<0>(&v12, "&");
    std::string::basic_string[abi:ne200100]<0>(v10, "&amp;");
    siri::dialogengine::StringReplace(a1, &v12, v10, 0, &v13);
    std::string::basic_string[abi:ne200100]<0>(v8, "'");
    std::string::basic_string[abi:ne200100]<0>(v6, "&apos;");
    siri::dialogengine::StringReplace(&v13, v8, v6, 0, &__p);
    siri::dialogengine::StringReplace(&__p, v16, v15, 0, &v14);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v7 < 0)
    {
      operator delete(v6[0]);
    }

    if (v9 < 0)
    {
      operator delete(v8[0]);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    siri::dialogengine::RemoveUnicodeControlChars();
  }

LABEL_6:
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }
}

void sub_1BFBD78A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v45 - 145) < 0)
  {
    operator delete(*(v45 - 168));
  }

  siri::dialogengine::SpeakableString::~SpeakableString(&__p);
  if (*(v45 - 121) < 0)
  {
    operator delete(*(v45 - 144));
  }

  if (*(v45 - 97) < 0)
  {
    operator delete(*(v45 - 120));
  }

  if (*(v45 - 73) < 0)
  {
    operator delete(*(v45 - 96));
  }

  if (*(v45 - 49) < 0)
  {
    operator delete(*(v45 - 72));
  }

  _Unwind_Resume(a1);
}

void siri::dialogengine::RemoveEmojiChars(const std::string *a1@<X0>, std::string *a2@<X8>)
{
  memset(&v16, 0, sizeof(v16));
  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  std::string::reserve(&v16, size);
  if (size)
  {
    v5 = 0;
    do
    {
      v6 = v5++;
      if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = a1;
      }

      else
      {
        v7 = a1->__r_.__value_.__r.__words[0];
      }

      v8 = v7->__r_.__value_.__s.__data_[v6];
      if ((v7->__r_.__value_.__s.__data_[v6] & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      if (v5 == size)
      {
        goto LABEL_11;
      }

      if (v8 < 0xE0)
      {
        if (v8 >= 0xC2)
        {
          v11 = v8 & 0x1F;
LABEL_20:
          v12 = v7->__r_.__value_.__s.__data_[v5] ^ 0x80;
          v13 = v12 > 0x3F;
          v14 = v12 | (v11 << 6);
          if (v13)
          {
            v8 = -1;
          }

          else
          {
            v8 = v14;
          }

          if (!v13)
          {
            ++v5;
          }

          goto LABEL_32;
        }
      }

      else if (v8 > 0xEF)
      {
        if (v8 <= 0xF4)
        {
          v15 = v7->__r_.__value_.__s.__data_[v5];
          if ((byte_1BFFCA21A[v15 >> 4] >> (v8 + 16)))
          {
            v5 = v6 + 2;
            if (v6 + 2 == size)
            {
              goto LABEL_11;
            }

            v10 = v7->__r_.__value_.__s.__data_[v5] ^ 0x80;
            if (v10 <= 0x3F)
            {
              LODWORD(v9) = v15 & 0x3F | ((v8 - 240) << 6);
LABEL_16:
              if (++v5 != size)
              {
                v11 = v10 | (v9 << 6);
                goto LABEL_20;
              }

LABEL_11:
              v8 = -1;
              v5 = size;
              goto LABEL_32;
            }
          }
        }
      }

      else
      {
        v9 = v7->__r_.__value_.__s.__data_[v6] & 0xF;
        if ((a00000000000000[v9] >> (v7->__r_.__value_.__s.__data_[v5] >> 5)))
        {
          v10 = v7->__r_.__value_.__s.__data_[v5] & 0x3F;
          goto LABEL_16;
        }
      }

      v8 = -1;
LABEL_32:
      if (u_isdigit(v8) || !u_hasBinaryProperty(v8, UCHAR_EMOJI) && !u_hasBinaryProperty(v8, UCHAR_EMOJI_PRESENTATION) && !u_hasBinaryProperty(v8, UCHAR_EMOJI_MODIFIER) && !u_hasBinaryProperty(v8, UCHAR_EMOJI_MODIFIER_BASE) && !u_hasBinaryProperty(v8, UCHAR_EMOJI_COMPONENT))
      {
        std::string::append(&v16, a1, v6, v5 - v6);
      }
    }

    while (v5 < size);
  }

  siri::dialogengine::StripWhitespace(&v16, 0, a2);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_1BFBD7C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::dialogengine::ContainsTTStoiCodes(char **a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "\x1B\\toi=");
  v2 = siri::dialogengine::StringContains(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void siri::dialogengine::SpeakableString::GetExpandedSpeak(siri::dialogengine::SpeakableString *this@<X0>, siri::dialogengine::Context *a2@<X1>, std::string *a3@<X8>)
{
  siri::dialogengine::SpeakableString::GetSpeakChunks(this, a2, v5);
  siri::dialogengine::ChunkList::Expand(v6, v5, a2);
  siri::dialogengine::ExpandToText(&v7, v6[0], v6[1]);
  if (SHIBYTE(v10) < 0)
  {
    std::string::__init_copy_ctor_external(a3, v9, *(&v9 + 1));
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = v9;
    a3->__r_.__value_.__r.__words[2] = v10;
  }

  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  v21 = v6;
  std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100](&v21);
  v21 = v5;
  std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100](&v21);
}

void sub_1BFBD7D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15)
{
  siri::dialogengine::SpeakableString::~SpeakableString(&a15);
  *(v15 - 40) = &a12;
  std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100]((v15 - 40));
  *(v15 - 40) = &a9;
  std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100]((v15 - 40));
  _Unwind_Resume(a1);
}

BOOL siri::dialogengine::IsSSMLTag(siri::dialogengine *this, const siri::dialogengine::ChunkTag *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "say-as");
    std::string::basic_string[abi:ne200100]<0>(v12, "prosody");
    std::string::basic_string[abi:ne200100]<0>(v13, "phoneme");
    std::string::basic_string[abi:ne200100]<0>(v14, "break");
    std::string::basic_string[abi:ne200100]<0>(v15, "emphasis");
    std::string::basic_string[abi:ne200100]<0>(v16, "w");
    std::string::basic_string[abi:ne200100]<0>(v17, "sub");
    std::string::basic_string[abi:ne200100]<0>(v18, "audio");
    std::string::basic_string[abi:ne200100]<0>(v19, "mark");
    std::set<std::string>::set[abi:ne200100](&siri::dialogengine::IsSSMLTag(siri::dialogengine::ChunkTag const*)::sSSMLTags, __p, 9);
    for (i = 0; i != -216; i -= 24)
    {
      if (v19[i + 23] < 0)
      {
        operator delete(*&v19[i]);
      }
    }

    __cxa_atexit(std::set<std::string>::~set[abi:ne200100], &siri::dialogengine::IsSSMLTag(siri::dialogengine::ChunkTag const*)::sSSMLTags, &dword_1BFB68000);
  }

  if (*(this + 223) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(this + 25), *(this + 26));
  }

  else
  {
    v9 = *(this + 200);
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v9;
  }

  else
  {
    v3 = v9.__r_.__value_.__r.__words[0];
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  siri::dialogengine::StringToLower(v3, size, __p);
  v5 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::find<std::string>(&siri::dialogengine::IsSSMLTag(siri::dialogengine::ChunkTag const*)::sSSMLTags, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  result = v5 != &unk_1EBE02ED0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BFBD801C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v23 = (v21 + 215);
  v24 = -216;
  v25 = v23;
  while (1)
  {
    v26 = *v25;
    v25 -= 24;
    if (v26 < 0)
    {
      operator delete(*(v23 - 23));
    }

    v23 = v25;
    v24 += 24;
    if (!v24)
    {
      _Unwind_Resume(a1);
    }
  }
}

BOOL siri::dialogengine::ConvertSSMLToTTSCode(siri::dialogengine::Context *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 223) < 0)
  {
    std::string::__init_copy_ctor_external(&v127, *(a2 + 200), *(a2 + 208));
  }

  else
  {
    v127 = *(a2 + 200);
  }

  if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v127;
  }

  else
  {
    v6 = v127.__r_.__value_.__r.__words[0];
  }

  if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v127.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v127.__r_.__value_.__l.__size_;
  }

  siri::dialogengine::StringToLower(v6, size, &v119);
  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v127.__r_.__value_.__l.__data_);
  }

  if ((v121 & 0x80) != 0)
  {
    if (v120 > 5)
    {
      if (v120 == 6)
      {
        if (*v119 == 762929523 && *(v119 + 2) == 29537)
        {
          goto LABEL_98;
        }
      }

      else if (v120 == 7)
      {
        if (*v119 == 1852794992 && *(v119 + 3) == 1701668206)
        {
          goto LABEL_200;
        }

        if ((v121 & 0x80) == 0)
        {
          if (v121 != 4)
          {
            if (v121 == 5)
            {
              goto LABEL_65;
            }

            if (v121 != 7)
            {
              return 0;
            }

            goto LABEL_75;
          }

LABEL_158:
          v32 = &v119;
          goto LABEL_167;
        }
      }

      else if (v120 == 8 && *v119 == 0x7369736168706D65)
      {
        goto LABEL_44;
      }
    }

    else if (v120 == 1)
    {
      if (*v119 == 119)
      {
        goto LABEL_87;
      }
    }

    else if (v120 == 3)
    {
      if (*v119 == 30067 && *(v119 + 2) == 98)
      {
LABEL_114:
        std::string::basic_string[abi:ne200100]<0>(&v127, "alias");
        siri::dialogengine::ChunkText::GetAttribute(a2, &v127, &__str);
        if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v127.__r_.__value_.__l.__data_);
        }

        v25 = *a3;
        v26 = *(a3 + 8);
        if (*a3 == v26)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "");
          siri::dialogengine::SpeakableString::SpeakableString(&v127, &__p, &__str);
          std::allocate_shared[abi:ne200100]<siri::dialogengine::ChunkText,std::allocator<siri::dialogengine::ChunkText>,siri::dialogengine::SpeakableString,0>();
        }

        v27 = 1;
        do
        {
          v29 = *v25;
          v28 = v25[1];
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          siri::dialogengine::SpeakableString::SpeakableString(&v127, (v29 + 8));
          if (v27)
          {
            std::string::operator=(&v128, &__str);
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "");
            std::string::operator=(&v128, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          siri::dialogengine::ChunkText::SetText(v29, &v127);
          if (v138 < 0)
          {
            operator delete(v137);
          }

          if (v136 < 0)
          {
            operator delete(v135);
          }

          if (v134 < 0)
          {
            operator delete(v133);
          }

          if (v132 < 0)
          {
            operator delete(v131);
          }

          if (v130 < 0)
          {
            operator delete(v129);
          }

          if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v128.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v127.__r_.__value_.__l.__data_);
          }

          if (v28)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          }

          v27 = 0;
          v25 += 2;
        }

        while (v25 != v26);
        if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_276;
        }

        v19 = __str.__r_.__value_.__r.__words[0];
LABEL_275:
        operator delete(v19);
LABEL_276:
        v8 = 1;
        goto LABEL_416;
      }
    }

    else if (v120 == 5 && *v119 == 1634038370 && *(v119 + 4) == 107)
    {
      goto LABEL_188;
    }

    if (v120 == 5)
    {
      if (*v119 == 1768191329 && *(v119 + 4) == 111)
      {
        goto LABEL_173;
      }

      if ((v121 & 0x80) == 0)
      {
LABEL_157:
        if (v121 != 4)
        {
          return 0;
        }

        goto LABEL_158;
      }
    }

    if (v120 != 7 || (*v119 == 1936683632 ? (v33 = *(v119 + 3) == 2036625267) : (v33 = 0), !v33))
    {
      if (v120 != 4)
      {
        goto LABEL_168;
      }

      v32 = v119;
LABEL_167:
      if (*v32 == 1802658157)
      {
        siri::dialogengine::ResolveMarkNameValue(&v127, a1, a2);
        v35 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
        if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v35 = v127.__r_.__value_.__l.__size_;
        }

        v8 = v35 != 0;
        if (!v35)
        {
          siri::dialogengine::Log::Warn("SSML mark element requires 'name' or 'value' attribute.", v34);
LABEL_413:
          if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_416;
          }

          v90 = v127.__r_.__value_.__r.__words[0];
          goto LABEL_415;
        }

        std::operator+<char>();
        std::string::basic_string[abi:ne200100]<0>(&__p, "");
        std::string::basic_string[abi:ne200100]<0>(&v125, "");
        siri::dialogengine::AddTTSCodes(a3, &__str, &__p, &v125);
        goto LABEL_372;
      }

LABEL_168:
      v8 = 0;
      goto LABEL_416;
    }

LABEL_216:
    std::string::basic_string[abi:ne200100]<0>(&__str, "rate");
    siri::dialogengine::ChunkText::GetAttribute(a2, &__str, &v127);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v46 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
    if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v46 = v127.__r_.__value_.__l.__size_;
    }

    if (v46)
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "%");
      v48 = siri::dialogengine::StringEndsWith(&v127, &__str.__r_.__value_.__l.__data_);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v48)
      {
        siri::dialogengine::StringTrim("%", &v127, &__p);
        v49 = std::string::insert(&__p, 0, "rate=");
        v50 = *&v49->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v50;
        v49->__r_.__value_.__l.__size_ = 0;
        v49->__r_.__value_.__r.__words[2] = 0;
        v49->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(&v125, "rate=100");
        std::string::basic_string[abi:ne200100]<0>(&v124, "");
        siri::dialogengine::AddTTSCodes(a3, &__str, &v125, &v124);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v51 = 1;
LABEL_279:
        std::string::basic_string[abi:ne200100]<0>(&__p, "pitch");
        siri::dialogengine::ChunkText::GetAttribute(a2, &__p, &__str);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v58 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v58 = __str.__r_.__value_.__l.__size_;
        }

        if (v58)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "%");
          v60 = siri::dialogengine::StringEndsWith(&__str, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v60)
          {
            siri::dialogengine::StringTrim("%", &__str, &__p);
            v61 = siri::dialogengine::StringToInt(&__p, 0, 0);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            std::to_string(&v125, v61 + 100);
            v62 = std::string::insert(&v125, 0, "pitch=");
            v63 = *&v62->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v63;
            v62->__r_.__value_.__l.__size_ = 0;
            v62->__r_.__value_.__r.__words[2] = 0;
            v62->__r_.__value_.__r.__words[0] = 0;
            std::string::basic_string[abi:ne200100]<0>(&v124, "pitch=100");
            std::string::basic_string[abi:ne200100]<0>(v122, "");
            siri::dialogengine::AddTTSCodes(a3, &__p, &v124, v122);
            if (v123 < 0)
            {
              operator delete(v122[0]);
            }

            if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v124.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v125.__r_.__value_.__l.__data_);
            }

            v51 = 1;
          }

          else
          {
            siri::dialogengine::Log::Warn("SSML prosody pitch attribute should be in the format +{n}%% or -{n}%%.", v59);
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&v125, "volume");
        siri::dialogengine::ChunkText::GetAttribute(a2, &v125, &__p);
        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        v65 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v65 = __p.__r_.__value_.__l.__size_;
        }

        if (!v65)
        {
          goto LABEL_327;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__p.__r_.__value_.__l.__size_ == 6)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
LABEL_309:
            data = p_p->__r_.__value_.__l.__data_;
            v68 = WORD2(p_p->__r_.__value_.__r.__words[0]);
            if (data == 1701603699 && v68 == 29806)
            {
              std::string::basic_string[abi:ne200100]<0>(&v125, "vol=0");
              std::string::basic_string[abi:ne200100]<0>(&v124, "vol=80");
              std::string::basic_string[abi:ne200100]<0>(v122, "");
              siri::dialogengine::AddTTSCodes(a3, &v125, &v124, v122);
              if (v123 < 0)
              {
                operator delete(v122[0]);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }

              if ((SHIBYTE(v125.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_393;
              }

              v76 = v125.__r_.__value_.__r.__words[0];
LABEL_392:
              operator delete(v76);
              goto LABEL_393;
            }
          }
        }

        else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 6)
        {
          p_p = &__p;
          goto LABEL_309;
        }

        std::string::basic_string[abi:ne200100]<0>(&v125, "dB");
        v71 = siri::dialogengine::StringEndsWith(&__p, &v125.__r_.__value_.__l.__data_);
        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        if (v71)
        {
          siri::dialogengine::StringTrim("dB", &__p, &v125);
          v72 = siri::dialogengine::StringToInt(&v125, 0, 0);
          if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v125.__r_.__value_.__l.__data_);
          }

          v73 = __exp10(v72 / 20.0);
          std::to_string(&v124, llround(v73 * 80.0));
          v74 = std::string::insert(&v124, 0, "vol=");
          v75 = *&v74->__r_.__value_.__l.__data_;
          v125.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
          *&v125.__r_.__value_.__l.__data_ = v75;
          v74->__r_.__value_.__l.__size_ = 0;
          v74->__r_.__value_.__r.__words[2] = 0;
          v74->__r_.__value_.__r.__words[0] = 0;
          std::string::basic_string[abi:ne200100]<0>(v122, "vol=80");
          std::string::basic_string[abi:ne200100]<0>(&v118, "");
          siri::dialogengine::AddTTSCodes(a3, &v125, v122, &v118);
          if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v118.__r_.__value_.__l.__data_);
          }

          if (v123 < 0)
          {
            operator delete(v122[0]);
          }

          if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v125.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(v124.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_393;
          }

          v76 = v124.__r_.__value_.__r.__words[0];
          goto LABEL_392;
        }

        siri::dialogengine::Log::Warn("SSML prosody volume attribute should be in the format {n}dB.", v70);
LABEL_327:
        if ((v51 & 1) == 0)
        {
          siri::dialogengine::Log::Warn("SSML prosody element requires rate, volume, or pitch attributes.", v64);
          v8 = 0;
LABEL_394:
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_411;
          }

          v85 = __p.__r_.__value_.__r.__words[0];
          goto LABEL_396;
        }

LABEL_393:
        v8 = 1;
        goto LABEL_394;
      }

      siri::dialogengine::Log::Warn("SSML prosody rate attribute should be in the format {n}%%.", v47);
    }

    v51 = 0;
    goto LABEL_279;
  }

  v8 = 0;
  if (v121 <= 4u)
  {
    if (v121 != 1)
    {
      if (v121 != 3)
      {
        if (v121 != 4)
        {
          return v8;
        }

        goto LABEL_158;
      }

      if (v119 != 30067 || BYTE2(v119) != 98)
      {
        return 0;
      }

      goto LABEL_114;
    }

    if (v119 != 119)
    {
      return 0;
    }

LABEL_87:
    std::string::basic_string[abi:ne200100]<0>(&v127, "mw");
    std::string::basic_string[abi:ne200100]<0>(&__str, "mw");
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    siri::dialogengine::AddTTSCodes(a3, &v127, &__str, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_276;
    }

    v19 = v127.__r_.__value_.__r.__words[0];
    goto LABEL_275;
  }

  if (v121 > 6u)
  {
    if (v121 != 7)
    {
      if (v121 != 8)
      {
        return v8;
      }

      if (v119 == 0x7369736168706D65)
      {
LABEL_44:
        memset(&v127, 0, sizeof(v127));
        std::string::basic_string[abi:ne200100]<0>(&v125, "level");
        siri::dialogengine::ChunkText::GetAttribute(a2, &v125, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &__p;
        }

        else
        {
          v11 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v12 = __p.__r_.__value_.__l.__size_;
        }

        siri::dialogengine::StringToLower(v11, v12, &__str);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          if (__str.__r_.__value_.__l.__size_ != 4 || *__str.__r_.__value_.__l.__data_ != 1701736302)
          {
            if (__str.__r_.__value_.__l.__size_ == 7)
            {
              if (*__str.__r_.__value_.__l.__data_ == 1969513842 && *(__str.__r_.__value_.__r.__words[0] + 3) == 1684366197)
              {
                goto LABEL_361;
              }

              if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
              {
                goto LABEL_363;
              }
            }

            if (__str.__r_.__value_.__l.__size_ != 8)
            {
              goto LABEL_363;
            }

            p_str = __str.__r_.__value_.__r.__words[0];
            goto LABEL_259;
          }
        }

        else
        {
          if (HIBYTE(__str.__r_.__value_.__r.__words[2]) != 4)
          {
            if (HIBYTE(__str.__r_.__value_.__r.__words[2]) != 7)
            {
              if (HIBYTE(__str.__r_.__value_.__r.__words[2]) != 8)
              {
                goto LABEL_363;
              }

              p_str = &__str;
LABEL_259:
              if (p_str->__r_.__value_.__r.__words[0] == 0x6574617265646F6DLL)
              {
                v56 = "2";
                goto LABEL_366;
              }

LABEL_363:
              if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__str, "strong"))
              {
                goto LABEL_367;
              }

              v56 = "3";
LABEL_366:
              MEMORY[0x1C68D49D0](&v127, v56);
LABEL_367:
              v82 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
              if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v82 = v127.__r_.__value_.__l.__size_;
              }

              v8 = v82 != 0;
              if (!v82)
              {
                std::operator+<char>();
                v83 = std::string::append(&v125, "'");
                v84 = *&v83->__r_.__value_.__l.__data_;
                __p.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
                *&__p.__r_.__value_.__l.__data_ = v84;
                v83->__r_.__value_.__l.__size_ = 0;
                v83->__r_.__value_.__r.__words[2] = 0;
                v83->__r_.__value_.__r.__words[0] = 0;
                siri::dialogengine::Log::LogWithLevel(&__p, 1u);
LABEL_375:
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if ((SHIBYTE(v125.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_411;
                }

                v85 = v125.__r_.__value_.__r.__words[0];
LABEL_396:
                operator delete(v85);
                goto LABEL_411;
              }

              goto LABEL_370;
            }

            if (LODWORD(__str.__r_.__value_.__l.__data_) != 1969513842 || *(__str.__r_.__value_.__r.__words + 3) != 1684366197)
            {
              goto LABEL_363;
            }

LABEL_361:
            v56 = "1";
            goto LABEL_366;
          }

          if (LODWORD(__str.__r_.__value_.__l.__data_) != 1701736302)
          {
            goto LABEL_363;
          }
        }

        v56 = "0";
        goto LABEL_366;
      }

      return 0;
    }

    if (v119 != 1852794992 || *(&v119 + 3) != 1701668206)
    {
LABEL_75:
      if (v119 != 1936683632 || *(&v119 + 3) != 2036625267)
      {
        goto LABEL_157;
      }

      goto LABEL_216;
    }

LABEL_200:
    std::string::basic_string[abi:ne200100]<0>(&__str, "alphabet");
    siri::dialogengine::ChunkText::GetAttribute(a2, &__str, &v127);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "ph");
    siri::dialogengine::ChunkText::GetAttribute(a2, &__p, &__str);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v44 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
    if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v44 = v127.__r_.__value_.__l.__size_;
    }

    if (v44)
    {
      v45 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v45 = __str.__r_.__value_.__l.__size_;
      }

      if (v45)
      {
        std::operator+<char>();
        std::string::basic_string[abi:ne200100]<0>(&v125, "toi=orth");
        siri::dialogengine::AddTTSCodes(a3, &__p, &v125, &__str);
LABEL_211:
        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v8 = 1;
        goto LABEL_411;
      }
    }

    siri::dialogengine::Log::Warn("SSML phoneme element requires alphabet and ph attributes.", v43);
LABEL_410:
    v8 = 0;
LABEL_411:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_413;
  }

  if (v121 == 5)
  {
    if (v119 != 1634038370 || BYTE4(v119) != 107)
    {
LABEL_65:
      if (v119 != 1768191329 || BYTE4(v119) != 111)
      {
        return 0;
      }

LABEL_173:
      std::string::basic_string[abi:ne200100]<0>(&__str, "src");
      siri::dialogengine::ChunkText::GetAttribute(a2, &__str, &v127);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "apple:overlap");
      siri::dialogengine::ChunkText::GetAttribute(a2, &__p, &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v37 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v37 = v127.__r_.__value_.__l.__size_;
      }

      v8 = v37 != 0;
      if (!v37)
      {
        siri::dialogengine::Log::Warn("SSML audio source element missing.", v36);
        goto LABEL_411;
      }

      v38 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v38 = __str.__r_.__value_.__l.__size_;
      }

      if (v38 && siri::dialogengine::StringToBool(&__str))
      {
        std::operator+<char>();
        v39 = std::string::append(&v125, "&overlap");
        v40 = *&v39->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(&v124, "");
        std::string::basic_string[abi:ne200100]<0>(v122, "");
        siri::dialogengine::AddTTSCodes(a3, &__p, &v124, v122);
        if (v123 < 0)
        {
          operator delete(v122[0]);
        }

        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        goto LABEL_375;
      }

LABEL_370:
      std::operator+<char>();
      std::string::basic_string[abi:ne200100]<0>(&v125, "");
      std::string::basic_string[abi:ne200100]<0>(&v124, "");
      siri::dialogengine::AddTTSCodes(a3, &__p, &v125, &v124);
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

LABEL_372:
      if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v125.__r_.__value_.__l.__data_);
      }

      goto LABEL_394;
    }

LABEL_188:
    std::string::basic_string[abi:ne200100]<0>(&__str, "time");
    siri::dialogengine::ChunkText::GetAttribute(a2, &__str, &v127);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "strength");
    siri::dialogengine::ChunkText::GetAttribute(a2, &__p, &__str);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "ms");
    v42 = siri::dialogengine::StringEndsWith(&v127, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v42)
    {
      siri::dialogengine::StringTrim("ms", &v127, &__p);
      if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v127.__r_.__value_.__l.__data_);
      }

      v127 = __p;
      std::operator+<char>();
      std::string::basic_string[abi:ne200100]<0>(&v125, "");
      std::string::basic_string[abi:ne200100]<0>(&v124, "");
      siri::dialogengine::AddTTSCodes(a3, &__p, &v125, &v124);
      goto LABEL_198;
    }

    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if (HIBYTE(__str.__r_.__value_.__r.__words[2]) != 4)
      {
        if (HIBYTE(__str.__r_.__value_.__r.__words[2]) == 6)
        {
          if (LODWORD(__str.__r_.__value_.__l.__data_) != 1702309240 || WORD2(__str.__r_.__value_.__r.__words[0]) != 27489)
          {
            if (LODWORD(__str.__r_.__value_.__l.__data_) != 1768187245 || WORD2(__str.__r_.__value_.__r.__words[0]) != 28021)
            {
              goto LABEL_247;
            }

LABEL_461:
            std::string::basic_string[abi:ne200100]<0>(&__p, "pause=350");
            std::string::basic_string[abi:ne200100]<0>(&v125, "");
            std::string::basic_string[abi:ne200100]<0>(&v124, "");
            siri::dialogengine::AddTTSCodes(a3, &__p, &v125, &v124);
            goto LABEL_198;
          }

LABEL_400:
          std::string::basic_string[abi:ne200100]<0>(&__p, "pause=50");
          std::string::basic_string[abi:ne200100]<0>(&v125, "");
          std::string::basic_string[abi:ne200100]<0>(&v124, "");
          siri::dialogengine::AddTTSCodes(a3, &__p, &v125, &v124);
          goto LABEL_198;
        }

LABEL_409:
        siri::dialogengine::Log::Warn("SSML break element has no valid 'time' or 'strength' attribute.", v41);
        goto LABEL_410;
      }

      if (LODWORD(__str.__r_.__value_.__l.__data_) != 1801545079)
      {
        if (LODWORD(__str.__r_.__value_.__l.__data_) != 1701736302)
        {
          goto LABEL_409;
        }

LABEL_419:
        std::string::basic_string[abi:ne200100]<0>(&__p, "eos=0");
        std::string::basic_string[abi:ne200100]<0>(&v125, "");
        std::string::basic_string[abi:ne200100]<0>(&v124, "");
        siri::dialogengine::AddTTSCodes(a3, &__p, &v125, &v124);
        goto LABEL_198;
      }

      goto LABEL_420;
    }

    if (__str.__r_.__value_.__l.__size_ == 4)
    {
      if (*__str.__r_.__value_.__l.__data_ == 1701736302)
      {
        goto LABEL_419;
      }

      if (*__str.__r_.__value_.__l.__data_ == 1801545079)
      {
LABEL_420:
        std::string::basic_string[abi:ne200100]<0>(&__p, "pause=150");
        std::string::basic_string[abi:ne200100]<0>(&v125, "");
        std::string::basic_string[abi:ne200100]<0>(&v124, "");
        siri::dialogengine::AddTTSCodes(a3, &__p, &v125, &v124);
        goto LABEL_198;
      }
    }

    else if (__str.__r_.__value_.__l.__size_ == 6)
    {
      if (*__str.__r_.__value_.__l.__data_ == 1702309240 && *(__str.__r_.__value_.__r.__words[0] + 4) == 27489)
      {
        goto LABEL_400;
      }

      if (*__str.__r_.__value_.__l.__data_ == 1768187245 && *(__str.__r_.__value_.__r.__words[0] + 4) == 28021)
      {
        goto LABEL_461;
      }

      if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        if (HIBYTE(__str.__r_.__value_.__r.__words[2]) == 6)
        {
LABEL_247:
          v54 = &__str;
LABEL_405:
          v87 = v54->__r_.__value_.__l.__data_;
          v88 = WORD2(v54->__r_.__value_.__r.__words[0]);
          if (v87 != 1869771891 || v88 != 26478)
          {
            goto LABEL_409;
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, "eos=1");
          std::string::basic_string[abi:ne200100]<0>(&v125, "");
          std::string::basic_string[abi:ne200100]<0>(&v124, "");
          siri::dialogengine::AddTTSCodes(a3, &__p, &v125, &v124);
LABEL_198:
          if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v124.__r_.__value_.__l.__data_);
          }

          goto LABEL_211;
        }

        goto LABEL_409;
      }
    }

    if (__str.__r_.__value_.__l.__size_ == 6)
    {
      v54 = __str.__r_.__value_.__r.__words[0];
      goto LABEL_405;
    }

    goto LABEL_409;
  }

  if (v119 != 762929523 || WORD2(v119) != 29537)
  {
    return 0;
  }

LABEL_98:
  std::string::basic_string[abi:ne200100]<0>(&v127, "interpret-as");
  siri::dialogengine::ChunkText::GetAttribute(a2, &v127, &v118);
  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v127.__r_.__value_.__l.__data_);
  }

  v22 = SHIBYTE(v118.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v118.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) != 5)
    {
      if (HIBYTE(v118.__r_.__value_.__r.__words[2]) != 6)
      {
        goto LABEL_333;
      }

      if (LODWORD(v118.__r_.__value_.__l.__data_) != 1836020336 || WORD2(v118.__r_.__value_.__r.__words[0]) != 29808)
      {
        goto LABEL_333;
      }

LABEL_268:
      std::string::basic_string[abi:ne200100]<0>(&__str, "detail");
      siri::dialogengine::ChunkText::GetAttribute(a2, &__str, &v127);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      std::operator+<char>();
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      std::string::basic_string[abi:ne200100]<0>(&v125, "");
      siri::dialogengine::AddTTSCodes(a3, &__str, &__p, &v125);
      if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v125.__r_.__value_.__l.__data_);
      }

      goto LABEL_335;
    }

    if (LODWORD(v118.__r_.__value_.__l.__data_) != 1852794992 || v118.__r_.__value_.__s.__data_[4] != 101)
    {
LABEL_333:
      if (!v22)
      {
        siri::dialogengine::Log::Warn("SSML say-as element has no interpret-as attribute.", v21);
        v8 = 0;
        goto LABEL_522;
      }

      goto LABEL_334;
    }

LABEL_384:
    siri::dialogengine::ChunkList::ChunkList(&v125, a3);
    siri::dialogengine::ChunkList::Expand(&__p, &v125, a1);
    siri::dialogengine::ExpandToText(&v127, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, v127.__r_.__value_.__l.__data_, v127.__r_.__value_.__l.__size_);
    }

    else
    {
      __str = v127;
    }

    if (v138 < 0)
    {
      operator delete(v137);
    }

    if (v136 < 0)
    {
      operator delete(v135);
    }

    if (v134 < 0)
    {
      operator delete(v133);
    }

    if (v132 < 0)
    {
      operator delete(v131);
    }

    if (v130 < 0)
    {
      operator delete(v129);
    }

    if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v128.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v127.__r_.__value_.__l.__data_);
    }

    v124.__r_.__value_.__r.__words[0] = &__p;
    std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100](&v124);
    v124.__r_.__value_.__r.__words[0] = &v125;
    std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100](&v124);
    siri::dialogengine::Context::GetLocale(a1, v92, &v127);
    siri::dialogengine::GetLocaleLanguage(&__p);
    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v127.__r_.__value_.__l.__data_);
    }

    v93 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    v94 = __str.__r_.__value_.__r.__words[0];
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v94 = &__str;
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v95 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v95 = __str.__r_.__value_.__l.__size_;
    }

    if (v95)
    {
      v96 = (v94 + v95);
      v97 = v95;
      while (1)
      {
        v98 = v97--;
        v99 = v94->__r_.__value_.__s.__data_[0];
        if (v99 == 45 && (&v94->__r_.__value_.__l.__data_ + 1) != v96)
        {
          v100 = 1;
          while ((v94->__r_.__value_.__s.__data_[v100] & 0xDFu) - 65 <= 0x19)
          {
            LODWORD(v125.__r_.__value_.__l.__data_) = v127.__r_.__value_.__l.__data_;
            *(v125.__r_.__value_.__r.__words + 3) = *(v127.__r_.__value_.__r.__words + 3);
            LODWORD(v127.__r_.__value_.__l.__data_) = v125.__r_.__value_.__l.__data_;
            *(v127.__r_.__value_.__r.__words + 3) = *(v125.__r_.__value_.__r.__words + 3);
            if (v98 == ++v100)
            {
              v101 = v97;
              goto LABEL_452;
            }
          }

          v101 = v100 - 1;
LABEL_452:
          if (v101)
          {
            break;
          }
        }

        if (v94 != v96)
        {
          v102 = (v99 - 65) > 0x39;
          v103 = &v94->__r_.__value_.__s.__data_[1];
          v104 = v102 || v103 == v96;
          if (!v104 && *v103 == 45)
          {
            break;
          }
        }

        v94 = (v94 + 1);
        if (v96 == v94)
        {
          goto LABEL_460;
        }
      }

      v105 = 1;
    }

    else
    {
LABEL_460:
      v105 = 0;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_ == 2)
      {
        v106 = __p.__r_.__value_.__r.__words[0];
        if (*__p.__r_.__value_.__l.__data_ == 28261 || *__p.__r_.__value_.__l.__data_ == 29286)
        {
          goto LABEL_474;
        }

        goto LABEL_472;
      }
    }

    else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 2)
    {
      if (LOWORD(__p.__r_.__value_.__l.__data_) == 28261 || LOWORD(__p.__r_.__value_.__l.__data_) == 29286)
      {
        goto LABEL_474;
      }

      v106 = &__p;
LABEL_472:
      if (LOWORD(v106->__r_.__value_.__l.__data_) != 29300)
      {
        v105 = 1;
      }

LABEL_474:
      if ((v105 & 1) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&v127, "tn=phone");
        std::string::basic_string[abi:ne200100]<0>(&v125, "tn=normal");
        std::string::basic_string[abi:ne200100]<0>(&v124, "");
        siri::dialogengine::AddTTSCodes(a3, &v127, &v125, &v124);
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v127.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_521;
        }

        v78 = __str.__r_.__value_.__r.__words[0];
        goto LABEL_341;
      }
    }

    memset(&v125, 0, sizeof(v125));
    if (!v95)
    {
LABEL_496:
      std::string::basic_string[abi:ne200100]<0>(&v127, ",");
      v116 = siri::dialogengine::StringStartsWith(&v125, &v127.__r_.__value_.__l.__data_);
      if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v127.__r_.__value_.__l.__data_);
      }

      if (v116)
      {
        if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v117 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v117 = v125.__r_.__value_.__l.__size_;
        }

        std::string::basic_string(&v127, &v125, 1uLL, v117, &v124);
        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        v125 = v127;
      }

      std::string::basic_string[abi:ne200100]<0>(&v124, ",,");
      std::string::basic_string[abi:ne200100]<0>(v122, ",");
      siri::dialogengine::StringReplace(&v125, &v124, v122, 0, &v127);
      if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v125.__r_.__value_.__l.__data_);
      }

      v125 = v127;
      *(&v127.__r_.__value_.__s + 23) = 0;
      v127.__r_.__value_.__s.__data_[0] = 0;
      if (v123 < 0)
      {
        operator delete(v122[0]);
      }

      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      siri::dialogengine::SpeakableString::SpeakableString(&v127, &__str, &v125);
      std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::clear[abi:ne200100](a3);
      operator new();
    }

    v107 = 0;
    v108 = SHIBYTE(__str.__r_.__value_.__r.__words[2]) >> 63;
    v109 = MEMORY[0x1E69E9830];
    while (1)
    {
      if (v108)
      {
        v110 = __str.__r_.__value_.__r.__words[0];
      }

      else
      {
        v110 = &__str;
      }

      v111 = v110->__r_.__value_.__s.__data_[v107];
      if (v111 < 0)
      {
        goto LABEL_488;
      }

      if ((*(v109 + 4 * v111 + 60) & 0x100) != 0)
      {
        goto LABEL_489;
      }

      v112 = v93 >= 0 ? &__str : __str.__r_.__value_.__r.__words[0];
      v113 = v112->__r_.__value_.__s.__data_[v107];
      if (v113 < 0)
      {
        goto LABEL_488;
      }

      if ((*(v109 + 4 * v113 + 60) & 0x400) != 0)
      {
LABEL_489:
        std::string::append(&v125, " ");
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v114 = &__str;
        }

        else
        {
          v114 = __str.__r_.__value_.__r.__words[0];
        }

        std::string::push_back(&v125, v114->__r_.__value_.__s.__data_[v107]);
        goto LABEL_493;
      }

      if (v113 != 43)
      {
LABEL_488:
        std::string::append(&v125, ",");
      }

LABEL_493:
      ++v107;
      v93 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      v108 = SHIBYTE(__str.__r_.__value_.__r.__words[2]) >> 63;
      v115 = __str.__r_.__value_.__l.__size_;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v115 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      if (v107 >= v115)
      {
        goto LABEL_496;
      }
    }
  }

  v22 = v118.__r_.__value_.__l.__size_;
  if (v118.__r_.__value_.__l.__size_ == 5)
  {
    if (*v118.__r_.__value_.__l.__data_ == 1852794992 && *(v118.__r_.__value_.__r.__words[0] + 4) == 101)
    {
      goto LABEL_384;
    }
  }

  else
  {
    if (v118.__r_.__value_.__l.__size_ != 6)
    {
      goto LABEL_333;
    }

    if (*v118.__r_.__value_.__l.__data_ == 1836020336 && *(v118.__r_.__value_.__r.__words[0] + 4) == 29808)
    {
      goto LABEL_268;
    }
  }

LABEL_334:
  std::operator+<char>();
  std::string::basic_string[abi:ne200100]<0>(&__str, "tn=normal");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  siri::dialogengine::AddTTSCodes(a3, &v127, &__str, &__p);
LABEL_335:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_521;
  }

  v78 = v127.__r_.__value_.__r.__words[0];
LABEL_341:
  operator delete(v78);
LABEL_521:
  v8 = 1;
LABEL_522:
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    v90 = v118.__r_.__value_.__r.__words[0];
LABEL_415:
    operator delete(v90);
  }

LABEL_416:
  if (v121 < 0)
  {
    operator delete(v119);
  }

  return v8;
}

void sub_1BFBD9DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (*(v52 - 105) < 0)
  {
    operator delete(*(v52 - 128));
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void siri::dialogengine::AddTTSCodes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a4 + 8);
  }

  if (v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    siri::dialogengine::SpeakableString::SpeakableString(v15, &__p, a4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    operator new();
  }

  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    std::operator+<char>();
    v7 = std::string::append(&v12, "\");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    siri::dialogengine::SpeakableString::SpeakableString(v15, &__p, &v13);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    operator new();
  }

  v9 = *(a3 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a3 + 8);
  }

  if (v9)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    std::operator+<char>();
    v10 = std::string::append(&v12, "\");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    siri::dialogengine::SpeakableString::SpeakableString(v15, &__p, &v13);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    operator new();
  }
}

void sub_1BFBDA818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, std::__shared_weak_count *a24, int a25, __int16 a26, char a27, char a28, void *a29)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  siri::dialogengine::SpeakableString::~SpeakableString(&a29);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<siri::dialogengine::ChunkText>>::insert(void *a1, char *a2, char *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v14 = *a1;
    v15 = (&v6[-*a1] >> 4) + 1;
    if (v15 >> 60)
    {
      std::vector<std::vector<std::string>>::__throw_length_error[abi:ne200100]();
    }

    v16 = a2 - v14;
    v17 = v7 - v14;
    if (v17 >> 3 > v15)
    {
      v15 = v17 >> 3;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF0)
    {
      v18 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v15;
    }

    v19 = v16 >> 4;
    v33 = a1;
    if (v18)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<siri::dialogengine::VisualComponentsCombination::Entry>>>(v18);
    }

    v21 = (16 * v19);
    v30 = 0;
    v31 = 16 * v19;
    v32 = (16 * v19);
    if (!v19)
    {
      if (v16 < 1)
      {
        if (v14 == a2)
        {
          v22 = 1;
        }

        else
        {
          v22 = v16 >> 3;
        }

        v34 = a1;
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<siri::dialogengine::VisualComponentsCombination::Entry>>>(v22);
      }

      v21 = (v21 - (((v16 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
      v31 = v21;
      *&v32 = v21;
    }

    v23 = *(a3 + 1);
    *v21 = *a3;
    v21[1] = v23;
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      v21 = v32;
    }

    *&v32 = v21 + 2;
    memcpy(v21 + 2, a2, a1[1] - a2);
    v24 = *a1;
    v25 = v31;
    *&v32 = v32 + a1[1] - a2;
    a1[1] = a2;
    v26 = a2 - v24;
    v27 = (v25 - (a2 - v24));
    memcpy(v27, v24, v26);
    v28 = *a1;
    *a1 = v27;
    v29 = a1[2];
    *(a1 + 1) = v32;
    *&v32 = v28;
    *(&v32 + 1) = v29;
    v30 = v28;
    v31 = v28;
    std::__split_buffer<std::shared_ptr<siri::dialogengine::VisualComponentsCombination::Entry>>::~__split_buffer(&v30);
  }

  else if (a2 == v6)
  {
    v20 = *(a3 + 1);
    *v6 = *a3;
    *(v6 + 1) = v20;
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    a1[1] = v6 + 16;
  }

  else
  {
    std::vector<std::shared_ptr<siri::dialogengine::ChunkText>>::__move_range(a1, a2, v6, a2 + 16);
    v8 = a1[1] <= a3 || a2 > a3;
    v9 = 16;
    if (v8)
    {
      v9 = 0;
    }

    v10 = &a3[v9];
    v12 = *v10;
    v11 = *(v10 + 1);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = *(a2 + 1);
    *a2 = v12;
    *(a2 + 1) = v11;
    if (v13)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }
}

void siri::dialogengine::ChunkTag::~ChunkTag(void **this)
{
  *this = &unk_1F3F19A38;
  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  *this = &unk_1F3F1F4E0;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this[23]);
  siri::dialogengine::SpeakableString::~SpeakableString(this + 1);
}

std::string *siri::dialogengine::VariableString::VariableString(std::string *a1, const std::string *a2, __int128 *a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, siri::dialogengine::TYPE_STRING);
  siri::dialogengine::Variable::Variable(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  a1->__r_.__value_.__r.__words[0] = &unk_1F3F1EB70;
  siri::dialogengine::SpeakableString::SpeakableString(a1 + 3, a3);
  return a1;
}

siri::dialogengine::DialogPerson *siri::dialogengine::DialogPerson::RemoveEmojis(siri::dialogengine::DialogPerson *this, siri::dialogengine::Variable *a2)
{
  v2 = this;
  if (this)
  {
    v3 = **this;
    if (v4)
    {
      v5 = v4;
      if (v4[119] < 0)
      {
        std::string::__init_copy_ctor_external(&v11, *(v4 + 12), *(v4 + 13));
      }

      else
      {
        v11 = *(v4 + 4);
      }

      siri::dialogengine::RemoveEmojiChars(&v11, &v10);
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
      if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v10.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if (v5[95] < 0)
        {
          std::string::__init_copy_ctor_external(&v9, *(v5 + 9), *(v5 + 10));
        }

        else
        {
          v9 = *(v5 + 3);
        }

        siri::dialogengine::SpeakableString::SetString(v5 + 3, &v9, &v10);
      }

      else
      {
        if (v5[95] < 0)
        {
          std::string::__init_copy_ctor_external(&v9, *(v5 + 9), *(v5 + 10));
        }

        else
        {
          v9 = *(v5 + 3);
        }

        siri::dialogengine::GetGraphemePrefix(&v11, 2, &__p);
        siri::dialogengine::SpeakableString::SetString(v5 + 3, &v9, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }

      return v5;
    }
  }

  return v2;
}

void sub_1BFBDAE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 - 25) < 0)
  {
    operator delete(*(v27 - 48));
  }

  _Unwind_Resume(exception_object);
}

void siri::dialogengine::Text::~Text(siri::dialogengine::Text *this)
{
  *this = &unk_1F3F1C8A8;
  *(this + 8) = &unk_1F3F1C900;
  siri::dialogengine::SpeakableString::~SpeakableString(this + 26);
  *this = &unk_1F3F21D30;
  *(this + 8) = &unk_1F3F21D88;
  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  *(this + 8) = &unk_1F3F222B8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(this + 10));

  siri::dialogengine::LineNumberBase::~LineNumberBase(this);
}

{
  siri::dialogengine::Text::~Text(this);

  JUMPOUT(0x1C68D4E80);
}

uint64_t std::__shared_ptr_pointer<siri::dialogengine::Variable *,std::shared_ptr<siri::dialogengine::Variable>::__shared_ptr_default_delete<siri::dialogengine::Variable,siri::dialogengine::Variable>,std::allocator<siri::dialogengine::Variable>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void siri::dialogengine::SpeakableString::ToMultiplexedString(siri::dialogengine::SpeakableString *this@<X0>, std::string *a2@<X8>)
{
  if (siri::dialogengine::SpeakableString::SpeakEqualsPrint(this))
  {
    std::operator+<char>();
    std::string::push_back(&v16, 93);
    *a2 = v16;
  }

  else
  {
    std::operator+<char>();
    v4 = std::string::append(&v14, "/tts:");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v8 = *(this + 3);
    v7 = this + 24;
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

    v12 = std::string::append(&v15, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::string::push_back(&v16, 93);
    *a2 = v16;
    memset(&v16, 0, sizeof(v16));
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1BFBDB1A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<siri::dialogengine::Text *,std::shared_ptr<siri::dialogengine::Text>::__shared_ptr_default_delete<siri::dialogengine::Text,siri::dialogengine::Text>,std::allocator<siri::dialogengine::Text>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void siri::dialogengine::Text::Execute(siri::dialogengine::Text *this@<X0>, siri::dialogengine::Context *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  siri::dialogengine::SpeakableString::GetExpanded((this + 208), a2, &v3);
  if (v3)
  {
    operator new();
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1BFBDB424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, std::__shared_weak_count *a11)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t siri::dialogengine::DialogUser::groundingIfNeeded(siri::dialogengine::DialogUser *this, siri::dialogengine::Context *a2, const siri::dialogengine::VariableObject *a3)
{
  siri::dialogengine::RequestInfo::RequestInfo(v7, (this + 8));
  if (v8 & 2) == 0 && v9 == 1 && (v10)
  {
    siri::dialogengine::DialogUser::toString(this, a2, v5);
  }

  siri::dialogengine::RequestInfo::~RequestInfo(v7);
  return 0;
}

void *std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<siri::dialogengine::PatternSchemaUsage> *,std::shared_ptr<siri::dialogengine::PatternSchemaUsage> *,std::shared_ptr<siri::dialogengine::PatternSchemaUsage> *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t SnippetUI::Button_Container_ButtonItem::clear_value(uint64_t this)
{
  v1 = this;
  v2 = *(this + 28);
  if (v2 == 3 || v2 == 2 || v2 == 1)
  {
    this = *(this + 16);
    if (this)
    {
      this = (*(*this + 8))(this);
    }
  }

  *(v1 + 28) = 0;
  return this;
}

uint64_t google::protobuf::Reflection::HasBit(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  if (*(*(a3 + 15) + 79) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/generated_message_reflection.cc", 1923);
    v6 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: !field->options().weak(): ");
    google::protobuf::internal::LogFinisher::operator=(&v22, v6);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 8) != -1)
  {
    v7 = (a2 + google::protobuf::internal::ReflectionSchema::HasBitsOffset((this + 8)));
    HasBitIndex = google::protobuf::internal::ReflectionSchema::HasBitIndex((this + 8), a3);
    return HasBitSet & 1;
  }

  v10 = *(a3 + 6);
  if (v10)
  {
    v21 = google::protobuf::FieldDescriptor::TypeOnceInit;
    v20 = a3;
    if (atomic_load_explicit(v10, memory_order_acquire) != -1)
    {
      v19[0].__r_.__value_.__r.__words[0] = &v21;
      v19[0].__r_.__value_.__l.__size_ = &v20;
      v22 = v19;
      std::__call_once(v10, &v22, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  v11 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)];
  if (v11 == 10)
  {
    if (*(this + 1) != a2)
    {
LABEL_10:
      v12 = *google::protobuf::Reflection::GetRaw<google::protobuf::RepeatedField<int>>(this, a2, a3);
LABEL_11:
      v13 = v12 == 0;
      goto LABEL_36;
    }

LABEL_40:
    HasBitSet = 0;
    return HasBitSet & 1;
  }

  v14 = *(a3 + 6);
  if (v14)
  {
    v21 = google::protobuf::FieldDescriptor::TypeOnceInit;
    v20 = a3;
    if (atomic_load_explicit(v14, memory_order_acquire) != -1)
    {
      v19[0].__r_.__value_.__r.__words[0] = &v21;
      v19[0].__r_.__value_.__l.__size_ = &v20;
      v22 = v19;
      std::__call_once(v14, &v22, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }

    v11 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)];
  }

  if (v11 <= 4)
  {
    if (v11 > 2)
    {
      if (v11 != 3)
      {
        goto LABEL_10;
      }
    }

    else if (v11 != 1)
    {
      if (v11 == 2)
      {
        goto LABEL_10;
      }

      goto LABEL_39;
    }
  }

  else
  {
    if (v11 <= 6)
    {
      if (v11 == 5)
      {
        v13 = *google::protobuf::Reflection::GetRaw<google::protobuf::RepeatedField<int>>(this, a2, a3) == 0.0;
      }

      else
      {
        v13 = *google::protobuf::Reflection::GetRaw<google::protobuf::RepeatedField<int>>(this, a2, a3) == 0.0;
      }

      goto LABEL_36;
    }

    if (v11 == 7)
    {
      HasBitSet = *google::protobuf::Reflection::GetRaw<google::protobuf::RepeatedField<int>>(this, a2, a3);
      return HasBitSet & 1;
    }

    if (v11 != 8)
    {
      if (v11 == 9)
      {
        if (google::protobuf::internal::ReflectionSchema::IsFieldInlined((this + 8), a3))
        {
          v15 = google::protobuf::Reflection::GetRaw<google::protobuf::RepeatedField<int>>(this, a2, a3);
          v12 = *(v15 + 23);
          if ((v12 & 0x80u) != 0)
          {
            v12 = *(v15 + 8);
          }
        }

        else
        {
          v18 = google::protobuf::Reflection::GetRaw<google::protobuf::RepeatedField<int>>(this, a2, a3);
          v12 = *(*v18 + 23);
          if (v12 < 0)
          {
            v12 = *(*v18 + 8);
          }
        }

        goto LABEL_11;
      }

LABEL_39:
      google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/generated_message_reflection.cc", 1977);
      v16 = google::protobuf::internal::LogMessage::operator<<(v19, "Reached impossible case in HasBit().");
      google::protobuf::internal::LogFinisher::operator=(&v22, v16);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
      goto LABEL_40;
    }
  }

  v13 = *google::protobuf::Reflection::GetRaw<google::protobuf::RepeatedField<int>>(this, a2, a3) == 0;
LABEL_36:
  HasBitSet = !v13;
  return HasBitSet & 1;
}

void sub_1BFBDB99C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ReflectionSchema::GetFieldOffset(google::protobuf::internal::ReflectionSchema *this, const google::protobuf::FieldDescriptor *a2)
{
  v3 = *(a2 + 11);
  if (v3)
  {
    v4 = *(*(this + 1) + 4 * (*(*(a2 + 10) + 104) - 1431655765 * ((v3 - *(*(v3 + 16) + 48)) >> 4)));
    v5 = *(a2 + 6);
    if (v5)
    {
      v9 = a2;
      v10 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v5, memory_order_acquire) != -1)
      {
        v12[0] = &v10;
        v12[1] = &v9;
        v11 = v12;
        std::__call_once(v5, &v11, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
      }
    }

    v6 = *(a2 + 14);
    if (v6 == 12 || v6 == 9)
    {
      return v4 & 0xFFFFFFFE;
    }

    else
    {
      return v4;
    }
  }

  else
  {

    return google::protobuf::internal::ReflectionSchema::GetFieldOffsetNonOneof(this, a2);
  }
}

uint64_t google::protobuf::internal::ReflectionSchema::GetFieldOffsetNonOneof(google::protobuf::internal::ReflectionSchema *this, const google::protobuf::FieldDescriptor *a2)
{
  if (*(a2 + 11))
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/generated_message_reflection.h", 133);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: !field->containing_oneof(): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (*(a2 + 66))
  {
    v5 = *(a2 + 12);
    if (v5)
    {
      v6 = (v5 + 80);
    }

    else
    {
      v6 = (*(a2 + 5) + 128);
    }
  }

  else
  {
    v6 = (*(a2 + 10) + 40);
  }

  v7 = *(*(this + 1) + ((0x286BCA1B00000000 * ((a2 - *v6) >> 3)) >> 30));
  v8 = *(a2 + 6);
  if (v8)
  {
    v12 = a2;
    v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v11[0].__r_.__value_.__r.__words[0] = &v13;
      v11[0].__r_.__value_.__l.__size_ = &v12;
      v14 = v11;
      std::__call_once(v8, &v14, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  v9 = *(a2 + 14);
  if (v9 == 12 || v9 == 9)
  {
    return v7 & 0xFFFFFFFE;
  }

  return v7;
}

void sub_1BFBDBBCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unint64_t google::protobuf::Reflection::ListFields(unint64_t this, const google::protobuf::Message *a2, const void **a3)
{
  a3[1] = *a3;
  v3 = (this + 8);
  if (*(this + 8) != a2)
  {
    v6 = this;
    if (*(this + 32) == -1)
    {
      v7 = 0;
    }

    else
    {
      v7 = (a2 + google::protobuf::internal::ReflectionSchema::HasBitsOffset((this + 8)));
    }

    v8 = v6[3];
    std::vector<google::protobuf::FieldDescriptor const*>::reserve(a3, *(*v6 + 26));
    if ((v6[9] & 0x80000000) == 0)
    {
      v11 = 0;
      v12 = -1;
      while (1)
      {
        v13 = (*v6)[5];
        v14 = &v13[v11];
        v20 = &v13[v11];
        if (*&v13[v11 + 60] != 3)
        {
          break;
        }

        if (google::protobuf::Reflection::FieldSize(v6, a2, v14, v9, v10) > 0)
        {
          goto LABEL_9;
        }

LABEL_10:
        ++v12;
        v8 = (v8 + 4);
        v11 += 152;
        if (v12 >= *(v6 + 18))
        {
          goto LABEL_20;
        }
      }

      v15 = *(v14 + 11);
      if (v15)
      {
        if (*(a2 + *(v6 + 11) + ((0xAAAAAAAB00000000 * ((v15 - *(*(v15 + 16) + 48)) >> 4)) >> 30)) != *&v13[v11 + 68])
        {
          goto LABEL_10;
        }
      }

      else if (v7)
      {
        {
          goto LABEL_10;
        }
      }

      else if (!google::protobuf::Reflection::HasBit(v6, a2, v14))
      {
        goto LABEL_10;
      }

LABEL_9:
      std::vector<google::protobuf::FieldDescriptor const*>::push_back[abi:ne200100](a3, &v20);
      goto LABEL_10;
    }

LABEL_20:
    if (*(v6 + 10) != -1)
    {
      ExtensionSetOffset = google::protobuf::internal::ReflectionSchema::GetExtensionSetOffset(v3);
      google::protobuf::internal::ExtensionSet::AppendToList(a2 + ExtensionSetOffset, *v6, v6[7], a3);
    }

    v17 = a3[1];
    v18 = 126 - 2 * __clz((v17 - *a3) >> 3);
    if (v17 == *a3)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }
  }

  return this;
}

google::protobuf::internal::ExtensionSet::Extension *google::protobuf::Reflection::FieldSize(const std::string::value_type ***this, const google::protobuf::Message *a2, const std::string::value_type **a3, uint64_t a4, const char *a5)
{
  v8 = *this;
  if (a3[10] != v8)
  {
  }

  if (*(a3 + 15) != 3)
  {
  }

  if (*(a3 + 66) != 1)
  {
    v12 = a3[6];
    if (v12)
    {
      v21 = google::protobuf::FieldDescriptor::TypeOnceInit;
      v20 = a3;
      if (atomic_load_explicit(v12, memory_order_acquire) != -1)
      {
        v19[0].__r_.__value_.__r.__words[0] = &v21;
        v19[0].__r_.__value_.__l.__size_ = &v20;
        v22 = v19;
        std::__call_once(v12, &v22, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
      }
    }

    v13 = *(a3 + 14);
    v14 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v13];
    if (v14 > 5)
    {
      if (v14 <= 8)
      {
        return *google::protobuf::Reflection::GetRaw<google::protobuf::RepeatedField<int>>(this, a2, a3);
      }

      if ((v14 - 9) < 2)
      {
        v15 = a3[6];
        if (v15)
        {
          v21 = google::protobuf::FieldDescriptor::TypeOnceInit;
          v20 = a3;
          if (atomic_load_explicit(v15, memory_order_acquire) != -1)
          {
            v19[0].__r_.__value_.__r.__words[0] = &v21;
            v19[0].__r_.__value_.__l.__size_ = &v20;
            v22 = v19;
            std::__call_once(v15, &v22, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
          }

          LODWORD(v13) = *(a3 + 14);
        }

        if (v13 == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a3))
        {
          v16 = google::protobuf::Reflection::GetRaw<google::protobuf::RepeatedField<int>>(this, a2, a3);
          if (!google::protobuf::internal::MapFieldBase::IsRepeatedFieldValid(v16))
          {
            return (*(*v16 + 80))(v16);
          }

          RepeatedField = google::protobuf::internal::MapFieldBase::GetRepeatedField(v16);
        }

        else
        {
          RepeatedField = google::protobuf::Reflection::GetRaw<google::protobuf::RepeatedField<int>>(this, a2, a3);
        }

        return *(RepeatedField + 8);
      }
    }

    else if (v14 > 2 || v14 == 1 || v14 == 2)
    {
      return *google::protobuf::Reflection::GetRaw<google::protobuf::RepeatedField<int>>(this, a2, a3);
    }

    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/generated_message_reflection.cc", 784);
    v18 = google::protobuf::internal::LogMessage::operator<<(v19, "Can't get here.");
    google::protobuf::internal::LogFinisher::operator=(&v22, v18);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    return 0;
  }

  v9 = (a2 + google::protobuf::internal::ReflectionSchema::GetExtensionSetOffset((this + 1)));
  v10 = *(a3 + 17);

  return google::protobuf::internal::ExtensionSet::ExtensionSize(v9, v10);
}

void sub_1BFBDC0E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void std::vector<google::protobuf::FieldDescriptor const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::vector<std::string>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<google::protobuf::Message const*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

const google::protobuf::Message *siri::dialogengine::ExpandMessage(siri::dialogengine *this, siri::dialogengine::Context *a2, google::protobuf::Message *a3)
{
  if (!this)
  {
    siri::dialogengine::Log::Error("Null Context while expanding message", a2, a3);
    return 0;
  }

  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  v4 = this;
  if (!(*(*a2 + 64))(a2, a2, a3))
  {
    return 0;
  }

  (*(*v3 + 16))(v165, v3);
  v5 = (*(*v3 + 168))(v3);
  v7 = v5;
  if (!v5)
  {
    v11 = v165;
    if (v166 < 0)
    {
      v11 = v165[0];
    }

    siri::dialogengine::Log::Error("Could not get message descriptor for message type '%s'", v6, v11);
    v3 = 0;
    goto LABEL_284;
  }

  v8 = *(v5 + 8);
  if (*(v8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v164, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    v164.__r_.__value_.__r.__words[2] = *(v8 + 2);
    *&v164.__r_.__value_.__l.__data_ = v9;
  }

  (*(*v3 + 168))(v3);
  v13 = v12;
  if (!v12)
  {
    v52 = &v164;
    if ((v164.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v52 = v164.__r_.__value_.__r.__words[0];
    }

    siri::dialogengine::Log::Error("Could not get message reflection for '%s'", 0, v52);
    v3 = 0;
    goto LABEL_282;
  }

  siri::dialogengine::GetMessageCondition(&v163, v3);
  if (siri::dialogengine::ConditionIsTrue(v4, &v163))
  {
    v15 = google::protobuf::Reflection::MutableUnknownFields(v13, v3);
    v17 = v16;
    if (v16)
    {
      siri::dialogengine::GetListInfo(&v161, v4, v3);
      v18 = v161;
      if (v161 != v162)
      {
        do
        {
          std::pair<std::string const,siri::dialogengine::ListInfo>::pair[abi:ne200100](&v143, v18 + 2);
          v19 = v152;
          v20 = v152;
          if ((v152 & 0x80u) != 0)
          {
            v19 = v151;
          }

          if (v19)
          {
            v21 = 1;
          }

          else
          {
            v21 = SDWORD2(v144) <= 19999;
          }

          if (v21)
          {
            google::protobuf::UnknownFieldSet::DeleteByNumber(v17, SDWORD2(v144));
            v20 = v152;
          }

          if ((v20 & 0x80) != 0)
          {
            operator delete(__p);
          }

          if (v149 < 0)
          {
            operator delete(v148);
          }

          if (v147 < 0)
          {
            operator delete(v146);
          }

          if (*(&v145 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v145 + 1));
          }

          if (SBYTE7(v144) < 0)
          {
            operator delete(v143);
          }

          v22 = v18[1];
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = v18[2];
              v37 = *v23 == v18;
              v18 = v23;
            }

            while (!v37);
          }

          v18 = v23;
        }

        while (v23 != v162);
      }

      v134 = v13;
      v160[0] = 0;
      v160[1] = 0;
      v132 = v7;
      v159 = v160;
      siri::dialogengine::GetStoredItems(&v157, v3);
      v24 = v157;
      v133 = v4;
      if (v157 != v158)
      {
        do
        {
          LODWORD(v137.__r_.__value_.__l.__data_) = *(v24 + 8);
          siri::dialogengine::CatBinary::vcat_item::vcat_item(&v137.__r_.__value_.__r.__words[1], (v24 + 5));
          data = v137.__r_.__value_.__l.__data_;
          if ((v138 & 2) != 0)
          {
            if (*(v139 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v143, *v139, *(v139 + 8));
            }

            else
            {
              v25 = *v139;
              *&v144 = *(v139 + 16);
              v143 = v25;
            }

            if ((siri::dialogengine::ConditionIsTrue(v4, &v143) & 1) == 0)
            {
              std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v159, &data);
              if (SBYTE7(v144) < 0)
              {
                v29 = v143;
LABEL_91:
                operator delete(v29);
                goto LABEL_92;
              }

              goto LABEL_92;
            }

            if (SBYTE7(v144) < 0)
            {
              operator delete(v143);
            }
          }

          if (v140 == 2)
          {
            v26 = *(&v139 + 1);
            v27 = *(*(&v139 + 1) + 24);
            if (*(v27 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v155, *v27, *(v27 + 1));
            }

            else
            {
              v28 = *v27;
              v155.__r_.__value_.__r.__words[2] = *(v27 + 2);
              *&v155.__r_.__value_.__l.__data_ = v28;
            }

            v30 = *(v26 + 32);
            if (*(v30 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v154, *v30, *(v30 + 1));
            }

            else
            {
              v31 = *v30;
              v154.__r_.__value_.__r.__words[2] = *(v30 + 2);
              *&v154.__r_.__value_.__l.__data_ = v31;
            }

            v32 = *(v26 + 40);
            if (*(v32 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v153, *v32, *(v32 + 1));
            }

            else
            {
              v33 = *v32;
              v153.__r_.__value_.__r.__words[2] = *(v32 + 2);
              *&v153.__r_.__value_.__l.__data_ = v33;
            }

            std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v159, &data);
            if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) == 9)
              {
                v34 = &v153;
                goto LABEL_67;
              }

              goto LABEL_71;
            }

            if (v153.__r_.__value_.__l.__size_ != 9)
            {
              goto LABEL_71;
            }

            v34 = v153.__r_.__value_.__r.__words[0];
LABEL_67:
            v35 = v34->__r_.__value_.__r.__words[0];
            v36 = v34->__r_.__value_.__s.__data_[8];
            v37 = v35 == 0x736D5F666F656E6FLL && v36 == 103;
            if (v37)
            {
              v144 = 0u;
              v145 = 0u;
              v143 = 0u;
              siri::dialogengine::GetMessageInterface(&v143, v3);
              v4 = v133;
              if (v143)
              {
                v48 = *(v144 + 8);
                if (*(v48 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v135, *v48, *(v48 + 1));
                }

                else
                {
                  v49 = *v48;
                  v135.__r_.__value_.__r.__words[2] = *(v48 + 2);
                  *&v135.__r_.__value_.__l.__data_ = v49;
                }

                siri::dialogengine::StringSplit(&v155, " \t\n\r");
              }

              siri::dialogengine::Log::Error("Could not get message interface", v47);
            }

            else
            {
LABEL_71:
              v38 = v162[0];
              if (!v162[0])
              {
                goto LABEL_84;
              }

              v39 = v162;
              do
              {
                v40 = v39;
                v41 = (v38 + 32);
                v42 = std::less<std::string>::operator()[abi:ne200100](&v161, v38 + 4, &v155.__r_.__value_.__l.__data_);
                if (v42)
                {
                  v43 = 8;
                }

                else
                {
                  v43 = 0;
                }

                if (!v42)
                {
                  v39 = v38;
                }

                v38 = *&v38[v43];
              }

              while (v38);
              if (v39 == v162 || (!v42 ? (v44 = v41) : (v44 = (v40 + 4)), std::less<std::string>::operator()[abi:ne200100](&v161, &v155.__r_.__value_.__l.__data_, v44)))
              {
LABEL_84:
                v4 = v133;
                siri::dialogengine::ExpandField(v133, v3, &v155, &v154);
              }

              else
              {
                v4 = v133;
                siri::dialogengine::TemporaryVariable::TemporaryVariable(&v143, v133, (v39 + 7));
                for (i = 0; ; ++i)
                {
                  v51 = v39[8];
                  if (v51)
                  {
                    v51 = (*(v51 + 80) - *(v51 + 72)) >> 4;
                  }

                  if (i >= v51)
                  {
                    break;
                  }

                  siri::dialogengine::TemporaryVariable::SetIndex(&v143, i);
                  siri::dialogengine::ExpandField(v133, v3, &v155, &v154);
                }

                siri::dialogengine::TemporaryVariable::~TemporaryVariable(&v143);
              }
            }

            if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v153.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v154.__r_.__value_.__l.__data_);
            }

            if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_92;
            }

            v29 = v155.__r_.__value_.__r.__words[0];
            goto LABEL_91;
          }

LABEL_92:
          siri::dialogengine::CatBinary::vcat_item::~vcat_item(&v137.__r_.__value_.__r.__words[1]);
          v45 = v24[1];
          if (v45)
          {
            do
            {
              v46 = v45;
              v45 = *v45;
            }

            while (v45);
          }

          else
          {
            do
            {
              v46 = v24[2];
              v37 = *v46 == v24;
              v24 = v46;
            }

            while (!v37);
          }

          v24 = v46;
        }

        while (v46 != v158);
      }

      v53 = v159;
      if (v159 != v160)
      {
        do
        {
          google::protobuf::UnknownFieldSet::DeleteByNumber(v17, *(v53 + 7));
          v54 = v53[1];
          if (v54)
          {
            do
            {
              v55 = v54;
              v54 = *v54;
            }

            while (v54);
          }

          else
          {
            do
            {
              v55 = v53[2];
              v37 = *v55 == v53;
              v53 = v55;
            }

            while (!v37);
          }

          v53 = v55;
        }

        while (v55 != v160);
      }

      v169 = 0;
      v170 = 0;
      v171 = 0;
      google::protobuf::Reflection::ListFields(v134, v3, &v169);
      v56 = v169;
      __s1 = v170;
      if (v169 != v170)
      {
        do
        {
          v131 = v56;
          v57 = *v56;
          if (*v56 && google::protobuf::FieldDescriptor::message_type(*v56))
          {
            if (*(v57 + 15) == 3)
            {
              v61 = google::protobuf::Reflection::FieldSize(v134, v3, v57, v58, v59);
              if (v61 >= 1)
              {
                v62 = 0;
                while (1)
                {
                  v63 = google::protobuf::Reflection::MutableRepeatedMessage(v134, v3, v57, v62, v60);
                  v64 = v63;
                  if (v63)
                  {
                    if ((*(*v63 + 64))(v63))
                    {
                      break;
                    }
                  }

LABEL_222:
                  if (++v62 >= v61)
                  {
                    goto LABEL_229;
                  }
                }

                v65 = (*(*v64 + 168))(v64);
                if (!v65)
                {
                  siri::dialogengine::Log::Error("Message has null descriptor", v66);
                  v65 = 0;
                }

                v67 = *(v65 + 8);
                if (*(v67 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v168, *v67, *(v67 + 1));
                }

                else
                {
                  v68 = *v67;
                  v168.__r_.__value_.__r.__words[2] = *(v67 + 2);
                  *&v168.__r_.__value_.__l.__data_ = v68;
                }

                siri::dialogengine::GetListInfo(&v135, v4, v64);
                v69 = v135.__r_.__value_.__r.__words[0];
                if (v135.__r_.__value_.__l.__data_ == &v135.__r_.__value_.__r.__words[1])
                {
LABEL_159:
                  LODWORD(v137.__r_.__value_.__l.__data_) = 0;
                  *&v137.__r_.__value_.__r.__words[1] = 0u;
                  v138 = 0u;
                  v139 = 0u;
                  v140 = 0u;
                  v141 = 0u;
                  v142 = 0;
                }

                else
                {
                  while (1)
                  {
                    std::pair<std::string const,siri::dialogengine::ListInfo>::pair[abi:ne200100](&v143, (v69 + 32));
                    v70 = v152;
                    if ((v152 & 0x80u) != 0)
                    {
                      v70 = v151;
                    }

                    if (!v70 && SDWORD2(v144) >= 20000)
                    {
                      break;
                    }

                    if (v152 < 0)
                    {
                      operator delete(__p);
                    }

                    if (v149 < 0)
                    {
                      operator delete(v148);
                    }

                    if (v147 < 0)
                    {
                      operator delete(v146);
                    }

                    if (*(&v145 + 1))
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v145 + 1));
                    }

                    if (SBYTE7(v144) < 0)
                    {
                      operator delete(v143);
                    }

                    v72 = *(v69 + 8);
                    if (v72)
                    {
                      do
                      {
                        v73 = v72;
                        v72 = v72->__r_.__value_.__r.__words[0];
                      }

                      while (v72);
                    }

                    else
                    {
                      do
                      {
                        v73 = *(v69 + 16);
                        v37 = v73->__r_.__value_.__r.__words[0] == v69;
                        v69 = v73;
                      }

                      while (!v37);
                    }

                    v69 = v73;
                    if (v73 == &v135.__r_.__value_.__r.__words[1])
                    {
                      goto LABEL_159;
                    }
                  }

                  siri::dialogengine::ListInfo::ListInfo(&v137, &v144 + 8);
                  if (v152 < 0)
                  {
                    operator delete(__p);
                  }

                  if (v149 < 0)
                  {
                    operator delete(v148);
                  }

                  if (v147 < 0)
                  {
                    operator delete(v146);
                  }

                  if (*(&v145 + 1))
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v145 + 1));
                  }

                  if (SBYTE7(v144) < 0)
                  {
                    operator delete(v143);
                  }
                }

                std::__tree<std::__value_type<std::string,siri::dialogengine::ListInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::dialogengine::ListInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::dialogengine::ListInfo>>>::destroy(v135.__r_.__value_.__l.__size_);
                siri::dialogengine::GetConditionInfo(&v135, v64);
                siri::dialogengine::ClearUnknownField(v64, LODWORD(v137.__r_.__value_.__l.__data_));
                if (SBYTE7(v139) < 0)
                {
                  if (!*(&v138 + 1))
                  {
                    goto LABEL_176;
                  }
                }

                else if (!BYTE7(v139))
                {
                  goto LABEL_176;
                }

                if (!v137.__r_.__value_.__l.__size_ || *(v137.__r_.__value_.__l.__size_ + 80) == *(v137.__r_.__value_.__l.__size_ + 72))
                {
                  v76 = &v168;
                  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v76 = v168.__r_.__value_.__r.__words[0];
                  }

                  siri::dialogengine::Log::Debug("Clearing message '%s' based on empty or missing list parameter", v74, v76);
                  v75 = 1;
                }

                else
                {
LABEL_176:
                  v75 = 0;
                }

                if (siri::dialogengine::ConditionIsTrue(v4, &v135.__r_.__value_.__l.__size_))
                {
                  if (!v75)
                  {
                    siri::dialogengine::TemporaryVariable::TemporaryVariable(&v143, v4, &v137);
                    v79 = 0;
                    for (j = 1; ; ++j)
                    {
                      size = v137.__r_.__value_.__l.__size_;
                      if (v137.__r_.__value_.__l.__size_)
                      {
                        size = (*(v137.__r_.__value_.__l.__size_ + 80) - *(v137.__r_.__value_.__l.__size_ + 72)) >> 4;
                      }

                      if (j >= size)
                      {
                        break;
                      }

                      v85 = google::protobuf::Reflection::AddMessage(v134, v3, v57, 0, v78);
                      if (v85)
                      {
                        v61 = google::protobuf::Reflection::FieldSize(v134, v3, v57, v83, v84);
                        google::protobuf::MutableRepeatedFieldRef<google::protobuf::Message,void>::MutableRepeatedFieldRef(&v167, v3, v57);
                        ++v79;
                        for (k = v61 - 2; k + 1 > v79 + v62; k = v87)
                        {
                          v87 = k - 1;
                          (*(*v167.__r_.__value_.__l.__size_ + 56))(v167.__r_.__value_.__l.__size_, v167.__r_.__value_.__r.__words[0]);
                        }

                        (*(*v85 + 128))(v85, v64);
                        v4 = v133;
                        siri::dialogengine::TemporaryVariable::SetIndex(&v143, j);
                        siri::dialogengine::ExpandMessage(v133, v85, v88);
                      }

                      else
                      {
                        v89 = *(v132 + 8);
                        if (*(v89 + 23) < 0)
                        {
                          v89 = *v89;
                        }

                        siri::dialogengine::Log::Error("Unable to create list instance %zu for '%s'", v82, j, v89);
                      }
                    }

                    siri::dialogengine::TemporaryVariable::SetIndex(&v143, 0);
                    siri::dialogengine::ExpandMessage(v4, v64, v99);
                    siri::dialogengine::ClearUnknownField(v64, LODWORD(v135.__r_.__value_.__l.__data_));
                    v62 += v79;
                    siri::dialogengine::TemporaryVariable::~TemporaryVariable(&v143);
LABEL_210:
                    if (v136 < 0)
                    {
                      operator delete(v135.__r_.__value_.__l.__size_);
                    }

                    if (SHIBYTE(v142) < 0)
                    {
                      operator delete(v141);
                    }

                    if (SHIBYTE(v140) < 0)
                    {
                      operator delete(*(&v139 + 1));
                    }

                    if (SBYTE7(v139) < 0)
                    {
                      operator delete(v138);
                    }

                    if (v137.__r_.__value_.__r.__words[2])
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v137.__r_.__value_.__r.__words[2]);
                    }

                    if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v168.__r_.__value_.__l.__data_);
                    }

                    goto LABEL_222;
                  }
                }

                else
                {
                  v90 = &v168;
                  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v90 = v168.__r_.__value_.__r.__words[0];
                  }

                  p_size = &v135.__r_.__value_.__l.__size_;
                  if (v136 < 0)
                  {
                    p_size = v135.__r_.__value_.__l.__size_;
                  }

                  siri::dialogengine::Log::Debug("Clearing message '%s' based on unmet condition '%s'", v77, v90, p_size);
                }

                (*(*v64 + 56))(v64);
                google::protobuf::MutableRepeatedFieldRef<google::protobuf::Message,void>::MutableRepeatedFieldRef(&v143, v3, v57);
                if (v62 <= --v61)
                {
                  v92 = v61;
                }

                else
                {
                  v92 = v62;
                }

                for (m = v62; v92 != m; m = v94)
                {
                  v94 = m + 1;
                  (*(**(&v143 + 1) + 56))(*(&v143 + 1), v143);
                }

                (*(**(&v143 + 1) + 48))(*(&v143 + 1), v143);
                v97 = google::protobuf::Reflection::FieldSize(v134, v3, v57, v95, v96);
                if (v97 != v61)
                {
                  siri::dialogengine::Log::Error("Bad field count %d after removing null message", v98, v97);
                }

                --v62;
                goto LABEL_210;
              }
            }

            else if (google::protobuf::Reflection::HasField(v134, v3, v57, v58, v59))
            {
              v101 = google::protobuf::Reflection::MutableMessage(v134, v3, v57, 0, v100);
              if (!siri::dialogengine::ExpandMessage(v4, v101, v102))
              {
                v104 = *(v57 + 1);
                if (*(v104 + 23) < 0)
                {
                  v104 = *v104;
                }

                siri::dialogengine::Log::Debug("Removing field '%s'", v103, v104);
                google::protobuf::Reflection::ClearField(v134, v3, v57, v105, v106);
              }
            }
          }

LABEL_229:
          v56 = v131 + 1;
        }

        while (v131 + 1 != __s1);
      }

      v143 = 0uLL;
      *&v144 = 0;
      v107 = (*(*v3 + 168))(v3);
      if (v107)
      {
        (*(*v3 + 168))(v3);
        v109 = v108;
        if (v108)
        {
          RequiredFields = siri::dialogengine::vcat::GetRequiredFields(*(v107 + 8));
          v111 = RequiredFields + 1;
          v112 = *RequiredFields;
          if (*RequiredFields != RequiredFields + 1)
          {
            do
            {
              if (*(v112 + 55) < 0)
              {
                std::string::__init_copy_ctor_external(&v137, v112[4], v112[5]);
              }

              else
              {
                v137 = *(v112 + 4);
              }

              FieldByName = google::protobuf::Descriptor::FindFieldByName(v107, &v137);
              v117 = FieldByName;
              if (FieldByName)
              {
                if (*(FieldByName + 60) == 3)
                {
                  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v118 = &v137;
                  }

                  else
                  {
                    v118 = v137.__r_.__value_.__r.__words[0];
                  }

                  v119 = *(v107 + 8);
                  if (*(v119 + 23) < 0)
                  {
                    v119 = *v119;
                  }

                  siri::dialogengine::Log::Debug("Setting missing required repeated field '%s' of message '%s' is not implemented", v114, v118, v119);
                }

                else if ((google::protobuf::Reflection::HasField(v109, v3, FieldByName, v115, v116) & 1) == 0)
                {
                  v121 = *(v117 + 48);
                  if (v121)
                  {
                    v167.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
                    v155.__r_.__value_.__r.__words[0] = v117;
                    if (atomic_load_explicit(v121, memory_order_acquire) != -1)
                    {
                      v135.__r_.__value_.__r.__words[0] = &v167;
                      v135.__r_.__value_.__l.__size_ = &v155;
                      v168.__r_.__value_.__r.__words[0] = &v135;
                      std::__call_once(v121, &v168, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
                    }
                  }

                  v122 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v117 + 56)];
                  if (v122 > 0xA)
                  {
LABEL_258:
                    v125 = *(v117 + 8);
                    if (*(v125 + 23) < 0)
                    {
                      v125 = *v125;
                    }

                    v126 = *(v117 + 48);
                    if (v126)
                    {
                      v167.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
                      v155.__r_.__value_.__r.__words[0] = v117;
                      if (atomic_load_explicit(v126, memory_order_acquire) != -1)
                      {
                        v135.__r_.__value_.__r.__words[0] = &v167;
                        v135.__r_.__value_.__l.__size_ = &v155;
                        v168.__r_.__value_.__r.__words[0] = &v135;
                        std::__call_once(v126, &v168, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
                      }

                      v122 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v117 + 56)];
                    }

                    siri::dialogengine::Log::Error("Field '%s' is of unhandled cpp type '%s'", v120, v125, google::protobuf::FieldDescriptor::kCppTypeToName[v122]);
                    goto LABEL_265;
                  }

                  if (((1 << v122) & 0x2FE) != 0)
                  {
                    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v123 = &v137;
                    }

                    else
                    {
                      v123 = v137.__r_.__value_.__r.__words[0];
                    }

                    v124 = *(v107 + 8);
                    if (*(v124 + 23) < 0)
                    {
                      v124 = *v124;
                    }

                    siri::dialogengine::Log::Info("Setting missing required field '%s' of message '%s' to string ' '\n", v120, v123, v124);
                    std::string::basic_string[abi:ne200100]<0>(&v135, " ");
                    siri::dialogengine::SetField(v133, v3, v109, v117, &v135);
                    if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v135.__r_.__value_.__l.__data_);
                    }
                  }

                  else if (((1 << v122) & 0x500) == 0)
                  {
                    goto LABEL_258;
                  }
                }
              }

LABEL_265:
              if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v137.__r_.__value_.__l.__data_);
              }

              v127 = v112[1];
              if (v127)
              {
                do
                {
                  v128 = v127;
                  v127 = *v127;
                }

                while (v127);
              }

              else
              {
                do
                {
                  v128 = v112[2];
                  v37 = *v128 == v112;
                  v112 = v128;
                }

                while (!v37);
              }

              v112 = v128;
            }

            while (v128 != v111);
          }
        }
      }

      v137.__r_.__value_.__r.__words[0] = &v143;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v137);
      if (v169)
      {
        v170 = v169;
        operator delete(v169);
      }

      std::__tree<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::__map_value_compare<int,std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::less<int>,true>,std::allocator<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>>>::destroy(v158[0]);
      std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>>>::destroy(&v159, v160[0]);
      std::__tree<std::__value_type<std::string,siri::dialogengine::ListInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::dialogengine::ListInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::dialogengine::ListInfo>>>::destroy(v162[0]);
      goto LABEL_280;
    }

    v129 = &v164;
    if ((v164.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v129 = v164.__r_.__value_.__r.__words[0];
    }

    siri::dialogengine::Log::Error("Could not get unknown field set from message '%s", v14, v15, v129);
  }

  else
  {
    (*(*v3 + 56))(v3);
  }

  v3 = 0;
LABEL_280:
  if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v163.__r_.__value_.__l.__data_);
  }

LABEL_282:
  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v164.__r_.__value_.__l.__data_);
  }

LABEL_284:
  if (v166 < 0)
  {
    operator delete(v165[0]);
  }

  return v3;
}

void sub_1BFBDD614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, void *a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (*(v76 - 153) < 0)
  {
    operator delete(*(v76 - 176));
  }

  if (*(v76 - 121) < 0)
  {
    operator delete(*(v76 - 144));
  }

  *(v76 - 144) = v76 - 112;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v76 - 144));
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (a70 < 0)
  {
    operator delete(a65);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  siri::dialogengine::CatBinary::vcat_item::~vcat_item(&a29);
  std::__tree<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::__map_value_compare<int,std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::less<int>,true>,std::allocator<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>>>::destroy(a74);
  std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>>>::destroy(&a75, a76);
  std::__tree<std::__value_type<std::string,siri::dialogengine::ListInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::dialogengine::ListInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::dialogengine::ListInfo>>>::destroy(STACK[0x208]);
  if (*(v76 - 225) < 0)
  {
    operator delete(*(v76 - 248));
  }

  if (*(v76 - 201) < 0)
  {
    operator delete(*(v76 - 224));
  }

  if (*(v76 - 177) < 0)
  {
    operator delete(*(v76 - 200));
  }

  _Unwind_Resume(a1);
}

uint64_t SnippetUI::VisualElement::clear_element(uint64_t this)
{
  v1 = this;
  v2 = *(this + 28);
  if (v2 > 2)
  {
    if (v2 != 3 && v2 != 4)
    {
      goto LABEL_9;
    }
  }

  else if (v2 != 1 && v2 != 2)
  {
    goto LABEL_9;
  }

  this = *(this + 16);
  if (this)
  {
    this = (*(*this + 8))(this);
  }

LABEL_9:
  *(v1 + 28) = 0;
  return this;
}

uint64_t google::protobuf::FieldDescriptor::message_type(google::protobuf::FieldDescriptor *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v4 = this;
    if (atomic_load_explicit(v2, memory_order_acquire) != -1)
    {
      v6[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v6[1] = &v4;
      v5 = v6;
      std::__call_once(v2, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  return *(this + 13);
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,google::protobuf::anonymous namespace::FieldNumberSorter &,google::protobuf::FieldDescriptor const**,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v76 = *(a2 - 1);
        v77 = *v8;
        if (*(v76 + 68) < *(*v8 + 68))
        {
          *v8 = v76;
          *(a2 - 1) = v77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v84 = v8 + 1;
      v85 = v8[1];
      v86 = v8 + 2;
      v87 = v8[2];
      v88 = *v8;
      v89 = *(v85 + 17);
      v90 = *(*v8 + 68);
      v91 = *(v87 + 68);
      if (v89 >= v90)
      {
        if (v91 >= v89)
        {
          goto LABEL_177;
        }

        *v84 = v87;
        *v86 = v85;
        v92 = v8;
        v93 = (v8 + 1);
        result = v85;
        if (v91 < v90)
        {
          goto LABEL_169;
        }
      }

      else
      {
        v92 = v8;
        v93 = (v8 + 2);
        result = *v8;
        if (v91 >= v89)
        {
          *v8 = v85;
          v8[1] = v88;
          v92 = v8 + 1;
          v93 = (v8 + 2);
          result = v88;
          if (v91 >= v90)
          {
LABEL_177:
            v85 = v87;
            goto LABEL_178;
          }
        }

LABEL_169:
        *v92 = v87;
        *v93 = v88;
        v85 = result;
      }

LABEL_178:
      v140 = *(a2 - 1);
      if (*(v140 + 68) < *(v85 + 17))
      {
        *v86 = v140;
        *(a2 - 1) = v85;
        v141 = *v86;
        v142 = *v84;
        v143 = *(v141 + 68);
        if (v143 < *(v142 + 68))
        {
          v8[1] = v141;
          v8[2] = v142;
          v144 = *v8;
          if (v143 < *(*v8 + 68))
          {
            *v8 = v141;
            v8[1] = v144;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 1;
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 0;
          v98 = v8;
          do
          {
            v100 = *v98;
            v99 = v98[1];
            v98 = v94;
            v101 = *(v99 + 68);
            if (v101 < *(v100 + 68))
            {
              v102 = v97;
              while (1)
              {
                *(v8 + v102 + 8) = v100;
                if (!v102)
                {
                  break;
                }

                v100 = *(v8 + v102 - 8);
                v102 -= 8;
                if (v101 >= *(v100 + 68))
                {
                  v103 = (v8 + v102 + 8);
                  goto LABEL_130;
                }
              }

              v103 = v8;
LABEL_130:
              *v103 = v99;
            }

            v94 = v98 + 1;
            v97 += 8;
          }

          while (v98 + 1 != a2);
        }
      }

      else if (!v96)
      {
        do
        {
          v137 = *v7;
          v136 = v7[1];
          v7 = v94;
          v138 = *(v136 + 68);
          if (v138 < *(v137 + 68))
          {
            v139 = v7;
            do
            {
              *v139 = v137;
              v137 = *(v139 - 2);
              --v139;
            }

            while (v138 < *(v137 + 68));
            *v139 = v136;
          }

          v94 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v104 = (v9 - 2) >> 1;
        v105 = v104;
        do
        {
          v106 = v105;
          if (v104 >= v105)
          {
            v107 = (2 * v105) | 1;
            v108 = &v8[v107];
            v109 = *v108;
            if (2 * v106 + 2 < v9 && *(v109 + 68) < *(v108[1] + 68))
            {
              v109 = v108[1];
              ++v108;
              v107 = 2 * v106 + 2;
            }

            result = &v8[v106];
            v110 = *result;
            v111 = *(*result + 68);
            if (*(v109 + 68) >= v111)
            {
              do
              {
                v112 = v108;
                *result = v109;
                if (v104 < v107)
                {
                  break;
                }

                v113 = (2 * v107) | 1;
                v108 = &v8[v113];
                v114 = 2 * v107 + 2;
                v109 = *v108;
                if (v114 < v9 && *(v109 + 68) < *(v108[1] + 68))
                {
                  v109 = v108[1];
                  ++v108;
                  v113 = v114;
                }

                result = v112;
                v107 = v113;
              }

              while (*(v109 + 68) >= v111);
              *v112 = v110;
            }
          }

          v105 = v106 - 1;
        }

        while (v106);
        do
        {
          v115 = 0;
          v116 = *v8;
          v117 = v8;
          do
          {
            v118 = &v117[v115];
            v119 = v118 + 1;
            v120 = v118[1];
            v121 = (2 * v115) | 1;
            v115 = 2 * v115 + 2;
            if (v115 >= v9)
            {
              v115 = v121;
            }

            else
            {
              v124 = v118[2];
              v122 = v118 + 2;
              v123 = v124;
              result = *(v120 + 68);
              if (result >= *(v124 + 68))
              {
                v115 = v121;
              }

              else
              {
                v120 = v123;
                v119 = v122;
              }
            }

            *v117 = v120;
            v117 = v119;
          }

          while (v115 <= ((v9 - 2) >> 1));
          if (v119 == --a2)
          {
            *v119 = v116;
          }

          else
          {
            *v119 = *a2;
            *a2 = v116;
            v125 = (v119 - v8 + 8) >> 3;
            v126 = v125 < 2;
            v127 = v125 - 2;
            if (!v126)
            {
              v128 = v127 >> 1;
              v129 = &v8[v128];
              v130 = *v129;
              v131 = *v119;
              v132 = *(*v119 + 68);
              if (*(*v129 + 68) < v132)
              {
                do
                {
                  v133 = v129;
                  *v119 = v130;
                  if (!v128)
                  {
                    break;
                  }

                  v128 = (v128 - 1) >> 1;
                  v129 = &v8[v128];
                  v130 = *v129;
                  v119 = v133;
                }

                while (*(*v129 + 68) < v132);
                *v133 = v131;
              }
            }
          }

          v126 = v9-- <= 2;
        }

        while (!v126);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 68);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 68);
      v17 = *(*v8 + 68);
      if (v16 >= v17)
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (*(*v10 + 68) < *(*v8 + 68))
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*(v24 + 68) < v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *(v26 + 68);
      v29 = *(v27 + 68);
      v30 = *(a2 - 2);
      v31 = *(v30 + 68);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (*(*v25 + 68) < *(v32 + 68))
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*(v34 + 68) < v29)
        {
          *v25 = v34;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v37 = v10[1];
      v35 = v10 + 1;
      v36 = v37;
      v38 = v8[2];
      v39 = *(v37 + 68);
      v40 = *(v38 + 68);
      v41 = *(a2 - 3);
      v42 = *(v41 + 68);
      if (v39 >= v40)
      {
        if (v42 < v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (*(*v35 + 68) < *(v43 + 68))
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 < v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*(v44 + 68) < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v45 = *v11;
      v46 = *v25;
      v47 = *(*v11 + 68);
      v48 = *(*v25 + 68);
      v49 = *v35;
      v50 = *(*v35 + 68);
      if (v47 >= v48)
      {
        if (v50 >= v47)
        {
          goto LABEL_56;
        }

        *v11 = v49;
        *v35 = v45;
        v35 = v11;
        v45 = v46;
        if (v50 >= v48)
        {
          v45 = v49;
          goto LABEL_56;
        }
      }

      else if (v50 >= v47)
      {
        *v25 = v45;
        *v11 = v46;
        v25 = v11;
        v45 = v49;
        if (v50 >= v48)
        {
          v45 = v46;
LABEL_56:
          v51 = *v8;
          *v8 = v45;
          *v11 = v51;
          goto LABEL_57;
        }
      }

      *v25 = v49;
      *v35 = v46;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = *(*v8 + 68);
    v21 = *(*v11 + 68);
    if (v20 >= v21)
    {
      if (v13 < v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if (*(*v8 + 68) < *(*v11 + 68))
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 < v20)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v19;
      goto LABEL_57;
    }

    *v11 = v18;
    *v8 = v19;
    v33 = *(a2 - 1);
    if (*(v33 + 68) < v21)
    {
      *v8 = v33;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v52 = *v8;
    if (a4)
    {
      v53 = *(v52 + 68);
LABEL_60:
      v54 = 0;
      do
      {
        v55 = v8[++v54];
      }

      while (*(v55 + 68) < v53);
      v56 = &v8[v54];
      v57 = a2;
      if (v54 == 1)
      {
        v57 = a2;
        do
        {
          if (v56 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 68) >= v53);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 68) >= v53);
      }

      if (v56 >= v57)
      {
        v65 = v56 - 1;
      }

      else
      {
        v60 = *v57;
        v61 = &v8[v54];
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*(v63 + 68) < v53);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 68) >= v53);
        }

        while (v61 < v62);
        v65 = v61 - 1;
      }

      if (v65 != v8)
      {
        *v8 = *v65;
      }

      *v65 = v52;
      if (v56 < v57)
      {
        goto LABEL_81;
      }

      v8 = v65 + 1;
      if (result)
      {
        a2 = v65;
        if (!v66)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v66)
      {
LABEL_81:
        a4 = 0;
        v8 = v65 + 1;
      }
    }

    else
    {
      v53 = *(v52 + 68);
      if (*(*(v8 - 1) + 68) < v53)
      {
        goto LABEL_60;
      }

      if (v53 >= *(*(a2 - 1) + 68))
      {
        v68 = v8 + 1;
        do
        {
          v8 = v68;
          if (v68 >= a2)
          {
            break;
          }

          ++v68;
        }

        while (v53 >= *(*v8 + 68));
      }

      else
      {
        do
        {
          v67 = v8[1];
          ++v8;
        }

        while (v53 >= *(v67 + 68));
      }

      v69 = a2;
      if (v8 < a2)
      {
        v69 = a2;
        do
        {
          v70 = *--v69;
        }

        while (v53 < *(v70 + 68));
      }

      if (v8 < v69)
      {
        v71 = *v8;
        v72 = *v69;
        do
        {
          *v8 = v72;
          *v69 = v71;
          do
          {
            v73 = v8[1];
            ++v8;
            v71 = v73;
          }

          while (v53 >= *(v73 + 68));
          do
          {
            v74 = *--v69;
            v72 = v74;
          }

          while (v53 < *(v74 + 68));
        }

        while (v8 < v69);
      }

      v75 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v75;
      }

      a4 = 0;
      *v75 = v52;
    }
  }

  v78 = *v8;
  v79 = v8[1];
  v80 = *(v79 + 68);
  v81 = *(*v8 + 68);
  v82 = *(a2 - 1);
  v83 = *(v82 + 68);
  if (v80 >= v81)
  {
    if (v83 < v80)
    {
      v8[1] = v82;
      *(a2 - 1) = v79;
      v135 = *v8;
      v134 = v8[1];
      if (*(v134 + 68) < *(*v8 + 68))
      {
        *v8 = v134;
        v8[1] = v135;
      }
    }
  }

  else
  {
    if (v83 >= v80)
    {
      *v8 = v79;
      v8[1] = v78;
      v145 = *(a2 - 1);
      if (*(v145 + 68) >= v81)
      {
        return result;
      }

      v8[1] = v145;
    }

    else
    {
      *v8 = v82;
    }

    *(a2 - 1) = v78;
  }

  return result;
}

uint64_t google::protobuf::Reflection::MutableRepeatedMessage(const std::string::value_type ***this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4, const char *a5)
{
  v9 = *this;
  if (*(a3 + 10) != v9)
  {
  }

  if (*(a3 + 15) != 3)
  {
  }

  v10 = *(a3 + 6);
  if (v10)
  {
    v16 = a3;
    v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != -1)
    {
      v19 = &v17;
      v20 = &v16;
      v18 = &v19;
      std::__call_once(v10, &v18, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 10)
  {
  }

  if (*(a3 + 66) == 1)
  {
    ExtensionSetOffset = google::protobuf::internal::ReflectionSchema::GetExtensionSetOffset((this + 1));
    return google::protobuf::internal::ExtensionSet::MutableRepeatedMessage((a2 + ExtensionSetOffset), *(a3 + 17), a4);
  }

  else
  {
    v13 = *(a3 + 6);
    if (v13)
    {
      v16 = a3;
      v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v13, memory_order_acquire) != -1)
      {
        v19 = &v17;
        v20 = &v16;
        v18 = &v19;
        std::__call_once(v13, &v18, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
      }
    }

    if (*(a3 + 14) == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a3))
    {
      FieldOffset = google::protobuf::internal::ReflectionSchema::GetFieldOffset((this + 1), a3);
      v15 = google::protobuf::internal::MapFieldBase::MutableRepeatedField((a2 + FieldOffset));
    }

    else
    {
      v15 = a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((this + 1), a3);
    }

    return google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>>(v15, a4);
  }
}