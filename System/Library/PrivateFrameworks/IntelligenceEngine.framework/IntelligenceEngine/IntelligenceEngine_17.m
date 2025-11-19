void sub_254D7C0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(a1);
}

siri::intelligence::VariableBoolean *siri::intelligence::VariableBoolean::VariableBoolean(siri::intelligence::VariableBoolean *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v4, &str_14);
  std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_BOOLEAN[0]);
  siri::intelligence::Variable::Variable(this, &v4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  *this = &unk_28671C608;
  *(this + 66) = 0;
  return this;
}

void sub_254D7C288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t siri::intelligence::VariableBoolean::VariableBoolean(uint64_t a1, const std::string *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_BOOLEAN[0]);
  siri::intelligence::Variable::Variable(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_28671C608;
  *(a1 + 66) = 0;
  return a1;
}

void sub_254D7C344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::VariableBoolean::VariableBoolean(uint64_t a1, const std::string *a2, char a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_BOOLEAN[0]);
  siri::intelligence::Variable::Variable(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_28671C608;
  *(a1 + 66) = a3;
  *(a1 + 64) = 1;
  return a1;
}

void sub_254D7C3FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::VariableBoolean::SetValue(uint64_t this, char a2)
{
  *(this + 66) = a2;
  *(this + 64) = 1;
  return this;
}

uint64_t siri::intelligence::VariableBoolean::SetValueFromString(_BYTE *a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    if (siri::intelligence::StringIsBool(a2))
    {
      a1[66] = siri::intelligence::StringToBool(a2, 0);
      result = 1;
      a1[64] = 1;
    }

    else
    {
      (*(*a1 + 24))(a1);
      return 0;
    }
  }

  else
  {
    (*(*a1 + 24))(a1);
    return 1;
  }

  return result;
}

uint64_t siri::intelligence::VariableBoolean::SetUndefined(uint64_t this)
{
  *(this + 66) = 0;
  *(this + 64) = 0;
  return this;
}

uint64_t siri::intelligence::VariableBoolean::SetEmpty(uint64_t this)
{
  *(this + 66) = 0;
  *(this + 64) = 1;
  return this;
}

uint64_t siri::intelligence::VariableBoolean::IsEmpty(siri::intelligence::VariableBoolean *this)
{
  if (*(this + 66) == 1)
  {
    v1 = *(this + 64) ^ 1;
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

_BYTE *siri::intelligence::VariableBoolean::AsString@<X0>(siri::intelligence::VariableBoolean *this@<X0>, _BYTE *a2@<X8>)
{
  if (*(this + 66))
  {
    v2 = "true";
  }

  else
  {
    v2 = "false";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void sub_254D7C648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::VariableBoolean::~VariableBoolean(void **this)
{
  siri::intelligence::Variable::~Variable(this);

  JUMPOUT(0x259C29D90);
}

void YAML::EncodeBase64(YAML *this@<X0>, unint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a3, 4 * a2 / 3 + 3, 0);
  if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = a3->__r_.__value_.__r.__words[0];
  }

  v7 = a2 / 3;
  v8 = a2 % 3;
  if (a2 >= 3)
  {
    do
    {
      v6->__r_.__value_.__s.__data_[0] = YAML::encoding[*this >> 2];
      v6->__r_.__value_.__s.__data_[1] = YAML::encoding[(*(this + 1) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (*this & 3))];
      v6->__r_.__value_.__s.__data_[2] = YAML::encoding[(*(this + 2) >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (*(this + 1) & 0xF))];
      v9 = (v6->__r_.__value_.__r.__words + 4);
      v6->__r_.__value_.__s.__data_[3] = YAML::encoding[*(this + 2) & 0x3F];
      this = (this + 3);
      v6 = (v6 + 4);
      --v7;
    }

    while (v7);
    v6 = v9;
  }

  if (v8 == 1)
  {
    v6->__r_.__value_.__s.__data_[0] = YAML::encoding[*this >> 2];
    v6->__r_.__value_.__s.__data_[1] = YAML::encoding[16 * (*this & 3)];
    v10 = 61;
  }

  else
  {
    if (v8 != 2)
    {
      goto LABEL_12;
    }

    v6->__r_.__value_.__s.__data_[0] = YAML::encoding[*this >> 2];
    v6->__r_.__value_.__s.__data_[1] = YAML::encoding[(*(this + 1) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (*this & 3))];
    v10 = YAML::encoding[4 * (*(this + 1) & 0xF)];
  }

  v6->__r_.__value_.__s.__data_[2] = v10;
  v6->__r_.__value_.__s.__data_[3] = 61;
  v6 = (v6 + 4);
LABEL_12:
  if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = a3->__r_.__value_.__r.__words[0];
  }

  std::string::resize(a3, v6 - v11, 0);
}

void sub_254D7C870(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t YAML::DecodeBase64@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    if (*(result + 8))
    {
LABEL_3:
      operator new();
    }
  }

  else if (*(result + 23))
  {
    goto LABEL_3;
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_254D7CAEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254D7CD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16)
{
  if (a15 != v24)
  {
  }

  if (a16 != v21)
  {
  }

  _Unwind_Resume(a1);
}

void sub_254D7D564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45)
{
  siri::intelligence::ValidationResults::~ValidationResults(&a15);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  IEDefer::~IEDefer((v46 - 120));
  v47 = a45;
  a44 = &unk_28671C180;
  a45 = 0;
  if (v47)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a45, v47);
  }

  v48 = *(v46 - 104);
  *(v46 - 112) = &unk_28671C180;
  *(v46 - 104) = 0;
  if (v48)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v46 - 104, v48);
  }

  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::TestRunner::RunTestSuite@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t **a3@<X8>)
{
  a3[1] = 0;
  *a3 = a1;
  a3[2] = 0;
  a3[3] = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  std::vector<siri::intelligence::TestCase>::__init_with_size[abi:ne200100]<siri::intelligence::TestCase*,siri::intelligence::TestCase*>(&v27, *a1, a1[1], 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3));
  v5 = v27;
  v6 = v28;
  if (v27 != v28)
  {
    while (*a2 != *(a2 + 8))
    {
      if (*(v5 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, *(v5 + 48), *(v5 + 56));
      }

      else
      {
        v16 = *(v5 + 48);
      }

      v7 = siri::intelligence::VectorContains(a2, &v16);
      v8 = v7;
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
        if (v8)
        {
          break;
        }
      }

      else if (v7)
      {
        break;
      }

LABEL_29:
      v5 += 152;
      if (v5 == v6)
      {
        goto LABEL_30;
      }
    }

    siri::intelligence::TestCase::TestCase(&v16, v5);
    v25 = 0;
    memset(v26, 0, 24);
    if (*(v5 + 96))
    {
      if (siri::intelligence::RunTest(v5, &v16, v9))
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      v25 = v10;
    }

    else
    {
      v25 = 3;
      std::string::basic_string[abi:ne200100]<0>(__p, "test is disabled");
      v11 = v15;
      v12 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v11 = __p[1];
      }

      if (v11)
      {
        std::vector<std::string>::push_back[abi:ne200100](v26, __p);
        v12 = v15;
      }

      if ((v12 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }

    siri::intelligence::TestResults::AddResult(a3, &v16);
    __p[0] = v26;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = &v24;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = &v23;
    std::vector<protobuf::FlowTest_Step>::__destroy_vector::operator()[abi:ne200100](__p);
    if (v22 < 0)
    {
      operator delete(v21);
    }

    if (v20 < 0)
    {
      operator delete(v19);
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    goto LABEL_29;
  }

LABEL_30:
  v16.__r_.__value_.__r.__words[0] = &v27;
  std::vector<siri::intelligence::TestCase>::__destroy_vector::operator()[abi:ne200100](&v16);
  return siri::intelligence::TestResults::SummarizeToStdout(a3);
}

void sub_254D7DAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  a16 = a9;
  std::vector<siri::intelligence::TestResult>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::RunTest(siri::intelligence *this, const siri::intelligence::TestCase *a2, siri::intelligence::TestResult *a3)
{
  siri::intelligence::FindFileForFlowId(this + 24, v8);
  if (siri::intelligence::FileExists(v8))
  {
    siri::intelligence::GetFormatForFilename(v8);
    siri::intelligence::Loader::LoadFile();
  }

  std::operator+<char>();
  size = HIBYTE(v7.__r_.__value_.__r.__words[2]);
  v5 = HIBYTE(v7.__r_.__value_.__r.__words[2]);
  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v7.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::vector<std::string>::push_back[abi:ne200100](a2 + 160, &v7);
    v5 = HIBYTE(v7.__r_.__value_.__r.__words[2]);
  }

  if (v5 < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  return 0;
}

void sub_254D7EECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  a35 = (v48 - 200);
  std::vector<protobuf::FlowTest_Step>::__destroy_vector::operator()[abi:ne200100](&a35);
  a35 = (v48 - 176);
  std::vector<siri::intelligence::ExecStateResponse>::__destroy_vector::operator()[abi:ne200100](&a35);
  v50 = *(v48 - 144);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  v51 = *(v48 - 128);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  if (*(v48 - 97) < 0)
  {
    operator delete(*(v48 - 120));
  }

  _Unwind_Resume(a1);
}

void siri::intelligence::TestKeyValueToVariable(siri::intelligence *this, const protobuf::FlowTest_KeyValueParameter *a2)
{
  v4 = *(a2 + 9);
  if (*(v4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *v4, *(v4 + 1));
  }

  else
  {
    v5 = *v4;
    v10.__r_.__value_.__r.__words[2] = *(v4 + 2);
    *&v10.__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a2 + 4);
  if ((v6 & 2) != 0)
  {
    v7 = *(a2 + 10);
    operator new();
  }

  if ((v6 & 8) != 0)
  {
    v8 = *(a2 + 96);
    operator new();
  }

  if ((v6 & 4) != 0)
  {
    v9 = *(a2 + 11);
    operator new();
  }

  if (*(a2 + 14) >= 1)
  {
    std::allocate_shared[abi:ne200100]<siri::intelligence::VariableDictionary,std::allocator<siri::intelligence::VariableDictionary>,std::string &,0>();
  }

  if (*(a2 + 8) >= 1)
  {
    std::allocate_shared[abi:ne200100]<siri::intelligence::VariableArray,std::allocator<siri::intelligence::VariableArray>,std::string &,0>();
  }

  *this = 0;
  *(this + 1) = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_254D7F658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<siri::intelligence::ExecStateResponse>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<siri::intelligence::ExecStateResponse>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void siri::intelligence::TestResult::~TestResult(void **this)
{
  v2 = this + 20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
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

uint64_t siri::intelligence::NLGenerator::FromCATI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, *a4, *(a4 + 8));
  }

  else
  {
    v35 = *a4;
  }

  size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v35.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    siri::intelligence::BaseName(a1, &__p);
    siri::intelligence::RemoveExtension(&__p, v45);
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    v35 = v45[0];
    *(&v45[0].__r_.__value_.__s + 23) = 0;
    v45[0].__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (siri::intelligence::FileExists(a3))
  {
    v33 = 0;
    v34 = 0;
    v32 = &v33;
    rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::GenericDocument(v45, 0, 1024, 0);
    siri::intelligence::ReadFileToString(a3, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v41 = p_p;
    v42 = p_p;
    if (*(rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::ParseStream<128u,rapidjson::UTF8<char>,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(v45, &v41) + 88))
    {
      if (v46 > 0x11)
      {
        v9 = "Unknown error.";
      }

      else
      {
        v9 = off_2797B3038[v46];
      }

      std::string::basic_string[abi:ne200100]<0>(&v41, v9);
      if ((v43 & 0x80u) == 0)
      {
        v27 = &v41;
      }

      else
      {
        v27 = v41;
      }

      siri::intelligence::Log::Error("Failed to parse CATI Manifest JSON: %s", v26, v27);
      if (v43 < 0)
      {
        operator delete(v41);
      }
    }

    else if (rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::HasMember(v45, "cati-manifest") && *(rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[]<char const>(v45, "cati-manifest") + 22) == 3)
    {
      v13 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[]<char const>(v45, "cati-manifest");
      if (rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::HasMember(v13, "intents") && *(rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[]<char const>(v13, "intents") + 22) == 4)
      {
        v15 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[]<char const>(v13, "intents");
        if (*(v15 + 11) != 4)
        {
          __assert_rtn("GetArray", "document.h", 1724, "IsArray()");
        }

        v16 = *v15;
        if (v16)
        {
          v17 = *(v15 + 1);
          v18 = 24 * v16;
          do
          {
            std::string::basic_string[abi:ne200100]<0>(&__str, "intentName");
            siri::intelligence::ParseJSONString(&v41, v17, &__str);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            std::string::basic_string[abi:ne200100]<0>(v38, "GUID");
            siri::intelligence::ParseJSONString(&__str, v17, v38);
            if (v39 < 0)
            {
              operator delete(v38[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(v36, "ensemble");
            siri::intelligence::ParseJSONString(v38, v17, v36);
            if (v37 < 0)
            {
              operator delete(v36[0]);
            }

            v19 = v43;
            if ((v43 & 0x80u) != 0)
            {
              v19 = v42;
            }

            if (v19)
            {
              v20 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v20 = __str.__r_.__value_.__l.__size_;
              }

              if (v20)
              {
                if ((v39 & 0x80u) == 0)
                {
                  v21 = v39;
                }

                else
                {
                  v21 = v38[1];
                }

                v22 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
                if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v22 = v35.__r_.__value_.__l.__size_;
                }

                if (v21 == v22)
                {
                  v23 = (v39 & 0x80u) == 0 ? v38 : v38[0];
                  v24 = (v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v35 : v35.__r_.__value_.__r.__words[0];
                  if (!memcmp(v23, v24, v21))
                  {
                    v36[0] = &v41;
                    v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v32, &v41);
                    std::string::operator=((v25 + 56), &__str);
                  }
                }
              }
            }

            if (v39 < 0)
            {
              operator delete(v38[0]);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if (v43 < 0)
            {
              operator delete(v41);
            }

            v17 += 6;
            v18 -= 24;
          }

          while (v18);
        }
      }

      else
      {
        if (*(a3 + 23) >= 0)
        {
          v31 = a3;
        }

        else
        {
          v31 = *a3;
        }

        siri::intelligence::Log::Warning("The CATI Manifest file does not have a %s array: %s", v14, "intents", v31);
      }
    }

    else
    {
      if (*(a3 + 23) >= 0)
      {
        v28 = a3;
      }

      else
      {
        v28 = *a3;
      }

      siri::intelligence::Log::Warning("The CATI Manifest file does not have a %s dictionary: %s", v12, "cati-manifest", v28);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::~GenericDocument(v45);
    if (v34)
    {
      siri::intelligence::GetFormatForFilename(a1);
      siri::intelligence::Loader::LoadFile();
    }

    v11 = 1;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v32, v33);
  }

  else
  {
    if (*(a3 + 23) >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    siri::intelligence::Log::Error("CATI Manifest file does not exist: %s", v7, v10);
    v11 = 0;
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_254D7FDD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::~GenericDocument(v56 - 200);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a18, a19);
  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void siri::intelligence::UpdateEvent(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 136;
  v4 = *(a1 + 136);
  if (*(v4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *v4, *(v4 + 1));
  }

  else
  {
    v6 = *v4;
    __str.__r_.__value_.__r.__words[2] = *(v4 + 2);
    *&__str.__r_.__value_.__l.__data_ = v6;
  }

  v7 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v8 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  size = __str.__r_.__value_.__l.__size_;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = __str.__r_.__value_.__l.__size_;
  }

  if (!v10)
  {
    std::string::operator=(&__str, *(a1 + 128));
    v7 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    size = __str.__r_.__value_.__l.__size_;
    v8 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  if (v8 >= 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = size;
  }

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(a2 + 16) == 0;
  }

  if (!v12)
  {
    std::string::operator=(&__str, *(a1 + 120));
    v7 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    size = __str.__r_.__value_.__l.__size_;
    v8 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  if (v8 < 0)
  {
    v7 = size;
  }

  if (v7)
  {
    v13 = *(a1 + 152);
    if (*(v13 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, *v13, *(v13 + 1));
    }

    else
    {
      v14 = *v13;
      v30.__r_.__value_.__r.__words[2] = *(v13 + 2);
      *&v30.__r_.__value_.__l.__data_ = v14;
    }

    v15 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    v16 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v30.__r_.__value_.__l.__size_;
    }

    if (!v15)
    {
      goto LABEL_63;
    }

    v17 = std::__tree<std::string>::find<std::string>(a2, &__str.__r_.__value_.__l.__data_);
    if (a2 + 8 != v17)
    {
      if (*(v17 + 79) < 0)
      {
        v18 = *(v17 + 64);
        if (v18)
        {
          std::string::__init_copy_ctor_external(&__p, *(v17 + 56), v18);
          goto LABEL_33;
        }
      }

      else if (*(v17 + 79))
      {
        __p = *(v17 + 56);
LABEL_33:
        v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v19 = __p.__r_.__value_.__l.__size_;
        }

        if (v19)
        {
          *(a1 + 16) |= 4u;
          v20 = *(a1 + 136);
          if (v20 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v5, &__str);
          }

          std::string::operator=(v20, &__str);
          v21 = *(a1 + 144);
          *(a1 + 16) |= 8u;
          if (v21 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 144, &__p);
          }

          std::string::operator=(v21, &__p);
          v22 = *(a1 + 128);
          v23 = *(v22 + 23);
          if (v23 >= 0)
          {
            v24 = *(v22 + 23);
          }

          else
          {
            v24 = *(v22 + 8);
          }

          v25 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v25 = __str.__r_.__value_.__l.__size_;
          }

          if (v24 == v25)
          {
            v26 = *v22;
            v27 = v23 >= 0 ? *(a1 + 128) : *v22;
            v28 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
            if (!memcmp(v27, v28, v24))
            {
              if (v22 != &google::protobuf::internal::fixed_address_empty_string)
              {
                if (v23 < 0)
                {
                  *v26 = 0;
                  *(v22 + 8) = 0;
                }

                else
                {
                  *v22 = 0;
                  *(v22 + 23) = 0;
                }
              }

              *(a1 + 16) &= ~2u;
            }
          }
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v16 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
LABEL_63:
        if (v16 < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        v8 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        goto LABEL_66;
      }
    }

    siri::intelligence::HashUtils::ComputeCATIGuid(&v30, &__str.__r_.__value_.__l.__data_, &__p);
    goto LABEL_33;
  }

LABEL_66:
  if (v8 < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_254D801E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::AddFallback(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 512);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Event>::TypeHandler>(v1 + 504, i);
      siri::intelligence::StringToLower(*(v5 + 120), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__p.__r_.__value_.__l.__size_ == 8)
        {
          v6 = *__p.__r_.__value_.__l.__data_;
          operator delete(__p.__r_.__value_.__l.__data_);
          if (v6 == 0x6B6361626C6C6166)
          {
            return;
          }
        }

        else
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 8 && __p.__r_.__value_.__r.__words[0] == 0x6B6361626C6C6166)
      {
        return;
      }

      v1 = *a1;
      v2 = *(*a1 + 512);
    }
  }

  v7 = *(v1 + 520);
  if (!v7)
  {
    v8 = *(v1 + 516);
LABEL_17:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v1 + 504), v8 + 1);
    v7 = *(v1 + 520);
    v8 = *v7;
    goto LABEL_18;
  }

  v8 = *v7;
  if (v2 < *v7)
  {
    *(v1 + 512) = v2 + 1;
    v9 = *&v7[2 * v2 + 2];
    goto LABEL_19;
  }

  if (v8 == *(v1 + 516))
  {
    goto LABEL_17;
  }

