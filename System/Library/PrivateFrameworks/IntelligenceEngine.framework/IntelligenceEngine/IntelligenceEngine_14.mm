void sub_254D4EC38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (*(v53 - 105) < 0)
  {
    operator delete(*(v53 - 128));
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Validator::Validate(uint64_t *a1)
{
  v2 = 0uLL;
  v5[0] = 0;
  v5[1] = 0;
  v3 = 0;
  v4 = v5;
  if (siri::intelligence::HasFormatExtension(a1, 2))
  {
    siri::intelligence::YamlIO::Validate(&v2, a1);
  }

  siri::intelligence::GetFormatForFilename(a1);
  siri::intelligence::Loader::LoadFile();
}

void sub_254D4F938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, char *a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  siri::intelligence::ValidationResults::~ValidationResults(&a22);
  _Unwind_Resume(a1);
}

uint64_t std::vector<siri::intelligence::ValidationResult>::__init_with_size[abi:ne200100]<siri::intelligence::ValidationResult*,siri::intelligence::ValidationResult*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<siri::intelligence::ValidationResult>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254D4F9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<siri::intelligence::ValidationResult>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<siri::intelligence::ValidationResult>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::ValidationResult>>(a1, a2);
  }

  std::vector<siri::intelligence::ValidationResult>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::ValidationResult>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<siri::intelligence::ValidationResult>,siri::intelligence::ValidationResult*,siri::intelligence::ValidationResult*,siri::intelligence::ValidationResult*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 2;
    do
    {
      v7 = v6 - 2;
      *v4 = *(v6 - 8);
      if (*(v6 - 1) < 0)
      {
        std::string::__init_copy_ctor_external((v4 + 8), *(v6 - 3), *(v6 - 2));
      }

      else
      {
        v8 = *(v6 - 24);
        *(v4 + 24) = *(v6 - 1);
        *(v4 + 8) = v8;
      }

      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((v4 + 32), *v6, *(v6 + 1));
      }

      else
      {
        v9 = *v6;
        *(v4 + 48) = *(v6 + 2);
        *(v4 + 32) = v9;
      }

      *(v4 + 56) = *(v6 + 6);
      v4 = v14 + 64;
      v14 += 64;
      v6 += 4;
    }

    while (v7 + 4 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::ValidationResult>,siri::intelligence::ValidationResult*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::ValidationResult>,siri::intelligence::ValidationResult*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::ValidationResult>,siri::intelligence::ValidationResult*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::ValidationResult>,siri::intelligence::ValidationResult*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 64;
      std::allocator<siri::intelligence::ValidationResult>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void siri::intelligence::CollectVariableReferences(siri::intelligence *this, const protobuf::Intelligence_KeyValueParameter *a2, _BOOL8 a3, siri::intelligence::ValidationData *a4)
{
  if ((*(this + 16) & 8) != 0)
  {
    siri::intelligence::GetVariableNames(*(this + 18), &v26);
    v7 = v26;
    v8 = v27;
    while (v7 != v8)
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3 + 288, v7);
      v7 += 3;
    }

    v28 = &v26;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
  }

  if (a2 && (*(this + 16) & 1) != 0)
  {
    siri::intelligence::GetVariableNames(*(this + 15), &v26);
    v9 = v26;
    v10 = v27;
    while (v9 != v10)
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3 + 288, v9);
      v9 += 3;
    }

    v28 = &v26;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
  }

  v11 = *(this + 8);
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(this + 14);
  if (v13)
  {
    v14 = 8 * v13;
    do
    {
      v15 = *v12++;
      siri::intelligence::CollectVariableReferences(v15, a2, a3, a4);
      v14 -= 8;
    }

    while (v14);
  }

  v16 = *(this + 11);
  if (v16)
  {
    v17 = (v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(this + 20);
  if (v18)
  {
    v19 = 8 * v18;
    do
    {
      v20 = *v17++;
      siri::intelligence::CollectVariableReferences(v20, a2, a3, a4);
      v19 -= 8;
    }

    while (v19);
  }

  v21 = *(this + 14);
  if (v21)
  {
    v22 = (v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  v23 = *(this + 26);
  if (v23)
  {
    v24 = 8 * v23;
    do
    {
      v25 = *v22++;
      siri::intelligence::CollectVariableReferences(v25, a2, a3, a4);
      v24 -= 8;
    }

    while (v24);
  }
}

void sub_254D4FDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void siri::intelligence::CollectVariableReferencesInCondition(siri::intelligence *this, const protobuf::Intelligence_Condition_ConditionEntry *a2, siri::intelligence::ValidationData *a3, siri::intelligence::ValidationData *a4)
{
  v6 = *(this + 4);
  if ((v6 & 0x10) != 0)
  {
    v7 = *(this + 13);
    if (!v7)
    {
      google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21242);
      v8 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: !value || left_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v26, &v8->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
      v7 = *(this + 13);
    }

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &protobuf::_Intelligence_KeyValueParameter_default_instance_;
    }

    siri::intelligence::CollectVariableReferences(v9, 0, a2, a4);
    v6 = *(this + 4);
  }

  if ((v6 & 0x20) != 0)
  {
    v10 = *(this + 14);
    if (!v10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21373);
      v11 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: !value || right_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v26, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
      v10 = *(this + 14);
    }

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &protobuf::_Intelligence_KeyValueParameter_default_instance_;
    }

    siri::intelligence::CollectVariableReferences(v12, 0, a2, a4);
  }

  v13 = *(this + 5);
  if (v13)
  {
    v14 = (v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(this + 8);
  if (v15)
  {
    v16 = 8 * v15;
    do
    {
      v17 = *v14++;
      siri::intelligence::CollectVariableReferencesInCondition(v17, a2, a3);
      v16 -= 8;
    }

    while (v16);
  }

  v18 = *(this + 8);
  if (v18)
  {
    v19 = (v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(this + 14);
  if (v20)
  {
    v21 = 8 * v20;
    do
    {
      v22 = *v19++;
      siri::intelligence::CollectVariableReferencesInCondition(v22, a2, a3);
      v21 -= 8;
    }

    while (v21);
  }

  if ((*(this + 4) & 8) != 0)
  {
    v23 = *(this + 12);
    if (!v23)
    {
      google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21511);
      v24 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: !value || not_child_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v26, &v24->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
      v23 = *(this + 12);
    }

    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = &protobuf::_Intelligence_Condition_ConditionEntry_default_instance_;
    }

    siri::intelligence::CollectVariableReferencesInCondition(v25, a2, a3);
  }
}

void sub_254D4FFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void siri::intelligence::ValidateVariableReferencesInText(const void **a1, uint64_t a2, uint64_t a3, siri::intelligence::ValidationResults *a4, int a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  while (siri::intelligence::Entity::FindNext(&v10))
  {
    siri::intelligence::Entity::GetName(&v10, &__p);
    siri::intelligence::Memory::ValidateVariableReference((a3 + 312), &__p, a1, a4, a5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_254D500A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::ValidateKeyValueParameter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(a2 + 120);
    v10 = *(a2 + 8);
    if (v10)
    {
      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      google::protobuf::internal::InitProtobufDefaults(a1);
      v11 = &google::protobuf::internal::fixed_address_empty_string;
    }

    std::string::basic_string[abi:ne200100]<0>(&v38, "key");
    siri::intelligence::GetLineNumFromUnknownField(v11, &v38, -1);
  }

  if ((v8 & 8) != 0)
  {
    v12 = *(a2 + 144);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      google::protobuf::internal::InitProtobufDefaults(a1);
      v14 = &google::protobuf::internal::fixed_address_empty_string;
    }

    std::string::basic_string[abi:ne200100]<0>(&v38, "var");
    siri::intelligence::GetLineNumFromUnknownField(v14, &v38, -1);
  }

  if ((v8 & 0x10) != 0)
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
    memset(&v37, 0, sizeof(v37));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(&v37, a2 + 96);
    if (LODWORD(v37.__r_.__value_.__r.__words[1]))
    {
      if (v37.__r_.__value_.__r.__words[2])
      {
        v15 = (v37.__r_.__value_.__r.__words[2] + 8);
      }

      else
      {
        v15 = 0;
      }

      do
      {
        std::vector<protobuf::Intelligence_KeyValueParameter>::push_back[abi:ne200100](&v38, *v15++);
        if (v37.__r_.__value_.__r.__words[2])
        {
          v16 = v37.__r_.__value_.__r.__words[2] + 8;
        }

        else
        {
          v16 = 0;
        }
      }

      while (v15 != (v16 + 8 * SLODWORD(v37.__r_.__value_.__r.__words[1])));
    }

    google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(&v37);
    std::allocate_shared[abi:ne200100]<siri::intelligence::VariableDictionary,std::allocator<siri::intelligence::VariableDictionary>,char const(&)[1],std::vector<protobuf::Intelligence_KeyValueParameter> &,0>();
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  if ((v8 & 2) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v37, "valueString");
    std::vector<std::string>::push_back[abi:ne200100](&v38, &v37);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    v8 = *(a2 + 16);
  }

  if ((v8 & 0x80) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v37, "valueNumber");
    std::vector<std::string>::push_back[abi:ne200100](&v38, &v37);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    v8 = *(a2 + 16);
  }

  if ((v8 & 0x100) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v37, "valueBoolean");
    std::vector<std::string>::push_back[abi:ne200100](&v38, &v37);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }

  if (*(a2 + 56) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v37, "valueArray");
    std::vector<std::string>::push_back[abi:ne200100](&v38, &v37);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }

  if (*(a2 + 80) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v37, "valueDictionary");
    std::vector<std::string>::push_back[abi:ne200100](&v38, &v37);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }

  v17 = *(a2 + 16);
  if ((v17 & 0x10) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v37, "function");
    std::vector<std::string>::push_back[abi:ne200100](&v38, &v37);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    v17 = *(a2 + 16);
  }

  if ((v17 & 8) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v37, "var");
    std::vector<std::string>::push_back[abi:ne200100](&v38, &v37);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v39 - v38) >> 3) >= 2)
  {
    if (*(a1 + 23) >= 0)
    {
      v18 = *(a1 + 23);
    }

    else
    {
      v18 = *(a1 + 8);
    }

    v19 = &v36;
    std::string::basic_string[abi:ne200100](&v36, v18 + 42);
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = v36.__r_.__value_.__r.__words[0];
    }

    if (v18)
    {
      if (*(a1 + 23) >= 0)
      {
        v20 = a1;
      }

      else
      {
        v20 = *a1;
      }

      memmove(v19, v20, v18);
    }

    strcpy(v19 + v18, "defines a parameter with multiple values: ");
    std::string::basic_string[abi:ne200100]<0>(v33, ", ");
    siri::intelligence::StringJoin(&v38, v33, v34);
    if ((v35 & 0x80u) == 0)
    {
      v21 = v34;
    }

    else
    {
      v21 = v34[0];
    }

    if ((v35 & 0x80u) == 0)
    {
      v22 = v35;
    }

    else
    {
      v22 = v34[1];
    }

    v23 = std::string::append(&v36, v21, v22);
    v37 = *v23;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v24 = *(a2 + 8);
    if (v24)
    {
      v25 = (v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      google::protobuf::internal::InitProtobufDefaults(v23);
      v25 = &google::protobuf::internal::fixed_address_empty_string;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "");
    siri::intelligence::GetLineNumFromUnknownField(v25, __p, -1);
  }

  if (*(a2 + 56) >= 1)
  {
    v26 = 0;
    do
    {
      v27 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a2 + 48, v26);
      siri::intelligence::ValidateKeyValueParameter(a1, v27, a3, a4);
      ++v26;
    }

    while (v26 < *(a2 + 56));
  }

  if (*(a2 + 80) >= 1)
  {
    v28 = 0;
    do
    {
      v29 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a2 + 72, v28);
      siri::intelligence::ValidateKeyValueParameter(a1, v29, a3, a4);
      ++v28;
    }

    while (v28 < *(a2 + 80));
  }

  if (*(a2 + 104) >= 1)
  {
    v30 = 0;
    do
    {
      v31 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a2 + 96, v30);
      siri::intelligence::ValidateKeyValueParameter(a1, v31, a3, a4);
      ++v30;
    }

    while (v30 < *(a2 + 104));
  }

  v37.__r_.__value_.__r.__words[0] = &v38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v37);
}

void sub_254D50724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34)
{
  if (*(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  *(v34 - 96) = v34 - 72;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v34 - 96));
  _Unwind_Resume(a1);
}

void siri::intelligence::Memory::~Memory(char **this)
{
  std::__tree<std::string>::destroy((this + 6), this[7]);
  std::__tree<std::string>::destroy((this + 2), this[3]);
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void siri::intelligence::ValidateConditionEntry(const void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  siri::intelligence::ConditionEntry::Validate(a1, a2);
  if (*(a2 + 32) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition_ConditionEntry>::TypeHandler>(a2 + 24, v8);
      siri::intelligence::ValidateConditionEntry(a1, v9, a3, a4);
      ++v8;
    }

    while (v8 < *(a2 + 32));
  }

  if (*(a2 + 56) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition_ConditionEntry>::TypeHandler>(a2 + 48, v10);
      siri::intelligence::ValidateConditionEntry(a1, v11, a3, a4);
      ++v10;
    }

    while (v10 < *(a2 + 56));
  }

  v12 = *(a2 + 16);
  if ((v12 & 8) != 0)
  {
    v13 = *(a2 + 96);
    if (!v13)
    {
      google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21511);
      v14 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: !value || not_child_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v22, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
      v13 = *(a2 + 96);
    }

    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &protobuf::_Intelligence_Condition_ConditionEntry_default_instance_;
    }

    siri::intelligence::ValidateConditionEntry(a1, v15, a3, a4);
    v12 = *(a2 + 16);
  }

  if ((v12 & 0x10) != 0)
  {
    v16 = *(a2 + 104);
    if (!v16)
    {
      google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21242);
      v17 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: !value || left_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v22, &v17->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
      v16 = *(a2 + 104);
    }

    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = &protobuf::_Intelligence_KeyValueParameter_default_instance_;
    }

    siri::intelligence::ValidateKeyValueParameter(a1, v18, a3, a4);
    v12 = *(a2 + 16);
  }

  if ((v12 & 0x20) != 0)
  {
    v19 = *(a2 + 112);
    if (!v19)
    {
      google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21373);
      v20 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: !value || right_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v22, &v20->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
      v19 = *(a2 + 112);
    }

    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = &protobuf::_Intelligence_KeyValueParameter_default_instance_;
    }

    siri::intelligence::ValidateKeyValueParameter(a1, v21, a3, a4);
  }
}

void sub_254D50B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void siri::intelligence::ValidationData::~ValidationData(siri::intelligence::ValidationData *this)
{
  siri::intelligence::Memory::~Memory(this + 39);
  std::__tree<std::string>::destroy(this + 288, *(this + 37));
  std::__tree<std::string>::destroy(this + 264, *(this + 34));
  std::__tree<std::string>::destroy(this + 240, *(this + 31));
  std::__tree<std::string>::destroy(this + 216, *(this + 28));
  std::__tree<std::string>::destroy(this + 192, *(this + 25));
  std::__tree<std::string>::destroy(this + 168, *(this + 22));
  std::__tree<std::string>::destroy(this + 144, *(this + 19));
  std::__tree<std::string>::destroy(this + 120, *(this + 16));
  std::__tree<std::string>::destroy(this + 96, *(this + 13));
  std::__tree<std::string>::destroy(this + 72, *(this + 10));
  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void InitDefaultsscc_info_FlowTest_flowtest_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.cc", a4);
  protobuf::FlowTest::FlowTest(&protobuf::_FlowTest_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_FlowTest_default_instance_, v4);
}

void InitDefaultsscc_info_FlowTest_AssertCondition_flowtest_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.cc", a4);
  protobuf::FlowTest_AssertCondition::FlowTest_AssertCondition(&protobuf::_FlowTest_AssertCondition_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_FlowTest_AssertCondition_default_instance_, v4);
}

void InitDefaultsscc_info_FlowTest_AssertResponse_flowtest_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.cc", a4);
  protobuf::FlowTest_AssertResponse::FlowTest_AssertResponse(&protobuf::_FlowTest_AssertResponse_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_FlowTest_AssertResponse_default_instance_, v4);
}

void InitDefaultsscc_info_FlowTest_KeyValueParameter_flowtest_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.cc", a4);
  protobuf::FlowTest_KeyValueParameter::FlowTest_KeyValueParameter(&protobuf::_FlowTest_KeyValueParameter_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_FlowTest_KeyValueParameter_default_instance_, v4);
}

void InitDefaultsscc_info_FlowTest_SendIntent_flowtest_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.cc", a4);
  protobuf::FlowTest_SendIntent::FlowTest_SendIntent(&protobuf::_FlowTest_SendIntent_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_FlowTest_SendIntent_default_instance_, v4);
}

void InitDefaultsscc_info_FlowTest_StartFrom_flowtest_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.cc", a4);
  protobuf::FlowTest_StartFrom::FlowTest_StartFrom(&protobuf::_FlowTest_StartFrom_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_FlowTest_StartFrom_default_instance_, v4);
}

void InitDefaultsscc_info_FlowTest_Step_flowtest_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.cc", a4);
  protobuf::FlowTest_Step::FlowTest_Step(&protobuf::_FlowTest_Step_default_instance_);
  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_FlowTest_Step_default_instance_, v4);
  qword_27F754CA0 = &protobuf::_FlowTest_StartFrom_default_instance_;
  unk_27F754CA8 = &protobuf::_FlowTest_SendIntent_default_instance_;
  qword_27F754CB0 = &protobuf::_FlowTest_AssertResponse_default_instance_;
  unk_27F754CB8 = &protobuf::_FlowTest_AssertCondition_default_instance_;
}

void InitDefaultsscc_info_FlowTest_Test_flowtest_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.cc", a4);
  protobuf::FlowTest_Test::FlowTest_Test(&protobuf::_FlowTest_Test_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_FlowTest_Test_default_instance_, v4);
}

protobuf::FlowTest_KeyValueParameter *protobuf::FlowTest_KeyValueParameter::FlowTest_KeyValueParameter(protobuf::FlowTest_KeyValueParameter *this)
{
  *this = &unk_28671BA80;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  if (atomic_load_explicit(scc_info_FlowTest_KeyValueParameter_flowtest_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FlowTest_KeyValueParameter_flowtest_2eproto);
  }

  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 10) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 11) = 0;
  *(this + 96) = 0;
  return this;
}

