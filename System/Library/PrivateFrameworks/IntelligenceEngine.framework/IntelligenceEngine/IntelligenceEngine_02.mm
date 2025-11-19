void sub_254CA9788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  YAML::Node::~Node((v39 - 160));
  __p = (v39 - 104);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::arena_destruct_object<std::string>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void siri::intelligence::TestCase::~TestCase(void **this)
{
  v2 = this + 16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 13;
  std::vector<protobuf::FlowTest_Step>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void siri::intelligence::ValidationResults::~ValidationResults(char **this)
{
  std::__tree<std::string>::destroy((this + 3), this[4]);
  v2 = this;
  std::vector<siri::intelligence::ValidationResult>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void siri::intelligence::WriteFlowTest_KeyValueParameter(siri::intelligence *this, const protobuf::FlowTest_KeyValueParameter *a2, YAML::Emitter *a3)
{
  if (**a2 == 1)
  {
    YAML::Emitter::EmitBeginMap(a2);
  }

  v5 = *(this + 4);
  if (v5)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "key");
    YAML::Emitter::Write(a2, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    YAML::Emitter::Write(a2, *(this + 9));
    v5 = *(this + 4);
  }

  if ((v5 & 4) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "valueNumber");
    YAML::Emitter::Write(a2, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    YAML::Emitter::WriteStreamable<double>(a2, *(this + 11));
    v5 = *(this + 4);
  }

  if ((v5 & 8) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "valueBoolean");
    YAML::Emitter::Write(a2, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    YAML::Emitter::Write(a2, *(this + 96));
    v5 = *(this + 4);
  }

  if ((v5 & 2) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "valueString");
    YAML::Emitter::Write(a2, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    YAML::Emitter::Write(a2, *(this + 10));
  }

  if (*(this + 8) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "valueArray");
    YAML::Emitter::Write(a2, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = *(this + 8);
    if (v6 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v6 = *(this + 8);
      }

      if (v6 < 1)
      {
        goto LABEL_29;
      }
    }

    for (i = 0; i < v10; ++i)
    {
      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::TypeHandler>(this + 24, i);
      siri::intelligence::WriteFlowTest_KeyValueParameter(v8, a2, v9);
      v10 = *(this + 8);
    }

    if (v10 != 1)
    {
LABEL_29:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if (*(this + 14) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "valueDictionary");
    YAML::Emitter::Write(a2, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    v11 = *(this + 14);
    if (v11 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v11 = *(this + 14);
      }

      if (v11 < 1)
      {
        goto LABEL_41;
      }
    }

    for (j = 0; j < v15; ++j)
    {
      v13 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::TypeHandler>(this + 48, j);
      siri::intelligence::WriteFlowTest_KeyValueParameter(v13, a2, v14);
      v15 = *(this + 14);
    }

    if (v15 != 1)
    {
LABEL_41:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if (**a2 == 1)
  {
    YAML::Emitter::EmitEndMap(a2);
  }
}

void sub_254CA9CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *YAML::Emitter::WriteStreamable<double>(uint64_t *a1, double a2)
{
  if (**a1 != 1)
  {
    return a1;
  }

  YAML::Emitter::PrepareNode(a1, 2u);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v11);
  *(&v11[2] + *(v11[0] - 24)) = *(*a1 + 104);
  if (a2 == INFINITY)
  {
    v4 = ".inf";
    v5 = 4;
  }

  else
  {
    if (a2 != -INFINITY)
    {
      MEMORY[0x259C29BB0](&v12, a2);
      goto LABEL_7;
    }

    v4 = "-.inf";
    v5 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, v4, v5);
LABEL_7:
  std::stringbuf::str();
  YAML::ostream_wrapper::write((a1 + 1), &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  v6 = *a1;
  YAML::EmitterState::StartedNode(*a1);
  YAML::SettingChanges::clear((v6 + 112));
  v11[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v12 = v7;
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  MEMORY[0x259C29CE0](&v16);
  return a1;
}

void sub_254CA9F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::FlowTest_KeyValueParameter>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CAA034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::FlowTest_Step>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CAA114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *YAML::Emitter::WriteIntegralType<int>(uint64_t *a1, uint64_t a2)
{
  if (**a1 == 1)
  {
    YAML::Emitter::PrepareNode(a1, 2u);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v9);
    YAML::Emitter::PrepareIntegralStream(a1, v9);
    MEMORY[0x259C29BC0](&v10, a2);
    std::stringbuf::str();
    YAML::ostream_wrapper::write((a1 + 1), &__p);
    if (v8 < 0)
    {
      operator delete(__p);
    }

    v4 = *a1;
    YAML::EmitterState::StartedNode(*a1);
    YAML::SettingChanges::clear((v4 + 112));
    v9[0] = *MEMORY[0x277D82818];
    v5 = *(MEMORY[0x277D82818] + 72);
    *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v10 = v5;
    v11 = MEMORY[0x277D82878] + 16;
    if (v13 < 0)
    {
      operator delete(v12[7].__locale_);
    }

    v11 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v12);
    std::iostream::~basic_iostream();
    MEMORY[0x259C29CE0](&v14);
  }

  return a1;
}

void sub_254CAA320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::FlowTest_Test>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CAA410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void std::vector<siri::intelligence::TestCase>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<siri::intelligence::TestCase>>::destroy[abi:ne200100]<siri::intelligence::TestCase,0>(a1, i))
  {
    i -= 152;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<siri::intelligence::TestCase>>::destroy[abi:ne200100]<siri::intelligence::TestCase,0>(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 128);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a2 + 104);
  std::vector<protobuf::FlowTest_Step>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void std::allocator<siri::intelligence::TestParseError>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_254CAA5C8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<protobuf::FlowTest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867191B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void std::vector<siri::intelligence::ValidationResult>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 64;
        std::allocator<siri::intelligence::ValidationResult>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<siri::intelligence::ValidationResult>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

uint64_t std::vector<siri::intelligence::TestParseError>::__emplace_back_slow_path<siri::intelligence::TestParseError>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<siri::intelligence::TestParseError>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::TestParseError>>(a1, v6);
  }

  v7 = 48 * v2;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v9;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v10 = *a1;
  v11 = a1[1];
  v12 = v7 + *a1 - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = v7 + *a1 - v11;
    do
    {
      v15 = *v13;
      *(v14 + 16) = *(v13 + 16);
      *v14 = v15;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      *v13 = 0;
      v16 = *(v13 + 24);
      *(v14 + 40) = *(v13 + 40);
      *(v14 + 24) = v16;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      *(v13 + 24) = 0;
      v13 += 48;
      v14 += 48;
    }

    while (v13 != v11);
    do
    {
      std::allocator<siri::intelligence::TestParseError>::destroy[abi:ne200100](a1, v10);
      v10 += 48;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  v17 = v7 + 48;
  *a1 = v12;
  a1[1] = v17;
  v18 = a1[2];
  a1[2] = 0;
  v20[2] = v10;
  v20[3] = v18;
  v20[0] = v10;
  v20[1] = v10;
  std::__split_buffer<siri::intelligence::TestParseError>::~__split_buffer(v20);
  return v17;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::TestParseError>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<siri::intelligence::TestParseError>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(a1 + 32);
    *(a1 + 16) = i - 48;
    std::allocator<siri::intelligence::TestParseError>::destroy[abi:ne200100](v4, i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void std::vector<protobuf::FlowTest_Step>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 80;
      v7 = v4 - 80;
      v8 = v4 - 80;
      do
      {
        v9 = *v8;
        v8 -= 80;
        (*v9)(v7);
        v6 -= 80;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 std::allocator_traits<std::allocator<siri::intelligence::TestCase>>::construct[abi:ne200100]<siri::intelligence::TestCase,siri::intelligence::TestCase,0>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v3;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v4 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v4;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  v5 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v5;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  v6 = *(a2 + 12);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 96) = v6;
  *(a1 + 104) = 0;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 15);
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  result = a2[8];
  *(a1 + 128) = result;
  *(a1 + 144) = *(a2 + 18);
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::TestCase>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<siri::intelligence::TestCase>,siri::intelligence::TestCase*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<siri::intelligence::TestCase>>::construct[abi:ne200100]<siri::intelligence::TestCase,siri::intelligence::TestCase,0>(a4, v7);
      v7 = (v7 + 152);
      a4 = v12 + 152;
      v12 += 152;
    }

    while (v7 != a3);
    v10 = 1;
    do
    {
      std::allocator_traits<std::allocator<siri::intelligence::TestCase>>::destroy[abi:ne200100]<siri::intelligence::TestCase,0>(a1, v5);
      v5 += 152;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::TestCase>,siri::intelligence::TestCase*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::TestCase>,siri::intelligence::TestCase*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::TestCase>,siri::intelligence::TestCase*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::TestCase>,siri::intelligence::TestCase*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 152;
      std::allocator_traits<std::allocator<siri::intelligence::TestCase>>::destroy[abi:ne200100]<siri::intelligence::TestCase,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<siri::intelligence::TestCase>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    v4 = *(a1 + 32);
    *(a1 + 16) = v3 - 152;
    std::allocator_traits<std::allocator<siri::intelligence::TestCase>>::destroy[abi:ne200100]<siri::intelligence::TestCase,0>(v4, v3 - 152);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::vector<siri::intelligence::TestCase>::__init_with_size[abi:ne200100]<siri::intelligence::TestCase*,siri::intelligence::TestCase*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<siri::intelligence::TestCase>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254CAAEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<siri::intelligence::TestCase>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<siri::intelligence::TestCase>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1AF286BCA1AF287)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::TestCase>>(a1, a2);
  }

  std::vector<siri::intelligence::TestParseError>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<siri::intelligence::TestCase>,siri::intelligence::TestCase*,siri::intelligence::TestCase*,siri::intelligence::TestCase*>(uint64_t a1, const siri::intelligence::TestCase *a2, const siri::intelligence::TestCase *a3, std::string *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      siri::intelligence::TestCase::TestCase(v4, v6);
      v6 = (v6 + 152);
      v4 = (v11 + 152);
      v11 = (v11 + 152);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::TestCase>,siri::intelligence::TestCase*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

std::string *siri::intelligence::TestCase::TestCase(std::string *this, const siri::intelligence::TestCase *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v7;
  }

  v8 = *(a2 + 12);
  this[4].__r_.__value_.__l.__size_ = 0;
  this[4].__r_.__value_.__r.__words[0] = v8;
  this[4].__r_.__value_.__r.__words[2] = 0;
  this[5].__r_.__value_.__r.__words[0] = 0;
  std::vector<protobuf::FlowTest_Step>::__init_with_size[abi:ne200100]<protobuf::FlowTest_Step*,protobuf::FlowTest_Step*>(&this[4].__r_.__value_.__l.__size_, *(a2 + 13), *(a2 + 14), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 14) - *(a2 + 13)) >> 4));
  this[5].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[2] = 0;
  this[6].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[5].__r_.__value_.__l.__size_, *(a2 + 16), *(a2 + 17), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 17) - *(a2 + 16)) >> 3));
  return this;
}

void sub_254CAB10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<protobuf::FlowTest_Step>::__init_with_size[abi:ne200100]<protobuf::FlowTest_Step*,protobuf::FlowTest_Step*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<protobuf::FlowTest_Step>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254CAB1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<protobuf::FlowTest_Step>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<protobuf::FlowTest_Step>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<protobuf::FlowTest_Step>>(a1, a2);
  }

  std::vector<siri::intelligence::TestParseError>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<protobuf::FlowTest_Step>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

protobuf::FlowTest_Step *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<protobuf::FlowTest_Step>,protobuf::FlowTest_Step*,protobuf::FlowTest_Step*,protobuf::FlowTest_Step*>(uint64_t a1, const protobuf::FlowTest_Step *a2, const protobuf::FlowTest_Step *a3, protobuf::FlowTest_Step *a4)
{
  v4 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a4 - 80;
    do
    {
      protobuf::FlowTest_Step::FlowTest_Step(v4, v6);
      v6 = (v6 + 80);
      v4 = (v4 + 80);
      v7 -= 80;
      v8 += 80;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_254CAB320(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v5 = (v1 - 80);
    do
    {
      v6 = *v5;
      v5 -= 10;
      (*v6)();
      v3 -= 80;
      v2 += 80;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254CAB3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::vector<siri::intelligence::TestCase>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<siri::intelligence::TestCase>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<siri::intelligence::TestParseError>::__init_with_size[abi:ne200100]<siri::intelligence::TestParseError*,siri::intelligence::TestParseError*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<siri::intelligence::TestParseError>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254CAB63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<siri::intelligence::TestParseError>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<siri::intelligence::TestParseError>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::TestParseError>>(a1, a2);
  }

  std::vector<siri::intelligence::TestParseError>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<siri::intelligence::TestParseError>,siri::intelligence::TestParseError*,siri::intelligence::TestParseError*,siri::intelligence::TestParseError*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a2 + v7);
      v9 = (a4 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v9, *v8, *(v8 + 1));
      }

      else
      {
        v10 = *v8;
        v9->__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&v9->__r_.__value_.__l.__data_ = v10;
      }

      v11 = (a4 + v7);
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v11 + 1, *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        v11[1].__r_.__value_.__r.__words[2] = *(v12 + 40);
        *&v11[1].__r_.__value_.__l.__data_ = v13;
      }

      v7 += 48;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_254CAB764(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    v5 = v2 + v3 - 48;
    v6 = -v3;
    do
    {
      std::allocator<siri::intelligence::TestParseError>::destroy[abi:ne200100](v1, v5);
      v5 -= 48;
      v6 += 48;
    }

    while (v6);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<siri::intelligence::TestParseError>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::allocator<siri::intelligence::TestParseError>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<siri::intelligence::TestCase>::__emplace_back_slow_path<siri::intelligence::TestCase const&>(uint64_t a1, const siri::intelligence::TestCase *a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1AF286BCA1AF286)
  {
    std::vector<siri::intelligence::TestParseError>::__throw_length_error[abi:ne200100]();
  }

  if (0xD79435E50D79436 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xD79435E50D79436 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((*(a1 + 16) - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v6 = 0x1AF286BCA1AF286;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::TestCase>>(a1, v6);
  }

  v13 = 0;
  v14 = 152 * v2;
  siri::intelligence::TestCase::TestCase((152 * v2), a2);
  v15 = 152 * v2 + 152;
  v7 = *(a1 + 8);
  v8 = 152 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<siri::intelligence::TestCase>,siri::intelligence::TestCase*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<siri::intelligence::TestCase>::~__split_buffer(&v13);
  return v12;
}

void sub_254CAB970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<siri::intelligence::TestCase>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

siri::intelligence::VariableString *siri::intelligence::VariableString::VariableString(siri::intelligence::VariableString *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v4, &str);
  std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_STRING[0]);
  siri::intelligence::Variable::Variable(this, &v4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  *this = &unk_286719200;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  return this;
}

void sub_254CABA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void *siri::intelligence::VariableString::VariableString(void *a1, const std::string *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_STRING[0]);
  siri::intelligence::Variable::Variable(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_286719200;
  a1[10] = 0;
  a1[11] = 0;
  a1[9] = 0;
  return a1;
}

void sub_254CABAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *siri::intelligence::VariableString::VariableString(std::string *a1, const std::string *a2, const std::string *a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_STRING[0]);
  siri::intelligence::Variable::Variable(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  a1->__r_.__value_.__r.__words[0] = &unk_286719200;
  a1[3].__r_.__value_.__r.__words[0] = 0;
  a1[3].__r_.__value_.__l.__size_ = 0;
  a1[3].__r_.__value_.__r.__words[2] = 0;
  std::string::operator=(a1 + 3, a3);
  a1[2].__r_.__value_.__s.__data_[16] = 1;
  return a1;
}

void sub_254CABBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 95) < 0)
  {
    operator delete(*v16);
  }

  siri::intelligence::Variable::~Variable(v15);
  _Unwind_Resume(a1);
}

std::string *siri::intelligence::VariableString::SetValue(std::string *a1, const std::string *a2)
{
  result = std::string::operator=(a1 + 3, a2);
  a1[2].__r_.__value_.__s.__data_[16] = 1;
  return result;
}

void siri::intelligence::VariableString::GetValue(siri::intelligence::VariableString *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 9), *(this + 10));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 72);
    a2->__r_.__value_.__r.__words[2] = *(this + 11);
  }
}

uint64_t siri::intelligence::VariableString::SetValueFromString(uint64_t a1, uint64_t a2)
{
  siri::intelligence::StringUnescapeQuotes(a2, &v4);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 72) = v4;
  *(a1 + 64) = 1;
  return 1;
}

uint64_t siri::intelligence::VariableString::SetUndefined(siri::intelligence::VariableString *this)
{
  result = MEMORY[0x259C299D0](this + 72, &str);
  *(this + 64) = 0;
  return result;
}

void siri::intelligence::VariableString::SetEmpty(std::string *this)
{
  std::string::basic_string[abi:ne200100]<0>(&__str, &str);
  std::string::operator=(this + 3, &__str);
  this[2].__r_.__value_.__s.__data_[16] = 1;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_254CABD3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::VariableString::IsEmpty(siri::intelligence::VariableString *this)
{
  if ((*(this + 95) & 0x8000000000000000) != 0)
  {
    if (*(this + 10))
    {
      goto LABEL_3;
    }

LABEL_5:
    v1 = 1;
    return v1 & 1;
  }

  if (!*(this + 95))
  {
    goto LABEL_5;
  }

LABEL_3:
  v1 = *(this + 64) ^ 1;
  return v1 & 1;
}

void siri::intelligence::VariableString::AsString(siri::intelligence::VariableString *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 9), *(this + 10));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 72);
    a2->__r_.__value_.__r.__words[2] = *(this + 11);
  }
}

void siri::intelligence::VariableString::AsQuotedString(siri::intelligence::VariableString *this@<X0>, std::string *a2@<X8>)
{
  siri::intelligence::StringEscapeQuotes(this + 72, &v6);
  v3 = std::string::insert(&v6, 0, "");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v7.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v7, "");
  *a2 = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_254CABE54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
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

uint64_t siri::intelligence::VariableString::AsBoolean(const std::string *this)
{
  if (siri::intelligence::StringIsANumber(this + 3))
  {
    siri::intelligence::StringToDouble(&this[3], 0);
    return v2 != 0.0;
  }

  else
  {

    return siri::intelligence::StringToBool(this + 3, 0);
  }
}

void sub_254CAC030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::VariableString::~VariableString(void **this)
{
  *this = &unk_286719200;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  siri::intelligence::Variable::~Variable(this);
}

{
  *this = &unk_286719200;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  siri::intelligence::Variable::~Variable(this);

  JUMPOUT(0x259C29D90);
}

void *_ZNSt3__120__shared_ptr_emplaceIN4siri12intelligence14VariableStringENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286719290;
  siri::intelligence::VariableString::VariableString((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<siri::intelligence::VariableString>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286719290;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void siri::intelligence::Escaping::Escape(uint64_t a1@<X0>, uint64_t *a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a1, *(a1 + 8));
  }

  else
  {
    v17 = *a1;
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "&");
  std::string::basic_string[abi:ne200100]<0>(__p, "&amp;");
  siri::intelligence::StringReplace(&v17, v14, __p, 0, &v16);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  v17 = v16;
  *(&v16.__r_.__value_.__s + 23) = 0;
  v16.__r_.__value_.__s.__data_[0] = 0;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v8 = *a2;
  v6 = a2 + 1;
  v7 = v8;
  if (v8 == v6)
  {
LABEL_20:
    *a3 = v17;
  }

  else
  {
    while ((siri::intelligence::isValidSequence(v7, v5) & 1) != 0)
    {
      siri::intelligence::StringReplace(&v17, (v7 + 32), v7 + 56, 0, &v16);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      v17 = v16;
      v9 = *(v7 + 8);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v7 + 16);
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
      if (v10 == v6)
      {
        goto LABEL_20;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(a3, "");
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }
}

void sub_254CAC440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::isValidSequence(uint64_t a1, const char *a2)
{
  v4 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    if (!*(a1 + 64))
    {
LABEL_13:
      siri::intelligence::Log::Error("Misuse of Escaping::Escape: all sequences must start with '&' and '&' is reserved", a2, v2, v3);
      return 0;
    }

    v4 = *v4;
  }

  else if (!*(a1 + 79))
  {
    goto LABEL_13;
  }

  if (*v4 != 38)
  {
    goto LABEL_13;
  }

  v5 = (a1 + 32);
  v6 = *(a1 + 55);
  if (v6 < 0)
  {
    if (*(a1 + 40) != 1)
    {
      return 1;
    }

    v5 = *v5;
  }

  else if (v6 != 1)
  {
    return 1;
  }

  if (*v5 == 38)
  {
    goto LABEL_13;
  }

  return 1;
}

