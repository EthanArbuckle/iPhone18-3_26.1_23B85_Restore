void sub_1A5A050DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::Date>::parse_from_string(uint64_t a1, const std::string *a2)
{
  std::istringstream::basic_istringstream[abi:ne200100](v14, a2, 8);
  memset(&__str, 0, sizeof(__str));
  std::vector<vega::Date>::__base_destruct_at_end[abi:ne200100](a1 + 8, *(a1 + 8));
  while (1)
  {
    v3 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v14, &__str, 0x5Cu);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_)
      {
        v5 = *(__str.__r_.__value_.__r.__words[0] + __str.__r_.__value_.__l.__size_ - 1);
LABEL_8:
        if (v5 == 32)
        {
          std::string::basic_string(&v10, &__str, 0, size - 1, &v19);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          *&__str.__r_.__value_.__l.__data_ = v10;
          __str.__r_.__value_.__r.__words[2] = v11;
        }

        vega::Date::Date(&v10, &__str);
        v6 = *(a1 + 16);
        if (v6 >= *(a1 + 24))
        {
          v7 = std::vector<vega::Date>::__emplace_back_slow_path<vega::Date>(a1 + 8, &v10);
          v8 = *(&v12 + 1);
          *(a1 + 16) = v7;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }
        }

        else
        {
          *v6 = v10;
          v10 = 0uLL;
          v6[1] = v11;
          v11 = 0uLL;
          v6[2] = v12;
          v12 = 0uLL;
          *(a1 + 16) = v6 + 3;
        }

        if (*(&v11 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
        }

        if (*(&v10 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
        }
      }
    }

    else if (*(&__str.__r_.__value_.__s + 23))
    {
      v5 = *(&v12 + HIBYTE(__str.__r_.__value_.__r.__words[2]) + 15);
      goto LABEL_8;
    }
  }

  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v14[0] = *MEMORY[0x1E69E54E0];
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::istream::~istream();
  return MEMORY[0x1AC552AF0](&v18);
}

void sub_1A5A053E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::istringstream::~istringstream(&a21);
  _Unwind_Resume(a1);
}

uint64_t vega::to_json<vega::Date>@<X0>(vega::dictionary::Page **a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  vega::to_json<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,vega::Date>(v6, a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v6[2] = v4;
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v10);
}

void sub_1A5A055A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t vega::to_json<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,vega::Date>(uint64_t a1, vega::dictionary::Page **a2)
{
  v7 = 34;
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v7, 1);
  v5 = vega::operator<<(v4, a2);
  v8 = 34;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v8, 1);
  return a1;
}

void sub_1A5A05690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::DecimalString>::str@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      vega::DecimalString::str((v4 + v5), &__p);
      if ((v16 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v16 & 0x80u) == 0)
      {
        v9 = v16;
      }

      else
      {
        v9 = v15;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, p_p, v9);
      v10 = v16;
      v11 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v10 = v15;
      }

      v7 += v10;
      if (v6 < ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1)
      {
        v23 = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &v23, 1);
        ++v7;
        v11 = v16;
      }

      if ((v11 & 0x80) != 0)
      {
        operator delete(__p);
      }

      ++v6;
      v4 = *(a1 + 8);
      v5 += 8;
    }

    while (v6 < (*(a1 + 16) - v4) >> 3);
    if (v7)
    {
      LOBYTE(__p) = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &__p, 1);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v17, a2);
  v17[0] = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v18 = v12;
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v22);
}

BOOL vega::manipulators::PaddedStringManipulator<vega::DecimalString>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  if (a3)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
    v6 = 0;
    v7 = 0;
    v14 = 0;
    v8 = 1;
    v9 = a3;
    while ((vega::dicom::RawReader::read_into<vega::Byte>(a2) & 1) != 0)
    {
      v10 = v14;
      __p.__r_.__value_.__s.__data_[0] = v14;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, &__p, 1);
      if (v10 == 92)
      {
        ++v7;
      }

      v6 = v8++ >= a3;
      if (!--v9)
      {
        a1[2] = a1[1];
        std::vector<vega::DecimalString>::reserve(a1 + 1, v7 + 1);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, &__p);
        vega::manipulators::PaddedStringManipulator<vega::DecimalString>::parse_from_string(a1, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v6 = 1;
        break;
      }
    }

    v15[0] = *MEMORY[0x1E69E54D8];
    v11 = *(MEMORY[0x1E69E54D8] + 72);
    *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v16 = v11;
    v17 = MEMORY[0x1E69E5548] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v18);
    std::iostream::~basic_iostream();
    MEMORY[0x1AC552AF0](&v20);
  }

  else
  {
    a1[2] = a1[1];
    return 1;
  }

  return v6;
}

void sub_1A5A05B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::DecimalString>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  (*(*a1 + 24))(__p);
  v3 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v3 = __p[1];
  }

  v5 = vega::dicom::RawWriter::write_from<std::__wrap_iter<char *>>(a2, v4, v4 + v3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1A5A05C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL vega::manipulators::PaddedStringManipulator<vega::DecimalString>::operator==(uint64_t a1, void *lpsrc)
{
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  (*(*a1 + 24))(v15, a1);
  (*(*v4 + 24))(__p, v4);
  v5 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v6 = v16;
  }

  else
  {
    v6 = v15[1];
  }

  v7 = v14;
  v8 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v7 = __p[1];
  }

  if (v6 == v7)
  {
    if ((v16 & 0x80u) == 0)
    {
      v9 = v15;
    }

    else
    {
      v9 = v15[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = memcmp(v9, v10, v6) == 0;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = 0;
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  operator delete(__p[0]);
  v5 = v16;
LABEL_19:
  if ((v5 & 0x80) != 0)
  {
    operator delete(v15[0]);
  }

  return v11;
}

void sub_1A5A05DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::DecimalString>::parse_from_string(void *a1, const std::string *a2)
{
  std::istringstream::basic_istringstream[abi:ne200100](v20, a2, 8);
  memset(&__str, 0, sizeof(__str));
  v3 = (a1 + 1);
  a1[2] = a1[1];
  while (1)
  {
    v4 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v20, &__str, 0x5Cu);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((*(v4 + *(*v4 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_)
      {
        v6 = *(__str.__r_.__value_.__r.__words[0] + __str.__r_.__value_.__l.__size_ - 1);
LABEL_8:
        if (v6 == 32)
        {
          std::string::basic_string(&v18, &__str, 0, size - 1, &v25);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          __str = v18;
        }

        vega::DecimalString::DecimalString(&v18, &__str);
        v8 = a1[2];
        v7 = a1[3];
        if (v8 >= v7)
        {
          v10 = *v3;
          v11 = v8 - *v3;
          v12 = v11 >> 3;
          v13 = (v11 >> 3) + 1;
          if (v13 >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v14 = v7 - v10;
          if (v14 >> 2 > v13)
          {
            v13 = v14 >> 2;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF8)
          {
            v15 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100]((a1 + 1), v15);
          }

          *(8 * v12) = v18.__r_.__value_.__r.__words[0];
          v9 = 8 * v12 + 8;
          memcpy(0, v10, v11);
          v16 = a1[1];
          a1[1] = 0;
          a1[2] = v9;
          a1[3] = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          *v8 = v18.__r_.__value_.__r.__words[0];
          v9 = (v8 + 8);
        }

        a1[2] = v9;
      }
    }

    else if (*(&__str.__r_.__value_.__s + 23))
    {
      v6 = *(&v18.__r_.__value_.__r.__words[2] + HIBYTE(__str.__r_.__value_.__r.__words[2]) + 7);
      goto LABEL_8;
    }
  }

  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v20[0] = *MEMORY[0x1E69E54E0];
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  v21 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v22);
  std::istream::~istream();
  return MEMORY[0x1AC552AF0](&v24);
}

void sub_1A5A06120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::istringstream::~istringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t vega::to_json<vega::DecimalString>@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  vega::operator<<(&v7, a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v11);
}

void sub_1A5A062D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<vega::manipulators::DateTimeManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918300;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::DateTimeManipulator::~DateTimeManipulator(vega::manipulators::DateTimeManipulator *this)
{
  v2 = (this + 8);
  std::vector<vega::DateTime>::__destroy_vector::operator()[abi:ne200100](&v2);
  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v3 = (this + 8);
  std::vector<vega::DateTime>::__destroy_vector::operator()[abi:ne200100](&v3);
  EncodeAccelerationModeOverride = CMPhotoGetEncodeAccelerationModeOverride(this);
  MEMORY[0x1AC552B90](EncodeAccelerationModeOverride, 0xA1C4030951706);
}

void sub_1A5A0648C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::DateTime>::str@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      vega::DateTime::str(&__p, (v4 + v5));
      if ((v16 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v16 & 0x80u) == 0)
      {
        v9 = v16;
      }

      else
      {
        v9 = v15;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, p_p, v9);
      v10 = v16;
      v11 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v10 = v15;
      }

      v7 += v10;
      if (v6 < -1 - 0x5555555555555555 * ((*(a1 + 16) - *(a1 + 8)) >> 4))
      {
        v23[0] = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v23, 1);
        ++v7;
        v11 = v16;
      }

      if ((v11 & 0x80) != 0)
      {
        operator delete(__p);
      }

      ++v6;
      v4 = *(a1 + 8);
      v5 += 48;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v4) >> 4));
    if (v7)
    {
      LOBYTE(__p) = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &__p, 1);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v17, a2);
  v17[0] = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v18 = v12;
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v22);
}

BOOL vega::manipulators::PaddedStringManipulator<vega::DateTime>::read_from(uint64_t a1, vega::dicom::IOState *a2, unint64_t a3)
{
  if (a3)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
    v6 = 0;
    v7 = 0;
    v14 = 0;
    v8 = 1;
    v9 = a3;
    while ((vega::dicom::RawReader::read_into<vega::Byte>(a2) & 1) != 0)
    {
      v10 = v14;
      __p.__r_.__value_.__s.__data_[0] = v14;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, &__p, 1);
      if (v10 == 92)
      {
        ++v7;
      }

      v6 = v8++ >= a3;
      if (!--v9)
      {
        std::vector<vega::DateTime>::__base_destruct_at_end[abi:ne200100](a1 + 8, *(a1 + 8));
        std::vector<vega::DateTime>::reserve((a1 + 8), v7 + 1);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, &__p);
        vega::manipulators::PaddedStringManipulator<vega::DateTime>::parse_from_string(a1, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v6 = 1;
        break;
      }
    }

    v15[0] = *MEMORY[0x1E69E54D8];
    v11 = *(MEMORY[0x1E69E54D8] + 72);
    *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v16 = v11;
    v17 = MEMORY[0x1E69E5548] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v18);
    std::iostream::~basic_iostream();
    MEMORY[0x1AC552AF0](&v20);
  }

  else
  {
    std::vector<vega::DateTime>::__base_destruct_at_end[abi:ne200100](a1 + 8, *(a1 + 8));
    return 1;
  }

  return v6;
}

void sub_1A5A0699C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::DateTime>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  (*(*a1 + 24))(__p);
  v3 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v3 = __p[1];
  }

  v5 = vega::dicom::RawWriter::write_from<std::__wrap_iter<char *>>(a2, v4, v4 + v3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1A5A06A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL vega::manipulators::DateTimeManipulator::is_valid_for (vega::manipulators::DateTimeManipulator *this, const vega::VR *a2)
{
  vega::vr::DT(this);

  return vega::Word::operator==(a2, &word_1ED6FA79C);
}

BOOL vega::manipulators::PaddedStringManipulator<vega::DateTime>::operator==(uint64_t a1, void *lpsrc)
{
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  (*(*a1 + 24))(v15, a1);
  (*(*v4 + 24))(__p, v4);
  v5 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v6 = v16;
  }

  else
  {
    v6 = v15[1];
  }

  v7 = v14;
  v8 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v7 = __p[1];
  }

  if (v6 == v7)
  {
    if ((v16 & 0x80u) == 0)
    {
      v9 = v15;
    }

    else
    {
      v9 = v15[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = memcmp(v9, v10, v6) == 0;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = 0;
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  operator delete(__p[0]);
  v5 = v16;
LABEL_19:
  if ((v5 & 0x80) != 0)
  {
    operator delete(v15[0]);
  }

  return v11;
}

void sub_1A5A06C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<vega::DateTime>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<vega::DateTime>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<vega::DateTime>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<vega::Date>>::destroy[abi:ne200100]<vega::Date,void,0>(a1, i))
  {
    i -= 6;
  }

  *(a1 + 8) = a2;
}

void *std::vector<vega::DateTime>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      std::allocator<vega::Date>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1A5A06E0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<vega::DateTime>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::DateTime>::parse_from_string(uint64_t a1, const std::string *a2)
{
  std::istringstream::basic_istringstream[abi:ne200100](v14, a2, 8);
  memset(&__str, 0, sizeof(__str));
  std::vector<vega::DateTime>::__base_destruct_at_end[abi:ne200100](a1 + 8, *(a1 + 8));
  while (1)
  {
    v3 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v14, &__str, 0x5Cu);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_)
      {
        v5 = *(__str.__r_.__value_.__r.__words[0] + __str.__r_.__value_.__l.__size_ - 1);
LABEL_8:
        if (v5 == 32)
        {
          std::string::basic_string(&v10, &__str, 0, size - 1, &v19);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          *&__str.__r_.__value_.__l.__data_ = v10;
          __str.__r_.__value_.__r.__words[2] = v11;
        }

        vega::DateTime::DateTime(&v10, &__str);
        v6 = *(a1 + 16);
        if (v6 >= *(a1 + 24))
        {
          v7 = std::vector<vega::DateTime>::__emplace_back_slow_path<vega::DateTime>(a1 + 8, &v10);
          v8 = *(&v12 + 1);
          *(a1 + 16) = v7;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }
        }

        else
        {
          *v6 = v10;
          v10 = 0uLL;
          v6[1] = v11;
          v11 = 0uLL;
          v6[2] = v12;
          v12 = 0uLL;
          *(a1 + 16) = v6 + 3;
        }

        if (*(&v11 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
        }

        if (*(&v10 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
        }
      }
    }

    else if (*(&__str.__r_.__value_.__s + 23))
    {
      v5 = *(&v12 + HIBYTE(__str.__r_.__value_.__r.__words[2]) + 15);
      goto LABEL_8;
    }
  }

  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v14[0] = *MEMORY[0x1E69E54E0];
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::istream::~istream();
  return MEMORY[0x1AC552AF0](&v18);
}

void sub_1A5A070B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::istringstream::~istringstream(&a21);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vega::DateTime>,vega::DateTime*>(uint64_t a1, void *a2, void *a3, _OWORD *a4)
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
      *a4 = *v7;
      *v7 = 0;
      v7[1] = 0;
      a4[1] = *(v7 + 1);
      v7[2] = 0;
      v7[3] = 0;
      a4[2] = *(v7 + 2);
      v7[4] = 0;
      v7[5] = 0;
      v7 += 6;
      a4 += 3;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<vega::Date>>::destroy[abi:ne200100]<vega::Date,void,0>(a1, v5);
      v5 += 6;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vega::DateTime>,vega::DateTime*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vega::DateTime>,vega::DateTime*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<vega::Date>,vega::Date*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__split_buffer<vega::DateTime>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<vega::DateTime>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<vega::DateTime>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 48;
    std::allocator_traits<std::allocator<vega::Date>>::destroy[abi:ne200100]<vega::Date,void,0>(v5, (v4 - 48));
  }
}

uint64_t std::vector<vega::DateTime>::__emplace_back_slow_path<vega::DateTime>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::allocator<vega::Date>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v7 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *&v16 = 48 * v2 + 48;
  v8 = *(a1 + 8);
  v9 = (48 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vega::DateTime>,vega::DateTime*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<vega::DateTime>::~__split_buffer(&v14);
  return v13;
}

void sub_1A5A073AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<vega::DateTime>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void vega::Json::to_json<vega::manipulators::PaddedStringManipulator<vega::DateTime>,(vega::manipulators::PaddedStringManipulator<vega::DateTime>*)0>(uint64_t a1, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4);
  if (v7 == 1)
  {

    vega::Json::value_to_json<vega::DateTime>(a1, v4);
  }

  else if (v7)
  {
    if (*(a1 + 16) == 1)
    {
      v8 = *a1;
      v14 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        vega::Json::value_to_json<vega::DateTime>(a1, &v4[v9]);
        v4 = *(a2 + 8);
        v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - v4) >> 4);
        if (v10 < v11 - 1 && *(a1 + 16) == 1)
        {
          v12 = *a1;
          v16 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v16, 1);
          v4 = *(a2 + 8);
          v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - v4) >> 4);
        }

        ++v10;
        v9 += 6;
      }

      while (v10 < v11);
    }

    if (*(a1 + 16) == 1)
    {
      v13 = *a1;
      v15 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
    }
  }

  else
  {

    vega::operator<<<char [18]>(a1, "null");
  }
}

void vega::Json::value_to_json<vega::DateTime>(uint64_t a1, vega::dictionary::Page **a2)
{
  vega::to_json<vega::DateTime>(a2, __p);
  vega::operator<<<std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A5A075A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::to_json<vega::DateTime>@<X0>(vega::dictionary::Page **a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  vega::to_json<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,vega::DateTime>(v6, a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v6[2] = v4;
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v10);
}

void sub_1A5A07740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t vega::to_json<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,vega::DateTime>(uint64_t a1, vega::dictionary::Page **a2)
{
  v7 = 34;
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v7, 1);
  v5 = vega::operator<<(v4, a2);
  v8 = 34;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v8, 1);
  return a1;
}

void *vega::Json::from_json<vega::manipulators::PaddedStringManipulator<vega::DateTime> &,vega::DateTime>(void *a1)
{
  v2 = std::istream::peek();
  v5 = v2;
  if (v2 == 34)
  {
    vega::Json::value_from_json<vega::DateTime>(a1, &v4);
  }

  if (v2 == 91)
  {
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v5);
    vega::Json::value_from_json<vega::DateTime>(a1, &v4);
  }

  if (v2 != 110)
  {
    vega::Json::value_from_json<vega::DateTime>(a1, &v4);
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v5);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v5);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v5);
  return std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v5);
}

void vega::Json::value_from_json<vega::DateTime>(void *a1@<X0>, vega::DateTime *a2@<X8>)
{
  vega::DateTime::DateTime(a2);
  if (std::istream::peek() == 34)
  {
    v4 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v4);
    if (v4 == 34)
    {
      vega::operator>>(a1, a2);
    }

    __assert_rtn("value_from_json", "json.h", 70, "c == ''");
  }

  vega::operator>>(a1, a2);
}

void std::__shared_ptr_emplace<vega::manipulators::FloatingPointManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918420;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::FloatingPointManipulator::~FloatingPointManipulator(vega::manipulators::FloatingPointManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);

  JUMPOUT(0x1AC552B90);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<float>::str@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  if (*(a1 + 16) != *(a1 + 8))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      vega::to_string<float>(__p);
      if ((v12 & 0x80u) == 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      if ((v12 & 0x80u) == 0)
      {
        v7 = v12;
      }

      else
      {
        v7 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v6, v7);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = (*(a1 + 16) - *(a1 + 8)) >> 2;
      if (v5 < v8 - 1)
      {
        LOBYTE(__p[0]) = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, __p, 1);
        v8 = (*(a1 + 16) - *(a1 + 8)) >> 2;
      }

      ++v5;
      v4 += 4;
    }

    while (v5 < v8);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v13, a2);
  v13[0] = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v9;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v18);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<float>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  v3 = (a1 + 1);
  a1[2] = a1[1];
  if ((a3 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v21, "Incompatible num_bytes for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v21);
    exception->__vftable = &unk_1F1917110;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 4;
  do
  {
    v9 = a1[2];
    v8 = a1[3];
    if (v9 >= v8)
    {
      v11 = *v3;
      v12 = v9 - *v3;
      v13 = v12 >> 2;
      v14 = (v12 >> 2) + 1;
      if (v14 >> 62)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v15 = v8 - v11;
      if (v15 >> 1 > v14)
      {
        v14 = v15 >> 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v16 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100](v3, v16);
      }

      *(4 * v13) = 0;
      v10 = 4 * v13 + 4;
      memcpy(0, v11, v12);
      v17 = a1[1];
      a1[1] = 0;
      a1[2] = v10;
      a1[3] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v9 = 0;
      v10 = (v9 + 4);
    }

    a1[2] = v10;
    result = vega::dicom::RawReader::read_into<unsigned int>(a2, v10 - 4);
    if (result)
    {
      v19 = v7 >= a3;
    }

    else
    {
      v19 = 1;
    }

    v7 += 4;
  }

  while (!v19);
  return result;
}

void sub_1A5A080B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t vega::manipulators::FixedSizeElementManipulator<float>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 += vega::dicom::RawWriter::write_from<unsigned int>(a2, v2);
    v2 += 4;
  }

  while (v2 != v3);
  return v5;
}