LABEL_18:
  *v7 = v8 + 1;
  v9 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Event>(*(v1 + 504));
  v10 = *(v1 + 512);
  v11 = *(v1 + 520) + 8 * v10;
  *(v1 + 512) = v10 + 1;
  *(v11 + 8) = v9;
LABEL_19:
  v12 = *(v9 + 15);
  *(v9 + 4) |= 1u;
  if (v12 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v9 + 120, FALLBACK_EVENT_ID);
  }

  std::string::operator=(v12, FALLBACK_EVENT_ID);
  v13 = *(v9 + 5);
  if (!v13)
  {
    v15 = *(v9 + 9);
LABEL_27:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v9 + 6, v15 + 1);
    v13 = *(v9 + 5);
    v15 = *v13;
    goto LABEL_28;
  }

  v14 = *(v9 + 8);
  v15 = *v13;
  if (v14 < *v13)
  {
    *(v9 + 8) = v14 + 1;
    v16 = *&v13[2 * v14 + 2];
    goto LABEL_29;
  }

  if (v15 == *(v9 + 9))
  {
    goto LABEL_27;
  }

LABEL_28:
  *v13 = v15 + 1;
  v16 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_NLParameters>(*(v9 + 3));
  v17 = *(v9 + 8);
  v18 = *(v9 + 5) + 8 * v17;
  *(v9 + 8) = v17 + 1;
  *(v18 + 8) = v16;
LABEL_29:
  *(v16 + 4) |= 1u;
  std::string::basic_string[abi:ne200100]<0>(&__p, "usoMatcher");
  google::protobuf::internal::ArenaStringPtr::SetNoArena(v16 + 6, &google::protobuf::internal::fixed_address_empty_string, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v19 = *(v16 + 5);
  if (!v19)
  {
    v21 = *(v16 + 9);
    goto LABEL_36;
  }

  v20 = *(v16 + 8);
  v21 = *v19;
  if (v20 >= *v19)
  {
    if (v21 != *(v16 + 9))
    {
LABEL_37:
      *v19 = v21 + 1;
      v22 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(v16 + 3));
      v23 = *(v16 + 8);
      v24 = *(v16 + 5) + 8 * v23;
      *(v16 + 8) = v23 + 1;
      *(v24 + 8) = v22;
      goto LABEL_38;
    }

LABEL_36:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v16 + 6, v21 + 1);
    v19 = *(v16 + 5);
    v21 = *v19;
    goto LABEL_37;
  }

  *(v16 + 8) = v20 + 1;
  v22 = *&v19[2 * v20 + 2];
LABEL_38:
  *(v22 + 4) |= 1u;
  std::string::basic_string[abi:ne200100]<0>(&__p, "entityName");
  google::protobuf::internal::ArenaStringPtr::SetNoArena(v22 + 15, &google::protobuf::internal::fixed_address_empty_string, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(v22 + 4) |= 2u;
  std::string::basic_string[abi:ne200100]<0>(&__p, "common_SocialConversation");
  google::protobuf::internal::ArenaStringPtr::SetNoArena(v22 + 16, &google::protobuf::internal::fixed_address_empty_string, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_254D8056C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254D80714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v20 = *(v18 - 56);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

BOOL rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::HasMember(unsigned int *a1, const char *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v6[1] = a2;
  v6[2] = 0x405000000000000;
  v6[0] = rapidjson::GenericStringRef<char>::NotNullStrLen(a2);
  rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>(&v5, a1, v6);
  if (*(a1 + 11) != 3)
  {
    __assert_rtn("MemberEnd", "document.h", 1158, "IsObject()");
  }

  result = v5 != *(a1 + 1) + 48 * *a1;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[]<char const>(unsigned int *a1, const char *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v6[1] = a2;
  v6[2] = 0x405000000000000;
  v6[0] = rapidjson::GenericStringRef<char>::NotNullStrLen(a2);
  rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>(&v5, a1, v6);
  if (*(a1 + 11) != 3)
  {
    __assert_rtn("MemberEnd", "document.h", 1164, "IsObject()");
  }

  if (v5 == *(a1 + 1) + 48 * *a1)
  {
    __assert_rtn("operator[]", "document.h", 1133, "false");
  }

  v3 = *MEMORY[0x277D85DE8];
  return v5 + 24;
}

_BYTE *siri::intelligence::ParseJSONString(_BYTE *a1, unsigned int *a2, uint64_t a3)
{
  if (*(a3 + 23) >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::HasMember(a2, v6) && (*(a3 + 23) >= 0 ? (v7 = a3) : (v7 = *a3), (*(rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[]<char const>(a2, v7) + 22) & 0x400) != 0))
  {
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    v10 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[]<char const>(a2, v9);
    String = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetString(v10);
  }

  else
  {
    String = "";
  }

  return std::string::basic_string[abi:ne200100]<0>(a1, String);
}

uint64_t rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (*(a2 + 11) != 3)
  {
    __assert_rtn("FindMember", "document.h", 1249, "IsObject()");
  }

  if ((*(a3 + 22) & 0x400) == 0)
  {
    __assert_rtn("FindMember", "document.h", 1250, "name.IsString()");
  }

  v5 = result;
  v6 = *(a2 + 1);
  while (v6 != *(a2 + 1) + 48 * *a2)
  {
    if ((*(a3 + 22) & 0x400) == 0)
    {
      __assert_rtn("StringEqual", "document.h", 2086, "IsString()");
    }

    if ((*(v6 + 22) & 0x400) == 0)
    {
      __assert_rtn("StringEqual", "document.h", 2087, "rhs.IsString()");
    }

    StringLength = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetStringLength(a3);
    result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetStringLength(v6);
    if (StringLength == result)
    {
      String = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetString(a3);
      result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetString(v6);
      if (String == result)
      {
        break;
      }

      result = memcmp(String, result, StringLength);
      if (!result)
      {
        break;
      }
    }

    v6 += 48;
    if (*(a2 + 11) != 3)
    {
      *v5 = v6;
      __assert_rtn("MemberEnd", "document.h", 1164, "IsObject()");
    }
  }

  *v5 = v6;
  return result;
}

size_t rapidjson::GenericStringRef<char>::NotNullStrLen(const char *a1)
{
  if (!a1)
  {
    __assert_rtn("NotNullStrLen", "document.h", 334, "str != 0");
  }

  return strlen(a1);
}

uint64_t rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetStringLength(unsigned int *a1)
{
  if ((*(a1 + 11) & 0x400) == 0)
  {
    __assert_rtn("GetStringLength", "document.h", 1772, "IsString()");
  }

  if ((*(a1 + 11) & 0x1000) != 0)
  {
    return (21 - *(a1 + 21));
  }

  else
  {
    return *a1;
  }
}

uint64_t siri::intelligence::Context::Context(uint64_t result, void *a2, int a3)
{
  v3 = a2[1];
  *result = *a2;
  *(result + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 16) = a3;
  return result;
}

{
  v3 = a2[1];
  *result = *a2;
  *(result + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 16) = a3;
  return result;
}

void *siri::intelligence::Context::GetInputGroup@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[1];
  *a2 = *this;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t YAML::Utils::ComputeStringFormat(uint64_t a1, int a2, int a3, int a4)
{
  if (a2 == 7)
  {
    if (a3 != 1)
    {
      v15 = *(a1 + 23);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(a1 + 8);
      }

      if (!v15)
      {
        return 3;
      }

      if (v16 >= 0)
      {
        v17 = a1;
      }

      else
      {
        v17 = *a1;
      }

      while (!a4 || (*v17 & 0x80000000) == 0)
      {
        v17 = (v17 + 1);
        if (!--v15)
        {
          return 3;
        }
      }
    }

    return 2;
  }

  if (a2 == 5)
  {
    v9 = *(a1 + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a1 + 8);
    }

    if (!v9)
    {
      return 1;
    }

    v11 = 0;
    v12 = 0;
    v13 = v10 >= 0 ? a1 : *a1;
    do
    {
      if (a4 && *(v13 + v12) < 0)
      {
        break;
      }

      if (*(v13 + v12) == 10)
      {
        break;
      }

      v11 = ++v12 >= v9;
    }

    while (v9 != v12);
    if (v11)
    {
      return 1;
    }

    return 2;
  }

  if (a2)
  {
    return 2;
  }

  IsNullString = YAML::IsNullString(a1);
  if (IsNullString)
  {
    return 2;
  }

  if (a3 == 1)
  {
    v8 = YAML::Exp::PlainScalarInFlow(IsNullString);
  }

  else
  {
    v8 = YAML::Exp::PlainScalar(IsNullString);
  }

  v18 = *(a1 + 23);
  if ((v18 & 0x80u) == 0)
  {
    v19 = a1;
  }

  else
  {
    v19 = *a1;
  }

  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a1 + 8);
  }

  v54 = v19;
  v55 = v18;
  v56 = 0;
  if ((*v8 - 3) >= 0xFFFFFFFE && !v18)
  {
    return 2;
  }

  if ((YAML::RegEx::MatchUnchecked<YAML::StringCharSource>(v8, &v54) & 0x80000000) != 0)
  {
    return 2;
  }

  v20 = *(a1 + 23);
  if (v20 < 0)
  {
    v20 = *(a1 + 8);
    if (!v20)
    {
      goto LABEL_46;
    }

    v21 = *a1;
  }

  else
  {
    if (!*(a1 + 23))
    {
      goto LABEL_46;
    }

    v21 = a1;
  }

  if (*(v21 + v20 - 1) == 32)
  {
    return 2;
  }

LABEL_46:
  if ((atomic_load_explicit(&qword_280AF4858, memory_order_acquire) & 1) == 0)
  {
    v26 = __cxa_guard_acquire(&qword_280AF4858);
    if (v26)
    {
      v27 = YAML::Exp::EndScalarInFlow(v26);
      v28 = YAML::Exp::BlankOrBreak(v27);
      YAML::Exp::Comment(&v44);
      YAML::operator+(v28, &v44, &v46);
      v29 = YAML::operator|(v27, &v46, &v48);
      YAML::Exp::NotPrintable(v29);
      v30 = YAML::operator|(&v48, dword_280AF48C0, &v50);
      YAML::Exp::Utf8_ByteOrderMark(v30);
      v31 = YAML::operator|(&v50, dword_280AF48E0, &v52);
      v32 = YAML::Exp::Break(v31);
      v33 = YAML::operator|(&v52, v32, &v54);
      v34 = YAML::Exp::Tab(v33);
      YAML::operator|(&v54, v34, &unk_280AF4880);
      __cxa_atexit(YAML::RegEx::~RegEx, &unk_280AF4880, &dword_254C81000);
      v57 = &v55;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v57);
      v57 = v53;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v57);
      v57 = v51;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v57);
      v57 = v49;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v57);
      v57 = v47;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v57);
      v57 = v45;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v57);
      _MergedGlobals_20 = &unk_280AF4880;
      __cxa_guard_release(&qword_280AF4858);
    }
  }

  if ((atomic_load_explicit(&qword_280AF4868, memory_order_acquire) & 1) == 0)
  {
    v35 = __cxa_guard_acquire(&qword_280AF4868);
    if (v35)
    {
      v36 = YAML::Exp::EndScalar(v35);
      v37 = YAML::Exp::BlankOrBreak(v36);
      YAML::Exp::Comment(&v44);
      YAML::operator+(v37, &v44, &v46);
      v38 = YAML::operator|(v36, &v46, &v48);
      YAML::Exp::NotPrintable(v38);
      v39 = YAML::operator|(&v48, dword_280AF48C0, &v50);
      YAML::Exp::Utf8_ByteOrderMark(v39);
      v40 = YAML::operator|(&v50, dword_280AF48E0, &v52);
      v41 = YAML::Exp::Break(v40);
      v42 = YAML::operator|(&v52, v41, &v54);
      v43 = YAML::Exp::Tab(v42);
      YAML::operator|(&v54, v43, &unk_280AF48A0);
      __cxa_atexit(YAML::RegEx::~RegEx, &unk_280AF48A0, &dword_254C81000);
      v57 = &v55;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v57);
      v57 = v53;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v57);
      v57 = v51;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v57);
      v57 = v49;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v57);
      v57 = v47;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v57);
      v57 = v45;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v57);
      qword_280AF4860 = &unk_280AF48A0;
      __cxa_guard_release(&qword_280AF4868);
    }
  }

  v22 = &qword_280AF4860;
  if (a3 == 1)
  {
    v22 = &_MergedGlobals_20;
  }

  v23 = *v22;
  v24 = *(a1 + 23);
  if ((v24 & 0x80u) == 0)
  {
    v25 = a1;
  }

  else
  {
    v25 = *a1;
  }

  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a1 + 8);
  }

  v54 = v25;
  v55 = v24;
  v56 = 0;
  if (v24)
  {
    while ((YAML::RegEx::MatchUnchecked<YAML::StringCharSource>(v23, &v54) & 0x80000000) != 0 && (!a4 || (*(v54 + v56) & 0x80000000) == 0))
    {
      if (++v56 >= v55)
      {
        return 0;
      }
    }

    return 2;
  }

  return 0;
}

void sub_254D81144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v15 - 72) = &a15;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v15 - 72));
  *(v15 - 72) = &a11;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v15 - 72));
  __cxa_guard_abort(&qword_280AF4868);
  _Unwind_Resume(a1);
}

