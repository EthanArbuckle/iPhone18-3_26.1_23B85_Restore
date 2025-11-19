void sub_1B50B7260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](a1 + 112);
  return a1;
}

void quasar::SelectBlock::~SelectBlock(quasar::SelectBlock *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[5];
  *(this + 68) = a2[6];
  v6 = (this + 640);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (*(this + 631) < 0)
  {
    operator delete(*(this + 76));
  }

  v6 = (this + 584);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (*(this + 575) < 0)
  {
    operator delete(*(this + 69));
  }

  v5 = a2[1];
  *this = v5;
  *(this + *(v5 - 24)) = a2[2];
  quasar::SelectBlockOptions::~SelectBlockOptions((this + 8));
}

void std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::TranslationPhraseInternal>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::TranslationPhraseInternal>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 248;
    do
    {
      quasar::MetaInfo::~MetaInfo((v4 + 240));
      if (*(v4 + 239) < 0)
      {
        operator delete(*(v4 + 216));
      }

      v7 = (v4 + 184);
      std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](&v7);
      v7 = (v4 + 160);
      std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&v7);
      v5 = *(v4 + 136);
      if (v5)
      {
        *(v4 + 144) = v5;
        operator delete(v5);
      }

      if (*(v4 + 104) == 1)
      {
        v7 = (v4 + 80);
        std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&v7);
      }

      if (*(v4 + 72) == 1 && *(v4 + 71) < 0)
      {
        operator delete(*(v4 + 48));
      }

      if (*(v4 + 47) < 0)
      {
        operator delete(*(v4 + 24));
      }

      v7 = v4;
      std::vector<quasar::TranslationToken>::__destroy_vector::operator()[abi:ne200100](&v7);
      v6 = v4 - 16;
      v4 -= 264;
    }

    while (v6 != v3);
  }

  a1[1] = v3;
}

void std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::TranslationTokenInternal>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::TranslationTokenInternal>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 4);
      if (v4)
      {
        *(v3 - 3) = v4;
        operator delete(v4);
      }

      if (*(v3 - 41) < 0)
      {
        operator delete(*(v3 - 8));
      }

      v5 = *(v3 - 13);
      if (v5)
      {
        *(v3 - 12) = v5;
        operator delete(v5);
      }

      v6 = v3 - 17;
      if (*(v3 - 113) < 0)
      {
        operator delete(*v6);
      }

      v3 -= 17;
    }

    while (v6 != v2);
  }

  a1[1] = v2;
}

void std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 8;
        std::allocator<quasar::TranslationPhrase::SegmentInfo>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<quasar::TranslationPhrase::SegmentInfo>::destroy[abi:ne200100](uint64_t a1, void *a2)
{
  v3 = a2[5];
  if (v3)
  {
    a2[6] = v3;
    operator delete(v3);
  }

  v4 = a2[2];
  if (v4)
  {
    a2[3] = v4;

    operator delete(v4);
  }
}

void std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 40;
        v7 = (v4 - 24);
        std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::AlternativeSelectionSpan::Alternative>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::AlternativeSelectionSpan::Alternative>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 16);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::vector<quasar::TranslationToken>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 72;
        std::allocator<quasar::TranslationToken>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<quasar::TranslationToken>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    *(a2 + 40) = v3;
    operator delete(v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

void quasar::SelectBlockOptions::~SelectBlockOptions(quasar::SelectBlockOptions *this)
{
  *this = &unk_1F2CFAB70;
  *(this + 47) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 512, *(this + 65));
  if (*(this + 503) < 0)
  {
    operator delete(*(this + 60));
  }

  *(this + 47) = &unk_1F2D08890;
  v2 = *(this + 59);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 455) < 0)
  {
    operator delete(*(this + 54));
  }

  if (*(this + 431) < 0)
  {
    operator delete(*(this + 51));
  }

  if (*(this + 407) < 0)
  {
    operator delete(*(this + 48));
  }

  *(this + 22) = &unk_1F2CFB018;
  std::__tree<std::__value_type<std::string,quasar::PTree>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PTree>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::PTree>>>::destroy(this + 352, *(this + 45));
  quasar::PTree::~PTree((this + 280));
  *(this + 22) = &unk_1F2D08890;
  v3 = *(this + 34);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  *(this + 2) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 152, *(this + 20));
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  *(this + 2) = &unk_1F2D08890;
  v4 = *(this + 14);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

void quasar::OptionValue<std::string>::updateOptionalFromPtree(uint64_t a1, uint64_t a2, const void **a3)
{
  v5 = (a1 + 8);
  quasar::PTree::getOptional<std::string>(&__str, a2, a1 + 8);
  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  v7 = &v14;
  std::string::basic_string[abi:ne200100](&v14, v6 + 1);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v14.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    memmove(v7, v8, v6);
  }

  *(&v7->__r_.__value_.__l.__data_ + v6) = 46;
  v9 = *(a1 + 31);
  if (v9 >= 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = *(a1 + 8);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 31);
  }

  else
  {
    v11 = *(a1 + 16);
  }

  v12 = std::string::append(&v14, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v17 == 1)
  {
    std::string::operator=((a1 + 104), &__str);
    std::string::operator=((a1 + 32), &v15);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v17 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1B50B7DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a28 == 1 && a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::OptionValue<std::string>::debugInfo(uint64_t a1)
{
  v2 = quasar::OptionValue<std::string>::fallback(a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v39);
  v3 = *(a1 + 31);
  if (v3 >= 0)
  {
    v4 = a1 + 8;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 31);
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, v4, v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
  v8 = *(v2 + 127);
  if (v8 >= 0)
  {
    v9 = v2 + 104;
  }

  else
  {
    v9 = *(v2 + 104);
  }

  if (v8 >= 0)
  {
    v10 = *(v2 + 127);
  }

  else
  {
    v10 = *(v2 + 112);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " (", 2);
  v15 = *(v2 + 32);
  v14 = v2 + 32;
  v13 = v15;
  v16 = *(v14 + 23);
  if (v16 >= 0)
  {
    v17 = v14;
  }

  else
  {
    v17 = v13;
  }

  if (v16 >= 0)
  {
    v18 = *(v14 + 23);
  }

  else
  {
    v18 = *(v14 + 8);
  }

  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v17, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ")", 1);
  if (*(a1 + 152))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, " overrides: [", 13);
    v20 = *(a1 + 136);
    v21 = (a1 + 144);
    if (v20 != (a1 + 144))
    {
      do
      {
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "", 1);
        v23 = *(v20 + 55);
        if (v23 >= 0)
        {
          v24 = (v20 + 4);
        }

        else
        {
          v24 = v20[4];
        }

        if (v23 >= 0)
        {
          v25 = *(v20 + 55);
        }

        else
        {
          v25 = v20[5];
        }

        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ": ", 3);
        v28 = *(v20 + 79);
        if (v28 >= 0)
        {
          v29 = (v20 + 7);
        }

        else
        {
          v29 = v20[7];
        }

        if (v28 >= 0)
        {
          v30 = *(v20 + 79);
        }

        else
        {
          v30 = v20[8];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v29, v30);
        v31 = *v21;
        v32 = (a1 + 144);
        if (*v21)
        {
          do
          {
            v33 = v31;
            v31 = v31[1];
          }

          while (v31);
        }

        else
        {
          do
          {
            v33 = v32[2];
            v34 = *v33 == v32;
            v32 = v33;
          }

          while (v34);
        }

        if (v20 != v33)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, ", ", 2);
        }

        v35 = v20[1];
        if (v35)
        {
          do
          {
            v36 = v35;
            v35 = *v35;
          }

          while (v35);
        }

        else
        {
          do
          {
            v36 = v20[2];
            v34 = *v36 == v20;
            v20 = v36;
          }

          while (!v34);
        }

        v20 = v36;
      }

      while (v36 != v21);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "]", 1);
  }

  std::stringbuf::str();
  v39[0] = *MEMORY[0x1E69E54D8];
  v37 = *(MEMORY[0x1E69E54D8] + 72);
  *(v39 + *(v39[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v40 = v37;
  v41 = MEMORY[0x1E69E5548] + 16;
  if (v43 < 0)
  {
    operator delete(v42[7].__locale_);
  }

  v41 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v42);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v44);
}

void sub_1B50B8190(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void quasar::OptionValue<std::string>::addOverride(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a2;
  v8[1] = a3;
  quasar::PTree::getOptional<std::string>(&__p, a4, a1 + 8);
  if (v7 == 1)
  {
    v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string_view>(a1 + 136, v8);
    if (a1 + 144 == v5)
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_impl<std::string_view &,std::string&>();
    }

    std::string::operator=((v5 + 56), &__p);
  }

  if (v7 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B50B8248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::OptionValue<std::string>::fallback(uint64_t a1)
{
  do
  {
    v1 = a1;
    a1 = *(a1 + 128);
    if (!a1)
    {
      break;
    }

    v2 = (v1 + 32);
    v3 = *(v1 + 55);
    if (v3 < 0)
    {
      if (*(v1 + 40) != 9)
      {
        return v1;
      }

      v2 = *v2;
    }

    else if (v3 != 9)
    {
      return v1;
    }

    v4 = *v2;
    v5 = *(v2 + 8);
  }

  while (v4 == 0x746C75616665643CLL && v5 == 62);
  return v1;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C85200](a1 + 128);
  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string_view>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<void>::operator()[abi:ne200100]<std::string const&,std::string_view const&>(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<void>::operator()[abi:ne200100]<std::string_view const&,std::string const&>(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t std::less<void>::operator()[abi:ne200100]<std::string const&,std::string_view const&>(uint64_t a1, const void **a2, uint64_t a3)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = *a3;
  v7 = *(a3 + 8);
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(a3 + 8);
  }

  v9 = memcmp(v4, v6, v8);
  if (v5 < v7)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  if (v5 == v7)
  {
    v10 = 0;
  }

  if (v9)
  {
    v10 = v9;
  }

  return v10 >> 31;
}

uint64_t std::less<void>::operator()[abi:ne200100]<std::string_view const&,std::string const&>(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a3 + 23);
  if (v5 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v5 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v7 >= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  v9 = memcmp(v3, v6, v8);
  if (v4 < v7)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  if (v4 == v7)
  {
    v10 = 0;
  }

  if (v9)
  {
    v10 = v9;
  }

  return v10 >> 31;
}

void sub_1B50B8604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100]<std::string_view &,std::string&,0>(std::string *__dst, uint64_t a2, __int128 *a3)
{
  v3 = *(a2 + 8);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = *a2;
  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&__dst->__r_.__value_.__s + 23) = v3;
  if (v3)
  {
    memmove(__dst, v6, v3);
  }

  __dst->__r_.__value_.__s.__data_[v3] = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(__dst + 1, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    __dst[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&__dst[1].__r_.__value_.__l.__data_ = v8;
  }

  return __dst;
}

void sub_1B50B8774(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B50B8918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a31 == 1)
  {
    quasar::PTree::~PTree(&a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::OptionValue<quasar::PTree>::debugInfo(uint64_t a1)
{
  v2 = quasar::OptionValue<quasar::PTree>::fallback(a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v33);
  v3 = *(a1 + 31);
  if (v3 >= 0)
  {
    v4 = a1 + 8;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 31);
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, v4, v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
  v8 = quasar::operator<<(v7, (v2 + 104));
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " (", 2);
  v12 = *(v2 + 32);
  v11 = v2 + 32;
  v10 = v12;
  v13 = *(v11 + 23);
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 8);
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v14, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ")", 1);
  if (*(a1 + 192))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, " overrides: [", 13);
    v17 = *(a1 + 176);
    v18 = (a1 + 184);
    if (v17 != (a1 + 184))
    {
      do
      {
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "", 1);
        v20 = *(v17 + 55);
        if (v20 >= 0)
        {
          v21 = (v17 + 4);
        }

        else
        {
          v21 = v17[4];
        }

        if (v20 >= 0)
        {
          v22 = *(v17 + 55);
        }

        else
        {
          v22 = v17[5];
        }

        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ": ", 3);
        quasar::operator<<(v24, (v17 + 7));
        v25 = *v18;
        v26 = (a1 + 184);
        if (*v18)
        {
          do
          {
            v27 = v25;
            v25 = v25[1];
          }

          while (v25);
        }

        else
        {
          do
          {
            v27 = v26[2];
            v28 = *v27 == v26;
            v26 = v27;
          }

          while (v28);
        }

        if (v17 != v27)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, ", ", 2);
        }

        v29 = v17[1];
        if (v29)
        {
          do
          {
            v30 = v29;
            v29 = *v29;
          }

          while (v29);
        }

        else
        {
          do
          {
            v30 = v17[2];
            v28 = *v30 == v17;
            v17 = v30;
          }

          while (!v28);
        }

        v17 = v30;
      }

      while (v30 != v18);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "]", 1);
  }

  std::stringbuf::str();
  v33[0] = *MEMORY[0x1E69E54D8];
  v31 = *(MEMORY[0x1E69E54D8] + 72);
  *(v33 + *(v33[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v34 = v31;
  v35 = MEMORY[0x1E69E5548] + 16;
  if (v37 < 0)
  {
    operator delete(v36[7].__locale_);
  }

  v35 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v36);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v38);
}

void sub_1B50B8C9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void quasar::OptionValue<quasar::PTree>::addOverride(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = a3;
  quasar::PTree::getOptional<quasar::PTree>(a4, a1 + 8);
}