BOOL vega::manipulators::FloatingPointManipulator::is_valid_for (vega::manipulators::FloatingPointManipulator *this, const vega::VR *a2)
{
  vega::vr::FL(this);

  return vega::Word::operator==(a2, &word_1ED6FA79E);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<float>::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v6 = *(result + 8);
    if (v4 - v5 == *(result + 16) - v6)
    {
      if (v5 == v4)
      {
        return 1;
      }

      else
      {
        v7 = v5 + 4;
        do
        {
          v8 = *v6++;
          result = *(v7 - 4) == v8;
          v9 = *(v7 - 4) != v8 || v7 == v4;
          v7 += 4;
        }

        while (!v9);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void vega::Json::to_json<vega::manipulators::FixedSizeElementManipulator<float>,(vega::manipulators::FixedSizeElementManipulator<float>*)0>(uint64_t a1, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = (v5 - v4) >> 2;
  if (v7 == 1)
  {

    vega::Json::value_to_json<float>(a1);
  }

  else if (v7)
  {
    if (*(a1 + 16) == 1)
    {
      v8 = *a1;
      v14 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        vega::Json::value_to_json<float>(a1);
        v11 = (*(a2 + 16) - *(a2 + 8)) >> 2;
        if (v10 < v11 - 1 && *(a1 + 16) == 1)
        {
          v12 = *a1;
          v16 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v16, 1);
          v11 = (*(a2 + 16) - *(a2 + 8)) >> 2;
        }

        ++v10;
        v9 += 4;
      }

      while (v10 < v11);
    }

    if (*(a1 + 16) == 1)
    {
      v13 = *a1;
      v15 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
    }
  }

  else
  {

    vega::operator<<<char [18]>(a1, "null");
  }
}

void vega::Json::value_to_json<float>(uint64_t a1)
{
  vega::to_json<float>(__p);
  vega::operator<<<std::string>(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A5A08474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::to_json<float>@<X0>(_BYTE *a1@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  std::ostream::operator<<();
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v4, a1);
  v4[0] = *MEMORY[0x1E69E54D8];
  v2 = *(MEMORY[0x1E69E54D8] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v4[2] = v2;
  v5 = MEMORY[0x1E69E5548] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v6);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v8);
}

void sub_1A5A08618(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void vega::Json::from_json<vega::manipulators::FixedSizeElementManipulator<float> &,float>(void *a1, void *a2)
{
  v4 = std::istream::peek();
  v36 = v4;
  if (v4 == 34)
  {
LABEL_5:
    v5 = vega::Json::value_from_json<float>(a1);
    v7 = a2[2];
    v6 = a2[3];
    if (v7 >= v6)
    {
      v24 = a2[1];
      v25 = v7 - v24;
      v26 = (v7 - v24) >> 2;
      v27 = v26 + 1;
      if ((v26 + 1) >> 62)
      {
LABEL_34:
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v28 = v6 - v24;
      if (v28 >> 1 > v27)
      {
        v27 = v28 >> 1;
      }

      v29 = v28 >= 0x7FFFFFFFFFFFFFFCLL;
      v30 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v29)
      {
        v30 = v27;
      }

      if (v30)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100]((a2 + 1), v30);
      }

      v31 = (v7 - v24) >> 2;
      v32 = (4 * v26);
      v33 = (4 * v26 - 4 * v31);
      *v32 = v5;
      v8 = v32 + 1;
      memcpy(v33, v24, v25);
      v34 = a2[1];
      a2[1] = v33;
      a2[2] = v8;
      a2[3] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v7 = v5;
      v8 = v7 + 1;
    }

    a2[2] = v8;
    return;
  }

  if (v4 != 91)
  {
    if (v4 == 110)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      return;
    }

    goto LABEL_5;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  do
  {
    v9 = vega::Json::value_from_json<float>(a1);
    v11 = a2[2];
    v10 = a2[3];
    if (v11 >= v10)
    {
      v13 = a2[1];
      v14 = v11 - v13;
      v15 = (v11 - v13) >> 2;
      v16 = v15 + 1;
      if ((v15 + 1) >> 62)
      {
        goto LABEL_34;
      }

      v17 = v10 - v13;
      if (v17 >> 1 > v16)
      {
        v16 = v17 >> 1;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v18 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100]((a2 + 1), v18);
      }

      v19 = (v11 - v13) >> 2;
      v20 = (4 * v15);
      v21 = (4 * v15 - 4 * v19);
      *v20 = v9;
      v12 = v20 + 1;
      memcpy(v21, v13, v14);
      v22 = a2[1];
      a2[1] = v21;
      a2[2] = v12;
      a2[3] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = v9;
      v12 = v11 + 1;
    }

    a2[2] = v12;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  }

  while (v36 == 44);
  if (v36 != 93)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v35, "Invalid JSON: No ending ] in list");
    std::runtime_error::runtime_error(exception, &v35);
    exception->__vftable = &unk_1F1917110;
  }
}

void sub_1A5A088DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

float vega::Json::value_from_json<float>(void *a1)
{
  v4 = 0.0;
  if (std::istream::peek() == 34)
  {
    v3 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }

    MEMORY[0x1AC552810](a1, &v4);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }
  }

  else
  {
    MEMORY[0x1AC552810](a1, &v4);
  }

  return v4;
}

void std::__shared_ptr_emplace<vega::manipulators::FloatingPointDoubleManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19184E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::FloatingPointDoubleManipulator::~FloatingPointDoubleManipulator(vega::manipulators::FloatingPointDoubleManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);

  JUMPOUT(0x1AC552B90);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<double>::str@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  v5 = *(a1 + 8);
  if (*(a1 + 16) != v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      vega::to_string<double>((v5 + v6), v4, __p);
      if ((v14 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v9 = v14;
      }

      else
      {
        v9 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v8, v9);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      v5 = *(a1 + 8);
      v10 = (*(a1 + 16) - v5) >> 3;
      if (v7 < v10 - 1)
      {
        LOBYTE(__p[0]) = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, __p, 1);
        v5 = *(a1 + 8);
        v10 = (*(a1 + 16) - v5) >> 3;
      }

      ++v7;
      v6 += 8;
    }

    while (v7 < v10);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, a2);
  v15[0] = *MEMORY[0x1E69E54D8];
  v11 = *(MEMORY[0x1E69E54D8] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v16 = v11;
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v20);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<double>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  v3 = (a1 + 1);
  a1[2] = a1[1];
  if ((a3 & 7) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v21, "Incompatible num_bytes for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v21);
    exception->__vftable = &unk_1F1917110;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 8;
  do
  {
    v9 = a1[2];
    v8 = a1[3];
    if (v9 >= v8)
    {
      v11 = *v3;
      v12 = v9 - *v3;
      v13 = v12 >> 3;
      v14 = (v12 >> 3) + 1;
      if (v14 >> 61)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v15 = v8 - v11;
      if (v15 >> 2 > v14)
      {
        v14 = v15 >> 2;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100](v3, v16);
      }

      *(8 * v13) = 0;
      v10 = 8 * v13 + 8;
      memcpy(0, v11, v12);
      v17 = a1[1];
      a1[1] = 0;
      a1[2] = v10;
      a1[3] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v9 = 0;
      v10 = (v9 + 8);
    }

    a1[2] = v10;
    result = vega::dicom::RawReader::read_into<double>(a2, v10 - 8);
    if (result)
    {
      v19 = v7 >= a3;
    }

    else
    {
      v19 = 1;
    }

    v7 += 8;
  }

  while (!v19);
  return result;
}

void sub_1A5A08F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t vega::manipulators::FixedSizeElementManipulator<double>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 += vega::dicom::RawWriter::write_from<double>(a2, v2);
    v2 += 8;
  }

  while (v2 != v3);
  return v5;
}

BOOL vega::manipulators::FloatingPointDoubleManipulator::is_valid_for (vega::manipulators::FloatingPointDoubleManipulator *this, const vega::VR *a2)
{
  vega::vr::FD(this);

  return vega::Word::operator==(a2, &word_1ED6FA7A0);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<double>::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v6 = *(result + 8);
    if (v4 - v5 == *(result + 16) - v6)
    {
      if (v5 == v4)
      {
        return 1;
      }

      else
      {
        v7 = v5 + 8;
        do
        {
          v8 = *v6++;
          result = *(v7 - 8) == v8;
          v9 = *(v7 - 8) != v8 || v7 == v4;
          v7 += 8;
        }

        while (!v9);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t vega::dicom::RawReader::read_into<double>(vega::dicom::IOState *a1, uint64_t a2)
{
  if (vega::dicom::IOState::swap(a1))
  {
    v4 = a2 + 7;
    v5 = -8;
    while (1)
    {
      std::istream::read();
      if (!*(*(a1 + 2) + 8))
      {
        break;
      }

      --v4;
      if (__CFADD__(v5++, 1))
      {
        return 1;
      }
    }
  }

  else
  {
    std::istream::read();
    if ((*(*(a1 + 2) + 8) & 0xFFFFFFF8) != 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t vega::dicom::RawWriter::write_from<double>(vega::dicom::IOState *a1, uint64_t a2)
{
  if (vega::dicom::IOState::swap(a1))
  {
    v3 = a2 + 7;
    v4 = -8;
    do
    {
      std::ostream::write();
      --v3;
    }

    while (!__CFADD__(v4++, 1));
  }

  else
  {
    std::ostream::write();
  }

  return 8;
}

void vega::Json::to_json<vega::manipulators::FixedSizeElementManipulator<double>,(vega::manipulators::FixedSizeElementManipulator<double>*)0>(uint64_t a1, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = v5 - v4;
  if (v7 == 1)
  {

    vega::Json::value_to_json<double>(a1, v4);
  }

  else if (v7)
  {
    if (*(a1 + 16) == 1)
    {
      v8 = *a1;
      v14 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        vega::Json::value_to_json<double>(a1, &v4[v9]);
        v4 = *(a2 + 8);
        v11 = (*(a2 + 16) - v4) >> 3;
        if (v10 < v11 - 1 && *(a1 + 16) == 1)
        {
          v12 = *a1;
          v16 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v16, 1);
          v4 = *(a2 + 8);
          v11 = (*(a2 + 16) - v4) >> 3;
        }

        ++v10;
        ++v9;
      }

      while (v10 < v11);
    }

    if (*(a1 + 16) == 1)
    {
      v13 = *a1;
      v15 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
    }
  }

  else
  {

    vega::operator<<<char [18]>(a1, "null");
  }
}

void vega::Json::value_to_json<double>(uint64_t a1, double *a2)
{
  vega::to_json<double>(a2, __p);
  vega::operator<<<std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A5A093E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::to_json<double>@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  MEMORY[0x1AC5528F0](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v11);
}

void sub_1A5A09588(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void vega::Json::from_json<vega::manipulators::FixedSizeElementManipulator<double> &,double>(void *a1, void *a2)
{
  v4 = std::istream::peek();
  v36 = v4;
  if (v4 == 34)
  {
LABEL_5:
    v5 = vega::Json::value_from_json<double>(a1);
    v7 = a2[2];
    v6 = a2[3];
    if (v7 >= v6)
    {
      v24 = a2[1];
      v25 = v7 - v24;
      v26 = (v7 - v24) >> 3;
      v27 = v26 + 1;
      if ((v26 + 1) >> 61)
      {
LABEL_34:
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v28 = v6 - v24;
      if (v28 >> 2 > v27)
      {
        v27 = v28 >> 2;
      }

      v29 = v28 >= 0x7FFFFFFFFFFFFFF8;
      v30 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v29)
      {
        v30 = v27;
      }

      if (v30)
      {
        std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100]((a2 + 1), v30);
      }

      v31 = (v7 - v24) >> 3;
      v32 = (8 * v26);
      v33 = (8 * v26 - 8 * v31);
      *v32 = v5;
      v8 = v32 + 1;
      memcpy(v33, v24, v25);
      v34 = a2[1];
      a2[1] = v33;
      a2[2] = v8;
      a2[3] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v7 = v5;
      v8 = v7 + 1;
    }

    a2[2] = v8;
    return;
  }

  if (v4 != 91)
  {
    if (v4 == 110)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      return;
    }

    goto LABEL_5;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  do
  {
    v9 = vega::Json::value_from_json<double>(a1);
    v11 = a2[2];
    v10 = a2[3];
    if (v11 >= v10)
    {
      v13 = a2[1];
      v14 = v11 - v13;
      v15 = (v11 - v13) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        goto LABEL_34;
      }

      v17 = v10 - v13;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100]((a2 + 1), v18);
      }

      v19 = (v11 - v13) >> 3;
      v20 = (8 * v15);
      v21 = (8 * v15 - 8 * v19);
      *v20 = v9;
      v12 = v20 + 1;
      memcpy(v21, v13, v14);
      v22 = a2[1];
      a2[1] = v21;
      a2[2] = v12;
      a2[3] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = v9;
      v12 = v11 + 1;
    }

    a2[2] = v12;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  }

  while (v36 == 44);
  if (v36 != 93)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v35, "Invalid JSON: No ending ] in list");
    std::runtime_error::runtime_error(exception, &v35);
    exception->__vftable = &unk_1F1917110;
  }
}

void sub_1A5A0984C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

double vega::Json::value_from_json<double>(void *a1)
{
  v4 = 0.0;
  if (std::istream::peek() == 34)
  {
    v3 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }

    MEMORY[0x1AC552800](a1, &v4);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }
  }

  else
  {
    MEMORY[0x1AC552800](a1, &v4);
  }

  return v4;
}

void sub_1A5A09984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::manipulators::PaddedStringManipulator<int>::str@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      vega::to_string<int>((v4 + v5), &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, p_p, size);
      v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = __p.__r_.__value_.__l.__size_;
      }

      v7 += v10;
      if (v6 < ((*(a1 + 16) - *(a1 + 8)) >> 2) - 1)
      {
        v21 = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, &v21, 1);
        ++v7;
        v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      if (v11 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v6;
      v4 = *(a1 + 8);
      v5 += 4;
    }

    while (v6 < (*(a1 + 16) - v4) >> 2);
    if (v7)
    {
      __p.__r_.__value_.__s.__data_[0] = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, &__p, 1);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, a2);
  v15[0] = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v16 = v12;
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v20);
}

BOOL vega::manipulators::PaddedStringManipulator<int>::read_from(uint64_t a1, vega::dicom::IOState *a2, unint64_t a3)
{
  if (a3)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
    v6 = 0;
    v7 = 0;
    v14 = 0;
    v8 = 1;
    v9 = a3;
    while ((vega::dicom::RawReader::read_into<vega::Byte>(a2) & 1) != 0)
    {
      v10 = v14;
      __p.__r_.__value_.__s.__data_[0] = v14;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, &__p, 1);
      if (v10 == 92)
      {
        ++v7;
      }

      v6 = v8++ >= a3;
      if (!--v9)
      {
        *(a1 + 16) = *(a1 + 8);
        std::vector<int>::reserve((a1 + 8), v7 + 1);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, &__p);
        vega::manipulators::PaddedStringManipulator<int>::parse_from_string(a1, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v6 = 1;
        break;
      }
    }

    v15[0] = *MEMORY[0x1E69E54D8];
    v11 = *(MEMORY[0x1E69E54D8] + 72);
    *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v16 = v11;
    v17 = MEMORY[0x1E69E5548] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v18);
    std::iostream::~basic_iostream();
    MEMORY[0x1AC552AF0](&v20);
  }

  else
  {
    *(a1 + 16) = *(a1 + 8);
    return 1;
  }

  return v6;
}

void sub_1A5A09E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t vega::manipulators::PaddedStringManipulator<int>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  (*(*a1 + 24))(__p);
  v3 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v3 = __p[1];
  }

  v5 = vega::dicom::RawWriter::write_from<std::__wrap_iter<char *>>(a2, v4, v4 + v3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1A5A09F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL vega::manipulators::PaddedStringManipulator<int>::operator==(uint64_t a1, void *lpsrc)
{
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  (*(*a1 + 24))(v15, a1);
  (*(*v4 + 24))(__p, v4);
  v5 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v6 = v16;
  }

  else
  {
    v6 = v15[1];
  }

  v7 = v14;
  v8 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v7 = __p[1];
  }

  if (v6 == v7)
  {
    if ((v16 & 0x80u) == 0)
    {
      v9 = v15;
    }

    else
    {
      v9 = v15[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = memcmp(v9, v10, v6) == 0;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = 0;
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  operator delete(__p[0]);
  v5 = v16;
LABEL_19:
  if ((v5 & 0x80) != 0)
  {
    operator delete(v15[0]);
  }

  return v11;
}

void sub_1A5A0A0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::manipulators::PaddedStringManipulator<int>::parse_from_string(void *a1, const std::string *a2)
{
  std::istringstream::basic_istringstream[abi:ne200100](v21, a2, 8);
  memset(&__str, 0, sizeof(__str));
  v3 = (a1 + 1);
  a1[2] = a1[1];
  while (1)
  {
    v4 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v21, &__str, 0x5Cu);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((*(v4 + *(*v4 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_)
      {
        v6 = *(__str.__r_.__value_.__r.__words[0] + __str.__r_.__value_.__l.__size_ - 1);
LABEL_8:
        if (v6 == 32)
        {
          std::string::basic_string(&v19, &__str, 0, size - 1, v26);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          __str = v19;
        }

        v7 = vega::from_string<int>(&__str);
        v9 = a1[2];
        v8 = a1[3];
        if (v9 >= v8)
        {
          v11 = *v3;
          v12 = v9 - *v3;
          v13 = v12 >> 2;
          v14 = (v12 >> 2) + 1;
          if (v14 >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v15 = v8 - v11;
          if (v15 >> 1 > v14)
          {
            v14 = v15 >> 1;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v16 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            std::allocator<int>::allocate_at_least[abi:ne200100]((a1 + 1), v16);
          }

          *(4 * v13) = v7;
          v10 = 4 * v13 + 4;
          memcpy(0, v11, v12);
          v17 = a1[1];
          a1[1] = 0;
          a1[2] = v10;
          a1[3] = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v9 = v7;
          v10 = (v9 + 4);
        }

        a1[2] = v10;
      }
    }

    else if (*(&__str.__r_.__value_.__s + 23))
    {
      v6 = *(&v19.__r_.__value_.__r.__words[2] + HIBYTE(__str.__r_.__value_.__r.__words[2]) + 7);
      goto LABEL_8;
    }
  }

  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v21[0] = *MEMORY[0x1E69E54E0];
  *(v21 + *(v21[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::istream::~istream();
  return MEMORY[0x1AC552AF0](&v25);
}

void sub_1A5A0A408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::istringstream::~istringstream(&a20);
  _Unwind_Resume(a1);
}

uint64_t vega::to_json<int>@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  MEMORY[0x1AC552910](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v11);
}

void sub_1A5A0A5C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<vega::Word>::str@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  if (*(a1 + 16) != *(a1 + 8))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      vega::to_string<vega::Word>(__p);
      if ((v12 & 0x80u) == 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      if ((v12 & 0x80u) == 0)
      {
        v7 = v12;
      }

      else
      {
        v7 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v6, v7);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = (*(a1 + 16) - *(a1 + 8)) >> 1;
      if (v5 < v8 - 1)
      {
        LOBYTE(__p[0]) = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, __p, 1);
        v8 = (*(a1 + 16) - *(a1 + 8)) >> 1;
      }

      ++v5;
      v4 += 2;
    }

    while (v5 < v8);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v13, a2);
  v13[0] = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v9;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v18);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<vega::Word>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  v4 = a1 + 1;
  a1[2] = a1[1];
  if (a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v22, "Incompatible num_bytes for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v22);
    exception->__vftable = &unk_1F1917110;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 2;
  do
  {
    v9 = a1[2];
    v8 = a1[3];
    if (v9 >= v8)
    {
      v11 = (v9 - *v4) >> 1;
      if (v11 <= -2)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v12 = v8 - *v4;
      if (v12 <= v11 + 1)
      {
        v13 = v11 + 1;
      }

      else
      {
        v13 = v12;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        std::allocator<unsigned short>::allocate_at_least[abi:ne200100](v4, v14);
      }

      *(2 * v11) = 0;
      v10 = 2 * v11 + 2;
      v15 = a1[1];
      v16 = a1[2] - v15;
      v17 = (2 * v11 - v16);
      memcpy(v17, v15, v16);
      v18 = a1[1];
      a1[1] = v17;
      a1[2] = v10;
      a1[3] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v9 = 0;
      v10 = (v9 + 1);
    }

    a1[2] = v10;
    result = vega::dicom::RawReader::read_into<unsigned short>(a2);
    if (result)
    {
      v20 = v7 >= a3;
    }

    else
    {
      v20 = 1;
    }

    v7 += 2;
  }

  while (!v20);
  return result;
}

void sub_1A5A0AA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t vega::manipulators::FixedSizeElementManipulator<vega::Word>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 += vega::dicom::RawWriter::write_from<unsigned short>(a2);
    v2 += 2;
  }

  while (v2 != v3);
  return v5;
}

uint64_t vega::manipulators::FixedSizeElementManipulator<vega::Word>::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v6 = a1 + 8;
    v4 = *(a1 + 8);
    v5 = *(v6 + 8);
    v7 = *(result + 8);
    if (v5 - v4 == *(result + 16) - v7)
    {
      if (v4 == v5)
      {
        return 1;
      }

      else
      {
        do
        {
          result = vega::Word::operator==(v4, v7);
          if (!result)
          {
            break;
          }

          ++v4;
          ++v7;
        }

        while (v4 != v5);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t vega::to_json<vega::Word>@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  MEMORY[0x1AC552920](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v11);
}

void sub_1A5A0AD40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<vega::manipulators::OtherFloatManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19188E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::OtherFloatManipulator::~OtherFloatManipulator(vega::manipulators::OtherFloatManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);

  JUMPOUT(0x1AC552B90);
}

BOOL vega::manipulators::OtherFloatManipulator::is_valid_for (vega::manipulators::OtherFloatManipulator *this, const vega::VR *a2)
{
  vega::vr::OF(this);

  return vega::Word::operator==(a2, &word_1ED6FA7AC);
}

void std::__shared_ptr_emplace<vega::manipulators::OtherDoubleManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19189C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::OtherDoubleManipulator::~OtherDoubleManipulator(vega::manipulators::OtherDoubleManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);

  JUMPOUT(0x1AC552B90);
}

BOOL vega::manipulators::OtherDoubleManipulator::is_valid_for (vega::manipulators::OtherDoubleManipulator *this, const vega::VR *a2)
{
  vega::vr::OD(this);

  return vega::Word::operator==(a2, &word_1ED6FA7AE);
}

void std::__shared_ptr_emplace<vega::manipulators::ShortStringManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918B40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::ShortStringManipulator::~ShortStringManipulator(vega::manipulators::ShortStringManipulator *this)
{
  v2 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v3 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  EncodeAccelerationModeOverride = CMPhotoGetEncodeAccelerationModeOverride(this);
  MEMORY[0x1AC552B90](EncodeAccelerationModeOverride, 0xA1C4030951706);
}

BOOL vega::manipulators::ShortStringManipulator::is_valid_for (vega::manipulators::ShortStringManipulator *this, const vega::VR *a2)
{
  vega::vr::SH(this);

  return vega::Word::operator==(a2, &word_1ED6FA7B2);
}

void std::__shared_ptr_emplace<vega::manipulators::SignedLongManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918C18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::SignedLongManipulator::~SignedLongManipulator(vega::manipulators::SignedLongManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);

  JUMPOUT(0x1AC552B90);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<int>::str@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      vega::to_string<int>((v4 + v5), &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 = *(a1 + 8);
      v9 = (*(a1 + 16) - v4) >> 2;
      if (v6 < v9 - 1)
      {
        __p.__r_.__value_.__s.__data_[0] = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, &__p, 1);
        v4 = *(a1 + 8);
        v9 = (*(a1 + 16) - v4) >> 2;
      }

      ++v6;
      v5 += 4;
    }

    while (v6 < v9);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v13, a2);
  v13[0] = *MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v10;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v18);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<int>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  v3 = (a1 + 1);
  a1[2] = a1[1];
  if ((a3 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v21, "Incompatible num_bytes for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v21);
    exception->__vftable = &unk_1F1917110;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 4;
  do
  {
    v9 = a1[2];
    v8 = a1[3];
    if (v9 >= v8)
    {
      v11 = *v3;
      v12 = v9 - *v3;
      v13 = v12 >> 2;
      v14 = (v12 >> 2) + 1;
      if (v14 >> 62)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v15 = v8 - v11;
      if (v15 >> 1 > v14)
      {
        v14 = v15 >> 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v16 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100](v3, v16);
      }

      *(4 * v13) = 0;
      v10 = 4 * v13 + 4;
      memcpy(0, v11, v12);
      v17 = a1[1];
      a1[1] = 0;
      a1[2] = v10;
      a1[3] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v9 = 0;
      v10 = (v9 + 4);
    }

    a1[2] = v10;
    result = vega::dicom::RawReader::read_into<unsigned int>(a2, v10 - 4);
    if (result)
    {
      v19 = v7 >= a3;
    }

    else
    {
      v19 = 1;
    }

    v7 += 4;
  }

  while (!v19);
  return result;
}