uint64_t YAML::Utils::WriteSingleQuotedString(std::vector<char> *a1, uint64_t a2)
{
  YAML::ostream_wrapper::write(a1, "'", 1uLL);
  LODWORD(v12) = 0;
  v4 = *(a2 + 23);
  v5 = *a2;
  v6 = *(a2 + 8);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  v11 = v5;
  if (v4 < 0)
  {
    v4 = v6;
  }

  {
    do
    {
      if (v12 == 39)
      {
        YAML::ostream_wrapper::write(a1, "''", 2uLL);
      }

      else
      {
        if (v12 == 10)
        {
          return 0;
        }
      }

      v7 = *(a2 + 23);
      if ((v7 & 0x80u) == 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      if ((v7 & 0x80u) != 0)
      {
        v7 = *(a2 + 8);
      }
    }
  }

  v9 = 1;
  YAML::ostream_wrapper::write(a1, "'", 1uLL);
  return v9;
}

BOOL YAML::Utils::anonymous namespace::GetNextCodePointAndAdvance(int *a1, unsigned __int8 **a2, unsigned __int8 *a3)
{
  v3 = *a2;
  if (*a2 != a3)
  {
    v4 = *v3;
    v5 = v4 >> 4;
    if (v4 >> 4 <= 0xB)
    {
      if (v5 < 8)
      {
        *a2 = v3 + 1;
        v6 = *v3;
LABEL_12:
        *a1 = v6;
        return v3 != a3;
      }

      goto LABEL_10;
    }

    if (v5 - 12 < 2)
    {
      v7 = 2;
    }

    else if (v5 == 15)
    {
      v7 = 4;
    }

    else
    {
      if (v5 != 14)
      {
LABEL_10:
        *a2 = v3 + 1;
LABEL_11:
        v6 = 65533;
        goto LABEL_12;
      }

      v7 = 3;
    }

    v9 = v4 & ~(255 << (v7 ^ 7));
    *a1 = v9;
    v10 = v3 + 1;
    *a2 = v3 + 1;
    v11 = v7 + 1;
    while (v10 != a3)
    {
      v12 = v9;
      if ((*v10 & 0xC0) != 0x80)
      {
        break;
      }

      *a1 = v9 << 6;
      v13 = *v10++;
      v9 = v13 & 0x3F | (v9 << 6);
      *a1 = v9;
      *a2 = v10;
      if (--v11 <= 2)
      {
        v6 = 65533;
        if ((v9 - 64976) >= 0x20 && v9 < 1114112 && (v12 & 0x3FFFFE0) != 0x360 && (v9 & 0xFFFE) != 0xFFFE)
        {
          return v3 != a3;
        }

        goto LABEL_12;
      }
    }

    goto LABEL_11;
  }

  return v3 != a3;
}

void YAML::Utils::anonymous namespace::WriteCodePoint(std::vector<char> *this, YAML::ostream_wrapper *a2)
{
  if (a2 >> 16 <= 0x10)
  {
    v3 = a2;
  }

  else
  {
    v3 = 65533;
  }

  if (v3 > 0x7F)
  {
    if (v3 > 0x7FF)
    {
      if (HIWORD(v3))
      {
        v11 = (v3 >> 18) | 0xF0;
        YAML::ostream_wrapper::write(this, &v11, 1uLL);
        v12 = (v3 >> 12) & 0x3F | 0x80;
        YAML::ostream_wrapper::write(this, &v12, 1uLL);
        v13 = (v3 >> 6) & 0x3F | 0x80;
        YAML::ostream_wrapper::write(this, &v13, 1uLL);
        v14 = v3 & 0x3F | 0x80;
        v4 = &v14;
      }

      else
      {
        v8 = (v3 >> 12) | 0xE0;
        YAML::ostream_wrapper::write(this, &v8, 1uLL);
        v9 = (v3 >> 6) & 0x3F | 0x80;
        YAML::ostream_wrapper::write(this, &v9, 1uLL);
        v10 = v3 & 0x3F | 0x80;
        v4 = &v10;
      }
    }

    else
    {
      __src = (v3 >> 6) | 0xC0;
      YAML::ostream_wrapper::write(this, &__src, 1uLL);
      v7 = v3 & 0x3F | 0x80;
      v4 = &v7;
    }
  }

  else
  {
    v5 = v3;
    v4 = &v5;
  }

  YAML::ostream_wrapper::write(this, v4, 1uLL);
}

uint64_t YAML::Utils::WriteDoubleQuotedString(std::vector<char> *a1, uint64_t a2, int a3)
{
  YAML::ostream_wrapper::write(a1, "", 1uLL);
  LODWORD(v17) = 0;
  v6 = *(a2 + 23);
  v7 = *a2;
  v8 = *(a2 + 8);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  v16 = v7;
  if (v6 < 0)
  {
    v6 = v8;
  }

  {
    do
    {
      v9 = v17;
      if (v17 > 12)
      {
        switch(v17)
        {
          case 0xD:
            v10 = a1;
            v11 = "\\r";
            break;
          case 0x5C:
            v10 = a1;
            v11 = "\\\";
            break;
          case 0x22:
            v10 = a1;
            v11 = "\\"";
            break;
          default:
LABEL_17:
            if (v17 >= 32 && (v17 - 128) > 0x20)
            {
              if (v17 == 65279)
              {
                v12 = a1;
                v9 = 65279;
LABEL_34:
                goto LABEL_24;
              }

              if (v17 < 0x7F || !a3)
              {
                goto LABEL_24;
              }
            }

            v12 = a1;
            goto LABEL_34;
        }
      }

      else
      {
        switch(v17)
        {
          case 8:
            v10 = a1;
            v11 = "\\b";
            break;
          case 9:
            v10 = a1;
            v11 = "\\t";
            break;
          case 0xA:
            v10 = a1;
            v11 = "\\n";
            break;
          default:
            goto LABEL_17;
        }
      }

      YAML::ostream_wrapper::write(v10, v11, 2uLL);
LABEL_24:
      v13 = *(a2 + 23);
      if ((v13 & 0x80u) == 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      if ((v13 & 0x80u) != 0)
      {
        v13 = *(a2 + 8);
      }
    }
  }

  YAML::ostream_wrapper::write(a1, "", 1uLL);
  return 1;
}

void YAML::Utils::anonymous namespace::WriteDoubleQuoteEscapeSequence(std::vector<char> *this, YAML::ostream_wrapper *a2)
{
  v2 = a2;
  YAML::ostream_wrapper::write(this, "\", 1uLL);
  v4 = "U";
  if (v2 >= 0xFFFF)
  {
    v5 = 8;
  }

  else
  {
    v4 = "u";
    v5 = 4;
  }

  if (v2 >= 255)
  {
    v6 = v4;
  }

  else
  {
    v6 = "x";
  }

  if (v2 >= 255)
  {
    v7 = v5;
  }

  else
  {
    v7 = 2;
  }

  YAML::ostream_wrapper::write(this, v6, 1uLL);
  v8 = 4 * v7 - 4;
  v9 = v7 | 1;
  do
  {
    YAML::ostream_wrapper::write(this, &__src, 1uLL);
    v8 -= 4;
    --v9;
  }

  while (v9 > 1);
}

uint64_t YAML::Utils::WriteLiteralString(std::vector<char> *a1, uint64_t a2, char *a3)
{
  YAML::ostream_wrapper::write(a1, "|\n", 2uLL);
  while (a1[2].__begin_ < a3)
  {
    v16 = 32;
    YAML::ostream_wrapper::write(a1, &v16, 1uLL);
  }

  v15 = 0;
  v6 = *(a2 + 23);
  v7 = *a2;
  v8 = *(a2 + 8);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  v14 = v7;
  if (v6 < 0)
  {
    v6 = v8;
  }

  {
    do
    {
      v9 = a1;
      if (v15 == 10)
      {
        v10 = "\n";
        while (1)
        {
          YAML::ostream_wrapper::write(v9, v10, 1uLL);
          if (a1[2].__begin_ >= a3)
          {
            break;
          }

          v17 = 32;
          v10 = &v17;
          v9 = a1;
        }
      }

      else
      {
      }

      v11 = *(a2 + 23);
      if ((v11 & 0x80u) == 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      if ((v11 & 0x80u) != 0)
      {
        v11 = *(a2 + 8);
      }
    }
  }

  return 1;
}

uint64_t YAML::Utils::WriteChar(std::vector<char> *this, YAML::ostream_wrapper *a2)
{
  v3 = this;
  if (((a2 & 0xDF) - 65) > 0x19u)
  {
    if (a2 <= 9)
    {
      if (a2 == 8)
      {
        v4 = "\\b";
        goto LABEL_15;
      }

      if (a2 == 9)
      {
        v4 = "\\t";
        goto LABEL_15;
      }
    }

    else
    {
      switch(a2)
      {
        case 0xA:
          v4 = "\\n";
          goto LABEL_15;
        case 0x5C:
          v4 = "\\\\"";
          goto LABEL_15;
        case 0x22:
          v4 = "\\"";
LABEL_15:
          v5 = 4;
          goto LABEL_16;
      }
    }

    v7 = a2 - 32;
    YAML::ostream_wrapper::write(this, "", 1uLL);
    if (v7 > 0x5E)
    {
    }

    else
    {
      __src = a2;
      YAML::ostream_wrapper::write(v3, &__src, 1uLL);
    }

    v4 = "";
    goto LABEL_3;
  }

  v8 = a2;
  v4 = &v8;
LABEL_3:
  this = v3;
  v5 = 1;
LABEL_16:
  YAML::ostream_wrapper::write(this, v4, v5);
  return 1;
}

uint64_t YAML::Utils::WriteComment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  YAML::ostream_wrapper::write(a1, "#", 1uLL);
  if (a3)
  {
    v7 = a3;
    do
    {
      v19 = 32;
      YAML::ostream_wrapper::write(a1, &v19, 1uLL);
      --v7;
    }

    while (v7);
  }

  *(a1 + 56) = 1;
  v18 = 0;
  v8 = *(a2 + 23);
  v9 = *a2;
  v10 = *(a2 + 8);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  v17 = v9;
  if (v8 < 0)
  {
    v8 = v10;
  }

  {
    do
    {
      v11 = a1;
      if (v18 == 10)
      {
        v12 = "\n";
        while (1)
        {
          YAML::ostream_wrapper::write(v11, v12, 1uLL);
          if (*(a1 + 48) >= v6)
          {
            break;
          }

          v20 = 32;
          v12 = &v20;
          v11 = a1;
        }

        YAML::ostream_wrapper::write(a1, "#", 1uLL);
        if (a3)
        {
          v13 = a3;
          do
          {
            v21 = 32;
            YAML::ostream_wrapper::write(a1, &v21, 1uLL);
            --v13;
          }

          while (v13);
        }

        *(a1 + 56) = 1;
      }

      else
      {
      }

      v14 = *(a2 + 23);
      if ((v14 & 0x80u) == 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = *a2;
      }

      if ((v14 & 0x80u) != 0)
      {
        v14 = *(a2 + 8);
      }
    }
  }

  return 1;
}

uint64_t YAML::Utils::WriteAlias(std::vector<char> *a1, uint64_t a2)
{
  YAML::ostream_wrapper::write(a1, "*", 1uLL);
}

uint64_t YAML::Utils::anonymous namespace::WriteAliasName(std::vector<char> *a1, uint64_t a2)
{
  LODWORD(v14) = 0;
  v4 = *(a2 + 23);
  v5 = *a2;
  v6 = *(a2 + 8);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  v13 = v5;
  if (v4 < 0)
  {
    v4 = v6;
  }

  {
    return 1;
  }

  while (1)
  {
    v7 = (v14 - 91);
    if (v7 > 0x2A)
    {
      break;
    }

    if (v7 != 42)
    {
      if (((1 << (v14 - 91)) & 0x500000005) != 0)
      {
        return 0;
      }

      break;
    }

LABEL_23:
    v10 = *(a2 + 23);
    if ((v10 & 0x80u) == 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 8);
    }

    {
      return 1;
    }
  }

  v9 = v14 <= 0x2C && ((1 << v14) & 0x100100002600) != 0 || v14 == 65279;
  if (!v9 && v14 >= 32 && (v14 < 0x7E || v14 >> 16 <= 0x10 && (v14 & 0xFFFE) != 0xFFFE && v14 >= 0xA0 && (v14 & 0x7FFFF800) != 0xD800 && (v14 - 65008) <= 0xFFFFFFDF))
  {
    goto LABEL_23;
  }

  return 0;
}

uint64_t YAML::Utils::WriteAnchor(std::vector<char> *a1, uint64_t a2)
{
  YAML::ostream_wrapper::write(a1, "&", 1uLL);
}

uint64_t YAML::Utils::WriteTag(std::vector<char> *a1, void **a2, int a3)
{
  if (a3)
  {
    v6 = "!<";
  }

  else
  {
    v6 = "!";
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v6);
  YAML::ostream_wrapper::write(a1, &__p);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  v8 = *(a2 + 23);
  v9 = v8 < 0;
  if (v8 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9)
  {
    v11 = a2[1];
  }

  else
  {
    v11 = *(a2 + 23);
  }

  __p = v10;
  v20 = v11;
  v21 = 0;
  if (a3)
  {
    v12 = YAML::Exp::URI(v7);
  }

  else
  {
    v12 = YAML::Exp::Tag(v7);
  }

  v13 = v12;
  if (v11)
  {
    while (1)
    {
      v14 = YAML::RegEx::MatchUnchecked<YAML::StringCharSource>(v13, &__p);
      if (v14 < 1)
      {
        return 0;
      }

      v15 = v21;
      v16 = v14 + 1;
      do
      {
        __src = *(__p + v15);
        YAML::ostream_wrapper::write(a1, &__src, 1uLL);
        v15 = ++v21;
        --v16;
      }

      while (v16 > 1);
      if (v15 >= v20)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    if (a3)
    {
      v17 = 1;
      YAML::ostream_wrapper::write(a1, ">", 1uLL);
    }

    else
    {
      return 1;
    }
  }

  return v17;
}

void sub_254D82008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t YAML::Utils::WriteTagWithPrefix(std::vector<char> *a1, uint64_t *a2, uint64_t *a3)
{
  YAML::ostream_wrapper::write(a1, "!", 1uLL);
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = a2[1];
  }

  v27 = v8;
  v28 = v7;
  v29 = 0;
  if (v7)
  {
    do
    {
      v9 = YAML::Exp::URI(v6);
      if ((*v9 - 3) >= 0xFFFFFFFE && v29 >= v28)
      {
        return 0;
      }

      v11 = YAML::RegEx::MatchUnchecked<YAML::StringCharSource>(v9, &v27);
      if (v11 < 1)
      {
        return 0;
      }

      v12 = v29;
      v13 = v11 + 1;
      do
      {
        __src[0] = *(v27 + v12);
        YAML::ostream_wrapper::write(a1, __src, 1uLL);
        v12 = ++v29;
        --v13;
      }

      while (v13 > 1);
    }

    while (v12 < v28);
  }

  v14 = 1;
  YAML::ostream_wrapper::write(a1, "!", 1uLL);
  v16 = *(a3 + 23);
  if ((v16 & 0x80u) == 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  if ((v16 & 0x80u) != 0)
  {
    v16 = a3[1];
  }

  *__src = v17;
  v25 = v16;
  v26 = 0;
  if (v16)
  {
    while (1)
    {
      v18 = YAML::Exp::Tag(v15);
      if ((*v18 - 3) >= 0xFFFFFFFE && v26 >= v25)
      {
        break;
      }

      v20 = YAML::RegEx::MatchUnchecked<YAML::StringCharSource>(v18, __src);
      if (v20 < 1)
      {
        break;
      }

      v21 = v26;
      v22 = v20 + 1;
      do
      {
        v30 = *(*__src + v21);
        YAML::ostream_wrapper::write(a1, &v30, 1uLL);
        v21 = ++v26;
        --v22;
      }

      while (v22 > 1);
      if (v21 >= v25)
      {
        return 1;
      }
    }

    return 0;
  }

  return v14;
}

uint64_t YAML::Utils::WriteBinary(std::vector<char> *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    v4 = *a2;
  }

  if (v3)
  {
    v5 = *(a2 + 32);
  }

  else
  {
    v5 = *(a2 + 8) - *a2;
  }

  YAML::EncodeBase64(v4, v5, &__p);
  YAML::Utils::WriteDoubleQuotedString(a1, &__p, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_254D82230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void YAML::Exp::NotPrintable(YAML::Exp *this)
{
  if ((atomic_load_explicit(&qword_280AF4870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4870))
  {
    v19 = 1;
    v20 = 0;
    memset(v21, 0, sizeof(v21));
    std::string::basic_string[abi:ne200100]<0>(__p, "\x01\x02\x03\x04\x05\x06\a\b\v\f\x7F");
    YAML::RegEx::RegEx(&v17, __p, 3);
    YAML::operator|(&v19, &v17, &v22);
    LODWORD(v13) = 2;
    WORD2(v13) = 7950;
    memset(v14, 0, sizeof(v14));
    YAML::operator|(&v22, &v13, &v24);
    v8 = 1;
    v9 = 194;
    memset(v10, 0, sizeof(v10));
    v3 = 2;
    v4 = -31616;
    memset(v5, 0, sizeof(v5));
    LODWORD(v1) = 2;
    WORD2(v1) = -24698;
    memset(v2, 0, sizeof(v2));
    YAML::operator|(&v3, &v1, &v6);
    YAML::operator+(&v8, &v6, &v11);
    YAML::operator|(&v24, &v11, &unk_280AF48C0);
    v26 = &v12;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v26);
    v26 = &v7;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v26);
    v26 = v2;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v26);
    v1 = v5;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v1);
    v6 = v10;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v6);
    v11 = &v25;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v11);
    v11 = v14;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v11);
    v13 = &v23;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v13);
    v13 = &v18;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v13);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v17 = v21;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v17);
    __cxa_atexit(YAML::RegEx::~RegEx, &unk_280AF48C0, &dword_254C81000);
    __cxa_guard_release(&qword_280AF4870);
  }
}

void sub_254D82498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40)
{
  *(v42 - 88) = v41 + 8;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v42 - 88));
  *(v42 - 88) = &a18;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v42 - 88));
  *(v42 - 88) = v40;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v42 - 88));
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a17);
  a25 = v42 - 112;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a25);
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a25);
  a29 = (v42 - 144);
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a29);
  a29 = &a40;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a29);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a39);
  __cxa_guard_abort(&qword_280AF4870);
  _Unwind_Resume(a1);
}

void YAML::Exp::Utf8_ByteOrderMark(YAML::Exp *this)
{
  if ((atomic_load_explicit(&qword_280AF4878, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4878))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "﻿");
    YAML::RegEx::RegEx(&unk_280AF48E0, __p, 6);
    if (v2 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_atexit(YAML::RegEx::~RegEx, &unk_280AF48E0, &dword_254C81000);
    __cxa_guard_release(&qword_280AF4878);
  }
}

void sub_254D82634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_280AF4878);
  _Unwind_Resume(a1);
}

void siri::intelligence::FlowGraph::Clear(siri::intelligence::FlowGraph *this)
{
  v2 = *this;
  v3 = *(*this + 8);
  *v2 = 0;
  v2[1] = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *this + 24;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*this + 16, *v4);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 - 8) = v4;
  v5 = *this + 48;
  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>>>::destroy(*v5);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 - 8) = v5;
  v6 = *this + 72;
  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>>>::destroy(*v6);
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 - 8) = v6;
  v7 = *this + 96;
  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>>>::destroy(*v7);
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 - 8) = v7;
  v8 = *this + 120;
  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>>>::destroy(*v8);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 - 8) = v8;
  v9 = *this + 144;
  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>>>::destroy(*v9);
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 - 8) = v9;
  v10 = *this + 168;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*this + 160, *v10);
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 - 8) = v10;
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::clear[abi:ne200100]((*this + 184));
  v11 = *this + 216;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*this + 208, *v11);
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 - 8) = v11;
  v12 = *this + 240;
  std::__tree<std::string>::destroy(*this + 232, *v12);
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 - 8) = v12;
  v13 = *this;
  v14 = (*this + 264);
  std::__tree<std::string>::destroy(*this + 256, *v14);
  v13[33] = 0;
  v13[34] = 0;
  v13[32] = v14;
  v15 = *this;
  v16 = (*this + 288);
  std::__tree<std::string>::destroy(*this + 280, *v16);
  v15[36] = 0;
  v15[37] = 0;
  v15[35] = v16;
  *(*this + 304) = 0;
}