void sub_254D510D8(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::~RepeatedPtrField((v1 + 48));
  google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::~RepeatedPtrField((v1 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::FlowTest_KeyValueParameter *protobuf::FlowTest_KeyValueParameter::FlowTest_KeyValueParameter(protobuf::FlowTest_KeyValueParameter *this, const protobuf::FlowTest_KeyValueParameter *a2)
{
  *this = &unk_28671BA80;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::TypeHandler>(this + 3, a2 + 24);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::TypeHandler>(this + 6, a2 + 48);
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

  v9 = *(a2 + 11);
  *(this + 96) = *(a2 + 96);
  *(this + 11) = v9;
  return this;
}

void sub_254D51204(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(v3);
  google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::~RepeatedPtrField((v2 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void protobuf::FlowTest_KeyValueParameter::~FlowTest_KeyValueParameter(protobuf::FlowTest_KeyValueParameter *this)
{
  *this = &unk_28671BA80;
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

  google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::~RepeatedPtrField(this + 6);
  google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::~RepeatedPtrField(this + 3);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::FlowTest_KeyValueParameter::~FlowTest_KeyValueParameter(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::FlowTest_KeyValueParameter::default_instance(protobuf::FlowTest_KeyValueParameter *this)
{
  if (atomic_load_explicit(scc_info_FlowTest_KeyValueParameter_flowtest_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FlowTest_KeyValueParameter_flowtest_2eproto);
  }

  return &protobuf::_FlowTest_KeyValueParameter_default_instance_;
}

void protobuf::FlowTest_KeyValueParameter::Clear(protobuf::FlowTest_KeyValueParameter *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::TypeHandler>(this + 24);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::TypeHandler>(this + 48);
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v3 = *(this + 9);
      if (*(v3 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
        if ((v2 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v3 = 0;
      *(v3 + 23) = 0;
    }

    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v4 = *(this + 10);
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

LABEL_11:
  if ((v2 & 0xC) != 0)
  {
    *(this + 96) = 0;
    *(this + 11) = 0;
  }

  v6 = *(this + 8);
  v5 = this + 8;
  *(v5 + 2) = 0;
  if (v6)
  {

    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v5);
  }
}

char *protobuf::FlowTest_KeyValueParameter::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v38 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v38, *(this + 23)) & 1) == 0)
  {
    while (1)
    {
      TagFallback = v38 + 1;
      LODWORD(v8) = *v38;
      if ((*v38 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      v8 = (v8 + (*TagFallback << 7) - 128);
      if ((*TagFallback & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v38, v8);
      v38 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_3;
      }

      LODWORD(v8) = v35;
LABEL_8:
      v9 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v9 == 4)
        {
          if (v8 != 34)
          {
            goto LABEL_58;
          }

          *(a1 + 16) |= 2u;
          v23 = *(a1 + 80);
          if (v23 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 80, &google::protobuf::internal::fixed_address_empty_string);
          }

LABEL_42:
          v24 = google::protobuf::internal::InlineGreedyStringParser(v23, TagFallback, this);
          goto LABEL_63;
        }

        if (v9 != 5)
        {
          if (v9 != 6 || v8 != 50)
          {
            goto LABEL_58;
          }

          v14 = (TagFallback - 1);
          while (2)
          {
            v15 = (v14 + 1);
            v38 = (v14 + 1);
            v16 = *(a1 + 64);
            if (v16)
            {
              v17 = *(a1 + 56);
              v18 = *v16;
              if (v17 < *v16)
              {
                *(a1 + 56) = v17 + 1;
                v19 = *&v16[2 * v17 + 2];
                goto LABEL_32;
              }

              if (v18 == *(a1 + 60))
              {
LABEL_30:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v18 + 1);
                v16 = *(a1 + 64);
                v18 = *v16;
              }

              *v16 = v18 + 1;
              v20 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_KeyValueParameter>(*(a1 + 48));
              LODWORD(v19) = v20;
              v21 = *(a1 + 56);
              v22 = *(a1 + 64) + 8 * v21;
              *(a1 + 56) = v21 + 1;
              *(v22 + 8) = v20;
              v15 = v38;
LABEL_32:
              v14 = google::protobuf::internal::ParseContext::ParseMessage<protobuf::FlowTest_KeyValueParameter>(this, v19, v15);
              v38 = v14;
              if (!v14)
              {
                goto LABEL_69;
              }

              if (*this <= v14 || *v14 != 50)
              {
                goto LABEL_64;
              }

              continue;
            }

            break;
          }

          v18 = *(a1 + 60);
          goto LABEL_30;
        }

        if (v8 != 42)
        {
          goto LABEL_58;
        }

        v25 = (TagFallback - 1);
        while (2)
        {
          v26 = (v25 + 1);
          v38 = (v25 + 1);
          v27 = *(a1 + 40);
          if (v27)
          {
            v28 = *(a1 + 32);
            v29 = *v27;
            if (v28 < *v27)
            {
              *(a1 + 32) = v28 + 1;
              v30 = *&v27[2 * v28 + 2];
              goto LABEL_54;
            }

            if (v29 == *(a1 + 36))
            {
LABEL_52:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v29 + 1);
              v27 = *(a1 + 40);
              v29 = *v27;
            }

            *v27 = v29 + 1;
            v31 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_KeyValueParameter>(*(a1 + 24));
            LODWORD(v30) = v31;
            v32 = *(a1 + 32);
            v33 = *(a1 + 40) + 8 * v32;
            *(a1 + 32) = v32 + 1;
            *(v33 + 8) = v31;
            v26 = v38;
LABEL_54:
            v25 = google::protobuf::internal::ParseContext::ParseMessage<protobuf::FlowTest_KeyValueParameter>(this, v30, v26);
            v38 = v25;
            if (!v25)
            {
              goto LABEL_69;
            }

            if (*this <= v25 || *v25 != 42)
            {
              goto LABEL_64;
            }

            continue;
          }

          break;
        }

        v29 = *(a1 + 36);
        goto LABEL_52;
      }

      if (v9 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v23 = *(a1 + 72);
          if (v23 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 72, &google::protobuf::internal::fixed_address_empty_string);
          }

          goto LABEL_42;
        }

LABEL_58:
        if (v8)
        {
          v34 = (v8 & 7) == 4;
        }

        else
        {
          v34 = 1;
        }

        if (v34)
        {
          *(this + 20) = v8 - 1;
          goto LABEL_3;
        }

        v24 = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), TagFallback, this);
LABEL_63:
        v38 = v24;
        if (!v24)
        {
          goto LABEL_69;
        }

        goto LABEL_64;
      }

      if (v9 == 2)
      {
        if (v8 != 17)
        {
          goto LABEL_58;
        }

        v5 |= 4u;
        *(a1 + 88) = *TagFallback;
        v38 = (TagFallback + 8);
      }

      else
      {
        if (v9 != 3 || v8 != 24)
        {
          goto LABEL_58;
        }

        v5 |= 8u;
        v12 = (TagFallback + 1);
        v11 = *TagFallback;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (TagFallback + 2);
LABEL_19:
          v38 = v12;
          *(a1 + 96) = v11 != 0;
          goto LABEL_64;
        }

        v36 = google::protobuf::internal::VarintParseSlow64(TagFallback, v11);
        v38 = v36;
        *(a1 + 96) = v37 != 0;
        if (!v36)
        {
LABEL_69:
          TagFallback = 0;
          goto LABEL_3;
        }
      }

LABEL_64:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v38, *(this + 23)))
      {
        goto LABEL_2;
      }
    }

    TagFallback = v38 + 2;
LABEL_7:
    v38 = TagFallback;
    goto LABEL_8;
  }

LABEL_2:
  TagFallback = v38;
LABEL_3:
  *(a1 + 16) |= v5;
  return TagFallback;
}

char *google::protobuf::internal::ParseContext::ParseMessage<protobuf::FlowTest_KeyValueParameter>(google::protobuf::internal::EpsCopyInputStream *this, uint64_t a2, google::protobuf::internal *a3)
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
  result = protobuf::FlowTest_KeyValueParameter::_InternalParse(a2, v8, this);
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

unsigned __int8 *protobuf::FlowTest_KeyValueParameter::InternalSerializeWithCachedSizesToArray(protobuf::FlowTest_KeyValueParameter *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 9), a2);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
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

  v25 = *(this + 11);
  *v4 = 17;
  *(v4 + 1) = v25;
  v4 += 9;
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_36:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v26 = *(this + 96);
  *v4 = 24;
  v4[1] = v26;
  v4 += 2;
  if ((v6 & 2) != 0)
  {
LABEL_5:
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 4, *(this + 10), v4);
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

      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::TypeHandler>(this + 24, i);
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

      v4 = protobuf::FlowTest_KeyValueParameter::InternalSerializeWithCachedSizesToArray(v9, v11, a3);
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

      v17 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::TypeHandler>(this + 48, j);
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

      v4 = protobuf::FlowTest_KeyValueParameter::InternalSerializeWithCachedSizesToArray(v17, v19, a3);
    }
  }

  v23 = *(this + 1);
  if ((v23 & 1) == 0)
  {
    return v4;
  }

  v27 = v23 & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(v27 + 23);
  if (v28 < 0)
  {
    v29 = *v27;
    v28 = *(v27 + 8);
  }

  else
  {
    v29 = v27;
  }

  if (*a3 - v4 >= v28)
  {
    v30 = v28;
    memcpy(v4, v29, v28);
    v4 += v30;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v29, v28, v4);
}

uint64_t protobuf::FlowTest_KeyValueParameter::ByteSizeLong(protobuf::FlowTest_KeyValueParameter *this)
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
      v7 = protobuf::FlowTest_KeyValueParameter::ByteSizeLong(v6);
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
      v14 = protobuf::FlowTest_KeyValueParameter::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 4);
  if ((v15 & 0xF) != 0)
  {
    if (v15)
    {
      v16 = *(this + 9);
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      v9 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v15 & 2) != 0)
    {
      v19 = *(this + 10);
      v20 = *(v19 + 23);
      v21 = *(v19 + 8);
      if ((v20 & 0x80u) == 0)
      {
        v21 = v20;
      }

      v9 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v22 = v9 + 9;
    if ((v15 & 4) == 0)
    {
      v22 = v9;
    }

    v9 = v22 + ((v15 >> 2) & 2);
  }

  v23 = *(this + 1);
  if (v23)
  {
    v25 = v23 & 0xFFFFFFFFFFFFFFFELL;
    v26 = *((v23 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v26 < 0)
    {
      v26 = *(v25 + 8);
    }

    v9 += v26;
  }

  *(this + 5) = v9;
  return v9;
}

std::string *protobuf::FlowTest_KeyValueParameter::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  return protobuf::FlowTest_KeyValueParameter::MergeFrom(this, lpsrc);
}

std::string *protobuf::FlowTest_KeyValueParameter::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.cc", 481);
    v4 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v5 = a2[1];
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::TypeHandler>((this + 3));
  result = google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::TypeHandler>((this + 6));
  v7 = *(a2 + 4);
  if ((v7 & 0xF) != 0)
  {
    if (v7)
    {
      result = (this + 9);
      v8 = this[9];
      *(this + 4) |= 1u;
      v9 = a2[9];
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
      result = (this + 10);
      v10 = this[10];
      *(this + 4) |= 2u;
      v11 = a2[10];
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
      this[11] = a2[11];
    }

    if ((v7 & 8) != 0)
    {
      *(this + 96) = *(a2 + 96);
    }

    *(this + 4) |= v7;
  }

  return result;
}

void sub_254D51F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *protobuf::FlowTest_KeyValueParameter::CopyFrom(std::string *this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    v4 = this;
    protobuf::FlowTest_KeyValueParameter::Clear(this);

    return protobuf::FlowTest_KeyValueParameter::MergeFrom(v4, a2);
  }

  return this;
}

double protobuf::FlowTest_KeyValueParameter::InternalSwap(protobuf::FlowTest_KeyValueParameter *this, protobuf::FlowTest_KeyValueParameter *a2)
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
  result = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = result;
  v24 = *(this + 96);
  *(this + 96) = *(a2 + 96);
  *(a2 + 96) = v24;
  return result;
}

protobuf::FlowTest_StartFrom *protobuf::FlowTest_StartFrom::FlowTest_StartFrom(protobuf::FlowTest_StartFrom *this)
{
  *this = &unk_28671BB10;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FlowTest_StartFrom_flowtest_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FlowTest_StartFrom_flowtest_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

protobuf::FlowTest_StartFrom *protobuf::FlowTest_StartFrom::FlowTest_StartFrom(protobuf::FlowTest_StartFrom *this, const protobuf::FlowTest_StartFrom *a2)
{
  *this = &unk_28671BB10;
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

void protobuf::FlowTest_StartFrom::~FlowTest_StartFrom(protobuf::FlowTest_StartFrom *this)
{
  *this = &unk_28671BB10;
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
  protobuf::FlowTest_StartFrom::~FlowTest_StartFrom(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::FlowTest_StartFrom::default_instance(protobuf::FlowTest_StartFrom *this)
{
  if (atomic_load_explicit(scc_info_FlowTest_StartFrom_flowtest_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FlowTest_StartFrom_flowtest_2eproto);
  }

  return &protobuf::_FlowTest_StartFrom_default_instance_;
}

void protobuf::FlowTest_StartFrom::Clear(protobuf::FlowTest_StartFrom *this)
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

google::protobuf::internal *protobuf::FlowTest_StartFrom::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
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

unsigned __int8 *protobuf::FlowTest_StartFrom::InternalSerializeWithCachedSizesToArray(protobuf::FlowTest_StartFrom *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t protobuf::FlowTest_StartFrom::ByteSizeLong(protobuf::FlowTest_StartFrom *this)
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

void protobuf::FlowTest_StartFrom::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::FlowTest_StartFrom::MergeFrom(this, lpsrc);
}

void protobuf::FlowTest_StartFrom::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.cc", 729);
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

void sub_254D529FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::FlowTest_StartFrom::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::FlowTest_StartFrom::Clear(this);

    protobuf::FlowTest_StartFrom::MergeFrom(this, a2);
  }
}

__n128 protobuf::FlowTest_StartFrom::InternalSwap(protobuf::FlowTest_StartFrom *this, protobuf::FlowTest_StartFrom *a2)
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

protobuf::FlowTest_SendIntent *protobuf::FlowTest_SendIntent::FlowTest_SendIntent(protobuf::FlowTest_SendIntent *this)
{
  *(this + 8) = 0u;
  *this = &unk_28671BBA0;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_FlowTest_SendIntent_flowtest_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FlowTest_SendIntent_flowtest_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

void sub_254D52CAC(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::~RepeatedPtrField((v1 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::FlowTest_SendIntent *protobuf::FlowTest_SendIntent::FlowTest_SendIntent(protobuf::FlowTest_SendIntent *this, const protobuf::FlowTest_SendIntent *a2)
{
  *this = &unk_28671BBA0;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::TypeHandler>(this + 3, a2 + 24);
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

  return this;
}

void sub_254D52DA0(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase((v2 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void protobuf::FlowTest_SendIntent::~FlowTest_SendIntent(protobuf::FlowTest_SendIntent *this)
{
  *this = &unk_28671BBA0;
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

  google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::~RepeatedPtrField(this + 3);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::FlowTest_SendIntent::~FlowTest_SendIntent(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::FlowTest_SendIntent::default_instance(protobuf::FlowTest_SendIntent *this)
{
  if (atomic_load_explicit(scc_info_FlowTest_SendIntent_flowtest_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FlowTest_SendIntent_flowtest_2eproto);
  }

  return &protobuf::_FlowTest_SendIntent_default_instance_;
}

void protobuf::FlowTest_SendIntent::Clear(protobuf::FlowTest_SendIntent *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::TypeHandler>(this + 24);
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v3 = *(this + 6);
      if (*(v3 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
        if ((v2 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v3 = 0;
      *(v3 + 23) = 0;
    }

    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v4 = *(this + 7);
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

LABEL_11:
  v6 = *(this + 8);
  v5 = this + 8;
  *(v5 + 2) = 0;
  if (v6)
  {

    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v5);
  }
}

std::string::value_type *protobuf::FlowTest_SendIntent::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
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
      v9 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_13;
        }

        result = v7 - 1;
        while (2)
        {
          v12 = (result + 1);
          v21 = (result + 1);
          v13 = *(a1 + 40);
          if (v13)
          {
            v14 = *(a1 + 32);
            v15 = *v13;
            if (v14 < *v13)
            {
              *(a1 + 32) = v14 + 1;
              v16 = *&v13[2 * v14 + 2];
              goto LABEL_28;
            }

            if (v15 == *(a1 + 36))
            {
LABEL_26:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v15 + 1);
              v13 = *(a1 + 40);
              v15 = *v13;
            }

            *v13 = v15 + 1;
            v16 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_KeyValueParameter>(*(a1 + 24));
            v17 = *(a1 + 32);
            v18 = *(a1 + 40) + 8 * v17;
            *(a1 + 32) = v17 + 1;
            *(v18 + 8) = v16;
            v12 = v21;
LABEL_28:
            result = google::protobuf::internal::ParseContext::ParseMessage<protobuf::FlowTest_KeyValueParameter>(this, v16, v12);
            v21 = result;
            if (!result)
            {
              return result;
            }

            if (*this <= result || *result != 26)
            {
              goto LABEL_36;
            }

            continue;
          }

          break;
        }

        v15 = *(a1 + 36);
        goto LABEL_26;
      }

      if (v9 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 2u;
          v11 = *(a1 + 56);
          if (v11 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 56, &google::protobuf::internal::fixed_address_empty_string);
          }

          goto LABEL_34;
        }
      }

      else if (v9 == 1 && v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v11 = *(a1 + 48);
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 48, &google::protobuf::internal::fixed_address_empty_string);
        }

LABEL_34:
        result = google::protobuf::internal::InlineGreedyStringParser(v11, v7, this);
        goto LABEL_35;
      }

LABEL_13:
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

unsigned __int8 *protobuf::FlowTest_SendIntent::InternalSerializeWithCachedSizesToArray(protobuf::FlowTest_SendIntent *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 6), a2);
  }

  if ((v6 & 2) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, *(this + 7), v4);
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

      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::TypeHandler>(this + 24, i);
      *v4 = 26;
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

      v4 = protobuf::FlowTest_KeyValueParameter::InternalSerializeWithCachedSizesToArray(v9, v11, a3);
    }
  }

  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return v4;
  }

  v17 = v15 & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v17 + 23);
  if (v18 < 0)
  {
    v19 = *v17;
    v18 = *(v17 + 8);
  }

  else
  {
    v19 = v17;
  }

  if (*a3 - v4 >= v18)
  {
    v20 = v18;
    memcpy(v4, v19, v18);
    v4 += v20;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v19, v18, v4);
}

