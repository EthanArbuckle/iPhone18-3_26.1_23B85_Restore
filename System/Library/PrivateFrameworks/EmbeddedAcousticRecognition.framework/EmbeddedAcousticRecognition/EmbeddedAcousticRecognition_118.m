void sub_1B58DC274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t utf8::next<char *>(char **a1, char *a2)
{
  v10 = 0;
  v3 = utf8::internal::validate_next<std::__wrap_iter<char const*>>(a1, a2, &v10);
  if ((v3 - 2) < 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v6 = **a1;
    *exception = &unk_1F2D37D08;
    exception[8] = v6;
    v8 = utf8::invalid_utf8::~invalid_utf8;
    goto LABEL_8;
  }

  if (v3 == 5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v9 = v10;
    *exception = &unk_1F2D37D30;
    *(exception + 2) = v9;
    v8 = utf8::invalid_code_point::~invalid_code_point;
    goto LABEL_8;
  }

  if (v3 == 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_1F2D37CE0;
    v8 = utf8::not_enough_room::~not_enough_room;
LABEL_8:
    __cxa_throw(exception, v7, v8);
  }

  return v10;
}

void tokenize_entry(const std::string *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, void *a5@<X8>)
{
  if (a4)
  {
    *a4 = 0;
  }

  tokenize_utf8_string(a1, a2, &v20);
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v8 = v20;
  if (v21 != v20)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      if ((*(*a3 + 96))(a3, v8 + 24 * v9) == -1)
      {
        if (a4)
        {
          *a4 = 1;
        }

        if (quasar::gLogLevel >= 6)
        {
          memset(v19, 0, sizeof(v19));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
          v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Symbol: '", 9);
          if (0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3) <= v9)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v12 = v20 + 24 * v9;
          v13 = *(v12 + 23);
          if (v13 >= 0)
          {
            v14 = v20 + 24 * v9;
          }

          else
          {
            v14 = *v12;
          }

          if (v13 >= 0)
          {
            v15 = *(v12 + 23);
          }

          else
          {
            v15 = *(v12 + 8);
          }

          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v14, v15);
          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "' not found in input symbols table.", 35);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " Mapping to null...", 19);
          quasar::QuasarTraceMessage::~QuasarTraceMessage(v19);
        }
      }

      else
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3) <= v9)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        std::vector<std::string>::push_back[abi:ne200100](a5, (v20 + 24 * v9));
      }

      v9 = v10;
      v8 = v20;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3) > v10++);
  }

  *&v19[0] = &v20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v19);
}

void sub_1B58DC5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  quasar::QuasarTraceMessage::~QuasarTraceMessage(&a9);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = v9 - 112;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void utf8::not_enough_room::~not_enough_room(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1B8C85350);
}

void utf8::invalid_utf8::~invalid_utf8(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1B8C85350);
}

void utf8::invalid_code_point::~invalid_code_point(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::hashstring2enum(uint64_t *a1, int *a2)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80000000) == 0)
  {
    if (v2 == 3)
    {
      if (*a1 != 30770 || *(a1 + 2) != 50)
      {
        if (*a1 != 30771 || *(a1 + 2) != 50)
        {
          goto LABEL_25;
        }

LABEL_31:
        v9 = 1;
        goto LABEL_33;
      }

LABEL_30:
      v9 = 0;
      goto LABEL_33;
    }

    return 0;
  }

  if (a1[1] == 3 && **a1 == 30770 && *(*a1 + 2) == 50)
  {
    goto LABEL_30;
  }

  if (a1[1] == 3 && **a1 == 30771 && *(*a1 + 2) == 50)
  {
    goto LABEL_31;
  }

  if (a1[1] != 3)
  {
    return 0;
  }

  a1 = *a1;
LABEL_25:
  if (*a1 != 30771 || *(a1 + 2) != 51)
  {
    return 0;
  }

  v9 = 2;
LABEL_33:
  *a2 = v9;
  return 1;
}

uint64_t kaldi::computeHash(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  switch(a5)
  {
    case 2:
      kaldi::computeHash3(a1, a2, a3, a4);
      return 1;
    case 1:
      kaldi::computeHash2(a1, a2, a3, a4);
      return 1;
    case 0:
      kaldi::computeHash1(a1, a2, a3, a4);
      return 1;
  }

  return 0;
}

uint64_t kaldi::computeHash1(uint64_t a1, void *a2, signed int a3, int a4)
{
  if (kaldi::MatrixBase<float>::NumRows(a1) >= 2)
  {
    v8 = 1;
    do
    {
      if (a4 - 1 <= a3)
      {
        v12 = v8 - 1;
        v20 = 0.0;
      }

      else
      {
        v9 = 0;
        v10 = *(a1 + 16);
        v11 = *a1 + 4 * (v10 * v8);
        v12 = v8 - 1;
        v13 = *a1 + 4 * (v10 * (v8 - 1));
        v14 = *(v11 + 4 * a3);
        v15 = *(v13 + 4 * a3);
        v16 = -1;
        v17 = a3 + 1;
        do
        {
          v18 = v14;
          v14 = *(v11 + 4 * v17);
          v19 = (v18 - v14) - v15;
          v15 = *(v13 + 4 * v17);
          if ((v19 + v15) > 0.0)
          {
            if (v16 >= 0x20)
            {
              std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
            }

            v9 |= 1 << v16;
          }

          ++v17;
          ++v16;
        }

        while (a4 != v17);
        v20 = v9;
      }

      *(*a2 + 4 * v12) = v20;
      ++v8;
    }

    while (v8 < kaldi::MatrixBase<float>::NumRows(a1));
  }

  return 1;
}

uint64_t kaldi::computeHash2(uint64_t a1, void *a2, signed int a3, int a4)
{
  if (kaldi::MatrixBase<float>::NumRows(a1) - 3 <= 0xFFFFFFFD)
  {
    v8 = 1;
    do
    {
      if (a4 - 1 <= a3)
      {
        v13 = v8 - 1;
        v10 = v8 + 1;
        v21 = 0.0;
      }

      else
      {
        v9 = 0;
        v10 = v8 + 1;
        v11 = *(a1 + 16);
        v12 = *a1 + 4 * v11 * (v8 + 1);
        v13 = v8 - 1;
        v14 = *a1 + 4 * v11 * (v8 - 1);
        v15 = *(v12 + 4 * a3);
        v16 = *(v14 + 4 * a3);
        v17 = -1;
        v18 = a3 + 1;
        do
        {
          v19 = v15;
          v15 = *(v12 + 4 * v18);
          v20 = (v19 - v15) - v16;
          v16 = *(v14 + 4 * v18);
          if ((v20 + v16) > 0.0)
          {
            if (v17 >= 0x20)
            {
              std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
            }

            v9 |= 1 << v17;
          }

          ++v18;
          ++v17;
        }

        while (a4 != v18);
        v21 = v9;
      }

      *(*a2 + 4 * v13) = v21;
      v22 = kaldi::MatrixBase<float>::NumRows(a1);
      v8 = v10;
    }

    while (v10 < v22 - 1);
  }

  return 1;
}

uint64_t kaldi::computeHash3(uint64_t a1, void *a2, int a3, int a4)
{
  if (kaldi::MatrixBase<float>::NumRows(a1) - 3 <= 0xFFFFFFFD)
  {
    v8 = a4 - 1;
    v9 = a3 + 1;
    v10 = a4 - 2;
    v11 = 1;
    do
    {
      if (v9 >= v8)
      {
        v18 = v11 - 1;
        v16 = v11 + 1;
        v28 = 0.0;
      }

      else
      {
        v12 = 0;
        v13 = 0;
        v14 = *(a1 + 16);
        v15 = *a1 + 4 * v14 * v11;
        v16 = v11 + 1;
        v17 = *a1 + 4 * v14 * (v11 + 1);
        v18 = v11 - 1;
        v19 = *(v15 + 4 * v9);
        v20 = *a1 + 4 * v14 * (v11 - 1);
        v21 = *(v17 + 4 * v9);
        v22 = *(v20 + 4 * v9);
        v23 = a3;
        do
        {
          v24 = v21;
          v25 = v22;
          v26 = v19;
          v21 = *(v17 + 4 * (v23 + 2));
          v22 = *(v20 + 4 * (v23 + 2));
          v19 = *(v15 + 4 * (v23 + 2));
          v27 = v26 + (((((((v21 + v24) + *(v17 + 4 * v23)) + v22) + v25) + *(v20 + 4 * v23)) + v19) + *(v15 + 4 * v23)) * -0.125;
          if (v27 > 0.0)
          {
            if (v12 >= 0x20)
            {
              std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
            }

            v13 |= 1 << v12;
          }

          ++v23;
          ++v12;
        }

        while (v10 != v23);
        v28 = v13;
      }

      *(*a2 + 4 * v18) = v28;
      v29 = kaldi::MatrixBase<float>::NumRows(a1);
      v11 = v16;
    }

    while (v16 < v29 - 1);
  }

  return 1;
}

float kaldi::computeHashSimilarity(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  if (v6 >= v7)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = 10.0;
  if (a3 - 1 < v8)
  {
    if (v8 >= a4)
    {
      v11 = a4;
    }

    else
    {
      v11 = v8;
    }

    kaldi::Matrix<float>::Matrix(v39, v6, v7, 0, 0);
    v14 = *(a1 + 8);
    v15 = *(a2 + 8);
    if (v14 >= 1)
    {
      v16 = 0;
      v17 = *a1;
      v18 = *a2;
      v19 = v39[0];
      v20 = 4 * v40;
      do
      {
        v12.i32[0] = v17[v16] ^ ~*v18;
        v12 = vcnt_s8(v12);
        v12.i16[0] = vaddlv_u8(v12);
        *v19 = v12.u32[0];
        ++v16;
        v19 = (v19 + v20);
      }

      while (v14 != v16);
    }

    if (v15 >= 1)
    {
      v21 = 0;
      v22 = *a1;
      v23 = *a2;
      v24 = v39[0];
      do
      {
        v12.i32[0] = *v22 ^ ~v23[v21];
        v12 = vcnt_s8(v12);
        v12.i16[0] = vaddlv_u8(v12);
        *(v24 + 4 * v21++) = v12.u32[0];
      }

      while (v15 != v21);
    }

    if (v14 > 1)
    {
      v25 = v39[0];
      v26 = *a1;
      v27 = 4 * v40;
      v28 = *a2 + 4;
      for (i = 1; i != v14; ++i)
      {
        if (v15 >= 2)
        {
          v30 = 0;
          do
          {
            v13.i32[0] = v26[i] ^ ~*(v28 + 4 * v30);
            v13 = vcnt_s8(v13);
            v13.i16[0] = vaddlv_u8(v13);
            *(v25 + v27 + 4 * v30 + 4) = *(v25 + 4 * v30) + v13.u32[0];
            ++v30;
          }

          while (v15 - 1 != v30);
        }

        v25 += v27;
      }
    }

    v31 = v11 - 1;
    v32 = 10.0;
    if ((v11 - 1) < v14)
    {
      v33 = v11 - 1;
      v34 = 4 * v40;
      v35 = v39[0] + (v34 + 4) * v31;
      v36 = 10.0;
      do
      {
        if (v31 < v15)
        {
          v37 = 0;
          do
          {
            v36 = fmaxf(v36, *(v35 + 4 * v37) - *(v39[0] + 4 * (v40 + v40 * (v33 - v11)) + 4 * v37));
            ++v37;
          }

          while (v31 - v15 + v37);
        }

        ++v33;
        v35 += v34;
      }

      while (v14 != v33);
      v32 = v36;
    }

    v9 = v32 / v11;
    kaldi::Matrix<float>::~Matrix(v39);
  }

  return v9;
}

void quasar::printSymTableToTraceLog(quasar *this, const quasar::QsrTextSymbolTable *a2)
{
  if (quasar::gLogLevel >= 6)
  {
    v3 = quasar::QsrTextSymbolTable::NumSymbols(this);
    NthKey = quasar::QsrTextSymbolTable::GetNthKey(this);
    if (v3)
    {
      v5 = NthKey;
      v6 = 1;
      v7 = v3;
      do
      {
        if (quasar::gLogLevel >= 6)
        {
          memset(v14, 0, sizeof(v14));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
          quasar::QsrTextSymbolTable::Find(this, __p);
          if ((v13 & 0x80u) == 0)
          {
            v8 = __p;
          }

          else
          {
            v8 = __p[0];
          }

          if ((v13 & 0x80u) == 0)
          {
            v9 = v13;
          }

          else
          {
            v9 = __p[1];
          }

          v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v8, v9);
          v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " : ", 3);
          MEMORY[0x1B8C84C60](v11, v5);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }

          quasar::QuasarTraceMessage::~QuasarTraceMessage(v14);
        }

        if (v6 < v3)
        {
          v5 = quasar::QsrTextSymbolTable::GetNthKey(this);
        }

        ++v6;
        --v7;
      }

      while (v7);
    }
  }
}

_BYTE *quasar::lmeDataStatusString@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 6)
  {
    v2 = "Unknown";
  }

  else
  {
    v2 = off_1E7C1C1F8[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

_BYTE *quasar::lmeUsageStatusString@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 2)
  {
    v2 = "Unknown";
  }

  else
  {
    v2 = off_1E7C1C230[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void quasar::formatResultTokens(const quasar::Token **a1, _BYTE *a2)
{
  v92[2] = *MEMORY[0x1E69E9840];
  v90 = 0;
  v91 = 0uLL;
  memset(v89, 0, sizeof(v89));
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      quasar::Token::Token(&v74, v2);
      if (*a2 == 1)
      {
        quasar::resetWhiteSpace(&v74, a2 + 8);
      }

      if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v74.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v74.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v64, size + 3);
      if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v64;
      }

      else
      {
        v6 = v64.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = &v74;
        }

        else
        {
          v7 = v74.__r_.__value_.__r.__words[0];
        }

        memmove(v6, v7, size);
      }

      *(&v6->__r_.__value_.__l.__data_ + size) = 2112032;
      std::to_string(&v63, __val);
      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v63;
      }

      else
      {
        v8 = v63.__r_.__value_.__r.__words[0];
      }

      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v9 = v63.__r_.__value_.__l.__size_;
      }

      v10 = std::string::append(&v64, v8, v9);
      v11 = *&v10->__r_.__value_.__l.__data_;
      v65.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v65.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = std::string::append(&v65, " : ");
      v13 = *&v12->__r_.__value_.__l.__data_;
      v66.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v66.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v62, v76);
      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v62;
      }

      else
      {
        v14 = v62.__r_.__value_.__r.__words[0];
      }

      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v15 = v62.__r_.__value_.__l.__size_;
      }

      v16 = std::string::append(&v66, v14, v15);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v67.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v67.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = std::string::append(&v67, ", phoneSeq: ");
      v19 = *&v18->__r_.__value_.__l.__data_;
      v68.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v68.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if ((v80 & 0x80u) == 0)
      {
        v20 = v79;
      }

      else
      {
        v20 = v79[0];
      }

      if ((v80 & 0x80u) == 0)
      {
        v21 = v80;
      }

      else
      {
        v21 = v79[1];
      }

      v22 = std::string::append(&v68, v20, v21);
      v23 = *&v22->__r_.__value_.__l.__data_;
      v69.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&v69.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      v24 = std::string::append(&v69, ", startSil: ");
      v25 = *&v24->__r_.__value_.__l.__data_;
      v70.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
      *&v70.__r_.__value_.__l.__data_ = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v61, v77);
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v61;
      }

      else
      {
        v26 = v61.__r_.__value_.__r.__words[0];
      }

      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v27 = v61.__r_.__value_.__l.__size_;
      }

      v28 = std::string::append(&v70, v26, v27);
      v29 = *&v28->__r_.__value_.__l.__data_;
      v71.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
      *&v71.__r_.__value_.__l.__data_ = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      v30 = std::string::append(&v71, ", confidence: ");
      v31 = *&v30->__r_.__value_.__l.__data_;
      v72.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
      *&v72.__r_.__value_.__l.__data_ = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v60, v78);
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &v60;
      }

      else
      {
        v32 = v60.__r_.__value_.__r.__words[0];
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v33 = v60.__r_.__value_.__l.__size_;
      }

      v34 = std::string::append(&v72, v32, v33);
      v35 = *&v34->__r_.__value_.__l.__data_;
      v73.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
      *&v73.__r_.__value_.__l.__data_ = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      v36 = std::string::append(&v73, ", ipaPhoneSeq: ");
      v37 = *&v36->__r_.__value_.__l.__data_;
      *&v44[16] = *(&v36->__r_.__value_.__l + 2);
      *v44 = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      if ((v83 & 0x80u) == 0)
      {
        v38 = v82;
      }

      else
      {
        v38 = v82[0];
      }

      if ((v83 & 0x80u) == 0)
      {
        v39 = v83;
      }

      else
      {
        v39 = v82[1];
      }

      v40 = std::string::append(v44, v38, v39);
      v41 = v40->__r_.__value_.__r.__words[0];
      v92[0] = v40->__r_.__value_.__l.__size_;
      *(v92 + 7) = *(&v40->__r_.__value_.__r.__words[1] + 7);
      v42 = HIBYTE(v40->__r_.__value_.__r.__words[2]);
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v91) < 0)
      {
        operator delete(v90);
      }

      v90 = v41;
      *&v91 = v92[0];
      *(&v91 + 7) = *(v92 + 7);
      HIBYTE(v91) = v42;
      if ((v44[23] & 0x80000000) != 0)
      {
        operator delete(*v44);
      }

      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      v43 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
      if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v43 = v74.__r_.__value_.__l.__size_;
      }

      if (v43)
      {
        std::vector<std::string>::push_back[abi:ne200100](v89, &v90);
      }

      else if (quasar::gLogLevel >= 5)
      {
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v45 = 0u;
        memset(v44, 0, sizeof(v44));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v44);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "Empty tokenName", 15);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v44);
      }

      if (v88 < 0)
      {
        operator delete(__p);
      }

      if (v86 < 0)
      {
        operator delete(v85);
      }

      *v44 = &v84;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v44);
      if (v83 < 0)
      {
        operator delete(v82[0]);
      }

      *v44 = &v81;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v44);
      if (v80 < 0)
      {
        operator delete(v79[0]);
      }

      if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v74.__r_.__value_.__l.__data_);
      }

      v2 = (v2 + 224);
    }

    while (v2 != v3);
  }

  *v44 = " ";
  *&v44[8] = 1;
  quasar::join<std::vector<std::string>>(v89, v44);
  *v44 = v89;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v44);
  if (SHIBYTE(v91) < 0)
  {
    operator delete(v90);
  }
}

void sub_1B58DD604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p)
{
  __p = (v11 - 168);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v11 - 121) < 0)
  {
    operator delete(*(v11 - 144));
  }

  _Unwind_Resume(a1);
}

void quasar::resetWhiteSpace(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (quasar::startsWith(a1, a2))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::replaceFirst(a1, a2, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  a1[45] = v4;
  if (quasar::endsWith(a1, a2))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::replaceLast(a1, a2, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  a1[44] = v5;
}

void sub_1B58DD888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::formatTokensEndTime(uint64_t *a1)
{
  v21 = 0uLL;
  v22 = 0;
  memset(v20, 0, sizeof(v20));
  for (i = *a1; i != a1[1]; i += 224)
  {
    std::to_string(&v3, *(i + 36));
    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21);
    }

    v21 = v3;
    v22 = v4;
    if ((*(i + 23) & 0x8000000000000000) != 0)
    {
      if (!*(i + 8))
      {
LABEL_8:
        if (quasar::gLogLevel >= 5)
        {
          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          v14 = 0u;
          v15 = 0u;
          v12 = 0u;
          v13 = 0u;
          v10 = 0u;
          v11 = 0u;
          v8 = 0u;
          v9 = 0u;
          v6 = 0u;
          v7 = 0u;
          v4 = 0u;
          v5 = 0u;
          v3 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v3);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v3, "Empty tokenName", 15);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(&v3);
        }

        continue;
      }
    }

    else if (!*(i + 23))
    {
      goto LABEL_8;
    }

    std::vector<std::string>::push_back[abi:ne200100](v20, &v21);
  }

  *&v3 = " ";
  *(&v3 + 1) = 1;
  quasar::join<std::vector<std::string>>(v20, &v3);
  *&v3 = v20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21);
  }
}

void sub_1B58DDA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 104);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (*(v9 - 57) < 0)
  {
    operator delete(*(v9 - 80));
  }

  _Unwind_Resume(a1);
}