void sub_1B50B8DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a18)
  {
    quasar::PTree::~PTree(&a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::string,quasar::PTree>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PTree>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::PTree>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,quasar::PTree>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PTree>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::PTree>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,quasar::PTree>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PTree>,std::less<void>,true>,std::allocator<std::__value_type<std::string,quasar::PTree>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,quasar::PTree>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,quasar::PTree>,0>(uint64_t a1)
{
  quasar::PTree::~PTree((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,quasar::PTree>>,std::pair<std::string,quasar::PTree>*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 88;
      std::allocator<std::pair<std::string,quasar::PTree>>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t quasar::OptionValue<quasar::PTree>::fallback(uint64_t a1)
{
  do
  {
    v1 = a1;
    a1 = *(a1 + 168);
    if (!a1)
    {
      break;
    }

    v2 = (v1 + 32);
    v3 = *(v1 + 55);
    if (v3 < 0)
    {
      if (*(v1 + 40) != 9)
      {
        return v1;
      }

      v2 = *v2;
    }

    else if (v3 != 9)
    {
      return v1;
    }

    v4 = *v2;
    v5 = *(v2 + 8);
  }

  while (v4 == 0x746C75616665643CLL && v5 == 62);
  return v1;
}

void *quasar::operator<<(void *a1, quasar::PTree *this)
{
  DataType = quasar::PTree::getDataType(this);
  if (DataType <= 1)
  {
    if (DataType)
    {
      if (DataType == 1)
      {
        Double = quasar::PTree::getDouble(this);
        MEMORY[0x1B8C84BE0](a1, Double);
      }
    }

    else
    {
      String = quasar::PTree::getString(this);
      v10 = *(String + 23);
      if (v10 >= 0)
      {
        v11 = String;
      }

      else
      {
        v11 = *String;
      }

      if (v10 >= 0)
      {
        v12 = *(String + 23);
      }

      else
      {
        v12 = *(String + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v11, v12);
    }
  }

  else
  {
    switch(DataType)
    {
      case 2:
        v7 = quasar::PTree::getInt<int>(this);
        MEMORY[0x1B8C84C00](a1, v7);
        break;
      case 3:
        Bool = quasar::PTree::getBool(this);
        MEMORY[0x1B8C84BD0](a1, Bool);
        break;
      case 4:
        quasar::mt::utils::ptreeToString(this, v5);
    }
  }

  return a1;
}

void sub_1B50B9044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B50B90E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,quasar::PTree>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,quasar::PTree>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,quasar::PTree>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,quasar::PTree>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,quasar::PTree>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

char *std::pair<std::string const,quasar::PTree>::pair[abi:ne200100]<std::string_view &,quasar::PTree&,0>(char *__dst, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = *a2;
  if (v3 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v3;
  if (v3)
  {
    memmove(__dst, v6, v3);
  }

  __dst[v3] = 0;
  *(__dst + 6) = *a3;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((__dst + 32), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v8 = *(a3 + 8);
    *(__dst + 6) = *(a3 + 24);
    *(__dst + 2) = v8;
  }

  *(__dst + 7) = 0;
  *(__dst + 8) = 0;
  *(__dst + 9) = 0;
  std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>((__dst + 56), *(a3 + 32), *(a3 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 40) - *(a3 + 32)) >> 3));
  __dst[80] = *(a3 + 56);
  return __dst;
}

void sub_1B50B92E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::ProcessingInput *>::__init_with_size[abi:ne200100]<quasar::ProcessingInput * const*,quasar::ProcessingInput * const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50B936C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::OptionValueBase *>::__init_with_size[abi:ne200100]<quasar::OptionValueBase * const*,quasar::OptionValueBase * const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50B93E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::OptionValue<std::string>::value(void *a1)
{
  v2 = quasar::OptionValue<std::string>::fallback(a1) + 104;
  if ((*(*a1 + 32))(a1))
  {
    v3 = a1[11];
    v4 = v3[1];
    if (v4)
    {
      v5 = *v3;
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v6 = std::__shared_weak_count::lock(v4);
      std::__shared_weak_count::__release_weak(v4);
      if (v6)
      {
        if (v5)
        {
          v7 = *v5;
          for (i = v5[1]; v7 != i; v7 += 3)
          {
            v9 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>((a1 + 17), v7);
            if (a1 + 18 != v9)
            {
              v2 = v9 + 56;
            }
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }

  return v2;
}

uint64_t quasar::OptionValue<quasar::PTree>::value(void *a1)
{
  v2 = quasar::OptionValue<quasar::PTree>::fallback(a1) + 104;
  if ((*(*a1 + 32))(a1))
  {
    v3 = a1[11];
    v4 = v3[1];
    if (v4)
    {
      v5 = *v3;
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v6 = std::__shared_weak_count::lock(v4);
      std::__shared_weak_count::__release_weak(v4);
      if (v6)
      {
        if (v5)
        {
          v7 = *v5;
          for (i = v5[1]; v7 != i; v7 += 3)
          {
            v9 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>((a1 + 22), v7);
            if (a1 + 23 != v9)
            {
              v2 = v9 + 56;
            }
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }

  return v2;
}

uint64_t quasar::OnlineAEDRescoringDecoder::OnlineAEDRescoringDecoder(uint64_t a1, __int128 *a2)
{
  v3 = quasar::CTCAlignedDecoder::CTCAlignedDecoder(a1, a2);
  *v3 = &unk_1F2CFB068;
  *(v3 + 592) = 32;
  std::string::basic_string[abi:ne200100]<0>((v3 + 600), "");
  *(a1 + 624) = 0x3F8000003E99999ALL;
  *(a1 + 632) = 1065353216;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0;
  MEMORY[0x1B8C84820](a1 + 512, "decrease-by-one");
  return a1;
}

void sub_1B50B9674(_Unwind_Exception *a1)
{
  v4 = *(v1 + 648);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(v1 + 623) < 0)
  {
    operator delete(*v2);
  }

  quasar::CTCAlignedDecoder::~CTCAlignedDecoder(v1);
  _Unwind_Resume(a1);
}

void quasar::CTCAlignedDecoder::~CTCAlignedDecoder(void **this)
{
  *this = &unk_1F2D37E18;
  if (*(this + 591) < 0)
  {
    operator delete(this[71]);
  }

  std::__tree<int>::destroy((this + 68), this[69]);
  if (*(this + 535) < 0)
  {
    operator delete(this[64]);
  }

  v2 = this + 60;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 479) < 0)
  {
    operator delete(this[57]);
  }

  quasar::Decoder::~Decoder(this);
}

uint64_t quasar::OnlineAEDRescoringDecoder::runImpl(uint64_t a1, kaldi::OnlineFeatureMatrix **a2, uint64_t a3)
{
  v46[4] = *MEMORY[0x1E69E9840];
  AllAedFeat = kaldi::OnlineFeatureMatrix::GetAllAedFeat(*a2);
  kaldi::CuMatrix<float>::CuMatrix<float>(v43, AllAedFeat, 111, 0);
  if (quasar::gLogLevel >= 5)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "AED states (", 12);
    v8 = MEMORY[0x1B8C84C00](v7, v45);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", ", 2);
    v10 = MEMORY[0x1B8C84C00](v9, v44);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ")", 1);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v26);
  }

  if (v45)
  {
    if (v45 >= *(*a3 + 592))
    {
      v11 = *(*a3 + 592);
    }

    else
    {
      v11 = v45;
    }

    if (v11 > kaldi::quasar::CEAttnEncoderDecoder::MaxEncoderSize(*(a1 + 640)))
    {
      if (quasar::gLogLevel >= 4)
      {
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Skip AED because audio (", 24);
        v13 = MEMORY[0x1B8C84C00](v12, v45);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ") is longer than the maximum length that the model can rescore (", 64);
        v15 = kaldi::quasar::CEAttnEncoderDecoder::MaxEncoderSize(*(a1 + 640));
        v16 = MEMORY[0x1B8C84C00](v14, v15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ")", 1);
LABEL_12:
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v26);
        goto LABEL_27;
      }

      goto LABEL_27;
    }

    v17 = quasar::PTree::begin(a2[4]);
    v18 = (a1 + 512);
    v19 = *(a1 + 535);
    if (v19 < 0)
    {
      if (*(a1 + 520) != 20)
      {
        goto LABEL_25;
      }

      v18 = *v18;
    }

    else if (v19 != 20)
    {
      goto LABEL_25;
    }

    v20 = *v18;
    v21 = v18[1];
    v22 = *(v18 + 4);
    if (v20 == 0x6E6172742D657375 && v21 == 0x6D2D6E6F69746973 && v22 == 1818584175)
    {
      v46[0] = &unk_1F2CFB5D8;
      v46[1] = v17;
      v46[3] = v46;
LABEL_26:
      fst::NbestAsFsts<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>();
    }

LABEL_25:
    (*(*a1 + 192))(v46, a1);
    goto LABEL_26;
  }

  if (quasar::gLogLevel >= 4)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Skip AED because of empty utterance", 35);
    goto LABEL_12;
  }

LABEL_27:
  kaldi::CuMatrix<float>::~CuMatrix(v43);
  return 0;
}

void sub_1B50BAB28(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B50BABD8);
}

void sub_1B50BADC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  fst::AutoQueue<int>::~AutoQueue(&a21);
  a21 = v21 - 88;
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void fst::ConvertLattice<fst::LatticeWeightTpl<float>,int>(uint64_t a1, uint64_t a2, int a3)
{
  (*(*a2 + 224))(a2);
  v37 = a1;
  v36 = (*(*a1 + 160))(a1);
  if (v36 >= 1)
  {
    v6 = v36;
    do
    {
      (*(*a2 + 200))(a2);
      --v6;
    }

    while (v6);
  }

  v7 = (*(*v37 + 24))(v37);
  (*(*a2 + 176))(a2, v7);
  if (v36 < 1)
  {
    return;
  }

  v8 = 0;
  do
  {
    (*(*v37 + 32))(&v48);
    v39 = *&v48.i32[1];
    LODWORD(v43) = v48.i32[0];
    v52 = 2139095040;
    v51 = INFINITY;
    v9.n128_u32[0] = v48.i32[0];
    if (*v48.i32 != INFINITY)
    {
      v11 = __p;
      v10 = v50;
LABEL_12:
      v13 = v10 - v11;
      if (v13)
      {
        v14 = 0;
        v15 = v13 >> 2;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        v17 = v8;
        do
        {
          v18 = (*(*a2 + 200))(a2, v9);
          v19 = *(__p + v14);
          LODWORD(v43) = 0;
          HIDWORD(v43) = v19;
          v44 = vand_s8(v48, vcltz_s32(vshl_n_s32(vdup_n_s32(v14 == 0), 0x1FuLL)));
          LODWORD(v45) = v18;
          if (a3)
          {
            v43 = v19;
          }

          (*(*a2 + 208))(a2, v17, &v43);
          ++v14;
          v17 = v18;
        }

        while (v16 != v14);
        LODWORD(v43) = 0;
        v20 = 0;
      }

      else
      {
        v20 = v48.i32[1];
        LODWORD(v43) = v48.i32[0];
        v18 = v8;
      }

      HIDWORD(v43) = v20;
      (*(*a2 + 184))(a2, v18, &v43);
      goto LABEL_23;
    }

    v9.n128_f32[0] = v39;
    v11 = __p;
    v10 = v50;
    if (v39 != v51 || v50 != __p)
    {
      goto LABEL_12;
    }

LABEL_23:
    v47 = 0;
    (*(*v37 + 136))(v37, v8, &v43);
    v38 = v8;
    while (1)
    {
      if (!v43)
      {
        if (v47 >= v45)
        {
          goto LABEL_53;
        }

        goto LABEL_29;
      }

      if ((*(*v43 + 24))(v43))
      {
        break;
      }

      if (v43)
      {
        v21 = (*(*v43 + 32))();
        goto LABEL_30;
      }

LABEL_29:
      v21 = *&v44 + 48 * v47;
LABEL_30:
      v23 = *(v21 + 16);
      v22 = *(v21 + 24);
      v24 = (v22 - v23) >> 2;
      v25 = v8;
      if (v24 >= 2)
      {
        v26 = 0;
        v27 = v38;
        do
        {
          v28 = (*(*a2 + 200))(a2);
          v25 = v28;
          v29 = *v21;
          if (v26)
          {
            v29 = 0.0;
          }

          v30 = 0;
          if (!v26)
          {
            v30 = *(v21 + 8);
          }

          v31 = *(*(v21 + 16) + 4 * v26);
          v39 = v29;
          v40 = v31;
          v41 = v30;
          v42 = v28;
          if (a3)
          {
            v39 = v31;
            v40 = v29;
          }

          (*(*a2 + 208))(a2, v27, &v39);
          ++v26;
          v27 = v25;
        }

        while (v24 - 1 != v26);
      }

      v32 = *v21;
      if (v24 >= 2)
      {
        v32 = 0.0;
      }

      if (v22 == v23)
      {
        v33 = 0.0;
        v8 = v38;
LABEL_45:
        v34 = *(v21 + 8);
        goto LABEL_46;
      }

      v33 = *(*(v21 + 16) + v22 - v23 - 4);
      v34 = 0;
      v8 = v38;
      if (v24 <= 1)
      {
        goto LABEL_45;
      }

LABEL_46:
      v35 = *(v21 + 40);
      v39 = v32;
      v40 = v33;
      v41 = v34;
      v42 = v35;
      if (a3)
      {
        v39 = v33;
        v40 = v32;
      }

      (*(*a2 + 208))(a2, v25, &v39);
      if (v43)
      {
        (*(*v43 + 40))(v43);
      }

      else
      {
        ++v47;
      }
    }

    if (v43)
    {
      (*(*v43 + 8))();
      goto LABEL_55;
    }

LABEL_53:
    if (v46)
    {
      --*v46;
    }

LABEL_55:
    if (__p)
    {
      v50 = __p;
      operator delete(__p);
    }

    v8 = (v8 + 1);
  }

  while (v8 != v36);
}

void sub_1B50BB3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::GetLinearSymbolSequence<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,int>(uint64_t a1, void **a2, void **a3, float32x2_t *a4, int a5)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  __p = 0;
  v27 = 0;
  v28 = 0;
  v10 = (*(*a1 + 24))(a1);
  if (v10 == -1)
  {
    if (a2)
    {
      a2[1] = *a2;
    }

    if (a3)
    {
      a3[1] = *a3;
    }

    if (a4)
    {
      *a4 = vneg_f32(0x7F0000007FLL);
    }

    v17 = 1;
  }

  else
  {
    for (i = 0; ; i = vadd_f32(i, v14))
    {
      (*(*a1 + 32))(&v25, a1, v10);
      v34 = *(&v25 + 1);
      LODWORD(v22[0]) = v25;
      v33 = 2139095040;
      v32 = INFINITY;
      v12.n128_u32[0] = v25;
      if (*&v25 != INFINITY)
      {
        break;
      }

      v12.n128_f32[0] = v34;
      if (v34 != v32)
      {
        break;
      }

      if ((*(*a1 + 40))(a1, v10, v34) != 1)
      {
        goto LABEL_25;
      }

      v24 = 0;
      (*(*a1 + 136))(a1, v10, v22);
      if (v22[0])
      {
        v13 = (*(*v22[0] + 32))(v22[0]);
      }

      else
      {
        v13 = v22[1] + 20 * v24;
      }

      v14 = *(v13 + 8);
      if (*v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = a5 == 0;
      }

      if (!v15)
      {
        std::vector<int>::push_back[abi:ne200100](&v29, v13);
      }

      if (*(v13 + 4))
      {
        v16 = 0;
      }

      else
      {
        v16 = a5 == 0;
      }

      if (!v16)
      {
        std::vector<int>::push_back[abi:ne200100](&__p, (v13 + 4));
      }

      v10 = *(v13 + 16);
      if (v22[0])
      {
        (*(*v22[0] + 8))(v22[0]);
      }

      else if (v23)
      {
        --*v23;
      }
    }

    v20 = HIDWORD(v25);
    v21 = v25;
    if ((*(*a1 + 40))(a1, v10, v12))
    {
LABEL_25:
      v17 = 0;
      goto LABEL_42;
    }

    if (a2 && &v29 != a2)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a2, v29, v30, (v30 - v29) >> 2);
    }

    if (a3 && &__p != a3)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a3, __p, v27, (v27 - __p) >> 2);
    }

    v18.i32[0] = v21;
    if (a4)
    {
      v18.i32[1] = v20;
      *a4 = vadd_f32(i, v18);
    }

    v17 = 1;
LABEL_42:
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  return v17;
}

void sub_1B50BB758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<int ()(int)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t fst::GetLinearSymbolSequence<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,int>(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, int a5)
{
  v39 = 0u;
  v40 = 0u;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v10 = (*(*a1 + 24))(a1);
  if (v10 != -1)
  {
    if (a2)
    {
      v11 = &v36 == a2;
    }

    else
    {
      v11 = 1;
    }

    v12 = v11;
    v21 = a3;
    if (a3)
    {
      v13 = &v33 == a3;
    }

    else
    {
      v13 = 1;
    }

    v14 = v13;
    while (1)
    {
      (*(*a1 + 32))(&v30, a1, v10);
      v22.i32[0] = v30.i32[1];
      LODWORD(v25) = v30.i32[0];
      v42 = 2139095040;
      v41 = INFINITY;
      if (v30.f32[0] == INFINITY && v22.f32[0] == v41 && v32 == v31)
      {
        if ((*(*a1 + 40))(a1, v10, v22.f32[0]) == 1)
        {
          v29 = 0;
          (*(*a1 + 136))(a1, v10, &v25);
          if (v25)
          {
            v16 = (*(*v25 + 32))(v25);
          }

          else
          {
            v16 = (__p + 48 * v29);
          }

          fst::Times<fst::LatticeWeightTpl<float>,int>(v16 + 1, &v39, &v22);
          *&v39 = v22;
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v39 + 1, v23, v24, (v24 - v23) >> 2);
          if (v23)
          {
            v24 = v23;
            operator delete(v23);
          }

          if (v16->i32[0])
          {
            v17 = 0;
          }

          else
          {
            v17 = a5 == 0;
          }

          if (!v17)
          {
            std::vector<int>::push_back[abi:ne200100](&v36, v16);
          }

          if (v16->i32[1])
          {
            v18 = 0;
          }

          else
          {
            v18 = a5 == 0;
          }

          if (!v18)
          {
            std::vector<int>::push_back[abi:ne200100](&v33, v16 + 1);
          }

          v10 = v16[5].u32[0];
          if (v25)
          {
            (*(*v25 + 8))(v25);
          }

          else if (v28)
          {
            --*v28;
          }

          v15 = 1;
          goto LABEL_29;
        }
      }

      else
      {
        fst::Times<fst::LatticeWeightTpl<float>,int>(&v30, &v39, &v25);
        *&v39 = v25;
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v39 + 1, __p, v27, (v27 - __p) >> 2);
        if (__p)
        {
          v27 = __p;
          operator delete(__p);
        }

        if (!(*(*a1 + 40))(a1, v10))
        {
          if ((v12 & 1) == 0)
          {
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a2, v36, v37, (v37 - v36) >> 2);
          }

          if ((v14 & 1) == 0)
          {
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v21, v33, v34, (v34 - v33) >> 2);
          }

          if (a4)
          {
            *a4 = v39;
            if (&v39 != a4)
            {
              std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a4 + 8), *(&v39 + 1), v40, (v40 - *(&v39 + 1)) >> 2);
            }
          }

          v15 = 0;
          v5 = 1;
          goto LABEL_29;
        }
      }

      v15 = 0;
      v5 = 0;
LABEL_29:
      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      if ((v15 & 1) == 0)
      {
        goto LABEL_61;
      }
    }
  }

  if (a2)
  {
    *(a2 + 8) = *a2;
  }

  if (a3)
  {
    a3[1] = *a3;
  }

  if (a4)
  {
    *a4 = vneg_f32(0x7F0000007FLL);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a4 + 8), 0, 0, 0);
  }

  v5 = 1;
LABEL_61:
  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (*(&v39 + 1))
  {
    *&v40 = *(&v39 + 1);
    operator delete(*(&v39 + 1));
  }

  return v5 & 1;
}

void sub_1B50BBC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  v31 = *(v29 - 136);
  if (v31)
  {
    *(v29 - 128) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<double>::insert(void *a1, char *__src, double *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v27 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v14);
    }

    v24 = 0;
    v25 = 8 * v15;
    v26 = (8 * v15);
    std::__split_buffer<double>::emplace_back<double>(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_1B50BBEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void *std::vector<std::vector<quasar::Token>>::insert(void *a1, void *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 3);
    v15 = 2 * v14;
    if (2 * v14 <= v12)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v14 >= 0x555555555555555)
    {
      v16 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v15;
    }

    v28 = a1;
    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v16);
    }

    v25 = 0;
    v26 = 8 * (v13 >> 3);
    v27 = v26;
    std::__split_buffer<std::vector<quasar::Token>>::emplace_back<std::vector<quasar::Token> const&>(&v25, a3);
    v17 = v26;
    memcpy(v27, v4, a1[1] - v4);
    v18 = *a1;
    v19 = v26;
    *&v27 = v27 + a1[1] - v4;
    a1[1] = v4;
    v20 = v4 - v18;
    v21 = (v19 - (v4 - v18));
    memcpy(v21, v18, v20);
    v22 = *a1;
    *a1 = v21;
    v23 = a1[2];
    *(a1 + 1) = v27;
    *&v27 = v22;
    *(&v27 + 1) = v23;
    v25 = v22;
    v26 = v22;
    std::__split_buffer<std::vector<quasar::Token>>::~__split_buffer(&v25);
    return v17;
  }

  else if (a2 == v6)
  {
    std::vector<std::vector<quasar::Token>>::__construct_one_at_end[abi:ne200100]<std::vector<quasar::Token> const&>(a1, a3);
  }

  else
  {
    std::vector<std::vector<quasar::Token>>::__move_range(a1, a2, v6, (a2 + 3));
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 3;
    if (v8)
    {
      v9 = 0;
    }

    v10 = &a3[v9];
    if (v4 != v10)
    {
      std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v4, *v10, v10[1], 0x6DB6DB6DB6DB6DB7 * ((v10[1] - *v10) >> 5));
    }
  }

  return v4;
}

void sub_1B50BC094(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<quasar::Token>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<quasar::Token>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<quasar::Token>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v8);
    }

    *(a1 + 8) = v7;
  }
}

uint64_t fst::Union<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 112))(a1);
  v5 = (*(*a2 + 112))(a2);
  if (!fst::CompatSymbols(v4, v5, 1) || (v6 = (*(*a1 + 120))(a1), v7 = (*(*a2 + 120))(a2), !fst::CompatSymbols(v6, v7, 1)))
  {
    std::string::basic_string[abi:ne200100]<0>(v28, "ERROR");
    v20 = fst::LogMessage::LogMessage(v32, v28);
    v21 = fst::cerr(v20);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Union: input/output symbol tables of 1st argument ", 50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "do not match input/output symbol tables of 2nd argument", 55);
    fst::LogMessage::~LogMessage(v32);
    if (SHIBYTE(v29[0]) < 0)
    {
      operator delete(v28[0]);
    }

    return (*(*a1 + 192))(a1, 4, 4);
  }

  v8 = (*(*a1 + 160))(a1);
  v9 = (*(*a1 + 64))(a1, 0x2000000000, 1);
  v10 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  result = (*(*a2 + 24))(a2);
  if (result == -1)
  {
    if ((v11 & 4) != 0)
    {
      v25 = *(*a1 + 192);

      return v25(a1, 4, 4);
    }

    return result;
  }

  v13 = result;
  if ((*(*a2 + 64))(a2, 1, 0))
  {
    v14 = fst::CountStates<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a2);
    if (v9)
    {
      v15 = v8;
    }

    else
    {
      v15 = v8 + 1;
    }

    (*(*a1 + 248))(a1, (v15 + v14));
  }

  v40 = 0;
  (*(*a2 + 128))(a2, &v38);