uint64_t protobuf::FlowTest_SendIntent::ByteSizeLong(protobuf::FlowTest_SendIntent *this)
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
      v7 = protobuf::FlowTest_KeyValueParameter::ByteSizeLong(v6);
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
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = *(this + 6);
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v12 = *(this + 7);
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v15 = *(this + 1);
  if (v15)
  {
    v17 = v15 & 0xFFFFFFFFFFFFFFFELL;
    v18 = *((v15 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v18 < 0)
    {
      v18 = *(v17 + 8);
    }

    v2 += v18;
  }

  *(this + 5) = v2;
  return v2;
}

void protobuf::FlowTest_SendIntent::CheckTypeAndMergeFrom(protobuf::FlowTest_SendIntent *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::FlowTest_SendIntent::MergeFrom(this, lpsrc);
}

void protobuf::FlowTest_SendIntent::MergeFrom(protobuf::FlowTest_SendIntent *this, const protobuf::FlowTest_SendIntent *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.cc", 993);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::TypeHandler>(this + 3, a2 + 24);
  v6 = *(a2 + 4);
  if ((v6 & 3) != 0)
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
      v11 = *(this + 7);
      v10 = this + 56;
      v9 = v11;
      *(v10 - 10) |= 2u;
      v12 = *(a2 + 7);
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

void sub_254D536D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::FlowTest_SendIntent::CopyFrom(protobuf::FlowTest_SendIntent *this, const protobuf::FlowTest_SendIntent *a2)
{
  if (a2 != this)
  {
    protobuf::FlowTest_SendIntent::Clear(this);

    protobuf::FlowTest_SendIntent::MergeFrom(this, a2);
  }
}

__n128 protobuf::FlowTest_SendIntent::InternalSwap(protobuf::FlowTest_SendIntent *this, protobuf::FlowTest_SendIntent *a2)
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
  v14 = *(this + 6);
  if (v14 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 6) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_14;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 6, 0, &google::protobuf::internal::fixed_address_empty_string);
    v14 = *(this + 6);
  }

  v15 = *(a2 + 6);
  if (v15 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 6, 0, &google::protobuf::internal::fixed_address_empty_string);
    v15 = *(a2 + 6);
  }

  v16 = v14[2];
  result = *v14;
  v17 = v15[2];
  *v14 = *v15;
  v14[2] = v17;
  *v15 = result;
  v15[2] = v16;
LABEL_14:
  v20 = *(this + 7);
  v18 = (this + 56);
  v19 = v20;
  if (v20 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 7) == &google::protobuf::internal::fixed_address_empty_string)
    {
      return result;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(v18, 0, &google::protobuf::internal::fixed_address_empty_string);
    v19 = *v18;
  }

  v21 = *(a2 + 7);
  if (v21 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 7, 0, &google::protobuf::internal::fixed_address_empty_string);
    v21 = *(a2 + 7);
  }

  v22 = v19->__r_.__value_.__r.__words[2];
  result = *&v19->__r_.__value_.__l.__data_;
  v23 = v21[2];
  *&v19->__r_.__value_.__l.__data_ = *v21;
  v19->__r_.__value_.__r.__words[2] = v23;
  *v21 = result;
  v21[2] = v22;
  return result;
}

protobuf::FlowTest_AssertResponse *protobuf::FlowTest_AssertResponse::FlowTest_AssertResponse(protobuf::FlowTest_AssertResponse *this)
{
  *this = &unk_28671BC30;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  if (atomic_load_explicit(scc_info_FlowTest_AssertResponse_flowtest_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FlowTest_AssertResponse_flowtest_2eproto);
  }

  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 20) = 0;
  return this;
}

void sub_254D53994(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 48);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::FlowTest_AssertResponse *protobuf::FlowTest_AssertResponse::FlowTest_AssertResponse(protobuf::FlowTest_AssertResponse *this, const protobuf::FlowTest_AssertResponse *a2)
{
  *this = &unk_28671BC30;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, a2 + 24);
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
  if (*(a2 + 16))
  {
    v6 = *(a2 + 9);
    if (v6 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 72, v6);
    }
  }

  *(this + 20) = *(a2 + 20);
  return this;
}

void sub_254D53A90(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v3);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v2 + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void protobuf::FlowTest_AssertResponse::~FlowTest_AssertResponse(protobuf::FlowTest_AssertResponse *this)
{
  *this = &unk_28671BC30;
  v2 = *(this + 9);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 48);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::FlowTest_AssertResponse::~FlowTest_AssertResponse(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::FlowTest_AssertResponse::default_instance(protobuf::FlowTest_AssertResponse *this)
{
  if (atomic_load_explicit(scc_info_FlowTest_AssertResponse_flowtest_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FlowTest_AssertResponse_flowtest_2eproto);
  }

  return &protobuf::_FlowTest_AssertResponse_default_instance_;
}

void protobuf::FlowTest_AssertResponse::Clear(protobuf::FlowTest_AssertResponse *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48);
  if (*(this + 16))
  {
    v2 = *(this + 9);
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
  *(v3 + 18) = 0;
  *(v3 + 2) = 0;
  if (v4)
  {

    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v3);
  }
}

google::protobuf::internal *protobuf::FlowTest_AssertResponse::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *this)
{
  v38 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v38, this[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      TagFallback = (v38 + 1);
      LODWORD(v8) = *v38;
      if ((*v38 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      v8 = (v8 + (*TagFallback << 7) - 128);
      if ((*TagFallback & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v38, v8);
      v38 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_3;
      }

      LODWORD(v8) = v35;
LABEL_8:
      v9 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v9 != 1)
        {
          if (v9 != 2 || v8 != 18)
          {
            goto LABEL_59;
          }

          v11 = TagFallback - 1;
          while (1)
          {
            v12 = v11 + 1;
            v38 = (v11 + 1);
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
LABEL_21:
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
              v12 = v38;
              goto LABEL_27;
            }

            *(a1 + 32) = v14 + 1;
            AlignedAndAddCleanup = *&v13[2 * v14 + 2];
LABEL_27:
            v11 = google::protobuf::internal::InlineGreedyStringParser(AlignedAndAddCleanup, v12, this);
            v38 = v11;
            if (!v11)
            {
              goto LABEL_70;
            }

            if (*this <= v11 || *v11 != 18)
            {
              goto LABEL_65;
            }
          }

          v15 = *(a1 + 36);
          goto LABEL_21;
        }

        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v23 = *(a1 + 72);
          if (v23 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 72, &google::protobuf::internal::fixed_address_empty_string);
          }

          v24 = google::protobuf::internal::InlineGreedyStringParser(v23, TagFallback, this);
LABEL_64:
          v38 = v24;
          if (!v24)
          {
            goto LABEL_70;
          }

          goto LABEL_65;
        }

LABEL_59:
        if (v8)
        {
          v34 = (v8 & 7) == 4;
        }

        else
        {
          v34 = 1;
        }

        if (v34)
        {
          this[10].i32[0] = v8 - 1;
          goto LABEL_3;
        }

        v24 = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), TagFallback, this);
        goto LABEL_64;
      }

      if (v9 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_59;
        }

        v25 = TagFallback - 1;
        while (2)
        {
          v26 = v25 + 1;
          v38 = (v25 + 1);
          v27 = *(a1 + 64);
          if (v27)
          {
            v28 = *(a1 + 56);
            v29 = *v27;
            if (v28 < *v27)
            {
              *(a1 + 56) = v28 + 1;
              v30 = *&v27[2 * v28 + 2];
              goto LABEL_55;
            }

            if (v29 == *(a1 + 60))
            {
LABEL_49:
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

            v30 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v31, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
            v30->__r_.__value_.__r.__words[0] = 0;
            v30->__r_.__value_.__l.__size_ = 0;
            v30->__r_.__value_.__r.__words[2] = 0;
            v32 = *(a1 + 56);
            v33 = *(a1 + 64) + 8 * v32;
            *(a1 + 56) = v32 + 1;
            *(v33 + 8) = v30;
            v26 = v38;
LABEL_55:
            v25 = google::protobuf::internal::InlineGreedyStringParser(v30, v26, this);
            v38 = v25;
            if (!v25)
            {
              goto LABEL_70;
            }

            if (*this <= v25 || *v25 != 26)
            {
              goto LABEL_65;
            }

            continue;
          }

          break;
        }

        v29 = *(a1 + 60);
        goto LABEL_49;
      }

      if (v9 != 4 || v8 != 32)
      {
        goto LABEL_59;
      }

      v5 |= 2u;
      v21 = (TagFallback + 1);
      LODWORD(v20) = *TagFallback;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_37;
      }

      v22 = *v21;
      v20 = v20 + (v22 << 7) - 128;
      if ((v22 & 0x80000000) == 0)
      {
        v21 = (TagFallback + 2);
LABEL_37:
        v38 = v21;
        *(a1 + 80) = v20;
        goto LABEL_65;
      }

      v36 = google::protobuf::internal::VarintParseSlow64(TagFallback, v20);
      v38 = v36;
      *(a1 + 80) = v37;
      if (!v36)
      {
LABEL_70:
        TagFallback = 0;
        goto LABEL_3;
      }

LABEL_65:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v38, this[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    TagFallback = (v38 + 2);
LABEL_7:
    v38 = TagFallback;
    goto LABEL_8;
  }

LABEL_2:
  TagFallback = v38;
LABEL_3:
  *(a1 + 16) |= v5;
  return TagFallback;
}

unsigned __int8 *protobuf::FlowTest_AssertResponse::InternalSerializeWithCachedSizesToArray(protobuf::FlowTest_AssertResponse *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 9), a2);
  }

  v7 = *(this + 8);
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, i);
      v10 = *(v9 + 23);
      if (v10 < 0 && (v10 = *(v9 + 8), v10 > 127) || *a3 - v4 + 14 < v10)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 2, v9, v4);
      }

      else
      {
        *v4 = 18;
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

  v12 = *(this + 14);
  if (v12 >= 1)
  {
    for (j = 0; j != v12; ++j)
    {
      v14 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48, j);
      v15 = *(v14 + 23);
      if (v15 < 0 && (v15 = *(v14 + 8), v15 > 127) || *a3 - v4 + 14 < v15)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 3, v14, v4);
      }

      else
      {
        *v4 = 26;
        v4[1] = v15;
        if (*(v14 + 23) >= 0)
        {
          v16 = v14;
        }

        else
        {
          v16 = *v14;
        }

        memcpy(v4 + 2, v16, v15);
        v4 += v15 + 2;
      }
    }
  }

  if ((v6 & 2) != 0)
  {
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v17 = *(this + 20);
    *v4 = 32;
    if (v17 > 0x7F)
    {
      v4[1] = v17 | 0x80;
      v18 = v17 >> 7;
      if (v17 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v18 | 0x80;
          v19 = v18 >> 7;
          ++v4;
          v20 = v18 >> 14;
          v18 >>= 7;
        }

        while (v20);
        *(v4 - 1) = v19;
      }

      else
      {
        v4[2] = v18;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v17;
      v4 += 2;
    }
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

uint64_t protobuf::FlowTest_AssertResponse::ByteSizeLong(protobuf::FlowTest_AssertResponse *this)
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

  v7 = *(this + 14);
  v8 = v4 + v7;
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48, v9);
      v11 = *(v10 + 23);
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v10 + 8);
      }

      v8 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      ++v9;
    }

    while (v7 != v9);
  }

  v12 = *(this + 4);
  if ((v12 & 3) != 0)
  {
    if (v12)
    {
      v13 = *(this + 9);
      v14 = *(v13 + 23);
      v15 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      v8 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v12 & 2) != 0)
    {
      v16 = *(this + 20);
      v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v16 >= 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 11;
      }

      v8 += v18;
    }
  }

  v19 = *(this + 1);
  if (v19)
  {
    v21 = v19 & 0xFFFFFFFFFFFFFFFELL;
    v22 = *((v19 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v22 < 0)
    {
      v22 = *(v21 + 8);
    }

    v8 += v22;
  }

  *(this + 5) = v8;
  return v8;
}

void protobuf::FlowTest_AssertResponse::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::FlowTest_AssertResponse::MergeFrom(this, lpsrc);
}

void protobuf::FlowTest_AssertResponse::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.cc", 1279);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  v5 = a2[1];
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 3), (a2 + 3));
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 6), (a2 + 6));
  v6 = *(a2 + 4);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      v7 = this[9];
      *(this + 4) |= 1u;
      v8 = a2[9];
      if (v7 != v8)
      {
        if (v7 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 9), v8);
        }

        std::string::operator=(v7, v8);
      }
    }

    if ((v6 & 2) != 0)
    {
      *(this + 20) = *(a2 + 20);
    }

    *(this + 4) |= v6;
  }
}

void sub_254D546A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::FlowTest_AssertResponse::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::FlowTest_AssertResponse::Clear(this);

    protobuf::FlowTest_AssertResponse::MergeFrom(this, a2);
  }
}

void protobuf::FlowTest_AssertResponse::InternalSwap(protobuf::FlowTest_AssertResponse *this, protobuf::FlowTest_AssertResponse *a2)
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
  v18 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v18;
}

protobuf::FlowTest_AssertCondition *protobuf::FlowTest_AssertCondition::FlowTest_AssertCondition(protobuf::FlowTest_AssertCondition *this)
{
  *this = &unk_28671BCC0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FlowTest_AssertCondition_flowtest_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FlowTest_AssertCondition_flowtest_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 32) = 0;
  return this;
}

protobuf::FlowTest_AssertCondition *protobuf::FlowTest_AssertCondition::FlowTest_AssertCondition(protobuf::FlowTest_AssertCondition *this, const protobuf::FlowTest_AssertCondition *a2)
{
  *this = &unk_28671BCC0;
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

void protobuf::FlowTest_AssertCondition::~FlowTest_AssertCondition(protobuf::FlowTest_AssertCondition *this)
{
  *this = &unk_28671BCC0;
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
  protobuf::FlowTest_AssertCondition::~FlowTest_AssertCondition(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::FlowTest_AssertCondition::default_instance(protobuf::FlowTest_AssertCondition *this)
{
  if (atomic_load_explicit(scc_info_FlowTest_AssertCondition_flowtest_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FlowTest_AssertCondition_flowtest_2eproto);
  }

  return &protobuf::_FlowTest_AssertCondition_default_instance_;
}

void protobuf::FlowTest_AssertCondition::Clear(protobuf::FlowTest_AssertCondition *this)
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

google::protobuf::internal *protobuf::FlowTest_AssertCondition::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *this)
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

unsigned __int8 *protobuf::FlowTest_AssertCondition::InternalSerializeWithCachedSizesToArray(protobuf::FlowTest_AssertCondition *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t protobuf::FlowTest_AssertCondition::ByteSizeLong(protobuf::FlowTest_AssertCondition *this)
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

void protobuf::FlowTest_AssertCondition::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::FlowTest_AssertCondition::MergeFrom(this, lpsrc);
}

void protobuf::FlowTest_AssertCondition::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.cc", 1508);
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

void sub_254D5500C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::FlowTest_AssertCondition::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::FlowTest_AssertCondition::Clear(this);

    protobuf::FlowTest_AssertCondition::MergeFrom(this, a2);
  }
}

void protobuf::FlowTest_AssertCondition::InternalSwap(protobuf::FlowTest_AssertCondition *this, protobuf::FlowTest_AssertCondition *a2)
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

void protobuf::FlowTest_Step::InitAsDefaultInstance(protobuf::FlowTest_Step *this)
{
  qword_27F754CA0 = &protobuf::_FlowTest_StartFrom_default_instance_;
  unk_27F754CA8 = &protobuf::_FlowTest_SendIntent_default_instance_;
  qword_27F754CB0 = &protobuf::_FlowTest_AssertResponse_default_instance_;
  unk_27F754CB8 = &protobuf::_FlowTest_AssertCondition_default_instance_;
}

protobuf::FlowTest_Step *protobuf::FlowTest_Step::FlowTest_Step(protobuf::FlowTest_Step *this)
{
  *(this + 8) = 0u;
  *this = &unk_28671BD50;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_FlowTest_Step_flowtest_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FlowTest_Step_flowtest_2eproto);
  }

  *(this + 3) = 0u;
  *(this + 4) = 0u;
  return this;
}