void sub_1A5A0B72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t vega::manipulators::FixedSizeElementManipulator<int>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 += vega::dicom::RawWriter::write_from<unsigned int>(a2, v2);
    v2 += 4;
  }

  while (v2 != v3);
  return v5;
}

BOOL vega::manipulators::SignedLongManipulator::is_valid_for (vega::manipulators::SignedLongManipulator *this, const vega::VR *a2)
{
  vega::vr::SL(this);

  return vega::Word::operator==(a2, &word_1ED6FA7B4);
}

void *vega::manipulators::FixedSizeElementManipulator<int>::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16) - v5;
    v7 = *(v4 + 8);
    if (v6 == *(v4 + 16) - v7)
    {
      return (memcmp(v5, v7, v6) == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void vega::Json::from_json<vega::manipulators::FixedSizeElementManipulator<int> &,int>(void *a1, void *a2)
{
  v4 = std::istream::peek();
  v36 = v4;
  if (v4 == 34)
  {
LABEL_5:
    v5 = vega::Json::value_from_json<int>(a1);
    v7 = a2[2];
    v6 = a2[3];
    if (v7 >= v6)
    {
      v24 = a2[1];
      v25 = v7 - v24;
      v26 = (v7 - v24) >> 2;
      v27 = v26 + 1;
      if ((v26 + 1) >> 62)
      {
LABEL_34:
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v28 = v6 - v24;
      if (v28 >> 1 > v27)
      {
        v27 = v28 >> 1;
      }

      v29 = v28 >= 0x7FFFFFFFFFFFFFFCLL;
      v30 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v29)
      {
        v30 = v27;
      }

      if (v30)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100]((a2 + 1), v30);
      }

      v31 = (v7 - v24) >> 2;
      v32 = (4 * v26);
      v33 = (4 * v26 - 4 * v31);
      *v32 = v5;
      v8 = v32 + 1;
      memcpy(v33, v24, v25);
      v34 = a2[1];
      a2[1] = v33;
      a2[2] = v8;
      a2[3] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v7 = v5;
      v8 = v7 + 4;
    }

    a2[2] = v8;
    return;
  }

  if (v4 != 91)
  {
    if (v4 == 110)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      return;
    }

    goto LABEL_5;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  do
  {
    v9 = vega::Json::value_from_json<int>(a1);
    v11 = a2[2];
    v10 = a2[3];
    if (v11 >= v10)
    {
      v13 = a2[1];
      v14 = v11 - v13;
      v15 = (v11 - v13) >> 2;
      v16 = v15 + 1;
      if ((v15 + 1) >> 62)
      {
        goto LABEL_34;
      }

      v17 = v10 - v13;
      if (v17 >> 1 > v16)
      {
        v16 = v17 >> 1;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v18 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100]((a2 + 1), v18);
      }

      v19 = (v11 - v13) >> 2;
      v20 = (4 * v15);
      v21 = (4 * v15 - 4 * v19);
      *v20 = v9;
      v12 = v20 + 1;
      memcpy(v21, v13, v14);
      v22 = a2[1];
      a2[1] = v21;
      a2[2] = v12;
      a2[3] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = v9;
      v12 = v11 + 4;
    }

    a2[2] = v12;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  }

  while (v36 == 44);
  if (v36 != 93)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v35, "Invalid JSON: No ending ] in list");
    std::runtime_error::runtime_error(exception, &v35);
    exception->__vftable = &unk_1F1917110;
  }
}

void sub_1A5A0BBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t vega::manipulators::FixedSizeElementManipulator<short>::str@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      vega::to_string<short>((v4 + v5), &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 = *(a1 + 8);
      v9 = (*(a1 + 16) - v4) >> 1;
      if (v6 < v9 - 1)
      {
        __p.__r_.__value_.__s.__data_[0] = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, &__p, 1);
        v4 = *(a1 + 8);
        v9 = (*(a1 + 16) - v4) >> 1;
      }

      ++v6;
      v5 += 2;
    }

    while (v6 < v9);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v13, a2);
  v13[0] = *MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v10;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v18);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<short>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  v4 = (a1 + 1);
  a1[2] = a1[1];
  if (a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v21, "Incompatible num_bytes for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v21);
    exception->__vftable = &unk_1F1917110;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 2;
  do
  {
    v9 = a1[2];
    v8 = a1[3];
    if (v9 >= v8)
    {
      v11 = *v4;
      v12 = v9 - *v4;
      v13 = v12 >> 1;
      if (v12 >> 1 <= -2)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v14 = v8 - v11;
      if (v14 <= v13 + 1)
      {
        v15 = v13 + 1;
      }

      else
      {
        v15 = v14;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      if (v16)
      {
        std::allocator<unsigned short>::allocate_at_least[abi:ne200100](v4, v16);
      }

      *(2 * v13) = 0;
      v10 = 2 * v13 + 2;
      memcpy(0, v11, v12);
      v17 = a1[1];
      a1[1] = 0;
      a1[2] = v10;
      a1[3] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v9 = 0;
      v10 = (v9 + 2);
    }

    a1[2] = v10;
    result = vega::dicom::RawReader::read_into<unsigned short>(a2);
    if (result)
    {
      v19 = v7 >= a3;
    }

    else
    {
      v19 = 1;
    }

    v7 += 2;
  }

  while (!v19);
  return result;
}

void sub_1A5A0C024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t vega::manipulators::FixedSizeElementManipulator<short>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 += vega::dicom::RawWriter::write_from<unsigned short>(a2);
    v2 += 2;
  }

  while (v2 != v3);
  return v5;
}

void *vega::manipulators::FixedSizeElementManipulator<short>::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16) - v5;
    v7 = *(v4 + 8);
    if (v6 == *(v4 + 16) - v7)
    {
      return (memcmp(v5, v7, v6) == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t vega::to_json<short>@<X0>(__int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  MEMORY[0x1AC552910](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v11);
}

void sub_1A5A0C33C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void sub_1A5A0C3C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::Time>::str@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      vega::Time::str(&__p, (v4 + v5));
      if ((v16 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v16 & 0x80u) == 0)
      {
        v9 = v16;
      }

      else
      {
        v9 = v15;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, p_p, v9);
      v10 = v16;
      v11 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v10 = v15;
      }

      v7 += v10;
      if (v6 < -1 - 0x5555555555555555 * ((*(a1 + 16) - *(a1 + 8)) >> 4))
      {
        v23[0] = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v23, 1);
        ++v7;
        v11 = v16;
      }

      if ((v11 & 0x80) != 0)
      {
        operator delete(__p);
      }

      ++v6;
      v4 = *(a1 + 8);
      v5 += 48;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v4) >> 4));
    if (v7)
    {
      LOBYTE(__p) = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &__p, 1);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v17, a2);
  v17[0] = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v18 = v12;
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v22);
}

BOOL vega::manipulators::PaddedStringManipulator<vega::Time>::read_from(uint64_t a1, vega::dicom::IOState *a2, unint64_t a3)
{
  if (a3)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
    v6 = 0;
    v7 = 0;
    v14 = 0;
    v8 = 1;
    v9 = a3;
    while ((vega::dicom::RawReader::read_into<vega::Byte>(a2) & 1) != 0)
    {
      v10 = v14;
      __p.__r_.__value_.__s.__data_[0] = v14;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, &__p, 1);
      if (v10 == 92)
      {
        ++v7;
      }

      v6 = v8++ >= a3;
      if (!--v9)
      {
        std::vector<vega::Time>::__base_destruct_at_end[abi:ne200100](a1 + 8, *(a1 + 8));
        std::vector<vega::Time>::reserve((a1 + 8), v7 + 1);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, &__p);
        vega::manipulators::PaddedStringManipulator<vega::Time>::parse_from_string(a1, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v6 = 1;
        break;
      }
    }

    v15[0] = *MEMORY[0x1E69E54D8];
    v11 = *(MEMORY[0x1E69E54D8] + 72);
    *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v16 = v11;
    v17 = MEMORY[0x1E69E5548] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v18);
    std::iostream::~basic_iostream();
    MEMORY[0x1AC552AF0](&v20);
  }

  else
  {
    std::vector<vega::Time>::__base_destruct_at_end[abi:ne200100](a1 + 8, *(a1 + 8));
    return 1;
  }

  return v6;
}

void sub_1A5A0C8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::Time>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  (*(*a1 + 24))(__p);
  v3 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v3 = __p[1];
  }

  v5 = vega::dicom::RawWriter::write_from<std::__wrap_iter<char *>>(a2, v4, v4 + v3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1A5A0C994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL vega::manipulators::PaddedStringManipulator<vega::Time>::operator==(uint64_t a1, void *lpsrc)
{
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  (*(*a1 + 24))(v15, a1);
  (*(*v4 + 24))(__p, v4);
  v5 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v6 = v16;
  }

  else
  {
    v6 = v15[1];
  }

  v7 = v14;
  v8 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v7 = __p[1];
  }

  if (v6 == v7)
  {
    if ((v16 & 0x80u) == 0)
    {
      v9 = v15;
    }

    else
    {
      v9 = v15[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = memcmp(v9, v10, v6) == 0;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = 0;
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  operator delete(__p[0]);
  v5 = v16;
LABEL_19:
  if ((v5 & 0x80) != 0)
  {
    operator delete(v15[0]);
  }

  return v11;
}

void sub_1A5A0CB18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::Time>::parse_from_string(uint64_t a1, const std::string *a2)
{
  std::istringstream::basic_istringstream[abi:ne200100](v14, a2, 8);
  memset(&__str, 0, sizeof(__str));
  std::vector<vega::Time>::__base_destruct_at_end[abi:ne200100](a1 + 8, *(a1 + 8));
  while (1)
  {
    v3 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v14, &__str, 0x5Cu);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_)
      {
        v5 = *(__str.__r_.__value_.__r.__words[0] + __str.__r_.__value_.__l.__size_ - 1);
LABEL_8:
        if (v5 == 32)
        {
          std::string::basic_string(&v10, &__str, 0, size - 1, &v19);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          *&__str.__r_.__value_.__l.__data_ = v10;
          __str.__r_.__value_.__r.__words[2] = v11;
        }

        vega::Time::Time(&v10, &__str);
        v6 = *(a1 + 16);
        if (v6 >= *(a1 + 24))
        {
          v7 = std::vector<vega::Time>::__emplace_back_slow_path<vega::Time>(a1 + 8, &v10);
          v8 = *(&v12 + 1);
          *(a1 + 16) = v7;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }
        }

        else
        {
          *v6 = v10;
          v10 = 0uLL;
          v6[1] = v11;
          v11 = 0uLL;
          v6[2] = v12;
          v12 = 0uLL;
          *(a1 + 16) = v6 + 3;
        }

        if (*(&v11 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
        }

        if (*(&v10 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
        }
      }
    }

    else if (*(&__str.__r_.__value_.__s + 23))
    {
      v5 = *(&v12 + HIBYTE(__str.__r_.__value_.__r.__words[2]) + 15);
      goto LABEL_8;
    }
  }

  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v14[0] = *MEMORY[0x1E69E54E0];
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::istream::~istream();
  return MEMORY[0x1AC552AF0](&v18);
}

void sub_1A5A0CE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::istringstream::~istringstream(&a21);
  _Unwind_Resume(a1);
}

uint64_t vega::to_json<vega::Time>@<X0>(vega::dictionary::Page **a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  vega::to_json<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,vega::Time>(v6, a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v6[2] = v4;
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v10);
}

void sub_1A5A0CFE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t vega::to_json<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,vega::Time>(uint64_t a1, vega::dictionary::Page **a2)
{
  v7 = 34;
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v7, 1);
  v5 = vega::operator<<(v4, a2);
  v8 = 34;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v8, 1);
  return a1;
}

void std::__shared_ptr_emplace<vega::manipulators::UnsignedLongManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918F08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::UnsignedLongManipulator::~UnsignedLongManipulator(vega::manipulators::UnsignedLongManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);

  JUMPOUT(0x1AC552B90);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<unsigned int>::str@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      vega::to_string<unsigned int>((v4 + v5), &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 = *(a1 + 8);
      v9 = (*(a1 + 16) - v4) >> 2;
      if (v6 < v9 - 1)
      {
        __p.__r_.__value_.__s.__data_[0] = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, &__p, 1);
        v4 = *(a1 + 8);
        v9 = (*(a1 + 16) - v4) >> 2;
      }

      ++v6;
      v5 += 4;
    }

    while (v6 < v9);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v13, a2);
  v13[0] = *MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v10;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v18);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<unsigned int>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  v3 = (a1 + 1);
  a1[2] = a1[1];
  if ((a3 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v21, "Incompatible num_bytes for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v21);
    exception->__vftable = &unk_1F1917110;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 4;
  do
  {
    v9 = a1[2];
    v8 = a1[3];
    if (v9 >= v8)
    {
      v11 = *v3;
      v12 = v9 - *v3;
      v13 = v12 >> 2;
      v14 = (v12 >> 2) + 1;
      if (v14 >> 62)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v15 = v8 - v11;
      if (v15 >> 1 > v14)
      {
        v14 = v15 >> 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v16 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100](v3, v16);
      }

      *(4 * v13) = 0;
      v10 = 4 * v13 + 4;
      memcpy(0, v11, v12);
      v17 = a1[1];
      a1[1] = 0;
      a1[2] = v10;
      a1[3] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v9 = 0;
      v10 = (v9 + 4);
    }

    a1[2] = v10;
    result = vega::dicom::RawReader::read_into<unsigned int>(a2, v10 - 4);
    if (result)
    {
      v19 = v7 >= a3;
    }

    else
    {
      v19 = 1;
    }

    v7 += 4;
  }

  while (!v19);
  return result;
}

void sub_1A5A0D5D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t vega::manipulators::FixedSizeElementManipulator<unsigned int>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 += vega::dicom::RawWriter::write_from<unsigned int>(a2, v2);
    v2 += 4;
  }

  while (v2 != v3);
  return v5;
}

BOOL vega::manipulators::UnsignedLongManipulator::is_valid_for (vega::manipulators::UnsignedLongManipulator *this, const vega::VR *a2)
{
  vega::vr::UL(this);

  return vega::Word::operator==(a2, &word_1ED6FA7BE);
}

void *vega::manipulators::FixedSizeElementManipulator<unsigned int>::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16) - v5;
    v7 = *(v4 + 8);
    if (v6 == *(v4 + 16) - v7)
    {
      return (memcmp(v5, v7, v6) == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void vega::Json::to_json<vega::manipulators::FixedSizeElementManipulator<unsigned int>,(vega::manipulators::FixedSizeElementManipulator<unsigned int>*)0>(uint64_t a1, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = v5 - v4;
  if (v7 == 1)
  {

    vega::Json::value_to_json<unsigned int>(a1, v4);
  }

  else if (v7)
  {
    if (*(a1 + 16) == 1)
    {
      v8 = *a1;
      v14 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        vega::Json::value_to_json<unsigned int>(a1, &v4[v9]);
        v4 = *(a2 + 8);
        v11 = (*(a2 + 16) - v4) >> 2;
        if (v10 < v11 - 1 && *(a1 + 16) == 1)
        {
          v12 = *a1;
          v16 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v16, 1);
          v4 = *(a2 + 8);
          v11 = (*(a2 + 16) - v4) >> 2;
        }

        ++v10;
        ++v9;
      }

      while (v10 < v11);
    }

    if (*(a1 + 16) == 1)
    {
      v13 = *a1;
      v15 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
    }
  }

  else
  {

    vega::operator<<<char [18]>(a1, "null");
  }
}

void vega::Json::value_to_json<unsigned int>(uint64_t a1, unsigned int *a2)
{
  vega::to_json<unsigned int>(a2, __p);
  vega::operator<<<std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A5A0D978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::to_json<unsigned int>@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  MEMORY[0x1AC552920](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v11);
}

void sub_1A5A0DB1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void vega::Json::from_json<vega::manipulators::FixedSizeElementManipulator<unsigned int> &,unsigned int>(void *a1, void *a2)
{
  v4 = std::istream::peek();
  v36 = v4;
  if (v4 == 34)
  {
LABEL_5:
    v5 = vega::Json::value_from_json<unsigned int>(a1);
    v7 = a2[2];
    v6 = a2[3];
    if (v7 >= v6)
    {
      v24 = a2[1];
      v25 = v7 - v24;
      v26 = (v7 - v24) >> 2;
      v27 = v26 + 1;
      if ((v26 + 1) >> 62)
      {
LABEL_34:
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v28 = v6 - v24;
      if (v28 >> 1 > v27)
      {
        v27 = v28 >> 1;
      }

      v29 = v28 >= 0x7FFFFFFFFFFFFFFCLL;
      v30 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v29)
      {
        v30 = v27;
      }

      if (v30)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100]((a2 + 1), v30);
      }

      v31 = (v7 - v24) >> 2;
      v32 = (4 * v26);
      v33 = (4 * v26 - 4 * v31);
      *v32 = v5;
      v8 = v32 + 1;
      memcpy(v33, v24, v25);
      v34 = a2[1];
      a2[1] = v33;
      a2[2] = v8;
      a2[3] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v7 = v5;
      v8 = v7 + 4;
    }

    a2[2] = v8;
    return;
  }

  if (v4 != 91)
  {
    if (v4 == 110)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      return;
    }

    goto LABEL_5;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  do
  {
    v9 = vega::Json::value_from_json<unsigned int>(a1);
    v11 = a2[2];
    v10 = a2[3];
    if (v11 >= v10)
    {
      v13 = a2[1];
      v14 = v11 - v13;
      v15 = (v11 - v13) >> 2;
      v16 = v15 + 1;
      if ((v15 + 1) >> 62)
      {
        goto LABEL_34;
      }

      v17 = v10 - v13;
      if (v17 >> 1 > v16)
      {
        v16 = v17 >> 1;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v18 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100]((a2 + 1), v18);
      }

      v19 = (v11 - v13) >> 2;
      v20 = (4 * v15);
      v21 = (4 * v15 - 4 * v19);
      *v20 = v9;
      v12 = v20 + 1;
      memcpy(v21, v13, v14);
      v22 = a2[1];
      a2[1] = v21;
      a2[2] = v12;
      a2[3] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = v9;
      v12 = v11 + 4;
    }

    a2[2] = v12;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  }

  while (v36 == 44);
  if (v36 != 93)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v35, "Invalid JSON: No ending ] in list");
    std::runtime_error::runtime_error(exception, &v35);
    exception->__vftable = &unk_1F1917110;
  }
}

void sub_1A5A0DDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t vega::Json::value_from_json<unsigned int>(void *a1)
{
  v4 = 0;
  if (std::istream::peek() == 34)
  {
    v3 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }

    MEMORY[0x1AC552830](a1, &v4);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }
  }

  else
  {
    MEMORY[0x1AC552830](a1, &v4);
  }

  return v4;
}

void std::__shared_ptr_emplace<vega::manipulators::UnknownManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918FC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::UnknownManipulator::~UnknownManipulator(vega::manipulators::UnknownManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);

  JUMPOUT(0x1AC552B90);
}

BOOL vega::manipulators::UnknownManipulator::is_valid_for (vega::manipulators::UnknownManipulator *this, const vega::VR *a2)
{
  vega::vr::UN(this);

  return vega::Word::operator==(a2, &word_1ED6FA7C0);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<unsigned short>::str@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      vega::to_string<unsigned short>((v4 + v5), &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 = *(a1 + 8);
      v9 = (*(a1 + 16) - v4) >> 1;
      if (v6 < v9 - 1)
      {
        __p.__r_.__value_.__s.__data_[0] = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, &__p, 1);
        v4 = *(a1 + 8);
        v9 = (*(a1 + 16) - v4) >> 1;
      }

      ++v6;
      v5 += 2;
    }

    while (v6 < v9);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v13, a2);
  v13[0] = *MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v10;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v18);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<unsigned short>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  v4 = (a1 + 1);
  a1[2] = a1[1];
  if (a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v21, "Incompatible num_bytes for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v21);
    exception->__vftable = &unk_1F1917110;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 2;
  do
  {
    v9 = a1[2];
    v8 = a1[3];
    if (v9 >= v8)
    {
      v11 = *v4;
      v12 = v9 - *v4;
      v13 = v12 >> 1;
      if (v12 >> 1 <= -2)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v14 = v8 - v11;
      if (v14 <= v13 + 1)
      {
        v15 = v13 + 1;
      }

      else
      {
        v15 = v14;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      if (v16)
      {
        std::allocator<unsigned short>::allocate_at_least[abi:ne200100](v4, v16);
      }

      *(2 * v13) = 0;
      v10 = 2 * v13 + 2;
      memcpy(0, v11, v12);
      v17 = a1[1];
      a1[1] = 0;
      a1[2] = v10;
      a1[3] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v9 = 0;
      v10 = (v9 + 2);
    }

    a1[2] = v10;
    result = vega::dicom::RawReader::read_into<unsigned short>(a2);
    if (result)
    {
      v19 = v7 >= a3;
    }

    else
    {
      v19 = 1;
    }

    v7 += 2;
  }

  while (!v19);
  return result;
}

void sub_1A5A0E450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t vega::manipulators::FixedSizeElementManipulator<unsigned short>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 += vega::dicom::RawWriter::write_from<unsigned short>(a2);
    v2 += 2;
  }

  while (v2 != v3);
  return v5;
}

void *vega::manipulators::FixedSizeElementManipulator<unsigned short>::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16) - v5;
    v7 = *(v4 + 8);
    if (v6 == *(v4 + 16) - v7)
    {
      return (memcmp(v5, v7, v6) == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t vega::to_json<unsigned short>@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  MEMORY[0x1AC552920](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v11);
}

void sub_1A5A0E768(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__120__shared_ptr_emplaceIN4vega12manipulators24UnlimitedTextManipulatorENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F1919148;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  vega::manipulators::SingleStringManipulator::SingleStringManipulator((a1 + 24));
  *(a1 + 24) = &unk_1F1919198;
  return a1;
}

void std::__shared_ptr_emplace<vega::manipulators::UnlimitedTextManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1919148;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::UnlimitedTextManipulator::~UnlimitedTextManipulator(void **this)
{
  *this = &unk_1F1919888;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  *this = &unk_1F1919888;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);

  JUMPOUT(0x1AC552B90);
}

