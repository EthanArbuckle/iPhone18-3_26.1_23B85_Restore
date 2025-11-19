void sub_254D6C408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, void *a51)
{
  google::protobuf::internal::LogMessage::~LogMessage(&a51);
  *(v51 - 128) = &a48;
  std::vector<siri::intelligence::ResponseData>::__destroy_vector::operator()[abi:ne200100]((v51 - 128));
  siri::intelligence::GraphColors::~GraphColors(&STACK[0x240]);
  std::__tree<std::string>::destroy(&STACK[0x330], STACK[0x338]);
  std::__tree<std::string>::destroy(&STACK[0x348], STACK[0x350]);
  STACK[0x240] = v51 - 256;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x240]);
  if (*(v51 - 209) < 0)
  {
    operator delete(*(v51 - 232));
  }

  _Unwind_Resume(a1);
}

void sub_254D6D014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::GraphColors::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v8 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v8;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v9;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v10 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 144) = v10;
  *(a2 + 167) = 0;
  *(a2 + 144) = 0;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v11 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a1 + 168) = v11;
  *(a2 + 191) = 0;
  *(a2 + 168) = 0;
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  v12 = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 192) = v12;
  *(a2 + 215) = 0;
  *(a2 + 192) = 0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  v13 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 216) = v13;
  *(a2 + 239) = 0;
  *(a2 + 216) = 0;
  return a1;
}

uint64_t *std::vector<siri::intelligence::ResponseData>::push_back[abi:ne200100](uint64_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v10 = (v3 - *result) >> 7;
    v11 = v10 + 1;
    if ((v10 + 1) >> 57)
    {
      std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
    }

    v12 = v4 - *result;
    if (v12 >> 6 > v11)
    {
      v11 = v12 >> 6;
    }

    if (v12 >= 0x7FFFFFFFFFFFFF80)
    {
      v13 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v23[4] = v2;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::ResponseData>>(v13);
    }

    v14 = v10 << 7;
    v15 = *a2;
    *(v14 + 16) = *(a2 + 2);
    *v14 = v15;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v16 = *(a2 + 24);
    *(v14 + 40) = *(a2 + 5);
    *(v14 + 24) = v16;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v17 = a2[3];
    *(v14 + 64) = *(a2 + 8);
    *(v14 + 48) = v17;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    *(v14 + 72) = 0;
    *(v14 + 80) = 0;
    *(v14 + 88) = 0;
    *(v14 + 72) = *(a2 + 72);
    *(v14 + 88) = *(a2 + 11);
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    v18 = a2[6];
    *(v14 + 112) = *(a2 + 14);
    *(v14 + 96) = v18;
    *(a2 + 13) = 0;
    *(a2 + 14) = 0;
    *(a2 + 12) = 0;
    *(v14 + 120) = *(a2 + 120);
    v9 = (v10 << 7) + 128;
    v19 = v2[1];
    v20 = (v10 << 7) + *v2 - v19;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<siri::intelligence::ResponseData>,siri::intelligence::ResponseData*>(*v2, v19, v20);
    v21 = *v2;
    *v2 = v20;
    v2[1] = v9;
    v22 = v2[2];
    v2[2] = 0;
    v23[2] = v21;
    v23[3] = v22;
    v23[0] = v21;
    v23[1] = v21;
    result = std::__split_buffer<siri::intelligence::ResponseData>::~__split_buffer(v23);
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = a2[3];
    *(v3 + 64) = *(a2 + 8);
    *(v3 + 48) = v7;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    *(v3 + 72) = 0;
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
    *(v3 + 72) = *(a2 + 72);
    *(v3 + 88) = *(a2 + 11);
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    v8 = a2[6];
    *(v3 + 112) = *(a2 + 14);
    *(v3 + 96) = v8;
    *(a2 + 13) = 0;
    *(a2 + 14) = 0;
    *(a2 + 12) = 0;
    *(v3 + 120) = *(a2 + 120);
    v9 = v3 + 128;
  }

  v2[1] = v9;
  return result;
}

void siri::intelligence::ResponseData::~ResponseData(void **this)
{
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  v2 = this + 9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
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

std::__split_buffer<std::string>::pointer siri::intelligence::AppendLineIfNotWritten(uint64_t a1, uint64_t a2, const void **a3)
{
  result = std::__tree<std::string>::find<std::string>(a2, a3);
  if ((a2 + 8) == result)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a2, a3);

    return std::vector<std::string>::push_back[abi:ne200100](a1, a3);
  }

  return result;
}

void siri::intelligence::FormatName(std::string *a1, uint64_t a2)
{
  if (siri::intelligence::StringIsGUID(a2))
  {
    std::operator+<char>();
    v4 = std::string::append(&v14, "");
    *a1 = *v4;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (v5 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    if (v7)
    {
      v8 = 1;
      do
      {
        v9 = *v6;
        if (v9 == 95 || (v10 = *v6, *v6 == 32))
        {
          std::string::push_back(&v14, 32);
          v8 = 1;
        }

        else
        {
          if (v8)
          {
            v10 = __toupper(*v6);
          }

          else if (__toupper(*v6) == v9)
          {
            size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
            if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = v14.__r_.__value_.__l.__size_;
            }

            if (size)
            {
              std::string::push_back(&v14, 32);
            }
          }

          std::string::push_back(&v14, v10);
          v8 = 0;
        }

        ++v6;
        --v7;
      }

      while (v7);
    }

    std::operator+<char>();
    v12 = std::string::append(&__p, "");
    *a1 = *v12;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_254D6D680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void siri::intelligence::FormatName(std::string *a1, uint64_t a2, uint64_t a3)
{
  if (siri::intelligence::StringIsGUID(a3))
  {
    std::operator+<char>();
    v5 = std::string::append(&v16, "_");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    siri::intelligence::FormatName(&v14, a3);
    siri::intelligence::StringTrim("", &v14, &__p);
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
  }

  else
  {
    std::operator+<char>();
    v9 = std::string::append(&v16, " ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    siri::intelligence::FormatName(&v14, a3);
    siri::intelligence::StringTrim("", &v14, &__p);
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
  }

  v11 = std::string::append(&v17, p_p, size);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v18, "");
  *a1 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_254D6D8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FindResponseCondition(std::string *a1, siri::intelligence::ResponseData *a2, siri::intelligence::ResponseData *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_25:
    std::string::basic_string[abi:ne200100]<0>(a1, "");
  }

  else
  {
    v7 = a2;
    while (1)
    {
      siri::intelligence::ResponseData::ResponseData(&v14, v7);
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v14.__r_.__value_.__l.__size_;
      }

      v9 = *(a4 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = a4[1];
      }

      if (size == v9)
      {
        v11 = (v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v14 : v14.__r_.__value_.__r.__words[0];
        v12 = *a4;
        v13 = v10 >= 0 ? a4 : *a4;
        if (!memcmp(v11, v13, size))
        {
          break;
        }
      }

      if (v21 < 0)
      {
        operator delete(__p);
      }

      v22 = v19;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v22);
      if (v18 < 0)
      {
        operator delete(v17);
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(v15);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      v7 = (v7 + 128);
      if (v7 == a3)
      {
        goto LABEL_25;
      }
    }

    if (SHIBYTE(v16) < 0)
    {
      std::string::__init_copy_ctor_external(a1, v15, *(&v15 + 1));
    }

    else
    {
      *&a1->__r_.__value_.__l.__data_ = v15;
      a1->__r_.__value_.__r.__words[2] = v16;
    }

    if (v21 < 0)
    {
      operator delete(__p);
    }

    v22 = v19;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v22);
    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }
}

void sub_254D6DADC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  siri::intelligence::ResponseData::~ResponseData(va);
  _Unwind_Resume(a1);
}

void siri::intelligence::GraphColors::~GraphColors(void **this)
{
  if (*(this + 239) < 0)
  {
    operator delete(this[27]);
  }

  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

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

void std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::ResponseData>>(unint64_t a1)
{
  if (!(a1 >> 57))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<siri::intelligence::ResponseData>,siri::intelligence::ResponseData*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 16);
      *a3 = v6;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *v5 = 0;
      v7 = *(v5 + 24);
      *(a3 + 40) = *(v5 + 40);
      *(a3 + 24) = v7;
      *(v5 + 32) = 0;
      *(v5 + 40) = 0;
      *(v5 + 24) = 0;
      v8 = *(v5 + 48);
      *(a3 + 64) = *(v5 + 64);
      *(a3 + 48) = v8;
      *(v5 + 56) = 0;
      *(v5 + 64) = 0;
      *(v5 + 48) = 0;
      *(a3 + 72) = 0;
      *(a3 + 80) = 0;
      *(a3 + 88) = 0;
      *(a3 + 72) = *(v5 + 72);
      *(a3 + 88) = *(v5 + 88);
      *(v5 + 72) = 0;
      *(v5 + 80) = 0;
      *(v5 + 88) = 0;
      v9 = *(v5 + 96);
      *(a3 + 112) = *(v5 + 112);
      *(a3 + 96) = v9;
      *(v5 + 104) = 0;
      *(v5 + 112) = 0;
      *(v5 + 96) = 0;
      *(a3 + 120) = *(v5 + 120);
      v5 += 128;
      a3 += 128;
    }

    while (v5 != a2);
    do
    {
      std::allocator_traits<std::allocator<siri::intelligence::ResponseData>>::destroy[abi:ne200100]<siri::intelligence::ResponseData,0>(v4);
      v4 += 128;
    }

    while (v4 != a2);
  }
}

void std::allocator_traits<std::allocator<siri::intelligence::ResponseData>>::destroy[abi:ne200100]<siri::intelligence::ResponseData,0>(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v2 = (a1 + 72);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t std::__split_buffer<siri::intelligence::ResponseData>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 128;
    std::allocator_traits<std::allocator<siri::intelligence::ResponseData>>::destroy[abi:ne200100]<siri::intelligence::ResponseData,0>(i - 128);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<google::protobuf::internal::RepeatedPtrIterator<std::string const>,google::protobuf::internal::RepeatedPtrIterator<std::string const>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254D6DE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,google::protobuf::internal::RepeatedPtrIterator<std::string const>,google::protobuf::internal::RepeatedPtrIterator<std::string const>,std::string*>(uint64_t a1, __int128 **a2, __int128 **a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      if (*(*v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v7, *(v7 + 1));
        v4 = v13;
      }

      else
      {
        v8 = *v7;
        v4->__r_.__value_.__r.__words[2] = *(v7 + 2);
        *&v4->__r_.__value_.__l.__data_ = v8;
      }

      ++v6;
      v13 = ++v4;
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

std::string *siri::intelligence::ResponseData::ResponseData(std::string *this, const siri::intelligence::ResponseData *a2)
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

  this[3].__r_.__value_.__r.__words[0] = 0;
  this[3].__r_.__value_.__l.__size_ = 0;
  this[3].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[3], *(a2 + 9), *(a2 + 10), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 10) - *(a2 + 9)) >> 3));
  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v7 = *(a2 + 6);
    this[4].__r_.__value_.__r.__words[2] = *(a2 + 14);
    *&this[4].__r_.__value_.__l.__data_ = v7;
  }

  this[5].__r_.__value_.__s.__data_[0] = *(a2 + 120);
  return this;
}

void sub_254D6DFFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 71) < 0)
  {
    operator delete(*(v2 + 48));
  }

  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void std::vector<siri::intelligence::ResponseData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 128;
        std::allocator_traits<std::allocator<siri::intelligence::ResponseData>>::destroy[abi:ne200100]<siri::intelligence::ResponseData,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_254D6E4A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (*(v56 - 105) < 0)
  {
    operator delete(*(v56 - 128));
  }

  if (*(v56 - 169) < 0)
  {
    operator delete(*(v56 - 192));
  }

  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v56 - 73) < 0)
  {
    operator delete(*(v56 - 96));
  }

  if (*(v56 - 49) < 0)
  {
    operator delete(*(v56 - 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_254D6E660(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v1, v3);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Timer::~Timer(siri::intelligence::Timer *this)
{
  *this = &unk_28671C180;
  v3 = *(this + 1);
  v1 = (this + 8);
  v2 = v3;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v1, v2);
  }
}

{
  *this = &unk_28671C180;
  v3 = *(this + 1);
  v1 = (this + 8);
  v2 = v3;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v1, v2);
  }
}

{
  *this = &unk_28671C180;
  v3 = *(this + 1);
  v1 = (this + 8);
  v2 = v3;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v1, v2);
  }

  JUMPOUT(0x259C29D90);
}

void sub_254D6E820(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v1, v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::Timer::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*(a1 + 8), *(a2 + 8));
  *(*(a1 + 8) + 24) = *(*(a2 + 8) + 24);
  return a1;
}

void siri::intelligence::Timer::GetName(siri::intelligence::Timer *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 1);
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

void siri::intelligence::AutoTimer::AutoTimer(void *a1)
{
  siri::intelligence::Timer::Timer(a1);
}

{
  siri::intelligence::Timer::Timer(a1);
}

void siri::intelligence::AutoTimer::~AutoTimer(siri::intelligence::AutoTimer *this)
{
  *this = &unk_28671C1A0;
  siri::intelligence::Utils::GetSecsSinceStart(this);
  v3 = v2;
  v4 = *(this + 1);
  v5 = *(v4 + 24);
  v6 = *(v4 + 23);
  if (v6 >= 0)
  {
    v7 = *(this + 1);
  }

  else
  {
    v7 = *v4;
  }

  if (v6 >= 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v8 = *(v4 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ": took ", 7);
  v11 = MEMORY[0x259C29BB0](v10, v3 - v5);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " secs", 5);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v15);
  std::ostream::put();
  std::ostream::flush();
  v14 = *(this + 1);
  *this = &unk_28671C180;
  *(this + 1) = 0;
  if (v14)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](this + 8, v14);
  }
}

{
  siri::intelligence::AutoTimer::~AutoTimer(this);

  JUMPOUT(0x259C29D90);
}

void std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x259C29D90);
  }
}

std::string *siri::intelligence::Entity::Entity(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__s.__data_[16] = 0;
  return this;
}

{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__s.__data_[16] = 0;
  return this;
}

BOOL siri::intelligence::Entity::FindNext(siri::intelligence::Entity *this)
{
  if (*(this + 40) == 1)
  {
    v2 = *(this + 3) + 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = *this;
    v5 = *(this + 1);
  }

  else
  {
    v4 = this;
    v5 = *(this + 23);
  }

  v6 = v5 - v2;
  if (v5 >= v2 && v6 >= 2)
  {
    v7 = v4 + v5;
    v8 = v4 + v2;
    do
    {
      v9 = memchr(v8, 36, v6 - 1);
      if (!v9)
      {
        break;
      }

      if (*v9 == 10276)
      {
        if (v9 == v7)
        {
          break;
        }

        *(this + 3) = v9 - v4;
        if (v9 - v4 == -1)
        {
          LOBYTE(v17) = 0;
          result = 0;
        }

        else
        {
          v10 = 0;
          v11 = 0;
          v12 = v9 - v4 + 2;
          v13 = 1;
          while (1)
          {
            *(this + 4) = v12;
            v14 = v3;
            if ((v3 & 0x80000000) != 0)
            {
              v14 = *(this + 1);
            }

            if (v12 >= v14)
            {
              break;
            }

            v15 = this;
            if ((v3 & 0x80000000) != 0)
            {
              v15 = *this;
            }

            v16 = *(v15 + v12);
            if (v16 > 40)
            {
              if (v16 == 124)
              {
                v13 = 0;
              }

              else if (v16 == 41 && ((v13 & 1) != 0 || ((v11 | v10) & 1) == 0))
              {
                break;
              }
            }

            else if (v16 == 34)
            {
              v10 ^= v13 ^ 1;
            }

            else if (v16 == 39)
            {
              if (v13)
              {
                v13 = 1;
              }

              else
              {
                v11 ^= v10 ^ 1;
                v13 = 0;
              }
            }

            ++v12;
          }

          v19 = this;
          if ((v3 & 0x80000000) != 0)
          {
            v19 = *this;
          }

          v17 = *(v19 + v12) == 41;
          result = v17;
        }

        goto LABEL_37;
      }

      v8 = v9 + 1;
      v6 = v7 - v8;
    }

    while (v7 - v8 >= 2);
  }

  LOBYTE(v17) = 0;
  result = 0;
  *(this + 3) = -1;
LABEL_37:
  *(this + 40) = v17;
  return result;
}

uint64_t siri::intelligence::Entity::IsValid(siri::intelligence::Entity *this)
{
  if (*(this + 40))
  {
    v1 = 1;
  }

  else
  {
    siri::intelligence::Entity::FindNext(this);
    v1 = *(this + 40);
  }

  return v1 & 1;
}

void siri::intelligence::Entity::GetName(std::string *this@<X0>, std::string *a2@<X8>)
{
  if (this[1].__r_.__value_.__s.__data_[16] & 1) != 0 || (siri::intelligence::Entity::FindNext(this), (this[1].__r_.__value_.__s.__data_[16]))
  {
    data = this[1].__r_.__value_.__l.__data_;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v6 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
    }

    else
    {
      v6 = this;
    }

    v7 = size - data;
    if (size >= data)
    {
      v9 = v6 + size;
      if (v7 >= 1)
      {
        v10 = &data[v6];
        do
        {
          v11 = memchr(v10, 124, v7);
          if (!v11)
          {
            break;
          }

          if (*v11 == 124)
          {
            goto LABEL_14;
          }

          v10 = v11 + 1;
          v7 = v9 - v10;
        }

        while (v9 - v10 > 0);
      }

      v11 = v9;
LABEL_14:
      if (v11 == v9)
      {
        v12 = -1;
      }

      else
      {
        v12 = v11 - v6;
      }

      v8 = this[1].__r_.__value_.__l.__size_;
      if (v12 < v8)
      {
        std::string::basic_string(&__p, this, (data + 2), v12 - data - 2, &v14);
        siri::intelligence::StringTrim(" \t\n\r", &__p, a2);
        goto LABEL_20;
      }
    }

    else
    {
      v8 = this[1].__r_.__value_.__l.__size_;
    }

    std::string::basic_string(&__p, this, (data + 2), v8 - data - 2, &v14);
    siri::intelligence::StringTrim(" \t\n\r", &__p, a2);
LABEL_20:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return;
  }

  std::string::basic_string[abi:ne200100]<0>(a2, "");
}

void sub_254D6F1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Entity::GetFilters(siri::intelligence::Entity *this@<X0>, std::string *a2@<X8>)
{
  if ((*(this + 40) & 1) == 0)
  {
    siri::intelligence::Entity::FindNext(this);
    if ((*(this + 40) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v4 = *(this + 3);
  v5 = *(this + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = *this;
    v5 = *(this + 1);
  }

  else
  {
    v6 = this;
  }

  v7 = v5 - v4;
  if (v5 < v4)
  {
    goto LABEL_19;
  }

  v8 = v6 + v5;
  if (v7 >= 1)
  {
    v9 = v6 + v4;
    do
    {
      v10 = memchr(v9, 124, v7);
      if (!v10)
      {
        break;
      }

      if (*v10 == 124)
      {
        goto LABEL_13;
      }

      v9 = v10 + 1;
      v7 = v8 - v9;
    }

    while (v8 - v9 > 0);
  }

  v10 = v8;
LABEL_13:
  v11 = v10 - v6;
  if (v10 == v8)
  {
    v11 = -1;
  }

  v12 = *(this + 4);
  if (v11 < v12)
  {
    std::string::basic_string(&__p, this, v11 + 1, v12 + ~v11, &v14);
    siri::intelligence::StringTrim(" \t\n\r", &__p, a2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_19:

    std::string::basic_string[abi:ne200100]<0>(a2, "");
  }
}

void sub_254D6F320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Entity::ApplyFilters(uint64_t *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, 24);
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v8, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  std::string::basic_string[abi:ne200100]<0>(&v7, ", ");
  std::string::basic_string[abi:ne200100]<0>(&v6, "and");
  std::string::basic_string[abi:ne200100]<0>(&v5, "");
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  memset(&v3, 0, sizeof(v3));
  siri::intelligence::StringSplit(a2, "|");
}

void sub_254D70CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, char a62)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (*(v62 - 105) < 0)
  {
    operator delete(*(v62 - 128));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(a9 + 23) < 0)
  {
    operator delete(*a9);
  }

  __p = &a35;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  a56 = &a62;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a56);
  _Unwind_Resume(a1);
}

void siri::intelligence::Entity::ApplyFilters(__int128 *a1, uint64_t a2)
{
  memset(v3, 0, sizeof(v3));
  std::vector<std::string>::push_back[abi:ne200100](v3, a1);
  siri::intelligence::Entity::ApplyFilters(v3, a2);
}

void sub_254D71060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void siri::intelligence::Entity::Expand(std::string *this@<X0>, uint64_t *a2@<X1>, std::string *a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[1].__r_.__value_.__s.__data_[16] & 1) != 0 || (siri::intelligence::Entity::FindNext(this), (this[1].__r_.__value_.__s.__data_[16]))
  {
    memset(&__str, 0, sizeof(__str));
    v6 = this[1].__r_.__value_.__r.__words[0];
    if (v6)
    {
      std::string::basic_string(&__str, this, 0, v6, &v12);
    }

    siri::intelligence::Entity::GetFilters(this, &__p);
    siri::intelligence::Entity::ApplyFilters(a2, &__p);
  }

  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
    v10 = *MEMORY[0x277D85DE8];

    std::string::__init_copy_ctor_external(a3, v8, size);
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *&this->__r_.__value_.__l.__data_;
    a3->__r_.__value_.__r.__words[2] = this->__r_.__value_.__r.__words[2];
    v7 = *MEMORY[0x277D85DE8];
  }
}