void sub_254D552A4(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::~RepeatedPtrField((v1 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::FlowTest_Step *protobuf::FlowTest_Step::FlowTest_Step(protobuf::FlowTest_Step *this, const protobuf::FlowTest_Step *a2)
{
  *this = &unk_28671BD50;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::TypeHandler>(this + 3, a2 + 24);
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  v6 = *(a2 + 4);
  if (v6)
  {
    if (!*(a2 + 6))
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.h", 2570);
      v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: !value || start_from_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 6) = 0;
  if ((v6 & 2) != 0)
  {
    if (!*(a2 + 7))
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.h", 2630);
      v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: !value || send_intent_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v8->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 7) = 0;
  if ((v6 & 4) != 0)
  {
    if (!*(a2 + 8))
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.h", 2690);
      v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: !value || assert_response_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 8) = 0;
  if ((v6 & 8) != 0)
  {
    if (!*(a2 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.h", 2750);
      v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: !value || assert_condition_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 9) = 0;
  return this;
}

void sub_254D55548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::~RepeatedPtrField((v3 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v4);
  _Unwind_Resume(a1);
}

void protobuf::FlowTest_Step::~FlowTest_Step(protobuf::FlowTest_Step *this)
{
  *this = &unk_28671BD50;
  if (this != &protobuf::_FlowTest_Step_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 7);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 8);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 9);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::~RepeatedPtrField(this + 3);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::FlowTest_Step::~FlowTest_Step(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::FlowTest_Step::default_instance(protobuf::FlowTest_Step *this)
{
  if (atomic_load_explicit(scc_info_FlowTest_Step_flowtest_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FlowTest_Step_flowtest_2eproto);
  }

  return &protobuf::_FlowTest_Step_default_instance_;
}

void protobuf::FlowTest_Step::Clear(protobuf::FlowTest_Step *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::TypeHandler>(this + 24);
  v2 = *(this + 4);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      v3 = *(this + 6);
      if (!v3)
      {
        google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.cc", 1672);
        v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: start_from_ != nullptr: ");
        google::protobuf::internal::LogFinisher::operator=(&v13, &v4->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
        v3 = *(this + 6);
      }

      protobuf::FlowTest_StartFrom::Clear(v3);
    }

    if ((v2 & 2) != 0)
    {
      v5 = *(this + 7);
      if (!v5)
      {
        google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.cc", 1676);
        v6 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: send_intent_ != nullptr: ");
        google::protobuf::internal::LogFinisher::operator=(&v13, &v6->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
        v5 = *(this + 7);
      }

      protobuf::FlowTest_SendIntent::Clear(v5);
    }

    if ((v2 & 4) != 0)
    {
      v7 = *(this + 8);
      if (!v7)
      {
        google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.cc", 1680);
        v8 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: assert_response_ != nullptr: ");
        google::protobuf::internal::LogFinisher::operator=(&v13, &v8->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
        v7 = *(this + 8);
      }

      protobuf::FlowTest_AssertResponse::Clear(v7);
    }

    if ((v2 & 8) != 0)
    {
      v9 = *(this + 9);
      if (!v9)
      {
        google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.cc", 1684);
        v10 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: assert_condition_ != nullptr: ");
        google::protobuf::internal::LogFinisher::operator=(&v13, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
        v9 = *(this + 9);
      }

      protobuf::FlowTest_AssertCondition::Clear(v9);
    }
  }

  v12 = *(this + 8);
  v11 = this + 8;
  *(v11 + 2) = 0;
  if (v12)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v11);
  }
}

void sub_254D55918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal *protobuf::FlowTest_Step::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v47 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v47, *(this + 23));
  result = v47;
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
      v47 = result;
      if (!result)
      {
        return result;
      }

      v7 = result;
      LODWORD(v8) = v30;
LABEL_6:
      v9 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v9 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_48;
          }

          result = (v7 - 1);
          while (2)
          {
            v23 = (result + 1);
            v47 = (result + 1);
            v24 = *(a1 + 40);
            if (v24)
            {
              v25 = *(a1 + 32);
              v26 = *v24;
              if (v25 < *v24)
              {
                *(a1 + 32) = v25 + 1;
                v27 = *&v24[2 * v25 + 2];
                goto LABEL_44;
              }

              if (v26 == *(a1 + 36))
              {
LABEL_42:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v26 + 1);
                v24 = *(a1 + 40);
                v26 = *v24;
              }

              *v24 = v26 + 1;
              v27 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_KeyValueParameter>(*(a1 + 24));
              v28 = *(a1 + 32);
              v29 = *(a1 + 40) + 8 * v28;
              *(a1 + 32) = v28 + 1;
              *(v29 + 8) = v27;
              v23 = v47;
LABEL_44:
              result = google::protobuf::internal::ParseContext::ParseMessage<protobuf::FlowTest_KeyValueParameter>(this, v27, v23);
              v47 = result;
              if (!result)
              {
                return result;
              }

              if (*this <= result || *result != 10)
              {
                goto LABEL_75;
              }

              continue;
            }

            break;
          }

          v26 = *(a1 + 36);
          goto LABEL_42;
        }

        if (v9 == 2 && v8 == 18)
        {
          *(a1 + 16) |= 1u;
          started = *(a1 + 48);
          if (!started)
          {
            started = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_StartFrom>(0);
            *(a1 + 48) = started;
            v7 = v47;
          }

          v15 = *v7;
          if (*v7 < 0)
          {
            result = google::protobuf::internal::ReadSizeFallback(v7, *v7);
            if (!result)
            {
              return result;
            }

            v16 = result;
            v15 = v42;
          }

          else
          {
            v16 = v7 + 1;
          }

          v43 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v16, v15);
          v44 = *(this + 22);
          v34 = __OFSUB__(v44--, 1);
          *(this + 22) = v44;
          if (v44 < 0 != v34)
          {
            return 0;
          }

          v35 = v43;
          result = protobuf::FlowTest_StartFrom::_InternalParse(started, v16, this);
          if (!result)
          {
            return result;
          }

          goto LABEL_73;
        }
      }

      else
      {
        if (v9 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_48;
          }

          *(a1 + 16) |= 2u;
          v17 = *(a1 + 56);
          if (!v17)
          {
            v17 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_SendIntent>(0);
            *(a1 + 56) = v17;
            v7 = v47;
          }

          v18 = *v7;
          if (*v7 < 0)
          {
            result = google::protobuf::internal::ReadSizeFallback(v7, *v7);
            if (!result)
            {
              return result;
            }

            v19 = result;
            v18 = v31;
          }

          else
          {
            v19 = v7 + 1;
          }

          v32 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v19, v18);
          v33 = *(this + 22);
          v34 = __OFSUB__(v33--, 1);
          *(this + 22) = v33;
          if (v33 < 0 != v34)
          {
            return 0;
          }

          v35 = v32;
          result = protobuf::FlowTest_SendIntent::_InternalParse(v17, v19, this);
          if (!result)
          {
            return result;
          }

          goto LABEL_73;
        }

        if (v9 == 4)
        {
          if (v8 != 34)
          {
            goto LABEL_48;
          }

          *(a1 + 16) |= 4u;
          v20 = *(a1 + 64);
          if (!v20)
          {
            v20 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_AssertResponse>(0);
            *(a1 + 64) = v20;
            v7 = v47;
          }

          v21 = *v7;
          if (*v7 < 0)
          {
            result = google::protobuf::internal::ReadSizeFallback(v7, *v7);
            if (!result)
            {
              return result;
            }

            v22 = result;
            v21 = v36;
          }

          else
          {
            v22 = v7 + 1;
          }

          v37 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v22, v21);
          v38 = *(this + 22);
          v34 = __OFSUB__(v38--, 1);
          *(this + 22) = v38;
          if (v38 < 0 != v34)
          {
            return 0;
          }

          v35 = v37;
          result = protobuf::FlowTest_AssertResponse::_InternalParse(v20, v22, this);
          if (!result)
          {
            return result;
          }

LABEL_73:
          ++*(this + 22);
          if (*(this + 20))
          {
            return 0;
          }

          v45 = *(this + 7) + v35;
          *(this + 7) = v45;
          *this = *(this + 1) + (v45 & (v45 >> 31));
          v47 = result;
          goto LABEL_75;
        }

        if (v9 == 5 && v8 == 42)
        {
          *(a1 + 16) |= 8u;
          v10 = *(a1 + 72);
          if (!v10)
          {
            v10 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_AssertCondition>(0);
            *(a1 + 72) = v10;
            v7 = v47;
          }

          v11 = *v7;
          if (*v7 < 0)
          {
            result = google::protobuf::internal::ReadSizeFallback(v7, *v7);
            if (!result)
            {
              return result;
            }

            v12 = result;
            v11 = v39;
          }

          else
          {
            v12 = v7 + 1;
          }

          v40 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v12, v11);
          v41 = *(this + 22);
          v34 = __OFSUB__(v41--, 1);
          *(this + 22) = v41;
          if (v41 < 0 != v34)
          {
            return 0;
          }

          v35 = v40;
          result = protobuf::FlowTest_AssertCondition::_InternalParse(v10, v12, this);
          if (!result)
          {
            return result;
          }

          goto LABEL_73;
        }
      }

LABEL_48:
      if (!v8 || (v8 & 7) == 4)
      {
        *(this + 20) = v8 - 1;
        return v7;
      }

      result = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), v7, this);
      v47 = result;
      if (!result)
      {
        return result;
      }

LABEL_75:
      v46 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v47, *(this + 23));
      result = v47;
      if (v46)
      {
        return result;
      }
    }

    v7 = (result + 2);
LABEL_5:
    v47 = v7;
    goto LABEL_6;
  }

  return result;
}

unsigned __int8 *protobuf::FlowTest_Step::InternalSerializeWithCachedSizesToArray(protobuf::FlowTest_Step *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::TypeHandler>(this + 24, i);
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

      a2 = protobuf::FlowTest_KeyValueParameter::InternalSerializeWithCachedSizesToArray(v8, v10, a3);
    }
  }

  v14 = *(this + 4);
  if (v14)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v15 = *(this + 6);
    *a2 = 18;
    v16 = *(v15 + 5);
    if (v16 > 0x7F)
    {
      a2[1] = v16 | 0x80;
      v18 = v16 >> 7;
      if (v16 >> 14)
      {
        v17 = (a2 + 3);
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
        a2[2] = v18;
        v17 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v16;
      v17 = (a2 + 2);
    }

    a2 = protobuf::FlowTest_StartFrom::InternalSerializeWithCachedSizesToArray(v15, v17, a3);
    if ((v14 & 2) == 0)
    {
LABEL_15:
      if ((v14 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_38;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_15;
  }

  if (a2 >= *a3)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(this + 7);
  *a2 = 26;
  v22 = *(v21 + 5);
  if (v22 > 0x7F)
  {
    a2[1] = v22 | 0x80;
    v24 = v22 >> 7;
    if (v22 >> 14)
    {
      v23 = (a2 + 3);
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
      a2[2] = v24;
      v23 = (a2 + 3);
    }
  }

  else
  {
    a2[1] = v22;
    v23 = (a2 + 2);
  }

  a2 = protobuf::FlowTest_SendIntent::InternalSerializeWithCachedSizesToArray(v21, v23, a3);
  if ((v14 & 4) == 0)
  {
LABEL_16:
    if ((v14 & 8) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_48;
  }

LABEL_38:
  if (a2 >= *a3)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v27 = *(this + 8);
  *a2 = 34;
  v28 = *(v27 + 5);
  if (v28 > 0x7F)
  {
    a2[1] = v28 | 0x80;
    v30 = v28 >> 7;
    if (v28 >> 14)
    {
      v29 = (a2 + 3);
      do
      {
        *(v29 - 1) = v30 | 0x80;
        v31 = v30 >> 7;
        ++v29;
        v32 = v30 >> 14;
        v30 >>= 7;
      }

      while (v32);
      *(v29 - 1) = v31;
    }

    else
    {
      a2[2] = v30;
      v29 = (a2 + 3);
    }
  }

  else
  {
    a2[1] = v28;
    v29 = (a2 + 2);
  }

  a2 = protobuf::FlowTest_AssertResponse::InternalSerializeWithCachedSizesToArray(v27, v29, a3);
  if ((v14 & 8) != 0)
  {
LABEL_48:
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v33 = *(this + 9);
    *a2 = 42;
    v34 = *(v33 + 5);
    if (v34 > 0x7F)
    {
      a2[1] = v34 | 0x80;
      v36 = v34 >> 7;
      if (v34 >> 14)
      {
        v35 = (a2 + 3);
        do
        {
          *(v35 - 1) = v36 | 0x80;
          v37 = v36 >> 7;
          ++v35;
          v38 = v36 >> 14;
          v36 >>= 7;
        }

        while (v38);
        *(v35 - 1) = v37;
      }

      else
      {
        a2[2] = v36;
        v35 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v34;
      v35 = (a2 + 2);
    }

    a2 = protobuf::FlowTest_AssertCondition::InternalSerializeWithCachedSizesToArray(v33, v35, a3);
  }

LABEL_58:
  v39 = *(this + 1);
  if ((v39 & 1) == 0)
  {
    return a2;
  }

  v41 = v39 & 0xFFFFFFFFFFFFFFFELL;
  v42 = *(v41 + 23);
  if (v42 < 0)
  {
    v43 = *v41;
    v42 = *(v41 + 8);
  }

  else
  {
    v43 = v41;
  }

  if (*a3 - a2 >= v42)
  {
    v44 = v42;
    memcpy(a2, v43, v42);
    a2 += v44;
    return a2;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v43, v42, a2);
}

uint64_t protobuf::FlowTest_Step::ByteSizeLong(protobuf::FlowTest_Step *this)
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
      v7 = protobuf::FlowTest_KeyValueParameter::ByteSizeLong(v6);
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
  if ((v8 & 0xF) == 0)
  {
    goto LABEL_15;
  }

  if ((v8 & 1) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v13 = protobuf::FlowTest_SendIntent::ByteSizeLong(*(this + 7));
    v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
LABEL_13:
      if ((v8 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_19;
  }

  v12 = protobuf::FlowTest_StartFrom::ByteSizeLong(*(this + 6));
  v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  if ((v8 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_19:
  v14 = protobuf::FlowTest_AssertResponse::ByteSizeLong(*(this + 8));
  v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) != 0)
  {
LABEL_14:
    v9 = protobuf::FlowTest_AssertCondition::ByteSizeLong(*(this + 9));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  v10 = *(this + 1);
  if (v10)
  {
    v15 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v16 = *((v10 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v16 < 0)
    {
      v16 = *(v15 + 8);
    }

    v2 += v16;
  }

  *(this + 5) = v2;
  return v2;
}

void protobuf::FlowTest_Step::CheckTypeAndMergeFrom(protobuf::FlowTest_Step *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::FlowTest_Step::MergeFrom(this, lpsrc);
}

void protobuf::FlowTest_Step::MergeFrom(protobuf::FlowTest_Step *this, const protobuf::FlowTest_Step *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.cc", 1878);
    v4 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::TypeHandler>(this + 3, a2 + 24);
  v6 = *(a2 + 4);
  if ((v6 & 0xF) == 0)
  {
    return;
  }

  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    *(this + 4) |= 2u;
    v9 = *(this + 7);
    if (!v9)
    {
      v9 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_SendIntent>(0);
      *(this + 7) = v9;
    }

    if (*(a2 + 7))
    {
      v10 = *(a2 + 7);
    }

    else
    {
      v10 = &protobuf::_FlowTest_SendIntent_default_instance_;
    }

    protobuf::FlowTest_SendIntent::MergeFrom(v9, v10);
    if ((v6 & 4) == 0)
    {
LABEL_9:
      if ((v6 & 8) == 0)
      {
        return;
      }

      goto LABEL_29;
    }

    goto LABEL_23;
  }

  *(this + 4) |= 1u;
  started = *(this + 6);
  if (!started)
  {
    started = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_StartFrom>(0);
    *(this + 6) = started;
  }

  if (*(a2 + 6))
  {
    v8 = *(a2 + 6);
  }

  else
  {
    v8 = &protobuf::_FlowTest_StartFrom_default_instance_;
  }

  protobuf::FlowTest_StartFrom::MergeFrom(started, v8);
  if ((v6 & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((v6 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_23:
  *(this + 4) |= 4u;
  v11 = *(this + 8);
  if (!v11)
  {
    v11 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_AssertResponse>(0);
    *(this + 8) = v11;
  }

  if (*(a2 + 8))
  {
    v12 = *(a2 + 8);
  }

  else
  {
    v12 = &protobuf::_FlowTest_AssertResponse_default_instance_;
  }

  protobuf::FlowTest_AssertResponse::MergeFrom(v11, v12);
  if ((v6 & 8) != 0)
  {
LABEL_29:
    *(this + 4) |= 8u;
    v13 = *(this + 9);
    if (!v13)
    {
      v13 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_AssertCondition>(0);
      *(this + 9) = v13;
    }

    if (*(a2 + 9))
    {
      v14 = *(a2 + 9);
    }

    else
    {
      v14 = &protobuf::_FlowTest_AssertCondition_default_instance_;
    }

    protobuf::FlowTest_AssertCondition::MergeFrom(v13, v14);
  }
}

void sub_254D56578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::FlowTest_Step::CopyFrom(protobuf::FlowTest_Step *this, const protobuf::FlowTest_Step *a2)
{
  if (a2 != this)
  {
    protobuf::FlowTest_Step::Clear(this);

    protobuf::FlowTest_Step::MergeFrom(this, a2);
  }
}

void protobuf::FlowTest_Step::InternalSwap(protobuf::FlowTest_Step *this, protobuf::FlowTest_Step *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v17;
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

LABEL_10:
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v5);
      goto LABEL_7;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

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
LABEL_8:
  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 24), (a2 + 24));
  v13 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v13;
  v14 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v14;
  v15 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v15;
  v16 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v16;
}

protobuf::FlowTest_Test *protobuf::FlowTest_Test::FlowTest_Test(protobuf::FlowTest_Test *this)
{
  *(this + 8) = 0u;
  *this = &unk_28671BDE0;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_FlowTest_Test_flowtest_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FlowTest_Test_flowtest_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 8) = 0;
  return this;
}

void sub_254D5677C(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::FlowTest_Step>::~RepeatedPtrField((v1 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::FlowTest_Test *protobuf::FlowTest_Test::FlowTest_Test(protobuf::FlowTest_Test *this, const protobuf::FlowTest_Test *a2)
{
  *this = &unk_28671BDE0;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::FlowTest_Step>::TypeHandler>(this + 3, a2 + 24);
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

  *(this + 8) = *(a2 + 8);
  return this;
}

void sub_254D56878(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase((v2 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void protobuf::FlowTest_Test::~FlowTest_Test(protobuf::FlowTest_Test *this)
{
  *this = &unk_28671BDE0;
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

  google::protobuf::RepeatedPtrField<protobuf::FlowTest_Step>::~RepeatedPtrField(this + 3);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::FlowTest_Test::~FlowTest_Test(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::FlowTest_Test::default_instance(protobuf::FlowTest_Test *this)
{
  if (atomic_load_explicit(scc_info_FlowTest_Test_flowtest_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FlowTest_Test_flowtest_2eproto);
  }

  return &protobuf::_FlowTest_Test_default_instance_;
}

void protobuf::FlowTest_Test::Clear(protobuf::FlowTest_Test *this)
{
  v2 = *(this + 8);
  if ((v2 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v5 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  else if (v2)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      protobuf::FlowTest_Step::Clear(v4);
      --v2;
    }

    while (v2);
    *(this + 8) = 0;
  }

  v6 = *(this + 4);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      v7 = *(this + 6);
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v6 & 2) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_12;
      }

      *v7 = 0;
      *(v7 + 23) = 0;
    }

    if ((v6 & 2) == 0)
    {
      goto LABEL_17;
    }

LABEL_12:
    v8 = *(this + 7);
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
    }
  }

LABEL_17:
  if ((v6 & 0xC) != 0)
  {
    *(this + 8) = 0;
  }

  v10 = *(this + 8);
  v9 = this + 8;
  *(v9 + 2) = 0;
  if (v10)
  {

    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v9);
  }
}

void sub_254D56B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal *protobuf::FlowTest_Test::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v43 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v43, *(this + 23)) & 1) == 0)
  {
    while (1)
    {
      TagFallback = (v43 + 1);
      LODWORD(v7) = *v43;
      if ((*v43 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v7 = (v7 + (*TagFallback << 7) - 128);
      if ((*TagFallback & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v43, v7);
      v43 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_66;
      }

      LODWORD(v7) = v37;
LABEL_7:
      v8 = v7 >> 3;
      if (v7 >> 3 <= 2)
      {
        if (v8 == 1)
        {
          if (v7 != 10)
          {
            goto LABEL_52;
          }

          *(a1 + 16) |= 1u;
          v13 = *(a1 + 48);
          if (v13 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 48, &google::protobuf::internal::fixed_address_empty_string);
          }
        }

        else
        {
          if (v8 != 2 || v7 != 18)
          {
            goto LABEL_52;
          }

          *(a1 + 16) |= 2u;
          v13 = *(a1 + 56);
          if (v13 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 56, &google::protobuf::internal::fixed_address_empty_string);
          }
        }

        v35 = google::protobuf::internal::InlineGreedyStringParser(v13, TagFallback, this);
LABEL_57:
        v43 = v35;
        if (!v35)
        {
          goto LABEL_65;
        }

        goto LABEL_58;
      }

      if (v8 == 3)
      {
        if (v7 != 24)
        {
          goto LABEL_52;
        }

        v5 |= 4u;
        v15 = (TagFallback + 1);
        v14 = *TagFallback;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if ((v16 & 0x80000000) == 0)
        {
          v15 = (TagFallback + 2);
LABEL_28:
          v43 = v15;
          *(a1 + 64) = v14 != 0;
          goto LABEL_58;
        }

        v38 = google::protobuf::internal::VarintParseSlow64(TagFallback, v14);
        v43 = v38;
        *(a1 + 64) = v39 != 0;
        if (!v38)
        {
          goto LABEL_65;
        }

        goto LABEL_58;
      }

      if (v8 == 4)
      {
        if (v7 == 34)
        {
          v17 = (TagFallback - 1);
          while (1)
          {
            v18 = (v17 + 1);
            v43 = v18;
            v19 = *(a1 + 40);
            if (!v19)
            {
              break;
            }

            v20 = *(a1 + 32);
            v21 = *v19;
            if (v20 < *v19)
            {
              *(a1 + 32) = v20 + 1;
              v22 = *&v19[2 * v20 + 2];
              goto LABEL_38;
            }

            if (v21 == *(a1 + 36))
            {
              goto LABEL_36;
            }

LABEL_37:
            *v19 = v21 + 1;
            v22 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_Step>(*(a1 + 24));
            v23 = *(a1 + 32);
            v24 = *(a1 + 40) + 8 * v23;
            *(a1 + 32) = v23 + 1;
            *(v24 + 8) = v22;
            v18 = v43;
LABEL_38:
            v25 = *v18;
            if (*v18 < 0)
            {
              SizeFallback = google::protobuf::internal::ReadSizeFallback(v18, *v18);
              if (!SizeFallback)
              {
                goto LABEL_65;
              }

              v26 = SizeFallback;
              v25 = v28;
            }

            else
            {
              v26 = v18 + 1;
            }

            v29 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v26, v25);
            v30 = *(this + 22);
            v31 = __OFSUB__(v30--, 1);
            *(this + 22) = v30;
            if (v30 < 0 != v31)
            {
              goto LABEL_65;
            }

            v32 = v29;
            v17 = protobuf::FlowTest_Step::_InternalParse(v22, v26, this);
            if (!v17)
            {
              goto LABEL_65;
            }

            ++*(this + 22);
            if (*(this + 20))
            {
              goto LABEL_65;
            }

            v33 = *(this + 7) + v32;
            *(this + 7) = v33;
            v34 = *(this + 1) + (v33 & (v33 >> 31));
            *this = v34;
            v43 = v17;
            if (v34 <= v17 || *v17 != 34)
            {
              goto LABEL_58;
            }
          }

          v21 = *(a1 + 36);
LABEL_36:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v21 + 1);
          v19 = *(a1 + 40);
          v21 = *v19;
          goto LABEL_37;
        }

LABEL_52:
        if (v7)
        {
          v36 = (v7 & 7) == 4;
        }

        else
        {
          v36 = 1;
        }

        if (v36)
        {
          *(this + 20) = v7 - 1;
          goto LABEL_66;
        }

        v35 = google::protobuf::internal::UnknownFieldParse(v7, (a1 + 8), TagFallback, this);
        goto LABEL_57;
      }

      if (v8 != 5 || v7 != 40)
      {
        goto LABEL_52;
      }

      v5 |= 8u;
      v10 = (TagFallback + 1);
      LODWORD(v9) = *TagFallback;
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      v11 = *v10;
      v9 = v9 + (v11 << 7) - 128;
      if ((v11 & 0x80000000) == 0)
      {
        v10 = (TagFallback + 2);
LABEL_15:
        v43 = v10;
        *(a1 + 68) = v9;
        goto LABEL_58;
      }

      v40 = google::protobuf::internal::VarintParseSlow64(TagFallback, v9);
      v43 = v40;
      *(a1 + 68) = v41;
      if (!v40)
      {
LABEL_65:
        TagFallback = 0;
        goto LABEL_66;
      }

LABEL_58:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v43, *(this + 23)))
      {
        goto LABEL_2;
      }
    }

    TagFallback = (v43 + 2);
LABEL_6:
    v43 = TagFallback;
    goto LABEL_7;
  }

LABEL_2:
  TagFallback = v43;
LABEL_66:
  *(a1 + 16) |= v5;
  return TagFallback;
}