void siri::intelligence::Escaping::Unescape(uint64_t a1@<X0>, const char *a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a1, *(a1 + 8));
  }

  else
  {
    v16 = *a1;
  }

  v7 = *a2;
  v5 = a2 + 8;
  v6 = v7;
  if (v7 == v5)
  {
LABEL_14:
    std::string::basic_string[abi:ne200100]<0>(v13, "&amp;");
    std::string::basic_string[abi:ne200100]<0>(__p, "&");
    siri::intelligence::StringReplace(&v16, v13, __p, 0, &v15);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    v16 = v15;
    *(&v15.__r_.__value_.__s + 23) = 0;
    v15.__r_.__value_.__s.__data_[0] = 0;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }

    *a3 = v16;
  }

  else
  {
    while ((siri::intelligence::isValidSequence(v6, a2) & 1) != 0)
    {
      siri::intelligence::StringReplace(&v16, (v6 + 56), v6 + 32, 0, &v15);
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      v16 = v15;
      v8 = *(v6 + 8);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v6 + 16);
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
      if (v9 == v5)
      {
        goto LABEL_14;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(a3, "");
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }
}

void sub_254CAC6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Escaping::EscapeVector(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&_MergedGlobals_3, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_3))
  {
    qword_280AF4160 = 0;
    qword_280AF4158 = 0;
    qword_280AF4150 = &qword_280AF4158;
    __cxa_atexit(std::map<std::string,std::string>::~map[abi:ne200100], &qword_280AF4150, &dword_254C81000);
    __cxa_guard_release(&_MergedGlobals_3);
  }

  if (!qword_280AF4160)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, ",");
    v10.__r_.__value_.__r.__words[0] = __p;
    v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&qword_280AF4150, __p);
    MEMORY[0x259C299D0](v4 + 56, "&comma;");
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::vector<std::string>::vector[abi:ne200100](__p, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      siri::intelligence::Escaping::Escape(v5 + v6, &qword_280AF4150, &v10);
      v8 = __p[0] + v6;
      if (*(__p[0] + v6 + 23) < 0)
      {
        operator delete(*v8);
      }

      v9 = *&v10.__r_.__value_.__l.__data_;
      *(v8 + 2) = *(&v10.__r_.__value_.__l + 2);
      *v8 = v9;
      ++v7;
      v5 = *a1;
      v6 += 24;
    }

    while (v7 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  }

  std::string::basic_string[abi:ne200100]<0>(&v10, ",");
  siri::intelligence::StringJoin(__p, &v10, a2);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v10.__r_.__value_.__r.__words[0] = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
}

void sub_254CAC8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<std::string>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void siri::intelligence::Escaping::UnescapeVector(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280AF4120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4120))
  {
    qword_280AF4178 = 0;
    qword_280AF4170 = 0;
    qword_280AF4168 = &qword_280AF4170;
    __cxa_atexit(std::map<std::string,std::string>::~map[abi:ne200100], &qword_280AF4168, &dword_254C81000);
    __cxa_guard_release(&qword_280AF4120);
  }

  if (!qword_280AF4178)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, ",");
    v5 = __p;
    v2 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&qword_280AF4168, __p);
    MEMORY[0x259C299D0](v2 + 56, "&comma;");
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  siri::intelligence::StringSplit(a1, ",");
}

void sub_254CACB54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Escaping::EscapeMap(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_280AF4128, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4128))
  {
    qword_280AF4190 = 0;
    qword_280AF4188 = 0;
    qword_280AF4180 = &qword_280AF4188;
    __cxa_atexit(std::map<std::string,std::string>::~map[abi:ne200100], &qword_280AF4180, &dword_254C81000);
    __cxa_guard_release(&qword_280AF4128);
  }

  if ((atomic_load_explicit(&qword_280AF4130, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4130))
  {
    qword_280AF41A8 = 0;
    qword_280AF41A0 = 0;
    qword_280AF4198 = &qword_280AF41A0;
    __cxa_atexit(std::map<std::string,std::string>::~map[abi:ne200100], &qword_280AF4198, &dword_254C81000);
    __cxa_guard_release(&qword_280AF4130);
  }

  if (!qword_280AF4190)
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "=");
    __p.__r_.__value_.__r.__words[0] = v22;
    v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&qword_280AF4180, v22);
    MEMORY[0x259C299D0](v4 + 56, "&equals;");
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v22, ";");
    __p.__r_.__value_.__r.__words[0] = v22;
    v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&qword_280AF4198, v22);
    MEMORY[0x259C299D0](v5 + 56, "&semi;");
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }
  }

  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  v8 = *a1;
  v6 = a1 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    do
    {
      siri::intelligence::Escaping::Escape((v7 + 4), &qword_280AF4180, &v18);
      v9 = std::string::append(&v18, "=");
      v10 = *&v9->__r_.__value_.__l.__data_;
      v19.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v19.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      v11 = *(v7 + 79);
      if (v11 >= 0)
      {
        v12 = (v7 + 7);
      }

      else
      {
        v12 = v7[7];
      }

      if (v11 >= 0)
      {
        v13 = *(v7 + 79);
      }

      else
      {
        v13 = v7[8];
      }

      v14 = std::string::append(&v19, v12, v13);
      v20 = *v14;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      siri::intelligence::Escaping::Escape(&v20, &qword_280AF4198, &__p);
      std::vector<std::string>::push_back[abi:ne200100](v22, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
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

      v15 = v7[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v7[2];
          v17 = *v16 == v7;
          v7 = v16;
        }

        while (!v17);
      }

      v7 = v16;
    }

    while (v16 != v6);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, ";");
  siri::intelligence::StringJoin(v22, &__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_254CACEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 49) < 0)
  {
    operator delete(*(v35 - 72));
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

void siri::intelligence::Escaping::UnescapeMap(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_280AF4138, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4138))
  {
    qword_280AF41C0 = 0;
    qword_280AF41B8 = 0;
    qword_280AF41B0 = &qword_280AF41B8;
    __cxa_atexit(std::map<std::string,std::string>::~map[abi:ne200100], &qword_280AF41B0, &dword_254C81000);
    __cxa_guard_release(&qword_280AF4138);
  }

  if ((atomic_load_explicit(&qword_280AF4140, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4140))
  {
    qword_280AF41D8 = 0;
    qword_280AF41D0 = 0;
    qword_280AF41C8 = &qword_280AF41D0;
    __cxa_atexit(std::map<std::string,std::string>::~map[abi:ne200100], &qword_280AF41C8, &dword_254C81000);
    __cxa_guard_release(&qword_280AF4140);
  }

  if (!qword_280AF41C0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "=");
    v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&qword_280AF41B0, &v6);
    MEMORY[0x259C299D0](v4 + 56, "&equals;");
    if (v7 < 0)
    {
      operator delete(v6);
    }

    std::string::basic_string[abi:ne200100]<0>(&v6, ";");
    v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&qword_280AF41C8, &v6);
    MEMORY[0x259C299D0](v5 + 56, "&semi;");
    if (v7 < 0)
    {
      operator delete(v6);
    }
  }

  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  if ((atomic_load_explicit(&qword_280AF4148, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4148))
  {
    qword_280AF41E8 = 0;
    unk_280AF41F0 = 0;
    qword_280AF41E0 = 0;
    __cxa_atexit(std::vector<std::string>::~vector[abi:ne200100], &qword_280AF41E0, &dword_254C81000);
    __cxa_guard_release(&qword_280AF4148);
  }

  if (qword_280AF41E0 == qword_280AF41E8)
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "&amp;");
    std::vector<std::string>::push_back[abi:ne200100](&qword_280AF41E0, &v6);
    if (v7 < 0)
    {
      operator delete(v6);
    }

    std::string::basic_string[abi:ne200100]<0>(&v6, "&equals;");
    std::vector<std::string>::push_back[abi:ne200100](&qword_280AF41E0, &v6);
    if (v7 < 0)
    {
      operator delete(v6);
    }

    std::string::basic_string[abi:ne200100]<0>(&v6, "&semi;");
    std::vector<std::string>::push_back[abi:ne200100](&qword_280AF41E0, &v6);
    if (v7 < 0)
    {
      operator delete(v6);
    }
  }

  siri::intelligence::StringSplit(a1, ";");
}

void sub_254CAD5EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (*(v40 - 89) < 0)
  {
    operator delete(*(v40 - 112));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v39, *(v39 + 8));
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::vector<std::string>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254CADA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_254CADD48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 57) < 0)
  {
    operator delete(*(v25 - 80));
  }

  IEDefer::~IEDefer((v25 - 88));
  v27 = a23;
  a23 = 0;
  if (v27)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a23, v27);
  }

  v28 = *(v25 - 40);
  *(v25 - 48) = &unk_28671C180;
  *(v25 - 40) = 0;
  if (v28)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v25 - 40, v28);
  }

  _Unwind_Resume(a1);
}

void sub_254CAE2C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (*(v39 - 89) < 0)
  {
    operator delete(*(v39 - 112));
  }

  IEDefer::~IEDefer((v39 - 120));
  v41 = a35;
  a35 = 0;
  if (v41)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a35, v41);
  }

  v42 = *(v39 - 72);
  *(v39 - 80) = &unk_28671C180;
  *(v39 - 72) = 0;
  if (v42)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v39 - 72, v42);
  }

  _Unwind_Resume(a1);
}

siri::intelligence::VariableReference *siri::intelligence::VariableReference::VariableReference(siri::intelligence::VariableReference *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_REFERENCE[0]);
  siri::intelligence::Variable::Variable(this, &v4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  *this = &unk_2867192E0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  return this;
}

void sub_254CAE538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void *siri::intelligence::VariableReference::VariableReference(void *a1, const std::string *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_REFERENCE[0]);
  siri::intelligence::Variable::Variable(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_2867192E0;
  a1[10] = 0;
  a1[11] = 0;
  a1[9] = 0;
  return a1;
}

void sub_254CAE5F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *siri::intelligence::VariableReference::VariableReference(std::string *a1, const std::string *a2, const std::string *a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_REFERENCE[0]);
  siri::intelligence::Variable::Variable(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  a1->__r_.__value_.__r.__words[0] = &unk_2867192E0;
  a1[3].__r_.__value_.__r.__words[0] = 0;
  a1[3].__r_.__value_.__l.__size_ = 0;
  a1[3].__r_.__value_.__r.__words[2] = 0;
  std::string::operator=(a1 + 3, a3);
  a1[2].__r_.__value_.__s.__data_[16] = 1;
  return a1;
}

void sub_254CAE6C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 95) < 0)
  {
    operator delete(*v16);
  }

  siri::intelligence::Variable::~Variable(v15);
  _Unwind_Resume(a1);
}

std::string *siri::intelligence::VariableReference::SetValue(std::string *a1, const std::string *a2)
{
  result = std::string::operator=(a1 + 3, a2);
  a1[2].__r_.__value_.__s.__data_[16] = 1;
  return result;
}

void siri::intelligence::VariableReference::GetValue(siri::intelligence::VariableReference *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 9), *(this + 10));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 72);
    a2->__r_.__value_.__r.__words[2] = *(this + 11);
  }
}

uint64_t siri::intelligence::VariableReference::SetValueFromString(std::string *a1, const std::string *a2)
{
  std::string::operator=(a1 + 3, a2);
  a1[2].__r_.__value_.__s.__data_[16] = 1;
  return 1;
}

uint64_t siri::intelligence::VariableReference::SetUndefined(siri::intelligence::VariableReference *this)
{
  result = MEMORY[0x259C299D0](this + 72, "");
  *(this + 64) = 0;
  return result;
}

void siri::intelligence::VariableReference::SetEmpty(std::string *this)
{
  std::string::basic_string[abi:ne200100]<0>(&__str, "");
  std::string::operator=(this + 3, &__str);
  this[2].__r_.__value_.__s.__data_[16] = 1;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_254CAE820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::VariableReference::IsEmpty(siri::intelligence::VariableReference *this)
{
  if ((*(this + 95) & 0x8000000000000000) != 0)
  {
    if (*(this + 10))
    {
      goto LABEL_3;
    }

LABEL_5:
    v1 = 1;
    return v1 & 1;
  }

  if (!*(this + 95))
  {
    goto LABEL_5;
  }

LABEL_3:
  v1 = *(this + 64) ^ 1;
  return v1 & 1;
}

void siri::intelligence::VariableReference::AsString(siri::intelligence::VariableReference *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 9), *(this + 10));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 72);
    a2->__r_.__value_.__r.__words[2] = *(this + 11);
  }
}

uint64_t siri::intelligence::VariableReference::CheckForRecursion(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = *v2;
  v6 = **v2;
  if (!v7)
  {
    v8 = 0;
    goto LABEL_30;
  }

  v8 = *(a2 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7[95] < 0)
  {
    std::string::__init_copy_ctor_external(&v36, *(v7 + 9), *(v7 + 10));
  }

  else
  {
    v36 = *(v7 + 3);
  }

  v10 = SHIBYTE(v36.__r_.__value_.__r.__words[2]);
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v36.__r_.__value_.__l.__size_;
  }

  v12 = *(a1 + 95);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a1 + 80);
  }

  if (size == v12)
  {
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v36;
    }

    else
    {
      v14 = v36.__r_.__value_.__r.__words[0];
    }

    if (v13 >= 0)
    {
      v15 = (a1 + 72);
    }

    else
    {
      v15 = *(a1 + 72);
    }

    v16 = memcmp(v14, v15, size) == 0;
    if (v10 < 0)
    {
LABEL_27:
      operator delete(v36.__r_.__value_.__l.__data_);
      if (!v16)
      {
        goto LABEL_28;
      }

LABEL_26:
      v9 = 1;
      goto LABEL_67;
    }
  }

  else
  {
    v16 = 0;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_27;
    }
  }

  if (v16)
  {
    goto LABEL_26;
  }

LABEL_28:
  v2 = *a2;
  if (*a2)
  {
    v5 = *v2;
LABEL_30:
    v17 = *v5;
    if (v18)
    {
      v19 = *(a2 + 8);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::map<std::string,std::shared_ptr<siri::intelligence::Variable>>::map[abi:ne200100](&v36, v18 + 9);
      v20 = v36.__r_.__value_.__r.__words[0];
      if (v36.__r_.__value_.__l.__data_ != &v36.__r_.__value_.__r.__words[1])
      {
        while (1)
        {
          v21 = v20[2].__words[2];
          v35[0] = v20[2].__words[1];
          v35[1] = v21;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v22 = siri::intelligence::VariableReference::CheckForRecursion(a1, v35);
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          if (v22)
          {
            break;
          }

          v23 = v20->__words[1];
          if (v23)
          {
            do
            {
              v24 = v23;
              v23 = v23->__r_.__value_.__r.__words[0];
            }

            while (v23);
          }

          else
          {
            do
            {
              v24 = v20->__words[2];
              v25 = v24->__r_.__value_.__r.__words[0] == v20;
              v20 = v24;
            }

            while (!v25);
          }

          v20 = v24;
          if (v24 == &v36.__r_.__value_.__r.__words[1])
          {
            goto LABEL_45;
          }
        }

        std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::destroy(&v36, v36.__r_.__value_.__l.__size_);
        v9 = 1;
        goto LABEL_65;
      }

LABEL_45:
      std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::destroy(&v36, v36.__r_.__value_.__l.__size_);
      v2 = *a2;
      if (!*a2)
      {
        goto LABEL_60;
      }

      v5 = *v2;
    }

    else
    {
      v19 = 0;
    }

    v26 = *v5;
    if (v27)
    {
      v28 = *(a2 + 8);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      memset(&v36, 0, sizeof(v36));
      std::vector<std::shared_ptr<siri::intelligence::Variable>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::Variable>*,std::shared_ptr<siri::intelligence::Variable>*>(&v36, v27[9], v27[10], (v27[10] - v27[9]) >> 4);
      v30 = v36.__r_.__value_.__l.__size_;
      v29 = v36.__r_.__value_.__r.__words[0];
      if (v36.__r_.__value_.__r.__words[0] == v36.__r_.__value_.__l.__size_)
      {
LABEL_58:
        v37 = &v36;
        std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v37);
        v9 = 0;
        if (!v28)
        {
LABEL_65:
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          goto LABEL_67;
        }
      }

      else
      {
        while (1)
        {
          v31 = v29[1];
          v34[0] = *v29;
          v34[1] = v31;
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v32 = siri::intelligence::VariableReference::CheckForRecursion(a1, v34);
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }

          if (v32)
          {
            break;
          }

          v29 += 2;
          if (v29 == v30)
          {
            goto LABEL_58;
          }
        }

        v37 = &v36;
        std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v37);
        v9 = 1;
        if (!v28)
        {
          goto LABEL_65;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      goto LABEL_65;
    }

LABEL_60:
    v9 = 0;
    goto LABEL_65;
  }

  v9 = 0;
LABEL_67:
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v9;
}

void sub_254CAEC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    if (!v17)
    {
LABEL_3:
      if (!v16)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v17)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  if (!v16)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  goto LABEL_5;
}