LABEL_10:
  if (!v38)
  {
    if (v40 >= v39)
    {
      goto LABEL_44;
    }

    goto LABEL_14;
  }

  if (!(*(*v38 + 16))(v38))
  {
LABEL_14:
    v16 = (*(*a1 + 200))(a1);
    if (v38)
    {
      v17 = (*(*v38 + 24))(v38);
    }

    else
    {
      v17 = v40;
    }

    (*(*a2 + 32))(&v35, a2, v17);
    (*(*a1 + 184))(a1, v16, &v35);
    if (__p)
    {
      v37 = __p;
      operator delete(__p);
    }

    v18 = (*(*a2 + 40))(a2, v17);
    (*(*a1 + 256))(a1, v16, v18);
    v34 = 0;
    (*(*a2 + 136))(a2, v17, v32);
    while (1)
    {
      if (v32[0])
      {
        if ((*(*v32[0] + 24))(v32[0]))
        {
          if (v32[0])
          {
            (*(*v32[0] + 8))();
            goto LABEL_35;
          }

LABEL_33:
          if (v33)
          {
            --*v33;
          }

LABEL_35:
          if (v38)
          {
            (*(*v38 + 32))(v38);
          }

          else
          {
            ++v40;
          }

          goto LABEL_10;
        }

        if (v32[0])
        {
          v19 = (*(*v32[0] + 32))();
          goto LABEL_26;
        }
      }

      else if (v34 >= v32[2])
      {
        goto LABEL_33;
      }

      v19 = v32[1] + 48 * v34;
LABEL_26:
      v28[0] = *v19;
      v28[1] = *(v19 + 8);
      v29[1] = 0;
      v30 = 0;
      v29[0] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v29, *(v19 + 16), *(v19 + 24), (*(v19 + 24) - *(v19 + 16)) >> 2);
      v31 = *(v19 + 40) + v8;
      (*(*a1 + 208))(a1, v16, v28);
      if (v29[0])
      {
        v29[1] = v29[0];
        operator delete(v29[0]);
      }

      if (v32[0])
      {
        (*(*v32[0] + 40))(v32[0]);
      }

      else
      {
        ++v34;
      }
    }
  }

  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

LABEL_44:
  v23 = (*(*a1 + 24))(a1);
  if (v23 == -1)
  {
    (*(*a1 + 176))(a1, v13);
    return (*(*a1 + 192))(a1, v11, 0x3FFFFFFF0004);
  }

  else
  {
    v24 = v23;
    if (v9)
    {
      v30 = 0;
      *v28 = 0u;
      *v29 = 0u;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v29, 0, 0, 0);
      v31 = v13 + v8;
      (*(*a1 + 208))(a1, v24, v28);
    }

    else
    {
      v26 = (*(*a1 + 200))(a1);
      (*(*a1 + 176))(a1, v26);
      v30 = 0;
      *v28 = 0u;
      *v29 = 0u;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v29, 0, 0, 0);
      v31 = v24;
      (*(*a1 + 208))(a1, v26, v28);
      if (v29[0])
      {
        v29[1] = v29[0];
        operator delete(v29[0]);
      }

      v30 = 0;
      *v28 = 0u;
      *v29 = 0u;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v29, 0, 0, 0);
      v31 = v13 + v8;
      (*(*a1 + 208))(a1, v26, v28);
    }

    if (v29[0])
    {
      v29[1] = v29[0];
      operator delete(v29[0]);
    }

    v27 = fst::UnionProperties(v10, v11, 0);
    return (*(*a1 + 192))(a1, v27, 0x3FFFFFFF0007);
  }
}

void sub_1B50BCAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B50BCF3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::OnlineAEDRescoringDecoder::~OnlineAEDRescoringDecoder(quasar::OnlineAEDRescoringDecoder *this)
{
  *this = &unk_1F2CFB068;
  v2 = *(this + 81);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 623) < 0)
  {
    operator delete(*(this + 75));
  }

  quasar::CTCAlignedDecoder::~CTCAlignedDecoder(this);
}

{
  *this = &unk_1F2CFB068;
  v2 = *(this + 81);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 623) < 0)
  {
    operator delete(*(this + 75));
  }

  *this = &unk_1F2D37E18;
  if (*(this + 591) < 0)
  {
    operator delete(*(this + 71));
  }

  std::__tree<int>::destroy(this + 544, *(this + 69));
  if (*(this + 535) < 0)
  {
    operator delete(*(this + 64));
  }

  v3 = (this + 480);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 479) < 0)
  {
    operator delete(*(this + 57));
  }

  quasar::Decoder::~Decoder(this);
  MEMORY[0x1B8C85350]();
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2CFB158;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

double fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Final@<D0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v3 = *(*(*(a1 + 8) + 64) + 8 * a2);
  result = *v3;
  *a3 = *v3;
  return result;
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Write(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write stream method for ", 39);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write filename method for ", 41);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B50BD3B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B50BD4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::operator=(uint64_t a1)
{
  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  v2 = fst::LogMessage::LogMessage(&v7, __p);
  v3 = fst::cerr(v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ImplToFst: Assignment operator disallowed", 41);
  fst::LogMessage::~LogMessage(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *(*(a1 + 8) + 8) |= 4uLL;
  return a1;
}

void sub_1B50BD5BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t fst::TestProperties<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a1, a2, a3, 0);
    if (!fst::CompatProperties(v6, v7))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      v8 = fst::LogMessage::LogMessage(&v14, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "TestProperties: stored Fst properties incorrect", 47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " (stored: props1, computed: props2)", 35);
      fst::LogMessage::~LogMessage(&v14);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return v7;
  }

  else
  {

    return fst::ComputeProperties<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a1, a2, a3, 1);
  }
}

void sub_1B50BD738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v7 = a1;
  v8 = 0x155555550000;
  v9 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v10 = v9;
  if (!a4 || (v11 = v9 & 0x3FFFFFFF0000 | (2 * v9) & 0x2AAAAAAA0000 | (v9 >> 1) & 0x155555550000 | 7, (a2 & ~v11) != 0))
  {
    v10 = v9 & 7;
    v48 = v10;
    v12 = (*(*v7 + 16))(v7);
    if ((a2 & 0xF3C00000000) != 0 && v12)
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = &v48;
      fst::DfsVisit<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(v7, &v43);
    }

    if ((a2 & 0xFFFFF0C3FFFFFFF8) != 0)
    {
      v37 = a3;
      v13 = a2 & 0xC0000;
      v14 = 0x10425A810000;
      if ((a2 & 0xC0000) != 0)
      {
        v14 = 0x10425A850000;
      }

      v15 = v10 | v14;
      v16 = a2 & 0x300000;
      if ((a2 & 0x300000) != 0)
      {
        v15 |= 0x100000uLL;
      }

      v48 = v15;
      memset(&v42, 0, sizeof(v42));
      memset(&v41, 0, sizeof(v41));
      v40 = 0;
      (*(*v7 + 128))(v7, &v38);
      v17 = 0;
LABEL_12:
      if (v38)
      {
        if (!(*(*v38 + 16))(v38))
        {
          if (v38)
          {
            v18 = (*(*v38 + 24))();
LABEL_18:
            v19 = (*(*v7 + 40))(v7, v18);
            v42.__end_ = v42.__begin_;
            v41.__end_ = v41.__begin_;
            if (v13)
            {
              std::vector<int>::reserve(&v42, v19);
            }

            if (v16)
            {
              std::vector<int>::reserve(&v41, v19);
            }

            v47 = 0;
            v20 = v7;
            (*(*v7 + 136))(v7, v18, &v43);
            v22 = 1;
            while (1)
            {
              if (v43)
              {
                if ((*(*v43 + 24))(v43))
                {
                  if (v43)
                  {
                    (*(*v43 + 8))();
                    goto LABEL_64;
                  }

LABEL_62:
                  if (v46)
                  {
                    --*v46;
                  }

LABEL_64:
                  v7 = v20;
                  if (v13 && (std::__sort<std::__less<int,int> &,int *>(), v30 = v42.__end_ - v42.__begin_, v30 >= 2))
                  {
                    v31 = v30 - 1;
                    v32 = v42.__begin_ + 1;
                    while (*v32 != *(v32 - 1))
                    {
                      ++v32;
                      if (!--v31)
                      {
                        goto LABEL_69;
                      }
                    }

                    v48 = v48 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
                    if (!v16)
                    {
LABEL_78:
                      if (v17 >= 1)
                      {
                        v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                      }

                      (*(*v20 + 32))(&v43, v20, v18);
                      v51 = *(&v43 + 1);
                      v52 = v43;
                      v50 = 2139095040;
                      v49 = INFINITY;
                      if (*&v43 == INFINITY && v51 == v49)
                      {
                        if ((*(*v20 + 40))(v20, v18) != 1)
                        {
                          v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                        }
                      }

                      else
                      {
                        v51 = *(&v43 + 1);
                        v52 = v43;
                        v50 = 0;
                        v49 = 0.0;
                        if (*&v43 != 0.0 || v51 != v49)
                        {
                          v48 = v48 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                        }

                        ++v17;
                      }

                      if (v38)
                      {
                        (*(*v38 + 32))(v38);
                      }

                      else
                      {
                        ++v40;
                      }

                      goto LABEL_12;
                    }
                  }

                  else
                  {
LABEL_69:
                    if (!v16)
                    {
                      goto LABEL_78;
                    }
                  }

                  std::__sort<std::__less<int,int> &,int *>();
                  v33 = v41.__end_ - v41.__begin_;
                  if (v33 >= 2)
                  {
                    v34 = v33 - 1;
                    v35 = v41.__begin_ + 1;
                    while (*v35 != *(v35 - 1))
                    {
                      ++v35;
                      if (!--v34)
                      {
                        goto LABEL_78;
                      }
                    }

                    v48 = v48 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
                  }

                  goto LABEL_78;
                }

                if (v43)
                {
                  v23 = (*(*v43 + 32))();
                  goto LABEL_29;
                }
              }

              else if (v47 >= v45)
              {
                goto LABEL_62;
              }

              v23 = (v44 + 20 * v47);
LABEL_29:
              v24 = *v23;
              v25 = v23 + 1;
              v26 = *v23;
              if (*v23 != v23[1])
              {
                v48 = v48 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
                v26 = *v25;
              }

              if (v24 | v26)
              {
                if (v24)
                {
                  if (v26)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_39;
                }

                v27 = v48;
              }

              else
              {
                v27 = v48 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
              }

              v48 = v27 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
              if (v26)
              {
LABEL_35:
                if (v22)
                {
                  goto LABEL_44;
                }

                goto LABEL_40;
              }

LABEL_39:
              v48 = v48 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
              if (v22)
              {
                goto LABEL_44;
              }

LABEL_40:
              if (v24 < v8)
              {
                v48 = v48 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
              }

              if (v26 < SHIDWORD(v8))
              {
                v48 = v48 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
              }

LABEL_44:
              v21.n128_u32[0] = v23[2];
              v28 = *(v23 + 3);
              v52 = v21.n128_u32[0];
              v51 = v28;
              v50 = 0;
              v49 = 0.0;
              if (v21.n128_f32[0] != 0.0 || v51 != v49)
              {
                v52 = v21.n128_u32[0];
                v51 = v28;
                v50 = 2139095040;
                v49 = INFINITY;
                if (v21.n128_f32[0] != INFINITY || (v21.n128_f32[0] = v51, v51 != v49))
                {
                  v48 = v48 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                }
              }

              v29 = v23[4];
              if (v29 <= v18)
              {
                v48 = v48 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
              }

              if (v29 != v18 + 1)
              {
                v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }

              v8 = *v23;
              if (v13)
              {
                std::vector<int>::push_back[abi:ne200100](&v42.__begin_, v23);
              }

              if (v16)
              {
                std::vector<int>::push_back[abi:ne200100](&v41.__begin_, v25);
              }

              if (v43)
              {
                (*(*v43 + 40))(v43, v21);
                v22 = 0;
              }

              else
              {
                v22 = 0;
                ++v47;
              }
            }
          }

LABEL_17:
          v18 = v40;
          goto LABEL_18;
        }

        if (v38)
        {
          (*(*v38 + 8))();
        }
      }

      else if (v40 < v39)
      {
        goto LABEL_17;
      }

      a3 = v37;
      if ((*(*v7 + 24))(v7) != -1 && (*(*v7 + 24))(v7))
      {
        v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
      }

      if (v41.__begin_)
      {
        v41.__end_ = v41.__begin_;
        operator delete(v41.__begin_);
      }

      if (v42.__begin_)
      {
        v42.__end_ = v42.__begin_;
        operator delete(v42.__begin_);
      }

      v10 = v48;
    }

    v11 = v10 & 0x3FFFFFFF0000 | (2 * v10) & 0x2AAAAAAA0000 | (v10 >> 1) & 0x155555550000 | 7;
  }

  *a3 = v11;
  return v10;
}

void sub_1B50BDF9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

BOOL fst::CompatProperties(unint64_t this, unint64_t a2)
{
  v2 = (((2 * a2) & 0x2AAAAAAA0000 | a2 & 0x3FFFFFFF0000 | (a2 >> 1) & 0x155555550000) & ((this >> 1) & 0x155555550000 | (2 * this) & 0x2AAAAAAA0000 | this) | 7) & (a2 ^ this);
  if (v2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      if ((v6 & v2) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
        v7 = fst::LogMessage::LogMessage(&v22, __p);
        v8 = fst::cerr(v7);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "CompatProperties: mismatch: ", 28);
        v10 = strlen(fst::PropertyNames[v5]);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, fst::PropertyNames[v5], v10);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": props1 = ", 11);
        if ((v6 & this) != 0)
        {
          v13 = "true";
        }

        else
        {
          v13 = "false";
        }

        if ((v6 & this) != 0)
        {
          v14 = 4;
        }

        else
        {
          v14 = 5;
        }

        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", props2 = ", 11);
        if ((v6 & a2) != 0)
        {
          v17 = "true";
        }

        else
        {
          v17 = "false";
        }

        if ((v6 & a2) != 0)
        {
          v18 = 4;
        }

        else
        {
          v18 = 5;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
        fst::LogMessage::~LogMessage(&v22);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v6 *= 2;
      ++v5;
    }

    while (v5 != 64);
  }

  return v2 == 0;
}

void sub_1B50BE1E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B50BE9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::InitVisit(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    *(*a1 + 8) = **a1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(v3 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(v4 + 8) = 0;
    *(a1 + 52) = 0;
    **(a1 + 24) = **(a1 + 24) & 0xFFFFF0C3FFFFFFFFLL | 0x52800000000;
    *(a1 + 32) = a2;
    v5 = (*(*a2 + 24))(a2);
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = v5;
    operator new();
  }

  operator new();
}

uint64_t fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::FinishVisit(uint64_t result)
{
  v1 = result;
  if (*result)
  {
    v2 = **result;
    v3 = *(*result + 8) - v2;
    if (v3)
    {
      v4 = v3 >> 2;
      if (v4 <= 1)
      {
        v4 = 1;
      }

      do
      {
        *v2 = *(result + 48) + ~*v2;
        ++v2;
        --v4;
      }

      while (v4);
    }
  }

  if (*(result + 52) == 1)
  {
    v5 = *(result + 16);
    if (v5)
    {
      if (*v5)
      {
        operator delete(*v5);
      }

      result = MEMORY[0x1B8C85350](v5, 0x1010C40113C0ABBLL);
    }
  }

  v6 = v1[7];
  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      *(v6 + 8) = v7;
      operator delete(v7);
    }

    result = MEMORY[0x1B8C85350](v6, 0x10C402FEFCB83);
  }

  v8 = v1[8];
  if (v8)
  {
    v9 = *v8;
    if (*v8)
    {
      *(v8 + 8) = v9;
      operator delete(v9);
    }

    result = MEMORY[0x1B8C85350](v8, 0x10C402FEFCB83);
  }

  v10 = v1[9];
  if (v10)
  {
    if (*v10)
    {
      operator delete(*v10);
    }

    result = MEMORY[0x1B8C85350](v10, 0x1010C40113C0ABBLL);
  }

  v11 = v1[10];
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      *(v11 + 8) = v12;
      operator delete(v12);
    }

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t fst::CountStates<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(uint64_t a1)
{
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v2 = *(*a1 + 160);

    return v2(a1);
  }

  v7 = 0;
  (*(*a1 + 128))(a1, &v5);
  v4 = 0;
  while (1)
  {
    while (!v5)
    {
      if (v7 >= v6)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_12:
      ++v7;
    }

    if ((*(*v5 + 16))(v5))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v5)
    {
      goto LABEL_12;
    }

    (*(*v5 + 32))();
  }

  if (v5)
  {
    (*(*v5 + 8))();
  }

  return v4;
}

void sub_1B50BEE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CountStates<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>();
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::InitState(uint64_t a1, int a2, int a3)
{
  v19 = a2;
  std::vector<int>::push_back[abi:ne200100](*(a1 + 80), &v19);
  v5 = **(a1 + 56);
  for (i = v19; v19 >= ((*(*(a1 + 56) + 8) - v5) >> 2); i = v19)
  {
    v7 = *a1;
    if (*a1)
    {
      v18 = -1;
      std::vector<int>::push_back[abi:ne200100](v7, &v18);
    }

    v8 = *(a1 + 8);
    if (v8)
    {
      LOBYTE(v18) = 0;
      std::vector<BOOL>::push_back(v8, &v18);
    }

    v9 = *(a1 + 16);
    LOBYTE(v18) = 0;
    std::vector<BOOL>::push_back(v9, &v18);
    v10 = *(a1 + 56);
    v18 = -1;
    std::vector<int>::push_back[abi:ne200100](v10, &v18);
    v11 = *(a1 + 64);
    v18 = -1;
    std::vector<int>::push_back[abi:ne200100](v11, &v18);
    v12 = *(a1 + 72);
    LOBYTE(v18) = 0;
    std::vector<BOOL>::push_back(v12, &v18);
    v5 = **(a1 + 56);
  }

  v13 = *(a1 + 44);
  *(v5 + 4 * i) = v13;
  *(**(a1 + 64) + 4 * v19) = v13;
  v14 = v19 >> 6;
  v15 = 1 << v19;
  *(**(a1 + 72) + 8 * v14) |= 1 << v19;
  v16 = *(a1 + 8);
  if (*(a1 + 40) == a3)
  {
    if (v16)
    {
      *(*v16 + 8 * v14) |= v15;
    }
  }

  else
  {
    if (v16)
    {
      *(*v16 + 8 * v14) &= ~v15;
    }

    **(a1 + 24) = **(a1 + 24) & 0xFFFFFCFFFFFFFFFFLL | 0x20000000000;
  }

  ++*(a1 + 44);
  return 1;
}