void sub_254D71338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Entity::Expand(std::string *a1@<X0>, __int128 *a2@<X1>, std::string *a3@<X8>)
{
  memset(v5, 0, sizeof(v5));
  std::vector<std::string>::push_back[abi:ne200100](v5, a2);
  siri::intelligence::Entity::Expand(a1, v5, a3);
  v6 = v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void sub_254D7144C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_254D715C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  v25 = *(v23 - 40);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::Converter::ConvertFile(int a1, uint64_t a2)
{
  FormatForFilename = siri::intelligence::GetFormatForFilename(a2);
  if (FormatForFilename)
  {
    if (FormatForFilename == a1)
    {
      if (*(a2 + 23) >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = *a2;
      }

      siri::intelligence::Log::Error("Source and destination format are the same from filename: %s", v5, v6);
    }

    else
    {
      if ((a1 - 1) > 3)
      {
        v8 = &str_3_5;
      }

      else
      {
        v8 = off_2797B2FD0[a1 - 1];
      }

      std::string::basic_string[abi:ne200100]<0>(__p, v8);
      siri::intelligence::ChangeExtension(a2, __p, &v19);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v19.__r_.__value_.__l.__size_;
      }

      v10 = *(a2 + 23);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(a2 + 8);
      }

      if (size != v10 || ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v12 = &v19) : (v12 = v19.__r_.__value_.__r.__words[0]), (v13 = *a2, v11 >= 0) ? (v14 = a2) : (v14 = *a2), memcmp(v12, v14, size)))
      {
        siri::intelligence::Converter::ConvertFile();
      }

      siri::intelligence::Log::Error("Cannot deduce source filename from: %s", v15, v14);
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    siri::intelligence::Log::Error("Cannot deduce file format from filename: %s", v5, v7);
  }

  return 0;
}

void sub_254D717A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::ExecStateResponse::ExecStateResponse(void *a1, void *a2)
{
  *a1 = *a2;
  v2 = a2[1];
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  siri::intelligence::DialogResponse::DialogResponse((a1 + 2));
}

void sub_254D71ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  a10 = (v10 + 288);
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&a10);
  siri::intelligence::BehaviorResponse::~BehaviorResponse(v13);
  siri::intelligence::DialogResponse::~DialogResponse(v11);
  v15 = *(v10 + 8);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

void *siri::intelligence::ExecStateResponse::GetResponseBase@<X0>(void *this@<X0>, void *a2@<X8>)
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

uint64_t siri::intelligence::ExecStateResponse::IsDialog(siri::intelligence::ExecStateResponse *this)
{
  v2 = *this;
  if (!v2)
  {
    return 0;
  }

  v3 = **v2;
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = 1;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v5;
}

siri::intelligence::ResponseBase *siri::intelligence::ExecStateResponse::GetDialogResponse@<X0>(siri::intelligence::ExecStateResponse *this@<X0>, siri::intelligence::ResponseBase *a2@<X8>)
{
  result = siri::intelligence::ResponseBase::ResponseBase(a2, (this + 16));
  *result = &unk_286719048;
  v4 = *(this + 18);
  *(result + 15) = *(this + 17);
  *(result + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t siri::intelligence::ExecStateResponse::IsBehavior(siri::intelligence::ExecStateResponse *this)
{
  v2 = *this;
  if (!v2)
  {
    return 0;
  }

  v3 = **v2;
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = 1;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v5;
}

siri::intelligence::ResponseBase *siri::intelligence::ExecStateResponse::GetBehaviorResponse@<X0>(siri::intelligence::ExecStateResponse *this@<X0>, siri::intelligence::ResponseBase *a2@<X8>)
{
  result = siri::intelligence::ResponseBase::ResponseBase(a2, (this + 152));
  *result = &unk_286718FE0;
  v4 = *(this + 35);
  *(result + 15) = *(this + 34);
  *(result + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t siri::intelligence::ExecStateResponse::GetReferencesFollowed@<X0>(siri::intelligence::ExecStateResponse *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<std::shared_ptr<siri::intelligence::ResponseBase>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::ResponseBase>*,std::shared_ptr<siri::intelligence::ResponseBase>*>(a2, *(this + 36), *(this + 37), (*(this + 37) - *(this + 36)) >> 4);
}

void siri::intelligence::ExecStateResponse::SetReferencesFollowed(uint64_t a1, uint64_t **a2)
{
  v2 = (a1 + 288);
  if (v2 != a2)
  {
    std::vector<std::shared_ptr<siri::intelligence::ResponseBase>>::__assign_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::ResponseBase>*,std::shared_ptr<siri::intelligence::ResponseBase>*>(v2, *a2, a2[1], (a2[1] - *a2) >> 4);
  }
}

std::string *siri::intelligence::ExecStateResponse::GetDebugString@<X0>(siri::intelligence::ExecStateResponse *this@<X0>, std::string *a2@<X8>)
{
  if (*this)
  {
    IsDialog = siri::intelligence::ExecStateResponse::IsDialog(this);
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    a2->__r_.__value_.__r.__words[0] = 0;
    if (IsDialog)
    {
      v5 = *this;
      if (*(*this + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v111, *(v5 + 8), *(v5 + 16));
      }

      else
      {
        v6 = *(v5 + 8);
        v111.__r_.__value_.__r.__words[2] = *(v5 + 24);
        *&v111.__r_.__value_.__l.__data_ = v6;
      }

      v10 = std::string::insert(&v111, 0, "dialog response '");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v112.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v112.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = std::string::append(&v112, "' {\n");
      v13 = *&v12->__r_.__value_.__l.__data_;
      v113.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v113.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v113;
      }

      else
      {
        v14 = v113.__r_.__value_.__r.__words[0];
      }

      if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v113.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v113.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      v8 = *this;
      if (*(*this + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v111, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v9 = *(v8 + 8);
        v111.__r_.__value_.__r.__words[2] = *(v8 + 24);
        *&v111.__r_.__value_.__l.__data_ = v9;
      }

      v16 = std::string::insert(&v111, 0, "behavior response '");
      v17 = *&v16->__r_.__value_.__l.__data_;
      v112.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v112.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = std::string::append(&v112, "' {\n");
      v19 = *&v18->__r_.__value_.__l.__data_;
      v113.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v113.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v113;
      }

      else
      {
        v14 = v113.__r_.__value_.__r.__words[0];
      }

      if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v113.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v113.__r_.__value_.__l.__size_;
      }
    }

    std::string::append(a2, v14, size);
    if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v113.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v112.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v111.__r_.__value_.__l.__data_);
    }

    v20 = *this;
    v21 = (*this + 96);
    if (*v21 != *(*this + 104))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, ", ");
      siri::intelligence::StringJoin(v21, __p, &v111);
      v22 = std::string::insert(&v111, 0, "  nextIds: ");
      v23 = *&v22->__r_.__value_.__l.__data_;
      v112.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&v112.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      v24 = std::string::append(&v112, "\n");
      v25 = *&v24->__r_.__value_.__l.__data_;
      v113.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
      *&v113.__r_.__value_.__l.__data_ = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v113;
      }

      else
      {
        v26 = v113.__r_.__value_.__r.__words[0];
      }

      if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v27 = v113.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v26, v27);
      if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v113.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v112.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v111.__r_.__value_.__l.__data_);
      }

      if (v110 < 0)
      {
        operator delete(__p[0]);
      }

      v20 = *this;
    }

    if (*(v20 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&v113, *(v20 + 32), *(v20 + 40));
    }

    else
    {
      v113 = *(v20 + 32);
    }

    if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
    {
      v28 = v113.__r_.__value_.__l.__size_;
      operator delete(v113.__r_.__value_.__l.__data_);
      if (!v28)
      {
        goto LABEL_68;
      }
    }

    else if (!*(&v113.__r_.__value_.__s + 23))
    {
      goto LABEL_68;
    }

    v29 = *this;
    if (*(*this + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&v111, *(v29 + 32), *(v29 + 40));
    }

    else
    {
      v111 = *(v29 + 32);
    }

    v30 = std::string::insert(&v111, 0, "  inputGroupId: ");
    v31 = *&v30->__r_.__value_.__l.__data_;
    v112.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v112.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v32 = std::string::append(&v112, "\n");
    v33 = *&v32->__r_.__value_.__l.__data_;
    v113.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v113.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v113;
    }

    else
    {
      v34 = v113.__r_.__value_.__r.__words[0];
    }

    if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v113.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v34, v35);
    if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v113.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v112.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v111.__r_.__value_.__l.__data_);
    }

LABEL_68:
    v36 = *this;
    if (*(*this + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v113, *(v36 + 56), *(v36 + 64));
    }

    else
    {
      v113 = *(v36 + 56);
    }

    if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
    {
      v37 = v113.__r_.__value_.__l.__size_;
      operator delete(v113.__r_.__value_.__l.__data_);
      if (!v37)
      {
        goto LABEL_89;
      }
    }

    else if (!*(&v113.__r_.__value_.__s + 23))
    {
      goto LABEL_89;
    }

    v38 = *this;
    if (*(*this + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v111, *(v38 + 56), *(v38 + 64));
    }

    else
    {
      v111 = *(v38 + 56);
    }

    v39 = std::string::insert(&v111, 0, "  condition: ");
    v40 = *&v39->__r_.__value_.__l.__data_;
    v112.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
    *&v112.__r_.__value_.__l.__data_ = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    v41 = std::string::append(&v112, "\n");
    v42 = *&v41->__r_.__value_.__l.__data_;
    v113.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
    *&v113.__r_.__value_.__l.__data_ = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v113;
    }

    else
    {
      v43 = v113.__r_.__value_.__r.__words[0];
    }

    if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v44 = v113.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v43, v44);
    if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v113.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v112.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v111.__r_.__value_.__l.__data_);
      if (IsDialog)
      {
LABEL_90:
        v45 = *(this + 17);
        if (*(v45 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v113, *v45, *(v45 + 1));
        }

        else
        {
          v46 = *v45;
          v113.__r_.__value_.__r.__words[2] = *(v45 + 2);
          *&v113.__r_.__value_.__l.__data_ = v46;
        }

        if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
        {
          v49 = v113.__r_.__value_.__l.__size_;
          operator delete(v113.__r_.__value_.__l.__data_);
          if (!v49)
          {
            goto LABEL_122;
          }
        }

        else if (!*(&v113.__r_.__value_.__s + 23))
        {
          goto LABEL_122;
        }

        v50 = *(this + 17);
        if (*(v50 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v111, *v50, *(v50 + 1));
        }

        else
        {
          v51 = *v50;
          v111.__r_.__value_.__r.__words[2] = *(v50 + 2);
          *&v111.__r_.__value_.__l.__data_ = v51;
        }

        v55 = std::string::insert(&v111, 0, "  text: ");
        v56 = *&v55->__r_.__value_.__l.__data_;
        v112.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
        *&v112.__r_.__value_.__l.__data_ = v56;
        v55->__r_.__value_.__l.__size_ = 0;
        v55->__r_.__value_.__r.__words[2] = 0;
        v55->__r_.__value_.__r.__words[0] = 0;
        v57 = std::string::append(&v112, "\n");
        v58 = *&v57->__r_.__value_.__l.__data_;
        v113.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
        *&v113.__r_.__value_.__l.__data_ = v58;
        v57->__r_.__value_.__l.__size_ = 0;
        v57->__r_.__value_.__r.__words[2] = 0;
        v57->__r_.__value_.__r.__words[0] = 0;
        if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v59 = &v113;
        }

        else
        {
          v59 = v113.__r_.__value_.__r.__words[0];
        }

        if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v60 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v60 = v113.__r_.__value_.__l.__size_;
        }

        std::string::append(a2, v59, v60);
        if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v113.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v112.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v111.__r_.__value_.__l.__data_);
        }

LABEL_122:
        v61 = *(this + 17);
        if (*(v61 + 167) < 0)
        {
          std::string::__init_copy_ctor_external(&v113, *(v61 + 144), *(v61 + 152));
        }

        else
        {
          v113 = *(v61 + 144);
        }

        if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
        {
          v62 = v113.__r_.__value_.__l.__size_;
          operator delete(v113.__r_.__value_.__l.__data_);
          if (!v62)
          {
LABEL_185:
            v94 = *(this + 17);
            if (*(v94 + 111) < 0)
            {
              std::string::__init_copy_ctor_external(&v113, *(v94 + 88), *(v94 + 96));
            }

            else
            {
              v113 = *(v94 + 88);
            }

            if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
            {
              v95 = v113.__r_.__value_.__l.__size_;
              operator delete(v113.__r_.__value_.__l.__data_);
              if (!v95)
              {
                return std::string::append(a2, "}");
              }
            }

            else if (!*(&v113.__r_.__value_.__s + 23))
            {
              return std::string::append(a2, "}");
            }

            v96 = *(this + 17);
            if (*(v96 + 111) < 0)
            {
              std::string::__init_copy_ctor_external(&v111, *(v96 + 88), *(v96 + 96));
            }

            else
            {
              v111 = *(v96 + 88);
            }

            v97 = std::string::insert(&v111, 0, "  catId: ");
            v98 = *&v97->__r_.__value_.__l.__data_;
            v112.__r_.__value_.__r.__words[2] = v97->__r_.__value_.__r.__words[2];
            *&v112.__r_.__value_.__l.__data_ = v98;
            v97->__r_.__value_.__l.__size_ = 0;
            v97->__r_.__value_.__r.__words[2] = 0;
            v97->__r_.__value_.__r.__words[0] = 0;
            v99 = std::string::append(&v112, "\n");
            v100 = *&v99->__r_.__value_.__l.__data_;
            v113.__r_.__value_.__r.__words[2] = v99->__r_.__value_.__r.__words[2];
            *&v113.__r_.__value_.__l.__data_ = v100;
            v99->__r_.__value_.__l.__size_ = 0;
            v99->__r_.__value_.__r.__words[2] = 0;
            v99->__r_.__value_.__r.__words[0] = 0;
            if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v101 = &v113;
            }

            else
            {
              v101 = v113.__r_.__value_.__r.__words[0];
            }

            if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v102 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v102 = v113.__r_.__value_.__l.__size_;
            }

            std::string::append(a2, v101, v102);
            if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v113.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v112.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v111.__r_.__value_.__l.__data_);
            }

            v103 = *(this + 17);
            v104 = *(v103 + 168);
            v72 = *(v103 + 176);
            if (v72)
            {
              atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (!v104 || ((*(*v104 + 40))(v104) & 1) != 0)
            {
LABEL_223:
              if (v72)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v72);
              }

              return std::string::append(a2, "}");
            }

            (*(*v104 + 56))(&v111, v104);
            v105 = std::string::insert(&v111, 0, "  catParameters: ");
            v106 = *&v105->__r_.__value_.__l.__data_;
            v112.__r_.__value_.__r.__words[2] = v105->__r_.__value_.__r.__words[2];
            *&v112.__r_.__value_.__l.__data_ = v106;
            v105->__r_.__value_.__l.__size_ = 0;
            v105->__r_.__value_.__r.__words[2] = 0;
            v105->__r_.__value_.__r.__words[0] = 0;
            v107 = std::string::append(&v112, "\n");
            v108 = *&v107->__r_.__value_.__l.__data_;
            v113.__r_.__value_.__r.__words[2] = v107->__r_.__value_.__r.__words[2];
            *&v113.__r_.__value_.__l.__data_ = v108;
            v107->__r_.__value_.__l.__size_ = 0;
            v107->__r_.__value_.__r.__words[2] = 0;
            v107->__r_.__value_.__r.__words[0] = 0;
            if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v77 = &v113;
            }

            else
            {
              v77 = v113.__r_.__value_.__r.__words[0];
            }

            if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v78 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v78 = v113.__r_.__value_.__l.__size_;
            }

LABEL_217:
            std::string::append(a2, v77, v78);
            if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v113.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v112.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v111.__r_.__value_.__l.__data_);
            }

            goto LABEL_223;
          }
        }

        else if (!*(&v113.__r_.__value_.__s + 23))
        {
          goto LABEL_185;
        }

        v63 = *(this + 17);
        if (*(v63 + 167) < 0)
        {
          std::string::__init_copy_ctor_external(&v111, *(v63 + 144), *(v63 + 152));
        }

        else
        {
          v111 = *(v63 + 144);
        }

        v79 = std::string::insert(&v111, 0, "  patternId: ");
        v80 = *&v79->__r_.__value_.__l.__data_;
        v112.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
        *&v112.__r_.__value_.__l.__data_ = v80;
        v79->__r_.__value_.__l.__size_ = 0;
        v79->__r_.__value_.__r.__words[2] = 0;
        v79->__r_.__value_.__r.__words[0] = 0;
        v81 = std::string::append(&v112, "\n");
        v82 = *&v81->__r_.__value_.__l.__data_;
        v113.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
        *&v113.__r_.__value_.__l.__data_ = v82;
        v81->__r_.__value_.__l.__size_ = 0;
        v81->__r_.__value_.__r.__words[2] = 0;
        v81->__r_.__value_.__r.__words[0] = 0;
        if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v83 = &v113;
        }

        else
        {
          v83 = v113.__r_.__value_.__r.__words[0];
        }

        if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v84 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v84 = v113.__r_.__value_.__l.__size_;
        }

        std::string::append(a2, v83, v84);
        if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v113.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v112.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v111.__r_.__value_.__l.__data_);
        }

        v85 = *(this + 17);
        v87 = *(v85 + 168);
        v86 = *(v85 + 176);
        if (v86)
        {
          atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v87 && ((*(*v87 + 40))(v87) & 1) == 0)
        {
          (*(*v87 + 56))(&v111, v87);
          v88 = std::string::insert(&v111, 0, "  patternParameters: ");
          v89 = *&v88->__r_.__value_.__l.__data_;
          v112.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
          *&v112.__r_.__value_.__l.__data_ = v89;
          v88->__r_.__value_.__l.__size_ = 0;
          v88->__r_.__value_.__r.__words[2] = 0;
          v88->__r_.__value_.__r.__words[0] = 0;
          v90 = std::string::append(&v112, "\n");
          v91 = *&v90->__r_.__value_.__l.__data_;
          v113.__r_.__value_.__r.__words[2] = v90->__r_.__value_.__r.__words[2];
          *&v113.__r_.__value_.__l.__data_ = v91;
          v90->__r_.__value_.__l.__size_ = 0;
          v90->__r_.__value_.__r.__words[2] = 0;
          v90->__r_.__value_.__r.__words[0] = 0;
          if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v92 = &v113;
          }

          else
          {
            v92 = v113.__r_.__value_.__r.__words[0];
          }

          if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v93 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v93 = v113.__r_.__value_.__l.__size_;
          }

          std::string::append(a2, v92, v93);
          if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v113.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v112.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v111.__r_.__value_.__l.__data_);
          }
        }

        if (v86)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v86);
        }

        goto LABEL_185;
      }

LABEL_93:
      v47 = *(this + 34);
      if (*(v47 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v113, *v47, *(v47 + 1));
      }

      else
      {
        v48 = *v47;
        v113.__r_.__value_.__r.__words[2] = *(v47 + 2);
        *&v113.__r_.__value_.__l.__data_ = v48;
      }

      if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
      {
        v52 = v113.__r_.__value_.__l.__size_;
        operator delete(v113.__r_.__value_.__l.__data_);
        if (!v52)
        {
LABEL_144:
          v70 = *(this + 34);
          v71 = *(v70 + 24);
          v72 = *(v70 + 32);
          if (v72)
          {
            atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!v71 || ((*(*v71 + 40))(v71) & 1) != 0)
          {
            goto LABEL_223;
          }

          (*(*v71 + 56))(&v111, v71);
          v73 = std::string::insert(&v111, 0, "  parameters: ");
          v74 = *&v73->__r_.__value_.__l.__data_;
          v112.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
          *&v112.__r_.__value_.__l.__data_ = v74;
          v73->__r_.__value_.__l.__size_ = 0;
          v73->__r_.__value_.__r.__words[2] = 0;
          v73->__r_.__value_.__r.__words[0] = 0;
          v75 = std::string::append(&v112, "\n");
          v76 = *&v75->__r_.__value_.__l.__data_;
          v113.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
          *&v113.__r_.__value_.__l.__data_ = v76;
          v75->__r_.__value_.__l.__size_ = 0;
          v75->__r_.__value_.__r.__words[2] = 0;
          v75->__r_.__value_.__r.__words[0] = 0;
          if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v77 = &v113;
          }

          else
          {
            v77 = v113.__r_.__value_.__r.__words[0];
          }

          if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v78 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v78 = v113.__r_.__value_.__l.__size_;
          }

          goto LABEL_217;
        }
      }

      else if (!*(&v113.__r_.__value_.__s + 23))
      {
        goto LABEL_144;
      }

      v53 = *(this + 34);
      if (*(v53 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v111, *v53, *(v53 + 1));
      }

      else
      {
        v54 = *v53;
        v111.__r_.__value_.__r.__words[2] = *(v53 + 2);
        *&v111.__r_.__value_.__l.__data_ = v54;
      }

      v64 = std::string::insert(&v111, 0, "  name: ");
      v65 = *&v64->__r_.__value_.__l.__data_;
      v112.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
      *&v112.__r_.__value_.__l.__data_ = v65;
      v64->__r_.__value_.__l.__size_ = 0;
      v64->__r_.__value_.__r.__words[2] = 0;
      v64->__r_.__value_.__r.__words[0] = 0;
      v66 = std::string::append(&v112, "\n");
      v67 = *&v66->__r_.__value_.__l.__data_;
      v113.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
      *&v113.__r_.__value_.__l.__data_ = v67;
      v66->__r_.__value_.__l.__size_ = 0;
      v66->__r_.__value_.__r.__words[2] = 0;
      v66->__r_.__value_.__r.__words[0] = 0;
      if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v68 = &v113;
      }

      else
      {
        v68 = v113.__r_.__value_.__r.__words[0];
      }

      if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v69 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v69 = v113.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v68, v69);
      if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v113.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v112.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v111.__r_.__value_.__l.__data_);
      }

      goto LABEL_144;
    }