void quasar::formatResultTokensSimple(std::__split_buffer<std::wstring>::pointer a1, char a2)
{
  memset(v10, 0, sizeof(v10));
  v3 = a1->__r_.__value_.__r.__words[0];
  if (a1->__r_.__value_.__r.__words[0] != a1->__r_.__value_.__l.__size_)
  {
    v4 = a1;
    do
    {
      a1 = std::vector<std::string>::push_back[abi:ne200100](v10, v3);
      v3 += 14;
    }

    while (v3 != v4->__r_.__value_.__l.__size_);
  }

  if (a2)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v5 = quasar::QsrText::SingletonInstance(a1);
    quasar::QsrText::removeW00(v5, v10, &v7);
    v6[0] = " ";
    v6[1] = 1;
    quasar::join<std::vector<std::string>>(&v7, v6);
    v6[0] = &v7;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v6);
  }

  else
  {
    v7 = " ";
    v8 = 1;
    quasar::join<std::vector<std::string>>(v10, &v7);
  }

  v7 = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_1B58DDB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, char a14)
{
  a9 = &a11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  a11 = &a14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void quasar::wordPieceSequenceToWords(std::string *__str@<X0>, int a2@<W1>, const void **a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v6 = a3[1];
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_84:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v55);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v55, "whiteSpaceCharacter.size() > 0 && Illegal white space character");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v55);
  }

  if (!*(a3 + 23))
  {
    goto LABEL_84;
  }

LABEL_3:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
LABEL_79:
    if (a2)
    {
      v49 = *a4;
      if (*a4 != *(a4 + 8))
      {
        std::string::basic_string[abi:ne200100]<0>(v55, "");
        quasar::replaceFirst(v49, a3, v55);
        if (SHIBYTE(v55[0].__end_) < 0)
        {
          operator delete(v55[0].__first_);
        }
      }
    }

    return;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  do
  {
    while (1)
    {
      std::string::basic_string(v55, __str, v8, v6, &v54);
      end_high = SHIBYTE(v55[0].__end_);
      if (SHIBYTE(v55[0].__end_) >= 0)
      {
        begin = HIBYTE(v55[0].__end_);
      }

      else
      {
        begin = v55[0].__begin_;
      }

      v13 = *(a3 + 23);
      v14 = v13;
      if (v13 < 0)
      {
        v13 = a3[1];
      }

      if (begin != v13)
      {
        break;
      }

      if (SHIBYTE(v55[0].__end_) >= 0)
      {
        first = v55;
      }

      else
      {
        first = v55[0].__first_;
      }

      if (v14 >= 0)
      {
        v16 = a3;
      }

      else
      {
        v16 = *a3;
      }

      v17 = memcmp(first, v16, begin) == 0;
      if (end_high < 0)
      {
        goto LABEL_26;
      }

LABEL_20:
      if (!v17)
      {
        goto LABEL_27;
      }

LABEL_21:
      v9 = (v9 + v6);
      v8 = v9;
      v18 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      if ((v18 & 0x80u) != 0)
      {
        v18 = __str->__r_.__value_.__l.__size_;
      }

      v10 = 1;
      if (v18 <= v9)
      {
        goto LABEL_71;
      }
    }

    v17 = 0;
    if ((SHIBYTE(v55[0].__end_) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_26:
    operator delete(v55[0].__first_);
    if (v17)
    {
      goto LABEL_21;
    }

LABEL_27:
    v19 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((v19 & 0x80u) != 0)
    {
      v19 = __str->__r_.__value_.__l.__size_;
    }

    v20 = v9;
    if (v19 > v9)
    {
      v20 = v9;
      while (1)
      {
        std::string::basic_string(v55, __str, v20, v6, &v54);
        v21 = SHIBYTE(v55[0].__end_);
        if (SHIBYTE(v55[0].__end_) >= 0)
        {
          v22 = HIBYTE(v55[0].__end_);
        }

        else
        {
          v22 = v55[0].__begin_;
        }

        v23 = *(a3 + 23);
        v24 = v23;
        if (v23 < 0)
        {
          v23 = a3[1];
        }

        if (v22 != v23)
        {
          break;
        }

        if (SHIBYTE(v55[0].__end_) >= 0)
        {
          v25 = v55;
        }

        else
        {
          v25 = v55[0].__first_;
        }

        if (v24 >= 0)
        {
          v26 = a3;
        }

        else
        {
          v26 = *a3;
        }

        v27 = memcmp(v25, v26, v22) != 0;
        if (v21 < 0)
        {
          goto LABEL_46;
        }

LABEL_47:
        if (v27)
        {
          ++v20;
          v28 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
          if ((v28 & 0x80u) != 0)
          {
            v28 = __str->__r_.__value_.__l.__size_;
          }

          if (v28 > v20)
          {
            continue;
          }
        }

        goto LABEL_51;
      }

      v27 = 1;
      if ((SHIBYTE(v55[0].__end_) & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

LABEL_46:
      operator delete(v55[0].__first_);
      goto LABEL_47;
    }

LABEL_51:
    std::string::basic_string(&v54, __str, v8, v20 - v9, v55);
    if (v10)
    {
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, &v54.__r_.__value_.__l.__data_, __p);
      v30 = *(a4 + 8);
      v29 = *(a4 + 16);
      if (v30 >= v29)
      {
        v32 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *a4) >> 3);
        v33 = v32 + 1;
        if (v32 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v34 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *a4) >> 3);
        if (2 * v34 > v33)
        {
          v33 = 2 * v34;
        }

        if (v34 >= 0x555555555555555)
        {
          v35 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v35 = v33;
        }

        v55[0].__end_cap_.__value_ = a4;
        if (v35)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a4, v35);
        }

        v36 = 24 * v32;
        v37 = *__p;
        *(v36 + 16) = v53;
        *v36 = v37;
        __p[1] = 0;
        v53 = 0;
        __p[0] = 0;
        v38 = 24 * v32 + 24;
        v39 = *(a4 + 8) - *a4;
        v40 = v36 - v39;
        memcpy((v36 - v39), *a4, v39);
        v41 = *a4;
        *a4 = v40;
        *(a4 + 8) = v38;
        v42 = *(a4 + 16);
        *(a4 + 16) = 0;
        v55[0].__end_ = v41;
        v55[0].__end_cap_.__value_ = v42;
        v55[0].__first_ = v41;
        v55[0].__begin_ = v41;
        std::__split_buffer<std::string>::~__split_buffer(v55);
        v43 = SHIBYTE(v53);
        *(a4 + 8) = v38;
        if (v43 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v31 = *__p;
        *(v30 + 16) = v53;
        *v30 = v31;
        *(a4 + 8) = v30 + 24;
      }
    }

    else
    {
      std::vector<std::string>::push_back[abi:ne200100](a4, &v54);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    v8 = v20;
    v44 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((v44 & 0x80u) != 0)
    {
      v44 = __str->__r_.__value_.__l.__size_;
    }

    v9 = v20;
    v10 = v17;
  }

  while (v44 > v20);
  if (!v17)
  {
    goto LABEL_79;
  }

LABEL_71:
  v45 = *(a4 + 8);
  if (*a4 != v45)
  {
    v46 = *(a3 + 23);
    if (v46 >= 0)
    {
      v47 = a3;
    }

    else
    {
      v47 = *a3;
    }

    if (v46 >= 0)
    {
      v48 = *(a3 + 23);
    }

    else
    {
      v48 = a3[1];
    }

    std::string::append((v45 - 24), v47, v48);
    goto LABEL_79;
  }

  if ((a2 & 1) == 0)
  {
    std::vector<std::string>::push_back[abi:ne200100](a4, a3);
  }
}

void quasar::addSeparatorForCjkWordPieces(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (v3 + v5);
      if (*(v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v12, *v7, *(v7 + 1));
      }

      else
      {
        v8 = *v7;
        v12.__r_.__value_.__r.__words[2] = *(v7 + 2);
        *&v12.__r_.__value_.__l.__data_ = v8;
      }

      if (v5)
      {
        quasar::endsWithCjk();
      }

      v9 = *(a2 + 8);
      if (v9 >= *(a2 + 16))
      {
        v11 = std::vector<std::string>::__emplace_back_slow_path<std::string&>(a2, &v12);
      }

      else
      {
        if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(*(a2 + 8), v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
        }

        else
        {
          v10 = *&v12.__r_.__value_.__l.__data_;
          *(v9 + 16) = *(&v12.__r_.__value_.__l + 2);
          *v9 = v10;
        }

        v11 = (v9 + 24);
      }

      *(a2 + 8) = v11;
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }

      ++v6;
      v3 = *a1;
      v5 = 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v6);
  }
}

void sub_1B58DE1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v18[1] = v19;
  if (a18 < 0)
  {
    operator delete(__p);
  }

  __p = v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void quasar::splitOnSeparatorForCjkWordPieces(const std::string **a1@<X0>, std::vector<std::string> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      kaldi::SplitStringToVector(v2, "\x1F", 1, &v5);
      std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(a2, a2->__end_, v5, v6, 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3));
      v8 = &v5;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_1B58DE2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, void ***a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

BOOL quasar::getPreserveCjTokenizationDefault(const std::string *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1->__r_.__value_.__r.__words[0];
  }

  if (v2 >= 0)
  {
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v5 = v3 + size;
  if (size >= 1)
  {
    v6 = v3;
    do
    {
      v7 = memchr(v6, 95, size);
      if (!v7)
      {
        break;
      }

      if (*v7 == 95)
      {
        goto LABEL_13;
      }

      v6 = (v7 + 1);
      size = v5 - v6;
    }

    while (v5 - v6 > 0);
  }

  v7 = v5;
LABEL_13:
  if (v7 == v5)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7 - v3;
  }

  std::string::basic_string(&v14, a1, 0, v8, v15);
  std::string::basic_string[abi:ne200100]<0>(v15, "cmn");
  std::string::basic_string[abi:ne200100]<0>(v16, "ja");
  std::string::basic_string[abi:ne200100]<0>(v17, "wuu");
  std::string::basic_string[abi:ne200100]<0>(v18, "yue");
  std::string::basic_string[abi:ne200100]<0>(v19, "zh");
  std::set<std::string>::set[abi:ne200100](&v12, v15, 5);
  for (i = 0; i != -120; i -= 24)
  {
    if (v19[i + 23] < 0)
    {
      operator delete(*&v19[i]);
    }
  }

  v10 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v12, &v14.__r_.__value_.__l.__data_);
  std::__tree<std::string>::destroy(&v12, v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return &v13 != v10;
}

void sub_1B58DE494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, char *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  std::__tree<std::string>::destroy(&a11, a12);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL quasar::shouldDisablePreserveCjTokenizationForClient(void *a1)
{
  v1 = *(a1 + 23);
  v2 = a1[1];
  if (v1 < 0 && v2 == 33)
  {
    return !memcmp(*a1, "com.apple.notesAudioTranscription", 0x21uLL);
  }

  if (v1 < 0 && v2 == 32)
  {
    return **a1 == 0x6C7070612E6D6F63 && *(*a1 + 8) == 0x437365746F6E2E65 && *(*a1 + 16) == 0x736E6172546C6C61 && *(*a1 + 24) == 0x6E6F697470697263;
  }

  if (v1 < 0)
  {
    if (v2 != 17)
    {
      return 0;
    }

    a1 = *a1;
  }

  else if (v1 != 17)
  {
    return 0;
  }

  return *a1 == 0x6C7070612E6D6F63 && a1[1] == 0x616E72756F6A2E65 && *(a1 + 16) == 108;
}

void quasar::getTopChoice(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8) == *a1)
  {

    std::string::basic_string[abi:ne200100]<0>(a3, "");
  }

  else if (a2)
  {
    v4 = *a1;

    quasar::formatResultTokensSimple(v4, 0);
  }

  else
  {
    v7 = 0;
    *__p = 0u;
    v6 = 0u;
    std::string::basic_string[abi:ne200100]<0>(&__p[1], "▁");
    LOBYTE(v7) = 0;
    quasar::formatResultTokens(v3, __p);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[1]);
    }
  }
}

void sub_1B58DE714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__split_buffer<std::wstring>::pointer quasar::getTopChoice@<X0>(std::__split_buffer<std::wstring>::pointer result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = result->__r_.__value_.__r.__words[0];
  if (result->__r_.__value_.__r.__words[0] != result->__r_.__value_.__l.__size_)
  {
    v4 = *v3;
    v5 = *(v3 + 8);
    while (v4 != v5)
    {
      result = std::vector<std::string>::push_back[abi:ne200100](a2, v4);
      v4 += 14;
    }
  }

  return result;
}

void sub_1B58DE794(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void quasar::getTokensEndTime(uint64_t **a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  if (a1[1] == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "");
  }

  else
  {
    quasar::formatTokensEndTime(v2);
  }
}

uint64_t quasar::tokensWithTimes(uint64_t *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      if (v4)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, " ", 1);
      }

      v5 = *(v2 + v3 + 23);
      if (v5 >= 0)
      {
        v6 = v2 + v3;
      }

      else
      {
        v6 = *(v2 + v3);
      }

      if (v5 >= 0)
      {
        v7 = *(v2 + v3 + 23);
      }

      else
      {
        v7 = *(v2 + v3 + 8);
      }

      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v6, v7);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "[", 1);
      v10 = MEMORY[0x1B8C84C10](v9, *(v2 + v3 + 28));
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " ", 1);
      v12 = MEMORY[0x1B8C84C10](v11, *(v2 + v3 + 36));
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " ", 1);
      v14 = MEMORY[0x1B8C84C10](v13, *(v2 + v3 + 32));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "]", 1);
      ++v4;
      v2 = *a1;
      v3 += 224;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5) > v4);
  }

  std::stringbuf::str();
  v16 = *MEMORY[0x1E69E54E8];
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v20);
}

_BYTE *quasar::topChoiceWithTimes@<X0>(uint64_t **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (v3 == a1[1])
  {
    return std::string::basic_string[abi:ne200100]<0>(a2, "");
  }

  else
  {
    return quasar::tokensWithTimes(v3);
  }
}

void sub_1B58DEB74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void quasar::tokens2Str(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      std::operator+<char>();
      if (*(v2 + 44))
      {
        v5 = " ";
      }

      else
      {
        v5 = "";
      }

      v6 = std::string::append(&v10, v5);
      v7 = *&v6->__r_.__value_.__l.__data_;
      v12 = v6->__r_.__value_.__r.__words[2];
      *__p = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      if (v12 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if (v12 >= 0)
      {
        v9 = HIBYTE(v12);
      }

      else
      {
        v9 = __p[1];
      }

      std::string::append(a2, v8, v9);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      v2 += 224;
    }

    while (v2 != v3);
  }
}

void sub_1B58DEC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void quasar::tokens2Str(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a1 != a2)
  {
    v4 = a1;
    do
    {
      std::operator+<char>();
      if (*(v4 + 44))
      {
        v6 = " ";
      }

      else
      {
        v6 = "";
      }

      v7 = std::string::append(&v11, v6);
      v8 = *&v7->__r_.__value_.__l.__data_;
      v13 = v7->__r_.__value_.__r.__words[2];
      *__p = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      if (v13 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if (v13 >= 0)
      {
        v10 = HIBYTE(v13);
      }

      else
      {
        v10 = __p[1];
      }

      std::string::append(a3, v9, v10);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }

      v4 += 224;
    }

    while (v4 != a2);
  }
}

void sub_1B58DEDDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void quasar::topChoice2Str(uint64_t **a1@<X0>, std::string *a2@<X8>)
{
  v3 = *a1;
  if (v3 == a1[1])
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "");
  }

  else
  {
    quasar::tokens2Str(v3, a2);
  }
}

void quasar::tokenNames(__int128 **a1@<X0>, std::vector<std::string> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  std::vector<std::string>::reserve(a2, 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5));
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    end = a2->__end_;
    do
    {
      if (end >= a2->__end_cap_.__value_)
      {
        end = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a2, v4);
      }

      else
      {
        std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a2, v4);
        ++end;
      }

      a2->__end_ = end;
      v4 += 14;
    }

    while (v4 != v5);
  }
}