unint64_t fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::FinishState(uint64_t a1, int a2, int a3)
{
  result = (*(**(a1 + 32) + 32))(&v21);
  v24 = *(&v21 + 1);
  v25 = v21;
  v23 = 2139095040;
  v22 = INFINITY;
  if (*&v21 == INFINITY && v24 == v22)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2;
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v8 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * v7) != *(v8 + 4 * v7))
  {
    goto LABEL_17;
  }

  v9 = 0;
  v10 = *(a1 + 80);
  v11 = **(a1 + 16);
  v12 = (*(v10 + 8) - 4);
  v13 = v12;
  do
  {
    v14 = *v13--;
    v9 |= *(v11 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v14;
  }

  while (v14 != a2);
  v15 = *a1;
  v16 = **(a1 + 72);
  while (1)
  {
    v17 = *v12;
    if (v15)
    {
      *(*v15 + 4 * v17) = *(a1 + 48);
    }

    result = v17 >> 6;
    v18 = 1 << v17;
    if ((v9 & 1) == 0)
    {
      break;
    }

    *(v11 + 8 * result) |= v18;
    *(v16 + 8 * result) &= ~v18;
    if (v17 == a2)
    {
      *(v10 + 8) = v12;
      goto LABEL_16;
    }

LABEL_14:
    --v12;
  }

  *(v16 + 8 * result) &= ~v18;
  if (v17 != a2)
  {
    goto LABEL_14;
  }

  *(v10 + 8) = v12;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_16:
  ++*(a1 + 48);
LABEL_17:
  if (a3 != -1)
  {
    v19 = **(a1 + 16);
    if ((*(v19 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7))
    {
      *(v19 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v20 = *(v8 + 4 * v7);
    if (v20 < *(v8 + 4 * a3))
    {
      *(v8 + 4 * a3) = v20;
    }
  }

  return result;
}

uint64_t fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::BackArc(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(**(a1 + 56) + 4 * v3);
  v5 = **(a1 + 64);
  if (v4 < *(v5 + 4 * a2))
  {
    *(v5 + 4 * a2) = v4;
  }

  v6 = **(a1 + 16);
  if ((*(v6 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
  {
    *(v6 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = *(a1 + 24);
  v8 = *v7 & 0xFFFFFFF3FFFFFFFFLL | 0x400000000;
  *v7 = v8;
  if (*(a3 + 16) == *(a1 + 40))
  {
    *v7 = v8 & 0xFFFFFFC7FFFFFFFFLL | 0x1000000000;
  }

  return 1;
}

uint64_t fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::ForwardOrCrossArc(void **a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a1[7];
  v5 = *(v4 + 4 * v3);
  if (v5 >= *(v4 + 4 * a2))
  {
    v6 = v3 >> 6;
    v7 = 1 << v3;
  }

  else
  {
    v6 = v3 >> 6;
    v7 = 1 << v3;
    if ((*(*a1[9] + 8 * v6) & v7) != 0)
    {
      v8 = *a1[8];
      if (v5 < *(v8 + 4 * a2))
      {
        *(v8 + 4 * a2) = v5;
      }
    }
  }

  v9 = *a1[2];
  if ((*(v9 + 8 * v6) & v7) != 0)
  {
    *(v9 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  return 1;
}

void std::vector<char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2CFB2F0;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2CFB2F0;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2CFB330;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B50BF5E0(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2CFB330;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B8C85310](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  quasar::Bitmap::~Bitmap(a1);
}

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n, std::vector<char>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      memset(this->__end_, *__x, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v8 = (end - this->__begin_);
    v9 = &v8[__n];
    if (&v8[__n] < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = value - begin;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = end - this->__begin_;
    memset(v8, *__x, __n);
    memcpy(&v8[begin - end], begin, v12);
    this->__begin_ = &v8[begin - end];
    this->__end_ = &v8[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void *std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **&>(a1, &v10);
}

void sub_1B50BFA30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::emplace_front<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **> &>::emplace_back<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **> &>::emplace_front<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 56 * a2;
  v4 = a1[1];
  if (224 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](void *a1)
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
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::~__split_buffer(a1);
}

fst *fst::LogMessage::LogMessage(fst *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 < 0)
  {
    if (*(a2 + 8) != 5)
    {
LABEL_12:
      v9 = 0;
      goto LABEL_13;
    }

    v5 = *a2;
  }

  else
  {
    v5 = a2;
    if (v4 != 5)
    {
      goto LABEL_12;
    }
  }

  v6 = *v5;
  v7 = *(v5 + 4);
  v9 = v6 == 1096040774 && v7 == 76;
LABEL_13:
  *a1 = v9;
  v10 = fst::cerr(a1);
  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ": ", 2);
  return a1;
}

void fst::LogMessage::~LogMessage(fst::LogMessage *this)
{
  v2 = fst::cerr(this);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v4, MEMORY[0x1E69E5318]);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  if (*this == 1)
  {
    exit(1);
  }
}

void fst::ArcBuffer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::SetFromFst<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  (*(*a2 + 136))(a2, a3, &v25);
  if (!v25 && (a4 & 1) == 0)
  {
    v10 = v26 + 20 * v27;
    *(a1 + 16) = v26;
    *(a1 + 24) = v10;
    if (*a1)
    {
      free(*a1);
      *a1 = 0;
    }

    *(a1 + 8) = 0;
    return;
  }

  v11 = (*(*a2 + 40))(a2, a3);
  v12 = a5;
  if (!a4)
  {
    v12 = 0;
  }

  v13 = v11 + v12;
  if (*(a1 + 8) < (v11 + v12))
  {
    if (*a1)
    {
      free(*a1);
    }

    v24 = 0x4000;
    if (v13 > 0x4000)
    {
      v24 = v13;
    }

    *(a1 + 8) = v24;
    v15 = malloc_type_malloc(20 * v24, 0x1000040A86A77D5uLL);
    *a1 = v15;
    *(a1 + 16) = v15;
    v14 = v15;
  }

  else
  {
    v14 = *(a1 + 16);
    v15 = *a1;
  }

  *(a1 + 24) = &v14[5 * v13];
  v16 = v25;
  v17 = v26;
  v19 = v27;
  v18 = v28;
  if (v28)
  {
    ++*v28;
  }

  v20 = 0;
LABEL_13:
  v15 += 5;
  while (v16)
  {
    v21 = (*(*v16 + 24))(v16);
    v22 = *v16;
    if (v21)
    {
      (*(v22 + 8))(v16);
      return;
    }

    v23 = (*(v22 + 32))(v16);
LABEL_18:
    *(v15 - 5) = *v23;
    *(v15 - 3) = *(v23 + 8);
    *(v15 - 1) = *(v23 + 16);
    if (!v16)
    {
      ++v20;
      goto LABEL_13;
    }

    v15 += 5;
    (*(*v16 + 40))(v16);
  }

  v23 = v17 + 20 * v20;
  if (v20 < v19)
  {
    goto LABEL_18;
  }

  if (v18)
  {
    --*v18;
  }
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2CFB370;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v3 = *(*(*(a1 + 8) + 64) + 8 * a2);
  *a3 = *v3;
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a3 + 1), v3[1], v3[2], (v3[2] - v3[1]) >> 2);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::Write(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write stream method for ", 39);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write filename method for ", 41);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B50C0894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B50C0990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::operator=(uint64_t a1)
{
  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  v2 = fst::LogMessage::LogMessage(&v7, __p);
  v3 = fst::cerr(v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ImplToFst: Assignment operator disallowed", 41);
  fst::LogMessage::~LogMessage(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *(*(a1 + 8) + 8) |= 4uLL;
  return a1;
}

void sub_1B50C0A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t fst::TestProperties<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a1, a2, a3, 0);
    if (!fst::CompatProperties(v6, v7))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      v8 = fst::LogMessage::LogMessage(&v14, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "TestProperties: stored Fst properties incorrect", 47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " (stored: props1, computed: props2)", 35);
      fst::LogMessage::~LogMessage(&v14);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return v7;
  }

  else
  {

    return fst::ComputeProperties<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a1, a2, a3, 1);
  }
}

void sub_1B50C0C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v7 = a1;
  v8 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v9 = v8;
  if (!a4 || (v10 = v8 & 0x3FFFFFFF0000 | (2 * v8) & 0x2AAAAAAA0000 | (v8 >> 1) & 0x155555550000 | 7, (a2 & ~v10) != 0))
  {
    v9 = v8 & 7;
    v52 = v9;
    v11 = (*(*v7 + 16))(v7);
    if ((a2 & 0xF3C00000000) != 0 && v11)
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = &v52;
      fst::DfsVisit<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::SccVisitor<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(v7, &v46);
    }

    if ((a2 & 0xFFFFF0C3FFFFFFF8) != 0)
    {
      v12 = a2 & 0xC0000;
      v13 = 0x10425A810000;
      if ((a2 & 0xC0000) != 0)
      {
        v13 = 0x10425A850000;
      }

      v14 = v9 | v13;
      v15 = a2 & 0x300000;
      if ((a2 & 0x300000) != 0)
      {
        v14 |= 0x100000uLL;
      }

      v52 = v14;
      memset(&v45, 0, sizeof(v45));
      memset(&v44, 0, sizeof(v44));
      v43 = 0;
      (*(*v7 + 128))(v7, &v41);
      v16 = 0;
      v34 = v7;
LABEL_12:
      if (v41)
      {
        if (!(*(*v41 + 16))(v41))
        {
          if (v41)
          {
            v17 = (*(*v41 + 24))();
LABEL_18:
            v18 = (*(*v7 + 40))(v7, v17);
            v48 = 0;
            v49 = 0;
            v50 = 0;
            v45.__end_ = v45.__begin_;
            v44.__end_ = v44.__begin_;
            if (v12)
            {
              std::vector<int>::reserve(&v45, v18);
            }

            if (v15)
            {
              std::vector<int>::reserve(&v44, v18);
            }

            v35 = v16;
            v40 = 0;
            (*(*v7 + 136))(v7, v17, &v36);
            v19 = 1;
            while (1)
            {
              if (v36)
              {
                if ((*(*v36 + 24))(v36))
                {
                  if (v36)
                  {
                    (*(*v36 + 8))();
                    goto LABEL_66;
                  }

LABEL_64:
                  if (v39)
                  {
                    --*v39;
                  }

LABEL_66:
                  v7 = v34;
                  v16 = v35;
                  if (v12 && (std::__sort<std::__less<int,int> &,int *>(), v27 = v45.__end_ - v45.__begin_, v27 >= 2))
                  {
                    v28 = v27 - 1;
                    v29 = v45.__begin_ + 1;
                    while (*v29 != *(v29 - 1))
                    {
                      ++v29;
                      if (!--v28)
                      {
                        goto LABEL_71;
                      }
                    }

                    v52 = v52 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
                    if (!v15)
                    {
LABEL_80:
                      if (v35 >= 1)
                      {
                        v52 = v52 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                      }

                      (*(*v34 + 32))(&v36, v34, v17);
                      v55 = *(&v36 + 1);
                      v56 = *&v36;
                      v54 = 2139095040;
                      v53 = INFINITY;
                      if (*&v36 == INFINITY && v55 == v53 && v38 == __p)
                      {
                        if ((*(*v34 + 40))(v34, v17) != 1)
                        {
                          v52 = v52 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                        }
                      }

                      else
                      {
                        v55 = *(&v36 + 1);
                        v56 = *&v36;
                        v54 = 0;
                        v53 = 0.0;
                        if (*&v36 != 0.0 || v55 != v53 || v38 != __p)
                        {
                          v52 = v52 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                        }

                        v16 = v35 + 1;
                      }

                      if (__p)
                      {
                        v38 = __p;
                        operator delete(__p);
                      }

                      if (v48)
                      {
                        v49 = v48;
                        operator delete(v48);
                      }

                      if (v41)
                      {
                        (*(*v41 + 32))(v41);
                      }

                      else
                      {
                        ++v43;
                      }

                      goto LABEL_12;
                    }
                  }

                  else
                  {
LABEL_71:
                    if (!v15)
                    {
                      goto LABEL_80;
                    }
                  }

                  std::__sort<std::__less<int,int> &,int *>();
                  v30 = v44.__end_ - v44.__begin_;
                  if (v30 >= 2)
                  {
                    v31 = v30 - 1;
                    v32 = v44.__begin_ + 1;
                    while (*v32 != *(v32 - 1))
                    {
                      ++v32;
                      if (!--v31)
                      {
                        goto LABEL_80;
                      }
                    }

                    v52 = v52 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
                  }

                  goto LABEL_80;
                }

                if (v36)
                {
                  v20 = (*(*v36 + 32))();
                  goto LABEL_29;
                }
              }

              else if (v40 >= v38)
              {
                goto LABEL_64;
              }

              v20 = __p + 48 * v40;
LABEL_29:
              v21 = *v20;
              v22 = *v20;
              if (*v20 != *(v20 + 1))
              {
                v52 = v52 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
                v22 = *(v20 + 1);
              }

              if (v21 | v22)
              {
                if (v21)
                {
                  if (v22)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_39;
                }

                v23 = v52;
              }

              else
              {
                v23 = v52 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
              }

              v52 = v23 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
              if (v22)
              {
LABEL_35:
                if (v19)
                {
                  goto LABEL_44;
                }

                goto LABEL_40;
              }

LABEL_39:
              v52 = v52 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
              if (v19)
              {
                goto LABEL_44;
              }

LABEL_40:
              if (v21 < v46)
              {
                v52 = v52 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
              }

              if (v22 < SHIDWORD(v46))
              {
                v52 = v52 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
              }

LABEL_44:
              v24 = *(v20 + 2);
              v25 = *(v20 + 3);
              v56 = v24;
              v55 = v25;
              v54 = 0;
              v53 = 0.0;
              if (v24 != 0.0 || v55 != v53 || *(v20 + 3) != *(v20 + 2))
              {
                v56 = v24;
                v55 = v25;
                v54 = 2139095040;
                v53 = INFINITY;
                if (v24 != INFINITY || v55 != v53 || *(v20 + 3) != *(v20 + 2))
                {
                  v52 = v52 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                }
              }

              v26 = *(v20 + 10);
              if (v26 <= v17)
              {
                v52 = v52 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
              }

              if (v26 != v17 + 1)
              {
                v52 = v52 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }

              v46 = *v20;
              fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(&v47, (v20 + 8));
              v51 = *(v20 + 10);
              if (v12)
              {
                std::vector<int>::push_back[abi:ne200100](&v45.__begin_, v20);
              }

              if (v15)
              {
                std::vector<int>::push_back[abi:ne200100](&v44.__begin_, v20 + 1);
              }

              if (v36)
              {
                (*(*v36 + 40))(v36);
                v19 = 0;
              }

              else
              {
                v19 = 0;
                ++v40;
              }
            }
          }

LABEL_17:
          v17 = v43;
          goto LABEL_18;
        }

        if (v41)
        {
          (*(*v41 + 8))();
        }
      }

      else if (v43 < v42)
      {
        goto LABEL_17;
      }

      if ((*(*v7 + 24))(v7) != -1 && (*(*v7 + 24))(v7))
      {
        v52 = v52 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
      }

      if (v44.__begin_)
      {
        v44.__end_ = v44.__begin_;
        operator delete(v44.__begin_);
      }

      if (v45.__begin_)
      {
        v45.__end_ = v45.__begin_;
        operator delete(v45.__begin_);
      }

      v9 = v52;
    }

    v10 = v9 & 0x3FFFFFFF0000 | (2 * v9) & 0x2AAAAAAA0000 | (v9 >> 1) & 0x155555550000 | 7;
  }

  *a3 = v10;
  return v9;
}

void sub_1B50C14F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B50C1DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::InitVisit(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    *(*a1 + 8) = **a1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(v3 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(v4 + 8) = 0;
    *(a1 + 52) = 0;
    **(a1 + 24) = **(a1 + 24) & 0xFFFFF0C3FFFFFFFFLL | 0x52800000000;
    *(a1 + 32) = a2;
    v5 = (*(*a2 + 24))(a2);
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = v5;
    operator new();
  }

  operator new();
}

uint64_t fst::CountStates<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(uint64_t a1)
{
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v2 = *(*a1 + 160);

    return v2(a1);
  }

  v7 = 0;
  (*(*a1 + 128))(a1, &v5);
  v4 = 0;
  while (1)
  {
    while (!v5)
    {
      if (v7 >= v6)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_12:
      ++v7;
    }

    if ((*(*v5 + 16))(v5))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v5)
    {
      goto LABEL_12;
    }

    (*(*v5 + 32))();
  }

  if (v5)
  {
    (*(*v5 + 8))();
  }

  return v4;
}

void sub_1B50C210C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CountStates<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>();
  }

  _Unwind_Resume(exception_object);
}

void fst::SccVisitor<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::FinishState(uint64_t a1, int a2, int a3)
{
  (*(**(a1 + 32) + 32))(&v21);
  v26 = *(&v21 + 1);
  v27 = v21;
  v25 = 2139095040;
  v24 = INFINITY;
  v6 = *&v21 != INFINITY || v26 != v24 || v23 != __p;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (v6)
  {
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * a2) != *(v7 + 4 * a2))
  {
    goto LABEL_21;
  }

  v8 = 0;
  v9 = *(a1 + 80);
  v10 = **(a1 + 16);
  v11 = (*(v9 + 8) - 4);
  v12 = v11;
  do
  {
    v13 = *v12--;
    v8 |= *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13;
  }

  while (v13 != a2);
  v14 = *a1;
  v15 = **(a1 + 72);
  while (1)
  {
    v16 = *v11;
    if (v14)
    {
      *(*v14 + 4 * v16) = *(a1 + 48);
    }

    v17 = v16 >> 6;
    v18 = 1 << v16;
    if ((v8 & 1) == 0)
    {
      break;
    }

    *(v10 + 8 * v17) |= v18;
    *(v15 + 8 * v17) &= ~v18;
    if (v16 == a2)
    {
      *(v9 + 8) = v11;
      goto LABEL_20;
    }

LABEL_18:
    --v11;
  }

  *(v15 + 8 * v17) &= ~v18;
  if (v16 != a2)
  {
    goto LABEL_18;
  }

  *(v9 + 8) = v11;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_20:
  ++*(a1 + 48);