LABEL_89:
    if (IsDialog)
    {
      goto LABEL_90;
    }

    goto LABEL_93;
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, "null response");
}

void sub_254D72A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::shared_ptr<siri::intelligence::ResponseBase>>::__assign_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::ResponseBase>*,std::shared_ptr<siri::intelligence::ResponseBase>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<siri::intelligence::ResponseBase>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::shared_ptr<siri::intelligence::ResponseBase>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    v13 = std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<siri::intelligence::Variable> *,std::shared_ptr<siri::intelligence::Variable> *,std::shared_ptr<siri::intelligence::Variable> *>(a2, a3, v8);
    for (i = a1[1]; i != v13; i -= 2)
    {
      v15 = *(i - 1);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<siri::intelligence::Variable> *,std::shared_ptr<siri::intelligence::Variable> *,std::shared_ptr<siri::intelligence::Variable> *>(a2, (a2 + v12), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<siri::intelligence::ResponseBase>>,std::shared_ptr<siri::intelligence::ResponseBase>*,std::shared_ptr<siri::intelligence::ResponseBase>*,std::shared_ptr<siri::intelligence::ResponseBase>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

double siri::intelligence::TestParseError::TestParseError(siri::intelligence::TestParseError *this)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

std::string *siri::intelligence::TestParseError::TestParseError(std::string *this, __int128 *a2, __int128 *a3)
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

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_254D72E14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::TestParseError::GetFlowId(siri::intelligence::TestParseError *this@<X0>, std::string *a2@<X8>)
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

void siri::intelligence::TestParseError::GetError(siri::intelligence::TestParseError *this@<X0>, std::string *a2@<X8>)
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

void siri::intelligence::NLParameters::GetName(siri::intelligence::NLParameters *this@<X0>, std::string *a2@<X8>)
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

uint64_t siri::intelligence::NLParameters::GetParameters@<X0>(uint64_t this@<X0>, void *a2@<X8>)
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

void siri::intelligence::NLParameters::SetParameters(uint64_t a1, uint64_t *a2)
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

void siri::intelligence::Intent::Intent(siri::intelligence::Intent *this)
{
  *(this + 22) = 0;
  *(this + 21) = this + 176;
  *(this + 23) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 20) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  operator new();
}

void sub_254D72FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v12;
  v14 = v11;
  siri::intelligence::DirectInvocation::~DirectInvocation((v10 + 216));
  a10 = v13;
  std::vector<siri::intelligence::NLParameters>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v14, *(v10 + 176));
  a10 = (v10 + 144);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (*(v10 + 119) < 0)
  {
    operator delete(*(v10 + 96));
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 72));
  }

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

  _Unwind_Resume(a1);
}

void siri::intelligence::Intent::Intent(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  *&this[1].__r_.__value_.__l.__data_ = 0u;
  this[7].__r_.__value_.__l.__size_ = 0;
  this[7].__r_.__value_.__r.__words[0] = &this[7].__r_.__value_.__l.__size_;
  this[7].__r_.__value_.__r.__words[2] = 0;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  *&this[2].__r_.__value_.__r.__words[1] = 0u;
  *&this[3].__r_.__value_.__l.__data_ = 0u;
  *&this[3].__r_.__value_.__r.__words[2] = 0u;
  *&this[4].__r_.__value_.__r.__words[1] = 0u;
  *&this[5].__r_.__value_.__l.__data_ = 0u;
  *&this[5].__r_.__value_.__r.__words[2] = 0u;
  *&this[6].__r_.__value_.__r.__words[1] = 0u;
  *&this[8].__r_.__value_.__l.__data_ = 0u;
  *&this[8].__r_.__value_.__r.__words[2] = 0u;
  *&this[9].__r_.__value_.__r.__words[1] = 0u;
  *&this[10].__r_.__value_.__l.__data_ = 0u;
  operator new();
}

void sub_254D7317C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = v11;
  siri::intelligence::DirectInvocation::~DirectInvocation((v10 + 216));
  a10 = v14;
  std::vector<siri::intelligence::NLParameters>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v12, *(v10 + 176));
  a10 = (v10 + 144);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (*(v10 + 119) < 0)
  {
    operator delete(*(v10 + 96));
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 72));
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  if (*(v10 + 47) < 0)
  {
    operator delete(*v13);
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

void siri::intelligence::Intent::Intent(std::string *this, __int128 *a2, __int128 *a3)
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

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  *&this[2].__r_.__value_.__l.__data_ = 0u;
  this[7].__r_.__value_.__l.__size_ = 0;
  this[7].__r_.__value_.__r.__words[0] = &this[7].__r_.__value_.__l.__size_;
  this[7].__r_.__value_.__r.__words[2] = 0;
  *&this[2].__r_.__value_.__r.__words[2] = 0u;
  *&this[3].__r_.__value_.__r.__words[1] = 0u;
  *&this[4].__r_.__value_.__l.__data_ = 0u;
  *&this[4].__r_.__value_.__r.__words[2] = 0u;
  *&this[5].__r_.__value_.__r.__words[1] = 0u;
  *&this[6].__r_.__value_.__l.__data_ = 0u;
  this[6].__r_.__value_.__r.__words[2] = 0;
  *&this[8].__r_.__value_.__l.__data_ = 0u;
  *&this[8].__r_.__value_.__r.__words[2] = 0u;
  *&this[9].__r_.__value_.__r.__words[1] = 0u;
  *&this[10].__r_.__value_.__l.__data_ = 0u;
  operator new();
}

void sub_254D7334C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Intent::GetName(siri::intelligence::Intent *this@<X0>, std::string *a2@<X8>)
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

void siri::intelligence::Intent::GetId(siri::intelligence::Intent *this@<X0>, std::string *a2@<X8>)
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

void *siri::intelligence::Intent::SetResolvedEntities(void *result, void *a2)
{
  v2 = (result + 21);
  if (result + 21 != a2)
  {
    v3 = result;
    v4 = a2 + 1;
    v5 = *a2;
    if (result[23])
    {
      v7 = (result + 22);
      v6 = result[22];
      v8 = result[21];
      result[21] = result + 22;
      *(v6 + 16) = 0;
      result[22] = 0;
      result[23] = 0;
      if (*(v8 + 8))
      {
        v9 = *(v8 + 8);
      }

      else
      {
        v9 = v8;
      }

      v16 = result + 21;
      v17 = v9;
      v18 = v9;
      if (!v9 || (v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v9), v5 == v4))
      {
        v14 = v5;
      }

      else
      {
        do
        {
          std::string::operator=((v9 + 4), (v5 + 4));
          std::string::operator=((v9 + 7), (v5 + 7));
          v10 = *v7;
          v11 = (v3 + 22);
          v12 = (v3 + 22);
          if (*v7)
          {
            do
            {
              while (1)
              {
                v11 = v10;
                if (!std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:ne200100](v18 + 4, v10 + 4))
                {
                  break;
                }

                v10 = *v11;
                v12 = v11;
                if (!*v11)
                {
                  goto LABEL_14;
                }
              }

              v10 = v11[1];
            }

            while (v10);
            v12 = v11 + 1;
          }

LABEL_14:
          std::__tree<std::string>::__insert_node_at(v2, v11, v12, v18);
          v9 = v17;
          v18 = v17;
          if (v17)
          {
            v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v17);
          }

          v13 = v5[1];
          if (v13)
          {
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v14 = v5[2];
              v15 = *v14 == v5;
              v5 = v14;
            }

            while (!v15);
          }

          if (!v9)
          {
            break;
          }

          v5 = v14;
        }

        while (v14 != v4);
      }

      result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v16);
      v5 = v14;
    }

    if (v5 != v4)
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>();
    }
  }

  return result;
}

void sub_254D73688(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL siri::intelligence::Intent::IsEqual(siri::intelligence::Intent *this, const siri::intelligence::Intent *a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 1);
  }

  if (v5)
  {
    v6 = *(this + 23);
    v7 = v6;
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(this + 1);
    }

    if (v5 == v6)
    {
      v8 = v4 >= 0 ? a2 : *a2;
      v9 = *this;
      v10 = v7 >= 0 ? this : *this;
      if (!memcmp(v8, v10, v5))
      {
        return 1;
      }
    }
  }

  v11 = *(a2 + 47);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 4);
  }

  if (!v11)
  {
    return 0;
  }

  siri::intelligence::StringToLower(a2 + 24, &v21);
  siri::intelligence::StringToLower(this + 24, &__p);
  v12 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v14 = __p.__r_.__value_.__l.__size_;
  }

  if (size == v14)
  {
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v21;
    }

    else
    {
      v16 = v21.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v18 = memcmp(v16, p_p, size) == 0;
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v18 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v12 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
LABEL_35:
  if (v12 < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  return v18;
}

void sub_254D737EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Intent::GetEntityName(uint64_t *a1@<X1>, std::string *a2@<X8>)
{
  memset(&v17, 0, sizeof(v17));
  v3 = *(a1 + 23);
  v4 = *(a1 + 23) < 0;
  v5 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  if (v6)
  {
    v8 = 0;
    while (1)
    {
      if (v4)
      {
        v9 = *a1;
      }

      else
      {
        v9 = a1;
      }

      v10 = *(v9 + v8);
      if ((v10 - 34) <= 0x3E && ((1 << (v10 - 34)) & 0x4400000000000021) != 0)
      {
        goto LABEL_13;
      }

      v13 = v10;
      if (v10 > 32)
      {
        goto LABEL_26;
      }

      size = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        size = v17.__r_.__value_.__l.__size_;
        if (!v17.__r_.__value_.__l.__size_)
        {
          break;
        }

        v15 = v17.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (!*(&v17.__r_.__value_.__s + 23))
        {
          break;
        }

        v15 = &v17;
      }

      if (v15->__r_.__value_.__s.__data_[size - 1] != 95)
      {
        break;
      }

LABEL_13:
      ++v8;
      v4 = (v3 & 0x80u) != 0;
      if ((v3 & 0x80u) == 0)
      {
        v12 = v3;
      }

      else
      {
        v12 = v5;
      }

      if (v8 >= v12)
      {
        goto LABEL_27;
      }
    }

    v13 = 95;
LABEL_26:
    std::string::push_back(&v17, v13);
    v3 = *(a1 + 23);
    v5 = a1[1];
    goto LABEL_13;
  }

LABEL_27:
  siri::intelligence::StringToUpper(&v17, &__p);
  siri::intelligence::StringTrim("_", &__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_254D73954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t siri::intelligence::Intent::GetNlParsers@<X0>(siri::intelligence::Intent *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<siri::intelligence::NLParameters>::__init_with_size[abi:ne200100]<siri::intelligence::NLParameters*,siri::intelligence::NLParameters*>(a2, *(this + 24), *(this + 25), 0xCCCCCCCCCCCCCCCDLL * ((*(this + 25) - *(this + 24)) >> 3));
}

void siri::intelligence::Intent::SetNlParsers(uint64_t a1, std::string **a2)
{
  v2 = a1 + 192;
  if (v2 != a2)
  {
    std::vector<siri::intelligence::NLParameters>::__assign_with_size[abi:ne200100]<siri::intelligence::NLParameters*,siri::intelligence::NLParameters*>(v2, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
  }
}

void siri::intelligence::Intent::GetNlProducer(siri::intelligence::Intent *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 239) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 27), *(this + 28));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 216);
    a2->__r_.__value_.__r.__words[2] = *(this + 29);
  }

  v4 = *(this + 31);
  a2[1].__r_.__value_.__r.__words[0] = *(this + 30);
  a2[1].__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

void siri::intelligence::Intent::SetNlProducer(std::string *this, const std::string *a2)
{
  std::string::operator=(this + 9, a2);
  data = a2[1].__r_.__value_.__l.__data_;
  size = a2[1].__r_.__value_.__l.__size_;
  if (size)
  {
    atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
  }

  v6 = this[10].__r_.__value_.__l.__size_;
  this[10].__r_.__value_.__r.__words[0] = data;
  this[10].__r_.__value_.__l.__size_ = size;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void siri::intelligence::Intent::GetCatiEnsemble(siri::intelligence::Intent *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 6), *(this + 7));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 3);
    a2->__r_.__value_.__r.__words[2] = *(this + 8);
  }
}

void siri::intelligence::Intent::GetCatiName(siri::intelligence::Intent *this@<X0>, std::string *a2@<X8>)
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

void siri::intelligence::Intent::GetCatiGuid(siri::intelligence::Intent *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 12), *(this + 13));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 6);
    a2->__r_.__value_.__r.__words[2] = *(this + 14);
  }
}

void siri::intelligence::Intent::GenerateCatiGuidIfNotSet(siri::intelligence::Intent *this)
{
  if ((*(this + 119) & 0x8000000000000000) != 0)
  {
    if (*(this + 13))
    {
      return;
    }
  }

  else if (*(this + 119))
  {
    return;
  }

  v2 = *(this + 95);
  if (v2 < 0)
  {
    v2 = *(this + 10);
  }

  if (v2)
  {
    v3 = *(this + 71);
    if (v3 < 0)
    {
      v3 = *(this + 7);
    }

    if (v3)
    {
      v4 = (this + 96);
      siri::intelligence::HashUtils::ComputeCATIGuid(this + 48, this + 9, &v7);
      if (*(this + 119) < 0)
      {
        operator delete(*v4);
      }

      *v4 = v7;
      *(this + 14) = v8;
      v6 = this;
      if (*(this + 23) < 0)
      {
        v6 = *this;
      }

      if (*(this + 119) < 0)
      {
        v4 = *v4;
      }

      siri::intelligence::Log::Debug("Generated CATI GUID for event %s: %s", v5, v6, v4);
    }
  }
}

uint64_t siri::intelligence::Intent::GetDirectInvocations@<X0>(siri::intelligence::Intent *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *(this + 15), *(this + 16), 0xAAAAAAAAAAAAAAABLL * ((*(this + 16) - *(this + 15)) >> 3));
}

void siri::intelligence::Intent::SetDirectInvocations(std::vector<std::string> *a1, std::string **a2)
{
  v2 = a1 + 5;
  if (v2 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }
}

uint64_t siri::intelligence::Intent::GetUserDialogActs@<X0>(siri::intelligence::Intent *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *(this + 18), *(this + 19), 0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - *(this + 18)) >> 3));
}

void siri::intelligence::Intent::SetUserDialogActs(std::vector<std::string> *a1, std::string **a2)
{
  v2 = a1 + 6;
  if (v2 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }
}

uint64_t siri::intelligence::Intent::GetUtterances@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 264);
  *a2 = *(this + 256);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

double siri::intelligence::IntentReference::IntentReference(siri::intelligence::IntentReference *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 18) = 1;
  *(this + 10) = 0;
  return result;
}

{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 18) = 1;
  *(this + 10) = 0;
  return result;
}

void siri::intelligence::IntentReference::~IntentReference(siri::intelligence::IntentReference *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    if (*(v2 + 55) < 0)
    {
      operator delete(*(v2 + 32));
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    MEMORY[0x259C29D90](v2, 0x1012C401CEF6ECFLL);
  }

  v3 = (this + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__shared_ptr_emplace<siri::intelligence::Utterances>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671C1E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

BOOL std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t std::vector<siri::intelligence::NLParameters>::__init_with_size[abi:ne200100]<siri::intelligence::NLParameters*,siri::intelligence::NLParameters*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<siri::intelligence::NLParameters>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254D73FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<siri::intelligence::NLParameters>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<siri::intelligence::NLParameters>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::NLParameters>>(a1, a2);
  }

  std::vector<siri::intelligence::NLParameters>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::NLParameters>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<siri::intelligence::NLParameters>,siri::intelligence::NLParameters*,siri::intelligence::NLParameters*,siri::intelligence::NLParameters*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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
    v7 = a1;
    do
    {
      std::allocator<siri::intelligence::NLParameters>::construct[abi:ne200100]<siri::intelligence::NLParameters,siri::intelligence::NLParameters&>(v7, v4, v6);
      v6 = (v6 + 40);
      v4 = (v12 + 40);
      v12 = (v12 + 40);
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::NLParameters>,siri::intelligence::NLParameters*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void std::allocator<siri::intelligence::NLParameters>::construct[abi:ne200100]<siri::intelligence::NLParameters,siri::intelligence::NLParameters&>(int a1, std::string *this, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    this->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a3 + 4);
  this[1].__r_.__value_.__r.__words[0] = *(a3 + 3);
  this[1].__r_.__value_.__l.__size_ = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::NLParameters>,siri::intelligence::NLParameters*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::NLParameters>,siri::intelligence::NLParameters*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::NLParameters>,siri::intelligence::NLParameters*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 40;
      std::allocator<siri::intelligence::NLParameters>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void std::vector<siri::intelligence::NLParameters>::__assign_with_size[abi:ne200100]<siri::intelligence::NLParameters*,siri::intelligence::NLParameters*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *(a1 + 16);
  v9 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      v10 = *(a1 + 8);
      v11 = *a1;
      if (v10 != v9)
      {
        do
        {
          v10 -= 40;
          std::allocator<siri::intelligence::NLParameters>::destroy[abi:ne200100](a1, v10);
        }

        while (v10 != v9);
        v11 = *a1;
      }

      *(a1 + 8) = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0x666666666666666)
    {
      v12 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x333333333333333)
      {
        v14 = 0x666666666666666;
      }

      else
      {
        v14 = v13;
      }

      std::vector<siri::intelligence::NLParameters>::__vallocate[abi:ne200100](a1, v14);
    }

    std::vector<siri::intelligence::NLParameters>::__throw_length_error[abi:ne200100]();
  }

  v15 = *(a1 + 8) - v9;
  if (0xCCCCCCCCCCCCCCCDLL * (v15 >> 3) >= a4)
  {
    v16 = std::__copy_impl::operator()[abi:ne200100]<siri::intelligence::NLParameters *,siri::intelligence::NLParameters *,siri::intelligence::NLParameters *>(__str, a3, v9);
    for (i = *(a1 + 8); i != v16; std::allocator<siri::intelligence::NLParameters>::destroy[abi:ne200100](a1, i))
    {
      i -= 40;
    }

    *(a1 + 8) = v16;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<siri::intelligence::NLParameters *,siri::intelligence::NLParameters *,siri::intelligence::NLParameters *>(__str, (__str + v15), v9);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<siri::intelligence::NLParameters>,siri::intelligence::NLParameters*,siri::intelligence::NLParameters*,siri::intelligence::NLParameters*>(a1, (__str + v15), a3, *(a1 + 8));
  }
}

std::string *std::__copy_impl::operator()[abi:ne200100]<siri::intelligence::NLParameters *,siri::intelligence::NLParameters *,siri::intelligence::NLParameters *>(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    do
    {
      std::string::operator=(this, v5);
      v7 = v5[1].__r_.__value_.__r.__words[0];
      size = v5[1].__r_.__value_.__l.__size_;
      if (size)
      {
        atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
      }

      v8 = this[1].__r_.__value_.__l.__size_;
      this[1].__r_.__value_.__r.__words[0] = v7;
      this[1].__r_.__value_.__l.__size_ = size;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v5 = (v5 + 40);
      this = (this + 40);
    }

    while (v5 != a2);
  }

  return this;
}

void YAML::Exception::~Exception(std::runtime_error *this)
{
  this->__vftable = &unk_28671C238;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[2].__vftable);
  }

  std::runtime_error::~runtime_error(this);
}

{
  YAML::Exception::~Exception(this);

  JUMPOUT(0x259C29D90);
}

void YAML::ParserException::~ParserException(std::runtime_error *this)
{
  YAML::Exception::~Exception(this);

  JUMPOUT(0x259C29D90);
}

void YAML::RepresentationException::~RepresentationException(std::runtime_error *this)
{
  YAML::Exception::~Exception(this);

  JUMPOUT(0x259C29D90);
}