void siri::intelligence::VariableReference::GetExpanded(std::string *this@<X0>, siri::intelligence::Memory *a2@<X1>, void *a3@<X8>)
{
  if (!a2)
  {
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v6 = &this[3];
  siri::intelligence::Memory::GetVariable(a2, this + 3, &v11);
  if (!v11)
  {
    goto LABEL_11;
  }

  v7 = v12;
  v10[0] = v11;
  v10[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = siri::intelligence::VariableReference::CheckForRecursion(this, v10);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v9)
  {
    if (SHIBYTE(this[3].__r_.__value_.__r.__words[2]) < 0)
    {
      v6 = v6->__words[0];
    }

    siri::intelligence::Log::Error("Infinite recursion detected when expanding reference to variable '%s'. Return NULL result.", v8, v6);
LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    goto LABEL_14;
  }

  (*v11)[11](v11, a2);
LABEL_14:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_254CAEE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::VariableReference::GetExpandedType(std::string *this@<X0>, siri::intelligence::Memory *a2@<X1>, std::string *a3@<X8>)
{
  size = SHIBYTE(this[3].__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this[3].__r_.__value_.__l.__size_;
    if (!a2)
    {
LABEL_9:
      v6 = siri::intelligence::TYPE_UNKNOWN;

      std::string::basic_string[abi:ne200100]<0>(a3, v6);
      return;
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  if (!size)
  {
    goto LABEL_9;
  }

  siri::intelligence::Memory::GetVariable(a2, this + 3, &v7);
  if (v7)
  {
    if (*(v7 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(a3, v7[4], v7[5]);
    }

    else
    {
      v5 = *(v7 + 2);
      a3->__r_.__value_.__r.__words[2] = v7[6];
      *&a3->__r_.__value_.__l.__data_ = v5;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a3, siri::intelligence::TYPE_UNKNOWN);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_254CAEF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::VariableReference::~VariableReference(void **this)
{
  *this = &unk_2867192E0;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  siri::intelligence::Variable::~Variable(this);
}

{
  *this = &unk_2867192E0;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  siri::intelligence::Variable::~Variable(this);

  JUMPOUT(0x259C29D90);
}

void siri::intelligence::HashUtils::ComputeMD5(_DWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 23);
  v4 = a1[2];
  if (v3 >= 0)
  {
    v5 = v3;
  }

  else
  {
    a1 = *a1;
    v5 = v4;
  }

  CC_MD5(a1, v5, md);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", md[0], md[1], md[2], md[3], md[4], md[5], md[6], md[7], md[8], md[9], md[10], md[11], md[12], md[13], md[14], md[15]];
  v7 = v6;
  v8 = [v6 UTF8String];
  v9 = strlen(v8);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  a2[23] = v9;
  if (v9)
  {
    memmove(a2, v8, v9);
  }

  a2[v10] = 0;

  v11 = *MEMORY[0x277D85DE8];
}

std::string *siri::intelligence::HashUtils::ComputeSHA256@<X0>(_DWORD *a1@<X0>, std::string *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 23);
  v4 = a1[2];
  if (v3 >= 0)
  {
    v5 = v3;
  }

  else
  {
    a1 = *a1;
    v5 = v4;
  }

  CC_SHA256(a1, v5, md);
  v6 = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  do
  {
    v10 = 0;
    *__str = 0;
    snprintf(__str, 3uLL, "%02hhx", md[v6]);
    result = std::string::append(a2, __str);
    ++v6;
  }

  while (v6 != 32);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void siri::intelligence::HashUtils::ComputeCATIGuid(uint64_t a1@<X0>, const void **a2@<X1>, _BYTE *a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = &v14;
  std::string::basic_string[abi:ne200100](&v14, v6 + 1);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v14.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(v7, v8, v6);
  }

  *(&v7->__r_.__value_.__l.__data_ + v6) = 45;
  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = *(a1 + 8);
  }

  v12 = std::string::append(&v14, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v16 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  siri::intelligence::HashUtils::ComputeMD5(__p, a3);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_254CAF39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
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

void sub_254CAF994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

BOOL siri::intelligence::DialogTypes::IsPrimitiveDialogType(uint64_t *a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = a1[1];
    if (v2 != 13)
    {
      if (v2 != 14)
      {
        return 0;
      }

      a1 = *a1;
      goto LABEL_8;
    }

    v9 = *a1;
    if (**a1 != 0x532E676F6C616964 || *(*a1 + 5) != 0x676E697274532E67)
    {
      v11 = *v9;
      v12 = *(v9 + 5);
      return v11 == 0x4E2E676F6C616964 && v12 == 0x7265626D754E2E67;
    }

    return 1;
  }

  v1 = *(a1 + 23);
  if (v1 != 13)
  {
    if (v1 != 14)
    {
      return 0;
    }

LABEL_8:
    v3 = *(a1 + 6);
    v4 = *a1 == 0x422E676F6C616964;
    v5 = 0x6E61656C6F6F422ELL;
    return v4 && v3 == v5;
  }

  if (*a1 == 0x532E676F6C616964 && *(a1 + 5) == 0x676E697274532E67)
  {
    return 1;
  }

  v3 = *(a1 + 5);
  v4 = *a1 == 0x4E2E676F6C616964;
  v5 = 0x7265626D754E2E67;
  return v4 && v3 == v5;
}

BOOL siri::intelligence::DialogTypes::IsDialogType(siri::intelligence *a1)
{
  siri::intelligence::GetDialogTypes(a1);
  siri::intelligence::GetArrayElementType(a1, &__p);
  v2 = std::__tree<std::string>::find<std::string>(v5, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(v5, v6);
  return &v6 != v2;
}

void sub_254CAFF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(&a15, a16);
  _Unwind_Resume(a1);
}

void siri::intelligence::GetDialogTypes(siri::intelligence *this)
{
  MEMORY[0x28223BE20](this);
  v2 = v1;
  v360 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&_MergedGlobals_5, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_5))
  {
    v40 = v2;
    std::string::basic_string[abi:ne200100]<0>(&v173, "dialog.AbstractMeasurement");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v315, "units", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v316, "value", "dialog.Number");
    std::map<std::string,std::string>::map[abi:ne200100](v172, v315, 2);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v317, &v173, v172);
    std::string::basic_string[abi:ne200100]<0>(&v170, "dialog.Area");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[14],0>(v312, "outputUnits");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v313, "units", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v314, "value", "dialog.Number");
    std::map<std::string,std::string>::map[abi:ne200100](v169, v312, 3);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v318, &v170, v169);
    std::string::basic_string[abi:ne200100]<0>(&v167, "dialog.Array");
    v166[1] = 0;
    v166[0] = 0;
    v165 = v166;
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v319, &v167, &v165);
    std::string::basic_string[abi:ne200100]<0>(&v163, "dialog.Boolean");
    v162[1] = 0;
    v162[0] = 0;
    v161 = v162;
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v320, &v163, &v161);
    std::string::basic_string[abi:ne200100]<0>(&v159, "dialog.Calendar");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[14],char const(&)[21],0>(v308);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[14],0>(v309, "secs", "dialog.Number");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[14],0>(v310, "timeZone");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[14],char const(&)[14],0>(v311, "utcOffsetSecs", "dialog.Number");
    std::map<std::string,std::string>::map[abi:ne200100](v158, v308, 4);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v321, &v159, v158);
    std::string::basic_string[abi:ne200100]<0>(&v156, "dialog.CalendarRange");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[14],0>(v305, "endSecs", "dialog.Number");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[14],0>(v306, "startSecs", "dialog.Number");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[14],0>(v307, "timeZone");
    std::map<std::string,std::string>::map[abi:ne200100](v155, v305, 3);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v322, &v156, v155);
    std::string::basic_string[abi:ne200100]<0>(&v153, "dialog.ConvertibleMeasurement");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[14],0>(v302, "outputUnits");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v303, "units", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v304, "value", "dialog.Number");
    std::map<std::string,std::string>::map[abi:ne200100](v152, v302, 3);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v323, &v153, v152);
    std::string::basic_string[abi:ne200100]<0>(&v150, "dialog.Currency");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v300, "units", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v301, "value", "dialog.Number");
    std::map<std::string,std::string>::map[abi:ne200100](v149, v300, 2);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v324, &v150, v149);
    std::string::basic_string[abi:ne200100]<0>(&v147, "dialog.DateFormatter");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[14],0>(v298, "length", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[15],0>(v299, "omitYear");
    std::map<std::string,std::string>::map[abi:ne200100](v146, v298, 2);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v325, &v147, v146);
    std::string::basic_string[abi:ne200100]<0>(&v144, "dialog.DateTime");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[14],0>(v294, "day", "dialog.Number");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v295, "month", "dialog.Number");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[14],0>(v296, "timeZone");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[14],0>(v297, "year", "dialog.Number");
    std::map<std::string,std::string>::map[abi:ne200100](v143, v294, 4);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v326, &v144, v143);
    std::string::basic_string[abi:ne200100]<0>(&v141, "dialog.Density");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[14],0>(v291, "outputUnits");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v292, "units", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v293, "value", "dialog.Number");
    std::map<std::string,std::string>::map[abi:ne200100](v140, v291, 3);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v327, &v141, v140);
    std::string::basic_string[abi:ne200100]<0>(&v138, "dialog.Duration");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[14],0>(v290, "secs", "dialog.Number");
    std::map<std::string,std::string>::map[abi:ne200100](v137, v290, 1);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v328, &v138, v137);
    std::string::basic_string[abi:ne200100]<0>(&v135, "dialog.Length");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[14],0>(v287, "outputUnits");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v288, "units", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v289, "value", "dialog.Number");
    std::map<std::string,std::string>::map[abi:ne200100](v134, v287, 3);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v329, &v135, v134);
    std::string::basic_string[abi:ne200100]<0>(&v132, "dialog.Location");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[23],0>(v286);
    std::map<std::string,std::string>::map[abi:ne200100](v131, v286, 1);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v330, &v132, v131);
    std::string::basic_string[abi:ne200100]<0>(&v129, "dialog.LocationAddress");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[19],char const(&)[14],0>(v274);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[23],char const(&)[14],0>(v275, "administrativeAreaCode");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[14],0>(v276, "country", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[14],0>(v277, "countryCode");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[17],char const(&)[14],0>(v278, "fullThoroughfare");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[14],0>(v279, "locality");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[14],0>(v280, "name", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[14],0>(v281, "postCode");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[22],char const(&)[14],0>(v282);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[14],0>(v283, "subLocality");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[14],0>(v284, "subThoroughfare");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[13],char const(&)[14],0>(v285, "thoroughfare");
    std::map<std::string,std::string>::map[abi:ne200100](v128, v274, 12);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v331, &v129, v128);
    std::string::basic_string[abi:ne200100]<0>(&v126, "dialog.LocationValue");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[23],0>(v273);
    std::map<std::string,std::string>::map[abi:ne200100](v125, v273, 1);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v332, &v126, v125);
    std::string::basic_string[abi:ne200100]<0>(&v123, "dialog.MultiLevelItem");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[11],char const(&)[24],0>(v272);
    std::map<std::string,std::string>::map[abi:ne200100](v122, v272, 1);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v333, &v123, v122);
    std::string::basic_string[abi:ne200100]<0>(&v120, "dialog.Number");
    v119[1] = 0;
    v119[0] = 0;
    v118 = v119;
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v334, &v120, &v118);
    std::string::basic_string[abi:ne200100]<0>(&v116, "dialog.Percent");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v270, "units", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v271, "value", "dialog.Number");
    std::map<std::string,std::string>::map[abi:ne200100](v115, v270, 2);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v335, &v116, v115);
    std::string::basic_string[abi:ne200100]<0>(&v113, "dialog.Person");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[14],0>(v257, "company", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[11],char const(&)[14],0>(v258, "familyName");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[24],char const(&)[15],0>(v259);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[14],0>(v260, "fullName");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[14],0>(v261, "givenName", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[11],char const(&)[14],0>(v262, "middleName");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[14],0>(v263, "nickname");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[13],char const(&)[20],0>(v264);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[15],0>(v265, "pronoun", "dialog.Pronoun");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[15],0>(v266, "related", "dialog.Boolean");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[13],char const(&)[14],0>(v267, "relationship");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[22],char const(&)[15],0>(v268, "useConversationalName");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[20],char const(&)[15],0>(v269);
    std::map<std::string,std::string>::map[abi:ne200100](v112, v257, 13);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v336, &v113, v112);
    std::string::basic_string[abi:ne200100]<0>(&v110, "dialog.PersonHandle");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v254, "label", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[14],0>(v255, "type", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v256, "value", "dialog.String");
    std::map<std::string,std::string>::map[abi:ne200100](v109, v254, 3);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v337, &v110, v109);
    std::string::basic_string[abi:ne200100]<0>(&v107, "dialog.PersonHeight");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v252, "units", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v253, "value", "dialog.Number");
    std::map<std::string,std::string>::map[abi:ne200100](v106, v252, 2);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v338, &v107, v106);
    std::string::basic_string[abi:ne200100]<0>(&v104, "dialog.PhoneNumber");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[14],0>(v250, "countryCode");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v251, "value", "dialog.String");
    std::map<std::string,std::string>::map[abi:ne200100](v103, v250, 2);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v339, &v104, v103);
    std::string::basic_string[abi:ne200100]<0>(&v101, "dialog.Pressure");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[14],0>(v247, "outputUnits");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v248, "units", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v249, "value", "dialog.Number");
    std::map<std::string,std::string>::map[abi:ne200100](v100, v247, 3);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v340, &v101, v100);
    std::string::basic_string[abi:ne200100]<0>(&v98, "dialog.Pronoun");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[14],0>(v246, "gender", "dialog.String");
    std::map<std::string,std::string>::map[abi:ne200100](v97, v246, 1);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v341, &v98, v97);
    std::string::basic_string[abi:ne200100]<0>(&v95, "dialog.Speed");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[14],0>(v243, "outputUnits");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v244, "units", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v245, "value", "dialog.Number");
    std::map<std::string,std::string>::map[abi:ne200100](v94, v243, 3);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v342, &v95, v94);
    std::string::basic_string[abi:ne200100]<0>(&v92, "dialog.State");
    v91[1] = 0;
    v91[0] = 0;
    v90 = v91;
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v343, &v92, &v90);
    std::string::basic_string[abi:ne200100]<0>(&v88, "dialog.String");
    v87[1] = 0;
    v87[0] = 0;
    v86 = v87;
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v344, &v88, &v86);
    std::string::basic_string[abi:ne200100]<0>(&v84, "dialog.StringPair");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v241, "first", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[14],0>(v242, "second", "dialog.String");
    std::map<std::string,std::string>::map[abi:ne200100](v83, v241, 2);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v345, &v84, v83);
    std::string::basic_string[abi:ne200100]<0>(&v81, "dialog.Temperature");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[14],0>(v238, "outputUnits");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v239, "units", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v240, "value", "dialog.Number");
    std::map<std::string,std::string>::map[abi:ne200100](v80, v238, 3);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v346, &v81, v80);
    std::string::basic_string[abi:ne200100]<0>(&v78, "dialog.TimeZone");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[14],0>(v236, "secs", "dialog.Number");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[14],0>(v237, "timeZone");
    std::map<std::string,std::string>::map[abi:ne200100](v77, v236, 2);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v347, &v78, v77);
    std::string::basic_string[abi:ne200100]<0>(&v75, "dialog.User");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[14],0>(v223, "company", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[11],char const(&)[14],0>(v224, "familyName");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[24],char const(&)[15],0>(v225);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[14],0>(v226, "fullName");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[14],0>(v227, "givenName", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[11],char const(&)[14],0>(v228, "middleName");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[14],0>(v229, "nickname");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[13],char const(&)[20],0>(v230);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[15],0>(v231, "pronoun", "dialog.Pronoun");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[15],0>(v232, "related", "dialog.Boolean");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[13],char const(&)[14],0>(v233, "relationship");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[22],char const(&)[15],0>(v234, "useConversationalName");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[20],char const(&)[15],0>(v235);
    std::map<std::string,std::string>::map[abi:ne200100](v74, v223, 13);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v348, &v75, v74);
    std::string::basic_string[abi:ne200100]<0>(&v72, "dialog.Weight");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[14],0>(v220, "outputUnits");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v221, "units", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v222, "value", "dialog.Number");
    std::map<std::string,std::string>::map[abi:ne200100](v71, v220, 3);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v349, &v72, v71);
    std::string::basic_string[abi:ne200100]<0>(&v69, "sirikit.App");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v218, "appId", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[18],char const(&)[27],0>(v219);
    std::map<std::string,std::string>::map[abi:ne200100](v68, v218, 2);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v350, &v69, v68);
    std::string::basic_string[abi:ne200100]<0>(&v66, "sirikit.DeviceRestrictions");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[17],char const(&)[15],0>(v217);
    std::map<std::string,std::string>::map[abi:ne200100](v65, v217, 1);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v351, &v66, v65);
    std::string::basic_string[abi:ne200100]<0>(&v63, "sirikit.DeviceState");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[14],char const(&)[14],0>(v192, "companionName", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[11],char const(&)[14],0>(v193, "deviceName");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[17],char const(&)[14],0>(v194, "deviceRegionCode");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[14],0>(v195, "inputOrigin");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[14],0>(v196, "interactionType");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[15],0>(v197, "isAppleTV");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[15],0>(v198);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[15],0>(v199, "isCarDnD");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[15],0>(v200, "isCarPlay");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[11],char const(&)[15],0>(v201, "isEyesFree");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[15],0>(v202, "isHomePod");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[21],char const(&)[15],0>(v203);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[15],0>(v204, "isMac");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[15],0>(v205, "isPad");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[15],0>(v206, "isPhone", "dialog.Boolean");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[11],char const(&)[15],0>(v207, "isSidekick");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[22],char const(&)[15],0>(v208, "isTextToSpeechEnabled");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[15],0>(v209, "isVOX");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[22],char const(&)[15],0>(v210, "isVoiceTriggerEnabled");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[15],0>(v211, "isWatch", "dialog.Boolean");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[15],char const(&)[14],0>(v212);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[13],char const(&)[27],0>(v213);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[11],char const(&)[14],0>(v214, "siriLocale");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[23],char const(&)[14],0>(v215, "userAssignedDeviceName");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[14],0>(v216, "voiceGender");
    std::map<std::string,std::string>::map[abi:ne200100](v62, v192, 25);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v352, &v63, v62);
    std::string::basic_string[abi:ne200100]<0>(&v60, "sirikit.LocalizedAppName");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[14],0>(v190, "appName", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[14],0>(v191, "locale", "dialog.String");
    std::map<std::string,std::string>::map[abi:ne200100](v59, v190, 2);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v353, &v60, v59);
    std::string::basic_string[abi:ne200100]<0>(&v57, "visual.AppIcon");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[14],0>(v188, "bundleId");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[14],0>(v189, "iconType");
    std::map<std::string,std::string>::map[abi:ne200100](v56, v188, 2);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v354, &v57, v56);
    std::string::basic_string[abi:ne200100]<0>(&v54, "visual.AspectRatio");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[14],0>(v186, "height", "dialog.Number");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(v187, "width", "dialog.Number");
    std::map<std::string,std::string>::map[abi:ne200100](v53, v186, 2);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v355, &v54, v53);
    std::string::basic_string[abi:ne200100]<0>(&v51, "visual.ImageData");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[19],0>(v184);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[14],0>(v185, "encodedData");
    std::map<std::string,std::string>::map[abi:ne200100](v50, v184, 2);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v356, &v51, v50);
    std::string::basic_string[abi:ne200100]<0>(&v48, "visual.ImageResource");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[15],0>(v179, "appIcon", "visual.AppIcon");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[17],0>(v180);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[14],0>(v181, "imageType", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[16],0>(v182);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[14],0>(v183, "symbol", "visual.Symbol");
    std::map<std::string,std::string>::map[abi:ne200100](v47, v179, 5);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v357, &v48, v47);
    std::string::basic_string[abi:ne200100]<0>(v45, "visual.ImageUrl");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[19],0>(v176);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[14],0>(v177, "darkUrl", "dialog.String");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[14],0>(v178, "url", "dialog.String");
    std::map<std::string,std::string>::map[abi:ne200100](v44, v176, 3);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v358, v45, v44);
    std::string::basic_string[abi:ne200100]<0>(__p, "visual.Symbol");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[14],0>(v175, "name", "dialog.String");
    std::map<std::string,std::string>::map[abi:ne200100](v41, v175, 1);
    std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(v359, __p, v41);
    std::map<std::string,std::map<std::string,std::string>>::map[abi:ne200100](v317, 43);
    for (i = 2016; i != -48; i -= 48)
    {
      std::pair<std::string const,std::map<std::string,std::string>>::~pair(&v317[i / 0x18]);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v41, v41[1]);
    siri::intelligence::TestParseError::~TestParseError(v175);
    if (v43 < 0)
    {
      operator delete(__p[0]);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v44, v44[1]);
    for (j = 12; j != -6; j -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v176[j]);
    }

    if (v46 < 0)
    {
      operator delete(v45[0]);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v47, v47[1]);
    for (k = 24; k != -6; k -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v179[k]);
    }

    if (v49 < 0)
    {
      operator delete(v48);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v50, v50[1]);
    for (m = 6; m != -6; m -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v184[m]);
    }

    if (v52 < 0)
    {
      operator delete(v51);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v53, v53[1]);
    for (n = 6; n != -6; n -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v186[n]);
    }

    if (v55 < 0)
    {
      operator delete(v54);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v56, v56[1]);
    for (ii = 6; ii != -6; ii -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v188[ii]);
    }

    if (v58 < 0)
    {
      operator delete(v57);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v59, v59[1]);
    for (jj = 6; jj != -6; jj -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v190[jj]);
    }

    if (v61 < 0)
    {
      operator delete(v60);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v62, v62[1]);
    for (kk = 144; kk != -6; kk -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v192[kk]);
    }

    if (v64 < 0)
    {
      operator delete(v63);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v65, v65[1]);
    siri::intelligence::TestParseError::~TestParseError(v217);
    if (v67 < 0)
    {
      operator delete(v66);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v68, v68[1]);
    for (mm = 6; mm != -6; mm -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v218[mm]);
    }

    if (v70 < 0)
    {
      operator delete(v69);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v71, v71[1]);
    for (nn = 12; nn != -6; nn -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v220[nn]);
    }

    if (v73 < 0)
    {
      operator delete(v72);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v74, v74[1]);
    for (i1 = 72; i1 != -6; i1 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v223[i1]);
    }

    if (v76 < 0)
    {
      operator delete(v75);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v77, v77[1]);
    for (i2 = 6; i2 != -6; i2 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v236[i2]);
    }

    if (v79 < 0)
    {
      operator delete(v78);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v80, v80[1]);
    for (i3 = 12; i3 != -6; i3 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v238[i3]);
    }

    if (v82 < 0)
    {
      operator delete(v81);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v83, v83[1]);
    for (i4 = 6; i4 != -6; i4 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v241[i4]);
    }

    if (v85 < 0)
    {
      operator delete(v84);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v86, v87[0]);
    if (v89 < 0)
    {
      operator delete(v88);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v90, v91[0]);
    if (v93 < 0)
    {
      operator delete(v92);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v94, v94[1]);
    for (i5 = 12; i5 != -6; i5 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v243[i5]);
    }

    if (v96 < 0)
    {
      operator delete(v95);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v97, v97[1]);
    siri::intelligence::TestParseError::~TestParseError(v246);
    if (v99 < 0)
    {
      operator delete(v98);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v100, v100[1]);
    for (i6 = 12; i6 != -6; i6 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v247[i6]);
    }

    if (v102 < 0)
    {
      operator delete(v101);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v103, v103[1]);
    for (i7 = 6; i7 != -6; i7 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v250[i7]);
    }

    if (v105 < 0)
    {
      operator delete(v104);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v106, v106[1]);
    for (i8 = 6; i8 != -6; i8 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v252[i8]);
    }

    if (v108 < 0)
    {
      operator delete(v107);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v109, v109[1]);
    for (i9 = 12; i9 != -6; i9 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v254[i9]);
    }

    if (v111 < 0)
    {
      operator delete(v110);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v112, v112[1]);
    for (i10 = 72; i10 != -6; i10 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v257[i10]);
    }

    if (v114 < 0)
    {
      operator delete(v113);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v115, v115[1]);
    for (i11 = 6; i11 != -6; i11 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v270[i11]);
    }

    if (v117 < 0)
    {
      operator delete(v116);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v118, v119[0]);
    if (v121 < 0)
    {
      operator delete(v120);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v122, v122[1]);
    siri::intelligence::TestParseError::~TestParseError(v272);
    if (v124 < 0)
    {
      operator delete(v123);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v125, v125[1]);
    siri::intelligence::TestParseError::~TestParseError(v273);
    if (v127 < 0)
    {
      operator delete(v126);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v128, v128[1]);
    for (i12 = 66; i12 != -6; i12 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v274[i12]);
    }

    if (v130 < 0)
    {
      operator delete(v129);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v131, v131[1]);
    siri::intelligence::TestParseError::~TestParseError(v286);
    if (v133 < 0)
    {
      operator delete(v132);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v134, v134[1]);
    for (i13 = 12; i13 != -6; i13 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v287[i13]);
    }

    if (v136 < 0)
    {
      operator delete(v135);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v137, v137[1]);
    siri::intelligence::TestParseError::~TestParseError(v290);
    if (v139 < 0)
    {
      operator delete(v138);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v140, v140[1]);
    for (i14 = 12; i14 != -6; i14 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v291[i14]);
    }

    if (v142 < 0)
    {
      operator delete(v141);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v143, v143[1]);
    for (i15 = 18; i15 != -6; i15 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v294[i15]);
    }

    if (v145 < 0)
    {
      operator delete(v144);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v146, v146[1]);
    for (i16 = 6; i16 != -6; i16 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v298[i16]);
    }

    if (v148 < 0)
    {
      operator delete(v147);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v149, v149[1]);
    for (i17 = 6; i17 != -6; i17 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v300[i17]);
    }

    if (v151 < 0)
    {
      operator delete(v150);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v152, v152[1]);
    for (i18 = 12; i18 != -6; i18 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v302[i18]);
    }

    if (v154 < 0)
    {
      operator delete(v153);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v155, v155[1]);
    for (i19 = 12; i19 != -6; i19 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v305[i19]);
    }

    if (v157 < 0)
    {
      operator delete(v156);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v158, v158[1]);
    for (i20 = 18; i20 != -6; i20 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v308[i20]);
    }

    if (v160 < 0)
    {
      operator delete(v159);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v161, v162[0]);
    if (v164 < 0)
    {
      operator delete(v163);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v165, v166[0]);
    if (v168 < 0)
    {
      operator delete(v167);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v169, v169[1]);
    for (i21 = 12; i21 != -6; i21 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v312[i21]);
    }

    if (v171 < 0)
    {
      operator delete(v170);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v172, v172[1]);
    for (i22 = 6; i22 != -6; i22 -= 6)
    {
      siri::intelligence::TestParseError::~TestParseError(&v315[i22]);
    }

    if (v174 < 0)
    {
      operator delete(v173);
    }

    __cxa_atexit(std::map<std::string,std::map<std::string,std::string>>::~map[abi:ne200100], &qword_280AF4220, &dword_254C81000);
    __cxa_guard_release(&_MergedGlobals_5);
    v2 = v40;
  }

  v2[1] = 0;
  v2[2] = 0;
  *v2 = v2 + 1;
  v3 = qword_280AF4220;
  if (qword_280AF4220 != &qword_280AF4228)
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::map<std::string,std::string>> const&>(v2, (v2 + 1), (v3 + 32));
      v4 = *(v3 + 8);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v3 + 16);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != &qword_280AF4228);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_254CB2534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12, void **a13, void **a14, void **a15, void **a16, void **a17, void **a18, void **a19, uint64_t a20, uint64_t a21, char a22, void *a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, void *a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42, void *a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, char a52, void *a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, char a62, void *a63)
{
  v90 = -2064;
  do
  {
    a20 = std::pair<std::string const,std::map<std::string,std::string>>::~pair(a20) - 48;
    v90 += 48;
  }

  while (v90);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a22, a23);
  siri::intelligence::TestParseError::~TestParseError(&STACK[0x9A0]);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a32, a33);
  v92 = -144;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v86);
    v86 -= 6;
    v92 += 48;
  }

  while (v92);
  if (a40 < 0)
  {
    operator delete(a35);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a42, a43);
  v93 = -240;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v85);
    v85 -= 6;
    v93 += 48;
  }

  while (v93);
  if (a50 < 0)
  {
    operator delete(a45);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a52, a53);
  v94 = &STACK[0xB80];
  v95 = -96;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v94);
    v94 = (v96 - 48);
    v95 += 48;
  }

  while (v95);
  if (a60 < 0)
  {
    operator delete(a55);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a62, a63);
  v97 = &STACK[0xBE0];
  v98 = -96;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v97);
    v97 = (v99 - 48);
    v98 += 48;
  }

  while (v98);
  if (a70 < 0)
  {
    operator delete(a65);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a72, a73);
  v100 = &STACK[0xC40];
  v101 = -96;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v100);
    v100 = (v102 - 48);
    v101 += 48;
  }

  while (v101);
  if (a75 < 0)
  {
    operator delete(a74);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a76, a77);
  v103 = &STACK[0xCA0];
  v104 = -96;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v103);
    v103 = (v105 - 48);
    v104 += 48;
  }

  while (v104);
  if (a79 < 0)
  {
    operator delete(a78);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a80, a81);
  v106 = -1200;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v84);
    v84 -= 6;
    v106 += 48;
  }

  while (v106);
  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x228], STACK[0x230]);
  siri::intelligence::TestParseError::~TestParseError(&STACK[0x1180]);
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x260], STACK[0x268]);
  v107 = &STACK[0x11E0];
  v108 = -96;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v107);
    v107 = (v109 - 48);
    v108 += 48;
  }

  while (v108);
  if (SLOBYTE(STACK[0x28F]) < 0)
  {
    operator delete(STACK[0x278]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x298], STACK[0x2A0]);
  v110 = -144;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v83);
    v83 -= 6;
    v110 += 48;
  }

  while (v110);
  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x2D0], STACK[0x2D8]);
  v111 = -624;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v82);
    v82 -= 6;
    v111 += 48;
  }

  while (v111);
  if (SLOBYTE(STACK[0x2FF]) < 0)
  {
    operator delete(STACK[0x2E8]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x308], STACK[0x310]);
  v112 = &STACK[0x1540];
  v113 = -96;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v112);
    v112 = (v114 - 48);
    v113 += 48;
  }

  while (v113);
  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x340], STACK[0x348]);
  v115 = -144;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(a10);
    a10 = (v117 - 48);
    v115 += 48;
  }

  while (v115);
  if (SLOBYTE(STACK[0x36F]) < 0)
  {
    operator delete(STACK[0x358]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x378], STACK[0x380]);
  v118 = &STACK[0x1630];
  v119 = -96;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v118);
    v118 = (v120 - 48);
    v119 += 48;
  }

  while (v119);
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x3A8], STACK[0x3B0]);
  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x3D8], STACK[0x3E0]);
  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(STACK[0x3F0]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x410], STACK[0x418]);
  v121 = -144;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(a11);
    a11 = (v123 - 48);
    v121 += 48;
  }

  while (v121);
  if (SLOBYTE(STACK[0x43F]) < 0)
  {
    operator delete(STACK[0x428]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x448], STACK[0x450]);
  siri::intelligence::TestParseError::~TestParseError(&STACK[0x16F0]);
  if (SLOBYTE(STACK[0x477]) < 0)
  {
    operator delete(STACK[0x460]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x480], STACK[0x488]);
  v124 = -144;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(a12);
    a12 = (v126 - 48);
    v124 += 48;
  }

  while (v124);
  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(STACK[0x498]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x4B8], STACK[0x4C0]);
  v127 = &STACK[0x17E0];
  v128 = -96;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v127);
    v127 = (v129 - 48);
    v128 += 48;
  }

  while (v128);
  if (SLOBYTE(STACK[0x4E7]) < 0)
  {
    operator delete(STACK[0x4D0]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x4F0], STACK[0x4F8]);
  v130 = &STACK[0x1840];
  v131 = -96;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v130);
    v130 = (v132 - 48);
    v131 += 48;
  }

  while (v131);
  if (SLOBYTE(STACK[0x51F]) < 0)
  {
    operator delete(STACK[0x508]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x528], STACK[0x530]);
  v133 = -144;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(a13);
    a13 = (v135 - 48);
    v133 += 48;
  }

  while (v133);
  if (SLOBYTE(STACK[0x557]) < 0)
  {
    operator delete(STACK[0x540]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x560], STACK[0x568]);
  v136 = -624;
  v137 = v88;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v137);
    v137 = (v138 - 48);
    v136 += 48;
  }

  while (v136);
  if (SLOBYTE(STACK[0x58F]) < 0)
  {
    operator delete(STACK[0x578]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x598], STACK[0x5A0]);
  v139 = &STACK[0x1BA0];
  v140 = -96;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v139);
    v139 = (v141 - 48);
    v140 += 48;
  }

  while (v140);
  if (SLOBYTE(STACK[0x5C7]) < 0)
  {
    operator delete(STACK[0x5B0]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x5C8], STACK[0x5D0]);
  if (SLOBYTE(STACK[0x5F7]) < 0)
  {
    operator delete(STACK[0x5E0]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x600], STACK[0x608]);
  siri::intelligence::TestParseError::~TestParseError(&STACK[0x1BD0]);
  if (SLOBYTE(STACK[0x62F]) < 0)
  {
    operator delete(STACK[0x618]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x638], STACK[0x640]);
  siri::intelligence::TestParseError::~TestParseError(&STACK[0x1C00]);
  if (SLOBYTE(STACK[0x667]) < 0)
  {
    operator delete(STACK[0x650]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x670], STACK[0x678]);
  v142 = -576;
  v143 = v87;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v143);
    v143 = (v144 - 48);
    v142 += 48;
  }

  while (v142);
  if (SLOBYTE(STACK[0x69F]) < 0)
  {
    operator delete(STACK[0x688]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x6A8], STACK[0x6B0]);
  siri::intelligence::TestParseError::~TestParseError(&STACK[0x1E70]);
  if (SLOBYTE(STACK[0x6D7]) < 0)
  {
    operator delete(STACK[0x6C0]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x6E0], STACK[0x6E8]);
  v145 = -144;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(a14);
    a14 = (v147 - 48);
    v145 += 48;
  }

  while (v145);
  if (SLOBYTE(STACK[0x70F]) < 0)
  {
    operator delete(STACK[0x6F8]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x718], STACK[0x720]);
  siri::intelligence::TestParseError::~TestParseError(&STACK[0x1F30]);
  if (SLOBYTE(STACK[0x747]) < 0)
  {
    operator delete(STACK[0x730]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x750], STACK[0x758]);
  v148 = -144;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(a15);
    a15 = (v150 - 48);
    v148 += 48;
  }

  while (v148);
  if (SLOBYTE(STACK[0x77F]) < 0)
  {
    operator delete(STACK[0x768]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x788], STACK[0x790]);
  v151 = -192;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(a18);
    a18 = (v153 - 48);
    v151 += 48;
  }

  while (v151);
  if (SLOBYTE(STACK[0x7B7]) < 0)
  {
    operator delete(STACK[0x7A0]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x7C0], STACK[0x7C8]);
  v154 = &STACK[0x20E0];
  v155 = -96;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v154);
    v154 = (v156 - 48);
    v155 += 48;
  }

  while (v155);
  if (SLOBYTE(STACK[0x7EF]) < 0)
  {
    operator delete(STACK[0x7D8]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x7F8], STACK[0x800]);
  v157 = &STACK[0x2140];
  v158 = -96;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v157);
    v157 = (v159 - 48);
    v158 += 48;
  }

  while (v158);
  if (SLOBYTE(STACK[0x827]) < 0)
  {
    operator delete(STACK[0x810]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x830], STACK[0x838]);
  v160 = -144;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(a16);
    a16 = (v162 - 48);
    v160 += 48;
  }

  while (v160);
  if (SLOBYTE(STACK[0x85F]) < 0)
  {
    operator delete(STACK[0x848]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x868], STACK[0x870]);
  v163 = -144;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(a17);
    a17 = (v165 - 48);
    v163 += 48;
  }

  while (v163);
  if (SLOBYTE(STACK[0x897]) < 0)
  {
    operator delete(STACK[0x880]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x8A0], STACK[0x8A8]);
  v166 = -192;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(a19);
    a19 = (v168 - 48);
    v166 += 48;
  }

  while (v166);
  if (SLOBYTE(STACK[0x8CF]) < 0)
  {
    operator delete(STACK[0x8B8]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x8D0], STACK[0x8D8]);
  if (SLOBYTE(STACK[0x8FF]) < 0)
  {
    operator delete(STACK[0x8E8]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x900], STACK[0x908]);
  if (SLOBYTE(STACK[0x92F]) < 0)
  {
    operator delete(STACK[0x918]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x938], STACK[0x940]);
  v169 = -144;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v81);
    v81 -= 6;
    v169 += 48;
  }

  while (v169);
  if (SLOBYTE(STACK[0x967]) < 0)
  {
    operator delete(STACK[0x950]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x970], STACK[0x978]);
  v170 = &STACK[0x2410];
  v171 = -96;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v170);
    v170 = (v172 - 48);
    v171 += 48;
  }

  while (v171);
  if (SLOBYTE(STACK[0x99F]) < 0)
  {
    operator delete(STACK[0x988]);
  }

  __cxa_guard_abort(&_MergedGlobals_5);
  _Unwind_Resume(a1);
}