LABEL_21:
  if (a3 != -1)
  {
    v19 = **(a1 + 16);
    if ((*(v19 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2))
    {
      *(v19 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v20 = *(v7 + 4 * a2);
    if (v20 < *(v7 + 4 * a3))
    {
      *(v7 + 4 * a3) = v20;
    }
  }
}

uint64_t fst::SccVisitor<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::BackArc(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  v4 = *(**(a1 + 56) + 4 * v3);
  v5 = **(a1 + 64);
  if (v4 < *(v5 + 4 * a2))
  {
    *(v5 + 4 * a2) = v4;
  }

  v6 = **(a1 + 16);
  if ((*(v6 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
  {
    *(v6 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = *(a1 + 24);
  v8 = *v7 & 0xFFFFFFF3FFFFFFFFLL | 0x400000000;
  *v7 = v8;
  if (*(a3 + 40) == *(a1 + 40))
  {
    *v7 = v8 & 0xFFFFFFC7FFFFFFFFLL | 0x1000000000;
  }

  return 1;
}

uint64_t fst::SccVisitor<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::ForwardOrCrossArc(void **a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  v4 = *a1[7];
  v5 = *(v4 + 4 * v3);
  if (v5 >= *(v4 + 4 * a2))
  {
    v6 = v3 >> 6;
    v7 = 1 << v3;
  }

  else
  {
    v6 = v3 >> 6;
    v7 = 1 << v3;
    if ((*(*a1[9] + 8 * v6) & v7) != 0)
    {
      v8 = *a1[8];
      if (v5 < *(v8 + 4 * a2))
      {
        *(v8 + 4 * a2) = v5;
      }
    }
  }

  v9 = *a1[2];
  if ((*(v9 + 8 * v6) & v7) != 0)
  {
    *(v9 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  return 1;
}

void fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2CFB508;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

{
  *a1 = &unk_1F2CFB508;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2CFB548;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B50C2664(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2CFB548;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B8C85310](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  quasar::Bitmap::~Bitmap(a1);
}

void *std::deque<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> *>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> *>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> *>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **&>(a1, &v10);
}

void sub_1B50C2970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(void *a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a1 + 1, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  return a1;
}

void fst::ArcBuffer<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::SetFromFst<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  (*(*a2 + 136))(a2, a3, &v25);
  if (!v25 && (a4 & 1) == 0)
  {
    v10 = v26 + 48 * v27;
    *(a1 + 16) = v26;
    *(a1 + 24) = v10;
    if (*a1)
    {
      free(*a1);
      *a1 = 0;
    }

    *(a1 + 8) = 0;
    return;
  }

  v11 = (*(*a2 + 40))(a2, a3);
  v12 = a5;
  if (!a4)
  {
    v12 = 0;
  }

  v13 = v11 + v12;
  if (*(a1 + 8) < (v11 + v12))
  {
    if (*a1)
    {
      free(*a1);
    }

    v24 = 0x4000;
    if (v13 > 0x4000)
    {
      v24 = v13;
    }

    *(a1 + 8) = v24;
    v15 = malloc_type_malloc(48 * v24, 0x1010040A52E2B18uLL);
    *a1 = v15;
    *(a1 + 16) = v15;
    v14 = v15;
  }

  else
  {
    v14 = *(a1 + 16);
    v15 = *a1;
  }

  *(a1 + 24) = &v14[6 * v13];
  v16 = v25;
  v17 = v26;
  v19 = v27;
  v18 = v28;
  if (v28)
  {
    ++*v28;
  }

  v20 = 0;
LABEL_13:
  v15 += 6;
  while (v16)
  {
    v21 = (*(*v16 + 24))(v16);
    v22 = *v16;
    if (v21)
    {
      (*(v22 + 8))(v16);
      return;
    }

    v23 = (*(v22 + 32))(v16);
LABEL_18:
    *(v15 - 6) = *v23;
    fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v15 - 5, v23 + 8);
    *(v15 - 2) = *(v23 + 40);
    if (!v16)
    {
      ++v20;
      goto LABEL_13;
    }

    v15 += 6;
    (*(*v16 + 40))(v16);
  }

  v23 = v17 + 48 * v20;
  if (v20 < v19)
  {
    goto LABEL_18;
  }

  if (v18)
  {
    --*v18;
  }
}

void sub_1B50C2C98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  else if (v2)
  {
    --*v2;
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7C1A158, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<int>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<std::string>>,0>(uint64_t a1)
{
  std::__tree<std::string>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void *std::__shared_ptr_emplace<kaldi::quasar::CEAttnEncoderDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<kaldi::quasar::CEAttnEncoderDecoder>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFB588;
  kaldi::quasar::CEAttnEncoderDecoder::CEAttnEncoderDecoder(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::quasar::CEAttnEncoderDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFB588;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__function::__value_func<int ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<quasar::OnlineAEDRescoringDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_0,std::allocator<quasar::OnlineAEDRescoringDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_0>,int ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2CFB5D8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::OnlineAEDRescoringDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_0,std::allocator<quasar::OnlineAEDRescoringDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_0>,int ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void std::vector<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 16;
      v7 = v4 - 16;
      v8 = v4 - 16;
      do
      {
        v9 = *v8;
        v8 -= 16;
        (*v9)(v7);
        v6 -= 16;
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

void fst::ShortestPath<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(v1, a1);
}

void sub_1B50C33B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  fst::AutoQueue<int>::~AutoQueue(&a23);
  a13 = v23 - 104;
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t fst::ConvertNbestToVector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(uint64_t a1, void *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4 != *a2)
  {
    v6 = v4 - 16;
    v7 = (v4 - 16);
    v8 = (v4 - 16);
    do
    {
      v9 = *v8;
      v8 -= 2;
      (*v9)(v7);
      v6 -= 16;
      v10 = v7 == v5;
      v7 = v8;
    }

    while (!v10);
  }

  a2[1] = v5;
  result = (*(*a1 + 24))(a1);
  if (result == -1)
  {
    return result;
  }

  v12 = result;
  v13 = (*(*a1 + 40))(a1, result);
  (*(*a1 + 32))(&v36, a1, v12);
  LODWORD(v33[0]) = HIDWORD(v36);
  LODWORD(v42[0]) = v36;
  v50 = 2139095040;
  v49 = INFINITY;
  v14 = *&v36 != INFINITY || *v33 != v49 || v38 != __p;
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  std::vector<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::reserve(a2, v13 + v14);
  if (v14)
  {
    std::vector<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::resize(a2, ((a2[1] - *a2) >> 4) + 1);
    v15 = (*(*(a2[1] - 16) + 200))();
    v16 = a2[1];
    (*(*a1 + 32))(&v45, a1, v12);
    (*(*(v16 - 16) + 184))(v16 - 16, v15, &v45);
    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }
  }

  v44 = 0;
  (*(*a1 + 136))(a1, v12, v42);
  while (1)
  {
    result = v42[0];
    if (v42[0])
    {
      break;
    }

    if (v44 >= v42[2])
    {
      goto LABEL_51;
    }

LABEL_19:
    std::vector<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::resize(a2, ((a2[1] - *a2) >> 4) + 1);
    v17 = a2[1];
    if (v42[0])
    {
      v18 = (*(*v42[0] + 32))(v42[0]);
    }

    else
    {
      v18 = v42[1] + 48 * v44;
    }

    v20 = *(v17 - 16);
    v19 = v17 - 16;
    v21 = (*(v20 + 200))(v19);
    (*(*v19 + 176))(v19, v21);
    v22 = (*(*v19 + 200))(v19);
    v23 = *(v18 + 8);
    v36 = *v18;
    __p = v23;
    v39 = 0;
    v40 = 0;
    v38 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v38, *(v18 + 16), *(v18 + 24), (*(v18 + 24) - *(v18 + 16)) >> 2);
    v41 = v22;
    (*(*v19 + 208))(v19, v21, &v36);
    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    v24 = *(v18 + 40);
    while ((*(*a1 + 40))(a1, v24))
    {
      (*(*a1 + 32))(&v36, a1, v24);
      v50 = HIDWORD(v36);
      LODWORD(v33[0]) = v36;
      v49 = INFINITY;
      v48 = 2139095040;
      v25.n128_u32[0] = v36;
      if (*&v36 == INFINITY)
      {
        v25.n128_u32[0] = v48;
      }

      if (__p)
      {
        v38 = __p;
        operator delete(__p);
      }

      v35 = 0;
      (*(*a1 + 136))(a1, v24, v33, v25);
      if (v33[0])
      {
        v26 = (*(*v33[0] + 32))(v33[0]);
      }

      else
      {
        v26 = v33[1] + 48 * v35;
      }

      v27 = (*(*v19 + 200))(v19);
      v28 = *(v26 + 8);
      v36 = *v26;
      __p = v28;
      v39 = 0;
      v40 = 0;
      v38 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v38, *(v26 + 16), *(v26 + 24), (*(v26 + 24) - *(v26 + 16)) >> 2);
      v41 = v27;
      (*(*v19 + 208))(v19, v22, &v36);
      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      v24 = *(v26 + 40);
      if (v33[0])
      {
        (*(*v33[0] + 8))(v33[0]);
      }

      else if (v34)
      {
        --*v34;
      }

      v22 = v27;
    }

    (*(*a1 + 32))(&v36, a1, v24);
    v50 = HIDWORD(v36);
    LODWORD(v33[0]) = v36;
    v49 = INFINITY;
    v48 = 2139095040;
    v29.n128_u32[0] = v36;
    if (*&v36 == INFINITY)
    {
      v29.n128_u32[0] = v48;
    }

    if (__p)
    {
      v38 = __p;
      operator delete(__p);
    }

    (*(*a1 + 32))(&v30, a1, v24, v29);
    (*(*v19 + 184))(v19, v22, &v30);
    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    if (v42[0])
    {
      (*(*v42[0] + 40))(v42[0]);
    }

    else
    {
      ++v44;
    }
  }

  if (!(*(*v42[0] + 24))(v42[0]))
  {
    goto LABEL_19;
  }

  result = v42[0];
  if (v42[0])
  {
    return (*(*v42[0] + 8))(v42[0]);
  }

LABEL_51:
  if (v43)
  {
    --*v43;
  }

  return result;
}

void sub_1B50C3B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = *(v27 - 120);
  if (v29)
  {
    *(v27 - 112) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

void fst::ShortestPath<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  if (v4)
  {
    if (v4 == 1 && (*(a4 + 35) & 1) == 0)
    {
      v9 = 0;
      __p = 0;
      v11 = 0;
      LODWORD(v12) = 0;
      if (fst::SingleShortestPath<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(a1, a3, a4, &v12, &v9))
      {
        fst::SingleShortestPathBacktrace<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a1, a2, &v9, v12);
      }

      else
      {
        (*(*a2 + 192))(a2, 4, 4);
      }

      if (v9)
      {
        __p = v9;
        operator delete(v9);
      }
    }

    else
    {
      if ((*(a4 + 33) & 1) != 0 || (fst::ShortestDistance<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(a1, a3, a4), a3[1] - *a3 != 32) || fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::Member(*a3))
      {
        fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::VectorFst();
      }

      v8 = *(*a2 + 192);

      v8(a2, 4, 4);
    }
  }
}

void sub_1B50C41B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::~ImplToFst(&a24);
  a14 = &a28;
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v32 = *(v30 - 144);
  if (v32)
  {
    *(v30 - 136) = v32;
    operator delete(v32);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::~ImplToFst((v30 - 120));
  _Unwind_Resume(a1);
}

void fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 7;
  *(a1 + 12) = 0;
  *a1 = &unk_1F2CFB668;
  *(a1 + 24) = 0u;
  v3 = a1 + 48;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = (*(*a2 + 64))(a2, 0x4E00000000, 0);
  if ((v4 & 0x4000000000) == 0 && (*(*a2 + 24))(a2) != -1)
  {
    if ((v4 & 0x800000000) == 0)
    {
      if ((v4 & 0x200000000) == 0)
      {
        v6 = 0;
        v5[0] = v3;
        v5[1] = 0;
        v5[2] = 0;
        v5[3] = &v6;
        fst::DfsVisit<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::SccVisitor<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(a2, v5);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1B50C4B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v30 = *v28;
  if (*v28)
  {
    *(v26 + 56) = v30;
    operator delete(v30);
  }

  v31 = *v27;
  if (*v27)
  {
    *(v26 + 32) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v10 = *(a3 + 8) - *a3;
  if (v10)
  {
    v11 = v10 >> 2;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    bzero(*a3, 4 * v11);
  }

  v33 = 0;
  (*(*a1 + 128))(a1, &v31);
  while (1)
  {
    result = v31;
    if (!v31)
    {
      if (v33 >= v32)
      {
        return result;
      }

LABEL_11:
      v14 = v33;
      goto LABEL_12;
    }

    v13 = (*(*v31 + 16))(v31);
    result = v31;
    if (v13)
    {
      break;
    }

    if (!v31)
    {
      goto LABEL_11;
    }

    v14 = (*(*v31 + 24))();
LABEL_12:
    v30 = 0;
    (*(*a1 + 136))(a1, v14, v28);
    while (1)
    {
      if (!v28[0])
      {
        if (v30 >= v28[2])
        {
          goto LABEL_48;
        }

        goto LABEL_18;
      }

      if ((*(*v28[0] + 24))(v28[0]))
      {
        break;
      }

      if (v28[0])
      {
        v16 = (*(*v28[0] + 32))();
        goto LABEL_19;
      }

LABEL_18:
      v16 = v28[1] + 48 * v30;
LABEL_19:
      v17 = *(*a2 + 4 * v14);
      if (v17 == *(*a2 + 4 * *(v16 + 40)))
      {
        v18 = *a3;
        if (!a4)
        {
          goto LABEL_24;
        }

        *__p = 0u;
        v27 = 0u;
        v19 = fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::operator()(a4, v16 + 8, __p);
        if (__p[1])
        {
          *&v27 = __p[1];
          operator delete(__p[1]);
        }

        if (v19)
        {
LABEL_24:
          v20 = 1;
          goto LABEL_33;
        }

        if ((v18[v17] | 2) == 2)
        {
          v21 = *(v16 + 8);
          v22 = *(v16 + 12);
          *__p = v21;
          v36 = v22;
          v35 = 2139095040;
          v34 = INFINITY;
          if (v21 == INFINITY && v36 == v34 && *(v16 + 24) == *(v16 + 16) || (*__p = v21, v36 = v22, v35 = 0, v34 = 0.0, v21 == 0.0) && v36 == v34 && (v15 = *(v16 + 16), *(v16 + 24) == *(v16 + 16)))
          {
            v20 = 2;
          }

          else
          {
            v20 = 3;
          }

LABEL_33:
          v18[v17] = v20;
        }

        *a5 = 0;
      }

      v15.n128_u32[0] = *(v16 + 8);
      v23 = *(v16 + 12);
      LODWORD(__p[0]) = v15.n128_u32[0];
      v36 = v23;
      v35 = 2139095040;
      v34 = INFINITY;
      if (v15.n128_f32[0] != INFINITY || v36 != v34 || *(v16 + 24) != *(v16 + 16))
      {
        LODWORD(__p[0]) = v15.n128_u32[0];
        v36 = v23;
        v35 = 0;
        v34 = 0.0;
        if (v15.n128_f32[0] != 0.0 || (v15.n128_f32[0] = v36, v36 != v34) || *(v16 + 24) != *(v16 + 16))
        {
          *a6 = 0;
        }
      }

      if (v28[0])
      {
        (*(*v28[0] + 40))(v28[0], v15);
      }

      else
      {
        ++v30;
      }
    }

    if (v28[0])
    {
      (*(*v28[0] + 8))();
      goto LABEL_50;
    }

LABEL_48:
    if (v29)
    {
      --*v29;
    }

LABEL_50:
    if (v31)
    {
      (*(*v31 + 32))(v31);
    }

    else
    {
      ++v33;
    }
  }

  if (v31)
  {
    return (*(*v31 + 8))();
  }

  return result;
}

void sub_1B50C50D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20)
  {
    (*(*a20 + 8))(a20);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::__append(a1, a2 - v2);
  }
}

void fst::AutoQueue<int>::~AutoQueue(void *a1)
{
  fst::AutoQueue<int>::~AutoQueue(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::StateOrderQueue<int>::~StateOrderQueue(void *a1)
{
  *a1 = &unk_1F2CFB6E0;
  v2 = a1[3];
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void fst::StateOrderQueue<int>::~StateOrderQueue(void *a1)
{
  *a1 = &unk_1F2CFB6E0;
  v1 = a1[3];
  if (v1)
  {
    operator delete(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::StateOrderQueue<int>::Enqueue(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 16);
  v4 = *(result + 20);
  if (v3 > v4)
  {
    *(result + 20) = a2;
LABEL_3:
    *(result + 16) = a2;
    goto LABEL_7;
  }

  if (v4 >= a2)
  {
    if (v3 > a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(result + 20) = a2;
  }

LABEL_7:
  v5 = a2;
  if (*(result + 32) <= a2)
  {
    do
    {
      v6 = 0;
      result = std::vector<BOOL>::push_back(v2 + 24, &v6);
    }

    while (*(v2 + 32) <= v5);
  }

  *(*(v2 + 24) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v5;
  return result;
}

uint64_t fst::StateOrderQueue<int>::Dequeue(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 20);
  v3 = *(result + 16);
  *(v1 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v3);
  if (v3 <= v2)
  {
    v4 = v2 - v3 + 1;
    v5 = v3 + 1;
    do
    {
      if ((*(v1 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
      {
        break;
      }

      ++v3;
      *(result + 16) = v5++;
      --v4;
    }

    while (v4);
  }

  return result;
}

double fst::StateOrderQueue<int>::Clear(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = *(a1 + 16);
  if (v2 <= v1)
  {
    v3 = *(a1 + 24);
    v4 = v1 - v2 + 1;
    do
    {
      *(v3 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v2);
      ++v2;
      --v4;
    }

    while (v4);
  }

  result = NAN;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  return result;
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(uint64_t a1)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = &unk_1F2CFB748;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = 0;
  v1 = a1 + 24;
  v2 = &v3;
  fst::DfsVisit<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::TopOrderVisitor<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>();
}

void sub_1B50C5654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v21 = v18[6];
  if (v21)
  {
    v18[7] = v21;
    operator delete(v21);
  }

  v22 = *v19;
  if (*v19)
  {
    v18[4] = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_1B50C5E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void *fst::TopOrderQueue<int>::~TopOrderQueue(void *a1)
{
  *a1 = &unk_1F2CFB748;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void fst::TopOrderQueue<int>::~TopOrderQueue(void *a1)
{
  *a1 = &unk_1F2CFB748;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::TopOrderQueue<int>::Enqueue_(uint64_t result, int a2)
{
  v2 = *(result + 16);
  v3 = *(result + 20);
  v4 = *(result + 24);
  v5 = *(v4 + 4 * a2);
  if (v2 <= v3)
  {
    if (v5 > v3)
    {
      *(result + 20) = v5;
      goto LABEL_7;
    }

    if (v5 >= v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(result + 20) = v5;
  }

  *(result + 16) = v5;
LABEL_7:
  *(*(result + 48) + 4 * *(v4 + 4 * a2)) = a2;
  return result;
}

uint64_t fst::TopOrderQueue<int>::Dequeue_(uint64_t result)
{
  v1 = *(result + 48);
  *(v1 + 4 * *(result + 16)) = -1;
  v2 = *(result + 20);
  v3 = *(result + 16);
  if (v3 <= v2)
  {
    v4 = v2 - v3 + 1;
    v5 = v3 + 1;
    v6 = (v1 + 4 * v3);
    do
    {
      v7 = *v6++;
      if (v7 != -1)
      {
        break;
      }

      *(result + 16) = v5++;
      --v4;
    }

    while (v4);
  }

  return result;
}

double fst::TopOrderQueue<int>::Clear_(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= *(a1 + 20))
  {
    v2 = v1 - 1;
    v3 = (*(a1 + 48) + 4 * v1);
    do
    {
      *v3++ = -1;
      ++v2;
    }

    while (v2 < *(a1 + 20));
  }

  result = NAN;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  return result;
}

void sub_1B50C6140(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderVisitor<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::FinishVisit(uint64_t **a1)
{
  if (*a1[1])
  {
    (*a1)[1] = **a1;
    v2 = a1[2];
    if (v2[1] == *v2)
    {
      goto LABEL_12;
    }

    v3 = 0;
    do
    {
      std::vector<int>::push_back[abi:ne200100](*a1, &fst::kNoStateId);
      ++v3;
      v2 = a1[2];
      v4 = (v2[1] - *v2) >> 2;
    }

    while (v4 > v3);
    if (!v4)
    {
LABEL_12:
      v9 = *v2;
      if (*v2)
      {
        v2[1] = v9;
        operator delete(v9);
      }

      JUMPOUT(0x1B8C85350);
    }

    v5 = 0;
    v6 = **a1;
    v7 = (v2[1] - 4);
    do
    {
      v8 = *v7--;
      *(v6 + 4 * v8) = v5++;
    }

    while (v4 != v5);
  }

  else
  {
    v2 = a1[2];
  }

  if (v2)
  {
    goto LABEL_12;
  }
}

void fst::LifoQueue<int>::~LifoQueue(uint64_t a1)
{
  std::deque<int>::~deque[abi:ne200100]((a1 + 16));

  JUMPOUT(0x1B8C85350);
}

void fst::LifoQueue<int>::Clear_(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  a1[7] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[4];
      v2 = (a1[3] + 8);
      a1[3] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 1024;
  }

  a1[6] = v6;
}

uint64_t std::deque<int>::~deque[abi:ne200100](void *a1)
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
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::~__split_buffer(a1);
}

const void **std::deque<int>::push_front(const void **result, _DWORD *a2)
{
  v3 = result;
  v4 = result[4];
  if (!v4)
  {
    result = std::deque<int>::__add_front_capacity(result);
    v4 = v3[4];
  }

  v5 = v3[1];
  v6 = &v5[8 * (v4 >> 10)];
  if (v3[2] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 4 * (v4 & 0x3FF);
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  *(v7 - 4) = *a2;
  v8 = v3[5] + 1;
  v3[4] = (v4 - 1);
  v3[5] = v8;
  return result;
}

const void **std::deque<int>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 7) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x400)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1, v10);
  }

  *(a1 + 32) = v5 + 1024;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<int *>::emplace_front<int *&>(a1, v11);
}

void sub_1B50C6708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **std::__split_buffer<int *>::emplace_front<int *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t std::deque<int>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x400)
  {
    a2 = 1;
  }

  if (v2 < 0x800)
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
    *(a1 + 32) -= 1024;
  }

  return v4 ^ 1u;
}

void *std::vector<fst::QueueType>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B50C6A24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a2 + *(a2 + 4);
  v5 = *a3;
  v6 = *a3 + *(a3 + 4);
  if (v4 < v6)
  {
    return 1;
  }

  if (v4 <= v6)
  {
    if (v3 >= v5)
    {
      if (v3 > v5)
      {
        return 0;
      }

      v8 = *(a2 + 8);
      v9 = *(a2 + 16) - v8;
      v10 = *(a3 + 8);
      v11 = (*(a3 + 16) - v10) >> 2;
      if ((v9 >> 2) > v11)
      {
        return 0;
      }

      if ((v9 >> 2) >= v11)
      {
        if ((v9 >> 2) >= 1)
        {
          v12 = (v9 >> 2) & 0x7FFFFFFF;
          while (1)
          {
            v14 = *v8++;
            v13 = v14;
            v15 = *v10++;
            v16 = v13 <= v15;
            if (v13 < v15)
            {
              break;
            }

            if (!v16)
            {
              return 1;
            }

            result = 0;
            if (!--v12)
            {
              return result;
            }
          }
        }

        return 0;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t fst::TopOrderQueue<int>::TopOrderQueue(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = &unk_1F2CFB748;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 24, *a2, a2[1], (a2[1] - *a2) >> 2);
  std::vector<int>::vector[abi:ne200100]((a1 + 48), (a2[1] - *a2) >> 2);
  return a1;
}

void sub_1B50C6B6C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void *fst::ShortestFirstQueue<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,false>::~ShortestFirstQueue(void *a1)
{
  *a1 = &unk_1F2CFB848;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,false>::~Heap(a1 + 2);
  return a1;
}

void fst::ShortestFirstQueue<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,false>::~ShortestFirstQueue(void *a1)
{
  *a1 = &unk_1F2CFB848;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,false>::~Heap(a1 + 2);

  JUMPOUT(0x1B8C85350);
}

void *fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,false>::~Heap(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    a1[3] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,false>::Insert(uint64_t a1, int *a2)
{
  v4 = *(a1 + 88);
  v5 = (a1 + 88);
  v8 = *(a1 + 64);
  v6 = (a1 + 64);
  v7 = v8;
  if (v4 >= (*(v5 - 2) - v8) >> 2)
  {
    std::vector<int>::push_back[abi:ne200100](v6, a2);
    std::vector<int>::push_back[abi:ne200100]((a1 + 16), v5);
    std::vector<int>::push_back[abi:ne200100]((a1 + 40), v5);
    LODWORD(v9) = *(a1 + 88);
  }

  else
  {
    *(v7 + 4 * v4) = *a2;
    v9 = *(a1 + 88);
    *(*(a1 + 16) + 4 * *(*(a1 + 40) + 4 * v9)) = v9;
  }

  *(a1 + 88) = v9 + 1;

  return fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,false>::Insert(a1, a2, v9);
}

uint64_t fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,false>::Insert(uint64_t a1, int *a2, int a3)
{
  v3 = a3;
  if (a3 >= 1)
  {
    v6 = *(a1 + 64);
    while (1)
    {
      v7 = v3 - 1;
      v8 = (v3 - 1) >> 1;
      if (fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::operator()(a1 + 8, **a1 + 32 * *(v6 + 4 * v8), **a1 + 32 * *a2))
      {
        break;
      }

      v9 = *(a1 + 40);
      v10 = *(v9 + 4 * v3);
      v11 = *(v9 + 4 * v8);
      *(v9 + 4 * v3) = v11;
      v12 = *(a1 + 16);
      *(v12 + 4 * v11) = v3;
      *(v9 + 4 * v8) = v10;
      *(v12 + 4 * v10) = v8;
      v6 = *(a1 + 64);
      LODWORD(v10) = *(v6 + 4 * v3);
      *(v6 + 4 * v3) = *(v6 + 4 * v8);
      *(v6 + 4 * v8) = v10;
      v3 = v7 >> 1;
      if (v7 <= 1)
      {
        return *(*(a1 + 40) + 4 * v8);
      }
    }
  }

  v8 = v3;
  return *(*(a1 + 40) + 4 * v8);
}

uint64_t fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,false>::Pop(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *v1;
  v3 = *(a1 + 88) - 1;
  v4 = *(a1 + 40);
  v5 = *v4;
  v6 = v4[v3];
  *v4 = v6;
  v7 = *(a1 + 16);
  *(v7 + 4 * v6) = 0;
  v4[v3] = v5;
  *(v7 + 4 * v5) = v3;
  LODWORD(v4) = *v1;
  *v1 = v1[v3];
  v1[v3] = v4;
  --*(a1 + 88);
  fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,false>::Heapify(a1, 0);
  return v2;
}

uint64_t fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,false>::Heapify(uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = (2 * a2) | 1u;
    if (v4 >= *(v3 + 88) || (result = fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::operator()(v3 + 8, **v3 + 32 * *(*(v3 + 64) + 4 * v4), **v3 + 32 * *(*(v3 + 64) + 4 * a2)), (result & 1) == 0))
    {
      v4 = a2;
    }

    v5 = 2 * a2 + 2;
    if (v5 < *(v3 + 88))
    {
      result = fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::operator()(v3 + 8, **v3 + 32 * *(*(v3 + 64) + 4 * v5), **v3 + 32 * *(*(v3 + 64) + 4 * v4));
      if (result)
      {
        v4 = v5;
      }

      else
      {
        v4 = v4;
      }
    }

    if (v4 == a2)
    {
      break;
    }

    v6 = *(v3 + 40);
    v7 = *(v6 + 4 * a2);
    v8 = *(v6 + 4 * v4);
    *(v6 + 4 * a2) = v8;
    v9 = *(v3 + 16);
    *(v9 + 4 * v8) = a2;
    *(v6 + 4 * v4) = v7;
    *(v9 + 4 * v7) = v4;
    v10 = *(v3 + 64);
    LODWORD(v7) = *(v10 + 4 * a2);
    *(v10 + 4 * a2) = *(v10 + 4 * v4);
    *(v10 + 4 * v4) = v7;
    a2 = v4;
  }

  return result;
}

void fst::FifoQueue<int>::~FifoQueue(uint64_t a1)
{
  std::deque<int>::~deque[abi:ne200100]((a1 + 16));

  JUMPOUT(0x1B8C85350);
}

void fst::FifoQueue<int>::Clear_(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  a1[7] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[4];
      v2 = (a1[3] + 8);
      a1[3] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 1024;
  }

  a1[6] = v6;
}

uint64_t std::deque<int>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 7) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x400)
  {
    a2 = 1;
  }

  if (v5 < 0x800)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *fst::SccQueue<int,fst::QueueBase<int>>::~SccQueue(void *a1)
{
  *a1 = &unk_1F2CFB938;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return a1;
}

void fst::SccQueue<int,fst::QueueBase<int>>::~SccQueue(void *a1)
{
  *a1 = &unk_1F2CFB938;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::SccQueue<int,fst::QueueBase<int>>::Update_(uint64_t a1, int a2)
{
  result = *(**(a1 + 16) + 8 * *(**(a1 + 24) + 4 * a2));
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t fst::SccQueue<int,fst::QueueBase<int>>::Head(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 <= *(a1 + 36))
  {
    while (1)
    {
      v4 = *(**(a1 + 16) + 8 * v2);
      if (v4)
      {
        v5 = (*(*v4 + 48))(v4);
        v3 = *(a1 + 32);
        if (v5)
        {
          goto LABEL_10;
        }

        v6 = v3;
        if (*(**(a1 + 16) + 8 * v3))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v6 = v2;
        v3 = v2;
      }

      v7 = *(a1 + 40);
      if (v6 < (*(a1 + 48) - v7) >> 2 && *(v7 + 4 * v6) != -1)
      {
        goto LABEL_11;
      }

LABEL_10:
      v2 = v3 + 1;
      *(a1 + 32) = v3 + 1;
      if (v3++ >= *(a1 + 36))
      {
        goto LABEL_11;
      }
    }
  }

  v3 = *(a1 + 32);
LABEL_11:
  v9 = *(**(a1 + 16) + 8 * v3);
  if (!v9)
  {
    return *(*(a1 + 40) + 4 * v3);
  }

  v10 = *(*v9 + 16);

  return v10();
}

void fst::SccQueue<int,fst::QueueBase<int>>::Enqueue(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  v6 = **(a1 + 24);
  v7 = *(v6 + 4 * a2);
  if (v4 > v5)
  {
    *(a1 + 36) = v7;
LABEL_3:
    *(a1 + 32) = v7;
    goto LABEL_7;
  }

  if (v7 <= v5)
  {
    if (v7 < v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a1 + 36) = v7;
  }

LABEL_7:
  v8 = *(v6 + 4 * a2);
  v9 = *(**(a1 + 16) + 8 * v8);
  if (v9)
  {
    v10 = *(*v9 + 24);

    v10();
  }

  else
  {
    for (i = *(a1 + 40); v8 >= (*(a1 + 48) - i) >> 2; v8 = *(**(a1 + 24) + 4 * a2))
    {
      std::vector<int>::push_back[abi:ne200100]((a1 + 40), &fst::kNoStateId);
      i = *(a1 + 40);
    }

    *(i + 4 * v8) = a2;
  }
}

uint64_t fst::SccQueue<int,fst::QueueBase<int>>::Dequeue(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(**(a1 + 16) + 8 * v2);
  if (result)
  {
    return (*(*result + 32))();
  }

  v5 = a1 + 40;
  v4 = *(a1 + 40);
  if (v2 < (*(v5 + 8) - v4) >> 2)
  {
    *(v4 + 4 * v2) = -1;
  }

  return result;
}

uint64_t fst::SccQueue<int,fst::QueueBase<int>>::Empty(uint64_t a1)
{
  v1 = *(a1 + 36);
  v2 = *(a1 + 32);
  if (v2 < v1)
  {
    return 0;
  }

  if (v2 > v1)
  {
    return 1;
  }

  v4 = *(**(a1 + 16) + 8 * v2);
  if (v4)
  {
    return (*(*v4 + 48))(*(**(a1 + 16) + 8 * v2));
  }

  v5 = *(a1 + 40);
  if (v2 >= (*(a1 + 48) - v5) >> 2)
  {
    return 1;
  }

  return *(v5 + 4 * v2) == -1;
}

double fst::SccQueue<int,fst::QueueBase<int>>::Clear(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 <= *(a1 + 36))
  {
    do
    {
      v3 = *(**(a1 + 16) + 8 * v2);
      if (v3)
      {
        (*(*v3 + 56))(v3);
      }

      else
      {
        v4 = *(a1 + 40);
        if (v2 < (*(a1 + 48) - v4) >> 2)
        {
          *(v4 + 4 * v2) = -1;
        }
      }
    }

    while (v2++ < *(a1 + 36));
  }

  result = NAN;
  *(a1 + 32) = 0xFFFFFFFF00000000;
  return result;
}

uint64_t fst::SingleShortestPath<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD *a4, void *a5)
{
  a5[1] = *a5;
  *a4 = -1;
  if ((*(*a1 + 24))(a1) == -1)
  {
    return 1;
  }

  memset(v119, 0, sizeof(v119));
  v10 = *a3;
  v11 = *(a3 + 3);
  if (v11 == -1)
  {
    v11 = (*(*a1 + 24))(a1);
  }

  v115 = vneg_f32(0x7F0000007FLL);
  v117 = 0;
  v118 = 0;
  v116 = 0;
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::clear[abi:ne200100](a2);
  (*(**(v10 + 16) + 56))(*(v10 + 16));
  if (a3[3] != 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v16 = fst::LogMessage::LogMessage(&v111, __p);
    v17 = fst::cerr(v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "SingleShortestPath: for nshortest > 1, use ShortestPath", 55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " instead", 8);
LABEL_18:
    fst::LogMessage::~LogMessage(&v111);
    if (SBYTE7(v106) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_20;
  }

  v12 = *(a3 + 11);
  LODWORD(__p[0]) = *(a3 + 10);
  v111.i32[0] = v12;
  LODWORD(v108) = 2139095040;
  LODWORD(v101) = 2139095040;
  if (*__p != INFINITY || v111.f32[0] != *&v101 || a3[7] != a3[6] || *(a3 + 18) != -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v13 = fst::LogMessage::LogMessage(&v111, __p);
    v14 = fst::cerr(v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "SingleShortestPath: weight and state thresholds not applicable", 62);
    goto LABEL_18;
  }

  v99 = v10;
  if (v11 > ((a2[1] - *a2) >> 5))
  {
    v20 = vneg_f32(0x7F0000007FLL);
    do
    {
      __p[0] = v20;
      v106 = 0uLL;
      __p[1] = 0;
      std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100](a2, __p);
      if (__p[1])
      {
        *&v106 = __p[1];
        operator delete(__p[1]);
      }

      LOBYTE(__p[0]) = 0;
      std::vector<BOOL>::push_back(v119, __p);
      LODWORD(__p[0]) = -1;
      __p[1] = -1;
      std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](a5, __p);
    }

    while (v11 > ((a2[1] - *a2) >> 5));
  }

  *__p = 0u;
  v106 = 0u;
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100](a2, __p);
  if (__p[1])
  {
    *&v106 = __p[1];
    operator delete(__p[1]);
  }

  LODWORD(__p[0]) = -1;
  __p[1] = -1;
  std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](a5, __p);
  (*(**(v10 + 16) + 24))(*(v10 + 16), v11);
  LOBYTE(__p[0]) = 1;
  std::vector<BOOL>::push_back(v119, __p);
  v21 = vneg_f32(0x7F0000007FLL);
  do
  {
    if ((*(**(v10 + 16) + 48))(*(v10 + 16)))
    {
      goto LABEL_185;
    }

    v100 = (*(**(v10 + 16) + 16))(*(v10 + 16));
    (*(**(v10 + 16) + 32))(*(v10 + 16));
    *(v119[0] + ((v100 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v100);
    v22 = *a2 + 32 * v100;
    v111 = *v22;
    v113 = 0;
    v114 = 0;
    v112 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v112, *(v22 + 8), *(v22 + 16), (*(v22 + 16) - *(v22 + 8)) >> 2);
    (*(*a1 + 32))(__p, a1, v100);
    LODWORD(v101) = HIDWORD(__p[0]);
    LODWORD(v108) = __p[0];
    v123 = INFINITY;
    v122 = INFINITY;
    v23.n128_u32[0] = __p[0];
    if (*__p == INFINITY)
    {
      v23.n128_u32[0] = v101;
      v25 = __p[1];
      v24 = *&v101 != v122 || v106 != __p[1];
    }

    else
    {
      v24 = 1;
      v25 = __p[1];
    }

    if (v25)
    {
      *&v106 = v25;
      operator delete(v25);
    }

    if (!v24)
    {
      goto LABEL_90;
    }

    (*(*a1 + 32))(&v108, a1, v100, v23);
    fst::Times<fst::LatticeWeightTpl<float>,int>(&v111, &v108, __p);
    if (*(&v108 + 1))
    {
      v109 = *(&v108 + 1);
      operator delete(*(&v108 + 1));
    }

    if ((v115.f32[0] + v115.f32[1]) < (*__p + *(__p + 1)))
    {
LABEL_46:
      v26 = &v115;
      goto LABEL_49;
    }

    if ((v115.f32[0] + v115.f32[1]) > (*__p + *(__p + 1)))
    {
      goto LABEL_48;
    }

    if (v115.f32[0] < *__p)
    {
      goto LABEL_46;
    }

    if (v115.f32[0] > *__p)
    {
      goto LABEL_48;
    }

    v31 = v116;
    v32 = (v117 - v116) >> 2;
    v33 = __p[1];
    v34 = (v106 - __p[1]) >> 2;
    if (v32 > v34)
    {
      goto LABEL_48;
    }

    v26 = &v115;
    if (v32 >= 1 && v32 >= v34)
    {
      v35 = (((v117 - v116) >> 2) & 0x7FFFFFFF) - 1;
      while (1)
      {
        v37 = *v31++;
        v36 = v37;
        v39 = *v33++;
        v38 = v39;
        if (v36 < v39)
        {
          break;
        }

        v40 = v36 > v38 || v35-- == 0;
        v26 = &v115;
        if (v40)
        {
          goto LABEL_49;
        }
      }

LABEL_48:
      v26 = __p;
    }

LABEL_49:
    v27 = v26->i32[1];
    LODWORD(v108) = v26->i32[0];
    DWORD1(v108) = v27;
    v109 = 0;
    v110 = 0;
    *(&v108 + 1) = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v108 + 8, *&v26[1], *&v26[2], (*&v26[2] - *&v26[1]) >> 2);
    v123 = v115.f32[1];
    LODWORD(v101) = v115.i32[0];
    v121 = *(&v108 + 1);
    v122 = *&v108;
    if (v115.f32[0] == *&v108)
    {
      v29 = *(&v108 + 1);
      v28 = v123 != v121 || (v117 - v116) != &v109[-*(&v108 + 1)] || memcmp(v116, *(&v108 + 1), v117 - v116) != 0;
    }

    else
    {
      v28 = 1;
      v29 = *(&v108 + 1);
    }

    if (v29)
    {
      v109 = v29;
      operator delete(v29);
    }

    if (v28)
    {
      if ((v115.f32[0] + v115.f32[1]) >= (*__p + *(__p + 1)))
      {
        if ((v115.f32[0] + v115.f32[1]) <= (*__p + *(__p + 1)))
        {
          if (v115.f32[0] < *__p)
          {
            v30 = &v115;
            goto LABEL_77;
          }

          if (v115.f32[0] <= *__p)
          {
            v89 = v116;
            v90 = (v117 - v116) >> 2;
            v91 = __p[1];
            v92 = (v106 - __p[1]) >> 2;
            if (v90 <= v92)
            {
              v30 = &v115;
              if (v90 < 1 || v90 < v92)
              {
                goto LABEL_77;
              }

              v93 = (((v117 - v116) >> 2) & 0x7FFFFFFF) - 1;
              while (1)
              {
                v95 = *v89++;
                v94 = v95;
                v97 = *v91++;
                v96 = v97;
                if (v94 < v97)
                {
                  break;
                }

                v98 = v94 > v96 || v93-- == 0;
                v30 = &v115;
                if (v98)
                {
                  goto LABEL_77;
                }
              }
            }
          }
        }

        v30 = __p;
      }

      else
      {
        v30 = &v115;
      }

LABEL_77:
      v41 = v30->i32[1];
      LODWORD(v108) = v30->i32[0];
      DWORD1(v108) = v41;
      v109 = 0;
      v110 = 0;
      *(&v108 + 1) = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v108 + 8, *&v30[1], *&v30[2], (*&v30[2] - *&v30[1]) >> 2);
      v115 = v108;
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v116, *(&v108 + 1), v109, &v109[-*(&v108 + 1)] >> 2);
      if (*(&v108 + 1))
      {
        v109 = *(&v108 + 1);
        operator delete(*(&v108 + 1));
      }

      *a4 = v100;
    }

    v42 = fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::Member(&v115);
    v43 = v42;
    v44 = *(a3 + 34);
    if (v44)
    {
      v45 = 5;
    }

    else
    {
      v45 = 0;
    }

    if (v42)
    {
      v46 = v45;
    }

    else
    {
      v46 = 1;
    }

    if (__p[1])
    {
      *&v106 = __p[1];
      operator delete(__p[1]);
    }

    if (!v43 || (v44 & 1) != 0)
    {
      goto LABEL_168;
    }

LABEL_90:
    v107 = 0;
    (*(*a1 + 136))(a1, v100, __p, v23);
    while (1)
    {
      if (!__p[0])
      {
        if (v107 >= v106)
        {
LABEL_160:
          v46 = 0;
          goto LABEL_164;
        }

LABEL_96:
        v47 = (__p[1] + 48 * v107);
        goto LABEL_97;
      }

      if ((*(*__p[0] + 24))(__p[0]))
      {
        goto LABEL_160;
      }

      if (!__p[0])
      {
        goto LABEL_96;
      }

      v47 = (*(*__p[0] + 32))(__p[0]);
LABEL_97:
      while (1)
      {
        v48 = *a2;
        v49 = v47[5].i32[0];
        if (v49 < (a2[1] - *a2) >> 5)
        {
          break;
        }

        v108 = v21;
        v109 = 0;
        v110 = 0;
        std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100](a2, &v108);
        if (*(&v108 + 1))
        {
          v109 = *(&v108 + 1);
          operator delete(*(&v108 + 1));
        }

        LOBYTE(v108) = 0;
        std::vector<BOOL>::push_back(v119, &v108);
        LODWORD(v108) = -1;
        *(&v108 + 1) = -1;
        std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](a5, &v108);
      }

      fst::Times<fst::LatticeWeightTpl<float>,int>(&v111, v47 + 1, &v108);
      v50 = v48 + 32 * v49;
      v51 = *v50;
      v52 = *v50 + *(v50 + 4);
      v53 = v50;
      if (v52 >= (*&v108 + *(&v108 + 1)))
      {
        if (v52 > (*&v108 + *(&v108 + 1)))
        {
          goto LABEL_103;
        }

        v53 = v50;
        if (v51 >= *&v108)
        {
          if (v51 <= *&v108)
          {
            v62 = *(v50 + 8);
            v63 = *(v50 + 16) - v62;
            v64 = v63 >> 2;
            v65 = *(&v108 + 1);
            v66 = &v109[-*(&v108 + 1)] >> 2;
            if ((v63 >> 2) <= v66)
            {
              v67 = v64 < 1 || v64 < v66;
              v53 = v50;
              if (v67)
              {
                goto LABEL_105;
              }

              v68 = ((v63 >> 2) & 0x7FFFFFFF) - 1;
              while (1)
              {
                v70 = *v62++;
                v69 = v70;
                v72 = *v65++;
                v71 = v72;
                if (v69 < v72)
                {
                  break;
                }

                if (v69 > v71 || v68-- == 0)
                {
                  v53 = v50;
                  goto LABEL_105;
                }
              }
            }
          }

LABEL_103:
          v53 = &v108;
        }
      }

LABEL_105:
      v101 = *v53;
      v103 = 0;
      v104 = 0;
      v102 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v102, v53[1], v53[2], (v53[2] - v53[1]) >> 2);
      v123 = *v50;
      v122 = *(v50 + 4);
      v120 = *(&v101 + 1);
      v121 = *&v101;
      v54.n128_f32[0] = v123;
      if (v123 == *&v101)
      {
        v54.n128_f32[0] = v122;
        v56 = v102;
        v55 = v122 != v120 || (v57 = *(v50 + 8), v58 = *(v50 + 16) - v57, v58 != v103 - v102) || memcmp(v57, v102, v58) != 0;
      }

      else
      {
        v55 = 1;
        v56 = v102;
      }

      if (v56)
      {
        v103 = v56;
        operator delete(v56);
      }

      if (v55)
      {
        break;
      }

LABEL_143:
      if (*(&v108 + 1))
      {
        v109 = *(&v108 + 1);
        operator delete(*(&v108 + 1));
      }

      if (__p[0])
      {
        (*(*__p[0] + 40))(__p[0], v54);
      }

      else
      {
        ++v107;
      }
    }

    v59 = *v50;
    v60 = *v50 + *(v50 + 4);
    v61 = v50;
    if (v60 >= (*&v108 + *(&v108 + 1)))
    {
      if (v60 > (*&v108 + *(&v108 + 1)))
      {
        goto LABEL_116;
      }

      v61 = v50;
      if (v59 >= *&v108)
      {
        if (v59 <= *&v108)
        {
          v78 = *(v50 + 8);
          v79 = *(v50 + 16) - v78;
          v80 = v79 >> 2;
          v81 = *(&v108 + 1);
          v82 = &v109[-*(&v108 + 1)] >> 2;
          if ((v79 >> 2) <= v82)
          {
            v61 = v50;
            if (v80 < 1)
            {
              goto LABEL_132;
            }

            v61 = v50;
            if (v80 < v82)
            {
              goto LABEL_132;
            }

            v83 = ((v79 >> 2) & 0x7FFFFFFF) - 1;
            while (1)
            {
              v85 = *v78++;
              v84 = v85;
              v87 = *v81++;
              v86 = v87;
              if (v84 < v87)
              {
                break;
              }

              if (v84 > v86 || v83-- == 0)
              {
                v61 = v50;
                goto LABEL_132;
              }
            }
          }
        }

LABEL_116:
        v61 = &v108;
      }
    }

LABEL_132:
    v101 = *v61;
    v103 = 0;
    v104 = 0;
    v102 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v102, v61[1], v61[2], (v61[2] - v61[1]) >> 2);
    *v50 = v101;
    if (v50 != &v101)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v50 + 8), v102, v103, (v103 - v102) >> 2);
    }

    if (v102)
    {
      v103 = v102;
      operator delete(v102);
    }

    if (fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::Member(v50))
    {
      if (__p[0])
      {
        v74 = (*(*__p[0] + 48))(__p[0]);
      }

      else
      {
        v74 = v107;
      }

      v75 = v47[5].i32[0];
      v76 = *a5 + 16 * v75;
      *v76 = v100;
      *(v76 + 8) = v74;
      v77 = **(v99 + 16);
      if ((*(v119[0] + ((v75 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v75))
      {
        (*(v77 + 40))();
      }

      else
      {
        (*(v77 + 24))();
        *(v119[0] + ((v47[5].i32[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47[5].i32[0];
      }

      goto LABEL_143;
    }

    if (*(&v108 + 1))
    {
      v109 = *(&v108 + 1);
      operator delete(*(&v108 + 1));
    }

    v46 = 1;
LABEL_164:
    if (__p[0])
    {
      (*(*__p[0] + 8))(__p[0]);
    }

    else if (*(&v106 + 1))
    {
      --**(&v106 + 1);
    }

LABEL_168:
    if (v112)
    {
      v113 = v112;
      operator delete(v112);
    }

    v10 = v99;
  }

  while (!v46);
  if (v46 != 5)
  {
LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

LABEL_185:
  v15 = 1;
LABEL_21:
  if (v116)
  {
    v117 = v116;
    operator delete(v116);
  }

  if (v119[0])
  {
    operator delete(v119[0]);
  }

  return v15;
}

void sub_1B50C84F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v35 = *(v33 - 144);
  if (v35)
  {
    operator delete(v35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SingleShortestPathBacktrace<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  (*(*a2 + 224))(a2);
  v8 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v8);
  v9 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v9);
  if (a4 != -1)
  {
    v10 = -1;
    v11 = a4;
    LODWORD(v12) = -1;
    while (1)
    {
      v13 = v12;
      v12 = (*(*a2 + 200))(a2);
      if (v10 == -1)
      {
        (*(*a1 + 32))(&v27, a1, a4);
        (*(*a2 + 184))(a2, v12, &v27);
        if (__p)
        {
          v29 = __p;
          operator delete(__p);
        }

        goto LABEL_18;
      }

      v26 = 0;
      (*(*a1 + 136))(a1, v11, v24);
      v14 = *(*a3 + 16 * v10 + 8);
      if (!v24[0])
      {
        break;
      }

      (*(*v24[0] + 64))(v24[0], v14);
      if (!v24[0])
      {
        v14 = v26;
        goto LABEL_11;
      }

      v15 = (*(*v24[0] + 32))(v24[0]);
LABEL_12:
      v19[0] = *v15;
      v19[1] = v15[1];
      v21 = 0;
      v22 = 0;
      v20 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v20, v15[2], v15[3], (v15[3] - v15[2]) >> 2);
      v23 = v13;
      (*(*a2 + 208))(a2, v12, v19);
      if (v20)
      {
        v21 = v20;
        operator delete(v20);
      }

      if (v24[0])
      {
        (*(*v24[0] + 8))(v24[0]);
      }

      else if (v25)
      {
        --*v25;
      }

LABEL_18:
      v10 = v11;
      v11 = *(*a3 + 16 * v11);
      if (v11 == -1)
      {
        goto LABEL_21;
      }
    }

    v26 = *(*a3 + 16 * v10 + 8);
LABEL_11:
    v15 = (v24[1] + 48 * v14);
    goto LABEL_12;
  }

  v12 = 0xFFFFFFFFLL;
LABEL_21:
  (*(*a2 + 176))(a2, v12);
  if ((*(*a1 + 64))(a1, 4, 0))
  {
    (*(*a2 + 192))(a2, 4, 4);
  }

  v16 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v17 = fst::ShortestPathProperties(v16, 0);
  return (*(*a2 + 192))(a2, v17, 0x3FFFFFFF0007);
}

void sub_1B50C8B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::Type()
{
  {
    operator new();
  }

  return fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::Type(void)::type;
}

void sub_1B50C8CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  MEMORY[0x1B8C85350](v21, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t fst::ShortestDistance<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = *a3;
  v11 = *(a3 + 16);
  v12 = *(a3 + 20);
  v13 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  memset(v17, 0, 29);
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::clear[abi:ne200100](a2);
  fst::ShortestDistanceState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::ShortestDistance(v10, *(a3 + 12));
  if (BYTE12(v17[1]) == 1)
  {
    std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::clear[abi:ne200100](a2);
    v6 = vneg_f32(0x3F0000003FLL);
    v8 = 0;
    v9 = 0;
    __p = 0;
    std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::resize(a2, 1uLL, &v6);
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }

  return fst::ShortestDistanceState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ShortestDistanceState(v10);
}

void sub_1B50C8E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  fst::ShortestDistanceState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ShortestDistanceState(&a14);
  _Unwind_Resume(a1);
}

BOOL fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::Member(uint64_t a1)
{
  result = fst::LatticeWeightTpl<float>::Member(a1);
  if (result)
  {
    return *a1 != INFINITY || *(a1 + 4) != INFINITY || *(a1 + 8) == *(a1 + 16);
  }

  return result;
}

uint64_t fst::Reverse<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(uint64_t a1, uint64_t *a2, char a3)
{
  (*(*a2 + 224))(a2);
  v6 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v6);
  v7 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v7);
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v8 = fst::CountStates<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a1);
    (*(*a2 + 248))(a2, (v8 + 1));
  }

  v9 = (*(*a1 + 24))(a1);
  v76 = 0;
  v37 = v9;
  if (a3)
  {
LABEL_40:
    v10 = (*(*a2 + 200))(a2);
    v20 = 1;
    goto LABEL_41;
  }

  LODWORD(v67) = 0;
  (*(*a1 + 128))(a1, &v65);
  v10 = 0xFFFFFFFFLL;
  while (1)
  {
    if (v65)
    {
      v11 = (*(*v65 + 16))(v65);
      v12 = v65;
      if (v11)
      {
        goto LABEL_30;
      }

      if (v65)
      {
        v13 = (*(*v65 + 24))(v65);
        goto LABEL_11;
      }
    }

    else if (v67 >= v66)
    {
      goto LABEL_32;
    }

    v13 = v67;
LABEL_11:
    (*(*a1 + 32))(&v70, a1, v13);
    LODWORD(v51) = HIDWORD(v70);
    LODWORD(v57) = v70;
    v48.i32[0] = 2139095040;
    LODWORD(v45) = 2139095040;
    v14.n128_u32[0] = v70;
    if (*&v70 == INFINITY)
    {
      v14.n128_u32[0] = v51;
      v15 = v71;
      if (*&v51 == *&v45)
      {
        v16 = v72 == v71;
        if (!v71)
        {
          goto LABEL_15;
        }

LABEL_14:
        v72 = v15;
        operator delete(v15);
        goto LABEL_15;
      }

      v16 = 0;
      if (v71)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v16 = 0;
      v15 = v71;
      if (v71)
      {
        goto LABEL_14;
      }
    }

LABEL_15:
    v17 = 2 * (v10 != -1);
    v18 = v10 == -1 ? v13 : -1;
    if (v16)
    {
      v17 = 4;
      v10 = v10;
    }

    else
    {
      v10 = v18;
    }

    if ((v17 | 4) != 4)
    {
      break;
    }

    if (v65)
    {
      (*(*v65 + 32))(v65, v14);
    }

    else
    {
      LODWORD(v67) = v67 + 1;
    }
  }

  v12 = v65;