void sub_1B58DEF04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t quasar::isTokenSpanPrefixOf(uint64_t *a1, uint64_t *a2, int a3, int *a4)
{
  v4 = *a2;
  *a4 = -1;
  if (a2[1] == v4)
  {
    v34 = 0;
    result = 1;
    goto LABEL_56;
  }

  v6 = *a1;
  if (a1[1] == *a1)
  {
    return 0;
  }

  v35 = a4;
  for (i = -v6; ; i -= 224)
  {
    if (quasar::gLogLevel >= 5)
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "OriginalToken: ", 15);
      v11 = *(v6 + 23);
      if (v11 >= 0)
      {
        v12 = v6;
      }

      else
      {
        v12 = *v6;
      }

      if (v11 >= 0)
      {
        v13 = *(v6 + 23);
      }

      else
      {
        v13 = *(v6 + 8);
      }

      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "CandidateToken: ", 16);
      v16 = *(v4 + 23);
      if (v16 >= 0)
      {
        v17 = v4;
      }

      else
      {
        v17 = *v4;
      }

      if (v16 >= 0)
      {
        v18 = *(v4 + 23);
      }

      else
      {
        v18 = *(v4 + 8);
      }

      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
      std::ios_base::getloc((v19 + *(*v19 - 24)));
      v20 = std::locale::use_facet(&v36, MEMORY[0x1E69E5318]);
      (v20->__vftable[2].~facet_0)(v20, 10);
      std::locale::~locale(&v36);
      std::ostream::put();
      std::ostream::flush();
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }

    quasar::toLower(v6, __p);
    quasar::toLower(v4, &v36);
    v21 = BYTE7(v40);
    if ((SBYTE7(v40) & 0x80u) == 0)
    {
      v22 = BYTE7(v40);
    }

    else
    {
      v22 = __p[1];
    }

    v23 = v38;
    v24 = v38;
    if ((v38 & 0x80u) != 0)
    {
      v23 = v37;
    }

    if (v22 != v23)
    {
      v27 = 0;
      if ((v38 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

LABEL_33:
      operator delete(v36.__locale_);
      v21 = BYTE7(v40);
      goto LABEL_34;
    }

    if ((SBYTE7(v40) & 0x80u) == 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    if ((v38 & 0x80u) == 0)
    {
      locale = &v36;
    }

    else
    {
      locale = v36.__locale_;
    }

    v27 = memcmp(v25, locale, v22) == 0;
    if (v24 < 0)
    {
      goto LABEL_33;
    }

LABEL_34:
    if (v21 < 0)
    {
      break;
    }

    if (v27)
    {
      goto LABEL_36;
    }

LABEL_39:
    if (!a3)
    {
      goto LABEL_53;
    }

    v28 = *(v6 + 23);
    if (v28 < 0)
    {
      if (*(v6 + 8) != 3)
      {
        goto LABEL_53;
      }

      v29 = *v6;
    }

    else
    {
      v29 = v6;
      if (v28 != 3)
      {
        goto LABEL_53;
      }
    }

    v30 = *v29;
    v31 = *(v29 + 2);
    if (v30 != 16188 || v31 != 62)
    {
LABEL_53:
      result = 0;
LABEL_54:
      v34 = -1;
      goto LABEL_55;
    }

LABEL_50:
    v6 += 224;
    if (v6 == a1[1])
    {
      return 0;
    }
  }

  operator delete(__p[0]);
  if (!v27)
  {
    goto LABEL_39;
  }

LABEL_36:
  v4 += 224;
  if (v4 != a2[1])
  {
    goto LABEL_50;
  }

  if (a1[1] == 224 - i)
  {
    result = 1;
    goto LABEL_54;
  }

  v34 = -1227133513 * (-(*a1 + i) >> 5) + 1;
  result = 1;
LABEL_55:
  a4 = v35;
LABEL_56:
  *a4 = v34;
  return result;
}

void sub_1B58DF248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::concatNbest(quasar::Token ***a1, void **a2, void *a3, uint64_t *a4, unsigned int a5, unsigned int a6, __n128 a7)
{
  if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) != (a2[1] - *a2) >> 3 || (v9 = *a3, v10 = a3[1], v12 = *a4, v11 = a4[1], 0xAAAAAAAAAAAAAAABLL * ((v10 - *a3) >> 3) != (v11 - *a4) >> 3))
  {
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    memset(v104, 0, sizeof(v104));
    v103 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v103);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v103, "There should be one cost for each result choice");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v103);
  }

  v15 = a2;
  if (v9 == v10 || *v9 != v9[1])
  {
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    if (v11 != v12)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      do
      {
        v19 = (*a3 + v17);
        if (*v19 != v19[1])
        {
          std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](&v100, v19);
          std::vector<double>::push_back[abi:ne200100](&v97, (v12 + v16));
          v12 = *a4;
          v11 = a4[1];
        }

        ++v18;
        v17 += 24;
        v16 += 8;
      }

      while (v18 < (v11 - v12) >> 3);
      v20 = v100;
      v21 = v101;
      if (v100 != v101)
      {
        a7.n128_u64[0] = vdup_n_s32(a5);
        v22 = v100;
        do
        {
          v23 = *v22;
          v24 = v22[1];
          while (v23 != v24)
          {
            *(v23 + 28) = vadd_s32(*(v23 + 28), a7.n128_u64[0]);
            *(v23 + 9) += a5;
            v23 = (v23 + 224);
          }

          v22 += 3;
        }

        while (v22 != v21);
        v26 = *a1;
        v25 = a1[1];
        if (*a1 == v25 || *v26 == v26[1])
        {
          if (&v100 != a1)
          {
            std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(a1, v20, v21, 0xAAAAAAAAAAAAAAABLL * (v21 - v20));
          }

          if (&v97 != v15)
          {
            std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v15, v97, v98, (v98 - v97) >> 3);
          }
        }

        else
        {
          v84 = a3;
          v27 = 0;
          v28 = 0;
          __p = 0;
          v95 = 0;
          v96 = 0;
          v29 = v15;
          do
          {
            if (v21 == v20)
            {
              v21 = v20;
            }

            else
            {
              v30 = 0;
              v31 = v28;
              do
              {
                a7.n128_u64[0] = *(*v15 + v28);
                v32 = a7.n128_f64[0] + *(v97 + v30);
                if (v27 >= v96)
                {
                  v33 = (v27 - __p) >> 4;
                  if ((v33 + 1) >> 60)
                  {
                    std::vector<int>::__throw_length_error[abi:ne200100]();
                  }

                  v34 = (v96 - __p) >> 3;
                  if (v34 <= v33 + 1)
                  {
                    v34 = v33 + 1;
                  }

                  if (v96 - __p >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v35 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v35 = v34;
                  }

                  if (v35)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(&__p, v35);
                  }

                  v36 = 16 * v33;
                  *v36 = v32;
                  *(v36 + 8) = v31;
                  v27 = (16 * v33 + 16);
                  v37 = (v36 - (v95 - __p));
                  memcpy(v37, __p, v95 - __p);
                  v38 = __p;
                  __p = v37;
                  v95 = v27;
                  v96 = 0;
                  if (v38)
                  {
                    operator delete(v38);
                  }

                  v15 = v29;
                }

                else
                {
                  v27->n128_f64[0] = v32;
                  v27->n128_u64[1] = v31;
                  ++v27;
                }

                v95 = v27;
                ++v30;
                v20 = v100;
                v21 = v101;
                v31 += 0x100000000;
              }

              while (0xAAAAAAAAAAAAAAABLL * (v101 - v100) > v30);
              v26 = *a1;
              v25 = a1[1];
            }

            ++v28;
          }

          while (0xAAAAAAAAAAAAAAABLL * (v25 - v26) > v28);
          v39 = v27 - __p;
          if ((v27 - __p) > 0x10)
          {
            std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>,std::__less<void,void>>(__p + 1, v27, &v92, a7);
            v39 = v95 - __p;
          }

          v92 = 0uLL;
          v93 = 0;
          v90[0] = 0;
          v90[1] = 0;
          v91 = 0;
          v40 = v39 >> 4;
          if (v40 >= a6)
          {
            v40 = a6;
          }

          v86 = v40;
          if (v40 >= 1)
          {
            v41 = 0;
            do
            {
              v42 = __p + 16 * v41;
              v43 = *(v42 + 2);
              if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v43)
              {
                std::vector<int>::__throw_out_of_range[abi:ne200100]();
              }

              v44 = *(v42 + 3);
              v45 = v100;
              if (0xAAAAAAAAAAAAAAABLL * (v101 - v100) <= v44)
              {
                std::vector<int>::__throw_out_of_range[abi:ne200100]();
              }

              v46 = &(*a1)[3 * v43];
              v87.__locale_ = 0;
              v88 = 0;
              v89 = 0;
              std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v87, *v46, v46[1], 0x6DB6DB6DB6DB6DB7 * ((v46[1] - *v46) >> 5));
              v47 = &v45[3 * v44];
              v48 = *v47;
              v49 = *(*v47 + 7);
              v50 = v88;
              data = v88[-8].__r_.__value_.__l.__data_;
              if (v49 > data)
              {
                data = *(*v47 + 7);
              }

              LODWORD(v88[-8].__r_.__value_.__l.__data_) = data;
              v50[-8].__r_.__value_.__s.__data_[12] = 1;
              v50[-8].__r_.__value_.__s.__data_[14] = 1;
              v52 = v47[1];
              if (v48 != v52)
              {
                v53 = data - v49;
                v54 = vdup_n_s32(data - v49);
                do
                {
                  quasar::Token::Token(&v103, v48);
                  *&v104[3] = vadd_s32(*&v104[3], v54);
                  v104[5] += v53;
                  v55 = v88;
                  if (v88 >= v89)
                  {
                    v56 = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token const&>(&v87, &v103);
                  }

                  else
                  {
                    quasar::Token::Token(v88, &v103);
                    v56 = (v55 + 224);
                  }

                  v88 = v56;
                  if (SBYTE7(v114) < 0)
                  {
                    operator delete(v113);
                  }

                  if (SBYTE7(v112) < 0)
                  {
                    operator delete(v111);
                  }

                  v119[0] = &v109 + 1;
                  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v119);
                  if (SBYTE7(v109) < 0)
                  {
                    operator delete(v108);
                  }

                  v119[0] = &v106 + 1;
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v119);
                  if (SBYTE7(v106) < 0)
                  {
                    operator delete(v105);
                  }

                  if (SHIBYTE(v104[1]) < 0)
                  {
                    operator delete(v103);
                  }

                  v48 = (v48 + 224);
                }

                while (v48 != v52);
              }

              std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](&v92, &v87);
              std::vector<double>::push_back[abi:ne200100](v90, v42);
              *&v103 = &v87;
              std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v103);
              ++v41;
            }

            while (v41 != v86);
          }

          if (quasar::gLogLevel > 5)
          {
            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            v105 = 0u;
            v106 = 0u;
            memset(v104, 0, sizeof(v104));
            v103 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v103);
            v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v103, "concatNbest aChoices=", 21);
            v58 = MEMORY[0x1B8C84C30](v57, 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1));
            v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, " bChoicesOrig=", 14);
            v60 = MEMORY[0x1B8C84C30](v59, 0xAAAAAAAAAAAAAAABLL * ((v84[1] - *v84) >> 3));
            v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " bChoices=", 10);
            v62 = MEMORY[0x1B8C84C30](v61, 0xAAAAAAAAAAAAAAABLL * (v101 - v100));
            std::ios_base::getloc((v62 + *(*v62 - 24)));
            v63 = std::locale::use_facet(&v87, MEMORY[0x1E69E5318]);
            (v63->__vftable[2].~facet_0)(v63, 10);
            std::locale::~locale(&v87);
            std::ostream::put();
            std::ostream::flush();
            quasar::QuasarTraceMessage::~QuasarTraceMessage(&v103);
            if (v86 >= 1)
            {
              v64 = 0;
              v65 = 0;
              v66 = quasar::gLogLevel;
              v67 = MEMORY[0x1E69E5318];
              do
              {
                if (v66 >= 6)
                {
                  v68 = __p;
                  v117 = 0u;
                  v118 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  v113 = 0u;
                  v114 = 0u;
                  v111 = 0u;
                  v112 = 0u;
                  v109 = 0u;
                  v110 = 0u;
                  v107 = 0u;
                  v108 = 0u;
                  v105 = 0u;
                  v106 = 0u;
                  memset(v104, 0, sizeof(v104));
                  v103 = 0u;
                  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v103);
                  v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v103, "concatNbest[", 12);
                  v70 = MEMORY[0x1B8C84C00](v69, v65);
                  v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "]:", 2);
                  v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, " cost=(", 7);
                  v73 = MEMORY[0x1B8C84BE0](v72, *&v68[v64]);
                  v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, ")", 1);
                  v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, " aIndex=", 8);
                  v76 = MEMORY[0x1B8C84C00](v75, *&v68[v64 + 8]);
                  v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, " bIndex=", 8);
                  v78 = MEMORY[0x1B8C84C00](v77, *&v68[v64 + 12]);
                  std::ios_base::getloc((v78 + *(*v78 - 24)));
                  v79 = std::locale::use_facet(&v87, v67);
                  (v79->__vftable[2].~facet_0)(v79, 10);
                  std::locale::~locale(&v87);
                  std::ostream::put();
                  std::ostream::flush();
                  quasar::QuasarTraceMessage::~QuasarTraceMessage(&v103);
                  v66 = quasar::gLogLevel;
                }

                ++v65;
                v64 += 16;
              }

              while (v86 != v65);
            }
          }

          v80 = *a1;
          *a1 = v92;
          v92 = v80;
          v81 = a1[2];
          a1[2] = v93;
          v93 = v81;
          v82 = *v15;
          *v15 = *v90;
          v83 = v15[2];
          v15[2] = v91;
          v90[0] = v82;
          v91 = v83;
          if (v82)
          {
            v90[1] = v82;
            operator delete(v82);
          }

          *&v103 = &v92;
          std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v103);
          if (__p)
          {
            v95 = __p;
            operator delete(__p);
          }
        }
      }

      if (v97)
      {
        v98 = v97;
        operator delete(v97);
      }
    }

    *&v103 = &v100;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v103);
  }
}

void quasar::concat1best(uint64_t a1, uint64_t *a2, unsigned int a3, __n128 a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v7 = *a1;
  v8 = *(a1 + 8);
  if (*a1 != v8)
  {
    __src = 0;
    v24 = 0;
    v25 = 0;
    std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&__src, v7, v8, 0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 5));
    std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token> const*,std::vector<quasar::Token> const*>(&v17, &__src, &v26, 1uLL);
    __p = &__src;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
    __src = 0;
    std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(&v14, &__src, &v24, 1uLL);
  }

  __src = 0;
  v24 = 0;
  v25 = 0;
  __p = 0;
  v12 = 0;
  v13 = 0;
  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    v21 = 0;
    v22[0] = 0;
    v22[1] = 0;
    std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v21, v9, v10, 0x6DB6DB6DB6DB6DB7 * ((v10 - v9) >> 5));
    std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token> const*,std::vector<quasar::Token> const*>(&__src, &v21, &__src, 1uLL);
    v20 = &v21;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v20);
    v21 = 0;
    std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(&__p, &v21, v22, 1uLL);
  }

  quasar::concatNbest(&v17, &v14, &__src, &__p, a3, 1u, a4);
  if (v17 != a1 && v17 != v18)
  {
    std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(a1, *v17, v17[1], 0x6DB6DB6DB6DB6DB7 * ((v17[1] - *v17) >> 5));
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  __p = &__src;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  v14 = &v17;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v14);
}

void sub_1B58DFE90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char *a13, char *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = (v20 - 80);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a13)
  {
    a14 = a13;
    operator delete(a13);
  }

  a13 = &a16;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t quasar::extendEndTime(uint64_t result, unsigned int a2)
{
  v2 = *result;
  v3 = *(result + 8);
  while (v2 != v3)
  {
    v4 = v2[1];
    if (*v2 != v4)
    {
      v5 = *(v4 - 192);
      if (v5 <= a2)
      {
        v5 = a2;
      }

      *(v4 - 192) = v5;
    }

    v2 += 3;
  }

  return result;
}

void quasar::decodingSignalsToPtree(quasar *this, const quasar::Token::DecodingSignals *a2, quasar::PTree *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(v19, "graphCost");
  v6 = *this;
  Type = quasar::getType(v5, *this);
  std::to_string(&v14, v6);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 1;
  quasar::PTree::putChild(a2, v19, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  v7 = std::string::basic_string[abi:ne200100]<0>(v19, "acousticCost");
  v8 = *(this + 1);
  Type = quasar::getType(v7, v8);
  std::to_string(&v14, v8);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 1;
  quasar::PTree::putChild(a2, v19, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  v9 = std::string::basic_string[abi:ne200100]<0>(v19, "acousticCostFirstPassCollapsed");
  v10 = *(this + 2);
  Type = quasar::getType(v9, v10);
  std::to_string(&v14, v10);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 1;
  quasar::PTree::putChild(a2, v19, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  v11 = std::string::basic_string[abi:ne200100]<0>(v19, "acousticCostSecondPassUnpushed");
  v12 = *(this + 3);
  Type = quasar::getType(v11, v12);
  std::to_string(&v14, v12);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 1;
  quasar::PTree::putChild(a2, v19, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }
}

void sub_1B58E0138(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  quasar::PTree::~PTree(va);
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  _Unwind_Resume(a1);
}

void quasar::tokenToPtree(quasar *this, const quasar::Token *a2, quasar::PTree *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "tokenName");
  quasar::PTree::PTree(&Type, this);
  quasar::PTree::putChild(a2, __p, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "tokenId");
  v5 = *(this + 6);
  Type = quasar::getType(v5);
  std::to_string(&v16, v5);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 1;
  quasar::PTree::putChild(a2, __p, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "startMilliseconds");
  v6 = *(this + 7);
  Type = quasar::getType(v6);
  std::to_string(&v16, v6);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 1;
  quasar::PTree::putChild(a2, __p, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "endMilliseconds");
  v7 = *(this + 8);
  Type = quasar::getType(v7);
  std::to_string(&v16, v7);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 1;
  quasar::PTree::putChild(a2, __p, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "silStartMilliSeconds");
  v8 = *(this + 9);
  Type = quasar::getType(v8);
  std::to_string(&v16, v8);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 1;
  quasar::PTree::putChild(a2, __p, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = std::string::basic_string[abi:ne200100]<0>(__p, "confidence");
  v10 = *(this + 10);
  Type = quasar::getType(v9, v10);
  std::to_string(&v16, v10);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 1;
  quasar::PTree::putChild(a2, __p, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "hasSpaceAfter");
  v11 = *(this + 44);
  Type = quasar::getType(*(this + 44));
  std::to_string(&v16, v11);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 1;
  quasar::PTree::putChild(a2, __p, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "hasSpaceBefore");
  v12 = *(this + 45);
  Type = quasar::getType(*(this + 45));
  std::to_string(&v16, v12);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 1;
  quasar::PTree::putChild(a2, __p, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "phoneSeq");
  quasar::PTree::PTree(&Type, this + 48);
  quasar::PTree::putChild(a2, __p, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ipaPhoneSeq");
  quasar::PTree::PTree(&Type, this + 96);
  quasar::PTree::putChild(a2, __p, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lmeType");
  v13 = quasar::lmeTypeString(*(this + 42));
  quasar::PTree::PTree(&Type, v13);
  quasar::PTree::putChild(a2, __p, &Type, 1);
  quasar::PTree::~PTree(&Type);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  quasar::PTree::PTree(&Type);
  quasar::decodingSignalsToPtree((this + 204), &Type, v14);
  std::string::basic_string[abi:ne200100]<0>(__p, "decodingSignals");
  quasar::PTree::putChild(a2, __p, &Type, 1);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  quasar::PTree::~PTree(&Type);
}

void sub_1B58E0624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::~PTree(&a10);
  _Unwind_Resume(a1);
}

void quasar::ptreeToDecodingSignals(quasar *this, const quasar::PTree *a2)
{
  quasar::Token::DecodingSignals::DecodingSignals(&v4, 0.0, 0.0, 0.0, 0.0);
  std::string::basic_string[abi:ne200100]<0>(__p, "graphCost");
  quasar::PTree::getDoubleOptional(this, __p);
}

void sub_1B58E0838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ptreeToToken(quasar *this@<X0>, quasar::Token *a2@<X8>)
{
  quasar::Token::Token(a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "tokenName");
  quasar::PTree::getChild(this, __p);
}

void sub_1B58E0BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  quasar::QuasarWarnMessage::~QuasarWarnMessage(&__p);
  quasar::Token::~Token(v14);
  _Unwind_Resume(a1);
}

void quasar::phraseToPtree(quasar **a1, quasar::PTree *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      quasar::PTree::PTree(v6);
      quasar::tokenToPtree(v2, v6, v5);
      quasar::PTree::addChild(a2, v6);
      quasar::PTree::~PTree(v6);
      v2 = (v2 + 224);
    }

    while (v2 != v3);
  }
}

uint64_t quasar::ptreeToPhrase@<X0>(quasar *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = quasar::PTree::begin(this);
  result = quasar::PTree::end(this);
  if (v4 != result)
  {
    quasar::ptreeToToken((v4 + 24), v6);
  }

  return result;
}

void sub_1B58E0EDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void quasar::ptreeToSlice(quasar *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = quasar::PTree::begin(this);
  for (i = quasar::PTree::end(this); v5 != i; v5 += 88)
  {
    quasar::ptreeToPhrase((v5 + 24), &v19);
    v7 = a2[1];
    v8 = a2[2];
    if (v7 >= v8)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3);
      v11 = v10 + 1;
      if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x555555555555555)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v11;
      }

      v21[4] = a2;
      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a2, v13);
      }

      v14 = 24 * v10;
      *v14 = 0;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *v14 = v19;
      *(v14 + 16) = v20;
      v19 = 0uLL;
      v20 = 0;
      v9 = 24 * v10 + 24;
      v15 = a2[1] - *a2;
      v16 = 24 * v10 - v15;
      memcpy((v14 - v15), *a2, v15);
      v17 = *a2;
      *a2 = v16;
      a2[1] = v9;
      v18 = a2[2];
      a2[2] = 0;
      v21[2] = v17;
      v21[3] = v18;
      v21[0] = v17;
      v21[1] = v17;
      std::__split_buffer<std::vector<quasar::Token>>::~__split_buffer(v21);
    }

    else
    {
      *v7 = 0;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = v19;
      *(v7 + 2) = v20;
      v19 = 0uLL;
      v20 = 0;
      v9 = (v7 + 24);
    }

    a2[1] = v9;
    v21[0] = &v19;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v21);
  }
}

void sub_1B58E131C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  kaldi::Matrix<float>::~Matrix(&__p);
  kaldi::Matrix<float>::~Matrix(&a17);
  kaldi::Matrix<float>::~Matrix(&a25);
  std::__tree<int>::destroy(v30 - 72, *(v30 - 64));
  _Unwind_Resume(a1);
}

void sub_1B58E14BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  kaldi::Matrix<float>::~Matrix(&a9);
  kaldi::Matrix<float>::~Matrix(&a14);
  MEMORY[0x1B8C85350](v15, v14);
  _Unwind_Resume(a1);
}

uint64_t quasar::readTsvFile@<X0>(int a1@<W1>, void *a2@<X8>)
{
  v25[19] = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::ifstream::basic_ifstream(v23);
  v4 = 0;
  memset(&__p, 0, sizeof(__p));
  v5 = MEMORY[0x1E69E5318];
  while (1)
  {
    std::ios_base::getloc((v23 + *(v23[0] - 24)));
    v6 = std::locale::use_facet(v18, v5);
    v7 = (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(v18);
    v8 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v23, &__p, v7);
    if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
    {
      break;
    }

    quasar::trim(&__p);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      kaldi::SplitStringToVector(&__p, "\t", 0, &v19);
      if (v4)
      {
        if (!a1)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v4 = -1431655765 * ((v20 - v19) >> 3);
        if (!a1)
        {
          goto LABEL_11;
        }
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3) != v4)
      {
        memset(v18, 0, sizeof(v18));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Inconsistent number of columns. Expected ", 41);
        v12 = MEMORY[0x1B8C84C00](v11, v4);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " got ", 5);
        v14 = MEMORY[0x1B8C84C30](v13, 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3));
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ":", 1);
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
          v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v17 = __p.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, p_p, v17);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v18);
      }

LABEL_11:
      std::vector<std::vector<std::string>>::push_back[abi:ne200100](a2, &v19);
      *&v18[0] = &v19;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v18);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v23[0] = *MEMORY[0x1E69E54C8];
  *(v23 + *(v23[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](&v24);
  std::istream::~istream();
  return MEMORY[0x1B8C85200](v25);
}

void sub_1B58E185C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void quasar::getTokenizedTokenPhraseChoiceListForEAR(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    quasar::getTokenizedNBestListForEAR(a1, 1, &v7);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(&v7, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  }

  v4 = v7;
  if (v7 == v8)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      for (i = *v4; i != v4[1]; i += 224)
      {
        if (v5 <= *(i + 32))
        {
          v5 = *(i + 32);
        }
      }

      v4 += 3;
    }

    while (v4 != v8);
  }

  quasar::TextProc::GetTokenizedPhraseChoiceList(&v7, v5, 1, a3);
  v10 = &v7;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v10);
}