void YAML::InvalidScalar::~InvalidScalar(std::runtime_error *this)
{
  YAML::Exception::~Exception(this);

  JUMPOUT(0x259C29D90);
}

void YAML::KeyNotFound::~KeyNotFound(std::runtime_error *this)
{
  YAML::Exception::~Exception(this);

  JUMPOUT(0x259C29D90);
}

void YAML::InvalidNode::~InvalidNode(std::runtime_error *this)
{
  YAML::Exception::~Exception(this);

  JUMPOUT(0x259C29D90);
}

void YAML::BadConversion::~BadConversion(std::runtime_error *this)
{
  YAML::Exception::~Exception(this);

  JUMPOUT(0x259C29D90);
}

void YAML::BadDereference::~BadDereference(std::runtime_error *this)
{
  YAML::Exception::~Exception(this);

  JUMPOUT(0x259C29D90);
}

void YAML::BadSubscript::~BadSubscript(std::runtime_error *this)
{
  YAML::Exception::~Exception(this);

  JUMPOUT(0x259C29D90);
}

void YAML::BadPushback::~BadPushback(std::runtime_error *this)
{
  YAML::Exception::~Exception(this);

  JUMPOUT(0x259C29D90);
}

void YAML::BadInsert::~BadInsert(std::runtime_error *this)
{
  YAML::Exception::~Exception(this);

  JUMPOUT(0x259C29D90);
}

void YAML::EmitterException::~EmitterException(std::runtime_error *this)
{
  YAML::Exception::~Exception(this);

  JUMPOUT(0x259C29D90);
}

void YAML::BadFile::~BadFile(std::runtime_error *this)
{
  YAML::Exception::~Exception(this);

  JUMPOUT(0x259C29D90);
}

void siri::intelligence::Utterances::Clear(char **this)
{
  v2 = (this + 1);
  std::__tree<std::string>::destroy(this, this[1]);
  *this = v2;
  this[2] = 0;
  *v2 = 0;
}

void siri::intelligence::Utterances::AddUtterance(uint64_t a1, const std::string *a2)
{
  siri::intelligence::Utterances::GetNormalizedText(a2, __p);
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_254D74884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Utterances::GetNormalizedText(const std::string *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  siri::intelligence::StringTrim(" \t\n\r", a1, &__p);
  siri::intelligence::StringToLower(&__p, &v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v3 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v16;
  }

  else
  {
    v4 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v6 = 0;
    v7 = MEMORY[0x277D85DE0];
    do
    {
      v8 = v4->__r_.__value_.__s.__data_[0];
      if ((v8 & 0x80000000) != 0)
      {
        v9 = __maskrune(v4->__r_.__value_.__s.__data_[0], 0x4000uLL);
      }

      else
      {
        v9 = *(v7 + 4 * v8 + 60) & 0x4000;
      }

      if (!v9 || (v6 < 0 ? (v10 = __maskrune(v6, 0x4000uLL)) : (v10 = *(v7 + 4 * v6 + 60) & 0x4000), !v10))
      {
        if (v8 > 0x3Fu || ((1 << v8) & 0x8C00508200000000) == 0)
        {
          std::string::push_back(a2, v8);
          v6 = v8;
        }
      }

      v4 = (v4 + 1);
      --size;
    }

    while (size);
    v3 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  if (v3 < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "’");
  std::string::basic_string[abi:ne200100]<0>(v18, "");
  siri::intelligence::StringReplace(a2, &__p, v18, 0, &v16);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v16;
  *(&v16.__r_.__value_.__s + 23) = 0;
  v16.__r_.__value_.__s.__data_[0] = 0;
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = 0;
  v18[0] = "hey siri ";
  v18[1] = "siri ";
  while (1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v16, v18[v12]);
    if (siri::intelligence::StringStartsWith(a2, &v16.__r_.__value_.__l.__data_))
    {
      break;
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (++v12 == 2)
    {
      goto LABEL_47;
    }
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v16.__r_.__value_.__l.__size_;
  }

  std::string::basic_string(&__p, a2, v13, 0xFFFFFFFFFFFFFFFFLL, &v17);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = __p;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

LABEL_47:
  v14 = *MEMORY[0x277D85DE8];
}

void sub_254D74B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::intelligence::Utterances::HasUtterance(uint64_t a1, const std::string *a2)
{
  siri::intelligence::Utterances::GetNormalizedText(a2, __p);
  v3 = std::__tree<std::string>::find<std::string>(a1, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1 + 8 != v3;
}

void sub_254D74C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *siri::intelligence::GetAllValidationCodes@<X0>(void *a1@<X8>)
{
  v2 = a1;
  v41 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&_MergedGlobals_17, memory_order_acquire) & 1) == 0)
  {
    v6 = __cxa_guard_acquire(&_MergedGlobals_17);
    v2 = a1;
    if (v6)
    {
      if (siri::intelligence::CODE_NO_VERSION[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v8, *siri::intelligence::CODE_NO_VERSION, *&siri::intelligence::CODE_NO_VERSION[8]);
      }

      else
      {
        v8 = *siri::intelligence::CODE_NO_VERSION;
      }

      if (siri::intelligence::CODE_NO_META_NAME[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v9, *siri::intelligence::CODE_NO_META_NAME, *&siri::intelligence::CODE_NO_META_NAME[8]);
      }

      else
      {
        v9 = *siri::intelligence::CODE_NO_META_NAME;
      }

      if (siri::intelligence::CODE_NO_VAR_NAME[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v10, *siri::intelligence::CODE_NO_VAR_NAME, *&siri::intelligence::CODE_NO_VAR_NAME[8]);
      }

      else
      {
        v10 = *siri::intelligence::CODE_NO_VAR_NAME;
      }

      if (siri::intelligence::CODE_NO_VAR_TYPE[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v11, *siri::intelligence::CODE_NO_VAR_TYPE, *&siri::intelligence::CODE_NO_VAR_TYPE[8]);
      }

      else
      {
        v11 = *siri::intelligence::CODE_NO_VAR_TYPE;
      }

      if (siri::intelligence::CODE_NO_PARAM[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v12, *siri::intelligence::CODE_NO_PARAM, *&siri::intelligence::CODE_NO_PARAM[8]);
      }

      else
      {
        v12 = *siri::intelligence::CODE_NO_PARAM;
      }

      if (siri::intelligence::CODE_FUTURE_VERSION[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v13, *siri::intelligence::CODE_FUTURE_VERSION, *&siri::intelligence::CODE_FUTURE_VERSION[8]);
      }

      else
      {
        v13 = *siri::intelligence::CODE_FUTURE_VERSION;
      }

      if (siri::intelligence::CODE_UNDEF_VAR[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *siri::intelligence::CODE_UNDEF_VAR, *&siri::intelligence::CODE_UNDEF_VAR[8]);
      }

      else
      {
        v14 = *siri::intelligence::CODE_UNDEF_VAR;
      }

      if (siri::intelligence::CODE_UNDEF_RESPONSE[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v15, *siri::intelligence::CODE_UNDEF_RESPONSE, *&siri::intelligence::CODE_UNDEF_RESPONSE[8]);
      }

      else
      {
        v15 = *siri::intelligence::CODE_UNDEF_RESPONSE;
      }

      if (siri::intelligence::CODE_UNDEF_INPUT[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v16, *siri::intelligence::CODE_UNDEF_INPUT, *&siri::intelligence::CODE_UNDEF_INPUT[8]);
      }

      else
      {
        v16 = *siri::intelligence::CODE_UNDEF_INPUT;
      }

      if (siri::intelligence::CODE_UNDEF_CONDITION[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v17, *siri::intelligence::CODE_UNDEF_CONDITION, *&siri::intelligence::CODE_UNDEF_CONDITION[8]);
      }

      else
      {
        v17 = *siri::intelligence::CODE_UNDEF_CONDITION;
      }

      if (siri::intelligence::CODE_UNDEF_INTENT[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v18, *siri::intelligence::CODE_UNDEF_INTENT, *&siri::intelligence::CODE_UNDEF_INTENT[8]);
      }

      else
      {
        v18 = *siri::intelligence::CODE_UNDEF_INTENT;
      }

      if (siri::intelligence::CODE_UNDEF_FUNC[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v19, *siri::intelligence::CODE_UNDEF_FUNC, *&siri::intelligence::CODE_UNDEF_FUNC[8]);
      }

      else
      {
        v19 = *siri::intelligence::CODE_UNDEF_FUNC;
      }

      if (siri::intelligence::CODE_UNDEF_PARAM[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v20, *siri::intelligence::CODE_UNDEF_PARAM, *&siri::intelligence::CODE_UNDEF_PARAM[8]);
      }

      else
      {
        v20 = *siri::intelligence::CODE_UNDEF_PARAM;
      }

      if (siri::intelligence::CODE_INVALID_NAME[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v21, *siri::intelligence::CODE_INVALID_NAME, *&siri::intelligence::CODE_INVALID_NAME[8]);
      }

      else
      {
        v21 = *siri::intelligence::CODE_INVALID_NAME;
      }

      if (siri::intelligence::CODE_INVALID_ID[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v22, *siri::intelligence::CODE_INVALID_ID, *&siri::intelligence::CODE_INVALID_ID[8]);
      }

      else
      {
        v22 = *siri::intelligence::CODE_INVALID_ID;
      }

      if (siri::intelligence::CODE_NO_ID[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v23, *siri::intelligence::CODE_NO_ID, *&siri::intelligence::CODE_NO_ID[8]);
      }

      else
      {
        v23 = *siri::intelligence::CODE_NO_ID;
      }

      if (siri::intelligence::CODE_NO_CAT_ID[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v24, *siri::intelligence::CODE_NO_CAT_ID, *&siri::intelligence::CODE_NO_CAT_ID[8]);
      }

      else
      {
        v24 = *siri::intelligence::CODE_NO_CAT_ID;
      }

      if (siri::intelligence::CODE_NO_PATTERN_ID[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v25, *siri::intelligence::CODE_NO_PATTERN_ID, *&siri::intelligence::CODE_NO_PATTERN_ID[8]);
      }

      else
      {
        v25 = *siri::intelligence::CODE_NO_PATTERN_ID;
      }

      if (siri::intelligence::CODE_NO_RESPONSE_ID[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v26, *siri::intelligence::CODE_NO_RESPONSE_ID, *&siri::intelligence::CODE_NO_RESPONSE_ID[8]);
      }

      else
      {
        v26 = *siri::intelligence::CODE_NO_RESPONSE_ID;
      }

      if (siri::intelligence::CODE_NO_OPERATOR[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v27, *siri::intelligence::CODE_NO_OPERATOR, *&siri::intelligence::CODE_NO_OPERATOR[8]);
      }

      else
      {
        v27 = *siri::intelligence::CODE_NO_OPERATOR;
      }

      if (siri::intelligence::CODE_NO_EFFECT[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v28, *siri::intelligence::CODE_NO_EFFECT, *&siri::intelligence::CODE_NO_EFFECT[8]);
      }

      else
      {
        v28 = *siri::intelligence::CODE_NO_EFFECT;
      }

      if (siri::intelligence::CODE_INVALID_OPERATOR[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v29, *siri::intelligence::CODE_INVALID_OPERATOR, *&siri::intelligence::CODE_INVALID_OPERATOR[8]);
      }

      else
      {
        v29 = *siri::intelligence::CODE_INVALID_OPERATOR;
      }

      if (siri::intelligence::CODE_EMPTY_EXPR[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v30, *siri::intelligence::CODE_EMPTY_EXPR, *&siri::intelligence::CODE_EMPTY_EXPR[8]);
      }

      else
      {
        v30 = *siri::intelligence::CODE_EMPTY_EXPR;
      }

      if (siri::intelligence::CODE_INVALID_TYPE[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *siri::intelligence::CODE_INVALID_TYPE, *&siri::intelligence::CODE_INVALID_TYPE[8]);
      }

      else
      {
        v31 = *siri::intelligence::CODE_INVALID_TYPE;
      }

      if (siri::intelligence::CODE_TYPE_MISMATCH[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *siri::intelligence::CODE_TYPE_MISMATCH, *&siri::intelligence::CODE_TYPE_MISMATCH[8]);
      }

      else
      {
        v32 = *siri::intelligence::CODE_TYPE_MISMATCH;
      }

      if (siri::intelligence::CODE_MULTI_DEFS[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v33, *siri::intelligence::CODE_MULTI_DEFS, *&siri::intelligence::CODE_MULTI_DEFS[8]);
      }

      else
      {
        v33 = *siri::intelligence::CODE_MULTI_DEFS;
      }

      if (siri::intelligence::CODE_FILE_NOT_FOUND[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v34, *siri::intelligence::CODE_FILE_NOT_FOUND, *&siri::intelligence::CODE_FILE_NOT_FOUND[8]);
      }

      else
      {
        v34 = *siri::intelligence::CODE_FILE_NOT_FOUND;
      }

      if (siri::intelligence::CODE_YAML_PARSE[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v35, *siri::intelligence::CODE_YAML_PARSE, *&siri::intelligence::CODE_YAML_PARSE[8]);
      }

      else
      {
        v35 = *siri::intelligence::CODE_YAML_PARSE;
      }

      if (siri::intelligence::CODE_DUPE_ID[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v36, *siri::intelligence::CODE_DUPE_ID, *&siri::intelligence::CODE_DUPE_ID[8]);
      }

      else
      {
        v36 = *siri::intelligence::CODE_DUPE_ID;
      }

      if (siri::intelligence::CODE_READ_ONLY[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v37, *siri::intelligence::CODE_READ_ONLY, *&siri::intelligence::CODE_READ_ONLY[8]);
      }

      else
      {
        v37 = *siri::intelligence::CODE_READ_ONLY;
      }

      if (siri::intelligence::CODE_DEPRECATED[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v38, *siri::intelligence::CODE_DEPRECATED, *&siri::intelligence::CODE_DEPRECATED[8]);
      }

      else
      {
        v38 = *siri::intelligence::CODE_DEPRECATED;
      }

      if (siri::intelligence::CODE_INFINITE_LOOP[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v39, *siri::intelligence::CODE_INFINITE_LOOP, *&siri::intelligence::CODE_INFINITE_LOOP[8]);
      }

      else
      {
        v39 = *siri::intelligence::CODE_INFINITE_LOOP;
      }

      if (siri::intelligence::CODE_UNUSED[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v40, *siri::intelligence::CODE_UNUSED, *&siri::intelligence::CODE_UNUSED[8]);
      }

      else
      {
        v40 = *siri::intelligence::CODE_UNUSED;
      }

      std::set<std::string>::set[abi:ne200100](&unk_280AF47B0, &v8.__r_.__value_.__l.__data_, 33);
      v7 = 792;
      do
      {
        if (v8.__r_.__value_.__s.__data_[v7 - 1] < 0)
        {
          operator delete(*(&v8.__r_.__value_.__l + v7 - 24));
        }

        v7 -= 24;
      }

      while (v7);
      __cxa_atexit(std::set<std::string>::~set[abi:ne200100], &unk_280AF47B0, &dword_254C81000);
      __cxa_guard_release(&_MergedGlobals_17);
      v2 = a1;
    }
  }

  result = std::set<std::string>::set[abi:ne200100](v2, &unk_280AF47B0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void siri::intelligence::GetLineNumFromUnknownField(uint64_t a1, uint64_t a2, int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a2, *(a2 + 8));
  }

  else
  {
    v20 = *a2;
  }

  if ((a3 & 0x80000000) == 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = *(a2 + 8);
    }

    v7 = &v18;
    std::string::basic_string[abi:ne200100](&v18, v6 + 1);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v18.__r_.__value_.__r.__words[0];
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

    *(&v7->__r_.__value_.__l.__data_ + v6) = 91;
    std::to_string(&v17, a3);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v17;
    }

    else
    {
      v9 = v17.__r_.__value_.__r.__words[0];
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v17.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v18, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v19, "]");
    v14 = v13->__r_.__value_.__r.__words[0];
    *v21 = v13->__r_.__value_.__l.__size_;
    *&v21[7] = *(&v13->__r_.__value_.__r.__words[1] + 7);
    v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    v20.__r_.__value_.__r.__words[0] = v14;
    v20.__r_.__value_.__l.__size_ = *v21;
    *(&v20.__r_.__value_.__r.__words[1] + 7) = *&v21[7];
    *(&v20.__r_.__value_.__s + 23) = v15;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  v16 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v16 = v20.__r_.__value_.__l.__size_;
  }

  if (!v16)
  {
    MEMORY[0x259C299D0](&v20, "<msg>");
  }

  memset(&v18, 0, sizeof(v18));
  siri::intelligence::StringSplit(a1, ";");
}

void sub_254D75940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double siri::intelligence::ValidationResult::ValidationResult(siri::intelligence::ValidationResult *this)
{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

uint64_t siri::intelligence::ValidationResult::ValidationResult(uint64_t a1, int a2, __int128 *a3, __int128 *a4, int a5)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v8;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 48) = *(a4 + 2);
    *(a1 + 32) = v9;
  }

  *(a1 + 56) = a5;
  return a1;
}

void sub_254D75ADC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::ValidationResult::GetCode(siri::intelligence::ValidationResult *this@<X0>, std::string *a2@<X8>)
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

void siri::intelligence::ValidationResult::GetText(siri::intelligence::ValidationResult *this@<X0>, std::string *a2@<X8>)
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

void siri::intelligence::ValidationResult::GetDescription(siri::intelligence::ValidationResult *this@<X0>, std::string *a2@<X8>)
{
  memset(&v23, 0, sizeof(v23));
  v4 = *this;
  if (v4 < 3)
  {
    std::string::append(&v23, off_2797B2FF0[v4]);
  }

  v5 = *(this + 55);
  if (v5 >= 0)
  {
    v6 = this + 32;
  }

  else
  {
    v6 = *(this + 4);
  }

  if (v5 >= 0)
  {
    v7 = *(this + 55);
  }

  else
  {
    v7 = *(this + 5);
  }

  std::string::append(&v23, v6, v7);
  v8 = *(this + 14);
  if (v8 >= 1)
  {
    std::to_string(&v19, v8);
    v9 = std::string::insert(&v19, 0, " (Line ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v20, ")");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v22 = v11->__r_.__value_.__r.__words[2];
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v22 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if (v22 >= 0)
    {
      v14 = HIBYTE(v22);
    }

    else
    {
      v14 = __p[1];
    }

    std::string::append(&v23, v13, v14);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  if ((*(this + 31) & 0x8000000000000000) != 0)
  {
    if (!*(this + 2))
    {
      goto LABEL_36;
    }
  }

  else if (!*(this + 31))
  {
    goto LABEL_36;
  }

  std::operator+<char>();
  v15 = std::string::append(&v20, "]");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v22 = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (v22 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if (v22 >= 0)
  {
    v18 = HIBYTE(v22);
  }

  else
  {
    v18 = __p[1];
  }

  std::string::append(&v23, v17, v18);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

LABEL_36:
  siri::intelligence::StringTrim(" \t\n\r", &v23, a2);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }
}

void sub_254D75D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v28 - 17) < 0)
  {
    operator delete(*(v28 - 40));
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::ValidationResult::GetXcodeFormat(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  memset(&v29, 0, sizeof(v29));
  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    v8 = *(a3 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a3 + 8);
    }

    if (v8)
    {
      memset(&__p, 0, sizeof(__p));
      siri::intelligence::StringSplit(a2, "/");
    }

    if (v7 < 0)
    {
      std::string::__init_copy_ctor_external(&v26, *a2, *(a2 + 8));
    }

    else
    {
      v26 = *a2;
    }

    v9 = std::string::append(&v26, ":");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v28 = v9->__r_.__value_.__r.__words[2];
    *v27 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (v28 >= 0)
    {
      v11 = v27;
    }

    else
    {
      v11 = v27[0];
    }

    if (v28 >= 0)
    {
      v12 = HIBYTE(v28);
    }

    else
    {
      v12 = v27[1];
    }

    std::string::append(&v29, v11, v12);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }
  }

  v13 = a1[14];
  if (v13 >= 1)
  {
    std::to_string(&__p, v13);
    v14 = std::string::append(&__p, ": ");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v32 = v14->__r_.__value_.__r.__words[2];
    v31 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (v32 >= 0)
    {
      v16 = &v31;
    }

    else
    {
      v16 = v31;
    }

    if (v32 >= 0)
    {
      v17 = HIBYTE(v32);
    }

    else
    {
      v17 = *(&v31 + 1);
    }

    std::string::append(&v29, v16, v17);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v18 = *a1;
  if (v18 < 3)
  {
    std::string::append(&v29, off_2797B3008[v18]);
  }

  v19 = *(a1 + 55);
  if (v19 >= 0)
  {
    v20 = (a1 + 8);
  }

  else
  {
    v20 = *(a1 + 4);
  }

  if (v19 >= 0)
  {
    v21 = *(a1 + 55);
  }

  else
  {
    v21 = *(a1 + 5);
  }

  std::string::append(&v29, v20, v21);
  if ((*(a1 + 31) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 2))
    {
      goto LABEL_54;
    }
  }

  else if (!*(a1 + 31))
  {
    goto LABEL_54;
  }

  std::operator+<char>();
  v22 = std::string::append(&__p, "]");
  v23 = *&v22->__r_.__value_.__l.__data_;
  v32 = v22->__r_.__value_.__r.__words[2];
  v31 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (v32 >= 0)
  {
    v24 = &v31;
  }

  else
  {
    v24 = v31;
  }

  if (v32 >= 0)
  {
    v25 = HIBYTE(v32);
  }

  else
  {
    v25 = *(&v31 + 1);
  }

  std::string::append(&v29, v24, v25);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_54:
  siri::intelligence::StringTrim(" \t\n\r", &v29, a4);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }
}