void siri::intelligence::FlowGraph::CreateOrReuseInputGroup(void *a1@<X0>, const void **a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  if (siri::intelligence::IE_GLOBAL_SCOPE[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *siri::intelligence::IE_GLOBAL_SCOPE, *&siri::intelligence::IE_GLOBAL_SCOPE[8]);
  }

  else
  {
    v22 = *siri::intelligence::IE_GLOBAL_SCOPE;
  }

  v7 = *(*a1 + 184);
  v8 = *(*a1 + 192);
  if (v7 == v8)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v9 = *v7;
    if (SHIBYTE((*v7)[2].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, v9[2].__r_.__value_.__l.__data_, v9[2].__r_.__value_.__l.__size_);
    }

    else
    {
      v23 = v9[2];
    }

    v10 = SHIBYTE(v23.__r_.__value_.__r.__words[2]);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v23.__r_.__value_.__l.__size_;
    }

    v12 = *(a2 + 23);
    v13 = v12;
    if (v12 < 0)
    {
      v12 = a2[1];
    }

    if (size != v12)
    {
      v16 = 0;
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_23:
      operator delete(v23.__r_.__value_.__l.__data_);
      goto LABEL_24;
    }

    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v23;
    }

    else
    {
      v14 = v23.__r_.__value_.__r.__words[0];
    }

    if (v13 >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }

    v16 = memcmp(v14, v15, size) == 0;
    if (v10 < 0)
    {
      goto LABEL_23;
    }

LABEL_24:
    if (v16)
    {
      break;
    }

    v7 += 2;
    if (v7 == v8)
    {
      goto LABEL_33;
    }
  }

  v17 = *v7;
  if (SHIBYTE((*v7)->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, v17->__r_.__value_.__l.__data_, v17->__r_.__value_.__l.__size_);
  }

  else
  {
    v18 = *&v17->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v18;
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v22 = v23;
LABEL_33:
  if (!a3)
  {
LABEL_41:
    operator new();
  }

  v19 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v19 = v22.__r_.__value_.__l.__size_;
  }

  if (!v19)
  {
    siri::intelligence::Log::Warning("Empty activity for top-level input group added! This shouldn't happen.", a2);
  }

  siri::intelligence::FlowGraph::GetTopLevelInputGroup(a1, &v22.__r_.__value_.__l.__data_, a4);
  if (!*a4)
  {
    v20 = a4[1];
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    goto LABEL_41;
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_254D82BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *siri::intelligence::FlowGraph::GetTopLevelInputGroup@<X0>(void *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__tree<std::string>::find<std::string>(*a1 + 208, a2);
  if ((*a1 + 216) == result)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {

    return siri::intelligence::FlowGraph::GetInputGroup(a1, (result + 7), a3);
  }

  return result;
}

void siri::intelligence::FlowGraph::AddResponse(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = *a1;
    if (*(v2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v2 + 8), *(v2 + 16));
    }

    else
    {
      v5 = *(v2 + 8);
      __p.__r_.__value_.__r.__words[2] = *(v2 + 24);
      *&__p.__r_.__value_.__l.__data_ = v5;
    }

    p_p = &__p;
    v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::ResponseBase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::ResponseBase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::ResponseBase>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4 + 64, &__p.__r_.__value_.__l.__data_);
    v8 = *a2;
    v7 = a2[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *(v6 + 64);
    *(v6 + 56) = v8;
    *(v6 + 64) = v7;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_254D82DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FlowGraph::AddActivity(void *a1, __int128 *a2)
{
  if (*a2)
  {
    std::vector<std::shared_ptr<siri::intelligence::Activity>>::push_back[abi:ne200100](*a1 + 184, a2);
  }
}

void std::vector<std::shared_ptr<siri::intelligence::Activity>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::shared_ptr<siri::intelligence::Activity>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<siri::intelligence::ResponseBase>>>(a1, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 2;
  }

  *(a1 + 8) = v7;
}

void siri::intelligence::FlowGraph::AddIntent(uint64_t *a1, std::string **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v5 = *a1;
    if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, v2->__r_.__value_.__l.__data_, v2->__r_.__value_.__l.__size_);
    }

    else
    {
      v6 = *&v2->__r_.__value_.__l.__data_;
      v23.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
      *&v23.__r_.__value_.__l.__data_ = v6;
    }

    v8 = (v5 + 96);
    v7 = *(v5 + 96);
    if (!v7)
    {
      goto LABEL_11;
    }

    while (1)
    {
      while (1)
      {
        v9 = v7;
        if (!std::less<std::string>::operator()[abi:ne200100](v5 + 88, &v23.__r_.__value_.__l.__data_, v7 + 4))
        {
          break;
        }

        v7 = *v9;
        v8 = v9;
        if (!*v9)
        {
          goto LABEL_11;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](v5 + 88, v9 + 4, &v23.__r_.__value_.__l.__data_))
      {
        break;
      }

      v8 = (v9 + 1);
      v7 = v9[1];
      if (!v7)
      {
        goto LABEL_11;
      }
    }

    v20 = *v8;
    if (!*v8)
    {
LABEL_11:
      operator new();
    }

    v11 = *a2;
    v10 = a2[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
    }

    v12 = *(v20 + 64);
    *(v20 + 56) = v11;
    *(v20 + 64) = v10;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    v13 = *a2;
    if (SHIBYTE((*a2)[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, v13[1].__r_.__value_.__l.__data_, v13[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v23 = v13[1];
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      size = v23.__r_.__value_.__l.__size_;
      operator delete(v23.__r_.__value_.__l.__data_);
      if (!size)
      {
        return;
      }
    }

    else if (!*(&v23.__r_.__value_.__s + 23))
    {
      return;
    }

    v15 = *a2;
    if (SHIBYTE((*a2)->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, v15->__r_.__value_.__l.__data_, v15->__r_.__value_.__l.__size_);
      v15 = *a2;
    }

    else
    {
      v16 = *&v15->__r_.__value_.__l.__data_;
      v23.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v23.__r_.__value_.__l.__data_ = v16;
    }

    v17 = *a1;
    if (SHIBYTE(v15[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, v15[1].__r_.__value_.__l.__data_, v15[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v21 = v15[1];
    }

    siri::intelligence::StringToLower(&v21, &__p);
    p_p = &__p;
    v18 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v17 + 160, &__p.__r_.__value_.__l.__data_);
    v19 = v18;
    if (*(v18 + 79) < 0)
    {
      operator delete(*(v18 + 56));
    }

    *(v19 + 56) = v23;
    *(&v23.__r_.__value_.__s + 23) = 0;
    v23.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }
}

void sub_254D831A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FlowGraph::AddCondition(uint64_t *a1, __int128 **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = *a1;
    if (*(v2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v2, *(v2 + 1));
    }

    else
    {
      v5 = *v2;
      __p.__r_.__value_.__r.__words[2] = *(v2 + 2);
      *&__p.__r_.__value_.__l.__data_ = v5;
    }

    p_p = &__p;
    v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::ResponseBase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::ResponseBase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::ResponseBase>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4 + 112, &__p.__r_.__value_.__l.__data_);
    v8 = *a2;
    v7 = a2[1];
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    v9 = *(v6 + 64);
    *(v6 + 56) = v8;
    *(v6 + 64) = v7;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_254D832AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FlowGraph::AddCharacter(uint64_t *a1, __int128 **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = *a1;
    if (*(v2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v2, *(v2 + 1));
    }

    else
    {
      v5 = *v2;
      __p.__r_.__value_.__r.__words[2] = *(v2 + 2);
      *&__p.__r_.__value_.__l.__data_ = v5;
    }

    p_p = &__p;
    v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::ResponseBase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::ResponseBase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::ResponseBase>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4 + 136, &__p.__r_.__value_.__l.__data_);
    v8 = *a2;
    v7 = a2[1];
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    v9 = *(v6 + 64);
    *(v6 + 56) = v8;
    *(v6 + 64) = v7;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_254D83380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FlowGraph::SetStart(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = v2[1];
  *v2 = v4;
  v2[1] = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void **siri::intelligence::FlowGraph::GetStart@<X0>(void **this@<X0>, void *a2@<X8>)
{
  v2 = (*this)[1];
  *a2 = **this;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void siri::intelligence::FlowGraph::GetMetaData(void *a1@<X0>, const void **a2@<X1>, std::string *a3@<X8>)
{
  v5 = std::__tree<std::string>::find<std::string>(*a1 + 16, a2);
  if (*a1 + 24 == v5)
  {

    std::string::basic_string[abi:ne200100]<0>(a3, &str_2_9);
  }

  else if (*(v5 + 79) < 0)
  {
    v7 = *(v5 + 56);
    v8 = *(v5 + 64);

    std::string::__init_copy_ctor_external(a3, v7, v8);
  }

  else
  {
    v6 = *(v5 + 56);
    a3->__r_.__value_.__r.__words[2] = *(v5 + 72);
    *&a3->__r_.__value_.__l.__data_ = v6;
  }
}

void *siri::intelligence::FlowGraph::GetInputGroup@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (!v4 || (v5 = result, result = std::__tree<std::string>::find<std::string>(*result + 40, a2), (*v5 + 48) == result))
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = result[8];
    *a3 = result[7];
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void *siri::intelligence::FlowGraph::GetResponse@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (!v4 || (v5 = result, result = std::__tree<std::string>::find<std::string>(*result + 64, a2), (*v5 + 72) == result))
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = result[8];
    *a3 = result[7];
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

unint64_t siri::intelligence::FlowGraph::GetInputGroups@<X0>(siri::intelligence::FlowGraph *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *this;
  result = *(*this + 56);
  if (result)
  {
    if (!(result >> 60))
    {
      v24 = a2;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<siri::intelligence::InputGroup>>>(result);
    }

    std::vector<std::shared_ptr<siri::intelligence::Activity>>::__throw_length_error[abi:ne200100]();
  }

  v5 = *(v3 + 40);
  v6 = (v3 + 48);
  if (v5 != (v3 + 48))
  {
    v7 = *(a2 + 8);
    do
    {
      v8 = *(a2 + 16);
      if (v7 >= v8)
      {
        v10 = (v7 - *a2) >> 4;
        if ((v10 + 1) >> 60)
        {
          std::vector<std::shared_ptr<siri::intelligence::Activity>>::__throw_length_error[abi:ne200100]();
        }

        v11 = v8 - *a2;
        v12 = v11 >> 3;
        if (v11 >> 3 <= (v10 + 1))
        {
          v12 = v10 + 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF0)
        {
          v13 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        v24 = a2;
        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<siri::intelligence::InputGroup>>>(v13);
        }

        v14 = 16 * v10;
        v15 = *(v5 + 7);
        *(16 * v10) = v15;
        if (*(&v15 + 1))
        {
          atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v7 = (v14 + 16);
        v16 = *(a2 + 8) - *a2;
        v17 = v14 - v16;
        memcpy((v14 - v16), *a2, v16);
        v18 = *a2;
        *a2 = v17;
        *(a2 + 8) = v7;
        v19 = *(a2 + 16);
        *(a2 + 16) = 0;
        v23[2] = v18;
        v23[3] = v19;
        v23[0] = v18;
        v23[1] = v18;
        result = std::__split_buffer<std::shared_ptr<siri::intelligence::InputGroup>>::~__split_buffer(v23);
      }

      else
      {
        *v7 = v5[7];
        v9 = v5[8];
        v7[1] = v9;
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        }

        v7 += 2;
      }

      *(a2 + 8) = v7;
      v20 = v5[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v5[2];
          v22 = *v21 == v5;
          v5 = v21;
        }

        while (!v22);
      }

      v5 = v21;
    }

    while (v21 != v6);
  }

  return result;
}

double siri::intelligence::FlowGraph::GetResponseLastTimestamp(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0.0;
  if (*a2)
  {
    v5 = *a1;
    if (*(v2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v2 + 8), *(v2 + 16));
    }

    else
    {
      v6 = *(v2 + 8);
      __p.__r_.__value_.__r.__words[2] = *(v2 + 24);
      *&__p.__r_.__value_.__l.__data_ = v6;
    }

    v7 = std::__tree<std::string>::find<std::string>(v5 + 232, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*a1 + 240 != v7)
    {
      return *(v7 + 56);
    }
  }

  return v3;
}

void sub_254D83824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FlowGraph::SetResponseLastTimestamp(uint64_t *a1, uint64_t *a2, double a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *a1;
    if (*(v3 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v3 + 8), *(v3 + 16));
    }

    else
    {
      v6 = *(v3 + 8);
      __p.__r_.__value_.__r.__words[2] = *(v3 + 24);
      *&__p.__r_.__value_.__l.__data_ = v6;
    }

    p_p = &__p;
    *(std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v5 + 232, &__p.__r_.__value_.__l.__data_) + 56) = a3;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_254D838DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::FlowGraph::GetResponseVisitCount(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v4 = *a1;
  if (*(v2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    v5 = *(v2 + 8);
    __p.__r_.__value_.__r.__words[2] = *(v2 + 24);
    *&__p.__r_.__value_.__l.__data_ = v5;
  }

  v6 = std::__tree<std::string>::find<std::string>(v4 + 256, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*a1 + 264 == v6)
  {
    return 0;
  }

  else
  {
    return *(v6 + 56);
  }
}

void sub_254D83990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FlowGraph::SetResponseVisitCount(uint64_t *a1, uint64_t *a2, int a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *a1;
    if (*(v3 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v3 + 8), *(v3 + 16));
    }

    else
    {
      v6 = *(v3 + 8);
      __p.__r_.__value_.__r.__words[2] = *(v3 + 24);
      *&__p.__r_.__value_.__l.__data_ = v6;
    }

    p_p = &__p;
    *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v5 + 256, &__p.__r_.__value_.__l.__data_) + 56) = a3;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_254D83A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FlowGraph::IncrementResponseVisitCount(uint64_t *a1, uint64_t *a2)
{
  if (*a2)
  {
    v4 = a2[1];
    v10[0] = *a2;
    v10[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ResponseVisitCount = siri::intelligence::FlowGraph::GetResponseVisitCount(a1, v10);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v6 = *a1;
    v7 = *a2;
    if (*(*a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v7 + 8), *(v7 + 16));
    }

    else
    {
      v8 = *(v7 + 8);
      __p.__r_.__value_.__r.__words[2] = *(v7 + 24);
      *&__p.__r_.__value_.__l.__data_ = v8;
    }

    v10[3] = &__p;
    *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6 + 256, &__p.__r_.__value_.__l.__data_) + 56) = ResponseVisitCount + 1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_254D83B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0.0;
  if (v2)
  {
    v5 = *(v2 + 23);
    if (v5 < 0)
    {
      v5 = *(v2 + 8);
    }

    if (v5)
    {
      v6 = std::__tree<std::string>::find<std::string>(*a1 + 280, v2);
      if (*a1 + 288 != v6)
      {
        return *(v6 + 56);
      }
    }
  }

  return v3;
}

uint64_t siri::intelligence::FlowGraph::SetIntentReferenceLastTimestamp(uint64_t result, uint64_t *a2, double a3)
{
  v3 = *a2;
  if (v3)
  {
    v5 = *(v3 + 23);
    if (v5 < 0)
    {
      v5 = *(v3 + 8);
    }

    if (v5)
    {
      result = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*result + 280, v3);
      *(result + 56) = a3;
    }
  }

  return result;
}

void siri::intelligence::FlowGraph::GetInputGroupLastIntent(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  siri::intelligence::FlowGraph::GetInputGroup(a1, a2, &v20);
  v5 = v20;
  *a3 = 0;
  a3[1] = 0;
  if (v5)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    std::vector<std::shared_ptr<siri::intelligence::IntentReference>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::IntentReference>*,std::shared_ptr<siri::intelligence::IntentReference>*>(&v17, *(v5 + 72), *(v5 + 80), (*(v5 + 80) - *(v5 + 72)) >> 4);
    v6 = v17;
    if (v18 != v17)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0.0;
      while (1)
      {
        v11 = *(v6 + 16 * v8);
        v12 = *(v6 + 16 * v8 + 8);
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = v11;
        v16 = v11;
        IntentReferenceLastTimestamp = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(a1, &v16);
        v14 = IntentReferenceLastTimestamp;
        if (!v12)
        {
          break;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        if (v14 > v10)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_10:
          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          }

          v9 = v15;
          if (!v12)
          {
            v7 = 0;
            goto LABEL_18;
          }

          v7 = v12;
          goto LABEL_15;
        }

        v14 = v10;
LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
LABEL_18:
        ++v8;
        v6 = v17;
        v10 = v14;
        if (v8 >= (v18 - v17) >> 4)
        {
          a3[1] = v7;
          goto LABEL_21;
        }
      }

      if (IntentReferenceLastTimestamp <= v10)
      {
        v14 = v10;
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    v9 = 0;
LABEL_21:
    *a3 = v9;
    v22 = &v17;
    std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v22);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }
}

void sub_254D83DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::FlowGraph::GetActivities@<X0>(siri::intelligence::FlowGraph *this@<X0>, void *a2@<X8>)
{
  v2 = *this;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<std::shared_ptr<siri::intelligence::Activity>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::Activity>*,std::shared_ptr<siri::intelligence::Activity>*>(a2, *(v2 + 184), *(v2 + 192), (*(v2 + 192) - *(v2 + 184)) >> 4);
}