void siri::intelligence::GetArrayElementType(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = siri::intelligence::StringEndsWith(a1, siri::intelligence::ARRAY_SUFFIX);
  v5 = *(a1 + 23);
  if (v4)
  {
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a1 + 8);
    }

    std::string::basic_string(a2, a1, 0, v5 - 2, &v8);
  }

  else if ((v5 & 0x80) != 0)
  {
    v6 = *a1;
    v7 = *(a1 + 8);

    std::string::__init_copy_ctor_external(a2, v6, v7);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }
}

BOOL siri::intelligence::DialogTypes::IsDialogTypeInput(siri::intelligence *a1, const void **a2)
{
  siri::intelligence::GetDialogTypes(a1);
  siri::intelligence::GetArrayElementType(a1, &__p);
  v4 = std::__tree<std::string>::find<std::string>(v8, &__p.__r_.__value_.__l.__data_);
  v5 = &v9 != v4 && v4 + 8 != std::__tree<std::string>::find<std::string>((v4 + 7), a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(v8, v9);
  return v5;
}

void sub_254CB3CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(&a15, a16);
  _Unwind_Resume(a1);
}

void siri::intelligence::DialogTypes::GetDialogTypeInputType(siri::intelligence *a1@<X0>, const void **a2@<X1>, std::string *a3@<X8>)
{
  siri::intelligence::GetDialogTypes(a1);
  siri::intelligence::GetArrayElementType(a1, &__p);
  v6 = std::__tree<std::string>::find<std::string>(v11, &__p.__r_.__value_.__l.__data_);
  v7 = v6;
  if (&v12 == v6 || (v8 = std::__tree<std::string>::find<std::string>((v6 + 7), a2), v7 + 8 == v8))
  {
    std::string::basic_string[abi:ne200100]<0>(a3, &str_4);
  }

  else if (*(v8 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *(v8 + 56), *(v8 + 64));
  }

  else
  {
    v9 = *(v8 + 56);
    a3->__r_.__value_.__r.__words[2] = *(v8 + 72);
    *&a3->__r_.__value_.__l.__data_ = v9;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(v11, v12);
}

void sub_254CB3DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(&a15, a16);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,std::map<std::string,std::string>>::~pair(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[14],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_254CB3E64(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::string,std::string>::map[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(a1, v4, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

const void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(void *a1, uint64_t *a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>();
  }

  return v3;
}

const void **std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(void *a1, uint64_t *a2, const void ***a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::less<std::string>::operator()[abi:ne200100](a1, a5, a2 + 4))
  {
    if (!std::less<std::string>::operator()[abi:ne200100](a1, a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<std::string>::operator()[abi:ne200100](a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a3, a5);
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_254CB422C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string const,std::map<std::string,std::string>>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, const void ***a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::map<std::string,std::string>::map[abi:ne200100](this[1].__r_.__value_.__r.__words, a3);
  return this;
}

void sub_254CB42A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::string,std::string>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

void *std::map<std::string,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(void *result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[14],0>(_BYTE *a1, char *a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v3 + 24, "dialog.String");
  return a1;
}

void sub_254CB43DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[14],char const(&)[21],0>(_BYTE *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "dateFormatter");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "dialog.DateFormatter");
  return a1;
}

void sub_254CB4438(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[14],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_254CB448C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[14],0>(_BYTE *a1, char *a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v3 + 24, "dialog.String");
  return a1;
}

void sub_254CB44E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[14],char const(&)[14],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_254CB4534(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[14],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_254CB4588(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[14],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_254CB45DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[14],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_254CB4630(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[15],0>(_BYTE *a1, char *a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v3 + 24, "dialog.Boolean");
  return a1;
}

void sub_254CB4684(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[14],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_254CB46D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[23],0>(_BYTE *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "values");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "dialog.LocationValue[]");
  return a1;
}

void sub_254CB4734(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[19],char const(&)[14],0>(_BYTE *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "administrativeArea");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "dialog.String");
  return a1;
}

void sub_254CB4790(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[23],char const(&)[14],0>(_BYTE *a1, char *a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v3 + 24, "dialog.String");
  return a1;
}

void sub_254CB47E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[17],char const(&)[14],0>(_BYTE *a1, char *a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v3 + 24, "dialog.String");
  return a1;
}

void sub_254CB4838(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[22],char const(&)[14],0>(_BYTE *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "subAdministrativeArea");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "dialog.String");
  return a1;
}

void sub_254CB4894(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[14],0>(_BYTE *a1, char *a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v3 + 24, "dialog.String");
  return a1;
}

void sub_254CB48E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[13],char const(&)[14],0>(_BYTE *a1, char *a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v3 + 24, "dialog.String");
  return a1;
}

void sub_254CB493C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[23],0>(_BYTE *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "address");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "dialog.LocationAddress");
  return a1;
}

void sub_254CB4998(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[11],char const(&)[24],0>(_BYTE *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "childItems");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "dialog.MultiLevelItem[]");
  return a1;
}

void sub_254CB49F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[11],char const(&)[14],0>(_BYTE *a1, char *a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v3 + 24, "dialog.String");
  return a1;
}

void sub_254CB4A48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[24],char const(&)[15],0>(_BYTE *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "friendlyPhoneNumberName");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "dialog.Boolean");
  return a1;
}

void sub_254CB4AA4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[13],char const(&)[20],0>(_BYTE *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "personHandle");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "dialog.PersonHandle");
  return a1;
}

void sub_254CB4B00(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[15],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_254CB4B54(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[22],char const(&)[15],0>(_BYTE *a1, char *a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v3 + 24, "dialog.Boolean");
  return a1;
}

void sub_254CB4BA8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[20],char const(&)[15],0>(_BYTE *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "useRelationshipName");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "dialog.Boolean");
  return a1;
}

void sub_254CB4C04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[18],char const(&)[27],0>(_BYTE *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "localizedAppNames");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "sirikit.LocalizedAppName[]");
  return a1;
}

void sub_254CB4C60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[17],char const(&)[15],0>(_BYTE *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "noPrimaryDisplay");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "dialog.Boolean");
  return a1;
}

void sub_254CB4CBC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[15],0>(_BYTE *a1, char *a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v3 + 24, "dialog.Boolean");
  return a1;
}

void sub_254CB4D10(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[15],0>(_BYTE *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "isAuthenticated");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "dialog.Boolean");
  return a1;
}

void sub_254CB4D6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[11],char const(&)[15],0>(_BYTE *a1, char *a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v3 + 24, "dialog.Boolean");
  return a1;
}

void sub_254CB4DC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[21],char const(&)[15],0>(_BYTE *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "isLockedWithPasscode");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "dialog.Boolean");
  return a1;
}

void sub_254CB4E1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[15],0>(_BYTE *a1, char *a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v3 + 24, "dialog.Boolean");
  return a1;
}

void sub_254CB4E70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[15],char const(&)[14],0>(_BYTE *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "multiUserState");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "dialog.String");
  return a1;
}

void sub_254CB4ECC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[13],char const(&)[27],0>(_BYTE *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "restrictions");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "sirikit.DeviceRestrictions");
  return a1;
}

void sub_254CB4F28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[19],0>(_BYTE *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "aspectRatio");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "visual.AspectRatio");
  return a1;
}

void sub_254CB4F84(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[17],0>(_BYTE *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "imageData");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "visual.ImageData");
  return a1;
}

void sub_254CB4FE0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[16],0>(_BYTE *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(a1, "imageUrl");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "visual.ImageUrl");
  return a1;
}