void sub_254D761C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::ValidationResults::Clear(siri::intelligence::ValidationResults *this)
{
  v3 = *this;
  for (i = *(this + 1); i != v3; std::allocator<siri::intelligence::ValidationResult>::destroy[abi:ne200100](this, i))
  {
    i -= 64;
  }

  v5 = *(this + 4);
  v4 = (this + 32);
  *(v4 - 3) = v3;
  std::__tree<std::string>::destroy((v4 - 1), v5);
  *v4 = 0;
  v4[1] = 0;
  *(v4 - 1) = v4;
}

void siri::intelligence::ValidationResults::Add(siri::intelligence::ValidationResults *this, const siri::intelligence::ValidationResult *a2)
{
  siri::intelligence::ValidationResult::GetDescription(a2, &__p);
  if ((this + 32) == std::__tree<std::string>::find<std::string>(this + 24, &__p.__r_.__value_.__l.__data_))
  {
    std::vector<siri::intelligence::ValidationResult>::push_back[abi:ne200100](this, a2);
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(this + 24, &__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_254D76364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<siri::intelligence::ValidationResult>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<siri::intelligence::ValidationResult>::__emplace_back_slow_path<siri::intelligence::ValidationResult const&>(a1, a2);
  }

  else
  {
    std::vector<siri::intelligence::ValidationResult>::__construct_one_at_end[abi:ne200100]<siri::intelligence::ValidationResult const&>(a1, a2);
    result = v3 + 64;
  }

  a1[1] = result;
  return result;
}

void siri::intelligence::ValidationResults::AddError(siri::intelligence::ValidationResults *a1, __int128 *a2, __int128 *a3, int a4)
{
  siri::intelligence::ValidationResult::ValidationResult(&v5, 0, a2, a3, a4);
  siri::intelligence::ValidationResults::Add(a1, &v5);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }
}

void siri::intelligence::ValidationResults::AddWarning(siri::intelligence::ValidationResults *a1, __int128 *a2, __int128 *a3, int a4)
{
  siri::intelligence::ValidationResult::ValidationResult(&v5, 1, a2, a3, a4);
  siri::intelligence::ValidationResults::Add(a1, &v5);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }
}

void siri::intelligence::ValidationResults::AddNote(siri::intelligence::ValidationResults *a1, __int128 *a2, __int128 *a3, int a4)
{
  siri::intelligence::ValidationResult::ValidationResult(&v5, 2, a2, a3, a4);
  siri::intelligence::ValidationResults::Add(a1, &v5);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }
}

void siri::intelligence::ValidationResults::FilterOutCodes(uint64_t *a1, uint64_t *a2)
{
  if (*a2 != a2[1])
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v3 = *a1;
    v4 = a1[1];
    if (*a1 != v4)
    {
      do
      {
        v6 = *a2;
        v7 = a2[1];
        if (*(v3 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v3 + 8), *(v3 + 16));
        }

        else
        {
          v8 = *(v3 + 8);
          __p.__r_.__value_.__r.__words[2] = *(v3 + 24);
          *&__p.__r_.__value_.__l.__data_ = v8;
        }

        v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if (v6 != v7)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          while (1)
          {
            v12 = *(v6 + 23);
            v13 = v12;
            if ((v12 & 0x80u) != 0)
            {
              v12 = *(v6 + 8);
            }

            if (v12 == size)
            {
              v14 = v13 >= 0 ? v6 : *v6;
              if (!memcmp(v14, p_p, size))
              {
                break;
              }
            }

            v6 += 24;
            if (v6 == v7)
            {
              v6 = v7;
              break;
            }
          }
        }

        v15 = a2[1];
        if (v9 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v6 == v15)
        {
          std::vector<siri::intelligence::ValidationResult>::push_back[abi:ne200100](&v17, v3);
        }

        v3 += 64;
      }

      while (v3 != v4);
    }

    if (&v17 != a1)
    {
      std::vector<siri::intelligence::ValidationResult>::__assign_with_size[abi:ne200100]<siri::intelligence::ValidationResult*,siri::intelligence::ValidationResult*>(a1, v17, v18, (v18 - v17) >> 6);
    }

    __p.__r_.__value_.__r.__words[0] = &v17;
    std::vector<siri::intelligence::ValidationResult>::__destroy_vector::operator()[abi:ne200100](&__p);
  }
}

void sub_254D766A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  std::vector<siri::intelligence::ValidationResult>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void siri::intelligence::ValidationResults::FilterOutCodesNotIn(uint64_t *a1, uint64_t *a2)
{
  if (*a2 != a2[1])
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v3 = *a1;
    v4 = a1[1];
    if (*a1 != v4)
    {
      do
      {
        v6 = *a2;
        v7 = a2[1];
        if (*(v3 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v3 + 8), *(v3 + 16));
        }

        else
        {
          v8 = *(v3 + 8);
          __p.__r_.__value_.__r.__words[2] = *(v3 + 24);
          *&__p.__r_.__value_.__l.__data_ = v8;
        }

        v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if (v6 != v7)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          while (1)
          {
            v12 = *(v6 + 23);
            v13 = v12;
            if ((v12 & 0x80u) != 0)
            {
              v12 = *(v6 + 8);
            }

            if (v12 == size)
            {
              v14 = v13 >= 0 ? v6 : *v6;
              if (!memcmp(v14, p_p, size))
              {
                break;
              }
            }

            v6 += 24;
            if (v6 == v7)
            {
              v6 = v7;
              break;
            }
          }
        }

        v15 = a2[1];
        if (v9 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v6 != v15)
        {
          std::vector<siri::intelligence::ValidationResult>::push_back[abi:ne200100](&v17, v3);
        }

        v3 += 64;
      }

      while (v3 != v4);
    }

    if (&v17 != a1)
    {
      std::vector<siri::intelligence::ValidationResult>::__assign_with_size[abi:ne200100]<siri::intelligence::ValidationResult*,siri::intelligence::ValidationResult*>(a1, v17, v18, (v18 - v17) >> 6);
    }

    __p.__r_.__value_.__r.__words[0] = &v17;
    std::vector<siri::intelligence::ValidationResult>::__destroy_vector::operator()[abi:ne200100](&__p);
  }
}

void sub_254D76828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  std::vector<siri::intelligence::ValidationResult>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void siri::intelligence::ValidationResults::FilterOutNonErrors(siri::intelligence::ValidationResults *this)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v2 = *this;
  v3 = *(this + 1);
  while (v2 != v3)
  {
    if (!*v2)
    {
      std::vector<siri::intelligence::ValidationResult>::push_back[abi:ne200100](&v4, v2);
    }

    v2 += 16;
  }

  if (&v4 != this)
  {
    std::vector<siri::intelligence::ValidationResult>::__assign_with_size[abi:ne200100]<siri::intelligence::ValidationResult*,siri::intelligence::ValidationResult*>(this, v4, v5, (v5 - v4) >> 6);
  }

  v7 = &v4;
  std::vector<siri::intelligence::ValidationResult>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_254D768D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<siri::intelligence::ValidationResult>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::ValidationResults::GetResults@<X0>(siri::intelligence::ValidationResults *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<siri::intelligence::ValidationResult>::__init_with_size[abi:ne200100]<siri::intelligence::ValidationResult*,siri::intelligence::ValidationResult*>(a2, *this, *(this + 1), (*(this + 1) - *this) >> 6);
}

void std::vector<siri::intelligence::ValidationResult>::__construct_one_at_end[abi:ne200100]<siri::intelligence::ValidationResult const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  v5 = (v4 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    *(v4 + 24) = *(a2 + 24);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v7 = *(a2 + 32);
    *(v4 + 48) = *(a2 + 48);
    *(v4 + 32) = v7;
  }

  *(v4 + 56) = *(a2 + 56);
  *(a1 + 8) = v4 + 64;
}

void sub_254D769D0(_Unwind_Exception *exception_object)
{
  if (*(v3 + 31) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<siri::intelligence::ValidationResult>::__emplace_back_slow_path<siri::intelligence::ValidationResult const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<siri::intelligence::ValidationResult>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v27 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::ValidationResult>>(a1, v7);
  }

  v8 = v2 << 6;
  v24 = 0;
  v25 = v2 << 6;
  v26 = (v2 << 6);
  v9 = (v2 << 6);
  *v9 = *a2;
  v10 = (v9 + 2);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v10, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v11 = *(a2 + 8);
    v10->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v10->__r_.__value_.__l.__data_ = v11;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v8 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v12 = *(a2 + 32);
    *(v8 + 48) = *(a2 + 48);
    *(v8 + 32) = v12;
  }

  *(v8 + 56) = *(a2 + 56);
  *&v26 = v26 + 64;
  v13 = *a1;
  v14 = a1[1];
  v28[0] = a1;
  v28[1] = &v30;
  v28[2] = &v31;
  v15 = v25 + v13 - v14;
  v30 = v15;
  v31 = v15;
  if (v13 == v14)
  {
    v29 = 1;
  }

  else
  {
    v16 = v13;
    v17 = v25 + v13 - v14;
    do
    {
      *v17 = *v16;
      v18 = *(v16 + 8);
      *(v17 + 24) = *(v16 + 24);
      *(v17 + 8) = v18;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *(v16 + 8) = 0;
      v19 = *(v16 + 32);
      *(v17 + 48) = *(v16 + 48);
      *(v17 + 32) = v19;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 32) = 0;
      *(v17 + 56) = *(v16 + 56);
      v16 += 64;
      v17 += 64;
    }

    while (v16 != v14);
    v31 = v17;
    v29 = 1;
    do
    {
      std::allocator<siri::intelligence::ValidationResult>::destroy[abi:ne200100](a1, v13);
      v13 += 64;
    }

    while (v13 != v14);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::ValidationResult>,siri::intelligence::ValidationResult*>>::~__exception_guard_exceptions[abi:ne200100](v28);
  v20 = *a1;
  *a1 = v15;
  v21 = a1[2];
  v23 = v26;
  *(a1 + 1) = v26;
  *&v26 = v20;
  *(&v26 + 1) = v21;
  v24 = v20;
  v25 = v20;
  std::__split_buffer<siri::intelligence::ValidationResult>::~__split_buffer(&v24);
  return v23;
}

void sub_254D76BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v5 + 31) < 0)
  {
    operator delete(*v4);
  }

  std::__split_buffer<siri::intelligence::ValidationResult>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<siri::intelligence::ValidationResult>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(a1 + 32);
    *(a1 + 16) = i - 64;
    std::allocator<siri::intelligence::ValidationResult>::destroy[abi:ne200100](v4, i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<siri::intelligence::ValidationResult>::__assign_with_size[abi:ne200100]<siri::intelligence::ValidationResult*,siri::intelligence::ValidationResult*>(uint64_t *a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (a4 > (v8 - *a1) >> 6)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v9)
      {
        do
        {
          v10 -= 64;
          std::allocator<siri::intelligence::ValidationResult>::destroy[abi:ne200100](a1, v10);
        }

        while (v10 != v9);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 58))
    {
      v12 = v8 >> 5;
      if (v8 >> 5 <= a4)
      {
        v12 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFC0)
      {
        v13 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      std::vector<siri::intelligence::ValidationResult>::__vallocate[abi:ne200100](a1, v13);
    }

    std::vector<siri::intelligence::ValidationResult>::__throw_length_error[abi:ne200100]();
  }

  v14 = a1[1] - v9;
  if (a4 <= v14 >> 6)
  {
    v15 = std::__copy_impl::operator()[abi:ne200100]<siri::intelligence::ValidationResult *,siri::intelligence::ValidationResult *,siri::intelligence::ValidationResult *>(a2, a3, v9);
    for (i = a1[1]; i != v15; std::allocator<siri::intelligence::ValidationResult>::destroy[abi:ne200100](a1, i))
    {
      i -= 64;
    }

    a1[1] = v15;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<siri::intelligence::ValidationResult *,siri::intelligence::ValidationResult *,siri::intelligence::ValidationResult *>(a2, a2 + v14, v9);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<siri::intelligence::ValidationResult>,siri::intelligence::ValidationResult*,siri::intelligence::ValidationResult*,siri::intelligence::ValidationResult*>(a1, (a2 + v14), a3, a1[1]);
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<siri::intelligence::ValidationResult *,siri::intelligence::ValidationResult *,siri::intelligence::ValidationResult *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 = *v5;
      std::string::operator=((a3 + 8), (v5 + 8));
      std::string::operator=((a3 + 32), (v5 + 32));
      *(a3 + 56) = *(v5 + 56);
      a3 += 64;
      v5 += 64;
    }

    while (v5 != a2);
  }

  return a3;
}

void YAML::Stream::Stream(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  operator new[]();
}

void YAML::Stream::~Stream(YAML::Stream *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    MEMORY[0x259C29D70](v2, 0x1000C8077774924);
  }

  std::deque<char>::~deque[abi:ne200100](this + 3);
}

uint64_t YAML::Stream::peek(YAML::Stream *this)
{
  if (*(this + 8))
  {
    return *(*(*(this + 4) + ((*(this + 7) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(this + 7) & 0xFFFLL));
  }

  else
  {
    return 4;
  }
}

BOOL YAML::Stream::operator BOOL(void *a1)
{
  if (!*(*a1 + *(**a1 - 24) + 32))
  {
    return 1;
  }

  if (a1[8])
  {
    return *(*(a1[4] + ((a1[7] >> 9) & 0x7FFFFFFFFFFFF8)) + (a1[7] & 0xFFFLL)) != 4;
  }

  return 0;
}

uint64_t YAML::Stream::get(YAML::Stream *this)
{
  if (*(this + 8))
  {
    v2 = *(*(*(this + 4) + ((*(this + 7) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(this + 7) & 0xFFFLL));
  }

  else
  {
    v2 = 4;
  }

  YAML::Stream::AdvanceCurrent(this);
  ++*(this + 4);
  if (v2 == 10)
  {
    *(this + 12) = (*(this + 3) + 1);
  }

  return v2;
}

uint64_t YAML::Stream::AdvanceCurrent(YAML::Stream *this)
{
  v2 = *(this + 8);
  if (!v2 || (++*(this + 7), *(this + 8) = v2 - 1, result = std::deque<char>::__maybe_remove_front_spare[abi:ne200100](this + 24, 1), ++*(this + 2), !*(this + 8)))
  {

    return YAML::Stream::_ReadAheadTo(this, 0);
  }

  return result;
}

void YAML::Stream::get(YAML::Stream *this@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  v3 = a2;
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::reserve(a3, a2);
  if (v3 >= 1)
  {
    do
    {
      v6 = YAML::Stream::get(this);
      std::string::push_back(a3, v6);
      --v3;
    }

    while (v3);
  }
}

void sub_254D77470(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

YAML::Stream *YAML::Stream::eat(YAML::Stream *this, int a2)
{
  if (a2 >= 1)
  {
    v2 = a2;
    v3 = this;
    do
    {
      this = YAML::Stream::get(v3);
      --v2;
    }

    while (v2);
  }

  return this;
}

BOOL YAML::Stream::_ReadAheadTo(YAML::Stream *this, unint64_t a2)
{
  for (i = *this; !*(i + *(*i - 24) + 32); i = *this)
  {
    v5 = *(this + 8);
    if (v5 > a2)
    {
      return v5 > a2;
    }

    v6 = *(this + 5);
    if (v6 <= 1)
    {
      if (v6)
      {
        if (v6 != 1)
        {
          continue;
        }

LABEL_11:
        YAML::Stream::StreamInUtf16(this);
        continue;
      }

      YAML::Stream::StreamInUtf8(this);
    }

    else
    {
      if (v6 == 2)
      {
        goto LABEL_11;
      }

      if (v6 == 3 || v6 == 4)
      {
        YAML::Stream::StreamInUtf32(this);
      }
    }
  }

  v8 = 4;
  std::deque<char>::push_back(this + 3, &v8);
  v5 = *(this + 8);
  return v5 > a2;
}

void *YAML::Stream::StreamInUtf8(YAML::Stream *this)
{
  result = YAML::Stream::GetNextByte(this);
  if (!*(*this + *(**this - 24) + 32))
  {
    v3 = result;
    return std::deque<char>::push_back(this + 3, &v3);
  }

  return result;
}

void *YAML::Stream::StreamInUtf16(YAML::Stream *this)
{
  v2 = *(this + 5);
  NextByte = YAML::Stream::GetNextByte(this);
  result = YAML::Stream::GetNextByte(this);
  v15 = result;
  if (*(*this + *(**this - 24) + 32))
  {
    return result;
  }

  v4 = v2 == 2;
  v5 = v2 != 2;
  if (v2 == 2)
  {
    p_NextByte = &NextByte;
  }

  else
  {
    p_NextByte = &v15;
  }

  v7 = *p_NextByte;
  if ((v7 & 0xFC) != 0xDC)
  {
    v10 = *(&NextByte + (v2 == 2)) | (v7 << 8);
    if ((v7 & 0xFC) != 0xD8)
    {
LABEL_13:
      v8 = (this + 24);
      v9 = v10;
      goto LABEL_14;
    }

    while (1)
    {
      v11 = v10;
      NextByte = YAML::Stream::GetNextByte(this);
      v15 = YAML::Stream::GetNextByte(this);
      if (*(*this + *(**this - 24) + 32))
      {
        break;
      }

      v12 = *(&NextByte + v5);
      v10 = *(&NextByte + v4) | (v12 << 8);
      v13 = (v12 + 32);
      if (v13 > 0xFB)
      {
        v10 = (v10 & 0x3FF | ((v11 & 0x3FF) << 10)) + 0x10000;
        goto LABEL_13;
      }

      YAML::QueueUnicodeCodepoint(this + 3, 0xFFFDuLL);
      if (v13 <= 0xF7)
      {
        v8 = (this + 24);
        v9 = v11;
        goto LABEL_14;
      }
    }
  }

  v8 = (this + 24);
  v9 = 65533;
LABEL_14:

  return YAML::QueueUnicodeCodepoint(v8, v9);
}

void *YAML::Stream::StreamInUtf32(YAML::Stream *this)
{
  if (*(this + 5) == 4)
  {
    v2 = &unk_254E20158;
  }

  else
  {
    v2 = &YAML::Stream::StreamInUtf32(void)const::indexes;
  }

  v6[0] = YAML::Stream::GetNextByte(this);
  v6[1] = YAML::Stream::GetNextByte(this);
  v6[2] = YAML::Stream::GetNextByte(this);
  result = YAML::Stream::GetNextByte(this);
  v6[3] = result;
  if (!*(*this + *(**this - 24) + 32))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v5 = v6[*&v2[v4]] | (v5 << 8);
      v4 += 4;
    }

    while (v4 != 16);

    return YAML::QueueUnicodeCodepoint(this + 3, v5);
  }

  return result;
}

void *std::deque<char>::push_back(void *result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = ((v5 - v6) << 9) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = std::deque<char>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  *(*(v6 + ((v8 >> 9) & 0x7FFFFFFFFFFFF8)) + (v8 & 0xFFF)) = *a2;
  ++v3[5];
  return result;
}

uint64_t YAML::Stream::GetNextByte(YAML::Stream *this)
{
  v2 = *(this + 11);
  if (v2 < *(this + 10))
  {
    goto LABEL_5;
  }

  v3 = *(*this + *(**this - 24) + 40);
  v4 = (*(*v3 + 64))(v3, *(this + 9), 2048);
  v2 = 0;
  *(this + 10) = v4;
  *(this + 11) = 0;
  if (v4)
  {
    goto LABEL_5;
  }

  v5 = (*this + *(**this - 24));
  std::ios_base::clear(v5, v5->__rdstate_ | 2);
  if (*(this + 10))
  {
    v2 = *(this + 11);
LABEL_5:
    v6 = *(this + 9);
    *(this + 11) = v2 + 1;
    return *(v6 + v2);
  }

  return 0;
}

void *YAML::QueueUnicodeCodepoint(void *a1, unint64_t a2)
{
  if (a2 == 4)
  {
    v3 = 65533;
  }

  else
  {
    v3 = a2;
  }

  if (v3 > 0x7F)
  {
    if (v3 > 0x7FF)
    {
      if (v3 >> 16)
      {
        v9 = (v3 >> 18) & 7 | 0xF0;
        std::deque<char>::push_back(a1, &v9);
        v8 = (v3 >> 12) & 0x3F | 0x80;
        std::deque<char>::push_back(a1, &v8);
        v7 = (v3 >> 6) & 0x3F | 0x80;
        std::deque<char>::push_back(a1, &v7);
        v6 = v3 & 0x3F | 0x80;
        v4 = &v6;
      }

      else
      {
        v12 = (v3 >> 12) | 0xE0;
        std::deque<char>::push_back(a1, &v12);
        v11 = (v3 >> 6) & 0x3F | 0x80;
        std::deque<char>::push_back(a1, &v11);
        v10 = v3 & 0x3F | 0x80;
        v4 = &v10;
      }
    }

    else
    {
      v14 = (v3 >> 6) | 0xC0;
      std::deque<char>::push_back(a1, &v14);
      v13 = v3 & 0x3F | 0x80;
      v4 = &v13;
    }
  }

  else
  {
    v15 = v3;
    v4 = &v15;
  }

  return std::deque<char>::push_back(a1, v4);
}

void *std::deque<char>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1000;
  v3 = v1 - 4096;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Scanner::FLOW_MARKER *>>(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<YAML::Scanner::FLOW_MARKER *>::emplace_back<YAML::Scanner::FLOW_MARKER *&>(a1, &v10);
}

void sub_254D77F0C(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<char>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 2048;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 4096;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<YAML::CollectionType::value *>::~__split_buffer(a1);
}

uint64_t std::deque<char>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x1000)
  {
    a2 = 1;
  }

  if (v2 < 0x2000)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 4096;
  }

  return v4 ^ 1u;
}