unsigned __int8 *protobuf::FlowTest_Test::InternalSerializeWithCachedSizesToArray(protobuf::FlowTest_Test *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, *(this + 7), v4);
  if ((v6 & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 64);
  *v4 = 24;
  v4[1] = v7;
  v4 += 2;
LABEL_10:
  v8 = *(this + 8);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v10 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::FlowTest_Step>::TypeHandler>(this + 24, i);
      *v4 = 34;
      v11 = *(v10 + 5);
      if (v11 > 0x7F)
      {
        v4[1] = v11 | 0x80;
        v13 = v11 >> 7;
        if (v11 >> 14)
        {
          v12 = v4 + 3;
          do
          {
            *(v12 - 1) = v13 | 0x80;
            v14 = v13 >> 7;
            ++v12;
            v15 = v13 >> 14;
            v13 >>= 7;
          }

          while (v15);
          *(v12 - 1) = v14;
        }

        else
        {
          v4[2] = v13;
          v12 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v11;
        v12 = v4 + 2;
      }

      v4 = protobuf::FlowTest_Step::InternalSerializeWithCachedSizesToArray(v10, v12, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v16 = *(this + 17);
    *v4 = 40;
    if (v16 > 0x7F)
    {
      v4[1] = v16 | 0x80;
      v17 = v16 >> 7;
      if (v16 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v17 | 0x80;
          v18 = v17 >> 7;
          ++v4;
          v19 = v17 >> 14;
          v17 >>= 7;
        }

        while (v19);
        *(v4 - 1) = v18;
      }

      else
      {
        v4[2] = v17;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v16;
      v4 += 2;
    }
  }

  v20 = *(this + 1);
  if ((v20 & 1) == 0)
  {
    return v4;
  }

  v22 = v20 & 0xFFFFFFFFFFFFFFFELL;
  v23 = *(v22 + 23);
  if (v23 < 0)
  {
    v24 = *v22;
    v23 = *(v22 + 8);
  }

  else
  {
    v24 = v22;
  }

  if (*a3 - v4 >= v23)
  {
    v25 = v23;
    memcpy(v4, v24, v23);
    v4 += v25;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v24, v23, v4);
}

uint64_t protobuf::FlowTest_Test::ByteSizeLong(protobuf::FlowTest_Test *this)
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
      v7 = protobuf::FlowTest_Step::ByteSizeLong(v6);
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
  if ((v8 & 0xF) != 0)
  {
    if (v8)
    {
      v9 = *(this + 6);
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v12 = *(this + 7);
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += (v8 >> 1) & 2;
    if ((v8 & 8) != 0)
    {
      v15 = *(this + 17);
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v15 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 11;
      }

      v2 += v17;
    }
  }

  v18 = *(this + 1);
  if (v18)
  {
    v20 = v18 & 0xFFFFFFFFFFFFFFFELL;
    v21 = *((v18 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v21 < 0)
    {
      v21 = *(v20 + 8);
    }

    v2 += v21;
  }

  *(this + 5) = v2;
  return v2;
}

void protobuf::FlowTest_Test::CheckTypeAndMergeFrom(protobuf::FlowTest_Test *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::FlowTest_Test::MergeFrom(this, lpsrc);
}

void protobuf::FlowTest_Test::MergeFrom(protobuf::FlowTest_Test *this, const protobuf::FlowTest_Test *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.cc", 2205);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::FlowTest_Step>::TypeHandler>(this + 3, a2 + 24);
  v6 = *(a2 + 4);
  if ((v6 & 0xF) != 0)
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
      *(this + 64) = *(a2 + 64);
    }

    if ((v6 & 8) != 0)
    {
      *(this + 17) = *(a2 + 17);
    }

    *(this + 4) |= v6;
  }
}

void sub_254D574F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::FlowTest_Test::CopyFrom(protobuf::FlowTest_Test *this, const protobuf::FlowTest_Test *a2)
{
  if (a2 != this)
  {
    protobuf::FlowTest_Test::Clear(this);

    protobuf::FlowTest_Test::MergeFrom(this, a2);
  }
}

void protobuf::FlowTest_Test::InternalSwap(protobuf::FlowTest_Test *this, protobuf::FlowTest_Test *a2)
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
  v23 = *(this + 64);
  *(this + 64) = *(a2 + 64);
  *(a2 + 64) = v23;
  v24 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v24;
}

protobuf::FlowTest *protobuf::FlowTest::FlowTest(protobuf::FlowTest *this)
{
  *(this + 8) = 0u;
  *this = &unk_28671BE70;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_FlowTest_flowtest_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FlowTest_flowtest_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

void sub_254D577D8(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::FlowTest_Test>::~RepeatedPtrField((v1 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::FlowTest *protobuf::FlowTest::FlowTest(protobuf::FlowTest *this, const protobuf::FlowTest *a2)
{
  *this = &unk_28671BE70;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::FlowTest_Test>::TypeHandler>(this + 3, a2 + 24);
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

void sub_254D578AC(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::FlowTest_Test>::~RepeatedPtrField((v2 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void protobuf::FlowTest::~FlowTest(protobuf::FlowTest *this)
{
  *this = &unk_28671BE70;
  v2 = *(this + 6);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  google::protobuf::RepeatedPtrField<protobuf::FlowTest_Test>::~RepeatedPtrField(this + 3);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::FlowTest::~FlowTest(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::FlowTest::default_instance(protobuf::FlowTest *this)
{
  if (atomic_load_explicit(scc_info_FlowTest_flowtest_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FlowTest_flowtest_2eproto);
  }

  return &protobuf::_FlowTest_default_instance_;
}

void protobuf::FlowTest::Clear(protobuf::FlowTest *this)
{
  v2 = *(this + 8);
  if ((v2 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v5 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  else if (v2)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      protobuf::FlowTest_Test::Clear(v4);
      --v2;
    }

    while (v2);
    *(this + 8) = 0;
  }

  if (*(this + 16))
  {
    v6 = *(this + 6);
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

  v8 = *(this + 8);
  v7 = this + 8;
  *(v7 + 2) = 0;
  if (v8)
  {

    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v7);
  }
}

void sub_254D57AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal *protobuf::FlowTest::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v29 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v29, *(this + 23));
  result = v29;
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
      v29 = result;
      if (!result)
      {
        return result;
      }

      v7 = result;
      LODWORD(v8) = v28;
LABEL_6:
      if (v8 >> 3 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_11;
        }

        result = (v7 - 1);
        while (2)
        {
          v10 = (result + 1);
          v29 = v10;
          v11 = *(a1 + 40);
          if (v11)
          {
            v12 = *(a1 + 32);
            v13 = *v11;
            if (v12 < *v11)
            {
              *(a1 + 32) = v12 + 1;
              v14 = *&v11[2 * v12 + 2];
              goto LABEL_23;
            }

            if (v13 == *(a1 + 36))
            {
LABEL_21:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v13 + 1);
              v11 = *(a1 + 40);
              v13 = *v11;
            }

            *v11 = v13 + 1;
            v14 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_Test>(*(a1 + 24));
            v15 = *(a1 + 32);
            v16 = *(a1 + 40) + 8 * v15;
            *(a1 + 32) = v15 + 1;
            *(v16 + 8) = v14;
            v10 = v29;
LABEL_23:
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
            result = protobuf::FlowTest_Test::_InternalParse(v14, v18, this);
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
            v29 = result;
            if (v25 <= result || *result != 18)
            {
              goto LABEL_37;
            }

            continue;
          }

          break;
        }

        v13 = *(a1 + 36);
        goto LABEL_21;
      }

      if (v8 >> 3 == 1 && v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v26 = *(a1 + 48);
        if (v26 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 48, &google::protobuf::internal::fixed_address_empty_string);
        }

        result = google::protobuf::internal::InlineGreedyStringParser(v26, v7, this);
        goto LABEL_36;
      }

LABEL_11:
      if (!v8 || (v8 & 7) == 4)
      {
        *(this + 20) = v8 - 1;
        return v7;
      }

      result = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), v7, this);
LABEL_36:
      v29 = result;
      if (!result)
      {
        return result;
      }

LABEL_37:
      v27 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v29, *(this + 23));
      result = v29;
      if (v27)
      {
        return result;
      }
    }

    v7 = result + 2;
LABEL_5:
    v29 = v7;
    goto LABEL_6;
  }

  return result;
}