void siri::intelligence::FlowGraph::GetActivity(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = *(*a1 + 184);
  v5 = *(*a1 + 192);
  if (v4 == v5)
  {
LABEL_23:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  while (1)
  {
    v7 = *v4;
    if (*(*v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v7, *(v7 + 1));
    }

    else
    {
      v8 = *v7;
      __p.__r_.__value_.__r.__words[2] = *(v7 + 2);
      *&__p.__r_.__value_.__l.__data_ = v8;
    }

    v9 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v11 = *(a2 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = a2[1];
    }

    if (size != v11)
    {
      v15 = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_20:
      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_21;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v12 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    v15 = memcmp(p_p, v14, size) == 0;
    if (v9 < 0)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (v15)
    {
      break;
    }

    v4 += 2;
    if (v4 == v5)
    {
      goto LABEL_23;
    }
  }

  v16 = v4[1];
  *a3 = *v4;
  a3[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t siri::intelligence::FlowGraph::GetIntent@<X0>(void *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__tree<std::string>::find<std::string>(*a1 + 88, a2);
  if (*a1 + 96 == result)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = *(result + 64);
    *a3 = *(result + 56);
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void **siri::intelligence::FlowGraph::GetIntents@<X0>(void **this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(*this + 11);
  v4 = *this + 96;
  if (v3 != v4)
  {
    do
    {
      this = std::vector<std::shared_ptr<siri::intelligence::Intent>>::push_back[abi:ne200100](a2, (v3 + 7));
      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v4);
  }

  return this;
}

void sub_254D84044(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<siri::intelligence::Intent>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::shared_ptr<siri::intelligence::Activity>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<siri::intelligence::ResponseBase>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<siri::intelligence::Variable>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

uint64_t siri::intelligence::FlowGraph::GetCondition@<X0>(void *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__tree<std::string>::find<std::string>(*a1 + 112, a2);
  if (*a1 + 120 == result)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = *(result + 64);
    *a3 = *(result + 56);
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void *siri::intelligence::FlowGraph::GetConditions@<X0>(siri::intelligence::FlowGraph *this@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = std::vector<std::shared_ptr<siri::intelligence::Condition>>::reserve(a2, *(*this + 128));
  v5 = *(*this + 112);
  v6 = *this + 120;
  if (v5 != v6)
  {
    do
    {
      result = std::vector<std::shared_ptr<siri::intelligence::Intent>>::push_back[abi:ne200100](a2, (v5 + 7));
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v6);
  }

  return result;
}

void sub_254D84274(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<std::shared_ptr<siri::intelligence::Condition>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<siri::intelligence::ResponseBase>>>(result, a2);
    }

    std::vector<std::shared_ptr<siri::intelligence::Activity>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t siri::intelligence::FlowGraph::GetCharacter@<X0>(void *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__tree<std::string>::find<std::string>(*a1 + 136, a2);
  if (*a1 + 144 == result)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = *(result + 64);
    *a3 = *(result + 56);
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void siri::intelligence::FlowGraph::GetIntentIdFromName(uint64_t *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v5 = *a1;
  siri::intelligence::StringToLower(a2, &__p);
  v6 = std::__tree<std::string>::find<std::string>(v5 + 160, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*a1 + 168 == v6)
  {
    std::string::basic_string[abi:ne200100]<0>(a3, &str_2_9);
  }

  else if (*(v6 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *(v6 + 56), *(v6 + 64));
  }

  else
  {
    v7 = *(v6 + 56);
    a3->__r_.__value_.__r.__words[2] = *(v6 + 72);
    *&a3->__r_.__value_.__l.__data_ = v7;
  }
}

void sub_254D8443C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FlowGraph::ClearState(siri::intelligence::FlowGraph *this)
{
  v2 = *this + 240;
  std::__tree<std::string>::destroy(*this + 232, *v2);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 - 8) = v2;
  v3 = *this;
  v4 = (*this + 264);
  std::__tree<std::string>::destroy(*this + 256, *v4);
  v3[33] = 0;
  v3[34] = 0;
  v3[32] = v4;
  v5 = *this;
  v6 = (*this + 288);
  std::__tree<std::string>::destroy(*this + 280, *v6);
  v5[36] = 0;
  v5[37] = 0;
  v5[35] = v6;
  *(*this + 304) = 0;
}

void siri::intelligence::FlowGraph::Load(siri::intelligence::FlowGraph *a1, uint64_t a2, int a3)
{
  siri::intelligence::FlowGraph::ClearState(a1);
  if ((*(a2 + 16) & 2) != 0)
  {
    *(*a1 + 304) = *(a2 + 216);
  }

  if (a3 == 1 && *(a2 + 128) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_InputGroup>::TypeHandler>(a2 + 120, v6);
      siri::intelligence::FlowGraph::GetInputGroup(a1, *(v7 + 24), &v22);
      if (!v22)
      {
        v9 = *(v7 + 24);
        if (*(v9 + 23) < 0)
        {
          v9 = *v9;
        }

        siri::intelligence::Log::Warning("Can't deserialize input group %s as it is unknown", v8, v9);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      ++v6;
    }

    while (v6 < *(a2 + 128));
  }

  if (*(a2 + 192) >= 1)
  {
    v10 = 0;
    do
    {
      v12 = *(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Event>::TypeHandler>(a2 + 184, v10) + 24);
      if (*(v12 + 23) < 0)
      {
        v12 = *v12;
      }

      siri::intelligence::Log::Error("Need to implement loading of event reference state for %s", v11, v12);
      ++v10;
    }

    while (v10 < *(a2 + 192));
  }

  if (*(a2 + 80) >= 1)
  {
    for (i = 0; i < *(a2 + 80); ++i)
    {
      v14 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Response>::TypeHandler>(a2 + 72, i);
      siri::intelligence::FlowGraph::GetResponse(a1, *(v14 + 24), &v22);
      v15 = v22;
      if (v22)
      {
        v16 = *(v14 + 16);
        v17 = v23;
        if ((v16 & 2) != 0)
        {
          v21[0] = v22;
          v21[1] = v23;
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          siri::intelligence::FlowGraph::SetResponseLastTimestamp(a1, v21, *(v14 + 32));
          if (!v17)
          {
            if ((*(v14 + 16) & 4) == 0)
            {
              continue;
            }

            v19 = v15;
            v20 = 0;
LABEL_34:
            v18 = 1;
LABEL_35:
            siri::intelligence::FlowGraph::SetResponseVisitCount(a1, &v19, *(v14 + 40));
            if (v18)
            {
              continue;
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
            if (!v17)
            {
              continue;
            }

LABEL_31:
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
            continue;
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          v16 = *(v14 + 16);
        }

        if ((v16 & 4) != 0)
        {
          v19 = v15;
          v20 = v17;
          if (!v17)
          {
            goto LABEL_34;
          }

          v18 = 0;
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          goto LABEL_35;
        }
      }

      else
      {
        v17 = v23;
      }

      if (v17)
      {
        goto LABEL_31;
      }
    }
  }
}

void sub_254D846F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FlowGraph::Save(siri::intelligence::FlowGraph *this, protobuf::Intelligence_State *a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v5 = a3;
    v8 = *this;
    v9 = *(*this + 304);
    *(a2 + 4) |= 2u;
    *(a2 + 27) = v9;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v10 = *(v8 + 40);
    v11 = (v8 + 48);
    if (v10 == (v8 + 48))
    {
      v23 = 0;
      v22 = 0;
    }

    else
    {
      do
      {
        v12 = v10[7];
        v81 = 0;
        v82 = 0;
        v80 = 0;
        std::vector<std::shared_ptr<siri::intelligence::IntentReference>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::IntentReference>*,std::shared_ptr<siri::intelligence::IntentReference>*>(&v80, *(v12 + 72), *(v12 + 80), (*(v12 + 80) - *(v12 + 72)) >> 4);
        v13 = v80;
        if (v81 != v80)
        {
          v14 = 0;
          do
          {
            v15 = *&v13[2 * v14];
            *&v74.__r_.__value_.__l.__data_ = v15;
            if (*(&v15 + 1))
            {
              v16 = 1;
              atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
              size = v74.__r_.__value_.__l.__size_;
              v78 = v15;
              v79 = v74.__r_.__value_.__l.__size_;
              if (v74.__r_.__value_.__l.__size_)
              {
                v16 = 0;
                atomic_fetch_add_explicit((v74.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
              }
            }

            else
            {
              size = 0;
              v78 = v15;
              v79 = 0;
              v16 = 1;
            }

            IntentReferenceLastTimestamp = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(this, &v78);
            if ((v16 & 1) == 0)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](size);
            }

            if (IntentReferenceLastTimestamp != 0.0)
            {
              std::vector<std::shared_ptr<siri::intelligence::IntentReference>>::push_back[abi:ne200100](&v83, &v74);
            }

            if (v74.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v74.__r_.__value_.__l.__size_);
            }

            ++v14;
            v13 = v80;
          }

          while (v14 < (v81 - v80) >> 4);
        }

        v74.__r_.__value_.__r.__words[0] = &v80;
        std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v74);
        v19 = v10[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v10[2];
            v21 = *v20 == v10;
            v10 = v20;
          }

          while (!v21);
        }

        v10 = v20;
      }

      while (v20 != v11);
      v22 = v83;
      v23 = v84;
      v5 = a3;
    }

    v24 = 126 - 2 * __clz((v23 - v22) >> 4);
    v74.__r_.__value_.__r.__words[0] = this;
    if (v23 == v22)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24;
    }

    std::__introsort<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *,false>(v22, v23, &v74, v25, 1);
    v26 = v83;
    if (v84 != v83)
    {
      v27 = 0;
      v28 = v5 - 1;
      v29 = 1;
      while (1)
      {
        v30 = *(a2 + 25);
        if (!v30)
        {
          break;
        }

        v31 = *(a2 + 48);
        v32 = *v30;
        if (v31 >= *v30)
        {
          if (v32 == *(a2 + 49))
          {
LABEL_37:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 46, v32 + 1);
            v30 = *(a2 + 25);
            v32 = *v30;
          }

          *v30 = v32 + 1;
          v33 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_Event>(*(a2 + 23));
          v34 = *(a2 + 48);
          v35 = *(a2 + 25) + 8 * v34;
          *(a2 + 48) = v34 + 1;
          *(v35 + 8) = v33;
          v26 = v83;
          goto LABEL_39;
        }

        *(a2 + 48) = v31 + 1;
        v33 = *&v30[2 * v31 + 2];
LABEL_39:
        v36 = v26[v27];
        v37 = *(v33 + 3);
        *(v33 + 4) |= 1u;
        if (v37 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v33 + 24, v36);
        }

        std::string::operator=(v37, v36);
        v38 = *&v83[v27];
        v77 = v38;
        v39 = *(&v38 + 1);
        if (*(&v38 + 1))
        {
          atomic_fetch_add_explicit((*(&v38 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v40 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(this, &v77);
        *(v33 + 4) |= 2u;
        *(v33 + 4) = v40;
        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }

        if (v28 > v29 - 1)
        {
          v26 = v83;
          v27 += 2;
          if (v29++ < (v84 - v83) >> 4)
          {
            continue;
          }
        }

        goto LABEL_49;
      }

      v32 = *(a2 + 49);
      goto LABEL_37;
    }

LABEL_49:
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v42 = *(*this + 64);
    v43 = *this + 72;
    if (v42 != v43)
    {
      while (1)
      {
        v44 = v42[8];
        v76[0] = v42[7];
        v76[1] = v44;
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (siri::intelligence::FlowGraph::GetResponseLastTimestamp(this, v76) == 0.0)
        {
          v45 = v42[8];
          v75[0] = v42[7];
          v75[1] = v45;
          if (v45)
          {
            atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v46 = siri::intelligence::FlowGraph::GetResponseVisitCount(this, v75) == 0;
          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v45);
          }

          if (!v44)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v46 = 0;
          if (!v44)
          {
            goto LABEL_59;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
LABEL_59:
        if (!v46)
        {
          std::vector<std::shared_ptr<siri::intelligence::IntentReference>>::push_back[abi:ne200100](&v80, (v42 + 7));
        }

        v47 = v42[1];
        if (v47)
        {
          do
          {
            v48 = v47;
            v47 = *v47;
          }

          while (v47);
        }

        else
        {
          do
          {
            v48 = v42[2];
            v21 = *v48 == v42;
            v42 = v48;
          }

          while (!v21);
        }

        v42 = v48;
        if (v48 == v43)
        {
          v49 = v80;
          v50 = v81;
          goto LABEL_71;
        }
      }
    }

    v50 = 0;
    v49 = 0;
LABEL_71:
    v51 = 126 - 2 * __clz((v50 - v49) >> 4);
    v86 = this;
    if (v50 == v49)
    {
      v52 = 0;
    }

    else
    {
      v52 = v51;
    }

    std::__introsort<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *,false>(v49, v50, &v86, v52, 1);
    v53 = v80;
    if (v81 != v80)
    {
      v54 = 0;
      v55 = 0;
      do
      {
        v56 = v53[v54];
        if (*(v56 + 79) < 0)
        {
          std::string::__init_copy_ctor_external(&v74, v56[7], v56[8]);
        }

        else
        {
          v74 = *(v56 + 7);
        }

        if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
        {
          if (!a4 || v74.__r_.__value_.__l.__size_)
          {
            operator delete(v74.__r_.__value_.__l.__data_);
            goto LABEL_89;
          }

          operator delete(v74.__r_.__value_.__l.__data_);
        }

        else if (!a4 || *(&v74.__r_.__value_.__s + 23))
        {
          goto LABEL_89;
        }

        if (v55 >= a4)
        {
          break;
        }

LABEL_89:
        v57 = *(a2 + 11);
        if (!v57)
        {
          v59 = *(a2 + 21);
          goto LABEL_94;
        }

        v58 = *(a2 + 20);
        v59 = *v57;
        if (v58 >= *v57)
        {
          if (v59 == *(a2 + 21))
          {
LABEL_94:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 18, v59 + 1);
            v57 = *(a2 + 11);
            v59 = *v57;
          }

          *v57 = v59 + 1;
          v60 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_Response>(*(a2 + 9));
          v61 = *(a2 + 20);
          v62 = *(a2 + 11) + 8 * v61;
          *(a2 + 20) = v61 + 1;
          *(v62 + 8) = v60;
          goto LABEL_96;
        }

        *(a2 + 20) = v58 + 1;
        v60 = *&v57[2 * v58 + 2];
LABEL_96:
        v63 = v80[v54];
        if (*(v63 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v74, v63[1], v63[2]);
        }

        else
        {
          v64 = *(v63 + 1);
          v74.__r_.__value_.__r.__words[2] = v63[3];
          *&v74.__r_.__value_.__l.__data_ = v64;
        }

        *(v60 + 4) |= 1u;
        google::protobuf::internal::ArenaStringPtr::SetNoArena(v60 + 3, &google::protobuf::internal::fixed_address_empty_string, &v74);
        if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v74.__r_.__value_.__l.__data_);
        }

        v65 = *&v80[2 * v55];
        v73 = v65;
        v66 = *(&v65 + 1);
        if (*(&v65 + 1))
        {
          atomic_fetch_add_explicit((*(&v65 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        ResponseLastTimestamp = siri::intelligence::FlowGraph::GetResponseLastTimestamp(this, &v73);
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        if (ResponseLastTimestamp > 0.0)
        {
          *(v60 + 4) |= 2u;
          *(v60 + 4) = ResponseLastTimestamp;
        }

        v68 = *&v80[2 * v55];
        v72 = v68;
        v69 = *(&v68 + 1);
        if (*(&v68 + 1))
        {
          atomic_fetch_add_explicit((*(&v68 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        ResponseVisitCount = siri::intelligence::FlowGraph::GetResponseVisitCount(this, &v72);
        if (v69)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v69);
        }

        if (ResponseVisitCount >= 1)
        {
          *(v60 + 4) |= 4u;
          *(v60 + 10) = ResponseVisitCount;
        }

        ++v55;
        v53 = v80;
        v54 += 2;
      }

      while (v55 < (v81 - v80) >> 4);
    }

    v74.__r_.__value_.__r.__words[0] = &v80;
    std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v74);
    v80 = &v83;
    std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v80);
  }

  else
  {

    siri::intelligence::Log::Error("NULL state in FlowGraph::Save", 0);
  }
}

void sub_254D84E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  __p = &a30;
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&__p);
  a30 = v30 - 136;
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&a30);
  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<siri::intelligence::IntentReference>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<siri::intelligence::ResponseBase>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<siri::intelligence::Variable>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void std::__shared_ptr_emplace<siri::intelligence::FlowGraph::Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671C698;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void std::__shared_ptr_emplace<siri::intelligence::FlowGraph::Impl>::__on_zero_shared(uint64_t a1)
{
  std::__tree<std::string>::destroy(a1 + 304, *(a1 + 312));
  std::__tree<std::string>::destroy(a1 + 280, *(a1 + 288));
  std::__tree<std::string>::destroy(a1 + 256, *(a1 + 264));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 232, *(a1 + 240));
  v3 = (a1 + 208);
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 184, *(a1 + 192));
  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>>>::destroy(*(a1 + 168));
  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>>>::destroy(*(a1 + 144));
  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>>>::destroy(*(a1 + 120));
  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>>>::destroy(*(a1 + 96));
  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>>>::destroy(*(a1 + 72));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 40, *(a1 + 48));
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Character>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<siri::intelligence::Variable>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__shared_ptr_emplace<siri::intelligence::InputGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671C6E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void std::__shared_ptr_emplace<siri::intelligence::InputGroup>::__on_zero_shared(uint64_t a1)
{
  v3 = (a1 + 96);
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = (a1 + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<siri::intelligence::InputGroup>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<siri::intelligence::InputGroup>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<siri::intelligence::Variable>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::ResponseBase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::ResponseBase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::ResponseBase>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void std::vector<std::shared_ptr<siri::intelligence::InputGroup>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<siri::intelligence::InputGroup>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::shared_ptr<siri::intelligence::InputGroup>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_254D85878(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::shared_ptr<siri::intelligence::Activity>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::Activity>*,std::shared_ptr<siri::intelligence::Activity>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<siri::intelligence::Activity>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254D858FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<siri::intelligence::Activity>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<siri::intelligence::ResponseBase>>>(a1, a2);
  }

  std::vector<std::shared_ptr<siri::intelligence::Activity>>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<siri::intelligence::Activity>>,std::shared_ptr<siri::intelligence::Activity>*,std::shared_ptr<siri::intelligence::Activity>*,std::shared_ptr<siri::intelligence::Activity>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<siri::intelligence::Activity>>,std::shared_ptr<siri::intelligence::Activity>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<siri::intelligence::Activity>>,std::shared_ptr<siri::intelligence::Activity>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<siri::intelligence::ResponseBase>>,std::shared_ptr<siri::intelligence::ResponseBase>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *,false>(uint64_t *a1, uint64_t *a2, void **a3, uint64_t a4, char a5)
{
LABEL_1:
  v7 = a2;
  v8 = a1;
  v248 = a2 - 2;
  while (1)
  {
    v9 = (v7 - v8) >> 4;
    a1 = v8;
    if (v9 > 2)
    {
      v10 = v8;
      switch(v9)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *,0>(v8, v8 + 2, v248, a3);
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *,0>(v8, v8 + 2, v8 + 4, v248, a3);
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *,0>(v8, v8 + 2, v8 + 4, v8 + 6, v248, a3);
          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      v10 = v8;
      if (v9 == 2)
      {
        v98 = *(a2 - 2);
        v99 = *(a2 - 1);
        if (v99)
        {
          atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v100 = *v8;
        v101 = v8[1];
        if (v101)
        {
          atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v102 = *a3;
        *&v259 = v98;
        *(&v259 + 1) = v99;
        if (v99)
        {
          atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        IntentReferenceLastTimestamp = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v102, &v259);
        v257 = v100;
        v258 = v101;
        if (v101)
        {
          atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v104 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v102, &v257);
        if (v101)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v101);
        }

        if (v99)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v99);
        }

        if (v101)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v101);
        }

        if (v99)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v99);
        }

        if (IntentReferenceLastTimestamp > v104)
        {
          v105 = *v8;
          *v8 = *(a2 - 2);
          *(a2 - 2) = v105;
          v106 = v8[1];
          v8[1] = *(a2 - 1);
          *(a2 - 1) = v106;
        }

        return;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (v10 == a2)
      {
        return;
      }

      v131 = (v9 - 2) >> 1;
      v132 = v131;
      v249 = v9;
      v243 = v131;
      do
      {
        v133 = v132;
        if (v131 >= v132)
        {
          v242 = v132;
          v134 = (2 * v132) | 1;
          v135 = &a1[2 * v134];
          v136 = 2 * v132 + 2;
          if (v136 < v9)
          {
            v137 = *v135;
            v138 = v135[1];
            if (v138)
            {
              atomic_fetch_add_explicit(&v138->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v141 = v135[2];
            v140 = v135[3];
            v139 = v135 + 2;
            if (v140)
            {
              atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v142 = *a3;
            v259 = v137;
            if (v138)
            {
              atomic_fetch_add_explicit(&v138->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v143 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v142, &v259);
            v257 = v141;
            v258 = v140;
            if (v140)
            {
              atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v144 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v142, &v257);
            if (v140)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v140);
            }

            if (v138)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v138);
            }

            if (v140)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v140);
            }

            if (v138)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v138);
            }

            v135 = &a1[2 * v134];
            if (v143 > v144)
            {
              v135 = v139;
              v134 = v136;
            }
          }

          v145 = *v135;
          v146 = v135[1];
          v147 = v135;
          if (v146)
          {
            atomic_fetch_add_explicit(&v146->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v148 = &a1[2 * v242];
          v149 = *v148;
          v150 = v148[1];
          if (v150)
          {
            atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v151 = *a3;
          *&v259 = v145;
          *(&v259 + 1) = v146;
          if (v146)
          {
            atomic_fetch_add_explicit(&v146->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v152 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v151, &v259);
          v257 = v149;
          v258 = v150;
          if (v150)
          {
            atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v153 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v151, &v257);
          if (v150)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v150);
          }

          if (v146)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v146);
          }

          if (v150)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v150);
          }

          if (v146)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v146);
          }

          v133 = v242;
          if (v152 <= v153)
          {
            v154 = v147;
            v155 = v148[1];
            v246 = *v148;
            *v148 = 0;
            v148[1] = 0;
            do
            {
              v156 = v148;
              v148 = v154;
              v157 = *v154;
              *v154 = 0;
              v154[1] = 0;
              v158 = v156[1];
              *v156 = v157;
              if (v158)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v158);
              }

              if (v131 < v134)
              {
                break;
              }

              v159 = 2 * v134;
              v134 = (2 * v134) | 1;
              v160 = &a1[2 * v134];
              v161 = v159 + 2;
              if (v159 + 2 < v9)
              {
                v252 = &a1[2 * v134];
                v162 = *v160;
                v163 = v160[1];
                if (v163)
                {
                  atomic_fetch_add_explicit(&v163->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v165 = v252[2];
                v164 = v252[3];
                if (v164)
                {
                  atomic_fetch_add_explicit(&v164->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v166 = *a3;
                v259 = v162;
                if (v163)
                {
                  atomic_fetch_add_explicit(&v163->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v167 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v166, &v259);
                v257 = v165;
                v258 = v164;
                if (v164)
                {
                  atomic_fetch_add_explicit(&v164->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v131 = v243;
                v168 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v166, &v257);
                if (v164)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v164);
                }

                if (v163)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v163);
                }

                if (v164)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v164);
                }

                if (v163)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v163);
                }

                v160 = &a1[2 * v134];
                if (v167 > v168)
                {
                  v160 = v252 + 2;
                  v134 = v161;
                }
              }

              v169 = *v160;
              v170 = v160[1];
              v154 = v160;
              if (v170)
              {
                atomic_fetch_add_explicit(&v170->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v155)
              {
                atomic_fetch_add_explicit(&v155->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v171 = *a3;
              *&v259 = v169;
              *(&v259 + 1) = v170;
              if (v170)
              {
                atomic_fetch_add_explicit(&v170->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v9 = v249;
              v172 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v171, &v259);
              v257 = v246;
              v258 = v155;
              if (v155)
              {
                atomic_fetch_add_explicit(&v155->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v173 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v171, &v257);
              if (v155)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v155);
              }

              if (v170)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v170);
              }

              if (v155)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v155);
              }

              if (v170)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v170);
              }
            }

            while (v172 <= v173);
            v174 = v148[1];
            *v148 = v246;
            v148[1] = v155;
            v133 = v242;
            if (v174)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v174);
            }
          }
        }

        v132 = v133 - 1;
      }

      while (v133);
      while (2)
      {
        v175 = 0;
        v176 = a1;
        v177 = a1[1];
        v244 = a2;
        v247 = *a1;
        *a1 = 0;
        a1[1] = 0;
        v255 = (v9 - 2) >> 1;
        v178 = a1;
        v250 = v9;
        do
        {
          v179 = &v178[2 * v175];
          v180 = v179 + 2;
          v181 = 2 * v175;
          v175 = (2 * v175) | 1;
          v182 = v181 + 2;
          if (v181 + 2 < v9)
          {
            v253 = v179 + 2;
            v183 = v179[2];
            v184 = v179[3];
            if (v184)
            {
              atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v187 = v179[4];
            v186 = v179[5];
            v185 = v179 + 4;
            if (v186)
            {
              atomic_fetch_add_explicit(&v186->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v188 = *a3;
            *&v259 = v183;
            *(&v259 + 1) = v184;
            if (v184)
            {
              atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v189 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v188, &v259);
            v257 = v187;
            v258 = v186;
            if (v186)
            {
              atomic_fetch_add_explicit(&v186->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v9 = v250;
            v190 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v188, &v257);
            if (v186)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v186);
            }

            if (v184)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v184);
            }

            if (v186)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v186);
            }

            if (v184)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v184);
            }

            v176 = a1;
            v180 = v253;
            if (v189 > v190)
            {
              v180 = v185;
              v175 = v182;
            }
          }

          v191 = *v180;
          *v180 = 0;
          v180[1] = 0;
          v192 = v178[1];
          *v178 = v191;
          if (v192)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v192);
          }

          v178 = v180;
        }

        while (v175 <= v255);
        a2 = v244 - 2;
        if (v180 == v244 - 2)
        {
          v220 = v180[1];
          *v180 = v247;
          v180[1] = v177;
          if (!v220)
          {
            goto LABEL_485;
          }
        }

        else
        {
          v193 = *(v244 - 1);
          *(v244 - 2) = 0;
          *(v244 - 1) = 0;
          v194 = v180[1];
          *v180 = v193;
          if (v194)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v194);
          }

          v195 = *(v244 - 1);
          *(v244 - 2) = v247;
          *(v244 - 1) = v177;
          if (v195)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v195);
          }

          v196 = ((v180 + 2) - v176) >> 4;
          v197 = v196 < 2;
          v198 = v196 - 2;
          if (v197)
          {
            goto LABEL_485;
          }

          v199 = v198 >> 1;
          v200 = &a1[2 * (v198 >> 1)];
          v201 = *v200;
          v202 = v200[1];
          if (v202)
          {
            atomic_fetch_add_explicit(&v202->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v203 = v180;
          v204 = *v180;
          v205 = v180[1];
          if (v205)
          {
            atomic_fetch_add_explicit(&v205->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v206 = *a3;
          v259 = v201;
          if (v202)
          {
            atomic_fetch_add_explicit(&v202->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v207 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v206, &v259);
          v257 = v204;
          v258 = v205;
          if (v205)
          {
            atomic_fetch_add_explicit(&v205->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v208 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v206, &v257);
          if (v205)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v205);
          }

          if (v202)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v202);
          }

          if (v205)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v205);
          }

          if (v202)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v202);
          }

          if (v207 <= v208)
          {
            goto LABEL_485;
          }

          v209 = v203;
          v210 = *v203;
          v211 = v209[1];
          *v209 = 0;
          v209[1] = 0;
          do
          {
            v212 = v209;
            v209 = v200;
            v213 = *v200;
            *v200 = 0;
            v200[1] = 0;
            v214 = v212[1];
            *v212 = v213;
            if (v214)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v214);
            }

            if (!v199)
            {
              break;
            }

            v199 = (v199 - 1) >> 1;
            v200 = &a1[2 * v199];
            v215 = *v200;
            v216 = v200[1];
            if (v216)
            {
              atomic_fetch_add_explicit(&v216->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v211)
            {
              atomic_fetch_add_explicit(&v211->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v217 = *a3;
            v259 = v215;
            if (v216)
            {
              atomic_fetch_add_explicit(&v216->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v218 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v217, &v259);
            v257 = v210;
            v258 = v211;
            if (v211)
            {
              atomic_fetch_add_explicit(&v211->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v219 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v217, &v257);
            if (v211)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v211);
            }

            if (v216)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v216);
            }

            if (v211)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v211);
            }

            if (v216)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v216);
            }
          }

          while (v218 > v219);
          v220 = v209[1];
          *v209 = v210;
          v209[1] = v211;
          if (!v220)
          {
LABEL_485:
            v197 = v9-- <= 2;
            if (v197)
            {
              return;
            }

            continue;
          }
        }

        break;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v220);
      goto LABEL_485;
    }

    v11 = &v10[2 * (v9 >> 1)];
    if (v9 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *,0>(&v10[2 * (v9 >> 1)], v10, v248, a3);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *,0>(v10, &v10[2 * (v9 >> 1)], v248, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *,0>(v10 + 2, v11 - 2, a2 - 4, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *,0>(v10 + 4, &v10[2 * (v9 >> 1) + 2], a2 - 6, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *,0>(v11 - 2, &v10[2 * (v9 >> 1)], &v10[2 * (v9 >> 1) + 2], a3);
      v12 = *v10;
      *v10 = *v11;
      *v11 = v12;
    }

    --a4;
    if (a5)
    {
      goto LABEL_32;
    }

    v13 = *(v10 - 2);
    v14 = *(v10 - 1);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = *v10;
    v16 = v10[1];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = *a3;
    *&v259 = v13;
    *(&v259 + 1) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v17, &v259);
    v257 = v15;
    v258 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v17, &v257);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v18 > v19)
    {
LABEL_32:
      v251 = a4;
      v20 = 0;
      v22 = *v10;
      v21 = v10[1];
      *v10 = 0;
      v10[1] = 0;
      do
      {
        v23 = v10[v20 + 2];
        v24 = v10[v20 + 3];
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v25 = *a3;
        *&v259 = v23;
        *(&v259 + 1) = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v25, &v259);
        v257 = v22;
        v258 = v21;
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v27 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v25, &v257);
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        v20 += 2;
      }

      while (v26 > v27);
      v28 = &v10[v20];
      i = a2;
      if (v20 == 2)
      {
        i = a2;
        if (v28 < a2)
        {
          for (i = a2 - 2; ; i -= 2)
          {
            v35 = *i;
            v36 = i[1];
            if (v36)
            {
              atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v21)
            {
              atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v37 = *a3;
            *&v259 = v35;
            *(&v259 + 1) = v36;
            if (v36)
            {
              atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v38 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v37, &v259);
            v257 = v22;
            v258 = v21;
            if (v21)
            {
              atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v39 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v37, &v257);
            if (v21)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            }

            if (v36)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v36);
            }

            if (v21)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            }

            if (v36)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v36);
            }

            if (v28 >= i || v38 > v39)
            {
              break;
            }
          }
        }
      }

      else
      {
        do
        {
          v30 = *(i - 2);
          v31 = *(i - 1);
          i -= 2;
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v32 = *a3;
          *&v259 = v30;
          *(&v259 + 1) = v31;
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v33 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v32, &v259);
          v257 = v22;
          v258 = v21;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v34 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v32, &v257);
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }

          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }
        }

        while (v33 <= v34);
      }

      v8 = v28;
      if (v28 < i)
      {
        v40 = i;
        do
        {
          v41 = *v8;
          *v8 = *v40;
          *v40 = v41;
          v42 = v8[1];
          v8[1] = v40[1];
          v40[1] = v42;
          do
          {
            v43 = v8[2];
            v44 = v8[3];
            v8 += 2;
            if (v44)
            {
              atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v21)
            {
              atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v45 = *a3;
            *&v259 = v43;
            *(&v259 + 1) = v44;
            if (v44)
            {
              atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v46 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v45, &v259);
            v257 = v22;
            v258 = v21;
            if (v21)
            {
              atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v47 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v45, &v257);
            if (v21)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            }

            if (v44)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v44);
            }

            if (v21)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            }

            if (v44)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v44);
            }
          }

          while (v46 > v47);
          do
          {
            v48 = *(v40 - 2);
            v49 = *(v40 - 1);
            v40 -= 2;
            if (v49)
            {
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v21)
            {
              atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v50 = *a3;
            *&v259 = v48;
            *(&v259 + 1) = v49;
            if (v49)
            {
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v51 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v50, &v259);
            v257 = v22;
            v258 = v21;
            if (v21)
            {
              atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v52 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v50, &v257);
            if (v21)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            }

            if (v49)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v49);
            }

            if (v21)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            }

            if (v49)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v49);
            }
          }

          while (v51 <= v52);
        }

        while (v8 < v40);
      }

      v53 = v8 - 2;
      if (v8 - 2 != a1)
      {
        v54 = *v53;
        *v53 = 0;
        *(v8 - 1) = 0;
        v55 = a1[1];
        *a1 = v54;
        if (v55)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v55);
        }
      }

      v56 = *(v8 - 1);
      *(v8 - 2) = v22;
      *(v8 - 1) = v21;
      a4 = v251;
      if (v56)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v56);
      }

      v57 = v28 >= i;
      v7 = a2;
      if (!v57)
      {
        goto LABEL_137;
      }

      v58 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *>(a1, v8 - 2, a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *>(v8, a2, a3))
      {
        a2 = v8 - 2;
        if (v58)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v58)
      {
LABEL_137:
        std::__introsort<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *,false>(a1, v8 - 2, a3, v251, a5 & 1);
        a5 = 0;
      }
    }

    else
    {
      v60 = *v10;
      v59 = v10[1];
      *v10 = 0;
      v10[1] = 0;
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v61 = *(a2 - 2);
      v62 = *(a2 - 1);
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v63 = *a3;
      *&v259 = v60;
      *(&v259 + 1) = v59;
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v64 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v63, &v259);
      v257 = v61;
      v258 = v62;
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v65 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v63, &v257);
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      if (v59)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v59);
      }

      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      if (v59)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v59);
      }

      if (v64 <= v65)
      {
        v8 = v10 + 2;
        v66 = a2;
        while (v8 < a2)
        {
          if (v59)
          {
            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v93 = *v8;
          v94 = v8[1];
          if (v94)
          {
            atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v95 = *a3;
          *&v259 = v60;
          *(&v259 + 1) = v59;
          if (v59)
          {
            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v96 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v95, &v259);
          v257 = v93;
          v258 = v94;
          if (v94)
          {
            atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v97 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v95, &v257);
          if (v94)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v94);
          }

          if (v59)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v59);
          }

          if (v94)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v94);
          }

          if (v59)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v59);
          }

          if (v96 > v97)
          {
            break;
          }

          v8 += 2;
        }
      }

      else
      {
        v8 = v10;
        v66 = a2;
        do
        {
          if (v59)
          {
            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v67 = v8[2];
          v68 = v8[3];
          if (v68)
          {
            atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v69 = *a3;
          *&v259 = v60;
          *(&v259 + 1) = v59;
          if (v59)
          {
            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v70 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v69, &v259);
          v257 = v67;
          v258 = v68;
          if (v68)
          {
            atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v71 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v69, &v257);
          if (v68)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v68);
          }

          if (v59)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v59);
          }

          if (v68)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v68);
          }

          if (v59)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v59);
          }

          v8 += 2;
        }

        while (v70 <= v71);
      }

      if (v8 < v66)
      {
        v66 = a2;
        do
        {
          if (v59)
          {
            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v72 = *(v66 - 2);
          v73 = *(v66 - 1);
          if (v73)
          {
            atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v74 = *a3;
          *&v259 = v60;
          *(&v259 + 1) = v59;
          if (v59)
          {
            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v75 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v74, &v259);
          v257 = v72;
          v258 = v73;
          if (v73)
          {
            atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v76 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v74, &v257);
          if (v73)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v73);
          }

          if (v59)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v59);
          }

          if (v73)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v73);
          }

          if (v59)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v59);
          }

          v66 -= 2;
        }

        while (v75 > v76);
      }

      while (v8 < v66)
      {
        v77 = *v8;
        *v8 = *v66;
        *v66 = v77;
        v78 = v8[1];
        v8[1] = v66[1];
        v66[1] = v78;
        do
        {
          if (v59)
          {
            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v79 = v8[2];
          v80 = v8[3];
          if (v80)
          {
            atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v81 = *a3;
          *&v259 = v60;
          *(&v259 + 1) = v59;
          if (v59)
          {
            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v82 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v81, &v259);
          v257 = v79;
          v258 = v80;
          if (v80)
          {
            atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v83 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v81, &v257);
          if (v80)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v80);
          }

          if (v59)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v59);
          }

          if (v80)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v80);
          }

          if (v59)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v59);
          }

          v8 += 2;
        }

        while (v82 <= v83);
        do
        {
          if (v59)
          {
            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v84 = *(v66 - 2);
          v85 = *(v66 - 1);
          if (v85)
          {
            atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v86 = *a3;
          *&v259 = v60;
          *(&v259 + 1) = v59;
          if (v59)
          {
            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v87 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v86, &v259);
          v257 = v84;
          v258 = v85;
          if (v85)
          {
            atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v88 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v86, &v257);
          if (v85)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v85);
          }

          if (v59)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v59);
          }

          if (v85)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v85);
          }

          if (v59)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v59);
          }

          v66 -= 2;
        }

        while (v87 > v88);
      }

      v89 = v8 - 2;
      if (v8 - 2 != a1)
      {
        v90 = *v89;
        *v89 = 0;
        *(v8 - 1) = 0;
        v91 = a1[1];
        *a1 = v90;
        if (v91)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v91);
        }
      }

      a5 = 0;
      v92 = *(v8 - 1);
      *(v8 - 2) = v60;
      *(v8 - 1) = v59;
      v7 = a2;
      if (v92)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v92);
        a5 = 0;
      }
    }
  }

  if (a5)
  {
    if (v10 != a2)
    {
      v107 = v8 + 2;
      if (v8 + 2 != a2)
      {
        v108 = 0;
        v109 = v8;
        do
        {
          v110 = v109;
          v109 = v107;
          v111 = v110[2];
          v112 = v110[3];
          if (v112)
          {
            atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v113 = *v110;
          v114 = v110[1];
          if (v114)
          {
            atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v115 = *a3;
          *&v259 = v111;
          *(&v259 + 1) = v112;
          if (v112)
          {
            atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v116 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v115, &v259);
          v257 = v113;
          v258 = v114;
          if (v114)
          {
            atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v117 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v115, &v257);
          if (v114)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v114);
          }

          if (v112)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v112);
          }

          if (v114)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v114);
          }

          if (v112)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v112);
          }

          if (v116 > v117)
          {
            v118 = *v109;
            v119 = v110[3];
            v120 = v108;
            *v109 = 0;
            v109[1] = 0;
            while (1)
            {
              v121 = a1 + v120;
              v122 = *(a1 + v120);
              *v121 = 0;
              *(v121 + 1) = 0;
              v123 = *(a1 + v120 + 24);
              *(v121 + 1) = v122;
              if (v123)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v123);
              }

              if (!v120)
              {
                v129 = a1;
                goto LABEL_328;
              }

              if (v119)
              {
                atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v125 = *(a1 + v120 - 16);
              v124 = *(a1 + v120 - 8);
              if (v124)
              {
                atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v126 = *a3;
              *&v259 = v118;
              *(&v259 + 1) = v119;
              if (v119)
              {
                atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v127 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v126, &v259);
              v257 = v125;
              v258 = v124;
              if (v124)
              {
                atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v128 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v126, &v257);
              if (v124)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v124);
              }

              if (v119)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v119);
              }

              if (v124)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v124);
              }

              if (v119)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v119);
              }

              if (v127 <= v128)
              {
                break;
              }

              v120 -= 16;
            }

            v129 = (a1 + v120);