void sub_254CB503C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::map<std::string,std::map<std::string,std::string>>::map[abi:ne200100](uint64_t result, uint64_t a2)
{
  qword_280AF4230 = 0;
  qword_280AF4228 = 0;
  qword_280AF4220 = &qword_280AF4228;
  if (a2)
  {
    v2 = result;
    v3 = 48 * a2;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::map<std::string,std::string>> const&>(&qword_280AF4220, &qword_280AF4228, v2);
      v2 += 6;
      v3 -= 48;
    }

    while (v3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::map<std::string,std::string>> const&>(uint64_t result, uint64_t a2, const void **a3)
{
  v5 = result;
  v6 = result + 8;
  if (result + 8 == a2 || (result = std::less<std::string>::operator()[abi:ne200100](result, a3, (a2 + 32)), result))
  {
    if (*v5 == a2)
    {
      v8 = a2;
LABEL_16:
      if (!*a2)
      {
        v17 = a2;
        goto LABEL_31;
      }

      v17 = v8;
      v10 = (v8 + 8);
LABEL_30:
      if (!*v10)
      {
        goto LABEL_31;
      }

      return result;
    }

    v7 = *a2;
    if (*a2)
    {
      do
      {
        v8 = v7;
        v7 = *(v7 + 8);
      }

      while (v7);
    }

    else
    {
      v13 = a2;
      do
      {
        v8 = *(v13 + 16);
        v14 = *v8 == v13;
        v13 = v8;
      }

      while (v14);
    }

    result = std::less<std::string>::operator()[abi:ne200100](v5, (v8 + 32), a3);
    if (result)
    {
      goto LABEL_16;
    }

LABEL_29:
    result = std::__tree<std::string>::__find_equal<std::string>(v5, &v17, a3);
    v10 = result;
    goto LABEL_30;
  }

  result = std::less<std::string>::operator()[abi:ne200100](v5, (a2 + 32), a3);
  if (result)
  {
    v10 = (a2 + 8);
    v9 = *(a2 + 8);
    if (v9)
    {
      v11 = *(a2 + 8);
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v15 = a2;
      do
      {
        v12 = *(v15 + 16);
        v14 = *v12 == v15;
        v15 = v12;
      }

      while (!v14);
    }

    if (v12 != v6)
    {
      result = std::less<std::string>::operator()[abi:ne200100](v5, a3, (v12 + 32));
      if (!result)
      {
        goto LABEL_29;
      }

      v9 = *v10;
    }

    if (v9)
    {
      v17 = v12;
      v10 = v12;
    }

    else
    {
      v17 = a2;
    }

    goto LABEL_30;
  }

  v16 = a2;
  v17 = a2;
  if (!a2)
  {
LABEL_31:
    operator new();
  }

  return result;
}

void sub_254CB5318(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::map<std::string,std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<std::string,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::map<std::string,std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<std::string,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::string>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::string>>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::string>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2797B2F70, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

double siri::intelligence::ResponseBase::ResponseBase(siri::intelligence::ResponseBase *this)
{
  *this = &unk_286719028;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 69) = 0u;
  *(this + 22) = 1;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  return result;
}

{
  *this = &unk_286719028;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 69) = 0u;
  *(this + 22) = 1;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  return result;
}

void siri::intelligence::ResponseBase::GetId(siri::intelligence::ResponseBase *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 3);
  }
}

void siri::intelligence::ResponseBase::GetInputGroup(siri::intelligence::ResponseBase *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 4), *(this + 5));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 2);
    a2->__r_.__value_.__r.__words[2] = *(this + 6);
  }
}

void siri::intelligence::ResponseBase::GetCondition(siri::intelligence::ResponseBase *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 79) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 7), *(this + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 56);
    a2->__r_.__value_.__r.__words[2] = *(this + 9);
  }
}

void siri::intelligence::ResponseBase::SetNextIds(std::vector<std::string> *a1, std::string **a2)
{
  v2 = a1 + 4;
  if (v2 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }
}

BOOL siri::intelligence::ResponseBase::IsValid(siri::intelligence::ResponseBase *this)
{
  v1 = *(this + 31);
  if (v1 < 0)
  {
    v1 = *(this + 2);
  }

  return v1 != 0;
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

double siri::intelligence::DirectInvocation::DirectInvocation(siri::intelligence::DirectInvocation *this)
{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

void siri::intelligence::DirectInvocation::GetId(siri::intelligence::DirectInvocation *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

uint64_t siri::intelligence::DirectInvocation::GetUserData@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 32);
  *a2 = *(this + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void siri::intelligence::DirectInvocation::SetUserData(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void siri::intelligence::ReferenceResponse::ReferenceResponse(siri::intelligence::ReferenceResponse *this)
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
  *this = &unk_286719370;
  operator new();
}

void sub_254CB5A14(_Unwind_Exception *a1)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  siri::intelligence::ResponseBase::~ResponseBase(v1);
  _Unwind_Resume(a1);
}

void siri::intelligence::ReferenceResponse::~ReferenceResponse(siri::intelligence::ReferenceResponse *this)
{
  *this = &unk_286719370;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  siri::intelligence::ResponseBase::~ResponseBase(this);
}

{
  *this = &unk_286719370;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  siri::intelligence::ResponseBase::~ResponseBase(this);

  JUMPOUT(0x259C29D90);
}

void std::__shared_ptr_emplace<siri::intelligence::ReferenceResponse::Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867193A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void std::__shared_ptr_emplace<siri::intelligence::ReferenceResponse::Impl>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

BOOL YAML::IsNullString(unsigned __int8 ***a1)
{
  v1 = *(a1 + 23);
  v2 = a1[1];
  if ((v1 & 0x80u) == 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  if (!v3)
  {
    return 1;
  }

  if ((v1 & 0x80) != 0)
  {
    if (v2 != 1)
    {
      if (v2 == 4)
      {
        a1 = *a1;
        if (*a1 != 1819047278 && *a1 != 1819047246)
        {
          return *a1 == 1280070990;
        }

        return 1;
      }

      return 0;
    }

    v6 = **a1;
  }

  else
  {
    if (v1 != 1)
    {
      if (v1 == 4)
      {
        if ((*a1 | 0x20) != 0x6C6C756E)
        {
          return *a1 == 1280070990;
        }

        return 1;
      }

      return 0;
    }

    v6 = *a1;
  }

  return v6 == 126;
}

siri::intelligence::DecisionInfo *siri::intelligence::DecisionInfo::DecisionInfo(siri::intelligence::DecisionInfo *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(this, "");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "");
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  return this;
}

void sub_254CB5E48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::DecisionInfo::GetInputId(siri::intelligence::DecisionInfo *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

_BYTE *siri::intelligence::DecisionInfo::GetInputTypeString@<X0>(siri::intelligence::DecisionInfo *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(this + 12);
  v3 = "NONE";
  if (v2 == 2)
  {
    v3 = "FALLBACK";
  }

  if (v2 == 1)
  {
    v4 = "INTENT";
  }

  else
  {
    v4 = v3;
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v4);
}

void siri::intelligence::DecisionInfo::GetInputGroupId(siri::intelligence::DecisionInfo *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 3), *(this + 4));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 24);
    a2->__r_.__value_.__r.__words[2] = *(this + 5);
  }
}

_BYTE *siri::intelligence::DecisionInfo::GetMatchScopeString@<X0>(siri::intelligence::DecisionInfo *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 13) - 1;
  if (v4 > 2)
  {
    v5 = "LOCAL_SCOPE";
  }

  else
  {
    v5 = off_2797B2F98[v4];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v5);
}

void siri::intelligence::DecisionInfo::GetIntentId(siri::intelligence::DecisionInfo *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 79) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 7), *(this + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 56);
    a2->__r_.__value_.__r.__words[2] = *(this + 9);
  }
}

void sub_254CB6210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void (**a18)(void), void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  IEDefer::~IEDefer(&a18);
  v27 = a16;
  a16 = 0;
  if (v27)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a16, v27);
  }

  v28 = *(v25 - 40);
  *(v25 - 48) = &unk_28671C180;
  *(v25 - 40) = 0;
  if (v28)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v25 - 40, v28);
  }

  _Unwind_Resume(a1);
}

void siri::intelligence::Configuration::GetPathFromFlowId(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v3, "flow");
  std::string::basic_string[abi:ne200100]<0>(&__p, ".flowfamily");
  siri::intelligence::GetPathFromId(a1);
}

void sub_254CB6418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_254CB6638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  __p = (v28 - 72);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void siri::intelligence::Configuration::GetFlowIdFromPath(const std::string *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  siri::intelligence::StringTrim("/", a1, &__p);
  memset(&v1, 0, sizeof(v1));
  siri::intelligence::StringSplit(&__p, "/");
}

void sub_254CB6880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v23 + 23) < 0)
  {
    operator delete(*v23);
  }

  __p = &a23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void siri::intelligence::Configuration::GetPathFromCatId(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v4, "dialog");
  std::string::basic_string[abi:ne200100]<0>(&v3, ".catfamily");
  std::string::basic_string[abi:ne200100]<0>(&__p, ".cat");
  siri::intelligence::GetPathFromId(a1);
}

void sub_254CB69B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Configuration::GetPathFromPatternId(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v3, "pattern");
  std::string::basic_string[abi:ne200100]<0>(&__p, ".patternfamily");
  siri::intelligence::GetPathFromId(a1);
}

void sub_254CB6A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void siri::intelligence::Configuration::GetTemplateDirFromPath(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *a1, *(a1 + 8));
  }

  else
  {
    v15 = *a1;
  }

  size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
LABEL_55:
    *a2 = v15;
    return;
  }

  while (1)
  {
    siri::intelligence::BaseName(&v15, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_ == 9)
      {
        v6 = *__p.__r_.__value_.__l.__data_ != 0x6574616C706D6554 || *(__p.__r_.__value_.__r.__words[0] + 8) != 115;
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v6)
        {
          goto LABEL_55;
        }
      }

      else
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 9 && __p.__r_.__value_.__r.__words[0] == 0x6574616C706D6554 && __p.__r_.__value_.__s.__data_[8] == 115)
    {
      goto LABEL_55;
    }

    siri::intelligence::PopPath(&v15, a2);
    siri::intelligence::BaseName(&v15, &__p);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 4)
      {
        if (LODWORD(__p.__r_.__value_.__l.__data_) == 2003790950)
        {
          goto LABEL_57;
        }

        goto LABEL_42;
      }

      if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 6)
      {
        goto LABEL_42;
      }

      p_p = &__p;
LABEL_32:
      data = p_p->__r_.__value_.__l.__data_;
      v9 = WORD2(p_p->__r_.__value_.__r.__words[0]);
      if (data == 1818323300 && v9 == 26479)
      {
        v11 = 0;
        if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_43;
        }

LABEL_45:
        v12 = __p.__r_.__value_.__r.__words[0];
        goto LABEL_46;
      }

LABEL_42:
      std::string::operator=(&v15, a2);
      v11 = 1;
      if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
      {
LABEL_43:
        if (!v11)
        {
          break;
        }

        goto LABEL_47;
      }

      goto LABEL_45;
    }

    if (__p.__r_.__value_.__l.__size_ != 4)
    {
      if (__p.__r_.__value_.__l.__size_ != 6)
      {
        goto LABEL_42;
      }

      p_p = __p.__r_.__value_.__r.__words[0];
      goto LABEL_32;
    }

    v12 = __p.__r_.__value_.__r.__words[0];
    if (*__p.__r_.__value_.__l.__data_ != 2003790950)
    {
      goto LABEL_42;
    }

    v11 = 0;
LABEL_46:
    operator delete(v12);
    if (!v11)
    {
      break;
    }

LABEL_47:
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      break;
    }

    operator delete(*a2);
LABEL_50:
    v13 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = v15.__r_.__value_.__l.__size_;
    }

    if (!v13)
    {
      goto LABEL_55;
    }
  }

  if (v11)
  {
    goto LABEL_50;
  }

LABEL_57:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_254CB6CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void YAML::detail::memory_holder::merge(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (v3 != *a2)
  {
    std::set<std::shared_ptr<YAML::detail::node>>::insert[abi:ne200100]<std::__tree_const_iterator<std::shared_ptr<YAML::detail::node>,std::__tree_node<std::shared_ptr<YAML::detail::node>,void *> *,long>>(v3, **a2, (*a2 + 8));
    v6 = *a1;
    v5 = a1[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(a2 + 8);
    *a2 = v6;
    *(a2 + 8) = v5;
    if (v7)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_254CB6EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::set<std::shared_ptr<YAML::detail::node>>::insert[abi:ne200100]<std::__tree_const_iterator<std::shared_ptr<YAML::detail::node>,std::__tree_node<std::shared_ptr<YAML::detail::node>,void *> *,long>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::shared_ptr<YAML::detail::node>>::__emplace_hint_unique_key_args<std::shared_ptr<YAML::detail::node>,std::shared_ptr<YAML::detail::node> const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void sub_254CB70F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<YAML::detail::node_data>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<YAML::detail::node_data *,std::shared_ptr<YAML::detail::node_data>::__shared_ptr_default_delete<YAML::detail::node_data,YAML::detail::node_data>,std::allocator<YAML::detail::node_data>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

uint64_t std::__shared_ptr_pointer<YAML::detail::node_data *,std::shared_ptr<YAML::detail::node_data>::__shared_ptr_default_delete<YAML::detail::node_data,YAML::detail::node_data>,std::allocator<YAML::detail::node_data>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<YAML::detail::node_data>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::__list_imp<std::pair<YAML::detail::node *,YAML::detail::node *>>::clear((a2 + 136));
    v3 = *(a2 + 112);
    if (v3)
    {
      *(a2 + 120) = v3;
      operator delete(v3);
    }

    v4 = *(a2 + 80);
    if (v4)
    {
      *(a2 + 88) = v4;
      operator delete(v4);
    }

    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
    }

    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    JUMPOUT(0x259C29D90);
  }
}

void *std::__list_imp<std::pair<YAML::detail::node *,YAML::detail::node *>>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_254CB7300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<YAML::detail::memory_holder>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<YAML::detail::node_ref *,std::shared_ptr<YAML::detail::node_ref>::__shared_ptr_default_delete<YAML::detail::node_ref,YAML::detail::node_ref>,std::allocator<YAML::detail::node_ref>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

uint64_t std::__shared_ptr_pointer<YAML::detail::node_ref *,std::shared_ptr<YAML::detail::node_ref>::__shared_ptr_default_delete<YAML::detail::node_ref,YAML::detail::node_ref>,std::allocator<YAML::detail::node_ref>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_254CB7414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<YAML::detail::node>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<YAML::detail::node *,std::shared_ptr<YAML::detail::node>::__shared_ptr_default_delete<YAML::detail::node,YAML::detail::node>,std::allocator<YAML::detail::node>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

uint64_t std::__shared_ptr_pointer<YAML::detail::node *,std::shared_ptr<YAML::detail::node>::__shared_ptr_default_delete<YAML::detail::node,YAML::detail::node>,std::allocator<YAML::detail::node>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<YAML::detail::node>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<YAML::detail::node_ref const*,int>,std::__map_value_compare<YAML::detail::node_ref const*,std::__value_type<YAML::detail::node_ref const*,int>,std::less<YAML::detail::node_ref const*>,true>,std::allocator<std::__value_type<YAML::detail::node_ref const*,int>>>::destroy(a2 + 16, *(a2 + 24));
    v3 = *(a2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    JUMPOUT(0x259C29D90);
  }
}

void *std::__tree<std::shared_ptr<YAML::detail::node>>::__emplace_unique_key_args<std::shared_ptr<YAML::detail::node>,std::shared_ptr<YAML::detail::node> const&>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

uint64_t std::__tree<std::shared_ptr<YAML::detail::node>>::__emplace_hint_unique_key_args<std::shared_ptr<YAML::detail::node>,std::shared_ptr<YAML::detail::node> const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<std::shared_ptr<YAML::detail::node>>::__find_equal<std::shared_ptr<YAML::detail::node>>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::shared_ptr<YAML::detail::node>>::__find_equal<std::shared_ptr<YAML::detail::node>>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_254CB7998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_254CB7A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::GetFormatUpdaters(siri::intelligence *this)
{
  v50 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v2, "1.0.1");
  v3 = siri::intelligence::UpdateTo_1_0_1;
  std::string::basic_string[abi:ne200100]<0>(v4, "1.0.2");
  v5 = siri::intelligence::UpdateTo_1_0_2;
  std::string::basic_string[abi:ne200100]<0>(v6, "1.0.3");
  v7 = siri::intelligence::UpdateTo_1_0_3;
  std::string::basic_string[abi:ne200100]<0>(v8, "1.0.4");
  v9 = siri::intelligence::UpdateTo_1_0_4;
  std::string::basic_string[abi:ne200100]<0>(v10, "1.0.5");
  v11 = siri::intelligence::UpdateTo_1_0_5;
  std::string::basic_string[abi:ne200100]<0>(v12, "1.0.6");
  v13 = siri::intelligence::UpdateTo_1_0_6;
  std::string::basic_string[abi:ne200100]<0>(v14, "1.0.7");
  v15 = siri::intelligence::UpdateTo_1_0_7;
  std::string::basic_string[abi:ne200100]<0>(v16, "1.4.0");
  v17 = siri::intelligence::UpdateTo_1_4_0;
  std::string::basic_string[abi:ne200100]<0>(v18, "1.4.1");
  v19 = siri::intelligence::UpdateTo_1_4_1;
  std::string::basic_string[abi:ne200100]<0>(v20, "1.4.2");
  v21 = siri::intelligence::UpdateNoOp;
  std::string::basic_string[abi:ne200100]<0>(v22, "1.4.3");
  v23 = siri::intelligence::UpdateNoOp;
  std::string::basic_string[abi:ne200100]<0>(v24, "1.4.4");
  v25 = siri::intelligence::UpdateTo_1_4_4;
  std::string::basic_string[abi:ne200100]<0>(v26, "1.4.5");
  v27 = siri::intelligence::UpdateTo_1_4_5;
  std::string::basic_string[abi:ne200100]<0>(v28, "1.4.6");
  v29 = siri::intelligence::UpdateNoOp;
  std::string::basic_string[abi:ne200100]<0>(v30, "1.4.7");
  v31 = siri::intelligence::UpdateNoOp;
  std::string::basic_string[abi:ne200100]<0>(v32, "2.0.0");
  v33 = siri::intelligence::UpdateNoOp;
  std::string::basic_string[abi:ne200100]<0>(v34, "2.0.1");
  v35 = siri::intelligence::UpdateTo_2_0_1;
  std::string::basic_string[abi:ne200100]<0>(v36, "2.0.2");
  v37 = siri::intelligence::UpdateNoOp;
  std::string::basic_string[abi:ne200100]<0>(v38, "2.0.3");
  v39 = siri::intelligence::UpdateNoOp;
  std::string::basic_string[abi:ne200100]<0>(v40, "2.0.4");
  v41 = siri::intelligence::UpdateNoOp;
  std::string::basic_string[abi:ne200100]<0>(v42, "2.0.5");
  v43 = siri::intelligence::UpdateNoOp;
  std::string::basic_string[abi:ne200100]<0>(v44, "2.0.6");
  v45 = siri::intelligence::UpdateNoOp;
  std::string::basic_string[abi:ne200100]<0>(v46, "2.0.7");
  v47 = siri::intelligence::UpdateNoOp;
  std::string::basic_string[abi:ne200100]<0>(v48, "2.0.8");
  v49 = siri::intelligence::UpdateNoOp;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  operator new();
}

void sub_254CB7FCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,void (*)(protobuf::Intelligence *)>>::__destroy_vector::operator()[abi:ne200100](va);
  v3 = &STACK[0x33F];
  v4 = -768;
  v5 = &STACK[0x33F];
  while (1)
  {
    v6 = *v5;
    v5 -= 4;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 32;
    if (!v4)
    {
      _Unwind_Resume(a1);
    }
  }
}

void siri::intelligence::Updater::IsUpdateAvailable(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v4, *a2, *(a2 + 8));
  }

  else
  {
    v4 = *a2;
  }

  size = HIBYTE(v4.__r_.__value_.__r.__words[2]);
  if ((v4.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v4.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    siri::intelligence::Updater::GetHighestVersionWithinRelease(a1);
  }

  siri::intelligence::Utils::VersionLessThan(a1);
}

void sub_254CB810C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Updater::GetValidVersions(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  siri::intelligence::GetFormatUpdaters(&v2);
}