unsigned __int8 *protobuf::FlowTest::InternalSerializeWithCachedSizesToArray(const void ***this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::FlowTest_Test>::TypeHandler>((this + 3), i);
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

      v4 = protobuf::FlowTest_Test::InternalSerializeWithCachedSizesToArray(v8, v10, a3);
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

uint64_t protobuf::FlowTest::ByteSizeLong(protobuf::FlowTest *this)
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
      v7 = protobuf::FlowTest_Test::ByteSizeLong(v6);
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

void protobuf::FlowTest::CheckTypeAndMergeFrom(protobuf::FlowTest *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::FlowTest::MergeFrom(this, lpsrc);
}

void protobuf::FlowTest::MergeFrom(protobuf::FlowTest *this, const protobuf::FlowTest *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/flowtest/flowtest.pb.cc", 2444);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::FlowTest_Test>::TypeHandler>(this + 3, a2 + 24);
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

void sub_254D5818C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::FlowTest::CopyFrom(protobuf::FlowTest *this, const protobuf::FlowTest *a2)
{
  if (a2 != this)
  {
    protobuf::FlowTest::Clear(this);

    protobuf::FlowTest::MergeFrom(this, a2);
  }
}

__n128 protobuf::FlowTest::InternalSwap(protobuf::FlowTest *this, protobuf::FlowTest *a2)
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

protobuf::FlowTest_KeyValueParameter *google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_KeyValueParameter>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x68uLL, google::protobuf::internal::arena_destruct_object<protobuf::FlowTest_KeyValueParameter>);
  protobuf::FlowTest_KeyValueParameter::FlowTest_KeyValueParameter(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::FlowTest_StartFrom *google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_StartFrom>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, google::protobuf::internal::arena_destruct_object<protobuf::FlowTest_StartFrom>);
  protobuf::FlowTest_StartFrom::FlowTest_StartFrom(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::FlowTest_SendIntent *google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_SendIntent>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x40uLL, google::protobuf::internal::arena_destruct_object<protobuf::FlowTest_SendIntent>);
  protobuf::FlowTest_SendIntent::FlowTest_SendIntent(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::FlowTest_AssertResponse *google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_AssertResponse>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x58uLL, google::protobuf::internal::arena_destruct_object<protobuf::FlowTest_AssertResponse>);
  protobuf::FlowTest_AssertResponse::FlowTest_AssertResponse(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::FlowTest_AssertCondition *google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_AssertCondition>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, google::protobuf::internal::arena_destruct_object<protobuf::FlowTest_AssertCondition>);
  protobuf::FlowTest_AssertCondition::FlowTest_AssertCondition(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::FlowTest_Step *google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_Step>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, google::protobuf::internal::arena_destruct_object<protobuf::FlowTest_Step>);
  protobuf::FlowTest_Step::FlowTest_Step(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::FlowTest_Test *google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_Test>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x48uLL, google::protobuf::internal::arena_destruct_object<protobuf::FlowTest_Test>);
  protobuf::FlowTest_Test::FlowTest_Test(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::FlowTest *google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, google::protobuf::internal::arena_destruct_object<protobuf::FlowTest>);
  protobuf::FlowTest::FlowTest(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v5 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  else if (v1)
  {
    v3 = (*(a1 + 16) + 8);
    do
    {
      v4 = *v3++;
      protobuf::FlowTest_KeyValueParameter::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_254D58A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::FlowTest_KeyValueParameter>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_KeyValueParameter>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::FlowTest_KeyValueParameter>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254D58BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedPtrField<protobuf::FlowTest_Step>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::FlowTest_Step>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::FlowTest_Step>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_Step>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::FlowTest_Step>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254D58D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedPtrField<protobuf::FlowTest_Test>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::FlowTest_Test>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::FlowTest_Test>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_Test>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::FlowTest_Test>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254D58F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void YAML::EmitterState::EmitterState(YAML::EmitterState *this)
{
  *this = 1;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  YAML::Setting<YAML::EMITTER_MANIP>::Setting(this + 8);
}

void sub_254D5920C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void YAML::EmitterState::~EmitterState(YAML::EmitterState *this)
{
  v2 = (this + 160);
  std::vector<std::unique_ptr<YAML::EmitterState::Group>>::__destroy_vector::operator()[abi:ne200100](&v2);
  YAML::SettingChanges::~SettingChanges(this + 17);
  YAML::SettingChanges::~SettingChanges(this + 14);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t YAML::EmitterState::SetLocalValue(uint64_t result, uint64_t a2)
{
  if ((a2 - 3) <= 1)
  {
    YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(result, result + 32, a2, 0);
  }

  if (a2 < 8 && ((0xE1u >> a2) & 1) != 0)
  {
    v2 = 36;
    goto LABEL_10;
  }

  if ((a2 - 8) < 3)
  {
    v2 = 40;
    goto LABEL_10;
  }

  if ((a2 - 11) < 3)
  {
    v2 = 48;
LABEL_10:
    YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(result, result + v2, a2, 0);
  }

  if ((a2 & 0xFFFFFFFE) == 0xE)
  {
    v3 = 44;
    goto LABEL_17;
  }

  if ((a2 - 16) < 3)
  {
    v3 = 52;
LABEL_17:
    YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(result, result + v3, a2, 0);
  }

  if ((a2 - 23) <= 1)
  {
    YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(result, result + 80, a2, 0);
  }

  if (a2 == 29 || !a2)
  {

    YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(result, result + 88, a2, 0);
  }

  return result;
}

BOOL YAML::EmitterState::SetOutputCharset(uint64_t a1, uint64_t a2, int a3)
{
  if ((a2 - 3) <= 1)
  {
    YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(a1, a1 + 32, a2, a3);
  }

  return (a2 - 3) < 2;
}

uint64_t YAML::EmitterState::SetStringFormat(uint64_t a1, uint64_t a2, int a3)
{
  result = 0;
  if (a2 <= 7 && ((1 << a2) & 0xE1) != 0)
  {
    YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(a1, a1 + 36, a2, a3);
  }

  return result;
}

BOOL YAML::EmitterState::SetBoolFormat(uint64_t a1, uint64_t a2, int a3)
{
  if ((a2 - 8) <= 2)
  {
    YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(a1, a1 + 40, a2, a3);
  }

  return (a2 - 8) < 3;
}

BOOL YAML::EmitterState::SetBoolCaseFormat(uint64_t a1, uint64_t a2, int a3)
{
  if ((a2 - 11) <= 2)
  {
    YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(a1, a1 + 48, a2, a3);
  }

  return (a2 - 11) < 3;
}

uint64_t YAML::EmitterState::SetBoolLengthFormat(uint64_t a1, uint64_t a2, int a3)
{
  if ((a2 & 0xFFFFFFFE) == 0xE)
  {
    YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(a1, a1 + 44, a2, a3);
  }

  return 0;
}

BOOL YAML::EmitterState::SetIntFormat(uint64_t a1, uint64_t a2, int a3)
{
  if ((a2 - 16) <= 2)
  {
    YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(a1, a1 + 52, a2, a3);
  }

  return (a2 - 16) < 3;
}

BOOL YAML::EmitterState::SetFlowType(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if ((a3 - 23) <= 1)
  {
    v4 = 84;
    if (a2 == 1)
    {
      v4 = 80;
    }

    YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(a1, a1 + v4, a3, a4);
  }

  return (a3 - 23) < 2;
}

uint64_t YAML::EmitterState::SetMapKeyFormat(uint64_t a1, uint64_t a2, int a3)
{
  if (a2 == 29 || !a2)
  {
    YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(a1, a1 + 88, a2, a3);
  }

  return 0;
}

uint64_t YAML::EmitterState::SetLongKey(uint64_t this)
{
  v1 = *(this + 168);
  if (*(this + 160) == v1)
  {
    __assert_rtn("SetLongKey", "emitterstate.cpp", 59, "!m_groups.empty()");
  }

  v2 = *(v1 - 8);
  if (*v2 != 2)
  {
    __assert_rtn("SetLongKey", "emitterstate.cpp", 64, "m_groups.back()->type == GroupType::Map");
  }

  *(v2 + 24) = 1;
  return this;
}

uint64_t YAML::EmitterState::ForceFlow(uint64_t this)
{
  v1 = *(this + 168);
  if (*(this + 160) == v1)
  {
    __assert_rtn("ForceFlow", "emitterstate.cpp", 69, "!m_groups.empty()");
  }

  *(*(v1 - 8) + 4) = 1;
  return this;
}

uint64_t YAML::EmitterState::StartedNode(uint64_t this)
{
  v1 = *(this + 168);
  if (*(this + 160) == v1)
  {
    ++*(this + 200);
  }

  else
  {
    v2 = *(v1 - 8);
    v3 = *(v2 + 16);
    *(v2 + 16) = v3 + 1;
    if (v3)
    {
      *(v2 + 24) = 0;
    }
  }

  *(this + 192) = 0;
  *(this + 194) = 0;
  return this;
}

uint64_t YAML::EmitterState::NextGroupType(uint64_t a1, int a2)
{
  v3 = *(a1 + 160);
  v2 = *(a1 + 168);
  if (a2 == 1)
  {
    if (v3 != v2 && *(*(v2 - 8) + 4) == 1)
    {
      return 3;
    }

    v5 = *(a1 + 80) == 24;
    v6 = 3;
  }

  else
  {
    if (v3 != v2 && *(*(v2 - 8) + 4) == 1)
    {
      return 5;
    }

    v5 = *(a1 + 84) == 24;
    v6 = 5;
  }

  if (v5)
  {
    return v6 + 1;
  }

  else
  {
    return v6;
  }
}

uint64_t YAML::EmitterState::GetFlowType(uint64_t a1, int a2)
{
  v2 = *(a1 + 168);
  if (*(a1 + 160) != v2 && *(*(v2 - 8) + 4) == 1)
  {
    return 23;
  }

  v4 = 84;
  if (a2 == 1)
  {
    v4 = 80;
  }

  return *(a1 + v4);
}

uint64_t YAML::EmitterState::StartedDoc(uint64_t this)
{
  *(this + 192) = 0;
  *(this + 194) = 0;
  return this;
}

uint64_t YAML::EmitterState::EndedDoc(uint64_t this)
{
  *(this + 192) = 0;
  *(this + 194) = 0;
  return this;
}

void *YAML::EmitterState::StartedScalar(uint64_t **this)
{
  YAML::EmitterState::StartedNode(this);

  return YAML::SettingChanges::clear(this + 14);
}

void YAML::EmitterState::StartedGroup(void *a1)
{
  YAML::EmitterState::StartedNode(a1);
  v2 = a1[21];
  if (a1[20] == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(*(v2 - 8) + 8);
  }

  a1[23] += v3;
  operator new();
}

void sub_254D59A2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<YAML::EmitterState::Group>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<YAML::EmitterState::Group>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    YAML::SettingChanges::~SettingChanges((v2 + 32));
    MEMORY[0x259C29D90](v2, 0x1020C409BBB1E6ELL);
  }

  return a1;
}

void YAML::EmitterState::EndedGroup(uint64_t a1, int a2)
{
  v5 = *(a1 + 160);
  v4 = *(a1 + 168);
  if (v5 == v4)
  {
    if (a2 == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "unexpected end sequence token");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "unexpected end map token");
    }

    *a1 = 0;
    std::string::operator=((a1 + 8), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = *(v4 - 8);
    v6 = (v4 - 8);
    *v6 = 0;
    v13 = v7;
    *(a1 + 168) = std::unique_ptr<YAML::EmitterState::Group>::~unique_ptr[abi:ne200100](v6);
    if (*v7 == a2)
    {
      std::unique_ptr<YAML::EmitterState::Group>::~unique_ptr[abi:ne200100](&v13);
      v8 = *(a1 + 168);
      if (*(a1 + 160) == v8)
      {
        v9 = 0;
        v10 = *(a1 + 184);
      }

      else
      {
        v9 = *(*(v8 - 8) + 8);
        v10 = *(a1 + 184);
        if (v10 < v9)
        {
          __assert_rtn("EndedGroup", "emitterstate.cpp", 175, "m_curIndent >= lastIndent");
        }
      }

      *(a1 + 184) = v10 - v9;
      for (i = *(a1 + 136); i != *(a1 + 144); ++i)
      {
        v12 = *i;
        (*(*v12 + 16))(v12);
      }

      YAML::SettingChanges::clear((a1 + 112));
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "unmatched group tag");
      *a1 = 0;
      std::string::operator=((a1 + 8), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      std::unique_ptr<YAML::EmitterState::Group>::~unique_ptr[abi:ne200100](&v13);
    }
  }
}

void sub_254D59C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t YAML::EmitterState::CurGroupNodeType(YAML::EmitterState *this)
{
  v1 = *(this + 21);
  if (*(this + 20) == v1)
  {
    return 0;
  }

  v2 = *(v1 - 8);
  v3 = *v2;
  v4 = v2[1] == 1;
  if (v2[1] == 1)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  if (v4)
  {
    v6 = 5;
  }

  else
  {
    v6 = 6;
  }

  if (v3 == 1)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

uint64_t YAML::EmitterState::CurGroupType(YAML::EmitterState *this)
{
  v1 = *(this + 21);
  if (*(this + 20) == v1)
  {
    return 0;
  }

  else
  {
    return **(v1 - 8);
  }
}

uint64_t YAML::EmitterState::CurGroupFlowType(YAML::EmitterState *this)
{
  v1 = *(this + 21);
  if (*(this + 20) == v1)
  {
    return 0;
  }

  else
  {
    return *(*(v1 - 8) + 4);
  }
}

uint64_t YAML::EmitterState::CurGroupIndent(YAML::EmitterState *this)
{
  v1 = *(this + 21);
  if (*(this + 20) == v1)
  {
    return 0;
  }

  else
  {
    return *(*(v1 - 8) + 8);
  }
}

uint64_t YAML::EmitterState::CurGroupChildCount(YAML::EmitterState *this)
{
  v1 = *(this + 21);
  if (*(this + 20) == v1)
  {
    v2 = this + 200;
  }

  else
  {
    v2 = (*(v1 - 8) + 16);
  }

  return *v2;
}

uint64_t YAML::EmitterState::CurGroupLongKey(YAML::EmitterState *this)
{
  v1 = *(this + 21);
  if (*(this + 20) == v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(v1 - 8) + 24);
  }

  return v2 & 1;
}

uint64_t YAML::EmitterState::LastIndent(YAML::EmitterState *this)
{
  if (*(this + 21) - *(this + 20) >= 9uLL)
  {
    return *(this + 23) - *(*(*(this + 21) - 16) + 8);
  }

  else
  {
    return 0;
  }
}

void *YAML::SettingChanges::clear(uint64_t **this)
{
  v3 = *this;
  for (i = this[1]; v3 != i; i = this[1])
  {
    v4 = *v3++;
    (*(*v4 + 16))(v4);
  }

  return std::vector<std::unique_ptr<YAML::SettingChangeBase>>::clear[abi:ne200100](this);
}

void YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 != 1)
  {
    if (!a4)
    {
      operator new();
    }

    __assert_rtn("_Set", "emitterstate.h", 206, "false");
  }

  operator new();
}

void sub_254D59F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL YAML::EmitterState::SetIndent(uint64_t a1, unint64_t a2, int a3)
{
  if (a2 >= 2)
  {
    YAML::EmitterState::_Set<unsigned long>(a1, a1 + 56, a2, a3);
  }

  return a2 > 1;
}

void YAML::EmitterState::_Set<unsigned long>(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 != 1)
  {
    if (!a4)
    {
      operator new();
    }

    __assert_rtn("_Set", "emitterstate.h", 206, "false");
  }

  operator new();
}

void sub_254D5A1AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t YAML::EmitterState::SetPreCommentIndent(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    YAML::EmitterState::_Set<unsigned long>(a1, a1 + 64, a2, a3);
  }

  return 0;
}

uint64_t YAML::EmitterState::SetPostCommentIndent(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    YAML::EmitterState::_Set<unsigned long>(a1, a1 + 72, a2, a3);
  }

  return 0;
}

BOOL YAML::EmitterState::SetFloatPrecision(uint64_t a1, unint64_t a2, int a3)
{
  if (a2 <= 9)
  {
    YAML::EmitterState::_Set<unsigned long>(a1, a1 + 96, a2, a3);
  }

  return a2 < 0xA;
}

BOOL YAML::EmitterState::SetDoublePrecision(uint64_t a1, unint64_t a2, int a3)
{
  if (a2 <= 0x11)
  {
    YAML::EmitterState::_Set<unsigned long>(a1, a1 + 104, a2, a3);
  }

  return a2 < 0x12;
}

void YAML::SettingChanges::~SettingChanges(uint64_t **this)
{
  YAML::SettingChanges::clear(this);
  v2 = this;
  std::vector<std::unique_ptr<YAML::SettingChangeBase>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<std::unique_ptr<YAML::SettingChangeBase>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<YAML::SettingChangeBase>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<YAML::SettingChangeBase>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::vector<std::unique_ptr<YAML::EmitterState::Group>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<YAML::EmitterState::Group>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void siri::intelligence::BehaviorResponse::BehaviorResponse(siri::intelligence::BehaviorResponse *this)
{
  *(this + 69) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 22) = 1;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *this = &unk_286718FE0;
  operator new();
}

void sub_254D5A6A0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  siri::intelligence::ResponseBase::~ResponseBase(v1);
  _Unwind_Resume(a1);
}

void siri::intelligence::BehaviorResponse::GetExpanded(siri::intelligence::BehaviorResponse *this@<X0>, siri::intelligence::ResponseBase *a2@<X8>)
{
  siri::intelligence::ResponseBase::ResponseBase(a2, this);
  *a2 = &unk_286718FE0;
  v5 = *(this + 16);
  *(a2 + 15) = *(this + 15);
  *(a2 + 16) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_254D5A8B8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  siri::intelligence::BehaviorResponse::~BehaviorResponse(v2);
  _Unwind_Resume(a1);
}

void siri::intelligence::BehaviorResponse::GetName(siri::intelligence::BehaviorResponse *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 15);
  if (*(v2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v2, *(v2 + 1));
  }

  else
  {
    v3 = *v2;
    a2->__r_.__value_.__r.__words[2] = *(v2 + 2);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }
}

void siri::intelligence::BehaviorResponse::SetParameters(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 120);
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 32);
  *(v2 + 24) = v4;
  *(v2 + 32) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t siri::intelligence::BehaviorResponse::GetParameters@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 120);
  v4 = *(v2 + 24);
  v3 = *(v2 + 32);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void siri::intelligence::BehaviorResponse::GetParameter(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 120);
  v6 = *(v4 + 24);
  v5 = *(v4 + 32);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6 || (v7 = std::__tree<std::string>::find<std::string>(v6 + 72, a2), v6 + 80 == v7))
  {
    *a3 = 0;
    a3[1] = 0;
    if (!v5)
    {
      return;
    }

    goto LABEL_8;
  }

  v8 = *(v7 + 64);
  *a3 = *(v7 + 56);
  a3[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  if (v5)
  {
LABEL_8:

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_254D5AA00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::BehaviorResponse::GetStringParameter(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  siri::intelligence::BehaviorResponse::GetParameter(a1, a2, &v7);
  if (v7)
  {
    (*(*v7 + 56))(v7);
  }

  else if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a4, *a3, *(a3 + 8));
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *a3;
    a4->__r_.__value_.__r.__words[2] = *(a3 + 16);
  }

  v6 = v8;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_254D5AAD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

double siri::intelligence::BehaviorResponse::GetNumberParameter(uint64_t a1, const void **a2, double a3)
{
  siri::intelligence::BehaviorResponse::GetParameter(a1, a2, &lpsrc);
  if (!lpsrc)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v4 = **lpsrc;
  if (!v5)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_7:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v5)
  {
    a3 = v5[9];
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a3;
}

uint64_t siri::intelligence::BehaviorResponse::GetBooleanParameter(uint64_t a1, const void **a2, char a3)
{
  siri::intelligence::BehaviorResponse::GetParameter(a1, a2, &lpsrc);
  if (!lpsrc)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v4 = **lpsrc;
  if (!v5)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_7:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v5)
  {
    a3 = v5[66];
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a3 & 1;
}

void std::__shared_ptr_emplace<siri::intelligence::BehaviorResponse::Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671C050;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void std::__shared_ptr_emplace<siri::intelligence::BehaviorResponse::Impl>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 47) < 0)
  {
    v3 = *(a1 + 24);

    operator delete(v3);
  }
}

double siri::intelligence::Expression::Impl::Impl(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return result;
}

{
  *a1 = a2;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return result;
}

void sub_254D5AEA8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Expression::Impl::EvaluateFunction(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, std::string *a4@<X8>)
{
  v185[1] = *MEMORY[0x277D85DE8];
  *v172 = 0;
  v173[0] = 0;
  v173[1] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v172, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v173[0] - *v172) >> 3);
  v8 = *(a2 + 23);
  if (*(a2 + 23) < 0)
  {
    if (a2[1] != 8)
    {
LABEL_12:
      v10 = v7 > 1;
      goto LABEL_13;
    }

    v9 = *a2;
  }

  else
  {
    v9 = a2;
    if (v8 != 8)
    {
      goto LABEL_12;
    }
  }

  v10 = v7 > 1;
  if (*v9 == 0x736E6961746E6F63 && v7 >= 2)
  {
    v11 = *(a1 + 16);
    if (!v11)
    {
      goto LABEL_319;
    }

    siri::intelligence::Memory::GetVariableAsStringVector(v11, *v172, &v170);
    if (*&v170.tm_sec != *&v170.tm_hour)
    {
      memset(&__p, 0, sizeof(__p));
      v12 = 0xAAAAAAAAAAAAAAABLL * ((*&v170.tm_hour - *&v170.tm_sec) >> 3);
      if (v12 < 0xAAAAAAAAAAAAAABLL)
      {
        *&v175.tm_isdst = &__p;
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&__p, v12);
      }

      std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
    }

    if (byte_280AF3AAF < 0)
    {
      std::string::__init_copy_ctor_external(a4, siri::intelligence::Memory::BOOLEAN_UNSET, *(&siri::intelligence::Memory::BOOLEAN_UNSET + 1));
    }

    else
    {
      *&a4->__r_.__value_.__l.__data_ = siri::intelligence::Memory::BOOLEAN_UNSET;
      a4->__r_.__value_.__r.__words[2] = unk_280AF3AA8;
    }

    *&v175.tm_sec = &v170;
    v20 = &v175;
LABEL_125:
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v20);
    goto LABEL_324;
  }

LABEL_13:
  if ((v8 & 0x80) != 0)
  {
    if (a2[1] != 6)
    {
LABEL_28:
      v18 = v173[0] != *v172;
      goto LABEL_29;
    }

    v13 = *a2;
  }

  else
  {
    v13 = a2;
    if (v8 != 6)
    {
      goto LABEL_28;
    }
  }

  v14 = *v13;
  v15 = *(v13 + 2);
  v17 = v14 != 1735288172 || v15 != 26740;
  v18 = v173[0] != *v172;
  if (!v17 && v173[0] != *v172)
  {
    v19 = *(a1 + 16);
    if (!v19)
    {
      std::to_string(a4, 0);
      goto LABEL_324;
    }

    siri::intelligence::Memory::GetVariableAsStringVector(v19, *v172, &v175);
    std::to_string(a4, -1431655765 * ((*&v175.tm_hour - *&v175.tm_sec) >> 3));
    *&v170.tm_sec = &v175;
    v20 = &v170;
    goto LABEL_125;
  }