LABEL_328:
            v130 = v129[1];
            *v129 = v118;
            v129[1] = v119;
            if (v130)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v130);
            }
          }

          v107 = v109 + 2;
          v108 += 16;
        }

        while (v109 + 2 != a2);
      }
    }
  }

  else if (v10 != a2)
  {
    v221 = v8 + 2;
    if (v8 + 2 != a2)
    {
      v222 = (v8 + 3);
      do
      {
        v223 = a1;
        a1 = v221;
        v224 = v223[2];
        v225 = v223[3];
        if (v225)
        {
          atomic_fetch_add_explicit(&v225->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v226 = *v223;
        v227 = v223[1];
        if (v227)
        {
          atomic_fetch_add_explicit(&v227->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v228 = *a3;
        *&v259 = v224;
        *(&v259 + 1) = v225;
        if (v225)
        {
          atomic_fetch_add_explicit(&v225->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v229 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v228, &v259);
        v257 = v226;
        v258 = v227;
        if (v227)
        {
          atomic_fetch_add_explicit(&v227->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v230 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v228, &v257);
        if (v227)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v227);
        }

        if (v225)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v225);
        }

        if (v227)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v227);
        }

        if (v225)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v225);
        }

        if (v229 > v230)
        {
          v231 = *a1;
          v232 = v223[3];
          v233 = v222;
          *a1 = 0;
          a1[1] = 0;
          do
          {
            v234 = *(v233 - 3);
            *(v233 - 3) = 0;
            *(v233 - 2) = 0;
            v235 = *v233;
            *(v233 - 1) = v234;
            if (v235)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v235);
            }

            if (v232)
            {
              atomic_fetch_add_explicit(&v232->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v237 = *(v233 - 5);
            v236 = *(v233 - 4);
            if (v236)
            {
              atomic_fetch_add_explicit(&v236->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v238 = *a3;
            *&v259 = v231;
            *(&v259 + 1) = v232;
            if (v232)
            {
              atomic_fetch_add_explicit(&v232->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v239 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v238, &v259);
            v257 = v237;
            v258 = v236;
            if (v236)
            {
              atomic_fetch_add_explicit(&v236->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v240 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v238, &v257);
            if (v236)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v236);
            }

            if (v232)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v232);
            }

            if (v236)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v236);
            }

            if (v232)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v232);
            }

            v233 -= 2;
          }

          while (v239 > v240);
          v241 = *v233;
          *(v233 - 1) = v231;
          *v233 = v232;
          if (v241)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v241);
          }
        }

        v221 = a1 + 2;
        v222 += 2;
      }

      while (a1 + 2 != a2);
    }
  }
}