siri::intelligence::VariableFunction *siri::intelligence::VariableFunction::VariableFunction(siri::intelligence::VariableFunction *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v4, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_FUNCTION);
  siri::intelligence::Variable::Variable(this, &v4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  *this = &unk_28671C578;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  return this;
}

void sub_254D780F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t siri::intelligence::VariableFunction::VariableFunction(uint64_t a1, const std::string *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_FUNCTION);
  siri::intelligence::Variable::Variable(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_28671C578;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  return a1;
}

void sub_254D781B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::VariableFunction::VariableFunction(uint64_t a1, const std::string *a2, const std::string *a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_FUNCTION);
  siri::intelligence::Variable::Variable(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_28671C578;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  std::string::operator=((a1 + 72), a3);
  *(a1 + 64) = 1;
  operator new();
}

void sub_254D7832C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v19);
  v20 = *(v15 + 104);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (*(v15 + 95) < 0)
  {
    operator delete(*v16);
  }

  siri::intelligence::Variable::~Variable(v15);
  _Unwind_Resume(a1);
}

std::string *siri::intelligence::VariableFunction::SetName(std::string *a1, const std::string *a2)
{
  result = std::string::operator=(a1 + 3, a2);
  a1[2].__r_.__value_.__s.__data_[16] = 1;
  return result;
}

void siri::intelligence::VariableFunction::SetArguments(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 104);
  *(a1 + 96) = v3;
  *(a1 + 104) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t siri::intelligence::VariableFunction::VariableFunction(uint64_t a1, const std::string *a2, const std::string *a3, uint64_t *a4)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_FUNCTION);
  siri::intelligence::Variable::Variable(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_28671C578;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  std::string::operator=((a1 + 72), a3);
  *(a1 + 64) = 1;
  v8 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 104);
  *(a1 + 96) = v8;
  *(a1 + 104) = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return a1;
}

void sub_254D784EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v18 = *(v15 + 104);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (*(v15 + 95) < 0)
  {
    operator delete(*v16);
  }

  siri::intelligence::Variable::~Variable(v15);
  _Unwind_Resume(a1);
}

void siri::intelligence::VariableFunction::GetName(siri::intelligence::VariableFunction *this@<X0>, std::string *a2@<X8>)
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

uint64_t siri::intelligence::VariableFunction::GetArguments@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 104);
  *a2 = *(this + 96);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void siri::intelligence::VariableFunction::SetUndefined(siri::intelligence::VariableFunction *this)
{
  MEMORY[0x259C299D0](this + 72, "");
  v2 = *(this + 13);
  *(this + 12) = 0;
  *(this + 13) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 64) = 0;
}

void siri::intelligence::VariableFunction::SetEmpty(siri::intelligence::VariableFunction *this)
{
  MEMORY[0x259C299D0](this + 72, "");
  v2 = *(this + 13);
  *(this + 12) = 0;
  *(this + 13) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 64) = 1;
}

uint64_t siri::intelligence::VariableFunction::IsEmpty(siri::intelligence::VariableFunction *this)
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

void siri::intelligence::VariableFunction::AsString(siri::intelligence::VariableFunction *this@<X0>, std::string *a2@<X8>)
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

void siri::intelligence::VariableFunction::GetExpanded(siri::intelligence::VariableFunction *this@<X0>, siri::intelligence::Memory *a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 12);
  if (!v6)
  {
    lpsrc = 0;
    v14 = 0;
    v7 = this + 72;
LABEL_7:
    v11 = 0;
    v12 = 0;
    goto LABEL_8;
  }

  (*(*v6 + 88))(&lpsrc);
  v7 = this + 72;
  if (!lpsrc)
  {
    goto LABEL_7;
  }

  v8 = **lpsrc;
  if (!v9)
  {
    goto LABEL_7;
  }

  v11 = v9;
  v12 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_8:
  siri::intelligence::FunctionHandler::Execute(v7, &v11, a2, a3);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (*a3)
  {
    if (a2)
    {
      siri::intelligence::Memory::ExpandVariables(a2, this + 8, &__p);
    }

    else if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(this + 1), *(this + 2));
    }

    else
    {
      __p = *(this + 8);
    }

    std::string::operator=((*a3 + 8), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void sub_254D787E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  v21 = *(v19 + 8);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_254D78820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (!a13)
  {
    JUMPOUT(0x254D7880CLL);
  }

  JUMPOUT(0x254D78808);
}

void siri::intelligence::VariableFunction::GetExpandedType(siri::intelligence::VariableFunction *this@<X0>, std::string *a2@<X8>)
{
  v3 = *(this + 13);
  v4 = *(this + 12);
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  siri::intelligence::FunctionHandler::GetReturnType(this + 9, &v4, a2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_254D7888C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::VariableFunction::~VariableFunction(siri::intelligence::VariableFunction *this)
{
  *this = &unk_28671C578;
  v2 = *(this + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  siri::intelligence::Variable::~Variable(this);
}

{
  *this = &unk_28671C578;
  v2 = *(this + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  siri::intelligence::Variable::~Variable(this);

  JUMPOUT(0x259C29D90);
}

uint64_t siri::intelligence::ParseJsonToVariable@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(result + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(result + 8);
  }

  if (v3)
  {
    v4 = result;
    rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::GenericDocument(v11, 0, 1024, 0);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    v10[0] = v5;
    v10[1] = v5;
    if (*(rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::ParseStream<128u,rapidjson::UTF8<char>,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(v11, v10) + 88))
    {
      if (*(v4 + 23) >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = *v4;
      }

      siri::intelligence::Log::Error("Illegal variable string: %s", v6, v8);
      *a2 = 0;
      a2[1] = 0;
    }

    else
    {
      siri::intelligence::ParseJsonValueToVariable(v11, a2, v7);
    }

    result = rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::~GenericDocument(v11);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t siri::intelligence::ParseJsonValueToVariable@<X0>(uint64_t result@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v4 = *(result + 22);
  if ((v4 & 0x400) != 0)
  {
    *&v7 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetString(result);
    std::allocate_shared[abi:ne200100]<siri::intelligence::VariableString,std::allocator<siri::intelligence::VariableString>,char const(&)[1],char const*,0>();
  }

  if ((v4 & 8) != 0)
  {
    LOBYTE(v6) = v4 == 10;
    std::allocate_shared[abi:ne200100]<siri::intelligence::VariableBoolean,std::allocator<siri::intelligence::VariableBoolean>,char const(&)[1],BOOL,0>();
  }

  if ((v4 & 0x10) != 0)
  {
    if ((v4 & 0x200) != 0)
    {
      v5 = *result;
      goto LABEL_22;
    }

    if ((v4 & 0x20) != 0)
    {
      v5 = *result;
      goto LABEL_22;
    }

    if ((v4 & 0x40) != 0)
    {
      LODWORD(a3) = *result;
    }

    else
    {
      if ((v4 & 0x80) != 0)
      {
        v5 = *result;
LABEL_22:
        *&v7 = v5;
        std::allocate_shared[abi:ne200100]<siri::intelligence::VariableNumber,std::allocator<siri::intelligence::VariableNumber>,char const(&)[1],double,0>();
      }

      if ((v4 & 0x100) == 0)
      {
        __assert_rtn("GetDouble", "document.h", 1745, "(data_.f.flags & kUint64Flag) != 0");
      }

      a3 = *result;
    }

    v5 = *&a3;
    goto LABEL_22;
  }

  if (v4 == 3)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4siri12intelligence18VariableDictionaryENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  if (v4 == 4)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4siri12intelligence13VariableArrayENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_254D78D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetString(uint64_t result)
{
  if ((*(result + 22) & 0x400) == 0)
  {
    __assert_rtn("GetString", "document.h", 1767, "IsString()");
  }

  if ((*(result + 22) & 0x1000) == 0)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::GenericDocument(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = a4;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = a3;
  *(result + 88) = 0;
  *(result + 96) = 0;
  if (!a2)
  {
    operator new();
  }

  return result;
}

uint64_t rapidjson::internal::Stack<rapidjson::CrtAllocator>::Destroy(uint64_t a1)
{
  free(*(a1 + 16));
  result = *(a1 + 8);
  if (result)
  {

    JUMPOUT(0x259C29D90);
  }

  return result;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::~GenericDocument(uint64_t a1)
{
  rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Destroy(a1);
  rapidjson::internal::Stack<rapidjson::CrtAllocator>::Destroy(a1 + 40);
  return a1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Destroy(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::~MemoryPoolAllocator(result);

    JUMPOUT(0x259C29D90);
  }

  return result;
}

uint64_t rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::~MemoryPoolAllocator(uint64_t a1)
{
  rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Clear(a1);
  v2 = *(a1 + 32);
  if (v2)
  {
    MEMORY[0x259C29D90](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void *rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Clear(void **a1)
{
  result = *a1;
  if (result)
  {
    while (result != a1[2])
    {
      v3 = result[2];
      free(result);
      *a1 = v3;
      result = v3;
      if (!v3)
      {
        return result;
      }
    }

    result[1] = 0;
  }

  return result;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::ParseStream<128u,rapidjson::UTF8<char>,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v9 = a1;
  v10 = v3;
  v11 = 0u;
  v12 = 0u;
  v13 = 256;
  v14 = 0;
  v15 = 0;
  v16 = 2;
  v4 = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Parse<128u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(&v10, a2, a1);
  *(a1 + 88) = v4;
  *(a1 + 96) = v5;
  if (!v4)
  {
    v6 = *(a1 + 64);
    if (v6 - *(a1 + 56) != 24)
    {
      __assert_rtn("ParseStream", "document.h", 2259, "stack_.GetSize() == sizeof(ValueType)");
    }

    *(a1 + 64) = v6 - 24;
    if (v6 - 24 != a1)
    {
      v7 = *(v6 - 24);
      *(a1 + 16) = *(v6 - 8);
      *a1 = v7;
      *(v6 - 2) = 0;
    }
  }

  rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::ClearStackOnExit::~ClearStackOnExit(&v9);
  rapidjson::internal::Stack<rapidjson::CrtAllocator>::Destroy(&v10);
  return a1;
}

void sub_254D7912C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::ClearStackOnExit::~ClearStackOnExit(&a9);
  rapidjson::internal::Stack<rapidjson::CrtAllocator>::Destroy(&a10);
  _Unwind_Resume(a1);
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Parse<128u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  for (i = *a2; ; ++i)
  {
    v6 = *i;
    v7 = v6 > 0x20;
    v8 = (1 << v6) & 0x100002600;
    if (v7 || v8 == 0)
    {
      break;
    }
  }

  *a2 = i;
  if (!*i)
  {
    v15 = 1;
LABEL_19:
    v16 = &i[-a2[1]];
    *(a1 + 48) = v15;
    *(a1 + 56) = v16;
    goto LABEL_16;
  }

  rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<128u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(a1, a2, a3);
  if (!*(a1 + 48))
  {
    for (i = *a2; ; ++i)
    {
      v10 = *i;
      v7 = v10 > 0x20;
      v11 = (1 << v10) & 0x100002600;
      if (v7 || v11 == 0)
      {
        break;
      }
    }

    *a2 = i;
    if (*i)
    {
      v15 = 2;
      goto LABEL_19;
    }
  }

LABEL_16:
  result = *(a1 + 48);
  v14 = *(a1 + 56);
  *(a1 + 24) = *(a1 + 16);
  return result;
}

uint64_t rapidjson::internal::Stack<rapidjson::CrtAllocator>::Pop<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 - *(a1 + 16) < (24 * a2))
  {
    __assert_rtn("Pop", "stack.h", 139, "GetSize() >= count * sizeof(T)");
  }

  v3 = v2 - 24 * a2;
  *(a1 + 24) = v3;
  return v3;
}

void rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<128u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t result, void *a2, uint64_t a3)
{
  v3 = **a2;
  if (v3 > 0x6D)
  {
    if (v3 == 123)
    {
      rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseObject<128u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(result, a2, a3);
      return;
    }

    if (v3 != 116)
    {
      if (v3 == 110)
      {
        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseNull<128u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(result, a2, a3);
        return;
      }

      goto LABEL_12;
    }

    rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseTrue<128u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(result, a2, a3);
  }

  else
  {
    if (v3 == 34)
    {
      rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<128u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(result, a2, a3);
      return;
    }

    if (v3 != 91)
    {
      if (v3 == 102)
      {
        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseFalse<128u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(result, a2, a3);
        return;
      }

LABEL_12:
      rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseNumber<128u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(result, a2, a3);
      return;
    }

    rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseArray<128u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(result, a2, a3);
  }
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseNull<128u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *a2;
  if (**a2 != 110)
  {
    __assert_rtn("ParseNull", "reader.h", 855, "is.Peek() == 'n'");
  }

  v4 = v3 + 1;
  *a2 = v3 + 1;
  if (v3[1] == 117 && (v4 = v3 + 2, *a2 = v3 + 2, v3[2] == 108) && (v4 = v3 + 3, *a2 = v3 + 3, v3[3] == 108))
  {
    *a2 = v3 + 4;
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>((a3 + 40), 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = 0;
  }

  else
  {
    if (*(result + 48))
    {
      __assert_rtn("ParseNull", "reader.h", 863, "!HasParseError()");
    }

    v5 = &v4[-a2[1]];
    *(result + 48) = 3;
    *(result + 56) = v5;
  }

  return result;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseTrue<128u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *a2;
  if (**a2 != 116)
  {
    __assert_rtn("ParseTrue", "reader.h", 868, "is.Peek() == 't'");
  }

  v4 = v3 + 1;
  *a2 = v3 + 1;
  if (v3[1] == 114 && (v4 = v3 + 2, *a2 = v3 + 2, v3[2] == 117) && (v4 = v3 + 3, *a2 = v3 + 3, v3[3] == 101))
  {
    *a2 = v3 + 4;
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>((a3 + 40), 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = 0;
    *(result + 22) = 10;
  }

  else
  {
    if (*(result + 48))
    {
      __assert_rtn("ParseTrue", "reader.h", 876, "!HasParseError()");
    }

    v5 = &v4[-a2[1]];
    *(result + 48) = 3;
    *(result + 56) = v5;
  }

  return result;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseFalse<128u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *a2;
  if (**a2 != 102)
  {
    __assert_rtn("ParseFalse", "reader.h", 881, "is.Peek() == 'f'");
  }

  v4 = v3 + 1;
  *a2 = v3 + 1;
  if (v3[1] == 97 && (v4 = v3 + 2, *a2 = v3 + 2, v3[2] == 108) && (v4 = v3 + 3, *a2 = v3 + 3, v3[3] == 115) && (v4 = v3 + 4, *a2 = v3 + 4, v3[4] == 101))
  {
    *a2 = v3 + 5;
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>((a3 + 40), 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = 0;
    *(result + 22) = 9;
  }

  else
  {
    if (*(result + 48))
    {
      __assert_rtn("ParseFalse", "reader.h", 889, "!HasParseError()");
    }

    v5 = &v4[-a2[1]];
    *(result + 48) = 3;
    *(result + 56) = v5;
  }

  return result;
}

double rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<128u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v11 = *a2;
  v12 = a2;
  if (*v11 != 34)
  {
    __assert_rtn("ParseString", "reader.h", 961, "s.Peek() == '\\'");
  }

  *&v11 = v11 + 1;
  v9 = a1;
  v10 = 0;
  rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseStringToStream<128u,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(a1, &v11, &v9);
  if (!*(a1 + 48))
  {
    v5 = v10;
    v6 = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>::Pop(&v9);
    if ((rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::String(a3, v6, v5 - 1, 1) & 1) == 0)
    {
      if (*(a1 + 48))
      {
        __assert_rtn("ParseString", "reader.h", 983, "!HasParseError()");
      }

      v8 = v11 - *(&v11 + 1);
      *(a1 + 48) = 16;
      *(a1 + 56) = v8;
    }
  }

  result = *&v11;
  *v12 = v11;
  return result;
}

void rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseObject<128u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t a1, unsigned __int8 **a2, void *a3)
{
  if (**a2 != 123)
  {
    __assert_rtn("ParseObject", "reader.h", 739, "is.Peek() == '{'");
  }

  ++*a2;
  v6 = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5, 1);
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = 0;
  *(v6 + 22) = 3;
  for (i = *a2; ; ++i)
  {
    v8 = *i;
    v9 = v8 > 0x20;
    v10 = (1 << v8) & 0x100002600;
    if (v9 || v10 == 0)
    {
      break;
    }
  }

  *a2 = i;
  if (!*(a1 + 48))
  {
    v12 = *i;
    if (v12 == 125)
    {
      *a2 = i + 1;
      if (rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndObject(a3, 0))
      {
        return;
      }

      if (*(a1 + 48))
      {
        __assert_rtn("ParseObject", "reader.h", 750, "!HasParseError()");
      }

LABEL_47:
      v34 = (*a2 - a2[1]);
      v35 = 16;
LABEL_48:
      *(a1 + 48) = v35;
      *(a1 + 56) = v34;
      return;
    }

    if (v12 != 34)
    {
LABEL_45:
      v34 = (i - a2[1]);
      v35 = 4;
      goto LABEL_48;
    }

    v13 = 0;
    while (1)
    {
      v14.n128_f64[0] = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<128u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(a1, a2, a3);
      if (*(a1 + 48))
      {
        break;
      }

      v15 = *a2;
      for (j = *a2; ; ++j)
      {
        v17 = *j;
        v9 = v17 > 0x20;
        v18 = (1 << v17) & 0x100002600;
        if (v9 || v18 == 0)
        {
          break;
        }

        ++v15;
      }

      *a2 = j;
      if (*j != 58)
      {
        v34 = (v15 - a2[1]);
        v35 = 5;
        goto LABEL_48;
      }

      v20 = j + 1;
      *a2 = j + 1;
      while (1)
      {
        v21 = *v20;
        v9 = v21 > 0x20;
        v22 = (1 << v21) & 0x100002600;
        if (v9 || v22 == 0)
        {
          break;
        }

        ++v20;
      }

      *a2 = v20;
      rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<128u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(a1, a2, a3, v14);
      if (*(a1 + 48))
      {
        return;
      }

      v24 = *a2;
      for (k = *a2; ; ++k)
      {
        v26 = *k;
        v9 = v26 > 0x20;
        v27 = (1 << v26) & 0x100002600;
        if (v9 || v27 == 0)
        {
          break;
        }

        ++v24;
      }

      *a2 = k;
      ++v13;
      v29 = *k;
      if (v29 != 44)
      {
        if (v29 != 125)
        {
          v34 = (v24 - a2[1]);
          v35 = 6;
          goto LABEL_48;
        }

        *a2 = k + 1;
        if (rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndObject(a3, v13))
        {
          return;
        }

        if (*(a1 + 48))
        {
          __assert_rtn("ParseObject", "reader.h", 787, "!HasParseError()");
        }

        goto LABEL_47;
      }

      i = k + 1;
      *a2 = k + 1;
      while (1)
      {
        v30 = *i;
        v9 = v30 > 0x20;
        v31 = (1 << v30) & 0x100002600;
        if (v9 || v31 == 0)
        {
          break;
        }

        ++i;
      }

      *a2 = i;
      v33 = *i;
      if (v33 == 125)
      {
        if (rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndObject(a3, v13))
        {
          ++*a2;
          return;
        }

        if (*(a1 + 48))
        {
          __assert_rtn("ParseObject", "reader.h", 796, "!HasParseError()");
        }

        goto LABEL_47;
      }

      if (v33 != 34)
      {
        goto LABEL_45;
      }
    }
  }
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseArray<128u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t a1, unsigned __int8 **a2, void *a3)
{
  if (**a2 != 91)
  {
    __assert_rtn("ParseArray", "reader.h", 807, "is.Peek() == '['");
  }

  ++*a2;
  result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5, 1);
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 22) = 4;
  for (i = *a2; ; ++i)
  {
    v9 = *i;
    v10 = v9 > 0x20;
    v11 = (1 << v9) & 0x100002600;
    if (v10 || v11 == 0)
    {
      break;
    }
  }

  *a2 = i;
  if (!*(a1 + 48))
  {
    if (*i == 93)
    {
      *a2 = i + 1;
      result = rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndArray(a3, 0);
      if ((result & 1) == 0)
      {
        if (*(a1 + 48))
        {
          __assert_rtn("ParseArray", "reader.h", 818, "!HasParseError()");
        }

LABEL_32:
        v24 = (*a2 - a2[1]);
        v25 = 16;
LABEL_33:
        *(a1 + 48) = v25;
        *(a1 + 56) = v24;
      }
    }

    else
    {
      v13 = 0;
      while (1)
      {
        result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<128u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(a1, a2, a3, v7);
        if (*(a1 + 48))
        {
          break;
        }

        v14 = *a2;
        for (j = *a2; ; ++j)
        {
          v16 = *j;
          v10 = v16 > 0x20;
          v17 = (1 << v16) & 0x100002600;
          if (v10 || v17 == 0)
          {
            break;
          }

          ++v14;
        }

        ++v13;
        *a2 = j;
        v19 = *j;
        if (v19 != 44)
        {
          if (v19 != 93)
          {
            v24 = (v14 - a2[1]);
            v25 = 7;
            goto LABEL_33;
          }

          *a2 = j + 1;
          result = rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndArray(a3, v13);
          if (result)
          {
            return result;
          }

          if (*(a1 + 48))
          {
            __assert_rtn("ParseArray", "reader.h", 836, "!HasParseError()");
          }

          goto LABEL_32;
        }

        v20 = j + 1;
        *a2 = j + 1;
        while (1)
        {
          v21 = *v20;
          v10 = v21 > 0x20;
          v22 = (1 << v21) & 0x100002600;
          if (v10 || v22 == 0)
          {
            break;
          }

          ++v20;
        }

        *a2 = v20;
        if (*v20 == 93)
        {
          result = rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndArray(a3, v13);
          if (result)
          {
            ++*a2;
            return result;
          }

          if (*(a1 + 48))
          {
            __assert_rtn("ParseArray", "reader.h", 845, "!HasParseError()");
          }

          goto LABEL_32;
        }
      }
    }
  }

  return result;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseNumber<128u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t result, unsigned __int8 **a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = **a2;
  if (v6 == 45)
  {
    v8 = v4 + 1;
    v7 = v4[1];
  }

  else
  {
    v7 = **a2;
    v8 = *a2;
  }

  v9 = v7 - 48;
  if (v7 == 48)
  {
    v18 = 0;
    v20 = 0;
    v14 = 0;
    v21 = 0;
    v13 = 0.0;
    v42 = *++v8;
    v10 = v42;
    goto LABEL_40;
  }

  if ((v7 - 49) > 8)
  {
    if (*(result + 48))
    {
      __assert_rtn("ParseNumber", "reader.h", 1532, "!HasParseError()");
    }

    v40 = (v8 - v5);
    v41 = 3;
    goto LABEL_115;
  }

  v11 = *++v8;
  v10 = v11;
  v12 = v11 - 48;
  v13 = 0.0;
  if (v6 != 45)
  {
    if (v12 <= 9)
    {
      v14 = 0;
      v15 = 429496729;
      while (1)
      {
        if (v9 > 0x19999998)
        {
          if (v9 != 429496729)
          {
LABEL_88:
            v15 = v9;
            goto LABEL_21;
          }

          if (v10 > 0x35)
          {
            goto LABEL_21;
          }
        }

        v17 = *++v8;
        v9 = v10 + 10 * v9 - 48;
        ++v14;
        v10 = v17;
        if (v17 - 48 >= 0xA)
        {
LABEL_28:
          v18 = 0;
          v20 = 0;
          goto LABEL_29;
        }
      }
    }

    goto LABEL_103;
  }

  if (v12 > 9)
  {
LABEL_103:
    v18 = 0;
    v20 = 0;
    v14 = 0;
LABEL_29:
    v21 = 0;
    goto LABEL_40;
  }

  v14 = 0;
  v15 = 214748364;
  while (1)
  {
    if (v9 > 0xCCCCCCB)
    {
      if (v9 != 214748364)
      {
        goto LABEL_88;
      }

      if (v10 > 0x38)
      {
        break;
      }
    }

    v16 = *++v8;
    v9 = v10 + 10 * v9 - 48;
    ++v14;
    v10 = v16;
    if (v16 - 48 >= 0xA)
    {
      goto LABEL_28;
    }
  }

  v10 = 57;
LABEL_21:
  v18 = v15;
  if (v6 == 45)
  {
    while (v18 <= 0xCCCCCCCCCCCCCCBLL || v10 <= 0x38 && v18 == 0xCCCCCCCCCCCCCCCLL)
    {
      v19 = *++v8;
      v18 = (v10 & 0xF) + 10 * v18;
      ++v14;
      v10 = v19;
      if (v19 - 48 >= 0xA)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    while (v18 <= 0x1999999999999998 || v10 <= 0x35 && v18 == 0x1999999999999999)
    {
      v22 = *++v8;
      v18 = (v10 & 0xF) + 10 * v18;
      ++v14;
      v10 = v22;
      if (v22 - 48 >= 0xA)
      {
LABEL_38:
        v20 = 0;
        v13 = 0.0;
        goto LABEL_39;
      }
    }
  }

  v13 = v18;
  do
  {
    v23 = *++v8;
    v13 = (v10 - 48) + v13 * 10.0;
    v10 = v23;
  }

  while (v23 - 48 < 0xA);
  v20 = 1;
LABEL_39:
  v21 = 1;
  v9 = v15;
LABEL_40:
  v24 = v4 - v5;
  if (v10 == 46)
  {
    v25 = *++v8;
    v10 = v25;
    if (v25 - 58 <= 0xFFFFFFF5)
    {
      if (*(result + 48))
      {
        __assert_rtn("ParseNumber", "reader.h", 1575, "!HasParseError()");
      }

      v40 = (v8 - v5);
      v41 = 14;
      goto LABEL_115;
    }

    v26 = 0;
    if (v20)
    {
      goto LABEL_52;
    }

    if (!v21)
    {
      v18 = v9;
    }

    while (v10 <= 0x39 && !(v18 >> 53))
    {
      v28 = *++v8;
      v27 = v28;
      v18 = v10 - 48 + 10 * v18;
      --v26;
      if (v18)
      {
        ++v14;
      }

      v10 = v27;
      if (v27 <= 47)
      {
        v29 = 0;
        v13 = v18;
        goto LABEL_58;
      }
    }

    v13 = v18;
LABEL_52:
    while (v10 <= 0x39)
    {
      if (v14 <= 16)
      {
        v13 = (v10 - 48) + v13 * 10.0;
        --v26;
        if (v13 > 0.0)
        {
          ++v14;
        }
      }

      v30 = *++v8;
      v10 = v30;
      if (v30 <= 47)
      {
        v29 = 0;
        goto LABEL_58;
      }
    }

    v20 = 1;
  }

  else
  {
    v26 = 0;
  }

  if (v10 == 101 || v10 == 69)
  {
    v35 = v8 + 1;
    v34 = v8[1];
    if (!v21)
    {
      v18 = v9;
    }

    if (!v20)
    {
      v13 = v18;
    }

    if (v34 == 43)
    {
      v35 = v8 + 2;
      v34 = v8[2];
      if ((v34 - 48) < 0xA)
      {
        v36 = 3;
        goto LABEL_70;
      }
    }

    else if (v34 == 45)
    {
      v35 = v8 + 2;
      v43 = v8[2] - 48;
      if (v43 < 0xA)
      {
        v8 += 3;
        if (v26 >= 1)
        {
          __assert_rtn("ParseNumber", "reader.h", 1639, "expFrac <= 0");
        }

        v44 = *v8;
        if ((v44 - 48) <= 9)
        {
          while (1)
          {
            v43 = v44 + 10 * v43 - 48;
            if (v43 > (v26 + 2147483639) / 10)
            {
              break;
            }

            v45 = *++v8;
            v44 = v45;
            if ((v45 - 48) >= 0xA)
            {
              goto LABEL_106;
            }
          }

          do
          {
            v50 = *++v8;
          }

          while ((v50 - 48) < 0xA);
        }

LABEL_106:
        v29 = -v43;
LABEL_58:
        v31 = v26 + v29;
        if (v31 > -309)
        {
          if ((v31 & 0x80000000) == 0)
          {
            if (v31 >= 0x135)
            {
              v46 = "n >= 0 && n <= 308";
              v47 = 48;
              v48 = "pow10.h";
              v49 = "Pow10";
              goto LABEL_108;
            }

            v32 = v13 * rapidjson::internal::Pow10(int)::e[v31];
            goto LABEL_80;
          }

          v33 = -v31;
        }

        else
        {
          v32 = 0.0;
          if (v31 < 0xFFFFFD98)
          {
LABEL_83:
            result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>((a3 + 40), 1);
            v38 = -v32;
            if (v6 != 45)
            {
              v38 = v32;
            }

            *(result + 8) = 0;
            *(result + 16) = 0;
            *result = v38;
            v39 = 534;
LABEL_86:
            *(result + 22) = v39;
            goto LABEL_87;
          }

          v13 = v13 / 1.0e308;
          v33 = -308 - v31;
        }

        v32 = v13 / rapidjson::internal::Pow10(int)::e[v33];
LABEL_80:
        if (v32 > 1.79769313e308)
        {
          if (!*(result + 48))
          {
LABEL_82:
            *(result + 48) = 13;
            *(result + 56) = v24;
            goto LABEL_87;
          }

          v46 = "!HasParseError()";
          v47 = 1707;
          v48 = "reader.h";
          v49 = "ParseNumber";
LABEL_108:
          __assert_rtn(v49, v48, v47, v46);
        }

        goto LABEL_83;
      }
    }

    else if ((v34 - 48) < 0xA)
    {
      v36 = 2;
LABEL_70:
      v8 += v36;
      v29 = v34 - 48;
      do
      {
        v37 = *v8;
        if ((v37 - 48) > 9)
        {
          goto LABEL_58;
        }

        ++v8;
        v29 = v37 + 10 * v29 - 48;
      }

      while (v29 <= 308 - v26);
      if (*(result + 48))
      {
        __assert_rtn("ParseNumber", "reader.h", 1655, "!HasParseError()");
      }

      goto LABEL_82;
    }

    v8 = v35;
    if (*(result + 48))
    {
      __assert_rtn("ParseNumber", "reader.h", 1660, "!HasParseError()");
    }

    v40 = (v35 - v5);
    v41 = 15;
LABEL_115:
    *(result + 48) = v41;
    *(result + 56) = v40;
    goto LABEL_87;
  }

  v54 = v9;
  v55 = v24;
  v56 = result;
  v53 = v18;
  if (v20)
  {
    v29 = 0;
    goto LABEL_58;
  }

  if (!v21)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>((a3 + 40), 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (v6 == 45)
    {
      *result = -v54;
      v52 = -v54 < 0;
      v39 = 182;
    }

    else
    {
      *result = v54;
      v52 = v54 < 0;
      v39 = 470;
    }

    if (!v52)
    {
      v39 = 502;
    }

    goto LABEL_86;
  }

  if (v6 != 45)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>((a3 + 40), 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = v53;
    if (v53 < 0)
    {
      v51 = 278;
    }

    else
    {
      v51 = 406;
    }

    if (v53 >> 31)
    {
      v39 = 470;
    }

    else
    {
      v39 = 502;
    }

    if (HIDWORD(v53))
    {
      v39 = v51;
    }

    goto LABEL_86;
  }

  result = rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int64(a3, -v18);
  if ((result & 1) == 0)
  {
    if (*(v56 + 48))
    {
      __assert_rtn("ParseNumber", "reader.h", 1731, "!HasParseError()");
    }

    *(v56 + 48) = 16;
    *(v56 + 56) = v55;
  }

LABEL_87:
  *a2 = v8;
  a2[1] = v5;
  return result;
}

void sub_254D7A3F8(_Unwind_Exception *a1)
{
  *v1 = v3;
  v1[1] = v2;
  _Unwind_Resume(a1);
}

uint64_t rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(void *a1, uint64_t a2)
{
  if (24 * a2 > a1[4] - a1[3])
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1, a2);
  }

  return rapidjson::internal::Stack<rapidjson::CrtAllocator>::PushUnsafe<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1, a2);
}

uint64_t rapidjson::internal::Stack<rapidjson::CrtAllocator>::PushUnsafe<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    __assert_rtn("PushUnsafe", "stack.h", 130, "stackTop_");
  }

  if (24 * a2 > *(a1 + 32) - v2)
  {
    __assert_rtn("PushUnsafe", "stack.h", 131, "static_cast<std::ptrdiff_t>(sizeof(T) * count) <= (stackEnd_ - stackTop_)");
  }

  *(a1 + 24) = v2 + 24 * a2;
  return v2;
}

char *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(void *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[4] - v2 + ((a1[4] - v2 + 1) >> 1);
  }

  else
  {
    if (!*a1)
    {
      operator new();
    }

    v2 = 0;
    v3 = a1[5];
  }

  v4 = 24 * a2 - v2 + a1[3];
  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  return rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(a1, v5);
}