void sub_1B58E1998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void quasar::getTokenizedNBestListForEAR(uint64_t *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2)
  {
    v5 = std::vector<std::vector<quasar::Token>>::reserve(a3, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    v6 = *a1;
    for (i = a1[1]; v6 != i; v6 += 24)
    {
      memset(v12, 0, sizeof(v12));
      v8 = quasar::QsrText::SingletonInstance(v5);
      quasar::QsrText::qsrToHatTokens(v8, v6, v12, 1);
      std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](a3, v12);
      v13 = v12;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v13);
    }
  }

  else
  {
    v9 = *a1;
    v10 = a1[1];
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a1) >> 3);

    std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(a3, v9, v10, v11);
  }
}

void quasar::readMemMappedLockedFile(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v2 = MEMORY[0x1E69E5528] + 64;
  v16 = MEMORY[0x1E69E5528] + 64;
  v3 = *(MEMORY[0x1E69E54C8] + 16);
  v14[0] = *(MEMORY[0x1E69E54C8] + 8);
  *(v14 + *(v14[0] - 24)) = v3;
  v14[1] = 0;
  v4 = (v14 + *(v14[0] - 24));
  std::ios_base::init(v4, v15);
  v5 = MEMORY[0x1E69E5528] + 24;
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  v14[0] = v5;
  v16 = v2;
  MEMORY[0x1B8C849F0](v15);
  std::ifstream::open();
  if (v15[15])
  {
    fst::FstReadOptions::FstReadOptions(__p, a1, 0, 0, 0);
    v11 = 2;
    std::istream::seekg();
    std::istream::tellg();
    std::istream::seekg();
    fst::MappedFile::Map(v14, __p, v13);
  }

  memset(v12, 0, sizeof(v12));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Failed to open file: ", 21);
  v7 = *(a1 + 23);
  if (v7 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 23);
  }

  else
  {
    v9 = *(a1 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v12);
}

void sub_1B58E1E68(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

std::__split_buffer<std::wstring>::pointer quasar::findLeafValuesWithCondition(quasar::PTree *a1, uint64_t a2, uint64_t a3)
{
  if (quasar::PTree::isLeaf(a1))
  {
    String = quasar::PTree::getString(a1);
    v7 = *(a2 + 24);
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    result = (*(*v7 + 48))(v7, String);
    if (result)
    {
      v9 = quasar::PTree::getString(a1);
      v10 = *(a3 + 8);
      if (v10 >= *(a3 + 16))
      {
        result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a3, v9);
      }

      else
      {
        std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a3, v9);
        result = v10 + 1;
      }

      *(a3 + 8) = result;
    }
  }

  else
  {
    v11 = quasar::PTree::begin(a1);
    result = quasar::PTree::end(a1);
    if (v11 != result)
    {
      v12 = result;
      do
      {
        result = quasar::findLeafValuesWithCondition(v11 + 24, a2, a3);
        v11 += 88;
      }

      while (v11 != v12);
    }
  }

  return result;
}

void quasar::userDataToPtree(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, quasar::PTree *a4@<X8>)
{
  quasar::PTree::PTree(a4);
  v5 = *a1;
  if (*a1 != a1 + 1)
  {
    while (1)
    {
      quasar::PTree::PTree(v65);
      v6 = v5[7];
      v37 = v5[8];
      v38 = v5;
      if (v6 != v37)
      {
        do
        {
          quasar::PTree::PTree(&v64);
          v8 = *v6;
          v7 = v6[1];
          v39 = v6;
          v41 = v7;
          while (v8 != v7)
          {
            quasar::PTree::PTree(v63);
            std::string::basic_string[abi:ne200100]<0>(__p, "tag");
            quasar::PTree::PTree(&v57, v8 + 24);
            quasar::PTree::putChild(v63, __p, &v57, 1);
            quasar::PTree::~PTree(&v57);
            if (v53 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "orth");
            quasar::PTree::PTree(&v57, v8);
            quasar::PTree::putChild(v63, __p, &v57, 1);
            quasar::PTree::~PTree(&v57);
            if (v53 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "freq");
            v9 = *(v8 + 48);
            LODWORD(v57) = quasar::getType(v9);
            std::to_string(&v58, v9);
            v59 = 0;
            v60 = 0;
            v61 = 0;
            v62 = 1;
            quasar::PTree::putChild(v63, __p, &v57, 1);
            quasar::PTree::~PTree(&v57);
            if (v53 < 0)
            {
              operator delete(__p[0]);
            }

            if (a3)
            {
              v54 = 0;
              v55 = 0;
              v56 = 0;
              quasar::Bitmap::~Bitmap((v8 + 56));
              v12 = v10 + 1;
              v11 = *v10;
              v13 = v55;
              if (*v10 != v10 + 1)
              {
                do
                {
                  v14 = (*(v11 + 8) | (*(v11 + 16) << 32));
                  v57 = v14;
                  if (v13 >= v56)
                  {
                    v13 = std::vector<std::pair<std::pair<quasar::PronType,float>,std::string>>::__emplace_back_slow_path<std::pair<quasar::PronType,float>,std::string const&>(&v54, &v57, (v11 + 5));
                  }

                  else
                  {
                    *v13 = v14;
                    v15 = (v13 + 1);
                    if (*(v11 + 63) < 0)
                    {
                      std::string::__init_copy_ctor_external(v15, v11[5], v11[6]);
                    }

                    else
                    {
                      v16 = *(v11 + 5);
                      v13[3] = v11[7];
                      *&v15->__r_.__value_.__l.__data_ = v16;
                    }

                    v13 += 4;
                  }

                  v55 = v13;
                  v17 = v11[1];
                  if (v17)
                  {
                    do
                    {
                      v18 = v17;
                      v17 = *v17;
                    }

                    while (v17);
                  }

                  else
                  {
                    do
                    {
                      v18 = v11[2];
                      v19 = *v18 == v11;
                      v11 = v18;
                    }

                    while (!v19);
                  }

                  v11 = v18;
                }

                while (v18 != v12);
              }

              v20 = 126 - 2 * __clz((v13 - v54) >> 5);
              if (v13 == v54)
              {
                v21 = 0;
              }

              else
              {
                v21 = v20;
              }

              std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,false>(v54, v13, __p, v21, 1);
              quasar::PTree::PTree(&v57);
              v22 = v54;
              v23 = v55;
              while (v22 != v23)
              {
                quasar::PTree::PTree(__p);
                std::string::basic_string[abi:ne200100]<0>(v50, "type");
                v24 = quasar::PronTypeToString(*v22);
                std::string::basic_string[abi:ne200100]<0>(v42, v24);
                quasar::PTree::PTree(&Type, v42);
                quasar::PTree::putChild(__p, v50, &Type, 1);
                quasar::PTree::~PTree(&Type);
                if (v43 < 0)
                {
                  operator delete(v42[0]);
                }

                if (v51 < 0)
                {
                  operator delete(v50[0]);
                }

                v25 = std::string::basic_string[abi:ne200100]<0>(v50, "weight");
                v26 = *(v22 + 1);
                Type = quasar::getType(v25, v26);
                std::to_string(&v45, v26);
                v46 = 0;
                v47 = 0;
                v48 = 0;
                v49 = 1;
                quasar::PTree::putChild(__p, v50, &Type, 1);
                quasar::PTree::~PTree(&Type);
                if (v51 < 0)
                {
                  operator delete(v50[0]);
                }

                std::string::basic_string[abi:ne200100]<0>(v50, "pron");
                v27 = v22 + 2;
                quasar::PTree::PTree(&Type, v27);
                quasar::PTree::putChild(__p, v50, &Type, 1);
                quasar::PTree::~PTree(&Type);
                if (v51 < 0)
                {
                  operator delete(v50[0]);
                }

                quasar::PTree::addChild(&v57, __p);
                quasar::PTree::~PTree(__p);
                v22 = v27 + 6;
              }

              std::string::basic_string[abi:ne200100]<0>(__p, "prons2");
              quasar::PTree::putChild(v63, __p, &v57, 1);
              if (v53 < 0)
              {
                operator delete(__p[0]);
              }

              quasar::PTree::~PTree(&v57);
              v57 = &v54;
              std::vector<std::pair<unsigned long,std::wstring>>::__destroy_vector::operator()[abi:ne200100](&v57);
            }

            else
            {
              quasar::PTree::PTree(&v57);
              quasar::Bitmap::~Bitmap((v8 + 56));
              v30 = v28 + 1;
              v29 = *v28;
              if (*v28 != v28 + 1)
              {
                do
                {
                  quasar::PTree::PTree(__p, v29 + 5);
                  quasar::PTree::addChild(&v57, __p);
                  quasar::PTree::~PTree(__p);
                  v31 = v29[1];
                  if (v31)
                  {
                    do
                    {
                      v32 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v32 = v29[2];
                      v19 = *v32 == v29;
                      v29 = v32;
                    }

                    while (!v19);
                  }

                  v29 = v32;
                }

                while (v32 != v30);
              }

              std::string::basic_string[abi:ne200100]<0>(__p, "prons");
              quasar::PTree::putChild(v63, __p, &v57, 1);
              if (v53 < 0)
              {
                operator delete(__p[0]);
              }

              quasar::PTree::~PTree(&v57);
            }

            quasar::PTree::addChild(&v64, v63);
            quasar::PTree::~PTree(v63);
            v8 += 80;
            v7 = v41;
          }

          v5 = v38;
          if ((quasar::PTree::isLeaf(&v64) & 1) == 0 && !quasar::PTree::empty(&v64))
          {
            quasar::PTree::addChild(v65, &v64);
          }

          quasar::PTree::~PTree(&v64);
          v6 = v39 + 3;
        }

        while (v39 + 3 != v37);
      }

      if (quasar::PTree::empty(v65))
      {
        goto LABEL_71;
      }

      if (*(v5 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v64, v5[4], v5[5]);
      }

      else
      {
        v64 = *(v5 + 4);
      }

      if (a2)
      {
        break;
      }

LABEL_69:
      quasar::PTree::putChild(a4, &v64, v65, 0);
      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

LABEL_71:
      quasar::PTree::~PTree(v65);
      v33 = v5[1];
      if (v33)
      {
        do
        {
          v34 = v33;
          v33 = *v33;
        }

        while (v33);
      }

      else
      {
        do
        {
          v34 = v5[2];
          v19 = *v34 == v5;
          v5 = v34;
        }

        while (!v19);
      }

      v5 = v34;
      if (v34 == a1 + 1)
      {
        return;
      }
    }

    quasar::SystemConfig::quasarTemplateToAceCats(a2, &v64.__r_.__value_.__l.__data_, v63);
    if (v63[1] != v63[0])
    {
      if ((SHIBYTE(v63[0]->__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (!*(&v63[0]->__r_.__value_.__s + 23))
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }

      if (v63[0]->__r_.__value_.__l.__size_)
      {
LABEL_67:
        std::string::operator=(&v64, v63[0]);
      }
    }

LABEL_68:
    v57 = v63;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v57);
    goto LABEL_69;
  }
}

void sub_1B58E2630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, quasar::PTree *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, char *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  a52 = &a60;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a52);
  if (*(v60 - 217) < 0)
  {
    operator delete(*(v60 - 240));
  }

  quasar::PTree::~PTree((v60 - 168));
  quasar::PTree::~PTree(a10);
  _Unwind_Resume(a1);
}

uint64_t quasar::getPunctuationReplacements(quasar *this)
{
  v2 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  return quasar::getPunctuationReplacements(void)::map;
}

void sub_1B58E2AF0(_Unwind_Exception *a1)
{
  v4 = v2 + 768;
  v5 = -816;
  do
  {
    v4 = std::pair<std::string,std::string>::~pair(v4) - 48;
    v5 += 48;
  }

  while (v5);
  MEMORY[0x1B8C85350](v1, 0x10A0C408EF24B1CLL);
  _Unwind_Resume(a1);
}

uint64_t quasar::getCommandStartTokensSet(quasar *this)
{
  v2 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  return quasar::getCommandStartTokensSet(void)::set;
}

void sub_1B58E2CA4(_Unwind_Exception *a1)
{
  v4 = (v2 + 95);
  v5 = -96;
  v6 = v4;
  while (1)
  {
    v7 = *v6;
    v6 -= 24;
    if (v7 < 0)
    {
      operator delete(*(v4 - 23));
    }

    v4 = v6;
    v5 += 24;
    if (!v5)
    {
      MEMORY[0x1B8C85350](v1, 0x10A0C408EF24B1CLL);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t quasar::getCommandEndTokensMap(quasar *this)
{
  v2 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  return quasar::getCommandEndTokensMap(void)::map;
}

void sub_1B58E2E8C(_Unwind_Exception *a1)
{
  v4 = v2 + 144;
  v5 = -192;
  do
  {
    v4 = std::pair<std::string,std::string>::~pair(v4) - 48;
    v5 += 48;
  }

  while (v5);
  MEMORY[0x1B8C85350](v1, 0x10A0C408EF24B1CLL);
  _Unwind_Resume(a1);
}

uint64_t quasar::truncatePreItnLeftContextForItn@<X0>(quasar *a1@<X0>, int a2@<W1>, std::wstring **a3@<X8>)
{
  CommandStartTokensSet = quasar::getCommandStartTokensSet(a1);
  CommandEndTokensMap = quasar::getCommandEndTokensMap(CommandStartTokensSet);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 1065353216;
  v7 = *a1;
  v8 = *(a1 + 1) - *a1;
  if (v8)
  {
    v9 = 0;
    v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
    do
    {
      v11 = (v7 + 24 * v9);
      if (v10 <= v9 + a2)
      {
        v12 = a3[1];
        if (*a3 == v12)
        {
          v13 = CommandStartTokensSet;
          v26[0] = 0;
          v26[1] = 0;
          v25 = v26;
          v14 = v28;
          if (v28)
          {
            do
            {
              v30 = v14 + 5;
              v15 = std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v25, v14 + 10);
              std::string::operator=((v15 + 5), (v14 + 2));
              v14 = *v14;
            }

            while (v14);
            v16 = v25;
            if (v25 != v26)
            {
              v17 = a3[1];
              do
              {
                if (v17 >= a3[2])
                {
                  v17 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a3, (v16 + 5));
                }

                else
                {
                  std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a3, (v16 + 5));
                  ++v17;
                }

                a3[1] = v17;
                v18 = v16[1];
                if (v18)
                {
                  do
                  {
                    v19 = v18;
                    v18 = *v18;
                  }

                  while (v18);
                }

                else
                {
                  do
                  {
                    v19 = v16[2];
                    v20 = *v19 == v16;
                    v16 = v19;
                  }

                  while (!v20);
                }

                v16 = v19;
              }

              while (v19 != v26);
            }
          }

          std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v25, v26[0]);
          v12 = a3[1];
          CommandStartTokensSet = v13;
        }

        if (v12 >= a3[2])
        {
          v21 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a3, v11);
        }

        else
        {
          std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a3, v11);
          v21 = v12 + 1;
        }

        a3[1] = v21;
      }

      else if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(CommandStartTokensSet, v11))
      {
        v25 = v11;
        *(std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v27, v11) + 10) = v9;
      }

      else
      {
        v22 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(CommandEndTokensMap, v11);
        if (v22)
        {
          std::__hash_table<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>>>::__erase_unique<std::string>(&v27, v22 + 5);
        }
      }

      ++v9;
      v7 = *a1;
      v10 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1) - *a1) >> 3);
    }

    while (v10 > v9);
  }

  return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v27);
}

void sub_1B58E3160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::__split_buffer<std::wstring>::pointer quasar::pySlice<std::vector<std::string>>@<X0>(std::__split_buffer<std::wstring>::pointer result@<X0>, int a2@<W1>, int a3@<W2>, std::vector<std::string> *a4@<X8>)
{
  size = result->__r_.__value_.__l.__size_;
  if (result->__r_.__value_.__r.__words[0] == size)
  {
    a4->__begin_ = 0;
    a4->__end_ = 0;
    a4->__end_cap_.__value_ = 0;
  }

  else
  {
    v6 = -1431655765 * ((size - result->__r_.__value_.__r.__words[0]) >> 3);
    v7 = ((v6 & (a2 >> 31)) + a2) & ~(((v6 & (a2 >> 31)) + a2) >> 31);
    v8 = ((v6 & (a3 >> 31)) + a3) & ~(((v6 & (a3 >> 31)) + a3) >> 31);
    if (v8 >= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    a4->__begin_ = 0;
    a4->__end_ = 0;
    a4->__end_cap_.__value_ = 0;
    if (v9 > v7)
    {
      v10 = result;
      std::vector<std::string>::reserve(a4, v9 - v7);
      v11 = 24 * v7;
      do
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v10->__words[1] - v10->__words[0]) >> 3) <= v7)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        result = std::vector<std::string>::push_back[abi:ne200100](a4, (v10->__words[0] + v11));
        ++v7;
        v11 += 24;
      }

      while (v9 != v7);
    }
  }

  return result;
}