void sub_254D87120(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    if (!v1)
    {
LABEL_3:
      if (!v2)
      {
LABEL_8:
        if (v1)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v1);
          std::__shared_weak_count::__release_shared[abi:ne200100](v1);
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
      goto LABEL_8;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  if (!v2)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, void **a4)
{
  v7 = *a2;
  v9 = (a2 + 1);
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a1;
  v12 = (a1 + 1);
  v11 = a1[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a4;
  v52 = v7;
  v53 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IntentReferenceLastTimestamp = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v13, &v52);
  v50 = v10;
  v51 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v13, &v50);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v16 = *a3;
  v17 = a3[1];
  if (IntentReferenceLastTimestamp <= v15)
  {
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = *a2;
    v25 = a2[1];
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v27 = *a4;
    v52 = v16;
    v53 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v28 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v27, &v52);
    v50 = v26;
    v51 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v27, &v50);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v28 > v29)
    {
      v30 = *a2;
      *a2 = *a3;
      *a3 = v30;
      v31 = a2[1];
      a2[1] = a3[1];
      a3[1] = v31;
      v32 = *a2;
      v33 = a2[1];
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v35 = *a1;
      v34 = a1[1];
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v36 = *a4;
      v52 = v32;
      v53 = v33;
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v37 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v36, &v52);
      v50 = v35;
      v51 = v34;
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v38 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v36, &v50);
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      if (v37 > v38)
      {
        v39 = *a1;
        *a1 = *a2;
        *a2 = v39;
LABEL_90:
        v48 = *v12;
        *v12 = *v9;
        *v9 = v48;
      }
    }
  }

  else
  {
    v18 = v9;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = *a2;
    v19 = a2[1];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = *a4;
    v52 = v16;
    v53 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v21, &v52);
    v50 = v20;
    v51 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v21, &v50);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    v24 = *a1;
    if (v22 > v23)
    {
      *a1 = *a3;
      *a3 = v24;
LABEL_89:
      v9 = (a3 + 1);
      goto LABEL_90;
    }

    *a1 = *a2;
    *a2 = v24;
    v40 = a1[1];
    a1[1] = a2[1];
    a2[1] = v40;
    v41 = *a3;
    v42 = a3[1];
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      v40 = *v18;
    }

    v43 = *a2;
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v44 = *a4;
    v52 = v41;
    v53 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v45 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v44, &v52);
    v50 = v43;
    v51 = v40;
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v46 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v44, &v50);
    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }

    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }

    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

    if (v45 > v46)
    {
      v47 = *a2;
      *a2 = *a3;
      *a3 = v47;
      v12 = v18;
      goto LABEL_89;
    }
  }
}

void sub_254D877D8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    if (!v1)
    {
LABEL_3:
      if (!v2)
      {
LABEL_8:
        if (v1)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v1);
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
      goto LABEL_8;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  if (!v2)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void **a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *,0>(a1, a2, a3, a5);
  v10 = *a4;
  v11 = a4[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a3;
  v12 = a3[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *a5;
  v39 = v10;
  v40 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IntentReferenceLastTimestamp = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v14, &v39);
  v37 = v13;
  v38 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v14, &v37);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (IntentReferenceLastTimestamp > v16)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = a3[1];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = *a2;
    v21 = a2[1];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = *a5;
    v39 = v19;
    v40 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v23, &v39);
    v37 = v22;
    v38 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v23, &v37);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v24 > v25)
    {
      v26 = *a2;
      *a2 = *a3;
      *a3 = v26;
      v27 = a2[1];
      a2[1] = a3[1];
      a3[1] = v27;
      v28 = *a2;
      v29 = a2[1];
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v31 = *a1;
      v30 = a1[1];
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v32 = *a5;
      v39 = v28;
      v40 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v33 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v32, &v39);
      v37 = v31;
      v38 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v34 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v32, &v37);
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      if (v33 > v34)
      {
        v35 = *a1;
        *a1 = *a2;
        *a2 = v35;
        v36 = a1[1];
        a1[1] = a2[1];
        a2[1] = v36;
      }
    }
  }
}

void sub_254D87B50(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    if (!v1)
    {
LABEL_3:
      if (!v2)
      {
LABEL_8:
        if (v1)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v1);
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
      goto LABEL_8;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  if (!v2)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void **a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *,0>(a1, a2, a3, a4, a6);
  v12 = *a5;
  v13 = a5[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *a4;
  v14 = a4[1];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *a6;
  v50 = v12;
  v51 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IntentReferenceLastTimestamp = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v16, &v50);
  v48 = v15;
  v49 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v16, &v48);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (IntentReferenceLastTimestamp > v18)
  {
    v19 = *a4;
    *a4 = *a5;
    *a5 = v19;
    v20 = a4[1];
    a4[1] = a5[1];
    a5[1] = v20;
    v21 = *a4;
    v22 = a4[1];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = *a3;
    v23 = a3[1];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = *a6;
    v50 = v21;
    v51 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v25, &v50);
    v48 = v24;
    v49 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v27 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v25, &v48);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v26 > v27)
    {
      v28 = *a3;
      *a3 = *a4;
      *a4 = v28;
      v29 = a3[1];
      a3[1] = a4[1];
      a4[1] = v29;
      v30 = *a3;
      v31 = a3[1];
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v33 = *a2;
      v32 = a2[1];
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v34 = *a6;
      v50 = v30;
      v51 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v35 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v34, &v50);
      v48 = v33;
      v49 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v36 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v34, &v48);
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      if (v35 > v36)
      {
        v37 = *a2;
        *a2 = *a3;
        *a3 = v37;
        v38 = a2[1];
        a2[1] = a3[1];
        a3[1] = v38;
        v39 = *a2;
        v40 = a2[1];
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v42 = *a1;
        v41 = a1[1];
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v43 = *a6;
        v50 = v39;
        v51 = v40;
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v44 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v43, &v50);
        v48 = v42;
        v49 = v41;
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v45 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v43, &v48);
        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        }

        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        }

        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        if (v44 > v45)
        {
          v46 = *a1;
          *a1 = *a2;
          *a2 = v46;
          v47 = a1[1];
          a1[1] = a2[1];
          a2[1] = v47;
        }
      }
    }
  }
}

void sub_254D87FC0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    if (!v1)
    {
LABEL_3:
      if (!v2)
      {
LABEL_8:
        if (v1)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v1);
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
      goto LABEL_8;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  if (!v2)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *>(uint64_t *a1, uint64_t *a2, void **a3)
{
  v4 = a2;
  v6 = (a2 - a1) >> 4;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *(a2 - 2);
        v8 = *(a2 - 1);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = *a1;
        v10 = a1[1];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = *a3;
        v44 = v7;
        v45 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        IntentReferenceLastTimestamp = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v11, &v44);
        v42 = v9;
        v43 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v13 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v11, &v42);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        if (IntentReferenceLastTimestamp > v13)
        {
          v14 = *a1;
          *a1 = *(v4 - 2);
          *(v4 - 2) = v14;
          v15 = a1[1];
          a1[1] = *(v4 - 1);
          *(v4 - 1) = v15;
        }

        return 1;
      }

      goto LABEL_27;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *,0>(a1, a1 + 2, a2 - 2, a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
      return 1;
  }

LABEL_27:
  v16 = a1 + 4;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_0 &,std::shared_ptr<siri::intelligence::IntentReference> *,0>(a1, a1 + 2, a1 + 4, a3);
  v17 = a1 + 6;
  if (a1 + 6 == v4)
  {
    return 1;
  }

  v41 = 0;
  v40 = 0;
  v39 = v4;
  while (1)
  {
    v18 = *v17;
    v19 = v17[1];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = *v16;
    v21 = v16[1];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = *a3;
    v44 = v18;
    v45 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v22, &v44);
    v42 = v20;
    v43 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v22, &v42);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (v23 > v24)
    {
      v26 = *v17;
      v25 = v17[1];
      v27 = v41;
      *v17 = 0;
      v17[1] = 0;
      while (1)
      {
        v28 = a1 + v27;
        v29 = *(a1 + v27 + 32);
        *(v28 + 4) = 0;
        *(v28 + 5) = 0;
        v30 = *(a1 + v27 + 56);
        *(v28 + 3) = v29;
        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }

        if (v27 == -32)
        {
          v36 = a1;
          goto LABEL_70;
        }

        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v32 = *(a1 + v27 + 16);
        v31 = *(a1 + v27 + 24);
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v33 = *a3;
        v44 = v26;
        v45 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v33, &v44);
        v42 = v32;
        v43 = v31;
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v35 = siri::intelligence::FlowGraph::GetIntentReferenceLastTimestamp(v33, &v42);
        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        if (v34 <= v35)
        {
          break;
        }

        v27 -= 16;
      }

      v36 = (a1 + v27 + 32);
LABEL_70:
      v37 = v36[1];
      *v36 = v26;
      v36[1] = v25;
      v4 = v39;
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      if (++v40 == 8)
      {
        return v17 + 2 == v39;
      }
    }

    v16 = v17;
    v41 += 16;
    v17 += 2;
    if (v17 == v4)
    {
      return 1;
    }
  }
}