void sub_254CB8264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void siri::intelligence::Updater::UpdateToVersion(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 1) == 0)
  {
    *(a1 + 16) = v2 | 1;
    std::string::basic_string[abi:ne200100]<0>(&__p, "1.0");
    google::protobuf::internal::ArenaStringPtr::SetNoArena((a1 + 528), &google::protobuf::internal::fixed_address_empty_string, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *(a1 + 544) = 0;
    *(a1 + 16) &= ~4u;
  }

  v3 = *(a1 + 528);
  if (*(v3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    __p.__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&__p.__r_.__value_.__l.__data_ = v4;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "2.0.8");
  siri::intelligence::Utils::VersionLessThan(&__str);
}

void sub_254CB8698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  *(v30 - 72) = &a12;
  std::vector<std::pair<std::string,void (*)(protobuf::Intelligence *)>>::__destroy_vector::operator()[abi:ne200100]((v30 - 72));
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void siri::intelligence::Updater::UpdateToVersion(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  siri::intelligence::GetFormatForFilename(a1);
  siri::intelligence::Loader::LoadFile();
}

void sub_254CB8AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  __p = (v35 - 112);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

void siri::intelligence::UpdateTo_1_0_1(siri::intelligence *this, protobuf::Intelligence *a2)
{
  if (*(this + 32) >= 1)
  {
    v3 = 0;
    while (1)
    {
      v4 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>(this + 120, v3);
      v5 = *(this + 53);
      if (!v5)
      {
        break;
      }

      v6 = *(this + 104);
      v7 = *v5;
      if (v6 >= *v5)
      {
        if (v7 == *(this + 105))
        {
LABEL_8:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 102, v7 + 1);
          v5 = *(this + 53);
          v7 = *v5;
        }

        *v5 = v7 + 1;
        v8 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_ResponseGroup>(*(this + 51));
        v9 = *(this + 104);
        v10 = *(this + 53) + 8 * v9;
        *(this + 104) = v9 + 1;
        *(v10 + 8) = v8;
        goto LABEL_10;
      }

      *(this + 104) = v6 + 1;
      v8 = *&v5[2 * v6 + 2];
LABEL_10:
      if (v4 != v8)
      {
        protobuf::Intelligence_ResponseGroup::Clear(v8);
        protobuf::Intelligence_ResponseGroup::MergeFrom(v8, v4);
      }

      if (++v3 >= *(this + 32))
      {
        goto LABEL_13;
      }
    }

    v7 = *(this + 105);
    goto LABEL_8;
  }

LABEL_13:
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>(this + 120);
  if (*(this + 38) >= 1)
  {
    v11 = 0;
    while (1)
    {
      v12 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(this + 144, v11);
      v13 = *(this + 56);
      if (!v13)
      {
        break;
      }

      v14 = *(this + 110);
      v15 = *v13;
      if (v14 >= *v13)
      {
        if (v15 == *(this + 111))
        {
LABEL_20:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 108, v15 + 1);
          v13 = *(this + 56);
          v15 = *v13;
        }

        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup>(*(this + 54));
        v17 = *(this + 110);
        v18 = *(this + 56) + 8 * v17;
        *(this + 110) = v17 + 1;
        *(v18 + 8) = v16;
        goto LABEL_22;
      }

      *(this + 110) = v14 + 1;
      v16 = *&v13[2 * v14 + 2];
LABEL_22:
      if (v12 != v16)
      {
        protobuf::Intelligence_InputGroup::Clear(v16);
        protobuf::Intelligence_InputGroup::MergeFrom(v16, v12);
      }

      if (++v11 >= *(this + 38))
      {
        goto LABEL_25;
      }
    }

    v15 = *(this + 111);
    goto LABEL_20;
  }