BOOL vega::manipulators::UnlimitedTextManipulator::is_valid_for (vega::manipulators::UnlimitedTextManipulator *this, const vega::VR *a2)
{
  vega::vr::UT(this);

  return vega::Word::operator==(a2, &word_1ED6FA7C4);
}

void std::__shared_ptr_emplace<vega::manipulators::SignedVeryLongManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1919220;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::SignedVeryLongManipulator::~SignedVeryLongManipulator(vega::manipulators::SignedVeryLongManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);

  JUMPOUT(0x1AC552B90);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<long long>::str@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      vega::to_string<long long>((v4 + v5), &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 = *(a1 + 8);
      v9 = (*(a1 + 16) - v4) >> 3;
      if (v6 < v9 - 1)
      {
        __p.__r_.__value_.__s.__data_[0] = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, &__p, 1);
        v4 = *(a1 + 8);
        v9 = (*(a1 + 16) - v4) >> 3;
      }

      ++v6;
      v5 += 8;
    }

    while (v6 < v9);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v13, a2);
  v13[0] = *MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v10;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v18);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<long long>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  v3 = (a1 + 1);
  a1[2] = a1[1];
  if ((a3 & 7) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v21, "Incompatible num_bytes for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v21);
    exception->__vftable = &unk_1F1917110;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 8;
  do
  {
    v9 = a1[2];
    v8 = a1[3];
    if (v9 >= v8)
    {
      v11 = *v3;
      v12 = v9 - *v3;
      v13 = v12 >> 3;
      v14 = (v12 >> 3) + 1;
      if (v14 >> 61)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v15 = v8 - v11;
      if (v15 >> 2 > v14)
      {
        v14 = v15 >> 2;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100](v3, v16);
      }

      *(8 * v13) = 0;
      v10 = 8 * v13 + 8;
      memcpy(0, v11, v12);
      v17 = a1[1];
      a1[1] = 0;
      a1[2] = v10;
      a1[3] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v9 = 0;
      v10 = (v9 + 8);
    }

    a1[2] = v10;
    result = vega::dicom::RawReader::read_into<double>(a2, v10 - 8);
    if (result)
    {
      v19 = v7 >= a3;
    }

    else
    {
      v19 = 1;
    }

    v7 += 8;
  }

  while (!v19);
  return result;
}

void sub_1A5A0EF84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t vega::manipulators::FixedSizeElementManipulator<long long>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 += vega::dicom::RawWriter::write_from<double>(a2, v2);
    v2 += 8;
  }

  while (v2 != v3);
  return v5;
}

BOOL vega::manipulators::SignedVeryLongManipulator::is_valid_for (vega::manipulators::SignedVeryLongManipulator *this, const vega::VR *a2)
{
  vega::vr::SV(this);

  return vega::Word::operator==(a2, &word_1ED6FA7C6);
}

void *vega::manipulators::FixedSizeElementManipulator<long long>::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16) - v5;
    v7 = *(v4 + 8);
    if (v6 == *(v4 + 16) - v7)
    {
      return (memcmp(v5, v7, v6) == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void vega::Json::to_json<vega::manipulators::FixedSizeElementManipulator<long long>,(vega::manipulators::FixedSizeElementManipulator<long long>*)0>(uint64_t a1, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = v5 - v4;
  if (v7 == 1)
  {

    vega::Json::value_to_json<long long>(a1, v4);
  }

  else if (v7)
  {
    if (*(a1 + 16) == 1)
    {
      v8 = *a1;
      v14 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        vega::Json::value_to_json<long long>(a1, &v4[v9]);
        v4 = *(a2 + 8);
        v11 = (*(a2 + 16) - v4) >> 3;
        if (v10 < v11 - 1 && *(a1 + 16) == 1)
        {
          v12 = *a1;
          v16 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v16, 1);
          v4 = *(a2 + 8);
          v11 = (*(a2 + 16) - v4) >> 3;
        }

        ++v10;
        ++v9;
      }

      while (v10 < v11);
    }

    if (*(a1 + 16) == 1)
    {
      v13 = *a1;
      v15 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
    }
  }

  else
  {

    vega::operator<<<char [18]>(a1, "null");
  }
}

void vega::Json::value_to_json<long long>(uint64_t a1, void *a2)
{
  vega::to_json<long long>(a2, __p);
  vega::operator<<<std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A5A0F328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::to_json<long long>@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  MEMORY[0x1AC552930](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v11);
}

void sub_1A5A0F4CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void vega::Json::from_json<vega::manipulators::FixedSizeElementManipulator<long long> &,long long>(void *a1, void *a2)
{
  v4 = std::istream::peek();
  v36 = v4;
  if (v4 == 34)
  {
LABEL_5:
    v5 = vega::Json::value_from_json<long long>(a1);
    v7 = a2[2];
    v6 = a2[3];
    if (v7 >= v6)
    {
      v24 = a2[1];
      v25 = v7 - v24;
      v26 = (v7 - v24) >> 3;
      v27 = v26 + 1;
      if ((v26 + 1) >> 61)
      {
LABEL_34:
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v28 = v6 - v24;
      if (v28 >> 2 > v27)
      {
        v27 = v28 >> 2;
      }

      v29 = v28 >= 0x7FFFFFFFFFFFFFF8;
      v30 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v29)
      {
        v30 = v27;
      }

      if (v30)
      {
        std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100]((a2 + 1), v30);
      }

      v31 = (v7 - v24) >> 3;
      v32 = (8 * v26);
      v33 = (8 * v26 - 8 * v31);
      *v32 = v5;
      v8 = v32 + 1;
      memcpy(v33, v24, v25);
      v34 = a2[1];
      a2[1] = v33;
      a2[2] = v8;
      a2[3] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v7 = v5;
      v8 = v7 + 1;
    }

    a2[2] = v8;
    return;
  }

  if (v4 != 91)
  {
    if (v4 == 110)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      return;
    }

    goto LABEL_5;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  do
  {
    v9 = vega::Json::value_from_json<long long>(a1);
    v11 = a2[2];
    v10 = a2[3];
    if (v11 >= v10)
    {
      v13 = a2[1];
      v14 = v11 - v13;
      v15 = (v11 - v13) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        goto LABEL_34;
      }

      v17 = v10 - v13;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100]((a2 + 1), v18);
      }

      v19 = (v11 - v13) >> 3;
      v20 = (8 * v15);
      v21 = (8 * v15 - 8 * v19);
      *v20 = v9;
      v12 = v20 + 1;
      memcpy(v21, v13, v14);
      v22 = a2[1];
      a2[1] = v21;
      a2[2] = v12;
      a2[3] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = v9;
      v12 = v11 + 1;
    }

    a2[2] = v12;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  }

  while (v36 == 44);
  if (v36 != 93)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v35, "Invalid JSON: No ending ] in list");
    std::runtime_error::runtime_error(exception, &v35);
    exception->__vftable = &unk_1F1917110;
  }
}

void sub_1A5A0F788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t vega::Json::value_from_json<long long>(void *a1)
{
  v4 = 0;
  if (std::istream::peek() == 34)
  {
    v3 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }

    MEMORY[0x1AC552860](a1, &v4);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }
  }

  else
  {
    MEMORY[0x1AC552860](a1, &v4);
  }

  return v4;
}

void std::__shared_ptr_emplace<vega::manipulators::UnsignedVeryLongManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19192E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::UnsignedVeryLongManipulator::~UnsignedVeryLongManipulator(vega::manipulators::UnsignedVeryLongManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);

  JUMPOUT(0x1AC552B90);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<unsigned long long>::str@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      vega::to_string<unsigned long long>((v4 + v5), &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 = *(a1 + 8);
      v9 = (*(a1 + 16) - v4) >> 3;
      if (v6 < v9 - 1)
      {
        __p.__r_.__value_.__s.__data_[0] = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, &__p, 1);
        v4 = *(a1 + 8);
        v9 = (*(a1 + 16) - v4) >> 3;
      }

      ++v6;
      v5 += 8;
    }

    while (v6 < v9);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v13, a2);
  v13[0] = *MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v10;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v18);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<unsigned long long>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  v3 = (a1 + 1);
  a1[2] = a1[1];
  if ((a3 & 7) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v21, "Incompatible num_bytes for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v21);
    exception->__vftable = &unk_1F1917110;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 8;
  do
  {
    v9 = a1[2];
    v8 = a1[3];
    if (v9 >= v8)
    {
      v11 = *v3;
      v12 = v9 - *v3;
      v13 = v12 >> 3;
      v14 = (v12 >> 3) + 1;
      if (v14 >> 61)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v15 = v8 - v11;
      if (v15 >> 2 > v14)
      {
        v14 = v15 >> 2;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100](v3, v16);
      }

      *(8 * v13) = 0;
      v10 = 8 * v13 + 8;
      memcpy(0, v11, v12);
      v17 = a1[1];
      a1[1] = 0;
      a1[2] = v10;
      a1[3] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v9 = 0;
      v10 = (v9 + 8);
    }

    a1[2] = v10;
    result = vega::dicom::RawReader::read_into<double>(a2, v10 - 8);
    if (result)
    {
      v19 = v7 >= a3;
    }

    else
    {
      v19 = 1;
    }

    v7 += 8;
  }

  while (!v19);
  return result;
}

void sub_1A5A0FDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t vega::manipulators::FixedSizeElementManipulator<unsigned long long>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 += vega::dicom::RawWriter::write_from<double>(a2, v2);
    v2 += 8;
  }

  while (v2 != v3);
  return v5;
}

BOOL vega::manipulators::UnsignedVeryLongManipulator::is_valid_for (vega::manipulators::UnsignedVeryLongManipulator *this, const vega::VR *a2)
{
  vega::vr::UV(this);

  return vega::Word::operator==(a2, &word_1ED6FA7C8);
}

void *vega::manipulators::FixedSizeElementManipulator<unsigned long long>::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16) - v5;
    v7 = *(v4 + 8);
    if (v6 == *(v4 + 16) - v7)
    {
      return (memcmp(v5, v7, v6) == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void vega::Json::to_json<vega::manipulators::FixedSizeElementManipulator<unsigned long long>,(vega::manipulators::FixedSizeElementManipulator<unsigned long long>*)0>(uint64_t a1, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = v5 - v4;
  if (v7 == 1)
  {

    vega::Json::value_to_json<unsigned long long>(a1, v4);
  }

  else if (v7)
  {
    if (*(a1 + 16) == 1)
    {
      v8 = *a1;
      v14 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        vega::Json::value_to_json<unsigned long long>(a1, &v4[v9]);
        v4 = *(a2 + 8);
        v11 = (*(a2 + 16) - v4) >> 3;
        if (v10 < v11 - 1 && *(a1 + 16) == 1)
        {
          v12 = *a1;
          v16 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v16, 1);
          v4 = *(a2 + 8);
          v11 = (*(a2 + 16) - v4) >> 3;
        }

        ++v10;
        ++v9;
      }

      while (v10 < v11);
    }

    if (*(a1 + 16) == 1)
    {
      v13 = *a1;
      v15 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
    }
  }

  else
  {

    vega::operator<<<char [18]>(a1, "null");
  }
}

void vega::Json::value_to_json<unsigned long long>(uint64_t a1, void *a2)
{
  vega::to_json<unsigned long long>(a2, __p);
  vega::operator<<<std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A5A1016C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::to_json<unsigned long long>@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  MEMORY[0x1AC552940](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v11);
}

void sub_1A5A10310(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void vega::Json::from_json<vega::manipulators::FixedSizeElementManipulator<unsigned long long> &,unsigned long long>(void *a1, void *a2)
{
  v4 = std::istream::peek();
  v36 = v4;
  if (v4 == 34)
  {
LABEL_5:
    v5 = vega::Json::value_from_json<unsigned long long>(a1);
    v7 = a2[2];
    v6 = a2[3];
    if (v7 >= v6)
    {
      v24 = a2[1];
      v25 = v7 - v24;
      v26 = (v7 - v24) >> 3;
      v27 = v26 + 1;
      if ((v26 + 1) >> 61)
      {
LABEL_34:
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v28 = v6 - v24;
      if (v28 >> 2 > v27)
      {
        v27 = v28 >> 2;
      }

      v29 = v28 >= 0x7FFFFFFFFFFFFFF8;
      v30 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v29)
      {
        v30 = v27;
      }

      if (v30)
      {
        std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100]((a2 + 1), v30);
      }

      v31 = (v7 - v24) >> 3;
      v32 = (8 * v26);
      v33 = (8 * v26 - 8 * v31);
      *v32 = v5;
      v8 = v32 + 1;
      memcpy(v33, v24, v25);
      v34 = a2[1];
      a2[1] = v33;
      a2[2] = v8;
      a2[3] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v7 = v5;
      v8 = v7 + 1;
    }

    a2[2] = v8;
    return;
  }

  if (v4 != 91)
  {
    if (v4 == 110)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      return;
    }

    goto LABEL_5;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  do
  {
    v9 = vega::Json::value_from_json<unsigned long long>(a1);
    v11 = a2[2];
    v10 = a2[3];
    if (v11 >= v10)
    {
      v13 = a2[1];
      v14 = v11 - v13;
      v15 = (v11 - v13) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        goto LABEL_34;
      }

      v17 = v10 - v13;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100]((a2 + 1), v18);
      }

      v19 = (v11 - v13) >> 3;
      v20 = (8 * v15);
      v21 = (8 * v15 - 8 * v19);
      *v20 = v9;
      v12 = v20 + 1;
      memcpy(v21, v13, v14);
      v22 = a2[1];
      a2[1] = v21;
      a2[2] = v12;
      a2[3] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = v9;
      v12 = v11 + 1;
    }

    a2[2] = v12;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  }

  while (v36 == 44);
  if (v36 != 93)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v35, "Invalid JSON: No ending ] in list");
    std::runtime_error::runtime_error(exception, &v35);
    exception->__vftable = &unk_1F1917110;
  }
}

void sub_1A5A105CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t vega::Json::value_from_json<unsigned long long>(void *a1)
{
  v4 = 0;
  if (std::istream::peek() == 34)
  {
    v3 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }

    MEMORY[0x1AC552870](a1, &v4);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }
  }

  else
  {
    MEMORY[0x1AC552870](a1, &v4);
  }

  return v4;
}

void vega::vr::AE()
{
  if (__cxa_guard_acquire(&qword_1ED6FA7D0))
  {
    _MergedGlobals_15 = 17729;

    __cxa_guard_release(&qword_1ED6FA7D0);
  }
}

void vega::vr::AS()
{
  if (__cxa_guard_acquire(&qword_1ED6FA7D8))
  {
    word_1ED6FA792 = 21313;

    __cxa_guard_release(&qword_1ED6FA7D8);
  }
}

void vega::vr::AT()
{
  if (__cxa_guard_acquire(&qword_1ED6FA7E0))
  {
    word_1ED6FA794 = 21569;

    __cxa_guard_release(&qword_1ED6FA7E0);
  }
}

{
  if (__cxa_guard_acquire(qword_1ED6FA6F0))
  {
    word_1ED6FA6A0 = 21569;

    __cxa_guard_release(qword_1ED6FA6F0);
  }
}

void vega::vr::CS()
{
  if (__cxa_guard_acquire(&qword_1ED6FA7E8))
  {
    word_1ED6FA796 = 21315;

    __cxa_guard_release(&qword_1ED6FA7E8);
  }
}

void vega::vr::DA()
{
  if (__cxa_guard_acquire(&qword_1ED6FA7F0))
  {
    word_1ED6FA798 = 16708;

    __cxa_guard_release(&qword_1ED6FA7F0);
  }
}

void vega::vr::DS()
{
  if (__cxa_guard_acquire(&qword_1ED6FA7F8))
  {
    word_1ED6FA79A = 21316;

    __cxa_guard_release(&qword_1ED6FA7F8);
  }
}

void vega::vr::DT()
{
  if (__cxa_guard_acquire(&qword_1ED6FA800))
  {
    word_1ED6FA79C = 21572;

    __cxa_guard_release(&qword_1ED6FA800);
  }
}

void vega::vr::FL()
{
  if (__cxa_guard_acquire(&qword_1ED6FA808))
  {
    word_1ED6FA79E = 19526;

    __cxa_guard_release(&qword_1ED6FA808);
  }
}

{
  if (__cxa_guard_acquire(&qword_1ED6FA6E0))
  {
    word_1ED6FA69C = 19526;

    __cxa_guard_release(&qword_1ED6FA6E0);
  }
}

void vega::vr::FD()
{
  if (__cxa_guard_acquire(&qword_1ED6FA810))
  {
    word_1ED6FA7A0 = 17478;

    __cxa_guard_release(&qword_1ED6FA810);
  }
}

{
  if (__cxa_guard_acquire(&qword_1ED6FA6E8))
  {
    word_1ED6FA69E = 17478;

    __cxa_guard_release(&qword_1ED6FA6E8);
  }
}

void vega::vr::IS()
{
  if (__cxa_guard_acquire(&qword_1ED6FA818))
  {
    word_1ED6FA7A2 = 21321;

    __cxa_guard_release(&qword_1ED6FA818);
  }
}

void vega::vr::LO()
{
  if (__cxa_guard_acquire(&qword_1ED6FA820))
  {
    word_1ED6FA7A4 = 20300;

    __cxa_guard_release(&qword_1ED6FA820);
  }
}

void vega::vr::LT()
{
  if (__cxa_guard_acquire(&qword_1ED6FA828))
  {
    word_1ED6FA7A6 = 21580;

    __cxa_guard_release(&qword_1ED6FA828);
  }
}

void vega::vr::OF()
{
  if (__cxa_guard_acquire(&qword_1ED6FA840))
  {
    word_1ED6FA7AC = 17999;

    __cxa_guard_release(&qword_1ED6FA840);
  }
}

void vega::vr::OD()
{
  if (__cxa_guard_acquire(&qword_1ED6FA848))
  {
    word_1ED6FA7AE = 17487;

    __cxa_guard_release(&qword_1ED6FA848);
  }
}

void vega::vr::PN()
{
  if (__cxa_guard_acquire(&qword_1ED6FA850))
  {
    word_1ED6FA7B0 = 20048;

    __cxa_guard_release(&qword_1ED6FA850);
  }
}

void vega::vr::SH()
{
  if (__cxa_guard_acquire(&qword_1ED6FA858))
  {
    word_1ED6FA7B2 = 18515;

    __cxa_guard_release(&qword_1ED6FA858);
  }
}

void vega::vr::SL()
{
  if (__cxa_guard_acquire(&qword_1ED6FA860))
  {
    word_1ED6FA7B4 = 19539;

    __cxa_guard_release(&qword_1ED6FA860);
  }
}

void vega::vr::ST()
{
  if (__cxa_guard_acquire(&qword_1ED6FA870))
  {
    word_1ED6FA7B8 = 21587;

    __cxa_guard_release(&qword_1ED6FA870);
  }
}

void vega::vr::TM()
{
  if (__cxa_guard_acquire(&qword_1ED6FA878))
  {
    word_1ED6FA7BA = 19796;

    __cxa_guard_release(&qword_1ED6FA878);
  }
}

void vega::vr::UI()
{
  if (__cxa_guard_acquire(&qword_1ED6FA880))
  {
    word_1ED6FA7BC = 18773;

    __cxa_guard_release(&qword_1ED6FA880);
  }
}

void vega::vr::UL()
{
  if (__cxa_guard_acquire(&qword_1ED6FA888))
  {
    word_1ED6FA7BE = 19541;

    __cxa_guard_release(&qword_1ED6FA888);
  }
}

void vega::vr::UN()
{
  if (__cxa_guard_acquire(&qword_1ED6FA890))
  {
    word_1ED6FA7C0 = 20053;

    __cxa_guard_release(&qword_1ED6FA890);
  }
}

void vega::vr::UT()
{
  if (__cxa_guard_acquire(&qword_1ED6FA8A0))
  {
    word_1ED6FA7C4 = 21589;

    __cxa_guard_release(&qword_1ED6FA8A0);
  }
}

void vega::vr::SV()
{
  if (__cxa_guard_acquire(&qword_1ED6FA8A8))
  {
    word_1ED6FA7C6 = 22099;

    __cxa_guard_release(&qword_1ED6FA8A8);
  }
}

void vega::vr::UV()
{
  if (__cxa_guard_acquire(&qword_1ED6FA8B0))
  {
    word_1ED6FA7C8 = 22101;

    __cxa_guard_release(&qword_1ED6FA8B0);
  }
}

void vega::manipulators::PixelDataManipulator::allows_vr()
{
  if (__cxa_guard_acquire(&qword_1ED6FA8C0))
  {
    word_1ED6FA7CA = 30831;
    qword_1ED6FA8B8 = &word_1ED6FA7CA;

    __cxa_guard_release(&qword_1ED6FA8C0);
  }
}

uint64_t vega::dicom::RawReader::RawReader(uint64_t a1, void *a2)
{
  vega::dicom::IOState::IOState(a1);
  v4 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  std::istream::tellg();
  std::istream::seekg();
  std::istream::tellg();
  *(a1 + 128) = v12;
  *(a1 + 144) = v13;
  *(a1 + 160) = v14;
  *(a1 + 64) = v8;
  *(a1 + 80) = v9;
  *(a1 + 96) = v10;
  *(a1 + 112) = v11;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  std::istream::seekg();
  return a1;
}

void sub_1A5A11094(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 vega::dicom::RawReader::eof_pos@<Q0>(vega::dicom::RawReader *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 9);
  *(a2 + 96) = *(this + 8);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(this + 20);
  v3 = *(this + 5);
  *(a2 + 32) = *(this + 4);
  *(a2 + 48) = v3;
  v4 = *(this + 7);
  *(a2 + 64) = *(this + 6);
  *(a2 + 80) = v4;
  result = *(this + 3);
  *a2 = *(this + 2);
  *(a2 + 16) = result;
  return result;
}

BOOL vega::dicom::RawReader::eof(vega::dicom::RawReader *this)
{
  std::istream::tellg();
  if (v4 < 0)
  {
    return 1;
  }

  std::istream::tellg();
  return v3 >= *(this + 20);
}

uint64_t vega::dicom::RawReader::read_into<vega::Tag>(vega::dicom::IOState *a1, vega::Tag *a2)
{
  CMPhotoGetEncodeAccelerationModeOverride(a2);
  result = vega::dicom::RawReader::read_into<unsigned short>(a1);
  if (result)
  {
    vega::Tag::element(a2);

    return vega::dicom::RawReader::read_into<unsigned short>(a1);
  }

  return result;
}

uint64_t vega::dicom::RawReader::read_into<vega::VR>(vega::dicom::IOState *a1)
{
  result = vega::dicom::RawReader::read_into<vega::Byte>(a1);
  if (result)
  {

    return vega::dicom::RawReader::read_into<vega::Byte>(a1);
  }

  return result;
}