LABEL_29:
  if ((v8 & 0x80) != 0)
  {
    v26 = a2[1];
    if (v26 <= 4)
    {
      if (v26 == 3)
      {
        if (**a2 == 24932 && *(*a2 + 2) == 121)
        {
          goto LABEL_146;
        }
      }

      else if (v26 == 4 && **a2 == 1953657203 && v18)
      {
        goto LABEL_121;
      }
    }

    else
    {
      switch(v26)
      {
        case 5:
          if (**a2 == 1920298856 && *(*a2 + 4) == 115)
          {
            goto LABEL_131;
          }

          break;
        case 6:
          v50 = *a2;
          v52 = **a2 == 1684955506 && *(*a2 + 4) == 28015;
          if (v52 && v18)
          {
            goto LABEL_139;
          }

          v61 = *v50;
          v62 = *(v50 + 2);
          v64 = v61 == 1683977065 && v62 == 31073;
          if (v64 && v18)
          {
LABEL_157:
            memset(&v175, 0, sizeof(v175));
            v65 = *(a1 + 24);
            v66 = *(a1 + 32);
            *&v170.tm_sec = time(0) + (v65 + v66);
            gmtime_r(&v170.tm_sec, &v175);
            v67 = siri::intelligence::StringToIntegralType<int>(*v172, 0);
            if (v175.tm_mday == v67)
            {
              v68 = &siri::intelligence::Memory::BOOLEAN_SET;
            }

            else
            {
              v68 = &siri::intelligence::Memory::BOOLEAN_UNSET;
            }

            v69 = &byte_280AF3E17;
            if (v175.tm_mday != v67)
            {
              v69 = &byte_280AF3AAF;
            }

            if ((*v69 & 0x80000000) == 0)
            {
              goto LABEL_276;
            }

            v70 = *v68;
            if (v175.tm_mday == v67)
            {
              v71 = &siri::intelligence::Memory::BOOLEAN_SET + 1;
            }

            else
            {
              v71 = &siri::intelligence::Memory::BOOLEAN_UNSET + 1;
            }

LABEL_280:
            std::string::__init_copy_ctor_external(a4, v70, *v71);
            goto LABEL_324;
          }

          break;
        case 7:
          v27 = *a2;
          if (**a2 == 1970170221 && *(*a2 + 3) == 1936028789)
          {
            goto LABEL_147;
          }

          if (*v27 == 1868785011 && *(v27 + 3) == 1935961711)
          {
            goto LABEL_149;
          }

          v30 = *v27;
          v31 = *(v27 + 3);
          if (v30 == 1853448548 && v31 == 1701667182)
          {
            goto LABEL_70;
          }

          break;
      }
    }

    if (a2[1] != 8 || **a2 != 0x68746E6F6D5F7369 || !v18)
    {
      if (a2[1] == 7)
      {
        v78 = **a2 == 2036298601 && *(*a2 + 3) == 1918985593;
        v79 = v78;
        if (v79 && v18)
        {
          goto LABEL_188;
        }
      }

      if (a2[1] != 10 || (**a2 == 0x656B6565775F7369 ? (v86 = *(*a2 + 8) == 25710) : (v86 = 0), !v86))
      {
        if (a2[1] != 10)
        {
          goto LABEL_206;
        }

        v37 = *a2;
        goto LABEL_202;
      }

LABEL_221:
      memset(&v175, 0, sizeof(v175));
      v98 = *(a1 + 24);
      v99 = *(a1 + 32);
      *&v170.tm_sec = time(0) + (v98 + v99);
      gmtime_r(&v170.tm_sec, &v175);
      if (v175.tm_wday == 6 || v175.tm_wday == 0)
      {
        v101 = "true";
      }

      else
      {
        v101 = "false";
      }

      std::string::basic_string[abi:ne200100]<0>(a4, v101);
      goto LABEL_324;
    }

LABEL_168:
    if ((atomic_load_explicit(&qword_280AF45F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF45F8))
    {
      std::string::basic_string[abi:ne200100]<0>(&v175, "jan");
      std::string::basic_string[abi:ne200100]<0>(&v175.tm_wday, "feb");
      std::string::basic_string[abi:ne200100]<0>(&v175.tm_zone, "mar");
      std::string::basic_string[abi:ne200100]<0>(v176, "apr");
      std::string::basic_string[abi:ne200100]<0>(v177, "may");
      std::string::basic_string[abi:ne200100]<0>(v178, "jun");
      std::string::basic_string[abi:ne200100]<0>(v179, "jul");
      std::string::basic_string[abi:ne200100]<0>(v180, "aug");
      std::string::basic_string[abi:ne200100]<0>(v181, "sep");
      std::string::basic_string[abi:ne200100]<0>(v182, "oct");
      std::string::basic_string[abi:ne200100]<0>(v183, "nov");
      std::string::basic_string[abi:ne200100]<0>(v184, "dec");
      qword_280AF4620 = 0;
      *algn_280AF4628 = 0;
      qword_280AF4630 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&qword_280AF4620, &v175, v185, 0xCuLL);
      v159 = 36;
      do
      {
        if (*(&v175 + v159 * 8 - 1) < 0)
        {
          operator delete(v173[v159]);
        }

        v159 -= 3;
      }

      while (v159 * 8);
      __cxa_atexit(std::vector<std::string>::~vector[abi:ne200100], &qword_280AF4620, &dword_254C81000);
      __cxa_guard_release(&qword_280AF45F8);
    }

    memset(&v175, 0, sizeof(v175));
    v72 = *(a1 + 24);
    v73 = *(a1 + 32);
    *&v170.tm_sec = time(0) + (v72 + v73);
    gmtime_r(&v170.tm_sec, &v175);
    v74 = *(*v172 + 23);
    if (v74 < 0)
    {
      v74 = *(*v172 + 8);
    }

    if (v74)
    {
      siri::intelligence::StringToLower(*v172, &__p);
      siri::intelligence::StringTrim(" \t\n\r", &__p, &v170);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v75 = 0;
      v76 = 0;
      while (!siri::intelligence::StringStartsWith(&v170, (qword_280AF4620 + v75)))
      {
        ++v76;
        v75 += 24;
        if (v76 == 12)
        {
          if (SHIBYTE(v170.tm_year) < 0)
          {
            v77 = **&v170.tm_sec;
            if (v77 <= 47)
            {
LABEL_267:
              LODWORD(v76) = -1;
              break;
            }
          }

          else
          {
            LOBYTE(v77) = v170.tm_sec;
            if (SLOBYTE(v170.tm_sec) < 48)
            {
              goto LABEL_267;
            }
          }

          if (v77 <= 0x31u)
          {
            LODWORD(v76) = siri::intelligence::StringToIntegralType<int>(&v170, 0);
            break;
          }

          goto LABEL_267;
        }
      }

      if (SHIBYTE(v170.tm_year) < 0)
      {
        operator delete(*&v170.tm_sec);
      }
    }

    else
    {
      LODWORD(v76) = -1;
    }

    if (v175.tm_mon == v76)
    {
      v68 = &siri::intelligence::Memory::BOOLEAN_SET;
    }

    else
    {
      v68 = &siri::intelligence::Memory::BOOLEAN_UNSET;
    }

    v116 = &byte_280AF3E17;
    if (v175.tm_mon != v76)
    {
      v116 = &byte_280AF3AAF;
    }

    if ((*v116 & 0x80000000) == 0)
    {
      goto LABEL_276;
    }

    v70 = *v68;
    if (v175.tm_mon == v76)
    {
      v71 = &siri::intelligence::Memory::BOOLEAN_SET + 1;
    }

    else
    {
      v71 = &siri::intelligence::Memory::BOOLEAN_UNSET + 1;
    }

    goto LABEL_280;
  }

  if (*(a2 + 23) <= 5u)
  {
    if (v8 != 3)
    {
      if (v8 != 4)
      {
        if (v8 != 5)
        {
          goto LABEL_206;
        }

        if (*a2 != 1920298856 || *(a2 + 4) != 115)
        {
          goto LABEL_206;
        }

LABEL_131:
        memset(&v175, 0, sizeof(v175));
        v48 = *(a1 + 24);
        v49 = *(a1 + 32);
        *&v170.tm_sec = time(0) + (v48 + v49);
        gmtime_r(&v170.tm_sec, &v175);
        std::to_string(a4, v175.tm_hour);
        goto LABEL_324;
      }

      if (*a2 != 1953657203 || !v18)
      {
        goto LABEL_206;
      }

LABEL_121:
      siri::intelligence::StringToDouble(*v172, 0);
      v44 = sqrt(v43);
      v45 = v43 <= 0.0;
      v46 = 0.0;
      if (!v45)
      {
        v46 = v44;
      }

      goto LABEL_424;
    }

    if (*a2 != 24932 || *(a2 + 2) != 121)
    {
      goto LABEL_206;
    }

LABEL_146:
    memset(&v175, 0, sizeof(v175));
    v55 = *(a1 + 24);
    v56 = *(a1 + 32);
    *&v170.tm_sec = time(0) + (v55 + v56);
    gmtime_r(&v170.tm_sec, &v175);
    std::to_string(a4, v175.tm_mday);
    goto LABEL_324;
  }

  if (*(a2 + 23) <= 7u)
  {
    if (v8 != 6)
    {
      if (*a2 != 1970170221 || *(a2 + 3) != 1936028789)
      {
        if (*a2 != 1868785011 || *(a2 + 3) != 1935961711)
        {
          if (*a2 != 1853448548 || *(a2 + 3) != 1701667182)
          {
            v25 = *a2 == 2036298601 && *(a2 + 3) == 1918985593;
            if (v25 && v18)
            {
LABEL_188:
              memset(&v175, 0, sizeof(v175));
              v80 = *(a1 + 24);
              v81 = *(a1 + 32);
              *&v170.tm_sec = time(0) + (v80 + v81);
              gmtime_r(&v170.tm_sec, &v175);
              v82 = siri::intelligence::StringToIntegralType<int>(*v172, 0) - 1900;
              if (v175.tm_year == v82)
              {
                v83 = &siri::intelligence::Memory::BOOLEAN_SET;
              }

              else
              {
                v83 = &siri::intelligence::Memory::BOOLEAN_UNSET;
              }

              v84 = &byte_280AF3E17;
              if (v175.tm_year != v82)
              {
                v84 = &byte_280AF3AAF;
              }

              if ((*v84 & 0x80000000) == 0)
              {
                *&a4->__r_.__value_.__l.__data_ = *v83;
                v85 = *(v83 + 2);
LABEL_322:
                a4->__r_.__value_.__r.__words[2] = v85;
                goto LABEL_324;
              }

              v70 = *v83;
              if (v175.tm_year == v82)
              {
                v71 = &siri::intelligence::Memory::BOOLEAN_SET + 1;
              }

              else
              {
                v71 = &siri::intelligence::Memory::BOOLEAN_UNSET + 1;
              }

              goto LABEL_280;
            }

            goto LABEL_206;
          }

LABEL_70:
          if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
          {
            std::string::basic_string[abi:ne200100]<0>(&v175, "Sunday");
            std::string::basic_string[abi:ne200100]<0>(&v175.tm_wday, "Monday");
            std::string::basic_string[abi:ne200100]<0>(&v175.tm_zone, "Tuesday");
            std::string::basic_string[abi:ne200100]<0>(v176, "Wednesday");
            std::string::basic_string[abi:ne200100]<0>(v177, "Thursday");
            std::string::basic_string[abi:ne200100]<0>(v178, "Friday");
            std::string::basic_string[abi:ne200100]<0>(v179, "Saturday");
            qword_280AF4608 = 0;
            unk_280AF4610 = 0;
            qword_280AF4618 = 0;
            std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&qword_280AF4608, &v175, v180, 7uLL);
            for (i = 0; i != -168; i -= 24)
            {
              if (v179[i + 23] < 0)
              {
                operator delete(*&v179[i]);
              }
            }

            __cxa_atexit(std::vector<std::string>::~vector[abi:ne200100], &qword_280AF4608, &dword_254C81000);
            __cxa_guard_release(&_MergedGlobals_14);
          }

          memset(&v175, 0, sizeof(v175));
          siri::intelligence::Utils::GetLocalTimeAtUtcOffset((*(a1 + 24) + *(a1 + 32)), &v175);
          v33 = qword_280AF4608 + 24 * v175.tm_wday;
          if (*(v33 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *v33, *(v33 + 8));
          }

          else
          {
            v34 = *v33;
            __p.__r_.__value_.__r.__words[2] = *(v33 + 16);
            *&__p.__r_.__value_.__l.__data_ = v34;
          }

          v117 = std::string::insert(&__p, 0, "");
          v118 = *&v117->__r_.__value_.__l.__data_;
          *&v170.tm_mon = *(&v117->__r_.__value_.__l + 2);
          *&v170.tm_sec = v118;
          v117->__r_.__value_.__l.__size_ = 0;
          v117->__r_.__value_.__r.__words[2] = 0;
          v117->__r_.__value_.__r.__words[0] = 0;
          v119 = std::string::append(&v170, "");
          v120 = *&v119->__r_.__value_.__l.__data_;
          a4->__r_.__value_.__r.__words[2] = v119->__r_.__value_.__r.__words[2];
          *&a4->__r_.__value_.__l.__data_ = v120;
          v119->__r_.__value_.__l.__size_ = 0;
          v119->__r_.__value_.__r.__words[2] = 0;
          v119->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v170.tm_year) < 0)
          {
            v96 = *&v170.tm_sec;
            goto LABEL_217;
          }

LABEL_218:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            v97 = __p.__r_.__value_.__r.__words[0];
LABEL_220:
            operator delete(v97);
            goto LABEL_324;
          }

          goto LABEL_324;
        }

LABEL_149:
        memset(&v175, 0, sizeof(v175));
        v59 = *(a1 + 24);
        v60 = *(a1 + 32);
        *&v170.tm_sec = time(0) + (v59 + v60);
        gmtime_r(&v170.tm_sec, &v175);
        std::to_string(a4, v175.tm_sec);
        goto LABEL_324;
      }

LABEL_147:
      memset(&v175, 0, sizeof(v175));
      v57 = *(a1 + 24);
      v58 = *(a1 + 32);
      *&v170.tm_sec = time(0) + (v57 + v58);
      gmtime_r(&v170.tm_sec, &v175);
      std::to_string(a4, v175.tm_min);
      goto LABEL_324;
    }

    v40 = *a2 == 1684955506 && *(a2 + 2) == 28015;
    if (!v40 || !v18)
    {
      v42 = *a2 == 1683977065 && *(a2 + 2) == 31073;
      if (!v42 || !v18)
      {
        goto LABEL_206;
      }

      goto LABEL_157;
    }

LABEL_139:
    v53 = siri::intelligence::StringToIntegralType<int>(*v172, 0);
    if (v53 < 1)
    {
      v46 = 0.0;
    }

    else
    {
      v46 = (erand48(&siri::intelligence::Utils::sRandomNumberGeneratorState) * v53);
    }

    goto LABEL_424;
  }

  if (v8 == 8)
  {
    if (*a2 != 0x68746E6F6D5F7369 || !v18)
    {
      goto LABEL_206;
    }

    goto LABEL_168;
  }

  if (v8 != 10)
  {
    goto LABEL_206;
  }

  v36 = *a2 == 0x656B6565775F7369 && *(a2 + 4) == 25710;
  v37 = a2;
  if (v36)
  {
    goto LABEL_221;
  }

LABEL_202:
  v87 = *v37;
  v88 = *(v37 + 4);
  if (v87 == 0x646B6565775F7369 && v88 == 31073)
  {
    memset(&v175, 0, sizeof(v175));
    siri::intelligence::Utils::GetLocalTimeAtUtcOffset((*(a1 + 24) + *(a1 + 32)), &v175);
    if ((v175.tm_wday - 1) >= 5)
    {
      v103 = "false";
    }

    else
    {
      v103 = "true";
    }

    std::string::basic_string[abi:ne200100]<0>(a4, v103);
    goto LABEL_324;
  }