LABEL_25:
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(this + 144);
  if (*(this + 14) >= 1)
  {
    v19 = 0;
    do
    {
      v20 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_DialogResponse>::TypeHandler>(this + 48, v19);
      v21 = *(v20 + 16);
      if ((v21 & 8) != 0)
      {
        v22 = v20;
        v25 = *(v20 + 160);
        v23 = v20 + 160;
        v24 = v25;
        v26 = *(v23 - 16);
        *(v23 - 144) = v21 | 0x20;
        if (v25 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v23, v26);
        }

        std::string::operator=(v24, v26);
        v27 = *(v22 + 144);
        if (v27 != &google::protobuf::internal::fixed_address_empty_string)
        {
          if (*(v27 + 23) < 0)
          {
            **v27 = 0;
            *(v27 + 8) = 0;
          }

          else
          {
            *v27 = 0;
            *(v27 + 23) = 0;
          }
        }

        *(v22 + 16) &= ~8u;
      }

      ++v19;
    }

    while (v19 < *(this + 14));
  }

  if (*(this + 20) >= 1)
  {
    v28 = 0;
    do
    {
      v29 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_BehaviorResponse>::TypeHandler>(this + 72, v28);
      v30 = *(v29 + 16);
      if ((v30 & 8) != 0)
      {
        v31 = v29;
        v34 = *(v29 + 112);
        v32 = v29 + 112;
        v33 = v34;
        v35 = *(v32 - 16);
        *(v32 - 96) = v30 | 0x20;
        if (v34 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v32, v35);
        }

        std::string::operator=(v33, v35);
        v36 = *(v31 + 96);
        if (v36 != &google::protobuf::internal::fixed_address_empty_string)
        {
          if (*(v36 + 23) < 0)
          {
            **v36 = 0;
            *(v36 + 8) = 0;
          }

          else
          {
            *v36 = 0;
            *(v36 + 23) = 0;
          }
        }

        *(v31 + 16) &= ~8u;
      }

      ++v28;
    }

    while (v28 < *(this + 20));
  }

  if (*(this + 26) >= 1)
  {
    v37 = 0;
    do
    {
      v38 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ReferenceResponse>::TypeHandler>(this + 96, v37);
      v39 = *(v38 + 16);
      if ((v39 & 8) != 0)
      {
        v40 = v38;
        v43 = *(v38 + 88);
        v41 = v38 + 88;
        v42 = v43;
        v44 = *(v41 - 16);
        *(v41 - 72) = v39 | 0x20;
        if (v43 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v41, v44);
        }

        std::string::operator=(v42, v44);
        v45 = *(v40 + 72);
        if (v45 != &google::protobuf::internal::fixed_address_empty_string)
        {
          if (*(v45 + 23) < 0)
          {
            **v45 = 0;
            *(v45 + 8) = 0;
          }

          else
          {
            *v45 = 0;
            *(v45 + 23) = 0;
          }
        }

        *(v40 + 16) &= ~8u;
      }

      ++v37;
    }

    while (v37 < *(this + 26));
  }

  if (*(this + 104) >= 1)
  {
    v46 = 0;
    do
    {
      v47 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>(this + 408, v46);
      v48 = *(v47 + 16);
      if ((v48 & 8) != 0)
      {
        v49 = v47;
        v52 = *(v47 + 88);
        v50 = v47 + 88;
        v51 = v52;
        v53 = *(v50 - 16);
        *(v50 - 72) = v48 | 0x20;
        if (v52 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v50, v53);
        }

        std::string::operator=(v51, v53);
        v54 = *(v49 + 72);
        if (v54 != &google::protobuf::internal::fixed_address_empty_string)
        {
          if (*(v54 + 23) < 0)
          {
            **v54 = 0;
            *(v54 + 8) = 0;
          }

          else
          {
            *v54 = 0;
            *(v54 + 23) = 0;
          }
        }

        *(v49 + 16) &= ~8u;
      }

      ++v46;
    }

    while (v46 < *(this + 104));
  }

  if (*(this + 44) >= 1)
  {
    v55 = 0;
    do
    {
      v56 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Activity>::TypeHandler>(this + 168, v55);
      if ((*(v56 + 16) & 4) != 0)
      {
        v57 = v56;
        v58 = (v56 + 64);
        v59 = *(v56 + 64);
        std::string::basic_string[abi:ne200100]<0>(&__str, "global_ruleset");
        std::string::basic_string[abi:ne200100]<0>(&v157, "global_input_group");
        siri::intelligence::StringReplace(v59, &__str, &v157, 0, &__p);
        *(v57 + 16) |= 4u;
        google::protobuf::internal::ArenaStringPtr::SetNoArena(v58, &google::protobuf::internal::fixed_address_empty_string, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v157.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      ++v55;
    }

    while (v55 < *(this + 44));
  }

  if (*(this + 20) >= 1)
  {
    for (i = 0; i < *(this + 20); ++i)
    {
      v61 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_BehaviorResponse>::TypeHandler>(this + 72, i);
      if ((*(v61 + 16) & 0x80) != 0)
      {
        v62 = v61;
        v64 = (v61 + 128);
        v63 = *(v61 + 128);
        if (*(v63 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v63, *(v63 + 1));
          v63 = *v64;
        }

        else
        {
          v65 = *v63;
          __p.__r_.__value_.__r.__words[2] = *(v63 + 2);
          *&__p.__r_.__value_.__l.__data_ = v65;
        }

        if (*(v63 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__str, *v63, *(v63 + 1));
        }

        else
        {
          v66 = *v63;
          __str.__r_.__value_.__r.__words[2] = *(v63 + 2);
          *&__str.__r_.__value_.__l.__data_ = v66;
        }

        std::string::basic_string[abi:ne200100]<0>(v155, "clear_label");
        std::string::basic_string[abi:ne200100]<0>(v153, "clear_string");
        siri::intelligence::StringReplace(&__str, v155, v153, 0, &v157);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v157;
        *(&v157.__r_.__value_.__s + 23) = 0;
        v157.__r_.__value_.__s.__data_[0] = 0;
        if (v154 < 0)
        {
          operator delete(v153[0]);
        }

        if (v156 < 0)
        {
          operator delete(v155[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v155, "set_label");
        std::string::basic_string[abi:ne200100]<0>(v153, "set_string");
        siri::intelligence::StringReplace(&__str, v155, v153, 0, &v157);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v157;
        *(&v157.__r_.__value_.__s + 23) = 0;
        v157.__r_.__value_.__s.__data_[0] = 0;
        if (v154 < 0)
        {
          operator delete(v153[0]);
        }

        if (v156 < 0)
        {
          operator delete(v155[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v155, "split_label");
        std::string::basic_string[abi:ne200100]<0>(v153, "split_string");
        siri::intelligence::StringReplace(&__str, v155, v153, 0, &v157);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v157;
        *(&v157.__r_.__value_.__s + 23) = 0;
        v157.__r_.__value_.__s.__data_[0] = 0;
        if (v154 < 0)
        {
          operator delete(v153[0]);
        }

        if (v156 < 0)
        {
          operator delete(v155[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v155, "clear_flag");
        std::string::basic_string[abi:ne200100]<0>(v153, "clear_BOOLean");
        siri::intelligence::StringReplace(&__str, v155, v153, 0, &v157);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v157;
        *(&v157.__r_.__value_.__s + 23) = 0;
        v157.__r_.__value_.__s.__data_[0] = 0;
        if (v154 < 0)
        {
          operator delete(v153[0]);
        }

        if (v156 < 0)
        {
          operator delete(v155[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v155, "set_flag");
        std::string::basic_string[abi:ne200100]<0>(v153, "set_BOOLean");
        siri::intelligence::StringReplace(&__str, v155, v153, 0, &v157);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v157;
        *(&v157.__r_.__value_.__s + 23) = 0;
        v157.__r_.__value_.__s.__data_[0] = 0;
        if (v154 < 0)
        {
          operator delete(v153[0]);
        }

        if (v156 < 0)
        {
          operator delete(v155[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v155, "decrease_counter");
        std::string::basic_string[abi:ne200100]<0>(v153, "decrease_number");
        siri::intelligence::StringReplace(&__str, v155, v153, 0, &v157);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v157;
        *(&v157.__r_.__value_.__s + 23) = 0;
        v157.__r_.__value_.__s.__data_[0] = 0;
        if (v154 < 0)
        {
          operator delete(v153[0]);
        }

        if (v156 < 0)
        {
          operator delete(v155[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v155, "increase_counter");
        std::string::basic_string[abi:ne200100]<0>(v153, "increase_number");
        siri::intelligence::StringReplace(&__str, v155, v153, 0, &v157);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v157;
        *(&v157.__r_.__value_.__s + 23) = 0;
        v157.__r_.__value_.__s.__data_[0] = 0;
        if (v154 < 0)
        {
          operator delete(v153[0]);
        }

        if (v156 < 0)
        {
          operator delete(v155[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v155, "set_counter");
        std::string::basic_string[abi:ne200100]<0>(v153, "set_number");
        siri::intelligence::StringReplace(&__str, v155, v153, 0, &v157);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v157;
        *(&v157.__r_.__value_.__s + 23) = 0;
        v157.__r_.__value_.__s.__data_[0] = 0;
        if (v154 < 0)
        {
          operator delete(v153[0]);
        }

        if (v156 < 0)
        {
          operator delete(v155[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v155, "clear_list");
        std::string::basic_string[abi:ne200100]<0>(v153, "clear_array");
        siri::intelligence::StringReplace(&__str, v155, v153, 0, &v157);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v157;
        *(&v157.__r_.__value_.__s + 23) = 0;
        v157.__r_.__value_.__s.__data_[0] = 0;
        if (v154 < 0)
        {
          operator delete(v153[0]);
        }

        if (v156 < 0)
        {
          operator delete(v155[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v155, "extend_list");
        std::string::basic_string[abi:ne200100]<0>(v153, "extend_array");
        siri::intelligence::StringReplace(&__str, v155, v153, 0, &v157);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v157;
        *(&v157.__r_.__value_.__s + 23) = 0;
        v157.__r_.__value_.__s.__data_[0] = 0;
        if (v154 < 0)
        {
          operator delete(v153[0]);
        }

        if (v156 < 0)
        {
          operator delete(v155[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v155, "extract_list");
        std::string::basic_string[abi:ne200100]<0>(v153, "extract_array");
        siri::intelligence::StringReplace(&__str, v155, v153, 0, &v157);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v157;
        *(&v157.__r_.__value_.__s + 23) = 0;
        v157.__r_.__value_.__s.__data_[0] = 0;
        if (v154 < 0)
        {
          operator delete(v153[0]);
        }

        if (v156 < 0)
        {
          operator delete(v155[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v155, "pop_back_list");
        std::string::basic_string[abi:ne200100]<0>(v153, "pop_back_array");
        siri::intelligence::StringReplace(&__str, v155, v153, 0, &v157);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v157;
        *(&v157.__r_.__value_.__s + 23) = 0;
        v157.__r_.__value_.__s.__data_[0] = 0;
        if (v154 < 0)
        {
          operator delete(v153[0]);
        }

        if (v156 < 0)
        {
          operator delete(v155[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v155, "length_list");
        std::string::basic_string[abi:ne200100]<0>(v153, "length_array");
        siri::intelligence::StringReplace(&__str, v155, v153, 0, &v157);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v157;
        *(&v157.__r_.__value_.__s + 23) = 0;
        v157.__r_.__value_.__s.__data_[0] = 0;
        if (v154 < 0)
        {
          operator delete(v153[0]);
        }

        if (v156 < 0)
        {
          operator delete(v155[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v155, "reduce_list");
        std::string::basic_string[abi:ne200100]<0>(v153, "reduce_array");
        siri::intelligence::StringReplace(&__str, v155, v153, 0, &v157);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v157;
        *(&v157.__r_.__value_.__s + 23) = 0;
        v157.__r_.__value_.__s.__data_[0] = 0;
        if (v154 < 0)
        {
          operator delete(v153[0]);
        }

        if (v156 < 0)
        {
          operator delete(v155[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v155, "uniquify_list");
        std::string::basic_string[abi:ne200100]<0>(v153, "uniquify_array");
        siri::intelligence::StringReplace(&__str, v155, v153, 0, &v157);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v157;
        *(&v157.__r_.__value_.__s + 23) = 0;
        v157.__r_.__value_.__s.__data_[0] = 0;
        if (v154 < 0)
        {
          operator delete(v153[0]);
        }

        if (v156 < 0)
        {
          operator delete(v155[0]);
        }

        *(v62 + 16) |= 0x80u;
        v67 = *(v62 + 128);
        if (v67 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v64, &__str);
        }

        std::string::operator=(v67, &__str);
        if (*(v62 + 32) >= 1)
        {
          for (j = 0; j < *(v62 + 32); ++j)
          {
            v69 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v62 + 24, j);
            v70 = *(v69 + 120);
            if (*(v70 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v157, *v70, *(v70 + 1));
            }

            else
            {
              v71 = *v70;
              v157.__r_.__value_.__r.__words[2] = *(v70 + 2);
              *&v157.__r_.__value_.__l.__data_ = v71;
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              if (__str.__r_.__value_.__l.__size_ != 12)
              {
                goto LABEL_211;
              }

              p_str = __str.__r_.__value_.__r.__words[0];
            }

            else
            {
              if (HIBYTE(__str.__r_.__value_.__r.__words[2]) != 12)
              {
                goto LABEL_211;
              }

              p_str = &__str;
            }

            v73 = p_str->__r_.__value_.__r.__words[0];
            v74 = p_str->__r_.__value_.__r.__words[1];
            if (v73 == 0x74735F74696C7073 && v74 == 1735289202)
            {
              if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
              {
                if (v157.__r_.__value_.__l.__size_ == 4)
                {
                  v77 = v157.__r_.__value_.__r.__words[0];
LABEL_253:
                  if (LODWORD(v77->__r_.__value_.__l.__data_) == 1953720684)
                  {
                    goto LABEL_262;
                  }
                }
              }

              else if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) == 4)
              {
                v77 = &v157;
                goto LABEL_253;
              }
            }

            if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
            {
              if (__str.__r_.__value_.__l.__size_ != 12)
              {
                goto LABEL_211;
              }

              v76 = __str.__r_.__value_.__r.__words[0];
            }

            else
            {
              if (HIBYTE(__str.__r_.__value_.__r.__words[2]) != 12)
              {
                goto LABEL_211;
              }

              v76 = &__str;
            }

            v78 = v76->__r_.__value_.__r.__words[0];
            v79 = v76->__r_.__value_.__r.__words[1];
            if (v78 == 0x615F6874676E656CLL && v79 == 2036429426)
            {
              if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
              {
                size = v157.__r_.__value_.__l.__size_;
                if (v157.__r_.__value_.__l.__size_ != 7)
                {
                  goto LABEL_223;
                }

                v92 = v157.__r_.__value_.__r.__words[0];
              }

              else
              {
                v81 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
                if (HIBYTE(v157.__r_.__value_.__r.__words[2]) != 7)
                {
                  goto LABEL_213;
                }

                v92 = &v157;
              }

              data = v92->__r_.__value_.__l.__data_;
              v94 = *(v92->__r_.__value_.__r.__words + 3);
              if (data == 1853189987 && v94 == 1919251566)
              {
LABEL_262:
                v90 = "target";
                goto LABEL_240;
              }
            }

LABEL_211:
            if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              v81 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
LABEL_213:
              switch(v81)
              {
                case 4:
                  if (LODWORD(v157.__r_.__value_.__l.__data_) != 1734437990)
                  {
                    goto LABEL_241;
                  }

                  break;
                case 5:
                  v87 = &v157;
                  goto LABEL_233;
                case 7:
                  if (LODWORD(v157.__r_.__value_.__l.__data_) != 1853189987 || *(v157.__r_.__value_.__r.__words + 3) != 1919251566)
                  {
                    goto LABEL_241;
                  }

                  break;
                default:
                  goto LABEL_241;
              }

              goto LABEL_239;
            }

            size = v157.__r_.__value_.__l.__size_;
LABEL_223:
            if (size == 4)
            {
              if (*v157.__r_.__value_.__l.__data_ == 1734437990)
              {
                goto LABEL_239;
              }

              size = v157.__r_.__value_.__l.__size_;
            }

            if (size == 5)
            {
              v87 = v157.__r_.__value_.__r.__words[0];
LABEL_233:
              v88 = v87->__r_.__value_.__l.__data_;
              v84 = v87->__r_.__value_.__s.__data_[4];
              v85 = v88 == 1700946284;
              v86 = 108;
LABEL_234:
              if (!v85 || v84 != v86)
              {
                goto LABEL_241;
              }

LABEL_239:
              v90 = "name";
LABEL_240:
              MEMORY[0x259C299D0](&v157, v90);
              goto LABEL_241;
            }

            if (size == 7)
            {
              v84 = *(v157.__r_.__value_.__r.__words[0] + 3);
              v85 = *v157.__r_.__value_.__l.__data_ == 1853189987;
              v86 = 1919251566;
              goto LABEL_234;
            }

LABEL_241:
            *(v69 + 16) |= 1u;
            v91 = *(v69 + 120);
            if (v91 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v69 + 120, &v157);
            }

            std::string::operator=(v91, &v157);
            if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v157.__r_.__value_.__l.__data_);
            }
          }
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  if (*(this + 86) >= 1)
  {
    v96 = 0;
    while (1)
    {
      v97 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Label>::TypeHandler>(this + 336, v96);
      v98 = *(this + 50);
      if (!v98)
      {
        break;
      }

      v99 = *(this + 98);
      v100 = *v98;
      if (v99 >= *v98)
      {
        if (v100 == *(this + 99))
        {
LABEL_275:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 96, v100 + 1);
          v98 = *(this + 50);
          v100 = *v98;
        }

        *v98 = v100 + 1;
        v101 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Variable>(*(this + 48));
        v102 = *(this + 98);
        v103 = *(this + 50) + 8 * v102;
        *(this + 98) = v102 + 1;
        *(v103 + 8) = v101;
        goto LABEL_277;
      }

      *(this + 98) = v99 + 1;
      v101 = *&v98[2 * v99 + 2];
LABEL_277:
      v104 = *(v97 + 24);
      v105 = *(v101 + 9);
      *(v101 + 4) |= 1u;
      if (v105 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v101 + 72, v104);
      }

      std::string::operator=(v105, v104);
      protobuf::Intelligence_Variable::set_type(v101, siri::intelligence::TYPE_STRING[0]);
      if ((*(v97 + 16) & 2) != 0)
      {
        v106 = *(v97 + 32);
        v109 = *(v101 + 12);
        v108 = v101 + 96;
        v107 = v109;
        *(v108 - 80) |= 8u;
        if (v109 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v108, v106);
        }

        std::string::operator=(v107, v106);
      }

      if (++v96 >= *(this + 86))
      {
        goto LABEL_285;
      }
    }

    v100 = *(this + 99);
    goto LABEL_275;
  }

LABEL_285:
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Label>::TypeHandler>(this + 336);
  if (*(this + 74) >= 1)
  {
    v110 = 0;
    while (1)
    {
      v111 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Counter>::TypeHandler>(this + 288, v110);
      v112 = *(this + 50);
      if (!v112)
      {
        break;
      }

      v113 = *(this + 98);
      v114 = *v112;
      if (v113 >= *v112)
      {
        if (v114 == *(this + 99))
        {
LABEL_292:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 96, v114 + 1);
          v112 = *(this + 50);
          v114 = *v112;
        }

        *v112 = v114 + 1;
        v115 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Variable>(*(this + 48));
        v116 = *(this + 98);
        v117 = *(this + 50) + 8 * v116;
        *(this + 98) = v116 + 1;
        *(v117 + 8) = v115;
        goto LABEL_294;
      }

      *(this + 98) = v113 + 1;
      v115 = *&v112[2 * v113 + 2];
LABEL_294:
      v118 = *(v111 + 24);
      v119 = *(v115 + 9);
      *(v115 + 4) |= 1u;
      if (v119 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v115 + 72, v118);
      }

      std::string::operator=(v119, v118);
      protobuf::Intelligence_Variable::set_type(v115, siri::intelligence::TYPE_NUMBER[0]);
      if ((*(v111 + 16) & 2) != 0)
      {
        v120 = *(v111 + 32);
        *(v115 + 4) |= 0x20u;
        *(v115 + 14) = v120;
      }

      if (++v110 >= *(this + 74))
      {
        goto LABEL_300;
      }
    }

    v114 = *(this + 99);
    goto LABEL_292;
  }

LABEL_300:
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Counter>::TypeHandler>(this + 288);
  if (*(this + 80) >= 1)
  {
    v121 = 0;
    while (1)
    {
      v122 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Flag>::TypeHandler>(this + 312, v121);
      v123 = *(this + 50);
      if (!v123)
      {
        break;
      }

      v124 = *(this + 98);
      v125 = *v123;
      if (v124 >= *v123)
      {
        if (v125 == *(this + 99))
        {
LABEL_307:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 96, v125 + 1);
          v123 = *(this + 50);
          v125 = *v123;
        }

        *v123 = v125 + 1;
        v126 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Variable>(*(this + 48));
        v127 = *(this + 98);
        v128 = *(this + 50) + 8 * v127;
        *(this + 98) = v127 + 1;
        *(v128 + 8) = v126;
        goto LABEL_309;
      }

      *(this + 98) = v124 + 1;
      v126 = *&v123[2 * v124 + 2];
LABEL_309:
      v129 = *(v122 + 24);
      v130 = *(v126 + 9);
      *(v126 + 4) |= 1u;
      if (v130 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v126 + 72, v129);
      }

      std::string::operator=(v130, v129);
      protobuf::Intelligence_Variable::set_type(v126, siri::intelligence::TYPE_BOOLEAN[0]);
      if ((*(v122 + 16) & 2) != 0)
      {
        v131 = *(v122 + 32);
        *(v126 + 4) |= 0x80u;
        *(v126 + 121) = v131;
      }

      if (++v121 >= *(this + 80))
      {
        goto LABEL_315;
      }
    }

    v125 = *(this + 99);
    goto LABEL_307;
  }

LABEL_315:
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Flag>::TypeHandler>(this + 312);
  if (*(this + 92) >= 1)
  {
    v132 = 0;
    while (1)
    {
      v133 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_List>::TypeHandler>(this + 360, v132);
      v134 = *(this + 50);
      if (!v134)
      {
        break;
      }

      v135 = *(this + 98);
      v136 = *v134;
      if (v135 < *v134)
      {
        *(this + 98) = v135 + 1;
        v137 = *&v134[2 * v135 + 2];
        goto LABEL_324;
      }

      if (v136 == *(this + 99))
      {
        goto LABEL_322;
      }

LABEL_323:
      *v134 = v136 + 1;
      v137 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Variable>(*(this + 48));
      v138 = *(this + 98);
      v139 = *(this + 50) + 8 * v138;
      *(this + 98) = v138 + 1;
      *(v139 + 8) = v137;
LABEL_324:
      v140 = *(v133 + 48);
      v141 = *(v137 + 9);
      *(v137 + 4) |= 1u;
      if (v141 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v137 + 72, v140);
      }

      std::string::operator=(v141, v140);
      *(v137 + 4) |= 2u;
      std::string::basic_string[abi:ne200100]<0>(&__p, "string[]");
      google::protobuf::internal::ArenaStringPtr::SetNoArena(v137 + 10, &google::protobuf::internal::fixed_address_empty_string, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (*(v133 + 32) >= 1)
      {
        v142 = 0;
        while (1)
        {
          v143 = *(v137 + 5);
          if (!v143)
          {
            break;
          }

          v144 = *(v137 + 8);
          v145 = *v143;
          if (v144 >= *v143)
          {
            if (v145 == *(v137 + 9))
            {
LABEL_336:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v137 + 6, v145 + 1);
              v143 = *(v137 + 5);
              v145 = *v143;
            }

            *v143 = v145 + 1;
            v146 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(v137 + 3));
            v147 = *(v137 + 8);
            v148 = *(v137 + 5) + 8 * v147;
            *(v137 + 8) = v147 + 1;
            *(v148 + 8) = v146;
            goto LABEL_338;
          }

          *(v137 + 8) = v144 + 1;
          v146 = *&v143[2 * v144 + 2];
LABEL_338:
          v149 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v133 + 24, v142);
          v152 = *(v146 + 16);
          v151 = v146 + 128;
          v150 = v152;
          *(v151 - 112) |= 2u;
          if (v152 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v151, v149);
          }

          std::string::operator=(v150, v149);
          if (++v142 >= *(v133 + 32))
          {
            goto LABEL_342;
          }
        }

        v145 = *(v137 + 9);
        goto LABEL_336;
      }

LABEL_342:
      if (++v132 >= *(this + 92))
      {
        goto LABEL_343;
      }
    }

    v136 = *(this + 99);
LABEL_322:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 96, v136 + 1);
    v134 = *(this + 50);
    v136 = *v134;
    goto LABEL_323;
  }

LABEL_343:
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_List>::TypeHandler>(this + 360);
}

void sub_254CBA1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::UpdateTo_1_0_2(siri::intelligence *this, protobuf::Intelligence *a2)
{
  if (*(this + 14) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_DialogResponse>::TypeHandler>(this + 48, v3);
      v5 = v4;
      v6 = *(v4 + 16);
      if ((v6 & 2) != 0)
      {
        v7 = *(v4 + 128);
        memset(&v91, 0, sizeof(v91));
        siri::intelligence::StringSplit(v7, ",");
      }

      if ((v6 & 4) != 0 && siri::intelligence::IsNewStyleCondition(*(v4 + 136)))
      {
        v8 = *(v5 + 208);
        v9 = *(v5 + 136);
        *(v5 + 16) |= 0x800u;
        if (v8 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v5 + 208, v9);
        }

        std::string::operator=(v8, v9);
        v10 = *(v5 + 136);
        if (v10 != &google::protobuf::internal::fixed_address_empty_string)
        {
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
        }

        *(v5 + 16) &= ~4u;
      }

      if (*(v5 + 32) >= 1)
      {
        v11 = 0;
        do
        {
          v12 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v5 + 24, v11);
          siri::intelligence::UpdateKeyValueParameterTo_1_0_2(v12, v13);
          ++v11;
        }

        while (v11 < *(v5 + 32));
      }

      if (*(v5 + 56) >= 1)
      {
        v14 = 0;
        do
        {
          v15 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v5 + 48, v14);
          siri::intelligence::UpdateKeyValueParameterTo_1_0_2(v15, v16);
          ++v14;
        }

        while (v14 < *(v5 + 56));
      }

      ++v3;
    }

    while (v3 < *(this + 14));
  }

  v17 = this;
  if (*(this + 20) >= 1)
  {
    for (i = 0; i < *(this + 20); ++i)
    {
      v19 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_BehaviorResponse>::TypeHandler>(v17 + 72, i);
      v20 = v19;
      v21 = *(v19 + 16);
      if ((v21 & 2) != 0)
      {
        v22 = *(v19 + 80);
        memset(&v91, 0, sizeof(v91));
        siri::intelligence::StringSplit(v22, ",");
      }

      if ((v21 & 4) != 0 && siri::intelligence::IsNewStyleCondition(*(v19 + 88)))
      {
        v23 = *(v20 + 136);
        v24 = *(v20 + 88);
        *(v20 + 16) |= 0x100u;
        if (v23 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v20 + 136, v24);
        }

        std::string::operator=(v23, v24);
        v25 = *(v20 + 88);
        if (v25 != &google::protobuf::internal::fixed_address_empty_string)
        {
          if (*(v25 + 23) < 0)
          {
            **v25 = 0;
            *(v25 + 8) = 0;
          }

          else
          {
            *v25 = 0;
            *(v25 + 23) = 0;
          }
        }

        *(v20 + 16) &= ~4u;
      }

      if (*(v20 + 32) >= 1)
      {
        v26 = 0;
        do
        {
          v27 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v20 + 24, v26);
          siri::intelligence::UpdateKeyValueParameterTo_1_0_2(v27, v28);
          ++v26;
        }

        while (v26 < *(v20 + 32));
      }

      v29 = *(v20 + 128);
      v30 = *(v29 + 23);
      if (v30 < 0)
      {
        if (v29[1] == 11)
        {
          v29 = *v29;
LABEL_44:
          v31 = *v29;
          v32 = *(v29 + 3);
          if (v31 == 0x75725F7972746572 && v32 == 0x73656C75725F7972)
          {
            *(v20 + 16) |= 0x80u;
            std::string::basic_string[abi:ne200100]<0>(v92, "retry_inputs");
            google::protobuf::internal::ArenaStringPtr::SetNoArena((v20 + 128), &google::protobuf::internal::fixed_address_empty_string, v92);
            if (SHIBYTE(v92[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v92[0].__r_.__value_.__l.__data_);
            }
          }
        }
      }

      else if (v30 == 11)
      {
        goto LABEL_44;
      }

      v17 = this;
    }
  }

  v34 = v17;
  if (*(v17 + 26) >= 1)
  {
    v35 = 0;
    do
    {
      v36 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ReferenceResponse>::TypeHandler>(v34 + 96, v35);
      v37 = v36;
      v38 = *(v36 + 16);
      if ((v38 & 2) != 0)
      {
        v39 = *(v36 + 56);
        memset(&v91, 0, sizeof(v91));
        siri::intelligence::StringSplit(v39, ",");
      }

      if ((v38 & 4) != 0 && siri::intelligence::IsNewStyleCondition(*(v36 + 64)))
      {
        v40 = *(v37 + 120);
        v41 = *(v37 + 64);
        *(v37 + 16) |= 0x200u;
        if (v40 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v37 + 120, v41);
        }

        std::string::operator=(v40, v41);
        v42 = *(v37 + 64);
        if (v42 != &google::protobuf::internal::fixed_address_empty_string)
        {
          if (*(v42 + 23) < 0)
          {
            **v42 = 0;
            *(v42 + 8) = 0;
          }

          else
          {
            *v42 = 0;
            *(v42 + 23) = 0;
          }
        }

        *(v37 + 16) &= ~4u;
      }

      ++v35;
    }

    while (v35 < *(v34 + 26));
  }

  if (*(v34 + 104) >= 1)
  {
    v43 = 0;
    do
    {
      v44 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>(v34 + 408, v43);
      v45 = v44;
      v46 = *(v44 + 16);
      if ((v46 & 2) != 0)
      {
        v47 = *(v44 + 56);
        memset(&v91, 0, sizeof(v91));
        siri::intelligence::StringSplit(v47, ",");
      }

      if ((v46 & 4) != 0 && siri::intelligence::IsNewStyleCondition(*(v44 + 64)))
      {
        v48 = *(v45 + 104);
        v49 = *(v45 + 64);
        *(v45 + 16) |= 0x80u;
        if (v48 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v45 + 104, v49);
        }

        std::string::operator=(v48, v49);
        v50 = *(v45 + 64);
        if (v50 != &google::protobuf::internal::fixed_address_empty_string)
        {
          if (*(v50 + 23) < 0)
          {
            **v50 = 0;
            *(v50 + 8) = 0;
          }

          else
          {
            *v50 = 0;
            *(v50 + 23) = 0;
          }
        }

        *(v45 + 16) &= ~4u;
      }

      ++v43;
    }

    while (v43 < *(v34 + 104));
  }

  if (*(v34 + 110) >= 1)
  {
    v51 = 0;
    while (1)
    {
      v90 = v51;
      v52 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(v34 + 432, v51);
      LODWORD(v53) = *(v52 + 56);
      if (v53 >= 1)
      {
        break;
      }

LABEL_103:
      if (*(v52 + 32) >= 1)
      {
        v66 = 0;
        while (1)
        {
          v67 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::TypeHandler>(v52 + 24, v66);
          if (*(v67 + 32) >= 1)
          {
            break;
          }

LABEL_119:
          google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v67 + 24);
          if (++v66 >= *(v52 + 32))
          {
            goto LABEL_120;
          }
        }

        v68 = 0;
        while (2)
        {
          v69 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v67 + 24, v68);
          v70 = *(v67 + 64);
          if (v70)
          {
            v71 = *(v67 + 56);
            v72 = *v70;
            if (v71 < *v70)
            {
              *(v67 + 56) = v71 + 1;
              AlignedAndAddCleanup = *&v70[2 * v71 + 2];
              goto LABEL_118;
            }

            if (v72 == *(v67 + 60))
            {
LABEL_112:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v67 + 48), v72 + 1);
              v70 = *(v67 + 64);
              v72 = *v70;
            }

            *v70 = v72 + 1;
            v74 = *(v67 + 48);
            if (!v74)
            {
              operator new();
            }

            if (v74[14])
            {
            }

            AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v74, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
            AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
            AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
            AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
            v75 = *(v67 + 56);
            v76 = *(v67 + 64) + 8 * v75;
            *(v67 + 56) = v75 + 1;
            *(v76 + 8) = AlignedAndAddCleanup;
LABEL_118:
            std::string::operator=(AlignedAndAddCleanup, v69);
            if (++v68 >= *(v67 + 32))
            {
              goto LABEL_119;
            }

            continue;
          }

          break;
        }

        v72 = *(v67 + 60);
        goto LABEL_112;
      }

LABEL_120:
      LODWORD(v77) = *(v52 + 80);
      if (v77 >= 1)
      {
        v78 = 0;
        do
        {
          if (v78 >= v77)
          {
            google::protobuf::internal::LogMessage::LogMessage(v92, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1561);
            v79 = google::protobuf::internal::LogMessage::operator<<(v92, "CHECK failed: (index) < (current_size_): ");
            google::protobuf::internal::LogFinisher::operator=(&v91, &v79->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v92[0].__r_.__value_.__l.__data_);
          }

          v80 = *(*(v52 + 88) + 8 * v78 + 8);
          if ((*(v80 + 16) & 2) != 0)
          {
            v81 = *(v80 + 56);
            memset(&v91, 0, sizeof(v91));
            siri::intelligence::StringSplit(v81, ",");
          }

          ++v78;
          v77 = *(v52 + 80);
        }

        while (v78 < v77);
      }

      v51 = v90 + 1;
      v34 = this;
      if (v90 + 1 >= *(this + 110))
      {
        goto LABEL_128;
      }
    }

    v54 = 0;
    while (1)
    {
      if (v54 >= v53)
      {
        google::protobuf::internal::LogMessage::LogMessage(v92, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1561);
        v55 = google::protobuf::internal::LogMessage::operator<<(v92, "CHECK failed: (index) < (current_size_): ");
        google::protobuf::internal::LogFinisher::operator=(&v91, &v55->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v92[0].__r_.__value_.__l.__data_);
      }

      v56 = *(*(v52 + 64) + 8 * v54 + 8);
      if (*(v56 + 32) >= 1)
      {
        break;
      }

LABEL_102:
      google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v56 + 24);
      ++v54;
      v53 = *(v52 + 56);
      if (v54 >= v53)
      {
        goto LABEL_103;
      }
    }

    v57 = 0;
    while (1)
    {
      v58 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v56 + 24, v57);
      v59 = *(v56 + 64);
      if (!v59)
      {
        break;
      }

      v60 = *(v56 + 56);
      v61 = *v59;
      if (v60 >= *v59)
      {
        if (v61 == *(v56 + 60))
        {
LABEL_95:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v56 + 48), v61 + 1);
          v59 = *(v56 + 64);
          v61 = *v59;
        }

        *v59 = v61 + 1;
        v63 = *(v56 + 48);
        if (!v63)
        {
          operator new();
        }

        if (v63[14])
        {
        }

        v62 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v63, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
        v62->__r_.__value_.__r.__words[0] = 0;
        v62->__r_.__value_.__l.__size_ = 0;
        v62->__r_.__value_.__r.__words[2] = 0;
        v64 = *(v56 + 56);
        v65 = *(v56 + 64) + 8 * v64;
        *(v56 + 56) = v64 + 1;
        *(v65 + 8) = v62;
        goto LABEL_101;
      }

      *(v56 + 56) = v60 + 1;
      v62 = *&v59[2 * v60 + 2];
LABEL_101:
      std::string::operator=(v62, v58);
      if (++v57 >= *(v56 + 32))
      {
        goto LABEL_102;
      }
    }

    v61 = *(v56 + 60);
    goto LABEL_95;
  }

LABEL_128:
  if (*(v34 + 98) >= 1)
  {
    v82 = 0;
    do
    {
      v83 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Variable>::TypeHandler>(v34 + 384, v82);
      if (*(v83 + 32) >= 1)
      {
        v84 = 0;
        do
        {
          v85 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v83 + 24, v84);
          siri::intelligence::UpdateKeyValueParameterTo_1_0_2(v85, v86);
          ++v84;
        }

        while (v84 < *(v83 + 32));
      }

      if (*(v83 + 56) >= 1)
      {
        v87 = 0;
        do
        {
          v88 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v83 + 48, v87);
          siri::intelligence::UpdateKeyValueParameterTo_1_0_2(v88, v89);
          ++v87;
        }

        while (v87 < *(v83 + 56));
      }

      ++v82;
    }

    while (v82 < *(v34 + 98));
  }
}

void sub_254CBB0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::UpdateTo_1_0_3(siri::intelligence *this, protobuf::Intelligence *a2)
{
  if (*(this + 68) >= 1)
  {
    v3 = 0;
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition>::TypeHandler>(this + 264, v3);
      *(v5 + 16) |= 2u;
      v6 = *(v5 + 32);
      if (!v6)
      {
        v6 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Condition_ConditionEntry>(0);
        *(v5 + 32) = v6;
      }

      siri::intelligence::UpdateConditionEntryTo_1_0_3(v6, v4);
      ++v3;
    }

    while (v3 < *(this + 68));
  }
}

void siri::intelligence::UpdateTo_1_0_4(siri::intelligence *this, protobuf::Intelligence *a2)
{
  if (*(this + 98) >= 1)
  {
    for (i = 0; i < *(this + 98); ++i)
    {
      v4 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Variable>::TypeHandler>(this + 384, i);
      if ((*(v4 + 16) & 2) != 0)
      {
        v5 = v4;
        v6 = (v4 + 80);
        v7 = *(v4 + 80);
        std::string::basic_string[abi:ne200100]<0>(&__p, "[]");
        v8 = siri::intelligence::StringEndsWith(v7, &__p);
        v9 = v8;
        if (v11 < 0)
        {
          operator delete(__p.n128_u64[0]);
          if (v9)
          {
LABEL_8:
            *(v5 + 16) |= 2u;
            std::string::basic_string[abi:ne200100]<0>(&__p, "array");
            google::protobuf::internal::ArenaStringPtr::SetNoArena(v6, &google::protobuf::internal::fixed_address_empty_string, &__p);
            if (v11 < 0)
            {
              operator delete(__p.n128_u64[0]);
            }
          }
        }

        else if (v8)
        {
          goto LABEL_8;
        }
      }
    }
  }
}