uint64_t vega::Json::value_from_json<std::string>@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1 + *(*a1 - 24);
  v5 = *(v4 + 2);
  *(v4 + 2) = v5 & 0xFFFFEFFF;
  v24 = 0;
  v6 = MEMORY[0x1E69E9830];
  do
  {
    v7 = std::istream::peek();
    if (v7 <= 0x7F)
    {
      v8 = *(v6 + 4 * v7 + 60) & 0x4000;
    }

    else
    {
      v8 = __maskrune(v7, 0x4000uLL);
    }

    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v24);
  }

  while (v8);
  if (v24 != 34)
  {
    vega::Json::value_from_json<std::string>();
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
  while ((*(a1 + *(*a1 - 24) + 32) & 2) == 0)
  {
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v24);
    if (v24 == 92)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v24);
      if (v24 <= 0x65u)
      {
        switch(v24)
        {
          case '""':
            v25[0] = 34;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v25, 1);
            break;
          case '\\':
            v25[0] = 92;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v25, 1);
            break;
          case 'b':
            v25[0] = 8;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v25, 1);
            break;
        }
      }

      else if (v24 > 0x71u)
      {
        if (v24 == 114)
        {
          v25[0] = 13;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v25, 1);
        }

        else if (v24 == 116)
        {
          v25[0] = 9;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v25, 1);
        }
      }

      else if (v24 == 102)
      {
        v25[0] = 12;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v25, 1);
      }

      else if (v24 == 110)
      {
        v25[0] = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v25, 1);
      }
    }

    else
    {
      if (v24 == 34)
      {
        break;
      }

      v25[0] = v24;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v25, 1);
    }
  }

  *(&v14[1] + *(v14[0] - 24)) = v5;
  if ((v22 & 0x10) != 0)
  {
    v10 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v10 = v18;
    }

    locale = v17[4].__locale_;
  }

  else
  {
    if ((v22 & 8) == 0)
    {
      v9 = 0;
      a2[23] = 0;
      goto LABEL_42;
    }

    locale = v17[1].__locale_;
    v10 = v17[3].__locale_;
  }

  v9 = v10 - locale;
  if ((v10 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a2[23] = v9;
  if (v9)
  {
    memmove(a2, locale, v9);
  }

LABEL_42:
  a2[v9] = 0;
  v14[0] = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v15 = v12;
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v20 < 0)
  {
    operator delete(__p);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v23);
}

void sub_1A5A116C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10, MEMORY[0x1E69E54D8]);
  MEMORY[0x1AC552AF0](&a26);
  _Unwind_Resume(a1);
}

void *vega::operator>>(void *a1, _BYTE *a2)
{
  if (std::istream::peek() == 45)
  {
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, a2);
  }

  else
  {
    v5 = 0;
    MEMORY[0x1AC552830](a1, &v5);
    *a2 = v5;
  }

  return a1;
}

void *vega::operator<<(void *a1)
{
  vega::to_string<vega::Word>(__p);
  if ((v6 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v6 & 0x80u) == 0)
  {
    v3 = v6;
  }

  else
  {
    v3 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1A5A11818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::operator>>(uint64_t a1, _WORD *a2)
{
  if (std::istream::peek() == 45)
  {
    MEMORY[0x1AC552840](a1, a2);
  }

  else
  {
    v5 = 0;
    MEMORY[0x1AC552830](a1, &v5);
    *a2 = v5;
  }

  return a1;
}

void *vega::operator<<(void *a1, double *a2)
{
  v3 = *(a1 + *(*a1 - 24) + 8);
  v15 = 0;
  v4 = *a2;
  v5 = 0.0;
  if (fabs(*a2) != INFINITY)
  {
    v5 = vega::math::frexp10(&v15, *a2, a2);
    v4 = *a2;
  }

  if (fabs(v4) != INFINITY)
  {
    if (v15 < 100)
    {
      if (v15 < 13)
      {
        if ((v15 & 0x80000000) == 0)
        {
          *(a1 + *(*a1 - 24) + 16) = 14;
          MEMORY[0x1AC5528F0](a1, v4);
          goto LABEL_16;
        }

        if (v15 < 0xFFFFFFF7)
        {
          v14 = a1 + *(*a1 - 24);
          if (v15 < 0xFFFFFF9D)
          {
            if (v5 <= 0.0)
            {
              *(v14 + 2) = 9;
              v8 = MEMORY[0x1AC5528F0](a1);
              v25 = 101;
              v9 = &v25;
            }

            else
            {
              *(v14 + 2) = 10;
              v8 = MEMORY[0x1AC5528F0](a1);
              v24 = 101;
              v9 = &v24;
            }
          }

          else if (v5 <= 0.0)
          {
            *(v14 + 2) = 10;
            v8 = MEMORY[0x1AC5528F0](a1);
            v23 = 101;
            v9 = &v23;
          }

          else
          {
            *(v14 + 2) = 11;
            v8 = MEMORY[0x1AC5528F0](a1);
            v22 = 101;
            v9 = &v22;
          }
        }

        else
        {
          v13 = a1 + *(*a1 - 24);
          if (v5 <= 0.0)
          {
            *(v13 + 2) = 11;
            v8 = MEMORY[0x1AC5528F0](a1);
            v21 = 101;
            v9 = &v21;
          }

          else
          {
            *(v13 + 2) = 12;
            v8 = MEMORY[0x1AC5528F0](a1);
            v20 = 101;
            v9 = &v20;
          }
        }
      }

      else
      {
        v10 = a1 + *(*a1 - 24);
        if (v5 <= 0.0)
        {
          *(v10 + 2) = 11;
          v8 = MEMORY[0x1AC5528F0](a1);
          v19 = 101;
          v9 = &v19;
        }

        else
        {
          *(v10 + 2) = 12;
          v8 = MEMORY[0x1AC5528F0](a1);
          v18 = 101;
          v9 = &v18;
        }
      }
    }

    else
    {
      v7 = a1 + *(*a1 - 24);
      if (v5 <= 0.0)
      {
        *(v7 + 2) = 10;
        v8 = MEMORY[0x1AC5528F0](a1);
        v17 = 101;
        v9 = &v17;
      }

      else
      {
        *(v7 + 2) = 11;
        v8 = MEMORY[0x1AC5528F0](a1);
        v16 = 101;
        v9 = &v16;
      }
    }

    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, 1);
    MEMORY[0x1AC552910](v11, v15);
    goto LABEL_16;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "inf", 3);
LABEL_16:
  *(a1 + *(*a1 - 24) + 8) = v3;
  return a1;
}

uint64_t vega::DecimalString::str@<X0>(vega::DecimalString *this@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v9);
  vega::operator<<(&v10, this);
  if ((v17 & 0x10) != 0)
  {
    v5 = v16;
    if (v16 < v13)
    {
      v16 = v13;
      v5 = v13;
    }

    locale = v12[4].__locale_;
  }

  else
  {
    if ((v17 & 8) == 0)
    {
      v4 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v12[1].__locale_;
    v5 = v12[3].__locale_;
  }

  v4 = v5 - locale;
  if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    memmove(a2, locale, v4);
  }

LABEL_14:
  a2[v4] = 0;
  v9[0] = *MEMORY[0x1E69E54D8];
  v7 = *(MEMORY[0x1E69E54D8] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v10 = v7;
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(__p);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v18);
}

void sub_1A5A11E48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x1E69E54D8]);
  MEMORY[0x1AC552AF0](v2 + 128);
  _Unwind_Resume(a1);
}

void vega::dicom::DataSet::DataSet(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  v2 = a2[1];
  a1[3] = *a2;
  a1[4] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a1[6] = 0;
  a1[5] = a1 + 6;
  a1[7] = 0;
  _ZNSt3__115allocate_sharedB8ne200100IN4vega10dictionary18PrivateOwnerBlocksENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1A5A11EE4(_Unwind_Exception *a1)
{
  v3 = v2;
  std::__tree<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>>>::destroy(v3, *(v1 + 48));
  v5 = *(v1 + 32);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(v1 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t vega::dicom::DataSet::iterator::operator++(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 8);
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    do
    {
      v3 = v1[2];
      v4 = *v3 == v1;
      v1 = v3;
    }

    while (!v4);
  }

  *result = v3;
  return result;
}

uint64_t vega::dicom::DataSet::add_data_element(uint64_t a1, uint64_t a2)
{
  v4 = vega::dictionary::Page::name(*a2);
  v5 = std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::find<vega::Tag>(a1 + 40, v4);
  if (a1 + 48 != v5)
  {
    v7 = *(v5 + 40);
    v6 = *(v5 + 48);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v13, "DataSet::add_data_element() -- Cannot add new element as it already exists");
      std::runtime_error::runtime_error(exception, &v13);
      exception->__vftable = &unk_1F1917110;
    }
  }

  v8 = *(a2 + 8);
  v12[0] = *a2;
  v12[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  vega::dicom::DataSet::add_private_owner_block_if_relevant(a1, v12);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = vega::dictionary::Page::name(*a2);

  return std::__tree<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>>>::__emplace_unique_key_args<vega::Tag,vega::Tag&,std::shared_ptr<vega::dicom::DataElement>&>(a1 + 40, v9);
}

void sub_1A5A120B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void *vega::dicom::DataSet::data_element@<X0>(vega::dicom::DataSet *this@<X0>, const vega::Tag *a2@<X1>, void *a3@<X8>)
{
  result = std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::find<vega::Tag>(this + 40, a2);
  if ((this + 48) == result)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = result[6];
    *a3 = result[5];
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

uint64_t vega::dicom::DataSet::add_private_owner_block_if_relevant(uint64_t a1, vega::dicom::DataElement **a2)
{
  result = vega::dicom::DataElement::is_sequence(*a2);
  if ((result & 1) == 0)
  {
    v4 = vega::dictionary::Page::name(*a2);
    result = vega::Tag::is_private_owner(v4);
    if (result)
    {
      vega::dicom::DataElement::get_manipulator<vega::manipulators::LongStringManipulator>(*a2, &v10);
      v11 = &unk_1F1917B90;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v12, *(v10.__r_.__value_.__r.__words[0] + 8), *(v10.__r_.__value_.__r.__words[0] + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v10.__r_.__value_.__r.__words[0] + 16) - *(v10.__r_.__value_.__r.__words[0] + 8)) >> 3));
      v11 = &unk_1F1918680;
      if (v10.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10.__r_.__value_.__l.__size_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v10, "");
      if (v13 != v12)
      {
        std::string::operator=(&v10, v12);
      }

      v5 = vega::dictionary::Dictionary::instance(1);
      vega::dictionary::Dictionary::private_owner(v5, &v10.__r_.__value_.__l.__data_, &v8);
      if (v8)
      {
        v6 = vega::dictionary::Page::name(*a2);
        CMPhotoGetEncodeAccelerationModeOverride(v6);
        v7 = vega::dictionary::Page::name(*a2);
        vega::Tag::element(v7);
        std::allocate_shared[abi:ne200100]<vega::dictionary::PrivateOwnerBlock,std::allocator<vega::dictionary::PrivateOwnerBlock>,std::shared_ptr<vega::dictionary::PrivateOwner> &,unsigned short &,unsigned short &,0>();
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      v10.__r_.__value_.__r.__words[0] = &v12;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
      return CMPhotoGetEncodeAccelerationModeOverride(&v11);
    }
  }

  return result;
}

void sub_1A5A122E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  vega::manipulators::LongStringManipulator::~LongStringManipulator(&a19);
  _Unwind_Resume(a1);
}

void vega::dicom::DataSet::page_for (vega::dictionary::PrivateOwnerBlocks **this@<X0>, const vega::Tag *a2@<X1>, void *a3@<X8>)
{
  if (!vega::Tag::is_private(a2))
  {
LABEL_11:
    v9 = vega::dictionary::Dictionary::instance(1);
    vega::dictionary::Dictionary::page_for (v9, a2, a3);
    return;
  }

  vega::dictionary::PrivateOwnerBlocks::find_block(this[8], a2, &v10);
  if (v10)
  {
    v6 = vega::dictionary::PrivateOwnerBlock::private_owner(v10);
    vega::dictionary::PrivateOwner::find_page(v6, a2, a3);
    if (*a3)
    {
      v7 = 0;
      goto LABEL_8;
    }

    v8 = a3[1];
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v7 = 1;
LABEL_8:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v7)
  {
    goto LABEL_11;
  }
}

void sub_1A5A1240C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::dicom::DataSet::page_for@<X0>(void **a1@<X1>, void *a2@<X8>)
{
  v4 = vega::dictionary::Dictionary::instance(1);

  return vega::dictionary::Dictionary::page_for (v4, a1, a2);
}

void vega::dicom::DataSet::data_element(vega::dicom::DataSet *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = vega::dictionary::Dictionary::instance(1);
  vega::dictionary::Dictionary::page_for (v6, a2, &v8);
  if (v8)
  {
    v7 = vega::dictionary::Page::tag_mask(v8);
    vega::dicom::DataSet::data_element(a1, v7, a3);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1A5A124EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void vega::dicom::DataSet::data_element(vega::dicom::DataSet *this@<X0>, const vega::TagMask *a2@<X1>, vega::dictionary::Page **a3@<X8>)
{
  if (vega::Tag::tag((a2 + 4)) == -1)
  {
    v14 = vega::TagMask::singular_tag(a2);
    v15 = std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::find<vega::Tag>(this + 40, v14);
    if ((this + 48) != v15)
    {
      v16 = v15[6];
      *a3 = v15[5];
      a3[1] = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
      }

      return;
    }

LABEL_18:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v6 = *(this + 5);
  v7 = this + 48;
  if (v6 == this + 48)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v8 = *(v6 + 5);
    v9 = *(v6 + 6);
    *a3 = v8;
    a3[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = vega::dictionary::Page::name(v8);
    if (vega::TagMask::contains(a2, v10))
    {
      break;
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v11 = *(v6 + 1);
    if (v11)
    {
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      do
      {
        v12 = *(v6 + 2);
        v13 = *v12 == v6;
        v6 = v12;
      }

      while (!v13);
    }

    v6 = v12;
    if (v12 == v7)
    {
      goto LABEL_18;
    }
  }
}

void sub_1A5A12610(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

vega::TagMask *vega::TagMask::singular_tag(vega::TagMask *this)
{
  if (vega::Tag::tag((this + 4)) != -1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    vega::Tag::str(&v12);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Cannot get singular tag from TagMask with value and mask of ", &v12, &v13);
    v4 = std::string::append(&v13, " and ", 5uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    vega::Tag::str(v10);
    if ((v11 & 0x80u) == 0)
    {
      v6 = v10;
    }

    else
    {
      v6 = v10[0];
    }

    if ((v11 & 0x80u) == 0)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10[1];
    }

    v8 = std::string::append(&v14, v6, v7);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v15);
    exception->__vftable = &unk_1F1917110;
  }

  return this;
}

void sub_1A5A12760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v33);
  goto LABEL_14;
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A5A1288C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::string>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
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

void *_ZNSt3__120__shared_ptr_emplaceIN4vega10dictionary18PrivateOwnerBlocksENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1919410;
  vega::dictionary::PrivateOwnerBlocks::PrivateOwnerBlocks(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<vega::dictionary::PrivateOwnerBlocks>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1919410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

uint64_t std::__tree<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>>>::__emplace_unique_key_args<vega::Tag,vega::Tag&,std::shared_ptr<vega::dicom::DataElement>&>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::__find_equal<vega::Tag>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

BOOL vega::VR::validate_value_manipulator<vega::manipulators::LongStringManipulator>(unsigned __int16 *a1)
{
  result = vega::vr::manipulator_is_valid_for<vega::manipulators::LongStringManipulator>(*a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    vega::VR::InvalidValueManipulator<vega::manipulators::LongStringManipulator>::InvalidValueManipulator(exception, a1);
  }

  return result;
}

void *vega::manipulators::PaddedStringManipulator<std::string>::PaddedStringManipulator(void *a1, vega::dicom::RawValue **a2)
{
  vega::dicom::RawValue::str(*a2, &__p);
  vega::manipulators::PaddedStringManipulator<std::string>::PaddedStringManipulator(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1A5A12CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *vega::manipulators::PaddedStringManipulator<std::string>::PaddedStringManipulator(void *a1, const std::string *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &unk_1F19193A0;
  vega::manipulators::PaddedStringManipulator<std::string>::parse_from_string(a1, a2);
  return a1;
}

void sub_1A5A12D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  a10 = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  CMPhotoGetEncodeAccelerationModeOverride(v10);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<vega::dictionary::PrivateOwnerBlock>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dictionary::PrivateOwner> &,unsigned short &,unsigned short &,std::allocator<vega::dictionary::PrivateOwnerBlock>,0>(void *a1, void *a2, __int16 *a3, __int16 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1919488;
  vega::dictionary::PrivateOwnerBlock::PrivateOwnerBlock((a1 + 3), a2, *a3, *a4);
  return a1;
}

void std::__shared_ptr_emplace<vega::dictionary::PrivateOwnerBlock>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1919488;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dictionary::PrivateOwnerBlock>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_1A5A12F6C(_Unwind_Exception *a1)
{
  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  vega::dicom::TransferSyntax::~TransferSyntax((v1 + 64));
  vega::dicom::TransferSyntax::~TransferSyntax((v1 + 16));
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void sub_1A5A13398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5A13558(_Unwind_Exception *a1)
{
  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  vega::dicom::TransferSyntax::~TransferSyntax((v1 + 64));
  vega::dicom::TransferSyntax::~TransferSyntax((v1 + 16));
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void vega::dicom::FileMeta::read(vega::dicom::FileMeta *this, vega::dicom::Reader *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  v38 = *this;
  v39 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vega::dicom::Reader::read_data_element(a2, &v38, 0, &v40);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (!v40)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v37, "Reader failed to read in group length tag");
    std::runtime_error::runtime_error(exception, &v37);
    exception->__vftable = &unk_1F19194F0;
  }

  v5 = vega::dictionary::Page::name(v40);
  if (!vega::Tag::operator==(v5, vega::dicom::FileMeta::FileMetaInformationGroupLength))
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,char const(&)[31],0>();
  }

  v7 = v40;
  v6 = v41;
  if (v41)
  {
    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vega::dicom::DataElement::get_manipulator<vega::manipulators::UnsignedLongManipulator>(v7, &__p);
  vega::dicom::Reader::tell(&v43, a2);
  v8 = **(__p.__r_.__value_.__r.__words[0] + 8);
  v9 = v46;
  v10 = *this;
  v35 = v7;
  v36 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vega::dicom::DataSet::add_data_element(v10, &v35);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  v11 = v9 + v8;
  while (1)
  {
    vega::dicom::Reader::tell(&v43, a2);
    if (v46 >= v11)
    {
      break;
    }

    v12 = *(this + 1);
    v33 = *this;
    v34 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    vega::dicom::Reader::read_data_element(a2, &v33, 0, &v43);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    if (!v43.__r_.__value_.__r.__words[0])
    {
      v20 = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v32, "Unexpected error reading file meta");
      std::runtime_error::runtime_error(v20, &v32);
      v20->__vftable = &unk_1F19194F0;
    }

    v13 = vega::dictionary::Page::name(v43.__r_.__value_.__l.__data_);
    if (!vega::Tag::is_file_meta(v13))
    {
      v19 = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v31, "Encountered non file-meta DataElement in file meta header");
      std::runtime_error::runtime_error(v19, &v31);
      v19->__vftable = &unk_1F19194F0;
    }

    v14 = *this;
    v30 = *&v43.__r_.__value_.__l.__data_;
    if (v43.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v43.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    vega::dicom::DataSet::add_data_element(v14, &v30);
    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
    }

    if (v43.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43.__r_.__value_.__l.__size_);
    }
  }

  vega::dicom::Reader::tell(&v43, a2);
  if (v46 != v11)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v29, "Read past expected end of file meta data");
    std::runtime_error::runtime_error(v23, &v29);
    v23->__vftable = &unk_1F19194F0;
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  vega::dicom::DataSet::data_element(*this, &vega::dicom::FileMeta::TransferSyntaxUID, &v27);
  if (!v27)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v26, "Need TransferSyntaxUID element");
    std::runtime_error::runtime_error(v22, &v26);
    v22->__vftable = &unk_1F19194F0;
  }

  vega::dicom::DataSet::data_element(*this, &vega::dicom::SOPClass::TAG, &__p);
  if (__p.__r_.__value_.__r.__words[0])
  {
    vega::dicom::DataElement::get_manipulator<vega::manipulators::UniqueIdentifierManipulator>(__p.__r_.__value_.__l.__data_, v24);
    v15 = vega::manipulators::UniqueIdentifierManipulator::uid(v24[0]);
    vega::dicom::SOPClass::SOPClass(&v43, v15);
    if (*(this + 87) < 0)
    {
      operator delete(*(this + 8));
    }

    *(this + 64) = v43;
    *(&v43.__r_.__value_.__s + 23) = 0;
    v43.__r_.__value_.__s.__data_[0] = 0;
    if (*(this + 111) < 0)
    {
      operator delete(*(this + 11));
      v16 = SHIBYTE(v43.__r_.__value_.__r.__words[2]);
      *(this + 88) = v44;
      *(this + 13) = v45;
      HIBYTE(v45) = 0;
      LOBYTE(v44) = 0;
      if (v16 < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *(this + 88) = v44;
      *(this + 13) = v45;
    }

    if (v24[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24[1]);
    }
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  v17 = *this;
  std::string::basic_string[abi:ne200100]<0>(&v43, "MediaStorageSOPInstanceUID");
  vega::dicom::DataSet::data_element(v17, &v43.__r_.__value_.__l.__data_, &__p);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    vega::dicom::DataElement::get_manipulator<vega::manipulators::UniqueIdentifierManipulator>(__p.__r_.__value_.__l.__data_, &v43);
    v18 = vega::manipulators::UniqueIdentifierManipulator::uid(v43.__r_.__value_.__l.__data_);
    std::string::operator=((this + 112), v18);
    if (v43.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43.__r_.__value_.__l.__size_);
    }
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  vega::dicom::DataElement::str(v24, v27);
  vega::UID::UID(&__p, v24);
  vega::dicom::TransferSyntax::TransferSyntax(&v43, &__p);
  vega::dicom::FileMeta::set_transfer_syntax(this, &v43);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }
}

void sub_1A5A13DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, std::__shared_weak_count *a53, void *a54, std::__shared_weak_count *a55)
{
  if (a34 < 0)
  {
    operator delete(__p);
    if ((v57 & 1) == 0)
    {
LABEL_6:
      if (a55)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a55);
      }

      if (v55)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v55);
      }

      if (a53)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a53);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v57)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v56);
  goto LABEL_6;
}