void sub_1B58E32A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[19],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B58E32F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[8],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B58E334C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[9],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B58E33A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[12],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B58E33F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[16],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B58E3448(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[23],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B58E349C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[22],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B58E34F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[26],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B58E3544(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[29],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B58E3598(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[16],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B58E35EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[19],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B58E3640(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[24],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B58E3694(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[10],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B58E36E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>,std::__less<void,void>>(__n128 *a1, __n128 *a2, uint64_t a3, __n128 a4)
{
  v7 = a2 - a1;
  if (v7 < 1)
  {
    v13 = 0;
    v9 = 0;
  }

  else
  {
    v8 = MEMORY[0x1E69E5398];
    v9 = a2 - a1;
    while (1)
    {
      v10 = operator new(16 * v9, v8);
      if (v10)
      {
        break;
      }

      v11 = v9 >> 1;
      v12 = v9 > 1;
      v9 >>= 1;
      if (!v12)
      {
        v13 = 0;
        v9 = v11;
        goto LABEL_8;
      }
    }

    v13 = v10;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(a1, a2, a3, v7, v13, v9, a4);
  if (v13)
  {

    operator delete(v13);
  }
}

void sub_1B58E37E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      a7.n128_u64[0] = a2[-1].n128_u64[0];
      v9 = a1->n128_f64[0];
      if (a7.n128_f64[0] < a1->n128_f64[0])
      {
        v10 = a1->n128_i32[2];
        v11 = a2[-1].n128_i32[2];
LABEL_5:
        a1->n128_u64[0] = a7.n128_u64[0];
        a2[-1].n128_f64[0] = v9;
        a1->n128_u32[2] = v11;
        a2[-1].n128_u32[2] = v10;
        v12 = a1->n128_u32[3];
        a1->n128_u32[3] = a2[-1].n128_u32[3];
        a2[-1].n128_u32[3] = v12;
        return a7.n128_f64[0];
      }

      if (v9 >= a7.n128_f64[0])
      {
        v11 = a2[-1].n128_i32[2];
        v10 = a1->n128_i32[2];
        if (v11 < v10 || v10 >= v11 && a2[-1].n128_u32[3] < a1->n128_u32[3])
        {
          goto LABEL_5;
        }
      }
    }

    else if (a4 <= 0)
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(a1->n128_f64, a2->n128_f64);
    }

    else
    {
      v17 = a4 >> 1;
      v18 = &a1[a4 >> 1];
      v19 = a4 >> 1;
      if (a4 <= a6)
      {
        v21.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(a1, v18, a3, v19, a5, a7);
        v22 = std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v17], v21);

        a7.n128_f64[0] = std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,std::pair<int,int>> *,std::pair<double,std::pair<int,int>> *,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(a5, &a5[v17], &a5[v17], &a5[a4], a1, v22);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(a1, v18, a3, v19, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(a1, &a1[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6, v20);
      }
    }
  }

  return a7.n128_f64[0];
}

double *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(double *result, double *a2)
{
  if (result == a2)
  {
    return result;
  }

  v2 = result + 2;
  if (result + 2 == a2)
  {
    return result;
  }

  v3 = 0;
  v4 = result;
  do
  {
    v5 = v4;
    v4 = v2;
    v6 = *v2;
    v7 = *v5;
    if (*v2 >= *v5)
    {
      if (v7 < v6)
      {
        goto LABEL_18;
      }

      v8 = *(v5 + 6);
      v9 = *(v5 + 2);
      if (v8 >= v9 && (v9 < v8 || *(v5 + 7) >= *(v5 + 3)))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v8 = *(v5 + 6);
      v9 = *(v5 + 2);
    }

    v10 = *(v5 + 7);
    *v4 = v7;
    *(v4 + 2) = v9;
    *(v4 + 3) = *(v5 + 3);
    if (v5 == result)
    {
LABEL_15:
      v5 = result;
      goto LABEL_16;
    }

    v11 = v3;
    while (1)
    {
      v12 = *(result + v11 - 16);
      if (v6 >= v12)
      {
        break;
      }

      v13 = *(result + v11 - 8);
LABEL_14:
      v5 -= 2;
      v14 = result + v11;
      *v14 = v12;
      v15 = *(result + v11 - 4);
      *(v14 + 8) = v13;
      *(v14 + 12) = v15;
      v11 -= 16;
      if (!v11)
      {
        goto LABEL_15;
      }
    }

    if (v12 < v6)
    {
      goto LABEL_16;
    }

    v13 = *(result + v11 - 8);
    if (v8 < v13)
    {
      goto LABEL_14;
    }

    if (v13 < v8)
    {
      goto LABEL_16;
    }

    if (v10 < *(result + v11 - 4))
    {
      goto LABEL_14;
    }

    v5 = (result + v11);
LABEL_16:
    *v5 = v6;
    *(v5 + 2) = v8;
    *(v5 + 3) = v10;
LABEL_18:
    v2 = v4 + 2;
    v3 += 16;
  }

  while (v4 + 2 != a2);
  return result;
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, __n128 a6)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v10 = a2 - 1;
      v11 = a2[-1].n128_f64[0];
      if (v11 < a1->n128_f64[0] || a1->n128_f64[0] >= v11 && ((v14 = a2[-1].n128_i32[2], v15 = a1->n128_i32[2], v14 < v15) || v15 >= v14 && a2[-1].n128_u32[3] < a1->n128_u32[3]))
      {
        *a5 = *v10;
        a6 = *a1;
      }

      else
      {
        *a5 = *a1;
        a6 = *v10;
      }

      a5[1] = a6;
    }

    else if (a4 == 1)
    {
      a6 = *a1;
      *a5 = *a1;
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(a1, &a1[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      a6.n128_f64[0] = std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(a1, &a1[a4 >> 1], &a1[a4 >> 1], a2, a5, v13);
    }

    else
    {

      std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(a1->n128_f64, a2->n128_f64, a5->n128_f64);
    }
  }

  return a6.n128_f64[0];
}

double std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,std::pair<int,int>> *,std::pair<double,std::pair<int,int>> *,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double result)
{
  while (1)
  {
    if (a1 == a2)
    {
      while (a3 != a4)
      {
        result = *a3;
        *a5 = *a3;
        *(a5 + 8) = *(a3 + 8);
        *(a5 + 12) = *(a3 + 12);
        a3 += 16;
        a5 += 16;
      }

      return result;
    }

    if (a3 == a4)
    {
      break;
    }

    result = *a3;
    v6 = *a1;
    if (*a3 < *a1)
    {
      v7 = *(a3 + 8);
LABEL_5:
      *a5 = result;
      *(a5 + 8) = v7;
      *(a5 + 12) = *(a3 + 12);
      a3 += 16;
      goto LABEL_9;
    }

    if (v6 >= result)
    {
      v7 = *(a3 + 8);
      v8 = *(a1 + 8);
      if (v7 < v8 || v8 >= v7 && *(a3 + 12) < *(a1 + 12))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v8 = *(a1 + 8);
    }

    *a5 = v6;
    *(a5 + 8) = v8;
    *(a5 + 12) = *(a1 + 12);
    a1 += 16;
LABEL_9:
    a5 += 16;
  }

  if (a1 != a2)
  {
    v9 = 0;
    do
    {
      v10 = a1 + v9;
      v11 = a5 + v9;
      result = *(a1 + v9);
      *v11 = result;
      *(v11 + 8) = *(a1 + v9 + 8);
      *(v11 + 12) = *(a1 + v9 + 12);
      v9 += 16;
    }

    while (v10 + 16 != a2);
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  if (a6)
  {
    v9 = a8;
    v10 = a6;
    do
    {
      if (v10 <= v9 || a5 <= v9)
      {
        std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(a1, a2, a3, a9, a4, a5, v10, a7);
        return;
      }

      if (!a5)
      {
        return;
      }

      v14 = 0;
      v15 = *a2;
      v16 = -a5;
      while (1)
      {
        v17 = *(a1 + v14);
        if (v15 < v17)
        {
          break;
        }

        if (v17 >= v15)
        {
          v18 = *(a2 + 8);
          v19 = *(a1 + v14 + 8);
          if (v18 < v19 || v19 >= v18 && *(a2 + 12) < *(a1 + v14 + 12))
          {
            break;
          }
        }

        v14 += 16;
        if (__CFADD__(v16++, 1))
        {
          return;
        }
      }

      v35 = a3;
      if (-v16 >= v10)
      {
        if (v16 == -1)
        {
          v31 = a1 + v14;
          *v31 = v15;
          *a2 = v17;
          v32 = *(a1 + v14 + 8);
          *(v31 + 8) = *(a2 + 8);
          *(a2 + 8) = v32;
          v33 = *(a1 + v14 + 12);
          *(v31 + 12) = *(a2 + 12);
          *(a2 + 12) = v33;
          return;
        }

        v24 = -v16 / 2;
        v23 = (a1 + 16 * v24 + v14);
        v22 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>,std::pair<double,std::pair<int,int>>,std::__identity,std::__less<void,void>>(a2, v23, (a3 - a2) >> 4);
        v21 = (v22 - a2) >> 4;
      }

      else
      {
        v21 = v10 / 2;
        v22 = (a2 + 16 * (v10 / 2));
        v23 = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>,std::pair<double,std::pair<int,int>>,std::__identity>(a1 + v14, a2, v22);
        v24 = (v23 - a1 - v14) >> 4;
      }

      v25 = v22;
      if (v23 != a2)
      {
        v25 = v23;
        if (a2 != v22)
        {
          v25 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(v23, a2, v22);
        }
      }

      v26 = v24;
      a5 = -v16 - v24;
      v27 = v21;
      v28 = v10 - v21;
      if (v26 + v27 >= v10 - (v26 + v27) - v16)
      {
        v30 = v27;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(v25, v22, v35, a4, a5, v28, a7, a8);
        a1 += v14;
        v22 = v23;
        v9 = a8;
        v28 = v30;
        a5 = v26;
        a3 = v25;
      }

      else
      {
        v29 = v23;
        v9 = a8;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(a1 + v14, v29, v25, a4, v26, v27, a7, a8);
        a1 = v25;
        a3 = v35;
      }

      v10 = v28;
      a2 = v22;
    }

    while (v28);
  }
}

double *std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(double *result, double *a2, double *a3)
{
  if (result == a2)
  {
    return result;
  }

  *a3 = *result;
  v3 = result + 2;
  if (result + 2 == a2)
  {
    return result;
  }

  v4 = 0;
  v5 = a3;
  v6 = a3;
  do
  {
    v7 = v3;
    v8 = *v6;
    v6 += 2;
    v9 = v8;
    if (*v3 >= v8)
    {
      if (v9 < *v3 || (v17 = *(result + 6), v18 = *(v5 + 2), v17 >= v18) && (v18 < v17 || *(result + 7) >= *(v5 + 3)))
      {
        *v6 = *v7;
        goto LABEL_23;
      }
    }

    *v6 = *v5;
    v10 = a3;
    if (v5 == a3)
    {
      goto LABEL_22;
    }

    v11 = v4;
    while (1)
    {
      v12 = *(a3 + v11 - 16);
      if (*v7 < v12)
      {
        v13 = *(a3 + v11 - 8);
        goto LABEL_13;
      }

      if (v12 < *v7)
      {
        goto LABEL_21;
      }

      v14 = *(result + 6);
      v13 = *(a3 + v11 - 8);
      if (v14 >= v13)
      {
        break;
      }

LABEL_13:
      v5 -= 2;
      v15 = a3 + v11;
      *v15 = v12;
      v16 = *(a3 + v11 - 4);
      *(v15 + 2) = v13;
      *(v15 + 3) = v16;
      v11 -= 16;
      if (!v11)
      {
        v10 = a3;
        goto LABEL_22;
      }
    }

    if (v13 >= v14)
    {
      v10 = (a3 + v11);
      if (*(result + 7) >= *(a3 + v11 - 4))
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

LABEL_21:
    v10 = v5;
LABEL_22:
    *v10 = *v7;
    *(v10 + 2) = *(result + 6);
    *(v10 + 3) = *(result + 7);
LABEL_23:
    v3 = v7 + 2;
    v4 += 16;
    v5 = v6;
    result = v7;
  }

  while (v7 + 2 != a2);
  return result;
}

double std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 a6)
{
  while (a1 != a2)
  {
    if (a3 == a4)
    {
      while (a1 != a2)
      {
        v11 = *a1++;
        a6.n128_u64[0] = v11.n128_u64[0];
        *a5++ = v11;
      }

      return a6.n128_f64[0];
    }

    if (a3->n128_f64[0] < a1->n128_f64[0] || a1->n128_f64[0] >= a3->n128_f64[0] && ((v8 = a3->n128_i32[2], v9 = a1->n128_i32[2], v8 < v9) || v9 >= v8 && a3->n128_u32[3] < a1->n128_u32[3]))
    {
      v6 = *a3++;
      a6 = v6;
    }

    else
    {
      v7 = *a1++;
      a6 = v7;
    }

    *a5++ = a6;
  }

  while (a3 != a4)
  {
    v10 = *a3++;
    a6.n128_u64[0] = v10.n128_u64[0];
    *a5++ = v10;
  }

  return a6.n128_f64[0];
}

double std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6 <= a7)
  {
    v14 = a8;
    if (a1 != a2)
    {
      v14 = a8;
      v15 = a1;
      do
      {
        v16 = *v15++;
        a4 = *&v16;
        *v14++ = v16;
      }

      while (v15 != a2);
    }

    return std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,std::pair<int,int>> *,std::pair<double,std::pair<int,int>> *,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(a8, v14, a2, a3, a1, a4);
  }

  else
  {
    v10 = a8;
    if (a2 != a3)
    {
      v10 = a8;
      v11 = a2;
      do
      {
        v12 = *v11++;
        a4 = *&v12;
        *v10++ = v12;
      }

      while (v11 != a3);
    }

    return std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<std::__less<void,void> &>,std::reverse_iterator<std::pair<double,std::pair<int,int>> *>,std::reverse_iterator<std::pair<double,std::pair<int,int>> *>,std::reverse_iterator<std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>,std::reverse_iterator<std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>,std::reverse_iterator<std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>>(a4, v10, v10, a8, a8, a2, a2, a1, a1, a3, a3);
  }
}

uint64_t std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>,std::pair<double,std::pair<int,int>>,std::__identity>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != result)
  {
    v3 = (a2 - result) >> 4;
    v4 = *a3;
    v5 = *(a3 + 8);
    do
    {
      v6 = v3 >> 1;
      v7 = result + 16 * (v3 >> 1);
      if (v4 >= *v7)
      {
        if (*v7 < v4 || (v8 = *(v7 + 8), v5 >= v8) && (v8 < v5 || *(a3 + 12) >= *(v7 + 12)))
        {
          result = v7 + 16;
          v6 = v3 + ~v6;
        }
      }

      v3 = v6;
    }

    while (v6);
  }

  return result;
}

double std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,std::pair<int,int>> *,std::pair<double,std::pair<int,int>> *,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double result)
{
  while (a1 != a2)
  {
    if (a3 == a4)
    {
      v9 = 0;
      do
      {
        v10 = a5 + v9;
        v11 = a1 + v9;
        result = *(a1 + v9);
        *v10 = result;
        *(v10 + 8) = *(a1 + v9 + 8);
        *(v10 + 12) = *(a1 + v9 + 12);
        v9 += 16;
      }

      while (v11 + 16 != a2);
      return result;
    }

    result = *a3;
    v6 = *a1;
    if (*a3 < *a1)
    {
      v7 = *(a3 + 8);
LABEL_5:
      *a5 = result;
      *(a5 + 8) = v7;
      *(a5 + 12) = *(a3 + 12);
      a3 += 16;
      goto LABEL_9;
    }

    if (v6 >= result)
    {
      v7 = *(a3 + 8);
      v8 = *(a1 + 8);
      if (v7 < v8 || v8 >= v7 && *(a3 + 12) < *(a1 + 12))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v8 = *(a1 + 8);
    }

    *a5 = v6;
    *(a5 + 8) = v8;
    *(a5 + 12) = *(a1 + 12);
    a1 += 16;
LABEL_9:
    a5 += 16;
  }

  return result;
}

double std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<std::__less<void,void> &>,std::reverse_iterator<std::pair<double,std::pair<int,int>> *>,std::reverse_iterator<std::pair<double,std::pair<int,int>> *>,std::reverse_iterator<std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>,std::reverse_iterator<std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>,std::reverse_iterator<std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>>(double result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a3 == a5)
  {
    return result;
  }

  v11 = (a11 - 8);
  while (a7 != a9)
  {
    v12 = *(a7 - 16);
    result = *(a3 - 16);
    if (result >= v12)
    {
      if (v12 < result)
      {
        v15 = *(a3 - 8);
LABEL_9:
        v13 = v15;
        v14 = a3;
        a3 -= 16;
        goto LABEL_10;
      }

      v15 = *(a3 - 8);
      v13 = *(a7 - 8);
      if (v15 >= v13 && (v13 < v15 || *(a3 - 4) >= *(a7 - 4)))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v13 = *(a7 - 8);
    }

    result = *(a7 - 16);
    v14 = a7;
    a7 -= 16;
LABEL_10:
    *(v11 - 1) = result;
    *v11 = v13;
    *(v11 + 1) = *(v14 - 4);
    v11 -= 2;
    if (a3 == a5)
    {
      return result;
    }
  }

  for (; a3 != a5; v11 -= 2)
  {
    v16 = *(a3 - 16);
    a3 -= 16;
    result = v16;
    *(v11 - 1) = v16;
    *v11 = *(a3 + 8);
    *(v11 + 1) = *(a3 + 12);
  }

  return result;
}

uint64_t std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>,std::pair<double,std::pair<int,int>>,std::__identity,std::__less<void,void>>(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v3 = *a2;
    v4 = *(a2 + 8);
    do
    {
      v5 = a3 >> 1;
      v6 = result + 16 * (a3 >> 1);
      if (*v6 < v3 || v3 >= *v6 && ((v7 = *(v6 + 8), v7 < v4) || v4 >= v7 && *(v6 + 12) < *(a2 + 12)))
      {
        result = v6 + 16;
        v5 = a3 + ~v5;
      }

      a3 = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<double,std::pair<int,int>> *>>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  *a1 = *a2;
  *a2 = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(a1 + 3);
  *(a1 + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  result = a1 + 2;
  for (i = a2 + 2; i != a3; i += 2)
  {
    if (result == a2)
    {
      a2 = i;
    }

    v8 = *result;
    *result = *i;
    *i = v8;
    v9 = *(result + 2);
    *(result + 2) = *(i + 2);
    *(i + 2) = v9;
    v10 = *(result + 3);
    *(result + 3) = *(i + 3);
    *(i + 3) = v10;
    result += 2;
  }

  if (result != a2)
  {
    v11 = result;
    v12 = a2;
    do
    {
      while (1)
      {
        v13 = *v11;
        *v11 = *v12;
        *v12 = v13;
        v14 = *(v11 + 2);
        *(v11 + 2) = *(v12 + 2);
        *(v12 + 2) = v14;
        v15 = *(v11 + 3);
        *(v11 + 3) = *(v12 + 3);
        *(v12 + 3) = v15;
        v11 += 2;
        v12 += 2;
        if (v12 == a3)
        {
          break;
        }

        if (v11 == a2)
        {
          a2 = v12;
        }
      }

      v12 = a2;
    }

    while (v11 != a2);
  }

  return result;
}

void *std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<long long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t quasar::DeserializedFeatureMatrix::DeserializedFeatureMatrix(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = &unk_1F2D37D58;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a4;
  *(a1 + 20) = a5;
  kaldi::quasar::SparseMatrix<float>::SparseMatrix(a1 + 24, a6);
  kaldi::Matrix<float>::Matrix(a1 + 64, a7);
  kaldi::Matrix<float>::Matrix(a1 + 104, a8);
  return a1;
}

void sub_1B58E4810(_Unwind_Exception *a1)
{
  kaldi::Matrix<float>::~Matrix(v1 + 64);
  std::__tree<int>::destroy(v1 + 40, *(v1 + 48));
  _Unwind_Resume(a1);
}

void quasar::DeserializedFeatureMatrix::~DeserializedFeatureMatrix(quasar::DeserializedFeatureMatrix *this)
{
  *this = &unk_1F2D37D58;
  kaldi::Matrix<float>::~Matrix(this + 104);
  kaldi::Matrix<float>::~Matrix(this + 64);
  std::__tree<int>::destroy(this + 40, *(this + 6));
}

{
  *this = &unk_1F2D37D58;
  kaldi::Matrix<float>::~Matrix(this + 104);
  kaldi::Matrix<float>::~Matrix(this + 64);
  std::__tree<int>::destroy(this + 40, *(this + 6));

  JUMPOUT(0x1B8C85350);
}

void *std::vector<std::pair<std::pair<quasar::PronType,float>,std::string>>::__emplace_back_slow_path<std::pair<quasar::PronType,float>,std::string const&>(uint64_t a1, void *a2, __int128 *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v24 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::pair<quasar::PronType,float>,std::string>>>(a1, v8);
  }

  v9 = (32 * v3);
  v20 = 0;
  v21 = v9;
  v10 = 0;
  v22 = v9;
  v23 = 0;
  *v9 = *a2;
  v11 = (v9 + 1);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v11, *a3, *(a3 + 1));
    v9 = v21;
    v13 = v22;
    v10 = v23;
  }

  else
  {
    v12 = *a3;
    v9[3] = *(a3 + 2);
    *&v11->__r_.__value_.__l.__data_ = v12;
    v13 = v9;
  }

  v14 = v13 + 4;
  v15 = *(a1 + 8) - *a1;
  v16 = v9 - v15;
  memcpy(v9 - v15, *a1, v15);
  v17 = *a1;
  *a1 = v16;
  *(a1 + 8) = v14;
  v18 = *(a1 + 16);
  *(a1 + 16) = v10;
  v22 = v17;
  v23 = v18;
  v20 = v17;
  v21 = v17;
  std::__split_buffer<quasar::IndexRuleLmeWordTagger::Rule>::~__split_buffer(&v20);
  return v14;
}