LABEL_30:
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

LABEL_32:
  if (v10 == -1)
  {
    goto LABEL_40;
  }

  (*(*a1 + 32))(&v70, a1, v10);
  LODWORD(v57) = HIDWORD(v70);
  LODWORD(v65) = v70;
  LODWORD(v51) = 0;
  v48.i32[0] = 0;
  v19 = *&v70 != 0.0 || *&v57 != v48.f32[0] || v72 != v71;
  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v19)
  {
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v70 = &v57;
    v71 = 0;
    v72 = 0;
    v73 = &v76;
    fst::DfsVisit<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::SccVisitor<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(a1, &v70);
  }

  v20 = 0;
LABEL_41:
  v64 = 0;
  (*(*a1 + 128))(a1, &v62);
  while (2)
  {
    if (!v62)
    {
      if (v64 >= v63)
      {
        goto LABEL_102;
      }

      goto LABEL_47;
    }

    if (!(*(*v62 + 16))(v62))
    {
      if (v62)
      {
        v21 = (*(*v62 + 24))();
LABEL_48:
        v22 = v21 + v20;
        while ((*(*a2 + 160))(a2) <= v22)
        {
          (*(*a2 + 200))(a2);
        }

        if (v21 == v37)
        {
          *__p = 0u;
          v61 = 0u;
          (*(*a2 + 184))(a2, (v21 + v20), __p);
          if (__p[1])
          {
            *&v61 = __p[1];
            operator delete(__p[1]);
          }
        }

        (*(*a1 + 32))(&v57, a1, v21);
        LODWORD(v65) = HIDWORD(v57);
        LODWORD(v70) = v57;
        LODWORD(v51) = 2139095040;
        v48.i32[0] = 2139095040;
        v23 = *&v57 != INFINITY || *&v65 != v48.f32[0] || v59 != v58;
        if ((v20 & v23) == 1)
        {
          fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::Reverse(&v57, &v54);
          v70 = 0;
          v71 = v54;
          v73 = 0;
          v74 = 0;
          v72 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v72, v55, v56, (v56 - v55) >> 2);
          v75 = v21 + v20;
          if (v55)
          {
            v56 = v55;
            operator delete(v55);
          }

          (*(*a2 + 208))(a2, 0, &v70);
          if (v72)
          {
            v73 = v72;
            operator delete(v72);
          }
        }

        v69 = 0;
        (*(*a1 + 136))(a1, v21, &v65);
LABEL_63:
        if (v65)
        {
          if ((*(*v65 + 24))(v65))
          {
            if (v65)
            {
              (*(*v65 + 8))(v65);
              goto LABEL_94;
            }

LABEL_92:
            if (v68)
            {
              --*v68;
            }

LABEL_94:
            if (v58)
            {
              v59 = v58;
              operator delete(v58);
            }

            if (v62)
            {
              (*(*v62 + 32))(v62);
            }

            else
            {
              ++v64;
            }

            continue;
          }

          if (v65)
          {
            v24 = (*(*v65 + 32))(v65);
LABEL_69:
            v25 = *(v24 + 40);
            fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::Reverse((v24 + 8), &v51);
            v26 = (v25 + v20);
            if (v26 == v10)
            {
              v27 = v20;
            }

            else
            {
              v27 = 1;
            }

            if ((v27 & 1) == 0)
            {
              (*(*a1 + 32))(&v45, a1, v10);
              fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::Reverse(&v45, &v48);
              fst::Times<fst::LatticeWeightTpl<float>,int>(&v48, &v51, &v70);
              v51 = v70;
              std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v52, v71, v72, (v72 - v71) >> 2);
              if (v71)
              {
                v72 = v71;
                operator delete(v71);
              }

              if (v49)
              {
                v50 = v49;
                operator delete(v49);
              }

              if (v46)
              {
                v47 = v46;
                operator delete(v46);
              }
            }

            v28 = *v24;
            v41 = v51;
            v43 = 0;
            v44 = 0;
            v42 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v42, v52, v53, (v53 - v52) >> 2);
            v70 = v28;
            v71 = v41;
            v73 = 0;
            v74 = 0;
            v72 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v72, v42, v43, (v43 - v42) >> 2);
            v75 = v22;
            if (v42)
            {
              v43 = v42;
              operator delete(v42);
            }

            while (1)
            {
              v29 = (*(*a2 + 160))(a2);
              v30 = *a2;
              if (v29 > v26)
              {
                break;
              }

              (*(v30 + 200))(a2);
            }

            (*(v30 + 208))(a2, v26, &v70);
            if (v72)
            {
              v73 = v72;
              operator delete(v72);
            }

            if (v52)
            {
              v53 = v52;
              operator delete(v52);
            }

            if (v65)
            {
              (*(*v65 + 40))(v65);
            }

            else
            {
              ++v69;
            }

            goto LABEL_63;
          }
        }

        else if (v69 >= v67)
        {
          goto LABEL_92;
        }

        v24 = v66 + 48 * v69;
        goto LABEL_69;
      }