char *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(void *a1, size_t size)
{
  v4 = a1[2];
  v5 = a1[3];
  if (size)
  {
    result = malloc_type_realloc(v4, size, 0x8EA412C4uLL);
  }

  else
  {
    free(v4);
    result = 0;
  }

  a1[2] = result;
  a1[3] = &result[v5 - v4];
  a1[4] = &result[size];
  return result;
}

_BYTE *rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseStringToStream<128u,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(_BYTE *result, unsigned __int8 **a2, void **a3)
{
  v5 = result;
  while (1)
  {
    while (1)
    {
      v6 = *a2;
      v7 = **a2;
      if (v7 == 92)
      {
        break;
      }

      if (v7 == 34)
      {
        *a2 = v6 + 1;
        result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<char>(*a3, 1);
        *result = 0;
        ++*(a3 + 2);
        return result;
      }

      if (v7 <= 0x1F)
      {
        v14 = *(v5 + 48);
        if (**a2)
        {
          if (v14)
          {
            __assert_rtn("ParseStringToStream", "reader.h", 1044, "!HasParseError()");
          }

          v15 = v6 - a2[1];
          v16 = 12;
        }

        else
        {
          if (v14)
          {
            __assert_rtn("ParseStringToStream", "reader.h", 1042, "!HasParseError()");
          }

          v15 = v6 - a2[1];
          v16 = 11;
        }

        *(v5 + 48) = v16;
        goto LABEL_25;
      }

      *a2 = v6 + 1;
      v8 = *v6;
LABEL_6:
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<char>(*a3, 1);
      *result = v8;
      ++*(a3 + 2);
    }

    v9 = a2[1];
    *a2 = v6 + 1;
    v10 = v6[1];
    v8 = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseStringToStream<128u,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(rapidjson::GenericStringStream<rapidjson::UTF8<char>> &,rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char> &)::escape[v10];
    if (v8)
    {
      *a2 = v6 + 2;
      goto LABEL_6;
    }

    v11 = v6 - v9;
    if (v10 != 117)
    {
      break;
    }

    *a2 = v6 + 2;
    v18 = v6 - v9;
    result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(v5, a2, v11);
    if (*(v5 + 48))
    {
      return result;
    }

    v12 = result;
    if (result >> 10 == 54)
    {
      v17 = result;
      v13 = *a2;
      if (**a2 != 92)
      {
        goto LABEL_31;
      }

      *a2 = v13 + 1;
      if (v13[1] != 117)
      {
        goto LABEL_31;
      }

      *a2 = v13 + 2;
      result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(v5, a2, v18);
      if (*(v5 + 48))
      {
        return result;
      }

      if ((result - 57344) <= 0xFFFFFBFF)
      {
LABEL_31:
        *(v5 + 48) = 9;
        v15 = v18;
LABEL_25:
        *(v5 + 56) = v15;
        return result;
      }

      v12 = result + (v17 << 10) - 56613888;
    }

    result = rapidjson::UTF8<char>::Encode<rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(a3, v12);
  }

  if (*(v5 + 48))
  {
    __assert_rtn("ParseStringToStream", "reader.h", 1033, "!HasParseError()");
  }

  *(v5 + 48) = 10;
  *(v5 + 56) = v11;
  return result;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>::Pop(unsigned int *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v3 = *(*a1 + 24);
  if (v3 - *(*a1 + 16) < v2)
  {
    __assert_rtn("Pop", "stack.h", 139, "GetSize() >= count * sizeof(T)");
  }

  result = v3 - v2;
  *(v1 + 24) = v3 - v2;
  return result;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::String(uint64_t a1, const char *a2, int a3, int a4)
{
  v8 = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>((a1 + 40), 1);
  if (a4)
  {
    v9 = *(a1 + 24);
    if (!v9)
    {
      __assert_rtn("GetAllocator", "document.h", 2407, "allocator_");
    }

    rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericValue(v8, a2, a3, v9);
  }

  else
  {
    rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericValue(v8, a2, a3);
  }

  return 1;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(uint64_t a1, void *a2, uint64_t a3)
{
  LODWORD(v3) = 0;
  v4 = *a2 + 1;
  v5 = 4;
  while (1)
  {
    v6 = *(v4 - 1);
    if ((v6 - 48) >= 0xA)
    {
      break;
    }

    v7 = -48;
LABEL_8:
    v3 = (v6 + 16 * v3 + v7);
    *a2 = v4++;
    if (!--v5)
    {
      return v3;
    }
  }

  if (*(v4 - 1) - 65 < 6)
  {
    v7 = -55;
    goto LABEL_8;
  }

  if (*(v4 - 1) - 97 < 6)
  {
    v7 = -87;
    goto LABEL_8;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    __assert_rtn("ParseHex4", "reader.h", 917, "!HasParseError()");
  }

  *(a1 + 48) = 8;
  *(a1 + 56) = a3;
  return v3;
}

_BYTE *rapidjson::UTF8<char>::Encode<rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(void **a1, unsigned int a2)
{
  if (a2 > 0x7F)
  {
    if (a2 > 0x7FF)
    {
      if (HIWORD(a2))
      {
        if (a2 >= 0x110000)
        {
          __assert_rtn("Encode", "encodings.h", 115, "codepoint <= 0x10FFFF");
        }

        *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<char>(*a1, 1) = (a2 >> 18) | 0xF0;
        v6 = a1 + 1;
        ++*(a1 + 2);
        *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<char>(*a1, 1) = (a2 >> 12) & 0x3F | 0x80;
        ++*(a1 + 2);
      }

      else
      {
        *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<char>(*a1, 1) = (a2 >> 12) | 0xE0;
        v6 = a1 + 1;
        ++*(a1 + 2);
      }

      *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<char>(*a1, 1) = (a2 >> 6) & 0x3F | 0x80;
      ++*v6;
    }

    else
    {
      *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<char>(*a1, 1) = (a2 >> 6) | 0xC0;
      v6 = a1 + 1;
      ++*(a1 + 2);
    }

    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<char>(*a1, 1);
    *result = a2 & 0x3F | 0x80;
    v4 = v6;
  }

  else
  {
    v4 = a1 + 1;
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<char>(*a1, 1);
    *result = a2;
  }

  ++*v4;
  return result;
}

uint64_t rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<char>(void *a1, uint64_t a2)
{
  if (a1[4] - a1[3] < a2)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(a1, a2);
  }

  return rapidjson::internal::Stack<rapidjson::CrtAllocator>::PushUnsafe<char>(a1, a2);
}

uint64_t rapidjson::internal::Stack<rapidjson::CrtAllocator>::PushUnsafe<char>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    __assert_rtn("PushUnsafe", "stack.h", 130, "stackTop_");
  }

  if (*(a1 + 32) - v2 < a2)
  {
    __assert_rtn("PushUnsafe", "stack.h", 131, "static_cast<std::ptrdiff_t>(sizeof(T) * count) <= (stackEnd_ - stackTop_)");
  }

  *(a1 + 24) = v2 + a2;
  return v2;
}

char *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(void *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[4] - v2 + ((a1[4] - v2 + 1) >> 1);
  }

  else
  {
    if (!*a1)
    {
      operator new();
    }

    v2 = 0;
    v3 = a1[5];
  }

  v4 = a2 - v2 + a1[3];
  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  return rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(a1, v5);
}

void *rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericValue(void *__dst, const char *a2, int a3, size_t *a4)
{
  *__dst = 0;
  __dst[1] = 0;
  __dst[2] = 0;
  v5 = "";
  if (a2)
  {
    v5 = a2;
  }

  v7 = v5;
  v8 = a3;
  if (!a2 && a3)
  {
    __assert_rtn("GenericStringRef", "document.h", 322, "str != 0 || len == 0u");
  }

  rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetStringRaw(__dst, &v7, a4);
  return __dst;
}

void *rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetStringRaw(_WORD *__dst, uint64_t a2, size_t *a3)
{
  v4 = __dst;
  if (*(a2 + 8) > 0x15u)
  {
    __dst[11] = 3077;
    v5 = *(a2 + 8);
    *__dst = v5;
    v6 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(a3, (v5 + 1));
    v4[1] = v6;
    v4 = v6;
  }

  else
  {
    __dst[11] = 7173;
    *(__dst + 21) = 21 - *(a2 + 8);
  }

  result = memcpy(v4, *a2, *(a2 + 8));
  *(v4 + *(a2 + 8)) = 0;
  return result;
}