void sub_1B58E4AC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::IndexRuleLmeWordTagger::Rule>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::pair<quasar::PronType,float>,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,false>(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 5;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, (a2 - 4), v9))
        {
          v22 = *v9;
          *v9 = *(a2 - 8);
          *(a2 - 8) = v22;
          v23 = *(v9 + 4);
          *(v9 + 4) = *(a2 - 7);
          *(a2 - 7) = v23;
          v26 = *(v9 + 8);
          v28 = *(v9 + 24);
          v24 = *(a2 - 3);
          *(v9 + 24) = *(a2 - 1);
          *(v9 + 8) = v24;
          *(a2 - 3) = v26;
          *(a2 - 1) = v28;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,0>(v9, v9 + 32, v9 + 64, (a2 - 4), a3);
      return;
    }

    if (v12 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,0>(v9, v9 + 32, v9 + 64, v9 + 96, (a2 - 4), a3);
      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *>(v9, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *>(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,std::pair<std::pair<quasar::PronType,float>,std::string> *>(v9, a2, a2, a3);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = v9 + 32 * (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,0>(v9 + 32 * (v12 >> 1), v9, (a2 - 4), a3);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,0>(v9, v9 + 32 * (v12 >> 1), (a2 - 4), a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,0>(v9 + 32, v14 - 32, (a2 - 8), a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,0>(v9 + 64, v9 + 32 + 32 * v13, (a2 - 12), a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,0>(v14 - 32, v14, v9 + 32 + 32 * v13, a3);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      v16 = *(v9 + 4);
      *(v9 + 4) = *(v14 + 4);
      *(v14 + 4) = v16;
      v27 = *(v9 + 24);
      v25 = *(v9 + 8);
      v17 = *(v14 + 8);
      *(v9 + 24) = *(v14 + 24);
      *(v9 + 8) = v17;
      *(v14 + 24) = v27;
      *(v14 + 8) = v25;
      if (a5)
      {
        goto LABEL_17;
      }
    }

    if (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, v9 - 32, v9))
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::pair<quasar::PronType,float>,std::string> *,std::__less<void,void> &>(v9, a2, a3);
      goto LABEL_22;
    }

LABEL_17:
    v18 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::pair<quasar::PronType,float>,std::string> *,std::__less<void,void> &>(v9, a2, a3);
    if ((v19 & 1) == 0)
    {
      goto LABEL_20;
    }

    v20 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *>(v9, v18, a3);
    v9 = v18 + 32;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *>(v18 + 32, a2, a3))
    {
      a4 = -v11;
      a2 = v18;
      if (v20)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v20)
    {
LABEL_20:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,false>(a1, v18, a3, -v11, a5 & 1);
      v9 = v18 + 32;
LABEL_22:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,0>(v9, v9 + 32, (a2 - 4), a3);
}

BOOL std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 < *a3)
  {
    return 1;
  }

  if (*a3 < *a2)
  {
    return 0;
  }

  v4 = *(a2 + 4);
  v5 = *(a3 + 4);
  if (v4 < v5)
  {
    return 1;
  }

  if (v5 < v4)
  {
    return 0;
  }

  v8 = *(a3 + 8);
  v6 = a3 + 8;
  v7 = v8;
  v9 = *(v6 + 23);
  v12 = *(a2 + 8);
  v10 = a2 + 8;
  v11 = v12;
  v13 = *(v10 + 23);
  if (v13 >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = *(v10 + 8);
  }

  if (v13 >= 0)
  {
    v15 = v10;
  }

  else
  {
    v15 = v11;
  }

  if (v9 >= 0)
  {
    v16 = *(v6 + 23);
  }

  else
  {
    v16 = *(v6 + 8);
  }

  if (v9 >= 0)
  {
    v17 = v6;
  }

  else
  {
    v17 = v7;
  }

  if (v16 >= v14)
  {
    v18 = v14;
  }

  else
  {
    v18 = v16;
  }

  v19 = memcmp(v15, v17, v18);
  if (v19)
  {
    return v19 < 0;
  }

  else
  {
    return v14 < v16;
  }
}

BOOL std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a4, a2, a1);
  result = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a4, a3, a2);
  if (v8)
  {
    v10 = (a1 + 8);
    v11 = *a1;
    if (result)
    {
      *a1 = *a3;
      *a3 = v11;
      v12 = *(a1 + 4);
      *(a1 + 4) = *(a3 + 4);
      *(a3 + 4) = v12;
      v13 = *(a1 + 24);
      v14 = *v10;
      v15 = *(a3 + 24);
      *v10 = *(a3 + 8);
      *(a1 + 24) = v15;
      *(a3 + 8) = v14;
      *(a3 + 24) = v13;
    }

    else
    {
      *a1 = *a2;
      *a2 = v11;
      v26 = *(a1 + 4);
      *(a1 + 4) = *(a2 + 4);
      *(a2 + 4) = v26;
      v27 = *(a1 + 24);
      v28 = *v10;
      v29 = *(a2 + 24);
      *v10 = *(a2 + 8);
      *(a1 + 24) = v29;
      *(a2 + 8) = v28;
      *(a2 + 24) = v27;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a4, a3, a2))
      {
        v30 = *a2;
        *a2 = *a3;
        *a3 = v30;
        v31 = *(a2 + 4);
        *(a2 + 4) = *(a3 + 4);
        *(a3 + 4) = v31;
        v32 = *(a2 + 24);
        v33 = *(a2 + 8);
        v34 = *(a3 + 24);
        *(a2 + 8) = *(a3 + 8);
        *(a2 + 24) = v34;
        *(a3 + 8) = v33;
        *(a3 + 24) = v32;
      }
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v16 = *a2;
    *a2 = *a3;
    *a3 = v16;
    v17 = *(a2 + 4);
    *(a2 + 4) = *(a3 + 4);
    *(a3 + 4) = v17;
    v18 = *(a2 + 24);
    v19 = *(a2 + 8);
    v20 = *(a3 + 24);
    *(a2 + 8) = *(a3 + 8);
    *(a2 + 24) = v20;
    *(a3 + 8) = v19;
    *(a3 + 24) = v18;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a4, a2, a1))
    {
      v21 = *a1;
      *a1 = *a2;
      *a2 = v21;
      v22 = *(a1 + 4);
      *(a1 + 4) = *(a2 + 4);
      *(a2 + 4) = v22;
      v23 = *(a1 + 24);
      v24 = *(a1 + 8);
      v25 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v25;
      *(a2 + 8) = v24;
      *(a2 + 24) = v23;
    }
  }

  return 1;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,0>(a1, a2, a3, a5);
  if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a5, a4, a3))
  {
    v11 = *a3;
    *a3 = *a4;
    *a4 = v11;
    v12 = *(a3 + 4);
    *(a3 + 4) = *(a4 + 4);
    *(a4 + 4) = v12;
    v13 = *(a3 + 24);
    v14 = *(a3 + 8);
    v15 = *(a4 + 24);
    *(a3 + 8) = *(a4 + 8);
    *(a3 + 24) = v15;
    *(a4 + 8) = v14;
    *(a4 + 24) = v13;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a5, a3, a2))
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *(a2 + 4);
      *(a2 + 4) = *(a3 + 4);
      *(a3 + 4) = v17;
      v18 = *(a2 + 24);
      v19 = *(a2 + 8);
      v20 = *(a3 + 24);
      *(a2 + 8) = *(a3 + 8);
      *(a2 + 24) = v20;
      *(a3 + 8) = v19;
      *(a3 + 24) = v18;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a5, a2, a1))
      {
        v21 = *a1;
        *a1 = *a2;
        *a2 = v21;
        v22 = *(a1 + 4);
        *(a1 + 4) = *(a2 + 4);
        *(a2 + 4) = v22;
        v23 = *(a1 + 24);
        result = *(a1 + 8);
        v24 = *(a2 + 24);
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 24) = v24;
        *(a2 + 8) = result;
        *(a2 + 24) = v23;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,0>(a1, a2, a3, a4, a6);
  if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a6, a5, a4))
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
    v14 = *(a4 + 4);
    *(a4 + 4) = *(a5 + 4);
    *(a5 + 4) = v14;
    v15 = *(a4 + 24);
    v16 = *(a4 + 8);
    v17 = *(a5 + 24);
    *(a4 + 8) = *(a5 + 8);
    *(a4 + 24) = v17;
    *(a5 + 8) = v16;
    *(a5 + 24) = v15;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a6, a4, a3))
    {
      v18 = *a3;
      *a3 = *a4;
      *a4 = v18;
      v19 = *(a3 + 4);
      *(a3 + 4) = *(a4 + 4);
      *(a4 + 4) = v19;
      v20 = *(a3 + 24);
      v21 = *(a3 + 8);
      v22 = *(a4 + 24);
      *(a3 + 8) = *(a4 + 8);
      *(a3 + 24) = v22;
      *(a4 + 8) = v21;
      *(a4 + 24) = v20;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a6, a3, a2))
      {
        v23 = *a2;
        *a2 = *a3;
        *a3 = v23;
        v24 = *(a2 + 4);
        *(a2 + 4) = *(a3 + 4);
        *(a3 + 4) = v24;
        v25 = *(a2 + 24);
        v26 = *(a2 + 8);
        v27 = *(a3 + 24);
        *(a2 + 8) = *(a3 + 8);
        *(a2 + 24) = v27;
        *(a3 + 8) = v26;
        *(a3 + 24) = v25;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a6, a2, a1))
        {
          v28 = *a1;
          *a1 = *a2;
          *a2 = v28;
          v29 = *(a1 + 4);
          *(a1 + 4) = *(a2 + 4);
          *(a2 + 4) = v29;
          v30 = *(a1 + 24);
          result = *(a1 + 8);
          v31 = *(a2 + 24);
          *(a1 + 8) = *(a2 + 8);
          *(a1 + 24) = v31;
          *(a2 + 8) = result;
          *(a2 + 24) = v30;
        }
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 32;
    if ((a1 + 32) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, v5, v8))
        {
          v13 = *v9;
          v14 = *(v8 + 40);
          v15 = *(v8 + 56);
          *(v8 + 40) = 0;
          *(v8 + 48) = 0;
          *(v8 + 56) = 0;
          v10 = v7;
          while (1)
          {
            std::pair<std::pair<quasar::PronType,float>,std::string>::operator=[abi:ne200100](a1 + v10 + 32, a1 + v10);
            if (!v10)
            {
              break;
            }

            v11 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, &v13, a1 + v10 - 32);
            v10 -= 32;
            if (!v11)
            {
              v12 = a1 + v10 + 32;
              goto LABEL_10;
            }
          }

          v12 = a1;
LABEL_10:
          *v12 = v13;
          if (*(v12 + 31) < 0)
          {
            operator delete(*(v12 + 8));
          }

          *(v12 + 8) = v14;
          *(v12 + 24) = v15;
        }

        v5 = (v9 + 4);
        v7 += 32;
        v8 = v9;
      }

      while (v9 + 4 != a2);
    }
  }
}

void sub_1B58E5608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 32;
    if ((a1 + 32) != a2)
    {
      v7 = (a1 + 63);
      do
      {
        v8 = v5;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, v5, v4))
        {
          v12 = *v8;
          v13 = *(v4 + 40);
          v14 = *(v4 + 56);
          *(v4 + 40) = 0;
          *(v4 + 48) = 0;
          *(v4 + 56) = 0;
          v9 = v7;
          do
          {
            std::pair<std::pair<quasar::PronType,float>,std::string>::operator=[abi:ne200100]((v9 - 31), (v9 - 63));
            v10 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, &v12, (v9 - 95));
            v9 -= 32;
          }

          while (v10);
          *(v9 - 31) = v12;
          if (*v9 < 0)
          {
            operator delete(*(v9 - 23));
          }

          v11 = v9 - 23;
          *v11 = v13;
          *(v11 + 2) = v14;
        }

        v5 = (v8 + 4);
        v7 += 32;
        v4 = v8;
      }

      while (v8 + 4 != a2);
    }
  }
}

void sub_1B58E5728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::pair<quasar::PronType,float>,std::string> *,std::__less<void,void> &>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = *(a1 + 24);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, &v17, a2 - 32))
  {
    v6 = a1;
    do
    {
      v6 += 32;
    }

    while (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, &v17, v6));
  }

  else
  {
    v7 = a1 + 32;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, &v17, v7);
      v7 = v6 + 32;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 32;
    }

    while (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, &v17, v4));
  }

  while (v6 < v4)
  {
    v9 = *v6;
    *v6 = *v4;
    *v4 = v9;
    v10 = *(v6 + 4);
    *(v6 + 4) = *(v4 + 4);
    *(v4 + 4) = v10;
    v11 = *(v6 + 8);
    v21 = *(v6 + 24);
    v20 = v11;
    v12 = *(v4 + 8);
    *(v6 + 24) = *(v4 + 24);
    *(v6 + 8) = v12;
    v13 = v20;
    *(v4 + 24) = v21;
    *(v4 + 8) = v13;
    do
    {
      v6 += 32;
    }

    while (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, &v17, v6));
    do
    {
      v4 -= 32;
    }

    while (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, &v17, v4));
  }

  if (v6 - 32 != a1)
  {
    std::pair<std::pair<quasar::PronType,float>,std::string>::operator=[abi:ne200100](a1, v6 - 32);
  }

  *(v6 - 32) = v17;
  v14 = (v6 - 24);
  if (*(v6 - 1) < 0)
  {
    operator delete(*v14);
  }

  v15 = v18;
  *(v6 - 8) = v19;
  *v14 = v15;
  return v6;
}

void sub_1B58E58FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::pair<quasar::PronType,float>,std::string> *,std::__less<void,void> &>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = 0;
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = *(a1 + 24);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  do
  {
    v7 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, a1 + v6 + 32, &v19);
    v6 += 32;
  }

  while (v7);
  v8 = a1 + v6;
  if (v6 == 32)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      a2 -= 32;
    }

    while (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, a2, &v19));
  }

  else
  {
    do
    {
      a2 -= 32;
    }

    while (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, a2, &v19));
  }

  v9 = a1 + v6;
  if (v8 < a2)
  {
    v10 = a2;
    do
    {
      v11 = *v9;
      *v9 = *v10;
      *v10 = v11;
      v12 = *(v9 + 4);
      *(v9 + 4) = *(v10 + 4);
      *(v10 + 4) = v12;
      v13 = *(v9 + 8);
      v23 = *(v9 + 24);
      v22 = v13;
      v14 = *(v10 + 8);
      *(v9 + 24) = *(v10 + 24);
      *(v9 + 8) = v14;
      v15 = v22;
      *(v10 + 24) = v23;
      *(v10 + 8) = v15;
      do
      {
        v9 += 32;
      }

      while (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, v9, &v19));
      do
      {
        v10 -= 32;
      }

      while (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, v10, &v19));
    }

    while (v9 < v10);
  }

  if (v9 - 32 != a1)
  {
    std::pair<std::pair<quasar::PronType,float>,std::string>::operator=[abi:ne200100](a1, v9 - 32);
  }

  *(v9 - 32) = v19;
  v16 = (v9 - 24);
  if (*(v9 - 1) < 0)
  {
    operator delete(*v16);
  }

  v17 = v20;
  *(v9 - 8) = v21;
  *v16 = v17;
  return v9 - 32;
}

void sub_1B58E5AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 5;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, a2 - 32, a1))
        {
          v7 = *a1;
          *a1 = *(a2 - 32);
          *(a2 - 32) = v7;
          v8 = *(a1 + 4);
          *(a1 + 4) = *(a2 - 28);
          *(a2 - 28) = v8;
          v9 = *(a1 + 24);
          v10 = *(a1 + 8);
          v11 = *(a2 - 8);
          *(a1 + 8) = *(a2 - 24);
          *(a1 + 24) = v11;
          *(a2 - 24) = v10;
          *(a2 - 8) = v9;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,0>(a1, a1 + 32, a2 - 32, a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,0>(a1, a1 + 32, a1 + 64, a2 - 32, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,0>(a1, a1 + 32, a1 + 64, a1 + 96, a2 - 32, a3);
      return 1;
  }

LABEL_11:
  v12 = a1 + 64;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,0>(a1, a1 + 32, a1 + 64, a3);
  v13 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, v13, v12))
    {
      v20 = *v13;
      v21 = *(v13 + 8);
      v22 = *(v13 + 24);
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      v16 = v14;
      while (1)
      {
        std::pair<std::pair<quasar::PronType,float>,std::string>::operator=[abi:ne200100](a1 + v16 + 96, a1 + v16 + 64);
        if (v16 == -64)
        {
          break;
        }

        v17 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, &v20, a1 + v16 + 32);
        v16 -= 32;
        if (!v17)
        {
          v18 = a1 + v16 + 96;
          goto LABEL_19;
        }
      }

      v18 = a1;
LABEL_19:
      *v18 = v20;
      if (*(v18 + 31) < 0)
      {
        operator delete(*(v18 + 8));
      }

      *(v18 + 8) = v21;
      *(v18 + 24) = v22;
      if (++v15 == 8)
      {
        return v13 + 32 == a2;
      }
    }

    v12 = v13;
    v14 += 32;
    v13 += 32;
    if (v13 == a2)
    {
      return 1;
    }
  }
}

void sub_1B58E5D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::pair<quasar::PronType,float>,std::string>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  return a1;
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *,std::pair<std::pair<quasar::PronType,float>,std::string> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = a1 + 32 * v9;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *>(a1, a4, v8, v11);
        v11 -= 32;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a4, v12, a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          v14 = *(v12 + 4);
          *(v12 + 4) = *(a1 + 4);
          *(a1 + 4) = v14;
          v15 = *(v12 + 24);
          v16 = *(v12 + 8);
          v17 = *(a1 + 24);
          *(v12 + 8) = *(a1 + 8);
          *(v12 + 24) = v17;
          *(a1 + 8) = v16;
          *(a1 + 24) = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *>(a1, a4, v8, a1);
        }

        v12 += 32;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<std::pair<quasar::PronType,float>,std::string> *>(a1, v6, a4, v8);
        v6 -= 32;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 5)
    {
      v10 = (a4 - a1) >> 4;
      v11 = v10 + 1;
      v12 = a1 + 32 * (v10 + 1);
      v13 = v10 + 2;
      if (v10 + 2 < a3 && std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a2, a1 + 32 * (v10 + 1), v12 + 32))
      {
        v12 += 32;
        v11 = v13;
      }

      if (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a2, v12, v5))
      {
        v17 = *v5;
        v18 = *(v5 + 8);
        v19 = *(v5 + 24);
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        *(v5 + 24) = 0;
        do
        {
          v15 = v12;
          std::pair<std::pair<quasar::PronType,float>,std::string>::operator=[abi:ne200100](v5, v12);
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = a1 + 32 * v16;
          v11 = 2 * v11 + 2;
          if (v11 >= a3)
          {
            v11 = v16;
          }

          else if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a2, a1 + 32 * v16, v12 + 32))
          {
            v12 += 32;
          }

          else
          {
            v11 = v16;
          }

          v5 = v15;
        }

        while (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a2, v12, &v17));
        *v15 = v17;
        if (*(v15 + 31) < 0)
        {
          operator delete(*(v15 + 8));
        }

        result = v18;
        *(v15 + 24) = v19;
        *(v15 + 8) = result;
      }
    }
  }

  return result;
}

void sub_1B58E60A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<std::pair<quasar::PronType,float>,std::string> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = *a1;
    v8 = *(a1 + 4);
    v9 = *(a1 + 8);
    *v14 = *(a1 + 16);
    *&v14[7] = *(a1 + 23);
    v10 = *(a1 + 31);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v11 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *>(a1, a3, a4);
    v12 = v11;
    if (v11 == a2 - 32)
    {
      *v11 = v7;
      *(v11 + 4) = v8;
      if (*(v11 + 31) < 0)
      {
        operator delete(*(v11 + 8));
      }

      *(v12 + 8) = v9;
      *(v12 + 16) = *v14;
      *(v12 + 23) = *&v14[7];
      *(v12 + 31) = v10;
    }

    else
    {
      std::pair<std::pair<quasar::PronType,float>,std::string>::operator=[abi:ne200100](v11, a2 - 32);
      v13 = v12 + 32;
      *(a2 - 32) = v7;
      *(a2 - 28) = v8;
      if (*(a2 - 1) < 0)
      {
        operator delete(*(a2 - 24));
      }

      *(a2 - 24) = v9;
      *(a2 - 16) = *v14;
      *(a2 - 9) = *&v14[7];
      *(a2 - 1) = v10;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *>(a1, v13, a3, (v13 - a1) >> 5);
    }
  }
}

void sub_1B58E6204(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 32 * v6;
    v9 = v8 + 32;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 64;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a2, v8 + 32, v8 + 64))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    std::pair<std::pair<quasar::PronType,float>,std::string>::operator=[abi:ne200100](a1, v9);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::pair<quasar::PronType,float>,std::string> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = a1 + 32 * (v4 >> 1);
    v10 = a2 - 32;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, v9, a2 - 32))
    {
      v13 = *(a2 - 32);
      v14 = *(a2 - 24);
      v15 = *(a2 - 8);
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      do
      {
        v12 = v9;
        std::pair<std::pair<quasar::PronType,float>,std::string>::operator=[abi:ne200100](v10, v9);
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = a1 + 32 * v8;
        v10 = v12;
      }

      while (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::pair<quasar::PronType,float>,std::string>,std::pair<std::pair<quasar::PronType,float>,std::string>>(a3, v9, &v13));
      *v12 = v13;
      if (*(v12 + 31) < 0)
      {
        operator delete(*(v12 + 8));
      }

      result = *&v14;
      *(v12 + 8) = v14;
      *(v12 + 24) = v15;
    }
  }

  return result;
}

void sub_1B58E63C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

void *quasar::ConfidenceReducer::ConfidenceReducer(void *a1, int **a2, uint64_t a3)
{
  *a1 = &unk_1F2D37DE0;
  std::unordered_set<int>::unordered_set<std::__wrap_iter<int const*>>((a1 + 1), *a2, a2[1]);
  a1[6] = a3;
  return a1;
}

float quasar::ConfidenceReducer::operator()(void *a1, void *a2, int a3, int a4)
{
  LODWORD(v5) = a3;
  v8 = (*(*a1 + 32))(a1);
  if ((v5 & 0x80000000) == 0 && a4 <= ((a2[1] - *a2) >> 2))
  {
    if (v5 >= a4)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0;
      v5 = v5;
      do
      {
        v10 = *(*a2 + 4 * v5);
        v15 = *(*a2 + 4 * v5);
        v11 = a1[6];
        v12 = *(v11 + 8);
        v13 = *(v11 + 24);
        if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a1 + 1, &v15))
        {
          v8 = (*(*a1 + 16))(a1, v8, *(v12 + 4 * v13 * v5 + 4 * v10));
          v9 = (v9 + 1);
        }

        ++v5;
      }

      while (v5 < a4);
    }

    return (*(*a1 + 24))(a1, v9, v8);
  }

  return v8;
}

double quasar::ArithmeticMean::average(quasar::ArithmeticMean *this, float a2, int a3)
{
  if (a3 < 1)
  {
    return 0.0;
  }

  v3 = 1000.0;
  v4 = (a2 * 1000.0) / a3;
  if (v4 <= 1000.0)
  {
    v3 = v4;
  }

  if (v4 >= 1.0)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1.0;
  }

  *&result = roundf(v5);
  return result;
}