LABEL_47:
      v21 = v64;
      goto LABEL_48;
    }

    break;
  }

  if (v62)
  {
    (*(*v62 + 8))();
  }

LABEL_102:
  (*(*a2 + 176))(a2, v10);
  if (v10 == v37)
  {
    v31 = v20;
  }

  else
  {
    v31 = 1;
  }

  if ((v31 & 1) == 0)
  {
    (*(*a1 + 32))(&v70, a1, v37);
    fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::Reverse(&v70, &v38);
    (*(*a2 + 184))(a2, v37, &v38);
    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    if (v71)
    {
      v72 = v71;
      operator delete(v71);
    }
  }

  v32 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  v33 = v76;
  v34 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v35 = fst::ReverseProperties(v33 | v32, v20);
  return (*(*a2 + 192))(a2, v34 | v35, 0x3FFFFFFF0007);
}

void sub_1B50C9CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::Times<fst::LatticeWeightTpl<float>,int>(float32x2_t *a1@<X0>, float32x2_t *a2@<X1>, float32x2_t *a3@<X8>)
{
  v6 = vadd_f32(*a1, *a2);
  v17 = v6.f32[1];
  LODWORD(v14.__begin_) = v6.i32[0];
  v16 = 2139095040;
  v15 = INFINITY;
  if (v6.f32[0] == INFINITY && v17 == v15)
  {
    *a3 = vneg_f32(0x7F0000007FLL);
    a3[2] = 0;
    a3[3] = 0;
    a3[1] = 0;
  }

  else
  {
    v13 = v6;
    memset(&v14, 0, sizeof(v14));
    std::vector<int>::resize(&v14, ((*&a2[2] - *&a2[1]) >> 2) + ((*&a1[2] - *&a1[1]) >> 2));
    begin = v14.__begin_;
    v8 = a1[1];
    v9 = a1[2];
    v10 = v9 - v8;
    if (v9 != v8)
    {
      memmove(v14.__begin_, v8, v9 - v8);
    }

    v11 = a2[1];
    v12 = a2[2];
    if (v12 != v11)
    {
      memmove(begin + v10, v11, v12 - v11);
    }

    *a3 = v13;
    a3[2] = 0;
    a3[3] = 0;
    a3[1] = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&a3[1], v14.__begin_, v14.__end_, v14.__end_ - v14.__begin_);
    if (v14.__begin_)
    {
      v14.__end_ = v14.__begin_;
      operator delete(v14.__begin_);
    }
  }
}