void sub_254D88494(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    if (!v1)
    {
LABEL_7:
      if (!v2)
      {
LABEL_8:
        if (!v1)
        {
LABEL_13:
          _Unwind_Resume(a1);
        }

LABEL_12:
        std::__shared_weak_count::__release_shared[abi:ne200100](v1);
        goto LABEL_13;
      }

LABEL_3:
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
      if (!v1)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if (!v1)
  {
    goto LABEL_7;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  if (!v2)
  {
    goto LABEL_8;
  }

  goto LABEL_3;
}

void std::__introsort<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *,false>(uint64_t *a1, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
LABEL_1:
  v174 = a2 - 2;
  v165 = a2 - 6;
  v166 = a2 - 4;
  v9 = a1;
  v171 = a2;
  while (1)
  {
    v10 = v9;
    v11 = (a2 - v9) >> 4;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *,0>(v9, v9 + 2, v174, a3);
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *,0>(v9, v9 + 2, v9 + 4, v174, a3);
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *,0>(v9, v9 + 2, v9 + 4, v9 + 6, v174, a3);
          return;
      }
    }

    else
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v183[0] = *(a2 - 2);
        v68 = *(a2 - 1);
        v183[1] = v68;
        if (v68)
        {
          atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v69 = v9[1];
        v182[0] = *v9;
        v182[1] = v69;
        if (v69)
        {
          atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v70 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, v183, v182);
        if (v69)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v69);
        }

        if (v68)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v68);
        }

        if (v70)
        {
          v71 = *v9;
          *v9 = *(a2 - 2);
          *(a2 - 2) = v71;
          v72 = v9[1];
          v9[1] = *(a2 - 1);
          *(a2 - 1) = v72;
        }

        return;
      }
    }

    v177 = (a2 - v9) >> 4;
    v173 = v9;
    if (v11 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (v9 == a2)
      {
        return;
      }

      v90 = (v11 - 2) >> 1;
      v175 = v90;
      while (2)
      {
        v91 = v90;
        if (v175 < v90)
        {
          goto LABEL_265;
        }

        v167 = v90;
        v92 = (2 * v90) | 1;
        v93 = &v10[2 * v92];
        v94 = 2 * v90 + 2;
        if (v94 < v177)
        {
          *v198 = *v93;
          v95 = v198[1];
          if (v198[1])
          {
            atomic_fetch_add_explicit((v198[1] + 8), 1uLL, memory_order_relaxed);
          }

          v196 = v93[2];
          v96 = v93[3];
          v197 = v96;
          if (v96)
          {
            atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v97 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, v198, &v196);
          if (v96)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v96);
          }

          if (v95)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v95);
            if (v97)
            {
              goto LABEL_227;
            }
          }

          else if (v97)
          {
LABEL_227:
            v93 += 2;
            v92 = v94;
          }
        }

        v98 = v93[1];
        *&v195 = *v93;
        *(&v195 + 1) = v98;
        if (v98)
        {
          atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v99 = &v10[2 * v167];
        v193 = *v99;
        v100 = v99[1];
        v194 = v100;
        if (v100)
        {
          atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v101 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, &v195, &v193);
        if (v100)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v100);
        }

        if (v98)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v98);
        }

        v91 = v167;
        if ((v101 & 1) == 0)
        {
          v102 = v99[1];
          v169 = *v99;
          *v99 = 0;
          v99[1] = 0;
          while (1)
          {
            v103 = v93;
            v104 = *v93;
            *v93 = 0;
            v93[1] = 0;
            v105 = v99[1];
            *v99 = v104;
            if (v105)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v105);
            }

            if (v175 < v92)
            {
LABEL_263:
              v113 = v103[1];
              *v103 = v169;
              v103[1] = v102;
              v10 = v173;
              v91 = v167;
              if (v113)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v113);
              }

              break;
            }

            v106 = 2 * v92;
            v92 = (2 * v92) | 1;
            v93 = &v173[2 * v92];
            v107 = v106 + 2;
            if (v106 + 2 < v177)
            {
              v192 = *v93;
              v108 = *(&v192 + 1);
              if (*(&v192 + 1))
              {
                atomic_fetch_add_explicit((*(&v192 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v190 = v93[2];
              v109 = v93[3];
              v191 = v109;
              if (v109)
              {
                atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v110 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, &v192, &v190);
              if (v109)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v109);
              }

              if (!v108)
              {
                if (!v110)
                {
                  goto LABEL_251;
                }

LABEL_250:
                v93 += 2;
                v92 = v107;
                goto LABEL_251;
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v108);
              if (v110)
              {
                goto LABEL_250;
              }
            }

LABEL_251:
            v111 = v93[1];
            v188 = *v93;
            v189 = v111;
            if (v111)
            {
              atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v186 = v169;
            v187 = v102;
            if (v102)
            {
              atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v112 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, &v188, &v186);
            if (v102)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v102);
            }

            if (v111)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v111);
            }

            v99 = v103;
            if (v112)
            {
              goto LABEL_263;
            }
          }
        }

LABEL_265:
        v90 = v91 - 1;
        if (v91)
        {
          continue;
        }

        break;
      }

      v114 = v171;
      v115 = v177;
      while (2)
      {
        v116 = 0;
        v117 = v10[1];
        v170 = *v10;
        v172 = v114;
        *v10 = 0;
        v10[1] = 0;
        v118 = (v115 - 2) >> 1;
        v119 = v115;
        v176 = v118;
        v179 = v115;
LABEL_270:
        v120 = &v10[2 * v116];
        v121 = v120 + 2;
        v122 = 2 * v116;
        v116 = (2 * v116) | 1;
        v123 = v122 + 2;
        if (v122 + 2 < v119)
        {
          v198[0] = v120[2];
          v124 = v120[3];
          v198[1] = v124;
          if (v124)
          {
            atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v126 = v120[4];
          v125 = v120 + 4;
          v196 = v126;
          v127 = v125[1];
          v197 = v127;
          if (v127)
          {
            atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v128 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, v198, &v196);
          if (v127)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v127);
          }

          if (v124)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v124);
            v118 = v176;
            v119 = v179;
            if (v128)
            {
              goto LABEL_279;
            }
          }

          else
          {
            v118 = v176;
            v119 = v179;
            if (v128)
            {
LABEL_279:
              v121 = v125;
              v116 = v123;
            }
          }
        }

        v129 = *v121;
        *v121 = 0;
        v121[1] = 0;
        v130 = v10[1];
        *v10 = v129;
        if (v130)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v130);
        }

        v10 = v121;
        if (v116 > v118)
        {
          v114 = v172 - 2;
          if (v121 == v172 - 2)
          {
            v150 = v121[1];
            *v121 = v170;
            v121[1] = v117;
            v10 = v173;
            if (v150)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v150);
            }
          }

          else
          {
            v131 = *(v172 - 1);
            *v114 = 0;
            *(v172 - 1) = 0;
            v132 = v121[1];
            *v121 = v131;
            v10 = v173;
            if (v132)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v132);
            }

            v133 = *(v172 - 1);
            *(v172 - 2) = v170;
            *(v172 - 1) = v117;
            if (v133)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v133);
            }

            v134 = ((v121 + 2) - v173) >> 4;
            v135 = v134 < 2;
            v136 = v134 - 2;
            if (!v135)
            {
              v137 = v136 >> 1;
              v138 = &v173[2 * (v136 >> 1)];
              *v198 = *v138;
              v139 = v198[1];
              if (v198[1])
              {
                atomic_fetch_add_explicit((v198[1] + 8), 1uLL, memory_order_relaxed);
              }

              v140 = v121[1];
              v196 = *v121;
              v197 = v140;
              if (v140)
              {
                atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v141 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, v198, &v196);
              if (v140)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v140);
              }

              if (v139)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v139);
              }

              if (v141)
              {
                v143 = *v121;
                v142 = v121[1];
                *v121 = 0;
                v121[1] = 0;
                do
                {
                  v144 = v138;
                  v145 = *v138;
                  *v138 = 0;
                  v138[1] = 0;
                  v146 = v121[1];
                  *v121 = v145;
                  if (v146)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v146);
                  }

                  if (!v137)
                  {
                    break;
                  }

                  v137 = (v137 - 1) >> 1;
                  v138 = &v173[2 * v137];
                  v195 = *v138;
                  v147 = *(&v195 + 1);
                  if (*(&v195 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v195 + 1) + 8), 1uLL, memory_order_relaxed);
                  }

                  v193 = v143;
                  v194 = v142;
                  if (v142)
                  {
                    atomic_fetch_add_explicit(&v142->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v148 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, &v195, &v193);
                  if (v142)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v142);
                  }

                  if (v147)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v147);
                  }

                  v121 = v144;
                }

                while ((v148 & 1) != 0);
                v149 = v144[1];
                *v144 = v143;
                v144[1] = v142;
                v10 = v173;
                if (v149)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v149);
                }
              }
            }

            v119 = v179;
          }

          v115 = v119 - 1;
          if (v119 <= 2)
          {
            return;
          }

          continue;
        }

        goto LABEL_270;
      }
    }

    v12 = v177 >> 1;
    v13 = &v9[2 * (v177 >> 1)];
    if (v177 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *,0>(&v9[2 * (v177 >> 1)], v9, v174, a3);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *,0>(v9, &v9[2 * (v177 >> 1)], v174, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *,0>(v9 + 2, v13 - 2, v166, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *,0>(v9 + 4, &v9[2 * v12 + 2], v165, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *,0>(v13 - 2, v13, &v9[2 * v12 + 2], a3);
      v14 = *v9;
      *v9 = *v13;
      *v13 = v14;
    }

    v15 = a4 - 1;
    if (a5)
    {
      goto LABEL_24;
    }

    v181[0] = *(v9 - 2);
    v16 = *(v9 - 1);
    v181[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = v9[1];
    v180[0] = *v9;
    v180[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, v181, v180);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v18)
    {
LABEL_24:
      v178 = v15;
      v19 = 0;
      v21 = *v9;
      v20 = v9[1];
      *v9 = 0;
      v9[1] = 0;
      do
      {
        v198[0] = v10[v19 + 2];
        v22 = v10[v19 + 3];
        v198[1] = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v196 = v21;
        v197 = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, v198, &v196);
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        v19 += 2;
      }

      while ((v23 & 1) != 0);
      v24 = &v10[v19];
      i = v171;
      if (v19 == 2)
      {
        i = v171;
        if (v24 < v171)
        {
          for (i = v174; ; i -= 2)
          {
            *&v195 = *i;
            v29 = i[1];
            *(&v195 + 1) = v29;
            if (v29)
            {
              atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v193 = v21;
            v194 = v20;
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v30 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, &v195, &v193);
            if (v20)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v20);
            }

            if (v29)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v29);
            }

            v31 = v24 >= i ? 1 : v30;
            if (v31)
            {
              break;
            }
          }
        }
      }

      else
      {
        do
        {
          v26 = *(i - 2);
          i -= 2;
          *&v195 = v26;
          v27 = i[1];
          *(&v195 + 1) = v27;
          if (v27)
          {
            atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v193 = v21;
          v194 = v20;
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v28 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, &v195, &v193);
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          }
        }

        while ((v28 & 1) == 0);
      }

      v9 = v24;
      if (v24 < i)
      {
        v32 = i;
        do
        {
          v33 = *v9;
          *v9 = *v32;
          *v32 = v33;
          v34 = v9[1];
          v9[1] = v32[1];
          v32[1] = v34;
          do
          {
            v35 = v9[2];
            v36 = v9[3];
            v9 += 2;
            *&v192 = v35;
            *(&v192 + 1) = v36;
            if (v36)
            {
              atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v190 = v21;
            v191 = v20;
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v37 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, &v192, &v190);
            if (v20)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v20);
            }

            if (v36)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v36);
            }
          }

          while ((v37 & 1) != 0);
          do
          {
            v38 = *(v32 - 2);
            v32 -= 2;
            v188 = v38;
            v39 = v32[1];
            v189 = v39;
            if (v39)
            {
              atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v186 = v21;
            v187 = v20;
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v40 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, &v188, &v186);
            if (v20)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v20);
            }

            if (v39)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v39);
            }
          }

          while (!v40);
        }

        while (v9 < v32);
      }

      v41 = v9 - 2;
      a1 = v173;
      if (v9 - 2 != v173)
      {
        v42 = *v41;
        *v41 = 0;
        *(v9 - 1) = 0;
        v43 = v173[1];
        *v173 = v42;
        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        }
      }

      v44 = *(v9 - 1);
      *(v9 - 2) = v21;
      *(v9 - 1) = v20;
      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      }

      v45 = v24 >= i;
      a2 = v171;
      a4 = v178;
      if (v45)
      {
        v46 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *>(v173, v9 - 2, a3);
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *>(v9, v171, a3))
        {
          a2 = v9 - 2;
          if (v46)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v46)
        {
          goto LABEL_91;
        }
      }

      else
      {
LABEL_91:
        std::__introsort<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *,false>(v173, v9 - 2, a3, v178, a5 & 1);
        a5 = 0;
      }
    }

    else
    {
      v47 = v15;
      v49 = *v9;
      v48 = v9[1];
      *v9 = 0;
      v9[1] = 0;
      v198[0] = v49;
      v198[1] = v48;
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v196 = *(a2 - 2);
      v50 = *(a2 - 1);
      v197 = v50;
      if (v50)
      {
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v51 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, v198, &v196);
      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      }

      if (v48)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
      }

      if (v51)
      {
        do
        {
          *&v195 = v49;
          *(&v195 + 1) = v48;
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v52 = v9[3];
          v193 = v9[2];
          v194 = v52;
          if (v52)
          {
            atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v53 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, &v195, &v193);
          if (v52)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v52);
          }

          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v48);
          }

          v9 += 2;
        }

        while ((v53 & 1) == 0);
      }

      else
      {
        for (v9 += 2; v9 < a2; v9 += 2)
        {
          *&v195 = v49;
          *(&v195 + 1) = v48;
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v193 = *v9;
          v66 = v9[1];
          v194 = v66;
          if (v66)
          {
            atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v67 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, &v195, &v193);
          if (v66)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v66);
          }

          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v48);
          }

          if (v67)
          {
            break;
          }
        }
      }

      if (v9 < a2)
      {
        a2 = v171;
        do
        {
          *&v192 = v49;
          *(&v192 + 1) = v48;
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v190 = *(a2 - 2);
          v54 = *(a2 - 1);
          v191 = v54;
          if (v54)
          {
            atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v55 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, &v192, &v190);
          if (v54)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v54);
          }

          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v48);
          }

          a2 -= 2;
        }

        while ((v55 & 1) != 0);
      }

      while (v9 < a2)
      {
        v56 = *v9;
        *v9 = *a2;
        *a2 = v56;
        v57 = v9[1];
        v9[1] = a2[1];
        a2[1] = v57;
        do
        {
          v188 = v49;
          v189 = v48;
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v58 = v9[3];
          v186 = v9[2];
          v187 = v58;
          if (v58)
          {
            atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v59 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, &v188, &v186);
          if (v58)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v58);
          }

          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v48);
          }

          v9 += 2;
        }

        while (!v59);
        do
        {
          v185[0] = v49;
          v185[1] = v48;
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v184[0] = *(a2 - 2);
          v60 = *(a2 - 1);
          v184[1] = v60;
          if (v60)
          {
            atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v61 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, v185, v184);
          if (v60)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v60);
          }

          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v48);
          }

          a2 -= 2;
        }

        while ((v61 & 1) != 0);
      }

      v62 = v9 - 2;
      if (v9 - 2 != v173)
      {
        v63 = *v62;
        *v62 = 0;
        *(v9 - 1) = 0;
        v64 = v173[1];
        *v173 = v63;
        if (v64)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        }
      }

      v65 = *(v9 - 1);
      *(v9 - 2) = v49;
      *(v9 - 1) = v48;
      a2 = v171;
      if (v65)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v65);
      }

      a5 = 0;
      a4 = v47;
    }
  }

  if (a5)
  {
    if (v9 == a2)
    {
      return;
    }

    v73 = v9 + 2;
    if (v9 + 2 == v171)
    {
      return;
    }

    v74 = 0;
    v75 = v9;
    while (1)
    {
      v76 = v75;
      v75 = v73;
      v77 = v76[3];
      v198[0] = v76[2];
      v198[1] = v77;
      if (v77)
      {
        atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v78 = v76[1];
      v196 = *v76;
      v197 = v78;
      if (v78)
      {
        atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v79 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, v198, &v196);
      if (v78)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v78);
      }

      if (v77)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v77);
      }

      if (v79)
      {
        v80 = *v75;
        v81 = v76[3];
        v82 = v74;
        *v75 = 0;
        v75[1] = 0;
        while (1)
        {
          v83 = v9 + v82;
          v84 = *(v9 + v82);
          *v83 = 0;
          *(v83 + 1) = 0;
          v85 = *(v9 + v82 + 24);
          *(v83 + 1) = v84;
          if (v85)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v85);
          }

          if (!v82)
          {
            break;
          }

          *&v195 = v80;
          *(&v195 + 1) = v81;
          if (v81)
          {
            atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v193 = *(v9 + v82 - 16);
          v86 = *(v9 + v82 - 8);
          v194 = v86;
          if (v86)
          {
            atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v87 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, &v195, &v193);
          if (v86)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v86);
          }

          if (v81)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v81);
            if ((v87 & 1) == 0)
            {
              goto LABEL_210;
            }
          }

          else if (!v87)
          {
LABEL_210:
            v88 = (v9 + v82);
            goto LABEL_211;
          }

          v82 -= 16;
        }

        v88 = v9;
LABEL_211:
        v89 = v88[1];
        *v88 = v80;
        v88[1] = v81;
        if (v89)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v89);
        }
      }

      v73 = v75 + 2;
      v74 += 16;
      if (v75 + 2 == v171)
      {
        return;
      }
    }
  }

  if (v9 != a2)
  {
    v151 = v9 + 2;
    if (v9 + 2 != v171)
    {
      v152 = (v9 + 3);
      do
      {
        v153 = v10;
        v10 = v151;
        v154 = v153[3];
        v198[0] = v153[2];
        v198[1] = v154;
        if (v154)
        {
          atomic_fetch_add_explicit(&v154->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v155 = v153[1];
        v196 = *v153;
        v197 = v155;
        if (v155)
        {
          atomic_fetch_add_explicit(&v155->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v156 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, v198, &v196);
        if (v155)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v155);
        }

        if (v154)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v154);
        }

        if (v156)
        {
          v157 = *v10;
          v158 = v153[3];
          v159 = v152;
          *v10 = 0;
          v10[1] = 0;
          do
          {
            v160 = *(v159 - 3);
            *(v159 - 3) = 0;
            *(v159 - 2) = 0;
            v161 = *v159;
            *(v159 - 1) = v160;
            if (v161)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v161);
            }

            *&v195 = v157;
            *(&v195 + 1) = v158;
            if (v158)
            {
              atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v193 = *(v159 - 5);
            v162 = *(v159 - 4);
            v194 = v162;
            if (v162)
            {
              atomic_fetch_add_explicit(&v162->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v163 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, &v195, &v193);
            if (v162)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v162);
            }

            if (v158)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v158);
            }

            v159 -= 2;
          }

          while ((v163 & 1) != 0);
          v164 = *v159;
          *(v159 - 1) = v157;
          *v159 = v158;
          if (v164)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v164);
          }
        }

        v151 = v10 + 2;
        v152 += 2;
      }

      while (v10 + 2 != v171);
    }
  }
}