uint64_t quasar::CTCAlignedDecoder::CTCAlignedDecoder(uint64_t a1, __int128 *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = quasar::Decoder::Decoder(a1, a2);
  *v3 = &unk_1F2D37E18;
  std::string::basic_string[abi:ne200100]<0>((v3 + 456), "▁");
  std::string::basic_string[abi:ne200100]<0>(__p, "<blank>");
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a1 + 480, __p, &v7, 1uLL);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 504) = -1;
  std::string::basic_string[abi:ne200100]<0>((a1 + 512), "increase-by-one");
  *(a1 + 536) = 1;
  *(a1 + 552) = 0;
  *(a1 + 568) = 0;
  *(a1 + 560) = 0;
  *(a1 + 544) = a1 + 552;
  *(a1 + 584) = 0;
  *(a1 + 576) = 0;
  return a1;
}

void sub_1B58E67F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = v15;
  __p = v16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v14 + 479) < 0)
  {
    operator delete(*(v14 + 456));
  }

  quasar::Decoder::~Decoder(v14);
  _Unwind_Resume(a1);
}

uint64_t quasar::CTCAlignedDecoder::getLabelMapper@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  a2[3] = 0;
  v2 = *(a1 + 23);
  if ((v2 & 0x80) != 0)
  {
    if (*(a1 + 8) != 8 || **a1 != 0x797469746E656469)
    {
      if (*(a1 + 8) != 15 || (**a1 == 0x6573616572636564 ? (v5 = *(*a1 + 7) == 0x656E6F2D79622D65) : (v5 = 0), !v5))
      {
        if (*(a1 + 8) != 15)
        {
          goto LABEL_29;
        }

        v4 = *a1;
        goto LABEL_19;
      }

LABEL_27:
      v9 = &unk_1F2D37FE8;
      goto LABEL_28;
    }

LABEL_26:
    v9 = &unk_1F2D37F68;
    goto LABEL_28;
  }

  if (v2 == 8)
  {
    if (*a1 != 0x797469746E656469)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  if (v2 != 15)
  {
    goto LABEL_29;
  }

  v3 = *a1 == 0x6573616572636564 && *(a1 + 7) == 0x656E6F2D79622D65;
  v4 = a1;
  if (v3)
  {
    goto LABEL_27;
  }

LABEL_19:
  v6 = *v4;
  v7 = *(v4 + 7);
  if (v6 != 0x6573616572636E69 || v7 != 0x656E6F2D79622D65)
  {
LABEL_29:
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v16);
    v12 = *(a1 + 23);
    if (v12 >= 0)
    {
      v13 = a1;
    }

    else
    {
      v13 = *a1;
    }

    if (v12 >= 0)
    {
      v14 = *(a1 + 23);
    }

    else
    {
      v14 = *(a1 + 8);
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v13, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " is not a valid ilabel mapper", 29);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v16);
  }

  v9 = &unk_1F2D38068;
LABEL_28:
  *&v16 = v9;
  *(&v17 + 1) = &v16;
  std::__function::__value_func<int ()(int)>::swap[abi:ne200100](&v16, a2);
  return std::__function::__value_func<int ()(int)>::~__value_func[abi:ne200100](&v16);
}

void sub_1B58E6AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void quasar::CTCAlignedDecoder::registerParams(quasar::CTCAlignedDecoder *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v7, "blank");
  std::string::basic_string[abi:ne200100]<0>(__p, "id of the blank symbol");
  quasar::SystemConfig::Register<int>(a2, v7, this + 504, __p, 0, 268, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "confidence-ignored-wordpieces");
  std::string::basic_string[abi:ne200100]<0>(__p, "wordpieces in this list do not participate in confidence computation");
  quasar::SystemConfig::Register<std::vector<std::string>>(a2, v7, this + 480, __p, 0, 268, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "enable-confidence");
  std::string::basic_string[abi:ne200100]<0>(__p, "(default true) enable CTC-based confidence when set");
  quasar::SystemConfig::Register<BOOL>(a2, v7, this + 536, __p, 0, 268, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "preserve-white-space");
  std::string::basic_string[abi:ne200100]<0>(__p, "Preserve white space from decoder, default is true");
  quasar::SystemConfig::Register<BOOL>(a2, v7, this + 537, __p, 0, 268, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "encoding-is-none");
  std::string::basic_string[abi:ne200100]<0>(__p, "Recognition result has TextEncoding::None if true. The default value is false if any ITN model is present and true otherwise.");
  quasar::SystemConfig::Register<BOOL>(a2, v7, this + 538, __p, 0, 268, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "preserve-cj-tokenization");
  std::string::basic_string[abi:ne200100]<0>(__p, "Preserve Chinese/Japanese tokenization from decoder. The default value is true if the datapack language string is known to be Chinese/Japanese.");
  quasar::SystemConfig::Register<BOOL>(a2, v7, this + 539, __p, 0, 268, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "non-displayable-syms-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "File containing a list of non-displayable symbols.");
  quasar::SystemConfig::Register<std::string>(a2, v7, this + 568, __p, 0, 268, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  quasar::QuasarTextProc::qsrItnExists(a2, v4);
}

void sub_1B58E6E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::CTCAlignedDecoder::readNonDisplayableSymbols(uint64_t a1, void *a2)
{
  if (*a2)
  {
    if ((*(a1 + 591) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 576))
      {
        return;
      }
    }

    else if (!*(a1 + 591))
    {
      return;
    }

    v29 = 0;
    v4 = kaldi::Input::Input(v28, a1 + 568, &v29);
    v5 = kaldi::Input::Stream(v4);
    if (v29 == 1)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Not expecting binary non-displayable symbols file.", 50);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    v6 = v5;
    __p[0] = 0;
    __p[1] = 0;
    *&v12 = 0;
    v7 = MEMORY[0x1E69E5318];
    while (1)
    {
      std::ios_base::getloc((v6 + *(*v6 - 24)));
      v8 = std::locale::use_facet(&v30, v7);
      v9 = (v8->__vftable[2].~facet_0)(v8, 10);
      std::locale::~locale(&v30);
      v10 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6, __p, v9);
      if ((*(v10 + *(*v10 - 24) + 32) & 5) != 0)
      {
        break;
      }

      LODWORD(v30.__locale_) = (*(**a2 + 96))(*a2, __p);
      if (LODWORD(v30.__locale_) != -1)
      {
        std::__tree<int>::__emplace_unique_key_args<int,int const&>(a1 + 544, &v30);
      }
    }

    if (SBYTE7(v12) < 0)
    {
      operator delete(__p[0]);
    }

    kaldi::Input::~Input(v28);
  }
}

void sub_1B58E7C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, std::locale a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (*(v71 - 137) < 0)
  {
    operator delete(a71);
  }

  if (*(v71 - 113) < 0)
  {
    operator delete(*(v71 - 136));
  }

  if (*(v71 - 185) < 0)
  {
    operator delete(a65);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  if (a70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a70);
  }

  _Unwind_Resume(a1);
}

void quasar::CTCAlignedDecoder::forcedAlignCTC(char **a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, const void **a4@<X8>)
{
  v84[0] = a2;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v4 = a1[1] - *a1;
  if (v4)
  {
    v83 = 2139095040;
    v55 = v4 >> 1;
    v54 = (v4 >> 1) & 0xFFFFFFFE;
    v7 = v54 + 3;
    std::vector<float>::vector[abi:ne200100](v82, v7);
    std::vector<float>::vector[abi:ne200100](&v80, v7);
    std::vector<int>::vector[abi:ne200100](v79, 1uLL);
    LODWORD(__p[0]) = 0;
    std::vector<float>::vector[abi:ne200100](&v76, 1uLL);
    v8 = *a1;
    if (a1[1] != *a1)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        std::vector<int>::push_back[abi:ne200100](v79, &v8[v9]);
        std::vector<int>::push_back[abi:ne200100](v79, v84);
        if (v9)
        {
          if (*&(*a1)[v9] == *&(*a1)[v9 - 4])
          {
            v11 = INFINITY;
          }

          else
          {
            v11 = 0.0;
          }
        }

        else
        {
          v11 = 0.0;
        }

        v13 = v77;
        v12 = v78;
        if (v77 >= v78)
        {
          v15 = v76;
          v16 = v77 - v76;
          v17 = (v77 - v76) >> 2;
          v18 = v17 + 1;
          if ((v17 + 1) >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if ((v78 - v76) >> 1 > v18)
          {
            v18 = (v78 - v76) >> 1;
          }

          if (v78 - v76 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v18 = 0x3FFFFFFFFFFFFFFFLL;
          }

          if (v18)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v76, v18);
          }

          v12 = 0;
          *(4 * v17) = v11;
          v14 = (4 * v17 + 4);
          memcpy(0, v15, v16);
          v19 = v76;
          v76 = 0;
          v77 = v14;
          v78 = 0;
          if (v19)
          {
            operator delete(v19);
            v12 = v78;
          }
        }

        else
        {
          *v77 = v11;
          v14 = (v13 + 1);
        }

        v77 = v14;
        if (v14 >= v12)
        {
          v21 = v76;
          v22 = v14 - v76;
          v23 = (v14 - v76) >> 2;
          v24 = v23 + 1;
          if ((v23 + 1) >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if ((v12 - v76) >> 1 > v24)
          {
            v24 = (v12 - v76) >> 1;
          }

          if (v12 - v76 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v24 = 0x3FFFFFFFFFFFFFFFLL;
          }

          if (v24)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v76, v24);
          }

          v25 = (v14 - v76) >> 2;
          v26 = (4 * v23);
          v27 = (4 * v23 - 4 * v25);
          *v26 = v83;
          v20 = (v26 + 1);
          memcpy(v27, v21, v22);
          v28 = v76;
          v76 = v27;
          v77 = v20;
          v78 = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v14 = v83;
          v20 = (v14 + 1);
        }

        v77 = v20;
        ++v10;
        v8 = *a1;
        v9 += 4;
      }

      while (v10 < (a1[1] - *a1) >> 2);
    }

    v29 = *(a3 + 20);
    v74 = 0;
    std::vector<int>::vector[abi:ne200100](__p, v55 | 1);
    std::vector<std::vector<int>>::vector[abi:ne200100](v75, v29);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    LODWORD(v30) = *(a3 + 20);
    if (v30 >= 1)
    {
      v31 = 0;
      do
      {
        if (v31)
        {
          v32 = v80;
          if ((v55 & 0x80000000) == 0)
          {
            v33 = 0;
            v34 = (v75[0] + 24 * v31);
            v35 = v76;
            v36 = v79[0];
            v37 = *(a3 + 8);
            v38 = v80 + 8;
            v39 = v82[0] + 4;
            do
            {
              v40 = *&v39[v33 + 4];
              *(v38 + v33) = v40;
              v41 = *&v39[v33];
              if (v41 < v40)
              {
                *(v38 + v33) = v41;
                *(*v34 + v33) = 1;
                v40 = v41;
              }

              v42 = *&v39[v33 - 4];
              if (v42 <= *&v35[v33])
              {
                v42 = *&v35[v33];
              }

              if (v42 < v40)
              {
                *(v38 + v33) = v42;
                *(*v34 + v33) = 2;
                v40 = v42;
              }

              *(v38 + v33) = v40 - *(v37 + 4 * *(a3 + 24) * v31 + 4 * *&v36[v33]);
              v33 += 4;
            }

            while (4 * (v54 & ~(v54 >> 31)) + 4 != v33);
          }
        }

        else
        {
          v43 = *(a3 + 8);
          v32 = v80;
          *(v80 + 8) = -*(v43 + 4 * v84[0]);
          *(v32 + 12) = -*(v43 + 4 * **a1);
        }

        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v82, v32, *(&v80 + 1), (*(&v80 + 1) - v32) >> 2);
        std::vector<float>::vector[abi:ne200100](__p, v7);
        if (v80)
        {
          *(&v80 + 1) = v80;
          operator delete(v80);
        }

        v80 = *__p;
        v81 = v58;
        ++v31;
        v30 = *(a3 + 20);
      }

      while (v31 < v30);
    }

    if (quasar::gLogLevel <= 3)
    {
      v44 = v54;
    }

    else
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "cost of best path in CTC forced alignment: ", 43);
      std::ostream::operator<<();
      v44 = v54;
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
      LODWORD(v30) = *(a3 + 20);
    }

    if (v30 >= 1)
    {
      v45 = 0;
      v46 = v54 - (*(v82[0] + v44 + 2) >= *(v82[0] + (v55 | 1)));
      v47 = -1;
      do
      {
        std::vector<int>::push_back[abi:ne200100](a4, v79[0] + v46);
        v46 -= *(*(v75[0] + 24 * (v30 + v47)) + 4 * v46);
        ++v45;
        LODWORD(v30) = *(a3 + 20);
        --v47;
      }

      while (v45 < v30);
    }

    v49 = *a4;
    v48 = a4[1];
    if (*a4 != v48)
    {
      v50 = v48 - 4;
      if (v50 > v49)
      {
        v51 = v49 + 4;
        do
        {
          v52 = *(v51 - 1);
          *(v51 - 1) = *v50;
          *v50 = v52;
          v50 -= 4;
          v53 = v51 >= v50;
          v51 += 4;
        }

        while (!v53);
      }
    }

    __p[0] = v75;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](__p);
    if (v76)
    {
      v77 = v76;
      operator delete(v76);
    }

    if (v79[0])
    {
      v79[1] = v79[0];
      operator delete(v79[0]);
    }

    if (v80)
    {
      *(&v80 + 1) = v80;
      operator delete(v80);
    }

    if (v82[0])
    {
      v82[1] = v82[0];
      operator delete(v82[0]);
    }
  }
}

void sub_1B58E8328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  __p = (v14 - 232);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v16 = *(v14 - 208);
  if (v16)
  {
    *(v14 - 200) = v16;
    operator delete(v16);
  }

  v17 = *(v14 - 184);
  if (v17)
  {
    *(v14 - 176) = v17;
    operator delete(v17);
  }

  v18 = *(v14 - 160);
  if (v18)
  {
    *(v14 - 152) = v18;
    operator delete(v18);
  }

  v19 = *(v14 - 136);
  if (v19)
  {
    *(v14 - 128) = v19;
    operator delete(v19);
  }

  v20 = *a12;
  if (*a12)
  {
    *(a12 + 8) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::CTCAlignedDecoder::compactLatticeToString(uint64_t a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5);
  kaldi::WriteCompactLattice(&v6, 0, a2);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x1E69E54D8];
  v3 = *(MEMORY[0x1E69E54D8] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v6 = v3;
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v10);
}

void sub_1B58E8594(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t quasar::CTCAlignedDecoder::latticeToString(uint64_t a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5);
  kaldi::WriteLattice(&v6, 0, a2);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x1E69E54D8];
  v3 = *(MEMORY[0x1E69E54D8] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v6 = v3;
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v10);
}

void sub_1B58E8738(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void quasar::ArithmeticMean::~ArithmeticMean(quasar::ArithmeticMean *this)
{
  *this = &unk_1F2D37DE0;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 8);
}

{
  *this = &unk_1F2D37DE0;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 8);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__function::__func<quasar::CTCAlignedDecoder::getLabelMapper(std::string const&)::$_0,std::allocator<quasar::CTCAlignedDecoder::getLabelMapper(std::string const&)::$_0>,int ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<int ()(int)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1B58E8B38(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<quasar::CTCAlignedDecoder::getLabelMapper(std::string const&)::$_1,std::allocator<quasar::CTCAlignedDecoder::getLabelMapper(std::string const&)::$_1>,int ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::CTCAlignedDecoder::getLabelMapper(std::string const&)::$_2,std::allocator<quasar::CTCAlignedDecoder::getLabelMapper(std::string const&)::$_2>,int ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<std::vector<quasar::Token>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D380E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::vector<quasar::Token>::__emplace_back_slow_path<std::string &,int,int,int,float,BOOL,BOOL &>(uint64_t a1, uint64_t a2, int *a3, int *a4, int *a5, float *a6, std::string::value_type *a7, std::string::value_type *a8)
{
  v8 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 5);
  v9 = v8 + 1;
  if ((v8 + 1) > 0x124924924924924)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5) > v9)
  {
    v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 5)) >= 0x92492492492492)
  {
    v12 = 0x124924924924924;
  }

  else
  {
    v12 = v9;
  }

  v22 = a1;
  if (v12)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(a1, v12);
  }

  v19 = 0;
  v20 = 224 * v8;
  std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string &,int,int,int,float,BOOL,BOOL &>(a1, (224 * v8), a2, a3, a4, a5, a6, a7, a8);
  v21 = (224 * v8 + 224);
  v13 = *(a1 + 8);
  v14 = 224 * v8 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Token>,quasar::Token*>(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = *(a1 + 16);
  v18 = v21;
  *(a1 + 8) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  std::__split_buffer<quasar::Token>::~__split_buffer(&v19);
  return v18;
}

void sub_1B58E8F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__split_buffer<quasar::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string &,int,int,int,float,BOOL,BOOL &>(uint64_t a1, std::string *a2, uint64_t a3, int *a4, int *a5, int *a6, float *a7, std::string::value_type *a8, std::string::value_type *a9)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *a3, *(a3 + 8));
  }

  else
  {
    v28 = *a3;
  }

  v15 = *a4;
  v16 = *a5;
  v17 = *a6;
  v18 = *a7;
  v19 = *a8;
  v20 = *a9;
  std::string::basic_string[abi:ne200100]<0>(v26, "");
  std::string::basic_string[abi:ne200100]<0>(v24, "");
  memset(v23, 0, sizeof(v23));
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  quasar::Token::Token(a2, &v28, v15, v16, v17, v19, v20, v26, v18, v24, v23, 0, __p, 0, 0, 0);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v23;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

void sub_1B58E90AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  __p = &a21;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  _Unwind_Resume(a1);
}