void sub_254CBB348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::UpdateTo_1_0_5(siri::intelligence *this, protobuf::Intelligence *a2)
{
  if (*(this + 98) >= 1)
  {
    v3 = 0;
    while (1)
    {
      v4 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Variable>::TypeHandler>(this + 384, v3);
      v5 = v4;
      v6 = *(v4 + 16);
      if ((v6 & 8) != 0)
      {
        *(v4 + 16) = v6 | 0x10;
        v17 = *(v4 + 104);
        if (!v17)
        {
          v17 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(0);
          *(v5 + 104) = v17;
        }

        v18 = *(v5 + 96);
        v21 = *(v17 + 16);
        v19 = v17 + 128;
        v20 = v21;
        *(v19 - 112) |= 2u;
        if (v21 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v19, v18);
        }

        std::string::operator=(v20, v18);
        v25 = *(v5 + 96);
        if (v25 != &google::protobuf::internal::fixed_address_empty_string)
        {
          if (*(v25 + 23) < 0)
          {
            **v25 = 0;
            *(v25 + 8) = 0;
          }

          else
          {
            *v25 = 0;
            *(v25 + 23) = 0;
          }
        }

        v24 = *(v5 + 16) & 0xFFFFFFF7;
        goto LABEL_43;
      }

      if ((v6 & 0x20) != 0)
      {
        break;
      }

      if ((v6 & 0x80) != 0)
      {
        *(v4 + 16) = v6 | 0x10;
        v26 = *(v4 + 104);
        if (!v26)
        {
          v26 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(0);
          *(v5 + 104) = v26;
        }

        v27 = *(v5 + 121);
        *(v26 + 4) |= 0x100u;
        *(v26 + 184) = v27;
        *(v5 + 121) = 0;
        v24 = *(v5 + 16) & 0xFFFFFF7F;
LABEL_43:
        *(v5 + 16) = v24;
        goto LABEL_44;
      }

      if (*(v4 + 32) >= 1)
      {
        *(v4 + 16) = v6 | 0x10;
        v7 = *(v4 + 104);
        if (!v7)
        {
          v7 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(0);
          *(v5 + 104) = v7;
        }

        v38 = 0;
        v39 = 0;
        v40 = 0;
        google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(&v38, v5 + 24);
        if (v39)
        {
          if (v40)
          {
            v8 = (v40 + 8);
          }

          else
          {
            v8 = 0;
          }

          while (1)
          {
            v9 = *(v7 + 8);
            if (!v9)
            {
              break;
            }

            v10 = *(v7 + 14);
            v11 = *v9;
            if (v10 >= *v9)
            {
              if (v11 == *(v7 + 15))
              {
LABEL_18:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v7 + 12, v11 + 1);
                v9 = *(v7 + 8);
                v11 = *v9;
              }

              *v9 = v11 + 1;
              v12 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(v7 + 6));
              v13 = *(v7 + 14);
              v14 = *(v7 + 8) + 8 * v13;
              *(v7 + 14) = v13 + 1;
              *(v14 + 8) = v12;
              goto LABEL_20;
            }

            *(v7 + 14) = v10 + 1;
            v12 = *&v9[2 * v10 + 2];
LABEL_20:
            v15 = *v8;
            if (*v8 != v12)
            {
              protobuf::Intelligence_KeyValueParameter::Clear(v12);
              protobuf::Intelligence_KeyValueParameter::MergeFrom(v12, v15);
            }

            ++v8;
            if (v40)
            {
              v16 = v40 + 8;
            }

            else
            {
              v16 = 0;
            }

            if (v8 == (v16 + 8 * v39))
            {
              goto LABEL_26;
            }
          }

          v11 = *(v7 + 15);
          goto LABEL_18;
        }

LABEL_26:
        google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v5 + 24);
        goto LABEL_67;
      }

      if (*(v4 + 56) >= 1)
      {
        *(v4 + 16) = v6 | 0x10;
        v28 = *(v4 + 104);
        if (!v28)
        {
          v28 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(0);
          *(v5 + 104) = v28;
        }

        v38 = 0;
        v39 = 0;
        v40 = 0;
        google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(&v38, v5 + 48);
        if (!v39)
        {
LABEL_66:
          google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v5 + 48);
LABEL_67:
          google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(&v38);
          goto LABEL_44;
        }

        if (v40)
        {
          v29 = (v40 + 8);
        }

        else
        {
          v29 = 0;
        }

        while (2)
        {
          v30 = *(v28 + 11);
          if (v30)
          {
            v31 = *(v28 + 20);
            v32 = *v30;
            if (v31 < *v30)
            {
              *(v28 + 20) = v31 + 1;
              v33 = *&v30[2 * v31 + 2];
              goto LABEL_60;
            }

            if (v32 == *(v28 + 21))
            {
LABEL_58:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v28 + 18, v32 + 1);
              v30 = *(v28 + 11);
              v32 = *v30;
            }

            *v30 = v32 + 1;
            v33 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(v28 + 9));
            v34 = *(v28 + 20);
            v35 = *(v28 + 11) + 8 * v34;
            *(v28 + 20) = v34 + 1;
            *(v35 + 8) = v33;
LABEL_60:
            v36 = *v29;
            if (*v29 != v33)
            {
              protobuf::Intelligence_KeyValueParameter::Clear(v33);
              protobuf::Intelligence_KeyValueParameter::MergeFrom(v33, v36);
            }

            ++v29;
            if (v40)
            {
              v37 = v40 + 8;
            }

            else
            {
              v37 = 0;
            }

            if (v29 == (v37 + 8 * v39))
            {
              goto LABEL_66;
            }

            continue;
          }

          break;
        }

        v32 = *(v28 + 21);
        goto LABEL_58;
      }

LABEL_44:
      if (++v3 >= *(this + 98))
      {
        return;
      }
    }

    *(v4 + 16) = v6 | 0x10;
    v22 = *(v4 + 104);
    if (!v22)
    {
      v22 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(0);
      *(v5 + 104) = v22;
    }

    v23 = *(v5 + 112);
    *(v22 + 4) |= 0x80u;
    *(v22 + 22) = v23;
    *(v5 + 112) = 0;
    v24 = *(v5 + 16) & 0xFFFFFFDF;
    goto LABEL_43;
  }
}

void sub_254CBB740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(va);
  _Unwind_Resume(a1);
}

void siri::intelligence::UpdateTo_1_0_6(siri::intelligence *this, protobuf::Intelligence *a2)
{
  if (*(this + 110) < 1)
  {
    goto LABEL_205;
  }

  v3 = 0;
  do
  {
    v4 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(this + 432, v3);
    if ((*(v4 + 16) & 2) == 0 || *(this + 44) < 1)
    {
      goto LABEL_34;
    }

    v5 = 0;
    while (1)
    {
      v6 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Activity>::TypeHandler>(this + 168, v5);
      v7 = *(v6 + 56);
      v8 = *(v4 + 152);
      v9 = *(v7 + 23);
      if (v9 >= 0)
      {
        v10 = *(v7 + 23);
      }

      else
      {
        v10 = *(v7 + 8);
      }

      v11 = *(v8 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 8);
      }

      if (v10 == v11)
      {
        v13 = v6;
        v14 = v9 >= 0 ? *(v6 + 56) : *v7;
        v15 = v12 >= 0 ? *(v4 + 152) : *v8;
        if (!memcmp(v14, v15, v10))
        {
          break;
        }
      }

      if (++v5 >= *(this + 44))
      {
        goto LABEL_34;
      }
    }

    v16 = *(v4 + 144);
    v17 = *(v13 + 72);
    *(v13 + 16) |= 8u;
    if (v17 == &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v13 + 72, v16);
    }

    std::string::operator=(v17, v16);
    v18 = *(v13 + 64);
    std::string::basic_string[abi:ne200100]<0>(__p, "default=yes");
    v19 = siri::intelligence::StringContains(v18, __p);
    v20 = v19;
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
      if (v20)
      {
LABEL_28:
        *(this + 4) |= 2u;
        v21 = *(this + 67);
        if (v21 || (v21 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Start>(0), (*(this + 67) = v21) != 0))
        {
          v22 = *(v13 + 56);
          v25 = *(v21 + 6);
          v23 = v21 + 48;
          v24 = v25;
          *(v23 - 32) |= 1u;
          if (v25 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v23, v22);
          }

          std::string::operator=(v24, v22);
        }
      }
    }

    else if (v19)
    {
      goto LABEL_28;
    }

    *(v4 + 169) = 0;
    *(v4 + 16) &= ~0x10u;
LABEL_34:
    if (*(v4 + 80) < 1)
    {
      goto LABEL_127;
    }

    v26 = 0;
    while (1)
    {
      v27 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_LegacyEvent>::TypeHandler>(v4 + 72, v26);
      siri::intelligence::StringToUpper(*(v27 + 48), __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) == 18)
      {
        v28 = __p[0].__r_.__value_.__r.__words[0] == 0x4F435F5452415453 && __p[0].__r_.__value_.__l.__size_ == 0x495441535245564ELL;
        if (v28 && LOWORD(__p[0].__r_.__value_.__r.__words[2]) == 20047)
        {
          goto LABEL_62;
        }
      }

LABEL_60:
      if (++v26 >= *(v4 + 80))
      {
        goto LABEL_127;
      }
    }

    if (__p[0].__r_.__value_.__l.__size_ != 18)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
      goto LABEL_60;
    }

    v32 = *__p[0].__r_.__value_.__l.__data_ != 0x4F435F5452415453 || *(__p[0].__r_.__value_.__r.__words[0] + 8) != 0x495441535245564ELL || *(__p[0].__r_.__value_.__r.__words[0] + 16) != 20047;
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (v32)
    {
      goto LABEL_60;
    }

LABEL_62:
    if (*(v27 + 32) >= 1)
    {
      if ((*(v4 + 16) & 2) == 0)
      {
        goto LABEL_64;
      }

      v47 = *(v4 + 152);
      v48 = *(v47 + 23);
      if ((v48 & 0x80000000) == 0)
      {
        if (v48 != 10)
        {
          goto LABEL_98;
        }

LABEL_94:
        v49 = *v47;
        v50 = *(v47 + 4);
        if (v49 != 0x6C61626F6C675F5FLL || v50 != 24415)
        {
          goto LABEL_98;
        }

LABEL_64:
        *(this + 4) |= 2u;
        v33 = *(this + 67);
        if (v33 || (v33 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Start>(0), (*(this + 67) = v33) != 0))
        {
          v34 = *(v27 + 40);
          v35 = v34 ? v34 + 8 : 0;
          v36 = *(v27 + 32);
          if (v36)
          {
            v37 = 8 * v36;
            while (1)
            {
              v38 = *v35;
              if (*(*v35 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(__p, *v38, *(v38 + 1));
              }

              else
              {
                v39 = *v38;
                __p[0].__r_.__value_.__r.__words[2] = *(v38 + 2);
                *&__p[0].__r_.__value_.__l.__data_ = v39;
              }

              v40 = *(v33 + 5);
              if (!v40)
              {
                break;
              }

              v41 = *(v33 + 8);
              v42 = *v40;
              if (v41 >= *v40)
              {
                if (v42 == *(v33 + 9))
                {
LABEL_79:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v33 + 6, v42 + 1);
                  v40 = *(v33 + 5);
                  v42 = *v40;
                }

                *v40 = v42 + 1;
                v44 = *(v33 + 3);
                if (!v44)
                {
                  operator new();
                }

                if (v44[14])
                {
                }

                AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v44, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
                AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
                AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
                AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
                v45 = *(v33 + 8);
                v46 = *(v33 + 5) + 8 * v45;
                *(v33 + 8) = v45 + 1;
                *(v46 + 8) = AlignedAndAddCleanup;
                goto LABEL_85;
              }

              *(v33 + 8) = v41 + 1;
              AlignedAndAddCleanup = *&v40[2 * v41 + 2];
LABEL_85:
              std::string::operator=(AlignedAndAddCleanup, __p);
              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }

              v35 += 8;
              v37 -= 8;
              if (!v37)
              {
                goto LABEL_114;
              }
            }

            v42 = *(v33 + 9);
            goto LABEL_79;
          }
        }

        goto LABEL_114;
      }

      if (v47[1] == 10)
      {
        v47 = *v47;
        goto LABEL_94;
      }

LABEL_98:
      if (*(this + 44) >= 1)
      {
        v52 = 0;
        while (1)
        {
          v53 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Activity>::TypeHandler>(this + 168, v52);
          v54 = *(v53 + 56);
          v55 = *(v4 + 152);
          v56 = *(v54 + 23);
          if (v56 >= 0)
          {
            v57 = *(v54 + 23);
          }

          else
          {
            v57 = *(v54 + 8);
          }

          v58 = *(v55 + 23);
          v59 = v58;
          if ((v58 & 0x80u) != 0)
          {
            v58 = *(v55 + 8);
          }

          if (v57 == v58)
          {
            v60 = v53;
            v61 = v56 >= 0 ? *(v53 + 56) : *v54;
            v62 = v59 >= 0 ? *(v4 + 152) : *v55;
            if (!memcmp(v61, v62, v57))
            {
              break;
            }
          }

          if (++v52 >= *(this + 44))
          {
            goto LABEL_114;
          }
        }

        v72 = *(v27 + 40);
        v73 = v72 ? v72 + 8 : 0;
        v74 = *(v27 + 32);
        if (v74)
        {
          v75 = 8 * v74;
          while (1)
          {
            v76 = *v73;
            if (*(*v73 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(__p, *v76, *(v76 + 1));
            }

            else
            {
              v77 = *v76;
              __p[0].__r_.__value_.__r.__words[2] = *(v76 + 2);
              *&__p[0].__r_.__value_.__l.__data_ = v77;
            }

            v78 = *(v60 + 40);
            if (!v78)
            {
              break;
            }

            v79 = *(v60 + 32);
            v80 = *v78;
            if (v79 >= *v78)
            {
              if (v80 == *(v60 + 36))
              {
LABEL_150:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v60 + 24), v80 + 1);
                v78 = *(v60 + 40);
                v80 = *v78;
              }

              *v78 = v80 + 1;
              v82 = *(v60 + 24);
              if (!v82)
              {
                operator new();
              }

              if (v82[14])
              {
              }

              v81 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v82, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
              v81->__r_.__value_.__r.__words[0] = 0;
              v81->__r_.__value_.__l.__size_ = 0;
              v81->__r_.__value_.__r.__words[2] = 0;
              v83 = *(v60 + 32);
              v84 = *(v60 + 40) + 8 * v83;
              *(v60 + 32) = v83 + 1;
              *(v84 + 8) = v81;
              goto LABEL_156;
            }

            *(v60 + 32) = v79 + 1;
            v81 = *&v78[2 * v79 + 2];
LABEL_156:
            std::string::operator=(v81, __p);
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }

            v73 += 8;
            v75 -= 8;
            if (!v75)
            {
              goto LABEL_114;
            }
          }

          v80 = *(v60 + 36);
          goto LABEL_150;
        }
      }
    }

LABEL_114:
    v63 = *(v4 + 80);
    if (v63 <= v26)
    {
      google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 2043);
      v64 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: (start + num) <= (size()): ");
      google::protobuf::internal::LogFinisher::operator=(&v120, &v64->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
      v63 = *(v4 + 80);
    }

    if (v63 <= v26)
    {
      google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1568);
      v65 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v120, &v65->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
    }

    v66 = *(*(v4 + 88) + 8 * v26 + 8);
    if (v66)
    {
      v67 = *(v4 + 72) == 0;
    }

    else
    {
      v67 = 0;
    }

    if (v67)
    {
      (*(*v66 + 8))(v66);
    }

    if (*(v4 + 80) <= v26)
    {
      google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 2065);
      v68 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: (start + num) <= (size()): ");
      google::protobuf::internal::LogFinisher::operator=(&v120, &v68->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(v4 + 72, v26, 1);
LABEL_127:
    v69 = *(v4 + 16);
    if ((v69 & 2) != 0)
    {
      v70 = *(v4 + 152);
      if (v70 != &google::protobuf::internal::fixed_address_empty_string)
      {
        if (*(v70 + 23) < 0)
        {
          **v70 = 0;
          *(v70 + 8) = 0;
        }

        else
        {
          *v70 = 0;
          *(v70 + 23) = 0;
        }
      }

      v69 = *(v4 + 16) & 0xFFFFFFFD;
      *(v4 + 16) = v69;
    }

    if ((*(v4 + 169) & 1) == 0)
    {
      *(v4 + 169) = 0;
      *(v4 + 16) = v69 & 0xFFFFFFEF;
    }

    ++v3;
    v71 = *(this + 110);
  }

  while (v3 < v71);
  if (v71 >= 1)
  {
    do
    {
      v85 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(this + 432, v71 - 1);
      if (v85[8])
      {
        v86 = 0;
      }

      else
      {
        v86 = v85[14] == 0;
      }

      if (v86 && v85[20] == 0)
      {
        if (*(this + 44) >= 1)
        {
          v88 = v85;
          v89 = 0;
          do
          {
            v90 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Activity>::TypeHandler>(this + 168, v89);
            v91 = *(v90 + 72);
            v92 = *(v88 + 18);
            v93 = *(v91 + 23);
            if (v93 >= 0)
            {
              v94 = *(v91 + 23);
            }

            else
            {
              v94 = *(v91 + 8);
            }

            v95 = *(v92 + 23);
            v96 = v95;
            if ((v95 & 0x80u) != 0)
            {
              v95 = *(v92 + 8);
            }

            if (v94 == v95)
            {
              v97 = v90;
              v98 = *v91;
              v99 = v93 >= 0 ? *(v90 + 72) : *v91;
              v100 = v96 >= 0 ? *(v88 + 18) : *v92;
              if (!memcmp(v99, v100, v94))
              {
                if (v91 != &google::protobuf::internal::fixed_address_empty_string)
                {
                  if (v93 < 0)
                  {
                    *v98 = 0;
                    *(v91 + 8) = 0;
                  }

                  else
                  {
                    *v91 = 0;
                    *(v91 + 23) = 0;
                  }
                }

                *(v97 + 16) &= ~8u;
              }
            }

            ++v89;
          }

          while (v89 < *(this + 44));
        }

        if (v71 > *(this + 110))
        {
          google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 2043);
          v101 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: (start + num) <= (size()): ");
          google::protobuf::internal::LogFinisher::operator=(&v120, &v101->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
        }

        if (v71 > *(this + 110))
        {
          google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1568);
          v102 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: (index) < (current_size_): ");
          google::protobuf::internal::LogFinisher::operator=(&v120, &v102->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
        }

        v103 = *(*(this + 56) + 8 * (v71 - 1) + 8);
        if (v103)
        {
          v104 = *(this + 54) == 0;
        }

        else
        {
          v104 = 0;
        }

        if (v104)
        {
          (*(*v103 + 8))(v103);
        }

        if (v71 > *(this + 110))
        {
          google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 2065);
          v105 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: (start + num) <= (size()): ");
          google::protobuf::internal::LogFinisher::operator=(&v120, &v105->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
        }

        google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(this + 432, v71 - 1, 1);
      }
    }

    while (v71-- > 1);
  }

LABEL_205:
  if (*(this + 44) >= 1)
  {
    v107 = 0;
    do
    {
      v108 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Activity>::TypeHandler>(this + 168, v107);
      v109 = *(v108 + 64);
      if (v109 != &google::protobuf::internal::fixed_address_empty_string)
      {
        if (*(v109 + 23) < 0)
        {
          **v109 = 0;
          *(v109 + 8) = 0;
        }

        else
        {
          *v109 = 0;
          *(v109 + 23) = 0;
        }
      }

      *(v108 + 16) &= ~4u;
      ++v107;
      v110 = *(this + 44);
    }

    while (v107 < v110);
    if (v110 > 0)
    {
      v111 = *(this + 4);
      if ((v111 & 2) != 0)
      {
        if (!*(this + 67))
        {
          google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 22110);
          v117 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: !value || start_ != nullptr: ");
          google::protobuf::internal::LogFinisher::operator=(&v120, &v117->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
        }
      }

      else
      {
        *(this + 4) = v111 | 2;
        v112 = *(this + 67);
        if (!v112)
        {
          v118 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Start>(0);
          *(this + 67) = v118;
          if (!v118)
          {
            return;
          }

          v112 = v118;
          if (*(this + 44) <= 0)
          {
            google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
            v119 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: (index) < (current_size_): ");
            google::protobuf::internal::LogFinisher::operator=(&v120, &v119->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
          }
        }

        v113 = *(*(*(this + 23) + 8) + 56);
        v116 = *(v112 + 6);
        v115 = v112 + 48;
        v114 = v116;
        *(v115 - 32) |= 1u;
        if (v116 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v115, v113);
        }

        std::string::operator=(v114, v113);
      }
    }
  }
}