uint64_t rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(size_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *a1;
  if (*a1)
  {
    v5 = v4[1];
    v6 = v5 + v3;
    if (v5 + v3 <= *v4)
    {
      goto LABEL_9;
    }
  }

  if (a1[1] <= v3)
  {
    v7 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v7 = a1[1];
  }

  if (rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::AddChunk(a1, v7))
  {
    v4 = *a1;
    v5 = *(*a1 + 8);
    v6 = v5 + v3;
LABEL_9:
    result = v4 + v5 + 24;
    v4[1] = v6;
    return result;
  }

  return 0;
}

size_t rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::AddChunk(size_t *a1, uint64_t a2)
{
  if (!a1[3])
  {
    operator new();
  }

  result = a2 + 24;
  if (a2 != -24)
  {
    result = malloc_type_malloc(result, 0x49BC497DuLL);
    if (result)
    {
      *result = a2;
      *(result + 8) = 0;
      *(result + 16) = *a1;
      *a1 = result;
      return 1;
    }
  }

  return result;
}

uint64_t rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericValue(uint64_t result, const char *a2, int a3)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  if (!a2 && a3)
  {
    __assert_rtn("GenericStringRef", "document.h", 322, "str != 0 || len == 0u");
  }

  v3 = "";
  *(result + 22) = 1029;
  if (a2)
  {
    v3 = a2;
  }

  *(result + 8) = v3;
  *result = a3;
  return result;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndObject(void *a1, unsigned int a2)
{
  v4 = a2;
  v5 = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Pop<rapidjson::GenericMember<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>((a1 + 5), a2);
  v6 = a1[8];
  if ((v6 - a1[7]) <= 0x17)
  {
    __assert_rtn("Top", "stack.h", 146, "GetSize() >= sizeof(T)");
  }

  v7 = v5;
  v8 = a1[3];
  if (!v8)
  {
    __assert_rtn("GetAllocator", "document.h", 2407, "allocator_");
  }

  *(v6 - 2) = 3;
  if (a2)
  {
    v9 = 48 * v4;
    v10 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(v8, v9);
    *(v6 - 16) = v10;
    memcpy(v10, v7, v9);
  }

  else
  {
    *(v6 - 16) = 0;
  }

  *(v6 - 24) = a2;
  *(v6 - 20) = a2;
  return 1;
}

uint64_t rapidjson::internal::Stack<rapidjson::CrtAllocator>::Pop<rapidjson::GenericMember<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 - *(a1 + 16) < (48 * a2))
  {
    __assert_rtn("Pop", "stack.h", 139, "GetSize() >= count * sizeof(T)");
  }

  v3 = v2 - 48 * a2;
  *(a1 + 24) = v3;
  return v3;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndArray(void *a1, unsigned int a2)
{
  v4 = a2;
  v5 = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Pop<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>((a1 + 5), a2);
  v6 = a1[8];
  if ((v6 - a1[7]) <= 0x17)
  {
    __assert_rtn("Top", "stack.h", 146, "GetSize() >= sizeof(T)");
  }

  v7 = v5;
  v8 = a1[3];
  if (!v8)
  {
    __assert_rtn("GetAllocator", "document.h", 2407, "allocator_");
  }

  *(v6 - 2) = 4;
  if (a2)
  {
    v9 = 24 * v4;
    v10 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(v8, v9);
    *(v6 - 16) = v10;
    memcpy(v10, v7, v9);
  }

  else
  {
    *(v6 - 16) = 0;
  }

  *(v6 - 24) = a2;
  *(v6 - 20) = a2;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int64(uint64_t a1, unint64_t a2)
{
  v3 = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>((a1 + 40), 1);
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *v3 = a2;
  *(v3 + 22) = 150;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (HIDWORD(a2))
    {
      v4 = 406;
    }

    else
    {
      v4 = 470;
    }

    if (!(a2 >> 31))
    {
      v4 = 502;
    }

    goto LABEL_10;
  }

  if (a2 >= 0xFFFFFFFF80000000)
  {
    v4 = 182;
LABEL_10:
    *(v3 + 22) = v4;
  }

  return 1;
}

uint64_t *rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::ClearStackOnExit::~ClearStackOnExit(uint64_t *a1)
{
  v2 = *a1;
  *(v2 + 64) = *(*a1 + 56);
  rapidjson::internal::Stack<rapidjson::CrtAllocator>::ShrinkToFit((v2 + 40));
  return a1;
}

void rapidjson::internal::Stack<rapidjson::CrtAllocator>::ShrinkToFit(void *a1)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1 + 2;
  if (v4 == v3)
  {
    free(v3);
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  else
  {

    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(a1, v4 - v3);
  }
}

void YAML::ScanScalar(std::string::size_type a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v6 = *(a2 + 20) == 2;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  *(a2 + 40) = 0;
  if (!*a2)
  {
    if ((atomic_load_explicit(&_MergedGlobals_18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_18))
    {
      dword_280AF47E0 = 0;
      word_280AF47E4 = 0;
      qword_280AF47F0 = 0;
      unk_280AF47F8 = 0;
      qword_280AF47E8 = 0;
      __cxa_atexit(YAML::RegEx::~RegEx, &dword_280AF47E0, &dword_254C81000);
      __cxa_guard_release(&_MergedGlobals_18);
    }

    *a2 = &dword_280AF47E0;
  }

  if (!YAML::Stream::operator BOOL(a1))
  {
    v89 = -1;
    goto LABEL_163;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v92 = 0;
  v93 = 0;
  v89 = -1;
  do
  {
    v91 = v8;
    v94 = v9;
LABEL_7:
    if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a3->__r_.__value_.__l.__size_;
    }

    while (1)
    {
      v11 = *a2;
      __p = 0;
      v98 = a1;
      if (*(a1 + 64) || (AheadTo = YAML::Stream::_ReadAheadTo(a1, 0), (AheadTo)) && (AheadTo = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v11, &__p), (AheadTo & 0x80000000) == 0) || ((v13 = YAML::Exp::Break(AheadTo), __p = 0, v98 = a1, *(a1 + 64)) || YAML::Stream::_ReadAheadTo(a1, 0)) && (YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v13, &__p) & 0x80000000) == 0 || !YAML::Stream::operator BOOL(a1))
      {
LABEL_52:
        v90 = 0;
        goto LABEL_53;
      }

      if (!*(a1 + 16))
      {
        if ((atomic_load_explicit(&qword_280AF47D0, memory_order_acquire) & 1) == 0)
        {
          v21 = __cxa_guard_acquire(&qword_280AF47D0);
          if (v21)
          {
            v22 = YAML::Exp::DocStart(v21);
            v23 = YAML::Exp::DocEnd(v22);
            YAML::operator|(v22, v23, &unk_280AF4800);
            __cxa_atexit(YAML::RegEx::~RegEx, &unk_280AF4800, &dword_254C81000);
            __cxa_guard_release(&qword_280AF47D0);
          }
        }

        __p = 0;
        v98 = a1;
        if ((*(a1 + 64) || YAML::Stream::_ReadAheadTo(a1, 0)) && (YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(&unk_280AF4800, &__p) & 0x80000000) == 0)
        {
          v14 = *(a2 + 32);
          if (v14 == 1)
          {
            goto LABEL_52;
          }

          if (v14 == 2)
          {
            exception = __cxa_allocate_exception(0x38uLL);
            v88 = *(a1 + 16);
            v95 = *(a1 + 8);
            v96 = v88;
            std::string::basic_string[abi:ne200100]<0>(&__p, "illegal document indicator in scalar");
            YAML::Exception::Exception(exception, &v95, &__p);
            *exception = &unk_28671C278;
          }
        }
      }

      if (*(a2 + 18) == 92)
      {
        if ((atomic_load_explicit(&qword_280AF47D8, memory_order_acquire) & 1) == 0)
        {
          v19 = __cxa_guard_acquire(&qword_280AF47D8);
          if (v19)
          {
            LODWORD(__p) = 1;
            WORD2(__p) = 92;
            v99 = 0;
            v100 = 0;
            v98 = 0;
            v20 = YAML::Exp::Break(v19);
            YAML::operator+(&__p, v20, &unk_280AF4820);
            v95 = &v98;
            std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v95);
            __cxa_atexit(YAML::RegEx::~RegEx, &unk_280AF4820, &dword_254C81000);
            __cxa_guard_release(&qword_280AF47D8);
          }
        }

        __p = 0;
        v98 = a1;
        if ((*(a1 + 64) || YAML::Stream::_ReadAheadTo(a1, 0)) && (YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(&unk_280AF4820, &__p) & 0x80000000) == 0)
        {
          break;
        }
      }

      if (*(a1 + 64))
      {
        v15 = *(*(*(a1 + 32) + ((*(a1 + 56) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(a1 + 56) & 0xFFFLL));
      }

      else
      {
        v15 = 4;
      }

      if (v15 == *(a2 + 18))
      {
        YAML::Exp::Escape(a1, &__p);
        if (v99 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v99 >= 0)
        {
          v18 = HIBYTE(v99);
        }

        else
        {
          v18 = v98;
        }

        std::string::append(a3, p_p, v18);
        if (SHIBYTE(v99) < 0)
        {
          operator delete(__p);
        }

        if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = a3->__r_.__value_.__l.__size_;
        }

        v6 = 1;
        v89 = size;
        v7 = 1;
      }

      else
      {
        v16 = YAML::Stream::get(a1);
        std::string::push_back(a3, v16);
        v6 = 1;
        v7 = 1;
        if (v16 != 9 && v16 != 32)
        {
          goto LABEL_7;
        }
      }
    }

    YAML::Stream::get(a1);
    size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = a3->__r_.__value_.__l.__size_;
    }

    v90 = 1;
    v89 = size;
    v6 = 1;
    v7 = 1;
LABEL_53:
    if (!YAML::Stream::operator BOOL(a1))
    {
      if (*(a2 + 8) == 1)
      {
        v52 = __cxa_allocate_exception(0x38uLL);
        v53 = *(a1 + 16);
        v95 = *(a1 + 8);
        v96 = v53;
        std::string::basic_string[abi:ne200100]<0>(&__p, "illegal EOF in scalar");
        YAML::Exception::Exception(v52, &v95, &__p);
        *v52 = &unk_28671C278;
      }

      break;
    }

    if (*(a2 + 32) == 1 && !*(a1 + 16))
    {
      if ((atomic_load_explicit(&qword_280AF47D0, memory_order_acquire) & 1) == 0)
      {
        v49 = __cxa_guard_acquire(&qword_280AF47D0);
        if (v49)
        {
          v50 = YAML::Exp::DocStart(v49);
          v51 = YAML::Exp::DocEnd(v50);
          YAML::operator|(v50, v51, &unk_280AF4800);
          __cxa_atexit(YAML::RegEx::~RegEx, &unk_280AF4800, &dword_254C81000);
          __cxa_guard_release(&qword_280AF47D0);
        }
      }

      __p = 0;
      v98 = a1;
      if ((*(a1 + 64) || YAML::Stream::_ReadAheadTo(a1, 0)) && (YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(&unk_280AF4800, &__p) & 0x80000000) == 0)
      {
        break;
      }
    }

    v24 = *a2;
    __p = 0;
    v98 = a1;
    if (*(a1 + 64) || (v25 = YAML::Stream::_ReadAheadTo(a1, 0), (v25 & 1) != 0))
    {
      v25 = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v24, &__p);
      v26 = v25;
      if ((v25 & 0x80000000) == 0)
      {
        if (*(a2 + 8) == 1 && v25)
        {
          do
          {
            YAML::Stream::get(a1);
            --v26;
          }

          while (v26);
        }

        break;
      }
    }

    if (*(a2 + 20) == 2)
    {
      v25 = std::string::erase(a3, size, 0xFFFFFFFFFFFFFFFFLL);
    }

    v27 = YAML::Exp::Break(v25);
    __p = 0;
    v98 = a1;
    if (*(a1 + 64) || YAML::Stream::_ReadAheadTo(a1, 0))
    {
      v28 = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v27, &__p);
      if (v28 >= 1)
      {
        do
        {
          YAML::Stream::get(a1);
          --v28;
        }

        while (v28);
      }
    }

    while (*(a1 + 64) && *(*(*(a1 + 32) + ((*(a1 + 56) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(a1 + 56) & 0xFFFLL)) == 32 && (*(a1 + 16) < *(a2 + 12) || !(v7 & 1 | ((*(a2 + 16) & 1) == 0))))
    {
      v29 = *a2;
      __p = 0;
      v98 = a1;
      if ((YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v29, &__p) & 0x80000000) == 0)
      {
        break;
      }

      YAML::Stream::get(a1);
    }

    if (!(v7 & 1 | ((*(a2 + 16) & 1) == 0)))
    {
      v30 = *(a1 + 16);
      if (*(a2 + 12) > v30)
      {
        v30 = *(a2 + 12);
      }

      *(a2 + 12) = v30;
    }

    while (1)
    {
      {
        if (v33)
        {
          v34 = YAML::Exp::Space(v33);
          v35 = YAML::Exp::Tab(v34);
          YAML::operator|(v34, v35, &YAML::Exp::Blank(void)::e);
          __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::Blank(void)::e, &dword_254C81000);
        }
      }

      __p = 0;
      v98 = a1;
      if (!*(a1 + 64))
      {
        v31 = YAML::Stream::_ReadAheadTo(a1, 0);
        if ((v31 & 1) == 0)
        {
          break;
        }
      }

      v31 = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(&YAML::Exp::Blank(void)::e, &__p);
      if ((v31 & 0x80000000) != 0)
      {
        break;
      }

      if (*(a1 + 64))
      {
        if (*(*(*(a1 + 32) + ((*(a1 + 56) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(a1 + 56) & 0xFFFLL)) == 9 && *(a1 + 16) < *(a2 + 12) && *(a2 + 36) == 2)
        {
          v85 = __cxa_allocate_exception(0x38uLL);
          v86 = *(a1 + 16);
          v95 = *(a1 + 8);
          v96 = v86;
          std::string::basic_string[abi:ne200100]<0>(&__p, "illegal tab when looking for indentation");
          YAML::Exception::Exception(v85, &v95, &__p);
          *v85 = &unk_28671C278;
        }

        if ((*(a2 + 17) & 1) == 0)
        {
          break;
        }

        v32 = *a2;
        __p = 0;
        v98 = a1;
      }

      else
      {
        if (*(a2 + 17) != 1)
        {
          break;
        }

        v32 = *a2;
        __p = 0;
        v98 = a1;
        if (!YAML::Stream::_ReadAheadTo(a1, 0))
        {
          goto LABEL_92;
        }
      }

      v31 = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v32, &__p);
      if ((v31 & 0x80000000) == 0)
      {
        break;
      }

LABEL_92:
      YAML::Stream::get(a1);
    }

    v36 = YAML::Exp::Break(v31);
    __p = 0;
    v98 = a1;
    v37 = (*(a1 + 64) || YAML::Stream::_ReadAheadTo(a1, 0)) && YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v36, &__p) >= 0;
    {
      if (v46)
      {
        v47 = YAML::Exp::Space(v46);
        v48 = YAML::Exp::Tab(v47);
        YAML::operator|(v47, v48, &YAML::Exp::Blank(void)::e);
        __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::Blank(void)::e, &dword_254C81000);
      }
    }

    __p = 0;
    v98 = a1;
    v9 = (*(a1 + 64) || YAML::Stream::_ReadAheadTo(a1, 0)) && YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(&YAML::Exp::Blank(void)::e, &__p) >= 0;
    v38 = *(a2 + 20);
    v39 = v38 == 1 && v92 == 0;
    v40 = v39;
    v39 = (v40 & v37) == 0;
    v41 = v93;
    if (!v39)
    {
      v41 = v94;
    }

    v93 = v41;
    if (!v6)
    {
      goto LABEL_143;
    }

    if (v38 == 2)
    {
      if (v37)
      {
        std::string::append(a3, "\n");
        goto LABEL_144;
      }

      if (((v91 | v90) & 1) == 0)
      {
        std::string::append(a3, " ");
      }
    }

    else
    {
      if (v38 != 1)
      {
        if (!v38)
        {
          std::string::append(a3, "\n");
        }

        goto LABEL_143;
      }

      if ((v91 | v37 | (v94 || v9)))
      {
        v42 = "\n";
        if (v37)
        {
          ++v92;
          goto LABEL_144;
        }
      }

      else if (*(a1 + 16) >= *(a2 + 12))
      {
        v42 = " ";
      }

      else
      {
        v42 = "\n";
      }

      std::string::append(a3, v42);
      v43 = v92 < 1 || v37;
      if ((v43 & 1) == 0)
      {
        std::string::basic_string[abi:ne200100](&__p, (v92 - 1), 10);
        if (v99 >= 0)
        {
          v44 = &__p;
        }

        else
        {
          v44 = __p;
        }

        if (v99 >= 0)
        {
          v45 = HIBYTE(v99);
        }

        else
        {
          v45 = v98;
        }

        std::string::append(a3, v44, v45);
        if (SHIBYTE(v99) < 0)
        {
          operator delete(__p);
        }

        if (v93 || v9 || (v7 & 1) == 0)
        {
          std::string::append(a3, "\n");
        }

        v92 = 0;
      }

LABEL_143:
      if (v37)
      {
LABEL_144:
        v8 = 1;
        goto LABEL_149;
      }
    }

    if (*(a1 + 16) < *(a2 + 12))
    {
      *(a2 + 40) = 1;
      break;
    }

    v8 = 0;
LABEL_149:
    v6 = 1;
  }

  while (YAML::Stream::operator BOOL(a1));
LABEL_163:
  v54 = v89;
  if (*(a2 + 24) == 1)
  {
    v55 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    v56 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    v57 = v55 < 0;
    if (v55 >= 0)
    {
      v58 = a3;
    }

    else
    {
      v58 = a3->__r_.__value_.__r.__words[0];
    }

    if (v57)
    {
      v56 = a3->__r_.__value_.__l.__size_;
    }

    v59 = &v58[-1].__r_.__value_.__r.__words[2] + 7;
    v60 = v56;
    do
    {
      if (!v60)
      {
        v62 = v89 == -1;
LABEL_178:
        v60 = -1;
        v63 = v89;
        goto LABEL_179;
      }

      v61 = *(v59 + v60--);
    }

    while (v61 == 32);
    v62 = v89 == -1;
    if (v60 <= v89)
    {
      v63 = v89;
    }

    else
    {
      v63 = v60;
    }

    if (v60 == -1)
    {
      goto LABEL_178;
    }

LABEL_179:
    if (!v62)
    {
      v60 = v63;
    }

    if (v60 < v56)
    {
      std::string::erase(a3, v60 + 1, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  v64 = *(a2 + 28);
  if (v64 == -1)
  {
    v74 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    v75 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    v76 = v74 < 0;
    if (v74 >= 0)
    {
      v77 = a3;
    }

    else
    {
      v77 = a3->__r_.__value_.__r.__words[0];
    }

    if (v76)
    {
      v75 = a3->__r_.__value_.__l.__size_;
    }

    v78 = &v77[-1].__r_.__value_.__r.__words[2] + 7;
    v79 = v75;
    do
    {
      if (!v79)
      {
        v81 = v89 == -1;
        goto LABEL_219;
      }

      v80 = *(v78 + v79--);
    }

    while (v80 == 10);
    v81 = v89 == -1;
    if (v79 <= v89)
    {
      v82 = v89;
    }

    else
    {
      v82 = v79;
    }

    if (v79 != -1)
    {
      v54 = v82;
      goto LABEL_220;
    }

LABEL_219:
    v79 = -1;
LABEL_220:
    if (!v81)
    {
      v79 = v54;
    }

    if (v79 == -1)
    {
      v84 = 0;
    }

    else
    {
      if (v79 >= v75)
      {
        return;
      }

      v84 = v79 + 1;
    }

    std::string::erase(a3, v84, 0xFFFFFFFFFFFFFFFFLL);
  }

  else if (!v64)
  {
    v65 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    v66 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    v67 = v65 < 0;
    if (v65 >= 0)
    {
      v68 = a3;
    }

    else
    {
      v68 = a3->__r_.__value_.__r.__words[0];
    }

    if (v67)
    {
      v66 = a3->__r_.__value_.__l.__size_;
    }

    v69 = &v68[-1].__r_.__value_.__r.__words[2] + 7;
    v70 = v66;
    do
    {
      if (!v70)
      {
        v72 = v89 == -1;
        goto LABEL_212;
      }

      v71 = *(v69 + v70--);
    }

    while (v71 == 10);
    v72 = v89 == -1;
    if (v70 <= v89)
    {
      v73 = v89;
    }

    else
    {
      v73 = v70;
    }

    if (v70 != -1)
    {
      v54 = v73;
      goto LABEL_213;
    }

LABEL_212:
    v70 = -1;
LABEL_213:
    if (!v72)
    {
      v70 = v54;
    }

    if (v70 == -1)
    {
      v83 = 0;
LABEL_226:
      std::string::erase(a3, v83, 0xFFFFFFFFFFFFFFFFLL);
    }

    else if (v70 + 1 < v66)
    {
      v83 = v70 + 2;
      goto LABEL_226;
    }
  }
}