void quasar::OnlineLatticeConfidenceDecoder::registerParams(quasar::QsrTextSymbolTable **this, const void **a2)
{
  kaldi::WordBoundaryInfoNewOpts::Register((this + 59), a2);
  quasar::QsrTextSymbolTable::Register(this[57], a2, 16, 1, 0x7FFFFFFF, 0x7FFFFFFF);
  std::string::basic_string[abi:ne200100]<0>(v6, "word-boundary-int-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Word boundary file with format <integer-phone-id> [begin|end|singleton|internal|nonword]");
  quasar::SystemConfig::Register<std::string>(a2, v6, (this + 84), __p, 1, 12, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "unpronounced-word-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "File containing newline-separated list of words with no pronunciation.");
  quasar::SystemConfig::Register<std::string>(a2, v6, (this + 87), __p, 0, 20, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-expand");
  std::string::basic_string[abi:ne200100]<0>(__p, "If >0, the max amount by which lattices will be expanded.");
  quasar::SystemConfig::Register<float>(a2, v6, (this + 90), __p, 0, 12, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-slot-depth");
  std::string::basic_string[abi:ne200100]<0>(__p, "If >0, the max number of words to allow in each slot of the confusion network.");
  quasar::SystemConfig::Register<int>(a2, v6, this + 732, __p, 0, 12, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "confidence-model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename for confidence model file, format <FEATURE> <WEIGHT> (one per line)");
  quasar::SystemConfig::Register<std::string>(a2, v6, (this + 67), __p, 0, 12, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "alt-confidence-model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename for confidence model file, format <FEATURE> <WEIGHT> (one per line)");
  quasar::SystemConfig::Register<std::string>(a2, v6, (this + 70), __p, 0, 12, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "eps-confidence-model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename for epsilon confidence model file, format <FEATURE> <WEIGHT> (one per line)");
  quasar::SystemConfig::Register<std::string>(a2, v6, (this + 73), __p, 0, 12, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "scale-low");
  std::string::basic_string[abi:ne200100]<0>(__p, "Acoustic scaling factor (divisor) for low-end, eg, 2 (for a standard divisor of 12 = 0.08333)");
  quasar::SystemConfig::Register<float>(a2, v6, this + 516, __p, 0, 12, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "scale-high");
  std::string::basic_string[abi:ne200100]<0>(__p, "Acoustic scaling factor (divisor) for high-end, eg, 20 (for a standard divisor of 12 = 0.08333)");
  quasar::SystemConfig::Register<float>(a2, v6, (this + 65), __p, 0, 12, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "acoustic-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Scaling factor for acoustic likelihoods, default 0.08333");
  quasar::SystemConfig::Register<float>(a2, v6, (this + 63), __p, 0, 12, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "do-acoustic-stability");
  std::string::basic_string[abi:ne200100]<0>(__p, "Turn computation of acoustic stability features (at multiple acoustic scales) on/off with true(default)/false.");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 662, __p, 0, 12, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "do-process-alternatives");
  std::string::basic_string[abi:ne200100]<0>(__p, "Control whether or not to process alternatives in the sausage network, or run in 1-Best mode, using true(default)/false.");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 658, __p, 0, 12, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "do-process-sausage");
  std::string::basic_string[abi:ne200100]<0>(__p, "Turn computation of features derived from the structure of the sausage network on/off with true(default)/false.");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 661, __p, 0, 12, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "do-process-rank");
  std::string::basic_string[abi:ne200100]<0>(__p, "Turn computation of rank-based features (at multiple acoustic scales) on/off with true(default)/false.");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 660, __p, 0, 12, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "do-process-faninout");
  std::string::basic_string[abi:ne200100]<0>(__p, "Turn computation of contextual posterior features related to fan-in and fan-out context on/off with true(default)/false.");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 659, __p, 0, 12, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "do-process-post");
  std::string::basic_string[abi:ne200100]<0>(__p, "Turn computation of lattice state posteriors (used for time-based-posterior and other measures) on/off with true(default)/false.");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 663, __p, 0, 12, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "do-use-confmodel");
  std::string::basic_string[abi:ne200100]<0>(__p, "Turn computation of confidence score from the model off, effectively generating the time-based posterior as the confidence score,turn on/off with true(default)/false.");
  quasar::SystemConfig::Register<BOOL>(a2, v6, (this + 82), __p, 0, 12, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "do-add-epsilon");
  std::string::basic_string[abi:ne200100]<0>(__p, "Turn computation of epsilon confidence score on, this will use the supplied epsilon confidence model parameters score,turn on/off with true(default)/false.");
  quasar::SystemConfig::Register<BOOL>(a2, v6, (this + 83), __p, 0, 12, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "decode-mbr");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, do Minimum Bayes Risk decoding (else, Maximum a Posteriori)");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 657, __p, 0, 12, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "nbest-size");
  std::string::basic_string[abi:ne200100]<0>(__p, "number of NBest hypotheses to produce hypotheses (with confidence) for.");
  quasar::SystemConfig::Register<int>(a2, v6, (this + 91), __p, 0, 12, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "lattice-beam");
  std::string::basic_string[abi:ne200100]<0>(__p, "Prune incoming lattice to this beam");
  quasar::SystemConfig::Register<float>(a2, v6, this + 724, __p, 0, 116, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B58E9A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineLatticeConfidenceDecoder::finishInit(quasar::OnlineLatticeConfidenceDecoder *this)
{
  quasar::result_handler::Range::Range(v12, 16, 1);
  if (quasar::SystemConfig::Version::operator>(this + 8, v12))
  {
    quasar::QsrTextSymbolTable::init(*(this + 57), (this + 32), 0, *(this + 449), 1);
    v2 = quasar::QsrTextSymbolTable::Find(*(this + 57), "<?>");
    if (v2 != -1)
    {
      v3 = v2;
      v4 = *(this + 118);
      if (v4 && v2 != v4 && quasar::gLogLevel >= 5)
      {
        memset(v12, 0, sizeof(v12));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
        v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Silence label is set to ", 24);
        v6 = MEMORY[0x1B8C84C00](v5, *(this + 118));
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " but does not match the auto-determined silence label ", 54);
        v8 = MEMORY[0x1B8C84C60](v7, v3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ". Will use latter.", 18);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v12);
      }

      *(this + 118) = v3;
    }
  }

  v9 = *(this + 695);
  if (v9 < 0)
  {
    v9 = *(this + 85);
  }

  if (v9)
  {
    quasar::ModelLoader::readWordBoundaryInfo(*(this + 47), this + 118, this + 672, this + 696, v12);
    v10 = v12[0];
    v12[0] = 0uLL;
    v11 = *(this + 62);
    *(this + 488) = v10;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      if (*(&v12[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12[0] + 1));
      }
    }
  }

  std::allocate_shared[abi:ne200100]<kaldi::quasar::WordConf,std::allocator<kaldi::quasar::WordConf>,std::string &,0>();
}

uint64_t quasar::OnlineLatticeConfidenceDecoder::runImpl(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((*(**(*a3 + 168) + 24))(*(*a3 + 168)) != -1)
  {
    v19[24] = 1;
    kaldi::Timer::Reset(v19, v5);
    v20 = 0;
    v6 = *(a1 + 724);
    if (v6 > 0.0)
    {
      kaldi::PruneLattice<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>(*(*a3 + 168), v6);
    }

    v7 = *a3;
    v8 = *(*a3 + 168);
    v9 = *(*a3 + 176);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v7 = *a3;
    }

    if (*(v7 + 161))
    {
      kaldi::TopSortCompactLatticeIfNeeded(v8);
      v10 = *(a1 + 504);
      if (v10 == 1.0)
      {
        v10 = *(*a3 + 520);
        *(a1 + 504) = v10;
      }

      v16 = vmulq_n_f64(xmmword_1B5B2ECD0, (1.0 / v10));
      __asm { FMOV            V1.2D, #1.0 }

      *(a1 + 508) = vcvt_f32_f64(vdivq_f64(_Q1, v16));
      LODWORD(v16.f64[0]) = *(a1 + 516);
      if (*v16.f64 > 0.0)
      {
        HIDWORD(v16.f64[0]) = *(a1 + 520);
        __asm { FMOV            V1.2S, #1.0 }

        *(a1 + 508) = vdiv_f32(_D1, *&v16.f64[0]);
      }

      std::allocate_shared[abi:ne200100]<fst::SymbolTable,std::allocator<fst::SymbolTable>,char const(&)[15],0>();
    }

    _ZNSt3__115allocate_sharedB8ne200100IN3fst9VectorFstINS1_6ArcTplINS1_23CompactLatticeWeightTplINS1_16LatticeWeightTplIfEEiEEiEENS1_11VectorStateIS8_NS_9allocatorIS8_EEEEEENSA_ISD_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  return 2;
}

void sub_1B58EB584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a37);
  if (STACK[0x2E0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2E0]);
  }

  if (STACK[0x2F0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2F0]);
  }

  if (STACK[0x300])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x300]);
  }

  if (STACK[0x310])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x310]);
  }

  a37 = &STACK[0x318];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a37);
  v38 = STACK[0x330];
  if (STACK[0x330])
  {
    STACK[0x338] = v38;
    operator delete(v38);
  }

  v39 = STACK[0x348];
  if (STACK[0x348])
  {
    STACK[0x350] = v39;
    operator delete(v39);
  }

  v40 = STACK[0x360];
  if (STACK[0x360])
  {
    STACK[0x368] = v40;
    operator delete(v40);
  }

  a37 = &STACK[0x378];
  std::vector<std::vector<kaldi::quasar::WordConf>>::__destroy_vector::operator()[abi:ne200100](&a37);
  std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>>>::~__hash_table(&STACK[0x390]);
  a37 = &STACK[0x3C0];
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a37);
  a37 = &STACK[0x3D8];
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a37);
  a37 = &STACK[0x3F0];
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a37);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(&STACK[0x408]);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(&STACK[0x418]);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(&STACK[0x428]);
  if (STACK[0x448])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x448]);
  }

  if (STACK[0x458])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x458]);
  }

  if (STACK[0x468])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x468]);
  }

  if (STACK[0x478])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x478]);
  }

  if (STACK[0x488])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x488]);
  }

  if (STACK[0x498])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x498]);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&STACK[0x4A0]);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&STACK[0x4D0]);
  std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::~__hash_table(v37 - 208);
  JUMPOUT(0x1B58EB978);
}

void sub_1B58EB64C(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  _Unwind_Resume(a1);
}

void sub_1B58EB65C()
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&STACK[0x2B0]);
  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  JUMPOUT(0x1B58EB848);
}

void sub_1B58EB6F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B58EB718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unint64_t *a37)
{
  if (STACK[0x2E0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  if (STACK[0x2F0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  if (STACK[0x300])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  if (STACK[0x310])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  a37 = &STACK[0x318];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a37);
  v38 = STACK[0x330];
  if (STACK[0x330])
  {
    STACK[0x338] = v38;
    operator delete(v38);
  }

  v39 = STACK[0x348];
  if (STACK[0x348])
  {
    STACK[0x350] = v39;
    operator delete(v39);
  }

  v40 = STACK[0x360];
  if (STACK[0x360])
  {
    STACK[0x368] = v40;
    operator delete(v40);
  }

  a37 = &STACK[0x378];
  std::vector<std::vector<kaldi::quasar::WordConf>>::__destroy_vector::operator()[abi:ne200100](&a37);
  std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>>>::~__hash_table(&STACK[0x390]);
  a37 = &STACK[0x3C0];
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a37);
  a37 = &STACK[0x3D8];
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a37);
  a37 = &STACK[0x3F0];
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a37);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(&STACK[0x408]);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(&STACK[0x418]);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(&STACK[0x428]);
  if (STACK[0x448])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  if (STACK[0x458])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  if (STACK[0x468])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  if (STACK[0x478])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  if (STACK[0x488])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  if (STACK[0x498])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&STACK[0x4A0]);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&STACK[0x4D0]);
  std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::~__hash_table(v37 - 208);
  JUMPOUT(0x1B58EB978);
}

void sub_1B58EB738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v37 = STACK[0x260];
  if (STACK[0x260])
  {
    STACK[0x268] = v37;
    operator delete(v37);
  }

  a37 = &STACK[0x280];
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a37);
  a37 = &STACK[0x298];
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a37);
  JUMPOUT(0x1B58EB840);
}

void sub_1B58EB790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    JUMPOUT(0x1B58EB7A0);
  }

  JUMPOUT(0x1B58EB848);
}

void sub_1B58EB7AC()
{
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  JUMPOUT(0x1B58EB810);
}

void quasar::OnlineLatticeConfidenceDecoder::~OnlineLatticeConfidenceDecoder(void **this)
{
  quasar::OnlineLatticeConfidenceDecoder::~OnlineLatticeConfidenceDecoder(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D38138;
  if (*(this + 719) < 0)
  {
    operator delete(this[87]);
  }

  if (*(this + 695) < 0)
  {
    operator delete(this[84]);
  }

  v2 = this[81];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[79];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[77];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 607) < 0)
  {
    operator delete(this[73]);
  }

  if (*(this + 583) < 0)
  {
    operator delete(this[70]);
  }

  if (*(this + 559) < 0)
  {
    operator delete(this[67]);
  }

  v5 = this[62];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = this[58];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  quasar::Decoder::~Decoder(this);
}

void *std::__shared_ptr_emplace<kaldi::quasar::WordConf>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<kaldi::quasar::WordConf>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D38210;
  std::allocator<kaldi::quasar::WordConf>::construct[abi:ne200100]<kaldi::quasar::WordConf,std::string &>(&v4, (a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::quasar::WordConf>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D38210;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<kaldi::quasar::WordConf>::construct[abi:ne200100]<kaldi::quasar::WordConf,std::string &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  kaldi::quasar::WordConf::WordConf(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B58EBC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<fst::SymbolTable>::__shared_ptr_emplace[abi:ne200100]<char const(&)[15],std::allocator<fst::SymbolTable>,0>(void *a1, char *__s)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFF308;
  std::allocator<fst::SymbolTable>::construct[abi:ne200100]<fst::SymbolTable,char const(&)[15]>(&v2, a1 + 3, __s);
}

void sub_1B58EBDBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ScoreTuple>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ScoreTuple>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ScoreTuple>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ScoreTuple>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ScoreTuple>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ScoreTuple>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ScoreTuple>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ScoreTuple>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1B58EC02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B58EC0CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,kaldi::quasar::ScoreTuple>::pair[abi:ne200100]<std::string const&>(std::string *this, __int128 *a2)
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
  LODWORD(this[1].__r_.__value_.__r.__words[1]) = 0;
  return this;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1B58EC39C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *,false>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *,0>(v9, v9 + 16, a2 - 16);
      case 4uLL:
        result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *,0>(v9, v9 + 16, v9 + 32);
        v25 = *(a2 - 16);
        v26 = *(v9 + 32);
        if (v25 >= v26)
        {
          if (v26 < v25)
          {
            return result;
          }

          v28 = *(a2 - 8);
          v27 = *(v9 + 40);
          if (v28 >= v27)
          {
            return result;
          }
        }

        else
        {
          v27 = *(v9 + 40);
          v28 = *(a2 - 8);
        }

        *(v9 + 32) = v25;
        *(a2 - 16) = v26;
        *(v9 + 40) = v28;
        *(a2 - 8) = v27;
        v29 = *(v9 + 32);
        v30 = *(v9 + 16);
        if (v29 >= v30)
        {
          if (v30 < v29)
          {
            return result;
          }

          v32 = *(v9 + 40);
          v31 = *(v9 + 24);
          if (v32 >= v31)
          {
            return result;
          }
        }

        else
        {
          v31 = *(v9 + 24);
          v32 = *(v9 + 40);
        }

        *(v9 + 16) = v29;
        *(v9 + 32) = v30;
        *(v9 + 24) = v32;
        *(v9 + 40) = v31;
        v33 = *v9;
        if (v29 >= *v9)
        {
          if (v33 < v29)
          {
            return result;
          }

          v34 = *(v9 + 8);
          if (v32 >= v34)
          {
            return result;
          }
        }

        else
        {
          v34 = *(v9 + 8);
        }

        *v9 = v29;
        *(v9 + 16) = v33;
        *(v9 + 8) = v32;
        *(v9 + 24) = v34;
        return result;
      case 5uLL:

        return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *,0>(v9, v9 + 16, v9 + 32, v9 + 48, a2 - 16);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *,std::pair<float,unsigned long> *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 16 * (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *,0>(v9 + 16 * (v12 >> 1), v9, a2 - 16);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *,0>(v9, v9 + 16 * (v12 >> 1), a2 - 16);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *,0>(v9 + 16, v14 - 16, a2 - 32);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *,0>(v9 + 32, v9 + 16 + 16 * v13, a2 - 48);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *,0>(v14 - 16, v14, v9 + 16 + 16 * v13);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      v16 = *(v9 + 8);
      *(v9 + 8) = *(v14 + 8);
      *(v14 + 8) = v16;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v17 = *(v9 - 16);
    if (v17 >= *v9 && (*v9 < v17 || *(v9 - 8) >= *(v9 + 8)))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<float,unsigned long> *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_25;
    }

LABEL_20:
    v18 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<float,unsigned long> *,std::__less<void,void> &>(v9, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_23;
    }

    v20 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *>(v9, v18);
    v9 = v18 + 16;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *>(v18 + 16, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v18;
      if (v20)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v20)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *,false>(v8, v18, a3, -v11, a5 & 1);
      v9 = v18 + 16;
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_11;
  }

  v21 = *(a2 - 16);
  v22 = *v9;
  if (v21 < *v9)
  {
    v23 = *(v9 + 8);
    v24 = *(a2 - 8);
LABEL_30:
    *v9 = v21;
    *(a2 - 16) = v22;
    *(v9 + 8) = v24;
    *(a2 - 8) = v23;
    return result;
  }

  if (v22 >= v21)
  {
    v24 = *(a2 - 8);
    v23 = *(v9 + 8);
    if (v24 < v23)
    {
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 < *a1 || v4 >= v3 && *(a2 + 8) < *(a1 + 8))
  {
    v5 = *a3;
    if (*a3 < v3)
    {
      v6 = *(a3 + 8);
LABEL_4:
      *a1 = v5;
      *a3 = v4;
      v7 = *(a1 + 8);
      *(a1 + 8) = v6;
      *(a3 + 8) = v7;
      return 1;
    }

    if (v3 >= v5)
    {
      v6 = *(a3 + 8);
      v16 = *(a2 + 8);
      if (v6 < v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *(a2 + 8);
    }

    *a1 = v3;
    *a2 = v4;
    v17 = *(a1 + 8);
    *(a1 + 8) = v16;
    *(a2 + 8) = v17;
    v18 = *a3;
    if (*a3 >= v4)
    {
      if (v4 < v18)
      {
        return 1;
      }

      v19 = *(a3 + 8);
      if (v19 >= v17)
      {
        return 1;
      }
    }

    else
    {
      v19 = *(a3 + 8);
    }

    *a2 = v18;
    *a3 = v4;
    *(a2 + 8) = v19;
    result = 1;
    *(a3 + 8) = v17;
    return result;
  }

  v9 = *a3;
  if (*a3 < v3)
  {
    v10 = *(a2 + 8);
    v11 = *(a3 + 8);
LABEL_10:
    *a2 = v9;
    *a3 = v3;
    *(a2 + 8) = v11;
    *(a3 + 8) = v10;
    v12 = *a2;
    v13 = *a1;
    if (*a2 < *a1)
    {
      v14 = *(a1 + 8);
      v15 = *(a2 + 8);
LABEL_12:
      *a1 = v12;
      *a2 = v13;
      *(a1 + 8) = v15;
      result = 1;
      *(a2 + 8) = v14;
      return result;
    }

    if (v13 >= v12)
    {
      v15 = *(a2 + 8);
      v14 = *(a1 + 8);
      if (v15 < v14)
      {
        goto LABEL_12;
      }
    }

    return 1;
  }

  if (v3 >= v9)
  {
    v11 = *(a3 + 8);
    v10 = *(a2 + 8);
    if (v11 < v10)
    {
      goto LABEL_10;
    }
  }

  return 0;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 >= *a3)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v14 = *(a4 + 8);
    v13 = *(a3 + 8);
    if (v14 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
  }

  *a3 = v11;
  *a4 = v12;
  *(a3 + 8) = v14;
  *(a4 + 8) = v13;
  v15 = *a3;
  v16 = *a2;
  if (*a3 >= *a2)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v18 >= v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
  }

  *a2 = v15;
  *a3 = v16;
  *(a2 + 8) = v18;
  *(a3 + 8) = v17;
  v19 = *a2;
  v20 = *a1;
  if (*a2 < *a1)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
LABEL_7:
    *a1 = v19;
    *a2 = v20;
    *(a1 + 8) = v22;
    *(a2 + 8) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v22 = *(a2 + 8);
    v21 = *(a1 + 8);
    if (v22 < v21)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a5;
  v24 = *a4;
  if (*a5 >= *a4)
  {
    if (v24 < v23)
    {
      return result;
    }

    v26 = *(a5 + 8);
    v25 = *(a4 + 8);
    if (v26 >= v25)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    v26 = *(a5 + 8);
  }

  *a4 = v23;
  *a5 = v24;
  *(a4 + 8) = v26;
  *(a5 + 8) = v25;
  v27 = *a4;
  v28 = *a3;
  if (*a4 >= *a3)
  {
    if (v28 < v27)
    {
      return result;
    }

    v30 = *(a4 + 8);
    v29 = *(a3 + 8);
    if (v30 >= v29)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
  }

  *a3 = v27;
  *a4 = v28;
  *(a3 + 8) = v30;
  *(a4 + 8) = v29;
  v31 = *a3;
  v32 = *a2;
  if (*a3 >= *a2)
  {
    if (v32 < v31)
    {
      return result;
    }

    v34 = *(a3 + 8);
    v33 = *(a2 + 8);
    if (v34 >= v33)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
  }

  *a2 = v31;
  *a3 = v32;
  *(a2 + 8) = v34;
  *(a3 + 8) = v33;
  v35 = *a2;
  v36 = *a1;
  if (*a2 < *a1)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
LABEL_24:
    *a1 = v35;
    *a2 = v36;
    *(a1 + 8) = v38;
    *(a2 + 8) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v38 = *(a2 + 8);
    v37 = *(a1 + 8);
    if (v38 < v37)
    {
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<float,unsigned long> *>(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v2 = result + 16;
  if (result + 16 == a2)
  {
    return result;
  }

  v3 = 0;
  v4 = result;
  do
  {
    v5 = v4;
    v4 = v2;
    v6 = *(v5 + 16);
    v7 = *v5;
    if (v6 >= *v5)
    {
      if (v7 < v6)
      {
        goto LABEL_19;
      }

      v8 = *(v5 + 24);
      v9 = *(v5 + 8);
      if (v8 >= v9)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = *(v5 + 24);
      v9 = *(v5 + 8);
    }

    *(v5 + 16) = v7;
    *(v4 + 8) = v9;
    v10 = result;
    if (v5 == result)
    {
      goto LABEL_18;
    }

    v11 = v3;
    while (1)
    {
      v12 = *(result + v11 - 16);
      if (v6 >= v12)
      {
        break;
      }

      v13 = *(result + v11 - 8);
LABEL_12:
      v5 -= 16;
      v14 = result + v11;
      *v14 = v12;
      *(v14 + 8) = v13;
      v11 -= 16;
      if (!v11)
      {
        v10 = result;
        goto LABEL_18;
      }
    }

    if (v12 >= v6)
    {
      v10 = result + v11;
      v13 = *(result + v11 - 8);
      if (v8 >= v13)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }

    v10 = v5;
LABEL_18:
    *v10 = v6;
    *(v10 + 8) = v8;
LABEL_19:
    v2 = v4 + 16;
    v3 += 16;
  }

  while (v4 + 16 != a2);
  return result;
}