void vega::dicom::FileMeta::set_transfer_syntax(vega::dicom::FileMeta *this, const std::string *a2)
{
  std::string::operator=((this + 16), a2);
  std::string::operator=((this + 40), a2 + 1);
  v4 = *this;
  std::string::basic_string[abi:ne200100]<0>(&__p, "TransferSyntaxUID");
  vega::dicom::DataSet::data_element(v4, &__p, &v10);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (v10)
  {
    vega::dicom::DataElement::get_manipulator<vega::manipulators::UniqueIdentifierManipulator>(v10, &__p);
    v5 = vega::dicom::SOPClass::uid((this + 16));
    v6 = vega::manipulators::UniqueIdentifierManipulator::uid(__p);
    std::string::operator=(v6, v5);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1A5A14168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::dicom::FileMeta::write(uint64_t *a1, vega::dicom::Writer **a2)
{
  v58 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    return 0;
  }

  v32 = *vega::dicom::Writer::dicom_endian(*a2);
  LODWORD(v33[0]) = 0;
  vega::dicom::Writer::set_dicom_endianness(*a2, v33);
  v24 = vega::dicom::Writer::vr_explicit(*a2);
  vega::dicom::Writer::set_vr_explicit(*a2, 1);
  v31 = 0;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v4 = *a1;
  vega::dicom::DataSet::iterator::iterator(v33, *(*a1 + 40));
  v30 = v33[0];
  vega::dicom::DataSet::iterator::iterator(v33, v4 + 48);
  v29 = v33[0];
  if (vega::dicom::DataSet::iterator::operator!=(&v30, &v29))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 1;
    while (1)
    {
      v9 = vega::dicom::DataSet::iterator::operator*(&v30);
      v11 = *v9;
      v10 = *(v9 + 8);
      if (v10)
      {
        p_shared_owners = &v10->__shared_owners_;
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = *a2;
        if ((v8 & 1) == 0)
        {
          v25 = v11;
          v26 = v10;
          atomic_fetch_add_explicit(p_shared_owners, 1uLL, memory_order_relaxed);
          goto LABEL_22;
        }

        v27 = v11;
        v28 = v10;
        atomic_fetch_add_explicit(p_shared_owners, 1uLL, memory_order_relaxed);
      }

      else
      {
        v13 = *a2;
        if ((v8 & 1) == 0)
        {
          v25 = v11;
          v26 = 0;
LABEL_22:
          v5 += vega::dicom::Writer::write_element(v13, &v25);
          v31 = v5;
          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          goto LABEL_24;
        }

        v27 = v11;
        v28 = 0;
      }

      v14 = vega::dicom::Writer::write_element(v13, &v27);
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      v15 = vega::dictionary::Page::name(v11);
      LODWORD(v33[0]) = 2;
      if (!vega::Tag::operator==(v15, v33))
      {
        __assert_rtn("write", "file_meta.cpp", 94, "data_element->tag() == Tag(0x00020000)");
      }

      vega::dicom::Writer::tell(v33, *a2);
      v16 = v41;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      vega::dicom::DataElement::lazy_load(v11);
      v17 = *(v11 + 30);
      v18 = *(v11 + 31);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v17 + 16))(v33);
      if (vega::dicom::RawValue::size(v33[0]) != 4)
      {
        __assert_rtn("write", "file_meta.cpp", 96, "data_element->manipulator()->raw_value()->size() == sizeof(file_meta_bytes)");
      }

      if (v33[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33[1]);
      }

      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      v6 += v14;
      v7 = v16 - 4;
LABEL_24:
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      vega::dicom::DataSet::iterator::operator++(&v30);
      v8 = 0;
      if (!vega::dicom::DataSet::iterator::operator!=(&v30, &v29))
      {
        goto LABEL_30;
      }
    }
  }

  v7 = 0;
  v6 = 0;
LABEL_30:
  vega::dicom::Writer::tell(v33, *a2);
  v46 = v37;
  v47 = v38;
  v48 = v39;
  v49 = v40;
  v42 = *v33;
  v43 = v34;
  v44 = v35;
  v45 = v36;
  v20 = v41;
  v21 = *a2;
  v38 = v55;
  v39 = v56;
  v40 = v57;
  *v33 = v50;
  v34 = v51;
  v35 = v52;
  v36 = v53;
  v37 = v54;
  v41 = v7;
  vega::dicom::Writer::seek_pos(v21);
  EncodeAccelerationModeOverride = CMPhotoGetEncodeAccelerationModeOverride(*a2);
  vega::dicom::RawWriter::write_from<unsigned int>(EncodeAccelerationModeOverride, &v31);
  v23 = *a2;
  v38 = v47;
  v39 = v48;
  v40 = v49;
  *v33 = v42;
  v34 = v43;
  v35 = v44;
  v36 = v45;
  v37 = v46;
  v41 = v20;
  vega::dicom::Writer::seek_pos(v23);
  vega::dicom::Writer::set_dicom_endianness(*a2, &v32);
  vega::dicom::Writer::set_vr_explicit(*a2, v24);
  return (v31 + v6);
}

void sub_1A5A1456C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void *vega::dicom::DataElement::get_manipulator<vega::manipulators::UnsignedLongManipulator>@<X0>(vega::dicom::DataElement *a1@<X0>, void *a2@<X8>)
{
  v4 = vega::dicom::DataElement::vr(a1);
  vega::VR::validate_value_manipulator<vega::manipulators::UnsignedLongManipulator>(v4);
  vega::dicom::DataElement::lazy_load(a1);
  v5 = *(a1 + 30);
  if (!v5)
  {
    operator new();
  }

  v6 = *v5;
  if (!result)
  {
    (*(v6 + 16))(&v9, v5);
    std::allocate_shared[abi:ne200100]<vega::manipulators::UnsignedLongManipulator,std::allocator<vega::manipulators::UnsignedLongManipulator>,std::shared_ptr<vega::dicom::RawValue>,0>();
  }

  v8 = *(a1 + 31);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = result;
  a2[1] = v8;
  return result;
}

void sub_1A5A1479C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::allocator<int>::allocate_at_least[abi:ne200100](a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void vega::dicom::FileMeta::InvalidFileMeta::~InvalidFileMeta(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1AC552B90);
}

BOOL vega::VR::validate_value_manipulator<vega::manipulators::UniqueIdentifierManipulator>(unsigned __int16 *a1)
{
  result = vega::vr::manipulator_is_valid_for<vega::manipulators::UniqueIdentifierManipulator>(*a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    vega::VR::InvalidValueManipulator<vega::manipulators::UniqueIdentifierManipulator>::InvalidValueManipulator(exception, a1);
  }

  return result;
}

BOOL vega::VR::validate_value_manipulator<vega::manipulators::UnsignedLongManipulator>(unsigned __int16 *a1)
{
  result = vega::vr::manipulator_is_valid_for<vega::manipulators::UnsignedLongManipulator>(*a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    vega::VR::InvalidValueManipulator<vega::manipulators::UnsignedLongManipulator>::InvalidValueManipulator(exception, a1);
  }

  return result;
}