LABEL_206:
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "month_name"))
  {
    memset(&v170, 0, sizeof(v170));
    siri::intelligence::Utils::GetLocalTimeAtUtcOffset((*(a1 + 24) + *(a1 + 32)), &v170);
    if ((atomic_load_explicit(&qword_280AF4600, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4600))
    {
      std::string::basic_string[abi:ne200100]<0>(&v175, "January");
      std::string::basic_string[abi:ne200100]<0>(&v175.tm_wday, "February");
      std::string::basic_string[abi:ne200100]<0>(&v175.tm_zone, "March");
      std::string::basic_string[abi:ne200100]<0>(v176, "April");
      std::string::basic_string[abi:ne200100]<0>(v177, "May");
      std::string::basic_string[abi:ne200100]<0>(v178, "June");
      std::string::basic_string[abi:ne200100]<0>(v179, "July");
      std::string::basic_string[abi:ne200100]<0>(v180, "August");
      std::string::basic_string[abi:ne200100]<0>(v181, "September");
      std::string::basic_string[abi:ne200100]<0>(v182, "October");
      std::string::basic_string[abi:ne200100]<0>(v183, "November");
      std::string::basic_string[abi:ne200100]<0>(v184, "December");
      qword_280AF4638 = 0;
      unk_280AF4640 = 0;
      qword_280AF4648 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&qword_280AF4638, &v175, v185, 0xCuLL);
      v158 = 36;
      do
      {
        if (*(&v175 + v158 * 8 - 1) < 0)
        {
          operator delete(v173[v158]);
        }

        v158 -= 3;
      }

      while (v158 * 8);
      __cxa_atexit(std::vector<std::string>::~vector[abi:ne200100], &qword_280AF4638, &dword_254C81000);
      __cxa_guard_release(&qword_280AF4600);
    }

    v90 = qword_280AF4638 + 24 * v170.tm_mon;
    if (*(v90 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v90, *(v90 + 8));
    }

    else
    {
      v91 = *v90;
      __p.__r_.__value_.__r.__words[2] = *(v90 + 16);
      *&__p.__r_.__value_.__l.__data_ = v91;
    }

    v92 = std::string::insert(&__p, 0, "");
    v93 = *&v92->__r_.__value_.__l.__data_;
    *&v175.tm_mon = *(&v92->__r_.__value_.__l + 2);
    *&v175.tm_sec = v93;
    v92->__r_.__value_.__l.__size_ = 0;
    v92->__r_.__value_.__r.__words[2] = 0;
    v92->__r_.__value_.__r.__words[0] = 0;
    v94 = std::string::append(&v175, "");
    v95 = *&v94->__r_.__value_.__l.__data_;
    a4->__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
    *&a4->__r_.__value_.__l.__data_ = v95;
    v94->__r_.__value_.__l.__size_ = 0;
    v94->__r_.__value_.__r.__words[2] = 0;
    v94->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v175.tm_year) < 0)
    {
      v96 = *&v175.tm_sec;
LABEL_217:
      operator delete(v96);
      goto LABEL_218;
    }

    goto LABEL_218;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "month"))
  {
    memset(&v175, 0, sizeof(v175));
    siri::intelligence::Utils::GetLocalTimeAtUtcOffset((*(a1 + 24) + *(a1 + 32)), &v175);
    std::to_string(a4, v175.tm_mon);
    goto LABEL_324;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "year"))
  {
    memset(&v175, 0, sizeof(v175));
    siri::intelligence::Utils::GetLocalTimeAtUtcOffset((*(a1 + 24) + *(a1 + 32)), &v175);
    std::to_string(a4, v175.tm_year + 1900);
    goto LABEL_324;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "date_reached") && v7 >= 3)
  {
    if (siri::intelligence::StringToIntegralType<int>(*v172, 0) <= 30 && siri::intelligence::StringToIntegralType<int>(*v172, 0) < 2)
    {
      v102 = 1;
    }

    else if (siri::intelligence::StringToIntegralType<int>(*v172, 0) > 30)
    {
      v102 = 31;
    }

    else
    {
      v102 = siri::intelligence::StringToIntegralType<int>(*v172, 0);
    }

    if (siri::intelligence::StringToIntegralType<int>((*v172 + 24), 0) <= 10 && siri::intelligence::StringToIntegralType<int>((*v172 + 24), 0) < 1)
    {
      v123 = 0;
    }

    else if (siri::intelligence::StringToIntegralType<int>((*v172 + 24), 0) > 10)
    {
      v123 = 11;
    }

    else
    {
      v123 = siri::intelligence::StringToIntegralType<int>((*v172 + 24), 0);
    }

    v124 = siri::intelligence::StringToIntegralType<int>((*v172 + 48), 0);
    memset(&v175, 0, sizeof(v175));
    siri::intelligence::Utils::GetLocalTimeAtUtcOffset((*(a1 + 24) + *(a1 + 32)), &v175);
    if (v124 > v175.tm_year + 1900)
    {
      goto LABEL_305;
    }

    if (v124 < v175.tm_year + 1900)
    {
LABEL_307:
      v125 = &siri::intelligence::Memory::BOOLEAN_SET;
LABEL_308:
      if (*(v125 + 23) < 0)
      {
        goto LABEL_323;
      }

      goto LABEL_321;
    }

    if (v123 <= v175.tm_mon)
    {
      if (v123 < v175.tm_mon)
      {
        goto LABEL_307;
      }

      if (v102 <= v175.tm_mday)
      {
        if (v102 >= v175.tm_mday && v7 >= 4)
        {
          v126 = siri::intelligence::StringToIntegralType<int>((*v172 + 72), 0);
          if (v126 > v175.tm_hour)
          {
            v125 = &siri::intelligence::Memory::BOOLEAN_UNSET;
            if (byte_280AF3AAF < 0)
            {
              std::string::__init_copy_ctor_external(a4, siri::intelligence::Memory::BOOLEAN_UNSET, *(&siri::intelligence::Memory::BOOLEAN_UNSET + 1));
              goto LABEL_324;
            }

            goto LABEL_321;
          }
        }

        goto LABEL_307;
      }
    }

LABEL_305:
    v125 = &siri::intelligence::Memory::BOOLEAN_UNSET;
    goto LABEL_308;
  }

  v104 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "time_reached");
  if (v104 && v18)
  {
    SecsSinceEpoch = siri::intelligence::Utils::GetSecsSinceEpoch(v104);
    v106 = *(a1 + 32);
    v107 = siri::intelligence::StringToIntegralType<unsigned long long>(*v172, 0);
    v108 = (SecsSinceEpoch + v106);
    if (v107 <= v108)
    {
      v68 = &siri::intelligence::Memory::BOOLEAN_SET;
    }

    else
    {
      v68 = &siri::intelligence::Memory::BOOLEAN_UNSET;
    }

    v109 = &byte_280AF3AAF;
    if (v107 <= v108)
    {
      v109 = &byte_280AF3E17;
    }

    if (*v109 < 0)
    {
      if (v107 <= v108)
      {
        v110 = &siri::intelligence::Memory::BOOLEAN_SET + 1;
      }

      else
      {
        v110 = &siri::intelligence::Memory::BOOLEAN_UNSET + 1;
      }

      std::string::__init_copy_ctor_external(a4, *v68, *v110);
      goto LABEL_324;
    }

LABEL_276:
    *&a4->__r_.__value_.__l.__data_ = *v68;
    v85 = *(v68 + 2);
    goto LABEL_322;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "is_platform") && v18)
  {
    siri::intelligence::StringToLower(*v172, &v175);
    siri::intelligence::StringToLower(a1 + 48, &v170);
    v111 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v175, &v170);
    v112 = &siri::intelligence::Memory::BOOLEAN_UNSET;
    if (v111)
    {
      v113 = &siri::intelligence::Memory::BOOLEAN_SET;
    }

    else
    {
      v113 = &siri::intelligence::Memory::BOOLEAN_UNSET;
    }

    v114 = &byte_280AF3E17;
    if (!v111)
    {
      v114 = &byte_280AF3AAF;
    }

    if (*v114 < 0)
    {
      v115 = *v113;
      if (v111)
      {
        v112 = &siri::intelligence::Memory::BOOLEAN_SET;
      }

LABEL_263:
      std::string::__init_copy_ctor_external(a4, v115, *(v112 + 1));
      goto LABEL_293;
    }

    goto LABEL_292;
  }

  if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "is_device") || !v18)
  {
    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "is_purchased") && v18)
    {
      goto LABEL_319;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "is_set") && v18)
    {
      v128 = *(a1 + 16);
      if (v128 && siri::intelligence::Memory::HasVariable(v128, *v172))
      {
        v125 = &siri::intelligence::Memory::BOOLEAN_SET;
LABEL_320:
        if (*(v125 + 23) < 0)
        {
LABEL_323:
          std::string::__init_copy_ctor_external(a4, *v125, *(v125 + 1));
          goto LABEL_324;
        }

LABEL_321:
        *&a4->__r_.__value_.__l.__data_ = *v125;
        v85 = *(v125 + 2);
        goto LABEL_322;
      }

LABEL_319:
      v125 = &siri::intelligence::Memory::BOOLEAN_UNSET;
      goto LABEL_320;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "input_chosen") && v10)
    {
      v129 = *(a1 + 8);
      if (!v129)
      {
        goto LABEL_319;
      }

      siri::intelligence::FlowGraph::GetInputGroup(v129, *v172, &v168);
      siri::intelligence::FlowGraph::GetInputGroupLastIntent(*(a1 + 8), *v172, &v166);
      if (!v166)
      {
        if (byte_280AF3AAF < 0)
        {
          std::string::__init_copy_ctor_external(a4, siri::intelligence::Memory::BOOLEAN_UNSET, *(&siri::intelligence::Memory::BOOLEAN_UNSET + 1));
        }

        else
        {
          *&a4->__r_.__value_.__l.__data_ = siri::intelligence::Memory::BOOLEAN_UNSET;
          a4->__r_.__value_.__r.__words[2] = unk_280AF3AA8;
        }

        goto LABEL_406;
      }

      memset(&v175, 0, 24);
      std::vector<std::shared_ptr<siri::intelligence::IntentReference>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::IntentReference>*,std::shared_ptr<siri::intelligence::IntentReference>*>(&v175, *(v168 + 72), *(v168 + 80), (*(v168 + 80) - *(v168 + 72)) >> 4);
      v130 = *&v175.tm_sec;
      if (*&v175.tm_sec == *&v175.tm_hour)
      {
        v132 = 0;
      }

      else
      {
        v131 = 0;
        v132 = 0;
        do
        {
          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*v130, (*v172 + 24)))
          {
            v131 = *v130;
            v133 = v130[1];
            if (v133)
            {
              atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v132)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v132);
            }

            v132 = v133;
          }

          v130 += 2;
        }

        while (v130 != *&v175.tm_hour);
        if (v131)
        {
          memset(&v170, 0, 24);
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v170, *(v166 + 48), *(v166 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(v166 + 56) - *(v166 + 48)) >> 3));
          std::set<std::string>::set[abi:ne200100]<std::__wrap_iter<std::string*>>(&__p, *&v170.tm_sec, *&v170.tm_hour);
          v163 = 0;
          v164 = 0;
          v165 = 0;
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v163, v131[6], v131[7], 0xAAAAAAAAAAAAAAABLL * ((v131[7] - v131[6]) >> 3));
          v134 = v163;
          if (v163 == v164)
          {
LABEL_348:
            v135 = &siri::intelligence::Memory::BOOLEAN_SET;
            if (byte_280AF3E17 < 0)
            {
              std::string::__init_copy_ctor_external(a4, siri::intelligence::Memory::BOOLEAN_SET, *(&siri::intelligence::Memory::BOOLEAN_SET + 1));
LABEL_402:
              v174 = &v163;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v174);
              std::__tree<std::string>::destroy(&__p, __p.__r_.__value_.__l.__size_);
              __p.__r_.__value_.__r.__words[0] = &v170;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
LABEL_403:
              if (v132)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v132);
              }

              *&v170.tm_sec = &v175;
              std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v170);
LABEL_406:
              if (v167)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v167);
              }

              v154 = v169;
              if (!v169)
              {
                goto LABEL_324;
              }

              goto LABEL_421;
            }
          }

          else
          {
            while (&__p.__r_.__value_.__r.__words[1] != std::__tree<std::string>::find<std::string>(&__p, v134))
            {
              v134 += 3;
              if (v134 == v164)
              {
                goto LABEL_348;
              }
            }

            v135 = &siri::intelligence::Memory::BOOLEAN_UNSET;
            if (byte_280AF3AAF < 0)
            {
              std::string::__init_copy_ctor_external(a4, siri::intelligence::Memory::BOOLEAN_UNSET, *(&siri::intelligence::Memory::BOOLEAN_UNSET + 1));
              goto LABEL_402;
            }
          }

          *&a4->__r_.__value_.__l.__data_ = *v135;
          a4->__r_.__value_.__r.__words[2] = *(v135 + 2);
          goto LABEL_402;
        }
      }

      if (byte_280AF3AAF < 0)
      {
        std::string::__init_copy_ctor_external(a4, siri::intelligence::Memory::BOOLEAN_UNSET, *(&siri::intelligence::Memory::BOOLEAN_UNSET + 1));
      }

      else
      {
        *&a4->__r_.__value_.__l.__data_ = siri::intelligence::Memory::BOOLEAN_UNSET;
        a4->__r_.__value_.__r.__words[2] = unk_280AF3AA8;
      }

      goto LABEL_403;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "input_timestamp") && v10)
    {
      v136 = *(a1 + 8);
      if (!v136)
      {
        goto LABEL_319;
      }

      siri::intelligence::FlowGraph::GetInputGroup(v136, *v172, &v163);
      if (!v163)
      {
        if (byte_280AF3AAF < 0)
        {
          std::string::__init_copy_ctor_external(a4, siri::intelligence::Memory::BOOLEAN_UNSET, *(&siri::intelligence::Memory::BOOLEAN_UNSET + 1));
        }

        else
        {
          *&a4->__r_.__value_.__l.__data_ = siri::intelligence::Memory::BOOLEAN_UNSET;
          a4->__r_.__value_.__r.__words[2] = unk_280AF3AA8;
        }

        goto LABEL_420;
      }

      memset(&v175, 0, 24);
      std::vector<std::shared_ptr<siri::intelligence::IntentReference>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::IntentReference>*,std::shared_ptr<siri::intelligence::IntentReference>*>(&v175, *(v163 + 72), *(v163 + 80), (*(v163 + 80) - *(v163 + 72)) >> 4);
      v137 = *&v175.tm_sec;
      if (*&v175.tm_sec == *&v175.tm_hour)
      {
        v139 = 0;
      }

      else
      {
        v138 = 0;
        v139 = 0;
        do
        {
          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*v137, (*v172 + 24)))
          {
            v138 = *v137;
            v140 = v137[1];
            if (v140)
            {
              atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v139)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v139);
            }

            v139 = v140;
          }

          v137 += 2;
        }

        while (v137 != *&v175.tm_hour);
        if (v138)
        {
          memset(&v170, 0, 24);
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v170, v138[6], v138[7], 0xAAAAAAAAAAAAAAABLL * ((v138[7] - v138[6]) >> 3));
          std::set<std::string>::set[abi:ne200100]<std::__wrap_iter<std::string*>>(&__p, *&v170.tm_sec, *&v170.tm_hour);
          v141 = *&v175.tm_sec;
          if (*&v175.tm_sec == *&v175.tm_hour)
          {
            v142 = 0.0;
          }

          else
          {
            v142 = 0.0;
            do
            {
              v143 = *v141;
              for (j = *(*v141 + 48); j != *(v143 + 56); j += 3)
              {
                if (&__p.__r_.__value_.__r.__words[1] == std::__tree<std::string>::find<std::string>(&__p, j))
                {
                  goto LABEL_375;
                }

                v143 = *v141;
              }

              v145 = *(a1 + 8);
              v146 = v141[1];
              v162[0] = v143;
              v162[1] = v146;
              if (v146)
              {
                atomic_fetch_add_explicit(&v146->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              IntentReferenceLastTimestamp = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v145, v162);
              if (v146)
              {
                v148 = IntentReferenceLastTimestamp;
                std::__shared_weak_count::__release_shared[abi:ne200100](v146);
                IntentReferenceLastTimestamp = v148;
              }

              if (IntentReferenceLastTimestamp > v142)
              {
                v142 = IntentReferenceLastTimestamp;
              }

LABEL_375:
              v141 += 2;
            }

            while (v141 != *&v175.tm_hour);
          }

          siri::intelligence::StringFromDouble(0xFFFFFFFFLL, v142, a4);
          std::__tree<std::string>::destroy(&__p, __p.__r_.__value_.__l.__size_);
          __p.__r_.__value_.__r.__words[0] = &v170;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
          goto LABEL_417;
        }
      }

      if (byte_280AF3AAF < 0)
      {
        std::string::__init_copy_ctor_external(a4, siri::intelligence::Memory::BOOLEAN_UNSET, *(&siri::intelligence::Memory::BOOLEAN_UNSET + 1));
      }

      else
      {
        *&a4->__r_.__value_.__l.__data_ = siri::intelligence::Memory::BOOLEAN_UNSET;
        a4->__r_.__value_.__r.__words[2] = unk_280AF3AA8;
      }

LABEL_417:
      if (v139)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v139);
      }

      *&v170.tm_sec = &v175;
      std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v170);
LABEL_420:
      v154 = v164;
      if (!v164)
      {
        goto LABEL_324;
      }

      goto LABEL_421;
    }

    v149 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "time_since");
    if (!v149 || !v18 || !*(a1 + 8))
    {
      goto LABEL_319;
    }

    v150 = siri::intelligence::Utils::GetSecsSinceEpoch(v149) + *(a1 + 32);
    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*v172, "session"))
    {
      siri::intelligence::StringFromDouble(0xFFFFFFFFLL, v150 - *(**(a1 + 8) + 304), a4);
      goto LABEL_324;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*v172, "response") && v10)
    {
      siri::intelligence::FlowGraph::GetResponse(*(a1 + 8), *v172 + 24, &v175);
      v151 = *(a1 + 8);
      v152 = *&v175.tm_hour;
      v161[0] = *&v175.tm_sec;
      v161[1] = *&v175.tm_hour;
      if (*&v175.tm_hour)
      {
        atomic_fetch_add_explicit((*&v175.tm_hour + 8), 1uLL, memory_order_relaxed);
      }

      ResponseLastTimestamp = siri::intelligence::FlowGraph::GetResponseLastTimestamp(v151, v161);
      if (v152)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v152);
      }

      siri::intelligence::StringFromDouble(0xFFFFFFFFLL, v150 - ResponseLastTimestamp, a4);
      if (!v152)
      {
        goto LABEL_324;
      }

      v154 = v152;
LABEL_421:
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
      goto LABEL_324;
    }

    v155 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*v172, "interaction");
    if (v155)
    {
      v46 = 0.0;
      if (*(a1 + 40) != 0.0)
      {
        v156 = siri::intelligence::Utils::GetSecsSinceEpoch(v155);
        siri::intelligence::StringFromDouble(0xFFFFFFFFLL, v156 - *(a1 + 40), a4);
        goto LABEL_324;
      }
    }

    else
    {
      if (!siri::intelligence::StringIsANumber(*v172))
      {
        goto LABEL_319;
      }

      siri::intelligence::StringToDouble(*v172, 0);
      v46 = v150 - v157;
    }

LABEL_424:
    siri::intelligence::StringFromDouble(0xFFFFFFFFLL, v46, a4);
    goto LABEL_324;
  }

  siri::intelligence::StringToLower(a1 + 72, &v175);
  siri::intelligence::StringToLower(*v172, &v170);
  v121 = siri::intelligence::StringContains(&v175, &v170);
  v112 = &siri::intelligence::Memory::BOOLEAN_UNSET;
  if (v121)
  {
    v113 = &siri::intelligence::Memory::BOOLEAN_SET;
  }

  else
  {
    v113 = &siri::intelligence::Memory::BOOLEAN_UNSET;
  }

  v122 = &byte_280AF3E17;
  if (!v121)
  {
    v122 = &byte_280AF3AAF;
  }

  if (*v122 < 0)
  {
    v115 = *v113;
    if (v121)
    {
      v112 = &siri::intelligence::Memory::BOOLEAN_SET;
    }

    goto LABEL_263;
  }

LABEL_292:
  *&a4->__r_.__value_.__l.__data_ = *v113;
  a4->__r_.__value_.__r.__words[2] = *(v113 + 2);
LABEL_293:
  if (SHIBYTE(v170.tm_year) < 0)
  {
    operator delete(*&v170.tm_sec);
  }

  if (SHIBYTE(v175.tm_year) < 0)
  {
    v97 = *&v175.tm_sec;
    goto LABEL_220;
  }

LABEL_324:
  *&v175.tm_sec = v172;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v175);
  v127 = *MEMORY[0x277D85DE8];
}