void sub_1B50C9FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::Reverse(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  std::vector<int>::vector[abi:ne200100](&__p, (v4 - v5) >> 2);
  v6 = __p;
  if (v4 != v5)
  {
    if (((v4 - v5) >> 2) <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = (v4 - v5) >> 2;
    }

    v8 = (v4 - v5 + a1[1] - 4);
    v9 = __p;
    do
    {
      v10 = *v8--;
      *v9++ = v10;
      --v7;
    }

    while (v7);
  }

  *a2 = *a1;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a2 + 1), v6, v12, (v12 - v6) >> 2);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_1B50CA0D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::insert(uint64_t *a1, uint64_t a2, char *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 5) + 1;
    if (v11 >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = a2 - v10;
    v13 = v7 - v10;
    v14 = v13 >> 4;
    if (v13 >> 4 <= v11)
    {
      v14 = ((v6 - *a1) >> 5) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 5;
    v18[4] = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>(a1, v15);
    }

    v18[0] = 0;
    v18[1] = 32 * v16;
    v18[2] = 32 * v16;
    v18[3] = 0;
    std::__split_buffer<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::emplace_back<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&>(v18, a3);
    v4 = std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__swap_out_circular_buffer(a1, v18, v4);
    std::__split_buffer<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::~__split_buffer(v18);
  }

  else if (a2 == v6)
  {
    std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__construct_one_at_end[abi:ne200100]<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&>(a1, a3);
  }

  else
  {
    std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__move_range(a1, a2, v6, (a2 + 32));
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 32;
    if (v8)
    {
      v9 = 0;
    }

    fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v4, &a3[v9]);
  }

  return v4;
}

void sub_1B50CA214(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void fst::NShortestPath<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, float32x2_t *a5, int a6, int a7, float a8)
{
  v110 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return;
  }

  if ((a7 & 1) != 0 && (*(*a1 + 64))(a1, 0x400000000, 1))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v108, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v108, "ERROR");
    }

    v16 = fst::LogMessage::LogMessage(&v76, v108);
    v17 = fst::cerr(v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "NShortestPath: FST has a cycle and include_final_ties was set to true. This is not currently supported.", 103);
    fst::LogMessage::~LogMessage(&v76);
    if (v108[2].i8[7] < 0)
    {
      operator delete(*v108);
    }

    (*(*a2 + 192))(a2, 4, 4);
    return;
  }

  (*(*a2 + 224))(a2);
  v18 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v18);
  v19 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v19);
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  __p = 0;
  v94 = 0;
  v95 = 0;
  if ((*(*a1 + 24))(a1) != -1)
  {
    v21 = *a3;
    v20 = a3[1];
    if ((*(*a1 + 24))(a1) < ((v20 - v21) >> 5))
    {
      v22 = *a3 + 32 * (*(*a1 + 24))(a1);
      v108[0].i32[0] = *v22;
      v76 = *(v22 + 4);
      LODWORD(v69) = 2139095040;
      LODWORD(v103) = 2139095040;
      if (v108[0].f32[0] != INFINITY || v76 != *&v103 || *(v22 + 16) != *(v22 + 8))
      {
        memset(v108, 0, 32);
        v23 = fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::operator()(&v92, a5, v108);
        if (a6)
        {
          v24 = v23;
        }

        else
        {
          v24 = 1;
        }

        if (v108[1])
        {
          v108[2] = v108[1];
          operator delete(*&v108[1]);
        }

        if (!v24)
        {
          v25 = (*(*a2 + 200))(a2);
          (*(*a2 + 176))(a2, v25);
          v91 = (*(*a2 + 200))(a2);
          v89 = 0u;
          v90 = 0u;
          (*(*a2 + 184))(a2);
          if (0xCCCCCCCCCCCCCCCDLL * ((v100 - v99) >> 3) <= v91)
          {
            v26 = vneg_f32(0x7F0000007FLL);
            do
            {
              v108[0].i32[0] = -1;
              v108[1] = v26;
              memset(&v108[2], 0, 24);
              std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v108[2], 0, 0, 0);
              std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::push_back[abi:ne200100](&v99, v108);
              if (v108[2])
              {
                v108[3] = v108[2];
                operator delete(*&v108[2]);
              }
            }

            while (0xCCCCCCCCCCCCCCCDLL * ((v100 - v99) >> 3) <= v91);
          }

          v108[0].i32[0] = (*(*a1 + 24))(a1);
          memset(&v108[1], 0, 32);
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v108[2], 0, 0, 0);
          v27 = (v99 + 40 * v91);
          v27->i32[0] = v108[0].i32[0];
          v27[1] = v108[1];
          if (v27 != v108)
          {
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v27[2], *&v108[2], *&v108[3], (*&v108[3] - *&v108[2]) >> 2);
          }

          if (v108[2])
          {
            v108[3] = v108[2];
            operator delete(*&v108[2]);
          }

          std::vector<int>::push_back[abi:ne200100](&v96, &v91);
          v63 = a4;
          v64 = a7;
          v28 = (*(*a1 + 24))(a1);
          fst::Times<fst::LatticeWeightTpl<float>,int>((*a3 + 32 * v28), a5, &v88);
          v65 = 0;
          v85 = 0;
          v86 = 0;
          v87 = 0;
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v29 = vneg_f32(0x7F0000007FLL);
LABEL_39:
          v30 = v97;
          v31 = v96;
          if (v96 == v97)
          {
            goto LABEL_152;
          }

          v108[0] = &v99;
          v108[1] = a3;
          v108[2].i32[0] = -1;
          v108[2].f32[1] = a8;
          v32 = (v97 - v96) >> 2;
          if (v32 >= 2)
          {
            v33 = *v96;
            v34 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>> &,std::__wrap_iter<int *>>(v96, v108, v32);
            v35 = (v30 - 4);
            if (v30 - 4 == v34)
            {
              *v34 = v33;
            }

            else
            {
              *v34 = *v35;
              *v35 = v33;
              std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>> &,std::__wrap_iter<int *>>(v31, (v34 + 1), v108, ((v34 + 1) - v31) >> 2);
            }
          }

          v36 = *(v97 - 1);
          v37 = v99 + 40 * v36;
          v76 = *v37;
          v77 = *(v37 + 8);
          v79 = 0;
          v80 = 0;
          v78 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v78, *(v37 + 16), *(v37 + 24), (*(v37 + 24) - *(v37 + 16)) >> 2);
          v97 -= 4;
          if (v76 == NAN)
          {
            *v74 = 0u;
            v75 = 0u;
          }

          else if (SLODWORD(v76) >= ((a3[1] - *a3) >> 5))
          {
            v74[0] = v29;
            v75 = 0uLL;
            v74[1] = 0;
          }

          else
          {
            v38 = *a3 + 32 * SLODWORD(v76);
            v74[0] = *v38;
            v75 = 0uLL;
            v74[1] = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v74[1], *(v38 + 8), *(v38 + 16), (*(v38 + 16) - *(v38 + 8)) >> 2);
          }

          fst::Times<fst::LatticeWeightTpl<float>,int>(v74, &v77, v108);
          if (fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::operator()(&v92, &v88, v108))
          {
            v39 = v108[1];
            if (v108[1])
            {
              v108[2] = v108[1];
              goto LABEL_145;
            }

            goto LABEL_146;
          }

          if (a6 == -1)
          {
            if (v108[1])
            {
              v108[2] = v108[1];
              operator delete(*&v108[1]);
            }
          }

          else
          {
            v40 = (*(*a2 + 160))(a2);
            if (v108[1])
            {
              v108[2] = v108[1];
              operator delete(*&v108[1]);
            }

            if (v40 >= a6)
            {
              goto LABEL_146;
            }
          }

          v41 = __p;
          for (i = v76; SLODWORD(v76) + 1 >= ((v94 - __p) >> 2); i = v76)
          {
            v108[0].i32[0] = 0;
            std::vector<int>::push_back[abi:ne200100](&__p, v108);
            v41 = __p;
          }

          if (v64 && LODWORD(i) + 1 >= ((v82 - v81) >> 5))
          {
            do
            {
              v108[0] = v29;
              memset(&v108[1], 0, 24);
              std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100](&v81, v108);
              if (v108[1])
              {
                v108[2] = v108[1];
                operator delete(*&v108[1]);
              }

              i = v76;
            }

            while (SLODWORD(v76) + 1 >= ((v82 - v81) >> 5));
            v41 = __p;
          }

          ++v41[SLODWORD(i) + 1];
          v43 = LODWORD(v76);
          if (v76 == NAN)
          {
            if (v65)
            {
              v44 = v84.f32[0] == v77.f32[0] && v84.f32[1] == v77.f32[1];
              v45 = vabds_f32(v84.f32[0] + v84.f32[1], v77.f32[0] + v77.f32[1]);
              v46 = !v44 && v45 > 0.00097656;
              if (v46 || v86 - v85 != v79 - v78 || memcmp(v85, v78, v86 - v85))
              {
                v47 = 1;
                v65 = 1;
                goto LABEL_147;
              }
            }

            v48 = (*(*a2 + 24))(a2);
            memset(v108, 0, sizeof(v108));
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v108[2], 0, 0, 0);
            v109 = v36;
            (*(*a2 + 208))(a2, v48, v108);
            if (v108[2])
            {
              v108[3] = v108[2];
              operator delete(*&v108[2]);
            }

            v43 = LODWORD(v76);
          }

          if ((v65 & 1) == 0)
          {
            if (v43 != -1)
            {
              v65 = 0;
LABEL_87:
              if (v64)
              {
                v49 = v43 + 1;
                v50 = *(__p + v49);
                if (v50 == v63)
                {
                  v51 = (v81 + 32 * v49);
                  *v51 = v77;
                  if (v51 != &v77)
                  {
                    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v51[1], v78, v79, (v79 - v78) >> 2);
                    v43 = LODWORD(v76);
                  }
                }

                else if (v50 > v63)
                {
                  v53 = v81 + 32 * v49;
                  v54 = *(v53 + 4);
                  v55 = v77.f32[0] == *v53 && v77.f32[1] == v54;
                  v56 = vabds_f32(v77.f32[0] + v77.f32[1], *v53 + v54);
                  if (!v55 && v56 > 0.00097656)
                  {
                    goto LABEL_146;
                  }

                  v58 = *(v53 + 8);
                  if (v79 - v78 != *(v53 + 16) - v58 || memcmp(v78, v58, v79 - v78))
                  {
                    goto LABEL_146;
                  }
                }
              }

              else if (*(__p + v43 + 1) > v63)
              {
                goto LABEL_146;
              }

              v73 = 0;
              (*(*a1 + 136))(a1, v43, &v69);
              while (1)
              {
                if (v69)
                {
                  if ((*(*v69 + 24))(v69))
                  {
                    if (v69)
                    {
                      (*(*v69 + 8))();
                    }

                    else
                    {
LABEL_129:
                      if (v72)
                      {
                        --*v72;
                      }
                    }

                    (*(*a1 + 32))(v108, a1, LODWORD(v76));
                    fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::Reverse(v108, &v69);
                    if (v108[1])
                    {
                      v108[2] = v108[1];
                      operator delete(*&v108[1]);
                    }

                    LODWORD(v103) = HIDWORD(v69);
                    v108[0].i32[0] = v69;
                    LODWORD(v66) = 2139095040;
                    v102 = INFINITY;
                    if (*&v69 != INFINITY || *&v103 != v102 || (v39 = v70, v71 != v70))
                    {
                      fst::Times<fst::LatticeWeightTpl<float>,int>(&v77, &v69, &v103);
                      LODWORD(v66) = (*(*a2 + 200))(a2);
                      v108[0].i32[0] = -1;
                      v108[1] = v103;
                      memset(&v108[2], 0, 24);
                      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v108[2], v104, v105, (v105 - v104) >> 2);
                      std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::push_back[abi:ne200100](&v99, v108);
                      if (v108[2])
                      {
                        v108[3] = v108[2];
                        operator delete(*&v108[2]);
                      }

                      v62 = v66;
                      v108[0] = 0;
                      v108[1] = v69;
                      memset(&v108[2], 0, 24);
                      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v108[2], v70, v71, (v71 - v70) >> 2);
                      v109 = v36;
                      (*(*a2 + 208))(a2, v62, v108);
                      if (v108[2])
                      {
                        v108[3] = v108[2];
                        operator delete(*&v108[2]);
                      }

                      std::vector<int>::push_back[abi:ne200100](&v96, &v66);
                      v108[0] = &v99;
                      v108[1] = a3;
                      v108[2].i32[0] = -1;
                      v108[2].f32[1] = a8;
                      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>> &,std::__wrap_iter<int *>>(v96, v97, v108, (v97 - v96) >> 2);
                      if (v104)
                      {
                        v105 = v104;
                        operator delete(v104);
                      }

                      v39 = v70;
                    }

                    if (v39)
                    {
                      v71 = v39;
LABEL_145:
                      operator delete(v39);
                    }

LABEL_146:
                    v47 = 0;
LABEL_147:
                    if (v74[1])
                    {
                      *&v75 = v74[1];
                      operator delete(v74[1]);
                    }

                    if (v78)
                    {
                      v79 = v78;
                      operator delete(v78);
                    }

                    if (v47)
                    {
LABEL_152:
                      fst::Connect<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a2);
                    }

                    goto LABEL_39;
                  }

                  if (v69)
                  {
                    v59 = (*(*v69 + 32))();
                    goto LABEL_116;
                  }
                }

                else if (v73 >= v71)
                {
                  goto LABEL_129;
                }

                v59 = v70 + 48 * v73;
LABEL_116:
                v60 = *v59;
                fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::Reverse(v59 + 1, &v103);
                v61 = *(v59 + 10);
                v108[0] = v60;
                v108[1] = v103;
                memset(&v108[2], 0, 24);
                std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v108[2], v104, v105, (v105 - v104) >> 2);
                v109 = v61;
                if (v104)
                {
                  v105 = v104;
                  operator delete(v104);
                }

                fst::Times<fst::LatticeWeightTpl<float>,int>(&v77, &v108[1], &v66);
                LODWORD(v102) = (*(*a2 + 200))(a2);
                LODWORD(v103) = v109;
                v104 = v66;
                v106 = 0;
                v107 = 0;
                v105 = 0;
                std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v105, v67, v68, (v68 - v67) >> 2);
                std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::push_back[abi:ne200100](&v99, &v103);
                if (v105)
                {
                  v106 = v105;
                  operator delete(v105);
                }

                v109 = v36;
                (*(*a2 + 208))(a2, LODWORD(v102), v108);
                std::vector<int>::push_back[abi:ne200100](&v96, &v102);
                v103 = &v99;
                v104 = a3;
                LODWORD(v105) = -1;
                *(&v105 + 1) = a8;
                std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>> &,std::__wrap_iter<int *>>(v96, v97, &v103, (v97 - v96) >> 2);
                if (v67)
                {
                  v68 = v67;
                  operator delete(v67);
                }

                if (v108[2])
                {
                  v108[3] = v108[2];
                  operator delete(*&v108[2]);
                }

                if (v69)
                {
                  (*(*v69 + 40))(v69);
                }

                else
                {
                  ++v73;
                }
              }
            }

            v47 = *__p == v63;
            if (*__p != v63 || v64 == 0)
            {
              v65 = 0;
              goto LABEL_147;
            }

            v84 = v77;
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v85, v78, v79, (v79 - v78) >> 2);
            v43 = LODWORD(v76);
          }

          v65 = 1;
          if (v43 == -1)
          {
            goto LABEL_146;
          }

          goto LABEL_87;
        }
      }
    }
  }

  if ((*(*a1 + 64))(a1, 4, 0))
  {
    (*(*a2 + 192))(a2, 4, 4);
  }

  if (__p)
  {
    v94 = __p;
    operator delete(__p);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  v108[0] = &v99;
  std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](v108);
}