std::runtime_error *vega::VR::InvalidValueManipulator<vega::manipulators::UnsignedLongManipulator>::InvalidValueManipulator(std::runtime_error *a1, vega::VR *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v20, "Invalid type ");
  v4 = strlen(("N4vega12manipulators23UnsignedLongManipulatorE" & 0x7FFFFFFFFFFFFFFFLL));
  v5 = std::string::append(&v20, ("N4vega12manipulators23UnsignedLongManipulatorE" & 0x7FFFFFFFFFFFFFFFLL), v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v18, " for VR ");
  if ((v19 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = v18[1];
  }

  v9 = std::string::append(&v21, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  vega::VR::str(a2, __p);
  if ((v17 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v12 = v17;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = std::string::append(&v22, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(a1, &v23);
  a1->__vftable = &unk_1F1917110;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &unk_1F1919558;
  return a1;
}

void sub_1A5A14B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a21 < 0)
  {
    operator delete(a16);
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

void vega::VR::InvalidValueManipulator<vega::manipulators::UnsignedLongManipulator>::~InvalidValueManipulator(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1AC552B90);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<unsigned int>::~FixedSizeElementManipulator(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return CMPhotoGetEncodeAccelerationModeOverride(a1);
}

void vega::manipulators::FixedSizeElementManipulator<unsigned int>::~FixedSizeElementManipulator(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(a1);

  JUMPOUT(0x1AC552B90);
}

void *std::__shared_ptr_emplace<vega::manipulators::UnsignedLongManipulator>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::RawValue>,std::allocator<vega::manipulators::UnsignedLongManipulator>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1918F08;
  std::construct_at[abi:ne200100]<vega::manipulators::UnsignedLongManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::UnsignedLongManipulator*>(a1 + 3, a2);
  return a1;
}

void *std::construct_at[abi:ne200100]<vega::manipulators::UnsignedLongManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::UnsignedLongManipulator*>(void *a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  vega::manipulators::FixedSizeElementManipulator<unsigned int>::FixedSizeElementManipulator(a1, &v4);
  *a1 = &unk_1F1918F58;
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  return a1;
}

void sub_1A5A14E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *vega::manipulators::FixedSizeElementManipulator<unsigned int>::FixedSizeElementManipulator(void *a1, vega::dicom::RawValue **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &unk_1F1919580;
  if ((vega::dicom::RawValue::size(*a2) & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v8, "Incompatible size for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v8);
    exception->__vftable = &unk_1F1917110;
  }

  v4 = vega::dicom::RawValue::data(*a2);
  v5 = vega::dicom::RawValue::end(*a2);
  std::__copy_impl::operator()[abi:ne200100]<unsigned int const*,unsigned int const*,std::back_insert_iterator<vega::manipulators::FixedSizeElementManipulator<unsigned int>>>(&v9, v4, v5, a1);
  return a1;
}

void sub_1A5A14F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      v19 = *v16;
      if (*v16)
      {
        *(v14 + 16) = v19;
        operator delete(v19);
      }

      CMPhotoGetEncodeAccelerationModeOverride(v14);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

_DWORD *std::__copy_impl::operator()[abi:ne200100]<unsigned int const*,unsigned int const*,std::back_insert_iterator<vega::manipulators::FixedSizeElementManipulator<unsigned int>>>(uint64_t a1, _DWORD *a2, _DWORD *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[2];
    do
    {
      v8 = a4[3];
      if (v7 >= v8)
      {
        v9 = a4[1];
        v10 = v7 - v9;
        v11 = (v7 - v9) >> 2;
        v12 = v11 + 1;
        if ((v11 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v13 = v8 - v9;
        if (v13 >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::allocator<int>::allocate_at_least[abi:ne200100]((a4 + 1), v14);
        }

        v15 = (v7 - v9) >> 2;
        v16 = (4 * v11);
        v17 = (4 * v11 - 4 * v15);
        *v16 = *v5;
        v7 = (v16 + 1);
        memcpy(v17, v9, v10);
        v18 = a4[1];
        a4[1] = v17;
        a4[2] = v7;
        a4[3] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v7 = *v5;
        v7 += 4;
      }

      a4[2] = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::__shared_ptr_emplace<vega::dicom::DataElement>::__shared_ptr_emplace[abi:ne200100]<char const(&)[31],std::allocator<vega::dicom::DataElement>,0>(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917B58;
  std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[31],vega::dicom::DataElement*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[31],vega::dicom::DataElement*>(uint64_t a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = 0;
  v5 = 0;
  vega::dicom::DataElement::DataElement(a1, __p, &v4, 0);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1A5A151F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[31],vega::dicom::DataElement*>(va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<vega::dicom::DataElement>::__shared_ptr_emplace[abi:ne200100]<char const(&)[27],std::allocator<vega::dicom::DataElement>,0>(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917B58;
  std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[27],vega::dicom::DataElement*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[27],vega::dicom::DataElement*>(uint64_t a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = 0;
  v5 = 0;
  vega::dicom::DataElement::DataElement(a1, __p, &v4, 0);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1A5A1535C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[31],vega::dicom::DataElement*>(va);
  _Unwind_Resume(a1);
}

BOOL vega::VR::validate_value_manipulator<vega::manipulators::OtherByteManipulator>(unsigned __int16 *a1)
{
  result = vega::vr::manipulator_is_valid_for<vega::manipulators::OtherByteManipulator>(*a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    vega::VR::InvalidValueManipulator<vega::manipulators::OtherByteManipulator>::InvalidValueManipulator(exception, a1);
  }

  return result;
}

void *vega::manipulators::FixedSizeElementManipulator<vega::Byte>::FixedSizeElementManipulator(void *a1, vega::dicom::RawValue **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &unk_1F1919618;
  vega::dicom::RawValue::size(*a2);
  v4 = vega::dicom::RawValue::data(*a2);
  v5 = vega::dicom::RawValue::end(*a2);
  std::__copy_impl::operator()[abi:ne200100]<vega::Byte const*,vega::Byte const*,std::back_insert_iterator<vega::manipulators::FixedSizeElementManipulator<vega::Byte>>>(&v7, v4, v5, a1);
  return a1;
}

void sub_1A5A15480(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  CMPhotoGetEncodeAccelerationModeOverride(v1);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<vega::dicom::DataElement>::__shared_ptr_emplace[abi:ne200100]<char const(&)[24],std::allocator<vega::dicom::DataElement>,0>(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917B58;
  std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[24],vega::dicom::DataElement*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[24],vega::dicom::DataElement*>(uint64_t a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = 0;
  v5 = 0;
  vega::dicom::DataElement::DataElement(a1, __p, &v4, 0);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1A5A155F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[31],vega::dicom::DataElement*>(va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<vega::dicom::DataElement>::__shared_ptr_emplace[abi:ne200100]<char const(&)[18],std::allocator<vega::dicom::DataElement>,0>(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917B58;
  std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[18],vega::dicom::DataElement*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[18],vega::dicom::DataElement*>(uint64_t a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = 0;
  v5 = 0;
  vega::dicom::DataElement::DataElement(a1, __p, &v4, 0);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1A5A1575C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[31],vega::dicom::DataElement*>(va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<vega::dicom::DataElement>::__shared_ptr_emplace[abi:ne200100]<char const(&)[23],std::allocator<vega::dicom::DataElement>,0>(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917B58;
  std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[23],vega::dicom::DataElement*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[23],vega::dicom::DataElement*>(uint64_t a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = 0;
  v5 = 0;
  vega::dicom::DataElement::DataElement(a1, __p, &v4, 0);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1A5A158C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[31],vega::dicom::DataElement*>(va);
  _Unwind_Resume(a1);
}

void std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[31],vega::dicom::DataElement*>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t vega::dicom::SOPClass::NAME_UID_PAIRS(vega::dicom::SOPClass *this)
{
  MEMORY[0x1EEE9AC00](this);
  v2 = v1;
  v578 = *MEMORY[0x1E69E9840];
  {
    v4 = v2;
    std::string::basic_string[abi:ne200100]<0>(v347, "1.2.840.10008.5.1.4.1.1.1");
    vega::UID::UID(&v349, v347);
    std::string::basic_string[abi:ne200100]<0>(v350, "Computed Radiography Image Storage");
    v351 = v349;
    memset(&v349, 0, sizeof(v349));
    std::string::basic_string[abi:ne200100]<0>(v344, "1.2.840.10008.5.1.4.1.1.1.1");
    vega::UID::UID(&v346, v344);
    std::string::basic_string[abi:ne200100]<0>(v352, "Digital X-Ray Image Storage - For Presentation");
    v353 = v346;
    memset(&v346, 0, sizeof(v346));
    std::string::basic_string[abi:ne200100]<0>(v341, "1.2.840.10008.5.1.4.1.1.1.1.1");
    vega::UID::UID(&v343, v341);
    std::string::basic_string[abi:ne200100]<0>(v354, "Digital X-Ray Image Storage - For Processing");
    v355 = v343;
    memset(&v343, 0, sizeof(v343));
    std::string::basic_string[abi:ne200100]<0>(v338, "1.2.840.10008.5.1.4.1.1.1.2");
    vega::UID::UID(&v340, v338);
    std::string::basic_string[abi:ne200100]<0>(v356, "Digital Mammography X-Ray Image Storage - For Presentation");
    v357 = v340;
    memset(&v340, 0, sizeof(v340));
    std::string::basic_string[abi:ne200100]<0>(v335, "1.2.840.10008.5.1.4.1.1.1.2.1");
    vega::UID::UID(&v337, v335);
    std::string::basic_string[abi:ne200100]<0>(v358, "Digital Mammography X-Ray Image Storage - For Processing");
    v359 = v337;
    memset(&v337, 0, sizeof(v337));
    std::string::basic_string[abi:ne200100]<0>(v332, "1.2.840.10008.5.1.4.1.1.1.3");
    vega::UID::UID(&v334, v332);
    std::string::basic_string[abi:ne200100]<0>(v360, "Digital Intra-Oral X-Ray Image Storage - For Presentation");
    v361 = v334;
    memset(&v334, 0, sizeof(v334));
    std::string::basic_string[abi:ne200100]<0>(v329, "1.2.840.10008.5.1.4.1.1.1.3.1");
    vega::UID::UID(&v331, v329);
    std::string::basic_string[abi:ne200100]<0>(v362, "Digital Intra-Oral X-Ray Image Storage - For Processing");
    v363 = v331;
    memset(&v331, 0, sizeof(v331));
    std::string::basic_string[abi:ne200100]<0>(v326, "1.2.840.10008.5.1.4.1.1.2");
    vega::UID::UID(&v328, v326);
    std::string::basic_string[abi:ne200100]<0>(v364, "CT Image Storage");
    v365 = v328;
    memset(&v328, 0, sizeof(v328));
    std::string::basic_string[abi:ne200100]<0>(v323, "1.2.840.10008.5.1.4.1.1.2.1");
    vega::UID::UID(&v325, v323);
    std::string::basic_string[abi:ne200100]<0>(v366, "Enhanced CT Image Storage");
    v367 = v325;
    memset(&v325, 0, sizeof(v325));
    std::string::basic_string[abi:ne200100]<0>(v320, "1.2.840.10008.5.1.4.1.1.2.2");
    vega::UID::UID(&v322, v320);
    std::string::basic_string[abi:ne200100]<0>(v368, "Legacy Converted Enhanced CT Image Storage");
    v369 = v322;
    memset(&v322, 0, sizeof(v322));
    std::string::basic_string[abi:ne200100]<0>(v317, "1.2.840.10008.5.1.4.1.1.3");
    vega::UID::UID(&v319, v317);
    std::string::basic_string[abi:ne200100]<0>(v370, "Ultrasound Multi-frame Image Storage (Retired)");
    v371 = v319;
    memset(&v319, 0, sizeof(v319));
    std::string::basic_string[abi:ne200100]<0>(v314, "1.2.840.10008.5.1.4.1.1.3.1");
    vega::UID::UID(&v316, v314);
    std::string::basic_string[abi:ne200100]<0>(v372, "Ultrasound Multi-frame Image Storage");
    v373 = v316;
    memset(&v316, 0, sizeof(v316));
    std::string::basic_string[abi:ne200100]<0>(v311, "1.2.840.10008.5.1.4.1.1.4");
    vega::UID::UID(&v313, v311);
    std::string::basic_string[abi:ne200100]<0>(v374, "MR Image Storage");
    v375 = v313;
    memset(&v313, 0, sizeof(v313));
    std::string::basic_string[abi:ne200100]<0>(v308, "1.2.840.10008.5.1.4.1.1.4.1");
    vega::UID::UID(&v310, v308);
    std::string::basic_string[abi:ne200100]<0>(v376, "Enhanced MR Image Storage");
    v377 = v310;
    memset(&v310, 0, sizeof(v310));
    std::string::basic_string[abi:ne200100]<0>(v305, "1.2.840.10008.5.1.4.1.1.4.2");
    vega::UID::UID(&v307, v305);
    std::string::basic_string[abi:ne200100]<0>(v378, "MR Spectroscopy Storage");
    v379 = v307;
    memset(&v307, 0, sizeof(v307));
    std::string::basic_string[abi:ne200100]<0>(v302, "1.2.840.10008.5.1.4.1.1.4.3");
    vega::UID::UID(&v304, v302);
    std::string::basic_string[abi:ne200100]<0>(v380, "Enhanced MR Color Image Storage");
    v381 = v304;
    memset(&v304, 0, sizeof(v304));
    std::string::basic_string[abi:ne200100]<0>(v299, "1.2.840.10008.5.1.4.1.1.4.4");
    vega::UID::UID(&v301, v299);
    std::string::basic_string[abi:ne200100]<0>(v382, "Legacy Converted Enhanced MR Image Storage");
    v383 = v301;
    memset(&v301, 0, sizeof(v301));
    std::string::basic_string[abi:ne200100]<0>(v296, "1.2.840.10008.5.1.4.1.1.6");
    vega::UID::UID(&v298, v296);
    std::string::basic_string[abi:ne200100]<0>(v384, "Ultrasound Image Storage (Retired)");
    v385 = v298;
    memset(&v298, 0, sizeof(v298));
    std::string::basic_string[abi:ne200100]<0>(v293, "1.2.840.10008.5.1.4.1.1.6.1");
    vega::UID::UID(&v295, v293);
    std::string::basic_string[abi:ne200100]<0>(v386, "Ultrasound Image Storage");
    v387 = v295;
    memset(&v295, 0, sizeof(v295));
    std::string::basic_string[abi:ne200100]<0>(v290, "1.2.840.10008.5.1.4.1.1.6.2");
    vega::UID::UID(&v292, v290);
    std::string::basic_string[abi:ne200100]<0>(v388, "Enhanced US Volume Storage");
    v389 = v292;
    memset(&v292, 0, sizeof(v292));
    std::string::basic_string[abi:ne200100]<0>(v287, "1.2.840.10008.5.1.4.1.1.7");
    vega::UID::UID(&v289, v287);
    std::string::basic_string[abi:ne200100]<0>(v390, "Secondary Capture Image Storage");
    v391 = v289;
    memset(&v289, 0, sizeof(v289));
    std::string::basic_string[abi:ne200100]<0>(v284, "1.2.840.10008.5.1.4.1.1.7.1");
    vega::UID::UID(&v286, v284);
    std::string::basic_string[abi:ne200100]<0>(v392, "Multi-frame Single Bit Secondary Capture Image Storage");
    v393 = v286;
    memset(&v286, 0, sizeof(v286));
    std::string::basic_string[abi:ne200100]<0>(v281, "1.2.840.10008.5.1.4.1.1.7.2");
    vega::UID::UID(&v283, v281);
    std::string::basic_string[abi:ne200100]<0>(v394, "Multi-frame Grayscale Byte Secondary Capture Image Storage");
    v395 = v283;
    memset(&v283, 0, sizeof(v283));
    std::string::basic_string[abi:ne200100]<0>(v278, "1.2.840.10008.5.1.4.1.1.7.3");
    vega::UID::UID(&v280, v278);
    std::string::basic_string[abi:ne200100]<0>(v396, "Multi-frame Grayscale Word Secondary Capture Image Storage");
    v397 = v280;
    memset(&v280, 0, sizeof(v280));
    std::string::basic_string[abi:ne200100]<0>(v275, "1.2.840.10008.5.1.4.1.1.7.4");
    vega::UID::UID(&v277, v275);
    std::string::basic_string[abi:ne200100]<0>(v398, "Multi-frame True Color Secondary Capture Image Storage");
    v399 = v277;
    memset(&v277, 0, sizeof(v277));
    std::string::basic_string[abi:ne200100]<0>(v272, "1.2.840.10008.5.1.4.1.1.9.1.1");
    vega::UID::UID(&v274, v272);
    std::string::basic_string[abi:ne200100]<0>(v400, "12-lead ECG Waveform Storage");
    v401 = v274;
    memset(&v274, 0, sizeof(v274));
    std::string::basic_string[abi:ne200100]<0>(v269, "1.2.840.10008.5.1.4.1.1.9.1.2");
    vega::UID::UID(&v271, v269);
    std::string::basic_string[abi:ne200100]<0>(v402, "General ECG Waveform Storage");
    v403 = v271;
    memset(&v271, 0, sizeof(v271));
    std::string::basic_string[abi:ne200100]<0>(v266, "1.2.840.10008.5.1.4.1.1.9.1.3");
    vega::UID::UID(&v268, v266);
    std::string::basic_string[abi:ne200100]<0>(v404, "Ambulatory ECG Waveform Storage");
    v405 = v268;
    memset(&v268, 0, sizeof(v268));
    std::string::basic_string[abi:ne200100]<0>(v263, "1.2.840.10008.5.1.4.1.1.9.2.1");
    vega::UID::UID(&v265, v263);
    std::string::basic_string[abi:ne200100]<0>(v406, "Hemodynamic Waveform Storage");
    v407 = v265;
    memset(&v265, 0, sizeof(v265));
    std::string::basic_string[abi:ne200100]<0>(v260, "1.2.840.10008.5.1.4.1.1.9.3.1");
    vega::UID::UID(&v262, v260);
    std::string::basic_string[abi:ne200100]<0>(v408, "Cardiac Electrophysiology Waveform Storage");
    v409 = v262;
    memset(&v262, 0, sizeof(v262));
    std::string::basic_string[abi:ne200100]<0>(v257, "1.2.840.10008.5.1.4.1.1.9.4.1");
    vega::UID::UID(&v259, v257);
    std::string::basic_string[abi:ne200100]<0>(v410, "Basic Voice Audio Waveform Storage");
    v411 = v259;
    memset(&v259, 0, sizeof(v259));
    std::string::basic_string[abi:ne200100]<0>(v254, "1.2.840.10008.5.1.4.1.1.9.4.2");
    vega::UID::UID(&v256, v254);
    std::string::basic_string[abi:ne200100]<0>(v412, "General Audio Waveform Storage");
    v413 = v256;
    memset(&v256, 0, sizeof(v256));
    std::string::basic_string[abi:ne200100]<0>(v251, "1.2.840.10008.5.1.4.1.1.9.5.1");
    vega::UID::UID(&v253, v251);
    std::string::basic_string[abi:ne200100]<0>(v414, "Arterial Pulse Waveform Storage");
    v415 = v253;
    memset(&v253, 0, sizeof(v253));
    std::string::basic_string[abi:ne200100]<0>(v248, "1.2.840.10008.5.1.4.1.1.9.6.1");
    vega::UID::UID(&v250, v248);
    std::string::basic_string[abi:ne200100]<0>(v416, "Respiratory Waveform Storage");
    v417 = v250;
    memset(&v250, 0, sizeof(v250));
    std::string::basic_string[abi:ne200100]<0>(v245, "1.2.840.10008.5.1.4.1.1.11.1");
    vega::UID::UID(&v247, v245);
    std::string::basic_string[abi:ne200100]<0>(v418, "Grayscale Softcopy Presentation State Storage");
    v419 = v247;
    memset(&v247, 0, sizeof(v247));
    std::string::basic_string[abi:ne200100]<0>(v242, "1.2.840.10008.5.1.4.1.1.11.2");
    vega::UID::UID(&v244, v242);
    std::string::basic_string[abi:ne200100]<0>(v420, "Color Softcopy Presentation State Storage");
    v421 = v244;
    memset(&v244, 0, sizeof(v244));
    std::string::basic_string[abi:ne200100]<0>(v239, "1.2.840.10008.5.1.4.1.1.11.3");
    vega::UID::UID(&v241, v239);
    std::string::basic_string[abi:ne200100]<0>(v422, "Pseudo-Color Softcopy Presentation State Storage");
    v423 = v241;
    memset(&v241, 0, sizeof(v241));
    std::string::basic_string[abi:ne200100]<0>(v236, "1.2.840.10008.5.1.4.1.1.11.4");
    vega::UID::UID(&v238, v236);
    std::string::basic_string[abi:ne200100]<0>(v424, "Blending Softcopy Presentation State Storage");
    v425 = v238;
    memset(&v238, 0, sizeof(v238));
    std::string::basic_string[abi:ne200100]<0>(v233, "1.2.840.10008.5.1.4.1.1.11.5");
    vega::UID::UID(&v235, v233);
    std::string::basic_string[abi:ne200100]<0>(v426, "XA/XRF Grayscale Softcopy Presentation State Storage");
    v427 = v235;
    memset(&v235, 0, sizeof(v235));
    std::string::basic_string[abi:ne200100]<0>(v230, "1.2.840.10008.5.1.4.1.1.12.1");
    vega::UID::UID(&v232, v230);
    std::string::basic_string[abi:ne200100]<0>(v428, "X-Ray Angiographic Image Storage");
    v429 = v232;
    memset(&v232, 0, sizeof(v232));
    std::string::basic_string[abi:ne200100]<0>(v227, "1.2.840.10008.5.1.4.1.1.12.1.1");
    vega::UID::UID(&v229, v227);
    std::string::basic_string[abi:ne200100]<0>(v430, "Enhanced XA Image Storage");
    v431 = v229;
    memset(&v229, 0, sizeof(v229));
    std::string::basic_string[abi:ne200100]<0>(v224, "1.2.840.10008.5.1.4.1.1.12.2");
    vega::UID::UID(&v226, v224);
    std::string::basic_string[abi:ne200100]<0>(v432, "X-Ray Radiofluoroscopic Image Storage");
    v433 = v226;
    memset(&v226, 0, sizeof(v226));
    std::string::basic_string[abi:ne200100]<0>(v221, "1.2.840.10008.5.1.4.1.1.12.2.1");
    vega::UID::UID(&v223, v221);
    std::string::basic_string[abi:ne200100]<0>(v434, "Enhanced XRF Image Storage");
    v435 = v223;
    memset(&v223, 0, sizeof(v223));
    std::string::basic_string[abi:ne200100]<0>(v218, "1.2.840.10008.5.1.4.1.1.12.3");
    vega::UID::UID(&v220, v218);
    std::string::basic_string[abi:ne200100]<0>(v436, "X-Ray Angiographic Bi-plane Image Storage (Retired)");
    v437 = v220;
    memset(&v220, 0, sizeof(v220));
    std::string::basic_string[abi:ne200100]<0>(v215, "1.2.840.10008.5.1.4.1.1.13.1.1");
    vega::UID::UID(&v217, v215);
    std::string::basic_string[abi:ne200100]<0>(v438, "X-Ray 3D Angiographic Image Storage");
    v439 = v217;
    memset(&v217, 0, sizeof(v217));
    std::string::basic_string[abi:ne200100]<0>(v212, "1.2.840.10008.5.1.4.1.1.13.1.2");
    vega::UID::UID(&v214, v212);
    std::string::basic_string[abi:ne200100]<0>(v440, "X-Ray 3D Craniofacial Image Storage");
    v441 = v214;
    memset(&v214, 0, sizeof(v214));
    std::string::basic_string[abi:ne200100]<0>(v209, "1.2.840.10008.5.1.4.1.1.13.1.3");
    vega::UID::UID(&v211, v209);
    std::string::basic_string[abi:ne200100]<0>(v442, "Breast Tomosynthesis Image Storage");
    v443 = v211;
    memset(&v211, 0, sizeof(v211));
    std::string::basic_string[abi:ne200100]<0>(v206, "1.2.840.10008.5.1.4.1.1.14.1");
    vega::UID::UID(&v208, v206);
    std::string::basic_string[abi:ne200100]<0>(v444, "Intravascular Optical Coherence Tomography Image Storage - For Presentation");
    v445 = v208;
    memset(&v208, 0, sizeof(v208));
    std::string::basic_string[abi:ne200100]<0>(v203, "1.2.840.10008.5.1.4.1.1.14.2");
    vega::UID::UID(&v205, v203);
    std::string::basic_string[abi:ne200100]<0>(v446, "Intravascular Optical Coherence Tomography Image Storage - For Processing");
    v447 = v205;
    memset(&v205, 0, sizeof(v205));
    std::string::basic_string[abi:ne200100]<0>(v200, "1.2.840.10008.5.1.4.1.1.20");
    vega::UID::UID(&v202, v200);
    std::string::basic_string[abi:ne200100]<0>(v448, "Nuclear Medicine Image Storage");
    v449 = v202;
    memset(&v202, 0, sizeof(v202));
    std::string::basic_string[abi:ne200100]<0>(v197, "1.2.840.10008.5.1.4.1.1.5");
    vega::UID::UID(&v199, v197);
    std::string::basic_string[abi:ne200100]<0>(v450, "Nuclear Medicine Image Storage (Retired)");
    v451 = v199;
    memset(&v199, 0, sizeof(v199));
    std::string::basic_string[abi:ne200100]<0>(v194, "1.2.840.10008.5.1.4.1.1.66");
    vega::UID::UID(&v196, v194);
    std::string::basic_string[abi:ne200100]<0>(v452, "Raw Data Storage");
    v453 = v196;
    memset(&v196, 0, sizeof(v196));
    std::string::basic_string[abi:ne200100]<0>(v191, "1.2.840.10008.5.1.4.1.1.66.1");
    vega::UID::UID(&v193, v191);
    std::string::basic_string[abi:ne200100]<0>(v454, "Spatial Registration Storage");
    v455 = v193;
    memset(&v193, 0, sizeof(v193));
    std::string::basic_string[abi:ne200100]<0>(v188, "1.2.840.10008.5.1.4.1.1.66.2");
    vega::UID::UID(&v190, v188);
    std::string::basic_string[abi:ne200100]<0>(v456, "Spatial Fiducials Storage");
    v457 = v190;
    memset(&v190, 0, sizeof(v190));
    std::string::basic_string[abi:ne200100]<0>(v185, "1.2.840.10008.5.1.4.1.1.66.3");
    vega::UID::UID(&v187, v185);
    std::string::basic_string[abi:ne200100]<0>(v458, "Deformable Spatial Registration Storage");
    v459 = v187;
    memset(&v187, 0, sizeof(v187));
    std::string::basic_string[abi:ne200100]<0>(v182, "1.2.840.10008.5.1.4.1.1.66.4");
    vega::UID::UID(&v184, v182);
    std::string::basic_string[abi:ne200100]<0>(v460, "Segmentation Storage");
    v461 = v184;
    memset(&v184, 0, sizeof(v184));
    std::string::basic_string[abi:ne200100]<0>(v179, "1.2.840.10008.5.1.4.1.1.66.5");
    vega::UID::UID(&v181, v179);
    std::string::basic_string[abi:ne200100]<0>(v462, "Surface Segmentation Storage");
    v463 = v181;
    memset(&v181, 0, sizeof(v181));
    std::string::basic_string[abi:ne200100]<0>(v176, "1.2.840.10008.5.1.4.1.1.67");
    vega::UID::UID(&v178, v176);
    std::string::basic_string[abi:ne200100]<0>(v464, "Real World Value Mapping Storage");
    v465 = v178;
    memset(&v178, 0, sizeof(v178));
    std::string::basic_string[abi:ne200100]<0>(v173, "1.2.840.10008.5.1.4.1.1.68.1");
    vega::UID::UID(&v175, v173);
    std::string::basic_string[abi:ne200100]<0>(v466, "Surface Scan Mesh Storage");
    v467 = v175;
    memset(&v175, 0, sizeof(v175));
    std::string::basic_string[abi:ne200100]<0>(v170, "1.2.840.10008.5.1.4.1.1.68.2");
    vega::UID::UID(&v172, v170);
    std::string::basic_string[abi:ne200100]<0>(v468, "Surface Scan Point Cloud Storage");
    v469 = v172;
    memset(&v172, 0, sizeof(v172));
    std::string::basic_string[abi:ne200100]<0>(v167, "1.2.840.10008.5.1.4.1.1.77.1.1");
    vega::UID::UID(&v169, v167);
    std::string::basic_string[abi:ne200100]<0>(v470, "VL Endoscopic Image Storage");
    v471 = v169;
    memset(&v169, 0, sizeof(v169));
    std::string::basic_string[abi:ne200100]<0>(v164, "1.2.840.10008.5.1.4.1.1.77.1.1.1");
    vega::UID::UID(&v166, v164);
    std::string::basic_string[abi:ne200100]<0>(v472, "Video Endoscopic Image Storage");
    v473 = v166;
    memset(&v166, 0, sizeof(v166));
    std::string::basic_string[abi:ne200100]<0>(v161, "1.2.840.10008.5.1.4.1.1.77.1.2");
    vega::UID::UID(&v163, v161);
    std::string::basic_string[abi:ne200100]<0>(v474, "VL Microscopic Image Storage");
    v475 = v163;
    memset(&v163, 0, sizeof(v163));
    std::string::basic_string[abi:ne200100]<0>(v158, "1.2.840.10008.5.1.4.1.1.77.1.2.1");
    vega::UID::UID(&v160, v158);
    std::string::basic_string[abi:ne200100]<0>(v476, "Video Microscopic Image Storage");
    v477 = v160;
    memset(&v160, 0, sizeof(v160));
    std::string::basic_string[abi:ne200100]<0>(v155, "1.2.840.10008.5.1.4.1.1.77.1.3");
    vega::UID::UID(&v157, v155);
    std::string::basic_string[abi:ne200100]<0>(v478, "VL Slide-Coordinates Microscopic Image Storage");
    v479 = v157;
    memset(&v157, 0, sizeof(v157));
    std::string::basic_string[abi:ne200100]<0>(v152, "1.2.840.10008.5.1.4.1.1.77.1.4");
    vega::UID::UID(&v154, v152);
    std::string::basic_string[abi:ne200100]<0>(v480, "VL Photographic Image Storage");
    v481 = v154;
    memset(&v154, 0, sizeof(v154));
    std::string::basic_string[abi:ne200100]<0>(v149, "1.2.840.10008.5.1.4.1.1.77.1.4.1");
    vega::UID::UID(&v151, v149);
    std::string::basic_string[abi:ne200100]<0>(v482, "Video Photographic Image Storage");
    v483 = v151;
    memset(&v151, 0, sizeof(v151));
    std::string::basic_string[abi:ne200100]<0>(v146, "1.2.840.10008.5.1.4.1.1.77.1.5.1");
    vega::UID::UID(&v148, v146);
    std::string::basic_string[abi:ne200100]<0>(v484, "Ophthalmic Photography 8 Bit Image Storage");
    v485 = v148;
    memset(&v148, 0, sizeof(v148));
    std::string::basic_string[abi:ne200100]<0>(v143, "1.2.840.10008.5.1.4.1.1.77.1.5.2");
    vega::UID::UID(&v145, v143);
    std::string::basic_string[abi:ne200100]<0>(v486, "Ophthalmic Photography 16 Bit Image Storage");
    v487 = v145;
    memset(&v145, 0, sizeof(v145));
    std::string::basic_string[abi:ne200100]<0>(v140, "1.2.840.10008.5.1.4.1.1.77.1.5.3");
    vega::UID::UID(&v142, v140);
    std::string::basic_string[abi:ne200100]<0>(v488, "Stereometric Relationship Storage");
    v489 = v142;
    memset(&v142, 0, sizeof(v142));
    std::string::basic_string[abi:ne200100]<0>(v137, "1.2.840.10008.5.1.4.1.1.77.1.5.4");
    vega::UID::UID(&v139, v137);
    std::string::basic_string[abi:ne200100]<0>(v490, "Ophthalmic Tomography Image Storage");
    v491 = v139;
    memset(&v139, 0, sizeof(v139));
    std::string::basic_string[abi:ne200100]<0>(v134, "1.2.840.10008.5.1.4.1.1.77.1.6");
    vega::UID::UID(&v136, v134);
    std::string::basic_string[abi:ne200100]<0>(v492, "VL Whole Slide Microscopy Image Storage");
    v493 = v136;
    memset(&v136, 0, sizeof(v136));
    std::string::basic_string[abi:ne200100]<0>(v131, "1.2.840.10008.5.1.4.1.1.78.1");
    vega::UID::UID(&v133, v131);
    std::string::basic_string[abi:ne200100]<0>(v494, "Lensometry Measurements Storage");
    v495 = v133;
    memset(&v133, 0, sizeof(v133));
    std::string::basic_string[abi:ne200100]<0>(v128, "1.2.840.10008.5.1.4.1.1.78.2");
    vega::UID::UID(&v130, v128);
    std::string::basic_string[abi:ne200100]<0>(v496, "Autorefraction Measurements Storage");
    v497 = v130;
    memset(&v130, 0, sizeof(v130));
    std::string::basic_string[abi:ne200100]<0>(v125, "1.2.840.10008.5.1.4.1.1.78.3");
    vega::UID::UID(&v127, v125);
    std::string::basic_string[abi:ne200100]<0>(v498, "Keratometry Measurements Storage");
    v499 = v127;
    memset(&v127, 0, sizeof(v127));
    std::string::basic_string[abi:ne200100]<0>(v122, "1.2.840.10008.5.1.4.1.1.78.4");
    vega::UID::UID(&v124, v122);
    std::string::basic_string[abi:ne200100]<0>(v500, "Subjective Refraction Measurements Storage");
    v501 = v124;
    memset(&v124, 0, sizeof(v124));
    std::string::basic_string[abi:ne200100]<0>(v119, "1.2.840.10008.5.1.4.1.1.78.5");
    vega::UID::UID(&v121, v119);
    std::string::basic_string[abi:ne200100]<0>(v502, "Visual Acuity Measurements Storage");
    v503 = v121;
    memset(&v121, 0, sizeof(v121));
    std::string::basic_string[abi:ne200100]<0>(v116, "1.2.840.10008.5.1.4.1.1.78.6");
    vega::UID::UID(&v118, v116);
    std::string::basic_string[abi:ne200100]<0>(v504, "Spectacle Prescription Report Storage");
    v505 = v118;
    memset(&v118, 0, sizeof(v118));
    std::string::basic_string[abi:ne200100]<0>(v113, "1.2.840.10008.5.1.4.1.1.78.7");
    vega::UID::UID(&v115, v113);
    std::string::basic_string[abi:ne200100]<0>(v506, "Ophthalmic Axial Measurements Storage");
    v507 = v115;
    memset(&v115, 0, sizeof(v115));
    std::string::basic_string[abi:ne200100]<0>(v110, "1.2.840.10008.5.1.4.1.1.78.8");
    vega::UID::UID(&v112, v110);
    std::string::basic_string[abi:ne200100]<0>(v508, "Intraocular Lens Calculations Storage");
    v509 = v112;
    memset(&v112, 0, sizeof(v112));
    std::string::basic_string[abi:ne200100]<0>(v107, "1.2.840.10008.5.1.4.1.1.79.1");
    vega::UID::UID(&v109, v107);
    std::string::basic_string[abi:ne200100]<0>(v510, "Macular Grid Thickness and Volume Report");
    v511 = v109;
    memset(&v109, 0, sizeof(v109));
    std::string::basic_string[abi:ne200100]<0>(v104, "1.2.840.10008.5.1.4.1.1.80.1");
    vega::UID::UID(&v106, v104);
    std::string::basic_string[abi:ne200100]<0>(v512, "Ophthalmic Visual Field Static Perimetry Measurements Storage");
    v513 = v106;
    memset(&v106, 0, sizeof(v106));
    std::string::basic_string[abi:ne200100]<0>(v101, "1.2.840.10008.5.1.4.1.1.81.1");
    vega::UID::UID(&v103, v101);
    std::string::basic_string[abi:ne200100]<0>(v514, "Ophthalmic Thickness Map Storage");
    v515 = v103;
    memset(&v103, 0, sizeof(v103));
    std::string::basic_string[abi:ne200100]<0>(v98, "1.2.840.10008.5.1.4.1.1.82.1");
    vega::UID::UID(&v100, v98);
    std::string::basic_string[abi:ne200100]<0>(v516, "Corneal Topography Map Storage");
    v517 = v100;
    memset(&v100, 0, sizeof(v100));
    std::string::basic_string[abi:ne200100]<0>(v95, "1.2.840.10008.5.1.4.1.1.88.11");
    vega::UID::UID(&v97, v95);
    std::string::basic_string[abi:ne200100]<0>(v518, "Basic Text SR");
    v519 = v97;
    memset(&v97, 0, sizeof(v97));
    std::string::basic_string[abi:ne200100]<0>(v92, "1.2.840.10008.5.1.4.1.1.88.22");
    vega::UID::UID(&v94, v92);
    std::string::basic_string[abi:ne200100]<0>(v520, "Enhanced SR");
    v521 = v94;
    memset(&v94, 0, sizeof(v94));
    std::string::basic_string[abi:ne200100]<0>(v89, "1.2.840.10008.5.1.4.1.1.88.33");
    vega::UID::UID(&v91, v89);
    std::string::basic_string[abi:ne200100]<0>(v522, "Comprehensive SR");
    v523 = v91;
    memset(&v91, 0, sizeof(v91));
    std::string::basic_string[abi:ne200100]<0>(v86, "1.2.840.10008.5.1.4.1.1.88.34");
    vega::UID::UID(&v88, v86);
    std::string::basic_string[abi:ne200100]<0>(v524, "Comprehensive 3D SR");
    v525 = v88;
    memset(&v88, 0, sizeof(v88));
    std::string::basic_string[abi:ne200100]<0>(v83, "1.2.840.10008.5.1.4.1.1.88.40");
    vega::UID::UID(&v85, v83);
    std::string::basic_string[abi:ne200100]<0>(v526, "Procedure Log");
    v527 = v85;
    memset(&v85, 0, sizeof(v85));
    std::string::basic_string[abi:ne200100]<0>(v80, "1.2.840.10008.5.1.4.1.1.88.50");
    vega::UID::UID(&v82, v80);
    std::string::basic_string[abi:ne200100]<0>(v528, "Mammography CAD SR");
    v529 = v82;
    memset(&v82, 0, sizeof(v82));
    std::string::basic_string[abi:ne200100]<0>(v77, "1.2.840.10008.5.1.4.1.1.88.59");
    vega::UID::UID(&v79, v77);
    std::string::basic_string[abi:ne200100]<0>(v530, "Key Object Selection");
    v531 = v79;
    memset(&v79, 0, sizeof(v79));
    std::string::basic_string[abi:ne200100]<0>(v74, "1.2.840.10008.5.1.4.1.1.88.65");
    vega::UID::UID(&v76, v74);
    std::string::basic_string[abi:ne200100]<0>(v532, "Chest CAD SR");
    v533 = v76;
    memset(&v76, 0, sizeof(v76));
    std::string::basic_string[abi:ne200100]<0>(v71, "1.2.840.10008.5.1.4.1.1.88.67");
    vega::UID::UID(&v73, v71);
    std::string::basic_string[abi:ne200100]<0>(v534, "X-Ray Radiation Dose SR");
    v535 = v73;
    memset(&v73, 0, sizeof(v73));
    std::string::basic_string[abi:ne200100]<0>(v68, "1.2.840.10008.5.1.4.1.1.88.69");
    vega::UID::UID(&v70, v68);
    std::string::basic_string[abi:ne200100]<0>(v536, "Colon CAD SR");
    v537 = v70;
    memset(&v70, 0, sizeof(v70));
    std::string::basic_string[abi:ne200100]<0>(v65, "1.2.840.10008.5.1.4.1.1.88.70");
    vega::UID::UID(&v67, v65);
    std::string::basic_string[abi:ne200100]<0>(v538, "Implantation Plan SR Document Storage");
    v539 = v67;
    memset(&v67, 0, sizeof(v67));
    std::string::basic_string[abi:ne200100]<0>(v62, "1.2.840.10008.5.1.4.1.1.104.1");
    vega::UID::UID(&v64, v62);
    std::string::basic_string[abi:ne200100]<0>(v540, "Encapsulated PDF Storage");
    v541 = v64;
    memset(&v64, 0, sizeof(v64));
    std::string::basic_string[abi:ne200100]<0>(v59, "1.2.840.10008.5.1.4.1.1.104.2");
    vega::UID::UID(&v61, v59);
    std::string::basic_string[abi:ne200100]<0>(v542, "Encapsulated CDA Storage");
    v543 = v61;
    memset(&v61, 0, sizeof(v61));
    std::string::basic_string[abi:ne200100]<0>(v56, "1.2.840.10008.5.1.4.1.1.128");
    vega::UID::UID(&v58, v56);
    std::string::basic_string[abi:ne200100]<0>(v544, "Positron Emission Tomography Image Storage");
    v545 = v58;
    memset(&v58, 0, sizeof(v58));
    std::string::basic_string[abi:ne200100]<0>(v53, "1.2.840.10008.5.1.4.1.1.130");
    vega::UID::UID(&v55, v53);
    std::string::basic_string[abi:ne200100]<0>(v546, "Enhanced PET Image Storage");
    v547 = v55;
    memset(&v55, 0, sizeof(v55));
    std::string::basic_string[abi:ne200100]<0>(v50, "1.2.840.10008.5.1.4.1.1.128.1");
    vega::UID::UID(&v52, v50);
    std::string::basic_string[abi:ne200100]<0>(v548, "Legacy Converted Enhanced PET Image Storage");
    v549 = v52;
    memset(&v52, 0, sizeof(v52));
    std::string::basic_string[abi:ne200100]<0>(v47, "1.2.840.10008.5.1.4.1.1.131");
    vega::UID::UID(&v49, v47);
    std::string::basic_string[abi:ne200100]<0>(v550, "Basic Structured Display Storage");
    v551 = v49;
    memset(&v49, 0, sizeof(v49));
    std::string::basic_string[abi:ne200100]<0>(v44, "1.2.840.10008.5.1.4.1.1.481.1");
    vega::UID::UID(&v46, v44);
    std::string::basic_string[abi:ne200100]<0>(v552, "RT Image Storage");
    v553 = v46;
    memset(&v46, 0, sizeof(v46));
    std::string::basic_string[abi:ne200100]<0>(v41, "1.2.840.10008.5.1.4.1.1.481.2");
    vega::UID::UID(&v43, v41);
    std::string::basic_string[abi:ne200100]<0>(v554, "RT Dose Storage");
    v555 = v43;
    memset(&v43, 0, sizeof(v43));
    std::string::basic_string[abi:ne200100]<0>(v38, "1.2.840.10008.5.1.4.1.1.481.3");
    vega::UID::UID(&v40, v38);
    std::string::basic_string[abi:ne200100]<0>(v556, "RT Structure Set Storage");
    v557 = v40;
    memset(&v40, 0, sizeof(v40));
    std::string::basic_string[abi:ne200100]<0>(v35, "1.2.840.10008.5.1.4.1.1.481.4");
    vega::UID::UID(&v37, v35);
    std::string::basic_string[abi:ne200100]<0>(v558, "RT Beams Treatment Record Storage");
    v559 = v37;
    memset(&v37, 0, sizeof(v37));
    std::string::basic_string[abi:ne200100]<0>(v32, "1.2.840.10008.5.1.4.1.1.481.5");
    vega::UID::UID(&v34, v32);
    std::string::basic_string[abi:ne200100]<0>(v560, "RT Plan Storage");
    v561 = v34;
    memset(&v34, 0, sizeof(v34));
    std::string::basic_string[abi:ne200100]<0>(v29, "1.2.840.10008.5.1.4.1.1.481.6");
    vega::UID::UID(&v31, v29);
    std::string::basic_string[abi:ne200100]<0>(v562, "RT Brachy Treatment Record Storage");
    v563 = v31;
    memset(&v31, 0, sizeof(v31));
    std::string::basic_string[abi:ne200100]<0>(v26, "1.2.840.10008.5.1.4.1.1.481.7");
    vega::UID::UID(&v28, v26);
    std::string::basic_string[abi:ne200100]<0>(v564, "RT Treatment Summary Record Storage");
    v565 = v28;
    memset(&v28, 0, sizeof(v28));
    std::string::basic_string[abi:ne200100]<0>(v23, "1.2.840.10008.5.1.4.1.1.481.8");
    vega::UID::UID(&v25, v23);
    std::string::basic_string[abi:ne200100]<0>(v566, "RT Ion Plan Storage");
    v567 = v25;
    memset(&v25, 0, sizeof(v25));
    std::string::basic_string[abi:ne200100]<0>(v20, "1.2.840.10008.5.1.4.1.1.481.9");
    vega::UID::UID(&v22, v20);
    std::string::basic_string[abi:ne200100]<0>(v568, "RT Ion Beams Treatment Record Storage");
    v569 = v22;
    memset(&v22, 0, sizeof(v22));
    std::string::basic_string[abi:ne200100]<0>(v17, "1.2.840.10008.5.1.4.34.7");
    vega::UID::UID(&v19, v17);
    std::string::basic_string[abi:ne200100]<0>(v570, "RT Beams Delivery Instruction Storage");
    v571 = v19;
    memset(&v19, 0, sizeof(v19));
    std::string::basic_string[abi:ne200100]<0>(v14, "1.2.840.10008.5.1.4.43.1");
    vega::UID::UID(&v16, v14);
    std::string::basic_string[abi:ne200100]<0>(v572, "Generic Implant Template Storage");
    v573 = v16;
    memset(&v16, 0, sizeof(v16));
    std::string::basic_string[abi:ne200100]<0>(v11, "1.2.840.10008.5.1.4.44.1");
    vega::UID::UID(&v13, v11);
    std::string::basic_string[abi:ne200100]<0>(v574, "Implant Assembly Template Storage");
    v575 = v13;
    memset(&v13, 0, sizeof(v13));
    std::string::basic_string[abi:ne200100]<0>(v8, "1.2.840.10008.5.1.4.45.1");
    vega::UID::UID(&__p, v8);
    std::string::basic_string[abi:ne200100]<0>(v576, "Implant Template Group Storage");
    v577 = __p;
    memset(&__p, 0, sizeof(__p));
    qword_1EB1ECB90 = 0;
    unk_1EB1ECB98 = 0;
    vega::dicom::SOPClass::NAME_UID_PAIRS(void)::NAME_UID_PAIRS = 0;
    std::vector<std::pair<std::string,vega::UID>>::__init_with_size[abi:ne200100]<std::pair<std::string,vega::UID> const*,std::pair<std::string,vega::UID> const*>(&vega::dicom::SOPClass::NAME_UID_PAIRS(void)::NAME_UID_PAIRS, v350, &v578, 0x72uLL);
    v5 = v576;
    v6 = -5472;
    do
    {
      vega::dicom::TransferSyntax::~TransferSyntax(v5);
      v5 = (v7 - 48);
      v6 += 48;
    }

    while (v6);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v9 < 0)
    {
      operator delete(v8[0]);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (v42 < 0)
    {
      operator delete(v41[0]);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (v48 < 0)
    {
      operator delete(v47[0]);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (v51 < 0)
    {
      operator delete(v50[0]);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (v54 < 0)
    {
      operator delete(v53[0]);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (v57 < 0)
    {
      operator delete(v56[0]);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (v60 < 0)
    {
      operator delete(v59[0]);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    if (v63 < 0)
    {
      operator delete(v62[0]);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (v66 < 0)
    {
      operator delete(v65[0]);
    }

    if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v70.__r_.__value_.__l.__data_);
    }

    if (v69 < 0)
    {
      operator delete(v68[0]);
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (v72 < 0)
    {
      operator delete(v71[0]);
    }

    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
    }

    if (v75 < 0)
    {
      operator delete(v74[0]);
    }

    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }

    if (v78 < 0)
    {
      operator delete(v77[0]);
    }

    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }

    if (v81 < 0)
    {
      operator delete(v80[0]);
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    if (v84 < 0)
    {
      operator delete(v83[0]);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    if (v87 < 0)
    {
      operator delete(v86[0]);
    }

    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }

    if (v90 < 0)
    {
      operator delete(v89[0]);
    }

    if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v94.__r_.__value_.__l.__data_);
    }

    if (v93 < 0)
    {
      operator delete(v92[0]);
    }

    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v97.__r_.__value_.__l.__data_);
    }

    if (v96 < 0)
    {
      operator delete(v95[0]);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    if (v99 < 0)
    {
      operator delete(v98[0]);
    }

    if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v103.__r_.__value_.__l.__data_);
    }

    if (v102 < 0)
    {
      operator delete(v101[0]);
    }

    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v106.__r_.__value_.__l.__data_);
    }

    if (v105 < 0)
    {
      operator delete(v104[0]);
    }

    if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v109.__r_.__value_.__l.__data_);
    }

    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v112.__r_.__value_.__l.__data_);
    }

    if (v111 < 0)
    {
      operator delete(v110[0]);
    }

    if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v115.__r_.__value_.__l.__data_);
    }

    if (v114 < 0)
    {
      operator delete(v113[0]);
    }

    if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v118.__r_.__value_.__l.__data_);
    }

    if (v117 < 0)
    {
      operator delete(v116[0]);
    }

    if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v121.__r_.__value_.__l.__data_);
    }

    if (v120 < 0)
    {
      operator delete(v119[0]);
    }

    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }

    if (v123 < 0)
    {
      operator delete(v122[0]);
    }

    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v127.__r_.__value_.__l.__data_);
    }

    if (v126 < 0)
    {
      operator delete(v125[0]);
    }

    if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v130.__r_.__value_.__l.__data_);
    }

    if (v129 < 0)
    {
      operator delete(v128[0]);
    }

    if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v133.__r_.__value_.__l.__data_);
    }

    if (v132 < 0)
    {
      operator delete(v131[0]);
    }

    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v136.__r_.__value_.__l.__data_);
    }

    if (v135 < 0)
    {
      operator delete(v134[0]);
    }

    if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v139.__r_.__value_.__l.__data_);
    }

    if (v138 < 0)
    {
      operator delete(v137[0]);
    }

    if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v142.__r_.__value_.__l.__data_);
    }

    if (v141 < 0)
    {
      operator delete(v140[0]);
    }

    if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__data_);
    }

    if (v144 < 0)
    {
      operator delete(v143[0]);
    }

    if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v148.__r_.__value_.__l.__data_);
    }

    if (v147 < 0)
    {
      operator delete(v146[0]);
    }

    if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v151.__r_.__value_.__l.__data_);
    }

    if (v150 < 0)
    {
      operator delete(v149[0]);
    }

    if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v154.__r_.__value_.__l.__data_);
    }

    if (v153 < 0)
    {
      operator delete(v152[0]);
    }

    if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v157.__r_.__value_.__l.__data_);
    }

    if (v156 < 0)
    {
      operator delete(v155[0]);
    }

    if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v160.__r_.__value_.__l.__data_);
    }

    if (v159 < 0)
    {
      operator delete(v158[0]);
    }

    if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v163.__r_.__value_.__l.__data_);
    }

    if (v162 < 0)
    {
      operator delete(v161[0]);
    }

    if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v166.__r_.__value_.__l.__data_);
    }

    if (v165 < 0)
    {
      operator delete(v164[0]);
    }

    if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v169.__r_.__value_.__l.__data_);
    }

    if (v168 < 0)
    {
      operator delete(v167[0]);
    }

    if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v172.__r_.__value_.__l.__data_);
    }

    if (v171 < 0)
    {
      operator delete(v170[0]);
    }

    if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v175.__r_.__value_.__l.__data_);
    }

    if (v174 < 0)
    {
      operator delete(v173[0]);
    }

    if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v178.__r_.__value_.__l.__data_);
    }

    if (v177 < 0)
    {
      operator delete(v176[0]);
    }

    if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v181.__r_.__value_.__l.__data_);
    }

    if (v180 < 0)
    {
      operator delete(v179[0]);
    }

    if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v184.__r_.__value_.__l.__data_);
    }

    if (v183 < 0)
    {
      operator delete(v182[0]);
    }

    if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v187.__r_.__value_.__l.__data_);
    }

    if (v186 < 0)
    {
      operator delete(v185[0]);
    }

    if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v190.__r_.__value_.__l.__data_);
    }

    if (v189 < 0)
    {
      operator delete(v188[0]);
    }

    if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v193.__r_.__value_.__l.__data_);
    }

    if (v192 < 0)
    {
      operator delete(v191[0]);
    }

    if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v196.__r_.__value_.__l.__data_);
    }

    if (v195 < 0)
    {
      operator delete(v194[0]);
    }

    if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v199.__r_.__value_.__l.__data_);
    }

    if (v198 < 0)
    {
      operator delete(v197[0]);
    }

    if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v202.__r_.__value_.__l.__data_);
    }

    if (v201 < 0)
    {
      operator delete(v200[0]);
    }

    if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v205.__r_.__value_.__l.__data_);
    }

    if (v204 < 0)
    {
      operator delete(v203[0]);
    }

    if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v208.__r_.__value_.__l.__data_);
    }

    if (v207 < 0)
    {
      operator delete(v206[0]);
    }

    if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v211.__r_.__value_.__l.__data_);
    }

    if (v210 < 0)
    {
      operator delete(v209[0]);
    }

    if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v214.__r_.__value_.__l.__data_);
    }

    if (v213 < 0)
    {
      operator delete(v212[0]);
    }

    if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v217.__r_.__value_.__l.__data_);
    }

    if (v216 < 0)
    {
      operator delete(v215[0]);
    }

    if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v220.__r_.__value_.__l.__data_);
    }

    if (v219 < 0)
    {
      operator delete(v218[0]);
    }

    if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v223.__r_.__value_.__l.__data_);
    }

    if (v222 < 0)
    {
      operator delete(v221[0]);
    }

    if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v226.__r_.__value_.__l.__data_);
    }

    if (v225 < 0)
    {
      operator delete(v224[0]);
    }

    if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v229.__r_.__value_.__l.__data_);
    }

    if (v228 < 0)
    {
      operator delete(v227[0]);
    }

    if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v232.__r_.__value_.__l.__data_);
    }

    if (v231 < 0)
    {
      operator delete(v230[0]);
    }

    if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v235.__r_.__value_.__l.__data_);
    }

    if (v234 < 0)
    {
      operator delete(v233[0]);
    }

    if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v238.__r_.__value_.__l.__data_);
    }

    if (v237 < 0)
    {
      operator delete(v236[0]);
    }

    if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v241.__r_.__value_.__l.__data_);
    }

    if (v240 < 0)
    {
      operator delete(v239[0]);
    }

    if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v244.__r_.__value_.__l.__data_);
    }

    if (v243 < 0)
    {
      operator delete(v242[0]);
    }

    if (SHIBYTE(v247.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v247.__r_.__value_.__l.__data_);
    }

    if (v246 < 0)
    {
      operator delete(v245[0]);
    }

    if (SHIBYTE(v250.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v250.__r_.__value_.__l.__data_);
    }

    if (v249 < 0)
    {
      operator delete(v248[0]);
    }

    if (SHIBYTE(v253.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v253.__r_.__value_.__l.__data_);
    }

    if (v252 < 0)
    {
      operator delete(v251[0]);
    }

    if (SHIBYTE(v256.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v256.__r_.__value_.__l.__data_);
    }

    if (v255 < 0)
    {
      operator delete(v254[0]);
    }

    if (SHIBYTE(v259.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v259.__r_.__value_.__l.__data_);
    }

    if (v258 < 0)
    {
      operator delete(v257[0]);
    }

    if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v262.__r_.__value_.__l.__data_);
    }

    if (v261 < 0)
    {
      operator delete(v260[0]);
    }

    if (SHIBYTE(v265.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v265.__r_.__value_.__l.__data_);
    }

    if (v264 < 0)
    {
      operator delete(v263[0]);
    }

    if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v268.__r_.__value_.__l.__data_);
    }

    if (v267 < 0)
    {
      operator delete(v266[0]);
    }

    if (SHIBYTE(v271.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v271.__r_.__value_.__l.__data_);
    }

    if (v270 < 0)
    {
      operator delete(v269[0]);
    }

    if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v274.__r_.__value_.__l.__data_);
    }

    if (v273 < 0)
    {
      operator delete(v272[0]);
    }

    if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v277.__r_.__value_.__l.__data_);
    }

    if (v276 < 0)
    {
      operator delete(v275[0]);
    }

    if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v280.__r_.__value_.__l.__data_);
    }

    if (v279 < 0)
    {
      operator delete(v278[0]);
    }

    if (SHIBYTE(v283.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v283.__r_.__value_.__l.__data_);
    }

    if (v282 < 0)
    {
      operator delete(v281[0]);
    }

    if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v286.__r_.__value_.__l.__data_);
    }

    if (v285 < 0)
    {
      operator delete(v284[0]);
    }

    if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v289.__r_.__value_.__l.__data_);
    }

    if (v288 < 0)
    {
      operator delete(v287[0]);
    }

    if (SHIBYTE(v292.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v292.__r_.__value_.__l.__data_);
    }

    if (v291 < 0)
    {
      operator delete(v290[0]);
    }

    if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v295.__r_.__value_.__l.__data_);
    }

    if (v294 < 0)
    {
      operator delete(v293[0]);
    }

    if (SHIBYTE(v298.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v298.__r_.__value_.__l.__data_);
    }

    if (v297 < 0)
    {
      operator delete(v296[0]);
    }

    if (SHIBYTE(v301.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v301.__r_.__value_.__l.__data_);
    }

    if (v300 < 0)
    {
      operator delete(v299[0]);
    }

    if (SHIBYTE(v304.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v304.__r_.__value_.__l.__data_);
    }

    if (v303 < 0)
    {
      operator delete(v302[0]);
    }

    if (SHIBYTE(v307.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v307.__r_.__value_.__l.__data_);
    }

    if (v306 < 0)
    {
      operator delete(v305[0]);
    }

    if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v310.__r_.__value_.__l.__data_);
    }

    if (v309 < 0)
    {
      operator delete(v308[0]);
    }

    if (SHIBYTE(v313.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v313.__r_.__value_.__l.__data_);
    }

    if (v312 < 0)
    {
      operator delete(v311[0]);
    }

    if (SHIBYTE(v316.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v316.__r_.__value_.__l.__data_);
    }

    if (v315 < 0)
    {
      operator delete(v314[0]);
    }

    if (SHIBYTE(v319.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v319.__r_.__value_.__l.__data_);
    }

    if (v318 < 0)
    {
      operator delete(v317[0]);
    }

    if (SHIBYTE(v322.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v322.__r_.__value_.__l.__data_);
    }

    if (v321 < 0)
    {
      operator delete(v320[0]);
    }

    if (SHIBYTE(v325.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v325.__r_.__value_.__l.__data_);
    }

    if (v324 < 0)
    {
      operator delete(v323[0]);
    }

    if (SHIBYTE(v328.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v328.__r_.__value_.__l.__data_);
    }

    if (v327 < 0)
    {
      operator delete(v326[0]);
    }

    if (SHIBYTE(v331.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v331.__r_.__value_.__l.__data_);
    }

    if (v330 < 0)
    {
      operator delete(v329[0]);
    }

    if (SHIBYTE(v334.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v334.__r_.__value_.__l.__data_);
    }

    if (v333 < 0)
    {
      operator delete(v332[0]);
    }

    if (SHIBYTE(v337.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v337.__r_.__value_.__l.__data_);
    }

    if (v336 < 0)
    {
      operator delete(v335[0]);
    }

    if (SHIBYTE(v340.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v340.__r_.__value_.__l.__data_);
    }

    if (v339 < 0)
    {
      operator delete(v338[0]);
    }

    if (SHIBYTE(v343.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v343.__r_.__value_.__l.__data_);
    }

    if (v342 < 0)
    {
      operator delete(v341[0]);
    }

    if (SHIBYTE(v346.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v346.__r_.__value_.__l.__data_);
    }

    if (v345 < 0)
    {
      operator delete(v344[0]);
    }

    if (SHIBYTE(v349.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v349.__r_.__value_.__l.__data_);
    }

    if (v348 < 0)
    {
      operator delete(v347[0]);
    }

    v2 = v4;
  }

  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return std::vector<std::pair<std::string,vega::UID>>::__init_with_size[abi:ne200100]<std::pair<std::string,vega::UID>*,std::pair<std::string,vega::UID>*>(v2, vega::dicom::SOPClass::NAME_UID_PAIRS(void)::NAME_UID_PAIRS, qword_1EB1ECB90, 0xAAAAAAAAAAAAAAABLL * ((qword_1EB1ECB90 - vega::dicom::SOPClass::NAME_UID_PAIRS(void)::NAME_UID_PAIRS) >> 4));
}